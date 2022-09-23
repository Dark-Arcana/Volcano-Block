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

import mods.prodigytech.heatsawmill;

var mapSaw as IItemStack[IItemStack] = {
    <calculator:amethystlog> : <calculator:amethystplanks>,
    <calculator:diamondlog> : <calculator:diamondplanks>,
    <calculator:pearlog> : <calculator:pearplanks>,
    <calculator:tanzanitelog> : <calculator:tanzaniteplanks>,
    <evilcraft:undead_log> : <evilcraft:undead_plank>,
    <hwell:myst_log> : <hwell:myst_planks>,
    <integrateddynamics:menril_log> : <integrateddynamics:menril_planks>,
    <minecraft:log:1> : <minecraft:planks:1>,
    <minecraft:log:2> : <minecraft:planks:2>,
    <minecraft:log:3> : <minecraft:planks:3>,
    <minecraft:log> : <minecraft:planks>,
    <minecraft:log2:1> : <minecraft:planks:5>,
    <minecraft:log2> : <minecraft:planks:4>,
    <prodigytech:zorra_log> : <prodigytech:zorra_planks>,
};

for input, output in mapSaw {
    heatsawmill.addRecipe(input,output*6,<prodigytech:sawdust>);
}
