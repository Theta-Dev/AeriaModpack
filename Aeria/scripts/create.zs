// Create

import crafttweaker.api.item.IItemStack;

// Crushing diamond gear
var diamondCrushing = {
    <item:minecraft:diamond_axe>: 0.375,
    <item:minecraft:diamond_pickaxe>: 0.375,
    <item:minecraft:diamond_sword>: 0.25,
    <item:minecraft:diamond_hoe>: 0.25,
    <item:minecraft:diamond_shovel>: 0.125,

    <item:minecraft:diamond_helmet>: 0.625,
    <item:minecraft:diamond_chestplate>: 1.0,
    <item:minecraft:diamond_leggings>: 0.825,
    <item:minecraft:diamond_boots>: 0.5
};

for key, value in diamondCrushing {
    <recipetype:create:crushing>.addJSONRecipe(rcpName("crushing", key), {
        ingredients: [
            {item: key.registryName}
        ],
        results: [
            {
                item: "minecraft:diamond",
                count: 1,
                chance: value as float
            }
        ]
    });
}

<recipetype:create:crushing>.removeByName("create:crushing/sand");
<recipetype:create:crushing>.addJSONRecipe("crushing_sand", {
        ingredients: [
            {item: "minecraft:sand"}
        ],
        results: [
            {
                item: "aeriautil:dust",
                count: 1
            },
            {
                item: "minecraft:bone_meal",
                count: 1,
                chance: 0.05 as float
            }
        ]
    });


function rcpName(key as string, item as IItemStack) as string {
    return key +"_"+ item.registryName.split(':')[1];
}