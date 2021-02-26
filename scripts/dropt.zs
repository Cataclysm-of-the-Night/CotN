import mods.dropt.Dropt;

Dropt.list("portalgates")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:active_aethergate"])
      .addDrop(Dropt.drop()
          .items([<endreborn:block_purpur_lamp>])
      )
  );

Dropt.list("portalgates")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:active_nethergate"])
      .addDrop(Dropt.drop()
          .items([<endreborn:block_purpur_lamp>])
      )
  );