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

klingonTrophy.addTooltip("Acquired via the Klingon Gelo Challenge");
JEI.addItem(klingonTrophy);

lavaTrophy.addTooltip("Acquired via the Lava Challenge");
JEI.addItem(lavaTrophy);

liquidSoulTrophy.addTooltip("Acquired via the Liquid Souls Challenge");
JEI.addItem(liquidSoulTrophy);

golemTrophy.addTooltip("Acquired via the Fond Memories Challenge");
JEI.addItem(golemTrophy);

potatoTrophy.addTooltip("Acquired via the Friend Memories Challenge");
JEI.addItem(potatoTrophy);

livingrockTrophy.addTooltip("Acquired via the Livingrock Challenge");
JEI.addItem(livingrockTrophy);

livingwoodTrophy.addTooltip("Acquired via the Livingwood Challenge");
JEI.addItem(livingwoodTrophy);

primordiumTrophy.addTooltip("Acquired via the Primordium Challenge");
JEI.addItem(primordiumTrophy);

manaTrophy.addTooltip("Acquired via the Mana Challenge");
JEI.addItem(manaTrophy);

manaTrophy.addTooltip("Acquired by finishing the Main Quest Line");
JEI.addItem(volcanoTrophy);
