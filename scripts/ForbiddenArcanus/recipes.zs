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

recipes.remove(<forbidden_arcanus:edelwood_planks>);
recipes.remove(<forbidden_arcanus:cherrywood_planks>);
recipes.remove(<forbidden_arcanus:mysterywood_planks>);

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
    <forbidden_arcanus:edelwood_log> : [
        [
            [<forbidden_arcanus:arcane_crystal_dust>,<ore:soulSand>,<forbidden_arcanus:arcane_crystal_dust>],
            [<ore:soulSand>,<ore:logWood>,<ore:soulSand>],
            [<forbidden_arcanus:arcane_crystal_dust>,<ore:soulSand>,<forbidden_arcanus:arcane_crystal_dust>]
        ]
    ]
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


var listIngot as int[IIngredient] = {
    <ore:ingotAluminum> : 4,
    <ore:ingotTin> : 4,
    <ore:ingotSilver> : 4,
    <ore:ingotLead> : 4,
    <ore:ingotNickel> : 4,
    <ore:ingotCopper> : 8,
    <ore:ingotBronze> : 16,
    <ore:ingotDawnstone> : 32,
    <forbidden_arcanus:arcane_gold_ingot> : 64
};

recipes.remove(<forbidden_arcanus:arcane_base_block>);
recipes.remove(<forbidden_arcanus:arcane_dark_stone>);
recipes.remove(<forbidden_arcanus:arcane_carved_dark_stone_bricks>);
recipes.remove(<forbidden_arcanus:arcane_edelwood_planks>);

for metal, amount in listIngot {
    var half as int = amount / 2;
    recipes.addShaped(<forbidden_arcanus:arcane_base_block> * amount, [
        [null,<forbidden_arcanus:dark_stone>,null],
        [<forbidden_arcanus:dark_stone>,metal,<forbidden_arcanus:dark_stone>],
        [null,<forbidden_arcanus:dark_stone>,null]
    ]);
    recipes.addShaped(<forbidden_arcanus:arcane_dark_stone> * half, [
        [<forbidden_arcanus:dark_stone>,<forbidden_arcanus:dark_stone>,<forbidden_arcanus:dark_stone>],
        [<forbidden_arcanus:dark_stone>,metal,<forbidden_arcanus:dark_stone>],
        [<forbidden_arcanus:dark_stone>,<forbidden_arcanus:dark_stone>,<forbidden_arcanus:dark_stone>]
    ]);
    recipes.addShaped(<forbidden_arcanus:arcane_carved_dark_stone_bricks> * half, [
        [null,<forbidden_arcanus:carved_dark_stone_bricks>,null],
        [<forbidden_arcanus:carved_dark_stone_bricks>,metal,<forbidden_arcanus:carved_dark_stone_bricks>],
        [null,<forbidden_arcanus:carved_dark_stone_bricks>,null]
    ]);
    recipes.addShaped(<forbidden_arcanus:arcane_edelwood_planks> * half, [
        [<forbidden_arcanus:edelwood_planks>,<forbidden_arcanus:edelwood_planks>,<forbidden_arcanus:edelwood_planks>],
        [<forbidden_arcanus:edelwood_planks>,metal,<forbidden_arcanus:edelwood_planks>],
        [<forbidden_arcanus:edelwood_planks>,<forbidden_arcanus:edelwood_planks>,<forbidden_arcanus:edelwood_planks>]
    ]);
}
