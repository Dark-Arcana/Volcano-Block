#loader multiblocked

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;
import mods.multiblocked.functions.ISetupRecipe;
import mods.multiblocked.recipe.RecipeLogic;
import mods.multiblocked.recipe.Recipe;

var definition as ComponentDefinition = MBDRegistry.getDefinition("volcanoblock:soul_charger");

var soul_charger = definition as ControllerDefinition;

val soul_charger_recipe_map = RecipeMap("soulcharger") as RecipeMap;

RecipeMap.register(soul_charger_recipe_map);

soul_charger.recipeMap = soul_charger_recipe_map;

for mob in scripts.Multiblocked.map_book.list16 {
    var inputBook as IItemStack = <soulus:soulbook>.withTag({essence_quantity: 1, essence_type: mob});
    var outputBook as IItemStack = <soulus:soulbook>.withTag({essence_quantity: 16, essence_type: mob});
    soul_charger_recipe_map.start()
        .name("book_"+mob.replace(":","_"))
        .duration(100)
        .inputEmber(60000)
        .inputItems(inputBook)
        .outputItems(outputBook)
        .buildAndRegister();
}


for mob in scripts.Multiblocked.map_book.list32 {
    var inputBook as IItemStack = <soulus:soulbook>.withTag({essence_quantity: 1, essence_type: mob});
    var outputBook as IItemStack = <soulus:soulbook>.withTag({essence_quantity: 32, essence_type: mob});
    soul_charger_recipe_map.start()
        .name("book_"+mob.replace(":","_"))
        .duration(100)
        .inputEmber(120000)
        .inputItems(inputBook)
        .outputItems(outputBook)
        .buildAndRegister();
}
