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

<minecraft:reeds>.addTooltip("Can be found by breaking grass plants");
<minecraft:string>.addTooltip("Can be grown from flax seeds");

recipes.remove(<minecraft:planks>);
recipes.remove(<minecraft:planks:1>);
recipes.remove(<minecraft:planks:2>);
recipes.remove(<minecraft:planks:3>);
recipes.remove(<minecraft:planks:4>);
recipes.remove(<minecraft:planks:5>);
recipes.remove(<minecraft:stick>);

recipes.addShapeless(<minecraft:wheat_seeds>,[<minecraft:wheat>]);
recipes.addShapeless(<minecraft:clay_ball>*4,[<minecraft:clay>]);
recipes.addShapeless(<minecraft:dirt>,[<minecraft:grass>]);
recipes.addShapeless(<minecraft:dye:15>*3,[<cannibalism:playerflesh>]);

recipes.remove(<minecraft:glass>);
recipes.remove(<minecraft:book>);

recipes.addShapeless(<minecraft:book>, [
    <minecraft:paper>,
    <minecraft:paper>,
    <minecraft:paper>,
    <soulus:glue>
]);

recipes.addShapeless(<minecraft:book>, [
    <minecraft:paper>,
    <minecraft:paper>,
    <minecraft:paper>,
    <minecraft:leather>
]);

recipes.addShaped(<minecraft:stick>, [
    [<minecraft:tallgrass:1>],
    [<minecraft:tallgrass:1>]
]);

recipes.addShaped(<minecraft:grass>, [
    [<minecraft:wheat>,<minecraft:wheat>],
    [<minecraft:wheat>,<minecraft:wheat>]
]);

recipes.addShaped(<minecraft:wooden_button>, [
    [<ore:slabWood>]
]);

recipes.addShaped(<minecraft:wooden_slab>, [
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]
]);

recipes.addShaped(<minecraft:dye:3> * 2, [
    [<ore:treeSapling>,null],
    [null,<hwell:mutation_paste>]
]);

recipes.addShaped(<minecraft:cactus>, [
    [<hwell:mutation_paste>],
    [<ore:treeSapling>],
    [<hwell:mutation_paste>]
]);

recipes.addShaped(<minecraft:red_mushroom>, [
    [<hwell:mutation_paste>,null],
    [null,<hwell:mutation_paste>],
    [<ore:treeSapling>,null]
]);

recipes.addShaped(<minecraft:brown_mushroom>, [
    [null,<hwell:mutation_paste>],
    [<hwell:mutation_paste>,null],
    [null,<ore:treeSapling>]
]);

recipes.addShaped(<minecraft:waterlily>, [
    [<hwell:mutation_paste>],
    [<minecraft:reeds>],
    [<hwell:mutation_paste>]
]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <minecraft:wooden_hoe> : [
        [
            [<minecraft:stick>,<minecraft:stick>],
            [null,<minecraft:stick>]
        ]
    ],
    <minecraft:hopper> : [
        [
            [<minecraft:stone>,null,<minecraft:stone>],
            [<minecraft:stone>,<ore:chest>,<minecraft:stone>],
            [null,<minecraft:stone>,null]
        ]
    ],
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "strawgolem:strawgolem"}}) : [
        [
            [<minecraft:pumpkin>],
            [<minecraft:hay_block>]
        ]
    ],
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "emberroot:rootsonespriteboss"}}) : [
        [
            [<contenttweaker:greater_sprite_heart>,<minecraft:egg>,<contenttweaker:greater_sprite_heart>],
            [<minecraft:egg>,<botania:manaresource:4>,<minecraft:egg>],
            [<contenttweaker:greater_sprite_heart>,<minecraft:egg>,<contenttweaker:greater_sprite_heart>]
        ]
    ],
    <minecraft:lapis_block> : [
        [
            [<ore:gemLapis>,<ore:gemLapis>,<ore:gemLapis>],
            [<ore:gemLapis>,<ore:gemLapis>,<ore:gemLapis>],
            [<ore:gemLapis>,<ore:gemLapis>,<ore:gemLapis>]
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

var mapTorch as int[IItemStack] = {
    <morecharcoal:apple_charcoal> : 3,
    <morecharcoal:beet_charcoal> : 3,
    <morecharcoal:chorus_charcoal> : 5,
    <morecharcoal:potato_charcoal> : 4,
    <morecharcoal:sugarcane_charcoal> : 3,
    <morecharcoal:carrot_charcoal> : 3,
    <morecharcoal:bread_charcoal> : 6,
    <morecharcoal:egg_charcoal> : 4,
    <morecharcoal:melon_charcoal> : 3,
};

for item, amount in mapTorch {
    recipes.addShaped(<minecraft:torch> * amount, [
        [item],
        [<ore:stickWood>]
    ]);
}
