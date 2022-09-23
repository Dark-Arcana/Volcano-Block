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

import scripts.functions.disable;

disable(<forbidden_arcanus:seed_bullet>);

<forbidden_arcanus:corrupt_pixi_in_a_bottle_block>.addTooltip("To acquire: right-click a Bottle Block with a Corrupt Pixi");
<forbidden_arcanus:runic_tenebris_core>.addTooltip("Right-click a Runic Tenebris Frame with a Dark Nether Star to create this");
<forbidden_arcanus:dark_rune>.addTooltip("To acquire: Right-click a Runic Tenebris Core with a rune");

recipes.remove(<forbidden_arcanus:dark_soul>);
recipes.addShapeless(<forbidden_arcanus:dark_soul>, [
    <forbidden_arcanus:soul>,
    <forbidden_arcanus:corrupti_dust>,
    <contenttweaker:fond_memories>
]);

recipes.addShapeless(<forbidden_arcanus:mysterywood_sapling>, [
    <ore:treeSapling>,
    <minecraft:glowstone_dust>,
    <hwell:myst_dust>
]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <forbidden_arcanus:obsidian_skull> : [
        [
            [<forbidden_arcanus:obsidian_ingot>,<uniquecrops:lavalily>,<forbidden_arcanus:obsidian_ingot>],
            [<minecraft:obsidian>,<forbidden_arcanus:skull>,<minecraft:obsidian>],
            [<forbidden_arcanus:obsidian_ingot>,<uniquecrops:lavalily>,<forbidden_arcanus:obsidian_ingot>]
        ]
    ],
    <forbidden_arcanus:dark_nether_star> : [
        [
            [<contenttweaker:cadmium_block>,<forbidden_arcanus:obsidian_ingot>,<alchemistry:ingot:44>],
            [<forbidden_arcanus:obsidian_ingot>,<minecraft:nether_star>,<forbidden_arcanus:obsidian_ingot>],
            [<alchemistry:ingot:44>,<forbidden_arcanus:obsidian_ingot>,<contenttweaker:cadmium_block>]
        ]
    ],
};

for output, listRecipe in mapRecipe {
    var index as int = 0;
    recipes.remove(output);
    for recipe in listRecipe {
        var name as string = toString(output)+"_"+index;
        recipes.addShaped(name, output, recipe);
        index += 1;
    }
}

recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<forbidden_arcanus:mortem_leggings>);
recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<forbidden_arcanus:mortem_chestplate>);
recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<forbidden_arcanus:mortem_boots>);
recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<forbidden_arcanus:bone_sword>);
recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<forbidden_arcanus:bone_shovel>);
recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<forbidden_arcanus:bone_pickaxe>);
recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<forbidden_arcanus:bone_hoe>);
recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<forbidden_arcanus:bone_axe>);
recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<forbidden_arcanus:battle_skull>);
