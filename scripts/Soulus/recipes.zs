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

import mods.jei.JEI;

JEI.addItem(<patchouli:guide_book>.withTag({"patchouli:book": "soulus:soulus"}));

recipes.remove(<soulus:glue>);

recipes.remove(<soulus:composer_cell>);
recipes.addShaped(<soulus:composer_cell> * 2, [
    [<forbidden_arcanus:arcane_gold_ingot>,<soulus:block_endersteel_dark>,<forbidden_arcanus:arcane_gold_ingot>],
    [<soulus:gear_oscillating>,<soulus:block_endersteel_dark>,<soulus:gear_oscillating>],
    [<forbidden_arcanus:arcane_gold_ingot>,<botania:manaresource:4>,<forbidden_arcanus:arcane_gold_ingot>]
]);

recipes.replaceAllOccurences(<soulus:ash>,<ore:dustAsh>,<soulus:dust_ender_iron_ashen>);

recipes.addShapeless(<soulus:ash>, [<prodigytech:ash>]);
recipes.addShapeless(<soulus:ash>, [<embers:dust_ash>]);

var mapBone as IItemStack[IItemStack] = {
    <soulus:bone_normal> : <soulus:bone_chunk_normal>,
    <soulus:bone_dry> : <soulus:bone_chunk_dry>,
    <soulus:bone_dry> : <soulus:bone_chunk_dry>,
    <soulus:bone_fungal> : <soulus:bone_chunk_fungal>,
    <soulus:bone_frozen> : <soulus:bone_chunk_frozen>,
    <soulus:bone_ender> : <soulus:bone_chunk_ender>,
    <soulus:bone_nether> : <soulus:bone_chunk_nether>,
};

for bone, chunk in mapBone {
    recipes.addShaped(bone, [
        [chunk],
        [chunk],
        [chunk]
    ]);
}

recipes.remove(<soulus:bars_endersteel>);
recipes.addShaped(<soulus:bars_endersteel>*16, [
    [<soulus:ingot_endersteel>,<soulus:ingot_endersteel>,<soulus:ingot_endersteel>],
    [<soulus:ingot_endersteel>,<soulus:ingot_endersteel>,<soulus:ingot_endersteel>]
]);

var mapBar as IItemStack[IItemStack] = {
    <soulus:bars_endersteel:1> : <soulus:dust_wood>,
    <soulus:bars_endersteel:2> : <soulus:dust_stone>,
    <soulus:bars_endersteel:3> : <soulus:dust_ender>,
    <soulus:bars_endersteel:4> : <minecraft:blaze_powder>,
    <soulus:bars_endersteel:5> : <soulus:dust_niobium>,
    <soulus:bars_endersteel:6> : <soulus:ash>,
};

for bar, dust in mapBar {
    recipes.remove(bar);
    recipes.addShaped(bar * 8, [
        [dust,<soulus:bars_endersteel:*>,<soulus:bars_endersteel:*>],
        [<soulus:bars_endersteel:*>,<soulus:bars_endersteel:*>,<soulus:bars_endersteel:*>],
        [<soulus:bars_endersteel:*>,<soulus:bars_endersteel:*>,<soulus:bars_endersteel:*>]
    ]);
}
