#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.LocalizedNameSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

var listBlocks as string[] = [
    "me_block",
    "cadmium_block"
];

for block in listBlocks {
    var newBlock = VanillaFactory.createBlock(block, <blockmaterial:ground>);
    newBlock.register();
}
