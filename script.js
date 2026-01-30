import e from 'express';
import { getFandomData } from './fandomProcessor.js'; //imports the lua modules from fandom

const fandomModules = await getFandomData();
const Lawnames = fandomModules.Lawnames
const Flagdata = fandomModules.Flagdata
const Nationdata = fandomModules.Nationdata
const Tagdata = fandomModules.Tagdata
console.log(Lawnames);
console.log(Flagdata);
console.log(Nationdata);
console.log(Tagdata);

const Conscription = Lawnames.lawNames.Elective_Assembly.Name
console.log(Conscription);

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

function generateNationsList() {
    nationsLists = document.getElementsByClassName("nations-list");
    for (let list of nationsLists) {
        if (nationsLists.parentElement.id === "Nations") {
            //for (let nation in Nationdata.nationData) { }
        } else if (nationsLists.parentElement.id === "Releasables") {

        } else if (nationsLists.parentElement.id === "Formables") {

        }
    }
}


// Global scopes for inline onclick handlers
window.switchTab = switchTab;