/*---------------------------------------------------------------------------
	
	Creator: TheCodingBeast - TheCodingBeast.com
	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. 
	To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/
	
---------------------------------------------------------------------------*/

--[[---------------------------------------------------------
	Variables
-----------------------------------------------------------]]
TCBDealer = TCBDealer or {}

TCBDealer.settings = {}
TCBDealer.dealerSpawns = {}
TCBDealer.vehicleTable = {}

--[[---------------------------------------------------------
	Version
-----------------------------------------------------------]]
TCBDealer.version = 1.2

--[[---------------------------------------------------------
	Settings
-----------------------------------------------------------]]
TCBDealer.settings.testDriveLength = 20
TCBDealer.settings.salePercentage = 75
TCBDealer.settings.colorPicker = true
TCBDealer.settings.randomColor = true
TCBDealer.settings.autoEnter = false
TCBDealer.settings.npcBubble = true
TCBDealer.settings.precache = true

TCBDealer.settings.frameTitle = "TCB"

--[[---------------------------------------------------------
	Dealer Spawns
-----------------------------------------------------------]]
TCBDealer.dealerSpawns["rp_downtown_v4c_v2"] = {
	{
		pos = Vector(640, -650, -130),
		ang = Angle(0, -90, 0),
		mdl = "models/Characters/Hostage_02.mdl",

		spawns = {
			{
				pos = Vector(912, -860, -140),
				ang = Angle(30, 0, 0)
			},
			{
				pos = Vector(163, -960, -139),
				ang = Angle(0, 180, 0)
			}
		}
	}
}

--[[---------------------------------------------------------
	Vehicles - http://facepunch.com/showthread.php?t=1481400
-----------------------------------------------------------]]
TCBDealer.vehicleTable["audir8tdm"] = {
	price = 50000
}

TCBDealer.vehicleTable["dbstdm"] = {
	price = 10000,

	customCheck = function(ply) return table.HasValue({"superadmin", "admin"}, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "This vehicle is only available for admins and higher!",
}

TCBDealer.vehicleTable["escaladetdm"] = {
	price = 20000,

	customCheck = function(ply) return CLIENT or table.HasValue({"superadmin", "admin", "donator"}, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "This vehicle is only available for donators and higher!",
}

TCBDealer.vehicleTable["s5tdm"] = {
	price = 15000,
}

TCBDealer.vehicleTable["458spidtdm"] = {
	price = 30000,
	color = Color(255, 40, 0)
}

TCBDealer.vehicleTable["p1tdm"] = {
	price = 45000,
}

TCBDealer.vehicleTable["st1tdm"] = {
	price = 40000,
}

TCBDealer.vehicleTable["raptorsvttdm"] = {
	price = 25000,
}