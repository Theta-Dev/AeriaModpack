// Botania

// Skyblock recipes taken from GoG
<recipetype:botania:mana_infusion>.addJSONRecipe("infusion_heart_of_the_sea", {
    input: {item: "minecraft:nautilus_shell"},
    output: {item: "minecraft:heart_of_the_sea"},
    mana: 20000,
    catalyst: "botania:alchemy_catalyst"
});

<recipetype:botania:mana_infusion>.addJSONRecipe("infusion_prismarine_shard", {
    input: {item: "minecraft:quartz"},
    output: {item: "minecraft:prismarine_shard"},
    mana: 1000,
    catalyst: "botania:alchemy_catalyst"
});

<recipetype:botania:mana_infusion>.addJSONRecipe("infusion_prismarine_crystals", {
    input: {item: "minecraft:prismarine_shard"},
    output: {item: "minecraft:prismarine_crystals"},
    mana: 500,
    catalyst: "botania:alchemy_catalyst"
});

<recipetype:botania:mana_infusion>.addJSONRecipe("infusion_sugar_cane", {
    input: {item: "minecraft:hay_block"},
    output: {item: "minecraft:sugar_cane"},
    mana: 2000
});

// Recipes for water plants
<recipetype:botania:mana_infusion>.removeByName("botania:mana_infusion/lily_pad_to_vine");
<recipetype:botania:mana_infusion>.addJSONRecipe("infusion_seagrass", {
    input: {item: "minecraft:lily_pad"},
    output: {item: "minecraft:seagrass"},
    mana: 500,
    catalyst: "botania:alchemy_catalyst"
});
<recipetype:botania:mana_infusion>.addJSONRecipe("infusion_kelp", {
    input: {item: "minecraft:seagrass"},
    output: {item: "minecraft:kelp"},
    mana: 500,
    catalyst: "botania:alchemy_catalyst"
});
<recipetype:botania:mana_infusion>.addJSONRecipe("infusion_vine", {
    input: {item: "minecraft:kelp"},
    output: {item: "minecraft:vine"},
    mana: 500,
    catalyst: "botania:alchemy_catalyst"
});

// Cheaper orechid
<recipetype:botania:petal_apothecary>.removeByName("botania:petal_apothecary/orechid");
<recipetype:botania:petal_apothecary>.addJSONRecipe("petal_orechid", {
    output: {
        item: "botania:orechid"
    },
    ingredients: [
        {tag: "botania:petals/gray"},
        {tag: "botania:petals/gray"},
        {tag: "botania:petals/yellow"},
        {tag: "botania:petals/green"},
        {tag: "botania:petals/red"},
        {tag: "botania:runes/summer"},
        {tag: "botania:runes/mana"},
        {item: "botania:redstone_root"}
    ]
});


craftingTable.removeByName("botania:flighttiara_0");
craftingTable.addShaped("recipe_flighttiara", <item:botania:flight_tiara>, [
    [<item:botania:life_essence>, <item:botania:life_essence>, <item:botania:life_essence>],
    [<tag:forge:ingots/elementium>, <item:minecraft:elytra>, <tag:forge:ingots/elementium>],
    [<item:minecraft:feather>, <item:botania:ender_air_bottle>, <item:minecraft:feather>]
]);