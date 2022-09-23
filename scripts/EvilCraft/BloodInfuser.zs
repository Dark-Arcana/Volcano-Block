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

import mods.evilcraft.BloodInfuser;

recipes.remove(<cookingforblockheads:recipe_book:2>);
BloodInfuser.addRecipe(<cookingforblockheads:recipe_book:1>,<liquid:evilcraftblood> * 1000, 0, <cookingforblockheads:recipe_book:2>,100,0);

BloodInfuser.removeRecipesWithOutput(<evilcraft:undead_sapling>);
BloodInfuser.addRecipe(<minecraft:deadbush>,<liquid:evilcraftblood> * 2000, 1, <evilcraft:undead_sapling>,40,0);

BloodInfuser.removeRecipesWithOutput(<minecraft:soul_sand>);
BloodInfuser.addRecipe(<minecraft:sand>, <liquid:evilcraftblood> * 1000, 3, <minecraft:soul_sand>, 100, 0);

BloodInfuser.removeRecipesWithOutput(<minecraft:blaze_rod>);
BloodInfuser.addRecipe(<ore:bone>, <liquid:evilcraftblood> * 1000, 3, <minecraft:blaze_rod>, 100, 0);

BloodInfuser.addRecipe(<hwell:crystal_catalyst>, <liquid:evilcraftblood> * 1000, 1, <embers:crystal_ember>, 40, 0);

BloodInfuser.addRecipe(<calculator:electricdiamond>,<liquid:evilcraftblood> * 3000, 3, <forbidden_arcanus:arcane_crystal>,40,0);

BloodInfuser.addRecipe(<combustfish:bone_fish>,<liquid:evilcraftblood> * 500, 0, <minecraft:fish>,40,0);

BloodInfuser.addRecipe(<soulus:crystal_blood>,<liquid:evilcraftblood> * 1080, 1, <soulus:crystal_blood>.withTag({contained_blood: 5000}),40,0);

BloodInfuser.addRecipe(<forbidden_arcanus:pixi_in_a_bottle_block>, <liquid:evilcraftblood> * 5000, 3, <uniquecrops:vampiric_ointment>, 100, 0);

BloodInfuser.addRecipe(<vanillafoodpantry:heat_portion>, <liquid:evilcraftblood> * 5000, 3, <minecraft:experience_bottle>, 200, 0);
