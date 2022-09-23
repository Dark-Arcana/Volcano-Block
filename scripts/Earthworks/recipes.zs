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

recipes.remove(<earthworks:block_thatch>);
recipes.addShaped(<earthworks:block_thatch>,[
    [<earthworks:itemslab_thatch>],
    [<earthworks:itemslab_thatch>]
]);
recipes.addShaped(<earthworks:block_thatch>*4,[
    [<minecraft:wheat>,<minecraft:hay_block>],
    [<minecraft:hay_block>,<minecraft:wheat>]
]);
