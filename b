_G.NoBugs = true
if _G.NoBugs == true then
	function onTouched(part)       
		local h = part
		if h.Name == "Block" then
			game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
		end
	end
	Partz              = Instance.new("Part")
	Partz.Parent       = workspace
	Partz.Transparency = 1
	Partz.CanCollide   = false
	Partz.Massless     = true
	Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
	Partz.Size         = Vector3.new(5,20,5)

	local light         = Instance.new("SelectionBox")
	light.Adornee       = Partz
	light.LineThickness = 0.05
	light.Color3        = Color3.fromRGB(255, 0, 255)
	light.Parent        = Partz
	light.Name          = "SelectBox"

	local bruh = Partz.Touched:connect(onTouched)

	wait()
	bruh:Disconnect()
	Partz:Destroy()
end
