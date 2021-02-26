#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;

// Adds Portal Blocks
var active_nethergate = VanillaFactory.createBlock("active_nethergate", <blockmaterial:Rock>);
active_nethergate.setBlockSoundType(<soundtype:stone>);
active_nethergate.setToolLevel(3);
active_nethergate.setBlockHardness(25);
active_nethergate.setBlockResistance(1200);
active_nethergate.setBeaconBase(false);
active_nethergate.setToolClass("pickaxe");
active_nethergate.register();

var active_aethergate = VanillaFactory.createBlock("active_aethergate", <blockmaterial:Rock>);
active_aethergate.setBlockSoundType(<soundtype:stone>);
active_aethergate.setToolLevel(3);
active_aethergate.setBlockHardness(25);
active_aethergate.setBlockResistance(1200);
active_aethergate.setBeaconBase(false);
active_aethergate.setToolClass("pickaxe");
active_aethergate.register();