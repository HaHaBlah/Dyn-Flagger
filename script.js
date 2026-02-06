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

async function generateLawsList(subsection) {
    //const lawsSelection = subsection.getElementsByClassName("laws-selection");
    if (!Lawnames?.lawNames && dataLoadedPromise) {
        await dataLoadedPromise;
    }
    const lawsSelection = document.querySelector(".laws-selection");

    console.log(lawsSelection);

    // Check if element exists
    if (!lawsSelection) {
        console.error("Element with class 'laws-selection' not found");
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

// Load data when page loads
loadFandomData();

// Global scopes for inline onclick handlers
window.switchTab = switchTab;
window.generateLawsList = generateLawsList;
window.generateNationsList = generateNationsList;
window.nationsSearchFilter = nationsSearchFilter;