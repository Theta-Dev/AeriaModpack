// Washing
// Create

<recipetype:create:splashing>.removeByName("create:splashing/gravel");
<recipetype:create:splashing>.addJSONRecipe("splashing_gravel", {
    ingredients: [
        {item: "minecraft:gravel"}
    ],
    results: [
        {
            item: "minecraft:iron_nugget",
            count: 1
        },
        {
			item: "create:zinc_nugget",
			count: 1,
			chance: 0.2 as float
        },
        {
			item: "create:copper_nugget",
			count: 1,
			chance: 0.2 as float
		}
    ]
});

<recipetype:create:splashing>.removeByName("create:splashing/red_sand");
<recipetype:create:splashing>.addJSONRecipe("splashing_red_sand", {
    ingredients: [
        {item: "minecraft:red_sand"}
    ],
    results: [
        {
            item: "minecraft:gold_nugget",
            count: 1,
            chance: 0.6 as float
        },
        {
			item: "minecraft:redstone",
			count: 1,
			chance: 0.18 as float
        }
    ]
});

<recipetype:create:splashing>.removeByName("create:splashing/soul_sand");
<recipetype:create:splashing>.addJSONRecipe("splashing_soul_sand", {
    ingredients: [
        {item: "minecraft:soul_sand"}
    ],
    results: [
        {
            item: "minecraft:quartz",
            count: 1
        },
        {
			item: "minecraft:gold_nugget",
			count: 2,
        },
        {
			item: "mysticalagriculture:soulium_dust",
			count: 1,
			chance: 0.1 as float
        }
    ]
});


// AeriaUtil

<recipetype:aeriautil:washing>.removeByName("aeriautil:washing/gravel_to_iron_nugget");
<recipetype:aeriautil:washing>.addJSONRecipe("washing_gravel_to_iron", {
    input: {
        item: "minecraft:gravel"
    },
    output: {
        item: "minecraft:iron_nugget"
    },
    numRolls: 1,
    chance: 0.5 as float
});

<recipetype:aeriautil:washing>.removeByName("aeriautil:washing/red_sand_to_gold_nugget");
<recipetype:aeriautil:washing>.addJSONRecipe("washing_red_sand_to_gold", {
    input: {
        item: "minecraft:red_sand"
    },
    output: {
        item: "minecraft:gold_nugget"
    },
    numRolls: 1,
    chance: 0.3 as float
});

<recipetype:aeriautil:washing>.removeByName("aeriautil:washing/red_sand_to_redstone");
<recipetype:aeriautil:washing>.addJSONRecipe("washing_red_sand_to_redstone", {
    input: {
        item: "minecraft:red_sand"
    },
    output: {
        item: "minecraft:redstone"
    },
    numRolls: 1,
    chance: 0.09 as float
});

<recipetype:aeriautil:washing>.addJSONRecipe("washing_soul_sand_to_quartz", {
    input: {
        item: "minecraft:soul_sand"
    },
    output: {
        item: "minecraft:quartz"
    },
    numRolls: 1,
    chance: 0.5 as float
});

<recipetype:aeriautil:washing>.addJSONRecipe("washing_soul_sand_to_gold", {
    input: {
        item: "minecraft:soul_sand"
    },
    output: {
        item: "minecraft:gold_nugget"
    },
    numRolls: 1,
    chance: 1.0 as float
});