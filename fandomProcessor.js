// Generic Fandom module loader + Lua table parser + renderer

async function fetchFandomModule(moduleTitle) {
  const url = 'https://ronroblox.fandom.com/rest.php/v1/page/' + encodeURIComponent(moduleTitle);
  const res = await fetch(url);
  if (!res.ok) throw new Error('Fetch failed: ' + res.status);
  const data = await res.json();
  return data.source || '';
}

function parseLuaTableString(s) {
  const start = s.indexOf('{');
  if (start === -1) throw new Error('No table found');
  let i = start;
  const len = s.length;

  function skipWS() { while (i < len && /\s/.test(s[i])) i++; }

  function parseString() {
    const q = s[i++];
    let out = '';
    while (i < len) {
      const ch = s[i++];
      if (ch === '\\\\') {
        const next = s[i++] || '';
        out += next;
      } else if (ch === q) {
        break;
      } else {
        out += ch;
      }
    }
    return out;
  }

  function parseNumberOrIdent() {
    const m = s.slice(i).match(/^-?\d+(\.\d+)?/);
    if (m) { i += m[0].length; return Number(m[0]); }
    const id = s.slice(i).match(/^[A-Za-z_][A-Za-z0-9_]*/);
    if (id) {
      i += id[0].length;
      if (id[0] === 'true') return true;
      if (id[0] === 'false') return false;
      if (id[0] === 'nil') return null;
      return id[0];
    }
    return null;
  }

  function parseValue() {
    skipWS();
    if (s[i] === '{') return parseTable();
    if (s[i] === '"' || s[i] === "'") return parseString();
    return parseNumberOrIdent();
  }

  function parseTable() {
    // assume s[i] === '{'
    i++;
    skipWS();
    const arr = [];
    const obj = {};
    let isArray = true;

    while (i < len) {
      skipWS();
      if (s[i] === '}') { i++; break; }
      // try to detect key = value
      let saved = i;
      let key = null;
      if (s[i] === '[') {
        i++; skipWS();
        if (s[i] === '"' || s[i] === "'") key = parseString();
        else {
          // bare bracket key
          const idm = s.slice(i).match(/^[^\]]+/);
          if (idm) { key = idm[0].trim(); i += idm[0].length; }
        }
        skipWS();
        if (s[i] === ']') i++;
        skipWS();
      } else {
        const idm = s.slice(i).match(/^([A-Za-z_][A-Za-z0-9_]*)/);
        if (idm) { key = idm[1]; i += idm[1].length; skipWS(); }
        else key = null;
      }

      if (key !== null && s[i] === '=') {
        // key = value
        isArray = false;
        i++; skipWS();
        const val = parseValue();
        obj[key] = val;
      } else {
        // not a key=value pair; rollback and parse as array value
        i = saved;
        const val = parseValue();
        arr.push(val);
      }

      skipWS();
      if (s[i] === ',' || s[i] === ';') { i++; skipWS(); continue; }
      // could be end or malformed; loop continues
    }

    return isArray ? arr : obj;
  }

  const result = parseValue();
  return result;
}

function renderModuleObject(obj, containerId = 'laws-container') {
  const container = document.getElementById(containerId);
  if (!container) return;
  container.innerHTML = '';
  // If module defines a top-level variable name mapping to table, try to use it
  const root = (obj && typeof obj === 'object' && !Array.isArray(obj) && Object.keys(obj).length === 1 && Array.isArray(Object.values(obj)[0]) === false)
    ? obj
    : obj;

  // Iterate keys
  for (const key of Object.keys(root)) {
    const group = root[key];
    if (!group) continue;
    const groupEl = document.createElement('div');
    groupEl.className = 'law-group';

    const title = document.createElement('h4');
    title.textContent = (group.Name || key) + (group.Unconfirmed ? ' (unconfirmed)' : '');
    groupEl.appendChild(title);

    const btnWrap = document.createElement('div');
    btnWrap.className = 'law-buttons';

    const types = Array.isArray(group.Types) ? group.Types : [];
    types.forEach(type => {
      const btn = document.createElement('button');
      btn.type = 'button';
      btn.className = 'law-btn';
      btn.textContent = type;
      btn.dataset.lawKey = key;
      btn.dataset.lawType = type;
      btn.addEventListener('click', () => {
        btnWrap.querySelectorAll('.law-btn.selected').forEach(b => b.classList.remove('selected'));
        btn.classList.add('selected');
        console.log('Selected', { key, type });
      });
      btnWrap.appendChild(btn);
    });

    groupEl.appendChild(btnWrap);
    container.appendChild(groupEl);
  }
}

async function loadAndRenderModule(moduleTitle, containerId = 'laws-container') {
  try {
    const src = await fetchFandomModule(moduleTitle);
    const parsed = parseLuaTableString(src);
    renderModuleObject(parsed, containerId);
  } catch (err) {
    console.error('Module load failed:', err);
    // Fallback idea: load a local JS file exporting the object, e.g. lawNames.js
  }
}

// Example usage:
// loadAndRenderModule('Module:Lawnames', 'laws-container');