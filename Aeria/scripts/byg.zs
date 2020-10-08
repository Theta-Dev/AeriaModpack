// Rocks from Oh the Biomes you'll go

import crafttweaker.api.item.IItemStack;

craftingTable.addShaped("byg_red_rock", <item:byg:red_rock>*4, [
    [<item:minecraft:red_sandstone>, <tag:forge:stone>],
    [<tag:forge:stone>, <item:minecraft:red_sandstone>]
]);

craftingTable.addShaped("byg_scoria_stone", <item:byg:scoria_stone>*4, [
    [<item:create:scoria>, <tag:forge:stone>],
    [<tag:forge:stone>, <item:create:scoria>]
]);

var sandDyed = {
    <item:byg:black_sand>: <tag:forge:dyes/black>,
    <item:byg:white_sand>: <tag:forge:dyes/white>,
    <item:byg:blue_sand>: <tag:forge:dyes/blue>,
    <item:byg:purple_sand>: <tag:forge:dyes/purple>,
    <item:byg:pink_sand>: <tag:forge:dyes/pink>
};

for key, value in sandDyed {
   craftingTable.addShaped(rcpName("byg", key), key*8, [
       [<tag:forge:sand>, <tag:forge:sand>, <tag:forge:sand>],
       [<tag:forge:sand>, value, <tag:forge:sand>],
       [<tag:forge:sand>, <tag:forge:sand>, <tag:forge:sand>]
   ]);
}

function rcpName(key as string, item as IItemStack) as string {
    return key +"_"+ item.registryName.split(':')[1];
}