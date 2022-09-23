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

recipes.remove(<embers:plate_aluminum>);
recipes.remove(<embers:plate_bronze>);
recipes.remove(<embers:plate_electrum>);
recipes.remove(<embers:plate_nickel>);
recipes.remove(<embers:plate_tin>);
recipes.remove(<embers:plate_copper>);
recipes.remove(<embers:plate_lead>);
recipes.remove(<embers:plate_silver>);
recipes.remove(<embers:plate_dawnstone>);
recipes.remove(<embers:plate_iron>);
recipes.remove(<embers:plate_gold>);

furnace.remove(<embers:brick_caminite>);
furnace.remove(<embers:plate_caminite>);
furnace.remove(<embers:stamp_gear>);
furnace.remove(<embers:stamp_plate>);
furnace.remove(<embers:stamp_flat>);
furnace.remove(<embers:stamp_bar>);

<embers:ember_receiver>.addTooltip("Can be attached to RF/FE-compatible machines to power them with ember");

recipes.remove(<embers:blend_caminite>);
recipes.addShapeless(<embers:blend_caminite>, [
    <hwell:myst_dust>,
    <minecraft:sand>,
    <minecraft:clay_ball>,
    <minecraft:clay_ball>,
    <minecraft:dye:15>
]);

recipes.remove(<embers:ember_emitter>);
recipes.addShaped(<embers:ember_emitter> * 4, [
    [null,<ore:ingotCopper>,null],
    [null,<uniquecrops:genericfood.largeplum>,null],
    [<ore:ingotIron>,<embers:plate_caminite>,<ore:ingotIron>]
]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <embers:tinker_hammer> : [
        [
            [<ore:ingotIron>,<ore:stickWood>,<ore:ingotIron>],
            [<ore:ingotIron>,<ore:stickWood>,<ore:ingotIron>],
            [null,<ore:stickWood>,null]
        ]
    ],
    <embers:ember_activator> : [
        [
            [<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>],
            [<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>],
            [<ore:ingotIron>,<minecraft:furnace>,<ore:ingotIron>]
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

recipes.replaceAllOccurences(<embers:block_caminite_brick>, <embers:archaic_bricks>, <embers:alchemy_tablet>);
recipes.replaceAllOccurences(<ore:plateDawnstone>,<ore:ingotDawnstone>,<embers:alchemy_tablet>);
recipes.replaceAllOccurences(<ore:plateCopper>,<ore:ingotCopper>,<embers:alchemy_tablet>);
recipes.replaceAllOccurences(<ore:plateIron>, <ore:ingotIron>, <embers:block_tank>);
recipes.replaceAllOccurences(<ore:plateIron>, <ore:ingotIron>, <embers:fluid_gauge>);
recipes.replaceAllOccurences(<ore:plateIron>, <ore:ingotIron>, <embers:mixer>);
recipes.replaceAllOccurences(<ore:plateCopper>, <ore:ingotCopper>, <embers:ember_gauge>);
recipes.replaceAllOccurences(<ore:plateIron>,<embers:plate_caminite>,<embers:pipe>);
recipes.replaceAllOccurences(<ore:plateLead>,<embers:plate_caminite>,<embers:mech_core>);
recipes.replaceAllOccurences(<ore:plateLead>,<embers:plate_caminite>,<embers:item_pipe>);
recipes.replaceAllOccurences(<ore:plateLead>,<ore:nuggetLead>,<embers:tinker_lens>);
recipes.replaceAllOccurences(<ore:plateLead>,<ore:ingotLead>,<embers:cinder_plinth>);
recipes.replaceAllOccurences(<ore:plateIron>,<embers:plate_caminite>,<embers:bin>);
recipes.replaceAllOccurences(<ore:plateDawnstone>,<ore:ingotDawnstone>,<embers:alchemy_pedestal>);
