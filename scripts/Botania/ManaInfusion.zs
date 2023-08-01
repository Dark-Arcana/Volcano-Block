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

import mods.botania.ManaInfusion;

ManaInfusion.removeRecipe(<botania:manaresource>);
ManaInfusion.addInfusion(<botania:manaresource>, <hwell:soulsteel_ingot>, 3000); //default 3000

ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>, <prodigytech:inferno_fuel>, 500); //default 400

ManaInfusion.removeRecipe(<botania:manaresource:2>);
ManaInfusion.addInfusion(<botania:manaresource:2>, <calculator:enddiamond>, 12000); //default 10k

ManaInfusion.addInfusion(<minecraft:chorus_fruit>, <integrateddynamics:menril_berries>, 2000);

ManaInfusion.removeRecipe(<botania:manaresource:1>);
ManaInfusion.addInfusion(<botania:manaresource:1>, <forbidden_arcanus:chorus_pearl>, 7500); //default 10k

ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.addInfusion(<botania:storage>, <hwell:soulsteel_block>, 27000); //default 27k

ManaInfusion.removeRecipe(<botania:storage:3>);
ManaInfusion.addInfusion(<botania:storage:3>, <calculator:material:8>, 108000);

ManaInfusion.addInfusion(<minecraft:vine>, <vanillafoodpantry:dried_seeds>, 200);
