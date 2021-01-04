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
    
    -- Starting Trinkets
    MCM.AddSetting(
        "Isaac Reforged",
        "Trinkets",
        {
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
            Type = ModConfigMenuOptionType.BOOLEAN,
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
end