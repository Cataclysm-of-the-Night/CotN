import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI;
import mods.horsepower.Grindstone;
import mods.foundry.Heating;
import mods.foundry.Melting;
import mods.betterwithmods.FilteredHopper;

// Adds stoked flame as a heat source
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=0>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=1>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=2>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=3>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=4>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=5>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=6>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=7>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=8>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=9>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=10>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=11>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=12>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=13>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=14>, 7500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=15>, 7500);

// A list of all materials
val OresLit = [<minecraft:iron_ore>, <minecraft:gold_ore>] as IItemStack[];
val CrushedOres = [<contenttweaker:iron_crushed>, <contenttweaker:gold_crushed>] as IItemStack[];
val OreDusts = [<ore:dustIron>.firstItem, <ore:dustGold>.firstItem] as IItemStack[];

// Adds ore to crushed ore recipes
for i, ore in OresLit {
	Grindstone.add(OresLit[i], CrushedOres[i], 8, false, <minecraft:flint>, 25);
}

// Adds crushed ore to dust recipes
FilteredHopper.removeAll();
for i, ore in CrushedOres {
	FilteredHopper.addFilterRecipe("betterwithmods:wicker", CrushedOres[i], [OreDusts[i]], [<minecraft:sand>]);
}

// Removes all armor recipes 
recipes.remove(<minecraft:iron_helmet>);
recipes.remove(<minecraft:iron_chestplate>);
recipes.remove(<minecraft:iron_leggings>);
recipes.remove(<minecraft:iron_boots>);
recipes.remove(<minecraft:iron_sword>);
recipes.remove(<minecraft:iron_axe>);
recipes.remove(<minecraft:iron_pickaxe>);
recipes.remove(<minecraft:iron_shovel>);
recipes.remove(<minecraft:iron_hoe>);
recipes.remove(<minecraft:shears>);
recipes.remove(<minecraft:golden_helmet>);
recipes.remove(<minecraft:golden_chestplate>);
recipes.remove(<minecraft:golden_leggings>);
recipes.remove(<minecraft:golden_boots>);
recipes.remove(<minecraft:golden_sword>);
recipes.remove(<minecraft:golden_axe>);
recipes.remove(<minecraft:golden_pickaxe>);
recipes.remove(<minecraft:golden_shovel>);
recipes.remove(<minecraft:golden_hoe>);