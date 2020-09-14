// Quark

import crafttweaker.api.item.IItemStack;
var noitem = <item:minecraft:air>;

#Oak Chest
craftingTable.removeRecipe(<item:quark:oak_chest>);
craftingTable.addShapeless("quark_oakchest", <item:quark:oak_chest>, [<item:minecraft:oak_planks>, <item:minecraft:chest>]);

#darkoak chest
craftingTable.removeRecipe(<item:quark:dark_oak_chest>);
craftingTable.addShapeless("quark_dark_oakchest", <item:quark:dark_oak_chest>, [<item:minecraft:dark_oak_planks>, <item:minecraft:chest>]);
   
#acacia Chest
craftingTable.removeRecipe(<item:quark:acacia_chest>);
craftingTable.addShapeless("quark_acaciachest", <item:quark:acacia_chest>, [<item:minecraft:acacia_planks>, <item:minecraft:chest>]);

#spruce Chest
craftingTable.removeRecipe(<item:quark:spruce_chest>);
craftingTable.addShapeless("quark_sprucechest", <item:quark:spruce_chest>, [<item:minecraft:spruce_planks>, <item:minecraft:chest>]);
		
#birch Chest
craftingTable.removeRecipe(<item:quark:birch_chest>);
craftingTable.addShapeless("quark_birchchest", <item:quark:birch_chest>, [<item:minecraft:birch_planks>, <item:minecraft:chest>]);
			   
#jungle Chest
craftingTable.removeRecipe(<item:quark:jungle_chest>);
craftingTable.addShapeless("quark_junglechest", <item:quark:jungle_chest>, [<item:minecraft:jungle_planks>, <item:minecraft:chest>]);
			   
#clear chests
craftingTable.addShapeless("quark_chestclear", <item:minecraft:chest>, [<tag:forge:chests/wooden>]);

//Permafrost
craftingTable.addShapeless("quark_permafrost", <item:quark:permafrost>, [<tag:forge:stone>, <item:minecraft:ice>]);

//Cobbedstone
craftingTable.addShapeless("quark_cobbedstone", <item:quark:cobbedstone>, [<tag:forge:cobblestone>, <item:minecraft:cobweb>]);

//Brimstone
craftingTable.addShaped("quark_brimstone", <item:quark:brimstone>*8, [
   [<tag:forge:stone>, <tag:forge:stone>, <tag:forge:stone>],
   [<tag:forge:stone>, <item:minecraft:magma_cream>, <tag:forge:stone>],
   [<tag:forge:stone>, <tag:forge:stone>, <tag:forge:stone>]
]);

// Heart of Diamond
craftingTable.addShaped("quark_diamond_heart", <item:quark:diamond_heart>, [
   [noitem, <tag:forge:gems/diamond>, noitem],
   [<tag:forge:gems/diamond>, <item:minecraft:heart_of_the_sea>, <tag:forge:gems/diamond>],
   [noitem, <tag:forge:gems/diamond>, noitem]
]);


<recipetype:botania:mana_infusion>.addJSONRecipe("infusion_elder_prismarine", {
    input: {item: "minecraft:prismarine"},
    output: {item: "quark:elder_prismarine"},
    mana: 1000
});

<recipetype:botania:mana_infusion>.addJSONRecipe("infusion_glowcelium", {
    input: {item: "minecraft:mycelium"},
    output: {item: "quark:glowcelium"},
    mana: 1000
});

<recipetype:botania:mana_infusion>.addJSONRecipe("infusion_cave_crystal", {
    input: {item: "botania:elf_glass"},
    output: {item: "quark:white_crystal"},
    mana: 1000
});

var caveCrystals = {
   <item:quark:red_crystal>: <tag:forge:dyes/red>,
   <item:quark:orange_crystal>: <tag:forge:dyes/orange>,
   <item:quark:yellow_crystal>: <tag:forge:dyes/yellow>,
   <item:quark:green_crystal>: <tag:forge:dyes/green>,
   <item:quark:blue_crystal>: <tag:forge:dyes/light_blue>,
   <item:quark:indigo_crystal>: <tag:forge:dyes/blue>,
   <item:quark:violet_crystal>: <tag:forge:dyes/purple>
};

for key, value in caveCrystals {
   craftingTable.addShapeless(rcpName("quark", key), key, [<tag:quark:crystal>, value]);
}


function rcpName(key as string, item as IItemStack) as string {
    return key +"_"+ item.registryName.split(':')[1];
}