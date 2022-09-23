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

disable(<calculator:crankhandle>);
disable(<calculator:infocalculator>);
disable(<calculator:handcrankedgenerator>);
disable(<calculator:algorithmassimilator>);

disable(<calculator:precisionchamber>);
<calculator:precisionchamber>.addTooltip(format.red("-> Extremely problematic on servers"));

disable(<calculator:fabricationchamber>);
<calculator:fabricationchamber>.addTooltip(format.red("-> Extremely problematic on servers"));

recipes.remove(<calculator:amethystplanks>);
recipes.remove(<calculator:tanzaniteplanks>);
recipes.remove(<calculator:pearplanks>);
recipes.remove(<calculator:diamondplanks>);

recipes.addShapeless(<calculator:extractionchamber>,[<calculator:extractionchamber>]);

recipes.replaceAllOccurences(<calculator:powercube>, <calculator:advancedpowercube>, <calculator:algorithmseparator>);

var zorra as IIngredient = <prodigytech:zorrasteel_ingot>;
var mysticIron as IIngredient = <hwell:mystic_iron_ingot>;
var brackish as IIngredient = <hwell:citrinic_stone>;

var mapRecipe as IIngredient[][][][IItemStack] = {
    <calculator:powercube> : [
        [
            [zorra,mysticIron,zorra],
            [mysticIron,<hwell:soulsteel_ingot>,mysticIron],
            [zorra,mysticIron,zorra]
        ]
    ],
    <calculator:calculator> : [
        [
            [<hwell:moonstone>,<calculator:calculatorscreen>,<hwell:moonstone>],
            [<prodigytech:circuit_refined>,<calculator:calculatorassembly>,<prodigytech:circuit_refined>],
            [<hwell:smooth_onyx>,<embers:archaic_circuit>,<hwell:smooth_onyx>]
        ]
    ],
    <calculator:calculatorassembly> : [
        [
            [brackish,<minecraft:stone_button>,brackish],
            [<minecraft:stone_button>,brackish,<minecraft:stone_button>],
            [brackish,<minecraft:stone_button>,brackish]
        ]
    ],
    <calculator:calculatorscreen> : [
        [
            [<hwell:moonstone>,<hwell:moonstone>,<hwell:moonstone>],
            [<minecraft:glass>,<minecraft:redstone>,<minecraft:glass>],
            [<hwell:moonstone>,<hwell:moonstone>,<hwell:moonstone>]
        ]
    ],
    <calculator:advancedpowercube> : [
        [
            [<calculator:redstoneingot>,<uniquecrops:oldbrick>,<calculator:redstoneingot>],
            [<calculator:enrichedgoldingot>,<calculator:powercube>,<calculator:enrichedgoldingot>],
            [<calculator:redstoneingot>,<uniquecrops:oldbrick>,<calculator:redstoneingot>]
        ]
    ],
    <calculator:algorithmseparator> : [
        [
            [<calculator:material:3>,<calculator:advancedpowercube>,<calculator:material:3>],
            [<prodigytech:diamond_dust>,<calculator:stoneseparator>,<prodigytech:diamond_dust>],
            [<calculator:material:3>,<calculator:advancedpowercube>,<calculator:material:3>]
        ]
    ],
    <calculator:transferupgrade> : [
        [
            [<calculator:atomicbinder>,<calculator:enrichedgold>,<calculator:atomicbinder>],
            [<calculator:enrichedgold>,<prodigytech:circuit_perfected>,<calculator:enrichedgold>],
            [<calculator:atomicbinder>,<calculator:enrichedgold>,<calculator:atomicbinder>]
        ]
    ],
    <calculator:speedupgrade>*4 : [
        [
            [<calculator:atomicbinder>,<calculator:enrichedgold>,<calculator:atomicbinder>],
            [<calculator:enrichedgold>,<prodigytech:circuit_crude>,<calculator:enrichedgold>],
            [<calculator:atomicbinder>,<calculator:enrichedgold>,<calculator:atomicbinder>]
        ]
    ],
    <calculator:energyupgrade>*4 : [
        [
            [<calculator:atomicbinder>,<calculator:enrichedgold>,<calculator:atomicbinder>],
            [<calculator:enrichedgold>,<prodigytech:circuit_refined>,<calculator:enrichedgold>],
            [<calculator:atomicbinder>,<calculator:enrichedgold>,<calculator:atomicbinder>]
        ]
    ],
    <calculator:voidupgrade> : [
        [
            [<calculator:atomicbinder>,<calculator:enrichedgold>,<calculator:atomicbinder>],
            [<calculator:enrichedgold>,<embers:archaic_circuit>,<calculator:enrichedgold>],
            [<calculator:atomicbinder>,<calculator:enrichedgold>,<calculator:atomicbinder>]
        ]
    ],
    <calculator:pearsapling> : [
        [
            [<calculator:pear>],
            [<ore:treeSapling>],
            [<calculator:pear>]
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
