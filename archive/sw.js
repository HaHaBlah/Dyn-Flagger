const CACHE_NAME = 'dyn-flagger-v2';
const THUMB_CACHE = 'thumbs-cache-v1';
const ASSETS = [
  '/',
  '/index.html',
  '/script.js',
  '/style.css'
];

self.addEventListener('install', (evt) => {
  evt.waitUntil(
    caches.open(CACHE_NAME).then(cache => cache.addAll(ASSETS))
      .then(() => self.skipWaiting())
  );
});

self.addEventListener('activate', (evt) => {
  evt.waitUntil(
    caches.keys().then(keys =>
      Promise.all(keys.filter(k => k !== CACHE_NAME && k !== THUMB_CACHE).map(k => caches.delete(k)))
    ).then(() => self.clients.claim())
  );
});

// Allow page to tell the SW to skip waiting and activate immediately
self.addEventListener('message', (event) => {
  if (event.data && event.data.type === 'SKIP_WAITING') {
    self.skipWaiting();
  }
});

self.addEventListener('fetch', (evt) => {
  const req = evt.request;
  const url = new URL(req.url);

  // Thumbnails / roblox: cache-first with background update
  if (url.hostname.includes('thumbnails.roblox.com') || url.hostname.includes('roblox.com')) {
    evt.respondWith(
      caches.open(THUMB_CACHE).then(cache =>
        cache.match(req).then(cached => {
          const fetchAndCache = fetch(req).then(res => { if (res && res.status === 200) cache.put(req, res.clone()); return res; }).catch(() => null);
          return cached || fetchAndCache;
        })
      )
    );
    return;
  }

  // Navigation requests (HTML) — network-first, fallback to cache
  if (req.mode === 'navigate' || (req.headers.get('accept') || '').includes('text/html')) {
    evt.respondWith(
      fetch(req).then(res => {
        // Update cache with fresh HTML
        const copy = res.clone();
        caches.open(CACHE_NAME).then(cache => cache.put(req, copy));
        return res;
      }).catch(() => caches.match(req))
    );
    return;
  }

  // API / JSON requests — network-first; avoid long-lived caching (server should set headers)
  if ((req.headers.get('accept') || '').includes('application/json')) {
    evt.respondWith(
      fetch(req).catch(() => caches.match(req))
    );
    return;
  }

  // Default: cache-first for static assets
  evt.respondWith(
    caches.match(req).then(resp => resp || fetch(req))
  );
});