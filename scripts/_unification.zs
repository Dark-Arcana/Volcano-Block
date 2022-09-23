#priority 10

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
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

import mods.jei.JEI;

import scripts.functions.disable;

JEI.hideCategory("ftbquests.quests");

furnace.remove(<forbidden_arcanus:arcane_crystal_ore>);
furnace.remove(<forbidden_arcanus:arcane_crystal>);
furnace.remove(<forbidden_arcanus:dark_rune>);
furnace.remove(<forbidden_arcanus:arcane_crystal_dust>);

furnace.remove(<soulus:emerald_burnt>,<minecraft:soul_sand>);
furnace.remove(<morecharcoal:egg_charcoal>);

furnace.addRecipe(<contenttweaker:mysterious_charcoal>,<hwell:myst_log>);
furnace.setFuel(<contenttweaker:mysterious_charcoal>, 1200);

<ore:chest>.add(<minecraft:chest>);
<ore:chest>.add(<stonechest:chest_stone>);
<ore:chest>.add(<stonechest:chest_cobblestone>);
<ore:chest>.add(<stonechest:chest_andesite>);
<ore:chest>.add(<stonechest:chest_diorite>);
<ore:chest>.add(<stonechest:chest_granite>);

<ore:charcoal>.add(<morecharcoal:beet_charcoal>);
<ore:charcoal>.add(<morecharcoal:apple_charcoal>);
<ore:charcoal>.add(<morecharcoal:chorus_charcoal>);
<ore:charcoal>.add(<morecharcoal:potato_charcoal>);
<ore:charcoal>.add(<morecharcoal:carrot_charcoal>);
<ore:charcoal>.add(<morecharcoal:sugarcane_charcoal>);
<ore:charcoal>.add(<morecharcoal:bread_charcoal>);
<ore:charcoal>.add(<morecharcoal:melon_charcoal>);
<ore:charcoal>.add(<morecharcoal:egg_charcoal>);

<ore:dustSalt>.add(<hwell:salt>);
<ore:portionSalt>.add(<hwell:salt>);
<ore:ingredientSalt>.add(<hwell:salt>);

<ore:blockCadmium>.add(<contenttweaker:cadmium_block>);
<ore:ingotNiobium>.add(<soulus:ingot_niobium>);
<ore:dustAsh>.add(<soulus:ash>);

<ore:logCherry>.add(<forbidden_arcanus:cherrywood_log>);

<ore:mushroom>.add(<minecraft:brown_mushroom>);
<ore:mushroom>.add(<minecraft:red_mushroom>);

for i in 0 to 16 {
	disable(<minecraft:bed>.definition.makeStack(i));
}
