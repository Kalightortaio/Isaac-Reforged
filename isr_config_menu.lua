local MCMLoaded, MCM = pcall(require, "scripts.modconfig")
ISR.MCMLoaded = MCMLoaded

if MCMLoaded then
    function AnIndexOf(t, val)
		for k, v in ipairs(t) do
			if v == val then
				return k
			end
		end
		return 1
	end

    MCM.AddSpace("Isaac Reforged", "Info")
    MCM.AddText("Isaac Reforged", "Info", function() return "Isaac Reforged" end)
    MCM.AddSpace("Isaac Reforged", "Info")
    MCM.AddText("Isaac Reforged", "Info", function() return "Version "..ISR.Config.Version end)
    MCM.AddSpace("Isaac Reforged", "Info")
    MCM.AddText("Isaac Reforged", "Info", function() return "by Kalightortaio" end)
    
    -- General Options
    MCM.AddSetting(
        "Isaac Reforged",
        "General",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doTintedGround"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doTintedGround"] then
					onOff = "True"
				end
				return "Tinted Ground: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doTintedGround"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "General",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doTrollTimer"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doTrollTimer"] then
					onOff = "True"
				end
				return "Uniform Troll Timers: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doTrollTimer"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "General",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doRightHand"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doRightHand"] then
					onOff = "True"
				end
				return "Right Hand Trinket: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doRightHand"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "General",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doAntiStatic"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doAntiStatic"] then
					onOff = "True"
				end
				return "Anti-Static Trinket: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doAntiStatic"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "General",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doCainsOtherEye"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doCainsOtherEye"] then
					onOff = "True"
				end
				return "Cain's Other Eye Synergy: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doCainsOtherEye"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "General",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doLostHolyMantle"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doLostHolyMantle"] then
					onOff = "True"
				end
				return "Lost keeps Holy Mantle: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doLostHolyMantle"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "General",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doEternalChests"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doEternalChests"] then
					onOff = "True"
				end
				return "Eternal Chests: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doEternalChests"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Pills",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doFoundPills"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doFoundPills"] then
					onOff = "True"
				end
				return "I Found Pills: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doFoundPills"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Pills",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doDamage"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doDamage"] then
					onOff = "True"
				end
				return "Damage Pills: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doDamage"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Pills",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doShotspeed"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doShotspeed"] then
					onOff = "True"
				end
				return "Shotspeed Pills: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doShotspeed"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Pills",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doBadGas"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doBadGas"] then
					onOff = "True"
				end
				return "Bad Gas: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doBadGas"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Pills",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doWizard"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doWizard"] then
					onOff = "True"
				end
				return "R U a Wizard: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doWizard"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Pills",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doAddicted"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doAddicted"] then
					onOff = "True"
				end
				return "Addicted: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doAddicted"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doConjoined"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doConjoined"] then
					onOff = "True"
				end
				return "Conjoined: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doConjoined"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doAdult"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doAdult"] then
					onOff = "True"
				end
				return "Adult: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doAdult"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doMushroom"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doMushroom"] then
					onOff = "True"
				end
				return "Fun Guy: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doMushroom"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doCrap"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doCrap"] then
					onOff = "True"
				end
				return "Oh Crap: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doCrap"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doSpiderBaby"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doSpiderBaby"] then
					onOff = "True"
				end
				return "Spider Baby: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doSpiderBaby"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doBob"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doBob"] then
					onOff = "True"
				end
				return "Bob: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doBob"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doSeraphim"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doSeraphim"] then
					onOff = "True"
				end
				return "Seraphim: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doSeraphim"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doBeelzbub"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doBeelzbub"] then
					onOff = "True"
				end
				return "Beelzebub: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doBeelzbub"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doMagneto"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doMagneto"] then
					onOff = "True"
				end
				return "Magneto: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doMagneto"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doMom"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doMom"] then
					onOff = "True"
				end
				return "Yes Mother? : " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doMom"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doDuality"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doDuality"] then
					onOff = "True"
				end
				return "Duality: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doDuality"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doGreed"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doGreed"] then
					onOff = "True"
				end
				return "Greed: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doGreed"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doCyborg"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doCyborg"] then
					onOff = "True"
				end
				return "Cyborg: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doCyborg"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doButcher"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doButcher"] then
					onOff = "True"
				end
				return "Butcher: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doButcher"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doAstrology"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doAstrology"] then
					onOff = "True"
				end
				return "Astrologer: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doAstrology"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doAlchemist"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doAlchemist"] then
					onOff = "True"
				end
				return "Alchemist: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doAlchemist"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doHolding"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doHolding"] then
					onOff = "True"
				end
				return "Bag of Holding: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doHolding"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doDelver"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doDelver"] then
					onOff = "True"
				end
				return "Dungeon Delver: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doDelver"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doDealer"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doDealer"] then
					onOff = "True"
				end
				return "Card Dealer: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doDealer"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doTrick"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doTrick"] then
					onOff = "True"
				end
				return "Trick or Treat: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doTrick"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doBony"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doBony"] then
					onOff = "True"
				end
				return "Bony: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doBony"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doStony"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doStony"] then
					onOff = "True"
				end
				return "Stony: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doStony"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doEternal"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doEternal"] then
					onOff = "True"
				end
				return "Eternal: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doEternal"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doCricket"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doCricket"] then
					onOff = "True"
				end
				return "Cricket: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doCricket"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Transf.",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doTammy"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doTammy"] then
					onOff = "True"
				end
				return "Tammy: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doTammy"] = currentBool
            end,
            Info = {"Toggles additional mechanics"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsIsaac"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsIsaac"] then
					onOff = "True"
				end
				return "Isaac: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsIsaac"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsMagdalene"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsMagdalene"] then
					onOff = "True"
				end
				return "Magdalene: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsMagdalene"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsCain"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsCain"] then
					onOff = "True"
				end
				return "Cain: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsCain"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsJudas"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsJudas"] then
					onOff = "True"
				end
				return "Judas: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsJudas"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsXXX"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsXXX"] then
					onOff = "True"
				end
				return "XXX: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsXXX"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsEve"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsEve"] then
					onOff = "True"
				end
				return "Eve: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsEve"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsSamson"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsSamson"] then
					onOff = "True"
				end
				return "Samson: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsSamson"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsAzazel"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsAzazel"] then
					onOff = "True"
				end
				return "Azazel: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsAzazel"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsLazarus"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsLazarus"] then
					onOff = "True"
				end
				return "Lazarus: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsLazarus"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsEden"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsEden"] then
					onOff = "True"
				end
				return "Eden: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsEden"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsLost"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsLost"] then
					onOff = "True"
				end
				return "The Lost: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsLost"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsLilith"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsLilith"] then
					onOff = "True"
				end
				return "Lilith: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsLilith"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsKeeper"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsKeeper"] then
					onOff = "True"
				end
				return "The Keeper: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsKeeper"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsApollyon"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsApollyon"] then
					onOff = "True"
				end
				return "Apollyon: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsApollyon"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["StartingTrinketsForgotten"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["StartingTrinketsForgotten"] then
					onOff = "True"
				end
				return "The Forgotten: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["StartingTrinketsForgotten"] = currentBool
            end,
            Info = {"Toggles if custom trinkets should be added"}
        }
    )
    MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doMoonTablet"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doMoonTablet"] then
					onOff = "True"
				end
				return "Moon Tablet: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doMoonTablet"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doPhilosophy"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doPhilosophy"] then
					onOff = "True"
				end
				return "Philosophy Stone: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doPhilosophy"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doCricketsPaw"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doCricketsPaw"] then
					onOff = "True"
				end
				return "Cricket's Paw: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doCricketsPaw"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doTammysPaw"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doTammysPaw"] then
					onOff = "True"
				end
				return "Tammy's Paw: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doTammysPaw"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doD3"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doD3"] then
					onOff = "True"
				end
				return "The D3: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doD3"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doD19"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doD19"] then
					onOff = "True"
				end
				return "The D19: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doD19"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doSackOfKeys"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doSackOfKeys"] then
					onOff = "True"
				end
				return "Sack of Keys: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doSackOfKeys"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doSnailsPace"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doSnailsPace"] then
					onOff = "True"
				end
				return "Snails Pace: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doSnailsPace"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doLoadedDeck"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doLoadedDeck"] then
					onOff = "True"
				end
				return "Loaded Deck: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doLoadedDeck"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doCricketsCollar"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doCricketsCollar"] then
					onOff = "True"
				end
				return "Cricket's Collar: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doCricketsCollar"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doTammysTail"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doTammysTail"] then
					onOff = "True"
				end
				return "Tammy's Tail: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doTammysTail"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doTammysEyes"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doTammysEyes"] then
					onOff = "True"
				end
				return "Tammy's Eyes: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doTammysEyes"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doTammysBody"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doTammysBody"] then
					onOff = "True"
				end
				return "Tammy's Body: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doTammysBody"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
     MCM.AddSetting(
        "Isaac Reforged",
        "Items",
        {
            Type = ModConfigMenu.OptionType.BOOLEAN,
            CurrentSetting = function()
                return ISR.Config["doStrangeParts"]
            end,
            Display = function()
				local onOff = "False"
				if ISR.Config["doStrangeParts"] then
					onOff = "True"
				end
				return "Strange Parts: " .. onOff
            end,
            OnChange = function(currentBool)
				ISR.Config["doStrangeParts"] = currentBool
            end,
            Info = {"Toggles if custom items should be added"}
        }
    )
end