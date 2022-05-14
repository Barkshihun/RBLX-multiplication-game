local x = math.random(9)
local y = math.random(9)
local answer = x * y
local problam = x .. " x " .. y .. " = ?"
script.Parent.SurfaceGui.TextLabel.Text = problam

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local checkAnswer = Instance.new("RemoteEvent")
checkAnswer.Name = "checkAnswer"
checkAnswer.Parent = ReplicatedStorage

local correctSound = script.Parent["Slot Machine Stop"]
local wrongSound = script.Parent["Windows xp Ding"]

local function judgeAnswer(_, input)
	if answer == tonumber(input) then
		correctSound:Play()
		script.Parent.SurfaceGui.TextLabel.Text = "O"
	else
		wrongSound:Play()
		script.Parent.SurfaceGui.TextLabel.Text = "X"
	end
	wait(2)
	x = math.random(9)
	y = math.random(9)
	answer = x * y
	problam = x .. " x " .. y .. " = ?"
	script.Parent.SurfaceGui.TextLabel.Text = problam
end

checkAnswer.OnServerEvent:Connect(judgeAnswer)
