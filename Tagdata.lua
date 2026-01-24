local Tags = {
{
	FormableName = "Soviet Union",
	CountriesCanForm = {"Abkhazia", "Donetsk", "Kharkov", "Luhansk", "Odessa", "Ossetia", "Russia", "Transnistria"},
	RequiredCountries = {"Russia", "Ukraine", "Belarus", "Armenia", "Azerbaijan", "Estonia", "Georgia", "Kazakhstan", "Kyrgyzstan", "Latvia", "Lithuania", "Moldova", "Tajikistan", "Turkmenistan", "Uzbekistan"},
	ExclusiveFormables = {"Russian Empire", "European Union"},
	FormableButton = {
		ButtonName = "Reinstate the Supreme Soviet",
		ButtonDescription = "Shattered like a Matryoshka doll, the dissolution of the great Soviet Union was celebrated by the west, and mourned by those who ardently believed in it. The pieces are still there, ready to glue at any moment, the people are still reminiscent of our glorious Union, and they are ready for the return. From the Siberian Taigas to the British Seas, the Red Army will march strong again!",
	},
	CustomAlert = {
		Title = "Return of the Soviet Union",
		Desc = "With the collapse of the Soviet Union, a century of Russian occupation of Eurasia could finally come to an end, with reforms being made to put power back into the hands of the people. However, it turns out that putting 'power into the hands of the people' is exactly what has doomed history to repeat itself, as against all odds, a new, fanatical band has rise n up to restore Communist rule of the old Cominform.",
		Button = "The red terror returns",
	},
	AddModifiers = {
		["The Vanguards of Socialism"] = {
			Length = -1
		},
	},
	CustomAttributes = { 
        ["Stability_Gain"] = 10, 
        ["Rename_Cities"] = [[
            [
            ["Aktobe", "Aktyubinsk"],
            ["Almaty", "Alma-Ata"],
            ["Ashgabat", "Poltoratsk"],
            ["Astana", "Tselinograd"],
            ["Atyrau", "Guryev"],
            ["Balkanabat", "Neftedag"],
            ["Balykchy", "Rybachye"],
            ["Białystok", "Belastok"],
            ["Bishkek", "Frunze"],
            ["Buzmeyin", "Bezmein"],
            ["Bălți", "Beltsy"],
            ["Chișinău", "Kishinev"],
            ["Dalian", "Ryojun"],
            ["Daşoguz", "Tashauz"],
            ["Denov", "Denau"],
            ["Dnipro", "Dnipropetrovsk"],
            ["Donetsk", "Stalino"],
            ["Dubăsari", "Dubossary"],
            ["Dushanbe", "Stalinabad"],
            ["Gadabay", "Kirovabad"],
            ["Gavarr", "Kamo"],
            ["Goycay", "Geokchay"],
            ["Gyumri", "Leninakan"],
            ["Izhevsk", "Ustinov"],
            ["Karakol", "Przhevalsk"],
            ["Katowice", "Stalinogród"],
            ["Kharkiv", "Kharkov"],
            ["Khmelnytskyy", "Proskuiv"],
            ["Khujand", "Leninabad"],
            ["Korolyov", "Kaliningrad"],
            ["Kryvyy Rih", "Krivoy Rog"],
            ["Kuybyshevskiy", "Kuybyshevskiy"],
            ["Kyiv", "Kiev"],
            ["Luhansk", "Voroshilovgrad"],
            ["Mary", "Merv"],
            ["Nizhny Novgorod", "Gorky"],
            ["Novokuznetsk", "Stalinsk"],
            ["Oguz", "Vartashen"],
            ["Olmaliq", "Almalyk"],
            ["Orenburg", "Chkalov"],
            ["Orlov", "Khalturin"],
            ["Perm", "Molotov"],
            ["Saint Petersburg", "Leningrad"],
            ["Saki", "Nukha"],
            ["Samara", "Kuybyshev"],
            ["Semey", "Semipalatinsk"],
            ["Stavropol", "Voroshilovsk"],
            ["Taraz", "Dzhambul"],
            ["Tolyatti", "Stavropol-on-Volga"],
            ["Tskhinvali", "Staliniri"],
            ["Tver", "Kalinin"],
            ["Türkmenabat", "Leninsk"],
            ["Türkmenbaşy", "Krasnovodsk"],
            ["Ulyanovsk", "Simbirsk"],
            ["Vanadzor", "Kirovakan"],
            ["Volgograd", "Stalingrad"],
            ["Yeghegnadzor", "Mikoyan"],
            ["Yekaterinburg", "Sverdlovsk"],
            ["Yerevan", "Iravân"],
            ]
        ]],
    },
	Demonym = "Soviet",
},
--[[ OLD SOVIET INFO
{
	FormableName = "Soviet Union",
	CountriesCanForm = {"Russia"},
	RequiredCountries = {"Russia", "Ukraine", "Belarus", "Armenia", "Azerbaijan", "Estonia", "Georgia", "Kazakhstan", "Kyrgyzstan", "Latvia", "Lithuania", "Moldova", "Tajikistan", "Turkmenistan", "Uzbekistan"},
	ExclusiveFormables = {"Russian Empire"},
	FormableButton = {
		ButtonName = "Reinstate the Supreme Soviet",
		ButtonDescription = "Shattered like a Matryoshka doll, the dissolution of the great Soviet Union was celebrated by the west, and mourned by those who ardently believed in it. The pieces are still there, ready to glue at any moment, the people are still reminiscent of our glorious Union, and they are ready for the return. From the Siberian Taigas to the British Seas, the Red Army will march strong again!",
	},
	CustomAlert = {
		Title = "Return of the Soviet Union",
		Desc = "With the collapse of the Soviet Union, a century of Russian occupation of Eurasia could finally come to an end, with reforms being made to put power back into the hands of the people. However, it turns out that putting 'power into the hands of the people' is exactly what has doomed history to repeat itself, as against all odds, a new, fanatical band has rise n up to restore Communist rule of the old Cominform.",
		Button = "The red terror returns",
	},
	AddModifiers = {
		["The Vanguards of Socialism"] = {
			Length = -1
		},
	},
},
{
	FormableName = "Soviet Union",
	CountriesCanForm = {"Russia"},
	RequiredCountries = {"Russia", "Ukraine", "Belarus", "Armenia", "Azerbaijan", "Estonia", "Georgia", "Kazakhstan", "Kyrgyzstan", "Latvia", "Lithuania", "Moldova", "Tajikistan", "Turkmenistan", "Uzbekistan"},
	ExclusiveFormables = {"Russian Empire"},
	FormableButton = {
		ButtonName = "Reform the Soviet Union",
		ButtonDescription = "We have reunited the former republics under one banner! It is now time to reform the Soviet Union!",
	},
	CustomAlert = {
		Title = "The Return of the Soviet Union",
		Desc = "Against all odds, Russia has managed to retake its former countries and has declared a new successor state to the once mighty Soviet Union, determined to become a new global superpower once more!",
		Button = "The red terror returns",
	},
	AddModifiers = {
		["The Vanguards of Socialism"] = {
			Length = -1
		},
	},
},]]--

{
	FormableName = "Russian Empire",
	CountriesCanForm = {"Russia"},
	RequiredCountries = {"Russia", "Ukraine", "Belarus", "Armenia", "Azerbaijan", "Estonia", "Georgia", "Kazakhstan", "Kyrgyzstan", "Latvia", "Lithuania", "Moldova", "Tajikistan", "Turkmenistan", "Uzbekistan", "Finland"},
	ExclusiveFormables = {"Soviet Union"},
	FormableButton = {
		ButtonName = "Reform the Russian Empire",
		ButtonDescription = "We have reconquered the lost territories of the once great Russian Empire, it is time to reinstate the Tsar. Long live the Motherland!",
	},
	AddModifiers = {
		["Tsardom of All Rus'"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Byzantine Empire",
	CountriesCanForm = {"Greece"},
	RequiredCountries = {"Greece", "Turkey", "Bulgaria", "Macedonia", "Cyprus", "Serbia", "Kosovo", "Albania", "Montenegro"},
	FormableButton = {
		ButtonName = "Form the Byzantine Empire",
		ButtonDescription = "It is time we relive the once glorious days! Today, we reconstruct the Byzantine Empire!",
	},
	AddModifiers = {
		["One God, One Empire, One Religion"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Holy Roman Empire",
	CountriesCanForm = {"Austria", "Liechtenstein"},
	RequiredCountries = {"Austria", "Germany", "Belgium", "Netherlands", "Luxembourg", "Czech Republic", "Liechtenstein", "Switzerland", "Slovenia"},
	FormableButton = {
		ButtonName = "Restore the Holy Roman Empire",
		ButtonDescription = "The time has returned to restore centralized Imperial rule to Central Europe! Our ascension to greatness begins now!",
	},
	AddModifiers = {
		["Holy, Roman, and an Empire?"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Yugoslavia",
	CountriesCanForm = {"Serbia"},
	RequiredCountries = {"Serbia", "Croatia", "Bosnia And Herzegovina", "Kosovo", "Macedonia", "Montenegro", "Slovenia"},
	ExclusiveFormables = {"Serbian Empire"},
	FormableButton = {
		ButtonName = "Reunite the South Slavs",
		ButtonDescription = "We have learned our lesson from the Yugoslav Wars, and we have taken . . precautions . . to ensure that such a conflict will never again trouble our nation. First and foremost, though, we must once again reunite all of its integral pieces, reassembling the great South Slavic state; an unbendable, unbreakable improvement over its predecessor.",
	},
	
	CustomAlert = {
		Title = "Reassembly of the Yugoslav Committee",
		Desc = "After decades of international intervention, the Yugoslavian question was finally answered with its fracture into its constituent states; and yet, it seems our mediation did little to improve the situation. For once again, the Serbians have taken charge of a new South Slavic union—supposedly, 'stronger' than the one that came before.",
		Button = "How many times do we have to teach them...",
	},
	
	AddModifiers = {
		["There Lives the Slavic Spirit"] = {
			Length = -1
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 10, 
		["Rename_Cities"] = [[
            [
            ["Podgorica", "Titograd"],
            ]
        ]],

	},
	Demonym = "Yugoslav",
},
--[[ OLD YUGOSLAVIA
{
	FormableName = "Yugoslavia",
	CountriesCanForm = {"Serbia"},
	RequiredCountries = {"Serbia", "Kosovo", "Bosnia And Herzegovina", "Macedonia", "Montenegro", "Croatia", "Slovenia"},
	FormableButton = {
		ButtonName = "Restore Yugoslavia!",
		ButtonDescription = "We have managed to put an end to the endless infighting that divided our nation in the first place! Long live Yugoslavia!",
	},
	AddModifiers = {
		["There Lives the Slavic Spirit"] = {
			Length = -1
		},
	},
},
]]
{
	FormableName = "Islamic Caliphate",
	CountriesCanForm = {"Palestine", "Saudi Arabia", "Qatar", "Kuwait", "Iraq", "Jordan", "Lebanon", "Syria", "Bahrain", "Oman", "United Arab Emirates", "Yemen", "Iran", "Pakistan", "Egypt", "Libya", "Tunisia", "Algeria", "Morocco", "Turkey", "Afghanistan"},
	RequiredCountries = {"Palestine", "Saudi Arabia", "Qatar", "Kuwait", "Iraq", "Israel", "Jordan", "Lebanon", "Syria", "Bahrain", "Oman", "United Arab Emirates", "Yemen", "Iran", "Pakistan", "Egypt", "Libya", "Tunisia", "Algeria", "Morocco", "Gibraltar", "Spain", "Portugal", "Turkey", "Cyprus", "Afghanistan"},
	FormableButton = {
		ButtonName = "Form the Islamic Caliphate",
		ButtonDescription = "We have reunited the majority of the Islamic world. It is now time to form the Caliphate in the name of Allah!",
	},
	AddModifiers = {
		["Age of the Caliphs"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Persian Empire",
	CountriesCanForm = {"Iran"},
	RequiredCountries = {"Iran", "Iraq", "Israel", "Jordan", "Lebanon", "Syria", "Pakistan", "Egypt", "Turkey", "Cyprus", "Afghanistan", "Kuwait", "Armenia", "Azerbaijan", "Georgia", "Tajikistan", "Turkmenistan", "Uzbekistan", "Kyrgyzstan"},
	FormableButton = {
		ButtonName = "Form the Persian Empire",
		ButtonDescription = "It is time to claim the title of King of Persia once more!",
	},
	AddModifiers = {
		["The Unrivaled Might of Persia"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Kalmar Union",
	CountriesCanForm = {"Denmark", "Sweden", "Norway", "Finland", "Iceland", "Greenland"},
	RequiredCountries = {"Denmark", "Sweden", "Norway", "Finland", "Iceland", "Greenland"},
	ExclusiveFormables = {"Danish Empire"},
	FormableButton = {
		ButtonName = "Reunite the Kalmar Union",
		ButtonDescription = "We have complete control over the Scandinavian peoples! It is time to reform the Kalmar Union!",
	},
},

{
	FormableName = "Iberian Union",
	CountriesCanForm = {"Andalusia", "Andorra", "Aragon", "Asturias", "Azores", "Balearic Islands", "Basque", "Canary Islands", "Catalonia", "Galicia", "Madeira", "Portugal", "Spain", "Valencia"},
	RequiredCountries = {"Andorra", "Gibraltar", "Portugal", "Spain"},
	FormableButton = {
		ButtonName = "Unite Iberia",
		ButtonDescription = "Since medieval times, the people of Iberia, regardless of ideology, had been linked under one common goal of unity within the peninsula. With support rising by the day, we can no longer avoid the rising calls to union. Unite Iberia, and let our blissful homeland be united to the further beyond!",
	},
	CustomAlert = {
		Title = "The Restless Iberi",
		Desc = "With genetic, cultural, and thousands of years of historical ties binding them, the Iberian Peninsula and its inhabitants have always carried a shared legacy. With the prospect of federalism already on the table since the 16th century, it comes as no surprise that, after centuries apart, the peninsula has united into one, Iberian state.",
		Button = "Viva...",
	},
	AddModifiers = {
		["A Jangada de Pedra"] = {
			Length = -1,
		},
	},
	CustomAttributes = {
		["Stability Gain"] = 5,
	},
	Demonym = "Iberian",
},

--[[{
	FormableName = "Iberian Union",
	CountriesCanForm = {"Portugal", "Spain"},
	RequiredCountries = {"Portugal", "Spain"},
	FormableButton = {
		ButtonName = "Unite Iberia",
		ButtonDescription = "Since medieval times, the people of Iberia, regardless of ideology, had been linked under one common goal of unity within the peninsula. With support rising by the day, we can no longer avoid the rising calls to union. Unite Iberia, and let our blissful homeland be united to the further beyond!",
	},

	CustomAlert = {
		Title = "The Restless Iberi",
		Desc = "With genetic, cultural, and thousands of years of historical ties binding them, the Iberian Peninsula and its inhabitants have always carried a shared legacy. With the prospect of federalism already on the table since the 16th century, it comes as no surprise that, after centuries apart, the peninsula has united into one, Iberian state.",
		Button = "Viva...",
	},
},

	AddModifiers = {
		["A Jangada de Pedra"] = {
	Length = -1,
	},
	CustomAttributes = {
		["Stability Gain"] = 5,
	},
	Demonym = "Iberian",
},

{
	FormableName = "Iberian Union",
	CountriesCanForm = {"Spain", "Portugal"},
	RequiredCountries = {"Spain", "Portugal"},
	FormableButton = {
		ButtonName = "Form the Iberian Union",
		ButtonDescription = "We are now one people, one nation! We are now the Iberians!",
	},
	AddModifiers = {
		["A Jangada de Pedra"] = {
			Length = -1
		},
	},
},]]

{
	FormableName = "Czechoslovakia",
	CountriesCanForm = {"Czech Republic", "Slovakia"},
	RequiredCountries = {"Czech Republic", "Slovakia"},
	FormableButton = {
		ButtonName = "Reunite Czechoslovakia",
		ButtonDescription = "Reform the once divided Czechoslovakia!",
	},
	AddModifiers = {
		["The Czechoslovak Legion"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Empire of Japan",
	CountriesCanForm = {"Japan"},
	RequiredCountries = {"Japan", "South Korea", "North Korea", "Taiwan", "Vietnam", "Laos", "Cambodia", "Burma", "Philippines", "Malaysia", "Indonesia"},
	FormableButton = {
		ButtonName = "Recreate the Empire of Japan",
		ButtonDescription = "We have cast aside the weak pacifist restrictions imposed on us from the end of WWII. In order to consolidate ourselves in the world, we will reform the Empire of Japan!",
	},
	AddModifiers = {
		["Dawn of the Rising Sun"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Polish-Lithuanian Commonwealth",
	CountriesCanForm = {"Poland", "Lithuania"},
	RequiredCountries = {"Lithuania", "Poland", "Belarus", "Ukraine", "Latvia"},
	FormableButton = {
		ButtonName = "Form the Polish-Lithuanian Commonwealth",
		ButtonDescription = "We have reversed the disasterous partitions of our once mighty empire. We shall begin our climb to glory once more, united together!",
	},
	AddModifiers = {
		["The Republic of Nobles"] = {
			Length = -1
		},
	},
},

{
	FormableName = "German Empire",
	CountriesCanForm = {"Germany"},
	RequiredCountries = {"Germany", "Alsace", "Kaliningrad", "Tanzania", "Burundi", "Rwanda", "Namibia", "Cameroon", "Togo", "Papua New Guinea", "Samoa", "Palau", "Marshall Islands"},
	RequiredTiles = {"France.040", "Denmark.001", 'Poland.015','Poland.016','Poland.018','Poland.017','Poland.001','Poland.002','Poland.003','Poland.005','Poland.004','Poland.020','Poland.006', "Lithuania.001"},
	FormableButton = {
		ButtonName = "Expand our Influence Overseas",
		ButtonDescription = "The old colonies have been reunited with us, long live the Kaiser!",
	},
	CustomAttributes = {
		["Stability_Gain"] = 15,
	},
	AddModifiers = {
		["A Place in the Sun"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Republic of Central America",
	CountriesCanForm = {"Belize", "El Salvador", "Nicaragua", "Guatemala", "Costa Rica", "Honduras"},
	RequiredCountries = {"Belize", "El Salvador", "Nicaragua", "Guatemala", "Costa Rica", "Honduras"},
	FormableButton = {
		ButtonName = "Create the Republic of Central America",
		ButtonDescription = "We shall form a Central American Republic, free of infighting that dissolved our state long ago",
	},
},

{
	FormableName = "Republic of China",
	CountriesCanForm = {"Taiwan"},
	RequiredCountries = {"Taiwan", "China"},
	FormableButton = {
		ButtonName = "Become the Republic of China",
		ButtonDescription = "We have managed to reclaim our long lost mainland! We are now the true legitimate Chinese state!",
	},
	CustomAttributes = {
		["Stability_Gain"] = 25,
	},
	AddModifiers = {
		["Minzu, Minquan, Minsheng"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Gran Colombia",
	CountriesCanForm = {"Colombia", "Venezuela"},
	RequiredCountries = {"Colombia", "Ecuador", "Panama", "Venezuela"},
	RequiredTiles = {"Peru.001", "Brazil.067", "Brazil.068"},
	FormableButton = {
		ButtonName = "Restore the Liberator's republic",
		ButtonDescription = "Simon Bolivar's brilliance brought forth the independence of not only Colombia and her dominions, but the whole of Spanish America as well. His legacy must not be forgotten; with our compatriots at risk of subjugation, fate has decreed that we reforge the old Gran Colombia to once more protect the Patria Grande.",
	},

	CustomAlert = {
		Title = "Colombia Grandissima",
		Desc = "The forefather of Latin American independence, Gran Colombia began a chain reaction that would carve nearly the entire western hemisphere free from the Spanish Empire. In a drastic reversal of fate, though, they have now seen fit to rebuild their own republic—at the cost of the independence they once fought so dearly for.",
		Button = "March on, 'liberators.'",
	},

	AddModifiers = {
		["The Dreams of Liberation"] = {
			Length = -1,
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 10, 
	},
	Demonym = "Colombian",
},

--[[ OLD GRAN COLOMBIA
{
	FormableName = "Gran Colombia",
	CountriesCanForm = {"Colombia"},
	RequiredCountries = {"Colombia", "Ecuador", "Panama", "Venezuela"},
	FormableButton = {
		ButtonName = "Form Gran Colombia",
		ButtonDescription = "We have reunited our peoples, once torn apart by internal pressures. We shall stand firm together!",
	},
	AddModifiers = {
		["The Dreams of Liberation"] = {
			Length = -1
		},
	},
},
]]
{
	FormableName = "Empire of Brazil",
	CountriesCanForm = {"Brazil"},
	RequiredCountries = {"Brazil", "Uruguay"},
	FormableButton = {
		ButtonName = "Restore our imperial holdings",
		ButtonDescription = "A century of internal strife has led our vast country to grow soft, nations marching on our borders, waiting for our collapse—a collapse that will never come. With the return of the Dom to the throne, and Uruguay to our dominion, the moment is at hand to show these pathetic rulers what power really means.",
	},

	CustomAlert = {
		Title = "The Golden Age of Brazil",
		Desc = "Although the Empire of Brazil would eventually grow to the continent's superpower, a series of revolts and wars nearly laid it low in its infancy. We can only hope that, this time, these natal conflicts will snuff out the light of the restored empire before the true extent of its scourge can return.",
		Button = "Independência ou Morte.",
	},

   AddModifiers = {
		["The Perpetual Defender"] = {
			Length = -1,
		},
	},
	--[[CustomAttributes = { 
		["Stability_Gain"] = 5, 
	},]]
	Demonym = "Brazilian",
},


--[[{
	FormableName = "Empire of Brazil",
	CountriesCanForm = {"Brazil"},
	RequiredCountries = {"Brazil", "Uruguay"},
	FormableButton = {
		ButtonName = "Become the Empire of Brazil",
		ButtonDescription = "We have recovered what was lost to us! As we are on the rise it is time to proclaim an empire once more!",
	},
	AddModifiers = {
		["The Perpetual Defender"] = {
			Length = -1
		},
	},
},
]]
{
	FormableName = "Ottoman Empire",
	CountriesCanForm = {"Turkey"},
	RequiredCountries = {"Turkey", "Abkhazia", "Albania", "Assyria", "Armenia", "Azerbaijan", "Bosnia And Herzegovina", "Bulgaria", "Crimea", "Cyprus", "Djibouti", "Israel", "Kabylia", "Kosovo", "Kurdistan", "Kuwait", "Lebanon", "Lezgistan", "Macedonia", "Montenegro", "Palestine", "Serbia", "South Azerbaijan", "Syria", "Tunisia"},
	RequiredTiles = {"Algeria.012", "Algeria.013", "Algeria.014", "Algeria.018", "Algeria.019", "Algeria.020", "Algeria.021", "Algeria.022", "Algeria.023", "Algeria.024", "Algeria.029", "Algeria.030", "Algeria.031", "Algeria.032", "Algeria.033", "Algeria.034", "Algeria.035", "Algeria.036", "Algeria.037", "Algeria.038", "Croatia.001", "Croatia.002", "Croatia.007", "Egypt.001", "Egypt.002", "Egypt.004", "Egypt.006", "Egypt.007", "Egypt.008", "Egypt.009", "Egypt.010", "Egypt.011", "Egypt.012", "Egypt.013", "Egypt.014", "Egypt.015", "Egypt.016", "Egypt.017", "Egypt.018", "Egypt.019", "Egypt.020", "Egypt.021", "Egypt.022", "Egypt.023", "Egypt.024", "Egypt.025", "Sudan.002", "Eritrea.001", "Eritrea.002", "Georgia.002", "Georgia.003", "Georgia.004", "Greece.001", "Greece.002", "Greece.003", "Greece.004", "Greece.005", "Greece.006", "Greece.007", "Greece.008", "Greece.009", "Greece.010", "Greece.011", "Greece.012", "Greece.013", "Greece.014", "Greece.018", "Greece.020", "Greece.021", "Greece.022", "Hungary.004", "Hungary.005", "Hungary.006", "Hungary.009", "Hungary.010", "Hungary.011", "Iran.011", "Iran.012", "Iran.013", "Iran.014", "Iran.015", "Iran.016", "Iran.017", "Jordan.001", "Jordan.002", "Jordan.003", "Jordan.004", "Jordan.005", "Jordan.006", "Jordan.007", "Jordan.008", "Jordan.010", "Jordan.011", "Libya.001", "Libya.002", "Libya.003", "Libya.004", "Libya.005", "Libya.006", "Libya.007", "Libya.008", "Libya.009", "Libya.010", "Libya.013", "Libya.015", "Libya.016", "Romania.001", "Romania.002", "Romania.018", "Romania.019", "SaudiArabia.004", "SaudiArabia.005", "SaudiArabia.007", "SaudiArabia.008", "SaudiArabia.009", "SaudiArabia.010", "SaudiArabia.011", "SaudiArabia.020", "SaudiArabia.021", "Sudan.002", "Ukraine.016", "Ukraine.018", "Ukraine.019", "Ukraine.021", "Yemen.001", "Yemen.002", "Yemen.003", "Yemen.004", "Yemen.005", "Yemen.006", "Yemen.009", "Yemen.010", "Yemen.011", "Yemen.012", "Yemen.013", "Yemen.014", "Iraq.001", "Iraq.003", "Iraq.004", "Iraq.005", "Iraq.006", "Iraq.007", "Iraq.008", "Iraq.009", "Iraq.010", "Iraq.011", "Iraq.012", "Iraq.013", "Iraq.014", "Iraq.020", "Russia.010"},
	FormableButton = {
		ButtonName = "Reinstate the Caesar of Rome!",
		ButtonDescription = "Although the rippling, crimson banner of Turkish hegemony has waved triumphantly over Anatolia for centuries, the same cannot be said for her old dominions. The vilayets and sanjaks of old cry out for their long-lost prosperity, and it is our duty' nay, our right, to reclaim these lands under the guidance of a new Ottoman Sultan.",
	},

	CustomAlert = {
		Title = "The Supreme Ottoman Sultanate",
		Desc = "The old Ottoman scourge has not seen the light of day since the end of the Great War, ripped out by the roots even by its own people after centuries of oppressive rule. It is this progress which makes it so depressing that the Turks have regressed back to their old roots, claiming Ottoman supremacy over an empire of three continents once again; for it seems the 'Sick Man' of Europe has inoculated himself of the plague…",
		Button = "Well, that's their business.",
	},
	
	AddModifiers = {
		["The Sublime Porte"] = {
			Length = -1,
		},
	},
	CustomAttributes = {
        ["Stability Gain"] = 15,

        ["Rename_Cities"] = [[
            [
            ["Agrinio", "Vrachori"],
            ["Alexandroupoli", "Dedeağaç"],
            ["Ankara", "Angora"],
            ["As Salt", "Salt"],
            ["Athens", "Ātīnā"],
            ["Benghasi", "Marsa ibn Ghazi"],
            ["Bitola", "Manastır"],
            ["Brăila", "Ibrail"],
            ["Budapest", "Buda"],
            ["Constanța", "Köstence"],
            ["Dobrich", "Pazarcik"],
            ["Elbasan", "Il-Basan"],
            ["Gyumri", "Gümrü"],
            ["Haifa", "Haifa al-'Atiqa"],
            ["Heraklion", "Kandiye"],
            ["Istanbul", "Konstantiniyye"],
            ["Khaskovo", "Hasköy"],
            ["Komatini", "Gümülcine"],
            ["Kyustendil", "Kösten"],
            ["Lamia", "Izdin"],
            ["Lemosos", "Leymosun"],
            ["Montana", "Kutlofça"],
            ["Mostar", "Köprühisar"],
            ["Nabatiye et Tahta", "Ṭarābulus"],
            ["Osijek", "Ösek"],
            ["Patras", "Baliabadra"],
            ["Peshkopi", "Debre-i Zir"],
            ["Pogradec", "İstarova"],
            ["Riyadh", "Diriyah"],
            ["Rostov-on-Don", "Fort Azak"],
            ["Ruse", "Rusçuk"],
            ["Sarajevo", "Saraybosna"],
            ["Serres", "Siroz"],
            ["Shkodër", "İşkodra"],
            ["Shumen", "Gazi"],
            ["Skopje", "Üsküb"],
            ["Sliven", "İslimiye"],
            ["Sofia", "Sofya"],
            ["South Nicosia", "Lefkoşa"],
            ["Stara Zagora", "Eski Zagra"],
            ["Surt", "Marsat al Zaafran"],
            ["Tetovo", "Kalkandelen"],
            ["Turnovo", "Tirnova"],
            ["Valletta", "Xebb ir-Ras"],
            ["Vanadzor", "Karakilisa"],
            ["Vlorë", "Avlonya"],
            ["Volos", "Quluz"],
            ["Xanthi", "Eskije"],
            ["Yerevan", "Iravân"],
            ]
        ]],
    },
	Demonym = "Ottoman",
},

--[[ OLD OTTOMAN EMPIRE
{
	FormableName = "Ottoman Empire",
	CountriesCanForm = {"Turkey"},
	RequiredCountries = {"Turkey", "Greece", "Bulgaria", "Macedonia", "Cyprus", "Serbia", "Kosovo", "Albania", "Montenegro", "Bosnia And Herzegovina", "Iraq", "Syria", "Lebanon", "Jordan", "Israel"},
	FormableButton = {
		ButtonName = "Form the Ottoman Empire",
		ButtonDescription = "We have reunited our former great empire! It is time to reforge the Ottoman Emprie!",
	},
	AddModifiers = {
		["The Sublime Porte"] = {
			Length = -1
		},
	},
},
]]
{
	FormableName = "Ethiopian Empire",
	CountriesCanForm = {"Ethiopia"},
	RequiredCountries = {"Ethiopia", "Eritrea", "Somalia", "Djibouti"},
	FormableButton = {
		ButtonName = "Form the Ethiopian Empire",
		ButtonDescription = "It is time to form Greater Ethiopia! Let the new imperial regime begin.",
	},
},

{--V2
	FormableName = "Qing Dynasty",
	CountriesCanForm = {"China", "Manchuria"},
	RequiredCountries = {"China", "Hong Kong", "Tuva", "Taiwan", "Mongolia", "Arunachal Pradesh", "Kachin"},
	RequiredTiles = {"Kazakhstan.033", "Kazakhstan.032", "Kazakhstan.030", "Kazakhstan.029", "Kazakhstan.031", "Kazakhstan.029", "Kazakhstan.026", "Kazakhstan.027", "Kazakhstan.028", "Kyrgyzstan.008", "Kyrgyzstan.009", "Kyrgyzstan.010", "Kyrgyzstan.003", "Russia.219", "Russia.271", "Russia.273", "Russia.274", "Russia.275", "Russia.276", "Russia.277", "Russia.278", "Russia.279", "Russia.280", "Russia.281", "Russia.282", "Russia.283", "Russia.284", "Russia.285", "Russia.286", "Russia.287", "Russia.288", "Russia.289", "Russia.290", "Russia.291", "Russia.292", "Russia.309", "Russia.310", "Russia.311", "Russia.312"},
	FormableButton = {
		ButtonName = "Reclaim the Dragon Throne",
		ButtonDescription = "They claim that we were weak, plunged into a century of humiliation, but all the powers of the West cannot compare to the destruction they have brought upon China. The flames of revolution are extinguished, our ancestors from above call for blood, and the Qing WILL return. Let the world witness the reawakening of the Azure Dragon, and an empire now reunited!",
	},
	CustomAlert = {
		Title = "Return of the Qing",
		Desc = "The demise of the Qing Dynasty had led many to believe that China was freed from the everlasting cycle of dynasties, the years of humiliation seemingly shattering the Qing to the point of no return. But now in turbulent times, change was needed. The Qing once again ascend the Dragon Throne, pledging to uphold the Eternal Mandate, and the Emperor of China reigns once more.",
		Button = "Hail, Lord of Ten Thousand Years...",
	},

	AddModifiers = {
		["Upholding the Mandate of Heaven"] = {
			Length = -1
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
		["Rename_Cities"] = [[
			[
			["Alexandrovsk Sakhalinsky", "Yidui"],
			["Almaty", "Almatau"],
			["Altay", "Chenghuasi"],
			["Amursk", "Fudaili"],
			["Anyang", "Zhangde"],
			["Arsenyev", "Huangtukanzi"],
			["Bikin", "Bixin"],
			["Birobidzhan", "Qimuniwoji"],
			["Blagoveshchensk", "Hailanpao"],
			["Bose", "Baishe"],
			["Chamdo", "Qamdo"],
			["Changchun", "Changchun Ting"],
			["Changting", "Tingzhou"],
			["Chiayi", "Kagee"],
			["Chiayi", "Zhuluoshan"],
			["Choybalsan", "Bayan Tümen"],
			["Dalaihob", "Ejina"],
			["Dalian", "Qingniwaqiao"],
			["Dalnegorsk", "Zhuqihe"],
			["Dalnerechensk", "Yiman"],
			["Dandong", "Andong"],
			["Daqing", "Anda"],
			["Douliu", "Douliumen"],
			["Erenhot", "Erlian"],
			["Fuyang", "Xincheng"],  (Zhejiang)
			["Guangshui", "Yingshan"],
			["Guangzhou", "Canton"],
			["Hami", "Kumul"],
			["Hanzhong", "Nanzheng"],
			["Harbin", "Ha’erbin"],
			["Hefei", "Luchow"],
			["Hegang", "Xingshan"],
			["Heihe", "Aihui"],
			["Helong", "Helongyu"],
			["Hohhot", "Guisui"],
			["Hotan", "Hetian"],
			["Hsinchu", "Xinzhu"],
			["Hualien", "Kilai"],
			["Hulin", "Nima"],
			["Istanbul", "Gongsidangdinebole"],
			["Jiamusi", "Huachuan"],
			["Jiaojing", "Haimen"],
			["Jincheng", "Fengtai"],
			["Jining", "Bingzhou"],
			["Jinzhou", "Jinxian"],
			["Kaohsiung", "Dagou"],
			["Kashgar", "Kashen"],
			["Kavalerovo", "Lujiaofang"],
			["Keelung", "Kilong"],
			["Khabarovsk", "Boli"],
			["Koktokay", "Fuyun"],
			["Komsomolsk na Amure", "Meileiqi"],
			["Kuqa", "Kucha"],
			["Kyzyl", "Kezilei"],
			["Leshan", "Jiading"],
			["Liaoyuan", "Xi’an"],
			["Linxia", "Hezhou"],
			["Luan", "Liu’an"],
			["Luoyang", "Henanfu"],
			["Magong", "Magong'ao"],
			["Meizhou", "Jiaoyang"],
			["Minxian", "Minzhou"],
			["Nanjing", "Jiangning"],
			["Nenjiang", "Mergen"],
			["Nerchinsk", "Nibuchu"],
			["Nikolayevsk na Amure", "Miaojie"],
			["Ningan", "Ningguta"],
			["Obluchye", "Suoluoli"],
			["Partizansk", "Sucheng"],
			["Pingdu", "Jiaoshui"],
			["Pingxiang", "Yuanzhou"],
			["Putian", "Xinghua"],
			["Puyang", "Kaizhou"],
			["Pyongyang", "Joseon"],
			["Qingdao", "Jiao'ao"],
			["Shache", "Ya’er"],
			["Shaoyang", "Baoqing"],
			["Shenyeng", "Fengtian"],
			["Shenzhen", "Xin’an"],
			["Shijiazhuang", "Shimen"],
			["Shizuishan", "Pingluo"],
			["Taichung", "Dàdūn"],
			["Tainan", "Taiwanfu"],
			["Taipei", "Taibei"],
			["Taitung", "Pi-Lam"],
			["Taoyuan", "Táozǐyuán"],
			["Taraz", "Talas"],
			["Tieli", "Tishanbao"],
			["Tongling", "Tongguan"],
			["Turpan", "Turfan"],
			["Ulaanbaatar", "Da Kulun"],
			["Uliastay", "Wuliyasutai"],
			["Urumqi", "Dihua"],
			["Ussuriysk", "Shuangchengzi"],
			["Vladivostok", "Haishenwai"],
			["Wafangdian", "Fuxian"],
			["Wanzhou", "Wanxian"],
			["Weifang", "Weixian"],
			["Weihai", "Weihaiwei"],
			["Wuhan", "Wuchang"],
			["Xilinhot", "Beizi Miao"],
			["Xinqing", "Wuying"],
			["Yakeshi", "Xiguitu"],
			["Yangmei", "Yangmeili"],
			["Yantai", "Dengzhou"],
			["Yibin", "Xuzhou"],
			["Yinchuan", "Ningxia"],
			["Yingkow", "Yingkou"],
			["Yueyang", "Yuezhou"],
			["Yunxian", "Yun"],
			["Yuxi", "Xinping"],
			["Zalantun", "Butha"],
			["Zhoukou", "Zhoujiakou"],
			["Zhuanghe", "Gaiping"],
			["Zhuhai", "Xiangzhou"],
			["Zhuozhou", "Fangshan"],
			["Ürümqi", "Dihua"],
			]
		]],
	},
	Demonym = "Qing",
},

{
	FormableName = "Korea",
	CountriesCanForm = {"North Korea", "South Korea"},
	RequiredCountries = {"North Korea", "South Korea"},
	FormableButton = {
		ButtonName = "Unite Korea",
		ButtonDescription = "Though kept apart by a mountain, our wish to reunify has never faded. Like the pine unchanged through wind and frost, even when snow buried the road ahead, we have always carried on marching towards the summit. And at the top, when we reunite, a new paradise will unfold; for until Mount Paektu wears away, Korea shall be whole.",
	},
	CustomAlert = {
		Title = "The Morning Calm",
		Desc = "During the Japanese collapse, instead of asserting its independence, Korea was split between North and South, becoming merely a battleground for a greater conflict. However, with the sudden reunification of the peninsula, it appears that for the first time in centuries, Korea is free.",
		Button = "Until the East Sea runs dry.",
	},
	AddModifiers = {
		["For National Reunification"] = {
			Length = -1
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 5, 
	},
	Demonym = "Korean",
},
--[[ OLD KOREA FORMABLE
{
	FormableName = "Korea",
	CountriesCanForm = {"North Korea", "South Korea"},
	RequiredCountries = {"North Korea", "South Korea"},
	FormableButton = {
		ButtonName = "Unite Korea",
		ButtonDescription = "We have finally reunited Korea under one banner! Long live Korea!",
	},
	AddModifiers = {
		["For National Reunification"] = {
			Length = -1
		},
	},
},
]]

{
	FormableName = "East African Federation",
	CountriesCanForm = {"Tanzania", "South Sudan", "Uganda", "Rwanda", "Burundi", "Kenya"},
	RequiredCountries = {"Tanzania", "South Sudan", "Uganda", "Rwanda", "Burundi", "Kenya"},
	FormableButton = {
		ButtonName = "Form the East African Federation",
		ButtonDescription = "It is time to form a greater federation!",
	},
	AddModifiers = {
		["Integration of East Africa"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Maurya Empire",
	CountriesCanForm = {"India"},
	RequiredCountries = {"India", "Harijanistan", "Kashmir", "Khalistan", "Khyber Pakhtunkhwa", "Madhesh", "Sindhudesh"},
	RequiredTiles = {"Bangladesh.002", "Bangladesh.003", "Bangladesh.004", "Bangladesh.005", "Bangladesh.006", "Bangladesh.007", "Bangladesh.008", "Bangladesh.009", "Bangladesh.010", "Bangladesh.011", "Bangladesh.012", "Bangladesh.013", "Nepal.005", "Nepal.004", "Nepal.001", "Afghanistan.002", "Afghanistan.007", "Afghanistan.008", "Afghanistan.009", "Afghanistan.025", "Afghanistan.026", "Afghanistan.017", "Afghanistan.021", "Afghanistan.022", "Afghanistan.027", "Pakistan.029"},
	FormableButton = {
		ButtonName = "Reinstate the Rajamandala",
		ButtonDescription = "As the cycle of life and death spurs towards an eternal, malicious sunrise, so do the rise and fall of empires spur civilization towards an eternal, everlasting glory. Ashoka has brought us to the precipice of this glory once before: and now, under his banner, we must turn the wheel of the righteous anew to liberate Bharat from suffering.",
	},
	CustomAlert = {
		Title = "The Urban Iron Age",
		Desc = "As the Roman Empire remains an icon of civilization in the West, so does the Maurya Empire hold such prestige in the Southeast, creating staggering innovations in travel, agriculture, and architecture. As Ashoka's will once more shines over the subcontinent, it is only predictable that a similar golden age of innovation will follow.",
		Button = "The Wheel turns anew.",
	},
	AddModifiers = {
		["The Wheel of Righteousness"] = {
			Length = -1
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 10, 
		["Rename_Cities"] = [[
			[
			["Ahmedabad", "Karnavati"],
			["Hyderabad", "Baghnagar"],
			["Jhang", "Jāṅgala"],
			["Kabul", "Kubha"],
			["Lahore", "Lavapuri"],
			["Mumbai", "Heptanesia"],
			["Patna", "Pataliputra"],
			["Peshawar", "Puruṣapura"],
			["Rajshahi", "Rampur Boalia"],
			]
		]],
	},
	Demonym = "Mauryan",
},
--[[ OLD MAURYA EMPIRE
{
	FormableName = "Maurya Empire",
	CountriesCanForm = {"India"},
	RequiredCountries = {"India", "Pakistan", "Bangladesh", "Afghanistan", "Bhutan", "Nepal"},
	FormableButton = {
		ButtonName = "Form the Maurya Empire",
		ButtonDescription = "We have brought back the Mauyra Empire! May India's future shine bright!",
	},
	AddModifiers = {
		["The Wheel of Righteousness"] = {
			Length = -1
		},
	},
},
]]
{
	FormableName = "Khmer Empire",
	CountriesCanForm = {"Cambodia"},
	RequiredCountries = {"Cambodia", "Thailand", "Laos"},
	FormableButton = {
		ButtonName = "Form the Khmer Empire",
		ButtonDescription = "We have finally reunited our lands that were taken many centuries ago. Long live the Khmer Empire!",
	},
},

{
	FormableName = "Songhai Empire",
	CountriesCanForm = {"Mali"},
	RequiredCountries = {"Niger", "Burkina Faso", "Mali"},
	ExclusiveFormables = {"Mali Empire"},
	FormableButton = {
		ButtonName = "Form the Songhai Empire",
		ButtonDescription = "We have finally taken our lands in the Sahel back! Glory to the Sonni!",
	},
	AddModifiers = {
		["The Trans-Saharan Routes"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Benelux",
	CountriesCanForm = {"Belgium", "Flanders", "Luxembourg", "Netherlands", "Wallonia", "Frisia"},
	RequiredCountries = {"Belgium", "Luxembourg", "Netherlands"},
	FormableButton = {
		ButtonName = "Unite the Lowland nations",
		ButtonDescription = "The Lowlands have been a hotbed of innovation and cultural cooperation for centuries, laying the foundations for the creation of the European Union. There would be no greater way to solidify this unity between our peoples than by finally raising the banner of a unified, long-overdue Benelux over the Lowlands.",
	},

	CustomAlert = {
		Title = "The Rise of the Low Countries",
		Desc = "First established by the exiled representatives of the Low Countries, the Benelux served as an economic and political union, similar to that of the European Union. It would appear that it has become something much more, though, as the flag of the old committee, stagnant for decades, now waves triumphantly over the Lowlands.",
		Button = "Their unity will maintain their strength.",
	},

	CustomAttributes = { 
		["Stability_Gain"] = 5, 
	},
	Demonym = "Beneluxian",
},

--[[ OLD BENELUX
{
	FormableName = "Benelux",
	CountriesCanForm = {"Belgium", "Luxembourg", "Netherlands"},
	RequiredCountries = {"Belgium", "Luxembourg", "Netherlands"},
	FormableButton = {
		ButtonName = "Form Benelux",
		ButtonDescription = "United together, we will be stand strong! Glory to unity!",
	},
},
]]

{
	FormableName = "United Baltic Federation",
	CountriesCanForm = {"Estonia", "Latvia", "Lithuania"},
	RequiredCountries = {"Estonia", "Latvia", "Lithuania"},
	FormableButton = {
		ButtonName = "Unite the Baltic",
		ButtonDescription = "Too long has the Baltic people suffered under occupation. It is time for unification!",
	},
},

{
	FormableName = "Balkan Federation",
	CountriesCanForm = {"Slovenia", "Croatia", "Bosnia And Herzegovina", "Serbia", "Kosovo", "Montenegro", "Albania", "Macedonia", "Greece", "Bulgaria"},
	RequiredCountries = {"Slovenia", "Croatia", "Bosnia And Herzegovina", "Serbia", "Kosovo", "Montenegro", "Albania", "Macedonia", "Greece", "Bulgaria"},
	FormableButton = {
		ButtonName = "Unite the Balkans",
		ButtonDescription = "The Balkan Peninsula has been at war for too long. It is time to unite, and stop the bloodshed!",
	},
},

{
	FormableName = "Roman Empire",
	CountriesCanForm = {"Italy"},
	RequiredCountries = {"Italy", "San Marino", "Monaco", "Switzerland", "Austria", "Liechtenstein", "Slovenia", "Croatia", "Bosnia And Herzegovina", "Serbia", "Kosovo", "Montenegro", "Albania", "Macedonia", "Greece", "Bulgaria", "Romania", "Turkey", "Cyprus", "Syria", "Lebanon", "Israel", "Jordan", "Egypt", "Libya", "Tunisia", "Algeria", "Morocco", "Gibraltar", "Malta", "Spain", "Portugal", "Andorra", "France", "Belgium", "Luxembourg", "United Kingdom", "Armenia", "Georgia", "Azerbaijan", "Iraq", "Kuwait"},
	FormableButton = {
		ButtonName = "Become Rome",
		ButtonDescription = "Not since the Romans in the second century had one empire commanded the entirety of the Mediterranean and beyond. Let us proclaim ourselves the true successors of Rome!",
	},
	AddModifiers = {
		["The Heritage of the Romans"] = {
			Length = -1
		},
	},

},

{
	Removed = true,
	FormableName = "Assyria",
	CountriesCanForm = {"Iraq"},
	RequiredCountries = {"Iraq", "Syria", "Jordan", "Israel", "Lebanon", "Egypt"},
	FormableButton = {
		ButtonName = "Form Assyria",
		ButtonDescription = "It is time for change! Time to bring back the glory of the once grand Assyrian Empire!",
	},
},

{
	FormableName = "Mughal Empire",
	CountriesCanForm = {"Afghanistan", "Pakistan"},
	RequiredCountries = {"Afghanistan", "Bangladesh", "India", "Pakistan"},
	FormableButton = {
		ButtonName = "Form the Mughal Empire",
		ButtonDescription = "We've brought the mighty Muslim rule in India again, and this time we shall not be conquered by the dirty Europeans!",
	},

	AddModifiers = {
		["The True Heirs to Timur"] = {
			Length = -1
		},
	},
},

{
	FormableName = "North American Union",
	CountriesCanForm = {"Alaska", "Alberta", "Aztlan", "Baja California", "Canada", "California", "Cascadia", "Confederate States of America", "Deseret", "Mexico", "New England", "Nuevo Leon", "Quebec", "Saskatchewan", "Texas", "United States", "Yucatan", "Acadia", "Newfoundland and Labrador", "Nova Scotia", "Chiapas", "Chihuahua", "Coahuila", "Jalisco", "Oaxaca", "Sonora", "Sinaloa", "Tamaulipas", "Veracruz", "Tabasco"},
	RequiredCountries = {"Canada", "Mexico", "United States"},  
	ExclusiveFormables = {"Zion of America", "Cemanahuac"},
	FormableButton = {
		ButtonName = "Unite North America",
		ButtonDescription = "The countries of this lush continent were founded on the principle of salvation; a bastion of freedom for all from the imperialism of Europe. Yet, as we have come to understand, 'salvation' means something very different to our treacherous neighbors. The only way to preserve the rights of these diverse peoples is to liberate them under one, incorruptible banner: our own.",
	},
	CustomAlert = {
		Title = "The New American Era",
		Desc = "With growing political strife and economic stagnation tearing its titans apart, it had long been theorized that we would bear witness to the fall of the North American superpowers. However, while we had anticipated their fall—we did not anticipate that they would then fall under a single, shared state, proclaiming a rather unfortunate hegemony over the riches of an untapped continent.",
		Button = "The new order of the ages.",
	},

	AddModifiers = {
		["Unity of North America"] = {
			Length = -1,
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 10, 
	},
	Demonym = "North American",
},

--[[{
		FormableName = "North American Union",
		CountriesCanForm = {"Canada", "Mexico", "United States"},
		RequiredCountries = {"Canada", "Mexico", "United States"},  
		--ExclusiveFormables = {"Zion of America", "Cemanahuac"},
		FormableButton = {
			--ButtonName = "Unite North America",
			ButtonName = "Unify North America",
			ButtonDescription = "The countries of this lush continent were founded on the principle of salvation; a bastion of freedom for all from the imperialism of Europe. Yet, as we have come to understand, 'salvation' means something very different to our treacherous neighbors. The only way to preserve the rights of these diverse peoples is to liberate them under one, incorruptible banner: our own.",
		},

		CustomAlert = {
			Title = "The New American Era",
			Desc = "With growing political strife and economic stagnation tearing its titans apart, it had long been theorized that we would bear witness to the fall of the North American superpowers. However, while we had anticipated their fall—we did not anticipate that they would then fall under a single, shared state, proclaiming a rather unfortunate hegemony over the riches of an untapped continent.",
			Button = "The new order of the ages.",
		},

	   AddModifiers = {
		["Unity of North America"] = {
			Length = -1,
		},
		CustomAttributes = { 
			["Stability_Gain"] = 10, 
		},
	},
},

{
	FormableName = "North American Union",
	CountriesCanForm = {"United States", "Mexico", "Canada"},
	RequiredCountries = {"United States", "Mexico", "Canada"},
	FormableButton = {
		ButtonName = "Unify North America",
		ButtonDescription = "United together, we stand strong against anyone. Long live the Union!",
	},
	AddModifiers = {
		["Unity of North America"] = {
			Length = -1
		},
	},
},]]
{
	FormableName = "Federation of Southeast Asian States",
	CountriesCanForm = {"Aceh", "Arakan", "Bali", "Bangsamoro", "Brunei", "Burma", "Cambodia", "Indonesia", "Johor", "Kachin", "Kayah", "Laos", "Malaysia", "Minahasa", "Pattani", "Philippines", "Riau", "Sabah", "Sarawak", "Shan", "Singapore", "South Maluku", "Thailand", "Timor-Leste", "Vietnam", "Yogyakarta", "Minangkabau", "Mindanao", "Batakland", "Nias", "Jambi", "East Sumatra", "Palembang", "Lampung", "Banten", "Sumba", "Sulawesi", "Kalimantan", "Central Java", "East Java", "Lombok", "Sumbawa", "Flores", "Timor-Barat", "Bangka Belitung", "North Maluku"},
	RequiredCountries = {"Brunei", "Burma", "Cambodia", "Indonesia", "Laos", "Malaysia", "Philippines", "Singapore", "Thailand", "Timor-Leste", "Vietnam"},
	
	FormableButton = {
		  ButtonName = "Pursue the Unification of ASEAN",
		  ButtonDescription = "The colonial chains that have once bound us have long been broken, yet despite this we still play second fiddle to the Pacific and Asian powers that surround us. The Association in its current form cannot resist the foreign meddling that still plagues our region. No longer can this continue. Through force of arms and by the sword, Southeast Asia shall turn a new chapter; with one vision, one identity, and one federation",
	},
	
	CustomAlert = {
		  Title = "The Federation of ASEAN",
		  Desc = "Few expected for the Association of Southeast Asian Nations to go beyond economic and diplomatic cooperation between the states of Southeast Asia. Yet as the uncertainty and instability of global affairs becomes more apparent, newfound unity has risen throughout the region. With the supranational union under a single federation, a new power within Asia rises.",
		  Button = "But I thought regional unions were shunned?",
	},
	
	CustomAttributes = { 
		  ["Stability_Gain"] = 10, 
	}, 
	Demonym = "Southeast Asian",
},

--[[ OLD FEDERATION OF SOUTHEAST ASIAN STATES
{
	FormableName = "Federation of Southeast Asian States",
	CountriesCanForm = {"Vietnam", "Laos", "Cambodia", "Thailand", "Burma", "Malaysia", "Indonesia", "Brunei", "Singapore", "Philippines"},
	RequiredCountries = {"Vietnam", "Laos", "Cambodia", "Thailand", "Burma", "Malaysia", "Indonesia", "Brunei", "Singapore", "Philippines"},
	FormableButton = {
		ButtonName = "Form the South-Eastern Asia Federation",
		ButtonDescription = "Our people, have suffered through colonialism and imperialism. It is time to strike up the common people, to unite together!",
	},
},
]]

{
	FormableName = "Swedish Empire",
	CountriesCanForm = {"Sweden"},
	RequiredCountries = {"Sweden", "Finland", "Estonia", "Saint Petersburg"},
	RequiredTiles = {"Russia.103", "Russia.101", "Russia.091", "Russia.092", "Latvia.001", "Latvia.002", "Latvia.003", "Denmark.007", "Germany.038", "Germany.023", "Norway.010", "Norway.009"},
	FormableButton = {
		ButtonName = "Restore Sweden's Age of Greatness",
		ButtonDescription = "The Great Northern War temporarily tempered our roar, forcing us to recuperate once more on the shores of Stockholm yet, it did not break our victorious spirit. From Mulda to the Baltic, let us rip our trophies once more from the Danes, Poles, and Muscovites and with steel subdue the German eagle. For the Lion of the North flees before nothing!",
	},
CustomAlert = {
			Title = "The Lion of the North",
			Desc = "Sweden—a marginalized nation, asserted itself as a mighty European empire, defeating the great powers time and time again until a single catastrophic war crushed Sweden's age of greatness. No matter how old and peaceful it appears to be, it seems that the Lion of the North can still bite, restoring its mighty empire once more on the European stage.",
			Button = "With God and victorious arms.",
		},

	AddModifiers = {
		["The Lion of the North"] = {
			Length = -1
		},
	},
	CustomAttributes = { 
        ["Stability_Gain"] = 10, 
        ["Rename_Cities"] = [[
            [
            ["Espoo", "Esbo"],
            ["Gävle", "Gävle-ägarna"],
            ["Helsinki", "Helsingfors"],
            ["Hämeenlinna", "Tavastehus"],
            ["Kokkola", "Karleby"],
            ["Lahti", "Lahtis"],
            ["Lappeenranta", "Villmanstrand"],
            ["Malmö", "Malmhaug"],
            ["Mikkeli", "S:t Michel"],
            ["Mikkeli", "St. Michell"],
            ["Oulu", "Uleåborg"],
            ["Poorvo", "Borgå"],
            ["Pori", "Björneborg"],
            ["Pärnu", "Pernau"],
            ["Saint Petersburg", "Nyenskans"],
            ["Savonlinna", "Nyslott"],
            ["Seinäjoki", "Östermyra"],
            ["Tallinn", "Reval"],
            ["Tampere", "Tammerfors"],
            ["Tampere", "Tammerfors"],
            ["Tartu", "Dorpat"],
            ["Turku", "Åbo"],
            ["Uppsala", "Östra Aros"],
            ["Vaasa", "Vasa"],
            ["Vantaa", "Vanda"],
            ["Vyborg", "Viborg"],
            ["Västerås", "Västra Aros"],
            ]
        ]],
    },
	Demonym = "Swedish",
},
--[[ OLD SWEDISH EMPIRE
{
	FormableName = "Swedish Empire",
	CountriesCanForm = {"Sweden"},
	RequiredCountries = {"Sweden", "Finland", "Estonia", "Latvia"},
	FormableButton = {
		ButtonName = "Reunite the Swedish Empire!",
		ButtonDescription = "We must reunite our great empire, may the Swedish Empire rise!",
	},
	AddModifiers = {
		["The Lion of the North"] = {
			Length = -1
		},
	},
},
]]

{
	FormableName = "Peru-Bolivian Confederation",
	CountriesCanForm = {"Peru", "Bolivia"},
	RequiredCountries = {"Peru", "Bolivia"},
	FormableButton = {
		ButtonName = "Create The Peru-Bolivian Confederation",
		ButtonDescription = "We have set aside our differences and united for the better cause of our people. With our combined strength, The Peru-Bolivian Federation shall Thrive!",
	},
},

{
	FormableName = "Frankish Empire",
	CountriesCanForm = { "Andorra", "Belgium", "Flanders", "France", "Germany", "Luxembourg", "Netherlands", "Wallonia"},
	RequiredCountries = {"Andorra", "Belgium", "Austria", "Bavaria", "Corsica", "Emilia", "Frisia", "Friuli", "Guernsey", "Jersey", "Monaco", "Liechtenstein", "Liguria", "Lombardy", "Luxembourg", "Netherlands", "Occitania", "Piedmont", "Provence", "Romagna", "Savoy", "Slovenia", "Switzerland", "Trieste", "Tuscany", "Valdosta"},
	RequiredTiles = {"Spain.008", "Spain.010", "Spain.011", "Italy.013", "Italy.015", "Italy.016", "Italy.017", "Italy.014", "Croatia.003", "Italy.029", "Italy.031", "Italy.014", "Croatia.003", "Germany.001", "Germany.009", "Germany.010", "Germany.011", "Germany.012", "Germany.013", "Germany.014", "Germany.015", "Germany.016", "Germany.017", "Germany.018", "Germany.019", "Germany.020", "Germany.021", "Germany.023", "Germany.024", "Germany.025", "Germany.026", "Germany.027", "Germany.028", "Germany.034", "Germany.035", "Germany.040", "France.007", "France.009", "France.010", "France.011", "France.012", "France.013", "France.017", "France.018", "France.019", "France.020", "France.021", "France.022", "France.023", "France.024", "France.025", "France.026", "France.027", "France.028", "France.036", "France.037", "France.038", "France.039", "France.040"},
	ExclusiveFormables = {"Napoleonic Empire"},
	FormableButton = {
		ButtonName = "Light up the Dark Ages",
		ButtonDescription = "When darkness engulfed the dying light of God's fire, humanity sent its greatest heroes: the Franks. Yet the sin of greed tore them in twain, leaving the flame unguarded and weak. While the world abandons God's gift, let us reunite as one and bring light to these Dark Ages—for when our Lord cries, Francia will answer!",
	},

	CustomAlert = {
		Title = "Magnus Rex",
		Desc = "Though widely lauded as a cornerstone of Western civilization, the Frankish myth, brought about by the tact and military genius of Charlemagne, is built on a lie. A lie that, in the modern era, has come to see a resurgence, as the Donation of Constantine once more enables Frankish 'authority' to dominate the continent.",
		Button = "An emperor in name only...",
	},

   AddModifiers = {
		["The Crown of Charlemagne"] = {
			Length = -1,
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 10, 
		["Rename_Cities"] = [[
            [
            ["Angers", "Andecava"],
            ["Arnhem", "Arneym"],
            ["Bellinzona", "Berinzona"],
            ["Biel", "Apud Belnam"],
            ["Bonn", "Bonnburg"],
            ["Chur", "Theodoricopolis"],
            ["Diekirch", "Diet-Kirch"],
            ["Dortmund", "Throtmanni"],
            ["Düsseldorf", "Dusseldorp"],
            ["Enschede", "Anescede"],
            ["Essen", "Astnide"],
            ["Frankfurt", "Frankenfort"],
            ["Hamburg", "Hammaburg"],
            ["Hanover", "Honovere"],
            ["Lamia", "Girton"],
            ["Leipzig", "Libzi"],
            ["Lisbon", "Ulishbona"],
            ["Munich", "Munichen"],
            ["Nantes", "Namnetis"],
            ["Paris", "Parision"],
            ["Reims", "Rēmos"],
            ["Saint-Étienne", "Saint-Étienne de Furan"],
            ["Schaffhausen", "Villa Scafhusun"],
            ["Strasbourg", "Strateburgus"],
            ["Stuttgart", "Cannstatt"],
            ["Zürich", "Ziurichi"],
            ]
        ]],
	},
	Demonym = "Frankish",
},

--[[ OLD FRANKISH EMPIRE
{
	FormableName = "Frankish Empire",
	CountriesCanForm = {"France", "Germany"},
	RequiredCountries = {"Austria", "Belgium", "France", "Germany", "Italy", "Liechtenstein", "Luxembourg", "Netherlands", "Slovenia", "Switzerland"},
	FormableButton = {
		ButtonName = "Reunite Charles the Great's Empire",
		ButtonDescription = "Upon the death of Louis the Pious, our ancestors were split between his 3 sons. Today we reunite these lands and aspire to the glory of Charlemagne!",
	},
	AddModifiers = {
		["The Crown of Charlemagne"] = {
			Length = -1
		},
	},
},


{
	Removed = true,
	FormableName = "United States of South America",
	CountriesCanForm = {"Brazil", "Uruguay", "Argentina", "Chile", "Paraguay", "Peru", "Ecuador", "French Guiana", "Suriname", "Guyana", "Venezuela", "Colombia", "Bolivia"},
	RequiredCountries = {"Uruguay", "Argentina", "Chile", "Paraguay", "Peru", "Ecuador", "French Guiana", "Suriname", "Guyana", "Venezuela", "Colombia", "Brazil", "Bolivia"},
	FormableButton = {
		ButtonName = "Unite the south americans together, under one goverment!",
		ButtonDescription = "We must not fall under the powerful north, we must unite, and overcome them!",
	},
},]]

{
	FormableName = "Spanish Empire",
	CountriesCanForm = {"Spain"},
	RequiredCountries = {"Spain", "Mexico", "Guatemala", "El Salvador", "Honduras", "Nicaragua", "Costa Rica", "Panama", "Colombia", "Venezuela", "Ecuador", "Peru", "Bolivia", "Chile", "Argentina", "Paraguay", "Uruguay", "Cuba", "Philippines", "Guam", "Morocco", "Equatorial Guinea"},
	FormableButton = {
		ButtonName = "Reform the Spanish Empire",
		ButtonDescription = "Time for the Great Spanish Empire to rise once more!",
	},
	AddModifiers = {
		["Glory, God, and Gold"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Transcaucasia",
	CountriesCanForm = {"Georgia", "Armenia", "Azerbaijan"},
	RequiredCountries = {"Georgia", "Armenia", "Azerbaijan"},
	ExclusiveFormables = {"Kingdom of Georgia"},

	FormableButton = {
		ButtonName = "Form Transcaucasia",
		ButtonDescription = "Caucasians Unite!",
	},
},

{
	FormableName = "Srivijaya Empire",
	CountriesCanForm = {"Indonesia", "Palembang"},
	RequiredCountries = {"Indonesia", "Aceh", "Pattani", "Singapore", "Riau", "Yogyakarta"},
	RequiredTiles = {"Thailand.004", "Thailand.005", "Thailand.006", "Thailand.007", "Thailand.008", "Thailand.009", "Thailand.010", "Thailand.011", "Thailand.012", "Malaysia.001", "Malaysia.002", "Malaysia.003", "Malaysia.004", "Malaysia.005", "Malaysia.006", "Malaysia.007", "Malaysia.008", "Malaysia.009", "Malaysia.010", "Malaysia.011", "Malaysia.012", "Malaysia.013", "Malaysia.014", "Malaysia.015"},
	FormableButton = {
		ButtonName = "Embrace the old ways",
		ButtonDescription = "One cannot simply be granted their country and claim to be honorable; no, one must shed blood, sweat, and tears upon a vast, open ocean, survival as uncertain as the tide to live with honor. To rein in the heretics of Malaysia was the first step—but to fully forsake the land, devote our very soul to the spirit of the sea; that is what will is made out of.",
	},

	CustomAlert = {
		Title = "The Lotus of Malacca",
		Desc = "For the entirety of the Indonesian archipelago to remain intact after decolonization was one thing; but for the very same people to then begin building an empire of their own, drawing back to the ways of the old Srivijaya, using untold maritime advancements to rule the waves of Southeast Asia; that is the true miracle.",
		Button = "Nothing more than a band of pirates.",
	},
	CustomAttributes = { 
        ["Stability_Gain"] = 10, 
        ["Rename_Cities"] = [[
            [
            ["Palembang", "Matajap"],
            ["Semarang", "Bergota"],
            ["Surabaya", "Kota Pahlawan"],
            ]
        ]],
    },
    Demonym = "Srivijayan",
},
--[[ OLD SRIVIJAYA EMPIRE
{
	FormableName = "Srivijaya Empire",
	CountriesCanForm = {"Indonesia"},
	RequiredCountries = {"Indonesia", "Singapore", "Brunei", "Malaysia"},
	FormableButton = {
		ButtonName = "Reform the Srivijaya Empire",
		ButtonDescription = "Thalassocracy has been reestablished in the Malayan Peninsula, let us unite!",
	},
},
]]
{
	FormableName = "Empire of Haiti",
	CountriesCanForm = {"Haiti"},
	RequiredCountries = {"Haiti", "Dominican Republic"},
	FormableButton = {
		ButtonName = "Restore the Haitian Empire",
		ButtonDescription = "We have united hispanola under one imperial banner!",
	},
},

{
	Removed = true,
	FormableName = "Caribbean Federation",
	CountriesCanForm = {"Trinidad And Tobago", "Saint Lucia", "Grenada", "Barbados", "Saint Vincent And The Grenadines", "Martinique", "Dominica", "Guadeloupe", "Antigua And Barbuda", "Saint Kitts And Nevis", "Aruba", "Curacao", "Turks And Caicos Islands", "Dominican Republic", "Haiti", "Cuba", "Jamaica", "Bahamas"},
	RequiredCountries = {"Trinidad And Tobago", "Saint Lucia", "Grenada", "Barbados", "Saint Vincent And The Grenadines", "Martinique", "Dominica", "Guadeloupe", "Antigua And Barbuda", "Saint Kitts And Nevis", "Aruba", "Curacao", "Turks And Caicos Islands", "Dominican Republic", "Haiti", "Cuba", "Jamaica", "Bahamas"},
	FormableButton = {
		ButtonName = "Unite the Caribbean",
		ButtonDescription = "United under one people, we shall refuse colonialism and imperialism!",
	},
},

{
	Removed = true,
	FormableName = "Gaza Empire",
	CountriesCanForm = {"Mozambique"},
	RequiredCountries = {"Mozambique", "Zimbabwe"},
	FormableButton = {
		ButtonName = "Reinstate the Gaza Empire",
		ButtonDescription = "Through our union with Zimbabwe, our new Empire will reign across Africa!",
	},
},

{
	FormableName = "Ga'na Empire",
	CountriesCanForm = {"Mauritania"},
	RequiredCountries = {"Mauritania", "Mali", "Senegal", "Gambia"},
	FormableButton = {
		ButtonName = "Reestablish the Ga'na Empire",
		ButtonDescription = "We have reclaimed our lost territory in the Sahara, now let us establish an empire!",
	},
	AddModifiers = {
		["The Trans-Saharan Routes"] = {
			Length = -1
		},
	},
},

{
	Removed = true,
	FormableName = "Ashanti Empire",
	CountriesCanForm = {"Ghana"},
	RequiredCountries = {"Ghana", "Cote d'Ivoire", "Togo"},
	FormableButton = {
		ButtonName = "Form the Ashanti Empire",
		ButtonDescription = "The people of Akan have finally risen! Let us proclaim our empire once more!",
	},
},

{
	Removed = true,
	FormableName = "Gold Coast",
	CountriesCanForm = {"Nigeria", "Ghana", "Benin", "Cote d'Ivoire", "Togo", "Sierra Leone", "Liberia", "Senegal", "Gambia", "Guinea-Bissau", "Guinea"},
	RequiredCountries = {"Nigeria", "Ghana", "Benin", "Cote d'Ivoire", "Togo", "Sierra Leone", "Liberia", "Senegal", "Gambia", "Guinea-Bissau", "Guinea"},
	FormableButton = {
		ButtonName = "Unite the Gold Coast",
		ButtonDescription = "The pillaged Golden Coast of ours shall once again be united under the African people!",
	},
},

{
	FormableName = "Tongan Empire",
	CountriesCanForm = {"Tonga"},
	RequiredCountries = {"Tonga", "Kiribati", "Solomon Islands", "Fiji", "Cook Islands", "New Caledonia", "Vanuatu", "American Samoa", "Marshall Islands"},
	FormableButton = {
		ButtonName = "Reunite the great Pacific empire!",
		ButtonDescription = "Our once powerful empire shall return once more! Tu'i Tonga!",
	},
	AddModifiers = {
		["It's Tonga Time"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Austro-Hungarian Empire",
	CountriesCanForm = {"Austria", "Hungary"},
	RequiredCountries = {"Austria", "Bosnia And Herzegovina", "Carpathian Rus", "Croatia", "Czech Republic", "Hungary", "Slovakia", "Slovenia", "Transylvania", "Trieste", "Vojvodina"},
	RequiredTiles = {"Poland.012", "Poland.011", "Ukraine.033", "Ukraine.035", "Ukraine.037", "Ukraine.038", "Ukraine.034"},
	ExclusiveFormables = {"Kingdom of Hungary", "Austrian Empire"},
	FormableButton = {
		ButtonName = "Unite the Dual Monarchy",
		ButtonDescription = "In an era of uncertainty, the Austro-Hungarian Empire championed the strength of a centralized government, reigning in the ungrateful Balkans and preserving the peace in Europe. With that same uncertainty on the rise, the unified banner of the Dual Monarchy must rise again to bring the splitting Europe into one, inseparable whole.",
	},

	CustomAlert = {
		Title = "Indivisible and Inseparable",
		Desc = "To combat the ambitions of the East and West, Central Europe was, futilely, organized under the control of the Austro-Hungarians; a nation as stable as the foundations of Pisa. In some miraculous feat, however, the Dual Monarchy has returned, its accursed flag stretching over the Balkans once again.",
		Button = "God Preserve, God Protect...",
	},

   AddModifiers = {
		["Indivisibly and Inseparably"] = {
			Length = -1,
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 10, 
		["Rename_Cities"] = [[
            [
            ["Baia Mare", "Rivulus Dominarum"],
            ["Bolzano", "Bolzen"],
            ["Bratislava", "Pozsony"],
            ["Brașov", "Brassó"],
            ["Brno", "Brünn"],
            ["Cluj-Napoca", "Kolozsvár"],
            ["Eisenstadt", "Kismarton"],
            ["Košice", "Kassa"],
            ["Kraków", "Krakau"],
            ["Liberec", "Reichenberg"],
            ["Ljubljana", "Laibach"],
            ["Lvov", "Lemberg"],
            ["Maribor", "Marburg"],
            ["Novi Sad", "Újvidék"],
            ["Oradea", "Nagyvárad"],
            ["Prešov", "Eperjes"],
            ["Pula", "Pola"],
            ["Subotica", "Szabadka"],
            ["Timișoara", "Temesvár"],
            ["Trento", "Trient"],
            ["Trieste", "Triest"],
            ["Trnava", "Nagyszombat"],
            ["Zrenjanin", "Nagybecskerek"],
            ["Zvolen", "Zólyom"],
            ["Ústí nad Labem", "Aussig"],
            ["České Budějovice", "Budweis"],
            ["Žilina", "Zsolna"],
            ["Bahir Dar", "Bahir Giyorgis"],
            ["Bandar e-Abbas", "Bamdel Gombruc"],
            ["Poti", "Fasso"],
            ["Quanzhou", "Zaiton"],
            ["Taraz", "Talas"],
            ["Tianjin", "Tientsin"],
            ["Tokyo", "Tokio"],
            ["Wuhan", "Hankow"],
            ["Yokohama", "Kannai"],
            ]
        ]],

	},
	Demonym = "Austro-Hungarian",
},

--[[ OLD AUSTRO-HUNGARIAN EMPIRE/AUSTRIA-HUNGARY
{
	FormableName = "Austro-Hungarian Empire",
	CountriesCanForm = {"Austria", "Hungary"},
	RequiredCountries = {"Austria", "Hungary", "Czech Republic", "Slovakia", "Romania", "Slovenia", "Croatia", "Bosnia And Herzegovina"},
	ExclusiveFormables = {"Austrian Empire", "Kingdom of Hungary"},
	FormableButton = {
		ButtonName = "Form the Austro-Hungarian Empire",
		ButtonDescription = "We shall not allow internal divisions to tear us apart again!",
	},
	AddModifiers = {
		["Indivisibly and Inseparably"] = {
			Length = -1
		},
	},
},
]]
{
	FormableName = "Turkic Khaganate",
	CountriesCanForm = {"Kazakhstan"},
	RequiredCountries = {"Kazakhstan", "Tajikistan", "Uzbekistan", "Turkmenistan", "Mongolia"},
	FormableButton = {
		ButtonName = "Reinstate the Turkic Khaganate",
		ButtonDescription = "We have unified the Mongolian Plateau, now let us dominate the Asian continent once more!",
	},
},

{
	Removed = true,
	FormableName = "Alpine Republic",
	CountriesCanForm = {"Switzerland"},
	RequiredCountries = {"Switzerland", "Liechtenstein", "Austria"},
	FormableButton = {
		ButtonName = "Unite the Alps",
		ButtonDescription = "We have united the alpine region under our great nation!",
	},
},

{
	Removed = true,
	FormableName = "Filipino Empire",
	CountriesCanForm = {"Philippines"},
	RequiredCountries = {"Philippines", "Taiwan", "Vietnam", "Malaysia", "Brunei", "Laos"},
	FormableButton = {
		ButtonName = "Re-Assemble the brothers of the empire",
		ButtonDescription = "Our fortifications will never fall!",
	},
},

{
	Removed = true,
	FormableName = "German Reich",
	CountriesCanForm = {"Germany"},
	RequiredCountries = {"Germany", "Austria", "Czech Republic"},
	FormableButton = {
		ButtonName = "Form the German Reich",
		ButtonDescription = "We shall form a greater German state!",
	},
},

{
	Removed = true,
	FormableName = "Trio Java",
	CountriesCanForm = {"Botswana"},
	RequiredCountries = {"Botswana", "Angola", "Namibia"},
	FormableButton = {
		ButtonName = "Reunite the empire lost to time",
		ButtonDescription = "After millenia we have once again reclaimed our lands, it is time to finally unite again",
	},
},

{
	Removed = true,
	FormableName = "Yun Dynasty",
	CountriesCanForm = {"Anhui", "Fujian", "Taiwan"},
	RequiredCountries = {"Anhui", "Fujian", "Taiwan"},
	FormableButton = {
		ButtonName = "Create this fake and test formable",
		ButtonDescription = "Dont bother this is for a test",
	},
},

{
	FormableName = "European Union",
	CountriesCanForm = {"Aland", "Albania", "Alsace", "Andalusia", "Andorra", "Aragon", "Armenia", "Artsakh", "Asturias", "Austria", "Azores", "Balearic Islands", "Basque", "Bavaria", "Belarus", "Belgium", "Bornholm", "Bosnia And Herzegovina", "Brittany", "Bulgaria", "Canary Islands", "Carpathian Rus", "Catalonia", "Cornwall", "Corsica", "Crimea", "Croatia", "Cyprus", "Czech Republic", "Denmark", "Emilia", "Estonia", "Faroe Islands", "Finland", "Flanders", "France", "Frisia", "Friuli", "Galicia", "Georgia", "Germany", "Gibraltar", "Greece", "Guernsey", "Hungary", "Iceland", "Ireland", "Isle Of Man", "Italy", "Jersey", "Kaliningrad", "Kosovo", "Latvia", "Liechtenstein", "Liguria", "Lithuania", "Lombardy", "Luxembourg", "Macedonia", "Madeira", "Malta", "Mercia", "Moldova", "Monaco", "Montenegro", "Naples", "Netherlands", "Norrland", "Northumbria", "Norway", "Northern Cyprus", "Occitania", "Odessa", "Piedmont", "Poland", "Portugal", "Provence", "Romagna", "Romandie", "Romania", "San Marino", "Sardinia", "Savoy", "Saxony", "Scania", "Scotland", "Serbia", "Sicily", "Slovakia", "Slovenia", "Spain", "Sweden", "Switzerland", "Transylvania", "Trieste", "Tuscany", "Turkey", "Ukraine", "United Kingdom", "Valdosta", "Valencia", "Venetia", "Vojvodina", "Wales", "Wallonia", "Baden-Wurttemberg", "Hannover", "Lusatia", "Rhineland", "Saarland", "Schleswig-Holstein", "Silesia"},
	RequiredCountries = {"Albania", "Andorra", "Armenia", "Artsakh", "Austria", "Belarus", "Belgium", "Bosnia And Herzegovina", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark", "Estonia", "Faroe Islands", "Finland", "France", "Georgia", "Germany", "Gibraltar", "Greece", "Guernsey", "Hungary", "Iceland", "Ireland", "Isle Of Man", "Italy", "Jersey", "Kaliningrad", "Kosovo", "Latvia", "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Malta", "Moldova", "Monaco", "Montenegro", "Netherlands", "Norway", "Poland", "Portugal", "Romania", "San Marino", "Serbia", "Slovakia", "Slovenia", "Spain", "Sweden", "Switzerland", "Turkey", "Ukraine", "United Kingdom"},
	ExclusiveFormables = {"Soviet Union", "African Union"},
	FormableButton = {
		ButtonName = "Federate Europe",
		ButtonDescription = "Unity, solidarity, harmony—the twelve stars of the European Union represent the combined hope of a people. Though it has survived decades of hardship, it is only by consolidating the continent underneath these twelve stars that we can ensure these hopes shall never, by any hand, be infringed upon again.",
	},

	CustomAlert = {
		Title = "The Ventotene Treaty",
		Desc = "Conceptualized as early as 1941, European federalization has been seen as an 'antidote' to the rising tide of ultranationalism and ethnic strife. With Spinelli's proposal finally completed as the world teeters on the verge of a nuclear conflict, many watch with wary eyes to see whether it will be Europe's cure, or its poison.",
		Button = "A free and united Europe.",
	},

   AddModifiers = {
		["Old Continent, New Hope"] = {
			Length = -1,
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 15, 
	},
	Demonym = "European",
},

--[[ OLD EUROPEAN UNION
{
	FormableName = "European Union",
	CountriesCanForm = {"Albania", "Andorra", "Austria", "Belarus", "Belgium", "Bosnia And Herzegovina", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy", "Latvia", "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Malta", "Moldova", "Monaco", "Montenegro", "Netherlands", "Norway", "Poland", "Portugal", "Romania", "San Marino", "Serbia", "Kosovo", "Slovakia", "Slovenia", "Spain", "Sweden", "Switzerland", "Ukraine"},
	RequiredCountries = {"Albania", "Andorra", "Austria", "Belarus", "Belgium", "Bosnia And Herzegovina", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy", "Latvia", "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Malta", "Moldova", "Monaco", "Montenegro", "Netherlands", "Norway", "Poland", "Portugal", "Romania", "San Marino", "Serbia", "Kosovo", "Slovakia", "Slovenia", "Spain", "Sweden", "Switzerland", "Ukraine"},
	FormableButton = {
		ButtonName = "Unite Europe",
		ButtonDescription = "We have finally unified Europe under one banner, we shall not fall under chaos again!",
	},
	AddModifiers = {
		["Old Continent, New Hope"] = {
			Length = -1
		},
	},
},
]]

{
	FormableName = "African Union",
	CountriesCanForm = {"Afar", "Agadez", "Algeria", "Ambazonia", "Angola", "Anjouan", "Azawad", "Bas-Congo", "Barotseland", "Beja", "Benin", "Biafra", "Botswana", "Burkina Faso", "Burundi", "Cabinda", "Cabo Verde", "Cameroon", "Canary Islands", "Cape Republic", "Casamance", "Central African Republic", "Chad", "Comoros", "Cote d'Ivoire", "Cyrenaica", "Darfur", "Democratic Republic of the Congo", "Djibouti", "Egypt", "Equatorial Guinea", "Eritrea", "Eswatini", "Ethiopia", "Fezzan", "Gabon", "Gambia", "Ghana", "Guinea", "Guinea-Bissau", "Kabylia", "Katanga", "Kenya", "Kivu", "Lesotho", "Liberia", "Libya", "Logone", "Lunda-Tchokwe", "Madagascar", "Malawi", "Mali", "Mauritania", "Mauritius", "Mayotte", "Mombasa", "Morocco", "Mozambique", "Mthwakazi", "Mwali", "Namibia", "Niger", "Niger Delta", "Nigeria", "Nile Republic", "Nyika", "Oduduwa", "Ogaden", "Oromia", "Republic of Congo", "Reunion", "Rif", "Rol Naath", "Rwanda", "Sa'id", "Saint Helena", "Sao Tome And Principe", "Senegal", "Seychelles", "Sierra Leone", "Somalia", "Somaliland", "South Africa", "South Congo", "South Sudan", "Sudan", "Tanzania", "Tigray", "Togo", "Toubouland", "Tunisia", "Uganda", "Western Sahara", "Western Togoland", "Xhosaland", "Zambesia", "Zambia", "Zanzibar", "Zimbabwe", "Zululand"},
	RequiredCountries = {"Algeria", "Angola", "Benin", "Botswana", "Burkina Faso", "Burundi", "Cabo Verde", "Cameroon", "Canary Islands", "Central African Republic", "Chad", "Comoros", "Cote d'Ivoire", "Democratic Republic of the Congo", "Djibouti", "Egypt", "Equatorial Guinea", "Eritrea", "Eswatini", "Ethiopia", "Gabon", "Gambia", "Ghana", "Guinea", "Guinea-Bissau", "Kenya", "Lesotho", "Liberia", "Libya", "Madagascar", "Malawi", "Mali", "Mauritania", "Mauritius", "Mayotte", "Morocco", "Mozambique", "Namibia", "Niger", "Nigeria", "Republic of Congo", "Reunion", "Rif", "Rwanda", "Saint Helena", "Sao Tome And Principe", "Senegal", "Seychelles", "Sierra Leone", "Somalia", "South Africa", "South Sudan", "Sudan", "Tanzania", "Togo", "Tunisia", "Uganda", "Zambia", "Zimbabwe"},
	ExclusiveFormables = {"European Union"},
	
	FormableButton = {
		ButtonName = "Establish a Pan-African state",
		ButtonDescription = "Enslavement, imperialism, colonialism; all ploys to keep the true strength of the African continent shackled and bound in the shadows. Though an African Union has been forged, it is not until we proclaim our unity under the banner of one, united African nation that we will be truly free.",
	},
	
	CustomAlert = {
		Title = "A United and Strong Africa",
		Desc = "Even as Africa was decolonized, many in the world saw its stability as a far cry. Divided by arbitrary, foreign-made borders, carved between nations too stubborn to forfeit their lands. In an act of providence, though, one nation has taken it upon itself to conquer, and thereby unite, the continent under the Pan-African colours.",
		Button = "Let us all unite.",
	},
	
	AddModifiers = {
		["Triumph of Pan-Africanism"] = {
			Length = -1,
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 15, 
	},
	Demonym = "African",
},

--[[ OLD AFRICAN UNION
{
	FormableName = "African Union",
	CountriesCanForm = {"Algeria", "Angola", "Benin", "Botswana", "Burkina Faso", "Burundi", "Cabo Verde", "Cameroon", "Central African Republic", "Chad", "Comoros", "Democratic Republic of the Congo", "Republic of Congo", "Cote d'Ivoire", "Djibouti", "Egypt", "Equatorial Guinea", "Eritrea", "Eswatini", "Ethiopia", "Gabon", "Gambia", "Ghana", "Guinea", "Guinea-Bissau", "Kenya", "Lesotho", "Liberia", "Libya", "Madagascar", "Malawi", "Mali", "Mauritania", "Mauritius", "Morocco", "Mozambique", "Namibia", "Niger", "Nigeria", "Rwanda", "Sao Tome And Principe", "Senegal", "Seychelles", "Sierra Leone", "Somalia", "South Africa", "South Sudan", "Sudan", "Tanzania", "Togo", "Tunisia", "Uganda", "Zambia", "Zimbabwe"},
	RequiredCountries = {"Algeria", "Angola", "Benin", "Botswana", "Burkina Faso", "Burundi", "Cabo Verde", "Cameroon", "Central African Republic", "Chad", "Comoros", "Democratic Republic of the Congo", "Republic of Congo", "Cote d'Ivoire", "Djibouti", "Egypt", "Equatorial Guinea", "Eritrea", "Eswatini", "Ethiopia", "Gabon", "Gambia", "Ghana", "Guinea", "Guinea-Bissau", "Kenya", "Lesotho", "Liberia", "Libya", "Madagascar", "Malawi", "Mali", "Mauritania", "Mauritius", "Morocco", "Mozambique", "Namibia", "Niger", "Nigeria", "Rwanda", "Sao Tome And Principe", "Senegal", "Seychelles", "Sierra Leone", "Somalia", "South Africa", "South Sudan", "Sudan", "Tanzania", "Togo", "Tunisia", "Uganda", "Zambia", "Zimbabwe"},
	FormableButton = {
		ButtonName = "Unite Africa",
		ButtonDescription = "We have finally unified Africa under one banner, may our future shine bright!",
	},

	AddModifiers = {
		["Triumph of Pan-Africanism"] = {
			Length = -1
		},
	},

},
]]
{
	FormableName = "British Empire",
	CountriesCanForm = {"United Kingdom"},
	RequiredCountries = {"South Africa", "Lesotho", "Eswatini", "Namibia", "Zimbabwe", "Kenya", "Uganda", "Tanzania", "Sudan", "South Sudan", "Nigeria", "Cameroon", "Sierra Leone", "Gambia", "Somalia", "Ghana", "Seychelles", "Mauritius", "Botswana", "Malawi", "Guyana", "Bahamas", "Barbados", "Jamaica", "Trinidad And Tobago", "Turks And Caicos Islands", "Bermuda", "Canada", "Gibraltar", "Malta", "Cyprus", "Israel", "Egypt", "Jordan", "Iraq", "Kuwait", "Oman", "Yemen", "United Arab Emirates", "Pakistan", "India", "Bangladesh", "Sri Lanka", "Maldives", "Hong Kong", "Burma", "Singapore", "Malaysia", "Australia", "New Zealand", "Papua New Guinea", "Solomon Islands", "Fiji", "Cook Islands", "Tonga", "Brunei", "Samoa", "Ireland", "Isle Of Man", "Falkland Islands"},
	FormableButton = {
		ButtonName = "Reform The British Empire!",
		ButtonDescription = "We have reclaimed our colonies! God Save the Queen!",
	},
	AddModifiers = {
		["The Imperial Century"] = {
			Length = -1
		},
	},
},

{
	Removed = true,
	FormableName = "Kingdom of Jerusalem",
	CountriesCanForm = {"Cyprus", "Israel"},
	RequiredCountries = {"Cyprus", "Israel", "Lebanon", "Syria", "Jordan"},
	FormableButton = {
		ButtonName = "Form the Crusader Kingdom",
		ButtonDescription = "In The name of God we fight for Glory, Heaven, and Christ. DEUS VULT!",
	},
},

{
	Removed = true,
	FormableName = "Maghreb Union",
	CountriesCanForm = {"Morocco", "Algeria", "Tunisia", "Mauritania", "Libya"},
	RequiredCountries = {"Morocco", "Algeria", "Tunisia", "Mauritania", "Libya", "Western Sahara"},
	FormableButton = {
		ButtonName = "Unite the Maghreb",
		ButtonDescription = "We shall unite the Maghreb region!",
	},
},

{
	FormableName = "Rattanakosin Kingdom",
	CountriesCanForm = {"Thailand", "Burma", "Malaysia"},
	RequiredCountries = {"Thailand", "Burma", "Malaysia", "Singapore", "Cambodia", "Laos"},
	FormableButton = {
		ButtonName = "Remake our great Kingdom!",
		ButtonDescription = "We have finally formed a greater kingdom!",
	},
},

{
	FormableName = "South African Union",
	CountriesCanForm = {"South Africa"},
	RequiredCountries = {"South Africa", "Namibia", "Lesotho", "Eswatini", "Botswana", "Zimbabwe"},
	FormableButton = {
		ButtonName = "Re-establish the union!",
		ButtonDescription = "It's time to bring back the great union that we once were!",
	},
},

{
	FormableName = "Mamluk Sultanate",
	CountriesCanForm = {"Egypt"},
	RequiredCountries = {"Egypt", "Israel", "Syria", "Lebanon", "Jordan", "Saudi Arabia"},
	ExclusiveFormables = {"Khedivate of Egypt"},
	FormableButton = {
		ButtonName = "Re-instate the sultan!",
		ButtonDescription = "We will once again rule over these lands, long live the sultanate!",
	},
},

{
	FormableName = "Kievan Rus",
	CountriesCanForm = {"Ukraine", "Belarus"},
	RequiredCountries = {"Ukraine", "Belarus", "Ingria", "Karelia", "Saint Petersburg"},
	RequiredTiles = {"Poland.011", "Poland.007", "Poland.009", "Latvia.002", "Ukraine.016", "Moldova.001", "Romania.008", "Romania.009", "Romania.007", "Finland.016", "Finland.017", "Finland.018", "Ukraine.001", "Ukraine.002", "Ukraine.003", "Ukraine.004", "Ukraine.005", "Ukraine.016", "Ukraine.017", "Ukraine.018", "Ukraine.021", "Ukraine.022", "Ukraine.023", "Ukraine.024", "Ukraine.025", "Ukraine.026", "Ukraine.027", "Ukraine.028", "Ukraine.029", "Ukraine.030", "Ukraine.031", "Ukraine.032", "Ukraine.033", "Ukraine.034", "Ukraine.035", "Ukraine.037", "Ukraine.038", "Russia.011", "Russia.012", "Russia.014", "Russia.022", "Russia.027", "Russia.044", "Russia.045", "Russia.046", "Russia.047", "Russia.059", "Russia.060", "Russia.061", "Russia.062", "Russia.063", "Russia.064", "Russia.065", "Russia.066", "Russia.067", "Russia.068", "Russia.069", "Russia.070", "Russia.071", "Russia.072", "Russia.073", "Russia.074", "Russia.075", "Russia.076", "Russia.077", "Russia.078", "Russia.079", "Russia.080", "Russia.081", "Russia.082", "Russia.083", "Russia.084", "Russia.085", "Russia.086", "Russia.087", "Russia.088", "Russia.089", "Russia.090", "Russia.093", "Russia.093", "Russia.094", "Russia.095", "Russia.096", "Russia.097", "Russia.098", "Russia.105", "Russia.112", "Russia.115", "Russia.116", "Russia.117", "Russia.118", "Russia.119", "Russia.120", "Russia.121", "Russia.122", "Russia.123", "Russia.124", "Russia.129", "Russia.130"},
	FormableButton = {
		ButtonName = "Reunite the Rus",
		ButtonDescription = "The bloodline of the Varangians still courses through our veins—and it is exactly their absence that has plunged the Rus' people into chaos. Rurik's dynasty brought centuries of peace and stability to Eastern Europe; and, with his heirs returning to the princedom of the Rus', it shall bring peace for centuries more.",
	},

	CustomAlert = {
		Title = "Revenge of the Rus",
		Desc = "Before their fragmentation into the modern states we know today, a majority of Eastern Europe belonged to the antiquated state of the Rus'. Though centuries have passed since their disappearance, it would seem that one of these states has claimed to restore Rurik's bloodline, bringing a Varangian to the helm of the Rus' people.",
		Button = "A time of troubles upon us...",
	},
	CustomAttributes = { 
		["Stability_Gain"] = 10, 
		["Rename_Cities"] = [[
			[
			["Moscow", "Moskov"],
			]
		]],
	},
	Demonym = "Rus'",
},
--[[ OLD KIEVAN RUS
{
	FormableName = "Kievan Rus",
	CountriesCanForm = {"Ukraine"},
	RequiredCountries = {"Ukraine", "Belarus", "Moldova"},
	FormableButton = {
		ButtonName = "Re-establish the federation!",
		ButtonDescription = "The time has come that we, the Eastern Slavic people, unite under one banner. Long live Kievan Rus'!",
	},
},
]]
{
	FormableName = "Arab League",
	CountriesCanForm = {"Palestine", "Algeria", "Bahrain", "Comoros", "Djibouti", "Egypt", "Iraq", "Jordan", "Kuwait", "Lebanon", "Libya", "Mauritania", "Morocco", "Oman", "Yemen", "Qatar", "Saudi Arabia", "Somalia", "Sudan", "Syria", "Tunisia", "United Arab Emirates"},
	RequiredCountries = {"Palestine", "Algeria", "Bahrain", "Comoros", "Djibouti", "Egypt", "Iraq", "Jordan", "Kuwait", "Lebanon", "Libya", "Mauritania", "Morocco", "Oman", "Yemen", "Qatar", "Saudi Arabia", "Somalia", "Sudan", "Syria", "Tunisia", "United Arab Emirates", "Israel"},
	FormableButton = {
		ButtonName = "Form the Arab League!",
		ButtonDescription = "The Arabian people have gone through dark times, now the Arab League shall take its revenge!",
	},
	AddModifiers = {
		["The Great Homeland"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Mexican Empire",
	CountriesCanForm = {"Mexico"},
	RequiredCountries = {"Mexico", "Aztlan", "Belize", "California", "Costa Rica", "Deseret", "El Salvador", "Guatemala", "Honduras", "Nicaragua", "Texas"},
   RequiredTiles = {"UnitedStates.102", "UnitedStates.136"},
	FormableButton = {
		ButtonName = "Restore the plan of Iguala",
		ButtonDescription = "After a hard-won war, jealous bandits picked the fruits of our revolution to pieces. But in the souls of the people, the seeds of wrath, nourished by vengeance, grow heavy for the vintage. Come, Creator Spirit; it is time to reap our independence and union. At long last, let the harvest begin!",
	},

	CustomAlert = {
		Title = "The Mexican Reconquista",
		Desc = "Spain was in ruins, and New Spain was in chaos. But when Mexico slipped close to an anarchist cesspool, the emperor saved it from destruction. While Mexico rejoiced, the brief rule of the empire was ruined by the petty will of an ungrateful congress. Now, a new Emperor has reclaimed the power Mexico once held and restored its former borders.",
		Button = "Viva...",
	},

   AddModifiers = {
		["The Sacred Flag of Iturbide"] = {
			Length = -1,
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 10, 
		["Rename_Cities"] = [[
			[
			["Albuquerque", "La Villa de Alburquerque"],
			["Ponta Arena", "Punta Delgada"],
			["Rainbow", "Vallecitos"],
			["San Francisco", "Yerba Buena"],
			]
		]],
	},
	Demonym = "Mexican",
},

--[[ OLD MEXICAN EMPIRE
{
	FormableName = "Mexican Empire",
	CountriesCanForm = {"Mexico"},
	RequiredCountries = {"Mexico", "Guatemala", "Belize", "Honduras", "El Salvador", "Nicaragua", "Costa Rica"},
	FormableButton = {
		ButtonName = "Long live the Emperor!",
		ButtonDescription = "We have united our former lands under one rule!",
	},
	AddModifiers = {
		["The Sacred Flag of Iturbide"] = {
			Length = -1
		},
	},
},
]]

{
	FormableName = "Rio de la Plata",
	CountriesCanForm = {"Argentina"},
	RequiredCountries = {"Argentina", "Uruguay", "Chile", "Paraguay", "Bolivia", "Falkland Islands"},
	FormableButton = {
		ButtonName = "Re-unite the provinces!",
		ButtonDescription = "It is time we re-unite our people! Glory to Argentina!",
	},
},

{
	FormableName = "Portuguese Empire",
	CountriesCanForm = {"Portugal"},
	RequiredCountries = {"Portugal", "Brazil", "French Guiana", "Uruguay", "Angola", "Mozambique", "Cabo Verde", "Sao Tome And Principe", "Guinea-Bissau", "Maldives", "Sri Lanka", "Macau", "Timor-Leste"},
	FormableButton = {
		ButtonName = "Reform the Empire",
		ButtonDescription = "We have taken back our colonies! Long live the Empire!",
	},
	AddModifiers = {
		["Pioneering the Age of Exploration"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Italian Empire",
	CountriesCanForm = {"Italy"},
	RequiredCountries = {"Italy", "Libya", "Eritrea", "Ethiopia", "Somalia"},
	FormableButton = {
		ButtonName = "Recreate the Empire",
		ButtonDescription = "We have re-conquered the colonies we formerly held and reformed the Italian Empire!",
	},
	AddModifiers = {
		["To March to the Oceans"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Kingdom of Dacia",
	CountriesCanForm = {"Romania"},
	RequiredCountries = {"Romania", "Serbia", "Kosovo", "Ukraine", "Moldova", "Hungary", "Bulgaria", "Slovakia"},
	FormableButton = {
		ButtonName = "Reform our Kingdom",
		ButtonDescription = "We shall go back to our glorious times!",
	},
},

{
	Removed = true,
	FormableName = "Zaire",
	CountriesCanForm = {"Democratic Republic of the Congo", "Republic of Congo"},
	RequiredCountries = {"Democratic Republic of the Congo", "Republic of Congo"},
	FormableButton = {
		ButtonName = "Reform Zaire",
		ButtonDescription = "Through countless years of disagreement, we are once again united as one. We shall reform Zaire!",
	},
},

{
	FormableName = "Toungoo Dynasty",
	CountriesCanForm = {"Burma"},
	RequiredCountries = {"Burma", "Laos", "Thailand"},
	FormableButton = {
		ButtonName = "Re-instate the Toungoo Dynasty",
		ButtonDescription = "Conquer us over and over, we shall rise again every time!",
	},
},

{
	Removed = true,
	FormableName = "Kingdom of Merina",
	CountriesCanForm = {"Madagascar"},
	RequiredCountries = {"Madagascar", "Reunion", "Mauritius", "Mayotte", "Comoros"},
	FormableButton = {
		ButtonName = "Re-instate the Merina Kingdom",
		ButtonDescription = "United against colonialism, Madagascar shall rise once more!",
	},
},

{
	FormableName = "Inca Empire",
	CountriesCanForm = {"Peru"},
	RequiredCountries = {"Bolivia", "Chile", "Ecuador", "Peru"},
	FormableButton = {
		ButtonName = "Reform the Inca Empire",
		ButtonDescription = "Glory to our God Sun!",
	},
},

{
	FormableName = "Franco-British Union",
	CountriesCanForm = {"France", "United Kingdom"},
	RequiredCountries = {"France", "United Kingdom", "Isle of Man", "Guernsey", "Jersey"},
	ExclusiveFormables = {"Angevin Empire"},
	FormableButton = {
		ButtonName = "Unite Britain and France",
		ButtonDescription = "For centuries, the destinies of the British and French nations have been intertwined. Although we have regularly stood as rivals, if there is any lesson that World War II has bestowed upon us, it is that only together can the Frangleterre stand unopposed for a millenium more.",
	},
	CustomAlert = {
		Title = "The Entente Cordiale",
		Desc = "The nigh-eternal rivalry between Britain and France has been characterized through war, espionage, and devastation across every continent. In a shocking turn of events, though, one of these rivals has supplanted the other, flying the bloody banner of conquest over a now surrounded English Channel.",
		Button = "The day of glory has arrived.",
	},
	CustomAttributes = { 
        ["Stability_Gain"] = 10, 
    },
	Demonym = "Franco-British",
},

--[[{
	FormableName = "Franco-British Union",
	CountriesCanForm = {"France", "United Kingdom"},
	RequiredCountries = {"France", "United Kingdom"},
	ExclusiveFormables = {"Angevin Empire"},
	FormableButton = {
		ButtonName = "Form the Franco-British Union!",
		ButtonDescription = "We've once stood strong against a common enemy, but the time is now to come together!",
	},
},--]]

{
	FormableName = "Marinid Dynasty",
	CountriesCanForm = {"Morocco"},
	RequiredCountries = {"Tunisia", "Algeria", "Morocco", "Gibraltar"},
	FormableButton = {
		ButtonName = "Reinstate The Islamic Dynasty",
		ButtonDescription = "After Centuries of Colonization, we shall rise again to a new glorious future!",
	},
},

{
	FormableName = "Knights Hospitaller",
	CountriesCanForm = {"Malta"},
	RequiredCountries = {"Malta", "Greece", "Cyprus", "Israel"},
	FormableButton = {
		ButtonName = "Re-establish the Crusader States",
		ButtonDescription = "We, the Knights of Malta, have retaken the island of Rhodes, the Kingdom of Cyprus and the Holy Land. Deus Vult!",
	},
},

{
	Removed = true,
	FormableName = "Spartan Empire",
	CountriesCanForm = {"Greece"},
	RequiredCountries = {"Greece", "Macedonia", "Montenegro", "Albania", "Bulgaria"},
	FormableButton = {
		ButtonName = "Establish the Spartan Empire",
		ButtonDescription = "The world has forgotten us, let us remind them who we are!",
	},
},

{
	Removed = true,
	FormableName = "Empire of Yemen",
	CountriesCanForm = {"Yemen"},
	RequiredCountries = {"Yemen", "Oman", "United Arab Emirates", "Eritrea", "Djibouti", "Somalia"},
	FormableButton = {
		ButtonName = "Reform the Imperial Monarchy of Yemen",
		ButtonDescription = "Since we have fallen, we managed to recreate our great empire once again!",
	},
},

{
	FormableName = "Intermarium",
	CountriesCanForm = {"Poland", "Ukraine", "Belarus"},
	RequiredCountries = {"Poland", "Ukraine", "Romania", "Serbia", "Kosovo", "Montenegro", "Moldova", "Croatia", "Slovakia", "Slovenia", "Bosnia And Herzegovina", "Macedonia", "Latvia", "Lithuania", "Estonia", "Finland", "Czech Republic", "Hungary"},
	FormableButton = {
		ButtonName = "Unite the Baltic and Black Seas",
		ButtonDescription = "We were thought of but never created, well now we are, and we are a Eastern European superpower!",
	},
},

{
	FormableName = "Khanate of Khiva",
	CountriesCanForm = {"Uzbekistan"},
	RequiredCountries = {"Uzbekistan", "Turkmenistan", "Tajikistan", "Kyrgyzstan"},
	FormableButton = {
		ButtonName = "Reinstate the Khanate",
		ButtonDescription = "We once ruled Central Asia in the name of Allah, we shall unite under his name again!",
	},
},

{
	FormableName = "Kingdom of Mutapa",
	CountriesCanForm = {"Zimbabwe"},
	RequiredCountries = {"Zimbabwe", "Zambia", "Mozambique"},
	FormableButton = {
		ButtonName = "Reform the Kingdom Of Mutapa",
		ButtonDescription = "We have been demolished by colonizers, but we shall form a greater state!",
	},
},

{
	Removed = true,
	FormableName = "Pacific Federation",
	CountriesCanForm = {"Cook Islands", "Fiji", "Papua New Guinea", "Palau", "Marshall Islands", "Solomon Islands", "Tonga", "Samoa", "Kiribati", "Vanuatu"},
	RequiredCountries = {"Cook Islands", "Fiji", "Papua New Guinea", "Palau", "Marshall Islands", "Solomon Islands", "Tonga", "Samoa", "Kiribati", "Vanuatu"},
	FormableButton = {
		ButtonName = "Unite the islands!",
		ButtonDescription = "The nations of the Pacific have been overlooked for too long, we shall unite!",
	},
},

{
	FormableName = "North Sea Empire",
	CountriesCanForm = {"Denmark", "Norway"},
	RequiredCountries = {"Norway", "Mercia", "Scania"},
	RequiredTiles = {"Norway.001", "Norway.002", "Norway.003", "Norway.004", "Norway.005", "Norway.006", "Norway.007", "Norway.008", "Norway.009", "Norway.010", "Norway.011", "Norway.012", "Norway.013", "Norway.014", "Norway.015", "Norway.016", "Sweden.009", "Sweden.013", "Sweden.019", "Sweden.022", "Sweden.025", "Sweden.026", "United Kingdom.003", "United Kingdom.004", "United Kingdom.005", "United Kingdom.006", "United Kingdom.007", "United Kingdom.008", "United Kingdom.009", "United Kingdom.010", "United Kingdom.011", "United Kingdom.012", "United Kingdom.013", "United Kingdom.014", "United Kingdom.015", "United Kingdom.016", "United Kingdom.017", "United Kingdom.018", "United Kingdom.022", "Germany.041", "Denmark.001", "Denmark.002", "Denmark.003", "Denmark.004", "Denmark.005"},
	FormableButton = {
		ButtonName = "Raise the raven banner",
		ButtonDescription = "Hark, Tyr! We board ships marked with pale death, blackened waves crashing upon the salt sodden soil of the West, destined to drag each gulletless tyrant to the grave of the Dread Emperor himself! The banner of the Allfather will shine his gaze over the endless chasm of the North Sea; and the world will once more know the name of terror: the name of Viking.",
	},

	CustomAlert = {
		Title = "Scourge of the Old North",
		Desc = "Though its exact end is uncertain, it has been centuries since the Viking Age came to pass, the brutish berserkers of the north driven from European shores and pushed back to Scandinavia. The tides of war, however, have brought the Viking scourge back from the depths of the North Sea, the eyes of Odin staring upon our sovereignty with eternal malice.",
		Button = "And at the end of the great battle, Ragnarok.",
	},

   AddModifiers = {
		["Command of the Vikings"] = {
			Length = -1,
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 10, 
		["Rename_Cities"] = [[
            [
            ["Aalborg", "Alabu"],
            ["Bergen", "Bjørgvin"],
            ["Drammen", "Drafn"],
            ["Dublin", "Dyflin"],
            ["Dundalk", "Linn Duachaill"],
            ["Hamar", "Hamarr"],
            ["Istanbul", "Miklagarðr"],
            ["Kyiv", "Kænugarðr"],
            ["København", "Kaupmannahǫfn"],
            ["Moss", "Mors"],
            ["Nuuk", "Godthaab"],
            ["Odense", "Odins Vé"],
            ["Oslo", "Ánslo"],
            ["Stockholm", "Agnafit"],
            ["Svendborg", "Swinæburgh"],
            ["Trondheim", "Niðaróss"],
            ["Tønsberg", "Túnsberg"],
            ["Umeå", "Úma"],
            ["Uppsala", "Östra Aros"],
            ["Velje", "Wæthel"],
            ["Viborg", "Véborg"],
            ["Västerås", "Västra Aros"],
            ["Waterford", "Veðrafjǫrðr"],
            ["Århus", "Aros"],
            ]
        ]],
	},
	Demonym = "North Sea",
},

--[[ OLD NORTH SEA EMPIRE
{
	FormableName = "North Sea Empire",
	CountriesCanForm = {"United Kingdom", "Denmark", "Norway", "Faroe Islands", "Iceland"},
	RequiredCountries = {"United Kingdom", "Denmark", "Norway", "Faroe Islands", "Iceland"},
	FormableButton = {
		ButtonName = "Unite the North Sea.",
		ButtonDescription = "The Viking tribes will unite again the North Sea!",
	},

	AddModifiers = {
		["Command of the Vikings"] = {
			Length = -1
		},
	},
},
]]
{
	Removed = true,
	FormableName = "Levant",
	CountriesCanForm = {"Syria", "Lebanon", "Jordan"},
	RequiredCountries = {"Syria", "Lebanon", "Jordan", "Israel"},
	FormableButton = {
		ButtonName = "Reunite the Levant",
		ButtonDescription = "We have lived under division, however, we will unite now!",
	},
},

--[[{
	FormableName = "Central Asian Union",
	CountriesCanForm = {"Kazakhstan", "Kyrgyzstan", "Uzbekistan", "Tajikistan", "Turkmenistan"},
	RequiredCountries = {"Kazakhstan", "Kyrgyzstan", "Uzbekistan", "Tajikistan", "Turkmenistan"},
	FormableButton = {
		ButtonName = "Unite Central Asia!",
		ButtonDescription = "We have unified the five nations of Central Asia; no longer shall we be influenced by foreign powers!",
	},
},]]

{
	FormableName = "Siam",
	CountriesCanForm = {"Thailand"},
	RequiredCountries = {"Thailand", "Laos"},
	FormableButton = {
		ButtonName = "Restore the Monarchy",
		ButtonDescription = "Imperialism is the only way to truly succeed.",
	},
},

{
	FormableName = "Bulgarian Empire",
	CountriesCanForm = {"Bulgaria"},
	RequiredCountries = {"Bulgaria", "Macedonia", "Serbia", "Kosovo", "Romania", "Hungary", "Greece", "Montenegro"},
	FormableButton = {
		ButtonName = "Re-instate the Imperial rule in Bulgaria",
		ButtonDescription = "The southern slavs have been in peace until the Byzantines came and conqured us, now, we shall rise again and show them who's stronger!",
	},
},


{
	FormableName = "Nguyen dynasty",
	CountriesCanForm = {"Vietnam"},
	RequiredCountries= {"Vietnam"},
	RequiredTiles = {"Cambodia.009", "Cambodia.010", "Cambodia.011", "Cambodia.012", "Cambodia.013", "Cambodia.014", "Cambodia.015", "Cambodia.016", "Cambodia.017", "Laos.002", "Laos.003", "Laos.004", "Laos.005", "Laos.011"},
	FormableButton = {
		ButtonName = "Return the dragon to his throne",
		ButtonDescription = "It is not the will of the proletariat that has returned our rightful territories to us; it is the divine right of the Nguyen bloodline that has brought these separatists to heel. By pulling a few strings, we may bring the Dragon out of exile and return him to his rightful throne—so that he may snap his jaws upon the whole of Southeast Asia.",
	},

	CustomAlert = {
		Title = "The Emperor's Ascension",
		Desc = "The last time the Dragon held the imperial throne in Vietnam, it brought about an era of revolution and tyranny that threatened to consume the whole of Southeast Asia. It seems that this reality has had no effect on the delusions of the monarchists, though, using their claims to Laos and Cambodia to return the Dragon from exile and bring the Nguyen bloodline to power once again.",
		Button = "Yue got to be kidding me…",
	},

	AddModifiers = {
		["The Southern Realm"] = {
			Length = -1,
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 5, 
		["Rename_Cities"] = [[
			[
			["Ho Chi Minh City", "Gia Dinh"],
			]
		]],
	},
	Demonym = "Nguyen",
},

--[[{
	FormableName = "Nguyen dynasty",
	CountriesCanForm = {"Vietnam"},
	RequiredCountries = {"Vietnam", "Cambodia", "Laos"},
	FormableButton = {
		ButtonName = "Remake our great dynasty!",
		ButtonDescription = "Once again we have rule over these lost lands, we shall not fall again!",
	},
	AddModifiers = {
		["The Southern Realm"] = {
			Length = -1
		},
	},
},
]]
{
	FormableName = "Khwarazmian dynasty",
	CountriesCanForm = {"Iran", "Turkmenistan"},
	RequiredCountries = {"Iran", "Turkmenistan", "Uzbekistan", "Kyrgyzstan", "Tajikistan", "Afghanistan"},
	FormableButton = {
		ButtonName = "Restore our lands!",
		ButtonDescription = "We're back stronger than ever! Long live the restored dynasty",
	},
},

--[[{
	Removed = true,
	FormableName = "Arabia",
	CountriesCanForm = {"Saudi Arabia", "Bahrain", "Qatar", "Oman", "Yemen", "United Arab Emirates", "Kuwait"},
	RequiredCountries = {"Saudi Arabia", "Bahrain", "Qatar", "Oman", "Yemen", "United Arab Emirates", "Kuwait"},
	FormableButton = {
		ButtonName = "Unite the land of the Arabs!",
		ButtonDescription = "We have now united under the Arabian banner!",
	},
},

{
	Removed = true,
	FormableName = "Oceanic Union",
	CountriesCanForm = {"Australia", "Fiji", "Kiribati", "Marshall Islands", "New Zealand", "Palau", "Papua New Guinea", "Samoa", "American Samoa", "Solomon Islands", "Tonga", "Vanuatu"},
	RequiredCountries = {"Australia", "Fiji", "Kiribati", "Marshall Islands", "New Zealand", "Palau", "Papua New Guinea", "Samoa", "American Samoa", "Solomon Islands", "Tonga", "Vanuatu"},
	FormableButton = {
		ButtonName = "Unite the Sub-Continent",
		ButtonDescription = "The Sub-Continent of Oceania has been united at last!",
	},
},
]]

{
	FormableName = "Kingdom of Croatia",
	CountriesCanForm = {"Croatia"},
	RequiredCountries = {"Croatia", "Bosnia And Herzegovina"},
	FormableButton = {
		ButtonName = "Become the new Balkan power!",
		ButtonDescription = "After years of being pushed around, we finally rise",
	},
},

{
	FormableName = "Macedonian Empire",
	CountriesCanForm = {"Macedonia", "Greece"},
	RequiredCountries = {"Macedonia", "Greece", "Bulgaria", "Turkey", "Cyprus", "Egypt", "Libya", "Syria", "Lebanon", "Israel", "Iraq", "Kuwait", "Iran", "Turkmenistan", "Afghanistan", "Pakistan", "Tajikistan", "Uzbekistan", "Kyrgyzstan"},
	FormableButton = {
		ButtonName = "Reclaim Greek lands",
		ButtonDescription = "Alexander the Great's empire is back once more!",
	},
	AddModifiers = {
		["The Hellenistic Period"] = {
			Length = -1
		},
	},
},

{
	Removed = true,
	FormableName = "Empire of Gabon",
	CountriesCanForm = {"Gabon"},
	RequiredCountries = {"Gabon", "Equatorial Guinea", "Sao Tome And Principe", "Cameroon"},
	FormableButton = {
		ButtonName = "Restore our empire",
		ButtonDescription = "We have regained our old territories stolen by the colonists! Glory to Gabon!",
	},
},

{
	FormableName = "Sokoto Caliphate",
	CountriesCanForm = {"Nigeria"},
	RequiredCountries = {"Nigeria"},
	RequiredTiles = {"Cameroon.002", "Cameroon.003", "Cameroon.004", "Cameroon.005", "Niger.003", "Niger.001", "Niger.002", "Niger.003", "BurkinaFaso.002"},
	FormableButton = {
		ButtonName = "Crown a new caliph",
		ButtonDescription = "For too long, we have allowed religious and political tensions to tear our nation apart at the seams, north and south. If Nigeria is to survive the coming decades, these disputes must be settled unquestionably; and by expanding our rule and purging the Christian heresies, the world will witness a Caliph's revival... and the birth of his new Caliphate the Sokoto.",
	},
	CustomAlert = {
		Title = "The Heart of Sudan",
		Desc = "In respect for their cultural heritage, the British and German Empires left Nigeria mainly untouched; leaving a tenuous balance of Christianity in the South, and Islam in the North. A tenuous situation that, for better or worse, has erupted into a complete Islamic takeover, reinforcing their old dominiance of the region under a restored Sokoto Caliphate.",
		Button = "Another period of chaos awaits...",
	},
	CustomAttributes = { 
		["Stability_Gain"] = 10, 
	},
	Demonym = "Sokoto",
},
--[[ OLD SOKOTO CALIPHATE
{
	FormableName = "Sokoto Caliphate",
	CountriesCanForm = {"Nigeria"},
	RequiredCountries = {"Nigeria", "Chad", "Cameroon"},
	FormableButton = {
		ButtonName = "Unify Nigerian Sunnis",
		ButtonDescription = "The Sunnis have reestablished control of our lost caliphate, let the union commence!",
	},
},
]]
{
	Removed = true,
	FormableName = "Hittite",
	CountriesCanForm = {"Lebanon", "Turkey", "Syria", "Cyprus"},
	RequiredCountries = {"Lebanon", "Turkey", "Syria", "Cyprus"},
	FormableButton = {
		ButtonName = "Unite the old empire.",
		ButtonDescription = "The ancient empire is reborn!",
	},
},

{
	Removed = true,
	FormableName = "Saharan Kingdom",
	CountriesCanForm = {"Egypt", "Libya", "Tunisia", "Algeria", "Morocco", "Western Sahara", "Mauritania", "Mali", "Niger", "Chad", "Sudan", "Eritrea", "Senegal"},
	RequiredCountries = {"Egypt", "Libya", "Tunisia", "Algeria", "Morocco", "Western Sahara", "Mauritania", "Mali", "Niger", "Chad", "Sudan", "Eritrea", "Senegal"},
	FormableButton = {
		ButtonName = "Unite the Great Desert!",
		ButtonDescription = "We have finally gathered the other nations to unite the Great Desert!",
	},
},

{
	FormableName = "Pirate Republic",
	CountriesCanForm = {"Bahamas"},
	RequiredCountries = {"Bahamas", "Bermuda"},
	FormableButton = {
		ButtonName = "Take back former pirate lands",
		ButtonDescription = "Finally, after falling into chaos, we shall rid corruption of our once feared seas, together we shall rule the Caribbean and its trade routes!",
	},
},

{
	Removed = true,
	FormableName = "Kingdom of Kongo",
	CountriesCanForm = {"Republic of Congo"},
	RequiredCountries = {"Republic of Congo", "Democratic Republic of the Congo", "Angola", "Gabon"},
	FormableButton = {
		ButtonName = "Reunite the old Kongan empire!",
		ButtonDescription = "Colonised we were, reunited we are, powerful in the name of our people.",
	},
},

{
	FormableName = "Kingdom of Kandy",
	CountriesCanForm = {"Sri Lanka"},
	RequiredCountries = {"Sri Lanka", "Maldives", "Malaysia"},
	FormableButton = {
		ButtonName = "Reassemble our colonized empire",
		ButtonDescription = "We shall take the power back from the colonials who made our people suffer in the great ocean we call our home.",
	},
},

{
	FormableName = "Palmyrene Empire",
	CountriesCanForm = {"Syria"},
	RequiredCountries = {"Syria", "Jordan", "Lebanon", "Israel", "Turkey", "Egypt"},
	FormableButton = {
		ButtonName = "Re-unite the Empire we've lost to the Romans!",
		ButtonDescription = "We'll last longer and maintain dominance over the provinces we once ruled!",
	},
},

{
	FormableName = "Kingdom of Bohemia",
	CountriesCanForm = {"Czech Republic"},
	RequiredCountries = {"Czech Republic", "Austria", "Slovenia"},
	FormableButton = {
		ButtonName = "Restore the rule of the crown in Bohemia",
		ButtonDescription = "We have retaken our lands back,we shall never fall again!",
	},
},

{
	Removed = true,
	FormableName = "Ajuran Sultanate",
	CountriesCanForm = {"Somalia"},
	RequiredCountries = {"Somalia", "Ethiopia", "Djibouti", "Kenya"},
	FormableButton = {
		ButtonName = "Bring back the Sultanate!",
		ButtonDescription = "Restore the lands back in the name of the Sultan!",
	},
},

{
	Removed = true,
	FormableName = "Nile Empire",
	CountriesCanForm = {"Sudan", "South Sudan", "Ethiopia", "Egypt", "Uganda", "Democratic Republic of the Congo", "Kenya", "Tanzania", "Rwanda", "Burundi", "Eritrea"},
	RequiredCountries = {"Sudan", "South Sudan", "Ethiopia", "Egypt", "Uganda", "Democratic Republic of the Congo", "Kenya", "Tanzania", "Rwanda", "Burundi", "Eritrea"},
	FormableButton = {
		ButtonName = "Unite the great river under one, powerful nation!",
		ButtonDescription = "After thousands of years, the Nile is finally united, long live the Nile!",
	},
},

{
	FormableName = "Zapadoslavia",
	CountriesCanForm = {"Poland", "Czech Republic", "Slovakia", "Lusatia"},
	RequiredCountries = {"Poland", "Czech Republic", "Slovakia", "Lusatia"},

	FormableButton = {
		ButtonName = "Unite the West Slavs",
		ButtonDescription = "Many have attempted to strengthen Slavic bonds in the West, but the rise of imperialism ultimately led to their failure, and the dream of West Slavic unity was laid to rest. Now, as the same imperialism resurges, brothers and sisters of the West, it is time to unite! Let us bring all West Slavs together under one banner and carry forward the everlasting Pan-Slavic cause.",
	},

	CustomAlert = {
		Title = "For Liberty And Independence",
		Desc = "The federalization of the West Slavs was lost. Decades of foreign occupation and division had prevented such an idea from taking root. However, one nation has taken it upon itself to realize this idea, and through military might, they have succeeded, marking the first step towards fulfilling Pan-Slavism.",
		Button = "A bunch of larpers.",
	},

	CustomAttributes = {
		["Stability Gain"] = 10,
	},
	Demonym = "Zapadoslav",
},

--[[ OLD ZAPADOSLAVIA
{
	FormableName = "Zapadoslavia",
	CountriesCanForm = {"Poland", "Czech Republic", "Slovakia"},
	RequiredCountries = {"Poland", "Czech Republic", "Slovakia"},
	FormableButton = {
		ButtonName = "Unite the Western Slavs",
		ButtonDescription = "Brothers and sisters of the west, we must finally come together! Glory to Zapodoslavia!",
	},
},
]]

{
	FormableName = "Babylonian Empire",
	CountriesCanForm = {"Iraq"},
	RequiredCountries = {"Iraq", "Syria", "Israel", "Lebanon", "Jordan", "Kuwait"},
	FormableButton = {
		ButtonName = "Unify Babylonia",
		ButtonDescription = "At last, our ancient lands are conquered again! Long live Babylonia!",
	},

	AddModifiers = {
		["The Cradles of Civilization"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Mongol Empire",
	CountriesCanForm = {"Mongolia"},
	RequiredCountries = {"Mongolia", "China", "North Korea", "South Korea", "Hong Kong", "Macau", "Russia", "Kazakhstan", "Uzbekistan", "Tajikistan", "Kyrgyzstan", "Turkmenistan", "Afghanistan", "Pakistan", "Iran", "Iraq", "Armenia", "Azerbaijan", "Georgia", "Turkey", "Ukraine", "Belarus", "Moldova", "Romania"},
	FormableButton = {
		ButtonName = "Reunite Genghis Khan's great empire!",
		ButtonDescription = "Today, we reunite the lands taken by the great Genghis Khan, and follow in his footsteps, for Mongolia!",
	},
	AddModifiers = {
		["Terror of the Mongols"] = {
			Length = -1
		},
	},
},

{
	Removed = true,
	FormableName = "Patagonia",
	CountriesCanForm = {"Argentina", "Chile"},
	RequiredCountries = {"Argentina", "Chile"},
	FormableButton = {
		ButtonName = "Unite Patagonia",
		ButtonDescription = "The Southern tip of the World has united!",
	},
},

{
	Removed = true,
	FormableName = "Guiana Union",
	CountriesCanForm = {"Guyana", "Suriname", "French Guiana"},
	RequiredCountries = {"Guyana", "Suriname", "French Guiana"},
	FormableButton = {
		ButtonName = "Unite the Guianas",
		ButtonDescription = "Show the world that we are strong!",
	},
},

{
	FormableName = "Courland-Livonia",
	CountriesCanForm = {"Latvia", "Estonia"},
	RequiredCountries = {"Latvia", "Estonia", "Trinidad And Tobago", "Gambia"},
	FormableButton = {
		ButtonName = "Unite the two Baltic duchies!",
		ButtonDescription = "We are finally free from our oppressors, which means that we are free to unite!",
	},
},

{
	Removed = true,
	FormableName = "Tuareg State",
	CountriesCanForm = {"Niger", "Mali", "Burkina Faso", "Algeria", "Tunisia"},
	RequiredCountries = {"Niger", "Mali", "Burkina Faso", "Algeria", "Tunisia"},
	FormableButton = {
		ButtonName = "Unite the Tuareg people under one banner!",
		ButtonDescription = "Before, we have been divided by colonization, today, we are again united!",
	},
},

{
	FormableName = "Omani Empire",
	CountriesCanForm = {"Oman"},
	RequiredCountries = {"Oman", "Yemen", "United Arab Emirates", "Bahrain", "Qatar", "Somalia", "Kenya", "Tanzania"},
	FormableButton = {
		ButtonName = "Bring back Oman to its former glory.",
		ButtonDescription = "For years we have been a weak joke of Arabia but now we rise once again and become the Great Empire!",
	},
},

{
	Removed = true,
	FormableName = "Trucial State",
	CountriesCanForm = {"United Arab Emirates", "Qatar", "Bahrain"},
	RequiredCountries = {"United Arab Emirates", "Qatar", "Bahrain"},
	FormableButton = {
		ButtonName = "Reform our union!",
		ButtonDescription = "Its time to reunite again and fight our enemies! Lets fight for our glory!",
	},
},

{
	FormableName = "Albanian Empire",
	CountriesCanForm = {"Albania"},
	RequiredCountries = {"Albania", "Montenegro", "Macedonia", "Serbia", "Kosovo", "Greece"},
	FormableButton = {
		ButtonName = "Recreate the Empire!",
		ButtonDescription = "For long, we have been silent. It's time to recreate our once glorious empire!",
	},
},

{
	Removed = true,
	FormableName = "Kingdom of Luanda",
	CountriesCanForm = {"Angola"},
	RequiredCountries = {"Angola", "Democratic Republic of the Congo", "Zambia"},
	FormableButton = {
		ButtonName = "Free our nation from Portuguese influence!",
		ButtonDescription = "We have been enslaved by the Europeans, now it's our time to rule over the African continent!",
	},
},

{
	FormableName = "Hotak Dynasty",
	CountriesCanForm = {"Afghanistan"},
	RequiredCountries = {"Afghanistan", "Iran"},
	FormableButton = {
		ButtonName = "Restore the Ghilji Monarchy",
		ButtonDescription = "The Hotaki may have been defeated long ago, but new conflicts around the globe demand we retake their customs. Let our new strength lead us to greatness!",
	},
},

{
	Removed = true,
	FormableName = "Kingdom of Thrace",
	CountriesCanForm = {"Bulgaria"},
	RequiredCountries = {"Bulgaria", "Macedonia", "Greece"},
	FormableButton = {
		ButtonName = "Reunite all Bulgarian land!",
		ButtonDescription = "It is time to reinstate the crown!",
	},
},

{
	FormableName = "Durrani Empire",
	CountriesCanForm = {"Afghanistan"},
	RequiredCountries = {"Afghanistan", "Pakistan"},
	FormableButton = {
		ButtonName = "Reform the Durrani Empire",
		ButtonDescription = "We have recreated the great empire that laid the foundation of Afghanistan, glory to Ahmad Shah Durrani!",
	},
},

{
	FormableName = "Carthage",
	CountriesCanForm = {"Tunisia"},
	RequiredCountries = {"Tunisia", "Algeria", "Libya", "Italy", "Spain", "Morocco", "Gibraltar", "Malta"},
	FormableButton = {
		ButtonName = "Retake Ancient Carthage",
		ButtonDescription = "We have reformed our ancient empire and shall rule over the western Mediterranean once more!",
	},
	AddModifiers = {
		["Reputation of the Phoenicians"] = {
			Length = -1
		},
	},
},

{
	FormableName = "French Empire",
	CountriesCanForm = {"France"},
	RequiredCountries = {"France", "Morocco", "Algeria", "Tunisia", "Cote d'Ivoire", "Benin", "Mali", "Guinea", "Mauritania", "Niger", "Senegal", "Burkina Faso", "Togo", "Gambia", "Chad", "Central African Republic", "Republic of Congo", "Gabon", "Cameroon", "Sao Tome And Principe", "Madagascar", "Mauritius", "Djibouti", "Mayotte", "Seychelles", "Comoros", "Reunion", "Laos", "Cambodia", "Vietnam", "Syria", "Lebanon", "French Polynesia", "New Caledonia", "Vanuatu"},
	FormableButton = {
		ButtonName = "Bring back the Colonial Era!",
		ButtonDescription = "The French Empire was a great power throughout all of the world, bring back the Monarchy!",
	},
	AddModifiers = {
		["Vive La France"] = {
			Length = -1
		},
	},
},

{
	Removed = true,
	FormableName = "Ruthenia",
	CountriesCanForm = {"Belarus"},
	RequiredCountries = {"Belarus", "Ukraine", "Poland"},
	FormableButton = {
		ButtonName = "Unite the Rus",
		ButtonDescription = "Our nation was conquered by our neighbours all the time, but now, Ruthenia will show its wrath!",
	},
},

{
	Removed = true,
	FormableName = "Sumerian Empire",
	CountriesCanForm = {"Kuwait"},
	RequiredCountries = {"Kuwait", "Iraq", "Syria"},
	FormableButton = {
		ButtonName = "Reinstate our ancient empire",
		ButtonDescription = "Our empire was lost to time, let us make sure that the world remembers our great kingdom!",
	},
},

{
	FormableName = "Princedom of Duklja",
	CountriesCanForm = {"Montenegro"},
	RequiredCountries = {"Montenegro", "Bosnia And Herzegovina"},
	FormableButton = {
		ButtonName = "Reform our historic Balkan Kingdom!",
		ButtonDescription = "Many centuries ago, we were once a powerful kingdom in the Balkans, now we shall reclaim that lost glory!",
	},
},

{
	FormableName = "Hephthalite Empire",
	CountriesCanForm = {"Tajikistan"},
	RequiredCountries = {"Afghanistan", "Kyrgyzstan", "Pakistan", "Tajikistan", "Turkmenistan", "Uzbekistan"},
	ExclusiveFormables = {"Kushan Empire"},
	FormableButton = {
		ButtonName = "Restore Hephthalite control",
		ButtonDescription = "Almost 2 millennia ago, we were a very powerful empire that dominated Central Asia and then we collapsed into several small states in our lost memory, now we reunite our lost empire to dominate Central Asia once again!",
	},
},

{
	FormableName = "Timurid Empire",
	CountriesCanForm = {"Uzbekistan"},
	RequiredCountries = {"Afghanistan", "Armenia", "Azerbaijan", "Georgia", "Iran", "Iraq", "Kuwait", "Kyrgyzstan", "Tajikistan", "Turkmenistan", "Uzbekistan"},
	FormableButton = {
		ButtonName = "Reinstate Timurid Rule",
		ButtonDescription = "We have reunited and recreated Tamerlane's empire. Glory to the Timurids!",
	},
	AddModifiers = {
		["In Rectitude Lies Salvation"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Principality of Moldavia",
	CountriesCanForm = {"Moldova"},
	RequiredCountries = {"Moldova", "Romania"},
	FormableButton = {
		ButtonName = "Reunite the great Moldavia!",
		ButtonDescription = "Our lands were conquered by the Ottomans, let us return to our former glory!",
	},
},

{
	FormableName = "Kaabu Empire",
	CountriesCanForm = {"Guinea"},
	RequiredCountries = {"Guinea", "Guinea-Bissau", "Senegal"},
	FormableButton = {
		ButtonName = "Reunite the great Kaabu Empire!",
		ButtonDescription = "We were dissolved by the colonial powers, let us rise again!",
	},
},

{
	Removed = true,
	FormableName = "Kingdom of Lombards",
	CountriesCanForm = {"San Marino"},
	RequiredCountries = {"San Marino", "Italy"},
	FormableButton = {
		ButtonName = "Reunite our forgotten kingdom",
		ButtonDescription = "After thousands of years we have become forgotten to history, we must restore our great kingdom and rule once again!",
	},
},

{
	FormableName = "Mayan Empire",
	CountriesCanForm = {"Guatemala"},
	RequiredCountries = {"Guatemala", "Belize", "Honduras", "El Salvador", "Mexico"},
	FormableButton = {
		ButtonName = "Restore our brothers and sisters together into one!",
		ButtonDescription = "We must regroup the old Maya lands and bring back the classic Maya Civilization!",
	},
},

{
	Removed = true,
	FormableName = "Pepper Coast",
	CountriesCanForm = {"Liberia"},
	RequiredCountries = {"Liberia", "Cote d'Ivoire"},
	FormableButton = {
		ButtonName = "Unite the Pepper Coast",
		ButtonDescription = "It is time we unite the land of the peppers against the colonialists that are out to invade us!",
	},
},

{
	Removed = true,
	FormableName = "Sahrawi Sultanate",
	CountriesCanForm = {"Western Sahara", "Mauritania"},
	RequiredCountries = {"Western Sahara", "Mauritania", "Mali", "Morocco", "Algeria"},
	FormableButton = {
		ButtonName = "Bring back the Sahrawi Sultanate",
		ButtonDescription = "For too long the Sahrawi people have been made fun of,time to bring back the Sahrawi Sultanate!",
	},
},

{
	FormableName = "Norgesveldet",
	CountriesCanForm = {"Norway"},
	RequiredCountries = {"Norway", "Faroe Islands", "Iceland", "Greenland", "Isle Of Man"},
	FormableButton = {
		ButtonName = "Reform the old, lost monarchy!",
		ButtonDescription = "We held the first empire of Scandinavia but our relevancy was crushed with 700 years of foreign occupation. With a new era having hit the world, reforming Haakonssons empire, we will rule the Scandinavian peninsula!",
	},
},

{
	FormableName = "Pala Empire",
	CountriesCanForm = {"Bangladesh"},
	RequiredCountries = {"Bangladesh", "India", "Nepal", "Bhutan", "Pakistan"},
	FormableButton = {
		ButtonName = "Reunite our lost Empire!",
		ButtonDescription = "We were once dominant in the Indian subcontinent and now we shall return to our former glory as a great Bengal Empire!",
	},
},

{
	FormableName = "Bruneian Empire",
	CountriesCanForm = {"Brunei"},
	RequiredCountries = {"Brunei", "Malaysia", "Philippines"},
	FormableButton = {
		ButtonName = "Restore the ancient Empire!",
		ButtonDescription = "We have restored our glorious empire! Long live the Sultanate!",
	},
},

{
	Removed = true,
	FormableName = "Kingdom of Bora Bora",
	CountriesCanForm = {"French Polynesia"},
	RequiredCountries = {"French Polynesia", "Cook Islands", "Samoa", "American Samoa", "Tonga"},
	FormableButton = {
		ButtonName = "Restore the kingdom",
		ButtonDescription = "Now that we have been liberated nothing can stop our kingdom now!",
	},
},

{
	Removed = true,
	FormableName = "Chibchan State",
	CountriesCanForm = {"Panama", "Costa Rica"},
	RequiredCountries = {"Panama", "Costa Rica", "Nicaragua", "Honduras", "Colombia"},
	FormableButton = {
		ButtonName = "Unite the people of Chibchan descent.",
		ButtonDescription = "The Chibchan people have gone unnoticed in this world. It is time for us to rise up and take Latin america and show the world who we are!",
	},
},

{
	Removed = true,
	FormableName = "Kingdom of the Isles",
	CountriesCanForm = {"Isle Of Man"},
	RequiredCountries = {"Isle Of Man", "United Kingdom"},
	FormableButton = {
		ButtonName = "Unite the kingdom of old.",
		ButtonDescription = "The prosperous Celtic kingdom used to rule seas. Together, we will unite our Manx brethren and do to the UK what the UK did to us!",
	},
},

{
	FormableName = "Finnic Union",
	CountriesCanForm = {"Finland", "Estonia"},
	RequiredCountries = {"Finland", "Estonia"},
	FormableButton = {
		ButtonName = "Unite the Finnic people under one banner.",
		ButtonDescription = "The unification of the Finns have been attempted time after time but prevented by stronger powers. But that shall not prevent us from doing so now!",
	},
},

{
	Removed = true,
	FormableName = "Fang Federation",
	CountriesCanForm = {"Equatorial Guinea"},
	RequiredCountries = {"Equatorial Guinea", "Gabon"},
	FormableButton = {
		ButtonName = "Unite our ancient tribe into one nation!",
		ButtonDescription = "Throughout history we were rules by others, let us rule our own people!",
	},
},

{
	FormableName = "Ostrogothic Kingdom",
	CountriesCanForm = {"San Marino", "Slovenia", "Croatia", "Bosnia And Herzegovina", "Monaco"},
	RequiredCountries = {"San Marino", "Slovenia", "Croatia", "Bosnia And Herzegovina", "Slovakia", "Czech Republic", "Austria", "Switzerland", "Monaco", "Italy", "Hungary"},
	FormableButton = {
		ButtonName = "Reunite Eastern Goths",
		ButtonDescription = "We must pick up the scraps left by Western Rome and reconquer the Peninsula!",
	},

	AddModifiers = {
		["Last of the Goths"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Sultanate of Ifat",
	CountriesCanForm = {"Djibouti"},
	RequiredCountries = {"Djibouti", "Eritrea", "Ethiopia"},
	FormableButton = {
		ButtonName = "Unite the old territories",
		ButtonDescription = "Our great Sultanate was controled by the Walashma Dynasty, but this time we will guide Africa to the greatness.",
	},
},

{
	Removed = true,
	FormableName = "Kingdom of Dahomey",
	CountriesCanForm = {"Benin"},
	RequiredCountries = {"Benin", "Togo"},
	FormableButton = {
		ButtonName = "Reform our great kingdom!",
		ButtonDescription = "We were dissolved by the colonial empires, let us remake out great kingdom and rise!",
	},
},

{
	Removed = true,
	FormableName = "Bani Utbah",
	CountriesCanForm = {"Kuwait", "Bahrain", "Qatar"},
	RequiredCountries = {"Kuwait", "Bahrain", "Qatar", "Saudi Arabia"},
	FormableButton = {
		ButtonName = "Reunite the Tribes of Arabia",
		ButtonDescription = "The Utubs were expelled unfairly by the Ottomans, let us reform the confederation of Arabia!",
	},
},

{
	FormableName = "Belgian Empire",
	CountriesCanForm = {"Belgium"},
	RequiredCountries = {"Belgium", "Democratic Republic of the Congo", "Rwanda", "Burundi"},
	FormableButton = {
		ButtonName = "Restore us to our former colonial heights!",
		ButtonDescription = "We, Belgium, once held a large part of Africa, now we have restored it!",
	},
	AddModifiers = {
		["Labour and Progress"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Dutch Empire",
	CountriesCanForm = {"Netherlands"},
	RequiredCountries = {"Netherlands", "Belgium", "Luxembourg", "Curacao", "Aruba", "Guyana", "Suriname", "Trinidad And Tobago", "Sao Tome And Principe", "South Africa", "Indonesia", "Mauritius", "Sri Lanka", "Taiwan"},
	FormableButton = {
		ButtonName = "Take back our land that we lost to others",
		ButtonDescription = "We shall control the spice trade once more!",
	},
	AddModifiers = {
		["Gekoloniseered"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Kingdom of Aksum",
	CountriesCanForm = {"Eritrea"},
	RequiredCountries = {"Eritrea", "Ethiopia", "Djibouti", "Yemen"},
	FormableButton = {
		ButtonName = "Restore our great African Kingdom!",
		ButtonDescription = "After being opressed for many years, it is time to restore our great Kingdom!",
	},
},

{
	Removed = true,
	FormableName = "Wadai Sultanate",
	CountriesCanForm = {"Central African Republic", "Chad"},
	RequiredCountries = {"Central African Republic", "Chad", "Sudan"},
	FormableButton = {
		ButtonName = "Revive the Great Sultanate to the East of Lake Chad",
		ButtonDescription = "Let us unite our great Islamic peoples! May Allah guide us to the right path!",
	},
},

{
	FormableName = "Maravi Empire",
	CountriesCanForm = {"Malawi"},
	RequiredCountries = {"Malawi", "Mozambique"},
	FormableButton = {
		ButtonName = "Restore Malawi's greatest successors",
		ButtonDescription = "Malawi shall not be weak and poor anymore,long live the Maravi empire!",
	},
},

{
	Removed = true,
	FormableName = "Upper Volta",
	CountriesCanForm = {"Burkina Faso"},
	RequiredCountries = {"Burkina Faso", "Benin", "Ghana", "Togo", "Cote d'Ivoire"},
	FormableButton = {
		ButtonName = "Form the African coast power house!",
		ButtonDescription = "Turn Sankara's dream into reality!",
	},
},

{
	Removed = true,
	FormableName = "Kingdom of Fiji",
	CountriesCanForm = {"Fiji"},
	RequiredCountries = {"Fiji", "Vanuatu", "New Caledonia", "Tonga"},
	FormableButton = {
		ButtonName = "Show the world that we aren't irrelevant!",
		ButtonDescription = "We have finally recreated our empire, now it is time to dominate Oceania!",
	},
},

{
	FormableName = "Kingdom of Bosnia",
	CountriesCanForm = {"Bosnia And Herzegovina"},
	RequiredCountries = {"Bosnia And Herzegovina", "Croatia", "Montenegro", "Serbia", "Kosovo"},
	FormableButton = {
		ButtonName = "Reform the mighty Monarchy",
		ButtonDescription = "For long we have been pushed around, forced and burnt, we shall rise again!",
	},
},

{
	FormableName = "Kushan Empire",
	CountriesCanForm = {"Afghanistan", "Tajikistan"},
	RequiredCountries = {"Afghanistan", "Tajikistan", "Turkmenistan", "Pakistan", "Uzbekistan", "Kyrgyzstan"},
	ExclusiveFormables = {"Hephthalite Empire"},
	FormableButton = {
		ButtonName = "Reform the ancient empire",
		ButtonDescription = "It is time to return our ancient empire we lost to the Persians!",
	},
},

{
	FormableName = "Kush",
	CountriesCanForm = {"Sudan"},
	RequiredCountries = {"Sudan", "South Sudan", "Eritrea", "Egypt"},
	FormableButton = {
		ButtonName = "Reform the ancient Nubian kingdom!",
		ButtonDescription = "The first empire that encompassed the entire Nile and more, shall be remade!",
	},
},

{
	FormableName = "Illyria",
	CountriesCanForm = {"Slovenia"},
	RequiredCountries = {"Slovenia", "Croatia", "Bosnia And Herzegovina", "Montenegro", "Albania"},
	FormableButton = {
		ButtonName = "Unite Illyria",
		ButtonDescription = "Illyria, named after Illyrius, is a region that is divided by different countries. Not anymore, for we will stand united!",
	},
},

{
	Removed = true,
	FormableName = "Gbaya Empire",
	CountriesCanForm = {"Central African Republic"},
	RequiredCountries = {"Central African Republic", "Democratic Republic of the Congo", "Republic of Congo", "Cameroon"},
	FormableButton = {
		ButtonName = "Unite the lands of our people!",
		ButtonDescription = "Ever since our colonisation by the French, the Gbaya people have been divided, now we shall reunite our people and dominate Central Africa!",
	},
},

{
	Removed = true,
	FormableName = "Mandingo Federation",
	CountriesCanForm = {"Cote d'Ivoire", "Burkina Faso", "Senegal", "Gambia", "Guinea", "Guinea-Bissau", "Sierra Leone", "Mali"},
	RequiredCountries = {"Cote d'Ivoire", "Burkina Faso", "Senegal", "Gambia", "Guinea", "Guinea-Bissau", "Sierra Leone", "Mali"},
	ExclusiveFormables = {"Mali Empire", "Songhai Empire"},
	FormableButton = {
		ButtonName = "Unite our African people into one grand nation!",
		ButtonDescription = "Throughout history we were ruled by other nations, now we shall rule our own people!",
	},
},

{
	Removed = true,
	FormableName = "Khoisan",
	CountriesCanForm = {"Namibia", "Botswana"},
	RequiredCountries = {"Namibia", "Botswana", "South Africa"},
	FormableButton = {
		ButtonName = "Unite the Khoisan",
		ButtonDescription = "We have been seperated during colonization, now we will come back united!",
	},
},

{
	Removed = true,
	FormableName = "Al Andalus",
	CountriesCanForm = {"Gibraltar"},
	RequiredCountries = {"Gibraltar", "Spain", "Portugal", "Morocco", "Andorra"},
	FormableButton = {
		ButtonName = "Reverse the Reconquista!",
		ButtonDescription = "We have finally United our former lands and now, we shall serve as a threat to Europe and others that challenge us!",
	},
},

{
	FormableName = "Golden Circle",
	CountriesCanForm = {"Confederate States of America"},
	RequiredCountries = {"Confederate States of America", "Texas", "Mexico", "Guatemala", "Honduras", "Nicaragua", "El Salvador", "Costa Rica", "Panama", "Colombia", "Venezuela", "Cuba", "Dominican Republic", "Haiti", "Bahamas", "Jamaica", "Puerto Rico", "Trinidad And Tobago", "Grenada", "Saint Vincent And The Grenadines", "Barbados", "Saint Lucia", "Martinique", "Dominica", "Guadeloupe", "Antigua And Barbuda", "Saint Kitts And Nevis", "Belize", "Turks And Caicos Islands", "Aruba", "Curacao"},
	FormableButton = {
		ButtonName = "Manifest Southern destiny!",
		ButtonDescription = "During the American Civil War our predecessors proposed for our nation to rule over the American Continent. Now, together we make that proposal a reality!",
	},
},

{
	FormableName = "Austrian Empire",
	CountriesCanForm = {"Austria"},
	RequiredCountries = {"Austria", "Carpathian Rus", "Croatia", "Czech Republic", "Friuli", "Hungary", "Lombardy", "Slovakia", "Slovenia", "Transylvania", "Trieste", "Venetia", "Vojvodina"},
	RequiredTiles = {"Poland.012", "Poland.011", "Ukraine.033", "Ukraine.035", "Ukraine.037", "Ukraine.038", "Ukraine.034"},
	ExclusiveFormables = {"Austro-Hungarian Empire"},
	FormableButton = {
		ButtonName = "Restore the Österreich",
		ButtonDescription = "The combined strength of the Habsburg realms once brought order to Central Europe, holding back the tides of the vicious Napoleon and barbaric Tsar. The time has come to show the childish 'emperors' of the modern world what it truly means to hold dominion over the European continent.",
	},
	
	CustomAlert = {
		Title = "The Habsburg Restoration",
		Desc = "Before its dissolution into the Dual Monarchy, the Austrian Empire, though only reigning for six decades, rivaled the strength of its Napoleonic and Russian counterparts. Thought long gone with the nation's fall from grace, the Habsburg lineage has defied the odds and risen once more as a phoenix from the ashes of war in Central Europe.",
		Button = "All the World is subject to Austria.",
	},
	
	AddModifiers = {
		["Indivisibly and Inseparably"] = {
			Length = -1,
		},
	},
	CustomAttributes = { 
		["Stability_Gain"] = 10, 
		["Rename_Cities"] = [[
            [
            ["Alba Lulia", "Karlsburg"],
            ["Baia Mare", "Frauenbach"],
            ["Banská Bystrica", "Neusohl"],
            ["Bergamo", "Wälsch-Bergen"],
            ["Bistrița", "Bistritz"],
            ["Bolzano", "Bolzen"],
            ["Bratislava", "Pressburg"],
            ["Brașov", "Kronstadt"],
            ["Brno", "Brünn"],
            ["Budapest", "Buda"],
            ["Békéscsaba", "Tschabe"],
            ["Celje", "Cilli"],
            ["Chernivtsi", "Czernowitz"],
            ["Cluj-Napoca", "Klausenburg"],
            ["Debrecen", "Debrezin"],
            ["Deva", "Diemrich"],
            ["Drobeta Turnu-Severin", "Turnu-Severin"],
            ["Drohobych", "Drohobytsch"],
            ["Dubrovnik", "Ragusa"],
            ["Eger", "Erlau"],
            ["Győr", "Raab"],
            ["Hradec Králové", "Königgrätz"],
            ["Ivano-Frankivsk", "Stanislau"],
            ["Jihlava", "Iglau"],
            ["Kaposvár", "Kopisch"],
            ["Karlovac", "Karlstadt"],
            ["Kecskemét", "Ketschkemet"],
            ["Koper", "Gafers"],
            ["Košice", "Kaschau"],
            ["Kraków", "Krakau"],
            ["Liberec", "Reichenberg"],
            ["Ljubljana", "Laibach"],
            ["Lviv", "Lemberg"],
            ["Lvov", "Lemberg"],
            ["Maribor", "Marburg an der Drau"],
            ["Miercurea Ciuc", "Szeklerburg"],
            ["Milan", "Mailand"],
            ["Miskolc", "Mischkolz"],
            ["Novi Sad", "Neusatz"],
            ["Novo Mesto", "Neustadtl"],
            ["Nyíregyháza", "Birkenkirchen"],
            ["Olomouc", "Olmütz"],
            ["Oradea", "Großwardein"],
            ["Osijek", "Esseg"],
            ["Ostrava", "Ostrau"],
            ["Pardubice", "Pardubitz"],
            ["Piatra-Neamt", "Kreuzburg an der Bistritz"],
            ["Pizen", "Pilsen"],
            ["Prague", "Prag"],
            ["Prešov", "Preschau"],
            ["Pula", "Pola"],
            ["Pécs", "Fünfkirchen"],
            ["Reșița", "Reschitz"],
            ["Rijeka", "Sankt Veit an der Flaum"],
            ["Salgótarján", "Schalgau"],
            ["Satu Mare", "Sathmar"],
            ["Sfintu-Gheorghe", "Sankt Georgen"],
            ["Sibiu", "Hermannstadt"],
            ["Slavonski Brod", "Brood"],
            ["Split", "Spalato"],
            ["Subotica", "Maria-Theresiopel"],
            ["Szeged", "Segedin"],
            ["Szekszárd", "Sechshard"],
            ["Szolnok", "Zolnock"],
            ["Szombathely", "Steinamanger"],
            ["Székesfehérvár", "Stuhlweißenburg"],
            ["Tatabánya", "Totiserkolonie"],
            ["Ternopil", "Tarnopol"],
            ["Timișoara", "Temeschburg"],
            ["Trento", "Trient"],
            ["Trieste", "Triest"],
            ["Trnava", "Tyrnau"],
            ["Târgu Jiu", "Tergoschwyl"],
            ["Târgu Mureș", "Neumarkt am Mieresch"],
            ["Udine", "Weiden"],
            ["Usti nad Labem", "Aussig"],
            ["Uzhgorod", "Ungwar"],
            ["Venice", "Venedig"],
            ["Verona", "Wälsch-Bern"],
            ["Veszprém", "Weissbrunn"],
            ["Vác", "Waitzen"],
            ["Zadar", "Zara"],
            ["Zagreb", "Agram"],
            ["Zalaegerszeg", "Egersee"],
            ["Zalău", "Waltenberg"],
            ["Zlín", "Zlin"],
            ["Zrenjanin", "Großbetschkerek"],
            ["Zvolen", "Altsohl"],
            ["České Budějovice", "Budweis"],
            ["Šibenik", "Sebenico"],
            ["Žilina", "Sillein"],
            ]
        ]],
	},
	Demonym = "Austrian",
},
--[[ OLD AUSTRIAN EMPIRE
{
	FormableName = "Austrian Empire",
	CountriesCanForm = {"Austria"},
	RequiredCountries = {"Austria", "Czech Republic", "Slovakia", "Slovenia", "Croatia", "Hungary", "Romania"},
	ExclusiveFormables = {"Austro-Hungarian Empire"},
	FormableButton = {
		ButtonName = "Instate nationwide unity and a new administrative system.",
		ButtonDescription = "The Austrian Empire was one of the vast powers of Europe, holding regions extending from the Danube River to the Carpathian Mountains. Now that our power is solidified we can enact policies to make our empire stable and build a promising destiny for our state.",
	},
	AddModifiers = {
		["Indivisibly and Inseparably"] = {
			Length = -1
		},
	},
},
]]
{
	FormableName = "Maphilindo Confederation",
	CountriesCanForm = {"Philippines", "Malaysia"},
	RequiredCountries = {"Philippines", "Malaysia", "Indonesia"},
	FormableButton = {
		ButtonName = "Forge a united Malay State",
		ButtonDescription = "We have now fullfilled the idea of Jose Rizal's unified Malay state. No longer we are separated in this time!",
	},
},

{
	FormableName = "Mali Empire",
	CountriesCanForm = {"Mali"},
	RequiredCountries = {"Mali", "Senegal", "Mauritania", "Gambia", "Guinea"},
	ExclusiveFormables = {"Songhai Empire"},
	FormableButton = {
		ButtonName = "Restore Mansa Musa's Empire!",
		ButtonDescription = "The Mali Empire was a dominant power in trade whilst also holding the richest man ever, Mansa Musa whose wealth did not go to waste and instead helped to further develop Mali and convert more of it to Islam, now we shall restore his empire for the further prosperity of Mali!",
	},
	AddModifiers = {
		["The Trans-Saharan Routes"] = {
			Length = -1
		},
	},
},
--===========================

{
	Removed = true,
	FormableName = "Xin Dynasty",
	CountriesCanForm = {"Shanxi"},
	RequiredCountries = {"Shanxi", "Guangxi", "Anhui", "North Korea", "Fujian", "Manchuria", "Hong Kong", "Macau"},
	FormableButton = {
		ButtonName = "Bring back Wang Mang's dynasty!",
		ButtonDescription = "The Xin Dynasty may have been short lived, but we can bring back its glory in the modern age and show the potential it could have had!",
	},
	
	AddModifiers = {
		["Upholding the Mandate of Heaven"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Yuan Dynasty",
	CountriesCanForm = {"Mongolia"},
	RequiredCountries = {"Mongolia", "China", "Hong Kong", "Macau", "North Korea", "South Korea"},
	FormableButton = {
		ButtonName = "Restore our dominion over China",
		ButtonDescription = "The Yuan Dynasty's gradual collapse crippled our ability to exert any force over East Asia, and sealed our fate politically. After almost 800 years since our territorial peak, we should pursue rebuilding the Yuan and cementing our dominance over Asia!",
	},

	AddModifiers = {
		["Upholding the Mandate of Heaven"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Lan Xang",
	CountriesCanForm = {"Laos"},
	RequiredCountries = {"Laos", "Thailand"},
	FormableButton = {
		ButtonName = "Recall the cultural memory of the great kingdom!",
		ButtonDescription = "The Kingdom of Lan Xang, once one of the largest states in Southeast Asia, and the state that shaped our modern national and cultural identity, has been all but forgotten. Let's show the world our proud heritage and restore the great empire!",
	},
},

{
	FormableName = "Alam Melayu",
	CountriesCanForm = {"Malaysia", "Indonesia", "Philippines", "Timor-Leste", "Singapore", "Brunei", "Madagascar", "Solomon Islands", "Samoa", "Guam", "Fiji", "French Polynesia", "Kiribati", "New Caledonia", "Tonga", "Marshall Islands", "American Samoa", "Palau", "Vanuatu", "Cook Islands"},
	RequiredCountries = {"Malaysia", "Indonesia", "Philippines", "Timor-Leste", "Singapore", "Brunei", "Madagascar", "Solomon Islands", "Samoa", "Guam", "Fiji", "French Polynesia", "Kiribati", "New Caledonia", "Tonga", "Marshall Islands", "American Samoa", "Palau", "Vanuatu", "Cook Islands", "Taiwan", "New Zealand", "Thailand", "Papua New Guinea", "Cambodia", "Vietnam", "Sri Lanka"},
	FormableButton = {
		ButtonName = "Unite the Malay race!",
		ButtonDescription = "For centuries, the Malay race, which some may refer to as Austronesians, has been divided among three continents: Asia, Oceania, and Africa. Unification has been attempted and failed, but now we shall unite the Malay race under one flag, under one nation, as Alam Melayu.",
	},
},

{
	FormableName = "Eweland",
	CountriesCanForm = {"Togo"},
	RequiredCountries = {"Togo", "Ghana", "Benin"},
	FormableButton = {
		ButtonName = "Reunite the Ewe peoples!",
		ButtonDescription = "Several years ago, our land was divided up by European colonizers. Now we shall take back our homes that the colonizers had taken from us!",
	},
},
--6 / 13 / 2022
{
	FormableName = "Angevin Empire",
	CountriesCanForm = {"United Kingdom"},
	RequiredCountries = {"United Kingdom", "France", "Ireland"},
	ExclusiveFormables = {"Franco-British Union"},
	FormableButton = {
		ButtonName = "Restore our former lands in the name of the Angevin kings",
		ButtonDescription = "We have finally avenged the Angevin kings by bringing our adversaries into submission under the House of Plantagenet, reuniting their former territories under a single crown and extending our influence beyond the Isles. Now is the time to reinforce our position and complete our resurgence into one of the foremost powers of this era!",
	},

	CustomAlert = {
		Title = "The Reawakening of Angevin Rule",
		Desc = "Not since centuries ago have the two crowns of France and England been united. With the resurgence of the House of Plantagenet, the new Angevin kings have stepped foot on French soil with their authority now stretching from the British Isles to the depths of France, the mark of a new age!",
		Button = "A new beginning",
	},
},

{
	FormableName = "Afsharid Dynasty",
	CountriesCanForm = {"Azerbaijan"},
	RequiredCountries = {"Iran", "Turkmenistan", "Tajikistan", "Afghanistan", "Armenia", "Azerbaijan", "Georgia", "United Arab Emirates", "Qatar", "Bahrain", "Iraq", "Oman", "Uzbekistan", "Kuwait"},
	--ExclusiveFormables = {"Safavid Empire"},

	FormableButton = {
		ButtonName = "Restore Nader Shah's legacy of Turkoman dominance in the Iranian world!",
		ButtonDescription = "The Afsharids were a founding stone for our modern national identity and briefly showed the power of our people and nation to the world! We shall take back our title as Shahs and show once again to the world that we are a proud people and that our nation shall be important again!",
	},

	CustomAlert = {
		Title = "Return of the Afshars",
		Desc = "After centuries since the dynasty collapsed, the Turkoman Afshars have retaken their title as Shahs of Iran once again.",
		Button = "The Afshars have arisen again.",
	},
},

{
	FormableName = "Goguryeo",
	CountriesCanForm = {"North Korea"},
	RequiredCountries = {"North Korea", "South Korea", "Manchuria"},

	FormableButton = {
		ButtonName = "Restore our domination of East Asia!",
		ButtonDescription = "The greatest peak of Korean power, Goguryeo dominated not only the Korean peninsula but the Chinese mainland as well, requiring a Sino-Korean alliance to finally put it down, but after years of strife, the Kingdom is reborn! ",
	},
},



{
	FormableName = "Pacific States of America",
	CountriesCanForm = {"Cascadia"},
	RequiredCountries = {"Alaska", "California", "Cascadia"},

	FormableButton = {
		ButtonName = "Unite the Western Frontier!",
		ButtonDescription = "Since the early days of the United States, a lingering sense of regionalism or independentism had subsumed the Pacific states. From the early Oregon settlers, to the State of Jefferson; these movements emerged but alas, they all failed, until Cascadia. We, the people of Cascadia, shall unite the West Coast, and forge a new Pacific Empire, destined by Divine Providence like our predecessors before us.",
	},

	CustomAlert = {
		Title = "The Western Frontier",
		Desc = "Numerous individuals during the early days of the United States had envisioned a Pacific Republic spanning the American West Coast. These visions re-manifested themselves into the minds of the people of the Pacific States, thus causing a sense of regionalism in the area. Although it is debatable whether they actually wanted one, the former bioregional movement now turned independent state, Cascadia, have realized these ambitions, and have proclaimed a new republic supposedly blessed by Divine Providence itself.",
		Button = "The West was now one...",
	},
},

{
	FormableName = "Promised Land of Zion",
	CountriesCanForm = {"Israel"},
	RequiredCountries = {"Israel", "Lebanon", "Jordan", "Syria", "Egypt"},

	FormableButton = {
		ButtonName = "Reclaim the lost territory bestowed upon us by God",
		ButtonDescription = "Realize the vision of Theodor Herzl and develop a Greater Jewish state to live at last as free men on our own soil, and die peacefully in our own homes. The world will be freed by our liberty, enriched by our wealth, magnified by our greatness. Whatever we attempt to accomplish for our own welfare, we will react powerfully and beneficially for the good of humanity in solidarity from the entrance of Hamath unto the brook of Egypt",
	},

	CustomAlert = {
		Title = "Fulfillment of the Abhramic Covenant",
		Desc = "Once supposedly promised to the Israelites and their descendants, was the Promised Land, from the entrance of Hamath unto the brook of Egypt. Even after millennia, the vision has been kept alive, and even with the creation of the Israeli state, it was not enough. Only the fulfillment of the covenant would bring salvation and liberation to the people. The fires have been lit, and out of the ashes rises the state of Zion.",
		Button = "From the entrance of Hamath unto the brook of Egypt!",
	},
},

{
	FormableName = "Kingdom of Georgia",
	CountriesCanForm = {"Georgia"},
	RequiredCountries = {"Georgia", "Armenia", "Azerbaijan"},
	ExclusiveFormables = {"Transcaucasia"},

	FormableButton = {
		ButtonName = "Reconquer the Caucasian region under rightful Georgian rule!",
		ButtonDescription = "The Kingdom of Georgia, A formidable empire ruling the diverse Caucasian Mountains. In the name of the ancestors and founders of our great nation let us reinstate our former glory under David IV and lead a second golden age in Georgian history!"
	},

	CustomAlert = {
		Title = "The return of the Kingdom of Georgia",
		Desc = "after centuries since it's disintegration the Kingdom of Georgia has returned stronger than ever.",
		Button = "The second golden age may begin.",
	},
},

{
	FormableName = "Polynesian Confederation",
	CountriesCanForm = {"Hawaii"},
	RequiredCountries = {"American Samoa", "Cook Islands", "French Polynesia", "Hawaii", "New Zealand", "Samoa", "Tonga"},

	FormableButton = {
		ButtonName = "Unite Polynesia under our sceptre!",
		ButtonDescription = "Proposed by the Merrie Monarch himself, King Kalakaua, the Polynesian Confederation would've united the monarchies of Polynesia, but sadly, at the point of a bayonet, the reformists overthrew the monarchy, leading to its annexation at the hands of the Americans. What Kalakaua had tried for his people during his reign shall not be forgotten, and with our independence and Polynesia in our reach, we shall preside over these new lands, under a new Polynesian Confederation!",
	},

	CustomAlert = {
		Title = "The Polynesian Alliance",
		Desc = "After the reformists overthrew the Hawaiian monarchy, not only did it cause its annexation into the United States, but also the end of the Polynesian Confederation; a proposed confederation of numerous Polynesian kingdoms. Although historically only achieving one with Samoa, the Hawaiians have resurrected this forgotten proposal, and united Polynesia under their rule.",
		Button = "Perpetuated under righteousness...",
	},

	--[[
	CustomAttributes = {
		["Stability_Gain"] = 5,
	}]]
},



{
	Removed = true,
	FormableName = "Butalmapu",
	CountriesCanForm = {"Wallmapu"},
	RequiredCountries = {"Wallmapu", "Falkland Islands", "Patagonia"},
	FormableButton = {
		ButtonName = "Reclaim our ancestral lands!",
		ButtonDescription = "The Spanish conquistadors attempted to subjugate the Mapuche, but we defied their rule and a temporary peace was instated before we were overrun by European settlers. After centuries of our struggle for survival, these imperialists began to lose authority over our homeland, allowing us to proclaim a nation in which our people can prosper in peace with our rightful lands restored.",
	},

	CustomAlert = {
		Title = "The Bringer of Dawn",
		Desc = "When the Mapuche rebelled in Araucania, they were quickly crushed, resulting in the worsened oppression and slaughtering of their people. Nevertheless, they've persisted in their fight and have now declared their own nation, resettling the old lands lost to the imperialists and proving that the martyrs' efforts were not for naught.",
		Button = "A blow to the imperialists...",
	},
},

{
	FormableName = "Celtic League",
	CountriesCanForm = {"Brittany", "Cornwall", "Galicia", "Ireland", "Isle Of Man", "Scotland", "Wales"},
	RequiredCountries = {"Brittany", "Cornwall", "Galicia", "Ireland", "Isle Of Man", "Scotland", "Wales"},

	FormableButton = {
		ButtonName = "Unite the Celtic peoples",
		ButtonDescription = "For centuries before the sudden, meteoric rise of the Roman Empire, the Celtic tribes were some of the most dominant, fearsome forces in Europe. It was only through their tribal disunity that allowed the pitiful Romans to storm over Western Europe. As their once 'cultured' lands fall to ruin, however, the time has come for us to unite the Gaelic and Brythonic peoples under one Celtic banner!",
	},

	CustomAlert = {
		Title = "The Celtic Unification",
		Desc = "With their loose confederations spanning from the Rock of Gibraltar to the northern reaches of the British Isles, they conducted brutal raids on the Roman Republic, attempting to ravage their rightful lands; to no avail. It took only eight years to bring Celtic land under Roman dominion, but now, as the world the Romans sought begins to tear itself apart, the Celtic nations have united, bringing their scourge to Europe once more.",
		Button = "Aisteach.",
	},
},

{
	FormableName = "Crown of Aragon",
	CountriesCanForm = {"Aragon"},
	RequiredCountries = {"Aragon", "Andorra", "Catalonia", "Corsica", "Malta", "Naples", "Sardinia", "Sicily", "Valencia"},
	FormableButton = {
		ButtonName = "Reverse the Spanish Succession",
		ButtonDescription = "At its centuries-long peak, the Crown of Aragon held dominion over the Mediterranean Sea from Catalonia to Crete, bringing economic prosperity to their lands before being left to subjugation and dismantlement. Now, with the Castilian nation in tatters, the time has come for us to restore the Crown of Aragon.",
	},
	CustomAlert = {
		Title = "Corona d'Aragón",
		Desc = "Even before its personal union with the Crown of Castile, the kingdom stretched across the Mediterranean Sea, bringing prosperity to the war-ravaged lands of Iberia and Italy before being annexed by that very same crown. As Spain itself is torn apart by these wars in the modern day, the Aragonese have declared independence and united the lands of old, once again determined to bring prosperity to the crumbling Iberia.",
		Button = "Time to slay the second Spain...",
	},
},

{
	FormableName = "Kingdom of Sardinia",
	CountriesCanForm = {"Savoy", "Sardinia"},
	RequiredCountries = {"Savoy", "Sardinia", "Monaco", "Liguria", "Lombardy", "Piedmont", "Valdosta"},
	FormableButton = {
		ButtonName = "Restore the House of Savoy",
		ButtonDescription = "With the aftermath of the Napoleonic Wars, the peoples of Savoy once again took dominion over their old lands, rejoining the lands of Savoy and Sardinia, before uniting Italy in only a decade. With the modern nation brought falling to ruin, we must look to our prosperous origins and restore our former glory as one of Italy's most formidable kingdoms!",
	},

	CustomAlert = {
		Title = "The Rise of the Savoyards",
		Desc = "The Savoyard revolutionaries fought for decades against Austria and France until finally achieving a fully unified Italy years later. Now, as the modern Republic crumbles, the state of Savoy have broken their French chains, with ambitions of restoring the Italian peninsula to its former glory.",
		Button = "Time for another Risorgimento...",
	},
},

{
	FormableName = "Kingdom of the Two Sicilies",
	CountriesCanForm = {"Naples", "Sicily"},
	RequiredCountries = {"Naples", "Sicily"},
	FormableButton = {
		ButtonName = "Unite the Kingdoms of Sicily",
		ButtonDescription = "The Two Sicilies were able to maintain their independence for years until rebellions laid the two kingdoms low under their new, undesired Sardinian king. Now, as Italy again fractures into those old warring states, the time has come for us to unite the old kingdoms, and restore the hegemonic monarchy of the Two Sicilies!",
	},

	CustomAlert = {
		Title = "Regno delle Due Sicilie",
		Desc = " The first truly Italian monarchy in the region, they held dominion over Southern Italy for nearly five decades before being brought down at the hands of the Risorgimento. Now, as this Risorgimento is reversed, however, the people of the old kingdom have reunited, raising the crest of a restored Kingdom of the Two Sicilies.",
		Button = "Al Re...",
	},
},

{
	FormableName = "Padania",
	CountriesCanForm = {"Emilia", "Friuli", "Liguria", "Lombardy", "Piedmont", "Romagna", "Trieste", "Tuscany", "Valdosta", "Venetia"},
	RequiredCountries = {"Emilia", "Friuli", "Liguria", "Lombardy", "Piedmont", "Romagna", "Trieste", "Tuscany", "Valdosta", "Venetia"},
	FormableButton = {
		ButtonName = "Unite Val Padana",
		ButtonDescription = "The identity of the North Italians has remained strong throughout the centuries, from the numerous duchies and kingdoms to the Lombard League. The result of the Risorgimento has left our people subject to the rule of leaders from the south. It is imperative for us to revive the Northern identity once and for all, the Sun of the Alps will shine above Italia once more.",
	},

	CustomAlert = {
		Title = "The Sun of the Alps",
		Desc = "Separatist movements had rocked Italy to its core, with the idea of a Padanian state encompassing Northern Italy being among one of the many ideas that had arisen from the leftovers of the Italian state. The Sun of the Alps has risen, paying homage to the legacy and the continuity of the Padanian identity.",
		Button = "Their lives, fortunes, and sacred honour.",
	},
},


{
	FormableName = "Republic of Genoa",
	CountriesCanForm = {"Liguria", "Monaco"},
	RequiredCountries = {"Liguria", "Monaco", "Corsica", "Crimea", "Sardinia"},
	FormableButton = {
		ButtonName = "Reform the maritime trade republic",
		ButtonDescription = "The Republic of Genoa was one of the greatest maritime republics. Restore the Grimaldi Dynasty rule over Genoa from the last standing Genoese-founded state of Monaco.",
	},

	CustomAlert = {
		Title = "The Reestablishment of Genoese Oversea Colonies",
		Desc = "With Influence over the continental Market and trade restored. Genoa will restore its status as a maritime power again and rebuild the navy that once ruled the Mediterranean.",
		Button = "Genoa's continental influence restored",
	},

	AddModifiers = {
		["The Maritime Republics"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Republic of Venice",
	CountriesCanForm = {"Venetia"},
	RequiredCountries = {"Venetia", "Croatia", "Friuli", "Lombardy"},
	FormableButton = {
		ButtonName = "Restore La Repùblega",
		ButtonDescription = "Throughout the Middle Ages, and during the height of the Renaissance, the Republic of Venice was one of the most influential thalassocratic nations in the whole of the Mediterranean Sea. As the modern Italian nation reaps the chaos it has sown, the time has come for us to reunite the lands of our thalassocratic republic and raise the banner of Saint Mark over the shores of the Adriatic once more!",
	},

	CustomAlert = {
		Title = "Serenìsima Repùblega Vèneta",
		Desc = "During the Age of Exploration, nations scrambled and fought over the riches of the New World, few even bothering with the vast reaches of the Far East; that is, with the exception of the Republic of Venice. With the collapse of Italy, however, the Venetians have reunited their old territories, raising the Lion of Saint Mark with ambitions of dominating the Mediterranean Sea once again.",
		Button = "Pax Tibi Marce...",
	},

	AddModifiers = {
		["The Maritime Republics"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Union of Saint Martin",
	CountriesCanForm = {"Saint Martin", "Sint Maarten"},
	RequiredCountries = {"Saint Martin", "Sint Maarten"},
	FormableButton = {
		ButtonName = "Unite the Island of Saint Martin",
		ButtonDescription = "The island of Saint Martin has long been divided by the Treaty of Concordia. However, we have always had a sense of unity, and today we shall formally unite the island once and for all!",
	},

	CustomAlert = {
		Title = "Unification of Saint Martin",
		Desc = "The divided island of Saint Martin has decided to unite under one administration.",
		Button = "One island, one people, one destiny",
	},

	CustomAttributes = {
		["Stability_Gain"] = 4,
	}
},






{
	FormableName = "Adal Sultanate",
	CountriesCanForm = {"Somaliland"},
	RequiredCountries = {"Somaliland", "Afar", "Djibouti", "Ogaden", "Tigray"},
	FormableButton = {
		ButtonName = "Raise the Three Banners of Adal",
		ButtonDescription = "With the collapse of the Ifat Sultanate, the future of our lands was uncertain; until the rise of the Adal Sultanate. Feared for their military prowess and masterful traders, they brought a golden age to our homeland. However, the sultanate was destroyed by the Portuguese and Ethiopians, crushing our dreams of hegemony with it. With our lands finally retaken, we can now reclaim Adal's prestigious titles and continue our domination over the Horn of Africa!",
	},

	CustomAlert = {
		Title = "Havilah",
		Desc = "With the rise of the Adal Sultanate, it soon faced hostilities from the west in the form of war with Abyssinia. Alongside the Portuguese, Abyssinia shaped the future of the region in favor of Adal, causing its end in 1577. Recently, however, the Somalis of Somaliland have conquered much of Ethiopia, taking large swaths of land and proclaiming the restoration of the Adal Sultanate.",
		Button = "A new swarm sweeps across East Africa",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Banda Oriental",
	CountriesCanForm = {"Uruguay"},
	RequiredCountries = {"Uruguay", "Sul"},
	FormableButton = {
		ButtonName = "Unite the Rio Uruguay!",
		ButtonDescription = "Movements for a united Banda Oriental have been apparent throughout history. From the Thirty-Three Orientals to the Riograndense Republic, these movements to unite the other shore will not be in vain. Let us unite the Eastern Bank once again, no longer as a rebel province, or a colony, but rather, the Banda Oriental of the Río Uruguay.",
	},

	CustomAlert = {
		Title = "The River of Painted Birds",
		Desc = "With the independence of Uruguay in 1828, the Banda Oriental became divided between Brazil and Uruguay. Although apart, the Uruguayans made few attempts to unite with Sul, usually failing until now. Recently, this proposed union has been invoked yet again, thus uniting the Rio Uruguay under the banner of a new republic.",
		Button = "Libertad, libertad, orientales...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Danish Empire",
	CountriesCanForm = {"Denmark"},
	RequiredCountries = {"Denmark", "Faroe Islands", "Greenland", "Iceland", "Norway", "United States Virgin Islands"},
	ExclusiveFormables = {"Kalmar Union"},
	FormableButton = {
		ButtonName = "Reinstate the Danish Realm",
		ButtonDescription = "Despite often not having a direct hand in European affairs, remaining neutral when it came to the conflicts of the continent, the peoples of Scandinavia often established vast colonial empires just as their European brethren; such as the Danish Empire. Stretching down to the shores of Ghana, the Danish Realm brought our true rule of the waves from the North Sea to the Gulf of Guinea, all the while bringing wealth and prestige back to our nation. With the old realm restored, the time has come to once more show the world what the Danish are truly capable of.",
	},

	CustomAlert = {
		Title = "Danske Kolonier",
		Desc = "Although the Scandinavian nations had remained neutral for centuries, focusing on internal development rather than the petty squabbles of the European continent, they managed to maintain prosperous colonial empires of their own; one of these being the Danish Empire. Helmed by Christian IV, the Danish Empire brought the influence of the Danes down to the Gulf of Guinea, gaining wealth and the title of its own colonial empire back home. Although decolonization has long passed, the Danish Empire has suddenly reemerged, seeking to bring forth a new trend in Europe; recolonization.",
		Button = "Hail, Christian.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},


{
	FormableName = "Fatimid Caliphate",
	CountriesCanForm = {"Kabylia"},
	RequiredCountries = {"Algeria", "Egypt", "Israel", "Jordan", "Lebanon", "Libya", "Malta", "Sicily", "Syria", "Tunisia"},
	FormableButton = {
		ButtonName = "Spread the Ismaili revolution!",
		ButtonDescription ="Rising from the ashes of the fading Abbasids, our leader Abdallah sought to rule the Islamic community, facing opposition in the Muslim Ummah, with our struggle for the rule of the Caliphate never-ending. Now the Muslim world is in chaos while the followers of Ismaili rally under our new Mahdi; it has come the time to unite the Muslims into one Ummah under our beliefs.",
	},

	CustomAlert = {
		Title = "The resurgence of Ismailism",
		Desc = "Even in its early years, the Muslim community faced several divisions over trivial things. However, despite being separate even in modern times, a reinvigorated sect has gained popularity in all parts of the Islamic world with their goals to establish a united Ummah with the core teachings of Ismail.",
		Button = "Another idea that will fail",
	}, 

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},

	AddModifiers = {
		["Age of the Caliphs"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Gallic Empire",
	CountriesCanForm = {"Brittany"},
	RequiredCountries = {"Brittany", "Andorra", "Belgium", "France", "Gibraltar", "Luxembourg", "Netherlands", "Portugal", "Spain", "United Kingdom"},
	FormableButton = {
		ButtonName = "Reestablish Gallic Rule over Western Europe",
		ButtonDescription = "With corruption running rampant throughout its government, and even one of its emperors being captured by the forces of the Sassanids, it became clear that the Roman Empire was unfit to govern Gaul; that responsibility should have fallen only on the Gallic Empire. Under the leadership of Postumus, we seceded from the Romans, establishing uncontested rule over Western Europe until the Romans were forced to split apart to govern their empire. With the old lands of Gaul under our control once more, the time has come to, at long last, restore Gallic hegemony to Europe.",
	},

	CustomAlert = {
		Title = "The Crisis of the Twenty-First Century",
		Desc = "With continued wars against the Sassanid Empire leading to both the rise of corruption and the abduction of one of their emperors, it had become clear that the Roman Empire no longer had control over its frontiers; namely, the West, under the Gallic Empire. Seceding from the Romans, the Gallic Empire immediately established itself as the powerhouse of Western Europe, facing off against the Romans for a decade until finally being restored to the Empire. With its sudden restoration in the modern era, though, it would appear that the Celts are more than happy to take up their lost legacy.",
		Button = "Ave, Postumus.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Grand Duchy of Lithuania",
	CountriesCanForm = {"Lithuania"},
	RequiredCountries = {"Lithuania", "Belarus", "Ukraine"},
	ExclusiveFormables = {"Polish-Lithuanian Commonwealth"},
	FormableButton = {
		ButtonName = "Raise the Vytis",
		ButtonDescription = "Although the Middle Ages have generally been regarded as a period of chaos, with petty kings and princes battling over the remnants of the old Roman Empire, several nations instead stood as bulwarks of stability on the fraught continent, one of these being the Grand Duchy of Lithuania. For over five centuries, the nation reigned over Eastern Europe, rivaling even the expanding Muscovites before its federation into, and neglect by, the Polish-Lithuanian Commonwealth. With their old lands restored, though, the time has come to revive the Grand Duchy once more; this time, for good.",
	},

	CustomAlert = {
		Title = "Return of the House Kęstutis",
		Desc = "Although the nation rapidly fell into disarray following its integration into the Polish-Lithuanian Commonwealth, as the largest nation in Europe at its peak, the Grand Duchy of Lithuania has nothing less than a reputable history. Stretching from the shores of the Baltic to the Black Seas, the nation persisted for over five centuries, maintaining its own identity despite its subjugation by the Polish, and constant conflicts with the Muscovites. Though the modern nation had fallen into disarray, they have raised the flag of the old Grand Duchy, set on restoring their old, forgotten glory.",
		Button = "From the Baltic to the Black.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Guine e Cabo Verde",
	CountriesCanForm = {"Cabo Verde", "Guinea-Bissau"},
	RequiredCountries = {"Cabo Verde", "Guinea-Bissau"},
	FormableButton = {
		ButtonName = "Revitalize the Carnation Revolution",
		ButtonDescription = "Under the oppression of the Portuguese Estado Novo regime, one of the most ruthless colonial governments remaining after the Second World War, a new unity developed among their colonies in opposition to the corporate state; namely, among Guinea-Bissau and Cabo Verde. The last remnants of the Portuguese Empire on the African continent, the two nations fought a lengthy revolution against the regime, gaining their independence together; however, as separate nations. After decades apart, however, the time has come to achieve our true goal, and unite our nations under one banner.",
	},

	CustomAlert = {
		Title = "Unidade e Luta",
		Desc = "Despite the vast resources that each nation held, the decolonization of most European empires came through relatively peaceful processes, with control of the government transferring peacefully to the locals- though Guinea-Bissau and Cabo Verde were forced to resort to other means. Over a conflict described as a ‘Portuguese Vietnam,' the nations waged a lengthy war against their colonial overlord, finally gaining independence in 1974 and 1975. Now, decades after their independence, it seems their initial goal has finally been achieved, with a single flag waving over both united nations.",
		Button = "For Cabral",
	},

	CustomAttributes = {
		["Stability_Gain"] = 4, 
	},
}, 

{
	FormableName = "Khedivate of Egypt",
	CountriesCanForm = {"Egypt"},
	RequiredCountries = {"Egypt", "Eritrea", "Israel", "Jordan", "Lebanon", "Saudi Arabia", "South Sudan", "Sudan", "Syria"},
	ExclusiveFormables = {"Mamluk Sultanate"},
	FormableButton = {
		ButtonName = "Restore the Alawiyya Dynasty",
		ButtonDescription = "Not since the pharaohs of the ancient era had Egypt ever held its ground as a force to be reckoned with. With Muhammad Ali leading Egypt onto the path of modernization all those centuries ago, it is time for us to honor his wishes. Let us carve a new path for Egypt, one nation under one khedive.",
	},

	CustomAlert = {
		Title = "The Second Oriental Crisis",
		Desc = "The seizure of Egypt by Muhammad Ali brought along groundbreaking reforms, with this reborn Egyptian nation opposing the Ottoman dominance in the region and even the Great Powers of Europe. Although Egypt's potential fizzled out with the intervention of Europe, the Egyptian people have come back with a vengeance. The armies of Egypt once again march across the sands of the Middle East.",
		Button = "Incredible.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Kingdom of Hungary",
	CountriesCanForm = {"Hungary"},
	RequiredCountries = {"Hungary", "Bosnia And Herzegovina", "Carpathian Rus", "Croatia", "Slovakia", "Transylvania"},
	ExclusiveFormables = {"Austro-Hungarian Empire"},
	FormableButton = {
		ButtonName = "Reverse the Treaty of Trianon",
		ButtonDescription = "As the Ottoman Empire began its active assault on the European continent, pushing through the Balkans to once more spread chaos throughout the region, it seemed that none could stop them; none except for the Kingdom of Hungary. Extending from the Carpathians to the Adriatic, the Kingdom of Hungary successfully repelled the Ottomans for centuries, only laid low by the efforts of the traitorous West following the First World War. With our old crownlands restored once more, however, the time has come to restore our old glory and once more bring stability to the Balkans.",
	},

	CustomAlert = {
		Title = "Magyar Királyság",
		Desc = "With the Byzantine Empire on the verge of collapse, its territories even within its heartland beginning to secede and break away from what remained of its vast Empire, new forces emerged to bring stability to its old lands; one of these being the Kingdom of Hungary. Standing off against both the Holy Roman Empire and the Byzantines, the Hungarians brought order to the Balkans, all the while maintaining prosperity until their union with Austria. With the Kingdom reemerging independent in the modern world, though, we are left to see whether they shall also return stability to the fraught region.",
		Button = "The Black Army marches again...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Kingdom of Lunda",
	CountriesCanForm = {"Lunda-Tchokwe"},
	RequiredCountries = {"Lunda-Tchokwe", "Barotseland", "Katanga"},
	FormableButton = {
		ButtonName = "Reinstate the Lunda Confederation",
		ButtonDescription = "As European powers began to carve into the nations of the African continent, seeking to exploit its people and resources for themselves, very few were able to resist their superior numbers and technology; one of these being the Kingdom of Lunda. Utilizing old weaponry from past European excursions, the old Lunda established a fearsome presence in Central Africa, holding the region for over two centuries before the succession of the Chokwe. With both of our peoples under one banner, however, the time has come to unite the old kingdom and dominate Central Africa once more!",
	},

	CustomAlert = {
		Title = "Return of the Mwane-a-Yamvu",
		Desc = "Throughout the continent's history, many different kingdoms and states have risen and fallen, each attempting to stake their claim to their region's vast resources, most crumbling into the chaos that preceded them; except for the Kingdom of Lunda. Established by the Lunda peoples, the old Kingdom lasted for two centuries in Central Africa, fending off both African and European invasions before its downfall to a civil conflict with the Chokwe people. With their two cultures united in the modern day, though, the old Kingdom has once again reunited, soon to restore order to the chaotic region.",
		Button = "For Lunda.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Kong Empire",
	CountriesCanForm = {"Cote d'Ivoire"},
	RequiredCountries = {"Cote d'Ivoire", "Burkina Faso"},
	FormableButton = {
		ButtonName = "Reclaim Wattara's Lost Empire",
		ButtonDescription = "Before the expansionist European empires attempted to exploit the continent for either material riches or territorial gain, unleashing devastating industrial technologies on the peoples of Africa, our ancestors ruled proudly over the Ivory Coast under the Kong Empire. Founded by the old Seku Wattara, the Kong Empire forged a prosperous nation within the region, spreading its influence throughout the coast before Kong's scorching by the French Empire. With their old lands restored, however, the time has come to restore our wealth and take our revenge on the vicious Europeans.",
	},

	CustomAlert = {
		Title = "The Kings of Kong",
		Desc = "Long before European empires had begun to slowly stake their claim to the African continent, requiring its vast material wealth to fund the industrial machine, its indigenous peoples had already beaten them to the punch under the dominion of the Kong Empire. Located within the heart of the Ivory Coast, the Kong Empire spread wealth and stability throughout the region, reigning for a century before falling to the armies of the French Empire. Once thought long destroyed, the Kong have suddenly reemerged in their old lands, no doubt intending to restore the Empire's old prosperity.",
		Button = "For Wattara.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 6, 
	},
},

{
	FormableName = "Senegambia Confederation",
	CountriesCanForm = {"Gambia", "Senegal"},
	RequiredCountries = {"Gambia", "Senegal"},
	FormableButton = {
		ButtonName = "Reunite the Senegambia Confederation",
		ButtonDescription = "Although the British and French Empires attempted to divide our cultures, placing an arbitrary border between us through the lock-and-key system, their efforts were in vain, proving our unity, not even a decade later with the Senegambia Confederation. Established to finally unite our two peoples, the Confederation put an end to their oppressive colonial systems, promoting unity and prosperity within our nations until its voluntary dissolution. With imperialists threatening to tear us apart once more, however, the time has come to unite the old Confederation; this time, permanently.",
	},

	CustomAlert = {
		Title = "The Three Fathers of Pan-Africanism",
		Desc = "With the decolonization of Africa on the horizon, and European forces seeking to cut their losses in the continent, a new form of union emerged between its nations, each seeking to declare independence as one entity from their colonizers; one of these being the Senegambia Confederation. After only seven years, the Confederation was torn apart from within, both from separatist sentiment in Casamance and from economic turmoil. With its restoration in the modern day, we can only hope that the same problems that fell its predecessor will not plague the new Senegambia.",
		Button = "For Diouf...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 4, 
	},
},

{
	FormableName = "Tamazgha",
	CountriesCanForm = {"Agadez", "Azawad", "Kabylia", "Rif"},
	RequiredCountries = {"Agadez", "Azawad", "Algeria", "Rif", "Canary Islands", "Libya", "Mauritania", "Morocco", "Tunisia"},
	ExclusiveFormables= {"Maghreb Federation", "West African Federation"},
	
	FormableButton = {
		ButtonName = "Reclaim the Lands of the Berbers",
		ButtonDescription = "Although the Arabs have come to dominate Northern Africa in modern times, with the ignorant West going so far as to call the region part of the ‘Arab World', these lands once belonged to another people; to the Berbers of Tamazgha. While we have been scattered and separated by our oppressive Arab governments, we have never forgotten our legacy, swearing one day to reclaim the lands that are rightfully ours. Now, that day has come, as with the lands of the former ‘Arab World' returned to their true Berber rulers, the time has come to restore the glory of Tamazgha to the world!",
	},

	CustomAlert = {
		Title = "Tamazɣa",
		Desc = "Although North Africa has come to be known as part of the Arab World, with the influence of the ethnicity and its religions stretching from the Middle East to the shores of Morocco, another, lesser-known people once inhabited its lands; the Berbers of Tamazgha. While native to its lands, the Berbers were forced into a state of constant revolt with the arrival of the Phoenicians, plunged into rebellions that have not ceased even in the modern day. In a surprising move, however, the Berbers have reunited their old lands, bringing the old lands of Tamazgha into the modern day.",
		Button = "For the Berbers.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "United Republic of the Comoros",
	CountriesCanForm = {"Comoros"},
	RequiredCountries = {"Comoros", "Mayotte"},
	FormableButton = {
		ButtonName = "Unite the Comoro Islands",
		ButtonDescription = "Despite the old European empires claiming to have fully decolonized the whole of the African continent, taking their wretched chains and colonial governments with them, they have never truly abandoned one region; that of the Comoro Islands. For decades, we have remained separate from our brethren in Mayotte, with their continued annexation of the island condemned by the international community, to no avail. Now, it is time to take action rather than discuss sanctions around a table; it is time to take Mayotte and declare a truly United Republic of the Comoros.",
	},

	CustomAlert = {
		Title = "Juzur al-Qomor",
		Desc = "Following the aftermath of the Second World War, and the rising tide of nationalism in the continent, the majority of European empires pulled out of Africa, leaving its regions to the governance of the people except for one; that of the Comoro Islands. For decades, despite condemnation, the French have maintained control of one of its centerpieces, Mayotte, denying full decolonization of the archipelago and the independence of the peoples within it. However, it would appear that the Comoros have taken action by force, as a military occupation has progressed into a full United Republic of the Comoros.",
		Button = "Unity of the Great Islands...",
	}, 

	CustomAttributes = {
		["Stability_Gain"] = 4, 
	},
},

{
	FormableName = "United States of Latin Africa",
	CountriesCanForm = {"Angola", "Burundi", "Cameroon", "Central African Republic", "Chad", "Democratic Republic of the Congo", "Equatorial Guinea", "Gabon", "Republic of Congo", "Rwanda", "Sao Tome And Principe"},
	RequiredCountries = {"Angola", "Burundi", "Cameroon", "Central African Republic", "Chad", "Democratic Republic of the Congo", "Equatorial Guinea", "Gabon", "Republic of Congo", "Rwanda", "Sao Tome And Principe"},
	FormableButton = {
		ButtonName = "Unite the Latin Peoples of Africa",
		ButtonDescription = "As the European powers began to, rather than through direct colonization, attempt to control the African continent through the use of proxy governments, we attempted a Federation of our own, the United States of Latin Africa, to combat their threat. Envisioned by Boganda, the United States would have established a power base against the British bloc on the continent, cut short only by his death in an ‘accidental' plane crash before its formation. With the nations of the proposed union under our control in the modern era, though, the time has come to finally bring Boganda's dreams to reality.",
	},

	CustomAlert = {
		Title = "États-Unis de l'Afrique Latine",
		Desc = "As direct colonial influence within the region began to degrade, with European powers instead installing puppet federations and organizations within the continent, a new union emerged in an attempt to combat their influence; the United States of Latin Africa. The proposed union would have united all of Central Africa as one lone state, pushing the European powers out of the continent by force, would its visionary have lived long enough to enact it. It would appear that, rather than fade away, another visionary has instead taken up the banner, bringing the United States of Latin Africa to the modern day.",
		Button = "United States..?",
	}, 

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},




{
	FormableName = "Antillean Confederation",
	CountriesCanForm = {"Cuba", "Dominican Republic", "Puerto Rico"},
	RequiredCountries = {"Cuba", "Dominican Republic", "Puerto Rico"},
	FormableButton = {
		ButtonName = "Unite the Spanish West Indies",
		ButtonDescription = "With the decline of the Spanish Empire, as well as growing sentiment for independence, such sentiment began to take root in the Caribbean; namely, under the Antillean Confederation. With the Spanish West Indies under our grasp, the time has come to make Betances’ vision a reality. Antilles for the Antilleans",
	},

	CustomAlert = {
		Title = "The Vision of the Antillean Confederation",
		Desc = "With their sovereignty constantly threatened by imperialist forces, a new proposal emerged within the heart of the Caribbean Sea; the creation of an Antillean Confederation. While the original proposal fell apart, the people of the Antilles have taken it upon themselves to revive it, uniting the lands of the old Antillean Confederation under the Lares flag.",
		Button = "Ay, Ay, Ay...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Assyrian Empire",
	CountriesCanForm = {"Assyria"},
	RequiredCountries = {"Al-Ahwaz", "Cyprus", "Iraq", "Israel", "Jordan", "Kuwait", "Lebanon", "Palestine", "Syria"},
	RequiredTiles = {"SaudiArabia.001", "SaudiArabia.002", "Iran.012", "Iran.013", "Iran.014", "Iran.016", "Iran.017", "Turkey.031", "Turkey.032", "Turkey.033", "Turkey.034", "Turkey.035", "Turkey.036", "Turkey.045", "Turkey.046", "Turkey.047", "Turkey.048", "Turkey.049", "Turkey.050", "Turkey.051", "Turkey.052", "Turkey.053", "Turkey.054", "Turkey.055", "Turkey.056", "Turkey.057", "Turkey.058", "Turkey.059", "Turkey.060", "Turkey.061", "Turkey.062", "Egypt.006", "Egypt.007", "Egypt.008", "Egypt.009", "Egypt.010", "Egypt.011", "Egypt.012", "Egypt.013", "Egypt.014", "Egypt.015", "Egypt.016", "Egypt.017", "Egypt.018", "Egypt.019", "Egypt.020", "Egypt.022", "Egypt.023", "Egypt.024", "Egypt.025"},
	FormableButton = {
		ButtonName = "Restore the Assyrian cosmocracy",
		ButtonDescription = "Let us enter upon the modern age just as we arisen out of the ashes of the Bronze Age. In homage to the history of our peoples, ascend like the sun above the Middle East, for we shall subdue the outer realm, and none will challenge the Assyrian cosmic order.",
	},

	CustomAlert = {
		Title = "The Flame of Assyria",
		Desc = "In spite of widespread persecution and hardships throughout the ages, the Assyrian people persisted throughout the centuries. Preserving their culture and even inciting a secessionist movement, the Assyrian flame remained alight. Now, the flame has consumed the entire Middle East, as a resurgent Assyria rises out of the smoke.",
		Button = "The hammer forges steel, but shatters glass.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},

	AddModifiers = {
		["The Cradles of Civilization"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Emirate of Diriyah",
	CountriesCanForm = {"Saudi Arabia"},
	RequiredCountries = {"Qatar", "United Arab Emirates"},
	RequiredTiles = {"Yemen.001", "Yemen.002", "SaudiArabia.003", "SaudiArabia.005", "SaudiArabia.006", "SaudiArabia.007", "SaudiArabia.008", "SaudiArabia.009", "SaudiArabia.010", "SaudiArabia.011", "SaudiArabia.013", "SaudiArabia.014", "SaudiArabia.015", "SaudiArabia.016", "SaudiArabia.017", "SaudiArabia.018", "SaudiArabia.019", "SaudiArabia.020", "SaudiArabia.021", "SaudiArabia.022"},
	FormableButton = {
		ButtonName = "Form the First Saudi State",
		ButtonDescription = "The House of Saud expanded their influence across Arabia before their fall to the Ottomans. In order to secure our power for the future, we must do the same and elevate the House of Saud!",
	},

	CustomAlert = {
		Title = "The Reformation of the First Saudi State",
		Desc = "In an attempt to expand their influence and power, Saudi Arabia has retaken the territories formerly held by the First Saudi State, transforming itself into the Emirate of Diriyah.",
		Button = "The Saudis grow in power",
	},

	CustomAttributes = {
		["Stability_Gain"] = 4, 
	},
},


{
	FormableName = "Federation of the Andes",
	CountriesCanForm = {"Venezuela"},
	RequiredCountries = {"Venezuela", "Bolivia", "Colombia", "Ecuador", "Panama", "Peru"},
	RequiredTiles = {"Brazil.065", "Brazil.068", "Paraguay.005", "Chile.001", "Chile.002", "Chile.003", "Chile.004"},
	FormableButton = {
		ButtonName = "Unite the Bolivarian countries militarily",
		ButtonDescription = "While many factors halted Bolívar's aspirations for political unification under a single federation during the Wars for Independence, Hispanic America's rapid development and growing internationalism will enable us to overcome these obstacles. As the Venezuelan militaries did during the revolution, let us establish ourselves as the Federation of the Andes, as the true Bolivarian Republic!",
	},

	CustomAlert = {
		Title = "Bolivarian Ambitions Achieved!",
		Desc = "Venezuela has achieved what it could not before, the political unification of the Bolivarian countries. The spirit of Bolivar lives on as much of Hispanic America unites under one nation. With God, may they live under their Bolivarian state for centuries.",
		Button = "Quite incredible.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},

	AddModifiers = {
		["The Dreams of Liberation"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Hafsid Dynasty",
	CountriesCanForm = {"Tunisia"},
	RequiredTiles = {"Algeria.018", "Algeria.019", "Algeria.020", "Algeria.021", "Algeria.022", "Algeria.023", "Algeria.024", "Algeria.025", "Algeria.026", "Libya.001", "Libya.002", "Libya.003", "Libya.004", "Tunisia.001", "Tunisia.002", "Tunisia.003", "Tunisia.004", "Tunisia.005", "Tunisia.006", "Tunisia.007", "Tunisia.008", "Tunisia.009", "Tunisia.010", "Tunisia.011", "Tunisia.012", "Tunisia.013", "Tunisia.014", "Tunisia.015", "Tunisia.018", "Tunisia.019", "Tunisia.020"},

	FormableButton = {
		ButtonName = "Resume the Berber's legacy in Ifriqiya",
		ButtonDescription = "With internal rebellions Arab world, we shall bring Tunisia back to its glory. Under a restoration of the state the Hafsids once forged, the Maghreb will be consolidated under Tunisian rule. Restore the Hafsid rule and become the next khalifas of the Maghreb!",
	},

	CustomAlert = {
		Title = "The Caliphate of Ifriqiya",
		Desc = "Tunisia, taking advantage of the weakened state of the Arab World, has reconsolidated the caliphate the Hafsid dynasty once proclaimed. Maybe under the rule of Tunisia, the Maghreb will return to the prosperity it once had.",
		Button = "Another caliphate?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Kanem Empire",
	CountriesCanForm = {"Chad"},
	RequiredTiles = {"Chad.001", "Chad.002", "Chad.003", "Chad.004", "Chad.006", "Chad.008", "Chad.009", "Chad.010", "Chad.012", "Chad.013", "Cameroon.001", "Cameroon.002", "Cameron.003", "Nigeria.012", "Nigeria.013", "Nigeria.014", "Nigeria.015", "Nigeria.016", "Nigeria.17"},
	FormableButton = {
		ButtonName = "Recontinue the Kanembu longevity",
		ButtonDescription = "The Kanembu people, fueled by the Sahara's desiccation, established an empire that would become critical in Saharan civilization and trade. Today, trans-Saharan trade has declined; however, we can invest in infrastructure to stimulate commerce and reclaim our lands to obtain our sprawling control over the Sahara.",
	},

	CustomAlert = {
		Title = "The Kanembu Restoration",
		Desc = "Holding dominion at the end of the trans-Saharan trade route, the Kanem Empire remained a mysterious ancient kingdom. Yet, their descendants have claimed divine kingship and aims to ensure that the restored empire remains as a powerful kingdom in the modern age.",
		Button = "The longevity of Kanem continues",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Kilwa Sultanate",
	CountriesCanForm = {"Tanzania"},
	RequiredCountries = {"Comoros", "Mayotte", "Zanzibar"},
	RequiredTiles = {"Kenya.001", "Kenya.002", "Madagascar.014", "Mozambique.003", "Mozambique.004", "Mozambique.005", "Mozambique.007", "Mozambique.008", "Mozambique.009", "Mozambique.010", "Mozambique.016", "Mozambique.017", "Tanzania.002", "Tanzania.005", "Tanzania.014", "Tanzania.015", "Tanzania.016", "Tanzania.030"},
	FormableButton = {
		ButtonName = "Restore our dominance over East Africa",
		ButtonDescription = "Our Swahili civilization prospered along the coast, indulging in immense wealth for centuries before destruction at the hands of the Portuguese and Omani states. Now that we have the military and administrative capacity to reintegrate our formerly controlled lands, let us prosper once more.",
	},

	CustomAlert = {
		Title = "The Swahili Juggernaut",
		Desc = "The global economy has not been the same since the Kilwa Sultanate reemerged. The new nation has risen as it has sought extensive economic dominance over the Indian Ocean.",
		Button = "This will be terrible for the economy...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Kingdom of Armenia",
	CountriesCanForm = {"Armenia"},
	RequiredCountries = {"Armenia", "Artsakh", "South Azerbaijan"},
	RequiredTiles = {"Azerbaijan.001", "Azerbaijan.003", "Azerbaijan.004", "Azerbaijan.005", "Azerbaijan.006", "Azerbaijan.007", "Azerbaijan.008", "Azerbaijan.012", "Georgia.004", "Georgia.005", "Iran.001", "Iran.006", "Iran.007", "Lebanon.001", "Lebanon.002", "Lebanon.003", "Syria.001", "Syria.002", "Syria.003", "Syria.004", "Syria.005", "Syria.006", "Syria.007", "Syria.008", "Syria.009", "Syria.010", "Syria.011", "Syria.012", "Syria.013", "Syria.014", "Syria.016", "Iraq.018", "Iraq.019", "Iraq.022", "Iraq.023", "Turkey.035", "Turkey.046", "Turkey.047", "Turkey.048", "Turkey.049", "Turkey.050", "Turkey.051", "Turkey.052", "Turkey.053", "Turkey.054", "Turkey.055", "Turkey.056", "Turkey.057", "Turkey.058", "Turkey.059", "Turkey.061", "Turkey.062", "Turkey.063", "Turkey.066", "Turkey.067", "Turkey.068"},
	FormableButton = {
		ButtonName = "Return Armenian rule to the Mediterranean",
		ButtonDescription = "The Armenian Kingdom stretched from the Caspian to the Mediterranean, all while showcasing Armenian glory to the world on an unprecedented scale. With their old lands once more under our control, the time has come to avenge Armenia with her full glory.",
	},

	CustomAlert = {
		Title = "The Kingdom of Armenia",
		Desc = "The Armenians forged an empire extending from the Caspian to the Mediterranean Sea, as well as restored the prestige of a state thought long lost. With its sudden restoration in the modern era, we can only hope that the Kingdom of Armenia shall live up to its prestigious ancient legacy...",
		Button = "The return of Antiquity...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Kingdom of Kongo",
	CountriesCanForm = {"Bas-Congo"},
	RequiredCountries = {"Bas-Congo", "South Congo", "Cabinda"},
	RequiredTiles = {"Angola.021", "Angola.022", "Angola.23", "Democratic Republic of the Congo.005", "Democratic Republic of the Congo.009", "Democratic Republic of the Congo.006", "Democratic Republic of the Congo.010", "Republic of Congo.005"},

	FormableButton = {
		ButtonName = "Dominate the Congo once more!",
		ButtonDescription = "With the weakening of the Congolese states and the liberation of our peoples, a movement to reestablish stability to the region has formed, under which we shall liberate our former holdings. With the Kingdom of Kongo restored, we can finally prosper without foreign powers tangling in our affairs!",
	},

	CustomAlert = {
		Title = "The Kongo of Kongo",
		Desc = "The Kingdom of Kongo, hegemon of central africa, built a legacy of greatness and prosperity among the inhabitants of it. With the legacy restored by the Bas-Congo separatists, a second golden age for our kingdom will begin",
		Button = "Will the region finally be at peace?",
	}, 

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Kingdom of Northumberland",
	CountriesCanForm = {"Northumbria"},
	RequiredCountries = {"Northumbria", "Isle Of Man"},
	RequiredTiles = {"United Kingdom.010", "United Kingdom.013", "United Kingdom.014"},
	FormableButton = {
		ButtonName = "Proclaim Northern hegemony",
		ButtonDescription = "Whilst the Tripartite Indenture has only been a mere footnote in our history, we must not overlook the efforts of the Percy rebellion in unleashing dominion upon all of Northern England. Let us meet again at the remains of the Ashes of Meigion and finally take our fair share promised to us all those years ago.",
	},

	CustomAlert = {
		Title = "The Hotspur of Northumberland",
		Desc = "While the likes of Owain Glyndŵr and the Welsh rebellion remained a famous story in Wales, the House of Percy and their ambitions for a Northern English hegemony had almost been forgotten as time marched on. Yet, a second rebellion has risen across the entire United Kingdom, and a resurgent Northumbria poses a threat to all across the Isles.",
		Button = "Bramham Moor finally avenged.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Kingdom of Syria",
	CountriesCanForm = {"Syria"},
	RequiredCountries = {"Syria", "Israel", "Lebanon", "Palestine"},
	RequiredTiles = {"Turkey.047", "Turkey.048", "Turkey.049", "Turkey.050", "Turkey.051", "Turkey.054", "Turkey.055", "Jordan.001", "Jordan.002", "Jordan.004", "Jordan.005", "Jordan.007", "Jordan.008", "Jordan.010", "Jordan.011"},
	FormableButton = {
		ButtonName = "Reverse the Sykes-Picot Agreement",
		ButtonDescription = "While our demands for a Greater Syrian state within Al-Sham were ignored by the powers of Europe, the Syrian people shall have their revenge. With our claimed lands within our grasp, the time has come to bring forth our promised kingdom, and bring a unified Syria to its long overdue fruition.",
	},

	CustomAlert = {
		Title = "The Arab Kingdom of Syria",
		Desc = "It had been thought that the irredentist efforts by the Kingdom of Syria were lost to the pages of history, never to see the light of day. However, more than a century after the end of the First World War, the Syrians have united their promised lands, bringing a Kingdom of Syria into the modern day.",
		Button = "O Syria, Who Owns the Glory...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Napoleonic Empire",
	CountriesCanForm = {"France"},
	RequiredCountries = {"France", "Andorra", "Monaco", "Belgium", "Luxembourg", "Netherlands", "Frisia", "Piedmont", "Valdosta", "Liguria", "Tuscany", "Trieste"},
	RequiredTiles = {"Spain.011", "Spain.012", "Germany.013", "Germany.012", "Germany.016", "Germany.014", "Germany.015", "Germany.021", "Germany.023", "Germany.024", "Germany.021", "Germany.035", "Swisterland.003", "Italy.024", "Italy.025", "Italy.013", "Slovenia.001", "Croatia.003", "Croatia.005", "Croatia.002", "Croatia.001"},
	ExclusiveFormables = {"Frankish Empire"},
	FormableButton = {
		ButtonName = "Become the Revolution",
		ButtonDescription = "At last we stand at a threshold of a new beginning for the French nation, for the rise of a new French Empire shall stoke fear in the hearts of all of Europe once again. The blood spilt by our brethren in the name of the Revolution shall not be in vain. Let us ensure the complete salvation of the Empire this time...",
	},

	CustomAlert = {
		Title = "The Bonapartist Restoration",
		Desc = "With rising tensions in Europe, the French people under the allegiance of the House of Bonaparte have seized authority over France. They have defied their adversaries that had opposed their ascendancy and brought the French nation back to their zenith in the name of the Napoleon. It seems that Europe will need an eighth coalition this time around.",
		Button = "An eighth coalition..?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},

	AddModifiers = {
		["The Innovations of Napoleon"] = {
			Length = -1
		},
	},
},

{
	FormableName = "Patria Grande",
	CountriesCanForm = {"Argentina", "Baja California", "Bolivia", "Chile", "Colombia", "Costa Rica", "Cuba", "Dominican Republic", "Ecuador", "El Salvador", "Guatemala", "Honduras", "Mexico", "Nicaragua", "Panama", "Paraguay", "Patagonia", "Peru", "Puerto Rico", "San Andres", "Santa Cruz", "Uruguay", "Venezuela", "Yucatan", "Mendoza"},
	RequiredCountries = {"Argentina", "Bolivia", "Chile", "Colombia", "Costa Rica", "Cuba", "Dominican Republic", "Ecuador", "El Salvador", "Guatemala", "Honduras", "Mexico", "Nicaragua", "Panama", "Paraguay", "Peru", "Puerto Rico", "Uruguay", "Venezuela"},
	ExclusiveFormables= {"United States of South America", "Cemanahuac"},
	
	FormableButton = {
		ButtonName = "Unite the Spanish New World",
		ButtonDescription = "From great minds alike, the idea of the unification of the former Spanish colonies remained throughout the ages, never coming to fruition. The time has come to invoke the Patria Grande in its rightful, overdue goal; the unification of the Hispanic peoples.",
	},

	CustomAlert = {
		Title = "La Patria Grande",
		Desc = "Inspired by the leaders of the time, such as Bolivar and San Martin, the Patria Grande sought to establish a unified Hispanic state from California to the Falklands. In a surprising maneuver, one nation has taken up its old banner, uniting the Spanish Americas under the old Patria Grande.",
		Button = "Viva...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},

	AddModifiers = {
		["The Dreams of Liberation"] = {
			Length = -1
		},
	},
},

{
	FormableName = "South German Confederation",
	CountriesCanForm = {"Bavaria"},
	RequiredCountries = {"Bavaria"},
	RequiredTiles = {"Germany.001", "Germany.009", "Germany.010", "Germany.011"},
	FormableButton = {
		ButtonName = "Restore South German Identity",
		ButtonDescription = "The South German states have always been the pawns of Austria and Prussia, due to their disorganization and distrust of one another. Though we had many chances to form our Southern Confederation, the fears of one state having power over the others would never allow it. It is up to us, Bavaria, to finally banish Austrian and Northern German influence from South Germany and finally realize our long-lost ambitions.",
	},

	CustomAlert = {
		Title = "Das Dritte Deutschland",
		Desc = "The Southern Germans have always been alienated from their northern brethren. Following the collapse of the German nation, Bavaria, the leading South German state, has united the people of South Germany under one confederation. The new Southern Confederation now stands strong against Northern German influence, forever more protecting their culture and tradition.",
		Button = "How many German confederations do we need?!",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},


{
	FormableName = "Sultanate of Zanzibar",
	CountriesCanForm = {"Zanzibar"},
	RequiredCountries = {"Zanzibar"},
	RequiredTiles = {"Kenya.001", "Kenya.002", "Tanzania.002", "Tanzania.005", "Tanzania.014", "Tanzania.015", "Tanzania.016", "Tanzania.030"},
	FormableButton = {
		ButtonName = "Begin a grand restoration of the sultanate",
		ButtonDescription = "Deposed and without sovereignty over the last of the Zanzibar dominions, the first sultanate collapsed to British influence and rule. We will restore control over the coast and sea of the Zanj and revive our historic extensive inland trading routes and outposts. May we flourish by extending further into the continent!",
	},

	CustomAlert = {
		Title = "The Sultan lives in Zanzibar now",
		Desc = "The gleaming white minarets of mosques and the sultan's palace stand together as a new wonder of the world, a preservation of culture that has survived half a millennium through the British imperialist conquest and unification with Tanganyika. The Sultanate of Zanzibar on the Swahili Coast is restored!",
		Button = "That's just where he lives",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
},


{
	FormableName = "West Indies Federation",
	CountriesCanForm = {"Antigua And Barbuda", "Barbados", "Dominica", "Grenada", "Jamaica", "Saint Kitts And Nevis", "Saint Lucia", "Saint Vincent And The Grenadines", "Trinidad And Tobago", "Turks And Caicos Islands", "Montserrat", "Anguilla", "Cayman Islands"},
	RequiredCountries = {"Antigua And Barbuda", "Barbados", "Dominica", "Grenada", "Jamaica", "Saint Kitts And Nevis", "Saint Lucia", "Saint Vincent And The Grenadines", "Trinidad And Tobago", "Turks And Caicos Islands", "Montserrat", "Anguilla", "Cayman Islands"},
	FormableButton = {
		ButtonName = "Unify the British West Indies",
		ButtonDescription = "As a wave of decolonization spread across Africa, similar sentiment began to spread all the way to the Caribbean Sea, with the proposal of the West Indies Federation. In such fraught times, the time has come for us to raise the orange sun over the waves of the Caribbean, and bring forth the West Indies Federation.",
	},

	CustomAlert = {
		Title = "Unity of the West Indies",
		Desc = "Though it only existed for four years as a unified state, the West Indies became a hotspot of revolution at the peak of decolonization, uniting the Antillean islands in opposition to the British Empire’s presence. With modern uncertainty in the islands, the Federation has seized its moment to unite once more; hopefully, for just as long as last time.",
		Button = "Dwell Together in Unity...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

------------------------------------------
--RUSSIA TILE UPDATE----------------------
------------------------------------------

{
	FormableName = "Akkadian Empire",
	CountriesCanForm = {"Iraq"},
	RequiredCountries = {"Al-Ahwaz"},
	RequiredTiles = {"Turkey.049", "Turkey.048", "Turkey.047", "Syria.011", "Syria.010", "Syria.012", "Syria.009", "Syria.001", "Syria.002", "Syria.005", "Syria.004", "Syria.003", "Syria.006", "Syria.008", "Syria.007", "Iraq.017", "Iraq.018", "Iraq.013", "Iraq.019", "Iraq.020", "Iraq.012", "Iraq.014", "Iraq.010", "Iraq.009", "Iraq.008", "Iraq.007", "Iraq.006", "Iraq.003", "Iraq.004", "Iraq.011", "Iran.016"},
	FormableButton = {
		ButtonName = "Reclaim the Four Corners of the World",
		ButtonDescription = "As one of the first empires to grace the earth, the Akkadians brought order to the sands of Mesopotamia against almost impossible odds, Sargon of Akkad leading our peoples to glory until our fall to the Curse of Akkad. With the modern world forgetting its legacy, the time has come to once again hold hegemony over the cradle of civilization.",
	},

	CustomAlert = {
		Title = "The Empire of Sargon",
		Desc = "Akkadians long ago conquered Sumer, took control. Sargon led his armies, in their chariots they rolled. However, with the death of Sargon and the ascent of his sons to the throne, the huge Akkadian empire would fall out of their control; its grandeur almost lost to time if not for its restoration, rising once again by the Tigris and Euphrates rivers.",
		Button = "By the Euphrates River, by the Euphrates River",
	},

	AddModifiers = {
		["The Cradles of Civilization"] = {
			Length = -1
		},
	},
	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Almighty Don Host",
	CountriesCanForm = {"Don"},
	RequiredCountries = {"Don"},
	RequiredTiles = {"Russia.031", "Russia.034", "Russia.040"},
	ExclusiveFormables = {"Khazaria"},
	FormableButton = {
		ButtonName = "Restore the Salvation of the Don!",
		ButtonDescription = "As the defenders of the free Don, the question arises: why must we be subordinate to our former oppressors? To the sons of glory and freedom, the time is right to restore the Krug! Take up your swords and guns and to heaven the Don shall rise!",
	},

	CustomAlert = {
		Title = "The Father of Men",
		Desc = "Stirred and agitated - the Don, no longer quiet, has taken up arms and liberated its former lands in the name of freedom. With the calls of liberty summoning the Almighty Don Host from its grave, the Don Cossacks get closer and closer to Tsargrad.",
		Button = "And quiet flows the Don...",
	},
	AddModifiers = {
		["Ataman Be Praised"] = {
			Length = -1
		},
	},
	CustomAttributes = {
		["Stability_Gain"] = 7, 
	},
},

{
	FormableName = "Almohad Caliphate",
	CountriesCanForm = {"Morocco"},
	RequiredCountries = {"Tunisia", "Kabylia", "Gibraltar", "Andalusia", "Valencia", "Balearic Islands"},
	RequiredTiles = {"Morocco.011", "Morocco.015", "Morocco.017", "Morocco.018", "Morocco.010", "Morocco.009", "Morocco.008", "Morocco.007", "Morocco.006", "Morocco.005", "Morocco.004", "Morocco.003", "Portugal.002", "Portugal.001", "Spain.029", "Spain.031", "Algeria.012", "Algeria.013", "Algeria.014", "Algeria.017", "Algeria.019", "Algeria.016", "Algeria.018", "Algeria.024", "Algeria.015", "Algeria.021", "Algeria.022", "Algeria.020", "Algeria.028", "Algeria.030", "Algeria.029", "Algeria.031", "Algeria.032", "Algeria.038", "Algeria.033", "Algeria.034", "Algeria.035", "Algeria.036", "Algeria.037", "Libya.011", "Libya.001", "Libya.002", "Libya.003", "Libya.004", "Libya.005"},
	ExclusiveFormables = {"Marinid Dynasty"},
	FormableButton = {
		ButtonName = "Profess the Unity of God",
		ButtonDescription = "Miraculously reversing centuries of decline in the region, the Almohads reignited Muslim control over the Iberian Peninsula, its rise being comparable to a phoenix out of the ashes. With the final pieces in place, we can finally proclaim the restoration of the Almohad Caliphate, and hopefully use our position to spread Muslim rule beyond our boundaries.",
	},

	CustomAlert = {
		Title = "The Banners of the Moors",
		Desc = "Over its two century-long reign, the Almohads reestablished Maghrebi rule over the Iberian Peninsula and dominance over Western Europe, despite how short it may have been. While the caliphate was thought vanquished long ago, its banner once more flies over its old lands, rising the Almohads from their ashes into the modern world once more.",
		Button = "Moor caliphates?",
	},

	AddModifiers = {
		["Age of the Caliphs"] = {
			Length = -1
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},
--[[
{
	FormableName = "Alpenland",
	CountriesCanForm = {"Alsace", "Liechtenstein", "Switzerland"},
	RequiredCountries = {"Alsace", "Austria", "Liechtenstein", "Switzerland"},
	RequiredTiles = {"Germany.001"},
	FormableButton = {
		ButtonName = "Federate the Alps",
		ButtonDescription = "The unification of the Swiss Confederacy held doubts about the inclusion of all the Alemanni. Nevermore, as we will incite Bregenz's Rothüüs aim at creating the federal state in the confluence of Western, Central, and Southern Europe.",
	},

	CustomAlert = {
		Title = "From Vienna to the Rhine",
		Desc = "The domestic policies of Switzerland and Germany have failed to supplement the foreign policy of Europe because of the separation of the Alemannis. However, with Switzerland relooking at Bernhard Dieterle, the new confederacy has become a shining role model in Europe.",
		Button = "Alemaniacs..",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8, 
	},
},]]

{
	FormableName = "Australasian Federation",
	CountriesCanForm = {"Australia", "Westralia", "Tasmania"},
	RequiredCountries = {"Australia", "Fiji", "New Zealand", "Cook Islands", "Niue", "Norfolk Island"},
	FormableButton = {
		ButtonName = "Complete the Australasian Federal Convention",
		ButtonDescription = "When the six colonies reorganized to form Australia, Fiji, and New Zealand, regrettably, were not there to share the glory of a united federation. As modern conflicts threaten to tear the world asunder, the time has come to finally put these original plans into motion and, with the completion of the original Australasian Convention, thrust Australia back onto the modern stage in a new age, as Australasia!",
	},

	CustomAlert = {
		Title = "The Re-federation of Australia",
		Desc = "The Australasian Federal Convention had meant to unite all of Australasia, yet ended in failure, with New Zealand and Fiji choosing to keep their sovereignty rather than join the Commonwealth. However, it would appear that Australia did not forget this transgression, as long after the original federalizing of Australia, the Federation of Australasia has been achieved.",
		Button = "Advance, Australasia Fair...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 6, 
	},
},

{
	FormableName = "Bashkiria",
	CountriesCanForm = {"Bashkortostan"},
	RequiredCountries = {"Bashkortostan", "Ural Republic"},
	FormableButton = {
		ButtonName = "Unite Bashkiria!",
		ButtonDescription = "Between the choice of either the Soviets or the Whites during the Civil War, we have come to one conclusion: we should've chosen independence. Although free, the arduous path to unify our lands is still ahead of us. Reform the Kurultai, and lead these blessed lands as one!",
	},

	CustomAlert = {
		Title = "The Blossoming Kurai",
		Desc = "As national movements spring up once again across Russia, it appears that their goals are not just limited to freedom. The revived Bashkir movement, stronger than ever, has not only overcome its hardships, but has also united the lost lands that it had once claimed.",
		Button = "Against all world imperialists...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 7, 
	},
},

{
	FormableName = "Caucasian Imamate",
	CountriesCanForm = {"Avaria", "Chechnya"},
	RequiredCountries = {"Avaria", "Chechnya"},
	ExclusiveFormables = {"Khazaria"},
	FormableButton = {
		ButtonName = "Lead the ummah!",
		ButtonDescription = "Our position in the Kavkaz is once again threatened by conquest from oppressive hands. Just like the martyrs of the Caucasian War, to die or to live in freedom is our fate. By the will of the Almighty, become the next imam, and lead the ummah to Jannah!",
	},

	CustomAlert = {
		Title = "The Second Gazawat",
		Desc = "The loss of Russian authority over the Northern Caucasus, has left the Chechens and Avars to protect their homeland themselves. With the next imam proclaimed, their faith in Islam and freedom remains unmatched.",
		Button = "Allah wills it...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 6,
	},
},

{
	FormableName = "Confederation of Northern States",
	CountriesCanForm = {"New England"},
	RequiredCountries = {"New England"},
	RequiredTiles = {"UnitedStates.045", "UnitedStates.044", "UnitedStates.046", "UnitedStates.047", "UnitedStates.048", "UnitedStates.049", "UnitedStates.050", "UnitedStates.001", "Canada.040", "Canada.001", "Canada.034", "Canada.026", "Canada.006", "Canada.019", "Canada.015", "Canada.003", "Canada.028", "Canada.038", "Canada.021", "Canada.007", "Canada.027", "Canada.033", "Canada.025", "Canada.029"},
	FormableButton = {
		ButtonName = "Restore our rights of revolution!",
		ButtonDescription = "We mustn't watch as the mark of the Jeffersonians continues to stray the Union away from the values of the revolution! Ye Northern states, 'tis time to rise as the sheet, anchor, and salvation of America, for it is better to reign in hell than serve on our knees. Let us, the real patriots of '76, secure the blessings of freedoms for a perpetual, and perfect union...",
	},

	CustomAlert = {
		Title = "The Echoes of the Federalist Era",
		Desc = "Convinced that the end of American virtue was at hand, the New England Federalists were led to believe that salvation lay in the dissolution of the Union. Although the conspiracy of the Northern Confederacy had been scattered to the winds, New England takes up the mantle of the Federalists, rising to be America's true appeal to heaven.",
		Button = "They are not throwing away their shot...",
	},

	AddModifiers = {
		["The Real Patriots of '76"] = {
			Length = -1
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Cossackia",
	CountriesCanForm = {"Don", "Kuban", "Terek", "Ural Republic"},
	RequiredCountries = {"Astrakhan", "Don", "Kalmykia", "Kuban", "Terek", "Ural Republic"},
	RequiredTiles = {"Kazakhstan.007", "Kazakhstan.008", "Kazakhstan.009", "Kazakhstan.010", "Kazakhstan.011"},
	ExclusiveFormables = {"Khazaria"},
	FormableButton = {
		ButtonName = "Unite Cossackia!",
		ButtonDescription = "For centuries, the Cossack homeland was at the behest of the tsars and their successors. But with the Russian Federation in tatters, the opportunity to unify the old Cossack hosts would guarantee our supremacy over all of South Russia. May this final victory over Moscow be ours!",
	},

	CustomAlert = {
		Title = "The Land of the Free",
		Desc = "Now free from foreign hegemony, the Cossacks have united a nation once thought to be mere war propaganda. Thus, after centuries of subordinacy, the Cossacks have proved themselves worthy as free men.",
		Button = "Rise and shine...",
	},

	AddModifiers = {
		["Ataman Be Praised"] = {
			Length = -1
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 8, 
	},
},

{
	FormableName = "Crimean Khanate",
	CountriesCanForm = {"Crimea"},
	RequiredCountries = {"Crimea", "Kuban"},
	RequiredTiles = {"Ukraine.011", "Ukraine.013", "Ukraine.014", "Ukraine.015", "Ukraine.016", "Russia.023", "Russia.024"},
	FormableButton = {
		ButtonName = "Restore the Tatar Yoke!",
		ButtonDescription = "As Moscow's authority crumbles, the time has come for a throwback to the ruthless and mighty Tartar - the wolf stock of the steppes. Let us bring forth a new Tatar yoke and impose the Khan's absolute regency over the Rus! In the name of Jochi, proclaim the rebirth of the Crimean Khanate and march westwards to victory!",
	},

	CustomAlert = {
		Title = "The Khans of Two Seas",
		Desc = "Throughout the steppes, the victory of the Crimean Tatars over Moscow can be heard as they break from the shackles of neo-imperialism. With their newfound freedom, they like Giray, have united the Crimean steppe and declared a new khan, becoming the harbingers of the Tatar Yoke and marching westwards through the blood and dust.",
		Button = "A new steppe forward...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8, 
	},
},

{
	FormableName = "Duchy of Milan",
	CountriesCanForm = {"Lombardy"},
	RequiredTiles = {"Italy.023", "Italy.025", "Italy.019", "Italy.029", "Swisterland.012"},
	FormableButton = {
		ButtonName = "Restore the Sanctuary of Milan!",
		ButtonDescription = "Centuries of foreign domination, and now, a failed union, has proved that Lombardy is well off on its own. With Lombardy reborn, let us proclaim the Duchy of Milan, in the name of the Visconti and Sforza; and reforge our glory far from the greed of outsiders. With a second Renaissance at hand, it is time for Milan to drink once more.",
	},

	CustomAlert = {
		Title = "The Biscione of Milan",
		Desc = "For centuries, Milan, and by extension, Lombardy, had been a wealthy powerhouse of Alta Italia. Upon the fracture of the Italian state, a now separated Lombardy had proclaimed a second Renaissance, under a new Duchy of Milan. Just like a serpent, it seems like Milan is once again reborn for years to come, unwilling for a last supper.",
		Button = "Vipereos mores non violabo...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8, 
	},
},

{
	FormableName = "Duchy of Normandy",
	CountriesCanForm = {"Guernsey", "Jersey"},
	RequiredCountries = {"Guernsey", "Jersey"},
	RequiredTiles = {"France.018", "France.019"},
	FormableButton = {
		ButtonName = "Restore the House of Normandy",
		ButtonDescription = "Our crown dependency status, now turned into an independent state, has further cemented our belief in the failure of the current United Kingdom. With their current weaknesses, let us restore our suppressed Norman legacy once more. As such, the Duchy of Normandy's revival shall be a stepping stone for the next Norman conquests in Europe and Africa.",
	},

	CustomAlert = {
		Title = "The Second Norman Conquests",
		Desc = "The Duchy of Normandy, once small Viking settlements, would go on to have a legacy that would impact Britain and the Mediterranean as a whole. With the Channel Islands retaking its lands on the mainland, the House of Normandy is restored once more.",
		Button = "The new norm...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Emirate of Bukhara",
	CountriesCanForm = {"Uzbekistan"},
	RequiredTiles = {"Tajikistan.001", "Tajikistan.002", "Tajikistan.003", "Tajikistan.004", "Turkmenistan.002", "Turkmenistan.003", "Uzbekistan.006", "Uzbekistan.007", "Uzbekistan.008", "Uzbekistan.009", "Uzbekistan.010", "Uzbekistan.011", "Uzbekistan.012", "Uzbekistan.013", "Uzbekistan.014"},
	ExclusiveFormables = {"Khanate of Khiva"},
	FormableButton = {
		ButtonName = "Reform the Emirate of Bukhara",
		ButtonDescription = "From the plains of Central Asia, arose a city to rival those of days gone by, Bukhara. Over a century, the Bukharan royal family had gained increasing power and assumed control after the collapse of Persian rule, letting us enter an age of dominance in Central Asia. Now it is in our own interests to once again reassert control and proclaim the rebirth of Bukhara.",
	},

	CustomAlert = {
		Title = "The Rebirth of Bukhara",
		Desc = "Bukhara, one of the many states in Central Asia, and one that fell subject to Russian expansionism. But for now, Uzbekistan has rewinded the clock back to the times of the Emirate of Bukhara.",
		Button = "The balance shaken again.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 7, 
	},
},

{
	FormableName = "Grand Principality of Circassia",
	CountriesCanForm = {"Circassia"},
	RequiredCountries = {"Abkhazia", "Balkaria", "Circassia", "Kuban"},
	FormableButton = {
		ButtonName = "Unite Circassia!",
		ButtonDescription = "Tortured, massacred, and expelled - our people have suffered enough at the hands of the Russians! Our legacy before, during the times of Inal the Great, shall not die to historical revisionism. Unite the Circassian land, and become the next rulers of all Circassia!",
	},

	CustomAlert = {
		Title = "Honor Before Life",
		Desc = "Circassia, emerging out of centuries of Russian annexation, has retaken lands once owned by Inal the Great, a local folk hero well known among the Circassians and Abkhazians. Not only this, they have also proclaimed the continuation of Inal's principality, thus providing a safe homeland for the Circassian diaspora worldwide.",
		Button = "Third time's the charm...",
	},
},

{
	FormableName = "Helvetic Republic",
	CountriesCanForm = {"Romandie"},
	RequiredTiles = {"Swisterland.002", "Swisterland.003", "Swisterland.004", "Swisterland.005", "Swisterland.006", "Swisterland.007", "Swisterland.008", "Swisterland.009", "Swisterland.010", "Swisterland.011", "Swisterland.012"},
	FormableButton = {
		ButtonName = "Liberate Helvetia!",
		ButtonDescription = "Alas, the French Revolution's ideas have dissipated due to the nature of Helvetia itself. But lo! we shall not let these sticks destroy the Revolution! Resume the directory of 1798, and centralize the Alps once more!",
	},

	CustomAlert = {
		Title = "Kleiner Rath",
		Desc = "One and indivisible - the proclamation of the failed Helvetic Republic that once attempted to centralize Switzerland. Although controversial as a French client, its legacy has persisted to the present day. With Romandie at the new helm of Helvetia, the weapons of liberty have 'reawoken' the Swiss once more.",
		Button = "Hell...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 7, 
	},
},

{
	FormableName = "Idel-Ural State",
	CountriesCanForm = {"Bashkortostan", "Chuvashia", "Erzya", "Mari El", "Moksha", "Tatarstan", "Udmurtia"},
	RequiredCountries = {"Bashkortostan", "Chuvashia", "Erzya", "Mari El", "Moksha", "Tatarstan", "Udmurtia"},
	ExclusiveFormables = {"Khanate of Kazan"},
	FormableButton = {
		ButtonName = "Preserve the Povolzhye!",
		ButtonDescription = "Held in captivity for centuries, our freedom is one of celebration, yet the Idel-Ural remains fractured. United we stand, divided we fall. Unify the republics and the Kremlin's colonial policy shall never touch the Volga-Ural!",
	},

	CustomAlert = {
		Title = "The Povolzhye Legion",
		Desc = "After decades since the defeat of the original state by the Red Army, the resurgence of the Idel-Ural movement has been one of great interest. Moscow's failure to subdue these movements has finally given way; leaving the Idel-Ural free once more.",
		Button = "Real...",
	},
},

{
	FormableName = "Karakalpak Khanate",
	CountriesCanForm = {"Karakalpakstan"},
	RequiredCountries = {"Turkmenistan", "Karakalpakstan"},
	RequiredTiles = {"Kazakhstan.001", "Kazakhstan.002", "Kazakhstan.003", "Kazakhstan.004",},
	FormableButton = {
		ButtonName = "Revive Alaköz's rebellion!",
		ButtonDescription = "The great rebellion of Ernazar Alaköz against the Khiva khans displayed the full might of the Karakalpak nation, unparalleled by our attempts before and after. As descendants of the Great Khan, the Karakalpak clans shall unite once more to resume Alaköz's forgotten legacy. With this, the smell of wormwood saiga shall finally run through all of Turkestan.",
	},

	CustomAlert = {
		Title = "The Beys of Khwarazm",
		Desc = "Karakalpakstan, emerging from Uzbek hegemony sometime ago, have proclaimed the start of a new khanate in Khwarazm, one that would continue the efforts of an Ernazar Alaköz from the 1850s. As such, the legacy of this Karakalpak national hero lives on in Central Asian history.",
		Button = "Karakalpak in action...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Khanate of Kazan",
	CountriesCanForm = {"Tatarstan"},
	RequiredCountries = {"Tatarstan", "Mari El", "Moksha", "Chuvashia"},
	RequiredTiles = {"Russia.053", "Russia.054", "Russia.055", "Russia.057", "Russia.150", "Russia.153", "Russia.154", "Russia.162", "Russia.176", "Russia.177"},
	ExclusiveFormables = {"Khanate of Kazan", "Volga Bulgaria"},
	FormableButton = {
		ButtonName = "Reverse the fall of Kazan!",
		ButtonDescription = "The Gunpowder Age and its consequences have been a disaster for Kazanian civilization and our way of life as the freemen of the Volga. Even as a shell of itself, Kazanian civilization has been preserved as has the dream of Tatar Khans ruling over the Volga. Let us feast on the Russian bear's remains and carve out a new Kazanian khanate!",
	},

	CustomAlert = {
		Title = "The Messengers of Kazan",
		Desc = "The Volga Tatars and their struggle were thought to have died with the fall of Kazan, but this was a false assumption. With Kazan continuing its struggle against Russia and restoring itself as a center of power for Tatar khans in the Volga, it draws ever closer to the walls of Kremlin and Moscow.",
		Button = "We stay hungry we devour!",
	},

	CustomAttributes = {
		["Stability_Gain"] = 7, 
	},
},

{
	FormableName = "Khazaria",
	CountriesCanForm = {"Avaria", "Don", "Karachay", "Kumykia"},
	RequiredCountries = {"Astrakhan", "Avaria", "Balkaria", "Chechnya", "Chuvashia", "Circassia", "Crimea", "Donetsk", "Don", "Erzya", "Ingushetia", "Kalmykia", "Karachay", "Kuban", "Kumykia", "Luhansk", "Moksha", "Ossetia", "Terek"},
	RequiredTiles = {"Kazakhstan.001", "Kazakhstan.002", "Kazakhstan.003", "Kazakhstan.004", "Kazakhstan.005", "Kazakhstan.006", "Kazakhstan.007", "Kazakhstan.008", "Ukraine.001", "Ukraine.002", "Ukraine.003", "Ukraine.004", "Ukraine.005", "Ukraine.006", "Ukraine.012", "Ukraine.013", "Ukraine.014", "Ukraine.015", "Ukraine.016", "Ukraine.023", "Ukraine.025", "Uzbekistan.001", "Uzbekistan.002", "Uzbekistan.003", "Uzbekistan.004", "Russia.001", "Russia.031", "Russia.034", "Russia.035", "Russia.036", "Russia.037", "Russia.038", "Russia.039", "Russia.040", "Russia.041", "Russia.042", "Russia.043", "Russia.044", "Russia.045", "Russia.046", "Russia.047", "Russia.048", "Russia.049", "Russia.050", "Russia.051", "Russia.058", "Russia.059", "Russia.060", "Russia.061", "Russia.062", "Russia.063", "Russia.064", "Russia.065", "Russia.066", "Russia.072", "Russia.073", "Russia.074", "Russia.126", "Russia.152"},
	ExclusiveFormables = {"Caucasian Imamate", "Cossackia", "Northern Caucasus Republic"},
	FormableButton = {
		ButtonName = "Revive our Khazar lineage!",
		ButtonDescription = "The legacy of our Khazar ancestors that roamed the Caucasus has been subjected to many false conjectures throughout time. But alas, there can only be one successor to the Bulanid throne! Reaffirm our lineage and take hold of the old commercial empire!",
	},

	CustomAlert = {
		Title = "The Terror of the Steppes",
		Desc = "After more than a millennium since the collapse of Khazaria, different groups have claimed descendance from the Khazars. Out of all of these, a worthy successor has finally emerged within the ashes of the Russian Caucasus.",
		Button = "Terrifying...",
	},
},

{
	FormableName = "Kingdom of Arabia",
	CountriesCanForm = {"Jordan"},
	RequiredCountries = {"Jordan", "Bahrain", "Iraq", "Israel", "Kuwait", "Lebanon", "Oman", "Qatar", "Saudi Arabia", "Syria", "Yemen"},
	FormableButton = {
		ButtonName = "Avenge the Arab Revolt",
		ButtonDescription = "Following the crumbling of the Ottomans, we became the forebringers of the Arab Revolt, seeking to establish the first nation that would truly unite much of Arabia. However, our promised lands were ripped from our hands, and with the Hashemites back in control of Arabia, the time has come to raise the old flag of red, black, green, and white.",
	},

	CustomAlert = {
		Title = "The Arab Restoration",
		Desc = "The Entente had promised the Hashemites an Arabian Kingdom after all of their struggles during the First World War. Alas, they had betrayed their agreements, showing no further regard for the will of the Arab people. With the Kingdom coming into fruition into the modern day, however, it appears that the Sykes-Picot Agreement has finally been fully reversed.",
		Button = "Mashallah...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Kingdom of Israel",
	CountriesCanForm = {"Israel"},
	RequiredCountries = {"Israel"},
	RequiredTiles = {"Palestine.001", "Palestine.003", "Jordan.001", "Jordan.002", "Jordan.004"},
	FormableButton = {
		ButtonName = "Reclaim the Kingdom of Saul and Solomon",
		ButtonDescription = "Following the liberation of our peoples from the tyranny of the Pharaohs, our ancestors were required to forge a kingdom just as strong from the sands of Zion, lest our lands be lost to time eternal. So, hear our call, deliver us! Remember us, here in this burning sand, deliver us, to the promised land!",
	},

	CustomAlert = {
		Title = "The United Monarchy of Israel",
		Desc = "No matter one's beliefs, a story that has commonly been told throughout the world is that of Moses, and his journey to lead the Hebrew people from their chains; however, few know about the fate of the Kingdom of Israel that followed. With its sudden restoration in the modern day, though, it would appear that history has gone a full circle.",
		Button = "Deliver us...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8, 
		["Rename_Cities"] = [[
            [
            ["Al Karak", "Kerak"],
            ["Istanbul", "Kushtandina"],
            ["Nablus", "Shechem"],
            ["Tel Aviv", "Yafo"],
            ]
        ]],
	},
},

{
	FormableName = "Kingdom of Romania",
	CountriesCanForm = {"Romania"},
	RequiredCountries = {"Romania", "Moldova", "Odessa"},
	RequiredTiles = {"Ukraine.034", "Bulgaria.001"},
	FormableButton = {
		ButtonName = "Unearth the Romania of the Past",
		ButtonDescription = "Romania, forged of steel from the cannons of the Turks, remains divided, split by mistakes long past. Let us restore Romania to its zenith under the Kingdom of Romania. Wake up, from the slumber of death! With the sword of Michael and the strength of the Impaler, it is time to forge Romania anew!",
	},

	CustomAlert = {
		Title = "The Treasure of the Mountains",
		Desc = "Romania suffered humiliation upon humiliation by the hand of its neighbors. The courage of Trajan and the power of the Impaler were long concealed by the cowardice of foolish Kings. Now, the Romanian eagle has awakened from the slumber of death. Romania again is whole, and the Kingdom that rose once more.",
		Button = "Did they steal that?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 9, 
	},
},

{
	FormableName = "Kryvdonbass",
	CountriesCanForm = {"Donetsk"},
	RequiredCountries = {"Donetsk", "Luhansk"},
	RequiredTiles = {"Ukraine.005", "Ukraine.006", "Ukraine.012", "Ukraine.013", "Ukraine.014", "Ukraine.015", "Ukraine.016", "Ukraine.017"},
	FormableButton = {
		ButtonName = "Reform the model socialist republic",
		ButtonDescription = "The continuing encroachment of the West over the North Atlantic mirrors the likes of the Germans in the World Wars, one that we must defy. Look back to the magnum opus of our founding father, Comrade Artyom of the Donetsk-Krivoy Rog Soviet Republic, and may his legacy lead the front lines of the Donbass once more. Long live the Kryvdonbass.",
	},

	CustomAlert = {
		Title = "The Red Guard of the Donbas",
		Desc = "With Donetsk claiming to be the successors of the DKRSR, no one expected for the obscure Soviet Republic to ever see the light of day ever since its dissolutions years ago. However, with changing times, the newly risen Donetsk-Krivoy Rog Soviet Republic could prove to be a model example for further anti-Western sentiment across the globe.",
		Button = "Another revolution in danger?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8, 
	},
},

{
	FormableName = "Kuban People's Republic",
	CountriesCanForm = {"Kuban"},
	RequiredCountries = {"Circassia", "Karachay", "Kuban"},
	FormableButton = {
		ButtonName = "Unite the Kuban!",
		ButtonDescription = "Decades have passed since the backstabs by our former rulers, and in the end, the Kuban is finally free; yet outsiders still remain at bay. For the old glory of the Kuban, we give our lives to protect the motherland! Rally the Cossack armies and expel the outlanders from the Kuban!",
	},

	CustomAlert = {
		Title = "The Violent Kuban",
		Desc = "Debated between Ukraine and Russia, the status of the Kuban region has finally been resolved. Neither Ukrainian nor Russian, the Kubanians have freed themselves and have united the rest of the Kuban under a new military government.",
		Button = "Ah, Cuba...",
	},

	AddModifiers = {
		["Ataman Be Praised"] = {
			Length = -1
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 6,
	},
},

{
	FormableName = "Lucayan Federation",
	CountriesCanForm = {"Bahamas", "Turks And Caicos Islands"},
	RequiredCountries = {"Bahamas", "Turks And Caicos Islands"},
	FormableButton = {
		ButtonName = "Federate the Lucayan Archipelago",
		ButtonDescription = "As the original inhabitants of the archipelago, some of the most prestigious peoples of the entire Caribbean were the Lucayan peoples. However, the Spanish slaughter left only a select few to tell the story of their once-great nation. With their islands united, the time has come to take up their name, bringing their legacy to modern glory under the Lucayan Federation.",
	},

	CustomAlert = {
		Title = "The People of the Islands",
		Desc = "The Caribbean Sea is rife with culture and extensive history; however, one that often goes unmentioned when talking about the majesty of the Caribbean are the Lucayans. Once thought long gone, their old islands have suddenly reunited under the Lucayan Federation, bringing new life to their long-lost culture.",
		Button = "The return of the Lukku-Cairi...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 5, 
	},
},

{
	FormableName = "Northern Caucasus Republic",
	CountriesCanForm = {"Abkhazia", "Avaria", "Balkaria", "Chechnya", "Circassia", "Ingushetia", "Karachay", "Kumykia", "Lezgistan", "Ossetia"},
	RequiredCountries = {"Abkhazia", "Avaria", "Balkaria", "Chechnya", "Circassia", "Ingushetia", "Karachay", "Kumykia", "Lezgistan", "Ossetia"},
	ExclusiveFormables = {"Khazaria"},
	FormableButton = {
		ButtonName = "Rekindle the lost Dream of Unity",
		ButtonDescription = "Our forefathers had united our people into one state, however, their dream was crushed and since then we have been forcefully divided. Under our new, leadership we can realize the dream of the mountaineers and proclaim the unification of all north Caucasian people. Onwards to prosperity!",
	},

	CustomAlert = {
		Title = "The Republic of the Mountaineers",
		Desc = "A lost glimmer of hope in the northern Caucasian nations has reignited, evoking the former republic that encompassed Northern Caucasus; as it enters the modern era anew.",
		Button = "Mountaineers unite",
	},
},

{
	FormableName = "Phoenicia",
	CountriesCanForm = {"Lebanon"},
	RequiredCountries = {"Lebanon"},
	RequiredTiles = {"Israel.001", "Israel.002", "Syria.011"},
	FormableButton = {
		ButtonName = "Restore the First Thalassocratic Empire",
		ButtonDescription = "Emerging as one of the first colonial powers in the vast Mediterranean, was Phoenicia. The first true thalassocracy, and one destined to rule the waves of the Mediterranean. It is time to embrace our Phoenician identity that has been buried for so long. Ba’al, let us flourish from your ashes.",
	},

	CustomAlert = {
		Title = "The Light of Phoenician Civilization",
		Desc = "From the Atlantic to the Fertile Crescent, was the legacy laid by Phoenicia. Phoenicia’s legacy and prominence cannot be denied, with their influence even being felt to the modern day, as the forerunners of Classical Western civilization. Once considered a lost civilization, Phoenicia sees the light of day again and enters the modern world anew.",
		Button = "Now they can get down to business.",
	},

	AddModifiers = {
		["Reputation of the Phoenicians"] = {
			Length = -1
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 8, 
	},
},

{
	FormableName = "Rasulid Kingdom",
	CountriesCanForm = {"Yemen"},
	RequiredCountries = {"Yemen"},
	RequiredTiles = {"SaudiArabia.009", "SaudiArabia.010", "SaudiArabia.011", "SaudiArabia.012", "Oman.001"},
	FormableButton = {
		ButtonName = "Reinstate the Rasūlid Dynasty",
		ButtonDescription = "Whilst our country has only seen nothing more than political and economic turmoil in recent decades, let us reclaim the time lost to us. We will return to the ways of the House of the Rasūlids, known to have been the most brilliant to have taken charge of our country. With the reignition of the Yemeni Golden Age, we will prove ourselves to be more than a footnote in history.",
	},

	CustomAlert = {
		Title = "Return of the Banū Rasūl",
		Desc = "In an effort to combat the weak and failing government, the Order of the Rasūlids' power over Yemen has been reestablished. Under the new iteration of the Rasūlid Kingdom, the revitalization of the Yemeni Golden Age is now at hand.",
		Button = "Yeah man..",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Samanid Empire",
	CountriesCanForm = {"Tajikistan"},
	RequiredTiles = {"Iran.043", "Iran.044", "Iran.042", "Iran.041", "Iran.060", "Iran.045", "Iran.057", "Iran.058", "Iran.055", "Iran.054", "Iran.043", "Iran.059", "Iran.053", "Afghanistan.004", "Afghanistan.005", "Turkmenistan.001", "Turkmenistan.004", "Turkmenistan.007", "Turkmenistan.002", "Turkmenistan.003", "Afghanistan.010", "Afghanistan.011", "Afghanistan.012", "Afghanistan.013", "Afghanistan.014", "Afghanistan.015", "Afghanistan.016", "Afghanistan.017", "Afghanistan.018", "Afghanistan.019", "Afghanistan.023", "Afghanistan.024", "Afghanistan.027", "Uzbekistan.003", "Uzbekistan.004", "Uzbekistan.005", "Uzbekistan.007", "Uzbekistan.008", "Uzbekistan.011", "Uzbekistan.012", "Uzbekistan.014", "Uzbekistan.015", "Uzbekistan.010", "Uzbekistan.009", "Uzbekistan.014", "Uzbekistan.016", "Uzbekistan.017", "Uzbekistan.018", "Uzbekistan.019", "Uzbekistan.020", "Uzbekistan.021", "Uzbekistan.022", "Uzbekistan.023", "Tajikistan.002", "Tajikistan.003", "Tajikistan.004", "Tajikistan.005", "Tajikistan.006", "Tajikistan.007", "Kyrgyzstan.001", "Kyrgyzstan.005", "Kazakhstan.022", "Kazakhstan.023"},
	FormableButton = {
		ButtonName = "Reinstate the House of Saman",
		ButtonDescription = "Founded out of revolt against Abbasid incursion in the region, the Samanids quickly became the dominant power in Persia, with some of even its smaller cities rivaling Baghdad with their sophistication. As the modern world forgets our old glory, the time has come to raise the old flag of the Samanid Empire, and soon, restore its lost prestige.",
	},

	CustomAlert = {
		Title = "The Samanid Renaissance",
		Desc = "Led by the House of Saman, the Samanids established a successor state to the Sassanids, inheriting Persian customs all the while establishing prosperous cities to rival that of Baghdad. Once thought long gone, the Samanids have made a sudden reemergence, bringing their old prestige to the light of the modern world.",
		Button = "For Khuda.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10 
	},
},

{
	FormableName = "Seljuk Empire",
	CountriesCanForm = {"Turkmenistan"},
	RequiredCountries = {"Armenia", "Talysh-Mughan", "Palestine", "Israel", "Lebanon", "Oman", "Artsakh", "Kurdistan", "United Arab Emirates", "Al-Ahwaz", "South Azerbaijan"},
	RequiredTiles = {"Jordan.001", "Jordan.002", "Jordan.004", "Jordan.005", "Iran.008", "Iran.009", "Iran.010", "Iran.014", "Iran.015", "Iran.016", "Iran.017", "Iran.018", "Iran.019", "Iran.020", "Iran.021", "Iran.022", "Iran.023", "Iran.024", "Iran.025", "Iran.026", "Iran.027", "Iran.033", "Iran.034", "Iran.035", "Iran.036", "Iran.037", "Iran.038", "Iran.039", "Iran.040", "Iran.041", "Iran.042", "Iran.043", "Iran.044", "Iran.045", "Iran.046", "Iran.047", "Iran.050", "Iran.051", "Iran.052", "Iran.053", "Iran.054", "Iran.055", "Iran.056", "Iran.057", "Iran.058", "Iran.059", "Iran.060", "Syria.001", "Syria.002", "Syria.003", "Syria.007", "Syria.008", "Syria.009", "Syria.010", "Syria.011","Syria.012", "Syria.013", "Syria.014", "Syria.016", "Syria.017", "Syria.018", "Syria.019", "Azerbaijan.003", "Azerbaijan.004", "Azerbaijan.005", "Azerbaijan.006", "Azerbaijan.001", "Azerbaijan.007", "Azerbaijan.008", "Azerbaijan.003", "Azerbaijan.004", "Azerbaijan.005", "Azerbaijan.006", "Azerbaijan.007", "Azerbaijan.010", "Iraq.001", "Iraq.003", "Iraq.004", "Iraq.005","Iraq.006", "Iraq.007", "Iraq.008", "Iraq.009", "Iraq.010", "Iraq.011", "Iraq.012", "Iraq.013", "Iraq.014", "Iraq.017", "Iraq.018", "Iraq.019", "Iraq.020", "Iraq.023", "Turkey.005", "Turkey.004", "Turkey.005", "Turkey.006", "Turkey.007", "Turkey.008", "Turkey.009", "Turkey.010", "Turkey.011", "Turkey.012", "Turkey.013", "Turkey.014", "Turkey.015", "Turkey.017", "Turkey.018", "Turkey.019", "Turkey.020", "Turkey.021", "Turkey.022", "Turkey.023", "Turkey.024", "Turkey.025", "Turkey.026", "Turkey.027", "Turkey.028", "Turkey.029", "Turkey.030", "Turkey.031", "Turkey.032", "Turkey.036", "Turkey.037", "Turkey.038", "Turkey.040", "Turkey.041", "Turkey.042", "Turkey.043", "Turkey.044", "Turkey.045", "Turkey.048", "Turkey.060", "Turkey.063", "Turkey.064", "Turkey.065", "Turkey.066", "Turkey.067", "Turkey.068"},
	FormableButton = {
		ButtonName = "Reforge the Great Seljuk Empire",
		ButtonDescription = "Migrating from the steppes, the Seljuks became the dominant, unifying force in the Middle East, bringing terror to even the Byzantines. With Seljuk lands once more within our grasp, the time has come to restore the old Empire and bring order to the Middle East once again.",
	},

	CustomAlert = {
		Title = "The Qiniq Turks",
		Desc = "Holding dominion over nearly all of the Middle East, stretching from Oman to Anatolia, the Seljuks helmed a fierce resistance against the Crusaders before internal struggles shattered the Empire from within. With its banner flying over the Middle East once more, though, it would appear the true strength of the Seljuks has yet to be seen.",
		Button = "Here come the Seljuk Turks...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Senusiyya",
	CountriesCanForm = {"Libya"},
	RequiredTiles = {"Egypt.001", "Egypt.003", "Libya.003", "Libya.004", "Libya.011", "Libya.012", "Libya.013", "Libya.015", "Libya.016", "Libya.017", "Libya.007", "Libya.008", "Libya.009", "Libya.010", "Libya.018", "Libya.019", "Chad.001", "Chad.002", "Chad.004", "Chad.005"},
	FormableButton = {
		ButtonName = "Revive the Senussi Order",
		ButtonDescription = "Let us truly end the legacy of colonialism upon North Africa. With the restoration of the Senussi Order, the former colonizers shall tremble as a united Senusiyya rises. Rally up our brethren, the spirit of the original Senussi lives on!",
	},

	CustomAlert = {
		Title = "The Rebirth of the Senussi",
		Desc = "The Senussi movement, a brave bunch of rebels, ones that stood up to the might of the European great powers. Although eventually fading away, its spirit lingers in Libya. And with the Order's restoration, it seems that the Europeans have to fear ever landing on Africa again.",
		Button = "Crazy.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Serbian Empire",
	CountriesCanForm = {"Serbia"},
	RequiredCountries = {"Albania", "Macedonia", "Montenegro", "Kosovo"},
	RequiredTiles = {"Greece.003", "Greece.004", "Greece.005", "Greece.006", "Greece.007", "Greece.008", "Greece.009", "Serbia.001", "Serbia.002", "Serbia.003", "Serbia.006", "Serbia.007"},
	ExclusiveFormables = {"Yugoslavia"},
	FormableButton = {
		ButtonName = "Restore the Nemanjić Dynasty",
		ButtonDescription = "With the old lands of the great Serbian Empire within our grasp, the time has come to raise the imperial flag and restore the Serbian Empire at long last. For the greater glory of Serbia, no force shall stop us now: the people of Serbia!",
	},

	CustomAlert = {
		Title = "The Restoration of the Serbian Empire",
		Desc = "Only brought down from its glory by Dusan's death, the Serbian Empire dominated the Balkans, challenging powers like the Byzantine Empire. And as the imperial banner once more waves over Belgrade, it seems that the Serbian Empire is prepared to reign again.",
		Button = "For King and Fatherland, with Faith in God",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Shamkhalate of Tarki",
	CountriesCanForm = {"Kumykia"},
	RequiredCountries = {"Avaria", "Balkaria", "Chechnya", "Ingushetia", "Kumykia", "Lezgistan", "Ossetia"},
	ExclusiveFormables = {"Northern Caucasus Republic"},
	FormableButton = {
		ButtonName = "Master the Caucasus!",
		ButtonDescription = "Among every nation, there are cowards and traitors; but we are the exception. As the remnants of the Khazars, and the descendants of Genghis Khan, the Kumyks will once again protect Dagestan! Restore the Shamkhal and kick the Russians for another hundred years!",
	},

	CustomAlert = {
		Title = "The Vali of Dagestan",
		Desc = "From the words was or was not, the lies begin. But what isn't a lie, is the true custodians of the Caucasus: the Kumyks. With the Shamkhal reinstated, the Kumyks once again guide the mountains.",
		Button = "Just plain cool...",
	},
},

{
	FormableName = "Tui Manu'a Confederacy",
	CountriesCanForm = {"American Samoa", "Samoa"},
	RequiredCountries = {"American Samoa", "Samoa", "Tonga", "Fiji"},
	FormableButton = {
		ButtonName = "Restore the Chiefdom of Samoa",
		ButtonDescription = "The Tui Manu'a of the Samoan Empire oversaw a grand trade network across the turbulent waters of Oceania, only brought down by the imperialistic Europeans. But when you're living on your knees, you rise up. And as the rest of the world is preoccupied, let us bring the Tui Manu'a back into the light!",
	},

	CustomAlert = {
		Title = "The Samoan Hegemony",
		Desc = "The story of the Tui Manu'a had been passed down from generation to generation, before being scattered to the winds during the colonial era. Despite this, its fragments have been recovered by the Samoans, and the Tui Manu'a Confederacy rise once more.",
		Button = "Something (not) interesting in Oceania?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 7, 
	},
},

{
	FormableName = "Tungus Republic",
	CountriesCanForm = {"Yakutia"},
	RequiredCountries = {"Yakutia"},
	RequiredTiles = {"Russia.277", "Russia.280", "Russia.281", "Russia.282", "Russia.283", "Russia.291", "Russia.292", "Russia.293", "Russia.301", "Russia.302", "Russia.304"},
	FormableButton = {
		ButtonName = "Revoke the Prodrazverstka!",
		ButtonDescription = "The new communist order brought a lack of representation and a massacre to the people of Tungus. It’s time to avenge the fallen from the terror and carry out a national revival of the republic. Bless the Lena, and may she give us strength!",
	},

	CustomAlert = {
		Title = "Thaw of the Frozen",
		Desc = "With the current state of the Far East, the white sun over the arctic sky has once again called Sakha to action. With igniting turmoil within the nation, the Tungus people of Sakha have successfully declared independence and the inviolability of its territory.",
		Button = "Big, big Tungus",
	},

	CustomAttributes = {
		["Stability_Gain"] = 6,
	},
},

{
	FormableName = "Turkestan",
	CountriesCanForm = {"Kyrgyzstan", "South Turkestan", "Turkmenistan", "Uzbekistan"},
	RequiredCountries = {"Kyrgyzstan", "South Turkestan", "Tajikistan", "Turkmenistan", "Uzbekistan"},
	RequiredTiles = {"Iran.043", "Iran.044", "Iran.045", "Iran.057", "Iran.059", "Iran.060", "Kazakhstan.001", "Kazakhstan.002", "Kazakhstan.003", "Kazakhstan.003", "Kazakhstan.019", "Kazakhstan.020", "Kazakhstan.021", "Kazakhstan.022", "Kazakhstan.023", "Kazakhstan.024", "Kazakhstan.025", "Kazakhstan.026", "Kazakhstan.027", "Kazakhstan.028", "Kazakhstan.029", "Kazakhstan.030", "Kazakhstan.031",},
	FormableButton = {
		ButtonName = "Unite Turkestan",
		ButtonDescription = "Legions of Red Army troops shall not crush our anti-Soviet predecessors. Labeled as bandits, their vindication shall manifest in their ultimate goal, the liberation of Turkestan. In this great game of politics, we shall not let these straight lines divide us! It is time to unify Turkestan once and for all!",
	},

	CustomAlert = {
		Title = "The Land of the Turks",
		Desc = "As the iron grip of the Russians faded away in Central Asia, the republics left behind in its wake have taken decisive steps to break from their Soviet legacy. By proclaiming the unification of Turkestan, not only has a powerhouse been made, but also the legacy of those who died fighting for Turkestan have been avenged.",
		Button = "The White Sun of the Desert...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "United States of North Asia",
	CountriesCanForm = {"Siberia"},
	RequiredCountries = {"Bashkortostan", "Buryatia", "Far Eastern Republic", "Siberia", "Tuva", "Ural Republic", "Yakutia", "Yugra"},
	RequiredTiles = {"Kazakhstan.013", "Kazakhstan.014", "Kazakhstan.017", "Kazakhstan.034", "Kazakhstan.035", "Kazakhstan.036", "Kazakhstan.037", "Kazakhstan.038", "Kazakhstan.039", "Kazakhstan.041", "Kazakhstan.042", "Kazakhstan.043", "Kazakhstan.044", "Kazakhstan.046", "Kazakhstan.047", "Kazakhstan.048", "Kazakhstan.049", "Kazakhstan.050", "Kazakhstan.051", "Kazakhstan.052", "Kazakhstan.053", "Kazakhstan.054", "Kazakhstan.055", "Kazakhstan.056", "Kazakhstan.057", "Kazakhstan.058", "Kazakhstan.059", "Kazakhstan.060", "Kazakhstan.061", "Kazakhstan.062", "Kazakhstan.063", "Kazakhstan.064", "Kazakhstan.065", "Kazakhstan.066", "Kazakhstan.067", "Kazakhstan.068", "Kazakhstan.069"},
	FormableButton = {
		ButtonName = "Restore Siberia for Siberians!",
		ButtonDescription = "The red that has stained our land has remained for far too long. Our free republic, envisioned by the Siberian intelligentsia of the Civil War, shall no longer be silent. May the thunder from Lake Baikal be heard in the walls of the Ancient Kremlin.",
	},

	CustomAlert = {
		Title = "The Patriots of Siberia",
		Desc = "The independence of Siberia, coupled with the next Russian Civil War, has resurrected the ideas of the Siberian intelligentsia of the early twentieth century. With their goals of freedom and democracy, can this continent-spanning federation become the next United States? or will the taiga once again be silenced?",
		Button = "Cool",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "West Canada",
	CountriesCanForm = {"Alberta", "Saskatchewan"},
	RequiredCountries = {"Saskatchewan", "Alberta"},
	RequiredTiles = {"Canada.005", "Canada.014", "Canada.020", "Canada.035", "Canada.009", "Canada.036", "Canada.039", "Canada.024", "Canada.037", "Canada.011", "Canada.008", "Canada.018", "Canada.022", "Canada.010"},
	FormableButton = {
		ButtonName = "End Western alienation",
		ButtonDescription = "Ever since the foundation of Canada, the provinces of western Canada have been unrepresented and ignored by the Ottawa government. A new movement has promised that our people shall be represented not just in Canada, but in our own state. We shall create the vision of a new republic for us, the people of West Canada!",
	},

	CustomAlert = {
		Title = "The Western Exit of Canada",
		Desc = "With the fracturing and vision of Canada, a fringe movement has flared up. A movement that would unite West Canada into a new independent state. It seems that the world has to deal with the Tale of Two Canadas.",
		Button = "One Canada is more than enough...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8, 
	},
},

{
	FormableName = "Yaik Cossack Host",
	CountriesCanForm = {"Ural Republic"},
	RequiredCountries = {"Bashkortostan", "Chuvashia", "Moksha", "Erzya", "Tatarstan", "Udmurtia", "Ural Republic"},
	RequiredTiles = {"Kazakhstan.006", "Kazakhstan.007", "Kazakhstan.008", "Kazakhstan.009", "Kazakhstan.010", "Kazakhstan.011", "Kazakhstan.012", "Kazakhstan.013", "Kazakhstan.014", "Kazakhstan.054", "Russia.035", "Russia.036", "Russia.037", "Russia.048", "Russia.049", "Russia.050", "Russia.051", "Russia.156"},
	FormableButton = {
		ButtonName = "Free the Urals!",
		ButtonDescription = "The horrors that the Ataman of the Yaik Cossack Host, Yemelyan Pugachev brought in the form of a rebellion inflicted a permanent scar upon Russia's administration. With these scars opening up into further wounds, Pugachev's glory shall be restored. Let us reverse the outcome of the Peasants' Rebellion, and continue the supremacy of the great Yaik Cossack Host!",
	},

	CustomAlert = {
		Title = "The Second Peasants War",
		Desc = "A 1773 rebellion by the Ural Cossacks, known as Yaik Cossacks at the time, caused a long-lasting impact on Russian administration. With Moscow losing its authority, the Ural Republic has continued the legacy of the rebellion; with the Ural Cossack Host being reformed yet again.",
		Button = "Yikes...",
	},

	AddModifiers = {
		["Ataman Be Praised"] = {
			Length = -1
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},





{	
	FormableName = "Aceh Sultanate",
	CountriesCanForm = {"Aceh"},
	RequiredCountries = {"Aceh"},
	RequiredTiles = {"Indonesia.004", "Indonesia.005", "Indonesia.006", "Indonesia.007", "Indonesia.008", "Indonesia.084", "Indonesia.085"},
	FormableButton = {
		ButtonName = "Spread the Five Ideals",
		ButtonDescription = "We were wise to make our exodus from the crumbling Indonesian 'state' when we did, remaining as a bulwark of stability on Sumatra; yet the Archipelago is still tainted by their presence. The influences of the Dutch and British puppets must be curtailed if we are to enforce the five ideals throughout Southeast Asia and bring these islands back under the will of Allah!",
	},

	CustomAlert = {
		Title = "The Blade of Malacca",
		Desc = "With a lack of confidence in the government, Nusantara fractured into juntas, each claiming to continue the Indonesian state; with others, such as Aceh, forming breakaways for their own plans. Now, we see these plans come to fruition, as the old blade of the Sultan has swept over Sumatra and culled the heretics, bringing western Indonesia under restored Muslim hegemony.",
		Button = "If Allah wills it...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 5, 
	},
},

{
	FormableName = "Bangsamoro Republik",
	CountriesCanForm = {"Bangsamoro"},
	RequiredCountries = {"Bangsamoro", "Sabah", "Sarawak"},
	RequiredTiles = {"Philippines.024", "Philippines.025", "Philippines.026", "Philippines.027", "Philippines.030", "Philippines.031", "Philippines.032", "Philippines.033"},
	ExclusiveFormables = {"Sultanate of Sulu"},

	FormableButton = {
		ButtonName = "Complete the Moro State of Nur Misuari",
		ButtonDescription = "Our Moro brothers sacrificed their lives to set us free from decades of Spanish, American, and Filipino occupation. Displacing, pillaging, and oppressing our people, this long injustice must be corrected once and for all. Let us finish the Moro revolution that Nur Misuari started and reestablish the Republic we lost in the Zamboanga siege, and bring back the Moro people together in a republic where they will be treated like home.",
	},

	CustomAlert = {
		Title = "The Moro State for Moros",
		Desc = "After decades of fighting from Spanish, American, Japanese, and Filipino rule, the Moros have established their own egalitarian republic in the model of Misuari's vision, extending to their claimed traditional domains to show that they will not bow to anyone. This is a strong message to the world, and to the invaders who will dare to conquer their promised land of peace and prosperity.",
		Button = "Never set a foot on that land...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 5, 
	},
},


{
	FormableName = "Chola Dynasty",
	CountriesCanForm = {"Dravida Nadu", "Tamil Eelam"},
	RequiredCountries = {"Dravida Nadu", "Sri Lanka", "Maldives"},
	FormableButton = {
		ButtonName = "Unleash the Tamil Tiger",
		ButtonDescription = "Our people have lived too long, and had a legacy far too prestigious, to continue to remain in the shadow of an irrelevant, miserable Indian peoples. We must act swiftly and put these pretenders in their place, so that the glory of Tamil may once more reclaim the subcontinent and restore the glory of the oldest civilization to tread upon this Earth!",
	},

	CustomAlert = {
		Title = "Nobody Conquers the Tamil",
		Desc = "Though their presence has been largely overshadowed by their much more 'successful' compatriots, the Tamil culture is one of the oldest to still have a presence in our modern world. A world, that, while they claim to hold dominance over under their new Emperor, has yet to see whether this tiger shall soon go extinct; much like its Bengali brethren.",
		Button = "And they've got spices.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 5, 
	},
},


{
	FormableName = "Johor Sultanate",
	CountriesCanForm = {"Johor"},
	RequiredCountries = {"Johor", "Riau", "Singapore"},
	RequiredTiles = {"Malaysia.007", "Malaysia.008", "Malaysia.011"},

	FormableButton = {
		ButtonName = "Reverse our partition!",
		ButtonDescription = "To amend our mistakes for allowing outside domination and our division, we must return these straits to our rule. For as we, the rightful heirs of Malacca, are the only worthy maharajas of the peninsula. Hence, we surrender all faith to Allah and may he extend the hand of our honourable abode!",
	},

	CustomAlert = {
		Title = "The Abode of Dignity",
		Desc = "The strait of Malacca had seen thalassocracies come and go regularly, and now, a new challenger has come forth: Johor. Although its lineage is no longer connected to that of Malacca, perhaps Johor and its capabilities have proven their legitimacy as successors.",
		Button = "Muar sultanates?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 5,
	},
},


{
	FormableName = "Raj of Sarawak",
	CountriesCanForm = {"Sarawak"},
	RequiredCountries = {"Brunei", "Sarawak"},

	FormableButton = {
		ButtonName = "Return the White Rajahs!",
		ButtonDescription = "Though foreign, the period of peace under the Brookes had been better than what Malaysia could ever strive to be! And to allow their continued legacy is... unmistaklably despicable. Thus, bear the sword and crown, and let the echoes of our success go forth beyond the seas!",
	},

	CustomAlert = {
		Title = "The Land of the Hornbills",
		Desc = "With Sarawak's independence comes a surge of monarchism within the country, specifically for the restoration of the late modern Brooke dynasty. And after much perseverance, the royalists of Sarawak have emerged victorious.",
		Button = "Dum spiro spero...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 4,
	},
},


{
	FormableName = "Sikh Empire",
	CountriesCanForm = {"Khalistan"},
	RequiredCountries = {"Khalistan", "Balawaristan", "Kashmir"},
	RequiredTiles = {"Pakistan.015", "Pakistan.016", "Pakistan.017", "Pakistan.018", "Pakistan.019", "Pakistan.029", "Pakistan.030", "Pakistan.031", "India.168", "Afghanistan.022", "Afghanistan.025"},
	FormableButton = {
		ButtonName = "Become Maharaja of the Punjab",
		ButtonDescription = "For time immemorial, we have pledged ourselves to the ideals of seva, and the complete desecration of the Five Thieves; but we can swelter under the heat of an Indian iron fist no longer. We have already freed ourselves from their infernal shackles; now it is time to liberate our brothers and sisters, and forever guard them from all of the Thieves’ forces as Maharaja." ,
	},

	CustomAlert = {
		Title = "Unification of the Twelve Misls",
		Desc = "The last time the Sikhs were persecuted and pressured by their surrounding countries, they lashed out in an extravagant regime known as the Sikh Empire, proclaiming the first Sikh state before its very rapid demise. With the dawn of a new regime, we have yet to see if history shall repeat itself; or if the Sikhs have now created an empire that will stand the test of time.",
		Button = "That’s pretty Sikh.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},


{
	FormableName = "Sultanate of Sulu",
	CountriesCanForm = {"Bangsamoro"},
	RequiredCountries = {"Bangsamoro", "Sabah"},
	RequiredTiles = {"Philippines.034", "Philippines.035", "Philippines.036", "Malaysia.022", "Malaysia.023", "Malaysia.024"},

	FormableButton = {
		ButtonName = "Seize the Sulu Archipelago",
		ButtonDescription = "Our future guides us not towards the shackles of Malaysia, nor towards a sedentary life on Borneo; it commands us towards the limitless horizon of the sea. The Sulu Archipelago is our rightful territory, and as our seafaring blood guides us to reclaim our promised islands, it too shall guide us to exact revenge on the shores of the Spaniards and British!" ,
	},

	CustomAlert = {
		Title = "Piracy in the Seventh Sea",
		Desc = "Due to a centuries-old claim of succession by the Philippines, the islands of the Sulu Archipelago, as well as Sabah, have been locked in a border conflict between it and the Malaysian federation. In a shocking move, the Sabahan people have risen up and claimed the islands as their own right, enacting a new era of piratical rule across the Pacific Ocean.",
		Button = "At least the dispute is resolved.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 6, 
	},
},


{
	FormableName = "Tibetan Empire",
	CountriesCanForm = {"Tibet"},
	RequiredCountries = {"Tibet", "Arunachal Pradesh", "Balawaristan", "Bhutan", "Gorkhaland", "Hexi", "Kashmir", "Nepal"},
	RequiredTiles = {"Afghanistan.020", "China.007", "China.008", "China.009", "China.010", "China.011", "China.013", "China.020", "China.021", "China.022", "China.027", "China.033", "China.034", "China.042", "China.043", "China.044", "China.339", "China.345", "China.346", "India.105", "India.136", "India.167", "India.168", "Tajikistan.001"},
	FormableButton = {
		ButtonName = "Reclaim the Holy Domain",
		ButtonDescription = "In our policy of unabashed neutrality, we shamefully placed ourselves in a position to fall into the sphere of Chinese influence; but no longer. With the restoration of our independence, the hour is at hand to reclaim our holy lands and bring an everlasting peace to the domains of the old Tibetan Empire.",
	},

	CustomAlert = {
		Title = "The Three Religious Kings",
		Desc = "Centered on the foothills of their eponymous plateau, the Tibetan people have been in open revolt against the Chinese for centuries, seeking to restore their lost glory. A revolt that, with the fall of the Chinese state, has now expanded outside Tibet's recognized borders, laying claim to swathes of land from India to Kazakhstan.",
		Button = "A new era of fragmentation is certain.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},


{
	FormableName = "United Papua",
	CountriesCanForm = {"Papua New Guinea", "West Papua"},
	RequiredCountries = {"Papua New Guinea", "West Papua"},
	FormableButton = {
		ButtonName = "Unite the Papuans",
		ButtonDescription = "With a nation of over hundreds of different cultures and languages, our two halves are finally one, not one being suppressed, not one losing their chance to show the world our diverse island by our neighbor, Indonesia. In peace and prosperity, let's show the world that anyone can bring their brothers and sisters into one nation without absolute force.",
	},

	CustomAlert = {
		Title = "The Unification of Papua",
		Desc = "The peoples of the island of Papua have at last united their peoples into a singular nation full of diverse cultures peacefully after West Papua declaring their independence from Indonesia.",
		Button = "Let’s see how long it lasts!",
	},

	CustomAttributes = {
		["Stability_Gain"] = 5, 
	},
}, 

{
	FormableName = "United Provinces of China",
	CountriesCanForm = {"Anhui", "Guangdong", "Guangxi", "Guizhou", "Hai-nam", "Hakkaland", "Hexi", "Hok-giong", "Hubei", "Hui", "Hunan", "Jiangsu", "Kongsi", "Manchuria", "Shandong", "Shanghai", "Shanxi", "Sichuan", "Yunnan", "Zhejiang", "Zhongzhou"},
	RequiredCountries = {"Anhui", "East Turkestan", "Guangdong", "Guangxi", "Guizhou", "Hai-nam", "Hakkaland", "Hexi", "Hok-giong", "Hubei", "Hui", "Hunan", "Jiangsu", "Kongsi", "Manchuria", "Shandong", "Shanghai", "Shanxi", "Sichuan", "Southern Mongolia", "Yunnan", "Zhejiang", "Zhongzhou"},
	RequiredTiles = {"China.063", "China.148", "China.149", "China.150", "China.151", "China.152", "China.153", "China.155", "China.156", "China.157", "China.158", "China.159", "China.160", "China.161", "China.006", "China.025", "China.031", "China.032", "China.039", "China.041"},
	ExclusiveFormables = {"Qing Dynasty"},
	FormableButton = {
		ButtonName = "Usher in a New Republican Era",
		ButtonDescription = "The failure of the old Republic had proven that the Beiyang had betrayed not just the people's will, but the visions of scholars and intellectuals across China. The fires of the Xinhai Revolution have not been put out, but rather invigorated. We have a dream that shall never die, remember that. No matter how fierce the storm, the five stripes of the Republic must still flutter in the breeze!" ,
	},

	CustomAlert = {
		Title = "The Relighting of the Chinese Revolution",
		Desc = "Years of a false republic, wars and chaos have led the Republic away from its roots, letting the sacrifices of the martyrs go in vain. However all of this has left the people awake at last. After millennia of authoritarianism in China, the United Provinces shatters this precedent, stoking the fires of revolution once again. The question is, will this vision be cut short once again?",
		Button = "The rejuvenation of the Chinese nation...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10 , 
	},
},


{
	FormableName = "United Turkic States",
	CountriesCanForm = {"Azerbaijan", "Karakalpakstan", "Kazakhstan", "Kyrgyzstan", "Northern Cyprus", "Turkey", "Uzbekistan"},
	RequiredCountries = {"Azerbaijan", "Kazakhstan", "Kyrgyzstan", "Northern Cyprus", "Turkey", "Uzbekistan"},

	FormableButton = {
		ButtonName = "Establish a Pan-Turkic Homeland!",
		ButtonDescription = "Our forefathers once believed in the creation of a pan-Islamic state. While the fall of the Ottoman Empire caused them to reject it in favor of nationalism, it has opened our eyes and directed us towards Central Asia with the new aim for the unity of all Turks. Let us march until the Turkic armies parade on the foothills of Altai and Tien-Shan mountains where the souls of our ancestors stroll!",
	},

	CustomAlert = {
		Title = "Türk Yurdu",
		Desc = "The establishment of a Turkic state has finally come to fruition. What started as a means to promote cooperation between Turkic states has ultimately become a united Turkic homeland.",
		Button = "Unity of language, thought, and action...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
}, 

{
	FormableName = "Catalan Federation",
	CountriesCanForm = {"Catalonia", "Andorra", "Balearic Islands", "Valencia"},
	RequiredCountries = {"Catalonia", "Andorra", "Balearic Islands", "Valencia"},
	ExclusiveFormables = {"Crown of Aragon"},

	FormableButton = {
		ButtonName = "Proclaim a united Catalan State",
		ButtonDescription = "Our brethrens’ rich history has spanned centuries across the Balearic sea. With our people being put in handcuffs for mere peaceful protests, it is clear the time has come to tear down the influence of our Spaniard oppressors, and fulfill the ideas of the Estat Català.",
	},

	CustomAlert = {
		Title = "Unification of the Catalans",
		Desc = "With the failure of Puigdemont in 2017, Catalonian separatism was relegated to a joke; despite this, the idea of Catalan independence never truly died, and, finally, after nearly a millennium stuck in the chains of Madrid, a united Catalan state has been achieved, serving as an inspiration for separatists across the globe.",
		Button = "Maybe they’ll last more than seven seconds this time…",
	},
	CustomAttributes = {
		["Stability_Gain"] = 5,
	},
},

{
	FormableName = "Kyrgyz Khaganate",
	CountriesCanForm = {"Kyrgyzstan", "Tuva"},
	RequiredCountries = {"Buryatia", "East Turkestan", "Mongolia", "Tuva"},
	RequiredTiles = {"China.081", "Kazakhstan.023", "Kazakhstan.024", "Kazakhstan.025", "Kazakhstan.026", "Kazakhstan.027", "Kazakhstan.028", "Kazakhstan.029", "Kazakhstan.030", "Kazakhstan.031", "Kazakhstan.032", "Kazakhstan.033", "Kazakhstan.034", "Kazakhstan.035", "Kazakhstan.036", "Kazakhstan.037", "Kazakhstan.040", "Kazakhstan.041", "Kazakhstan.066", "Kyrgyzstan.003", "Kyrgyzstan.006", "Kyrgyzstan.007", "Kyrgyzstan.008", "Kyrgyzstan.009", "Kyrgyzstan.010", "Russia.211", "Russia.212", "Russia.213", "Russia.214", "Russia.215", "Russia.216", "Russia.217", "Russia.218", "Russia.219", "Russia.220", "Russia.221", "Russia.222", "Russia.223", "Russia.224", "Russia.226", "Russia.237", "Russia.238", "Russia.239", "Russia.240", "Russia.241", "Russia.242", "Russia.244", "Russia.245", "Russia.246", "Russia.247", "Russia.248", "Russia.249", "Russia.251", "Russia.254", "Russia.255", "Russia.256", "Russia.261", "Russia.262", "Russia.265", "Russia.266", "Russia.267", "Russia.268", "Russia.269", "Russia.270", "Russia.313", "China.027", "China.044", "China.047", "China.049", "China.050", "China.059", "China.060", "China.061", "China.065", "China.066", "China.069", "China.070", "China.071", "China.072", "China.073", "China.074", "China.075", "China.076", "China.077", "China.078", "China.079", "China.080", "China.082", "China.083", "China.084", "China.086", "China.087", "China.088", "China.089", "China.090"},
	ExclusiveFormables = {"Turkic Khaganate"},
	FormableButton = {
		ButtonName = "Reclaim the First Khaganate",
		ButtonDescription = "Our forefathers submitted to the Mongol Empire, believing that the Great Khan could lead our peoples to prosperity; but centuries since his collapse, we have realized that this was not the case. If we are to prosper, we must crown our own Great Khan; one who shall lead the Yenisei Kyrgyz to dominion of the Eurasian steppe under an endless sunrise.",
	},

	CustomAlert = {
		Title = "Khan of an Endless Sun",
		Desc = "As predecessors to the Mongol Empire, the Yenisei Kyrgyz set the stage for the century of chaos and tyranny he would set upon the Earth, paving the way for his conquest of the Eurasian Steppe. Although they faded into obscurity following his passing, their sudden resurgence marks a bitter repeat of history . . and a terrifying marker of things to come.",
		Button = "A worrying turn for the East...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	FormableName = "Celestial Monarchy",
	CountriesCanForm = {"Sul"},
	RequiredCountries = {"Brazil"},

	FormableButton = {
		ButtonName = "Defeat the devil's law!",
		ButtonDescription = "They say they worship God but could they redeem themselves for destroying His kingdom on Earth? Nay, and for that, their place in the holy picture shall be with the devil in hell. Proclaim the monarchy, not for us, My lord, but to your name give the glory.",
	},

	CustomAlert = {
		Title = "O Contestado",
		Desc = "The messiah has returned but not in the Middle East but rather... Brazil. Previously, the Brazilian government had crushed the movement, but now they've been resurrected for a second coming. Could this be a new era for Christendom? Or has a false prophet come to lead astray?",
		Button = "Yeah... it's probably the latter...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 12,
	},
},

{
	FormableName = "State of East Indonesia",
	CountriesCanForm = {"South Maluku", "Bali", "Minahasa"},
	RequiredCountries = {"South Maluku", "Bali", "Minahasa"},
	RequiredTiles = {"Indonesia.045", "Indonesia.046", "Indonesia.047", "Indonesia.048", "Indonesia.049", "Indonesia.050", "Indonesia.051", "Indonesia.060", "Indonesia.061", "Indonesia.062", "Indonesia.063", "Indonesia.064", "Indonesia.065", "Indonesia.066", "Indonesia.067", "Indonesia.068", "Indonesia.069", "Indonesia.070", "Indonesia.074", "Indonesia.088"},

	FormableButton = {
		ButtonName = "Reestablish the Great East!",
		ButtonDescription = "The commands of the crescent and star at Jakarta have long forgotten the Christian, Hindu, and other diverse voices of the East. Their feeble attempts at integrating—rather than destroying—the tradition of the East harkens back to the stories of their time as the lapdog of the Japanese. Allow us to then pioneer a state for the islands of lesser Sunda, Sulawesi, and Maluku, and rebirth the state of East Indonesia!",
	},

	CustomAlert = {
		Title = "Timur Raya",
		Desc = "Promised loose unity in a 'republic' of Indonesia, the East's unique differences to the government of Java have fractured a bond so delicately crafted since the departure of the colonialists. As bloodshed of several insurgencies and revolutions proved pointless, the four stripes of East Indonesia fly against the archipelago's breeze, in the name of establishing a true, democratic state for their people.",
		Button = "Once again tentative at best…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 11,
	},
},

{
	FormableName = "Twipra Kingdom",
	CountriesCanForm = {"Tripura"},
	RequiredCountries = {"Meghalaya", "Tripura", "Mizoram"},
	RequiredTiles = {"Bangladesh.001", "Bangladesh.002", "Bangladesh.004", "Bangladesh.005", "India.115"},

	FormableButton = {
		ButtonName = "Reinstate the Manikya Dynasty!",
		ButtonDescription = "Since the fall of the Twipra Kingdom, we Tripurans have slowly become a minority in our lands. Even with our sovereignty restored, the lands of Tripura Sundari remain under threat. For stability and peace to return to our hills, it is clear we must restore a Manikya to the throne and finally let prosperity return for many millennia more!",
	},

	CustomAlert = {
		Title = "The Land Near Water",
		Desc = "Claiming descent from the Lunar Dynasty, the Twipra kingdom ruled the people of Tripura for millennia until their transformation into a princely state by the British. With their sovereignty against the Indian union restored, however, the Tripurans have once more reestablished their old kingdom from the Brahmaputra to the Bay of Bengal, truly becoming the people near water.",
		Button = "Is it Twiprah, Tippera, or Tripura?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 9,
	},
},

{
	FormableName = "Cook Islands Federation",
	CountriesCanForm = {"Cook Islands"},
	RequiredCountries = {"Cook Islands", "Niue"},

	FormableButton = {
		ButtonName = "Defend our slice of paradise!",
		ButtonDescription = "Previously, it was the French, but now, our real threat is the rest of humanity. With us free from association with New Zealand, only God almighty is our one truthful protector. May God save us all from the devil's grasp!",
	},

	CustomAlert = {
		Title = "Not Quite Paradise",
		Desc = "When New Zealand cut ties with the Cook Islands, one would expect the poor islanders to have torn themselves apart. Surprisingly, however, not only have they subverted expectations, but have also exceeded them; reviving a distant colonial federation, now with true self-governance.",
		Button = "Let them cook...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 4,
	},
},

{
	FormableName = "Islamic Republic of Sabah",
	CountriesCanForm = {"Sabah"},
	RequiredCountries = {"Bangsamoro", "Sabah"},
	RequiredTiles = {"Philippines.030", "Philippines.031", "Philippines.032"},

	FormableButton = {
		ButtonName = "Reap the currents of the east!",
		ButtonDescription = "Hereby make it known that only we shall decide the status of Sabah! And to prove this, we must exploit former governor, Datu Mustapha's influence, who, although controversial, was among the first to fight for this cause. Let us use his prestige and let Sabah prosper from its gains!",
	},

	CustomAlert = {
		Title = "The Land Below the Wind",
		Desc = "Relations between North Borneo and the Southern Philippines have previously ended with standoffs, disputes, and even espionage. However, with much negotiation, along with some political influence, an unexpected unification has been achieved.",
		Button = "Bah...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 7,
	},
},

{
	FormableName = "Kunduz Khanate",
	CountriesCanForm = {"South Turkestan"},
	RequiredTiles = {"Afghanistan.013", "Afghanistan.012", "Afghanistan.014", "Afghanistan.015", "Afghanistan.016", "Afghanistan.017", "Afghanistan.018", "Afghanistan.019", "Tajikistan.001"},

	FormableButton = {
		ButtonName = "Continue Murad Beg's ambitions!",
		ButtonDescription = "Gone is the Uzbek conqueror, Murad Khan, but we cannot let his ambitions remain buried in this graveyard of empires! Dost the Afghans seek to stop us, the wolves of Jawzjan shall tear them limb for limb. Arise ye Uzbeks of South Turkestan and as the true lords, we shall reign supreme!",
	},

	CustomAlert = {
		Title = "The Fortress of Varvaliz",
		Desc = "Although lost to time, the Khanate of Kunduz has made a comeback in the modern era. The lack of discussion is unsurprising, seeing as the state is as obscure as the lands that surround it. But this time, perchance the khanate won't remain as a footnote in history.",
		Button = "Khan we stan...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 7,	
	},
},

{
	FormableName = "Zogam",
	CountriesCanForm = {"Mizoram"},
	RequiredCountries = {"Kangleipak", "Mizoram", "Tripura"},
	RequiredTiles = {"Bangladesh.001", "Burma.023", "India.115"},

	FormableButton = {
		ButtonName = "Reunite the Zomi people!",
		ButtonDescription = "Decades ago, the repulsive British Empire carved rifts through our homeland, scattering our Zomi brethren throughout these abhorrent colonial barriers. To call Mizoram an island of peace? For the noble cause of unity, seize your arms! May the eroded barriers be torn down at last.",
	},

	CustomAlert = {
		Title = "Between Penlehpi and Kangtui",
		Desc = "An ancient Zomi folk song details the Zo people's ancestral homeland, a sprawling land known as Zogam. With violence and nationalism ablaze in India's east, the restoration of this realm was an inevitability. Such inevitability was false, as now the Kuki Hills thrive under a single banner once more.",
		Button = "Zoo wee mama!",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8,	
	},
},


{
	FormableName = "Novorossiya",
	CountriesCanForm = {"Luhansk", "Donetsk", "Transnistria", "Odessa"},
	RequiredCountries = {"Luhansk", "Donetsk", "Crimea", "Odessa", "Transnistria"},
	RequiredTiles = {"Ukraine.019", "Ukraine.018", "Ukraine.016", "Ukraine.015", "Ukraine.017", "Ukraine.012", "Ukraine.014", "Ukraine.013", "Ukraine.006", "Ukraine.021"},

	FormableButton = {
		ButtonName = "Forge a Southern Identity",
		ButtonDescription = "Forged by the Governing Senate in the sixteenth century, the region of Novorossiya has always been alienated from the central governing body at Kyiv. We must go beyond the idea of federalization! The destruction of the central government has paved the way for us: an opportunity to unite the lands of Novorossiya under one confederation!",
	},

	CustomAlert = {
		Title = "A New Russia",
		Desc = "While there has been a Russian presence in eastern Ukraine for centuries, separatist sentiment only emerged around the Soviet Union's collapse. Though there have been many efforts to distinctly separate Novorossiya from Ukraine in the past, those have gone to no purpose. Seeing as the incumbent government of Kyiv loses control, the Ukrainian separatist states have made a resurgence, under a new, united confederation.",
		Button = "Confederate States of Ukraine?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8,	
	},
},


{
	FormableName = "Republic of Cuyo",
	CountriesCanForm = {"Mendoza"},
	RequiredCountries = {"Mendoza"},
	RequiredTiles = {"Argentina.043", "Argentina.046"},

	FormableButton = {
		ButtonName = "Capture the Cuyo!",
		ButtonDescription = "For decades, the porteños have overindulged in our nation's resources, proving themselves of their Peronist heritage. However, it is now our turn to conduct a radical intervention. Liberate the Cuyo and let us toast our victory for the infinite Andes!",
	},

	CustomAlert = {
		Title = "Todo Esto Era Viña",
		Desc = "The MendoExit movement, once thought as completely loco, had somehow brought Mendoza to freedom, as if they were seeing the future itself. Now, like a virus, the Mendozans have successfully taken the Cuyo region, proclaiming a new republic in line with proposals of old.",
		Button = "Aged like fine wine...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8,
	},
},


{
	FormableName = "Kazembe",
	CountriesCanForm = {"Katanga"},
	RequiredCountries = {"Katanga"},
	RequiredTiles = {"Zambia.018", "Zambia.019", "Zambia.020", "Zambia.021"},

	FormableButton = {
		ButtonName = "Revive the traditional kingdom!",
		ButtonDescription = "A traditional kingdom that has endured the test of time, reduced only to a shell of our former self. Flourishing trade routes from the Tanganyika, and prosperous copper and fishing business brought us great opulence for a time. Conquered by warrior-king, Msiri, of the Yeke, and split by the British and Belgians thereafter, let us take stock of our past and reclaim our borders!",
	},

	CustomAlert = {
		Title = "A Cultural Resurgence",
		Desc = "The Mwata chieftainship has endured much. Though originating in war and being surrounded by countries that have experienced much conflict, it now presides over peace on the eastern shores of the Luapula and Lake Mweru.",
		Button = "Umutomboko!",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
},

{
	FormableName = "Malacca Sultanate",
	CountriesCanForm = {"Malaysia", "Johor", "Riau"},
	RequiredCountries = {"Johor", "Riau", "Singapore"},
	RequiredTiles = {"Indonesia.004", "Indonesia.005", "Indonesia.006", "Indonesia.007", "Indonesia.010", "Indonesia.018", "Malaysia.005", "Malaysia.006", "Malaysia.007", "Malaysia.008", "Malaysia.09", "Malaysia.010", "Malaysia.011", "Malaysia.012", "Malaysia.013", "Malaysia.014", "Malaysia.015", "Thailand.004", "Thailand.005"},

	FormableButton = {
		ButtonName = "Restore Malacca Domination!",
		ButtonDescription = "In the pages of history, the Malacca Sultanate wove its tapestry, threading the essence of Malay culture and history. In the annals of time, it stood as the spiritual birthplace of the Malays, characterized by an era of immense wealth and influence derived from its role in the spice trade. While passaging time may have dimmed its bright legacy, we, guided by the gentle hand of Allah, will reconstruct its honor and glory through the reconsolidation of control over the strait."
	},

	CustomAlert = {
		Title = "The Sultans of Malacca",
		Desc = "Centuries after the capture of Malacca in 1511 led by Afonso de Albuquerque, the legacy of the Malacca Sultanate still echoes among the Malay peoples, who regard it as the cradle of their nation. Determined to uphold its honor, they have embarked on a journey to re-consolidate control over the strait, a goal that has been achieved, firmly placing it under their control.",
		Button = "Wonder if Venice can still breathe...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
},


{
	FormableName = "Arpitania",
	CountriesCanForm = {"Valdosta"},
	RequiredCountries = {"Valdosta", "Savoy"},
	RequiredTiles = {"Swisterland.003"},

	FormableButton = {
		ButtonName = "Embrace Henriet's Ideas!",
		ButtonDescription = "As Krutwig led the Basque independence movement, his ideals manifested in the mind of Joseph Henriet, who envisioned the Franco-Provençal speakers to be one group, labeling them the Harpitans. However, Henriet and his ideas were soon forgotten into history, but today we can reclaim his vision and unite the territories he claimed were one and unite the Franco-Provençals as ",
	},

	CustomAlert = {
		Title = "Under The Rocks",
		Desc = "With the independence of Valdosta, the Aostans have revisioned the ideals of the maoist politician Joseph Henriet and his vision of uniting the Franco-Provençal speaking people under the pseudonym of Arpitane. As the Sun of the Alps descends over them, the future of the region may be bright.",
		Button = "Must've worked on an alp",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8,
	},
},



{
	FormableName = "Kingdom of Mrauk-U",
	CountriesCanForm = {"Arakan"},
	RequiredCountries = {"Arakan"},
	RequiredTiles = {"Bangladesh.013", "Bangladesh.002", "Bangladesh.001", "Burma.008", "Burma.009", "Burma.010", "Burma.011"},

	FormableButton = {
		ButtonName = "Reascend the Throne!",
		ButtonDescription = "The sprawling shores of the Kingdom of Mrauk U harbored unparalleled splendors so vigilantly safeguarded, and yet, we so naively welcomed integration with our neighbors. The prospects of a united Burmese state have brought us only the most profound of suffering! With determination steadfast, may the monarchy return with pristine glory!",
	},

	CustomAlert = {
		Title = "A Legacy Laid in Coins",
		Desc = "With severe unrest brewing a land of oppression and violence, the candid era of kingdoms in Southeast Asia lingered further and further into the past, or so it had seemed. When Burma crumbled, the throne of the Kingdom of Mrauk U was restored, breathing fresh life into the Bay of Bengal. Is a new era of monarchy in Southeast Asia about to begin?",
		Button = "They Arakant last long",
	},

	CustomAttributes = {
		["Stability_Gain"] = 9,
	},
},

{
	FormableName = "Asante Empire",
	CountriesCanForm = {"Ghana"},
	RequiredCountries = {"Ghana"},
	RequiredTiles = {"Ghana.003", "Ghana.006", "Ghana.007", "Ghana.008", "Ghana.009", "Ghana.010", "CoteDIvoire.001", "CoteDIvoire.002", "CoteDIvoire.003", "Togo.002", "Togo.001", "Togo.003", "BurkinaFaso.008"},

	FormableButton = {
		ButtonName = "Reinstate the Golden Throne!",
		ButtonDescription = "Decades before the independence of Ghana, the Ashanti united these lands under a prosperous empire until their destruction by the Anglos. To establish prosperity in our homeland once more, we must retake the old Ashanti lands and cover Ghana in Kente cloth once again!",
	},

	CustomAlert = {
		Title = "The Quills of The Porcupine",
		Desc = "Literally meaning 'because of war', the Ashanti empire militantly conquered and united the lands of Ghana as one, acquiring swathes of gold and… cowry shells? until they were themselves conquered by the British. But with the Ghanaians retaking their old lands once more giving power to the Asantehene, only time will tell about the survival of peace in Africa.",
		Button = "Seems familiar…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8,
	},
},

{
	FormableName = "Caliphate of Cordoba",
	CountriesCanForm = {"Andalusia", "Rif"},
	RequiredCountries = {"Andalusia", "Valencia", "Balearic Islands", "Aragon", "Gibraltar", "Rif"},
	RequiredTiles = {"Spain.001", "Spain.009", "Spain.012", "Spain.015", "Spain.008", "Spain.017", "Spain.018", "Spain.019", "Spain.016", "Spain.020", "Spain.029", "Spain.031", "Morocco.011", "Morocco.017", "Morocco.018", "Morocco.015", "Algeria.012", "Algeria.035", "Algeria.037", "Algeria.034", "Algeria.032", "Algeria.013", "Algeria.036", "Algeria.038", "Algeria.014", "Algeria.029", "Algeria.031", "Algeria.028", "Algeria.027", "Algeria.033", "Algeria.030", "Portugal.001", "Portugal.002", "Portugal.003", "Portugal.004", "Portugal.005", "Portugal.006", "Portugal.007", "Portugal.008", "Portugal.009", "Portugal.010", "Portugal.011", "Portugal.012", "Portugal.013"},

	FormableButton = {
		ButtonName = "Reverse the Reconquista!",
		ButtonDescription = "A bastion of science, culture, and peace, the Caliphate of Cordoba marked a true golden age for Andalusia. Despite Spain's attempts to remove our link to our Morisco brethren, the unity of the Maghreb and Andalus cannot be eradicated. Let the Granada war be reversed and Convivencia be ushered unto Iberia once more!",
	},

	CustomAlert = {
		Title = "The Gateway To Europe",
		Desc = "The collapse of restless Iberia was predicted by many. Yet, none expected the restoration of the Islamic region of Al Andalus. But as the dreams of Blas Infante are coming to realization and Islam returns, it appears that the Moor sighs no more.",
		Button = "An Islamic Inquisition..?",
	},

	AddModifiers = {
		["Age of the Caliphs"] = {
			Length = -1,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 8,
	},
},

{
	FormableName = "Sacred Union of Shambhala",
	CountriesCanForm = {"Buryatia"},
	RequiredCountries = {"Arunachal Pradesh", "Bhutan", "Buryatia", "East Turkestan", "Mongolia", "Tibet", "Tuva"},
	RequiredTiles = {"China.027", "China.044", "China.046", "China.047", "China.048", "China.049", "China.050", "China.051", "China.056", "China.057", "China.058", "China.059", "China.060", "China.061", "China.062", "China.065", "China.066", "China.069", "China.070", "China.071", "China.072", "China.081", "China.082", "China.089", "China.142", "India.105", "India.173", "Russia.219"},

	FormableButton = {
		ButtonName = "Tread the Path to Earthly Shambhala",
		ButtonDescription = "Prophecies have long foretold that the forces of Northern Shambhala would strike down and liberate our people from the enemies of righteousness. By union in faith and ideology alone, we shall shatter the imperialists of Europe and China. It is clear the Maitreya shall soon be born, and the perfect age will dawn anew. As the thunder of Maitreya and the blinding light of the Dharma rolls across this earthly plane, let us all take up arms and be reborn as warriors of Shambhala!",
	},

	CustomAlert = {
		Title = "Enlightenment in The East",
		Desc = "The chaos of the East has been tamed, and standing atop of the Himalayas resides the revolutionary Tibetan Buddhists—reinvigorated after its union of Asiatic peoples from Lake Baikal to the foothill of the Duars. The fathers of the Mongolian Revolution and Buddhists alike envisioned such a revolutionary state, and its manifestation has shook the Buddhist world. With word of the coming birth of the Maitreya, only time will tell what this spiritual revolution shall entail.",
		Button = "The Buddha smiles on all the world!",
	},

	AddModifiers = {
		["The Coming Maitreya"] = {
			Length = -1,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
},

{
	FormableName = "Denianke Kingdom",
	CountriesCanForm = {"Senegal"},
	RequiredCountries = {"Senegal", "Gambia"},
	RequiredTiles = {"Guinea.008", "Guinea.009", "Guinea.010", "Guinea.012", "Guinea.014", "Guinea.015", "Guinea.018", "Mali.001", "Mali.002", "Mali.003", "Mali.004", "Mali.005", "Mali.006", "Mali.010", "Mali.011", "Mali.012", "Mauritania.003", "Mauritania.004", "Mauritania.005", "SierraLeone.004"},


	FormableButton = {
		ButtonName = "Honor Tenguella's legacy!",
		ButtonDescription = "Whether it be Malian, the Almamy's, or French subjugation of our lands, we have endured it, and our patience has cooked a stone. As our forefathers sprang out from Futa Toro, likewise we shall break through towards another Great Fulo",
	},


	CustomAlert = {
		Title = "A Remnant of the Mali",
		Desc = "Ghana, Mali, Songhai; sequential empires whose names are recorded in the West African annals. Yet, a fourth, Denianke, appeared to have been lost to the sands of time. However, as the Fula reconquer the territory once conquered by Tenguella, they aim to relight the snuffed embers of a time past.",
		Button = "Fulo, Fula, or Fulani?",
	},


	AddModifiers = {
		["The Trans-Saharan Routes"] = {
			Length = -1
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
}, 


{
	FormableName = "Federation of Sudeste",
	CountriesCanForm = {"Yucatan"},
	RequiredCountries = {"Yucatan"},
	RequiredTiles = {"Mexico.044", "Mexico.045", "Mexico.046", "Mexico.047", "Mexico.048"},

	FormableButton = {
		ButtonName = "Federate the Southeast!",
		ButtonDescription = "Before the flames of division swept the heart of Mexico, our lands stood as a bastion of peace, a jewel bordered by the sea and the struggles of the past. However, in 1841, a moment of unity emerged as we sought to join with Tabasco and Chiapas. Though our aspirations faltered, it was never extinguished. Now, the call resounds once more: to reignite the hope of an independent federal republic between us, Tabasco, and Chiapas!",
	},

	CustomAlert = {
		Title = "The March To Eden",
		Desc = "History rarely grants second chances. The federal republic between Yucatan, Tabasco, and Chiapas, a dream frail and fragmented, was lost to time as both Tabasco and Chiapas returned to Mexico's fold. However, with the independence of Yucatan, it was given a second chance by history itself. With the seemingly improbable reality, Yucatan has used that second chance to establish a federal republic between Yucatan, Tabasco, and Chiapas, serving as a beacon of unity across the globe.",
		Button = "Tabasco sauce?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
}, 


{
	FormableName = "Uyghur Khaganate",
	CountriesCanForm = {"East Turkestan"},
	RequiredCountries = {"Mongolia", "Tuva", "Buryatia"},
	RequiredTiles = {"China.024", "China.027", "China.029", "China.030", "China.044", "China.047", "China.049", "China.050", "China.051", "China.056", "China.057", "China.058", "China.059", "China.060", "China.061", "China.070", "China.071", "China.072", "China.073", "China.074", "China.075", "China.076", "China.077", "China.078", "China.079", "China.080", "China.081", "China.082", "China.083", "China.084", "China.087", "China.089", "Russia.248", "Russia.249", "Russia.251", "Russia.254", "Russia.266", "Russia.267", "Russia.268", "Russia.269", "Russia.270", "Russia.272", "Russia.273", "Russia.274", "Russia.275"},

	FormableButton = {
		ButtonName = "Reunite the nine clans!",
		ButtonDescription = "Long before the Chinese armies desecrated our lands, the Uyghur Khagans established our homeland in East Turkestan. Despite Beijing's attempts to wash away our history and culture, they will remain fruitless as we once more entrench the Tamga of the Yaglakar clan over the Silk Road.",
	},

	CustomAlert = {
		Title = "A glorious, wise, mighty khagan",
		Desc = "Uniting to tear down and build upon the Gokturk's realm, the Uyghur Khaganate established dominance over the Silk Road until the Tang forced its migration and partition into several states. But with Beijing's control over Central Asia once more slipping, the Uyghurs have restored their forefathers' realm as the Toquz-Oghuz country enters the modern world.",
		Button = "Manichaeism in the modern day?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
}, 

{
	FormableName = "Ahom Kingdom",
	CountriesCanForm = {"Assam"},
	RequiredCountries = {"Arunachal Pradesh", "Nagalim"},
	RequiredTiles = {"India.108", "India.109", "India.110", "India.106", "India.107"},
	FormableButton = {
		ButtonName = "Reinstate Singha Rule",
		ButtonDescription = "The Ahom Kingdom—innovative in its ways, an unconquerable bastion to the Mughals. For centuries, it reigned supreme, uniting the Brahmaputra River Valley for what seemed an eternity. Pardon, an immortal kingdom cannot die! By the grace of Ngi Ngao Kham, may the Brahmaputra rush with the everlasting prosperity brought by the Ahom Kingdom once more!",
	},

	CustomAlert = {
		Title = "The Ahom Bomb",
		Desc = "As the Land of Seven Sisters once more descends into chaos, warring factions continue to vie for scraps of land of the dying Indian subcontinent, land that is blighted with misfortune. An interesting pretender has risen from the ashes, though. It seems the Ahom Dynasty of old has reemerged, determined to govern over the Assamese peoples for another six centuries to come.",
		Button = "Cheers to another 600 years…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
}, 

{
	FormableName = "Dervish State",
	CountriesCanForm = {"Ogaden"},
	RequiredCountries = {"Ogaden", "Somaliland"},
	RequiredTiles = {"Ethiopia.011", "Somalia.009"},

	FormableButton = {
		ButtonName = "Reestablish the Khususi!",
		ButtonDescription = "Somalia has only seen an uptick in civil violence and unrest stemming from their division from European powers. Under the guidance of the Mullah, we have resurrected the legacy of the once-lost-to-time Dervish State, with hopes of an economically stable, prosperous, and independent Somali state free from the shackles of colonialism unlike what has been seen in our southern neighbor.",
	},

	CustomAlert = {
		Title = "The Ardent Fighters for Islam",
		Desc = "From the Fortress at Taleh, the movement attempting to liberate the Somali homeland quickly expanded into Ogaden and onto the Somali Coast, lasting nearly 30 years. The Mullah's legacy has never been forgotten in the eyes of Somalia with several leaders being inspired by his intellect and power. However, since the failure of the Somali Federation and the collapse of the Ethiopian State, the Ogadeni People have taken influence from the former leader and completed the aims of the movement. Derwiish ha noolaado!",
		Button = "More Somalias?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 9,
	},
},


{
	FormableName = "Kingdom of Loango",
	CountriesCanForm = {"South Congo"},
	RequiredCountries = {"South Congo", "Cabinda"},
	RequiredTiles = {"Gabon.005", "Gabon.006", "Gabon.007"},

	FormableButton = {
		ButtonName = "Reinstate the Congolese rule over the Loango Coast",
		ButtonDescription = "After our independence from the Kongo, we flourished on the Loango Coast, but we failed to resist the European colonizers. As chaos took over The Republic of Congo, we regained our independence and so does our chance to restore the old kingdom. It is finally time to bring back the Kingdom of the Loango and restore our glory!",
	},

	CustomAlert = {
		Title = "Hand of Njimbe",
		Desc = "Amid Europe's imperialist scramble for Africa, few resisted—one of which was the Kingdom of Loango. After breaking from the Kingdom of Kongo, the Bakongo repelled colonizers for three centuries before falling to Portuguese rule. Now, as the Congo region crumbles, the people of the South Congo have now reclaimed their heritage, reviving the Kingdom of Loango in the modern era.",
		Button = "Another African Kingdom…", 
	},

	CustomAttributes = {
		["Stability_Gain"] = 9,
	},
},

{
	FormableName = "State of Jammu And Kashmir",
	CountriesCanForm = {"Kashmir"},
	RequiredCountries = {"Kashmir", "Balawaristan"},

	FormableButton = {
		ButtonName = "Restore the gift of the Singhs!",
		ButtonDescription = "We have been oppressed for far too long! It is time to stop bending the knee to outside powers, and proclaim our great glory of the nineteenth century as one country, not Dogra, Ladakhi, Balti or Shin but Kashmiri, for our vale of Kashmir!",
	},

	CustomAlert = {
		Title = "Reversal of the Poonch rebellion",
		Desc = "When the Amritsar treaty was signed, nobody knew that the seeds for all South Asian conflict was sown. Despite being independent, the Kashmiris were never free; as the Singhs were effectively British puppets. However, the Kashmiris have broken free from their shackles, perhaps a new age can be created for their kingdom?",
		Button = "For the sacrifice of the martyrs...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 4,
	},
},


{
	FormableName = "Sultanate of Darfur",
	CountriesCanForm = {"Darfur"},
	RequiredCountries = {"Darfur"},
	RequiredTiles = {"Sudan.015", "Sudan.016", "Sudan.017", "Sudan.018"},

	FormableButton = {
		ButtonName = "Restore our position in the Sahel!",
		ButtonDescription = "The instability caused by our former overlords, whether it be from the north or Khartoum, has left Darfur impoverished and in crisis. Hence, to rehabilitate Darfur, the prosperous rule of the Keira dynasty of the 1600s shall be reinstated. From Al-Fashir to the White Nile, the home of the Fur shall rise once more!",
	},

	CustomAlert = {
		Title = "The Home of the Fur",
		Desc = "Forgotten by its neighbors, Darfur, once a humanitarian hell, has achieved the glory that was taken from it during colonial times. With Kordofan, Sudan liberated and annexed into the restored Sultanate of Darfur, the political situation of the Sahel grows ever more complex.",
		Button = "The Land Cruisers are coming…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 5,
	},
}, 


{
	FormableName = "Taiping Heavenly Kingdom",
	CountriesCanForm = {"Hakkaland"},
	RequiredCountries = {"Arunachal Pradesh", "China", "Mongolia", "Taiwan", "Tuva"},
	RequiredTiles = {"Russia.219", "Russia.272", "Russia.273", "Russia.274", "Russia.275", "Russia.276", "Russia.278", "Russia.277", "Russia.279", "Russia.280", "Russia.281", "Russia.282", "Russia.283", "Russia.284", "Russia.285", "Russia.286", "Russia.287", "Russia.288", "Russia.289", "Russia.290", "Russia.291", "Russia.292", "Kyrgyzstan.003", "Kyrgyzstan.008", "Kyrgyzstan.009", "Kyrgyzstan.010", "Kazakhstan.026", "Kazakhstan.027", "Kazakhstan.028", "Kazakhstan.029", "Kazakhstan.030", "Kazakhstan.031", "Kazakhstan.032", "Kazakhstan.033"},

	FormableButton = {
		ButtonName = "Crown a new Heavenly King!",
		ButtonDescription = "Tianxia is lost. A century of hardship had rid the Beidi from the heartland, but alas, the Heavenly Shangdi was hunted, chased by the demons a new anarchy had set loose. His mandate was shunned, it was only a matter of time before wrath and destitution befell the land. Oh, such eternal damnation cannot be the legacy of His chosen people! We—the Hakka—are beholden to the legacy of God's Second Son: to restore the Heavenly Kingdom, to lead Zhonghua to Great Peace, and to achieve the Final Datong!" 
	},


	CustomAlert = {
		Title = "The Way to Great Peace",
		Desc = "What was once thought impossible has finally been accomplished. The Unceasing Path has been completed, as the Hakkas lead their Han brethren back to the joy of God. Yet, the sins that destroyed China are now a distant memory, for Hong Xiuquan's disciples have found themselves a new goal. The world had turned their back on the Second Coming in China; now they prepare to repent, for Judgment Day has come.",
		Button = "The brother of who!?",
	},

	AddModifiers = {
		["Upholding the Mandate of Heaven"] = {
			Length = -1,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 15,
	},
}, 

{
	FormableName = "Median Empire",
	CountriesCanForm = {"Kurdistan"},
	RequiredCountries = {"Armenia", "Iran", "Kurdistan"},
	RequiredTiles = {"Azerbaijan.001", "Iraq.012", "Iraq.019", "Iraq.020", "Turkey.029", "Turkey.030", "Turkey.036", "Turkey.037", "Turkey.038", "Turkey.040", "Turkey.041", "Turkey.042", "Turkey.045", "Turkey.060", "Turkey.063", "Turkey.067"},

	FormableButton = {
		ButtonName = "Hoist the Derafsh Mada",
		ButtonDescription = "Media, gather your spears! For the yoke that has subsumed our accomplishments into theirs, eclipsed us from history's annals, has waned. And in their wake, their domains lay scattered higgledy-piggledy. To bring order back to these entropic sands, we must restore the middle kingdom; and with it, engrave our name into the annals.",
	},

	CustomAlert = {
		Title = "The Palace at Ecbatana",
		Desc = "Since the reign of Cyrus, the Domains of Iran have essentially been indistinguishable or even synonymous with Persia itself; amidst the unfolding events upon the Iranian plateau, however, what was once a matter of course has unraveled. Assuming the role as the new guard over the Domains, Kurdistan has retaken their claims east of the Zagros.",
		Button = "Mean, Median, Mode…",
	},

	AddModifiers = {
		["The Structurizations of Huvakhshtra"] = {
			Length = -1,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
},


{
	FormableName = "Bas-Canada", 
	CountriesCanForm = {"Quebec"},
	RequiredTiles = {"Canada.043"},

	FormableButton = {
		ButtonName = "Reverse the Acte d'Union",
		ButtonDescription = "Several centuries ago, the Patriote movement, under Robert Nelson, became the first to solemnly declare the Bouclier canadien free, yet despite their failure, their legacy shall live on. As Quebec restores its rightful sovereignty, let us honor the Lower Canada rebellion and finally reestablish the Assemblée des six-comtés!", 
	},

	CustomAlert = {
		Title = "The Column of Liberty", 
		Desc = "Since its founding, it was clear to many the inevitable death of the Canadian state, yet not even the most ardent of Quebecois nationalists could have seen the state take its overlords name. But as the Ninety-Two Resolutions are passed and arrowed sashes are knitted, it appears the name Canada now flows directly through the St. Lawrence River.", 
		Button = "Vive le....Bas-Canada librer?", 
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
}, 

{
	FormableName = "Dietschland",
	CountriesCanForm = {"Flanders"},
	RequiredCountries = {"Flanders", "Frisia", "Kaliningrad", "Luxembourg", "Belgium", "Netherlands"},
	RequiredTiles = {"France.020", "France.022", "Germany.015", "Germany.016", "Germany.020", "Germany.021", "Germany.023", "Germany.024", "Germany.025", "Germany.026", "Germany.027", "Germany.034", "Germany.035", "Germany.036", "Germany.037", "Germany.038", "Germany.039", "Germany.040", "Germany.041", "Poland.001", "Poland.002", "Poland.003", "Poland.004", "Poland.005", "Poland.006", "Poland.020"},

	FormableButton = {
		ButtonName = "Protect Low German identity!",
		ButtonDescription = "The language of the Low Germans of today has been fractured with the rise of individualism amongst ourselves. Thus, as the former leader of the Aldietse movement, we must reunite our Hanseatic brethren to protect the Dietschland from our neighbors that had caused our decline.",
	},

	CustomAlert = {
		Title = "De Hanze",
		Desc = "With the growing importance of High German, some people have taken it upon themselves to preserve their local language, one of them being, Flanders. Unlike other efforts that are more to promotion, the Aldietse movement of Flanders has taken it upon themselves to annex most of the territory of the Hanseatic League. With these interesting preservation methods, it is clear that that the Dietschland shall be protected for years to come.",
		Button = "Hm.. yes quite necessary",
	},

	CustomAttributes = {
		["Stability_Gain"] = 12,
	},
}, 


{
	FormableName = "Federation of the Mariana Islands",
	CountriesCanForm = {"Northern Mariana Islands", "Guam"},
	RequiredCountries = {"Northern Mariana Islands", "Guam"},

	FormableButton = {
		ButtonName = "Unite the Mariana Islands!",
		ButtonDescription = "For decades, despite referendum after referendum, political reintegration of the Mariana Islands could not be achieved, with the territories staying divided till the modern day. It is clear that to finally rid these artificial boundaries, the people of the Mariana Islands must take things in our own hands and finally unite the Chamorro people as one!",
	},

	CustomAlert = {
		Title = "In the Middle of the Sea",
		Desc = "As the fate of the Trust territory of the Pacific was beginning to be decided, a more distinct idea began to spread throughout the Mariana Islands: the idea of unification. Despite the failure of the 1969 referendum, a new force has emerged in the islands. This force has now unified both of the Mariana islands together, into one united polity.",
		Button = "Was this made by a robot?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 4,
	},
},


{
	FormableName = "Great Moravia",
	CountriesCanForm = {"Czech Republic", "Slovakia"},
	RequiredCountries = {"Czech Republic", "Slovakia", "Hungary", "Saxony", "Carpathian Rus"},
	RequiredTiles = {"Germany.029", "Germany.033", "Poland.011", "Poland.012", "Poland.012", "Poland.013", "Poland.014", "Poland.015", "Poland.016", "Austria.006", "Serbia.004", "Serbia.005", "Romania.019", "Romania.021", "Romania.022", "Serbia.004", "Ukraine.037", "Ukraine.035"},

	FormableButton = {
		ButtonName = "Restore the Moravian Realm",
		ButtonDescription = "Our forefathers long ago swept over the Pannonian Basin, proclaiming a great empire from their powerbase in Moravia and becoming one of the foremost powers of the day. With the grandiose Nitra and Moravia again joining as one, let us usher in a new golden age for the West Slavic peoples and proclaim Great Moravia born anew!",
	},

	CustomAlert = {
		Title = "The Re-ascension of Western Slavdom",
		Desc = "Under the rule of Svatopluk the Great, the state of Great Moravia flourished and thrived as a powerful empire. With the impossible becoming reality, the West Slavs stand united once more as undisputed rulers in the heart of Europe.",
		Button = "The eagle lets out one last battlecry...",
	},


	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
},



{
	FormableName = "Kingdom of Alania",
	CountriesCanForm = {"Ossetia"},
	RequiredCountries = {"Ossetia", "Ingushetia", "Balkaria", "Karachay"},
	RequiredTiles = {"Russia.015", "Russia.006"},

	FormableButton = {
		ButtonName = "Restore Alan rule!",
		ButtonDescription = "The Alans, faced with decades of suppression from the Khazars, became a prosperous Christian kingdom after their oppressor's collapse, quickly establishing alliances with their neighbors. Despite fierce resistance, the Tatars soon came along to ransack the sacred nation of Alanita and succeeded. Now, with rising insurgency and instability in the Caucasus, we shall invade our former lands and reestablish the mighty kingdom, conquering lands for God once again!",
	},

	CustomAlert = {
		Title = "Fall of The Wall of Alexander",
		Desc = "Centuries after the Kingdom of Alania ended by the Tatars, its identity seems to have been obscured and many claimed to be their descendants. Nevertheless, the Ossetians reclaimed their rightful lineage, and have retaken their old lands in the name of Xwytsau, unsheathing their religion once more...",
		Button = "Christian only by name...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 6,
	},
}, 




{
	FormableName = "Kingdom of Asturias",
	CountriesCanForm = {"Asturias"},
	RequiredCountries = {"Asturias", "Galicia"},
	RequiredTiles = {"Spain.004", "Spain.005", "Spain.006", " Spain.007", "Spain.009", "Spain.015", "Portugal.011", "Portugal.012", "Portugal.013"},


	FormableButton = {
		ButtonName = "Restore Pelagius' realm",
		ButtonDescription = "The Kingdom of Asturias, established by Pelagius, underwent fierce rebellion against Moorish occupation to safeguard Europe from Moorish occupation. With our independence established, it is time to walk in the footsteps of Pelagius and reestablish the Kingdom of Asturias!",
	},

	CustomAlert = {
		Title = "Asturum Regnum",
		Desc = "The fracturing of old empires brings forth new civilizations. Similar to the fragmentation of the Moors, the Iberian Peninsula was no exception, shattering into several new nations—one of which was Asturias. With Asturias holding the Cross of Victory high, they have conquered vast swaths of Northern Iberia and have fulfilled the motto: 'Asturias is Spain; the rest is conquered land.'",
		Button = "Asturias, Austria, Austora, what's next?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
},


{
	FormableName = "Kingdom of Mercia",
	CountriesCanForm = {"Mercia"},
	RequiredCountries = {"Mercia"},
	RequiredTiles = {"United Kingdom.002", "United Kingdom.003","United Kingdom.004", "United Kingdom.005", "United Kingdom.006", "United Kingdom.007", "United Kingdom.008", "United Kingdom.009", "United Kingdom.010", "United Kingdom.011"},

	FormableButton = {
		ButtonName = "Return Mercian Supremacy!",
		ButtonDescription = "Centuries ago, the Mercian Kingdom ruled from the plains of the Midlands to the shores of the English Channel. We were the hegemons of the Heptarchy until the vicious Danes debilitated us and the vulturous Saxons incorporated us into their realm. Once again, St. Alban's Cross will fly over England, as the dominant force on the isle of Britain!",
	},

	CustomAlert = {
		Title = "Beyond the Midlands, a Kingdom of Angles.",
		Desc = "With the fragmentation of the British Isles, the Heptarchy has returned; the English once again divided between kingdoms of Angles and Saxons. However, much like a millennia ago, the fragmentation of England would not last for long. The petty kingdoms have been reunited, through the conquest of the Mercians.",
		Button = "Have some mercy.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 6,
	},
}, 

{
	FormableName = "Maghreb Federation",
	CountriesCanForm = {"Algeria", "Kabylia", "Libya", "Mauritania", "Morocco", "Rif", "Tunisia", "Western Sahara"},
	RequiredCountries = {"Algeria", "Libya", "Mauritania", "Morocco", "Tunisia", "Rif"},
	ExclusiveFormables = {"Almohad Caliphate", "Tamazgha", "West African Federation"},

	FormableButton = {
		ButtonName = "Unite the Western Arabs",
		ButtonDescription = "Nearing the end of colonialism in the Islamic World, the five states of the Maghreb called upon a union aiming to end petty disputes and conflicts between the members, eventually proposing the strategic regional necessity of the 'Maghreb Federation'. No nation can solve problems on its own, and it shows today that several conflicts have elapsed over the past ten years. Now shall we pick up this idea again, or we let the conflicts ravage the region.",
	},

	CustomAlert = {
		Title = "Itihad al-Maghrib",
		Desc = "Amidst ongoing disputes and political demand, the five states forming the western frontier of the Islamic World have united into a large, strong, and capable federation, not under luxury, nor a choice. As the requirements of geographic integration are now being realized, only time will tell if the federation will survive.",
		Button = "A familiar face in North Africa…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
}, 




{
	FormableName = "Republic of Pisa",
	CountriesCanForm = {"Tuscany"},
	RequiredCountries = {"Balearic Islands", "Corsica", "Sardinia"},
	RequiredTiles = {"Italy.019"},

	FormableButton = {
		ButtonName = "Reinstate the Pisan Republic",
		ButtonDescription = "Pisa once loomed over Venice and Genoa, overpowering all to become the foremost thalassocracy in the whole of the Mediterranean Sea; even centuries of assaults on all fronts could not fully dull her glory. All that remains is to raise the Occitan Cross over the Tyrhennian and show the modern world that only Pisa is worthy of claiming the Mediterranean as her own.",
	},

	CustomAlert = {
		Title = "At the Mouth of the Arno",
		Desc = "At the dawn of the High Middle Ages, the Republic of Pisa stood as a tower of commercial strength over the Mediterranean; a tower that leaned, and eventually crumbled under the barrage of its neighbors. However, the old republic has proven to be more stable than its foundations, their crimson banners waving triumphantly once more on every coast of the Ligurian.",
		Button = "Pizza!",
	},

	AddModifiers = {
		["The Maritime Republics"] = {
			Length = -1,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
},



{
	FormableName = "Sultanate of Aussa",
	CountriesCanForm = {"Afar"},
	RequiredCountries = {"Afar"},
	RequiredTiles = {"Ethiopia.013"},

	FormableButton = {
		ButtonName = "Rekindle the dreams of the Afar!",
		ButtonDescription = "As we led our resistance on the Ethiopian border, creeping up by was the Imperial Italian Army. Our formidable military ended their advance on our lands leading us to survive a few more decades, as we replicate the methods of our ancestral fathers, we too may achieve the same stability displayed during the long reigns of the former sultan.",
	},

	CustomAlert = {
		Title = "The Mudaïto Restoration",
		Desc = "Rising from the ashes of the destroyed Ethiopian Federation is the Sultanate of Aussa. As the leading Afar State governing lands to Dire Dawa, the sultans will surely have a long period of peace and stability for years to come.",
		Button = "Afar away kingdom..",
	},

	CustomAttributes = {
		["Stability_Gain"] = 8,
	},
},



{
	FormableName = "Sultanate of Ndzuwani",
	CountriesCanForm = {"Anjouan"},
	RequiredCountries = {"Anjouan", "Mwali"},

	FormableButton = {
		ButtonName = "Restore the power of Anjouan!",
		ButtonDescription = "With the union in shambles, we can finally restore our authority over this archipelago we once dominated. Let us restore the old Sultanate of Ndzuwani and strengthen the ties of our domain!",
	},

	CustomAlert = {
		Title = "Sultanat de Ndzuwani",
		Desc = "Ever since seceding from the failed Union of the Comoros, Anjouan's ambitions have turned to expansionism. As such, the old Sultanate of Ndzuwani has been reformed, establishing a new power in the Comorian archipelago.",
		Button = "Twenty coups later...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 6, 
	},
},



{
	FormableName = "Kingdom of Sindh",
	CountriesCanForm = {"Sindhudesh"},
	RequiredTiles = {"Pakistan.001", "Pakistan.002", "Pakistan.003", "Pakistan.004", "Pakistan.005", "Pakistan.006", "Pakistan.008", "Pakistan.010", "Pakistan.015", "Pakistan.020", "Pakistan.028", "Pakistan.023", "Pakistan.021", "Pakistan.022", "Pakistan.014", "Pakistan.012", "Pakistan.009", "Pakistan.011", "Pakistan.013"},
	FormableButton = {
		ButtonName = "Restore our dominion of the Border River!",
		ButtonDescription = "As disunited as the Sindhu and Sauriva were millennia ago, the realm of Chach-Brahmin remains partitioned by the colonial lines upon our devastated Bharat. Following an independent destiny for the heartland of India's culture, we shall restore the Chacha Dynasty to the subcontinent's most holy lands!",
	},

	CustomAlert = {
		Title = "Of the River and Sea",
		Desc = "Centuries before the Arab domination over the Indian subcontinent, Fortress Sindh staved them off. Holding the river of their namesake from origin to ocean, their occupiers have precariously branded them a simple tale of old. No further from the truth may it be, as upon their emancipation, the Sindh charge towards the wellspring of Bharat, and undo the narrative of the shared Indian state: for it is the Chach River, after all.",
		Button = "Chacha Real Smooth…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
},



{
	FormableName = "Gulf Union",
	CountriesCanForm = {"Bahrain", "Kuwait", "Saudi Arabia", "Qatar"},
	RequiredCountries = {"Bahrain", "Kuwait", "Saudi Arabia", "Qatar", "Oman", "United Arab Emirates"},
	ExclusiveFormables = {"Emirate of Diriyah"},

	FormableButton = {
		ButtonName = "Enact the Proposals of Manama!",
		ButtonDescription = "Upon the conclusion and success of the 'crusade' against colonialism within the Middle East, a crossroads between the continuation of an ambitious future or the status quo was between us. Instead of pursuing a campaign of aiding a tremendous effort bound to fan the flame of Arabian unity, we let our wisp extinguish into a cloud of ash. Shan't the future of Arabia be foggy and incognitive, for Abdullah bin Abdulaziz — and our own sake.",
	},

	CustomAlert = {
		Title = "The Boundless Oasis",
		Desc = "A peninsula divided and subjugated under the hands of foreigners or internal struggle throughout the sands of time; one could not pursue any further precise definition of the toss and turmoil Arabia has been acceded to — yet chained to. The self-proclaimed 'isle of the Arabs' have lit a torch to scorch the tendrils of vilification and bondage, ultimately ceasing their eternal vituperation.",
		Button = "Mashallah…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10
	},
},



{
	FormableName = "Kingdom of Ruthenia",
	CountriesCanForm = {"Carpathian Rus"},
	RequiredCountries = {"Carpathian Rus", "Moldova"},
	RequiredTiles = {"Belarus.013", "Poland.007", "Poland.009", "Poland.011", "Romania.005", "Romania.006", "Romania.007", "Romania.008", "Ukraine.019", "Ukraine.020", "Ukraine.021", "Ukraine.028", "Ukraine.031", "Ukraine.032", "Ukraine.033", "Ukraine.034", "Ukraine.035", "Ukraine.037", "Ukraine.038"},

	FormableButton = {
		ButtonName = "Reclaim the old Rus!",
		ButtonDescription = "Gone is the yoke on our people; our sins have finally been absolved. Once more, Galicia-Volhynia shall rise out of Kyiv's ashes, and another golden age shall begin. With our greatest disgrace exonerated, all the land of Rus shall be brought to its knees.",
	},

	CustomAlert = {
		Title = "Rex Russiae",
		Desc = "The unexpected rise of Zakarpattia to a regional power of Eastern Europe has led to nationwide support for the restoration of the Ruthenian monarchy. Thus, accompanied by the military, the crown of Galicia-Volhynia now rests upon the mantle of the Carpathian Rus. Long live the next King of All Rus.",
		Button = "How unorthodox...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 6,
	},
},

{
	FormableName = "Zion of America",
	CountriesCanForm = {"Deseret"},
	RequiredCountries = {"Falkland Islands", "Antigua And Barbuda", "Greenland", "Canada", "Mexico", "Bermuda", "Saint Pierre and Miquelon", "Cuba", "Bahamas", "Turks And Caicos Islands", "Cayman Islands", "Guatemala", "Belize", "Honduras", "El Salvador", "Argentina", "Jamaica", "Nicaragua", "Costa Rica", "Panama", "Haiti", "Dominican Republic", "United States Virgin Islands", "British Virgin Islands", "Anguilla", "Saint Martin", "Sint Maarten", "Saint Barthelemy", "Saba", "Sint Eustatius", "Saint Kitts And Nevis", "Montserrat", "Guadeloupe", "Dominica", "Martinique", "Saint Lucia", "Barbados", "Trinidad And Tobago", "Grenada", "Saint Vincent And The Grenadines", "Bonaire", "Aruba", "Curacao", "Colombia", "Peru", "Ecuador", "Venezuela", "Guyana", "Suriname", "French Guiana", "Bolivia", "Brazil", "Paraguay", "Uruguay", "Chile", "United States"},


	FormableButton = {
		ButtonName = "Claim the true Holy Land",
		ButtonDescription = "The voice of one crieth in the wilderness: 'Prepare ye the way of the LORD! For the Son of God is coming, and the New Millennium is at hand.' Latter-day Saints, our Great Awakening has come. Let us blaze the trail to Heaven! Let us topple the enemies of man! Blessed are the people of Deseret, for ours is the Kingdom of God!",
	},
	
	AddModifiers = {
		["An American Zion"] = {
			Length = -1
		},
	},

	CustomAlert = {
		Title = "The New Millennium",
		Desc = "From the chaos of the Second Great Awakening, the new Mormon religion was born. Facing intense persecution, the first Mormon pioneers trekked across the frontier, awaiting the arrival of the Kingdom of God. Now, with the New World at their feet, God may have finally delivered them His Promised Land.",
		Button = "Joseph Smith was called a prophet...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 20,
	},
},

{
	FormableName = "Republic of the Rio Grande",
	CountriesCanForm = {"Nuevo Leon"},
	RequiredCountries = {"Nuevo Leon"},
	RequiredTiles = {"Mexico.011", "Mexico.012", "Mexico.014", "Mexico.015", "UnitedStates.098"},

	FormableButton = {
		ButtonName = "Hoist the Rio Grande Banner!",
		ButtonDescription = "Forged from the chaos that ensued during the Rio Grande rebellion, our forefathers' revolutionary mentality won the hearts of the people. With the same chaos ravaging throughout Northern Mexico, perhaps it is time for us to embrace the legacy of our forefathers, and win the people a second time.",
	},

	CustomAlert = { 
		Title = "The Northeastern Federalists",
		Desc = "Everyone thought that the Republic of The Rio Grande was crushed, relinquished, and dead. However, the tiny breakaway state of Nuevo Leon have proven themselves to be worthy successors to the Republic of The Rio Grande, liberating their former territories and asserting themselves as new republic in the modern era.",
		Button = "Through God, Liberty, and Convention…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},

},

{
	FormableName = "Bani-Khalid Emirate",
	CountriesCanForm = {"Qatif"},
	RequiredCountries = {"Qatif", "Kuwait", "Qatar", "Bahrain"},
	RequiredTiles = {"SaudiArabia.016", "SaudiArabia.015", "SaudiArabia.019", "UnitedArabEmirates.001"},


	FormableButton = {
		ButtonName = "Assume Supremacy over Arabia!",
		ButtonDescription = "Before annexation, the Bani Khalid Emirate was a formidable civilization, able to defy even the mighty Ottomans. Unfortunately, our freedom was stolen from us by Al Saud. But now, with the collapse of Saudi Arabia, It’s time to re-establish our legacy and exact our vengeance against those who had brought us down before. Let the banner of Bani Khalid rise once more!",
	},

	CustomAlert = { 
		Title = "The Domain of Al-Hasa",
		Desc = "The liberation of Qatif from the vile grasp of the Saudi Kingdom marked a new era for the Arabian Peninsula. Yet none foresaw that, guided by Allah's will, the Shiites would rise once more, seeking to restore the mighty state founded by Emir Barrak ibn Ghurayr after vanquishing the Ottoman menace. Now, in his footsteps, they have reclaimed their freedom and revive the great emirate",
		Button = "Lands of Sand…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},

},

{
	FormableName = "Union of Caribbean States",
	CountriesCanForm = {"Nevis", "Cuba", "Jamaica", "Haiti", "Dominica", "Dominican Republic", "San Andres", "Bahamas", "Turks And Caicos Islands", "Cayman Islands", "La Gonave", "Trinidad And Tobago", "Grenada", "Puerto Rico", "United States Virgin Islands", "British Virgin Islands", "Anguilla", "Saint Martin", "Sint Maarten", "Saint Barthelemy", "Saba", "Sint Eustatius", "Saint Kitts And Nevis", "Antigua And Barbuda", "Barbuda", "Tobago", "Montserrat", "Guadeloupe", "Martinique", "Saint Lucia", "Barbados", "Saint Vincent And The Grenadines", "Aruba", "Curacao", "Bonaire", "Belize", "Guyana", "Suriname", "Bermuda", "French Guiana"},
	RequiredCountries = {"Cuba", "Jamaica", "Haiti", "Dominica", "Dominican Republic", "San Andres", "Bahamas", "Turks And Caicos Islands", "Cayman Islands", "Trinidad And Tobago", "Grenada", "Puerto Rico", "United States Virgin Islands", "British Virgin Islands", "Anguilla", "Saint Martin", "Sint Maarten", "Saint Barthelemy", "Saba", "Sint Eustatius", "Saint Kitts And Nevis", "Antigua And Barbuda", "Montserrat", "Guadeloupe", "Martinique", "Saint Lucia", "Barbados", "Saint Vincent And The Grenadines", "Aruba", "Curacao", "Bonaire", "Belize", "Guyana", "Suriname", "Bermuda", "French Guiana"},
	RequiredTiles = {"Mexico.059", "Honduras.012", "Venezuela.029"},

	FormableButton = {
		ButtonName = "Pursue Caribbean Federalization!",
		ButtonDescription = "The fall of the West Indies Federation was not to be the end of Caribbean integration. Our leaders still dreamed of a union spanning all the islands and reaching into the mainland. In these fraught times, to face the challenges ahead, we must become one nation, for all Caribbeans.",
	},

	CustomAlert = { 
		Title = "One People, One Caribbean, One Destiny.",
		Desc = "Columbus landed on the shores of the West Indies in 1492. Ever since then, the Caribbean community has been divided. Every island a nation, every lagoon a colony. It seems that one of them has finally done it and unified the islands, once and for all.",
		Button = "Celebrating their unity…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},

},

{
	FormableName = "Cemanahuac",
	CountriesCanForm = {"Aztlan", "San Andres", "Wallmapu", "Yucatan", "La Gonave", "South Peru", "Moskitia", "Choco"},
	RequiredCountries = {"Anguilla", "Antigua And Barbuda", "Argentina", "Aruba", "Bahamas", "Barbados", "Belize", "Bermuda", "Bolivia", "Bonaire", "Brazil", "British Virgin Islands", "Canada", "Cayman Islands", "Chile", "Colombia", "Costa Rica", "Cuba", "Curacao", "Dominica", "Dominican Republic", "Ecuador", "El Salvador", "Falkland Islands", "French Guiana", "Greenland", "Grenada", "Guadeloupe", "Guatemala", "Guyana", "Haiti", "Honduras", "Jamaica", "Martinique", "Mexico", "Montserrat", "Nicaragua", "Panama", "Paraguay", "Peru", "Saba", "Saint Barthelemy", "Saint Kitts And Nevis", "Saint Lucia", "Saint Martin", "Saint Pierre and Miquelon", "Saint Vincent And The Grenadines", "Sint Eustatius", "Sint Maarten", "Suriname", "Trinidad And Tobago", "Turks And Caicos Islands", "United States", "United States Virgin Islands", "Uruguay", "Venezuela"},
	ExclusiveFormables = {"Patria Grande", "United States of South America"},

	FormableButton = {
		ButtonName = "Let the Mexica prevail!",
		ButtonDescription = "Since the advent of Columbus, Cemanahuac lay at the behest of foreign squatters. The age of exploration has come to its end, and with it shall be all the extermination and diseases Europe had imposed on us. Rise, oh Cemanahuac, and we shall liberate the continents and forge the new world anew!",
	},

	CustomAlert = {
		Title = "The Land Between the Waters",
		Desc = "In the name of their one god, the indigenous people of the Americas have brought forth the most terrifying union in existence, Cemanahuac. As Europe suffers from the largest immigration crisis ever, only time will tell if the Mexica can recover from the damage of centuries of colonialism.", 
		Button = "How did we get here?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 15,
	},
},

{
	FormableName = "Confederation of Atlantic States",
	CountriesCanForm = {"Azores", "Canary Islands", "Bermuda", "Madeira", "Cabo Verde"},
	RequiredCountries = {"Azores", "Canary Islands", "Bermuda", "Madeira", "Cabo Verde"},

	FormableButton = {
		ButtonName = "Unite the Atlantic Islands!",
		ButtonDescription = "The world called us irrelevant, a bunch of islands cast aside in an ocean of insignificance. They dismissed us as mere dots on a map, too small to matter, and too far away to influence the tides of geopolitics. However, they have failed to see the strength in our unity. Today, as one, united confederation, we shall begin the scourge of the Atlantic! ",
	},

	CustomAlert = {
		Title = "Beyond the Pillars of Hercules",
		Desc = "During the Age of Discovery, the Atlantic was a vast and treacherous frontier, bridging the Americas and Europe together. Although the islands of the Atlantic were previously divided by the colonists, they seem to have now unified under one confederation. Only time will tell whether they will prosper, or bend to colonial rule again.",
		Button = "Atlantis?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},

},

{
	FormableName = "Kingdom of Navarre",
	CountriesCanForm = {"Basque"},
	RequiredCountries = {"Basque"},
	RequiredTiles = {"Spain.009", "Spain.010"},

	FormableButton = {
		ButtonName = "Reforge the Basque Kingdom",
		ButtonDescription = "The Kingdom of Navarre has long been overlooked and overshadowed by other Spanish and Iberian States. But now is the time for us to take control of our own destiny. Let us reunite the Basque people!",
	},

	CustomAlert = {
		Title = "The Return of Navarre",
		Desc = "The Kingdom of Navarre, a former northern Iberian state that served as a buffer state between France and the Iberian peninsula, has been overlooked during the Reconquista era. From the 9th century to the 1600s, it existed before being absorbed into the Castilian Crown. Now, after centuries of trials and setbacks, the Kingdom of Navarre has returned to the Basque people. ",
		Button = "A Basque Kingdom?"
	},

	CustomAttributes = {
		["Stability_Gain"] = 5,
	},
},

{
	FormableName = "West African Federation",
	CountriesCanForm = {"Ambazonia", "Nigeria", "Benin", "Togo", "Niger", "Ghana", "Western Togoland", "Burkina Faso", "Cote d'Ivoire", "Liberia", "Sierra Leone", "Guinea", "Mali", "Azawad", "Agadez", "Guinea-Bissau", "Gambia", "Casamance", "Senegal", "Cabo Verde", "Mauritania", "Biafra", "Oduduwa", "Niger Delta"},
	RequiredCountries = {"Ambazonia", "Nigeria", "Benin", "Togo", "Niger", "Ghana", "Burkina Faso", "Cote d'Ivoire", "Liberia", "Sierra Leone", "Guinea", "Mali", "Guinea-Bissau", "Gambia", "Senegal", "Cabo Verde", "Mauritania"},
	ExclusiveFormables= {"Maghreb Federation", "Tamazgha"},

	FormableButton = {
		ButtonName = "Bring Unity to West Africa",
		ButtonDescription = "West Africa has long been a hotbed of conflict, bloodshed, and most importantly, Pan-Africanism. With many past attempts for regional cooperation, all falling flat on their faces or straying from the true goal of political integration, it is clear what must be done. Only through our military might will West Africa realize peace and stability, for we shall then set an example for the rest of the continent. The first steps of a united Africa shall be taken!",
	},

	CustomAlert = {
		Title = "Rise of the West",
		Desc = "Many have tried and failed to bring civil strife to an end in the region of West Africa; but as the storm of war comes to a calm, West Africa has risen under one united federation. With the establishment of such a hegemonic Pan-African state, only time will tell what is to come, as the ideals of Pan-Africanism once more sweep the shackled continent in new interest.",
		Button = "The Gold Coast shines bright",
	},

	CustomAttributes = { 
		["Stability_Gain"] = 10, 
	}, 
}, 

{
	FormableName = "United States of South America",
	CountriesCanForm = {"Antioquia", "Amazonia", "Argentina", "Bolivia", "Brazil", "Chile", "Choco", "Colombia", "Ecuador", "Espirito Santo", "Falkland Islands", "French Guiana", "Guyana", "Nordeste", "Mendoza", "Paraguay", "Patagonia", "Peru", "Santa Cruz", "South Peru", "Rio de Janeiro", "Sao Paulo", "Sul", "Suriname", "Uruguay", "Venezuela", "Wallmapu"},
	RequiredCountries = {"Argentina", "Bolivia", "Brazil", "Chile", "Colombia", "Ecuador", "Falkland Islands", "French Guiana", "Guyana", "Paraguay", "Peru", "Suriname", "Uruguay", "Venezuela"},
	ExclusiveFormables= {"Patria Grande", "Cemanahuac"},

	FormableButton = {
		ButtonName = "Sew the Wounds of South America",
		ButtonDescription = "Our independence was to be glorious, a dream of liberty for the South American continent was our ultimate goal. Alas, our tumultuous upbringing only lead to our subservience to the Yankees up north. Let us arise, fight, for the liberation of our continent we envisioned so long ago! Rising in struggle, South America with a giant voice cries out: Forward!",
	},

	CustomAlert = {
		Title = "Dreams of Liberation",
		Desc = "Long has South America been plagued with instability and foreign imperialism, the true potential of the continent, diminished. The songs of freedom though, now are sung by a thousand voices, as the land of South America has united under a single entity. The new United States of South America has forged unity between the people, from north to south, united in struggle and the ideals of a new dawn for the Fatherland.",
		Button = "Now we'll never win the World Cup..",
	},

	CustomAttributes = { 
		["Stability_Gain"] = 10, 
	}, 

	AddModifiers = { 
		["Soy del Sur"] = { 
			Length = -1, 
			DoNotClear = true,
		}, 
	},
},

{
	FormableName = "Oceanic Union",
	CountriesCanForm = {"Australia", "American Samoa", "Bougainville", "Chuuk", "Cook Islands", "Fiji", "French Polynesia", "Guam", "Hawaii", "Kiribati", "Marshall Islands", "Micronesia", "Nauru", "New Caledonia", "New Munster", "New Zealand", "Niue", "Norfolk Island", "Northern Mariana Islands", "Palau", "Rapa Nui", "Samoa", "Papua New Guinea", "Solomon Islands", "Tasmania", "Tuvalu", "Tokelau", "Tonga", "Vanuatu", "Wallis and Futuna", "West Papua", "Westralia", "Yap", "Timor-Leste", "Minahasa", "South Maluku"}, --"Nadroga-Navosa"
	RequiredCountries = {"Australia", "American Samoa", "Cook Islands", "Fiji", "French Polynesia", "Guam", "Hawaii", "Kiribati", "Marshall Islands", "Micronesia", "Nauru", "New Caledonia", "New Zealand", "Niue", "Norfolk Island", "Northern Mariana Islands", "Palau", "Samoa", "Papua New Guinea", "Solomon Islands", "Rapa Nui", "Tuvalu", "Tokelau", "Tonga", "Vanuatu", "Wallis and Futuna", "West Papua", "Timor-Leste", "Minahasa", "South Maluku"},
	RequiredTiles = {"Indonesia.045", "Indonesia.074", "Indonesia.088", "Indonesia.051", "Indonesia.050", "Indonesia.049", "Indonesia.048", "Indonesia.046", "Indonesia.047", "Indonesia.068", "Indonesia.067", "Indonesia.061", "Indonesia.060", "Indonesia.062", "Indonesia.063", "Indonesia.064", "Indonesia.065", "Indonesia.066", "Indonesia.069", "Indonesia.070"},

	FormableButton = {
		ButtonName = "Foster a Union",
		ButtonDescription = "As the first men sailed across treacherous seas to great unknown, none could ever begin to imagine the wonders of the Sahul and her treasures. Through centuries of dominance by Europeans, it is time to shed the demons of our past, unshackle our brethren, and bring hope across this vast, yet lonely isles.The clean breaths of air that sweep across this land belongs not to foreign powers, but to those who have stayed and prevailed! ",
	},

	CustomAlert = {
		Title = "Banner of Oceania",
		Desc = "From 1606 when Oceania was first spotted by the Dutch until today, Oceania's future was uncertain. With hungry neighbors having an itch for new territories and internal issues caused by global warming, the future looked bleak for many within the nation. However not all hope was lost, as with a display of defiance, the territories united! With this revelation, it's unclear what they have planned, and better yet, what their foes have in store.",
		Button = "It's just like 1984!",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	}, 


	AddModifiers = { 
		["Unionization of Oceania"] = { 
			Length = -1, 
			DoNotClear = true,
		}, 
	},

},

{
	FormableName = "Great Timor",
	CountriesCanForm = {"Timor-Leste"},
	RequiredCountries = {"Timor-Leste"},
	RequiredTiles = {"Indonesia.051"},

	FormableButton = {
		ButtonName = "Unite the island of Timor",
		ButtonDescription = "Our island was a land of unity, action, and progress, yet alas, it was destroyed by wars across several centuries, with both sides of the island separated by European powers. Despite our independence from Indonesia, West Timor remains under occupation. Let us march on and liberate our western brethren, and put an end to the artificial boundaries dividing us!",
	},

	CustomAlert = {
		Title = "Pátria",
		Desc = "Timor was never an island of peace, from it's colonization by the Portuguese to it's occupation under Indonesia, with the island never obtaining a glimpse at peace. Despite the independence of the east following international pressure, the west remained under Indonesian occupation. Yet against all odds, the tiny state of Timor-Leste, determined to liberate its brethren, has marched west into West Timor, uniting the island for the first time since the Empire of Wehali of old....",
		Button = "East-East has liberated....West-East?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 5,
		["PoliticalPower_Gain"] = 35,
	}
},

{
		FormableName = "Aistija",
		CountriesCanForm = {"Latvia", "Lithuania"},
		RequiredCountries = {"Kaliningrad", "Latvia", "Lithuania"},
RequiredTiles = {"Belarus.001", "Belarus.009", "Belarus.014", "Belarus.015", "Poland.005", "Poland.006", "Poland.007"},
		ExclusiveFormables = {"Polish-Lithuanian Commonwealth"},
		FormableButton = {
			ButtonName = "Federalize Our Fraternal Fragments",
			ButtonDescription = "Across the annals of our aspirations, from the Baltic Crusades to the Bloody Tsars' reign, the bond between us Baltic Brothers has withstood trials and tribulation. Emerging from Versailles and prior, only dismantled by the volatile volition of the Vytis' pride, such shackles imposed by alien antagonists have now been shattered. No longer shall our borders be constrained by the bind of the Gauja, but only bending to our Baltic identity, as boundless as that may be.",
		},

		CustomAlert = {
				Title = "The Baltic Brotherhood",
				Desc = "Since the Red Terror fell, the forest brothers have haphazardly trudged along into modernity; or so was perceived. Emerging from the wastes of Paris' Peace—only then bound down by Polish posterity—the Baltic Brothers have found their foot amidst Europe today, though under an anachronous and ancient banner of the Aesti...",
				Button = "Can Esti into Scandi Now?",
		},

		CustomAttributes = {
				["Stability_Gain"] = 10,
		},
		Demonym = "Aistijan",
		ID = "https://www.roblox.com/library/72268349794001",
		Image_ID = nil,
},

{
		FormableName = "Aridoamerica",
		CountriesCanForm = {"Nuevo Leon", "Baja California", "Jalisco", "Chihuahua", "Sonora"},
		RequiredCountries = {"Nuevo Leon", "Baja California", "Jalisco", "Chihuahua", "Sonora"},
RequiredTiles = {"Mexico.011", "Mexico.012", "Mexico.014", "Mexico.015", "Mexico.017", "Mexico.018", "Mexico.019", "Mexico.020", "Mexico.021", "Mexico.022", "Mexico.023", "Mexico.025", "Mexico.031", "Mexico.032", "Mexico.033", "Mexico.058"},
		FormableButton = {
			ButtonName = "Awaken The North!",
			ButtonDescription = "For as long as the wind has whistled and the sun has shone, the free north has been chained by the tyrannical south. But the golden eagle has been impaled by the cactus and poisoned by the rattlesnake, and the day approaches when we too shall feast. Let us ride in the spirit of the old vaqueros, and roar as a new lion roars, and may our Aridoamerica be judged only by the Eyes of God!",
		},

		CustomAlert = {
				Title = "Into The Sandstorm",
				Desc = "As southern-dominated Mexico tyrannized the north, its old independent spirit, forged by the revolutionaries of the Rio Grande, rose in rebellion. Espousing this legacy as well as that of local indigenous groups, the new state of Aridoamerica has swept across the sierras as a dust storm sweeps across the plains, securing their independence from Mexico for generations to come.",
				Button = "The town ain't big enough for the two of them.",
		},

		CustomAttributes = {
				["Stability_Gain"] = 9,
		},
		Demonym = "Aridoamerican",
		ID = "https://www.roblox.com/library/71477422489946",
		Image_ID = nil,
},

{
		FormableName = "Himalayan Confederation",
		CountriesCanForm = {"Sikkim"},
		RequiredCountries = {"Sikkim", "Arunachal Pradesh", "Bhutan", "Kangleipak", "Nagalim", "Nepal"},
RequiredTiles = {"India.109", "India.110", "India.115"},
		FormableButton = {
			ButtonName = "Unite the Himalayas",
			ButtonDescription = "Millions of years ago, India crashed into the Asian plate, creating a barrier that would eventually protect our people for millennia. However, as the fiends of Bharat attempt to overcome our defense and a helping hand is received from China, the time to confederate the Himalayan Mountains has come.",
		},

		CustomAlert = {
				Title = "The King of the Hill",
				Desc = "During the Sino-Indian war, the Chinese government proposed a United Himalayan state that saw support across the Himalayas but could never come to be. However, as the Hindutva rises in India and the rise of nationalistic influence increases, the Himalayas have once more considered Beijing's proposal and established a state free from Indian influence.",
				Button = "Frigid.",
		},

		CustomAttributes = {
				["Stability_Gain"] = 10,
		},
		Demonym = "Himalayan",
		ID = "https://www.roblox.com/library/96919200049136",
		Image_ID = nil,
},

{
		FormableName = "Hunnic Empire",
		CountriesCanForm = {"Hungary"},
		RequiredCountries = {"Hungary", "Transylvania", "Slovakia", "Czech Republic", "Saxony", "Moldova", "Don", "Kuban", "Circassia", "Ukraine", "Belarus", "Poland", "Vojvodina", "Kaliningrad", "Frisia"},
RequiredTiles = {"Austria.006", "Austria.005", "Germany.005", "Germany.007", "Germany.006", "Germany.008", "Germany.010", "Germany.009", "Germany.011", "Germany.029", "Germany.028", "Germany.033", "Germany.037", "Germany.038", "Germany.039", "Germany.036", "Germany.035", "Germany.034", "Germany.016", "Germany.017", "Germany.018", "Germany.019", "Germany.020", "Germany.021", "Germany.024", "Germany.025", "Germany.027", "Germany.026", "Germany.023", "Germany.041", "Germany.040", "Russia.040", "Russia.041", "Russia.042", "Russia.046", "Russia.045", "Russia.043", "Russia.047", "Russia.044", "Russia.066", "Russia.065", "Russia.064", "Russia.067", "Russia.069", "Lithuania.003",  "Lithuania.004", "Denmark.001", "Denmark.002", "Denmark.003", "Denmark.006", "Lithuania.005", "Netherlands.010", "Netherlands.007", "Netherlands.004", "Netherlands.005", "Netherlands.006", "Romania.003", "Romania.004", "Romania.005", "Romania.006", "Romania.007", "Romania.008", "Romania.016", "Romania.015", "Romania.014", "Romania.012", "Romania.013"},
		ExclusiveFormables = {"Kingdom of Hungary", "Austro-Hungarian Empire"},
		FormableButton = {
			ButtonName = "Reclaim the Lands of Attila",
			ButtonDescription = "Despite the 'civility' that the peoples of Western Europe claimed to bring to the continent, establishing their fragile empires and kingdoms to bring peace to the region, none of them could come close to the dominion of the Hunnic Empire. Under the leadership of Attila, the Huns grew to the strongest, most fearsome power on the European continent, ravaging nations from Gallic to Byzantine before their fragmentation with Attila’s death. With a strong leader once again at the helm, however, the time has come to restore the lost lands of the old Hunnic Empire.",
		},

		CustomAlert = {
				Title = "The Great European Terror",
				Desc = "Although, following the dissolution of the Roman Empire, several new kingdoms and states emerged to take their place, bringing order to its once barbaric lands, no force could stop the sudden, terrifying emergence of the Hunnic Empire. Led by Attila, the Huns extended their brutal dominion over nearly the entirety of Eastern Europe, ravaging every nation from the Franks to the Byzantines before finally being brought to an end. As the Huns suddenly reemerge in the modern world, however, all we can do is hope that their old terrors remain in their past.",
				Button = "The Hungarians are getting more hungry…",
		},

		AddModifiers = {
				["The Conquests of Attila"] = {
				Length = -1,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["Stability_Gain"] = 12,
		},
		Demonym = "Hunnic",
		ID = "https://www.roblox.com/library/104828400723630",
		Image_ID = nil,
},

{
		FormableName = "Melanesian Federation",
		CountriesCanForm = {"Papua New Guinea", "West Papua", "Solomon Islands", "Vanuatu", "New Caledonia", "Fiji", "Nauru", "Bougainville"},
		RequiredCountries = {"Papua New Guinea", "West Papua", "Solomon Islands", "Vanuatu", "New Caledonia", "Fiji", "Nauru"},
		FormableButton = {
			ButtonName = "Unite the islands of Melanesia!",
			ButtonDescription = "Long ago, the nations of Melanesia lived in harmony, but everything changed when the Europeans attacked. Only true Melanesian unity can repel the effects of colonialism, and so, with Melanesian territories under our rule, let us continue the ideas of the Melanesian Spearhead Group and federate Melanesia as one!",
		},

		CustomAlert = {
				Title = "The Melanesian Fellowship",
				Desc = "Spread out across the Pacific, the Melanesian Islands are certainly the, in this case, blonde sheep of the Oceanic world, yet despite their differences, the peoples of these islands have always felt a connection, and so one country has taken it upon themselves to federate these diverse lands as one, sending shockwaves across the Asia-Pacific.",
				Button = "In a world of revolution…", 
		},

		CustomAttributes = {
				["Stability_Gain"] = 7,
		},
		Demonym = "Melanesian",
		ID = "https://www.roblox.com/library/114599760589453",
		Image_ID = nil,
},

{
		FormableName = "Dagestan",
		CountriesCanForm = {"Avaria", "Kumykia", "Lezgistan"},
		RequiredCountries = {"Avaria", "Kumykia", "Lezgistan"},
		ExclusiveFormables = {"Shamkhalate of Tarki"},
		FormableButton = {
			ButtonName = "Restore the legacy of Imam Shamil",
			ButtonDescription = "For centuries, the Peoples of Dagestan have remained under the brutal yoke of the Kremlin, with our attempts at freedom violently suppressed. But we must not lose hope! Let us fight as Imam Shamil did all those years and forge a united Dagestani state free from Russian imperialism in the name of Islam!",
		},

		CustomAlert = {
				Title = "A Mountainous Realm",
				Desc = "Since its conquest by Russia in the Caucasian war, the Muslim people of Dagestan have consistently resisted the Russian occupation, even attempting secession as the Soviet Union collapsed, only to be crushed. But as the Russian federation meets the fate of its predecessors, the people of Dagestan have disregarded their ethnic differences, forming a free Dagestani state and ending Russian influence in the region for the first time since Imam Shamil's rebellion centuries ago...",
				Button = "Come to Dagestan!",
		},

		CustomAttributes = {
				["Stability_Gain"] = 6,
		},
		Demonym = "Dagestani",
		ID = "https://www.roblox.com/library/101030575554725",
		Image_ID = nil,
},

{
		FormableName = "Union of Sahel States",
		CountriesCanForm = {"Burkina Faso", "Mali", "Niger"},
		RequiredCountries = {"Burkina Faso", "Mali", "Niger"},
	FormableButton = {
		ButtonName = "Strike down neo-colonialist influence!",
		ButtonDescription = "The time to take our destiny into our own hands is now. Our phony relationship with France must come to an end. Neo-colonialism, under the guise of empty promises of peace and authority, has done nothing for us. Under this newfound entity, forged by our contempt of our former overlords, we will take back from them what was stolen from us, and ensure a new era of peace for our people!",
	},

	CustomAlert = {
		Title = "An Era of Clout",
		Desc = "Through any means possible, the people of a new axis forged in the burning sands of the Sahel have realized their self-determination and have seized back their country from the French sphere, now proclaiming a new era of independence.",
		Button = "A ‘genuine revolution’...",
	},

		CustomAttributes = {
				["Stability_Gain"] = 7,
		},
		Demonym = "Sahel",
		ID = "https://www.roblox.com/library/90719030930988",
		Image_ID = nil,
},

{
		FormableName = "Windward Islands Federation",
		CountriesCanForm = {"Dominica", "Grenada", "Saint Lucia", "Saint Vincent and the Grenadines", "Trinidad and Tobago", "Tobago"},
		RequiredCountries = {"Dominica", "Grenada", "Saint Lucia", "Saint Vincent and the Grenadines", "Trinidad and Tobago"},
		ExclusiveFormables = {"West Indies Federation"},
		FormableButton = {
			ButtonName = "Form the Antillean political union!",
			ButtonDescription = "Our tumultuous history began with the absolute failure that was the West Indies Federation. The cultural heterogeneity and economic underdevelopment of our people were bluntly ignored, aggravating our need to unite. Today now marks the creation of a union more fair and equal than its predecessor. As the islands that face the wind, our opportune time is now!",
		},

		CustomAlert = {
				Title = "On the Side Facing the Wind",
				Desc = "The dissolution of the West Indies Federation decades ago exacerbated the economic problems of the smaller islands, with the independence of Jamaica and Trinidad having cast a large fog over the success of the former entity. With renewed interest in unity amongst the Windward Caribbean, the creation of a new polity is now set into stone.",
				Button = "Go with a lucky foot.",
		},

		CustomAttributes = {
				["Stability_Gain"] = 7,
		},
		Demonym = "Windward Islander",
		ID = "https://www.roblox.com/library/76175960565889",
		Image_ID = nil,
},

{
		FormableName = "Khanate of Kalat",
		CountriesCanForm = {"Balochistan"},
		RequiredCountries = {"Balochistan"},
		RequiredTiles = {"Iran.052", "Iran.053", "Pakistan.002", "Pakistan.003", "Pakistan.005", "Pakistan.006",  "Pakistan.007", "Pakistan.009", "Pakistan.010", "Pakistan.011", "Pakistan.012", "Pakistan.013", "Pakistan.021"},
		FormableButton = {
			ButtonName = "Reverse the Treaty of Kalat!",
			ButtonDescription = "Balochistan, our beloved homeland, has been devastated by imperialism. But once long ago, our ancestors, under the leadership of Mir Ahmad Khan I, created the first truly united Baloch state. Thus, as our forceful accession into the Pakistani state ends and the crimes of Sandeman are reversed, the time to reinstate Ahmadzai Rule has finally come!",
		},

		CustomAlert = {
				Title = "The Brahui Khans",
				Desc = "Poverty-stricken and sparsely populated, the Baloch have historically taken a backseat to South Asian politics. But with the restoration of their old confederacy, from Kandahar to Karachi, perhaps the Baloch and Brahui, united as one, will finally bring peace and stability to their homeland…",
				Button = "Is it Jashn-e-Kalat?",
		},

		CustomAttributes = {
				["Stability_Gain"] = 10,
		},
		Demonym = "Kalat",
		ID = "https://www.roblox.com/library/94596600100927",
		Image_ID = nil,
},

{
		FormableName = "Central Asian Union",
		CountriesCanForm = {"Karakalpakstan", "Kazakhstan", "Uzbekistan", "Tajikistan", "Kyrgyzstan", "Turkmenistan"},
		RequiredCountries = {"Kazakhstan", "Uzbekistan", "Tajikistan", "Kyrgyzstan", "Turkmenistan"},
		ExclusiveFormables = {"Khanate of Khiva", "Turkic Khaganate", "Turkestan"},
		FormableButton = {
			ButtonName = "Unite Central Asia",
			ButtonDescription = "The drumbeats of shamans thunder. The plains are alight with bonfires. The long winter is over, and a new spring has begun.  For the first time since time immemorial, us children of Tengri have gathered once again, to tread the path of the wolf toward our divine and eternal birthright. Let us unite our Central Asia, the home of the horse, the land of our forefathers, and the land of Eternal Blue Sky!",
		},

		CustomAlert = {
				Title = "The Wolves Howl Again",
				Desc = "Central Asia, a land dominated by outsiders since the start of modernity, has at last mastered its destiny. The artificial borders which divided the land have been erased, and a new state has proclaimed the brotherhood of Central Asians, united under a common yurt. For the Central Asian Union, they say, is the greatest country in the world.",
				Button = "All other countries are ran by little girls!",
		},

		AddModifiers = {
				["A Place Where Anything Abounds"] = {
				Length = -1,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["Stability_Gain"] = 10,
		},
		Demonym = "Central Asian",
		ID = "https://www.roblox.com/library/108643941768144",
		Image_ID = nil,
},

{
		FormableName = "Tokugawa Shogunate",
		CountriesCanForm = {"Chubu"},
		RequiredCountries = {"Chubu", "Japan"},
RequiredTiles = {"Russia.309", "Russia.310", "Russia.311", "Russia.312", "Russia.314", "Russia.315"},
		FormableButton = {
			ButtonName = "Reinstate the Tokugawa Shoguns!",
			ButtonDescription = "Our domain stretched from the islands of Ryukyu to the shores of Karafuto, and we stood as an unrivaled power in the East until the emperor overthrew our throne through the Honorable Restoration. As the current sun of Japan sets, a new one shall rise, and the banner of Tokugawa shall fly over Japan once again!",
		},

		CustomAlert = {
				Title = "The Dragon of Tokugawa",
				Desc = "The once-unified Japanese islands have shattered, plunging the fragile nation into another Sengoku period. However, as history has shown, such division is only temporary. Through military conquest, a new sun rises over Japan, with the Chubu region emerging as the triumphant force, re-establishing the Tokugawa shogunate.",
				Button = "Where are the samurais?",
		},

		CustomAttributes = {
				["Stability_Gain"] = 10,
		},
		Demonym = "Tokugawan",
		ID = "https://www.roblox.com/library/108488813588422",
		Image_ID = nil,
},





--===================================================================================================================================================================================================================================================
--===================================================================================================================================================================================================================================================
--===================================================================================================================================================================================================================================================
--===============================[MISSION STUFF]=====================================================================================================================================================================================================
--===================================================================================================================================================================================================================================================
--===================================================================================================================================================================================================================================================
--===================================================================================================================================================================================================================================================
	
	
	
	
	
{
	Removed = true,
	MissionName = "Super Byzantine",
	CountriesCanForm = {"Byzantine Empire"},
	RequiredCountries = {"Algeria"},

	FormableButton = {
		ButtonName = "Secure Algeria!",
		ButtonDescription = "Idk I think it would be neat",
	},

	CustomAlert = {
		Title = "Byzantine expands",
		Desc = "What in the they gone done and took algeria",
		Button = "whar they up to!",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 5, 
		["PoliticalPower_Gain"] = 100,

		["Stability_Requirement"] = 60, 
	},
},

{
	MissionName = "Megali's Idea",
	CountriesCanForm = {"Greece"},
	RequiredCountries = {"Greece", "Cyprus", "Macedonia"},
	RequiredTiles = {"Albania.001", "Albania.002", "Bulgaria.003", "Bulgaria.007", "Bulgaria.008", "Bulgaria.009", "Turkey.001", "Turkey.002", "Turkey.003", "Turkey.004", "Turkey.005", "Turkey.006", "Turkey.007", "Turkey.008", "Turkey.009", "Turkey.010", "Turkey.014", "Turkey.015", "Turkey.016", "Turkey.020", "Turkey.021", "Turkey.025", "Turkey,026", "Turkey.027"},

	FormableButton = {
		ButtonName = "Unite the Hellenes!",
		ButtonDescription = "The Megali Idea's flames did not die with Venizelos; rather, they ignited the fire of a Third Hellenic civilization - the pure perfection of Hellenic culture through the blending of the finest elements of Greek antiquity and Byzantium. Now, let us accomplish the Megali Idea and fulfill our destiny of enlightening the East!",
	},

	CustomAlert = {
		Title = "The Third Hellenic Civilization",
		Desc = "As Greece lost her gamble and was forcefully uprooted from Anatolia by the Turks, it was thought the Megali Idea was laid to rest. However, with the Greeks longing to avenge the national tragedy of 1922, they launched a surprise military campaign and despite all odds, achieved the conceptualized borders of the Megali Idea.",
		Button = "Freedom or Death!",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 5, 
		["PoliticalPower_Gain"] = 100,

		["Stability_Requirement"] = 60, 
	},
},

{
	MissionName = "The Empire of Liberty",
	CountriesCanForm = {"United States"},
	RequiredCountries = {"United States", "American Samoa", "Guam", "Micronesia", "Northern Mariana Islands", "Palau", "Philippines", "United States Virgin Islands"},
	RequiredTiles = {"Panama.007"},

	FormableButton = {
		ButtonName = "Reinvigorate American Imperialism!",
		ButtonDescription = "Across the chronicles of the United States’ life, from securing independence with vain to hell with Spain: Our everlasting ideas for the concept of a greater ‘Empire of Liberty’ by manifesting our destiny is of urgent need. With internal division and quarrel splitting the nation in twain, a new effort must be bolstered to heal our gauging wounds. Such first step will be achieved within bringing our territories back within the fold; for one nation, under God: Indivisible with Liberty and justice for all."
	},

	CustomAlert = {
		Title = "A Shot Heard Round’ the World",
		Description = "Strained by the political turmoil upon the interior, wear and tear breaking the Arsenal of Democracy down has led to the unthinkable. The self proclaimed ‘Shining City on a Hill’ has abandoned it’s principles of self-determination and — in overthrowing power, the iron hand crush’d the tyrant’s head and became a tyrant in its stead.",
		Button = "Give us Liberty or give us Death!",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 730,
			DoNotClear = true,
		},
		["Economic Growth"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 7,
		["PoliticalPower_Gain"] = 250,
		["Stability_Requirement"] = 75,
	},
},

{
	MissionName = "Groot Nederland Plan",
	CountriesCanForm = {"Netherlands"},
	RequiredCountries = {"Netherlands"},
	RequiredTiles = {"Germany.015", "Germany.016", "Germany.021", "Germany.022"},

	FormableButton = {
		ButtonName = "Realize the vision of Bakker Schut",
		ButtonDescription = "A grim reminder still persists within our fields, a reminder of destruction and occupation. Even as decades passed since our liberation from the command of Berlin, the scars of such horrors will not be forgotten. Limited by foreign nations and granted measly concessions as 'compensation' for the unimaginable destruction ruthlessly inflicted upon us, we cannot stay content. It is only through the realization of a greater Dutch state, achieved by our own hands, will we finally be satisfied.",
	},

	CustomAlert = {
		Title = "Dutchification",
		Desc = "At the end of the Second World War, The Bakker-Schut plan was proposed to enlarge the territories of the Netherlands as compensation for damages incurred during war. Though, it was endorsed by high ranking officials of the Netherlands, including Queen Wilhemina herself, it was ultimately rejected by the Allied High Commission regarding the issues of refugees. However, despite its rejection and decades passed since the war. The Dutch set out to annex their desired territories and have fulfilled the plan, proving that time was not a deterrent.",
		Button = "Get over it",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 6,
		["PoliticalPower_Gain"] = 50,
		["Stability_Requirement"] = 54, 
	},
},

{
	MissionName = "Bersekutu Bertambah Mutu",
	CountriesCanForm = {"Malaysia"},
	RequiredCountries = {"Malaysia", "Brunei", "Singapore"},
	FormableButton = {
		ButtonName = "Reinforce Malay Ownership",
		ButtonDescription = "Upon the gentrification of our homeland by the British, our special position has been threatened by rising sectarianism from foreign visitors. To combat this, let us proclaim what the architect of our independence had tried, a Greater Malaydom; one different from the visions of our neighbours. One Malaysia, for Malaysians.",
	},

	CustomAlert = {
		Title = "One Malaysia",
		Desc = "Rising nationalism in Malaysia has contributed to a growing interest to incorporate territories proposed by Malaysia's founding father in the 60s. His proposal only succeeded in bringing Sarawak and Sabah under Malayan hegemony, unable to convince Brunei, and then later losing Singapore. It appears a definitive answer to the aforementioned questions has been put forward, one that reaffirms the status of the Malays as the rightful sons of Malaysia.",
		Button = "Malaysia boleh?",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 160, 
			DoNotClear = true,
		}, 
	}, 
	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["PoliticalPower_Gain"] = 50,
		["Stability_Gain"] = 4, 
	},
},

{
	MissionName = "Bolivians, a Propitious Fate",
	CountriesCanForm = {"Bolivia"}, 
	RequiredCountries = {"Bolivia"}, 
	RequiredTiles = {"Brazil.065", "Brazil.166", "Brazil.167", "Chile.003", "Chile.004", "Paraguay.005", "Paraguay.006"}, 
	ExclusiveFormables = {"Peru-Bolivian Confederation"},
	FormableButton = {
		ButtonName = "Rebirth the Republic",
		ButtonDescription = "As the bearer of Bolívar's name and spirit, our nation has for decades sought the restoration of the lands he had rightfully bestowed upon us; but diplomacy can guide our efforts in this path no longer. For the protection and prosperity of our state, we will rectify our failures at war and march straight into the rightful territory of El Libertador himself.",
	},

	CustomAlert = {
		Title = "The Sons of Bolívar",
		Desc = "For centuries, South America's affairs had danced in a choreography insipidly guided by the continent's ever-shifting borders. In defiance of these dancers, Bolivia and her army have annexed all land that Bolivia has recently alleged to be her rightful historical domain. Should Bolívar gaze down from above and marvel the vigor of his daughter state or abhor the transgressions she has done?",
		Button = "Guess they got their coastline back…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	MissionName = "Soomaliweyn",
	CountriesCanForm = {"Somalia"},
	RequiredCountries = {"Somalia", "Djibouti", "Ogaden"},
	RequiredTiles = {"Kenya.002", "Kenya.003", "Kenya.017", "Yemen.017"},
	FormableButton = {
		ButtonName = "Unite all Somalis",
		ButtonDescription = "When Ogaden was invaded by the SDR, little did we know that it would eventually spiral into the collapse of Somalia itself. Hence, we shall reverse its outcome and avenge the great Sied Barre by not repeating the mistakes of the Ogaden War. Let us reform the Somali nation as a whole, no longer being known as pirates, or as a failed state, or insurgents, but rather, as the glorious seafaring power we once were!",
	},

	CustomAlert = {
		Title = "Grande Somalia",
		Desc = "Bouncing back from the anarchy of the past, Somalia, a nation that was once known internationally as a failed state, has reversed this title altogether. By uniting the pan-irredentist concepts of Somalia itself, the Horn of Africa is now under the dominance of the Somalis.",
		Button = "Long live Somalia...",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 420, 
			DoNotClear = true,
		}, 
	}, 
	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["PoliticalPower_Gain"] = 60,
		["Stability_Gain"] = 7, 
	},
},

{
	MissionName = "Ishi Biladi",
	CountriesCanForm = {"United Arab Emirates"},
	RequiredCountries = {"United Arab Emirates", "Qatar", "Bahrain"},

	FormableButton = {
		ButtonName = "Federate the Nine Emirates!",
		ButtonDescription = "When the seven Emirates that now make up the UAE first united, the proposal had initially included Qatar and Bahrain. Although, this went nowhere as internal differences led to the end of their involvement in the union. We can finally reforge the two other emirates into unification by annexing the peninsula and the islands around it.",
	},

	CustomAlert = {
		Title = "The Additional Emirates",
		Desc = "Initially when the British left the Persian Gulf Residency, Qatar and Bahrain were originally supposed to join, despising the way it was run they eventually parted ways. Leaving the idea as another proposal of the past, however with the military prowess of the new Emir. The expansion of the Emirates from seven to nine has just been bestowed upon us. Long live the Emirates!",
		Button = "What the Smuth...",
	},

	CustomAttributes = {
		["Stability_Gain"] = 6, 
	}
},

{
	MissionName = "Great Land of Butalmapu",
	CountriesCanForm = {"Wallmapu"},
	RequiredCountries = {"Patagonia", "Wallmapu", "Falkland Islands"},

	FormableButton = {
		ButtonName = "Reclaim our ancestral lands!",
		ButtonDescription = "The Spanish conquistadors attempted to subjugate the Mapuche, but we defied their rule and the Spaniards begged for peace. These treaties, however, were temporary, and we were replaced by Argentine and Chilean settlers who succeeded in conquering and slaughtering us. After centuries of our struggle for survival, these imperialists began to lose authority over our homeland, allowing us to proclaim a nation in which our people can prosper in peace with our rightful lands restored.",
	},

	CustomAlert = {
		Title = "The Bringer of Dawn",
		Desc = "During the 19th century, the imperialist governments of Argentina and Chile coordinated a joint attack on Mapuche lands. However, when the Mapuche rebelled in Araucania, they were quickly crushed, resulting in the worsened oppression and slaughtering of their people. Nevertheless, they've persisted in their fight and have now declared their nation, resettling the old lands lost to the imperialists and proving that the martyrs' efforts were not for naught.",
		Button = "A blow to the imperialists...",
	},
},

{
	MissionName = "Greater Belgium",
	CountriesCanForm = {"Belgium"},
	RequiredCountries = {"Belgium", "Luxembourg"},
	RequiredTiles = {"Germany.012,", "Germany.014", "Germany.013", "Germany.015", "Netherlands.003", "Netherlands.002", "France.022", "France.020"},

	FormableButton = {
		ButtonName = "Reestablish Belgian rule to its rightful territories!",
		ButtonDescription = "From its birth, Belgium was already destined to be pushed around by major powers, with the Treaty of London robbing us of rightful land that Belgian blood fought for. This destiny, however, does not and should not be normalized by Belgians instead of deciding to break free of the limits imposed on our expansion by the great powers. Now, we have severed the chains binding our country and can declare our land to be safe and free in the hands of Belgium's visions!",
	},

	CustomAlert = {
		Title = "The Belgian Renaissance",
		Desc = "The bottled-up rage of the Belgian people, stemming from the exploitation of Belgium by its neighbors has finally been unveiled to the world, with the greater Belgian idea being fulfilled to its extent and Belgium affirming its status as the dominant state over the Rhine.",
		Button = "Such impossibility comes to life",
	},

	AddModifiers = {
		["Economic Growth"] = {
			Length = 365,
			DoNotClear = true,
		},
	},
	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 5, 
		["PoliticalPower_Gain"] = 80,
		["Stability_Requirement"] = 55, 
	},
},

{
	MissionName = "Slava Ukraini",
	CountriesCanForm = {"Ukraine"},
	RequiredCountries = {"Balkaria", "Circassia", "Karachay", "Kuban", "Transnistria", "Ukraine"},
	RequiredTiles = {"Belarus.005", "Belarus.006", "Belarus.011", "Belarus.013", "Russia.066", "Russia.044", "Russia.045", "Russia.043", "Russia.024", "Russia.023"},

	FormableButton = {
		ButtonName = "Unify Our Lost Lands!",
		ButtonDescription = "In the hellscape of eastern Europe following WW1, the Ukrainian people fought not only for freedom but a united Ukrainian state. As always though, Russia extinguished the flame of the people, yet the soot of their strife remains. Let us reignite that flame within us and unite the lands of our fallen Ukrainian brethren!",
	},

	CustomAlert = {
		Title = "The Borderland",
		Desc = "As hellfire arose in Russia again, hellfire echoing that of their previous civil war of the 20th century, Ukraine sought retribution against their adversary. The Ukrainian people united under the common cause of prosperous unity, just as they did nearly a century ago, and now, the breadbasket flourishes.",
		Button = "The glory and freedom of Ukraine has not yet perished…",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 5,
		["PoliticalPower_Gain"] = 100,
	},
},

{
	MissionName = "From The River to The Sea",
	CountriesCanForm = {"Palestine"},
	RequiredCountries = {"Israel"},

	FormableButton = {
		ButtonName = "Reverse the Balfour Declaration",
		ButtonDescription = "Our aspirations for a fully liberated state would include the full liberation of our lost lands, cities, and villages. We are to march our armies again, to reclaim all of our lost, colonized lands. No longer shall our people live in refuge. Let the Zionist occupation end and a true Palestinian state be established for all people of these lands!",
	},

	CustomAlert = {
		Title = "The Third Intifada",
		Desc = "As promised by the British first, the Palestinian flag waves high over the lands stretching from the Jordan River to the Mediterranean Sea. Despite decades of crisis, the Palestinian cause prevails, allowing all Palestinians to return to their old villages, finally fulfilling the motto; 'From The River to The Sea.'",
		Button = "At last…",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 200,
			DoNotClear = true,
		},
	},
	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 7,
		["PoliticalPower_Gain"] = 50,
	},
},


{
	MissionName = "San Gwongdung",
	CountriesCanForm = {"Guangdong"},
	RequiredCountries = {"Guangdong", "Hong Kong", "Macau"},
	RequiredTiles = {"China.291", "China.297", "China.298", "China.315", "China.308", "China.311"},

	FormableButton = {
		ButtonName = "Establish Gwongdung for the Cantonese!",
		ButtonDescription = "Mr. Au's manuscript for the self-determination of the Cantonese people never buried itself in the laurels of the most prosperous province of China; rather, it was forcibly burned in the rouse of a 'single Chinese identity' by the Northern barbarians. Let the true bastion of Old Chinese blossom as the Kapok once more, a Cantonese spirit reborn!",
	},

	CustomAlert = {
		Title = "New Guangdong",
		Desc = "Since the sanguine days of Panyu, the Cantonese soul was always rooted in the bosom identity of a Chinese tradition. Yet, it appears their companions to the North have forgotten the humble and Confucian roots of pragmatism that ensured success for ten thousand years. With the reunification of Cantonia, the opposite may soon pose true; a roar can be heard from the dormant Lion Rock: a roar of a coming prosperity for Maan Suei.",
		Button = "Gungho!",
	},

	AddModifiers = {
		["Economic Growth"] = {
			Length = 180, 
			DoNotClear = true, 
		}, 
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 5, 
		["PoliticalPower_Gain"] = 100, 
	}, 
},

{
	MissionName = "On Alpine And Alaskan Heights",
	CountriesCanForm = {"Liechtenstein"},
	RequiredCountries = {"Alaska", "Liechtenstein"},

	FormableButton = {
		ButtonName = "Reverse the Alaskan Purchase!",
		ButtonDescription = "Beneath the permafrost of Alaska lay the riches we had regrettably turned down so many years ago. But with the declining interest of the Americans in the region, perhaps the Tsar's offer could still be in our grasp. It is time to go north to the future, and Haus Liechtenstein shall overcome this final frontier!",
	},

	CustomAlert = {
		Title = "High on The Alps",
		Desc = "The puny state of Liechtenstein was once offered land that would've multiplied their size by more than 1 million percent. Although negotiations fell through ages ago, it seems like the House of Liechtenstein has brought Alaska to the table again themselves, with annexation being the final deal.",
		Button = "For God, Prince and Fatherland…",
	},

	AddModifiers = {
		["Popular War Support"] ={
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 15,
		["PoliticalPower_Gain"] = 150,
	},
},

{
	MissionName = "Onward, New Zealand",
	CountriesCanForm = {"New Zealand"},
	RequiredCountries = {"New Zealand", "Cook Islands", "Niue", "Tokelau", "Hawaii", "Samoa", "American Samoa", "French Polynesia", "Rapa Nui", "Fiji", "Tonga", "Vanuatu", "New Caledonia", "Solomon Islands", "Tuvalu", "Kiribati", "Bougainville", "Nauru", "Norfolk Island", "Wallis and Futuna"},

	FormableButton = {
		ButtonName = "Civilize the Pacific",
		ButtonDescription = "A glorious Pacific empire, centered in Wellington, all tossed away in pursuit of peace. We are not as naive as our predecessors, however. With British rule removed, the time is now to answer the cries of the Islanders and shine the southern cross over the Pacific!",
	},

	CustomAlert = {
		Title = "The Britain of the South Pacific",
		Desc = "Being the last major territory settled by humans, New Zealand is rarely talked about in world history. And yet, the nation once dreamed of an empire proving it just as capable as its fellow rival of Australia. It is clear that this dream never quite died, as the Kiwis have completed their ambitions of empire, much to the dismay of the islanders it calls to civilize.",
		Button = "They still aren't visible on the map",
	},

	AddModifiers = {
		["Zealandia's Grace"] = {
			Length = -1,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 10,
		["PoliticalPower_Gain"] = 25,
	},
},

{
	MissionName = "The Land of the Thunder Dragon",
	CountriesCanForm = {"Bhutan"},
	RequiredCountries = {"Bhutan", "Gorkhaland"},
	RequiredTiles = {"India.105"},

	FormableButton = {
		ButtonName = "Strike thunder at our enemies!",
		ButtonDescription = "As the era of colonialism extended its grasp over the Indian Subcontinent, few states remained unscathed. Bhutan, sadly, found itself among the unfortunate, forced to give up territories in Assam and Siliguri, solidifying its status as a foreign protectorate. However, through a combination of strategic military endeavors and the blessing of Druk, we shall revive the lost grandeur of the Thunder Dragon Kingdom once more!",
	},

	CustomAlert = {
		Title = "The Land of the Dragon King",
		Desc = "Following the military humiliation at Koch Behar, Bhutan's historical significance has faded away into obscurity because of its diminishing power in the region. However, with the Dooars falling into the Bhutanese domains, the Thunder Dragon's resurgence looms on the horizon, marking the potential dawn of a new and transformative chapter in Bhutan's history.",
		Button = "How shocking…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
		["PoliticalPower_Gain"] = 100,
		["Stability_Requirement"] = 55, 
	},
},

{
	MissionName = "Nagaland for Christ",
	CountriesCanForm = {"Nagalim"},
	RequiredCountries = {"Kangleipak", "Nagalim"},
	RequiredTiles = {"India.109", "India.110", "India.112", "India.115"},

	FormableButton = {
		ButtonName = "Realize Phizo's Plan!",
		ButtonDescription = "With the end of our captivity under India, our righteous strive enters its final chapters. No longer shall the amalgamation of India stamp out the fire of the Naga people, for her eastern fragments lay at our unforgiving mercy. May the star of Bethlehem lead us to grace as the Naga hills return to their rightful owners!",
	},

	CustomAlert = {
		Title = "Unity",
		Desc = "With 'Unity' being their motto, Nagalim has always found itself hellbent on integrating the vast Naga Hills into a single state. Should such ludicrous prospects even come to fruition in the first place? Regardless, a fracturing India opened the doorway to the fulfillment of their ambitions, giving rise to a new power in the region.",
		Button = "Aren't they snake people?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 5,
	},
},

{
	MissionName = "Gran Paraguay",
	CountriesCanForm = {"Paraguay"},
	RequiredCountries = {"Paraguay", "Uruguay"},
	RequiredTiles = {"Brazil.001", "Brazil.002", "Brazil.003", "Brazil.004", "Brazil.005", "Brazil.006", "Brazil.007", "Brazil.008", "Brazil.009", "Brazil.010", "Brazil.016", "Brazil.051", "Brazil.050", "Argentina.058", "Argentina.059", "Argentina.072", "Argentina.071"},

	FormableButton = {
		ButtonName = "Let Paraguay Prevail!",
		ButtonDescription = "Ever since the humiliating loss in the War of the Triple Alliance, large chunks of core Paraguayan territories had been divided by the Brazilian and Argentines, stripping away many Paraguayan peoples from their motherland. We need to put the Brazilians and Argentine in their place, and make sure their egos are where they are supposed to be: in the gutter. It is time that we unify our lost territories, and reassert our power on the South American continent!",
	},

	CustomAlert = {
		Title = "The Feather Crown of Paraguay",
		Desc = "Following its defeat in the War of the Triple Alliance, Paraguay had been left devastated, with 60% of its population dead, and half of its territory being taken away. However this would not stop the little state from trying again, and in a fit of rage, and perhaps maybe perseverance, Paraguay had managed to overcome the giants of South America, humiliating their regimes, whilst uniting their lost territories with their motherland!",
		Button = "Far from peace and justice..",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,				 
			DoNotClear = true,
		},
	},
	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 10,
		["PoliticalPower_Gain"] = 125,
	},
},

{
	MissionName = "Greater Mauritania",
	CountriesCanForm = {"Mauritania"},
	RequiredCountries = {"Mauritania", "Azawad", "Western Sahara"},
	RequiredTiles = {"Mali.013"},

	FormableButton = {
		ButtonName = "Realize our Irredentist Claims!",
		ButtonDescription = "When Mokhtar Ould Daddah professed his vision for a Greater Mauritania encompassing the Moors of the Atlantic and Azawad, it was rejected by both the French and their African puppets after the French 'decolonized.' But today, his vision shall be restored and realized as the Moor peoples across the nation rejoice in their unity and freedom from all who would oppress them.",
	},

	CustomAlert = {
		Title = "The Southern Moors",
		Desc = "Even before Mauritania's independence, Beidane Moors across the region threw their support behind Mokhtar Ould Daddah's idea of a Greater Mauritania and its unification of Moors across Western Sahara and Azawad. However, Mauritania's disastrous intervention in Western Sahara led to a coup that ended any chance of a Greater Mauritanian state. Today, Mauritania, united under this irredentist idea, has conquered its way to a Greater Mauritania, stretching from the Atlantic to Burkina Faso.",
		Button = "They have certainly grown Moor…",
	},

	CustomAttributes = {
		["Stability_Gain"] = 5, 
		["PoliticalPower_Gain"] = 150,
		["Stability_Requirement"] = 60, 
	},
},

{
	MissionName = "Krecheuski's Order",
	CountriesCanForm = {"Belarus"},
	RequiredCountries = {"Belarus"},
	RequiredTiles = {"Russia.066", "Russia.067", "Russia.069", "Russia.075", "Russia.087", "Russia.089", "Poland.007", "Lithuania.004"},

	FormableButton = {
		ButtonName = "Continue the legacy of Sierada!",
		ButtonDescription = "When the land of Belarus was being occupied by both the German invaders and the red terror, there could only be one shining light for all Belarusians, and was when the official independence of the Belarusian state was declared. It was put into power almost a century after being divided by the Poles and Soviets, the provisional government must be restored, so the Rada can maintain order once again!",
	},

	CustomAlert = {
		Title = "The Fourth Charter",
		Desc = "While Eastern Europe delved into flames in the Great War, many native peoples of the land sought independence, and an end to the subjugation by the malicious Russians, and one of these was Belarus. Today, the Belarusians have toppled the oppressive regime of the East, and restored happiness and freedom to the Belarusian identity.",
		Button = "The warriors march…",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 275,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 10,
		["PoliticalPower_Gain"] = 120,
		["Stability_Requirement"] = 60, 
	},
},

{
	MissionName = "The Bear Flag Republic", 
	CountriesCanForm = {"California"}, 
	RequiredCountries = {"California"},
	RequiredTiles = {"UnitedStates.116", "UnitedStates.118", "UnitedStates.128", "UnitedStates.129", "UnitedStates.130", "UnitedStates.131", "UnitedStates.132", "UnitedStates.133", "UnitedStates.135"}, 

	FormableButton = {
		ButtonName = "Unite Alta California!", 
		ButtonDescription = "The talking heads at Washington told us we had hit pyrite; that the dreams of Los Osos were to go the way of the Gold Fever. But as the smoke settled over the Golden Empire's fruitful basins, who's flag flew alone in the breeze? By providence, we have twice wrestled the eagle off Californian land. Yet, only the zealous will of the Californian people can shake it from our compatriots across the Sierra. Alas, the ambitions of liberation needn't remain idle! By olive branch or rifle crack, Alta California shall be united under one banner!", 
	}, 

	CustomAlert = {
		Title = "Eureka!", 
		Desc = "Dashed by Mexican and American neglect alike, the Californian Dream always played second fiddle to a national agenda. With the gaffe of the preeminent regime, however, the Bears were presented with an opportunity second to none. It appears they may have stricken gold a second time, as the grizzly descends upon the Rockies, set on reviving the Bear Flag Revolt's legacy for an eternity to come.", 
		Button = "Thanks for the Gold Kind Stranger...", 
	}, 

	AddModifiers = {
		["The Bear Flag Republic"] = {
			Length = -1, 
			DoNotClear = true,
		}, 
	}, 

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 5, 
		["PoliticalPower_Gain"] = 75, 
		["Stability_Requirement"] = 60, 
	}, 
}, 

{
	MissionName = "Plus Ultra",
	CountriesCanForm = {"Spain"},
	RequiredCountries = {"Spain", "Morocco", "Equatorial Guinea", "Gibraltar", "Biafra", "Cameroon"},
	RequiredTiles = {"Mauritania.001", "Mauritania.008", "Mauritania.007", "Algeria.001", "Algeria.006", "Algeria.0007", "Algeria.012", "Algeria.035", "Algeria.037", "Algeria.036", "Algeria.034", "Algeria.033", "Algeria.038", "Nigeria.007", "Nigeria.009", "Nigeria.010", "Nigeria.011", "Nigeria.012", "Nigeria.015", "Nigeria.013", "Nigeria.014", "Gabon.001", "Gabon.002", "Gabon.009", "Gabon.008", "Gabon.004", "Gabon.003", "RepublicOfCongo.006", "RepublicOfCongo.007", "RepublicOfCongo.008", "RepublicOfCongo.009", "RepublicOfCongo.011", "RepublicOfCongo.010", "CentralAfricanRepublic.014", "CentralAfricanRepublic.013", "CentralAfricanRepublic.012", "Chad.012", "Chad.013"},

	FormableButton = {
		ButtonName = "Embrace Africanistas",
		ButtonDescription = "The Crisis of '98 not only ended our reign over the Americas but also brought the downfall of the Spanish Empire, stripping us of our place among the great powers of the world. Now, we shall reclaim what was unjustly taken by the old powers of the west and usher in a new era of expansion for the Spanish Crown and our enduring faith!",
	},

	CustomAlert = {
		Title = "Further Beyond",
		Desc = "To claim one continent on their own was not enough; as Spain once more set sail across the world, driven by an insatiable yet familiar lust for gold and the ambition to defy the Madrid Accords, that ended their colonial rule in the African continent. It seems now that the fate of Africa itself may soon be bound beneath the Spanish banner.",
		Button = "Sounds painful",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 10,
		["PoliticalPower_Gain"] = 175,
		["Stability_Requirement"] = 60,
	},
},

{
	MissionName = "United Macedonia",
	CountriesCanForm = {"Macedonia"},
	RequiredCountries = {"Macedonia"},
	RequiredTiles = {"Greece.004", "Greece.003", "Greece.002"},

	FormableButton = {
		ButtonName = "Liberate the Macedonian Homeland!",
		ButtonDescription = "Decades have passed since the grand vision of a united Macedonia—a dream that once ignited the hearts of all Macedonians. Today, we find ourselves at a critical point in history; a call echoes again to reclaim the lands of Macedonia. The flame of a unified Macedonia must be reignited; as our forerunners did, the Argead Star shall shine over the Balkans once again.",
	},

	CustomAlert = {
		Title = "The Hegemon of The Aegean",
		Desc = "Macedon—a force that once conquered vast territories from Anatolia to the Indus, ultimately fractured into various ruinous states, its former glory fading into the annals of history. For years, the concept of a unified Macedonian state remained a distant hope. Yet now, in a pivotal moment, the call for reunification has grown louder. In the face of adversity, the Macedonians now stand undisputed in the Balkans, set to uphold Alexander's legacy with unwavering resolve.",
		Button = "So great..."
	},

	CustomAttributes = {
		["Stability_Gain"] = 6,
	},
},

{
	MissionName = "United Armenia",
	CountriesCanForm = {"Armenia", "Artsakh"},
	RequiredCountries = {"Armenia", "Artsakh"},
	RequiredTiles = {"Azerbaijan.001", "Turkey.064", "Turkey.065", "Turkey.068", "Turkey.067", "Turkey.063", "Turkey.062", "Turkey.058", "Turkey.052", "Georgia.005"},

	FormableButton = {
		ButtonName = "Unite all Armenians!",
		ButtonDescription = "Securing our independence from the USSR has given us Armenians a new homeland. However, our mission to unify all Armenians lands hasn't been fulfilled. Just as Tigranes the Great did, let us embrace the irredentist ideals of United Armenia, and establish a traditional Armenian homeland!",
	},

	CustomAlert = {
		Title = "Hayastan Major",
		Desc = "It was thought that the unity of the Armenians was impossible, a nationalistic idea shelved, a concept that could never come to realization in the modern day. However, the Armenians have now begun their irredentist push driven by nationalism. Just as their forefathers, they have conquered vast swaths of land to proclaim a United Armenia at last.",
		Button = "Haya…",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,
			DoNotClear = true,
		},
	},
	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 10,
	},
},

{
	MissionName = "Red Sun Over The Eastern Sky",
	CountriesCanForm = {"China"},
	RequiredCountries = {"China", "Hong Kong", "Macau", "Taiwan", "Arunachal Pradesh"},

	FormableButton = {
		ButtonName = "Complete the Tongyi!",
		ButtonDescription = "Though the triumph of October First rings across our great mainland like the proudest suona, the War of Liberation remains incomplete. The insolent remnants of imperial partitions agitate the periphery, prickly thorns of Old China still prodding the flesh of our New Great Wall. No family as atomic as ours can dwell in such archaic estrangement; let thousands rise as one, under the banner of reunification! The reville of Zhonghua sounds again, for the great day of reunion has come!",
	},

	CustomAlert = {
		Title = "Dawn of The Red Sun",
		Desc = "Time had taught China's tormentors complacency, that the failure of the great reunification would simply be a forgone conclusion. Yet, as the meteoric rise of the People's Republic had proven before, such red lines could only be drawn in blood, an ink so plentiful throughout the tapestry of China. The banner of the mainland now flutters over the skyline of Taipei, for the rest of the world had just realized what its residents had known for a century; that the Zhonghua was merely building its strength, biding its time. For better or worse, the Chinese Century is upon us.",
		Button = "The East is Red",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 250,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 10,
		["Stability_Requirement"] = 60, 
	},
},
--[[ OLD RED SUN IN THE SKY
{
	MissionName = "Red Sun Over The Eastern Sky",
	CountriesCanForm = {"China"},
	RequiredCountries = {"China", "Hong Kong", "Macau", "Taiwan", "Arunachal Pradesh"},

	FormableButton = {
		ButtonName = "Finish the goals of the Revolution",
		ButtonDescription = "Despite our success in the War of Liberation on China proper, the nationalist brethren remain stranded on the other side of the strait. It is our duty to begin liberating the island of Formosa and the rest of our territorial claims. This unification of the motherland shall be glorious!",
	},

	CustomAlert = {
		Title = "Dawn of The Red Sun",
		Desc = "After coming out Triumphant from the Chinese Civil War, the People's Republic of China asserted independence, determined not to be dominated again. Once subordinate, the Chinese state is now a dominance force, instilling global unease. Seeing as the Chinese have now militarily conquered all of their territorial claims and resolved the strait conflict, it seems that the Chinese Revolution is now a success. With all of Huaxis under the Chinese eye, the globe's fate remains uncertain.",
		Button = "The East is Red again!",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 250,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 10,
		["Stability_Requirement"] = 60, 
	},
},
]]
{
	MissionName = "Gran Nicaragua",
	CountriesCanForm = {"Nicaragua"},
	RequiredCountries = {"Nicaragua", "San Andres"},
	RequiredTiles = {"CostaRica.005", "Honduras.006"},

	FormableButton = {
		ButtonName = "Integrate our claims!",
		ButtonDescription = "Nicaragua has seen repeated ignorance from the international community in terms of its rightful claims . We must take our own action now, possibly using force to project the idea that this is our territory! Whatever it takes, these lands will be Nicaraguan!",
	},

	CustomAlert = {
		Title = "Flight of The Nicaraguans",
		Desc = "The Nicaraguan state, after years of yearning for lands that it saw as its justified territory, has now assimilated said lands into the country's core territory, as per recent territorial concessions. Though their future remains uncertain, for now, they hail to their nation and its newfound success.",
		Button = "Their success can't last long...",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 150,
			DoNotClear = true,
		},
	},
	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 5,
		["PoliticalPower_Gain"] = 50, 
	},
},

{
	MissionName = "United Slovenia",
	CountriesCanForm = {"Slovenia"},
	RequiredCountries = {"Slovenia", "Friuli", "Trieste"},
	RequiredTiles = {"Austria.002", "Croatia.003", "Croatia.004"},

	FormableButton = {
		ButtonName = "Unite the Slovenes!",
		ButtonDescription = "The proposal for the union of our people existed since the Austrian Empire, but was never realised. It was re-established as the ideas of our liberators from the imperialists who bordered us. Only a part of it was actually fulfilled, as we were rewarded by Koper. However today is the day we finish the destiny of our ancestors, a union for all Slovene people!",
	},

	CustomAlert = {
		Title = "The Kosler Map",
		Desc = "The ideas for the union of Slovene slavs existed for a long time, yet were never fully realised. Their liberators have only managed to gain ownership of Koper, however this was only a small part of what they wanted. As the powers around them were gone, they managed to fulfill the ideals for unification the Slovene people, for once and for all.",
		Button = "Sounds feminine…",
	},

	AddModifiers = {
		["Economic Growth"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 5,
	},
},

{
	MissionName = "A New Hope",
	CountriesCanForm = {"Cape Republic"},
	RequiredCountries = {"Cape Republic", "Volkstaat"},

	FormableButton = {
		ButtonName = "Unite the Cape!",
		ButtonDescription = "The realization of CAPEXIT has now set the scene for unification amongst the Afrikaners together. Let us all unite, and begin the construction of a true Cape Republic, under the ideals of liberty, freedom, and self-determination!",
	},

	CustomAlert = {
		Title = "Rise of The Voortrekkers",
		Desc = "After gaining independence, the Cape Republic has set its sights on uniting the Afrikaner-majority region under its banner. Through military conquests and divine intervention, they have successfully achieved their goal of establishing a united and independent Cape Republic.",
		Button = "The Afrikaners strike back!",
	},

	CustomAttributes = {
		["Stability_Gain"] = 5,
		["PoliticalPower_Gain"] = 100,
	},
},

{
	MissionName = "Verdadera Guatemala",
	CountriesCanForm = {"Guatemala"},
	RequiredCountries = {"Guatemala", "Belize"},
	RequiredTiles = {"Mexico.047", "Mexico.048"},

	FormableButton = {
		ButtonName = "Void the Treaty of Wyke-Aycinena",
		ButtonDescription = "When Spain shattered, we gained our freedom, but a stain remained: British control over Belize and Mexican presence to the west. We awaited the day Britain would fall, as Spain had, to reclaim Belize. Yet, global support, swayed by Belizean propaganda, locked the borders against us. Now, as we restore control over what is ours, let us also look beyond Belize—to the Mexican province of Chiapas—determined to forge a stronger Guatemala!"
	},

	CustomAlert = {
		Title = "The Guatemalan Jaguar",
		Desc = "When the Treaty of Wyke-Aycinena was signed, Guatemala knew it would not last for long. The British Empire will fall, just as Spain's had. Yet when Belize gained independence, the world backed its sovereignty. However, it seems that the eyes of Guatemala also points towards Chiapas. Now, despite all odds, Guatemala has annexed Belize and the Mexican province of Chiapas, destined to become a power in Central America..",
		Button = "That's a lot of trees",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 3, 
		["PoliticalPower_Gain"] = 50,
	},
},

{
	MissionName = "Operation Rosario",
	CountriesCanForm = {"Argentina"},
	RequiredCountries = {"Argentina", "Falkland Islands"},
	RequiredTiles = {"Antarctica.003"},

	FormableButton = {
		ButtonName = "Reclaim the Southern Pearl",
		ButtonDescription = "After our independence as the United Provinces, we were destined to have the Falkland Islands bestowed to us by the Castilian Crown. However, taking advantage of the dire situation, the British swooped in and inhabited the island before we could accept the island. Arise, Argentinians! It is time for a successful Operation Rosario, to liberate the Falkland Islands and beyond!",
	},

	CustomAlert = {
		Title = "A State of Silver",
		Desc = "Since their independence from the Spanish Empire, the Argentinian state sought to solidify their claims to the Falkland Islands, but were soon dismissed by the international community. Although they made have been defeated during the Falklands War of 1982, they have launched a second invasion into the Falkland Islands and Antarctica, coming out triumphant and effectively ending the Falklands dispute.",
		Button = "A Messi conflict…",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 5,
		["PoliticalPower_Gain"] = 50,
		["Stability_Requirement"] = 55,
	},
},

{
	MissionName = "Dayaar Mongol",
	CountriesCanForm = {"Mongolia"},
	RequiredCountries = {"Mongolia", "Southern Mongolia", "Buryatia", "Tuva"},
	RequiredTiles = {"Russia.219", "Russia.215", "Russia.216", "Russia.214", "Russia.213"},

	FormableButton = {
		ButtonName = "Begin the Pan-Mongol Effort!",
		ButtonDescription = "Forever inspired by the glory carried across the plateaus of Mongolia, our comrades standing beyond our borders in the north and south have been progressively stripped of their right to identify as a Mongol over the years, with constant terror being instilled amongst them by their overlords. The shouts that we cry hoping for our brothers and sisters to be liberated and integrated back into our glorious nation will now be on par with the cries exclaimed by the hegemonic Mongol Empire which gave it its spot in history. Together, we will create a new Mongol identity, this time with all Mongolians included.",
	},

	CustomAlert = {
		Title = "The Wholeness of Mongolia",
		Desc = "Although being constantly subjugated and fragmented over the course of the millennium, the Mongol nation persisted in its desire to be an independent identity. There have been many attempts to progress onto making a greater Mongolian state, however, with the unification of the three Mongolias, the dreams of the Mongolians have now been realized.",
		Button = "And Genghis wept...",
	},

	AddModifiers = {
		["Economic Growth"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 10,
		["PoliticalPower_Gain"] = 100,
		["Stability_Requirement"] = 60,
	},
},

{
	MissionName = "Across The Jordan",
	CountriesCanForm = {"Jordan"},
	RequiredCountries = {"Jordan"},
	RequiredTiles = {"Palestine.001", "Palestine.002", "Palestine.003"},

	FormableButton = {
		ButtonName = "Liberate the West Bank",
		ButtonDescription = "When Israel occupied the West Bank from us during the Six Day War, it would displace hundreds of thousands of our brothers in the West Bank. Such damned actions cannot be tolerated! Let us liberate the West Bank, and affirm control on both sides of the Jordan!",
	},

	CustomAlert = {
		Title = "The Hashemite Kingdom",
		Desc = "With victory over their border, the Jordanians have now tightened their decades-long grip over the West Bank, deepening their connection with its Palestinian inhabitants. While much bloodshed has turned the Holy Land red, not a single stain smears the Hashemite Kingdom's flag.",
		Button = "Took them longer than six days…",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 120,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 4,
	},
},

{
	MissionName = "The Eleventh Province",
	CountriesCanForm = {"Canada"},
	RequiredCountries = {"Canada", "Anguilla", "Antigua And Barbuda", "Bahamas", "Barbados", "Belize", "Bermuda", "British Virgin Islands", "Cayman Islands", "Dominica", "Falkland Islands", "Grenada", "Guyana", "Jamaica", "Montserrat", "Saint Kitts And Nevis", "Saint Lucia", "Saint Vincent And The Grenadines", "Trinidad And Tobago", "Turks And Caicos Islands"},

	FormableButton = {
		ButtonName = "Restore the links of Palm and Maple",
		ButtonDescription = "For centuries, the spirit of union has been emanating throughout the former Anglo American colonies, yet alas, unification could not be achieved. But now, with an unleashed Canada able to assume charge, the time is now to integrate the British Americas into Canadian confederation!",
	},

	CustomAlert = {
		Title = "Call of the Great White North", 
		Desc = "The West Indies, now unchained from their overlords, were proposed to unite under Canada. Despite talks with the government in London, these plans were alas unable to be achieved. But now, with interest in the old ideas once more resurging, Canada has taken matters into her own hands to unite the people of the former Anglo-American colonies, firmly entrenching itself across the Americas.",
		Button = "A colony of a colony is still really a colony",
	},

	AddModifiers = {
		["A Mari Usque Ad Mare"] = {
			Length = -1
		},
	},


	CustomAttributes = {
		["DoNotClearModifiers"] = false,
		["Stability_Gain"] = 10, 
		["PoliticalPower_Gain"] = 50
	},
},

{
	MissionName = "Patria Italiana",
	CountriesCanForm = {"Italy"},
	RequiredCountries = {"Italy", "Albania", "Corsica", "Malta", "Montenegro"},--, "Chameria"},
	RequiredTiles = {"Croatia.001", "Croatia.002", "Croatia.003", "Croatia.004", "France.033", "France.035", "Greece.019", "Greece.018", "Greece.023", "Switzerland.003", "Switzerland.011", "Switzerland.012", "Slovenia.001", "Bosnia.001"},

	FormableButton = {
		ButtonName = "Unite Italia",
		ButtonDescription = "While Italy has been unified for over two centuries, we have been robbed numerous territories in the process, separating our people from their homeland. Seeing as the same people are calling us to free them from subjugation, let us pick up arms and begin embracing Italian irredentism!",
	},

	CustomAlert = {
		Title = "La Grande Italia",
		Desc = "Rejected of its promised territories during the Great War, the Italians were left in a state of resentment for years over their incomplete pan-nationalist plan. However, after over two hundred years, it seems that the Italians have succeeded in their pan-nationalist goals, uniting all Italians. Under one banner, one culture, and one language.",
		Button = "Incredible..",
	},

	AddModifiers = {
		["Economic Growth"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = {
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 10,
		["PoliticalPower_Gain"] = 100,
		["Stability_Requirement"] = 60,
	},
},

{
	MissionName = "Somos Libres",
	CountriesCanForm = {"Peru"},
	RequiredCountries = {"Peru"},
	RequiredTiles = {"Chile.001", "Chile.002", "Bolivia.003", "Bolivia.002", "Bolivia.001", "Brazil.065", "Brazil.166", "Brazil.167", "Ecuador.013", "Ecuador.004", "Ecuador.003", "Colombia.009", "Colombia.006"},

	FormableButton = {
		ButtonName = "Reestablish Primer Militarismo!",
		ButtonDescription = "República Peruana, the idol state we attempt to envision as ourselves. A prosperous utopia state for the people of Peru, if not for its plagued fate centuries prior via miscalculation, error, and fatigue. Despite such misapprehension—we, the people of Peru: Shall not stand for such torment heretofore as we shed tears upon such a victorious endeavor.",
	},

	CustomAlert = {
		Title = "The Real Felipe Fortress",
		Desc = "The Peruvian people within the past were ones isolated and absent from the geopolitical affairs of the rest of the continent, the Andes mountains splitting the country in twain; however with the annexation and incorporation of the prizes treasures within the Amazon, the tide has turned and the República of Peruana looks not towards the past, but towards the present. ",
		Button = "Are they Firm and Happy?" 
	},

	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
},

{
	MissionName = "The State of The Equator",
	CountriesCanForm = {"Ecuador"},
	RequiredCountries = {"Ecuador"},
	RequiredTiles = {"Peru.002", "Peru.001", "Peru.008", "Colombia.010", "Colombia.009", "Colombia.008", "Colombia.012", "Colombia.008", "Colombia.011", "Colombia.006", "Brazil067"},

	FormableButton = {
		ButtonName = "Restore Florean Domination",
		ButtonDescription = "Plunged into a continent of utter turbulence, not even the most glorious of heroes could've prevented the Terrible Year and our decline. And yet, the days of wars for independence and exploitation are long gone. Let the sons of the soil rise again, freedom after triumph shall come. Rise up by the thousands, for victory shall fly!",
	},

	CustomAlert = {
		Title = "The Ecuadorian Fatherland",
		Desc = "Rising out of the failed state of Gran Colombia, the State of Ecuador found itself in a state of turmoil and the Fatherland was brought to shame as the years went on. Nonetheless, the iron has been struck. Inspired by the spirit of war and revenge, the Ecuadorian masses seek nothing but omens of absolute victory.",
		Button = "Hail, oh Fatherland!",
	},

	CustomAttributes = {
		["Stability_Gain"] = 10, 
	},
},

{
	MissionName = "Königreich Sachse",
	CountriesCanForm = {"Saxony"},
	RequiredCountries = {"Saxony"},
	RequiredTiles = {"Germany.033"},

	FormableButton = {
		ButtonName = "Retake the claims of the House of Wettin!",
		ButtonDescription = "To shape our future, we must reinstate the lands of Frederick Augustus, who had ascended with the nation to kinghood. Only with these restorations, shall Saxony once again ascend to eternal righteousness. Hail the father of the country and hail the House of Wettin!",
	},

	CustomAlert = {
		Title = "The Rue Crown",
		Desc = "The Napoleonic Wars saw the ascension of Saxony to a kingdom, but towards the end of its existence, it was forced into subservience by its neighbor, Prussia, which lasted to WW1. However, with the House of Wettin retaking its old lands, perhaps a true free Saxony has finally been achieved.",
		Button = "Was it necessary?",
	},

	CustomAttributes = {
		["Stability_Gain"] = 7,
	},
},

{
	MissionName = "The People of Long Shields",
	CountriesCanForm = {"Mthwakazi"},
	RequiredCountries = {"Zimbabwe"},
	RequiredTiles = {"Botswana.009"},

	FormableButton = {
		ButtonName = "Reverse the Rudd Concession!",
		ButtonDescription = "During the hell of Mfecane, our great king, Mzilikazi, rescued us as our ancestors followed him to paradise beyond the Limpopo River. May those deplorable British treaties of the past be damned! In the wake of our unshackling, let us undo those terrible treaties and restore the Khumalo monarchy!",
	}, 

	CustomAlert = {
		Title = "The Great Road",
		Desc = "King Mzilikazi, maker of the nation, once brought the Ndebele people out of the torment of Mfecane and into the apex of Ndebele history. It came as no surprise then that the amaNdebele, suppressed ever since, has not only liberated themselves but reinstated Khumalo rule.",
		Button = "Big at conception, bigger at re-conception",
	},

	CustomAttributes = {
		["Stability_Gain"] = 7,
	},
},

{
	MissionName = "New Constantinople",
	CountriesCanForm = {"Bulgaria"},
	RequiredCountries = {"Bulgaria"},
	RequiredTiles = {"Greece.001", "Greece.002", "Turkey.001", "Turkey.002"},

	FormableButton = {
		ButtonName = "Unleash the Bulgarian Lion!",
		ButtonDescription = "When the Tsardom of Bulgaria was unshackled a century ago, we laid waste to the Balkans hell bent on conquest, only to suffocate in the web of World War I's alliances. Our current friendly and ailing republic has no right to stand in this modern land so ripe for conquest. In the name of the Tsar, may the Bulgarian behemoth be unearthed and ravage the Balkans once more!", 
	},

	CustomAlert = {
		Title = "Ferdinand's Vengeance", 
		Desc = "In the pages of history, the Tsardom of Bulgaria's ambitiousness always plagued its success. Despite this, Bulgaria has dismantled the pillars of a republic for those of a tsardom once more. What could have led to such misguided strides? Retribution? Stubbornness? It matters not, for Bulgaria has now immortalized themselves as the Prussia of the Balkans.", 
		Button = "The Balkans must be thrilled...", 
	}, 
	CustomAttributes = {
		["Stability_Gain"] = 10,
	},
},

{
	MissionName = "Gran Antioquia",
	CountriesCanForm = {"Antioquia"},
	RequiredCountries = {"Antioquia", "Choco"},
	RequiredTiles = {"Colombia.016", "Colombia.032", "Colombia.031", "Colombia.019"},

	FormableButton = {
		ButtonName = "Unite the Paisans!",
		ButtonDescription = "At last, we have secured our freedom from Colombia, creating an independent state for all Antioquenos. But our rightful borders haven't yet been established, as the Colombians still occupy the department of Choco. Let us march west and finally integrate our rightful claims in Choco, and finally forge a true Gran Antioquia!",
	},

	CustomAlert = {
		Title = "Oh Libertad!",
		Desc = "With its unique culture and opposition to centralization, the Paisas had always had a unique identity from the rest of Colombia, at last gaining their independence. Yet despite their newfound freedom, their desires had not been quenched. Taking control over the department of Choco by force, the Antioquenos now seem determined to forge a new great Antioquia on the ruins of the old Colombian state...",
		Button = "Choco deserves to be sovereign!",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = { 
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 5, 
	},
},

{
	MissionName = "State of Deseret",
	CountriesCanForm = {"Deseret"},
	RequiredCountries = {"Deseret"},
	RequiredTiles = {"UnitedStates.116", "UnitedStates.117", "UnitedStates.118", "UnitedStates.119", "UnitedStates.120", "UnitedStates.121", "UnitedStates.122", "UnitedStates.128", "UnitedStates.141"},

	FormableButton = {
		ButtonName = "Sound the Beehive",
		ButtonDescription = "At the foot of the Jordan, our Hive has waited, waited for the hand of the Lord to deliver us unto a land flowing with milk and honey. Now, with the Union's collapse, the road lies open to the other side. Moroni's trumpet sounds from behind, and the parted river beckons us forward. Sun, stand thou still amid Heaven! Let us finally enter our Promised Land!",
	},
	
	AddModifiers = {
		["The Trumpet Sounds"] = {
			Length = -1
		},
	},

	CustomAlert = {
		Title = "The promised land..?",
		Desc = "Centuries ago, the Mormon pioneers trekked into the Great Salt Lake Valley. There they have remained, hindered from expansion by the United States. But with their independence, the North American landscape has irrevocably shifted. Now, spurred on by dreams of the Promised Land of old, Deseret has asserted itself across all of the Great Basin, ready to claim the mantle of Zion.",
		Button = "A Mormonopoly",
	},
},

{
	MissionName = "Land of The Hadhrami",
	CountriesCanForm = {"Hadhramaut"},
	RequiredCountries = {"Hadhramaut"},
	RequiredTiles = {"Yemen.015", "Yemen.007", "Yemen.008"},

	FormableButton = {
		ButtonName = "Rejuvenate the independence of Hadhramaut!",
		ButtonDescription = "The unity of South Yemen was an idea that the people of Hadhramaut heavily despised and rejected. Despite their attempts, the movement failed and Hadhramaut was incorporated into Yemen not long after. Today we can embrace the dreams of Hadrami Badia's army and retake our lands!",
	},

	CustomAlert = {
		Title = "Remembering October 14th",
		Desc = "As the Yemeni revolt in British Aden came to a close, relinquishing their control over the region, the Badia Army refused to unite with South Yemen, favoring the establishment of a new Arab Republic. Even though the new nation was quickly dismantled, the idea now manifests in the modern day, echoing the resolve of those Hadhrami long ago.",
		Button = "Death has come.",
	},

	CustomAttributes = {
		["Stability Gain"] = 6,
	}
},

{
	MissionName = "The Moskitian Kingdom",
	CountriesCanForm = {"Moskitia"},
	RequiredCountries = {"Moskitia", "San Andres"},
	RequiredTiles = {"Nicaragua.003", "Nicaragua.004", "Nicaragua.010", "Nicaragua.008", "Nicaragua.009", "Honduras.007", "Honduras.006", "Honduras.012"},

	FormableButton = {
		ButtonName = "Reverse the Treaty of Managua!",
		ButtonDescription = "Being unable to speak our own language or follow our religion, it is clear that Nicaragua, and Spain before it has failed the Miskito. But under the leadership of the House of Miskito and guidance from Britannia, for once our homeland enjoyed stability. Let us follow in the footsteps of Robert Frederic I and reestablish the last true monarchy In the Americas!",
	},

	CustomAlert = {
		Title = "Rule... Moskitia?",
		Desc = "Surviving the plagues that wiped out its neighbors, for several centuries the Miskito Kingdom…..existed? It was barely united or Independent, yet to some extent, it was still Moskitian. As the consequences of the Nicaragua crisis are realized and the house of Moskitia retakes the throne, the Moskitians are perhaps, finally free!",
		Button = "They ain't sucking my blood.",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = { 
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 10, 
	},
},

{
	MissionName = "State of South Peru",
	CountriesCanForm = {"South Peru"},
	RequiredCountries = {"South Peru"},
	RequiredTiles = {"Brazil.065", "Chile.001", "Chile.002", "Brazil.166", "Peru.029", "Bolivia.001"},

	FormableButton = {
		ButtonName = "Re-establish the independent republic!",
		ButtonDescription = "In a time of instability and anarchy, our nation was carved from Peruvian borders at the behest of Simon Bolivar himself. Those above us opposed and resisted, but our path was forged by El Libertador in readiness. With our freedom in hand, let us rise up once again as a beacon of stability for our people!",
	},

	CustomAlert = {
		Title = "A State in the Mountains",
		Desc = "At the command of Simon Bolivar, South Peru was prepared a place on the world map. Acting initially as only an idea to prevent the Peruvian consolidation of power within the Federation of the Andes, then South Peru took up arms to establish their nation in a time of great political insecurity. With the country having returned, the once old borders have rewritten the map of a modern era once again.",
		Button = "Strong for the union.",
	},

	CustomAttributes = {
		["Stability_Gain"] = 7,
	},
},

{
	MissionName = "The Pacific Republic",
	CountriesCanForm = {"Choco"},
	RequiredCountries = {"Choco"},
	RequiredTiles = {"Colombia.010", "Colombia.011", "Colombia.012", "Colombia.014", "Colombia.016", "Colombia.018"},

	FormableButton = {
		ButtonName = "Free the Abandoned Coast!",
		ButtonDescription = "Protests erupted across the Colombian Pacific in defiance of years-long state abandonment. With little response from the government, many had felt betrayed, leading to growing calls for an independent Colombian Pacific coast. However, those voices have since faded into history. Now, with our declaration of independence, we Chocóanos must not let them be forgotten. Let us lead the charge and liberate our brothers from Bogota's grasp!",
	},

	CustomAlert = {
		Title = "The Colombian Pacific breaks free.",
		Desc = "After the failure of Colombian federalization, many regions had considered breaking away. The Pacific Coast was no exception, facing protests for federalization, with some even considering independence. However, it was only with Colombia’s collapse that these aspirations could become reality. Chocó rose to the forefront, rallying the Pacific Coast beneath its banner and forging a new nation.",
		Button = "Choco powder?",
	},

	AddModifiers = {
		["Popular War Support"] = {
			Length = 365,
			DoNotClear = true,
		},
	},

	CustomAttributes = { 
		["DoNotClearModifiers"] = true,
		["Stability_Gain"] = 10, 
	},
},

{
		MissionName = "Free State of Bengal",
		CountriesCanForm = {"Bangladesh"},
		RequiredCountries = {"Bangladesh", "Tripura", "Gorkhaland", "West Bengal"},
		FormableButton = {
			ButtonName = "Unite the Bengal Region",
			ButtonDescription = "Since the British partition of Bengal in 1947, our people have endured division between two nations. Insurrections and violence in India's eastern provinces have brought us to this historic juncture, where the Bengali ethnicity can proudly declare their population united under a single banner. Joy Bangla!",
		},

		CustomAlert = {
				Title = "Bôngô",
				Desc = "Suhrawardy's proposal of an undivided Bengal State held the promise of becoming the wealthiest and most prosperous region in South Asia, with the potential to provide its people with a high standard of living across various sectors. Regrettably, this vision was scarcely acknowledged by the British government. Somehow, someway, Bangladesh has expanded its borders to fit the undivided Bengal presidency of all those years ago.",
				Button = "My Golden Bengal!",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 365,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 10,
				["PoliticalPower_Gain"] = 150,
				["Stability_Requirement"] = 60,
		},
},

{
		MissionName = "Across All Micronesia",
		CountriesCanForm = {"Micronesia"},
		RequiredCountries = {"Micronesia", "Palau", "Marshall Islands", "Northern Mariana Islands"},
		FormableButton = {
			ButtonName = "Unify the Micronesian peoples!",
			ButtonDescription = "From the Spanish to the Japanese, imperialists have laid claims to our islands time and time again, yet despite our common heritage and hatred towards them, alas, unification could not be achieved. But no matter the cost, the dreams of Micronesian unity shall live on! Let us finish the plans of the old Congress and usher in unity across Micronesia!",
		},

		CustomAlert = {
				Title = "The Patriots of Micronesia",
				Desc = "With its multiple languages and distinct peoples, the dream of an independent, united Pacific trust territory was but a fantasy. Yet, despite this, it was advocated for till the end by the Americans and the Micronesian Congress. But with the Carolines finally ushering in their hopes for unification, perhaps the Micronesians shall see Peace, Unity, and Liberty after all.",
				Button = "Another Promised Land..?",
		},

		CustomAttributes = {
				["Stability_Gain"] = 7,
				["PoliticalPower_Gain"] = 80,
		},
},

{
		MissionName = "Plan Espiritual de Aztlan",
		CountriesCanForm = {"Aztlan"},
		RequiredCountries = {"Aztlan", "Texas", "California", "Deseret"},
RequiredTiles = {"UnitedStates.102", "UnitedStates.136", "UnitedStates.134"},
		FormableButton = {
			ButtonName = "Defy the Anglo-American Society!",
			ButtonDescription = "For decades, Mexican-Americans have been under the feet of Anglo-Americans. Now, with the United States falling into the hands of collapse, the time has come to unify the territories that were claimed by Chicanismo and make a state for Mexican-Americans. This time, we will not be judged by our offspring, far from it!",
		},

		CustomAlert = {
				Title = "El Movimiento",
				Desc = "After the Americans fell, ideas surrounding a restructuring of the former Union sprang up. How it would occur, however, was never clear. This time, it was neither the United States nor any other nation, but the country of Aztlan, which decided to expand its territories and establish a nation for ‘Chicanos’, following the footsteps of the former Mexican Empire of Agustin de Iturbide.",
				Button = "La Raza Unida?",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 365,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 10,
				["PoliticalPower_Gain"] = 150,
		},
},

{
		MissionName = "Nacion Camba",
		CountriesCanForm = {"Santa Cruz"},
		RequiredCountries = {"Santa Cruz"},
RequiredTiles = {"Bolivia.001", "Bolivia.020", "Bolivia.021"},
		FormableButton = {
			ButtonName = "Unite the Camba Nation!",
			ButtonDescription = "The pure Camba nation, its people, and its resources trampled on again and again by the Colla. To separate just Santa Cruz would be a mistake, for our occupation shall not end until we unite the media luna and forge a steadfast Nación Camba!",
		},

		CustomAlert = {
				Title = "A Tale of Two Bolivias",
				Desc = "Since as far back as the Chaco War, Eastern Bolivia has desired secession, a wish that could, alas, never come to be. But taking advantage of political turmoil in Bolivia, a new movement has emerged, establishing control over not just Santa Cruz but the departments of Beni and Pando as well, uniting the Camba as one.",
				Button = "Who is that nation?",
		},

		CustomAttributes = {
				["Stability_Gain"] = 6,
		},
},

{
		MissionName = "The State of The Manchus",
		CountriesCanForm = {"Manchuria"},
		RequiredCountries = {"Manchuria"},
RequiredTiles = {"China.063", "China.062", "China.061", "China.065", "China.071", "China.072", "China.073", "China.074", "China.075", "China.076",  "China.077", "China.080", "Russia.273", "Russia.274", "Russia.275", "Russia.276", "Russia.277", "Russia.278", "Russia.279", "Russia.280", "Russia.281", "Russia.282", "Russia.283", "Russia.284", "Russia.285", "Russia.286", "Russia.287", "Russia.288", "Russia.280", "Russia.281", "Russia.0282", "Russia.283", "Russia.284", "Russia.285", "Russia.286", "Russia.287", "Russia.288", "Russia.289", "Russia.290", "Russia.291", "Russia.292", "Russia.309", "Russia.310", "Russia.311", "Russia.312"},
		FormableButton = {
			ButtonName = "Unite the Manchus!",
			ButtonDescription = "If a seedling cannot grow roots, then it cannot sprout. Such is actively happening to our homeland, oppressed by those who subjugate us. Gazing upon the mountains that run through the Heilong River, a voice cries out: Unification! May our mountains and rivers flow with prosperity as we reunite with our brethren!",
		},

		CustomAlert = {
				Title = "The Great Northeastern Region",
				Desc = "1584 marked the first unification of the Manchurian people, fostering unity and a shared Manchu identity among those in the region. Though modern times have seen the Manchu fractured by arbitrary borders, it appears that they have now transcended these divisions, reclaiming their ancestral homeland as their forefathers look down from above.",
				Button = "Filling the world with divine light…",
		},

		CustomAttributes = {
				["Stability_Gain"] = 8,
		},
},

{
		MissionName = "The Ingrian Jewel",
		CountriesCanForm = {"Ingria"},
		RequiredCountries = {"Ingria", "Saint Petersburg"},
		FormableButton = {
			ButtonName = "Reclaim The Heart of Ingria",
			ButtonDescription = "Ingria had always been a unified region surrounding our corner of the Baltic Sea. However, artificial political divisions and the Russification of Saint Petersburg led to a temporary, yet entrenched separation between us and our region’s cultural and economic hub. However, we may now take advantage of the collapse of the Russian state and claim our rightful city!",
		},

		CustomAlert = {
				Title = "The Unification of Ingria",
				Desc = "The city of Saint Petersburg had long been considered a geographical part of Ingria. However, due to its nature as the capital of the Russian Empire, and later the second city of Russia, it was inconceivable that an Ingrian independent nation would ever control it. But now, the jewel on the Baltic and the economic heart of the region beats to the rhythm of a united Ingrian state, with Saint Petersburg included!",
				Button = "What a worthless jewel.",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 365,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 4,
				["PoliticalPower_Gain"] = 80,
		},
},

{
		MissionName = "Great Tigray",
		CountriesCanForm = {"Tigray"},
		RequiredCountries = {"Tigray", "Afar"},
RequiredTiles = {"Eritrea.002", "Eritrea.006", "Djibouti.002", "Djibouti.003"},
		FormableButton = {
			ButtonName = "Materialize the 1976 Manifesto",
			ButtonDescription = "The 1976 Manifesto declared an expansive version of Tigray, encompassing all Tigrigna speakers, from Sudan to Eritrea. Although this ambition was abandoned in favor of consolidating power in Ethiopia, we shall continue what our forefathers could not, and realize the unification of a Greater Tigray!",
		},

		CustomAlert = {
				Title = "The Tiger of Africa",
				Desc = "Founded in the 1970s, the Tigray People's Liberation Front initially sought the creation of a Greater Tigray. This vision was outlined in the 1976 Manifesto, but it was never realized, as shortly after the declaration, the focus shifted towards overthrowing the central government altogether. In recent years, however, the Tigray movement has shifted its goals to realizing this idea, ultimately succeeding and establishing a homeland for all Tigray people.",
				Button = "The birthplace to all Ethiopians…",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 365,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 6,
				["PoliticalPower_Gain"] = 100,
				["Stability_Requirement"] = 55,
		},
},

{
		MissionName = "Greater Kurdistan",
		CountriesCanForm = {"Kurdistan"},
		RequiredCountries = {"Kurdistan"},
RequiredTiles = {"Syria.004", "Iraq.019", "Iraq.020", "Iraq.023", "Iraq.018", "Iran.010", "Iran.016", "Turkey.067", "Turkey.063", "Turkey.047", "Turkey.060", "Turkey.045", "Turkey.046"},
		FormableButton = {
			ButtonName = "Advocate for the people!",
			ButtonDescription = "Throughout the pages of history, the Kurdish identity has been cut down several times by foreign oppressors, with this oppression continuing in the modern day. This shall not be the destiny of the Kurdish people, as we have manifested our will in affirming our independence, we can do the same through the liberation of our people! Yan Kurdistan, Yan Neman!",
		},

		CustomAlert = {
				Title = "The Rise of A Kurdish Nation",
				Desc = "Abolishing the art of diplomacy and ignoring negotiations, the Kurdish people have taken it upon themselves to proclaim a Kurdish state. Beyond this, they have militarily liberated their people from the yoke of oppression, giving rise to a Kurdish nation. In this world of revolution, it is uncertain what will happen next.",
				Button = "A Rise of a Nation…",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 365,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 8,
				["PoliticalPower_Gain"] = 100,
		},
},

{
		MissionName = "Whistling Dixie",
		CountriesCanForm = {"Confederate States of America"},
		RequiredCountries = {"Confederate States of America", "Texas"},
RequiredTiles = {"UnitedStates.117", "UnitedStates.114", "UnitedStates.062", "UnitedStates.061", "UnitedStates.085", "UnitedStates.086", "UnitedStates.087", "UnitedStates.043"},
		FormableButton = {
				ButtonName = "Bolster Southern Nationalism",
				ButtonDescription = "Despite our humiliating loss during the war of northern aggression, activism for southern secession persists to this day. Our forefathers fought for states' rights, freedom from the Union. With the goals of secessionism coming out triumphant, we shall begin militarily integrating our god given states. This shall be the first step towards manifesting southern destiny!",
		},

		CustomAlert = {
				Title = "The Confederate Legion",
				Desc = "What everyone thought was impossible has been completed. The Confederacy, a frail confederation of fragmented states born from a legacy of rebellion, should have been erased from history. Yet, as the same division sweeps across America once more, the Confederacy has risen, reclaiming vast swaths of their former territories and reigniting the southern revolution one last time.",
				Button = "A Lost Cause...",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 365,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 8,
				["PoliticalPower_Gain"] = 120,
				["Stability_Requirement"] = 55,
		},
},

{
		MissionName = "Liberación Andaluza",
		CountriesCanForm = {"Andalusia"},
		RequiredCountries = {"Andalusia", "Gibraltar"},
RequiredTiles = {"Spain.020", "Spain.019", "Spain.031", "Spain.029", "Portugal.001"},
		FormableButton = {
			ButtonName = "Spread the Andalus!",
			ButtonDescription = "In his writings, Infante frequently expressed disdain for what he saw as the oppressive centralism of the Spanish state, which he believed sought to erase regional identities in favor of a homogenized, Castilian-dominated culture. As we take advantage of an anarchic situation, perhaps we could restore Infante's irredentist ideas, to unite all of Southern Iberia under Andalusia.",
		},

		CustomAlert = {
				Title = "The Andalusian Fortress",
				Desc = "In the second phase of Blas Infante’s Andalusian conquest, he expanded his ideas beyond mere cultural revival, advocating for political and economic self-determination within Spain. However, it turns out that the idea of self-determination has succeeded. Now, the Andalusian state has embraced irredentist sentiment, uniting all of Southern Iberia.",
				Button = "There's Moor?",
		},

		AddModifiers = {
				["Economic Growth"] = {
				Length = 270,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 10,
				["PoliticalPower_Gain"] = 175,
		},
},

{
		MissionName = "Lone Star Over the West",
		CountriesCanForm = {"Texas"},
		RequiredCountries = {"Texas", "Aztlan", "California", "Deseret", "Baja California"},
RequiredTiles = {"UnitedStates.102", "UnitedStates.136"},
		FormableButton = {
			ButtonName = "Raise the Lone Star Over The West",
			ButtonDescription = "During the frontier era, Texas stood at the forefront, aiming to expand past the Rio Grande to the Pacific Coast. While those ambitions faded away with the end of our sovereignty, our modern revolution shall allow us to fire our guns and march westward once more to reestablish our dominance. Remember the Alamo!",
		},

		CustomAlert = {
				Title = "From The Gulf to The Pacific",
				Desc = "During the presidency of Mirabeau B. Lamar, Texas desired to expand westward to the Pacific Coast, however, the entrance of Texas into the United States caused these plans to remain as just plans. The reestablishment of their independence, however, has seen these completed. Now, it seems the Texan Revolution and the Alamo have been avenged.",
				Button = "They rise amongst the nations.",
		},

		AddModifiers = {
				["Economic Growth"] = {
				Length = 365,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 10,
				["PoliticalPower_Gain"] = 125,
		},
},

{
		MissionName = "The Phantom Emirate of Ahwaz",
		CountriesCanForm = {"Al-Ahwaz"},
		RequiredCountries = {"Al-Ahwaz"},
RequiredTiles = {"Iran.034", "Iran.046", "Iran.033", "Iran.035", "Iran.036", "Iran.017", "Iran.027", "Iran.014", "Iran.016", "Iran.013", "Iran.012", "Iraq.012", "Iraq.005", "Iraq.004"},
		FormableButton = {
			ButtonName = "Awaken the Force of Ahwaz!",
			ButtonDescription = "We have faced political marginalization, economic deprivation, and forced cultural assimilation under the rule of those we once saw as our liberators. Yet, they have turned their backs on us, leaving us to the mercy of the dogs of war. With the true frontiers of Ahwaz now liberated, we can establish a safe and secure society!",
		},

		CustomAlert = {
				Title = "Revenge of Al-Ahwaz",
				Desc = "The once bloody clouds that flew over Al-Ahwaz have now dispersed, revealing the beauty of the lands of Ahwaz. The state of Al-Ahwaz, now independent, has taken upon itself to conquer swaths of their movement's desires, heralding a new golden age for the people of Ahwaz.",
				Button = "A Phantom Menace!",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 365,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 6,
		},
},

{
		MissionName = "United Kalmykia",
		CountriesCanForm = {"Kalmykia"},
		RequiredCountries = {"Kalmykia", "Astrakhan"},
		FormableButton = {
			ButtonName = "Unite Kalmykia and Astrakhan!",
			ButtonDescription = "From our deportations under Operation Ulusy to our inability to pray in our own Khurals, the Kremlin has oppressed Kalmykia long enough. Despite the destruction of oppressive hegemony over Kalmykia, we are not free until our stripped territories are restored. Let us reunite the separated lands of Astrakhan and bring all of Kalmykia under the Šajin Lama!",
		},

		CustomAlert = {
				Title = "The Dual Brotherhood",
				Desc = "Hundreds of kilometers the Kalmyks walked, avoiding the fate of the other Oirats, yet their descendants could only watch as the Soviets deported the Kalmyk people. With a new Kalmyk state emerging, taking revenge on the Russians by restoring its old borders, perhaps Europe's only Buddhists shall finally be free...",
				Button = "Have they found Bomba?",
		},

		CustomAttributes = {
				["Stability_Gain"] = 7,
		},
},

{
		MissionName = "Natural Syria",
		CountriesCanForm = {"Syria"},
		RequiredCountries = {"Syria", "Lebanon", "Jordan", "Palestine", "Kuwait", "Cyprus", "Israel", "Al-Ahwaz", "Iraq"},
RequiredTiles = {"SaudiArabia.001", "SaudiArabia.002", "SaudiArabia.003", "SaudiArabia.004", "SaudiArabia.019", "Egypt.023", "Egypt.024", "Egypt.025", "Turkey.050", "Turkey.051", "Turkey.052", "Turkey.053", "Turkey.054", "Turkey.055", "Turkey.056", "Turkey.057", "Turkey.036", "Turkey.034", "Turkey.035", "Turkey.046", "Turkey.047", "Turkey.048", "Turkey.049", "Turkey.022", "Turkey.062", "Iran.006", "Iran.012", "Iran.013", "Iran.016", "Iran.017", "Iran.027", "Iran.033", "Iran.035", "Iran.034"},
		ExclusiveFormables = {"Kingdom of Syria"},
		FormableButton = {
			ButtonName = "Light the spark of the Syrian Renaissance",
			ButtonDescription = "From the Taurus to the Gulf, our homeland remains fractured, blood spilt by our brethren to keep the cog turning. The fire of Syrian revanchism will be set alight across the entire Fertile Crescent. In our darkest hour, we must cast aside the chains that restrict our ambitions. Let us give flight to the eagles of the Whirlwind; after three millennia in the making, it is time for a new Syria to be forged!",
		},

		CustomAlert = {
				Title = "The Calm Before the Whirlwind",
				Desc = "For decades, Syria was threatened by foreign states, a country covered in dark, foreboding clouds, which left it in everlasting disarray, blotting out any hope that Syria could ever remain at peace. And yet, as the storm seems to subside, a new storm rises over Syria and the entire Fertile Crescent. At the eye of the storm lies the Whirlwind, rejuvenated by the Sons of Life, pledging to drive away the forces of darkness that had hindered their progress. With the resurgence of Syrian nationalism at the helm, the New Generation looks to the future, knowing that for the first time in millennia, the Syrian homeland stands united.",
				Button = "Dark clouds gather on the horizon…",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 420,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 10,
				["PoliticalPower_Gain"] = 125,
		},
},

{
		MissionName = "Great Occitania",
		CountriesCanForm = {"Occitania"},
		RequiredCountries = {"Occitania", "Provence"},
RequiredTiles = {"France.001", "France.003"},
		FormableButton = {
			ButtonName = "Pursue Occitan Unification",
			ButtonDescription = "Before the days of northern encroachment, our Occitania shone with radiance, each mountain carrying forward an Occitan legacy—until the northern barbarians swept through our lands and rid them of anything considered Occitan. With our occupiers collapsing and independence secured, an Occitan homeland shall be established for all Occitans!",
		},

		CustomAlert = {
				Title = "Success of The Occitania Movement",
				Desc = "For centuries, the Occitan people have endured oppression under their incumbent rulers. However, it appears that the Occitan nationalist movement has succeeded, establishing an Occitan state that encompasses all Occitan-speaking regions this time.",
				Button = "Does it sing?",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 270,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 7,
				["PoliticalPower_Gain"] = 100,
				["Stability_Requirement"] = 55,
		},
},

{
		MissionName = "Imperio Chileno",
		CountriesCanForm = {"Chile"},
		RequiredCountries = {"Chile", "Palau", "Philippines", "Rapa Nui", "Guam", "Northern Mariana Islands", "Micronesia"},
RequiredTiles = {"Peru.015", "Peru.033", "Ecuador.007"},
		FormableButton = {
			ButtonName = "Establish Pacific Dominance!",
			ButtonDescription = "Ever since Magellan first saw the Pacific, our future has always lain within its bounds. Its waters are the lifeblood of our nation, and while it lies out of reach, Chile will never be safe. Let us revive the dreams of the liberators O'Higgins and Cochrane to bring the great ocean under our domain. From the Straits of Magellan to the Pearl of the Orient, may Chile rule the waves!",
		},

		CustomAlert = {
				Title = "The Chilean Thalassocracy",
				Desc = "Against all odds, Chile has revived its founders’ long-dead dreams of Pacific dominance and conquered Spain’s old colonial holdings. As the largest ocean in the world falls under the control of a single nation, the Chilean armada strikes fear into the hearts of every sailor on the south seas.",
				Button = "Doesn’t seem very pacifist to me…",
		},

		AddModifiers = {
				["The Legacy of Cochrane"] = {
				Length = -1,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 10,
		},
},

{
		MissionName = "The Swords of Iraq",
		CountriesCanForm = {"Iraq"},
		RequiredCountries = {"Al-Ahwaz", "Iraq", "Kuwait"},
RequiredTiles = {"Saudi Arabia.020", "Saudi Arabia.021"},
		FormableButton = {
			ButtonName = "Sever the artificial boundaries!",
			ButtonDescription = "We have broken free from the shackles American 'freedom' had placed upon us. Now, it is time to breathe new life into the Iraqi people—one against the axis of the west — one that will forward our unity and sovereignty—one that would outshine the sun itself—a new hegemony over the Gulf in the name of Allah.",
		},

		CustomAlert = {
				Title = "The Mother of All Evil",
				Desc = "Although the dubious Gulf War ended in coalition victory, it seems like Iraq, unwilling to move on, has decided once more to attempt to integrate its territorial claims, fulfilling the goals of countless Iraqi leaders of the past...", 
				Button = "Where does the terror end?",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 420,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 8,
				["PoliticalPower_Gain"] = 125,
		},
},

{
		MissionName = "Bütöv Azerbaycan",
		CountriesCanForm = {"Azerbaijan"},
		RequiredCountries = {"Azerbaijan", "South Azerbaijan", "Armenia", "Lezgistan"},
RequiredTiles = {"Iran.001", "Iran.006", "Iran.007", "Iran.008", "Iran.009", "Iran.001", "Iran.010", "Iran.011", "Iran.012", "Iran.013", "Iraq.021", "Iraq.022", "Iraq.019", "Iraq.023"},
		FormableButton = {
			ButtonName = "Reinvigorate the Flame of Azerbaijan!",
			ButtonDescription = "The nation of Azerbaijan has existed since ancient times, ushering in prosperity for all of our people. However, in modern times, our people are in dire need. As oppression plagues our people, dire times call for desperate measures. We shall liberate our people from their subjugators, and Azerbaijan can become whole again!",
		},

		CustomAlert = {
				Title = "The Awakening of Azerbaijan",
				Desc = "With victory over their many borders, the Azerbaijani nation state has liberated its people from the subjugation of foreign occupiers. Though the mountains of the Caucasus have now been stained with bloodshed, the Azerbaijani flag stands adamant, the flame of Azerbaijan burning for eternity.",
				Button = "It is getting a little warm in here.",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 420,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 10,
				["PoliticalPower_Gain"] = 150,
		},
},

{
		MissionName = "The Chilean Fatherland",
		CountriesCanForm = {"Chile"},
		RequiredCountries = {"Chile", "Patagonia", "Rapa Nui"},
RequiredTiles = {"Argentina.016", "Argentina.017", "Argentina.018", "Antarctica.003"},
		FormableButton = {
			ButtonName = "Reverse the Boundary Treaty of 1881",
			ButtonDescription = "For centuries, our nation was pushed over by the likes of the Argentine devil who sought to weaken us at every turn. Our rightful Patagonian lands under the illegitimate rule of the Mapuche were given to the Argentinians by the Spanish imperialists, seemingly never to be seen by us again. But today, we have pushed back the Argentines against all odds, and have established control over our rightful lands. ¡Viva la gran Chilé!",
		},

		CustomAlert = {
				Title = "Patria Vieja",
				Desc = "Despite being known for its long and thin territory, the Chilean nation once yearned for control of the southern cone of Patagonia, an ambition slaughtered by concerns of a multiple front war. However, after a century of Argentine rule, Chile has finally pushed inland, annexing Patagonia and gaining access to both oceans.",
				Button = "Chile out bro…",
		},

		AddModifiers = {
				["Popular War Support"] = {
				Length = 365,
				DoNotClear = true,
				},
		},

		CustomAttributes = {
				["DoNotClearModifiers"] = true,
				["Stability_Gain"] = 7,
				["PoliticalPower_Gain"] = 150,
		},
},

}
return Tags
