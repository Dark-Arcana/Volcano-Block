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

import mods.embers.Alchemy;

Alchemy.add(<volcanoblock:soul_charger>,
    [<embers:archaic_light>, <soulus:ingot_niobium>, <soulus:soul_catalyst>.withTag({essence_quantity: 256}), <soulus:ingot_niobium>, <botania:manaresource:9>],
    {
        "silver": 32 to 64,
        "copper": 32 to 64,
        "iron": 32 to 64,
        "lead": 32 to 64,
        "dawnstone": 32 to 64
    }
);
