#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.IItemDestroyedBlock;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Item;
import mods.contenttweaker.Facing;
import mods.contenttweaker.MutableItemStack;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemUse;
import mods.contenttweaker.World;
import crafttweaker.world.IWorld;
import mods.contenttweaker.Player;
import mods.contenttweaker.Random;
import mods.contenttweaker.Hand;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import mods.contenttweaker.DropHandler;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.IItemUseFinish;
import crafttweaker.world.IRayTraceResult;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.block.IBlockState;
import mods.contenttweaker.IItemRightClick;

val slider_eye = mods.contenttweaker.VanillaFactory.createItem("slider_eye");
slider_eye.register();

val unattuned_focus = mods.contenttweaker.VanillaFactory.createItem("unattuned_focus");
unattuned_focus.register();

val arcane_focus = VanillaFactory.createItem("arcane_focus");
arcane_focus.maxStackSize = 1;
arcane_focus.maxDamage = 16;
arcane_focus.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (world.getBlockState(pos) == <block:dimstack:bedrock:0> && player.getHeldItem(hand).damage < player.getHeldItem(hand).maxDamage) {
        if (!world.remote) {
            world.setBlockState(<block:minecraft:air>, pos);
            player.getHeldItem(hand).damage(-1, player);
        }
        return ActionResult.success();
    }
    return ActionResult.pass();
};
arcane_focus.register();

/* WIP FANCY ANIMATION VERSION
val arcane_eye_u = VanillaFactory.createItem("arcane_eye_unattuned");
arcane_eye_u.maxStackSize = 8;
arcane_eye_u.maxDamage = 64;
arcane_eye_u.itemUseAction = "BOW";
arcane_eye_u.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    };
arcane_eye_u.onItemUseFinish = function(stack, notWorld, entity) {
    if !(entity instanceof IPlayer) {
        return stack;
    }
    var player as IPlayer = entity;
    val rayget as IRayTraceResult = player.getRayTrace(5, 1, true, true, false) as IRayTraceResult; // Get a ray trace of reach distance
    if (!isNull(rayget.blockPos) && rayget.isBlock && player.world.getBlock(rayget.blockPos) has <block:dimstack:bedrock:0>.getBlock()) { // Check if block at blockPos is dimstack
        // Have to use player.world instead of passed world because CoT and CrT IWorlds are different and raytrace's block pos is CrT's BlockPos, but passed world is CoT's IWorld
        player.world.setBlockState(<blockstate:minecraft:dirt>, rayget.blockPos); // Setting to dirt
        stack.damageItem(-1, player); // Adding one to durability
        print("rayget");
    }
    return stack;
};
arcane_eye_u.register();
*/

/*
val arcane_eye_u = VanillaFactory.createItem("arcane_eye_unattuned");
arcane_eye_u.maxStackSize = 8;
arcane_eye_u.maxDamage = 64;
arcane_eye_u.itemUseAction = "BOW";
arcane_eye_u.onItemUseFinish = function(stack, world, player) {
    var p as IPlayer;
    p = player;
    val rayget = player.getRayTrace(1, 1).isBlock();
    if (rayget has <block:dimstack:bedrock:0>) {
    Commands.call("setblock ~ ~ ~1 minecraft:dirt", p, world);
    return "Pass";
    }
    return ActionResult.pass();
};
arcane_eye_u.register();
*/

/*
val arcane_eye_u = VanillaFactory.createItem("arcane_eye_unattuned");
arcane_eye_u.maxStackSize = 8;
arcane_eye_u.maxDamage = 64;
arcane_eye_u.itemUseAction = "BOW";
arcane_eye_u.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (world.getBlockState(pos) == <block:dimstack:bedrock:0>) {
        if (!world.remote) {
        }
        return ActionResult.success();
    }
    return ActionResult.pass();
};
arcane_eye_u.onItemUseFinish = function(stack, world, player) {
    var p as IPlayer;
    p = player;
    Commands.call("setblock ~ ~ ~1 minecraft:dirt", p, world);
    return "Pass";
};
arcane_eye_u.register();
*/

/*
val arcane_eye_u = VanillaFactory.createItem("arcane_eye_unattuned");
arcane_eye_u.maxStackSize = 8;
arcane_eye_u.maxDamage = 64;
arcane_eye_u.itemUseAction = "BOW";
arcane_eye_u.onItemUseFinish = function(player, world, pos, hand, facing, blockHit) {
    if (world.getBlockState(pos) == <block:dimstack:bedrock:0>) {
        if (!world.remote) {
            Commands.call("destroy <direction: forward>", player, world);
        }
        return ActionResult.success();
    }
    return ActionResult.pass();
};
arcane_eye_u.register();
*/

/*
val arcane_eye_u = VanillaFactory.createItem("arcane_eye_unattuned");
arcane_eye_u.maxStackSize = 8;
arcane_eye_u.maxDamage = 64;
arcane_eye_u.itemUseAction = "BOW";
arcane_eye_u.itemRightClick = function(stack, world, player, hand) {
    if (world.getBlockState(pos) == <block:dimstack:bedrock:0>) {
        if (!world.remote) {
            world.setBlockState(<block:minecraft:air>, pos);
            }
        return ActionResult.success();
    }
    return ActionResult.pass();
};
arcane_eye_u.register();
*/