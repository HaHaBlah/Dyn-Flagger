// Debounce timer
let __fetchTimer = null;
const CACHE_TTL_MS = 7 * 24 * 60 * 60 * 1000; // 7 days

async function fetchImage() {
    clearTimeout(__fetchTimer);
    __fetchTimer = setTimeout(async () => {
        const input = document.getElementById('userInput').value;
        const container = document.getElementById('imageContainer');

        if (!input || isNaN(input)) {
            container.innerHTML = '<p style="color: red;">Please enter a valid asset ID</p>';
            return;
        }

        const assetId = input.trim();

        // Preconnect to reduce handshake latency
        if (!document.querySelector('link[rel="preconnect"][href="https://thumbnails.roblox.com"]')) {
            const l = document.createElement('link');
            l.rel = 'preconnect';
            l.href = 'https://thumbnails.roblox.com';
            document.head.appendChild(l);
        }

        // Small SVG placeholder for perceived speed
        const placeholder = '<svg width="150" height="150" xmlns="http://www.w3.org/2000/svg"><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" dominant-baseline="middle" text-anchor="middle" fill="#aaa" font-size="12">Loading...</text></svg>';
        container.innerHTML = placeholder;

        // check local cache (localStorage simple cache)
        try {
            const raw = localStorage.getItem('thumb_cache_v1');
            const cache = raw ? JSON.parse(raw) : {};
            const entry = cache[assetId];
            if (entry && (Date.now() - entry.ts) < CACHE_TTL_MS && entry.imageUrl) {
                container.innerHTML = `<img src="${entry.imageUrl}" alt="Roblox Asset" style="max-width:100%;">`;
                return;
            }
        } catch (e) {
            console.warn('Cache read failed', e);
        }

        // Try direct image endpoints (browser can cache these)
        const size = '420x420';
        const directUrls = [
            `https://www.roblox.com/asset-thumbnail/image?assetId=${encodeURIComponent(assetId)}&width=150&height=150`,
            `https://www.roblox.com/thumbnail/asset?assetId=${encodeURIComponent(assetId)}&size=${size}&format=png`
        ];

        async function tryDirect(urls) {
            for (const url of urls) {
                try {
                    await new Promise((resolve, reject) => {
                        const img = new Image();
                        img.onload = () => resolve(url);
                        img.onerror = () => reject(new Error('img load failed'));
                        img.decoding = 'async';
                        img.src = url;
                    });
                    return url;
                } catch (_) {
                    /* try next */
                }
            }
            return null;
        }

        try {
            // Try direct image URLs first
            const direct = await tryDirect(directUrls);
            if (direct) {
                // store in cache
                try {
                    const raw = localStorage.getItem('thumb_cache_v1');
                    const cache = raw ? JSON.parse(raw) : {};
                    cache[assetId] = { imageUrl: direct, ts: Date.now() };
                    localStorage.setItem('thumb_cache_v1', JSON.stringify(cache));
                } catch (e) {
                    console.warn('Cache save failed', e);
                }
                container.innerHTML = `<img src="${direct}" alt="Roblox Asset" style="max-width:100%;">`;
                return;
            }

            // Fallback: fetch thumbnails API via CORS-proxy (client-side only)
            const apiUrl = `https://thumbnails.roblox.com/v1/assets?assetIds=${encodeURIComponent(assetId)}&returnPolicy=PlaceHolder&size=${size}&format=Webp&isCircular=false`;
            const corsProxy = `https://corsproxy.io/?${encodeURIComponent(apiUrl)}`;

            const response = await fetch(corsProxy, { cache: 'force-cache' });
            if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
            const data = await response.json();

            if (data && data.data && data.data.length > 0 && data.data[0].imageUrl) {
                const imageUrl = data.data[0].imageUrl;
                // cache
                try {
                    const raw = localStorage.getItem('thumb_cache_v1');
                    const cache = raw ? JSON.parse(raw) : {};
                    cache[assetId] = { imageUrl, ts: Date.now() };
                    localStorage.setItem('thumb_cache_v1', JSON.stringify(cache));
                } catch (e) {
                    console.warn('Cache save failed', e);
                }
                container.innerHTML = `<img src="${imageUrl}" alt="Roblox Asset" style="max-width:100%;">`;
            } else {
                container.innerHTML = '<p style="color: red;">Asset not found or no thumbnail available</p>';
            }
        } catch (error) {
            console.error('Detailed error:', error);
            container.innerHTML = `<p style="color: red;">Error: ${error.message}</p><p style="font-size: 12px;">Try again or serve the page over HTTP (Live Server) to avoid origin issues.</p>`;
        }
    }, 250);
}