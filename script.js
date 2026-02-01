let Lawnames, Flagdata, Nationdata, Tagdata;
import { getFandomImageUrl } from './fandomProcessor.js';

// Fetch processed fandom data from server
async function loadFandomData() {
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

        if (Lawnames?.lawNames?.Elective_Assembly?.Name) {
            const Conscription = Lawnames.lawNames.Elective_Assembly.Name;
            console.log(Conscription);
        }

        // Only call this after data is loaded
        generateNationsList();
    } catch (error) {
        console.error('Error loading fandom data:', error);
    }
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

async function generateNationsList() {
    if (!Nationdata?.nationdata) {
        console.warn('Nationdata not loaded yet');
        return;
    }

    const nationsLists = document.getElementsByClassName("nations-list");
    const imageScale = 30;

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
                .filter(formable => formable.FormableName)
                .map(formable => formable.FormableName)
                .sort();
        }

        // Fetch all image URLs in parallel
        const urlPromises = countries.map(country =>
            getFandomImageUrl(country + '_Flag.png')
        );

        const resolvedUrls = await Promise.all(urlPromises);

        // Create and append all list items with their resolved URLs
        countries.forEach((country, index) => {
            const scaledUrl = scaleUrl(resolvedUrls[index]);
            const li = createListItem(country, scaledUrl);
            list.appendChild(li);
        });
    }
}

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

// Load data when page loads
loadFandomData();

// Global scopes for inline onclick handlers
window.switchTab = switchTab;
window.generateNationsList = generateNationsList;
window.nationsSearchFilter = nationsSearchFilter;

// Toggle sidebar functionality
document.querySelector('.left-rail-toggle').addEventListener('click', function() {
    document.querySelector('.rail-container').classList.toggle('sidebar-open');
});