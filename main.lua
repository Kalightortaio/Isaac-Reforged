--------------------------------------------------------------------------------------------------
-- Isaac Reforged by Kalightortaio, Krishna Kokatay, 2020. http://www.kalightortaio.com         --
-- A huge thank you to Lytebringr, Wofsauge, and the #modding-dev community in the TBOI Discord --
--------------------------------------------------------------------------------------------------
ISR = RegisterMod("Isaac Reforged", 1)
local json = require("json")
local Game = Game()
require("isr_config")
ISR.Config = ISR.DefaultConfig
ISR.Config.Version = "1.7"
ISR.GameState = {}
ISR.SecretItems = {286,287,127,35,84,480,11,226,316,242,213,258,262,271,121,120,190,16,321,17,20,74,121,106,94,405,388,389,546,450,501,402,424,500}
ISR.cricketsCollar = true
ISR.cricketsPaw = 0
ISR.hideCollectible = 0
ISR.hasTammysTail = {
    runOnce_A = false,
}
ISR.hasStrangeParts = {
    counter = 0,
    active = false,
}
ISR.hasSackOfKeys = {
    spawned = false,
    active = false,
    newroom = false,
    rooms = 0,
}
ISR.hasBagOfHolding = {
    spawned = false,
}
ISR.Timer = 0
ISR.EntityList = {
    Bombs = {}
}
ISR.Pills = {
    Cache = 0,
    timer = 0,
    dmgMult = 0,
    shtspdMult = 0,
    wzrdMult = 0,
    Wiz = 0,
}
ISR.Transformations = {
    hasConjoined = false,
    hasAdult = false,
    hasMushroom = false,
    hasCrap = false,
    hasSpiderBaby = false,
    hasBob = false,
    hasSeraphim = false,
    hasBeelzbub = false,
    hasMagneto = false,
    hasDuality = false,
    hasGreed = false,
    hasCyborg = false,
    hasButcher = false,
    hasAstrologer = false,
    hasAlchemist = false,
    hasHolding = false,
    hasDelver = false,
    hasDealer = false,
    hasTrick = false,
    hasBony = false,
    hasStony = false,
    hasEternal = false,
    hasCricket = false,
    hasTammy = false,
}
ISR.hasCrap = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
    runOnce_G = false,
}
ISR.hasBob = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
}
ISR.hasMagneto = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
}
ISR.hasGreed = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
}
ISR.hasCyborg = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
    runOnce_G = false,
    runOnce_H = false,
    runOnce_I = false,
    runOnce_J = false,
    runOnce_K = false,
    runOnce_L = false,
}
ISR.hasButcher = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
    runOnce_G = false,
}
ISR.hasAstrologer = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
    runOnce_G = false,
    runOnce_H = false,
    runOnce_I = false,
    runOnce_J = false,
    runOnce_K = false,
    runOnce_L = false,
    runOnce_M = false,
}
ISR.hasAlchemist = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
}
ISR.hasHolding = {
    rooms = 0,
    counter = 0,
    newroom = false,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
    runOnce_G = false,
}
ISR.hasDelver = {
    counter = 0,
    multiplier = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
    runOnce_G = false,
    runOnce_H = false,
    runOnce_I = false,
}
ISR.hasDealer = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
    runOnce_G = false,
    runOnce_H = false,
}
ISR.hasTrick = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
    runOnce_G = false,
    runOnce_H = false,
    runOnce_I = false,
}
ISR.hasBony = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
    runOnce_G = false,
    runOnce_H = false,
}
ISR.hasStony = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
    runOnce_G = false,
}
ISR.hasEternal = {
    counter = 0,
    tracker = 0,
    runOnce_A = false
}
ISR.hasCricket = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
    runOnce_F = false,
}
ISR.hasTammy = {
    counter = 0,
    runOnce_A = false,
    runOnce_B = false,
    runOnce_C = false,
    runOnce_D = false,
    runOnce_E = false,
}
ISR.ActiveItemTimer = 0
ISR.TintedGround = {
    checkForDigging = false,
    hasDug = false,
    currentFloorMG = {},
    currentFloorDG = {},
    currentRoomMG = 0,
    MGX = 0,
    MGY = 0,
    markedGround = {
        Type = EntityType.ENTITY_EFFECT,
        Variant = EffectVariant.PLAYER_CREEP_RED,
        SubType0 = 742854312,
        SubType1 = 742854313,
        Spawner = nil,
    }
}
FamiliarVariant.BAG_OF_HOLDING = Isaac.GetEntityVariantByName(" Bag of Holding ")
FamiliarVariant.SACK_OF_KEYS = Isaac.GetEntityVariantByName(" Sack of Keys ")
TrinketType.TRINKET_FF_RIGHT_HAND = Isaac.GetTrinketIdByName("The Right Hand")
TrinketType.TRINKET_RIGHT_HAND = Isaac.GetTrinketIdByName(" The Right Hand ")
TrinketType.TRINKET_ANTI_STATIC_KEYCHAIN = Isaac.GetTrinketIdByName(" Anti Static Keychain ")
PillEffect.PILLEFFECT_DUALITY = Isaac.GetPillEffectByName(" Duality ")
PillEffect.PILLEFFECT_MAGNETO = Isaac.GetPillEffectByName(" Magneto ")
PillEffect.PILLEFFECT_GREED = Isaac.GetPillEffectByName(" Greed ")
PillEffect.PILLEFFECT_CYBORG = Isaac.GetPillEffectByName(" Cyborg ")
PillEffect.PILLEFFECT_BUTCHER = Isaac.GetPillEffectByName(" Butcher ")
PillEffect.PILLEFFECT_ASTROLOGER = Isaac.GetPillEffectByName(" Astrologer ")
PillEffect.PILLEFFECT_ALCHEMIST = Isaac.GetPillEffectByName(" Master Alchemist ")
PillEffect.PILLEFFECT_HOLDING = Isaac.GetPillEffectByName(" Bag of Holding ")
PillEffect.PILLEFFECT_DELVER = Isaac.GetPillEffectByName(" Dungeon Delver ")
PillEffect.PILLEFFECT_DEALER = Isaac.GetPillEffectByName(" Card Dealer ")
PillEffect.PILLEFFECT_TRICK = Isaac.GetPillEffectByName(" Trick or Treat ")
PillEffect.PILLEFFECT_BONY = Isaac.GetPillEffectByName(" Bony ")
PillEffect.PILLEFFECT_STONY = Isaac.GetPillEffectByName(" Stony ")
PillEffect.PILLEFFECT_ETERNAL = Isaac.GetPillEffectByName(" Eternal ")
PillEffect.PILLEFFECT_CRICKET = Isaac.GetPillEffectByName(" Cricket ")
PillEffect.PILLEFFECT_TAMMY = Isaac.GetPillEffectByName(" Tammy ")
PillEffect.PILLEFFECT_DAMAGE_UP = Isaac.GetPillEffectByName(" Damage Up ")
PillEffect.PILLEFFECT_DAMAGE_DOWN = Isaac.GetPillEffectByName(" Damage Down ")
PillEffect.PILLEFFECT_SHOTSPEED_UP = Isaac.GetPillEffectByName(" Shotspeed Up ")
PillEffect.PILLEFFECT_SHOTSPEED_DOWN = Isaac.GetPillEffectByName(" Shotspeed Down ")
CollectibleType.COLLECTIBLE_CRACKED_D4 = Isaac.GetItemIdByName(" Cracked D4 ")
CollectibleType.COLLECTIBLE_PHILOSOPHERS_STONE = Isaac.GetItemIdByName(" Philospher's Stone ")
CollectibleType.COLLECTIBLE_MOON_TABLET = Isaac.GetItemIdByName(" Moon Tablet ")
CollectibleType.COLLECTIBLE_CRICKETS_PAW = Isaac.GetItemIdByName(" Cricket's Paw ")
CollectibleType.COLLECTIBLE_TAMMYS_PAW = Isaac.GetItemIdByName(" Tammy's Paw ")
CollectibleType.COLLECTIBLE_D3 = Isaac.GetItemIdByName(" D3 ")
CollectibleType.COLLECTIBLE_D19 = Isaac.GetItemIdByName(" D19 ")
CollectibleType.COLLECTIBLE_SNAILS_PACE = Isaac.GetItemIdByName(" Snail's Pace ")
CollectibleType.COLLECTIBLE_LOADED_DECK = Isaac.GetItemIdByName(" Loaded Deck ")
CollectibleType.COLLECTIBLE_CRICKETS_COLLAR = Isaac.GetItemIdByName(" Cricket's Collar ")
CollectibleType.COLLECTIBLE_TAMMYS_TAIL = Isaac.GetItemIdByName(" Tammy's Tail ")
CollectibleType.COLLECTIBLE_TAMMYS_EYES = Isaac.GetItemIdByName(" Tammy's Eyes ")
CollectibleType.COLLECTIBLE_TAMMYS_BODY = Isaac.GetItemIdByName(" Tammy's Body ")
CollectibleType.COLLECTIBLE_STRANGE_PARTS = Isaac.GetItemIdByName(" Strange Parts ")
CollectibleType.COLLECTIBLE_SACK_OF_KEYS = Isaac.GetItemIdByName(" Sack of Keys ")
CollectibleType.COLLECTIBLE_BAG_OF_HOLDING = Isaac.GetItemIdByName(" Bag of Holding ")

require("isr_config_menu")
Isaac.ConsoleOutput("Isaac Reforged v" .. ISR.Config.Version .. ": Praise the Moon! \n")


if EID then
    EID:addTrinket(TrinketType.TRINKET_RIGHT_HAND, "Turns all chests into eternal chests")
    EID:addTrinket(TrinketType.TRINKET_ANTI_STATIC_KEYCHAIN, "Turns keys into charged keys")
    EID:addPill(PillEffect.PILLEFFECT_I_FOUND_PILLS, "It's a mystery")
    EID:addPill(PillEffect.PILLEFFECT_DAMAGE_UP, "↑ +0.1 Damage")
    EID:addPill(PillEffect.PILLEFFECT_DAMAGE_DOWN, "↓ -0.1 Damage")
    EID:addPill(PillEffect.PILLEFFECT_SHOTSPEED_UP, "↑ +0.1 Shotspeed")
    EID:addPill(PillEffect.PILLEFFECT_SHOTSPEED_DOWN, "↓ -0.1 Shotspeed")
    EID:addCollectible(CollectibleType.COLLECTIBLE_CRACKED_D4, "Reroll all your held passive items")
    EID:addCollectible(CollectibleType.COLLECTIBLE_PHILOSOPHERS_STONE, "Upon use, turns everything into gold")
    EID:addCollectible(CollectibleType.COLLECTIBLE_MOON_TABLET, "Rerolls items using the secret room item pool")
    EID:addCollectible(CollectibleType.COLLECTIBLE_CRICKETS_PAW, "Upon use, consumes a red heart container for a permanent damage upgrade")
    EID:addCollectible(CollectibleType.COLLECTIBLE_TAMMYS_PAW, "Chance to convert blue spiders into soul hearts")
    EID:addCollectible(CollectibleType.COLLECTIBLE_D3, "Rerolls curses for the given floor")
    EID:addCollectible(CollectibleType.COLLECTIBLE_D19, "Rerolls pickups into their variants")
    EID:addCollectible(CollectibleType.COLLECTIBLE_SNAILS_PACE, "↓ -0.3 Speed#Deal more damage, the slower you are")
    EID:addCollectible(CollectibleType.COLLECTIBLE_LOADED_DECK, "Rare chance to throw a chaos card when firing")
    EID:addCollectible(CollectibleType.COLLECTIBLE_CRICKETS_COLLAR, "50% chance to return you back to the starting room upon taking fatal damage")
    EID:addCollectible(CollectibleType.COLLECTIBLE_TAMMYS_TAIL, "↑ +0.3 Speed#Deal x1.25 more damage while moving")
    EID:addCollectible(CollectibleType.COLLECTIBLE_TAMMYS_EYES, "10% chance to fire 10 tears around the player, and spawn a friendly spider")
    EID:addCollectible(CollectibleType.COLLECTIBLE_TAMMYS_BODY, "Upon getting hurt, you release 0 - 3 blue spiders")
    EID:addCollectible(CollectibleType.COLLECTIBLE_STRANGE_PARTS, "Grants damage with your total kills")
    EID:addCollectible(CollectibleType.COLLECTIBLE_SACK_OF_KEYS, "Drops 1 Key Pickup every few rooms")
    EID:addCollectible(CollectibleType.COLLECTIBLE_BAG_OF_HOLDING, "Drops a plethora of consumables")
    local iconSprites = Sprite()
    iconSprites:Load("gfx/eid/icons.anm2", true)
    EID:addIcon("Magneto", "Icons", 14, 11, 11, -1, -2, iconSprites)
    EID:addIcon("Duality", "Icons", 7, 11, 11, -2, -4, iconSprites)
    EID:addIcon("Greed", "Icons", 8, 11, 11, 0, -3, iconSprites)
    EID:addIcon("Cyborg", "Icons", 6, 11, 11, -1, -2, iconSprites)
    EID:addIcon("Butcher", "Icons", 4, 11, 11, -1, -1, iconSprites)
    EID:addIcon("Astrologer", "Icons", 2, 11, 11, -4, -3, iconSprites)
    EID:addIcon("Alchemist", "Icons", 12, 11, 11, -2, -3, iconSprites)
    EID:addIcon("Holding", "Icons", 13, 11, 11, -1, -1, iconSprites)
    EID:addIcon("Delver", "Icons", 1, 11, 11, -1, -2, iconSprites)
    EID:addIcon("Dealer", "Icons", 0, 11, 11, 0, -3, iconSprites)
    EID:addIcon("Trick", "Icons", 11, 11, 11, -2, -4, iconSprites)
    EID:addIcon("Bony", "Icons", 3, 11, 11, 0, -1, iconSprites)
    EID:addIcon("Stony", "Icons", 9, 11, 11, -1, -1, iconSprites)
    EID:addIcon("Cricket", "Icons", 5, 11, 11, -1, -2, iconSprites)
    EID:addIcon("Tammy", "Icons", 10, 11, 11, 0, 0, iconSprites)
    EID:createTransformation("Magneto","Magneto")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_STRANGE_ATTRACTOR, "Magneto")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_METAL_PLATE, "Magneto")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_MAGNETO, "Magneto")
    EID:assignTransformation("trinket", TrinketType.TRINKET_SUPER_MAGNET, "Magneto")
    EID:assignTransformation("trinket", TrinketType.TRINKET_BROKEN_MAGNET, "Magneto")
    EID:createTransformation("Greed","Greed")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_EYE_OF_GREED, "Greed")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_GREEDS_GULLET, "Greed")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_MONEY_IS_POWER, "Greed")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_QUARTER, "Greed")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_DOLLAR, "Greed")
    EID:createTransformation("Cyborg","Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TECH_5, "Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TECH_X, "Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TECHNOLOGY, "Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TECHNOLOGY_2, "Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_BATTERY, "Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_CAR_BATTERY, "Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_NINE_VOLT, "Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_METAL_PLATE, "Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_ROBO_BABY, "Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_ROBO_BABY_2, "Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TECHNOLOGY_ZERO, "Cyborg")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SPIDER_MOD, "Cyborg")
    EID:createTransformation("Butcher","Butcher")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_HEAD_OF_THE_KEEPER, "Butcher,Greed")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_GOAT_HEAD, "Butcher")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TAMMYS_HEAD, "Butcher")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_MAXS_HEAD, "Butcher")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_GUPPYS_HEAD, "Butcher")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_HEAD_OF_KRAMPUS, "Butcher")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_BOBS_ROTTEN_HEAD, "Butcher")
    EID:createTransformation("Astrologer","Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_AQUARIUS, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_ARIES, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_LIBRA, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SAGITTARIUS, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_LEO, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_CAPRICORN, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_CANCER, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_GEMINI, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TAURUS, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SCORPIO, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_VIRGO, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_PISCES, "Astrologer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_ZODIAC, "Astrologer")
    EID:createTransformation("Alchemist","Master Alchemist")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_MIND, "Alchemist")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SOUL, "Alchemist")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_BODY, "Alchemist")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_CHAOS, "Alchemist")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_PHILOSOPHERS_STONE, "Alchemist")
    EID:createTransformation("Holding","Bag of Holding")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SACK_OF_KEYS, "Holding")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SACK_OF_PENNIES, "Holding")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_MYSTERY_SACK, "Holding")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SACK_OF_SACKS, "Holding")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_LIL_CHEST, "Holding")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_BOMB_BAG, "Holding")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_RUNE_BAG, "Holding")
    EID:createTransformation("Delver","Dungeon Delver")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_BLUE_MAP, "Delver")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TREASURE_MAP, "Delver")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_WE_NEED_GO_DEEPER, "Delver")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_COMPASS, "Delver")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SPELUNKER_HAT, "Delver")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_NOTCHED_AXE, "Delver")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_MINE_CRAFTER, "Delver")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_LUMP_OF_COAL, "Delver")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_MAMA_MEGA, "Delver")
    EID:createTransformation("Dealer","Card Dealer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TAROT_CLOTH, "Dealer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_DECK_OF_CARDS, "Dealer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_LOADED_DECK, "Dealer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_PORTABLE_SLOT, "Dealer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_CROOKED_PENNY, "Dealer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_CRYSTAL_BALL, "Dealer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_MAGIC_FINGERS, "Dealer")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_MAGIC_8_BALL, "Dealer")
    EID:createTransformation("Trick","Trick or Treat")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_LIL_HAUNT, "Trick")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_DEATHS_TOUCH, "Trick")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_OUIJA_BOARD, "Trick")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_DRY_BABY, "Trick")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_BOZO, "Trick")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_POP, "Trick")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_APPLE, "Trick")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_FINGER, "Trick")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_HOST_HAT, "Trick")
    EID:createTransformation("Bony","Bony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_JAW_BONE, "Bony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SLIPPED_RIB, "Bony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_POINTY_RIB, "Bony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_MARROW, "Bony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_BRITTLE_BONES, "Bony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_COMPOUND_FRACTURE, "Bony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SKELETON_KEY, "Bony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_BOOK_OF_THE_DEAD, "Bony")
    EID:createTransformation("Stony","Stony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SMALL_ROCK, "Stony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_GNAWED_LEAF, "Stony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_LUMP_OF_COAL, "Stony")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_FLAT_STONE, "Stony")
    EID:assignTransformation("trinket", TrinketType.TRINKET_SHINY_ROCK, "Stony")
    EID:assignTransformation("trinket", TrinketType.TRINKET_LUCKY_ROCK, "Stony")
    EID:assignTransformation("trinket", TrinketType.TRINKET_CALLUS, "Stony")
    EID:createTransformation("Duality","Duality")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_DARK_PRINCESS_CROWN, "Duality")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_CROWN_OF_LIGHT, "Duality")
    EID:assignTransformation("trinket", TrinketType.TRINKET_LEFT_HAND, "Duality")
    EID:assignTransformation("trinket", TrinketType.TRINKET_RIGHT_HAND, "Duality")
    EID:createTransformation("Cricket","Cricket")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_CRICKETS_BODY, "Cricket")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_CRICKETS_COLLAR, "Cricket")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_CRICKETS_PAW, "Cricket")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_MAXS_HEAD, "Cricket")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_DOG_TOOTH, "Cricket")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_DINNER, "Cricket")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_SNACK, "Cricket")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_DESSERT, "Cricket")
    EID:createTransformation("Tammy","Tammy")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TAMMYS_BODY, "Tammy")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TAMMYS_EYES, "Tammy")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TAMMYS_HEAD, "Tammy")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TAMMYS_PAW, "Tammy")
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_TAMMYS_TAIL, "Tammy")
    EID:assignTransformation("trinket", TrinketType.TRINKET_BOBS_BLADDER, EID.TRANSFORMATION["BOB"])
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_FARTING_BABY, EID.TRANSFORMATION["POOP"])
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_NUMBER_ONE, EID.TRANSFORMATION["POOP"])
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_NUMBER_TWO, EID.TRANSFORMATION["POOP"])
    EID:assignTransformation("collectible", CollectibleType.COLLECTIBLE_BUTT_BOMBS, EID.TRANSFORMATION["POOP"])
end

function ISR:onStart()
    if ISR:HasData() then
        ISR.GameState = json.decode(ISR:LoadData())
        if ISR.GameState.Timer ~= nil then
            ISR.Timer = ISR.GameState.Timer
        end
        if ISR.GameState.Transformations ~= nil then
            ISR.Transformations = ISR.GameState.Transformations
        end
        if ISR.GameState.TintedGround ~= nil then
            ISR.TintedGround = ISR.GameState.TintedGround
        end
        if ISR.GameState.hasCrap ~= nil then
            ISR.hasCrap = ISR.GameState.hasCrap
        end
        if ISR.GameState.hasBob ~= nil then
            ISR.hasBob = ISR.GameState.hasBob
        end
        if ISR.GameState.hasMagneto ~= nil then
            ISR.hasMagneto = ISR.GameState.hasMagneto
        end
        if ISR.GameState.hasGreed ~= nil then
            ISR.hasGreed = ISR.GameState.hasGreed
        end
        if ISR.GameState.hasCyborg ~= nil then
            ISR.hasCyborg = ISR.GameState.hasCyborg
        end
        if ISR.GameState.hasButcher ~= nil then
            ISR.hasButcher = ISR.GameState.hasButcher
        end
        if ISR.GameState.hasAstrologer ~= nil then
            ISR.hasAstrologer = ISR.GameState.hasAstrologer
        end
        if ISR.GameState.hasAlchemist ~= nil then
            ISR.hasAlchemist = ISR.GameState.hasAlchemist
        end
        if ISR.GameState.hasHolding ~= nil then
            ISR.hasHolding = ISR.GameState.hasHolding
        end
        if ISR.GameState.hasDelver ~= nil then
            ISR.hasDelver = ISR.GameState.hasDelver
        end
        if ISR.GameState.hasDealer ~= nil then
            ISR.hasDealer = ISR.GameState.hasDealer
        end
        if ISR.GameState.hasTrick ~= nil then
            ISR.hasTrick = ISR.GameState.hasTrick
        end
        if ISR.GameState.hasBony ~= nil then
            ISR.hasBony = ISR.GameState.hasBony
        end
        if ISR.GameState.hasStony ~= nil then
            ISR.hasStony = ISR.GameState.hasStony
        end
        if ISR.GameState.hasEternal ~= nil then
            ISR.hasEternal = ISR.GameState.hasEternal
        end
        if ISR.GameState.hasCricket ~= nil then
            ISR.hasCricket = ISR.GameState.hasCricket
        end
        if ISR.GameState.hasTammy ~= nil then
            ISR.hasTammy = ISR.GameState.hasTammy
        end
        if ISR.GameState.hasSackOfKeys ~= nil then
            ISR.hasSackOfKeys = ISR.GameState.hasSackOfKeys
        end
        if ISR.GameState.hasBagOfHolding ~= nil then
            ISR.hasBagOfHolding = ISR.GameState.hasBagOfHolding
        end
        if ISR.GameState.hideCollectible ~= nil then
            ISR.hideCollectible = ISR.GameState.hideCollectible
        end
        if ISR.GameState.cricketsPaw ~= nil then
            ISR.cricketsPaw = ISR.GameState.cricketsPaw
        end
        if ISR.GameState.cricketsCollar ~= nil then
            ISR.cricketsCollar = ISR.GameState.cricketsCollar
        end
        if ISR.MCMLoaded then
            local savedISRConfig = ISR.GameState.Config
            if savedISRConfig.Version == ISR.Config.Version then
                for key, value in pairs(ISR.Config) do
                    ISR.Config[key] = savedISRConfig[key]
                end
            elseif savedISRConfig.Version ~= nil and savedISRConfig.Version ~= ISR.Config.Version then
                for key, value in pairs(ISR.Config) do
                    if savedISRConfig[key] ~= nil then
                        ISR.Config[key] = savedISRConfig[key]
                    end
                end
                ISR.Config.Version = "1.7"
            end
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, ISR.onStart)

function ISR:onExit()
    ISR.GameState.cricketsCollar = ISR.cricketsCollar
    ISR.GameState.cricketsPaw = ISR.cricketsPaw
    ISR.GameState.hideCollectible = ISR.hideCollectible
    ISR.GameState.hasBagOfHolding = ISR.hasBagOfHolding
    ISR.GameState.hasSackOfKeys = ISR.hasSackOfKeys
    ISR.GameState.Transformations = ISR.Transformations
    ISR.GameState.TintedGround = ISR.TintedGround
    ISR.GameState.hasCrap = ISR.hasCrap
    ISR.GameState.hasBob = ISR.hasBob
    ISR.GameState.hasMagneto = ISR.hasMagneto
    ISR.GameState.hasGreed = ISR.hasGreed
    ISR.GameState.hasCyborg = ISR.hasCyborg
    ISR.GameState.hasButcher = ISR.hasButcher
    ISR.GameState.hasAstrologer = ISR.hasAstrologer
    ISR.GameState.hasAlchemist = ISR.hasAlchemist
    ISR.GameState.hasHolding = ISR.hasHolding
    ISR.GameState.hasDelver = ISR.hasDelver
    ISR.GameState.hasDealer = ISR.hasDealer
    ISR.GameState.hasTrick = ISR.hasTrick
    ISR.GameState.hasBony = ISR.hasBony
    ISR.GameState.hasStony = ISR.hasStony
    ISR.GameState.hasEternal = ISR.hasEternal
    ISR.GameState.hasCricket = ISR.hasCricket
    ISR.GameState.hasTammy = ISR.hasTammy
    ISR.GameState.Config = ISR.Config
    ISR.GameState.Pills = ISR.Pills
    ISR.GameState.Timer = ISR.Timer
    ISR:SaveData(json.encode(ISR.GameState))
end

ISR:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, ISR.onExit)
ISR:AddCallback(ModCallbacks.MC_POST_GAME_END, ISR.onExit)

function ISR:onUpdate()
    --------------------
    -- Initialization --
    --------------------
    if Game:GetFrameCount() == 1 then
        for playerNum = 1, Game:GetNumPlayers() do
            local player = Game:GetPlayer(playerNum - 1)
            -----------------------
            -- Starting Trinkets --
            -----------------------
            if ISR.Config["StartingTrinketsIsaac"] and player:GetPlayerType() == PlayerType.PLAYER_ISAAC and player:GetTrinket(0) == 0 then
                -- Innate: Golden Horse Shoe
                -- Holding: Bag Lunch
                player:AddTrinket(TrinketType.TRINKET_GOLDEN_HORSE_SHOE)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_BAG_LUNCH)
            elseif ISR.Config["StartingTrinketsMagdalene"] and player:GetPlayerType() == PlayerType.PLAYER_MAGDALENA and player:GetTrinket(0) == 0 then
                -- Innate: Purple Heart
                -- Holding: Rosary Bead
                player:AddTrinket(TrinketType.TRINKET_PURPLE_HEART)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_ROSARY_BEAD)
            elseif ISR.Config["StartingTrinketsCain"] and player:GetPlayerType() == PlayerType.PLAYER_CAIN and player:GetTrinket(0) == 0 then
                -- Innate: Lucky Toe
                -- Holding: Paper Clip
                player:AddTrinket(TrinketType.TRINKET_LUCKY_TOE)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
            elseif ISR.Config["StartingTrinketsJudas"] and player:GetPlayerType() == PlayerType.PLAYER_JUDAS and player:GetTrinket(0) == 0 then
                -- Innate: Black Feather
                -- Holding: Judas' Tongue
                player:AddTrinket(TrinketType.TRINKET_BLACK_FEATHER)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_JUDAS_TONGUE)
            elseif ISR.Config["StartingTrinketsXXX"] and player:GetPlayerType() == PlayerType.PLAYER_XXX and player:GetTrinket(0) == 0 then
                -- Innate: Meconium
                -- Holding: Petrified Poop
                player:AddTrinket(TrinketType.TRINKET_MECONIUM)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_PETRIFIED_POOP)
            elseif ISR.Config["StartingTrinketsEve"] and player:GetPlayerType() == PlayerType.PLAYER_EVE and player:GetTrinket(0) == 0 then
                -- Innate: Eve's Bird Foot
                -- Holding: Wish Bone
                player:AddTrinket(TrinketType.TRINKET_EVES_BIRD_FOOT)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_WISH_BONE)
            elseif ISR.Config["StartingTrinketsSamson"] and player:GetPlayerType() == PlayerType.PLAYER_SAMSON and player:GetTrinket(0) == 0 then
                -- Innate: Samson's Lock
                -- Holding: Child's Heart
                player:AddTrinket(TrinketType.TRINKET_SAMSONS_LOCK)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
            elseif ISR.Config["StartingTrinketsAzazel"] and player:GetPlayerType() == PlayerType.PLAYER_AZAZEL and player:GetTrinket(0) == 0 then
                -- Innate: Tape Worm
                -- Holding: Daemon's Tail
                player:AddTrinket(TrinketType.TRINKET_TAPE_WORM)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_DAEMONS_TAIL)
            elseif ISR.Config["StartingTrinketsLazarus"] and player:GetPlayerType() == PlayerType.PLAYER_LAZARUS and player:GetTrinket(0) == 0 then
                -- Innate: Lost Cork
                -- Holding: Bible Tract
                player:AddTrinket(TrinketType.TRINKET_LOST_CORK)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_BIBLE_TRACT)
            elseif ISR.Config["StartingTrinketsEden"] and player:GetPlayerType() == PlayerType.PLAYER_EDEN and player:GetTrinket(0) == 0 then
                -- Innate: Error 404
                player:AddTrinket(TrinketType.TRINKET_ERROR)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
            elseif ISR.Config["StartingTrinketsLost"] and player:GetPlayerType() == PlayerType.PLAYER_THELOST and player:GetTrinket(0) == 0 then
                -- Innate: Faded Polaroid
                -- Holding: Fragmented Card
                player:AddTrinket(TrinketType.TRINKET_FADED_POLAROID)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_FRAGMENTED_CARD)
                -- Cracked D4
                player:RemoveCollectible(CollectibleType.COLLECTIBLE_D4)
                player:AddCollectible(CollectibleType.COLLECTIBLE_CRACKED_D4, 12, false)
            elseif ISR.Config["StartingTrinketsLilith"] and player:GetPlayerType() == PlayerType.PLAYER_LILITH and player:GetTrinket(0) == 0 then
                -- Innate: Child Leash
                -- Holding: Blind Rage
                player:AddTrinket(TrinketType.TRINKET_CHILD_LEASH)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_BLIND_RAGE)
            elseif ISR.Config["StartingTrinketsKeeper"] and player:GetPlayerType() == PlayerType.PLAYER_KEEPER and player:GetTrinket(0) == 0 then
                -- Innate: Rib of Greed
                -- Holding: Store Key
                player:AddTrinket(TrinketType.TRINKET_RIB_OF_GREED)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
            elseif ISR.Config["StartingTrinketsApollyon"] and player:GetPlayerType() == PlayerType.PLAYER_APOLLYON and player:GetTrinket(0) == 0 then
                -- Innate: Callus
                -- Holding: Locus of Conquest
                player:AddTrinket(TrinketType.TRINKET_CALLUS)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_LOCUST_OF_CONQUEST)
            elseif ISR.Config["StartingTrinketsForgotten"] and player:GetPlayerType() == PlayerType.PLAYER_THEFORGOTTEN and player:GetTrinket(0) == 0 then
                -- Innate: Crow Heart
                -- Holding: Finger Bone
                player:AddTrinket(TrinketType.TRINKET_CROW_HEART)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_FINGER_BONE)            
            end
        end
    end
    if Game:GetFrameCount() == 2 then
        ResetVariables()
    end
    if Game:GetFrameCount() == 3 then
        ToggleItems()
    end
    if Game:GetFrameCount() > 5 then
        for playerNum = 1, Game:GetNumPlayers() do
            local player = Game:GetPlayer(playerNum - 1)
            ISR.EntityList.Bombs = Isaac.FindByType(EntityType.ENTITY_EFFECT, EffectVariant.BOMB_EXPLOSION, -1, false, false)
            ISR.EntityList.Familiars = Isaac.FindByType(EntityType.ENTITY_FAMILIAR, -1, -1, false, false)
            ISR.EntityList.Pills = Isaac.FindByType(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_PILL, -1, false, false)
            ISR.EntityList.Pickups = Isaac.FindByType(EntityType.ENTITY_PICKUP, -1, -1, false, false)
            ISR.EntityList.Enemies = Isaac.FindInRadius(Vector(640, 560), 1050, EntityPartition.ENEMY)
            local room = Game:GetRoom()
            ISR.Timer = ISR.Timer + 1
            --------------------
            -- Hide Animation --
            --------------------
            if ISR.hideCollectible > 0 then
                ISR.hideCollectible = ISR.hideCollectible - 1
                if ISR.hideCollectible == 0 then
                    player:AnimateCollectible(player:GetActiveItem(), "HideItem", "PlayerPickup")
                end
            end
            --------------------
            -- Eternal Chests --
            --------------------
            if ISR.Config["doEternalChests"] then
                for _, entity in pairs(Isaac.FindByType(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_ETERNALCHEST, -1, false, false)) do
                    local data = entity:GetData()
                    if data.EternalChestTimer == nil then
                        data.EternalChestTimer = 0
                    elseif entity.SubType == ChestSubType.CHEST_CLOSED then
                        data.EternalChestTimer = 0
                    elseif entity.SubType == ChestSubType.CHEST_OPENED then
                        data.EternalChestTimer = data.EternalChestTimer + 1
                    end
                    if data.EternalChestTimer > 60 then
                        data.EternalChestTimer = 0
                        if player:HasGoldenKey() then
                            player:RemoveGoldenKey()
                        end
                        entity:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_ETERNALCHEST, -1, false)
                        if math.random(100) < 8 then
                            player:AnimateTeleport(0)
                            Isaac.ExecuteCommand("goto s.angel")
                        end
                    end
                end
            end
            ----------------------------------
            -- The Conjoined Transformation --
            ----------------------------------
            if ISR.Transformations.hasConjoined and not player:HasPlayerForm(PlayerForm.PLAYERFORM_BABY) then
                ISR.Transformations.hasConjoined = false
            end
            if player:HasPlayerForm(PlayerForm.PLAYERFORM_BABY) and not ISR.Transformations.hasConjoined and ISR.Config["doConjoined"] then
                ISR.Transformations.hasConjoined = true
                player:AddCollectible(CollectibleType.COLLECTIBLE_BELLY_BUTTON, 1, false)
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET, TrinketType.TRINKET_CANCER, player.Position, Vector(0,0), player)
            end
            --------------------------------
            -- The Duality Transformation --
            --------------------------------
            if (player:GetTrinket(0) == TrinketType.TRINKET_RIGHT_HAND and player:GetTrinket(1) == TrinketType.TRINKET_LEFT_HAND) or (player:GetTrinket(0) == TrinketType.TRINKET_LEFT_HAND and player:GetTrinket(1) == TrinketType.TRINKET_RIGHT_HAND) and ISR.Transformations.hasDuality == false and ISR.Config["doRightHand"] and ISR.Config["doDuality"] then
                player:TryRemoveTrinket(TrinketType.TRINKET_RIGHT_HAND)
                player:TryRemoveTrinket(TrinketType.TRINKET_LEFT_HAND)
                SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                player:UsePill(PillEffect.PILLEFFECT_DUALITY, PillColor.PILL_NULL)
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_EUCHARIST) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_EUCHARIST, 0, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_DUALITY) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_DUALITY, 0, false)
                end
                ISR.Transformations.hasDuality = true
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_DARK_PRINCESS_CROWN) and player:HasCollectible(CollectibleType.COLLECTIBLE_CROWN_OF_LIGHT) and ISR.Transformations.hasDuality == false and ISR.Config["doDuality"] then
                SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                player:UsePill(PillEffect.PILLEFFECT_DUALITY, PillColor.PILL_NULL)
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_EUCHARIST) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_EUCHARIST, 0, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_DUALITY) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_DUALITY, 0, false)
                end
                ISR.Transformations.hasDuality = true
            end
            ------------------------------
            -- The Adult Transformation --
            ------------------------------
            if ISR.Transformations.hasAdult and not player:HasPlayerForm(PlayerForm.PLAYERFORM_ADULTHOOD) then
                ISR.Transformations.hasAdult = false
            end
            if player:HasPlayerForm(PlayerForm.PLAYERFORM_ADULTHOOD) and not ISR.Transformations.hasAdult and ISR.Config["doAdult"] then
                ISR.Transformations.hasAdult = true
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_DEPRESSION) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_DEPRESSION, 1, false)
                end
            end
            --------------------------------
            -- The Fun Guy Transformation --
            --------------------------------
            if ISR.Transformations.hasMushroom and not player:HasPlayerForm(PlayerForm.PLAYERFORM_MUSHROOM) then
                ISR.Transformations.hasMushroom = false
            end
            if player:HasPlayerForm(PlayerForm.PLAYERFORM_MUSHROOM) and not ISR.Transformations.hasMushroom and ISR.Config["doMushroom"] then
                ISR.Transformations.hasMushroom = true
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_ONE_UP) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_ONE_UP, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_MAGIC_MUSHROOM) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_MAGIC_MUSHROOM, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_MINI_MUSH) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_MINI_MUSH, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_ODD_MUSHROOM_RATE) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_ODD_MUSHROOM_RATE, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_ODD_MUSHROOM_DAMAGE) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_ODD_MUSHROOM_DAMAGE, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_BLUE_CAP) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_BLUE_CAP, 1, false)
                end
            end
            --------------------------------
            -- The Oh Crap Transformation --
            --------------------------------
            if not ISR.Transformations.hasCrap and ISR.Config["doCrap"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BUTT_BOMBS) and not ISR.hasCrap.runOnce_A then
                    ISR.hasCrap.counter = ISR.hasCrap.counter + 1
                    ISR.hasCrap.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_NUMBER_ONE) and not ISR.hasCrap.runOnce_B then
                    ISR.hasCrap.counter = ISR.hasCrap.counter + 1
                    ISR.hasCrap.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_NUMBER_TWO) and not ISR.hasCrap.runOnce_C then
                    ISR.hasCrap.counter = ISR.hasCrap.counter + 1
                    ISR.hasCrap.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_POOP) and not ISR.hasCrap.runOnce_D then
                    ISR.hasCrap.counter = ISR.hasCrap.counter + 1
                    ISR.hasCrap.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_E_COLI) and not ISR.hasCrap.runOnce_E then
                    ISR.hasCrap.counter = ISR.hasCrap.counter + 1
                    ISR.hasCrap.runOnce_E = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_FLUSH) and not ISR.hasCrap.runOnce_F then
                    ISR.hasCrap.counter = ISR.hasCrap.counter + 1
                    ISR.hasCrap.runOnce_F = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_FARTING_BABY) and not ISR.hasCrap.runOnce_G then
                    ISR.hasCrap.counter = ISR.hasCrap.counter + 1
                    ISR.hasCrap.runOnce_G = true
                end
                if ISR.hasCrap.counter > 2 then
                    local currentActiveItem = player:GetActiveItem()
                    local currentActiveCharge = player:GetActiveCharge()
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_E_COLI) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_E_COLI, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_POOP) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_POOP, 10, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_FLUSH) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_FLUSH, 10, false)
                    end
                    player:AddCollectible(currentActiveItem, currentActiveCharge, false)
                end
            end
            if player:HasPlayerForm(PlayerForm.PLAYERFORM_POOP) and not ISR.Transformations.hasCrap and ISR.Config["doCrap"] then
                ISR.Transformations.hasCrap = true
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_BUTT_BOMBS) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_BUTT_BOMBS, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_NUMBER_ONE) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_NUMBER_ONE, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_NUMBER_TWO) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_NUMBER_TWO, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_E_COLI) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_E_COLI, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_FARTING_BABY) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_FARTING_BABY, 1, false)
                end
            end
            ------------------------------------
            -- The Spider Baby Transformation --
            ------------------------------------
            if ISR.Transformations.hasSpiderBaby and not player:HasPlayerForm(PlayerForm.PLAYERFORM_SPIDERBABY) then
                ISR.Transformations.hasSpiderBaby = false
            end
            if player:HasPlayerForm(PlayerForm.PLAYERFORM_SPIDERBABY) and not ISR.Transformations.hasSpiderBaby and ISR.Config["doSpiderBaby"] then
                ISR.Transformations.hasSpiderBaby = true
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_SPIDER_BITE) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_SPIDER_BITE, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_SPIDER_MOD) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_SPIDER_MOD, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_SPIDERBABY) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_SPIDERBABY, 1, false)
                end
            end
            ----------------------------
            -- The Bob Transformation --
            ----------------------------
            if not ISR.Transformations.hasBob and ISR.Config["doBob"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BOBS_BRAIN) and not ISR.hasBob.runOnce_A then
                    ISR.hasBob.counter = ISR.hasBob.counter + 1
                    ISR.hasBob.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BOBS_CURSE) and not ISR.hasBob.runOnce_B then
                    ISR.hasBob.counter = ISR.hasBob.counter + 1
                    ISR.hasBob.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_IPECAC) and not ISR.hasBob.runOnce_C then
                    ISR.hasBob.counter = ISR.hasBob.counter + 1
                    ISR.hasBob.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BOBS_ROTTEN_HEAD) and not ISR.hasBob.runOnce_D then
                    ISR.hasBob.counter = ISR.hasBob.counter + 1
                    ISR.hasBob.runOnce_D = true
                end
                if player:HasTrinket(TrinketType.TRINKET_BOBS_BLADDER) and not ISR.hasBob.runOnce_E then
                    ISR.hasBob.counter = ISR.hasBob.counter + 1
                    ISR.hasBob.runOnce_E = true
                end
                if ISR.hasBob.counter > 2 then
                    local currentActiveItem = player:GetActiveItem()
                    local currentActiveCharge = player:GetActiveCharge()
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_BOBS_CURSE) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_BOBS_CURSE, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_IPECAC) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_IPECAC, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_BOBS_ROTTEN_HEAD) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_BOBS_ROTTEN_HEAD, 10, false)
                    end
                    player:AddCollectible(currentActiveItem, currentActiveCharge, false)
                end
            end
            if player:HasPlayerForm(PlayerForm.PLAYERFORM_BOB) and not ISR.Transformations.hasBob and ISR.Config["doBob"] then
                ISR.Transformations.hasBob = true
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_BOBS_BRAIN) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_BOBS_BRAIN, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_BOBS_CURSE) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_BOBS_CURSE, 1, false)
                end
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_IPECAC) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_IPECAC, 1, false)
                end
                if not player:HasTrinket(TrinketType.TRINKET_BOBS_BLADDER) then
                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET, TrinketType.TRINKET_BOBS_BLADDER, player.Position, Vector(0,0), player)
                end
            end
            ---------------------------------
            -- The Seraphim Transformation --
            ---------------------------------
            if ISR.Transformations.hasSeraphim and not player:HasPlayerForm(PlayerForm.PLAYERFORM_ANGEL) then
                ISR.Transformations.hasSeraphim = false
            end
            if player:HasPlayerForm(PlayerForm.PLAYERFORM_ANGEL) and not ISR.Transformations.hasSeraphim and ISR.Config["doSeraphim"] then
                ISR.Transformations.hasSeraphim = true
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_SOUL) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_SOUL, 1, false)
                end
            end
            ---------------------------------
            -- The Beelzbub Transformation --
            ---------------------------------
            if ISR.Transformations.hasBeelzbub and not player:HasPlayerForm(PlayerForm.PLAYERFORM_LORD_OF_THE_FLIES) then
                ISR.Transformations.hasBeelzbub = false
            end
            if player:HasPlayerForm(PlayerForm.PLAYERFORM_LORD_OF_THE_FLIES) and not ISR.Transformations.hasBeelzbub and ISR.Config["doBeelzbub"] then
                ISR.Transformations.hasBeelzbub = true
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_MULLIGAN) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_MULLIGAN, 1, false)
                end
                player:AddCollectible(CollectibleType.COLLECTIBLE_HALO_OF_FLIES, 1, false)
                player:AddCollectible(CollectibleType.COLLECTIBLE_HALO_OF_FLIES, 1, false)
            end
            --------------------------------
            -- The Magneto Transformation --
            --------------------------------
            if not ISR.Transformations.hasMagneto and ISR.Config["doMagneto"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MAGNETO) and not ISR.hasMagneto.runOnce_A then
                    ISR.hasMagneto.counter = ISR.hasMagneto.counter + 1
                    ISR.hasMagneto.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_STRANGE_ATTRACTOR) and not ISR.hasMagneto.runOnce_B then
                    ISR.hasMagneto.counter = ISR.hasMagneto.counter + 1
                    ISR.hasMagneto.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_METAL_PLATE) and not ISR.hasMagneto.runOnce_C then
                    ISR.hasMagneto.counter = ISR.hasMagneto.counter + 1
                    ISR.hasMagneto.runOnce_C = true
                end
                if player:HasTrinket(TrinketType.TRINKET_SUPER_MAGNET) and not ISR.hasMagneto.runOnce_D then
                    ISR.hasMagneto.counter = ISR.hasMagneto.counter + 1
                    ISR.hasMagneto.runOnce_D = true
                end
                if player:HasTrinket(TrinketType.TRINKET_BROKEN_MAGNET) and not ISR.hasMagneto.runOnce_E then
                    ISR.hasMagneto.counter = ISR.hasMagneto.counter + 1
                    ISR.hasMagneto.runOnce_E = true
                end
                if ISR.hasMagneto.counter > 2 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/magneto.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_MAGNETO, PillColor.PILL_NULL)
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_MAGNETO) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_MAGNETO, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_STRANGE_ATTRACTOR) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_STRANGE_ATTRACTOR, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_METAL_PLATE) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_METAL_PLATE, 1, false)
                    end
                    if not player:HasTrinket(TrinketType.TRINKET_SUPER_MAGNET) then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET, TrinketType.TRINKET_SUPER_MAGNET, player.Position, Vector(0,0), player)
                    end
                    ISR.Transformations.hasMagneto = true
                end
            end
            if ISR.Transformations.hasMagneto == true and ISR.Config["doMagneto"] then
                for _, entity in ipairs(Isaac.FindInRadius(player.Position, 40, EntityPartition.BULLET)) do
                    if entity.SpawnerType ~= EntityType.ENTITY_PLAYER and entity:GetData().initMagneto == nil then
                        entity:GetData().initMagneto = 1
                        entity = entity:ToProjectile()
                        entity.Velocity = -entity.Velocity * 0.8
                        entity.Parent = player
                        entity.SpawnerEntity = player
                        entity:AddProjectileFlags(ProjectileFlags.CANT_HIT_PLAYER | ProjectileFlags.ANY_HEIGHT_ENTITY_HIT | ProjectileFlags.HIT_ENEMIES)
                    end
                end
            end
            --------------------------
            -- Greed Transformation --
            --------------------------
            if not ISR.Transformations.hasGreed and ISR.Config["doGreed"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MONEY_IS_POWER) and not ISR.hasGreed.runOnce_A then
                    ISR.hasGreed.counter = ISR.hasGreed.counter + 1
                    ISR.hasGreed.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_DOLLAR) and not ISR.hasGreed.runOnce_B then
                    ISR.hasGreed.counter = ISR.hasGreed.counter + 1
                    ISR.hasGreed.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_QUARTER) and not ISR.hasGreed.runOnce_C then
                    ISR.hasGreed.counter = ISR.hasGreed.counter + 1
                    ISR.hasGreed.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_EYE_OF_GREED) and not ISR.hasGreed.runOnce_D then
                    ISR.hasGreed.counter = ISR.hasGreed.counter + 1
                    ISR.hasGreed.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_GREEDS_GULLET) and not ISR.hasGreed.runOnce_E then
                    ISR.hasGreed.counter = ISR.hasGreed.counter + 1
                    ISR.hasGreed.runOnce_E = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_HEAD_OF_THE_KEEPER) and not ISR.hasGreed.runOnce_F then
                    ISR.hasGreed.counter = ISR.hasGreed.counter + 1
                    ISR.hasGreed.runOnce_F = true
                end
                if ISR.hasGreed.counter > 2 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/greed.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_GREED, PillColor.PILL_NULL)
                    local trinket0 = player:GetTrinket(0)
                    if trinket0 ~= 0 then
                        player:TryRemoveTrinket(trinket0)
                    end
                    local trinket1 = player:GetTrinket(1)
                    if trinket1 ~= 0 then
                        player:TryRemoveTrinket(trinket1)
                    end
                    player:AddTrinket(TrinketType.TRINKET_RIB_OF_GREED)
                    player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                    player:AddTrinket(TrinketType.TRINKET_SILVER_DOLLAR)
                    player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                    if trinket0 ~= 0 then
                        player:AddTrinket(trinket0)
                    end
                    if trinket1 ~= 0 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET, trinket1, player.Position, Vector(0,0), player)
                    end
                    ISR.Transformations.hasGreed = true
                end
            end
            ---------------------------
            -- Cyborg Transformation --
            ---------------------------
            if not ISR.Transformations.hasCyborg and ISR.Config["doCyborg"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BATTERY) and not ISR.hasCyborg.runOnce_A then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_NINE_VOLT) and not ISR.hasCyborg.runOnce_B then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_CAR_BATTERY) and not ISR.hasCyborg.runOnce_C then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TECH_5) and not ISR.hasCyborg.runOnce_D then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TECH_X) and not ISR.hasCyborg.runOnce_E then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_E = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TECHNOLOGY) and not ISR.hasCyborg.runOnce_F then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_F = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TECHNOLOGY_2) and not ISR.hasCyborg.runOnce_G then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_G = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TECHNOLOGY_ZERO) and not ISR.hasCyborg.runOnce_H then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_H = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_ROBO_BABY) and not ISR.hasCyborg.runOnce_I then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_I = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_ROBO_BABY_2) and not ISR.hasCyborg.runOnce_J then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_J = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SPIDER_MOD) and not ISR.hasCyborg.runOnce_K then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_K = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_METAL_PLATE) and not ISR.hasCyborg.runOnce_L then
                    ISR.hasCyborg.counter = ISR.hasCyborg.counter + 1
                    ISR.hasCyborg.runOnce_L = true
                end
                if ISR.hasCyborg.counter > 5 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/cyborg.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_CYBORG, PillColor.PILL_NULL)
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_METAL_PLATE) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_METAL_PLATE, 1, false)
                    end
                    ISR.Transformations.hasCyborg = true
                end
            end
            ----------------------------
            -- Butcher Transformation --
            ----------------------------
            if not ISR.Transformations.hasButcher and ISR.Config["doButcher"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_HEAD_OF_THE_KEEPER) and not ISR.hasButcher.runOnce_A then
                    ISR.hasButcher.counter = ISR.hasButcher.counter + 1
                    ISR.hasButcher.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_HEAD_OF_KRAMPUS) and not ISR.hasButcher.runOnce_B then
                    ISR.hasButcher.counter = ISR.hasButcher.counter + 1
                    ISR.hasButcher.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_GUPPYS_HEAD) and not ISR.hasButcher.runOnce_C then
                    ISR.hasButcher.counter = ISR.hasButcher.counter + 1
                    ISR.hasButcher.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_HEAD) and not ISR.hasButcher.runOnce_D then
                    ISR.hasButcher.counter = ISR.hasButcher.counter + 1
                    ISR.hasButcher.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BOBS_ROTTEN_HEAD) and not ISR.hasButcher.runOnce_E then
                    ISR.hasButcher.counter = ISR.hasButcher.counter + 1
                    ISR.hasButcher.runOnce_E = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_GOAT_HEAD) and not ISR.hasButcher.runOnce_F then
                    ISR.hasButcher.counter = ISR.hasButcher.counter + 1
                    ISR.hasButcher.runOnce_F = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MAXS_HEAD) and not ISR.hasButcher.runOnce_G then
                    ISR.hasButcher.counter = ISR.hasButcher.counter + 1
                    ISR.hasButcher.runOnce_G = true
                end
                if ISR.hasButcher.counter > 4 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/butcher.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_BUTCHER, PillColor.PILL_NULL)
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_BLOODY_LUST) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_BLOODY_LUST, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_LUSTY_BLOOD) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_LUSTY_BLOOD, 1, false)
                    end
                    ISR.Transformations.hasButcher = true
                end
            end
            -------------------------------
            -- Astrologer Transformation --
            -------------------------------
            if not ISR.Transformations.hasAstrologer and ISR.Config["doAstrology"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_ZODIAC) and not ISR.hasAstrologer.runOnce_A then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_PISCES) and not ISR.hasAstrologer.runOnce_B then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_AQUARIUS) and not ISR.hasAstrologer.runOnce_C then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_LEO) and not ISR.hasAstrologer.runOnce_D then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_CANCER) and not ISR.hasAstrologer.runOnce_E then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_E = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_CAPRICORN) and not ISR.hasAstrologer.runOnce_F then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_F = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_GEMINI) and not ISR.hasAstrologer.runOnce_G then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_G = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_LIBRA) and not ISR.hasAstrologer.runOnce_H then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_H = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SAGITTARIUS) and not ISR.hasAstrologer.runOnce_I then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_I = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TAURUS) and not ISR.hasAstrologer.runOnce_J then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_J = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_VIRGO) and not ISR.hasAstrologer.runOnce_K then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_K = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_ARIES) and not ISR.hasAstrologer.runOnce_L then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_L = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SCORPIO) and not ISR.hasAstrologer.runOnce_M then
                    ISR.hasAstrologer.counter = ISR.hasAstrologer.counter + 1
                    ISR.hasAstrologer.runOnce_M = true
                end
                if ISR.hasAstrologer.counter > 4 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/astrologer.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_ASTROLOGER, PillColor.PILL_NULL)
                    ISR.Transformations.hasAstrologer = true
                end
            end
            -------------------------------------
            -- Master Alchemist Transformation --
            -------------------------------------
            if not ISR.Transformations.hasAlchemist and ISR.Config["doAlchemist"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SOUL) and not ISR.hasAlchemist.runOnce_A then
                    ISR.hasAlchemist.counter = ISR.hasAlchemist.counter + 1
                    ISR.hasAlchemist.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BODY) and not ISR.hasAlchemist.runOnce_B then
                    ISR.hasAlchemist.counter = ISR.hasAlchemist.counter + 1
                    ISR.hasAlchemist.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MIND) and not ISR.hasAlchemist.runOnce_C then
                    ISR.hasAlchemist.counter = ISR.hasAlchemist.counter + 1
                    ISR.hasAlchemist.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_PHILOSOPHERS_STONE) and not ISR.hasAlchemist.runOnce_D then
                    ISR.hasAlchemist.counter = ISR.hasAlchemist.counter + 1
                    ISR.hasAlchemist.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_CHAOS) and not ISR.hasAlchemist.runOnce_E then
                    ISR.hasAlchemist.counter = ISR.hasAlchemist.counter + 1
                    ISR.hasAlchemist.runOnce_E = true
                end
                if ISR.hasAlchemist.counter > 2 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/alchemist.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_ALCHEMIST, PillColor.PILL_NULL)
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_SOUL) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_SOUL, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_BODY) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_BODY, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_MIND) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_MIND, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_CHAOS) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_CHAOS, 1, false)
                    end
                    ISR.Transformations.hasAlchemist = true
                end
            end
            -----------------------------------
            -- Bag of Holding Transformation --
            -----------------------------------
            if not ISR.Transformations.hasHolding and ISR.Config["doHolding"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_LIL_CHEST) and not ISR.hasHolding.runOnce_A then
                    ISR.hasHolding.counter = ISR.hasHolding.counter + 1
                    ISR.hasHolding.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_KEYS) and not ISR.hasHolding.runOnce_B then
                    ISR.hasHolding.counter = ISR.hasHolding.counter + 1
                    ISR.hasHolding.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BOMB_BAG) and not ISR.hasHolding.runOnce_C then
                    ISR.hasHolding.counter = ISR.hasHolding.counter + 1
                    ISR.hasHolding.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_RUNE_BAG) and not ISR.hasHolding.runOnce_D then
                    ISR.hasHolding.counter = ISR.hasHolding.counter + 1
                    ISR.hasHolding.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_PENNIES) and not ISR.hasHolding.runOnce_E then
                    ISR.hasHolding.counter = ISR.hasHolding.counter + 1
                    ISR.hasHolding.runOnce_E = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_SACKS) and not ISR.hasHolding.runOnce_F then
                    ISR.hasHolding.counter = ISR.hasHolding.counter + 1
                    ISR.hasHolding.runOnce_F = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MYSTERY_SACK) and not ISR.hasHolding.runOnce_G then
                    ISR.hasHolding.counter = ISR.hasHolding.counter + 1
                    ISR.hasHolding.runOnce_G = true
                end
                if ISR.hasHolding.counter > 3 then
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_HOLDING, PillColor.PILL_NULL)
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_BAG_OF_HOLDING) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_BAG_OF_HOLDING, 1, false)
                        player:AddCacheFlags(CacheFlag.CACHE_FAMILIARS)
                        player:EvaluateItems()
                    end
                    ISR.Transformations.hasHolding = true
                end
            end
            if ISR.Transformations.hasHolding == true and ISR.Config["doHolding"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_LIL_CHEST) and not ISR.hasHolding.runOnce_A then
                    ISR.hasHolding.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_KEYS) and not ISR.hasHolding.runOnce_B then
                    ISR.hasHolding.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BOMB_BAG) and not ISR.hasHolding.runOnce_C then
                    ISR.hasHolding.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_RUNE_BAG) and not ISR.hasHolding.runOnce_D then
                    ISR.hasHolding.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_PENNIES) and not ISR.hasHolding.runOnce_E then
                    ISR.hasHolding.runOnce_E = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_SACKS) and not ISR.hasHolding.runOnce_F then
                    ISR.hasHolding.runOnce_F = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MYSTERY_SACK) and not ISR.hasHolding.runOnce_G then
                    ISR.hasHolding.runOnce_G = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_LIL_CHEST) then 
                    player:RemoveCollectible(CollectibleType.COLLECTIBLE_LIL_CHEST)
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_KEYS) then 
                    player:RemoveCollectible(CollectibleType.COLLECTIBLE_SACK_OF_KEYS)
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BOMB_BAG) then 
                    player:RemoveCollectible(CollectibleType.COLLECTIBLE_BOMB_BAG)
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_RUNE_BAG) then 
                    player:RemoveCollectible(CollectibleType.COLLECTIBLE_RUNE_BAG)
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_PENNIES) then
                    player:RemoveCollectible(CollectibleType.COLLECTIBLE_SACK_OF_PENNIES)
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_SACKS) then
                    player:RemoveCollectible(CollectibleType.COLLECTIBLE_SACK_OF_SACKS)
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MYSTERY_SACK) then
                    player:RemoveCollectible(CollectibleType.COLLECTIBLE_MYSTERY_SACK)
                end
            end
            if ISR.Transformations.hasHolding == true and ISR.Config["doHolding"] and Game:GetLevel():GetCurrentRoomDesc().VisitedCount == 1 and Game:GetLevel():GetCurrentRoomDesc().Clear == true then
                if ISR.hasHolding.newroom == true then
                    ISR.hasHolding.rooms = ISR.hasHolding.rooms + 1
                    ISR.hasHolding.newroom = false
                    for _, entity in ipairs(ISR.EntityList.Familiars) do
                        familiar = entity:ToFamiliar()
                        if familiar.IsFollower and familiar.Variant == FamiliarVariant.BAG_OF_HOLDING then
                            if ISR.hasHolding.rooms % 10 == 0 and ISR.hasHolding.runOnce_A then
                                local roll = math.random(100)
                                if roll > 80 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_LIL_BATTERY, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll > 70 and roll < 81 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll > 60 and roll < 71 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll > 50 and roll < 61 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COIN, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll > 40 and roll < 51 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_KEY, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll > 30 and roll < 41 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_BOMB, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll > 20 and roll < 31 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_PILL, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll > 10 and roll < 21 then
                                    local runes = math.random(32,41)
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, runes, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                else
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                end
                            end
                            if ISR.hasHolding.rooms % 6 == 0 and ISR.hasHolding.runOnce_B then
                                local roll = math.random(30)
                                if roll > 14 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_KEY, KeySubType.KEY_NORMAL, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll > 5 and roll < 15 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_KEY, KeySubType.KEY_NORMAL, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                else
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_KEY, KeySubType.KEY_CHARGED, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                end
                            end
                            if ISR.hasHolding.rooms % 3 == 0 and ISR.hasHolding.runOnce_C then
                                local roll = math.random(30)
                                if roll > 14 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_BOMB, BombSubType.BOMB_DOUBLEPACK, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll > 1 and roll < 15 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_BOMB, BombSubType.BOMB_NORMAL, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                else
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_BOMB, BombSubType.BOMB_TROLL, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                end
                            end
                            if ISR.hasHolding.rooms % 4 == 0 and ISR.hasHolding.runOnce_D then
                                local runes = math.random(32,41)
                                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, runes, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)                        
                            end
                            if ISR.hasHolding.rooms % 2 == 0 and ISR.hasHolding.runOnce_E then
                                local coins = math.random(100)
                                if coins > 49  and coins < 101 then
                                    coins = -1
                                end
                                if coins > 39 and coins < 51 then
                                    coins = -2
                                end
                                if coins > 34 and coins < 41 then
                                    coins = -3
                                end
                                if coins > 14 and coins < 35 then
                                    coins = -4
                                end
                                if coins > 4 and coins < 15 then
                                    coins = -5
                                end
                                if coins > 0 and coins < 5 then
                                    coins = -6
                                end
                                coins = coins * -1
                                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COIN, coins, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                            end
                            if ISR.hasHolding.rooms % 5 == 0 and ISR.hasHolding.runOnce_F then
                                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_GRAB_BAG, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                            end
                            if ISR.hasHolding.rooms % 5 == 0 and ISR.hasHolding.runOnce_G then
                                local roll = math.random(4)
                                if roll == 4 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll == 3 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COIN, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll == 2 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_KEY, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                elseif roll == 1 then
                                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_BOMB, -1, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                                end
                            end
                        end
                    end
                end
            end
            -----------------------------------
            -- Dungeon Delver Transformation --
            -----------------------------------
            if not ISR.Transformations.hasDelver and ISR.Config["doDelver"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SPELUNKER_HAT) and not ISR.hasDelver.runOnce_A then
                    ISR.hasDelver.counter = ISR.hasDelver.counter + 1
                    ISR.hasDelver.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BLUE_MAP) and not ISR.hasDelver.runOnce_B then
                    ISR.hasDelver.counter = ISR.hasDelver.counter + 1
                    ISR.hasDelver.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TREASURE_MAP) and not ISR.hasDelver.runOnce_C then
                    ISR.hasDelver.counter = ISR.hasDelver.counter + 1
                    ISR.hasDelver.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_COMPASS) and not ISR.hasDelver.runOnce_D then
                    ISR.hasDelver.counter = ISR.hasDelver.counter + 1
                    ISR.hasDelver.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MINE_CRAFTER) and not ISR.hasDelver.runOnce_E then
                    ISR.hasDelver.counter = ISR.hasDelver.counter + 1
                    ISR.hasDelver.runOnce_E = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_NOTCHED_AXE) and not ISR.hasDelver.runOnce_F then
                    ISR.hasDelver.counter = ISR.hasDelver.counter + 1
                    ISR.hasDelver.runOnce_F = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_LUMP_OF_COAL) and not ISR.hasDelver.runOnce_G then
                    ISR.hasDelver.counter = ISR.hasDelver.counter + 1
                    ISR.hasDelver.runOnce_G = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MAMA_MEGA) and not ISR.hasDelver.runOnce_H then
                    ISR.hasDelver.counter = ISR.hasDelver.counter + 1
                    ISR.hasDelver.runOnce_H = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_WE_NEED_GO_DEEPER) and not ISR.hasDelver.runOnce_I then
                    ISR.hasDelver.counter = ISR.hasDelver.counter + 1
                    ISR.hasDelver.runOnce_I = true
                end
                if ISR.hasDelver.counter > 4 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/delver.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_DELVER, PillColor.PILL_NULL)
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_SPELUNKER_HAT) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_SPELUNKER_HAT, 1, false)
                    end
                    ISR.Transformations.hasDelver = true
                end
            end
            --------------------------------
            -- Card Dealer Transformation --
            --------------------------------
            if not ISR.Transformations.hasDealer and ISR.Config["doDealer"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TAROT_CLOTH) and not ISR.hasDealer.runOnce_A then
                    ISR.hasDealer.counter = ISR.hasDealer.counter + 1
                    ISR.hasDealer.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_CRYSTAL_BALL) and not ISR.hasDealer.runOnce_B then
                    ISR.hasDealer.counter = ISR.hasDealer.counter + 1
                    ISR.hasDealer.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_DECK_OF_CARDS) and not ISR.hasDealer.runOnce_C then
                    ISR.hasDealer.counter = ISR.hasDealer.counter + 1
                    ISR.hasDealer.runOnce_C = true
                end
                if  player:HasCollectible(CollectibleType.COLLECTIBLE_PORTABLE_SLOT) and not ISR.hasDealer.runOnce_D then
                    ISR.hasDealer.counter = ISR.hasDealer.counter + 1
                    ISR.hasDealer.runOnce_D = true
                end
                if  player:HasCollectible(CollectibleType.COLLECTIBLE_CROOKED_PENNY) and not ISR.hasDealer.runOnce_E then
                    ISR.hasDealer.counter = ISR.hasDealer.counter + 1
                    ISR.hasDealer.runOnce_E = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MAGIC_FINGERS) and not ISR.hasDealer.runOnce_F then
                    ISR.hasDealer.counter = ISR.hasDealer.counter + 1
                    ISR.hasDealer.runOnce_F = true
                end
                if  player:HasCollectible(CollectibleType.COLLECTIBLE_LOADED_DECK) and not ISR.hasDealer.runOnce_G then
                    ISR.hasDealer.counter = ISR.hasDealer.counter + 1
                    ISR.hasDealer.runOnce_G = true
                end
                if  player:HasCollectible(CollectibleType.COLLECTIBLE_MAGIC_8_BALL) and not ISR.hasDealer.runOnce_H then
                    ISR.hasDealer.counter = ISR.hasDealer.counter + 1
                    ISR.hasDealer.runOnce_H = true
                end
                if ISR.hasDealer.counter > 3 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/dealer.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_DEALER, PillColor.PILL_NULL)
                    ISR.Transformations.hasDealer = true
                end
            end
            -----------------------------------
            -- Trick or Treat Transformation --
            -----------------------------------
            if not ISR.Transformations.hasTrick and ISR.Config["doTrick"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_DEATHS_TOUCH) and not ISR.hasTrick.runOnce_A then
                    ISR.hasTrick.counter = ISR.hasTrick.counter + 1
                    ISR.hasTrick.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_LIL_HAUNT) and not ISR.hasTrick.runOnce_B then
                    ISR.hasTrick.counter = ISR.hasTrick.counter + 1
                    ISR.hasTrick.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_HOST_HAT) and not ISR.hasTrick.runOnce_C then
                    ISR.hasTrick.counter = ISR.hasTrick.counter + 1
                    ISR.hasTrick.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_OUIJA_BOARD) and not ISR.hasTrick.runOnce_D then
                    ISR.hasTrick.counter = ISR.hasTrick.counter + 1
                    ISR.hasTrick.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_DRY_BABY) and not ISR.hasTrick.runOnce_E then
                    ISR.hasTrick.counter = ISR.hasTrick.counter + 1
                    ISR.hasTrick.runOnce_E = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BOZO) and not ISR.hasTrick.runOnce_F then
                    ISR.hasTrick.counter = ISR.hasTrick.counter + 1
                    ISR.hasTrick.runOnce_F = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_APPLE) and not ISR.hasTrick.runOnce_G then
                    ISR.hasTrick.counter = ISR.hasTrick.counter + 1
                    ISR.hasTrick.runOnce_G = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_POP) and not ISR.hasTrick.runOnce_H then
                    ISR.hasTrick.counter = ISR.hasTrick.counter + 1
                    ISR.hasTrick.runOnce_H = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_FINGER) and not ISR.hasTrick.runOnce_I then
                    ISR.hasTrick.counter = ISR.hasTrick.counter + 1
                    ISR.hasTrick.runOnce_I = true
                end
                if ISR.hasTrick.counter > 3 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/trick.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_TRICK, PillColor.PILL_NULL)
                    ISR.Transformations.hasTrick = true
                end
            end
            if ISR.Transformations.hasTrick == true and ISR.Config["doTrick"] then
                if ISR.Timer % 225 == 0 then
                    for _, entity in ipairs(Isaac.FindInRadius(player.Position, 2000, EntityPartition.ENEMY)) do
                        entity:ClearEntityFlags(EntityFlag.FLAG_FEAR)
                    end
                end
                for _, entity in ipairs(Isaac.FindInRadius(player.Position, 25, EntityPartition.ENEMY)) do
                    entity:AddEntityFlags(EntityFlag.FLAG_FEAR)
                end
            end
            ------------------------------
            -- Bony Transformation --
            ------------------------------
            if not ISR.Transformations.hasBony and ISR.Config["doBony"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_JAW_BONE) and not ISR.hasBony.runOnce_A then
                    ISR.hasBony.counter = ISR.hasBony.counter + 1
                    ISR.hasBony.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SLIPPED_RIB) and not ISR.hasBony.runOnce_B then
                    ISR.hasBony.counter = ISR.hasBony.counter + 1
                    ISR.hasBony.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_POINTY_RIB) and not ISR.hasBony.runOnce_C then
                    ISR.hasBony.counter = ISR.hasBony.counter + 1
                    ISR.hasBony.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SKELETON_KEY) and not ISR.hasBony.runOnce_D then
                    ISR.hasBony.counter = ISR.hasBony.counter + 1
                    ISR.hasBony.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BRITTLE_BONES) and not ISR.hasBony.runOnce_E then
                    ISR.hasBony.counter = ISR.hasBony.counter + 1
                    ISR.hasBony.runOnce_E = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MARROW) and not ISR.hasBony.runOnce_F then
                    ISR.hasBony.counter = ISR.hasBony.counter + 1
                    ISR.hasBony.runOnce_F = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_BOOK_OF_THE_DEAD) and not ISR.hasBony.runOnce_G then
                    ISR.hasBony.counter = ISR.hasBony.counter + 1
                    ISR.hasBony.runOnce_G = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_COMPOUND_FRACTURE) and not ISR.hasBony.runOnce_H then
                    ISR.hasBony.counter = ISR.hasBony.counter + 1
                    ISR.hasBony.runOnce_H = true
                end
                if ISR.hasBony.counter > 3 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/bony.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_BONY, PillColor.PILL_NULL)
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_COMPOUND_FRACTURE) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_COMPOUND_FRACTURE, 1, false)
                    end
                    ISR.Transformations.hasBony = true
                end
            end
            ------------------------------
            -- Stony Transformation --
            ------------------------------
            if not ISR.Transformations.hasStony and ISR.Config["doStony"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_GNAWED_LEAF) and not ISR.hasStony.runOnce_A then
                    ISR.hasStony.counter = ISR.hasStony.counter + 1
                    ISR.hasStony.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_LUMP_OF_COAL) and not ISR.hasStony.runOnce_B then
                    ISR.hasStony.counter = ISR.hasStony.counter + 1
                    ISR.hasStony.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_FLAT_STONE) and not ISR.hasStony.runOnce_C then
                    ISR.hasStony.counter = ISR.hasStony.counter + 1
                    ISR.hasStony.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_SMALL_ROCK) and not ISR.hasStony.runOnce_D then
                    ISR.hasStony.counter = ISR.hasStony.counter + 1
                    ISR.hasStony.runOnce_D = true
                end
                if player:HasTrinket(TrinketType.TRINKET_LUCKY_ROCK) and not ISR.hasStony.runOnce_E then
                    ISR.hasStony.counter = ISR.hasStony.counter + 1
                    ISR.hasStony.runOnce_E = true
                end
                if player:HasTrinket(TrinketType.TRINKET_SHINY_ROCK) and not ISR.hasStony.runOnce_F then
                    ISR.hasStony.counter = ISR.hasStony.counter + 1
                    ISR.hasStony.runOnce_F = true
                end
                if player:HasTrinket(TrinketType.TRINKET_CALLUS) and not ISR.hasStony.runOnce_G then
                    ISR.hasStony.counter = ISR.hasStony.counter + 1
                    ISR.hasStony.runOnce_G = true
                end
                if ISR.hasStony.counter > 3 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/stony.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_STONY, PillColor.PILL_NULL)
                    ISR.Transformations.hasStony = true
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_GNAWED_LEAF) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_GNAWED_LEAF, 1, false)
                    end
                end
            end
            ------------------------------
            -- Eternal Transformation --
            ------------------------------
            if not ISR.Transformations.hasEternal and ISR.Config["doEternal"] then
                if player:GetEternalHearts() > 0 and not ISR.hasEternal.runOnce_A then
                    ISR.hasEternal.counter = ISR.hasEternal.counter + 1
                    ISR.hasEternal.tracker = player:GetEternalHearts()
                    ISR.hasEternal.runOnce_A = true
                end
                if player:GetEternalHearts() < ISR.hasEternal.tracker and ISR.hasEternal.runOnce_A then
                    ISR.hasEternal.counter = ISR.hasEternal.counter + 1
                    ISR.hasEternal.tracker = player:GetEternalHearts()
                    ISR.hasEternal.runOnce_A = false
                end
                if ISR.hasEternal.counter > 11 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/eternal.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_ETERNAL, PillColor.PILL_NULL)
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_HALO_OF_FLIES) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_HALO_OF_FLIES, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_DEAD_DOVE) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_DEAD_DOVE, 1, false)
                    end
                    ISR.Transformations.hasEternal = true
                end
            end
            ------------------------------
            -- Cricket Transformation --
            ------------------------------
            if not ISR.Transformations.hasCricket and ISR.Config["doCricket"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_CRICKETS_BODY) and not ISR.hasCricket.runOnce_A then
                    ISR.hasCricket.counter = ISR.hasCricket.counter + 1
                    ISR.hasCricket.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_CRICKETS_COLLAR) and not ISR.hasCricket.runOnce_B then
                    ISR.hasCricket.counter = ISR.hasCricket.counter + 1
                    ISR.hasCricket.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_CRICKETS_PAW) and not ISR.hasCricket.runOnce_C then
                    ISR.hasCricket.counter = ISR.hasCricket.counter + 1
                    ISR.hasCricket.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MAXS_HEAD) and not ISR.hasCricket.runOnce_D then
                    ISR.hasCricket.counter = ISR.hasCricket.counter + 1
                    ISR.hasCricket.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_DOG_TOOTH) and not ISR.hasCricket.runOnce_E then
                    ISR.hasCricket.counter = ISR.hasCricket.counter + 1
                    ISR.hasCricket.runOnce_E = true
                end
                if (player:HasCollectible(CollectibleType.COLLECTIBLE_DINNER) or player:HasCollectible(CollectibleType.COLLECTIBLE_SNACK) or player:HasCollectible(CollectibleType.COLLECTIBLE_DESSERT)) and not ISR.hasCricket.runOnce_F then
                    ISR.hasCricket.counter = ISR.hasCricket.counter + 1
                    ISR.hasCricket.runOnce_F = true
                end
                if ISR.hasCricket.counter > 2 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/cricket.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_CRICKET, PillColor.PILL_NULL)
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_DOG_TOOTH) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_DOG_TOOTH, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_MAXS_HEAD) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_MAXS_HEAD, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_CRICKETS_COLLAR) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_CRICKETS_COLLAR, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_CRICKETS_BODY) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_CRICKETS_BODY, 1, false)
                    end
                    ISR.Transformations.hasCricket = true
                end
            end
            ------------------------------
            -- Tammy Transformation --
            ------------------------------
            if not ISR.Transformations.hasTammy and ISR.Config["doTammy"] then
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_BODY) and not ISR.hasTammy.runOnce_A then
                    ISR.hasTammy.counter = ISR.hasTammy.counter + 1
                    ISR.hasTammy.runOnce_A = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_EYES) and not ISR.hasTammy.runOnce_B then
                    ISR.hasTammy.counter = ISR.hasTammy.counter + 1
                    ISR.hasTammy.runOnce_B = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_PAW) and not ISR.hasTammy.runOnce_C then
                    ISR.hasTammy.counter = ISR.hasTammy.counter + 1
                    ISR.hasTammy.runOnce_C = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_TAIL) and not ISR.hasTammy.runOnce_D then
                    ISR.hasTammy.counter = ISR.hasTammy.counter + 1
                    ISR.hasTammy.runOnce_D = true
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_HEAD) and not ISR.hasTammy.runOnce_E then
                    ISR.hasTammy.counter = ISR.hasTammy.counter + 1
                    ISR.hasTammy.runOnce_E = true
                end
                if ISR.hasTammy.counter > 2 then
                    player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/tammy.anm2"))
                    SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                    player:UsePill(PillEffect.PILLEFFECT_TAMMY, PillColor.PILL_NULL)
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_BODY) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_TAMMYS_BODY, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_EYES) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_TAMMYS_EYES, 1, false)
                    end
                    if not player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_TAIL) then
                        player:AddCollectible(CollectibleType.COLLECTIBLE_TAMMYS_TAIL, 1, false)
                    end
                    ISR.Transformations.hasTammy = true
                end
            end
            ------------------------------
            -- Cain's Other Eye Synergy --
            ------------------------------
            if player:GetPlayerType() == PlayerType.PLAYER_CAIN and player:HasCollectible(CollectibleType.COLLECTIBLE_CAINS_OTHER_EYE) and ISR.Config["doCainsOtherEye"] then
                if not player:HasCollectible(CollectibleType.COLLECTIBLE_20_20) then
                    player:AddCollectible(CollectibleType.COLLECTIBLE_20_20, 0, false)
                end
            end
            --------------------------
            -- The Lost Holy Mantle --
            --------------------------
            if player:GetPlayerType() == PlayerType.PLAYER_THELOST and not player:HasCollectible(CollectibleType.COLLECTIBLE_HOLY_MANTLE) and player:GetActiveCharge() == 0 and ISR.Config["doLostHolyMantle"] then
                player:AddCollectible(CollectibleType.COLLECTIBLE_HOLY_MANTLE, 0, false)
            end
            -------------------
            -- Tinted Ground --
            -------------------
            if ISR.TintedGround.checkForDigging and ISR.Config["doTintedGround"] then
                for _, bomb in ipairs(ISR.EntityList.Bombs) do
                    if bomb.Position:Distance(Vector(ISR.TintedGround.MGX,ISR.TintedGround.MGY)) < 90 then
                        for i, key in ipairs(ISR.TintedGround.currentFloorMG) do
                            if key.RoomIndex == ISR.TintedGround.currentRoomMG then
                                for _, entity in ipairs(Isaac.FindByType(ISR.TintedGround.markedGround.Type, ISR.TintedGround.markedGround.Variant, ISR.TintedGround.markedGround.SubType0, false, false)) do
                                    entity:Remove()
                                end
                                local dugGround = Isaac.Spawn(ISR.TintedGround.markedGround.Type, ISR.TintedGround.markedGround.Variant, ISR.TintedGround.markedGround.SubType1, Vector(ISR.TintedGround.MGX,ISR.TintedGround.MGY), Vector(0,0), ISR.TintedGround.markedGround.Spawner)
                                dugGround.CollisionDamage = 0
                                dugGround:ToEffect():SetTimeout(999999999)
                                local savedata = {
                                    X = 0,
                                    Y = 0,
                                    RoomIndex = 0,
                                }
                                savedata.X = ISR.TintedGround.MGX
                                savedata.Y = ISR.TintedGround.MGY
                                savedata.RoomIndex = ISR.TintedGround.currentRoomMG
                                table.remove(ISR.TintedGround.currentFloorMG, i)
                                table.insert(ISR.TintedGround.currentFloorDG, savedata)
                                Isaac.GridSpawn(GridEntityType.GRID_STAIRS, 0, Vector(ISR.TintedGround.MGX,ISR.TintedGround.MGY), true)
                                ISR.TintedGround.hasDug = true
                                ISR.TintedGround.checkForDigging = false
                            end
                        end
                    end
                end
            end
            --------------------------------
            -- Yes Mother? Transformation --
            --------------------------------
            if player:HasPlayerForm(PlayerForm.PLAYERFORM_MOM) and ISR.Config["doMom"] and ISR.Timer % 900 == 0 then
                if room:GetAliveEnemiesCount() > 0 then
                    player:UseCard(Card.CARD_HIGH_PRIESTESS)
                end
            end
            ------------------
            -- R U a Wizard --
            ------------------
            if ISR.Pills.Wiz == 1 then
                ISR.Pills.timer = ISR.Pills.timer - 1
                if ISR.Pills.timer < 1 then
                    ISR.Pills.wzrdMult = ISR.Pills.wzrdMult + 1
                    if ISR.Pills.wzrdMult == 0 then
                        ISR.Pills.wzrdMult = ISR.Pills.wzrdMult + 1
                    end
                    player:AddCacheFlags(CacheFlag.CACHE_FIREDELAY)
                    ISR.Pills.Cache = 8
                    player:EvaluateItems()
                end
            end
            -------------
            -- Bad Gas --
            -------------
            if ISR.Pills.Cache == 6 then
                local fart = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.FART, 0, player.Position, Vector(0,0), player)
                for _, target in ipairs(Isaac.FindInRadius(fart.Position, 150, EntityPartition.ENEMY)) do
                    target:TakeDamage(math.max(player.Damage,5.0), 0, EntityRef(player), 0)
                end
                ISR.Pills.Cache = 0
            end
            ------------------
            -- Sack of Keys --
            ------------------
            if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_KEYS) and not ISR.hasSackOfKeys.active and ISR.Config["doSackOfKeys"] then
                player:AddCacheFlags(CacheFlag.CACHE_FAMILIARS)
                player:EvaluateItems()
                ISR.hasSackOfKeys.active = true
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_KEYS) and ISR.hasSackOfKeys.active and Game:GetLevel():GetCurrentRoomDesc().VisitedCount == 1 and Game:GetLevel():GetCurrentRoomDesc().Clear == true and ISR.Config["doSackOfKeys"] and ISR.hasSackOfKeys.newroom == true then
                ISR.hasSackOfKeys.rooms = ISR.hasSackOfKeys.rooms + 1
                ISR.hasSackOfKeys.newroom = false
                for _, entity in ipairs(ISR.EntityList.Familiars) do
                    familiar = entity:ToFamiliar()
                    if familiar.IsFollower and familiar.Variant == FamiliarVariant.SACK_OF_KEYS then
                        if ISR.hasSackOfKeys.rooms % 6 == 0 then
                            local roll = math.random(30)
                            if roll > 14 then
                                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_KEY, KeySubType.KEY_NORMAL, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                            elseif roll > 5 and roll < 15 then
                                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_KEY, KeySubType.KEY_NORMAL, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                            else
                                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_KEY, KeySubType.KEY_CHARGED, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
                            end
                        end
                    end
                end
            end
            --------------------------
            -- Anti-Static Keychain --
            --------------------------
            if player:HasTrinket(TrinketType.TRINKET_ANTI_STATIC_KEYCHAIN) and Game:GetLevel():GetCurrentRoomDesc().VisitedCount == 1 and Game:GetLevel():GetCurrentRoomDesc().Clear == true and ISR.Config["doAntiStatic"] then
                for _, entity in ipairs(ISR.EntityList.Pickups) do
                    if entity.Variant == PickupVariant.PICKUP_KEY and entity.SubType ~= KeySubType.KEY_CHARGED then
                        entity:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_KEY, KeySubType.KEY_CHARGED, entity.Position, entity.Velocity, nil)
                    end
                end
            end
            ----------------------
            -- Cricket's Collar --
            ----------------------
            if player:HasCollectible(CollectibleType.COLLECTIBLE_CRICKETS_COLLAR) and not player:WillPlayerRevive() and player:IsDead() and ISR.cricketsCollar then
                ISR.cricketsCollar = false
                if math.random(2) == 1 then
                    player:UseCard(Card.CARD_FOOL)
                    player:Revive()
                    ISR.cricketsCollar = true
                end
            end
            ------------------
            -- Tammy's Eyes --
            ------------------
            if player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_EYES) and ISR.Config["doTammysEyes"] then
                if player.FireDelay == 0 and math.random(10) < 2 then
                    player:UseActiveItem(CollectibleType.COLLECTIBLE_TAMMYS_HEAD, false, false, false, false)
                    Isaac.Spawn(EntityType.ENTITY_FAMILIAR, FamiliarVariant.BLUE_SPIDER, 0, player.Position, Vector((math.random(-2,2)),(math.random(-2,2))), nil)
                end
            end
            -------------------
            -- Strange Parts --
            -------------------
            if player:HasCollectible(CollectibleType.COLLECTIBLE_STRANGE_PARTS) and ISR.Config["doStrangeParts"] then
                ISR.hasStrangeParts.active = true
                if ISR.Timer % 30 == 0 then
                    player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
                    player:EvaluateItems()
                end
            end
            if ISR.hasStrangeParts.active == true and not player:HasCollectible(CollectibleType.COLLECTIBLE_STRANGE_PARTS) then
                ISR.hasStrangeParts.active = false
                ISR.hasStrangeParts.counter = 0
                player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
                player:EvaluateItems()
            end
            ------------------
            -- Tammy's Tail --
            ------------------
            if player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_TAIL) and ISR.Config["doTammysTail"] then
                if player.Velocity:LengthSquared() > 0.000001 then
                    if not ISR.hasTammysTail.runOnce_A then
                        ISR.hasTammysTail.runOnce_A = true
                        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
                        player:EvaluateItems()
                    end
                else
                    if ISR.hasTammysTail.runOnce_A then
                        ISR.hasTammysTail.runOnce_A = false
                        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
                        player:EvaluateItems()
                    end
                end
            end
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_UPDATE, ISR.onUpdate)

-----------------
-- Tammy's Paw --
-----------------
function ISR:onTammysPaw(item, _)
    local player = GetPlayerUsingActive(CollectibleType.COLLECTIBLE_TAMMYS_PAW)
    player:AnimateCollectible(CollectibleType.COLLECTIBLE_TAMMYS_PAW, "LiftItem", "PlayerPickup")
    SFXManager():Play(SoundEffect.SOUND_VAMP_GULP, 1.0, 0, false, 1.0)
    ISR.hideCollectible = 20
    local sacrificed = 0
    local success = 0
    for _, familiar in ipairs(ISR.EntityList.Familiars) do
        if familiar.Variant == FamiliarVariant.BLUE_SPIDER then
            sacrificed = sacrificed + 1
            local roll = math.random(101)
            if roll < sacrificed and roll > (sacrificed - roll) then
                success = success + 1
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_HALF_SOUL, familiar.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
            end
            familiar:Kill()
        end
        if success > 2 then
            break
        end
    end
    if success == 0 then
        if sacrificed > -1 and sacrificed < 8 then
            local total = 0
            repeat
                Isaac.Spawn(EntityType.ENTITY_FAMILIAR, FamiliarVariant.BLUE_SPIDER, 0, player.Position, Vector((math.random(-2,2)),(math.random(-2,2))), nil)
                total = total + math.random(3)
            until total == 3 or total > 3
        elseif sacrificed > 9 and sacrificed < 20 then
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_HALF_SOUL, player.Position, Vector((math.random(-2,2)),(math.random(-2,2))), nil)
        elseif sacrificed > 19 and sacrificed < 29 then
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_HALF_SOUL, player.Position, Vector((math.random(-2,2)),(math.random(-2,2))), nil)
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_HALF_SOUL, player.Position, Vector((math.random(-2,2)),(math.random(-2,2))), nil)
        else
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_HALF_SOUL, player.Position, Vector((math.random(-2,2)),(math.random(-2,2))), nil)
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_HALF_SOUL, player.Position, Vector((math.random(-2,2)),(math.random(-2,2))), nil)
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_HALF_SOUL, player.Position, Vector((math.random(-2,2)),(math.random(-2,2))), nil)
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_USE_ITEM, ISR.onTammysPaw, CollectibleType.COLLECTIBLE_TAMMYS_PAW)

-------------------
-- Cricket's Paw --
-------------------
function ISR:onCricketsPaw(item, _)
    local player = GetPlayerUsingActive(CollectibleType.COLLECTIBLE_CRICKETS_PAW)
    if player:GetEffectiveMaxHearts() > 2 then
        player:AnimateCollectible(CollectibleType.COLLECTIBLE_CRICKETS_PAW, "LiftItem", "PlayerPickup")
        ISR.hideCollectible = 20
        SFXManager():Play(SoundEffect.SOUND_VAMP_GULP, 1.0, 0, false, 1.0)
        if player:GetMaxHearts() ~= 0 then
            player:AddMaxHearts(-2)
        else
            player:AddBoneHearts(-1)
        end
        ISR.cricketsPaw = ISR.cricketsPaw + 1
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
        player:EvaluateItems()
    else
        SFXManager():Play(SoundEffect.SOUND_BOSS2INTRO_ERRORBUZZ, 1.0, 0, false, 1.0)
    end
end

ISR:AddCallback(ModCallbacks.MC_USE_ITEM, ISR.onCricketsPaw, CollectibleType.COLLECTIBLE_CRICKETS_PAW)

-------------------------
-- Philosopher's Stone --
-------------------------
function ISR:onPhilosophers(item, _)
    local player = GetPlayerUsingActive(CollectibleType.COLLECTIBLE_PHILOSOPHERS_STONE)
    player:AnimateCollectible(CollectibleType.COLLECTIBLE_PHILOSOPHERS_STONE, "LiftItem", "PlayerPickup")
    ISR.hideCollectible = 20
    for _, pickups in ipairs(ISR.EntityList.Pickups) do
        if not (pickups.Variant == PickupVariant.PICKUP_COLLECTIBLE or pickups.Variant == PickupVariant.PICKUP_COIN or pickups.Variant == PickupVariant.PICKUP_BED or pickups.Variant == PickupVariant.PICKUP_TROPHY or pickups.Variant == PickupVariant.PICKUP_BIGCHEST or pickups.Variant == PickupVariant.PICKUP_SHOPITEM) then
            pickups:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COIN, CoinSubType.COIN_PENNY, true)
        end
    end
    for _, entity in ipairs(ISR.EntityList.Enemies) do
        if entity:IsVulnerableEnemy() and entity:IsActiveEnemy() and not entity:IsBoss() then
            local midas = Isaac.Spawn(EntityType.ENTITY_TEAR, TearVariant.COIN, 0, entity.Position, Vector(0,0), nil)
            midas:ToTear().TearFlags = TearFlags.TEAR_MIDAS
            midas:ToTear().CollisionDamage = 0
        end
    end
    SFXManager():Play(SoundEffect.SOUND_ULTRA_GREED_TURN_GOLD_2, 1.0, 0, false, 1.0)
    SFXManager():Play(SoundEffect.SOUND_GOLDENBOMB, 1.0, 0, false, 1.0)
    Game:GetRoom():TurnGold()
end

ISR:AddCallback(ModCallbacks.MC_USE_ITEM, ISR.onPhilosophers, CollectibleType.COLLECTIBLE_PHILOSOPHERS_STONE)

-----------------
-- Moon Tablet --
-----------------
function ISR:onMoonTablet(item, _)
    local player = GetPlayerUsingActive(CollectibleType.COLLECTIBLE_MOON_TABLET)
    player:AnimateCollectible(CollectibleType.COLLECTIBLE_MOON_TABLET, "LiftItem", "PlayerPickup")
    ISR.hideCollectible = 20
    for _, item in ipairs(ISR.EntityList.Pickups) do
        if item.Variant == PickupVariant.PICKUP_COLLECTIBLE then
            local reroll = 0
            local breakloop = 0
            repeat
                reroll = ISR.SecretItems[math.random(ISR.SecretItems)]
            until not player:HasCollectible(reroll) or breakloop > 100
            item:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, reroll, item.Position, item.Velocity, nil)
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_USE_ITEM, ISR.onMoonTablet, CollectibleType.COLLECTIBLE_MOON_TABLET)

---------
-- D3 --
---------
function ISR:onD3(item, _)
    local player = GetPlayerUsingActive(CollectibleType.COLLECTIBLE_D3)
    local level = Game:GetLevel()
    if player:HasCollectible(CollectibleType.COLLECTIBLE_BLACK_CANDLE) then
        SFXManager():Play(SoundEffect.SOUND_SHOVEL_DIG, 1.0, 0, false, 1.0)
        SFXManager():Play(SoundEffect.SOUND_BONE_SNAP, 1.0, 0, false, 1.0)
        player:RemoveCollectible(CollectibleType.COLLECTIBLE_D3)
        player:AddCollectible(CollectibleType.COLLECTIBLE_GB_BUG, 0, false)
        return true
    end
    player:AnimateCollectible(CollectibleType.COLLECTIBLE_D3, "LiftItem", "PlayerPickup")
    ISR.hideCollectible = 20
    local test = level:GetCurses()
    local curse = {LevelCurse.CURSE_OF_DARKNESS, LevelCurse.CURSE_OF_LABYRINTH, LevelCurse.CURSE_OF_THE_LOST, LevelCurse.CURSE_OF_THE_UNKNOWN, LevelCurse.CURSE_OF_MAZE, LevelCurse.CURSE_OF_BLIND}
    repeat
        level:RemoveCurses()
        level:AddCurse(curse[math.random(#curse)], false)
    until test ~= level:GetCurses()
    SFXManager():Play(SoundEffect.SOUND_SATAN_BLAST, 1.0, 0, false, 1.0)
end

ISR:AddCallback(ModCallbacks.MC_USE_ITEM, ISR.onD3, CollectibleType.COLLECTIBLE_D3)

---------
-- D19 --
---------
function ISR:onD19(item, _)
    local player = GetPlayerUsingActive(CollectibleType.COLLECTIBLE_D19)
    player:AnimateCollectible(CollectibleType.COLLECTIBLE_D19, "LiftItem", "PlayerPickup")
    ISR.hideCollectible = 20
    for _, pickups in ipairs(ISR.EntityList.Pickups) do
        if pickups.Variant == PickupVariant.PICKUP_HEART then
            local test = pickups.SubType
            repeat
                roll = math.random(11)
            until test ~= roll
            pickups:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, roll, pickups.Position, pickups.Velocity, nil)
        end
        if pickups.Variant == PickupVariant.PICKUP_COIN then
            local test = pickups.SubType
            repeat
                roll = math.random(6)
            until test ~= roll
            pickups:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COIN, roll, pickups.Position, pickups.Velocity, nil)
        end
        if pickups.Variant == PickupVariant.PICKUP_KEY then
            local test = pickups.SubType
            repeat
                roll = math.random(4)
                if roll == 4 then
                    roll = math.random(4)
                end
                if roll == 4 then
                    roll = math.random(4)
                end
            until test ~= roll
            pickups:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_KEY, roll, pickups.Position, pickups.Velocity, nil)
        end
        if pickups.Variant == PickupVariant.PICKUP_BOMB then
            local test = pickups.SubType
            repeat
                roll = math.random(5)
                if roll == 4 then
                    roll = math.random(5)
                end
                if roll == 4 then
                    roll = math.random(5)
                end
            until test ~= roll
            pickups:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_BOMB, roll, pickups.Position, pickups.Velocity, nil)
        end
        if pickups.Variant == PickupVariant.PICKUP_CHEST or pickups.Variant == PickupVariant.PICKUP_BOMBCHEST or pickups.Variant == PickupVariant.PICKUP_SPIKEDCHEST or pickups.Variant == PickupVariant.PICKUP_ETERNALCHEST or pickups.Variant == PickupVariant.PICKUP_MIMICCHEST or pickups.Variant == PickupVariant.PICKUP_LOCKEDCHEST or pickups.Variant == PickupVariant.PICKUP_REDCHEST then
            local chest = {PickupVariant.PICKUP_CHEST, PickupVariant.PICKUP_BOMBCHEST, PickupVariant.PICKUP_SPIKEDCHEST, PickupVariant.PICKUP_ETERNALCHEST, PickupVariant.PICKUP_MIMICCHEST, PickupVariant.PICKUP_LOCKEDCHEST, PickupVariant.PICKUP_REDCHEST}
            pickups:ToPickup():Morph(EntityType.ENTITY_PICKUP, chest[math.random(#chest)], 0, pickups.Position, pickups.Velocity, nil)
        end
        if pickups.Variant == PickupVariant.PICKUP_LIL_BATTERY then
            pickups:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_GRAB_BAG, 0, pickups.Position, pickups.Velocity, nil)
        end
        if pickups.Variant == PickupVariant.PICKUP_GRAB_BAG then
            pickups:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_LIL_BATTERY, 0, pickups.Position, pickups.Velocity, nil)
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_USE_ITEM, ISR.onD19, CollectibleType.COLLECTIBLE_D19)

function ISR:onFire(tear)
    for playerNum = 1, Game:GetNumPlayers() do
        local player = Game:GetPlayer(playerNum - 1)
        -----------------
        -- Loaded Deck --
        -----------------
        if player:HasCollectible(CollectibleType.COLLECTIBLE_LOADED_DECK) and ISR.Config["doLoadedDeck"] then
            if math.random(100) == 1 then
                tear:ChangeVariant(TearVariant.CHAOS_CARD)
            end
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, ISR.onFire)

-----------------
-- Troll Bombs --
-----------------
function ISR:onBombInit(bomb)
    if ISR.Config["doTrollTimer"] then
        if bomb.Variant == BombVariant.BOMB_TROLL or bomb.Variant == BombVariant.BOMB_SUPERTROLL then
            bomb:SetExplosionCountdown(60)
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_BOMB_INIT, ISR.onBombInit)

--------------------------
-- The Lost Holy Mantle --
--------------------------
function ISR:lostHolyMantle()
    local player = GetPlayerUsingActive(CollectibleType.COLLECTIBLE_D4)
    if player == nil then
        player = GetPlayerUsingActive(CollectibleType.COLLECTIBLE_CRACKED_D4)
    end
    if player == nil then
        player = GetPlayerUsingActive(CollectibleType.COLLECTIBLE_D100)
    end
    if player == nil then
        player = GetPlayerUsingActive(CollectibleType.COLLECTIBLE_DINF)
    end
    if player:GetPlayerType() == PlayerType.PLAYER_THELOST and player:HasCollectible(CollectibleType.COLLECTIBLE_HOLY_MANTLE) and ISR.Config["doLostHolyMantle"] then
        player:RemoveCollectible(CollectibleType.COLLECTIBLE_HOLY_MANTLE)
    end
end
ISR:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, ISR.lostHolyMantle, CollectibleType.COLLECTIBLE_CRACKED_D4)
ISR:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, ISR.lostHolyMantle, CollectibleType.COLLECTIBLE_D4)
ISR:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, ISR.lostHolyMantle, CollectibleType.COLLECTIBLE_D100)
ISR:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, ISR.lostHolyMantle, CollectibleType.COLLECTIBLE_DINF)

function ISR:onCrackedD4()
    local player = GetPlayerUsingActive(CollectibleType.COLLECTIBLE_CRACKED_D4)
    player:AnimateCollectible(CollectibleType.COLLECTIBLE_CRACKED_D4, "LiftItem", "PlayerPickup")
    ISR.hideCollectible = 20
    player:UseActiveItem(CollectibleType.COLLECTIBLE_D4, false, false, true, false)
    player:AddCollectible(CollectibleType.COLLECTIBLE_CRACKED_D4, 0, false)
end

ISR:AddCallback(ModCallbacks.MC_USE_ITEM, ISR.onCrackedD4, CollectibleType.COLLECTIBLE_CRACKED_D4)

function ISR:chestInit(chest)
    for playerNum = 1, Game:GetNumPlayers() do
        local player = Game:GetPlayer(playerNum - 1)
        --------------------
        -- The Right Hand --
        --------------------
        if player:HasTrinket(TrinketType.TRINKET_RIGHT_HAND) and ISR.Config["doRightHand"] then
            chest:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_ETERNALCHEST, -1, true)
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, ISR.chestInit, PickupVariant.PICKUP_CHEST)
ISR:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, ISR.chestInit, PickupVariant.PICKUP_BOMBCHEST)
ISR:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, ISR.chestInit, PickupVariant.PICKUP_SPIKEDCHEST)
ISR:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, ISR.chestInit, PickupVariant.PICKUP_MIMICCHEST)
ISR:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, ISR.chestInit, PickupVariant.PICKUP_LOCKEDCHEST)
ISR:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, ISR.chestInit, PickupVariant.PICKUP_REDCHEST)

-----------
-- Pills --
-----------
function ISR:onPill(pill)
    local player = GetPlayerUsingItem()
    if pill == PillEffect.PILLEFFECT_DAMAGE_DOWN and not player:HasCollectible(CollectibleType.COLLECTIBLE_PHD) and ISR.Config["doDamage"] then
        ISR.Pills.dmgMult = ISR.Pills.dmgMult - 0.1
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
        ISR.Pills.Cache = 1
        SFXManager():Play(SoundEffect.SOUND_THUMBS_DOWN, 1.0, 0, false, 1.0)
        player:EvaluateItems()
    end
    if (pill == PillEffect.PILLEFFECT_DAMAGE_UP or (player:HasCollectible(CollectibleType.COLLECTIBLE_PHD) and pill == PillEffect.PILLEFFECT_DAMAGE_DOWN)) and ISR.Config["doDamage"] then
        ISR.Pills.dmgMult = ISR.Pills.dmgMult + 0.1
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
        ISR.Pills.Cache = 2
        SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
        player:EvaluateItems()
    end
    if pill == PillEffect.PILLEFFECT_SHOTSPEED_DOWN and not player:HasCollectible(CollectibleType.COLLECTIBLE_PHD) and ISR.Config["doShotspeed"] then
        player:AddCacheFlags(CacheFlag.CACHE_SHOTSPEED)
        ISR.Pills.shtspdMult = ISR.Pills.shtspdMult - 0.1
        ISR.Pills.Cache = 3
        SFXManager():Play(SoundEffect.SOUND_THUMBS_DOWN, 1.0, 0, false, 1.0)
        player:EvaluateItems()
    end
    if (pill == PillEffect.PILLEFFECT_SHOTSPEED_UP or (player:HasCollectible(CollectibleType.COLLECTIBLE_PHD) and pill == PillEffect.PILLEFFECT_SHOTSPEED_DOWN)) and ISR.Config["doShotspeed"] then
        player:AddCacheFlags(CacheFlag.CACHE_SHOTSPEED)
        ISR.Pills.shtspdMult = ISR.Pills.shtspdMult + 0.1
        ISR.Pills.Cache = 4
        SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
        player:EvaluateItems()
    end
    if pill == PillEffect.PILLEFFECT_I_FOUND_PILLS and ISR.Config["doFoundPills"] then
        local randomPill
        repeat
            randomPill = math.random(0, 46)
        until randomPill ~= 8 and randomPill ~= 29
        player:UsePill(randomPill, PillColor.PILL_NULL)
    end
    if pill == PillEffect.PILLEFFECT_BAD_GAS and ISR.Config["doBadGas"] then
        ISR.Pills.Cache = 6
    end
    if pill == PillEffect.PILLEFFECT_WIZARD and ISR.Config["doWizard"] and ISR.Pills.timer == 0 then
        ISR.Pills.wzrdMult = ISR.Pills.wzrdMult - 1
        if ISR.Pills.wzrdMult == 0 then
            ISR.Pills.wzrdMult = ISR.Pills.wzrdMult - 1
        end
        player:AddCacheFlags(CacheFlag.CACHE_FIREDELAY)
        ISR.Pills.Cache = 7
        ISR.Pills.timer = 900
        player:EvaluateItems()
    end
    if pill == PillEffect.PILLEFFECT_ADDICTED and ISR.Config["doAddicted"] then
        local randomPill
        repeat
            randomPill = math.random(0, 46)
        until randomPill ~= 8 and randomPill ~= 29
        player:UsePill(randomPill, PillColor.PILL_NULL)
        local randomPill
        repeat
            randomPill = math.random(0, 46)
        until randomPill ~= 8 and randomPill ~= 29
        player:UsePill(randomPill, PillColor.PILL_NULL)
        local randomPill
        repeat
            randomPill = math.random(0, 46)
        until randomPill ~= 8 and randomPill ~= 29
        player:UsePill(randomPill, PillColor.PILL_NULL)
    end
end

ISR:AddCallback(ModCallbacks.MC_USE_PILL, ISR.onPill)

----------------------------
-- Replacing Modded Items --
----------------------------
function ISR:onMorph(_, variant, subtype)
    if variant == PickupVariant.PICKUP_TRINKET and subtype == TrinketType.TRINKET_FF_RIGHT_HAND and ISR.Config["doRightHand"] then
        return {PickupVariant.PICKUP_TRINKET, TrinketType.TRINKET_RIGHT_HAND}
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_PICKUP_SELECTION, ISR.onMorph)

-------------------------------
-- Astrologer Transformation --
-------------------------------
function ISR:onAstrology(item)
    for playerNum = 1, Game:GetNumPlayers() do
        local player = Game:GetPlayer(playerNum - 1)
        if ISR.Transformations.hasAstrologer == true and ISR.Config["doAstrology"] and math.random(5) < 3 then
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_ARIES) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_ARIES, true)
                return
            end
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_PISCES) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_PISCES, true)
                return
            end
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_AQUARIUS) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_AQUARIUS, true)
                return
            end
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_LEO) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_LEO, true)
                return
            end
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_GEMINI) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_GEMINI, true)
                return
            end
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_LIBRA) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_LIBRA, true)
                return
            end
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_SAGITTARIUS) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_SAGITTARIUS, true)
                return
            end
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_SCORPIO) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_SCORPIO, true)
                return
            end
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_VIRGO) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_VIRGO, true)
                return
            end
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_CAPRICORN) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_CAPRICORN, true)
                return
            end
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_CANCER) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_CANCER, true)
                return
            end
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_TAURUS) then
                item:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_TAURUS, true)
                return
            end
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, ISR.onAstrology, PickupVariant.PICKUP_COLLECTIBLE)

-------------------
-- Tinted Ground --
-------------------
function ISR:onBombCrater(Effect)
    if ISR.TintedGround.checkForDigging and ISR.Config["doTintedGround"] then
        Effect:Remove()
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_EFFECT_INIT, ISR.onBombCrater, EffectVariant.BOMB_CRATER)

--------------------------------
-- Card Dealer Transformation --
--------------------------------
function ISR:onNPCDeath(NPC)
    if math.random(10) == 1 and ISR.Transformations.hasDealer and ISR.Config["doDealer"] then
        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 0, NPC.Position, Vector((math.random(-1,1)),(math.random(-1,1))), nil)
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_NPC_DEATH, ISR.onNPCDeath)

function ISR:onRoom()
    local roomindex = Game:GetLevel():GetCurrentRoomIndex()
    local room = Game:GetRoom()
    for playerNum = 1, Game:GetNumPlayers() do
        local player = Game:GetPlayer(playerNum - 1)
        --------------------
        -- Bag of Holding --
        --------------------
        if player:HasCollectible(CollectibleType.COLLECTIBLE_BAG_OF_HOLDING) and ISR.Config["doHolding"] and ISR.hasHolding.newroom == false then
            local num = Game:GetLevel():GetCurrentRoom():GetAliveEnemiesCount()
            if num > 0 then
                ISR.hasHolding.newroom = true
            end
        end
        ------------------
        -- Sack Of Keys --
        ------------------
        if player:HasCollectible(CollectibleType.COLLECTIBLE_SACK_OF_KEYS) and ISR.Config["doSackOfKeys"] and ISR.hasSackOfKeys.newroom == false then
            local num = Game:GetLevel():GetCurrentRoom():GetAliveEnemiesCount()
            if num > 0 then
                ISR.hasSackOfKeys.newroom = true
            end
        end
        -------------------
        -- Tinted Ground --
        -------------------
        if ISR.Config["doTintedGround"] then
            if room:GetType() == RoomType.ROOM_DUNGEON and ISR.TintedGround.hasDug == true then
                if MinimapAPI ~= nil then
                    MinimapAPI:AddRoom{NoUpdate=true,Hidden=true}
                end
                if math.random(10) < 3 then
                    for i=1, room:GetGridSize() do
                        local GridEntity = room:GetGridEntity(i)
                        if GridEntity and (i == 57) then
                            GridEntity:SetType(GridEntityType.GRID_GRAVITY)                  
                        elseif GridEntity and (i == 58) then
                            GridEntity:SetType(GridEntityType.GRID_GRAVITY)
                        elseif GridEntity and (i == 59) then
                            GridEntity:SetType(GridEntityType.GRID_WALL)
                        elseif GridEntity and (i == 72) then
                            GridEntity:SetType(GridEntityType.GRID_GRAVITY)
                        elseif GridEntity and (i == 73) then
                            GridEntity:SetType(GridEntityType.GRID_GRAVITY)
                        elseif GridEntity and (i == 74) then
                            GridEntity:SetType(GridEntityType.GRID_WALL)
                        elseif GridEntity and (i == 102) then
                            GridEntity:SetType(GridEntityType.GRID_WALL)
                        elseif GridEntity and (i == 117) then
                            GridEntity:SetType(GridEntityType.GRID_WALL)
                        elseif GridEntity and (i == 88) then
                            GridEntity:SetType(GridEntityType.GRID_GRAVITY)
                        elseif GridEntity and (i == 103) then
                            GridEntity:SetType(GridEntityType.GRID_GRAVITY)
                        elseif GridEntity and (i == 118) then
                            GridEntity:SetType(GridEntityType.GRID_GRAVITY)
                        elseif GridEntity and (i == 119) then
                            GridEntity:SetType(GridEntityType.GRID_GRAVITY)
                        end
                    end
                    if room:IsFirstVisit() then
                        Game:GetLevel():ChangeRoom(roomindex)
                    end
                end
            end
            if room:IsFirstVisit() == false and roomindex == ISR.TintedGround.currentRoomMG then
                ISR.TintedGround.checkForDigging = false
                for _, key in ipairs(ISR.TintedGround.currentFloorMG) do
                    if key.RoomIndex == roomindex then
                        ISR.TintedGround.checkForDigging = true
                        ISR.TintedGround.MGX = key.X
                        ISR.TintedGround.MGY = key.Y
                        local markedGround = Isaac.Spawn(ISR.TintedGround.markedGround.Type, ISR.TintedGround.markedGround.Variant, ISR.TintedGround.markedGround.SubType0, Vector(key.X,key.Y), Vector(0,0), ISR.TintedGround.markedGround.Spawner)
                        markedGround.CollisionDamage = 0
                        markedGround:ToEffect():SetTimeout(999999999)
                    end
                end
                for _, key in ipairs(ISR.TintedGround.currentFloorDG) do
                    if key.RoomIndex == roomindex then
                        ISR.TintedGround.MGX = key.X
                        ISR.TintedGround.MGY = key.Y
                        local markedGround = Isaac.Spawn(ISR.TintedGround.markedGround.Type, ISR.TintedGround.markedGround.Variant, ISR.TintedGround.markedGround.SubType1, Vector(key.X,key.Y), Vector(0,0), ISR.TintedGround.markedGround.Spawner)
                        markedGround.CollisionDamage = 0
                        markedGround:ToEffect():SetTimeout(999999999)
                    end
                end
            end
            if room:IsFirstVisit() == true and roomindex == ISR.TintedGround.currentRoomMG then
                local posGrid
                repeat
                    posGrid = room:GetClampedGridIndex(room:FindFreeTilePosition(Isaac.GetRandomPosition(), 750))
                until room:GetGridEntity(posGrid) == nil
                local clampedPos = room:GetClampedPosition(room:GetGridPosition(posGrid), 0)
                local markedGround = Isaac.Spawn(ISR.TintedGround.markedGround.Type, ISR.TintedGround.markedGround.Variant, ISR.TintedGround.markedGround.SubType0, clampedPos, Vector(0,0), ISR.TintedGround.markedGround.Spawner)
                markedGround.CollisionDamage = 0
                markedGround:ToEffect():SetTimeout(999999999)
                Isaac.GridSpawn(GridEntityType.GRID_DECORATION, 0, markedGround.Position, false)
                local savedata = {
                    X = 0,
                    Y = 0,
                    RoomIndex = 0
                }
                ISR.TintedGround.MGX, savedata.X = clampedPos.X, clampedPos.X
                ISR.TintedGround.MGY, savedata.Y = clampedPos.Y, clampedPos.Y
                savedata.RoomIndex = roomindex
                table.insert(ISR.TintedGround.currentFloorMG, savedata)
                ISR.TintedGround.checkForDigging = true
            end
            if FindIn({RoomType.ROOM_BLACK_MARKET,RoomType.ROOM_DUNGEON},room:GetType()) or roomindex == Game:GetLevel():GetStartingRoomIndex() then
                ISR.TintedGround.checkForDigging = false
            end
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, ISR.onRoom)


function ISR:onNewLevel()
    for playerNum = 1, Game:GetNumPlayers() do
        local player = Game:GetPlayer(playerNum - 1)
        -----------------------------------
        -- Dungeon Delver Transformation --
        -----------------------------------
        if ISR.Transformations.hasDelver == true and ISR.Config["doDelver"] then
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_BLACK_CANDLE) then
                Game:GetLevel():AddCurse(LevelCurse.CURSE_OF_DARKNESS, false)
            end
            ISR.hasDelver.multiplier = ISR.hasDelver.multiplier + 1
            player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:EvaluateItems()
        end
        -------------------
        -- Tinted Ground --
        -------------------
        ISR.TintedGround.currentFloorMG = {}
        ISR.TintedGround.currentFloorDG = {}
        ISR.TintedGround.currentRoomMG = 0
        ISR.TintedGround.hasDug = false
        if ISR.Config["doTintedGround"] then
            repeat
            ISR.TintedGround.currentRoomMG = Game:GetLevel():GetRandomRoomIndex(false, math.random(10000))
            if Game:GetLevel():GetStage() == LevelStage.STAGE7_GREED and Game:GetLevel():GetStageType() == StageType.STAGETYPE_GREEDMODE then
                ISR.TintedGround.currentRoomMG = nil
                return
            end
            until ISR.TintedGround.currentRoomMG ~= Game:GetLevel():GetStartingRoomIndex() and not FindIn({RoomType.ROOM_BLACK_MARKET,RoomType.ROOM_DUNGEON,RoomType.ROOM_ANGEL,RoomType.ROOM_DEVIL,RoomType.ROOM_BOSS,RoomType.ROOM_ERROR,RoomType.ROOM_DICE},(Game:GetLevel():GetRoomByIdx(ISR.TintedGround.currentRoomMG)).Data.Type)
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, ISR.onNewLevel)

function ISR:onDeath(entity)
    -------------------
    -- Strange Parts --
    -------------------
    if entity:IsEnemy() and ISR.hasStrangeParts.active and ISR.Config["doStrangeParts"] then
        ISR.hasStrangeParts.counter = ISR.hasStrangeParts.counter + 1
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, ISR.onDeath)


function ISR:onDamage(entity, amt, flag, source, countdown)
    for playerNum = 1, Game:GetNumPlayers() do
        local player = Game:GetPlayer(playerNum - 1)
        ------------------
        -- Tammy's Body --
        ------------------
        if player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_BODY) and entity.Type == EntityType.ENTITY_PLAYER and ISR.Config["doTammysBody"] then
            local total = 0
            while total < 3 do
                total = total + math.random(3)
                Isaac.Spawn(EntityType.ENTITY_FAMILIAR, FamiliarVariant.BLUE_SPIDER, 0, player.Position, player.Velocity, nil)
            end
        end
        --------------------------
        -- Greed Transformation --
        --------------------------
        if ISR.Transformations.hasGreed == true and entity.Type == EntityType.ENTITY_PLAYER and ISR.Config["doGreed"] then
            if math.random(2) == 1 then
                if math.random(10) > 5 then
                    player:UseActiveItem(CollectibleType.COLLECTIBLE_WOODEN_NICKEL, false, false, true, false)
                    player:UseActiveItem(CollectibleType.COLLECTIBLE_WOODEN_NICKEL, false, false, true, false)
                else
                    player:UseActiveItem(CollectibleType.COLLECTIBLE_BOX_OF_SPIDERS, false, false, true, false)
                end
            end
        end
        -------------------------
        -- Bony Transformation --
        -------------------------
        if ISR.Transformations.hasBony == true and entity.Type == EntityType.ENTITY_PLAYER and ISR.Config["doBony"] then
            if math.random(6) == 1 then
                player:AddBoneHearts(1)
            end
        end
        --------------------------
        -- Stony Transformation --
        --------------------------
        if ISR.Transformations.hasStony == true and entity.Type == EntityType.ENTITY_PLAYER and ISR.Config["doStony"] then
            if flag == DamageFlag.DAMAGE_LASER or flag == DamageFlag.DAMAGE_SPIKES or flag == DamageFlag.DAMAGE_CHEST then
                return false
            end
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, ISR.onDamage)

---------------------------
-- Cyborg Transformation --
---------------------------
function ISR:onCyborg(pickup, collider, low)
    if pickup.Variant == HeartSubType.HEART_HALF and collider:CanPickRedHearts() == false and collider.Type == EntityType.ENTITY_PLAYER and ISR.Transformations.hasCyborg == true and ISR.Config["doCyborg"] then
        local ActiveCharge = collider:GetActiveCharge() 
        collider:SetActiveCharge(collider:GetActiveCharge() + 1)
        SFXManager():Stop(SoundEffect.SOUND_BEEP, 1.0, 0, false, 1.0)
        if ActiveCharge ~= collider:GetActiveCharge() then
            pickup:Remove()
            SFXManager():Play(SoundEffect.SOUND_BEEP, 1.0, 0, false, 1.0)
        else
            pickup:Kill()
        end
    end
    if pickup.Variant == HeartSubType.HEART_FULL and collider:CanPickRedHearts() == false and collider.Type == EntityType.ENTITY_PLAYER and ISR.Transformations.hasCyborg == true and ISR.Config["doCyborg"] then
        local ActiveCharge = collider:GetActiveCharge() 
        collider:SetActiveCharge(collider:GetActiveCharge() + 2)
        SFXManager():Stop(SoundEffect.SOUND_BEEP, 1.0, 0, false, 1.0)
        if ActiveCharge ~= collider:GetActiveCharge() then
            pickup:Remove()
            SFXManager():Play(SoundEffect.SOUND_BEEP, 1.0, 0, false, 1.0)
        else
            pickup:Kill()
        end
    end
    if pickup.Variant == HeartSubType.HEART_DOUBLEPACK and collider:CanPickRedHearts() == false and collider.Type == EntityType.ENTITY_PLAYER and ISR.Transformations.hasCyborg == true and ISR.Config["doCyborg"] then
        local ActiveCharge = collider:GetActiveCharge() 
        collider:SetActiveCharge(collider:GetActiveCharge() + 4)
        SFXManager():Stop(SoundEffect.SOUND_BEEP, 1.0, 0, false, 1.0)
        if ActiveCharge ~= collider:GetActiveCharge() then
            pickup:Remove()
            SFXManager():Play(SoundEffect.SOUND_BEEP, 1.0, 0, false, 1.0)
        else
            pickup:Kill()
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, ISR.onCyborg, PickupVariant.PICKUP_HEART)

--------------------
-- Bag of Holding --
--------------------
function ISR:onHoldingInit(familiar)
	familiar.IsFollower = true
end

ISR:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, ISR.onHoldingInit, FamiliarVariant.BAG_OF_HOLDING)

function ISR:onHoldingUpdate(familiar)
	local sprite = familiar:GetSprite()
    if not ISR.hasBagOfHolding.spawned then
		sprite:Play("Spawn", false)
        ISR.hasBagOfHolding.spawned = true
	end
	if sprite:IsFinished("Spawn") then
		sprite:Play("FloatDown", false)
	end
	familiar:FollowParent()
end

ISR:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, ISR.onHoldingUpdate, FamiliarVariant.BAG_OF_HOLDING)

------------------
-- Sack of Keys --
------------------
function ISR:onSackOfKeysInit(familiar)
	familiar.IsFollower = true
end

ISR:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, ISR.onSackOfKeysInit, FamiliarVariant.SACK_OF_KEYS)

function ISR:onSackOfKeysUpdate(familiar)
	local sprite = familiar:GetSprite()
    if not ISR.hasSackOfKeys.spawned then
		sprite:Play("Spawn", false)
        ISR.hasSackOfKeys.spawned = true
	end
	if sprite:IsFinished("Spawn") then
		sprite:Play("FloatDown", false)
	end
	familiar:FollowParent()
end

ISR:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, ISR.onSackOfKeysUpdate, FamiliarVariant.SACK_OF_KEYS)

function ISR:onCache(player, flag)
    -------------------
    -- Cricket's Paw --
    -------------------
    if flag == CacheFlag.CACHE_DAMAGE then
        player.Damage = player.Damage + (ISR.cricketsPaw)*0.2
    end
    -----------------
    -- Snails Pace --
    -----------------
    if player:HasCollectible(CollectibleType.COLLECTIBLE_SNAILS_PACE) and ISR.Config["doSnailsPace"] then
        if flag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed - 0.3
        end
        if flag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + (3*(2 - player.MoveSpeed))
        end
    end
    -----------
    -- Pills --
    -----------
    if ISR.Pills.Cache > 0 then
        if ISR.Pills.Cache == 1 and flag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + (player.Damage * ISR.Pills.dmgMult)
        end
        if ISR.Pills.Cache == 2 and flag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + (player.Damage * ISR.Pills.dmgMult)
        end
        if ISR.Pills.Cache == 3 and flag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed + (player.ShotSpeed * ISR.Pills.shtspdMult)
        end
        if ISR.Pills.Cache == 4 and flag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed + (player.ShotSpeed * ISR.Pills.shtspdMult)
        end
        if ISR.Pills.Cache == 7 and flag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay + (1 * ISR.Pills.wzrdMult)
            ISR.Pills.Wiz = 1
        end
        if ISR.Pills.Cache == 8 and flag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay + (1 * ISR.Pills.wzrdMult)
            ISR.Pills.Wiz = 0
        end
        ISR.Pills.Cache = 0
    else
        if flag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + (player.Damage * ISR.Pills.dmgMult)
        end
        if flag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed + (player.ShotSpeed * ISR.Pills.shtspdMult)
        end
        if flag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay + (1 * ISR.Pills.wzrdMult)
        end
    end
    --------------------
    -- Dungeon Delver --
    --------------------
    if ISR.Transformations.hasDelver == true and ISR.Config["doDelver"] then
        if flag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage * (1.01 ^ ISR.hasDelver.multiplier)
        end
    end
    if flag == CacheFlag.CACHE_FAMILIARS then
        local boxOfFriendsMul = player:GetEffects():GetCollectibleEffectNum(CollectibleType.COLLECTIBLE_BOX_OF_FRIENDS) + 1;
        player:CheckFamiliar(FamiliarVariant.BAG_OF_HOLDING, player:GetCollectibleNum(CollectibleType.COLLECTIBLE_BAG_OF_HOLDING) * boxOfFriendsMul, player:GetCollectibleRNG(CollectibleType.COLLECTIBLE_BAG_OF_HOLDING))
        player:CheckFamiliar(FamiliarVariant.SACK_OF_KEYS, player:GetCollectibleNum(CollectibleType.COLLECTIBLE_SACK_OF_KEYS) * boxOfFriendsMul, player:GetCollectibleRNG(CollectibleType.COLLECTIBLE_SACK_OF_KEYS))
    end
    -------------------
    -- Strange Parts --
    -------------------
    if player:HasCollectible(CollectibleType.COLLECTIBLE_STRANGE_PARTS) and ISR.Config["doStrangeParts"] then
        if flag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + (ISR.hasStrangeParts.counter / 250)
        end
    end
    ------------------
    -- Tammy's Tail --
    ------------------
    if player:HasCollectible(CollectibleType.COLLECTIBLE_TAMMYS_TAIL) and ISR.Config["doTammysTail"] then
        if flag == CacheFlag.CACHE_DAMAGE then
            if ISR.hasTammysTail.runOnce_A == true then
                player.Damage = player.Damage * 1.25
            else
                player.Damage = player.Damage * 0.8
            end
        end
        if flag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed + 0.3
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, ISR.onCache)

----------------------------------------
-- Credit to Stack Exchange, probably --
----------------------------------------
function FindIn(tInput, Value)
    for i in ipairs(tInput) do
        if Value == tInput[i] then 
            return true
        end
    end
    return false
end

-------------------------------------
-- Credit to Piber20 & Agent Cucco --
-------------------------------------
function GetPlayerUsingActive(itemID)
    for p = 0, Game:GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(p)
        local ActiveCheck = (itemID and (player:GetActiveItem() == itemID or player:GetActiveItem() == CollectibleType.COLLECTIBLE_VOID) or true)
        if ActiveCheck and (Input.IsActionTriggered(ButtonAction.ACTION_ITEM, player.ControllerIndex) or Input.IsActionTriggered(ButtonAction.ACTION_PILLCARD, player.ControllerIndex)) then
            return player
        end
    end
    return nil
end

---------------------------
-- Credit to the FF Team --
---------------------------
function GetPlayerUsingItem()
	local player = Isaac.GetPlayer(0)
	for i = 1, Game:GetNumPlayers() do
    	local p = Isaac.GetPlayer(i - 1)
 	    if Input.IsActionTriggered(ButtonAction.ACTION_ITEM, p.ControllerIndex) or Input.IsActionTriggered(ButtonAction.ACTION_PILLCARD, p.ControllerIndex) then
    		player = p
    		player:GetData().WasHoldingButton = true
    		break
	    end
	end
	return player
end

function ResetVariables()
    ISR.cricketsCollar = true
    ISR.cricketsPaw = 0
    ISR.hideCollectible = 0
    ISR.hasTammysTail = {
        runOnce_A = false,
    }
    ISR.hasStrangeParts = {
        counter = 0,
        active = false,
    }
    ISR.hasSackOfKeys = {
        spawned = false,
        active = false,
        newroom = false,
        rooms = 0,
    }
    ISR.hasBagOfHolding = {
        spawned = false,
    }
    ISR.Timer = 0
    ISR.EntityList = {
        Bombs = {}
    }
    ISR.Pills = {
        Cache = 0,
        timer = 0,
        dmgMult = 0,
        shtspdMult = 0,
        wzrdMult = 0,
        Wiz = 0,
    }
    ISR.Transformations = {
        hasConjoined = false,
        hasAdult = false,
        hasMushroom = false,
        hasCrap = false,
        hasSpiderBaby = false,
        hasBob = false,
        hasSeraphim = false,
        hasBeelzbub = false,
        hasMagneto = false,
        hasDuality = false,
        hasGreed = false,
        hasCyborg = false,
        hasButcher = false,
        hasAstrologer = false,
        hasAlchemist = false,
        hasHolding = false,
        hasDelver = false,
        hasDealer = false,
        hasTrick = false,
        hasBony = false,
        hasStony = false,
        hasEternal = false,
        hasCricket = false,
        hasTammy = false,
    }
    ISR.hasCrap = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
        runOnce_G = false,
    }
    ISR.hasBob = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
    }
    ISR.hasMagneto = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
    }
    ISR.hasGreed = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
    }
    ISR.hasCyborg = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
        runOnce_G = false,
        runOnce_H = false,
        runOnce_I = false,
        runOnce_J = false,
        runOnce_K = false,
        runOnce_L = false,
    }
    ISR.hasButcher = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
        runOnce_G = false,
    }
    ISR.hasAstrologer = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
        runOnce_G = false,
        runOnce_H = false,
        runOnce_I = false,
        runOnce_J = false,
        runOnce_K = false,
        runOnce_L = false,
        runOnce_M = false,
    }
    ISR.hasAlchemist = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
    }
    ISR.hasHolding = {
        rooms = 0,
        counter = 0,
        newroom = false,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
        runOnce_G = false,
    }
    ISR.hasDelver = {
        counter = 0,
        multiplier = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
        runOnce_G = false,
        runOnce_H = false,
        runOnce_I = false,
    }
    ISR.hasDealer = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
        runOnce_G = false,
        runOnce_H = false,
    }
    ISR.hasTrick = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
        runOnce_G = false,
        runOnce_H = false,
        runOnce_I = false,
    }
    ISR.hasBony = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
        runOnce_G = false,
        runOnce_H = false,
    }
    ISR.hasStony = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
        runOnce_G = false,
    }
    ISR.hasEternal = {
        counter = 0,
        tracker = 0,
        runOnce_A = false
    }
    ISR.hasCricket = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
        runOnce_F = false,
    }
    ISR.hasTammy = {
        counter = 0,
        runOnce_A = false,
        runOnce_B = false,
        runOnce_C = false,
        runOnce_D = false,
        runOnce_E = false,
    }
    ISR.ActiveItemTimer = 0
end

function ToggleItems()
    if not ISR.Config["doMoonTablet"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_MOON_TABLET)     
    end
    if not ISR.Config["doPhilosophy"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_PHILOSOPHERS_STONE)     
    end
    if not ISR.Config["doCricketsPaw"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_CRICKETS_PAW)     
    end
    if not ISR.Config["doTammysPaw"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_TAMMYS_PAW)     
    end
    if not ISR.Config["doD3"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_D3)     
    end
    if not ISR.Config["doD19"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_D19)     
    end
    if not ISR.Config["doSackOfKeys"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_SACK_OF_KEYS)     
    end
    if not ISR.Config["doSnailsPace"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_SNAILS_PACE)     
    end
    if not ISR.Config["doLoadedDeck"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_LOADED_DECK)     
    end
    if not ISR.Config["doCricketsCollar"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_CRICKETS_COLLAR)     
    end
    if not ISR.Config["doTammysTail"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_TAMMYS_TAIL)     
    end
    if not ISR.Config["doTammysEyes"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_TAMMYS_EYES)     
    end
    if not ISR.Config["doTammysBody"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_TAMMYS_BODY)     
    end
    if not ISR.Config["doStrangeParts"] then
        Game:GetItemPool():RemoveCollectible(CollectibleType.COLLECTIBLE_STRANGE_PARTS)     
    end
    Game:RerollLevelCollectibles()
end