// script.js

import { getFandomImageUrl } from './fandomProcessor.js';
import { getRobloxThumbnailURL } from './robloxProcessor.js';

//Images
import IMG_unknownFlag from './images/Unknown Flag.png';
import IMG_trashCan from './images/trash-can.svg';

// Config

let Lawnames, Flagdata, Nationdata, Tagdata;
let dataLoadedPromise = null;

const flagSpecifications = {
    NationName: '',
    Flags: [],
};

const IMAGE_SCALE = 36;
const ITEMS_PER_IMAGE_ROW = 3;

/** Fetches fandom data, and generates nations list */
async function loadFandomData() {
    dataLoadedPromise ??= (async () => {
        const response = await fetch('/api/fandom-data');
        if (!response.ok) throw new Error(`HTTP ${response.status}`);

        const data = await response.json();
        ({ Lawnames, Flagdata, Nationdata, Tagdata } = data);

        await generateNationsList();
    })();

    return dataLoadedPromise;
}

/** wait until fandom data fetched. */
async function ensureDataLoaded() {
    if (!Lawnames && dataLoadedPromise) await dataLoadedPromise;
}

/** nationslist tab switching */
function switchTab(evt, tabId) {
    for (const el of document.getElementsByClassName('tabcontent')) {
        el.classList.remove('tabcontent-visible');
        el.classList.add('tabcontent-hidden');
    }
    for (const el of document.getElementsByClassName('tablinks')) {
        el.classList.remove('active');
    }
    document.getElementById(tabId).classList.replace('tabcontent-hidden', 'tabcontent-visible');
    evt.currentTarget.classList.add('active');
}

/** Generates the nations list based on the loaded fandom data, then gives them events so you can click on them. */
async function generateNationsList() {
    await ensureDataLoaded();

    const scaleUrl = url =>
        //Adds image scaling
        url.includes('scale-to-width-down')
            ? url.replace(/scale-to-width-down\/\d+/, `scale-to-width-down/${IMAGE_SCALE}`)
            : url.replace(/\/revision\/latest/, `/revision/latest/scale-to-width-down/${IMAGE_SCALE}`);

    const createListItem = (countryName, imageUrl) => {
        const li = document.createElement('li');
        const button = document.createElement('button');

        const flagSpan = Object.assign(document.createElement('span'), { className: 'flag-image' });
        const flagImg = Object.assign(document.createElement('img'), { src: imageUrl });
        flagSpan.appendChild(flagImg);

        const nameSpan = Object.assign(document.createElement('span'), { textContent: countryName });

        button.append(flagSpan, nameSpan);
        button.addEventListener('click', () => onNationsListButtonClick(countryName));
        li.appendChild(button);
        return li;
    };

    const getCountriesForList = parentId => {
        if (parentId === 'Nations')
            return Object.entries(Nationdata.nationdata)
                .filter(([, v]) => v.nation === true)
                .map(([k]) => k)
                .sort();

        if (parentId === 'Releasables')
            return Object.entries(Nationdata.nationdata)
                .filter(([, v]) => v.nation === false)
                .map(([k]) => k)
                .sort();

        if (parentId === 'Formables')
            return Object.values(Tagdata.Tags)
                .filter(f => f.FormableName && !f.Removed)
                .map(f => f.FormableName)
                .sort();

        return [];
    };

    for (const list of document.getElementsByClassName('nations-list')) {
        const countries = getCountriesForList(list.parentElement.id);
        const urls = await Promise.all(countries.map(c => getFandomImageUrl(`${c}_Flag.png`)));

        list.innerHTML = '';
        countries.forEach((country, i) => {
            list.appendChild(createListItem(country, scaleUrl(urls[i])));
        });
    }
}

/** Searchbar that filters nationslist */
export function nationsSearchFilter() {
    const filter = document.getElementById('nations-search-filter').value.toUpperCase();

    for (const list of document.getElementsByClassName('nations-list')) {
        for (const li of list.getElementsByTagName('li')) {
            const nameSpan = li.getElementsByTagName('span')[1];
            const text = (nameSpan?.textContent ?? '').toUpperCase();
            li.style.display = text.includes(filter) ? '' : 'none';
        }
    }
}

/**
 * Generates the list of laws available in RoN. eg. Conscriptionm, Press Freedom, Centralisation etc.
 * @param {*} flagDiv 
 */
async function generateLawsList(flagDiv) {
    await ensureDataLoaded();

    const lawsSelection = flagDiv?.querySelector('.laws-selection');
    if (!lawsSelection) {
        console.error("'.laws-selection' not found in flag div");
        return;
    }
    if (!Lawnames?.lawNames) {
        console.error('Lawnames not loaded');
        return;
    }

    lawsSelection.innerHTML = '';

    const sorted = Object.entries(Lawnames.lawNames).sort(([, a], [, b]) =>
        a.Name.localeCompare(b.Name)
    );

    for (const [, law] of sorted) {
        const button = Object.assign(document.createElement('button'), {
            className: 'btn',
            textContent: law.Name,
        });
        lawsSelection.appendChild(button);
    }
}

//=================== Law Translation Functions START =====================
/**
 * "Monarch Power" -> "Unique_Monarchy" 
 * @param {string} lawName "Monarch Power"
 * @returns string
 */
function getLawCodeFromName(lawName) {
    return Object.keys(Lawnames.lawNames).find(
        k => Lawnames.lawNames[k].Name === lawName
    ) ?? null;
}

/**
 * "Unique_Monarchy" -> "Monarch Power"
 * @param {string} lawCode "Unique_Monarchy"
 * @returns string
 */
function getLawNameFromCode(lawCode) {
    return Lawnames.lawNames[lawCode]?.Name;
}

/**
 * ("Unique_Monarchy", 1) -> ("Limited")
 * @param {string} lawCode "Unique_Monarchy"
 * @param {int} level 1
 * @returns string
 */
function translateLawLeveltoText(lawCode, level) {
    return Lawnames.lawNames[lawCode]?.Types[level] ?? 'Law Not Found';
}

/** ("Monarch Power", "Limited") -> (1)
 * @param {string} lawText "Monarch Power"
 * @param {string} levelText "Limited"
 * @returns string/int
 */
function translateLawTexttoLevel(lawText, levelText) {
    for (const [, law] of Object.entries(Lawnames.lawNames)) {
        if (law.Name === lawText) {
            const entry = Object.entries(law.Types).find(([, v]) => v === levelText);
            if (entry) return entry[0];
        }
    }
    console.warn('Law Not Found for', lawText, levelText);
    return 'Law Not Found';
}
//=================== Law Translation Functions END =====================

/**
 * Returns a new flag object with default values, and adds it flagSpecifications
 * @returns newFlag
 */
function addFlag(flagData = {}) {
    const newFlag = {
        FlagName: flagData.FlagName ?? '',
        FlagID: flagData.FlagID ?? '',
        Description: flagData.Description ?? '',
        Ideologies: flagData.Ideologies ?? [],
        Laws: flagData.Laws ?? {},
        NOTLaws: flagData.NOTLaws ?? {},
    };
    flagSpecifications.Flags.push(newFlag);
    return newFlag;
}

/**
 * Removes a flag from flagSpecifications based on index
 * @param {int} index 
 */
function removeFlag(index) {
    flagSpecifications.Flags.splice(index, 1);
}

// ─── Flag Element Creation ────────────────────────────────────────────────────
/**
 * Creates all the html for a flag, adds events
 * @param {*} flagData 
 * @param {*} index 
 * @returns 
 */
function createFlagElement(flagData, index) {
    const flagDiv = document.createElement('div');
    flagDiv.classList.add('flag');
    flagDiv.dataset.flagIndex = index;

    flagDiv.innerHTML = `
        <button class="collapse-flag-overview-button">
            <div class="flag-overview">
                <div class="flag-overview-left">
                    <img class="dyn-flag" src="${IMG_unknownFlag}">
                    <p id="flag-name">${flagData.FlagName || 'Flag Name'}</p>
                </div>
                <div class="flag-overview-right">
                    <div><span class="flag-overview-title">Flag ID: </span><span class="flag-overview-content"></span></div>
                    <div><span class="flag-overview-title">Ideologies: </span><span class="flag-overview-content"></span></div>
                    <div><span class="flag-overview-title">Laws: </span><span class="flag-overview-content"></span></div>
                    <div><span class="flag-overview-title ron-red">NOT Laws: </span><span class="flag-overview-content"></span></div>
                    <div><span class="flag-overview-title">Description: </span><span class="flag-overview-content"></span></div>
                </div>
            </div>
        </button>
        <div class="flag-contents">
            <button class="delete-flag-button trash-can">Delete Flag</button>
            <div class="flag-label"><span class="flag-title">Name: </span><input class="flag-input flag-name-input" value="${flagData.FlagName}"></div>
            <div class="flag-label"><span class="flag-title">Image ID: </span><input class="flag-input flag-image-input" value="${flagData.FlagID}"></div>
            <div class="flag-label"><span class="flag-title">Description/Sources: </span><input class="flag-input flag-description-input" value="${flagData.Description}"></div>
            <div class="ideologies">
                <ul>
                    <li>
                        <button type="button" class="btn">Non-Aligned</button>
                        <ul>
                            <li>
                                <button style="color:#F3B6B6" type="button" class="btn">Socialism</button>
                                <ul><li><button style="color:#F37B7B" type="button" class="btn">Communism</button></li></ul>
                            </li>
                            <li>
                                <button style="color:#B5B6F3" type="button" class="btn">Liberalism</button>
                                <ul><li><button style="color:#7B7BF3" type="button" class="btn">Democracy</button></li></ul>
                            </li>
                            <li>
                                <button style="color:#B8B8B9" type="button" class="btn">Nationalism</button>
                                <ul><li><button style="color:#7B7B7B" type="button" class="btn">Fascism</button></li></ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="laws">
                <div class="laws-selection">
                    <img src="https://media.tenor.com/3xTqDrUgvvIAAAAi/error-404.gif" alt="Loading..." class="loading-gif">
                </div>
                <div class="laws-name"></div>
                <div class="laws-level"></div>
            </div>
        </div>
    `;

    // Toggle contents
    flagDiv.querySelector('.collapse-flag-overview-button')
        .addEventListener('click', () => {
            flagDiv.querySelector('.flag-contents').classList.toggle('is-hidden');
        });

    // Delete
    flagDiv.querySelector('.delete-flag-button')
        .addEventListener('click', () => {
            removeFlag(index);
            updateDisplay();
        });

    // Inputs
    const bindInput = (selector, field) => {
        flagDiv.querySelector(selector).addEventListener('input', e => {
            flagSpecifications.Flags[index][field] = e.target.value;
            updateFlagOverview(flagDiv, index);
        });
    };
    bindInput('.flag-name-input', 'FlagName');
    bindInput('.flag-image-input', 'FlagID');
    bindInput('.flag-description-input', 'Description');

    // Ideologies
    flagDiv.querySelector('.ideologies').addEventListener('click', e => {
        if (e.target.tagName !== 'BUTTON') return;
        const ideology = e.target.textContent;
        const ideologies = flagSpecifications.Flags[index].Ideologies;
        const idx = ideologies.indexOf(ideology);

        if (idx !== -1) {
            ideologies.splice(idx, 1);
        } else {
            ideologies.push(ideology);
        }
        updateFlagElement(flagDiv, flagSpecifications.Flags[index], index);
    });

    // Laws selection
    flagDiv.querySelector('.laws-selection').addEventListener('click', e => {
        if (e.target.tagName === 'BUTTON') {
            generateLawsLevels(flagDiv, e.target.textContent);
        }
    });

    generateLawsList(flagDiv);
    return flagDiv;
}

/** * Generates the buttons for different levels of the selected law, and adds events to them.
 * @param {*} flagDiv 
 * @param {*} lawText 
 */
function generateLawsLevels(flagDiv, lawText) {
    const lawCode = getLawCodeFromName(lawText);
    if (!lawCode) return;

    flagDiv.querySelector('.laws-name').textContent = lawText;

    // Replace lawsLevelsDiv to drop stale listeners
    const oldDiv = flagDiv.querySelector('.laws-level');
    const newDiv = oldDiv.cloneNode(false);
    oldDiv.replaceWith(newDiv);

    const flagIndex = parseInt(flagDiv.dataset.flagIndex, 10);

    for (const levelText of Object.values(Lawnames.lawNames[lawCode].Types)) {
        const button = Object.assign(document.createElement('button'), {
            className: 'btn',
            textContent: levelText,
        });
        newDiv.appendChild(button);
    }

    updateLawsLevelButtons(newDiv, flagIndex, lawCode);

    newDiv.addEventListener('click', e => {
        if (e.target.tagName !== 'BUTTON') return;

        const levelKey = translateLawTexttoLevel(lawText, e.target.textContent);
        const flag = flagSpecifications.Flags[flagIndex];

        flag.Laws[lawCode] ??= [];
        flag.NOTLaws[lawCode] ??= [];

        const lawArr = flag.Laws[lawCode];
        const notLawArr = flag.NOTLaws[lawCode];

        // Three-state cycle: unset → Laws → NOTLaws → unset
        if (lawArr.includes(levelKey)) {
            lawArr.splice(lawArr.indexOf(levelKey), 1);
            notLawArr.push(levelKey);
        } else if (notLawArr.includes(levelKey)) {
            notLawArr.splice(notLawArr.indexOf(levelKey), 1);
        } else {
            lawArr.push(levelKey);
        }

        // Prune empty arrays
        if (!lawArr.length) delete flag.Laws[lawCode];
        if (!notLawArr.length) delete flag.NOTLaws[lawCode];

        updateLawsLevelButtons(newDiv, flagIndex, lawCode);
        updateLawsSelectionButtons(flagDiv, flag);
        updateFlagOverview(flagDiv, flagIndex);
    });
}

// =========================== Update UI Functions START ===========================
/** Updates the law level buttons to reflect the current state of flagSpecifications */
function updateLawsLevelButtons(levelsDiv, flagIndex, lawCode) {
    const flag = flagSpecifications.Flags[flagIndex];
    const lawArr = flag.Laws[lawCode] ?? [];
    const notLawArr = flag.NOTLaws[lawCode] ?? [];
    const lawName = getLawNameFromCode(lawCode);

    for (const button of levelsDiv.querySelectorAll('button')) {
        const levelKey = translateLawTexttoLevel(lawName, button.textContent);
        button.classList.remove('btn-allowed', 'btn-not-allowed');

        if (lawArr.length && lawArr.includes(levelKey)) {
            button.classList.add('btn-allowed');
        } else if (lawArr.length && !lawArr.includes(levelKey)) {
            button.classList.add('btn-not-allowed');
        } else if (notLawArr.includes(levelKey)) {
            button.classList.add('btn-not-allowed');
        }
    }
}

/** Updates the flag element's inputs, overview, and law selection buttons to reflect the current state of flagSpecifications */
function updateFlagElement(flagDiv, flagData, index) {
    flagDiv.dataset.flagIndex = index;

    const setIfChanged = (selector, value) => {
        const el = flagDiv.querySelector(selector);
        if (el && el.value !== value) el.value = value;
    };
    setIfChanged('.flag-name-input', flagData.FlagName);
    setIfChanged('.flag-image-input', flagData.FlagID);
    setIfChanged('.flag-description-input', flagData.Description);

    const hasIdeologies = flagData.Ideologies.length > 0;
    for (const button of flagDiv.querySelectorAll('.ideologies button')) {
        const inList = flagData.Ideologies.includes(button.textContent);
        button.classList.remove('btn-allowed', 'btn-not-allowed');
        if (hasIdeologies) button.classList.add(inList ? 'btn-allowed' : 'btn-not-allowed');
    }

    updateLawsSelectionButtons(flagDiv, flagData);
    updateFlagOverview(flagDiv, index);
}

function updateLawsSelectionButtons(flagDiv, flagData) {
    for (const button of flagDiv.querySelectorAll('.laws-selection button')) {
        const lawCode = getLawCodeFromName(button.textContent);
        if (!lawCode) continue;

        const hasLaws = (flagData.Laws[lawCode]?.length ?? 0) > 0;
        const hasNotLaws = (flagData.NOTLaws[lawCode]?.length ?? 0) > 0;

        button.classList.remove('btn-allowed', 'btn-not-allowed', 'btn-half-allowed');
        if (hasLaws && hasNotLaws) button.classList.add('btn-half-allowed');
        else if (hasLaws) button.classList.add('btn-allowed');
        else if (hasNotLaws) button.classList.add('btn-not-allowed');
    }
}

function updateFlagOverview(flagDiv, index) {
    const flagData = flagSpecifications.Flags[index];

    const flagNameEl = flagDiv.querySelector('.flag-overview-left #flag-name');
    if (flagNameEl) flagNameEl.textContent = flagData.FlagName || 'Flag Name';

    const flagImg = flagDiv.querySelector('.flag-overview-left .dyn-flag');
    if (flagImg && flagData.FlagID) {
        getRobloxThumbnailURL(flagData.FlagID, '700x700')
            .then(url => { flagImg.src = url; })
            .catch(() => { flagImg.src = IMG_unknownFlag; });
    }

    const buildLawsHtml = (lawsObj, titleClass = '', titleText) => {
        const entries = Object.entries(lawsObj)
            .filter(([, levels]) => levels?.length)
            .map(([code, levels]) => {
                const name = getLawNameFromCode(code);
                const texts = levels.map(l => translateLawLeveltoText(code, l));
                return `${name}: ${texts.join(', ')}`;
            });
        const content = entries.length ? '<br>' + entries.join('<br>') : 'None';
        return `<span class="flag-overview-title ${titleClass}">${titleText}</span>${content}<span class="flag-overview-content"></span>`;
    };

    const overviewDivs = flagDiv.querySelectorAll('.flag-overview-right > div');
    if (overviewDivs.length >= 5) {
        overviewDivs[0].innerHTML = `<span class="flag-overview-title">Flag ID: </span>${flagData.FlagID}<span class="flag-overview-content"></span>`;
        overviewDivs[1].innerHTML = `<span class="flag-overview-title">Ideologies: </span>${flagData.Ideologies.join(', ')}<span class="flag-overview-content"></span>`;
        overviewDivs[2].innerHTML = buildLawsHtml(flagData.Laws, '', 'Laws: ');
        overviewDivs[3].innerHTML = buildLawsHtml(flagData.NOTLaws, 'ron-red', 'NOT Laws: ');
        overviewDivs[4].innerHTML = `<span class="flag-overview-title">Description: </span>${flagData.Description}<span class="flag-overview-content"></span>`;
    }

    updateOutput();
}

/** updateDisplay() when a nation in nationslist is clicked */
function onNationsListButtonClick(countryName) {
    flagSpecifications.NationName = countryName;
    updateDisplay();
}

/** Updates the nation name input, flag image, and flag elements to reflect the current state of flagSpecifications */
function updateDisplay() {
    const nationNameInput = document.querySelector('#nation-name');
    const nationFlag = document.querySelector('#nation-flag');

    if (nationNameInput) {
        nationNameInput.value = flagSpecifications.NationName;

        if (flagSpecifications.NationName && nationFlag) {
            getFandomImageUrl(`${flagSpecifications.NationName}_Flag.png`)
                .then(url => { nationFlag.src = url; })
                .catch(() => { nationFlag.src = IMG_unknownFlag; });
        }
    }

    const mainContent = document.querySelector('.main-content');
    const newFlagButton = document.querySelector('.new-flag-button');
    const existingFlags = [...document.querySelectorAll('.flag')];

    // Remove surplus flag elements
    existingFlags.slice(flagSpecifications.Flags.length).forEach(el => el.remove());

    // Update existing or create new flag elements
    flagSpecifications.Flags.forEach((flagData, index) => {
        if (existingFlags[index]) {
            updateFlagElement(existingFlags[index], flagData, index);
        } else {
            mainContent.insertBefore(createFlagElement(flagData, index), newFlagButton);
        }
    });

    updateOutput();
}
// =========================== Update UI Functions END ===========================

// =================== Output Box START ===================
/** Generates the output code based on flagSpecifications, and updates the output box. Also fetches image URLs for flags. */
async function updateOutput() {
    const outputText = document.querySelector('#output-text');
    if (!outputText) return;

    const TAB = '&nbsp;&nbsp;&nbsp;&nbsp;';

    const buildSingleFlag = flag => {
        const id = flag.FlagID ? `rbxassetid://${flag.FlagID}` : '';
        const name = flag.FlagName ?? '';
        const hasIdeologies = flag.Ideologies?.length > 0;
        const hasLaws = Object.keys(flag.Laws ?? {}).length > 0;
        const hasNOTLaws = Object.keys(flag.NOTLaws ?? {}).length > 0;

        if (!hasIdeologies && !hasLaws && !hasNOTLaws) {
            return `${TAB}["${name}"] = {ID = "${id}",},`;
        }

        const lines = [
            `${TAB}["${name}"] = {ID = "${id}",`,
            `${TAB}${TAB}Requirements = {`,
        ];

        if (hasIdeologies) {
            const arr = flag.Ideologies.map(i => `"${i}"`).join(', ');
            lines.push(`${TAB}${TAB}${TAB}${TAB}["Ideology"] = '[${arr}]',`);
        }
        if (hasLaws) {
            lines.push(`${TAB}${TAB}${TAB}${TAB}["Political_Law"] = '${JSON.stringify(flag.Laws)}',`);
        }
        if (hasNOTLaws) {
            lines.push(`${TAB}${TAB}${TAB}${TAB}["NOT_Political_Law"] = '${JSON.stringify(flag.NOTLaws)}',`);
        }

        lines.push(`${TAB}${TAB}},`, `${TAB}},`);
        return lines.join('<br>');
    };

    const validFlags = flagSpecifications.Flags.filter(f => f.FlagName && f.FlagID);
    const imageUrls = await Promise.all(
        validFlags.map(f => getRobloxThumbnailURL(f.FlagID, '700x700').catch(() => null))
    );

    const imageLinks = validFlags
        .map((f, i) => imageUrls[i] ? `[${f.FlagName}](${imageUrls[i]})` : null)
        .filter(Boolean);

    const imagesBlock = chunk(imageLinks, ITEMS_PER_IMAGE_ROW)
        .map(row => row.join(', '))
        .join('<br>');

    const descriptions = flagSpecifications.Flags
        .filter(f => f.Description)
        .map(f => `**${f.FlagName}:** ${f.Description}`)
        .join('<br>');

    const flagLines = flagSpecifications.Flags
        .filter(f => f.FlagName && f.FlagID)
        .map(buildSingleFlag)
        .join('<br>');

    outputText.innerHTML = `
    \`\`\`lua<br>
    ["${flagSpecifications.NationName}"] = {<br>
    ${flagLines}<br>
    },<br>
    \`\`\`<br>
    --[[<br>
    # __Description/Sources__<br>
    ${descriptions}<br>
    # __Images__<br>
    ${imagesBlock}<br>
    > -# *Made using [Dyn Flagger](https://dyn-flagger.pages.dev/ )*<br>
    ]]`.trim();
}

/** Copy the the code output to clipboard */
function copyOutput() {
    const output = document.getElementById('output-text');
    const button = document.getElementById('copy-output-btn');

    navigator.clipboard.writeText(output.innerText).then(() => {
        button.textContent = 'Copied!';
        button.classList.add('output-btn-copied');
        setTimeout(() => {
            button.textContent = 'Copy to clipboard';
            button.classList.remove('output-btn-copied');
        }, 1000);
    });
}
// =================== Output Box END ===================

/** Utility function to chunk an array into smaller arrays of a specified size. Used for output formatting. In other words, i have no idea what this does but i just use it. Like cFrames in Roblox */
function chunk(arr, size) {
    return Array.from({ length: Math.ceil(arr.length / size) }, (_, i) =>
        arr.slice(i * size, i * size + size)
    );
}

// ==================== Run on Page Load ====================
document.addEventListener('DOMContentLoaded', () => {
    document.querySelector('.new-flag-button button')
        ?.addEventListener('click', () => { addFlag(); updateDisplay(); });

    document.querySelector('#nation-name')
        ?.addEventListener('input', e => {
            flagSpecifications.NationName = e.target.value;
            updateDisplay();
        });
});

loadFandomData().catch(console.error);
addFlag();
updateDisplay();

// Global scope for inline handlers
Object.assign(window, {
    switchTab,
    generateLawsList,
    generateNationsList,
    nationsSearchFilter,
    copyOutput,
});