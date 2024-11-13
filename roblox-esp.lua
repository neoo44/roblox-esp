local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

function HighlightPlayer(player)
    local humanoid = player.Character:WaitForChild("HumanoidRootPart")
    local highlight = Instance.new("Highlight")
    highlight.Parent = LocalPlayer:WaitForChild("PlayerGui")
    highlight.Adornee = humanoid
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.FillTransparency = 0.5
end

Players.PlayerAdded:Connect(HighlightPlayer)
for _, player in pairs(Players:GetPlayers()) do
    HighlightPlayer(player)
end
