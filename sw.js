const CACHE_NAME = 'dyn-flagger-sw-v1';
const THUMB_CACHE = 'thumbs-cache-v1';
const ASSETS = [
  '/', // adjust if your app root differs
  '/index.html',
  '/script.js',
  '/style.css'
];

self.addEventListener('install', (evt) => {
  evt.waitUntil(caches.open(CACHE_NAME).then(cache => cache.addAll(ASSETS)).then(() => self.skipWaiting()));
});

self.addEventListener('activate', (evt) => {
  evt.waitUntil(self.clients.claim());
});

self.addEventListener('fetch', (evt) => {
  const url = new URL(evt.request.url);

  // Cache-first for thumbnails.roblox.com
  if (url.hostname.includes('thumbnails.roblox.com') || url.hostname.includes('roblox.com')) {
    evt.respondWith(
      caches.open(THUMB_CACHE).then(cache =>
        cache.match(evt.request).then(res => res || fetch(evt.request).then(r => { if (r && r.status === 200) cache.put(evt.request, r.clone()); return r; }))
      )
    );
    return;
  }

  // Default strategy for app shell
  evt.respondWith(
    caches.match(evt.request).then(resp => resp || fetch(evt.request))
  );
});