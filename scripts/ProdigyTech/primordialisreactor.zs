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

import mods.prodigytech.primordialisreactor;

var listInputs as IItemStack[] = [
    <calculator:broccoli>,
    <calculator:broccoliseeds>,
    <calculator:fiddledewfruit>,
    <calculator:pear>,
    <calculator:prunaeseeds>,
    <calculator:rottenpear>,
    <integrateddynamics:menril_berries>,
    <minecraft:red_flower>,
    <minecraft:yellow_flower>,
    <prodigytech:zorra_leaf>,
    <soulus:bark>,
    <uniquecrops:generic:23>,
    <uniquecrops:generic:26>,
    <uniquecrops:generic:5>,
    <uniquecrops:seedartisia>,
    <uniquecrops:seedcollis>,
    <uniquecrops:seedenderlily>,
    <uniquecrops:seedeula>,
    <uniquecrops:seedinstabilis>,
    <uniquecrops:seedinvisibilia>,
    <uniquecrops:seedmerlinia>,
    <uniquecrops:seednormal>,
    <uniquecrops:seedpixelsius>,
    <uniquecrops:seedwafflonia>,
    <uniquecrops:seedwafflonia>,
    <vanillafoodpantry:oak_acorn>,
];

for input in listInputs {
    primordialisreactor.addInput(input);
}
