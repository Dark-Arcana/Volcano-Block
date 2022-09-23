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

import mods.alchemistry.Dissolver;

import scripts.functions.alch;

Dissolver.removeRecipe(<minecraft:dye:10>);

Dissolver.removeRecipe(<minecraft:end_stone>);
Dissolver.addRecipe(<minecraft:end_stone>, true, 1, [
    [30.0, <alchemistry:element:80>], 
    [5.0, <alchemistry:element:60>], 
    [20.0, <alchemistry:element:3>], 
    [55.0, <alchemistry:element:90>]
]);
