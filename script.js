import { getFandomData } from './fandomProcessor.js'; //imports the lua modules from fandom

const data = await getFandomData();
console.log(data.Lawnames);
console.log(data.Flagdata);
console.log(data.Nationdata);
console.log(data.Tagdata);