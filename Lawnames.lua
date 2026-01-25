local lawNames = {
	["Faction"] = { 
		Name = "Party Loyalty",
		Types = { "Minimum", "Low" , "Standard", "High", "Maximum"}
	},
	["Firearm"] = { 
		Name = "Firearm Regulation",
		Types = { "No Restrictions", "Reduced" , "Standard", "Expanded", "Illegal"}
	},
	["Working"] = { 
		Name = "Working Hours",
		Types = { "Minimum", "Reduced" , "Standard", "Extended", "Unlimited"}
	},
	["Industry"] = { 
		Name = "Industrial Specialization",
		Types = { "Extraction", "Balanced" , "Manufacturing"}
	},
	["Press"] = { 
		Name = "Press Regulation",
		Types = { "Free Press", "Laxed" , "Mixed", "State Focus", "Propaganda Only"}
	},
	["Population"] = { 
		Name = "Population Growth",
		Types = { "Balanced", "Encouraged" , "Mandatory"}
	},
	["Religion"] = { 
		Name = "Religious Emphasis",
		Types = { "State Atheism", "Secularism" , "State Religion"}
	},
	["Conscription"] = { 
		Name = "Conscription",
		Types = { "Disarmed", "Volunteer" , "Limited", "Extensive", "Required"}
	},
	["WarBond"] = { 
		Name = "War Bonds",
		Types = { "Inactive", "Moderate" , "Maximum"}
	},
	["Unique_Monarchy"] = { 
		Name = "Monarch Power",
		Types = { "None / Ceremonial", "Constitutional" , "Absolute"}
	},
	["Ideology_Fascism"] = { 
		Name = "State Doctrine",
		Types = { "Corporatist", "Classical", "Stratocracy", "Clerical", "Falangism"}
	},
	["Ideology_Communism"] = { 
		Name = "Collective Theory",
		Types = { "Maoism", "Marxism" , "Leninism", "Stalinism", "Trotskyism"}
	},
	["Ideology_Democracy"] = { 
		Name = "Democracy Style",
		Types = { "Parliamentary", "Semi-Presidential" , "Presidential"}
	},
	["Resource"] = { 
		Name = "Resource Subsidization",
		Types = { "None", "Limited" , "Moderate", "Generous"}
	},
	["Research"] = { --UNCONFIRMED/UNKNOWN
		Name = "Research Focus",
		Types = { "Civilian", "Balanced" , "Military"},
		Unconfirmed = true,
	},
	["Elective_Assembly"] = { --UNCONFIRMED/UNKNOWN
		Name = "Elective Assembly",
		Types = { "Direct", "Indirect" , "Technocratic"},
		Unconfirmed = true,
	},
	["Power_Sharing"] = { --UNCONFIRMED/UNKNOWN
		Name = "Power Sharing",
		Types = { "Decentralization", "Balanced" , "Centralization"},
		Unconfirmed = true,
	},
}
return lawNames
