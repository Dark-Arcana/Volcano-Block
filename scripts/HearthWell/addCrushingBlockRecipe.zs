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

import mods.hwell.addCrushingBlockRecipe;

addCrushingBlockRecipe(<minecraft:glass>,[<minecraft:sand>],[1.0]);

addCrushingBlockRecipe(<contenttweaker:golem_corpse>,[<contenttweaker:golem_meal>],[1.0]);

addCrushingBlockRecipe(<botania:tinypotato>,[<contenttweaker:friend_dust>],[1.0]);

addCrushingBlockRecipe(<forbidden_arcanus:arcane_crystal>,[<forbidden_arcanus:arcane_crystal_dust>*2],[1.0]);

addCrushingBlockRecipe(<vanillafoodpantry:red_flint>,[<minecraft:gunpowder>],[1.0]);
