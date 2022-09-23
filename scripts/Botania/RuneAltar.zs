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

import mods.botania.RuneAltar;

var manaIngot as IItemStack = <botania:manaresource>;
var manaDust as IItemStack = <botania:manaresource:23>;
var darkSoul as IItemStack = <forbidden_arcanus:dark_soul>;

var mapBotaniaRune as IIngredient[][IItemStack][int] = {
	5200 : {
		<botania:rune> : [
                  manaIngot,
                  manaDust,
                  darkSoul,
                  <vanillafoodpantry:gelo:396>,
                  <alchemistry:wet_sand>,
                  <calculator:enddiamond>,
                  <forbidden_arcanus:leather_of_the_sea>
		],
		<botania:rune:1> : [
                  manaIngot,
                  manaDust,
                  darkSoul,
                  <hwell:seed_of_the_nether>,
                  <calculator:firediamond>,
                  <minecraft:tnt>
		],
		<botania:rune:2> : [
                  manaIngot,
                  manaDust,
                  darkSoul,
                  <morecharcoal:egg_charcoal_block>,
                  <vanillafoodpantry:gelo:398>,
                  <hwell:seed_of_life>
		],
		<botania:rune:3> : [
                  manaIngot,
                  manaDust,
                  darkSoul,
                  <vanillafoodpantry:colorful_feather>,
                  <vanillafoodpantry:fermented_feather>,
                  <calculator:fiddledewfruit>
		]
	},
	8000 : {
		<botania:rune:4> : [
                  <ore:runeWaterB>,
                  <ore:runeFireB>,
                  <ore:treeSapling>,
                  <ore:treeSapling>,
                  <ore:treeSapling>,
                  <ore:cropWheat>,
                  <contenttweaker:friend_memories>
		],
		<botania:rune:5> : [
                  <ore:runeEarthB>,
                  <ore:runeAirB>,
                  <minecraft:sand>,
                  <minecraft:sand>,
                  <ore:slimeball>,
                  <minecraft:melon>,
                  <contenttweaker:friend_memories>
		],
		<botania:rune:6> : [
                  <ore:runeFireB>,
                  <ore:runeAirB>,
                  <ore:treeLeaves>,
                  <ore:treeLeaves>,
                  <ore:treeLeaves>,
                  <minecraft:spider_eye>,
                  <contenttweaker:friend_memories>
		]
	},
      12000 : {
            <botania:rune:13> : [
                  <ore:manaDiamond>,
                  <ore:manaDiamond>,
                  <ore:runeWinterB>,
                  <ore:runeEarthB>,
                  <forbidden_arcanus:rotten_leather>
            ]
    }
};

for mana, runes in mapBotaniaRune {
    var amount as int = (mana == 5200) ? 2 : 1;
	for rune, recipe in runes {
		RuneAltar.removeRecipe(rune);
		RuneAltar.addRecipe(rune * amount, recipe, mana);
	}
}

RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "emberroot:rootsonespritegreater"}}), [
    <botania:pylon:1>,
    <botania:rune:2>,
    <atum:coin_dirty>,
    <botania:rune:15>,
    <contenttweaker:me_block>,
    <atum:dirty_bone_block>,
    <botania:manaresource:7>
], 100000);

RuneAltar.addRecipe(volcanoTrophy, [
    <contenttweaker:pharaoh_heart>,
    <contenttweaker:sprite_guardian_heart>,
    <botania:gaiahead>,
    <uniquecrops:steel_donut>,
    <uniquecrops:steel_donut>,
    <uniquecrops:steel_donut>,
    <uniquecrops:steel_donut>,
    <minecraft:dragon_egg>,
    <contenttweaker:friend_dust>,
    <atum:idol_of_labor>,
    <forbidden_arcanus:dark_nether_star_block>
], 100000);
