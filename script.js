let Lawnames, Flagdata, Nationdata, Tagdata;
let dataLoadedPromise = null; // Promise to track when data is loaded
import { getFandomImageUrl } from './fandomProcessor.js';
import { getRobloxThumbnailURL } from './robloxProcessor.js';
import unknownFlag from './images/Unknown Flag.png';

let flagSpecifications = {
    NationName: "",
    Flags: []
};

/** 
* Fetch processed fandom data from server
*/
async function loadFandomData() {
    // Create a promise that other functions can await
    dataLoadedPromise = (async () => {
        try {
            const response = await fetch('/api/fandom-data');
            if (!response.ok) throw new Error(`HTTP ${response.status}`);

            const fandomModules = await response.json();

            Lawnames = fandomModules.Lawnames;
            Flagdata = fandomModules.Flagdata;
            Nationdata = fandomModules.Nationdata;
            Tagdata = fandomModules.Tagdata;

            console.log(Lawnames);
            console.log(Flagdata);
            console.log(Nationdata);
            console.log(Tagdata);

            // Call both functions after data is loaded
            await generateNationsList();

        } catch (error) {
            console.error('Error loading fandom data:', error);
            throw error;
        }
    })();

    return dataLoadedPromise;
}

function switchTab(evt, cityName) {
    let i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].classList.remove("tabcontent-visible");
        tabcontent[i].classList.add("tabcontent-hidden");
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).classList.remove("tabcontent-hidden");
    document.getElementById(cityName).classList.add("tabcontent-visible");
    evt.currentTarget.className += " active";
}

/**
 * Populates class="nations-list" elements with nation/formable data
 */
async function generateNationsList() {
    // Wait for data if not loaded yet
    if (!Nationdata?.nationdata && dataLoadedPromise) {
        console.log('⏳ Waiting for data to load...');
        await dataLoadedPromise;
    }

    const nationsLists = document.getElementsByClassName("nations-list");
    const imageScale = 36;

    // Helper function to create list item (synchronous DOM creation)
    function createListItem(countryName, scaledUrl) {
        const li = document.createElement("li");
        const button = document.createElement("button");

        const flagSpan = document.createElement("span");
        flagSpan.classList.add("flag-image");
        const flagImg = document.createElement("img");
        flagImg.src = scaledUrl;
        flagSpan.appendChild(flagImg);

        const nameSpan = document.createElement("span");
        nameSpan.textContent = countryName;
        button.appendChild(flagSpan);
        button.appendChild(nameSpan);
        button.addEventListener("click", () => onNationsListButtonClick(countryName));
        li.appendChild(button);

        return li;
    }

    // Helper function to scale URL
    function scaleUrl(resolvedUrl) {
        return resolvedUrl.includes('scale-to-width-down')
            ? resolvedUrl.replace(/scale-to-width-down\/\d+/, `scale-to-width-down/${imageScale}`)
            : resolvedUrl.replace(/\/revision\/latest/, `/revision/latest/scale-to-width-down/${imageScale}`);
    }

    for (let list of nationsLists) {
        const parentId = list.parentElement.id;
        let countries = [];

        if (parentId === "Nations") {
            countries = Object.keys(Nationdata.nationdata)
                .filter(country => Nationdata.nationdata[country].nation === true)
                .sort();

        } else if (parentId === "Releasables") {
            countries = Object.keys(Nationdata.nationdata)
                .filter(country => Nationdata.nationdata[country].nation === false)
                .sort();

        } else if (parentId === "Formables") {
            countries = Object.values(Tagdata.Tags)
                .filter(formable => formable.FormableName) /*excludes missions*/
                .filter(formable => !formable.Removed) /*excludes removed formables*/
                .map(formable => formable.FormableName)
                .sort();
        }

        // Fetch all image URLs in parallel
        const urlPromises = countries.map(country =>
            getFandomImageUrl(country + '_Flag.png')
        );

        const resolvedUrls = await Promise.all(urlPromises);

        // Create and append all list items with their resolved URLs
        list.innerHTML = ''; // Clear loading gif or existing content
        countries.forEach((country, index) => {
            const scaledUrl = scaleUrl(resolvedUrls[index]);
            const li = createListItem(country, scaledUrl);
            list.appendChild(li);
        });
    }
}

/** 
* Filter nations-list using search bar
*/
export function nationsSearchFilter() {
    // Declare variables
    var input, filter, lists, i, j, li, span, txtValue;
    input = document.getElementById('nations-search-filter');
    filter = input.value.toUpperCase();
    lists = document.getElementsByClassName("nations-list");

    // Loop through all nations-list elements
    for (j = 0; j < lists.length; j++) {
        li = lists[j].getElementsByTagName('li');

        // Loop through all list items, and hide those who don't match the search query
        for (i = 0; i < li.length; i++) {
            span = li[i].getElementsByTagName("span")[1]; // Get the second span
            txtValue = span.textContent || span.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }
    }
}

async function generateLawsList(flagDiv) {
    // Wait for data if not loaded yet
    if (!Lawnames?.lawNames && dataLoadedPromise) {
        await dataLoadedPromise;
    }

    // If no flagDiv provided, return early
    if (!flagDiv) {
        console.error("No flag div provided to generateLawsList");
        return;
    }

    // Get the laws-selection element within this specific flag div
    const lawsSelection = flagDiv.querySelector(".laws-selection");

    console.log(lawsSelection);

    // Check if element exists
    if (!lawsSelection) {
        console.error("Element with class 'laws-selection' not found in flag div");
        return;
    }

    // Check if data is loaded
    if (!Lawnames || !Lawnames.lawNames) {
        console.error("Lawnames data not loaded yet");
        return;
    }

    // Clear existing content
    lawsSelection.innerHTML = '';

    function createButtonItem(lawName) {
        const button = document.createElement("button");
        button.classList.add("btn");
        button.textContent = lawName;
        return button;
    }

    const sortedLaws = Object.entries(Lawnames.lawNames)
        .sort((a, b) => a[1].Name.localeCompare(b[1].Name));

    //Assembly 
    for (let [lawKey, law] of sortedLaws) {
        const button = createButtonItem(law.Name);
        lawsSelection.appendChild(button);
    }
}

/**
 * Defines a new flag with default or provided values and adds it to flagSpecifications.Flags
 * @param {*} flagData 
 * @returns 
 */
function addFlag(flagData = {}) {
    const newFlag = {
        FlagName: flagData.FlagName || "",
        FlagID: flagData.FlagID || "",
        Description: flagData.Description || "",
        Ideologies: flagData.Ideologies || [],
        Laws: flagData.Laws || {},
        NOTLaws: flagData.NOTLaws || {}
    };
    flagSpecifications.Flags.push(newFlag);
    return newFlag;
}

function removeFlag(index) {
    flagSpecifications.Flags.splice(index, 1);
}

function createFlagElement(flagData, index) {
    const flagDiv = document.createElement("div");
    flagDiv.classList.add("flag");
    flagDiv.dataset.flagIndex = index;

    flagDiv.innerHTML = `
        <button class="collapse-flag-overview-button">
            <div class="flag-overview">
                <div class="flag-overview-left">
                    <img class="dyn-flag" src="${unknownFlag}">
                    <p id="flag-name">${flagData.FlagName || 'Flag Name'}</p>
                </div>
                <div class="flag-overview-right">
                    <div><span class="flag-overview-title">Flag ID: </span>${flagData.FlagID}<span class="flag-overview-content"></span></div>
                    <div><span class="flag-overview-title">Ideologies: </span>${flagData.Ideologies}<span class="flag-overview-content"></span></div>
                    <div><span class="flag-overview-title">Laws: </span>${Object.keys(flagData.Laws)}<span class="flag-overview-content"></span></div>
                    <div><span class="flag-overview-title ron-red">NOT Laws: </span>${Object.keys(flagData.NOTLaws)}<span class="flag-overview-content"></span></div>
                    <div><span class="flag-overview-title">Description: </span>${flagData.Description}<span class="flag-overview-content"></span></div>
                </div>
            </div>
        </button>
        <div class="flag-contents">
            <button class="delete-flag-button">Delete Flag</button>
            
            <div class="flag-label"><span class="flag-title">Name: </span><input class="flag-input flag-name-input" value="${flagData.FlagName}"></div>
            <div class="flag-label"><span class="flag-title">Image ID: </span><input class="flag-input flag-image-input" value="${flagData.FlagID}"></div>
            <div class="flag-label"><span class="flag-title">Description/Sources: </span><input class="flag-input flag-description-input" value="${flagData.Description}"></div>
            
            <div class="ideologies">
                <ul>
                    <li>
                        <button type="button" class="btn">Non-Aligned</button>
                        <ul>
                            <li>
                                <button style="color: #F3B6B6;" type="button" class="btn">Socialism</button>
                                <ul>
                                    <li><button style="color: #F37B7B;" type="button" class="btn">Communism</button></li>
                                </ul>
                            </li>
                            <li>
                                <button style="color: #B5B6F3;" type="button" class="btn">Liberalism</button>
                                <ul>
                                    <li><button style="color: #7B7BF3;" type="button" class="btn">Democracy</button></li>
                                </ul>
                            </li>
                            <li>
                                <button style="color: #B8B8B9;" type="button" class="btn">Nationalism</button>
                                <ul>
                                    <li><button style="color: #7B7B7B;" type="button" class="btn">Fascism</button></li>
                                </ul>
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

    // Toggle flag contents visibility
    const collapseButton = flagDiv.querySelector(".collapse-flag-overview-button");
    const flagContents = flagDiv.querySelector(".flag-contents");
    collapseButton.addEventListener("click", () => {
        flagContents.classList.toggle("is-hidden");
    });

    // Add event listener for delete button
    const deleteButton = flagDiv.querySelector(".delete-flag-button");
    deleteButton.addEventListener("click", () => {
        removeFlag(index);
        updateDisplay();
    });

    // Add event listeners for input fields to update flagSpecifications
    const nameInput = flagDiv.querySelector(".flag-name-input");
    nameInput.addEventListener("input", (e) => {
        flagSpecifications.Flags[index].FlagName = e.target.value;
        updateFlagOverview(flagDiv, index);
    });

    const imageInput = flagDiv.querySelector(".flag-image-input");
    imageInput.addEventListener("input", (e) => {
        flagSpecifications.Flags[index].FlagID = e.target.value;
        updateFlagOverview(flagDiv, index);
    });

    const descInput = flagDiv.querySelector(".flag-description-input");
    descInput.addEventListener("input", (e) => {
        flagSpecifications.Flags[index].Description = e.target.value;
        updateFlagOverview(flagDiv, index);
    });

    const ideologiesDiv = flagDiv.querySelector(".ideologies");
    ideologiesDiv.addEventListener("click", (e) => {
        if (e.target && e.target.tagName === "BUTTON") {
            const ideology = e.target.textContent;
            const ideologies = flagSpecifications.Flags[index].Ideologies;
            if (ideologies.includes(ideology)) {
                // Remove from Ideologies
                flagSpecifications.Flags[index].Ideologies = ideologies.filter(i => i !== ideology);
                e.target.classList.remove("btn-allowed");
            } else {
                // Add to Ideologies
                flagSpecifications.Flags[index].Ideologies.push(ideology);
                e.target.classList.add("btn-allowed");
            }
            updateFlagElement(flagDiv, flagSpecifications.Flags[index], index);
        }
    });

    const lawsSelectionDiv = flagDiv.querySelector(".laws-selection");
    lawsSelectionDiv.addEventListener("click", (e) => {
        if (e.target && e.target.tagName === "BUTTON") {
            const lawName = e.target.textContent;
            generateLawsLevels(flagDiv, lawName);
        }
    });

    generateLawsList(flagDiv);

    return flagDiv;
}

function generateLawsLevels(flagDiv, LawText) {
    const lawsNameDiv = flagDiv.querySelector(".laws-name");
    const lawsLevelsDiv = flagDiv.querySelector(".laws-level");

    const LawCode = getLawCodeFromName(LawText);
    lawsNameDiv.innerHTML = LawText;

    // Clear existing content AND remove old event listeners by cloning
    const newLawsLevelsDiv = lawsLevelsDiv.cloneNode(false);
    lawsLevelsDiv.parentNode.replaceChild(newLawsLevelsDiv, lawsLevelsDiv);

    const flagIndex = parseInt(flagDiv.dataset.flagIndex, 10);

    // Create buttons and set their initial state
    for (let levelKey in Lawnames.lawNames[LawCode].Types) {
        const levelText = Lawnames.lawNames[LawCode].Types[levelKey];
        const button = document.createElement("button");
        button.classList.add("btn");
        button.textContent = levelText;

        newLawsLevelsDiv.appendChild(button);
    }

    // Update button states based on Laws/NOTLaws
    updateLawsLevelButtons(newLawsLevelsDiv, flagIndex, LawCode);

    // Add single event listener to the new element
    newLawsLevelsDiv.addEventListener("click", (e) => {
        if (e.target && e.target.tagName === "BUTTON") {
            const levelText = e.target.textContent;
            const levelKey = translateLawTexttoLevel(LawText, levelText);

            // Initialize as arrays if they don't exist
            if (!flagSpecifications.Flags[flagIndex].Laws[LawCode]) {
                flagSpecifications.Flags[flagIndex].Laws[LawCode] = [];
            }
            if (!flagSpecifications.Flags[flagIndex].NOTLaws[LawCode]) {
                flagSpecifications.Flags[flagIndex].NOTLaws[LawCode] = [];
            }

            const lawArray = flagSpecifications.Flags[flagIndex].Laws[LawCode];
            const notLawArray = flagSpecifications.Flags[flagIndex].NOTLaws[LawCode];

            // Three-state toggle: unselected -> Laws -> NOTLaws -> unselected
            if (lawArray.includes(levelKey)) {
                // Move from Laws to NOTLaws
                const index = lawArray.indexOf(levelKey);
                lawArray.splice(index, 1);
                notLawArray.push(levelKey);
            } else if (notLawArray.includes(levelKey)) {
                // Remove from NOTLaws (back to unselected)
                const index = notLawArray.indexOf(levelKey);
                notLawArray.splice(index, 1);
            } else {
                // Add to Laws
                lawArray.push(levelKey);
            }

            // Clean up empty arrays
            if (lawArray.length === 0 && notLawArray.length === 0) {
                delete flagSpecifications.Flags[flagIndex].Laws[LawCode];
                delete flagSpecifications.Flags[flagIndex].NOTLaws[LawCode];
            } else if (lawArray.length === 0) {
                delete flagSpecifications.Flags[flagIndex].Laws[LawCode];
            } else if (notLawArray.length === 0) {
                delete flagSpecifications.Flags[flagIndex].NOTLaws[LawCode];
            }

            // Update button states
            updateLawsLevelButtons(newLawsLevelsDiv, flagIndex, LawCode);

            // Update laws-selection buttons
            updateLawsSelectionButtons(flagDiv, flagSpecifications.Flags[flagIndex]);

            updateFlagOverview(flagDiv, flagIndex);
        }
    });
}

function updateLawsLevelButtons(lawsLevelsDiv, flagIndex, LawCode) {
    const buttons = lawsLevelsDiv.querySelectorAll("button");
    const lawsArray = flagSpecifications.Flags[flagIndex].Laws[LawCode];
    const notLawsArray = flagSpecifications.Flags[flagIndex].NOTLaws[LawCode];

    const hasLaws = Array.isArray(lawsArray) && lawsArray.length > 0;
    const hasNotLaws = Array.isArray(notLawsArray) && notLawsArray.length > 0;

    buttons.forEach(button => {
        const levelText = button.textContent;
        const levelKey = translateLawTexttoLevel(Lawnames.lawNames[LawCode].Name, levelText);

        // Remove all classes first
        button.classList.remove("btn-allowed", "btn-not-allowed");

        if (hasLaws) {
            // If Laws array has items
            if (lawsArray.includes(levelKey)) {
                button.classList.add("btn-allowed");
            } else {
                button.classList.add("btn-not-allowed");
            }
        } else if (hasNotLaws && notLawsArray.includes(levelKey)) {
            // If Laws array is empty and this button is in NOTLaws
            button.classList.add("btn-not-allowed");
        }
        // Otherwise, no class is added
    });
}

/**
* Handle nation button click to set flagSpecifications.NationName
*/
function onNationsListButtonClick(countryName) {
    flagSpecifications.NationName = countryName;
    updateDisplay();
}

// Law functions start here //
function translateLawLeveltoText(lawcode, level) {
    if (Lawnames.lawNames[lawcode]) {
        const lawLevels = Lawnames.lawNames[lawcode].Types;
        return lawLevels[level];
    }
    return "Law Not Found";
}

function translateLawTexttoLevel(lawText, levelText) {
    for (let lawKey in Lawnames.lawNames) {
        if (Lawnames.lawNames[lawKey].Name === lawText) {
            const lawLevels = Lawnames.lawNames[lawKey].Types;
            for (let levelKey in lawLevels) {
                if (lawLevels[levelKey] === levelText) {
                    return levelKey;
                }
            }
        }
    }
    console.log("Law Not Found for", lawText, levelText);
    return "Law Not Found";
}

function getLawNameFromCode(lawCode) {
    if (Lawnames.lawNames[lawCode]) {
        return Lawnames.lawNames[lawCode].Name;
    }
}

function getLawCodeFromName(lawName) {
    for (let lawKey in Lawnames.lawNames) {
        if (Lawnames.lawNames[lawKey].Name === lawName) {
            return lawKey;
        }
    }
    return null;
}
// Law functions end here //

function updateFlagElement(flagDiv, flagData, index) {
    // Update dataset
    flagDiv.dataset.flagIndex = index;

    // Update all input values
    const nameInput = flagDiv.querySelector(".flag-name-input");
    if (nameInput && nameInput.value !== flagData.FlagName) {
        nameInput.value = flagData.FlagName;
    }

    const imageInput = flagDiv.querySelector(".flag-image-input");
    if (imageInput && imageInput.value !== flagData.FlagID) {
        imageInput.value = flagData.FlagID;
    }

    const descInput = flagDiv.querySelector(".flag-description-input");
    if (descInput && descInput.value !== flagData.Description) {
        descInput.value = flagData.Description;
    }

    // Update ideology button states
    const ideologyButtons = flagDiv.querySelectorAll(".ideologies button");
    const hasIdeologies = flagData.Ideologies.length > 0;

    ideologyButtons.forEach(button => {
        const ideology = button.textContent;
        const isInIdeologies = flagData.Ideologies.includes(ideology);

        // Remove all classes first
        button.classList.remove("btn-allowed", "btn-not-allowed");

        // Add appropriate class only if Ideologies array is not empty
        if (hasIdeologies) {
            if (isInIdeologies) {
                button.classList.add("btn-allowed");
            } else {
                button.classList.add("btn-not-allowed");
            }
        }
    });

    // Update laws-selection button states
    updateLawsSelectionButtons(flagDiv, flagData);

    // Update overview
    updateFlagOverview(flagDiv, index);
}

function updateLawsSelectionButtons(flagDiv, flagData) {
    const lawsSelectionButtons = flagDiv.querySelectorAll(".laws-selection button");

    lawsSelectionButtons.forEach(button => {
        const lawName = button.textContent;
        const lawCode = getLawCodeFromName(lawName);

        if (!lawCode) return;

        const lawsArray = flagData.Laws[lawCode];
        const notLawsArray = flagData.NOTLaws[lawCode];

        const hasLaws = Array.isArray(lawsArray) && lawsArray.length > 0;
        const hasNotLaws = Array.isArray(notLawsArray) && notLawsArray.length > 0;

        // Remove all classes first
        button.classList.remove("btn-allowed", "btn-not-allowed", "btn-half-allowed");

        // Apply appropriate class
        if (hasLaws && hasNotLaws) {
            button.classList.add("btn-half-allowed");
        } else if (hasLaws) {
            button.classList.add("btn-allowed");
        } else if (hasNotLaws) {
            button.classList.add("btn-not-allowed");
        }
        // If neither, no class is added
    });
}

function updateFlagOverview(flagDiv, index) {
    const flagData = flagSpecifications.Flags[index];

    const flagNameElement = flagDiv.querySelector(".flag-overview-left #flag-name");
    if (flagNameElement) {
        flagNameElement.textContent = flagData.FlagName || 'Flag Name';
    }

    const flagImageElement = flagDiv.querySelector(".flag-overview-left .dyn-flag");
    if (flagImageElement) {
        getRobloxThumbnailURL(flagData.FlagID, '700x700').then((url) => {
            if (flagData.FlagID != "") {
                flagImageElement.src = url;
            }
        }).catch((error) => {
            flagImageElement.src = unknownFlag;
            console.error(`Error fetching roblox thumbnail flag for image id: ${flagData.FlagID}:`, error);
        });
    }

    const overviewRightDivs = flagDiv.querySelectorAll(".flag-overview-right > div");
    if (overviewRightDivs.length >= 5) {

        // Laws
        let lawsHTML = '<span class="flag-overview-title">Laws: </span>';
        const lawEntries = [];

        for (let lawCode in flagData.Laws) {
            const lawName = getLawNameFromCode(lawCode);
            const selectedLevels = flagData.Laws[lawCode];

            if (Array.isArray(selectedLevels) && selectedLevels.length > 0) {
                const levelTexts = selectedLevels.map(levelKey =>
                    translateLawLeveltoText(lawCode, levelKey)
                );
                lawEntries.push(`${lawName}: ${levelTexts.join(', ')}`);
            }
        }
        lawsHTML += lawEntries.length > 0 ? '<br>' + lawEntries.join('<br>') : 'None';


        // NOTLaws 
        let notLawsHTML = '<span class="flag-overview-title ron-red">NOT Laws: </span>';
        const notLawEntries = [];

        for (let lawCode in flagData.NOTLaws) {
            const lawName = getLawNameFromCode(lawCode);
            const notSelectedLevels = flagData.NOTLaws[lawCode];

            if (Array.isArray(notSelectedLevels) && notSelectedLevels.length > 0) {
                const levelTexts = notSelectedLevels.map(levelKey =>
                    translateLawLeveltoText(lawCode, levelKey)
                );
                notLawEntries.push(`${lawName}: ${levelTexts.join(', ')}`);
            }
        }
        notLawsHTML += notLawEntries.length > 0 ? '<br>' + notLawEntries.join('<br>') : 'None';

        //Flag ID
        overviewRightDivs[0].innerHTML = `<span class="flag-overview-title">Flag ID: </span>${flagData.FlagID}<span class="flag-overview-content"></span>`;

        //Ideologies
        overviewRightDivs[1].innerHTML = `<span class="flag-overview-title">Ideologies: </span>${flagData.Ideologies.join(', ')}<span class="flag-overview-content"></span>`;

        //Laws
        overviewRightDivs[2].innerHTML = lawsHTML + '<span class="flag-overview-content"></span>';

        //NOTLaws
        overviewRightDivs[3].innerHTML = notLawsHTML + '<span class="flag-overview-content ron-red"></span>';

        //Description
        overviewRightDivs[4].innerHTML = `<span class="flag-overview-title">Description: </span>${flagData.Description}<span class="flag-overview-content"></span>`;

        updateOutput();
    }
}

function updateDisplay() {
    console.log("Current Flag Specifications:", flagSpecifications);

    // Update nation name and image
    const nationNameInput = document.querySelector("#nation-name");
    const nationFlag = document.querySelector("#nation-flag");
    if (nationNameInput) {
        nationNameInput.value = flagSpecifications.NationName;

        getFandomImageUrl(flagSpecifications.NationName + '_Flag.png').then((url) => {
            if (flagSpecifications.NationName != "" && nationFlag) {
                nationFlag.src = url;
            }
        }).catch((error) => {
            nationFlag.src = unknownFlag;
            console.error(`Error fetching nation flag for ${flagSpecifications.NationName}:`, error);
        });
    }

    // Get the container where flags should be inserted
    const mainContent = document.querySelector(".main-content");
    const newFlagButton = document.querySelector(".new-flag-button");
    const existingFlags = document.querySelectorAll(".flag");

    // Remove flags that shouldn't exist anymore
    existingFlags.forEach((flagDiv, domIndex) => {
        if (domIndex >= flagSpecifications.Flags.length) {
            flagDiv.remove();
        }
    });

    // Update or create flags
    flagSpecifications.Flags.forEach((flagData, index) => {
        const existingFlag = existingFlags[index];

        if (existingFlag) {
            // Update existing flag
            updateFlagElement(existingFlag, flagData, index);
        } else {
            // Create new flag
            const flagDiv = createFlagElement(flagData, index);
            mainContent.insertBefore(flagDiv, newFlagButton);
        }
    });
    updateOutput();
}

async function updateOutput() {
    const tab = '&nbsp;&nbsp;&nbsp;&nbsp;';
    const outputText = document.querySelector('#output-text');

    function buildSingleFlag(flag) {
        const id = flag.FlagID ? `rbxassetid://${flag.FlagID}` : '';
        const name = flag.FlagName || '';

        const hasIdeologies = flag.Ideologies && flag.Ideologies.length > 0;
        const hasLaws = flag.Laws && Object.keys(flag.Laws).length > 0;
        const hasNOTLaws = flag.NOTLaws && Object.keys(flag.NOTLaws).length > 0;
        const hasRequirements = hasIdeologies || hasLaws || hasNOTLaws;

        if (!hasRequirements) {
            return `${tab}["${name}"] = {ID = "${id}",},`;
        }

        let lines = [];
        lines.push(`${tab}["${name}"] = {ID = "${id}",`);
        lines.push(`${tab}${tab}Requirements = {`);

        if (hasIdeologies) {
            const ideologyArray = flag.Ideologies.map(i => `"${i}"`).join(', ');
            lines.push(`${tab}${tab}${tab}${tab}["Ideology"] = '[${ideologyArray}]',`);
        }

        if (hasLaws) {
            const lawObj = {};
            for (let lawCode in flag.Laws) {
                lawObj[lawCode] = flag.Laws[lawCode];
            }
            lines.push(`${tab}${tab}${tab}${tab}["Political_Law"] = '${JSON.stringify(lawObj)}',`);
        }

        if (hasNOTLaws) {
            const notLawObj = {};
            for (let lawCode in flag.NOTLaws) {
                notLawObj[lawCode] = flag.NOTLaws[lawCode];
            }
            lines.push(`${tab}${tab}${tab}${tab}["NOT_Political_Law"] = '${JSON.stringify(notLawObj)}',`);
        }

        lines.push(`${tab}${tab}},`);
        lines.push(`${tab}},`);

        return lines.join('<br>');
    }

    const descriptions = flagSpecifications.Flags
        .filter(f => f.Description)
        .map(f => `**${f.FlagName}:** ${f.Description}`)
        .join('<br>');

    const flagLines = flagSpecifications.Flags
        .filter(f => f.FlagName && f.FlagID)
        .map(f => buildSingleFlag(f))
        .join('<br>');

    // Resolve all thumbnail URLs in parallel
    const validFlags = flagSpecifications.Flags.filter(f => f.FlagName && f.FlagID);
    const imageUrls = await Promise.all(
        validFlags.map(f =>
            getRobloxThumbnailURL(f.FlagID, '700x700').catch(() => null)
        )
    );

    // Build image links, 3 per line
    const imageLinks = validFlags
        .map((f, i) => imageUrls[i] ? `[${f.FlagName}](${imageUrls[i]})` : null)
        .filter(Boolean);

    const imagesBlock = imageLinks
        .reduce((lines, link, i) => {
            const lineIndex = Math.floor(i / 3);
            if (!lines[lineIndex]) lines[lineIndex] = [];
            lines[lineIndex].push(link);
            return lines;
        }, [])
        .map(line => line.join(', '))
        .join('<br>');

    const luaOutput =
        `\`\`\`lua
    <br>["${flagSpecifications.NationName}"] = {
    <br>${flagLines}
    <br>},
    <br>\`\`\`
    <br>--[[
    <br># __Description/Sources__
    <br>${descriptions}
    <br># __Images__
    <br>${imagesBlock}
    <br>> -# *Made using [Dyn Flagger](https://dyn-flagger.pages.dev/ )*
    <br>]]`;

    outputText.innerHTML = luaOutput;
}

function copyOutput() {
    const output = document.getElementById('output-text'),
        button = document.getElementById('copy-output-btn');

    navigator.clipboard.writeText(output.innerText)

    button.innerText = 'Copied!'
    button.classList.add('output-btn-copied')
    setTimeout(() => {
        button.innerText = 'Copy to clipboard'
        button.classList.remove('output-btn-copied')
    }, 1000)
}

//Buttons and inputs that already exist on page load
document.addEventListener('DOMContentLoaded', () => {
    //new flag button
    const newFlagButton = document.querySelector(".new-flag-button button");
    if (newFlagButton) {
        newFlagButton.addEventListener("click", () => {
            addFlag();
            updateDisplay();
        });
    }

    //nation name input
    const nationNameInput = document.querySelector("#nation-name");
    if (nationNameInput) {
        nationNameInput.addEventListener("input", (e) => {
            flagSpecifications.NationName = e.target.value;
            updateDisplay();
        });
    }
});

// Load data when page loads
loadFandomData();
addFlag();
updateDisplay();

// Global scopes for inline onclick handlers
window.switchTab = switchTab;
window.generateLawsList = generateLawsList;
window.generateNationsList = generateNationsList;
window.nationsSearchFilter = nationsSearchFilter;
window.copyOutput = copyOutput;