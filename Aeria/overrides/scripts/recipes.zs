// Various recipes

var noitem = <item:minecraft:air>;

craftingTable.removeRecipe(<item:chickenchunks:chunk_loader>);
craftingTable.addShaped("recipe_chunkloader", <item:chickenchunks:chunk_loader>, [
    [noitem, <tag:forge:ender_pearls>, noitem],
    [<tag:forge:ingots/gold>, <tag:forge:ingots/gold>, <tag:forge:ingots/gold>],
    [<tag:forge:ingots/gold>, <item:mysticalagriculture:infusion_altar>, <tag:forge:ingots/gold>]
]);

craftingTable.addShaped("recipe_dragon_egg", <item:minecraft:dragon_egg>, [
    [noitem, <item:quark:dragon_scale>, noitem],
    [<item:quark:dragon_scale>, <item:minecraft:egg>, <item:quark:dragon_scale>],
    [noitem, <item:quark:dragon_scale>, noitem]
]);