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

JEI.removeAndHide(<multiblocked:blueprint_table>);
JEI.removeAndHide(<multiblocked:blueprint_table_part>);
JEI.removeAndHide(<multiblocked:controller_tester>);
JEI.removeAndHide(<multiblocked:part_tester>);
JEI.removeAndHide(<multiblocked:item_input>);
JEI.removeAndHide(<multiblocked:item_output>);
JEI.removeAndHide(<multiblocked:fluid_input>);
JEI.removeAndHide(<multiblocked:fluid_output>);
JEI.removeAndHide(<multiblocked:entity>);
JEI.removeAndHide(<multiblocked:blueprint>);
JEI.removeAndHide(<multiblocked:multiblock_builder>);
JEI.removeAndHide(<multiblocked:energy_input>);
JEI.removeAndHide(<multiblocked:energy_output>);
