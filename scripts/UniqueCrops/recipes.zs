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

<uniquecrops:generic:26>.addTooltip("Harvested from Pixelsius Shoots");
<uniquecrops:generic:4>.addTooltip("Harvested from Merlinia Seeds");
<uniquecrops:generic:6>.addTooltip("Harvested from Collis Seeds");
<uniquecrops:generic:23>.addTooltip("Harvested from EULA Seeds");
<uniquecrops:generic:11>.addTooltip("Harvested from Invisibilia Seeds");
<uniquecrops:generic:3>.addTooltip("Harvested from Mary Jane Seeds");
<uniquecrops:generic:2>.addTooltip("Harvested from Dirigible Plum Seeds");
<uniquecrops:generic:5>.addTooltip("Harvested from Ender Lily Seeds");

<uniquecrops:democord>.addTooltip("Harvested from Instabilis Seeds");

<uniquecrops:seedmaryjane>.addTooltip("Uses blaze powder as fertilizer");
<uniquecrops:seedmerlinia>.addTooltip("If you are having trouble growing this, make sure it has enough light");
<uniquecrops:seedcollis>.addTooltip("If you are having trouble growing this, make sure it has enough light");

<uniquecrops:darkblock>.displayName = "Volcano Core Block";

recipes.remove(<uniquecrops:generic>);
recipes.addShapeless(<uniquecrops:generic>,[<uniquecrops:seednormal>]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <uniquecrops:seedartisia> : [
        [
            [<uniquecrops:seednormal>,<uniquecrops:seednormal>],
            [<uniquecrops:seednormal>,<uniquecrops:seednormal>]
        ]
    ],
    <uniquecrops:3dglasses> : [
        [
            [<ore:ingotIron>,null,<ore:ingotIron>],
            [<ore:ingotIron>,null,<ore:ingotIron>],
            [<evilcraft:obscured_glass>,<minecraft:wool>,<evilcraft:obscured_glass>]
        ]
    ],
    <uniquecrops:hourglass> : [
        [
            [<minecraft:stone>,<minecraft:glass_pane>,<minecraft:stone>],
            [<minecraft:glass_pane>,<uniquecrops:generic:4>,<minecraft:glass_pane>],
            [<minecraft:stone>,<minecraft:glass_pane>,<minecraft:stone>]
        ]
    ],
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
