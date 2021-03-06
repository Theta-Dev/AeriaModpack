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

craftingTable.addShapeless("recipe_book_quill", <item:minecraft:writable_book>, [
	<item:minecraft:book>, <tag:forge:dyes/black>, <tag:forge:feathers>
]);

<recipetype:aeriautil:sieve>.addJSONRecipe("sieve_brown_mushroom", {
    input: {
        tag: "aeriautil:dirt"
    },
    output: {
        item: "minecraft:brown_mushroom"
    },
    numRolls: 1,
    chance: 0.01 as float
});
<recipetype:aeriautil:sieve>.addJSONRecipe("sieve_red_mushroom", {
    input: {
        tag: "aeriautil:dirt"
    },
    output: {
        item: "minecraft:red_mushroom"
    },
    numRolls: 1,
    chance: 0.01 as float
});