ISR = RegisterMod("Isaac Reforged", 1)
local json = require("json")
require("isr_config")
ISR.Config = ISR.DefaultConfig
ISR.Config.Version = "1.5"
ISR.GameState = {}
ISR.hasConjoined = false
ISR.hasAdult = false
ISR.hasMushroom = false
ISR.hasCrap = false
ISR.hasSpiderBaby = false
ISR.hasBob = false
ISR.hasSeraphim = false
ISR.hasBeelzbub = false
ISR.hasMagneto = false
ISR.ActiveItemTimer = 0
ISR.usedFireExtinguisher = false
CollectibleType.COLLECTIBLE_FIRE_EXTINGUISHER = Isaac.GetItemIdByName(" Fire Extinguisher ")
TrinketType.TRINKET_FF_RIGHT_HAND = Isaac.GetTrinketIdByName("The Right Hand")
TrinketType.TRINKET_RIGHT_HAND = Isaac.GetTrinketIdByName(" The Right Hand ")
PillEffect.PILLEFECT_DUALITY = Isaac.GetPillEffectByName("Duality!")
PillEffect.PILLEFECT_MAGNETO = Isaac.GetPillEffectByName("Magneto!")
PillEffect.PILLEFECT_CYBORG = Isaac.GetPillEffectByName("Cybernetic!")
require("isr_config_menu")
Isaac.ConsoleOutput("Isaac Reforged v" .. ISR.Config.Version .. ": Check out Items Reforged!\n")

if EID then
    EID:addCollectible(CollectibleType.COLLECTIBLE_FIRE_EXTINGUISHER, "Puts out fires... and enemies!")
    EID:addTrinket(TrinketType.TRINKET_RIGHT_HAND, "Turns all chests into eternal chests")
    EID:addPill(PillEffect.PILLEFFECT_I_FOUND_PILLS, "It's a mystery")
end

function ISR:onStart()
    if ISR:HasData() then
        ISR.GameState = json.decode(ISR:LoadData())
        if ISR.GameState.hasConjoined == nil then
            ISR.GameState.hasConjoined = false
        else
            ISR.hasConjoined = ISR.GameState.hasConjoined
        end
        if ISR.GameState.hasAdult == nil then
            ISR.GameState.hasAdult = false
        else
            ISR.hasAdult = ISR.GameState.hasAdult
        end
        if ISR.GameState.hasMushroom == nil then
            ISR.GameState.hasMushroom = false
        else
            ISR.hasMushroom = ISR.GameState.hasMushroom
        end
        if ISR.GameState.hasCrap == nil then
            ISR.GameState.hasCrap = false
        else
            ISR.hasCrap = ISR.GameState.hasCrap
        end
        if ISR.GameState.hasSpiderBaby == nil then
            ISR.GameState.hasSpiderBaby = false
        else
            ISR.hasSpiderBaby = ISR.GameState.hasSpiderBaby
        end
        if ISR.GameState.hasBob == nil then
            ISR.GameState.hasBob = false
        else
            ISR.hasBob = ISR.GameState.hasBob
        end
        if ISR.GameState.hasBeelzbub == nil then
            ISR.GameState.hasBeelzbub = false
        else
            ISR.hasBeelzbub = ISR.GameState.hasBeelzbub
        end
        if ISR.GameState.hasMagneto == nil then
            ISR.GameState.hasMagneto = false
        else
            ISR.hasMagneto = ISR.GameState.hasMagneto
        end
        if ISR.GameState.hasSeraphim == nil then
            ISR.GameState.hasSeraphim = false
        else
            ISR.hasSeraphim = ISR.GameState.hasSeraphim
        end
        if ISR.MCMLoaded then
            local savedISRConfig = ISR.GameState.Config
            if savedISRConfig.Version == ISR.Config.Version then
                for key, value in pairs(ISR.Config) do
                    ISR.Config[key] = savedISRConfig[key]
                end
            end
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, ISR.onStart)

function ISR:onExit()
    ISR.GameState.hasConjoined = ISR.hasConjoined
    ISR.GameState.hasAdult = ISR.hasAdult
    ISR.GameState.hasMushroom = ISR.hasMushroom
    ISR.GameState.hasCrap = ISR.hasCrap
    ISR.GameState.hasBob = ISR.hasBob
    ISR.GameState.hasSpiderBaby = ISR.hasSpiderBaby
    ISR.GameState.hasBeelzbub = ISR.hasBeelzbub
    ISR.GameState.hasSeraphim = ISR.hasSeraphim
    ISR.GameState.hasMagneto = ISR.hasMagneto
    ISR.GameState.Config = ISR.Config
    ISR:SaveData(json.encode(ISR.GameState))
end

ISR:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, ISR.onExit)
ISR:AddCallback(ModCallbacks.MC_POST_GAME_END, ISR.onExit)

function ISR:onUpdate()
    --------------------
    -- Initialization --
    --------------------
    if Game():GetFrameCount() == 1 then
        for playerNum = 1, Game():GetNumPlayers() do
            local player = Game():GetPlayer(playerNum - 1)
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
                -- Holding: Maggy's Faith
                player:AddTrinket(TrinketType.TRINKET_PURPLE_HEART)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_MAGGYS_FAITH)
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
                -- Innate: Daemon's Tail
                -- Holding: Wish Bone
                player:AddTrinket(TrinketType.TRINKET_DAEMONS_TAIL)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_WISH_BONE)
            elseif ISR.Config["StartingTrinketsSamson"] and player:GetPlayerType() == PlayerType.PLAYER_SAMSON and player:GetTrinket(0) == 0 then
                -- Innate: Samson's Lock
                -- Holding: Child's Heart
                player:AddTrinket(TrinketType.TRINKET_SAMSONS_LOCK)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
            elseif ISR.Config["StartingTrinketsAzazel"] and player:GetPlayerType() == PlayerType.PLAYER_AZAZEL and player:GetTrinket(0) == 0 then
                -- Innate: A Missing Page
                -- Holding: Curved Horn
                player:AddTrinket(TrinketType.TRINKET_MISSING_PAGE)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_LEFT_HAND)
            elseif ISR.Config["StartingTrinketsLazarus"] and player:GetPlayerType() == PlayerType.PLAYER_LAZARUS and player:GetTrinket(0) == 0 then
                -- Innate: Lost Cork
                -- Holding: Rosary Bead
                player:AddTrinket(TrinketType.TRINKET_LOST_CORK)
                player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, false, false, true, true)
                player:AddTrinket(TrinketType.TRINKET_ROSARY_BEAD)
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
            elseif ISR.Config["StartingTrinketsLilith"] and player:GetPlayerType() == PlayerType.PLAYER_LILITH and player:GetTrinket(0) == 0 then
                -- Innate: Black Lipstick
                -- Holding: Blind Rage
                player:AddTrinket(TrinketType.TRINKET_BLACK_LIPSTICK)
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
    for playerNum = 1, Game():GetNumPlayers() do
        local player = Game():GetPlayer(playerNum - 1)
        local room = Game():GetRoom()
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
        if ISR.hasConjoined and not player:HasPlayerForm(PlayerForm.PLAYERFORM_BABY) then
            ISR.hasConjoined = false
        end
        if player:HasPlayerForm(PlayerForm.PLAYERFORM_BABY) and not ISR.hasConjoined and ISR.Config["doConjoined"] then
            ISR.hasConjoined = true
            player:AddCollectible(CollectibleType.COLLECTIBLE_BELLY_BUTTON, 1, false)
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET, TrinketType.TRINKET_CANCER, player.Position, Vector(0,0), player)
        end
        ------------------------------
        -- The Right and Left Hands --
        ------------------------------
        if (player:GetTrinket(0) == TrinketType.TRINKET_RIGHT_HAND and player:GetTrinket(1) == TrinketType.TRINKET_LEFT_HAND) or (player:GetTrinket(0) == TrinketType.TRINKET_LEFT_HAND and player:GetTrinket(1) == TrinketType.TRINKET_RIGHT_HAND) and ISR.Config["doRightHand"] then
            player:TryRemoveTrinket(TrinketType.TRINKET_RIGHT_HAND)
            player:TryRemoveTrinket(TrinketType.TRINKET_LEFT_HAND)
            SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
            player:UsePill(PillEffect.PILLEFECT_DUALITY, PillColor.PILL_NULL)
            player:AddCollectible(CollectibleType.COLLECTIBLE_EUCHARIST, 0, false)
            player:AddCollectible(CollectibleType.COLLECTIBLE_DUALITY, 0, false)
        end
        ------------------------------
        -- The Adult Transformation --
        ------------------------------
        if ISR.hasAdult and not player:HasPlayerForm(PlayerForm.PLAYERFORM_ADULTHOOD) then
            ISR.hasAdult = false
        end
        if player:HasPlayerForm(PlayerForm.PLAYERFORM_ADULTHOOD) and not ISR.hasAdult and ISR.Config["doAdult"] then
            ISR.hasAdult = true
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_DEPRESSION) then
                player:AddCollectible(CollectibleType.COLLECTIBLE_DEPRESSION, 1, false)
            end
        end
        --------------------------------
        -- The Fun Guy Transformation --
        --------------------------------
        if ISR.hasMushroom and not player:HasPlayerForm(PlayerForm.PLAYERFORM_MUSHROOM) then
            ISR.hasMushroom = false
        end
        if player:HasPlayerForm(PlayerForm.PLAYERFORM_MUSHROOM) and not ISR.hasMushroom and ISR.Config["doMushroom"] then
            ISR.hasMushroom = true
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
        if not ISR.hasCrap and ISR.Config["doCrap"] then
            local hasCrapCounter = 0
            if player:HasCollectible(CollectibleType.COLLECTIBLE_BUTT_BOMBS) then
                hasCrapCounter = hasCrapCounter + 1
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_NUMBER_ONE) then
                hasCrapCounter = hasCrapCounter + 1
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_NUMBER_TWO) then
                hasCrapCounter = hasCrapCounter + 1
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_POOP) then
                hasCrapCounter = hasCrapCounter + 1
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_E_COLI) then
                hasCrapCounter = hasCrapCounter + 1
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_FLUSH) then
                hasCrapCounter = hasCrapCounter + 1
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_FARTING_BABY) then
                hasCrapCounter = hasCrapCounter + 1
            end
            if hasCrapCounter > 2 then
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
            else
                hasCrapCounter = 0
            end
        end
        if ISR.hasCrap and not player:HasPlayerForm(PlayerForm.PLAYERFORM_POOP) then
            ISR.hasCrap = false
        end
        if player:HasPlayerForm(PlayerForm.PLAYERFORM_POOP) and not ISR.hasCrap and ISR.Config["doCrap"] then
            ISR.hasCrap = true
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
        if ISR.hasSpiderBaby and not player:HasPlayerForm(PlayerForm.PLAYERFORM_SPIDERBABY) then
            ISR.hasSpiderBaby = false
        end
        if player:HasPlayerForm(PlayerForm.PLAYERFORM_SPIDERBABY) and not ISR.hasSpiderBaby and ISR.Config["doSpiderBaby"] then
            ISR.hasSpiderBaby = true
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
        if not ISR.hasBob and ISR.Config["doBob"] then
            local hasBobCounter = 0
            if player:HasCollectible(CollectibleType.COLLECTIBLE_BOBS_BRAIN) then
                hasBobCounter = hasBobCounter + 1
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_BOBS_CURSE) then
                hasBobCounter = hasBobCounter + 1
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_IPECAC) then
                hasBobCounter = hasBobCounter + 1
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_BOBS_ROTTEN_HEAD) then
                hasBobCounter = hasBobCounter + 1
            end
            if player:HasTrinket(TrinketType.TRINKET_BOBS_BLADDER) then
                hasBobCounter = hasBobCounter + 1
            end
            if hasBobCounter > 2 then
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
            else
                hasBobCounter = 0
            end
        end
        if ISR.hasBob and not player:HasPlayerForm(PlayerForm.PLAYERFORM_BOB) then
            ISR.hasBob = false
        end
        if player:HasPlayerForm(PlayerForm.PLAYERFORM_BOB) and not ISR.hasBob and ISR.Config["doBob"] then
            ISR.hasBob = true
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
        if ISR.hasSeraphim and not player:HasPlayerForm(PlayerForm.PLAYERFORM_ANGEL) then
            ISR.hasSeraphim = false
        end
        if player:HasPlayerForm(PlayerForm.PLAYERFORM_ANGEL) and not ISR.hasSeraphim and ISR.Config["doSeraphim"] then
            ISR.hasSeraphim = true
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_SOUL) then
                player:AddCollectible(CollectibleType.COLLECTIBLE_SOUL, 1, false)
            end
        end
        ---------------------------------
        -- The Beelzbub Transformation --
        ---------------------------------
        if ISR.hasBeelzbub and not player:HasPlayerForm(PlayerForm.PLAYERFORM_LORD_OF_THE_FLIES) then
            ISR.hasBeelzbub = false
        end
        if player:HasPlayerForm(PlayerForm.PLAYERFORM_LORD_OF_THE_FLIES) and not ISR.hasBeelzbub and ISR.Config["doBeelzbub"] then
            ISR.hasBeelzbub = true
            if not player:HasCollectible(CollectibleType.COLLECTIBLE_MULLIGAN) then
                player:AddCollectible(CollectibleType.COLLECTIBLE_MULLIGAN, 1, false)
            end
            player:AddCollectible(CollectibleType.COLLECTIBLE_HALO_OF_FLIES, 1, false)
            player:AddCollectible(CollectibleType.COLLECTIBLE_HALO_OF_FLIES, 1, false)
        end
        --------------------------------
        -- The Magneto Transformation --
        --------------------------------
        if not ISR.hasMagneto and ISR.Config["doMagneto"] then
            local hasMagnetoCounter = 0
            if player:HasCollectible(CollectibleType.COLLECTIBLE_MAGNETO) then
                hasMagnetoCounter = hasMagnetoCounter + 1
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_STRANGE_ATTRACTOR) then
                hasMagnetoCounter = hasMagnetoCounter + 1
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_METAL_PLATE) then
                hasMagnetoCounter = hasMagnetoCounter + 1
            end
            if player:HasTrinket(TrinketType.TRINKET_SUPER_MAGNET) then
                hasMagnetoCounter = hasMagnetoCounter + 1
            end
            if player:HasTrinket(TrinketType.TRINKET_BROKEN_MAGNET) then
                hasMagnetoCounter = hasMagnetoCounter + 1
            end
            if hasMagnetoCounter > 1 then
                player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/magneto.anm2"))
                SFXManager():Play(SoundEffect.SOUND_POWERUP_SPEWER, 1.0, 0, false, 1.0)
                player:UsePill(PillEffect.PILLEFECT_MAGNETO, PillColor.PILL_NULL)
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
                ISR.hasMagneto = true
            else
                hasMagnetoCounter = 0
            end
        end
        if not player:HasCollectible(CollectibleType.COLLECTIBLE_MAGNETO) and ISR.hasMagneto then
            player:TryRemoveNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/magneto.anm2"))
            ISR.hasMagneto = false
        end
        if ISR.hasMagneto == true and ISR.Config["doMagneto"] then
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
        if player:GetPlayerType() == PlayerType.PLAYER_THELOST and not player:HasCollectible(CollectibleType.COLLECTIBLE_HOLY_MANTLE) and ISR.Config["doLostHolyMantle"] then
            player:AddCollectible(CollectibleType.COLLECTIBLE_HOLY_MANTLE, 0, false)
        end
    end
end

ISR:AddCallback(ModCallbacks.MC_POST_UPDATE, ISR.onUpdate)

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

function ISR:chestInit(chest)
    for playerNum = 1, Game():GetNumPlayers() do
        local player = Game():GetPlayer(playerNum - 1)
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

function ISR:onPill(pill)
    for playerNum = 1, Game():GetNumPlayers() do
        local player = Game():GetPlayer(playerNum - 1)
        local itemPool = Game():GetItemPool()
        if pill == PillEffect.PILLEFFECT_I_FOUND_PILLS and pill == itemPool:GetPillEffect(player:GetPill(0)) and ISR.Config["doFoundPills"] then
            local randomPill
            repeat
                randomPill = math.random(0, 46)
            until randomPill ~= 8
            player:UsePill(randomPill, PillColor.PILL_NULL)
        end
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