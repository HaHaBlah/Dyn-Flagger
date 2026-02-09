let Lawnames, Flagdata, Nationdata, Tagdata;
let dataLoadedPromise = null; // Promise to track when data is loaded
import { getFandomImageUrl } from './fandomProcessor.js';

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

            console.log('✅ Data loaded successfully!');
            console.log(Lawnames);
            console.log(Flagdata);
            console.log(Nationdata);
            console.log(Tagdata);

            if (Lawnames?.lawNames?.Elective_Assembly?.Name) {
                const Conscription = Lawnames.lawNames.Elective_Assembly.Name;
                console.log(Conscription);
            }

            // Call both functions after data is loaded
            await generateLawsList();
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

let flagSpecifications = {
    NationName: "",
    Flags: []
};

function addFlag(flagData = {}) {
    const newFlag = {
        FlagName: flagData.FlagName || "",
        FlagID: flagData.FlagID || flagSpecifications.Flags.length,
        Description: flagData.Description || "",
        Ideologies: flagData.Ideologies || [],
        Laws: flagData.Laws || {}, // Changed to object
        NOTIdeologies: flagData.NOTIdeologies || [],
        NOTLaws: flagData.NOTLaws || {} // Changed to object
    };
    flagSpecifications.Flags.push(newFlag);
    return newFlag;
}

function removeFlag(index) {
    flagSpecifications.Flags.splice(index, 1);
}

function updateDisplay() {
    console.log("Current Flag Specifications:", flagSpecifications);

    // Update nation name
    const nationNameInput = document.querySelector("#nation-name");
    if (nationNameInput) {
        nationNameInput.value = flagSpecifications.NationName;
    }

    // Get the container where flags should be inserted
    const mainContent = document.querySelector(".main-content");
    const newFlagButton = document.querySelector(".new-flag-button");

    // Remove all existing flag divs
    const existingFlags = document.querySelectorAll(".flag");
    existingFlags.forEach(flag => flag.remove());

    // Create a flag div for each flag in flagSpecifications.Flags
    flagSpecifications.Flags.forEach((flag, index) => {
        const flagDiv = createFlagElement(flag, index);
        // Insert before the new-flag-button
        mainContent.insertBefore(flagDiv, newFlagButton);
    });
}

function updateFlagOverview(flagDiv, index) {
    const flagData = flagSpecifications.Flags[index];

    // Update the overview section without recreating the entire element
    const flagNameElement = flagDiv.querySelector(".flag-overview-left #flag-name");
    if (flagNameElement) {
        flagNameElement.textContent = flagData.FlagName || 'Flag Name';
    }

    const overviewRightDivs = flagDiv.querySelectorAll(".flag-overview-right > div");
    if (overviewRightDivs.length >= 3) {
        // Update Flag ID
        overviewRightDivs[0].innerHTML = `<span class="flag-overview-title">Flag ID: </span>${flagData.FlagID}<span class="flag-overview-content"></span>`;
        // Update Ideologies count
        overviewRightDivs[1].innerHTML = `<span class="flag-overview-title">Ideologies: </span>${flagData.Ideologies.length}<span class="flag-overview-content"></span>`;
        // Update Laws count
        overviewRightDivs[2].innerHTML = `<span class="flag-overview-title">Laws: </span>${Object.keys(flagData.Laws).length}<span class="flag-overview-content"></span>`;
    }
}

function createFlagElement(flagData, index) {
    const flagDiv = document.createElement("div");
    flagDiv.classList.add("flag");
    flagDiv.dataset.flagIndex = index;

    flagDiv.innerHTML = `
        <button class="collapse-flag-overview-button">
            <div class="flag-overview">
                <div class="flag-overview-left">
                    <img id="nation-flag" src="images/Unknown Flag.png">
                    <p id="flag-name">${flagData.FlagName || 'Flag Name'}</p>
                </div>
                <div class="flag-overview-right">
                    <div><span class="flag-overview-title">Flag ID: </span>${flagData.FlagID}<span class="flag-overview-content"></span></div>
                    <div><span class="flag-overview-title">Ideologies: </span>${flagData.Ideologies.length}<span class="flag-overview-content"></span></div>
                    <div><span class="flag-overview-title">Laws: </span>${Object.keys(flagData.Laws).length}<span class="flag-overview-content"></span></div>
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
    });

    generateLawsList(flagDiv);

    return flagDiv;
}

/**
* Handle nation button click to set flagSpecifications.NationName
*/
function onNationsListButtonClick(countryName) {
    flagSpecifications.NationName = countryName;
    updateDisplay();
}

function translateLawLevelstoText(law, level) { }

// Initialize event listeners after DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
    // Add event listener for new flag button
    const newFlagButton = document.querySelector(".new-flag-button button");
    if (newFlagButton) {
        newFlagButton.addEventListener("click", () => {
            addFlag();
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