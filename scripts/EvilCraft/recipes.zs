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

disable(<evilcraft:potentia_sphere>);

recipes.remove(<evilcraft:undead_plank>);

recipes.remove(<evilcraft:promise:2>);
recipes.addShapeless(<evilcraft:promise:2>, [
    <ore:materialBowlOfPromises2>,
    <evilcraft:promise_acceptor:2>,
    <minecraft:ender_eye>,
    <calculator:electricdiamond>
]);

recipes.remove(<evilcraft:eternal_water_block>);
recipes.addShaped(<evilcraft:eternal_water_block> * 4, [
    [<evilcraft:dark_gem>,<evilcraft:dark_gem>,<evilcraft:dark_gem>],
    [<evilcraft:dark_gem>,<botania:rune>,<evilcraft:dark_gem>],
    [<evilcraft:dark_gem>,<evilcraft:dark_gem>,<evilcraft:dark_gem>]
]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <evilcraft:blood_infuser> : [
        [
            [<forbidden_arcanus:rune>,<forbidden_arcanus:carved_dark_stone_bricks>,<forbidden_arcanus:rune>],
            [<prodigytech:aeternus_crystal>,<evilcraft:blood_infusion_core>,<prodigytech:aeternus_crystal>],
            [<forbidden_arcanus:carved_dark_stone_bricks>,<forbidden_arcanus:obsidian_skull>,<forbidden_arcanus:carved_dark_stone_bricks>]
        ]
    ],
    <evilcraft:piercing_vengeance_focus> : [
        [
            [<evilcraft:blood_orb>,<minecraft:prismarine_shard>,<evilcraft:blood_orb>],
            [<minecraft:prismarine_shard>,<evilcraft:vengeance_focus>,<minecraft:prismarine_shard>],
            [<forbidden_arcanus:dark_matter>,<forbidden_arcanus:corrupt_pixi_in_a_bottle_block>,<forbidden_arcanus:dark_matter>]
        ]
    ],
    <evilcraft:bucket_eternal_water> : [
        [
            [<evilcraft:dark_gem>,<botania:rune>,<evilcraft:dark_gem>],
            [null,<evilcraft:dark_gem>,null]
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
