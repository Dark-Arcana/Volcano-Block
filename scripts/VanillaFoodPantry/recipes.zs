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

recipes.addShapeless(<vanillafoodpantry:natron_crystals>, [<alchemistry:mineral_salt>,<minecraft:dye:15>]);
recipes.addShapeless(<vanillafoodpantry:rock_salt_crystals>, [<alchemistry:mineral_salt>,<soulus:bone_meal_nether>]);

furnace.remove(<vanillafoodpantry:molasses_ball>*2);
furnace.remove(<vanillafoodpantry:molasses_ball>*18);

furnace.addRecipe(<vanillafoodpantry:molasses_ball>,<vanillafoodpantry:hardened_sugar>);
furnace.addRecipe(<vanillafoodpantry:molasses_ball>*9,<vanillafoodpantry:hardened_sugar_pantry_block>);

val lavaBucket = <minecraft:lava_bucket>.transformReplace(<minecraft:bucket>);
val bitMeasure = <vanillafoodpantry:bit_pipette>.reuse();

recipes.addShaped(<vanillafoodpantry:lava_sand_portion> * 64, [
    [<minecraft:sand>,<minecraft:sand>,<minecraft:sand>],
    [lavaBucket,bitMeasure,<minecraft:sand>],
    [lavaBucket,lavaBucket,lavaBucket]
]);

recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<vanillafoodpantry:foodpowder:15>*2);
recipes.replaceAllOccurences(<minecraft:bone>,<ore:bone>,<vanillafoodpantry:bone_pencil>*2);
