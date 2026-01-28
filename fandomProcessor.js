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


// Function to convert Lua AST to usable data
function extractDataFromAST(ast) {
  const result = {};

  ast.body.forEach(statement => {
    if (statement.type === 'AssignmentStatement' || statement.type === 'LocalStatement') {
      const varName = statement.variables[0].name;
      const value = extractValue(statement.init[0]);
      result[varName] = value;
    }
  });

  return result;
}

// Recursively extract values from AST nodes
function extractValue(node) {
  if (!node) return null;

  switch (node.type) {
    case 'StringLiteral':
      // Handle both value and raw (quoted string)
      if (node.value !== null) return node.value;
      if (node.raw) {
        // Remove quotes: "text" or 'text'
        return node.raw.slice(1, -1);
      }
      return null;

    case 'NumericLiteral':
      return node.value;

    case 'BooleanLiteral':
      return node.value;

    case 'NilLiteral':
      return null;

    case 'TableConstructorExpression':
      return extractTable(node);

    default:
      return null;
  }
}

// Convert table constructor to JS object/array
function extractTable(tableNode) {
  const obj = {};
  let hasNumericKey = false;
  let maxIndex = 0;

  tableNode.fields.forEach((field, idx) => {
    let key, value;

    if (field.type === 'TableKey') {
      key = extractValue(field.key);
      value = extractValue(field.value);
      obj[key] = value;
    } else if (field.type === 'TableKeyString') {
      // Key is an identifier (unquoted), use it directly
      key = field.key.name;
      value = extractValue(field.value);
      obj[key] = value;
    } else if (field.type === 'TableValue') {
      // Array-style entry
      hasNumericKey = true;
      maxIndex = idx + 1;
      obj[idx + 1] = extractValue(field.value);
    }
  });

  return obj;
}

// Export the extracted data
export async function getFandomData() {
  const allModules = await loadAllModules();
  const extractedData = {};

  for (const [name, source] of Object.entries(allModules)) {
    try {
      const ast = luaparse.parse(source);
      extractedData[name] = extractDataFromAST(ast);
      console.log(`${name} extracted successfully`);
    } catch (error) {
      console.error(`Error parsing ${name}:`, error);
    }
  }

  return extractedData;
}
