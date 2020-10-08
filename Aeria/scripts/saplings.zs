// Saplings from BYG and Quark

import crafttweaker.api.item.IItemStack;

var saplingsTier1 = [
    <item:byg:aspen_sapling>,
    <item:byg:baobab_sapling>,
    <item:byg:pink_cherry_sapling>,
    <item:byg:white_cherry_sapling>,
    <item:byg:fir_sapling>,
    <item:byg:palo_verde_sapling>,
    <item:byg:joshua_sapling>
];

var saplingsTier2 = [
    <item:byg:cika_sapling>,
    <item:byg:cypress_sapling>,
    <item:byg:ebony_sapling>,
    <item:byg:holly_sapling>,
    <item:byg:jacaranda_sapling>,
    <item:byg:indigo_jacaranda_sapling>,
    <item:byg:mahogany_sapling>,
    <item:byg:mangrove_sapling>,
    <item:byg:maple_sapling>,
    <item:byg:red_maple_sapling>,
    <item:byg:silver_maple_sapling>,
    <item:byg:pine_sapling>,
    <item:byg:rainbow_eucalyptus_sapling>,
    <item:byg:skyris_sapling>,
    <item:byg:witch_hazel_sapling>,
    <item:byg:zelkova_sapling>,
    <item:quark:blue_blossom_sapling>,
    <item:quark:lavender_blossom_sapling>,
    <item:quark:orange_blossom_sapling>,
    <item:quark:pink_blossom_sapling>,
    <item:quark:yellow_blossom_sapling>,
];

var saplingsDyed = {
    <item:byg:blue_spruce_sapling>: [<item:minecraft:spruce_sapling>, <tag:forge:dyes/blue>],
    <item:byg:brown_birch_sapling>: [<item:minecraft:birch_sapling>, <tag:forge:dyes/brown>],
    <item:byg:brown_oak_sapling>: [<item:minecraft:oak_sapling>, <tag:forge:dyes/brown>],
    <item:byg:orange_birch_sapling>: [<item:minecraft:birch_sapling>, <tag:forge:dyes/orange>],
    <item:byg:orange_oak_sapling>: [<item:minecraft:oak_sapling>, <tag:forge:dyes/orange>],
    <item:byg:orange_spruce_sapling>: [<item:minecraft:spruce_sapling>, <tag:forge:dyes/orange>],
    <item:byg:red_birch_sapling>: [<item:minecraft:birch_sapling>, <tag:forge:dyes/red>],
    <item:byg:red_oak_sapling>: [<item:minecraft:oak_sapling>, <tag:forge:dyes/red>],
    <item:byg:red_spruce_sapling>: [<item:minecraft:spruce_sapling>, <tag:forge:dyes/red>],
    <item:byg:yellow_birch_sapling>: [<item:minecraft:birch_sapling>, <tag:forge:dyes/yellow>],
    <item:byg:yellow_spruce_sapling>: [<item:minecraft:spruce_sapling>, <tag:forge:dyes/yellow>]
};

for itm in saplingsTier1 {
    <recipetype:aeriautil:sieve>.addJSONRecipe(rcpName("sieve", itm), {
        input: {
            tag: "minecraft:leaves"
        },
        output: {
            item: itm.registryName
        },
        numRolls: 1,
        chance: 0.005 as float
    });
    mods.jei.JEI.addInfo(itm, ["Obtained by sifting leaves."]);
}

for itm in saplingsTier2 {
    <recipetype:aeriautil:sieve>.addJSONRecipe(rcpName("sieve", itm), {
        input: {
            tag: "aeriautil:byg_leaves"
        },
        output: {
            item: itm.registryName
        },
        numRolls: 1,
        chance: 0.005 as float
    });
    mods.jei.JEI.addInfo(itm, ["Obtained by sifting leaves", "from 'Oh the Biomes you'll go.'"]);
}

for key, value in saplingsDyed {
    craftingTable.addShapeless(rcpName("saplings", key), key, value);
}

<recipetype:naturesaura:tree_ritual>.addJSONRecipe("treeritual_blue_enchanted_sapling", {
    ingredients: [
        {tag: "forge:gems/lapis"},
        {item: "botania:blue_shiny_flower"},
        {item: "minecraft:blue_orchid"},
        {item: "quark:blue_rune"}
    ],
    sapling: {item: "quark:blue_blossom_sapling"},
    output: {item: "byg:blue_enchanted_sapling"},
    time: 200
});

<recipetype:naturesaura:tree_ritual>.addJSONRecipe("treeritual_green_enchanted_sapling", {
    ingredients: [
        {tag: "forge:dyes/green"},
        {item: "botania:green_shiny_flower"},
        {item: "byg:green_apple"},
        {item: "quark:green_rune"}
    ],
    sapling: {item: "quark:yellow_blossom_sapling"},
    output: {item: "byg:green_enchanted_sapling"},
    time: 200
});

<recipetype:naturesaura:tree_ritual>.addJSONRecipe("treeritual_redwood_sapling", {
    ingredients: [
        {item: "byg:witch_hazel_sapling"},
        {item: "byg:pine_sapling"},
        {item: "byg:silver_maple_sapling"},
        {item: "byg:zelkova_sapling"}
    ],
    sapling: {item: "quark:orange_blossom_sapling"},
    output: {item: "byg:redwood_sapling"},
    time: 200
});

<recipetype:naturesaura:tree_ritual>.addJSONRecipe("treeritual_willow_sapling", {
    ingredients: [
        {item: "byg:cypress_sapling"},
        {item: "byg:holly_sapling"},
        {item: "byg:cika_sapling"},
        {item: "byg:rainbow_eucalyptus_sapling"}
    ],
    sapling: {item: "quark:lavender_blossom_sapling"},
    output: {item: "byg:willow_sapling"},
    time: 200
});

<recipetype:naturesaura:tree_ritual>.addJSONRecipe("treeritual_orchard_sapling", {
    ingredients: [
        {item: "byg:maple_sapling"},
        {item: "byg:mangrove_sapling"},
        {item: "byg:ebony_sapling"},
        {item: "byg:skyris_sapling"}
    ],
    sapling: {item: "quark:pink_blossom_sapling"},
    output: {item: "byg:orchard_sapling"},
    time: 200
});


function rcpName(key as string, item as IItemStack) as string {
    return key +"_"+ item.registryName.split(':')[1];
}