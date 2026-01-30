let Lawnames, Flagdata, Nationdata, Tagdata;
import { resolveFileUrl } from './fandomProcessor.js';

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
    const imageScale = 22;

    for (let list of nationsLists) {
        if (list.parentElement.id === "Nations") {
            for (let country in Nationdata.nationdata) {
                if (Nationdata.nationdata[country].nation !== true) {
                    continue;
                }
                const li = document.createElement("li");
                const button = document.createElement("button");
                const flagSpan = document.createElement("span");
                flagSpan.classList.add("flag-image");
                const flagImg = document.createElement("img");

                const resolvedUrl = await resolveFileUrl('File:' + country + '_Flag.png');
                //baseUrl = new URL(resolvedUrl).origin;
                console.log('Resolved URL:', resolvedUrl);
                //console.log('Base URL:', baseUrl);

                // Get base URL and add scale-to-width-down parameter
                //const scaledUrl = baseUrl// + '/scale-to-width-down/' + imageScale;

                flagImg.src = resolvedUrl;//scaledUrl;
                flagSpan.appendChild(flagImg);

                const nameSpan = document.createElement("span");
                nameSpan.textContent = country;
                button.appendChild(flagSpan);
                button.appendChild(nameSpan);
                li.appendChild(button);
                list.appendChild(li);
            }
        } else if (list.parentElement.id === "Releasables") {

        } else if (list.parentElement.id === "Formables") {

        }
    }
}

// Load data when page loads
loadFandomData();

// Global scopes for inline onclick handlers
window.switchTab = switchTab;
window.generateNationsList = generateNationsList;