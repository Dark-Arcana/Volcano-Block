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

import mods.botania.Apothecary;

Apothecary.removeRecipe("puredaisy");
Apothecary.addRecipe("puredaisy", [
    <vanillafoodpantry:gelatin_ball>,
    <minecraft:double_plant>,
    <vanillafoodpantry:foodpowder:29>,
    <uniquecrops:generic:5>
]);

Apothecary.removeRecipe("endoflame");
Apothecary.addRecipe("endoflame", [
    <vanillafoodpantry:molasses_ball>,
    <vanillafoodpantry:molasses_ball>,
    <embers:crystal_ember>,
    <calculator:firediamond>
]);
