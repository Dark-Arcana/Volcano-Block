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

JEI.hideCategory("ptincinerator");

JEI.addItem(<patchouli:guide_book>.withTag({"patchouli:book": "prodigytech:guide"}));

<prodigytech:coal_dust>.displayName = "Carbon Dust";
<prodigytech:ash>.addTooltip("Create by placing anything in the Incinerator");

var pinkBrick as IItemStack = <contenttweaker:pink_composite_brick>;
var ferramic as IItemStack = <prodigytech:ferramic_ingot>;
var infernoCrystal as IItemStack = <prodigytech:inferno_crystal>;
var grindingWheel as IItemStack = <hwell:grinding_wheel_crystal>;
var flintCutter = <vanillafoodpantry:flint_cutter:16>.noReturn();

recipes.remove(<prodigytech:zorra_planks>);

recipes.remove(<prodigytech:energion_dust>);
recipes.addShapeless(<prodigytech:energion_dust> * 2, [
    <prodigytech:diamond_dust>,
    <prodigytech:emerald_dust>,
    <prodigytech:quartz_dust>,
    <prodigytech:quartz_dust>,
    <prodigytech:quartz_dust>,
    <prodigytech:quartz_dust>,
    <minecraft:sand>
]);

recipes.addShapeless(<prodigytech:zorra_sapling>, [
    <ore:treeSapling>,
    <prodigytech:zorra_leaf>,
    <prodigytech:zorra_leaf>,
    <prodigytech:zorra_leaf>
]);

recipes.addShaped(<prodigytech:air_funnel> * 4, [
    [pinkBrick,null,pinkBrick],
    [pinkBrick,null,pinkBrick],
    [pinkBrick,null,pinkBrick]
]);

recipes.addShaped(<prodigytech:linear_extractor>, [
    [pinkBrick,null,pinkBrick],
    [pinkBrick,pinkBrick,pinkBrick],
    [null,pinkBrick,null]
]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <prodigytech:energion_aeroheater> : [
        [
            [ferramic,null,ferramic],
            [infernoCrystal,<prodigytech:circuit_crude>,infernoCrystal],
            [ferramic,<minecraft:furnace>,ferramic]
        ]
    ],
    <prodigytech:solderer> : [
        [
            [ferramic,<hwell:crystal_nether>,ferramic],
            [ferramic,null,ferramic],
            [ferramic,<prodigytech:carbon_plate>,ferramic]
        ]
    ],
    <prodigytech:magmatic_aeroheater> : [
        [
            [pinkBrick,<minecraft:magma_cream>,pinkBrick],
            [pinkBrick,<hwell:crystal>,pinkBrick],
            [<minecraft:stone_slab>,<minecraft:magma_cream>,<minecraft:stone_slab>]
        ],
        [
            [ferramic,<minecraft:magma_cream>,ferramic],
            [ferramic,<hwell:crystal>,ferramic],
            [<minecraft:stone_slab>,<minecraft:magma_cream>,<minecraft:stone_slab>]
        ]
    ],
    <prodigytech:rotary_grinder> : [
        [
            [pinkBrick,pinkBrick,pinkBrick],
            [grindingWheel,grindingWheel,grindingWheel],
            [pinkBrick,null,pinkBrick]
        ],
        [
            [ferramic,ferramic,ferramic],
            [grindingWheel,grindingWheel,grindingWheel],
            [ferramic,null,ferramic]
        ]
    ],
    <prodigytech:solid_fuel_aeroheater> : [
        [
            [pinkBrick,<hwell:asul_block>,pinkBrick],
            [pinkBrick,<hwell:crystal>,pinkBrick],
            [pinkBrick,<hwell:asul_block>,pinkBrick]
        ],
        [
            [ferramic,<hwell:asul_block>,ferramic],
            [ferramic,<hwell:crystal>,ferramic],
            [ferramic,<hwell:asul_block>,ferramic]
        ]
    ],
    <prodigytech:blower_furnace> : [
        [
            [pinkBrick,pinkBrick,pinkBrick],
            [pinkBrick,<minecraft:furnace>,pinkBrick],
            [pinkBrick,pinkBrick,pinkBrick]
        ],
        [
            [ferramic,ferramic,ferramic],
            [ferramic,<minecraft:furnace>,ferramic],
            [ferramic,ferramic,ferramic]
        ]
    ],
    <prodigytech:incinerator> : [
        [
            [pinkBrick,null,pinkBrick],
            [pinkBrick,<minecraft:flint>,pinkBrick],
            [pinkBrick,<minecraft:dirt>,pinkBrick]
        ],
        [
            [ferramic,null,ferramic],
            [ferramic,<minecraft:flint>,ferramic],
            [ferramic,<minecraft:dirt>,ferramic]
        ]
    ],
    <prodigytech:heat_sawmill> : [
        [
            [pinkBrick,pinkBrick,pinkBrick],
            [flintCutter,flintCutter,flintCutter],
            [pinkBrick,null,pinkBrick]
        ],
        [
            [ferramic,ferramic,ferramic],
            [flintCutter,flintCutter,flintCutter],
            [ferramic,null,ferramic]
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
