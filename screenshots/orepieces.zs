#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

// A list of all materials
val Ores = ["iron", "gold"] as string[];
// val CrushedOres = [<contenttweaker:iron_crushed>, <contenttweaker:gold_crushed>] as IItemStack[];
// val OreDusts = [<contenttweaker:iron_dust>, <contenttweaker:gold_dust>] as IItemStack[];

// Adds crushed materials
for ore in Ores {
    var crushedOre = ore + "_crushed" as string;
    var oreCrushed = VanillaFactory.createItem(crushedOre);
    oreCrushed.maxStackSize =  64;
    oreCrushed.register();
}

// Adds dust materials
for ore in Ores {
    var dustOre = ore + "_dust" as string;
    var oreDust = VanillaFactory.createItem(dustOre);
    oreDust.maxStackSize =  64;
    oreDust.register();
}