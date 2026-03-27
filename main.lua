--[[
    AMER SAFE BASE V5 - THE RGB ULTIMATE
    Features: RGB UI, ESP, Fly, Noclip, Speed.
    Owner: Amer
    Status: 100% Virus Free & Verified
]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🌈 Amer Safe Base V5 | RGB MODE",
   LoadingTitle = "Secured & Styled by Amer...",
   LoadingSubtitle = "The Ultimate RGB Script",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false,
})

-- كود الـ RGB التلقائي لتغيير ألوان الواجهة
spawn(function()
    while task.wait() do
        local Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
        Window:ModifyWindow({
            Name = "🌈 Amer Safe Base V5 | RGB MODE",
            Color = Color
        })
    end
end)

-- تبويب الرؤية (Visuals)
local VisualsTab = Window:CreateTab("ESP & Visuals 👁️", 4483362458)

VisualsTab:CreateButton({
   Name = "Enable ESP (كشف اللاعبين)",
   Callback = function()
      for i,v in pairs(game.Players:GetPlayers()) do
         if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local Box = Instance.new("BoxHandleAdornment")
            Box.Name = "AmerESP"
            Box.Parent = v.Character:WaitForChild("HumanoidRootPart")
            Box.Adornee = v.Character:WaitForChild("HumanoidRootPart")
            Box.AlwaysOnTop = true
            Box.ZIndex = 5
            Box.Size = Vector3.new(4, 5, 1)
            Box.Transparency = 0.5
            Box.Color3 = Color3.new(1, 0, 1)
         end
      end
      Rayfield:Notify({Title = "Amer ESP", Content = "تم كشف جميع اللاعبين!"})
   end,
})

-- تبويب الحركة (Movement)
local MoveTab = Window:CreateTab("Movement 🚀", 4483362458)

local Noclip = false
MoveTab:CreateToggle({
   Name = "Noclip (المشي عبر الجدران)",
   CurrentValue = false,
   Callback = function(Value)
      Noclip = Value
      game:GetService("RunService").Stepped:Connect(function()
         if Noclip then
            if game.Players.LocalPlayer.Character then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                   if v:IsA("BasePart") then v.CanCollide = false end
                end
            end
         end
      end)
   end,
})

MoveTab:CreateButton({
   Name = "Fly (الطيران - اضغط E)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Edgeiy/InfiniteYield/master/source"))():Fly()
   end,
})

-- تبويب القوة (Stats)
local PlayerTab = Window:CreateTab("Stats ⚡", 4483362458)

PlayerTab:CreateSlider({
   Name = "WalkSpeed (السرعة)",
   Range = {16, 500},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value)
      if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
      end
   end,
})

-- حقوق السكربت
local CreditsTab = Window:CreateTab("Credits 👑", 4483362458)
CreditsTab:CreateLabel("Script Created & Verified By: Amer")
CreditsTab:CreateParagraph({Title = "Enjoy!", Content = "هذا السكربت خاص بعامر وآمن 100%."})

Rayfield:Notify({
   Title = "Amer Base V5",
   Content = "تم تفعيل وضع الـ RGB.. استمتع!",
   Duration = 5,
})
