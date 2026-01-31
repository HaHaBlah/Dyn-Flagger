/*Deprecated. Relocated to functions/api/fandom-data.js

export async function onRequest(context) {
  const { params } = context;
  const moduleName = params.name;
  
  const url = `https://ronroblox.fandom.com/rest.php/v1/page/Module%3A${moduleName}`;
  
  try {
    const response = await fetch(url);
    const data = await response.json();
    
    return new Response(JSON.stringify(data), {
      headers: {
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*'
      }
    });
  } catch (error) {
    return new Response(JSON.stringify({ error: error.message }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' }
    });
  }
}*/