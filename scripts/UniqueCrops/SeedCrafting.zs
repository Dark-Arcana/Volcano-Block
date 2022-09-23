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

import mods.uniquecrops.SeedCrafting;

SeedCrafting.removeRecipe(<minecraft:emerald>);
SeedCrafting.removeRecipe(<minecraft:iron_ingot>*2);
SeedCrafting.removeRecipe(<minecraft:skull:1>);
SeedCrafting.removeRecipe(<minecraft:gold_ingot>);
SeedCrafting.removeRecipe(<minecraft:diamond>);
SeedCrafting.removeRecipe(<minecraft:dragon_breath>);
SeedCrafting.removeRecipe(<minecraft:ghast_tear>);
SeedCrafting.removeRecipe(<minecraft:nether_wart>);
SeedCrafting.removeRecipe(<minecraft:dirt>*3);
SeedCrafting.removeRecipe(<minecraft:prismarine>*8);
SeedCrafting.removeRecipe(<minecraft:chorus_fruit>);
SeedCrafting.removeRecipe(<minecraft:stained_hardened_clay:9>*16);
SeedCrafting.removeRecipe(<minecraft:clay>*8);
SeedCrafting.removeRecipe(<minecraft:saddle>);
SeedCrafting.removeRecipe(<minecraft:slime_ball>*4);
SeedCrafting.removeRecipe(<minecraft:fire_charge>*8);

SeedCrafting.removeRecipe(<uniquecrops:seedindustria>);
SeedCrafting.removeRecipe(<uniquecrops:seedlacusia>);

var mapSeed as IIngredient[][IItemStack] = {
    <uniquecrops:seedcobblonia> : [<minecraft:grass>,<minecraft:grass>,<uniquecrops:seednormal>],
    <uniquecrops:seedpixelsius> : [<uniquecrops:seedartisia>,<morecharcoal:carrot_charcoal>,<minecraft:string>],
    <uniquecrops:seedcollis> : [<uniquecrops:seedartisia>,<uniquecrops:generic:26>,<minecraft:sugar>],
    <uniquecrops:seedinstabilis> : [ <uniquecrops:seedartisia>,<uniquecrops:generic:23>,<uniquecrops:generic:24>],
    <uniquecrops:seedeula> : [<uniquecrops:seedartisia>,<minecraft:blaze_powder>,<hwell:dust>],
    <uniquecrops:seedmaryjane> : [<evilcraft:dark_gem>,<minecraft:blaze_powder>,<uniquecrops:generic:11>],
    <uniquecrops:seedinvisibilia> : [<evilcraft:dark_gem>,<minecraft:glass>,<uniquecrops:generic:6>],
    <uniquecrops:seedmerlinia> : [<uniquecrops:seedartisia>,<minecraft:dye:1>,<minecraft:dye:11>],
    <uniquecrops:seedpetramia> : [<uniquecrops:seedcobblonia>,<botania:quartztypeelf>,<botania:quartztypemana>],
};

for output, inputs in mapSeed {
    SeedCrafting.removeRecipe(output);
    SeedCrafting.addRecipe(output,inputs[0],inputs[1],inputs[2]);
}
