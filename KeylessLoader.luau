-- LUMINOUS KEYLESS LOADER
local http = game:GetService("HttpService")
local lp = game.Players.LocalPlayer
local id = game.PlaceId

local res = HttpService:GetAsync("https://apis.roblox.com/universes/v1/places/" .. id .. "/universe")
local json = HttpService:JSONDecode(res)

local universeId = json.universeId
print(universeId)

local scriptids = {
    [7709344486] = true,
    [7436755782] = true,
    [6504986360] = true,
    [8316902627] = true
}

if scriptids[universeId] then
  loadstring("https://raw.githubusercontent.com/HexaHubScripts/Luminous/refs/heads/main/Scripts/" .. universeId .. ".luau")
else
  setclipboard(https://discord.gg/BAzAJ4sve6)  
  lp:Kick("Unsupported game. Request features or games in the Discord copied to your clipboard!")
end
