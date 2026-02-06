// OPTIMIZATION 3: Parallel module fetching is ALREADY implemented in your code!
// Your fandomProcessor.js already does this:

async function loadAllModules(baseUrl) {
  // ✅ This is already parallel! All modules fetch at the same time
  const modulePromises = Object.entries(fandomModules).map(async ([name, moduleName]) => {
    const url = `${baseUrl}/api/fandom-module?module=${encodeURIComponent(moduleName)}&wiki=ronroblox`;
    // ... fetch logic
  });

  // All 4 modules (Lawnames, Flagdata, Nationdata, Tagdata) fetch simultaneously
  const moduleEntries = await Promise.all(modulePromises);
  return Object.fromEntries(moduleEntries);
}

// However, you could also optimize the Fandom API calls themselves by adding caching
// to /functions/api/fandom-module.js:

export async function onRequest(context) {
  const { request, env } = context;
  const url = new URL(request.url);
  
  const moduleName = url.searchParams.get('module');
  const wikiDomain = url.searchParams.get('wiki') || 'ronroblox';
  
  if (!moduleName) {
    return new Response(JSON.stringify({ error: 'Module name is required' }), {
      status: 400,
      headers: { 'Content-Type': 'application/json' }
    });
  }
  
  try {
    // Check KV cache first (if you have KV configured)
    // const cacheKey = `module:${wikiDomain}:${moduleName}`;
    // const cached = await env.MY_KV.get(cacheKey, 'json');
    // if (cached) {
    //   return new Response(JSON.stringify(cached), {
    //     headers: { 'Content-Type': 'application/json', 'X-Cache': 'HIT' }
    //   });
    // }
    
    const fandomUrl = `https://${wikiDomain}.fandom.com/rest.php/v1/page/Module%3A${encodeURIComponent(moduleName)}`;
    
    const response = await fetch(fandomUrl, {
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
        'Accept': 'application/json'
      },
      // OPTIMIZATION: Use Cloudflare's cache
      cf: {
        cacheTtl: 3600, // Cache for 1 hour
        cacheEverything: true
      }
    });
    
    if (!response.ok) {
      throw new Error(`Fandom API returned ${response.status}`);
    }
    
    const data = await response.json();
    
    const result = {
      module: moduleName,
      source: data.source,
      timestamp: data.latest?.timestamp
    };
    
    // Store in KV cache (optional)
    // await env.MY_KV.put(cacheKey, JSON.stringify(result), { expirationTtl: 3600 });
    
    return new Response(JSON.stringify(result), {
      headers: {
        'Content-Type': 'application/json',
        'Cache-Control': 'public, max-age=3600',
        'X-Cache': 'MISS'
      }
    });
    
  } catch (error) {
    console.error('Error fetching Fandom module:', error);
    return new Response(JSON.stringify({
      error: error.message,
      module: moduleName
    }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' }
    });
  }
}