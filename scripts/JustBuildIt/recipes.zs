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

<buildingblocks:pebbles>.addTooltip(format.green("Can be placed on Grass Blocks"));
recipes.addShaped(<buildingblocks:pebbles> * 4,[
    [<ore:cobblestone>,<ore:gravel>],
    [<ore:gravel>,<ore:cobblestone>]
]);

furnace.addRecipe(<buildingblocks:blazing_acherite>,<buildingblocks:morestones3>);

recipes.addShaped(<buildingblocks:morestones:10> * 8,[
    [<ore:stone>,<ore:stone>,<ore:stone>],
    [<ore:stone>,<minecraft:dye:15>,<ore:stone>],
    [<ore:stone>,<ore:stone>,<ore:stone>]
]);

recipes.addShaped(<buildingblocks:morestones2:2> * 8,[
    [<ore:stone>,<ore:stone>,<ore:stone>],
    [<ore:stone>,<soulus:bone_meal_nether>,<ore:stone>],
    [<ore:stone>,<ore:stone>,<ore:stone>]
]);

recipes.addShaped(<buildingblocks:morestones3:3> * 8,[
    [<embers:ashen_stone>,<embers:ashen_stone>,<embers:ashen_stone>],
    [<embers:ashen_stone>,<forbidden_arcanus:ender_pearl_fragment>,<embers:ashen_stone>],
    [<embers:ashen_stone>,<embers:ashen_stone>,<embers:ashen_stone>]
]);
