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

disable(<botania:fertilizer>);
<botania:fertilizer>.addTooltip(format.red("-> Yes seriously"));

recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<botania:felpumpkin>);
recipes.replaceAllOccurences(<botania:petal:6>,<botania:mushroom:6>,<botania:goddesscharm>);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <botania:altar> : [
        [
            [<minecraft:end_bricks>,<hwell:crystal_bowl>,<minecraft:end_bricks>],
            [null,<minecraft:end_bricks>,null],
            [<minecraft:end_bricks>,<minecraft:end_bricks>,<minecraft:end_bricks>]
        ]
    ],
    <botania:spreader> : [
        [
            [<botania:livingwood>,<botania:livingwood>,<botania:livingwood>],
            [<forbidden_arcanus:arcane_gold_ingot>,<ore:mushroomBotania>,null],
            [<botania:livingwood>,<botania:livingwood>,<botania:livingwood>]
        ]
    ],
    <botania:spreader:2> : [
        [
            [<botania:dreamwood>,<botania:dreamwood>,<botania:dreamwood>],
            [<botania:manaresource:7>,<ore:mushroomBotania>,null],
            [<botania:dreamwood>,<botania:dreamwood>,<botania:dreamwood>]
        ]
    ],
    <botania:flowerbag> : [
        [
            [<ore:wool>,<ore:mushroomBotania>,<ore:wool>],
            [<ore:wool>,<ore:wool>,<ore:wool>],
            [null,<ore:wool>,null]
        ]
    ],
    <botania:spark> : [
        [
            [null,<ore:mushroomBotania>,null],
            [<minecraft:blaze_powder>,<forbidden_arcanus:arcane_gold_nugget>,<minecraft:blaze_powder>],
            [null,<ore:mushroomBotania>,null]
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

var dyes as IIngredient[] = [
    <ore:dyeWhite>,
    <ore:dyeOrange>,
    <ore:dyeMagenta>,
    <ore:dyeLightBlue>,
    <ore:dyeYellow>,
    <ore:dyeLime>,
    <ore:dyePink>,
    <ore:dyeGray>,
    <ore:dyeLightGray>,
    <ore:dyeCyan>,
    <ore:dyePurple>,
    <ore:dyeBlue>,
    <ore:dyeBrown>,
    <ore:dyeGreen>,
    <ore:dyeRed>,
    <ore:dyeBlack>
];

for i in 0 to 16 {
	var currentStack = <botania:mushroom>.definition.makeStack(i);

	<ore:mushroomBotania>.add(currentStack);

	recipes.remove(currentStack);
	recipes.addShaped(currentStack, [
        [<hwell:myst_dust>,dyes[i],<hwell:myst_dust>],
        [<hwell:myst_dust>,<ore:mushroom>,<hwell:myst_dust>],
        [<hwell:myst_dust>,<minecraft:glowstone_dust>,<hwell:myst_dust>]
    ]);
}

for i in 0 to 16 {
	var petal = <botania:petal>.definition.makeStack(i);
	var mushroom = <botania:mushroom>.definition.makeStack(i);
	var cosmetic = <botania:cosmetic>.definition.makeStack(i);
	var dye = <botania:dye>.definition.makeStack(i);

	recipes.replaceAllOccurences(petal,mushroom,cosmetic);

	recipes.remove(petal);
	recipes.remove(dye);
	recipes.addShapeless(dye, [mushroom,<botania:pestleandmortar>]);
}

<botania:dye>.displayName = "White Mushroom Powder";
<botania:dye:1>.displayName = "Orange Mushroom Powder";
<botania:dye:2>.displayName = "Magenta Mushroom Powder";
<botania:dye:3>.displayName = "Light Blue Mushroom Powder";
<botania:dye:4>.displayName = "Yellow Mushroom Powder";
<botania:dye:5>.displayName = "Lime Mushroom Powder";
<botania:dye:6>.displayName = "Pink Mushroom Powder";
<botania:dye:7>.displayName = "Gray Mushroom Powder";
<botania:dye:8>.displayName = "Light Gray Mushroom Powder";
<botania:dye:9>.displayName = "Cyan Mushroom Powder";
<botania:dye:10>.displayName = "Purple Mushroom Powder";
<botania:dye:11>.displayName = "Blue Mushroom Powder";
<botania:dye:12>.displayName = "Brown Mushroom Powder";
<botania:dye:13>.displayName = "Green Mushroom Powder";
<botania:dye:14>.displayName = "Red Mushroom Powder";
<botania:dye:15>.displayName = "Black Mushroom Powder";
