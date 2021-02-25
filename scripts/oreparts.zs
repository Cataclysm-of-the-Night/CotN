#priority 500
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val OresList = ["iron", "gold"] as string[];

// Adds crushed materials
for ore in OresList {
    var crushedOre = ore + "_crushed" as string;
    var oreCrushed = VanillaFactory.createItem(crushedOre);
    oreCrushed.maxStackSize =  64;
    oreCrushed.register();
}

//Values
val ccolor = Color.fromHex("D98D3F") as Color;
val copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(ccolor).build();
val tcolor = Color.fromHex("D0D0D0") as Color;
val tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(tcolor).build();
val stcolor = Color.fromHex("3E3E3E") as Color;
val steel = MaterialSystem.getMaterialBuilder().setName("Crucible Steel").setColor(stcolor).build();
val icolor = Color.fromHex("E5DADA") as Color;
val iron = MaterialSystem.getMaterialBuilder().setName("Iron").setColor(icolor).build();
val gcolor = Color.fromHex("F0CA2F") as Color;
val gold = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(gcolor).build();
val sicolor = Color.fromHex("D2DCE8") as Color;
val silver = MaterialSystem.getMaterialBuilder().setName("Silver").setColor(sicolor).build();
val zcolor = Color.fromHex("E3EAE8") as Color;
val zinc = MaterialSystem.getMaterialBuilder().setName("Zinc").setColor(zcolor).build();
val ambcolor = Color.fromHex("FFE666") as Color;
val ambrosium = MaterialSystem.getMaterialBuilder().setName("Ambrosium").setColor(ambcolor).build();

//MISC PARTS
var cdata = copper.registerParts(["nugget","molten","dust"] as string[])[1].getData();
var tdata = tin.registerParts(["nugget","molten","dust"] as string[])[1].getData();
var stdata = steel.registerParts(["dust"] as string[]);
var idata = iron.registerParts(["dust"] as string[]);
var gdata = gold.registerParts(["dust"] as string[]);
var sidata = silver.registerParts(["dust"] as string[]);
var zdata = zinc.registerParts(["ore","ingot","block","nugget","molten","dust"] as string[])[4].getData();
var ambdata = ambrosium.registerParts(["molten", "dust"] as string[])[0].getData();

cdata.addDataValue("temperature", 1350);
cdata.addDataValue("density", 8000);
cdata.addDataValue("luminosity", 7);
cdata.addDataValue("viscosity", 4000);

tdata.addDataValue("temperature", 500);
tdata.addDataValue("density", 6980);
tdata.addDataValue("luminosity", 5);
tdata.addDataValue("viscosity", 1900);

zdata.addDataValue("temperature", 500);
zdata.addDataValue("density", 3100);
zdata.addDataValue("luminosity", 7);
zdata.addDataValue("viscosity", 1900);

ambdata.addDataValue("temperature", 195);
ambdata.addDataValue("density", 1125);
ambdata.addDataValue("luminosity", 12);
ambdata.addDataValue("viscosity", 6050);
