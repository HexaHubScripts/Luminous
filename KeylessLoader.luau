-- LUMINOUS KEYLESS LOADER
local http = game:GetService("HttpService")
local lp = game.Players.LocalPlayer
local id = game.PlaceId

local res = HttpService:GetAsync("https://apis.roblox.com/universes/v1/places/" .. id .. "/universe")
local json = HttpService:JSONDecode(res)

local universeId = json.universeId
print(universeId)

local scriptids = {


}
