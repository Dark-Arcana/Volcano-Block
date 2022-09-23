import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.functions.toString;
import scripts.functions.getOreDict;
import scripts.functions.getItem;
import scripts.functions.getItemAny;
import scripts.functions.getItemMeta;
import scripts.functions.getItemString;
import scripts.functions.getArrayString;
import scripts.functions.getItemsFromMod;
import scripts.functions.getFluid;
import scripts.functions.getBucket;
import scripts.functions.getBucketDefault;
import scripts.functions.findFirstItemFromMod;

<contenttweaker:golem_corpse>.addTooltip("I hope you feel bad");
<contenttweaker:golem_meal>.addTooltip("I hope you feel REALLY bad");

recipes.addShapeless(<contenttweaker:pink_composite_dust>, [
    <hwell:myst_dust>,
    <minecraft:sand>,
    <minecraft:dye:9>
]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <contenttweaker:cadmium_block> : [
        [
            [<ore:ingotCadmium>,<ore:ingotCadmium>,<ore:ingotCadmium>],
            [<ore:ingotCadmium>,<ore:ingotCadmium>,<ore:ingotCadmium>],
            [<ore:ingotCadmium>,<ore:ingotCadmium>,<ore:ingotCadmium>]
        ]
    ],
    <contenttweaker:me_block> : [
        [
            [<cannibalism:playerflesh>,<cannibalism:playerflesh>,<cannibalism:playerflesh>],
            [<cannibalism:playerflesh>,<cannibalism:playerflesh>,<cannibalism:playerflesh>],
            [<cannibalism:playerflesh>,<cannibalism:playerflesh>,<cannibalism:playerflesh>]
        ]
    ]
};

for output, listRecipe in mapRecipe {
    var index as int = 0;
    recipes.remove(output);
    for recipe in listRecipe {
        var name as string = toString(output)+"_"+index;
        recipes.addShaped(name, output, recipe);
        index += 1;
    }
}
