import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var orechid_atum as IItemStack = <botania:specialflower>.withTag({type: "orechid_atum"});
var orechid_end as IItemStack = <botania:specialflower>.withTag({type: "orechid_end"});
var orechid_nether as IItemStack = <botania:specialflower>.withTag({type: "orechid_nether"});
var orechid as IItemStack = <botania:specialflower>.withTag({type: "orechid"});

var floating_orechid_atum as IItemStack = <botania:floatingspecialflower>.withTag({type: "orechid_atum"});
var floating_orechid_end as IItemStack = <botania:floatingspecialflower>.withTag({type: "orechid_nether"});
var floating_orechid_nether as IItemStack = <botania:floatingspecialflower>.withTag({type: "orechid_end"});
var floating_orechid as IItemStack = <botania:floatingspecialflower>.withTag({type: "orechid_overworld"});

orechid_atum.addTooltip(format.red("[WIP] will be implemented with another update."));
orechid_end.addTooltip(format.red("[WIP] will be implemented with another update."));
orechid_nether.addTooltip(format.red("[WIP] will be implemented with another update."));
orechid.addTooltip(format.red("[WIP] will be implemented with another update."));
floating_orechid_atum.addTooltip(format.red("[WIP] will be implemented with another update."));
floating_orechid_end.addTooltip(format.red("[WIP] will be implemented with another update."));
floating_orechid_nether.addTooltip(format.red("[WIP] will be implemented with another update."));
floating_orechid.addTooltip(format.red("[WIP] will be implemented with another update."));
