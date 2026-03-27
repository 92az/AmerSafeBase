--[[
    AMER SAFE BASE - ORIGINAL (CLEANED)
    Verified by Amer
]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Testol Hub",
   LoadingTitle = "Loading Amer Safe Base...",
   LoadingSubtitle = "Clean Version",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false,
})

local ESPTab = Window:CreateTab("ESP", 4483362458)

ESPTab:CreateToggle({
   Name = "Show Distance",
   CurrentValue = false,
   Callback = function(Value)
   end,
})

ESPTab:CreateToggle({
   Name = "ESP Teammates",
   CurrentValue = false,
   Callback = function(Value)
   end,
})

ESPTab:CreateToggle({
   Name = "Highlight Murderer",
   CurrentValue = false,
   Callback = function(Value)
   end,
})

ESPTab:CreateToggle({
   Name = "Highlight Gun Holder (Sheriff/Hero)",
   CurrentValue = false,
   Callback = function(Value)
   end,
})

ESPTab:CreateToggle({
   Name = "Highlight Innocents",
   CurrentValue = false,
   Callback = function(Value)
   end,
})

local CombatTab = Window:CreateTab("Combat", 4483362458)
local ItemSpawnerTab = Window:CreateTab("Item Spawner", 4483362458)
local CoinDuperTab = Window:CreateTab("Coin Duper", 4483362458)

Rayfield:Notify({
   Title = "Amer Safe Base",
   Content = "Script Loaded Successfully",
   Duration = 5,
})
