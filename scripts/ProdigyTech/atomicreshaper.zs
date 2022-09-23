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

import mods.prodigytech.atomicreshaper;

atomicreshaper.removeRecipe(<ore:stone>);
atomicreshaper.addRecipeMulti(<minecraft:stone>,10,140, [
    <minecraft:iron_ore>,
    <minecraft:gold_ore>,
    <minecraft:lapis_ore>,
    <evilcraft:dark_ore>,
    <embers:ore_lead>,
    <minecraft:redstone_ore>,
    <minecraft:diamond_ore>,
    <minecraft:emerald_ore>
],[40,15,10,10,5,10,5,5]);

atomicreshaper.removeRecipe(<ore:sand>);
atomicreshaper.addRecipeMulti(<minecraft:sand>,2,140, [
    <minecraft:dirt>
],[100]);
atomicreshaper.addRecipeMulti(<minecraft:sand:1>,2,140, [
    <soulus:fossil_sand_red_scale>,
    <soulus:fossil_sand_red_dry>
],[50,50]);

atomicreshaper.addRecipeMulti(<minecraft:end_stone>,2,140, [
    <soulus:fossil_end_stone>
],[100]);
atomicreshaper.addRecipeMulti(<minecraft:netherrack>,2,140, [
    <soulus:fossil_netherrack>,<minecraft:quartz_ore>
],[50,50]);
atomicreshaper.addRecipeMulti(<minecraft:dirt:1>,10,140, [
    <soulus:fossil_dirt>,<soulus:fossil_dirt_frozen>,<soulus:fossil_dirt_fungal>,<soulus:fossil_dirt_ender>
],[40,20,20,20]);
