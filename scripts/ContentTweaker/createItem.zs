#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.LocalizedNameSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

var listItems as string[] = [
    "pink_composite_dust",
    "raw_pink_composite",
    "pink_composite_brick",
    "mysterious_charcoal",
    "golem_corpse",
    "golem_meal",
    "fond_memories",
    "friend_dust",
    "friend_memories",
    "discord",
    "patreon",
    "twitter",
    "akliz",
    "youtube",
];

for item in listItems {
    var newItem as Item = VanillaFactory.createItem(item);
    newItem.register();
}

var spriteGuardianHeart = VanillaFactory.createItem("sprite_guardian_heart");
spriteGuardianHeart.glowing = true;
spriteGuardianHeart.register();

var greaterSpriteHeart = VanillaFactory.createItem("greater_sprite_heart");
greaterSpriteHeart.glowing = true;
greaterSpriteHeart.register();

var pharaohHeart = VanillaFactory.createItem("pharaoh_heart");
pharaohHeart.glowing = true;
pharaohHeart.register();

var volcano = VanillaFactory.createItem("volcano");
volcano.glowing = true;
volcano.register();
