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

disable(<integrateddynamics:coal_generator>);

recipes.remove(<integrateddynamics:menril_planks>);

recipes.remove(<integrateddynamics:drying_basin>);
recipes.addShaped(<integrateddynamics:drying_basin>, [
    [<ore:stickWood>,null,<ore:stickWood>],
    [<ore:stickWood>,null,<ore:stickWood>],
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]
]);

recipes.addShaped(<integrateddynamics:crystalized_menril_chunk>, [
    [<integrateddynamics:menril_berries>,<integrateddynamics:menril_berries>,<integrateddynamics:menril_berries>],
    [<integrateddynamics:menril_berries>,<integrateddynamics:menril_berries>,<integrateddynamics:menril_berries>],
    [<integrateddynamics:menril_berries>,<integrateddynamics:menril_berries>,<integrateddynamics:menril_berries>]
]);

recipes.addShapeless(<integrateddynamics:drying_basin>,[<integrateddynamics:drying_basin>]);

recipes.replaceAllOccurences(<minecraft:iron_block>,<evilcraft:dark_block>,<integrateddynamics:squeezer>);
recipes.replaceAllOccurences(<integratedterminals:menril_glass>, <integrateddynamics:crystalized_menril_block>, <integratedterminals:part_terminal_storage_item>);
recipes.replaceAllOccurences(<integratedterminals:menril_glass>, <integrateddynamics:crystalized_menril_block>,<integratedterminals:part_terminal_crafting_job_item>);
