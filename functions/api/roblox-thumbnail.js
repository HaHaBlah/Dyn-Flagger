// roblox-thumbnail.js
export async function onRequest(context) {
    const { request } = context;
    const url = new URL(request.url);

    if (request.method === 'OPTIONS') {
        return new Response(null, {
            headers: {
                'Access-Control-Allow-Origin': '*',
                'Access-Control-Allow-Methods': 'GET, OPTIONS',
                'Access-Control-Allow-Headers': 'Content-Type',
            }
        });
    }

    // Get imageID from query parameter
    const imageID = url.searchParams.get('assetid');
    const size = url.searchParams.get('size') || '700x700';

    if (!imageID) {
        return new Response(JSON.stringify({ error: 'assetid parameter required' }), {
            status: 400,
            headers: {
                'Content-Type': 'application/json',
                'Access-Control-Allow-Origin': '*'
            }
        });
    }

    try {
        const robloxThumbnailApiUrl = `https://thumbnails.roblox.com/v1/assets?assetIds=${encodeURIComponent(imageID)}&size=${encodeURIComponent(size)}&format=Png&isCircular=false`;

        const response = await fetch(robloxThumbnailApiUrl);

        if (!response.ok) {
            throw new Error(`Roblox API returned ${response.status}`);
        }

        const data = await response.json();

        // Extract the preferred URL
        if (data.data && data.data[0] && data.data[0].imageUrl) {
            return new Response(JSON.stringify({
                imageUrl: data.data[0].imageUrl,
                fullData: data
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
        console.error(`Error fetching Roblox Thumbnail image for ${imageID}:`, error);
        return new Response(JSON.stringify({
            error: error.message,
            imageID: imageID
        }), {
            status: 500,
            headers: {
                'Content-Type': 'application/json',
                'Access-Control-Allow-Origin': '*'
            }
        });
    }
}