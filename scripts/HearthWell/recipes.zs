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

import scripts.functions.disable;

JEI.addItem(<patchouli:guide_book>.withTag({"patchouli:book": "hwell:book_of_the_well"}));

JEI.hideCategory("Anima Core_coring");
disable(<hwell:core_anima>);

disable(<hwell:producer>);
disable(<hwell:precision_grinder_empty>);
disable(<hwell:loot_blaze>);
disable(<hwell:loot_creeper>);
disable(<hwell:loot_enderman>);
disable(<hwell:loot_ghast>);
disable(<hwell:loot_shulker>);
disable(<hwell:loot_skeleton>);
disable(<hwell:loot_slime>);
disable(<hwell:loot_spider>);
disable(<hwell:loot_witch>);
disable(<hwell:loot_wither>);
disable(<hwell:loot_zombie>);
disable(<hwell:loot_guardian>);

disable(<hwell:inert_seed>);

var heavyIngot as IItemStack = <hwell:heavy_ingot>;
var crystal as IItemStack = <hwell:crystal>;
var mystDust as IItemStack = <hwell:myst_dust>;
var stoneDust as IItemStack = <hwell:dust>;

furnace.remove(heavyIngot); //original recipe gives 2 outputs per input, I want 1:1
furnace.addRecipe(heavyIngot,<hwell:heavy_mesh>);

recipes.removeShapeless(<hwell:myst_planks>*4, [
    <hwell:myst_log>
]);

recipes.remove(<hwell:heavy_mesh>);
recipes.addShapeless(<hwell:heavy_mesh>, [
    <minecraft:stone>,
    <ore:charcoal>,
    <minecraft:dirt>
]);

recipes.addShapeless(<minecraft:deadbush>, [
    <hwell:heavy_shears:*>.transformDamage(),
    <ore:treeSapling>
]);

recipes.replaceAllOccurences(<hwell:crystal>,<evilcraft:garmonbozia>,<hwell:seed_of_the_end>);
recipes.replaceAllOccurences(<hwell:soulsteel_ingot>,<botania:manaresource:7>,<hwell:puller>);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <hwell:furnace_tube> : [
        [
            [heavyIngot,<ore:blockGlass>,heavyIngot],
            [heavyIngot,<ore:blockGlass>,heavyIngot],
            [heavyIngot,<ore:blockGlass>,heavyIngot]
        ]
    ],
    <hwell:grinding_wheel_crystal> : [
        [
            [crystal,crystal,crystal],
            [crystal,null,crystal],
            [crystal,crystal,crystal]
        ]
    ],
    <hwell:leaf_mesh> : [
        [
            [stoneDust,<uniquecrops:democord>,stoneDust],
            [<hwell:myst_fertilizer>,mystDust,<hwell:myst_fertilizer>],
            [stoneDust,<uniquecrops:democord>,stoneDust]
        ],
        [
            [stoneDust,<minecraft:gunpowder>,stoneDust],
            [<hwell:myst_fertilizer>,mystDust,<hwell:myst_fertilizer>],
            [stoneDust,<minecraft:gunpowder>,stoneDust]
        ]
    ],
    <hwell:core_stone> : [
        [
            [<minecraft:stone>,<minecraft:stone>,<minecraft:stone>],
            [<minecraft:gravel>,<hwell:heavy_ingot>,<minecraft:gravel>],
            [<minecraft:stone>,<minecraft:stone>,<minecraft:stone>]
        ]
    ],
    <hwell:obsidian_displacer> : [
        [
            [<hwell:crystal>,null,null],
            [null,<hwell:mystic_iron_ingot>,null],
            [null,null,<hwell:mystic_iron_ingot>]
        ]
    ],
    <hwell:freezer> : [
        [
            [<hwell:shard_ca>,<hwell:smooth_azurite>,<hwell:shard_ca>],
            [<hwell:smooth_azurite>,<minecraft:hardened_clay>,<hwell:smooth_azurite>],
            [<hwell:asul_ingot>,<hwell:asul_machine_case>,<hwell:asul_ingot>]
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
