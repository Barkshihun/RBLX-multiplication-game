local ReplicatedStorage = game:GetService("ReplicatedStorage")
local checkAnswer = ReplicatedStorage:WaitForChild("checkAnswer")

local function onFocusLost()
	local input = script.Parent.Text
	checkAnswer:FireServer(input)
end

script.Parent.FocusLost:Connect(onFocusLost)
