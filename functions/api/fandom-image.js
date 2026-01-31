export async function onRequest(context) {
    const { request } = context;
    const url = new URL(request.url);

    // Handle CORS preflight
    if (request.method === 'OPTIONS') {
        return new Response(null, {
            headers: {
                'Access-Control-Allow-Origin': '*',
                'Access-Control-Allow-Methods': 'GET, OPTIONS',
                'Access-Control-Allow-Headers': 'Content-Type',
            }
        });
    }

    // Get filename from query parameter
    const filename = url.searchParams.get('filename');
    const wikiDomain = url.searchParams.get('wiki') || 'ronroblox';

    if (!filename) {
        return new Response(JSON.stringify({ error: 'Filename parameter required' }), {
            status: 400,
            headers: {
                'Content-Type': 'application/json',
                'Access-Control-Allow-Origin': '*'
            }
        });
    }

    try {
        // Extract the extension
        const extensionMatch = filename.match(/\.(png|jpg|jpeg|gif|svg|webp)$/i);
        const extension = extensionMatch ? extensionMatch[1] : 'png';

        // Remove extension from filename
        const baseFilename = filename.replace(/\.(png|jpg|jpeg|gif|svg|webp)$/i, '');

        // Construct the full filename with proper extension
        const fullFilename = `${baseFilename}.${extension}`;

        // Construct the Fandom API URL
        const fandomApiUrl = `https://${wikiDomain}.fandom.com/rest.php/v1/file/File:${encodeURIComponent(fullFilename)}`;

        // Fetch from Fandom API (server-side, no CORS issues)
        const response = await fetch(fandomApiUrl);

        if (!response.ok) {
            throw new Error(`Fandom API returned ${response.status}`);
        }

        const data = await response.json();

        // Extract the preferred URL
        if (data.preferred && data.preferred.url) {
            return new Response(JSON.stringify({
                url: data.preferred.url,
                width: data.preferred.width,
                height: data.preferred.height,
                mediatype: data.preferred.mediatype,
                fullData: data // Include full data if needed
            }), {
                headers: {
                    'Content-Type': 'application/json',
                    'Access-Control-Allow-Origin': '*',
                    'Cache-Control': 'public, max-age=3600' // Cache for 1 hour
                }
            });
        } else {
            throw new Error('Preferred URL not found in response');
        }

    } catch (error) {
        console.error(`Error fetching Fandom image for ${filename}:`, error);
        return new Response(JSON.stringify({
            error: error.message,
            filename: filename
        }), {
            status: 500,
            headers: {
                'Content-Type': 'application/json',
                'Access-Control-Allow-Origin': '*'
            }
        });
    }
}