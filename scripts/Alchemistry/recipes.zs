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

recipes.replaceAllOccurences(<minecraft:ender_pearl>,<uniquecrops:darkblock>,<alchemistry:fusion_casing>);

recipes.addShapeless(<alchemistry:ingot:48>*9, [<contenttweaker:cadmium_block>]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <alchemistry:chemical_combiner> : [
        [
            [<ore:ingotNiobium>,<hwell:stabiliser_heavy>,<ore:ingotNiobium>],
            [<hwell:mystic_iron_block>,<forbidden_arcanus:runic_tenebris_frame>,<hwell:mystic_iron_block>],
            [<ore:ingotNiobium>,<hwell:mystic_iron_block>,<ore:ingotNiobium>]
        ]
    ],
    <alchemistry:chemical_dissolver> : [
        [
            [<ore:ingotNiobium>,<calculator:material:9>,<ore:ingotNiobium>],
            [<calculator:material:9>,<forbidden_arcanus:runic_tenebris_frame>,<calculator:material:9>],
            [<ore:ingotNiobium>,<hwell:stabiliser_heavy>,<ore:ingotNiobium>]
        ]
    ],
    <alchemistry:evaporator> : [
        [
            [<prodigytech:zorrasteel_ingot>,null,<prodigytech:zorrasteel_ingot>],
            [<prodigytech:zorrasteel_ingot>,null,<prodigytech:zorrasteel_ingot>],
            [<forbidden_arcanus:obsidian_ingot>,<prodigytech:zorrasteel_ingot>,<forbidden_arcanus:obsidian_ingot>]
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
