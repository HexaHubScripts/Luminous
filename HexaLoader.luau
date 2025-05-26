--[[
██╗  ██╗███████╗██╗  ██╗ █████╗     ██╗  ██╗██╗   ██╗██████╗ 
██║  ██║██╔════╝╚██╗██╔╝██╔══██╗    ██║  ██║██║   ██║██╔══██╗
███████║█████╗   ╚███╔╝ ███████║    ███████║██║   ██║██████╔╝
██╔══██║██╔══╝   ██╔██╗ ██╔══██║    ██╔══██║██║   ██║██╔══██╗
██║  ██║███████╗██╔╝ ██╗██║  ██║    ██║  ██║╚██████╔╝██████╔╝
╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
If you are reading this... How did you get here? ANYWAY U NOT GETTING A FREE SCRIPT!1! You're either perfect or you're not me.                
]]--

local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local localPlayer = Players.LocalPlayer

local script_key = script_key -- Preserving this variable in case it's needed

local placeLoaders = {
    [122678592501168] = "c1af715fb5cef92216c02bab058d7050",
    [126884695634066] = "bbec920857e855e25145e8e73278fdc0",
    [111989938562194] = "d01c4774a11befb3205e3dc3c5c5e48a",
    [87700573492940]  = "72a2e5d817aaa0f7b969b103e44cd507",
    [85896571713843]  = "8549aaff307d7a4d9b391c61f2ddb67b"
}

local loaderId = placeLoaders[game.PlaceId]
if loaderId then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/" .. loaderId .. ".lua"))()
else
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "Hexa Hub",
            Text = "Unsupported game!",
            Duration = 5
        })
    end)
end
