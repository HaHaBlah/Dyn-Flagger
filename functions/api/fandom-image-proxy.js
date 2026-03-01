// fandom-image-proxy.js
export async function onRequest(context) {
    const { request } = context;
    const url = new URL(request.url);
    const imageUrl = url.searchParams.get('url');

    if (!imageUrl) {
        return new Response('Missing url param', { status: 400 });
    }

    // Only allow Wikia CDN URLs
    if (!imageUrl.startsWith('https://static.wikia.nocookie.net/')) {
        return new Response('Forbidden', { status: 403 });
    }

    const response = await fetch(imageUrl, {
        headers: {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
            'Referer': 'https://ronroblox.fandom.com/',
        },
        cf: {
            cacheTtl: 3600,
            cacheEverything: true
        }
    });

    if (!response.ok) {
        return new Response(`Image fetch failed: ${response.status}`, { status: response.status });
    }

    return new Response(response.body, {
        headers: {
            'Content-Type': response.headers.get('Content-Type') ?? 'image/png',
            'Cache-Control': 'public, max-age=3600',
            'Access-Control-Allow-Origin': '*',
        }
    });
}