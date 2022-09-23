#priority 100

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

global klingonTrophy as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 240, TrophyVariant: "classic", TrophyItem: {id: "vanillafoodpantry:gelo", Count: 1 as byte, Damage: 393 as short}, TrophyColorBlue: 44, TrophyName: "Klingon Gelo Master", TrophyColorRed: 50});
global lavaTrophy as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 40, TrophyVariant: "classic", TrophyItem: {id: "uniquecrops:lavarily as IItemStack", Count: 1 as byte, Damage: 0 as short}, TrophyColorBlue: 44, TrophyName: "Lava Master", TrophyColorRed: 240});
global liquidSoulTrophy as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 40, TrophyVariant: "classic", TrophyItem: {id: "hwell:myst_dust", Count: 1 as byte, Damage: 0 as short}, TrophyColorBlue: 200, TrophyName: "Liquid Souls Master", TrophyColorRed: 200});
global golemTrophy as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 150, TrophyVariant: "classic", TrophyItem: {id: "contenttweaker:golem_corpse", Count: 1 as byte, Damage: 0 as short}, TrophyColorBlue: 40, TrophyName: "Golem Master", TrophyColorRed: 150});
global potatoTrophy as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 175, TrophyVariant: "classic", TrophyItem: {id: "prodigytech:energion_dust", Count: 1 as byte, Damage: 0 as short}, TrophyColorBlue: 255, TrophyName: "Energion Master", TrophyColorRed: 100});
global livingrockTrophy as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 255, TrophyVariant: "classic", TrophyItem: {id: "botania:livingrock", Count: 1 as byte, Damage: 0 as short}, TrophyColorBlue: 255, TrophyName: "Livingrock Master", TrophyColorRed: 230});
global livingwoodTrophy as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 80, TrophyVariant: "classic", TrophyItem: {id: "botania:livingwood", Count: 1 as byte, Damage: 0 as short}, TrophyColorBlue: 30, TrophyName: "Livingwood Master", TrophyColorRed: 80});
global primordiumTrophy as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 20, TrophyVariant: "classic", TrophyItem: {id: "prodigytech:primordium", Count: 1 as byte, Damage: 0 as short}, TrophyColorBlue: 200, TrophyName: "Primordium Master", TrophyColorRed: 200});
global manaTrophy as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 200, TrophyVariant: "classic", TrophyItem: {id: "botania:manaresource", Count: 1 as byte, Damage: 2 as short}, TrophyColorBlue: 255, TrophyName: "Mana Master", TrophyColorRed: 10});
global volcanoTrophy as IItemStack = <simple_trophies:trophy>.withTag({TrophyColorGreen: 20, TrophyVariant: "classic", TrophyItem: {id: "contenttweaker:volcano", Count: 1 as byte, Damage: 0 as short}, TrophyColorBlue: 30, TrophyName: "Volcano Master", TrophyColorRed: 255, TrophyEarnedAt: 1560226003 as long});
