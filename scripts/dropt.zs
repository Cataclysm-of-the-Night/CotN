import mods.dropt.Dropt;

Dropt.list("portalgates")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:active_nethergate", "contenttweaker:active_aethergate"])
      .matchDrops([<endreborn:block_purpur_lamp>])
      .replaceStrategy("REPLACE_ITEMS")
      .addDrop(Dropt.drop())
  );