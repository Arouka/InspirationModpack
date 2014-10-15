##Recipe adding script for Inspiration modpack

##Botania
val flightTiara = <Botania:flightTiara>;
val waterRing = <Botania:waterRing>;
val terraPick = <Botania:terraPick>;

##CrayfishFurniture
val itemComputer = <cfm:ItemComputer>;
val itemPrinter = <cfm:ItemPrinter>;
val itemOven = <cfm:ItemOven>;
val itemStereo = <cfm:ItemStereo>;
val itemZapFence = <cfm:ItemElectricFence>;

##Ores
val gcCopperMain = <GalacticraftCore:tile.gcBlockCore:5>;
val gcTinMain = <GalacticraftCore:tile.gcBlockCore:6>;
val gcAluminumMain = <GalacticraftCore:tile.gcBlockCore:7>;
val gcCopperMoon = <GalacticraftCore:tile.moonBlock>;
val gcTinMoon = <GalacticraftCore:tile.moonBlock:1>;
val gcCopperMars = <GalacticraftMars:tile.mars>;
val gcTinMars = <GalacticraftMars:tile.mars:1>;
val gcIronMars = <GalacticraftMars:tile.mars:3>;
val gcAluminumAsteroid = <GalacticraftMars:tile.asteroidsBlock:3>;
val gcIronAsteroid = <GalacticraftMars:tile.asteroidsBlock:5>;
val steamCopper = <Steamcraft:steamcraftOre>;
val elnCopper = <Eln:Eln.Ore:1>;
val elnLead = <Eln:Eln.Ore:4>;
val mariBaux = <Mariculture:rocks:2>;
val mariCopper = <Mariculture:rocks:1>;
val factorSilver = <factorization:ResourceBlock>;

##Misc
val relocator = <RefinedRelocation:relocator>;
val inkMixer = <Mystcraft:BlockInkMixer>;
val glowCrumb = <RPGAdvMod:glowcrumb>;
val lettuce = <harvestcraft:lettuceItem>;
val knife = <kitchen:knife>;
val lettuceLeaf = <kitchen:lettuce_leaf>;
val gasPipe = <gasesFramework:gasPipeAir>;
val neededMutton = <TYNKYN:lambChop>;
val tomato = <kitchen:tomato>;
val kitchenCheese = <kitchen:cheese>;
val spaceCheese = <GalacticraftCore:item.cheeseCurd>;
val cheeseSlice = <kitchen:cheese_slice>;
val harvestCheese = <harvestcraft:cheeseItem>;
val kitFlour = <kitchen:flour>;
val kitMortarPestle = <kitchen:mortar_and_pestle>;
val kitMortar = <kitchen:mortar>;
val kitPestle = <kitchen:pestle>;
val harvestFlour = <harvestcraft:flourItem>;
val kitToast = <kitchen:toast>;
val mariTitan = <Mariculture:materials:2>;
val showcase = <statues:statues.item.showcase>;
val cartridge = <Steamcraft:musketCartridge>;
val steelNugget = <Railcraft:nugget:1>;

//Ore Dictionary Changes
val mutton = <ore:foodMuttonraw>;
val meat = <ore:listAllmeatraw>;
val muttonRaw = <ore:listAllmuttonraw>;
mutton.add(neededMutton);
meat.add(neededMutton);
muttonRaw.add(neededMutton);
val cropTomato = <ore:cropTomato>;
cropTomato.add(tomato);
val cheese = <ore:foodCheese>;
cheese.add(kitchenCheese);
cheese.add(spaceCheese);
//val seaTitan = <ore:seaTitanium>;
//val titanIngot = <ore:ingotTitanium>;
//titanIngot.remove(mariTitan);
//seaTitan.add(mariTitan);


//Recipe Removals
recipes.remove(flightTiara);
recipes.remove(waterRing);
recipes.remove(terraPick);
recipes.remove(itemComputer);
recipes.remove(itemPrinter);
recipes.remove(itemOven);
recipes.remove(itemStereo);
recipes.remove(itemZapFence);
recipes.remove(relocator);
recipes.remove(inkMixer);
recipes.remove(glowCrumb);
recipes.remove(kitchenCheese);
recipes.remove(kitFlour);
recipes.remove(kitMortarPestle);
recipes.remove(showcase);
recipes.remove(gasPipe);
recipes.remove(cartridge);
recipes.remove(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: 213 as short, lvl: 1 as short}]}));

//Crucible Furnace Change (CURRENTLY BROKEN)
//mods.mariculture.Crucible.removeRecipe(<minecraft:iron_ore>);
//mods.mariculture.Crucible.removeRecipe(<minecraft:gold_ore>);
//mods.mariculture.Crucible.removeRecipe(gcCopperMain);
//mods.mariculture.Crucible.removeRecipe(gcTinMain);
//mods.mariculture.Crucible.removeRecipe(gcAluminumMain);
//mods.mariculture.Crucible.removeRecipe(gcCopperMoon);
//mods.mariculture.Crucible.removeRecipe(gcTinMoon);
//mods.mariculture.Crucible.removeRecipe(gcCopperMars);
//mods.mariculture.Crucible.removeRecipe(gcTinMars);
//mods.mariculture.Crucible.removeRecipe(gcIronMars);
//mods.mariculture.Crucible.removeRecipe(gcAluminumAsteroid);
//mods.mariculture.Crucible.removeRecipe(gcIronAsteroid);
//mods.mariculture.Crucible.removeRecipe(steamCopper);
//mods.mariculture.Crucible.removeRecipe(elnCopper);
//mods.mariculture.Crucible.removeRecipe(elnLead);
//mods.mariculture.Crucible.removeRecipe(mariBaux);
//mods.mariculture.Crucible.removeRecipe(mariCopper);
//rmods.mariculture.Crucible.removeRecipe(factorSilver);

//Recipe Changes

//Recipe Additions
recipes.addShapeless(lettuceLeaf * 2, [knife, lettuce]);
recipes.addShaped(gasPipe * 24, [[null, <minecraft:iron_ingot>, null], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [null, <minecraft:iron_ingot>, null]]);
recipes.addShapeless(cheeseSlice * 2, [knife, harvestCheese]);
recipes.addShapeless(cheeseSlice * 2, [knife, spaceCheese]);
recipes.addShapeless(cartridge, [steelNugget, <minecraft:paper>, <minecraft:gunpowder>]);

//Smelting Recipes
furnace.addRecipe(<kitchen:toast>, <harvestcraft:flourItem>);

//EXAMPLE
//recipes.remove(witchesOven);
//recipes.addShaped(witchesOven, [[null, <minecraft:bucket>, null], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [ironwoodIngot, <minecraft:iron_bars>, ironwoodIngot]]);

//Keep this at the bottom
print("Inspiration Master Script successfully loaded, Sir!");