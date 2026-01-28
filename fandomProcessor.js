import luaparse from 'luaparse';

const fandomModules = {
  Lawnames: "/api/module/Lawnames",
  Flagdata: "/api/module/Flagdata",
  Nationdata: "/api/module/Nationdata",
  Tagdata: "/api/module/Tagdata"
}

// fetch lua modules
async function loadAllModules() {
  const modulePromises = Object.entries(fandomModules).map(async ([name, url]) => {
    const response = await fetch(url);
    const data = await response.json();
    return [name, data.source];
  });

  const moduleEntries = await Promise.all(modulePromises);
  return Object.fromEntries(moduleEntries);
}


loadAllModules().then(allModules => {
  const parsedModules = {};

  for (const [name, source] of Object.entries(allModules)) {
    try {
      parsedModules[name] = luaparse.parse(source);
      console.log(`${name} parsed successfully`);
    } catch (error) {
      console.error(`Error parsing ${name}:`, error);
    }
  }

  console.log('Parsed modules:', parsedModules);

  // Example: Access the AST for Lawnames
  console.log('Lawnames AST:', JSON.stringify(parsedModules.Tagdata, null, 2));
});

//let ast = luaparse.parse('i = 0')
//console.log(JSON.stringify(ast));