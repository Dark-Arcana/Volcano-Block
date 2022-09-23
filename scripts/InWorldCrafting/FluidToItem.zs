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

import mods.inworldcrafting.FluidToItem;

recipes.remove(<clickmachine:auto_clicker>);
<clickmachine:auto_clicker>.addTooltip(format.green("*Doesn't use Power.*"));
FluidToItem.transform(<clickmachine:auto_clicker>,<liquid:liquid_souls>, [<minecraft:dispenser>],true);

FluidToItem.transform(<contenttweaker:raw_pink_composite>, <liquid:water>, [<contenttweaker:pink_composite_dust>], true);

FluidToItem.transform(<forbidden_arcanus:runestone>,<liquid:liquid_souls>, [<uniquecrops:oldgravel>],true);

FluidToItem.transform(<integrateddynamics:menril_sapling>,<liquid:liquid_souls>, [<evilcraft:undead_sapling>],true);

FluidToItem.transform(<minecraft:dirt>*8, <liquid:water>, [<contenttweaker:golem_meal>], true);
FluidToItem.transform(<minecraft:double_plant>,<liquid:water>,[<ore:foodFlour>,<hwell:locked_light>],true);

FluidToItem.transform(<soulus:glue>, <liquid:water>, [<ore:bonemeal>,<minecraft:sugar>], true);

recipes.remove(<vanillafoodpantry:foodpowder:15>);
FluidToItem.transform(<vanillafoodpantry:foodpowder:15>*2,<liquid:water>,[<minecraft:rabbit_hide>,<vanillafoodpantry:heat_portion>,<vanillafoodpantry:drying_agent>],true);
FluidToItem.transform(<vanillafoodpantry:foodpowder:15>*2,<liquid:water>,[<ore:bone>,<vanillafoodpantry:heat_portion>,<vanillafoodpantry:drying_agent>],true);
FluidToItem.transform(<vanillafoodpantry:foodpowder:15>,<liquid:water>,[<vanillafoodpantry:small_bone>*3,<vanillafoodpantry:heat_portion>,<vanillafoodpantry:drying_agent>],true);
