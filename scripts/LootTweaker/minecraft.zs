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

LootTables.getTable("minecraft:entities/zombie").getPool("pool1").removeEntry("minecraft:iron_ingot");
LootTables.getTable("minecraft:entities/husk").getPool("pool1").removeEntry("minecraft:iron_ingot");
LootTables.getTable("minecraft:entities/zombie_villager").getPool("pool1").removeEntry("minecraft:iron_ingot");
