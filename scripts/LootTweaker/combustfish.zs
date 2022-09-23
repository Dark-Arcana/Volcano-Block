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

import loottweaker.LootTweaker as LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

val lava = LootTables.getTable("combustfish:lava_fishing");

lava.removePool("lava_fishing");

val newLava = lava.addPool("new_lava",1,1,0,0);

newLava.addItemEntry(<combustfish:bone_fish>,30);
newLava.addItemEntry(<combustfish:searing_swordfish>,5);
newLava.addItemEntry(<combustfish:combustive_cod>,10);
newLava.addItemEntry(<minecraft:blaze_rod>,25);
newLava.addItemEntry(<minecraft:magma_cream>,30);
