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

import mods.alchemistry.Dissolver;

import scripts.functions.alch;

Dissolver.addRecipe(<atum:camel_diamond_armor>, true, 1, [[100.0, alch("carbon") * 1024]]);
Dissolver.addRecipe(<atum:desert_wolf_diamond_armor>, true, 1, [[100.0, alch("carbon") * 1024]]);

Dissolver.addRecipe(<atum:camel_gold_armor>, true, 1, [[100.0, alch("gold") * 64]]);
Dissolver.addRecipe(<atum:desert_wolf_gold_armor>, true, 1, [[100.0, alch("gold") * 64]]);

Dissolver.addRecipe(<atum:camel_iron_armor>, true, 1, [[100.0, alch("iron") * 64]]);
Dissolver.addRecipe(<atum:desert_wolf_iron_armor>, true, 1, [[100.0, alch("iron") * 64]]);


// Silver Artifacts
function lootSilver(input as IItemStack, roll as int) {
    Dissolver.addRecipe(input,false,roll,[
        [80.0, alch("silver") * 8]
    ]);
}

lootSilver(<atum:loot_silver_broach>,2);
lootSilver(<atum:loot_silver_ring>,2);
lootSilver(<atum:loot_silver_necklace>,3);
lootSilver(<atum:loot_silver_scepter>,4);
lootSilver(<atum:loot_silver_idol>,5);

// Gold Artifacts
function lootGold(input as IItemStack, roll as int) {
    Dissolver.addRecipe(input,false,roll,[
        [80.0, alch("gold") * 8]
    ]);
}

lootGold(<atum:loot_gold_broach>,2);
lootGold(<atum:loot_gold_ring>,2);
lootGold(<atum:loot_gold_necklace>,3);
lootGold(<atum:loot_gold_scepter>,4);
lootGold(<atum:loot_gold_idol>,5);

// Sapphire Artifacts
function lootSapphire(input as IItemStack, roll as int) {
    Dissolver.addRecipe(input,false,roll,[
        [80.0, alch("potassium_permanganate") * 8],
        [40.0, alch("silver") * 8],
        [40.0, alch("gold") * 8],
        [40.0, alch("platinum") * 8]
    ]);
}

lootSapphire(<atum:loot_sapphire_broach>,2);
lootSapphire(<atum:loot_sapphire_ring>,2);
lootSapphire(<atum:loot_sapphire_necklace>,3);
lootSapphire(<atum:loot_sapphire_scepter>,4);
lootSapphire(<atum:loot_sapphire_idol>,5);

// Ruby artifacts
function lootRuby(input as IItemStack, roll as int) {
    Dissolver.addRecipe(input,false,roll,[
        [80.0, alch("iron_oxide") * 5],
        [80.0, alch("strontium_carbonate") * 5],
        [40.0, alch("silver") * 8],
        [40.0, alch("gold") * 8],
        [40.0, alch("platinum") * 8]
    ]);
}

lootRuby(<atum:loot_ruby_broach>,2);
lootRuby(<atum:loot_ruby_ring>,2);
lootRuby(<atum:loot_ruby_necklace>,3);
lootRuby(<atum:loot_ruby_scepter>,4);
lootRuby(<atum:loot_ruby_idol>,5);

// Emerald artifacts
function lootEmerald(input as IItemStack, roll as int) {
    Dissolver.addRecipe(input,false,roll,[
        [100.0, alch("beryl") * 4],
        [100.0, alch("chromium") * 4],
        [100.0, alch("vanadium") * 2],
        [40.0, alch("silver") * 8],
        [40.0, alch("gold") * 8],
        [40.0, alch("platinum") * 8]
    ]);
}

lootEmerald(<atum:loot_emerald_broach>,2);
lootEmerald(<atum:loot_emerald_ring>,2);
lootEmerald(<atum:loot_emerald_necklace>,3);
lootEmerald(<atum:loot_emerald_scepter>,4);
lootEmerald(<atum:loot_emerald_idol>,5);

// Diamond artifacts
function lootDiamond(input as IItemStack, roll as int) {
    Dissolver.addRecipe(input,false,roll,[
        [40.0, alch("carbon") * 16],
        [40.0, alch("silver") * 8],
        [40.0, alch("gold") * 8],
        [40.0, alch("platinum") * 8]
    ]);
}

lootDiamond(<atum:loot_diamond_broach>,2);
lootDiamond(<atum:loot_diamond_ring>,2);
lootDiamond(<atum:loot_diamond_necklace>,3);
lootDiamond(<atum:loot_diamond_scepter>,4);
lootDiamond(<atum:loot_diamond_idol>,5);
