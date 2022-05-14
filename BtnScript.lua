local ReplicatedStorage = game:GetService("ReplicatedStorage")
local checkAnswer = ReplicatedStorage:WaitForChild("checkAnswer")

local function onClick()
	local input = script.Parent.Parent.Text
	checkAnswer:FireServer(input)
end

script.Parent.MouseButton1Click:Connect(onClick)
