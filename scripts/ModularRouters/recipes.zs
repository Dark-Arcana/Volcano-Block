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

import scripts.functions.disable;
import scripts.functions.replaceModuleRecipe;

replaceModuleRecipe(<modularrouters:module:2>, [
    <modularrouters:blank_module>,
    <minecraft:hopper>,
    <hwell:gravity_block_mini>
]);

replaceModuleRecipe(<modularrouters:module:5>, [
    <modularrouters:blank_module>,
    <inspirations:pipe>,
    <inspirations:pipe>
]);
