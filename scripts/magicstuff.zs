import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.ArcaneWorld;

ArcaneWorld.removeAll();
recipes.remove(<arcaneworld:levitator>);
recipes.remove(<arcaneworld:ritual_table>);

// Adds runic rituals
ArcaneWorld.createRitualCreateItem("nether_rune", "Nether Rune Synthesis", <contenttweaker:nether_rune>, [<contenttweaker:strength_rune>, <contenttweaker:earth_rune>, <contenttweaker:chaos_rune>, <contenttweaker:fire_rune>, <contenttweaker:end_rune>]);
ArcaneWorld.createRitualCreateItem("aether_rune", "Aether Rune Synthesis", <contenttweaker:aether_rune>, [<contenttweaker:illusion_rune>, <contenttweaker:soul_rune>, <contenttweaker:knowledge_rune>, <contenttweaker:air_rune>, <contenttweaker:disint_rune>]);
ArcaneWorld.createRitualCreateItem("time_rune", "Time Rune Synthesis", <contenttweaker:time_rune>, [<contenttweaker:nature_rune>, <contenttweaker:water_rune>, <contenttweaker:trans_rune>, <contenttweaker:fae_rune>, <contenttweaker:life_rune>]);
ArcaneWorld.createRitualCreateItem("warding_rune", "Warding Rune Synthesis", <contenttweaker:warding_rune>, [<contenttweaker:death_rune>, <contenttweaker:energy_rune>, <contenttweaker:time_rune>, <contenttweaker:aether_rune>, <contenttweaker:nether_rune>]);

// Adds barrier spell
recipes.addShapedMirrored(<contenttweaker:barrier_spell>, [[null, <contenttweaker:plague_rune>, null],[<contenttweaker:arcane_rune>, <iceandfire:manuscript>, <contenttweaker:warding_rune>], [null, <contenttweaker:creation_rune>, null]]);