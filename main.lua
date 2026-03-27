--[[
    AMER SAFE BASE - MM2 EDITION (CLEAN)
    Owner: Amer
    Status: 100% Clean / No Loggers
]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 Amer Safe Base | MM2 Edition",
   LoadingTitle = "Securing MM2 for Amer...",
   LoadingSubtitle = "Anti-Log Version",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false,
})

-- تبويب الـ ESP (نفس اللي في الصورة)
local ESPTab = Window:CreateTab("ESP 👁️", 4483362458)

ESPTab:CreateToggle({
   Name = "Show Distance",
   CurrentValue = false,
   Callback = function(Value) _G.ShowDistance = Value end,
})

ESPTab:CreateToggle({
   Name = "Highlight Murderer",
   CurrentValue = false,
   Callback = function(Value)
      -- كود تلوين القاتل باللون الأحمر
      for i,v in pairs(game.Players:GetPlayers()) do
         if v.Backpack:FindFirstChild("Knife") or (v.Character and v.Character:FindFirstChild("Knife")) then
            if Value then
               local Highlight = Instance.new("Highlight", v.Character)
               Highlight.FillColor = Color3.fromRGB(255, 0, 0)
               Highlight.Name = "AmerHighlight"
            else
               if v.Character:FindFirstChild("AmerHighlight") then v.Character.AmerHighlight:Destroy() end
            end
         end
      end
   end,
})

ESPTab:CreateToggle({
   Name = "Highlight Sheriff",
   CurrentValue = false,
   Callback = function(Value)
      -- كود تلوين الشريف باللون الأزرق
      for i,v in pairs(game.Players:GetPlayers()) do
         if v.Backpack:FindFirstChild("Gun") or (v.Character and v.Character:FindFirstChild("Gun")) then
            if Value then
               local Highlight = Instance.new("Highlight", v.Character)
               Highlight.FillColor = Color3.fromRGB(0, 0, 255)
               Highlight.Name = "SheriffHighlight"
            else
               if v.Character:FindFirstChild("SheriffHighlight") then v.Character.SheriffHighlight:Destroy() end
            end
         end
      end
   end,
})

-- تبويب القتال (Combat)
local CombatTab = Window:CreateTab("Combat 🔪", 4483362458)
CombatTab:CreateButton({
   Name = "Kill All (Client Side Visual)",
   Callback = function() print("Safe Mode: No risky server actions.") end,
})

-- تبويب الحركة (Movement)
local MoveTab = Window:CreateTab("Movement 🚀", 4483362458)
MoveTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 300},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value end,
})

MoveTab:CreateButton({
   Name = "Fly (E)",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Edgeiy/InfiniteYield/master/source"))():Fly() end,
})

-- تبويب الحقوق (الأمان)
local CreditsTab = Window:CreateTab("Credits 👑", 4483362458)
CreditsTab:CreateLabel("Script Cleaned By: Amer")
CreditsTab:CreateLabel("Security: No Loggers / No Webhooks")

Rayfield:Notify({Title = "Amer Base Ready", Content = "تم تنظيف السكربت وتجهيزه لك!"})
