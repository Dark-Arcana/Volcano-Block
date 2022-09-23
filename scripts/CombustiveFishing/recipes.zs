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

<combustfish:combustive_cod>.addTooltip("Toss in water to cool down");

recipes.remove(<combustfish:magma_string>);
recipes.addShapeless(<combustfish:magma_string>, [<ore:string>,<soulus:bone_meal_nether>]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <combustfish:golden_rod> : [
        [
            [null,null,<uniquecrops:generic:6>],
            [null,<uniquecrops:generic:6>,<combustfish:magma_string>],
            [<uniquecrops:generic:6>,null,<combustfish:magma_string>]
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
