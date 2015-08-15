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
TCBDealer.version = 1.0

--[[---------------------------------------------------------
	Settings
-----------------------------------------------------------]]
TCBDealer.settings.testDriveLength = 20
TCBDealer.settings.salePercentage = 75
TCBDealer.settings.autoEnter = false
TCBDealer.settings.precache = true

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
	Vehicles
-----------------------------------------------------------]]
TCBDealer.vehicleTable["audir8tdm"] = {
	name = "Audi R9",
	mdl = "models/tdmcars/audir8.mdl",
	price = 50000,
}

TCBDealer.vehicleTable["dbstdm"] = {
	name = "Aston Martin DBS",
	mdl = "models/tdmcars/dbs.mdl",
	price = 10000,

	customCheck = function(ply) return table.HasValue({"superadmin", "admin"}, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "This vehicle is only available for admins and higher!",
}

TCBDealer.vehicleTable["escaladetdm"] = {
	name = "Cadillac Escalade 2012",
	mdl = "models/tdmcars/cad_escalade.mdl",
	price = 20000,

	customCheck = function(ply) return CLIENT or table.HasValue({"superadmin", "admin", "donator"}, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "This vehicle is only available for donators and higher!",
}

TCBDealer.vehicleTable["s5tdm"] = {
	name = "Audi S5",
	mdl = "models/tdmcars/s5.mdl",
	price = 15000,
}

TCBDealer.vehicleTable["458spidtdm"] = {
	name = "Ferrari 458 Spider",
	mdl = "models/tdmcars/fer_458spid.mdl",
	price = 30000,
}

TCBDealer.vehicleTable["p1tdm"] = {
	name = "McLaren P1",
	mdl = "models/tdmcars/mclaren_p1.mdl",
	price = 45000,
}

TCBDealer.vehicleTable["st1tdm"] = {
	name = "Zenvo ST1",
	mdl = "models/tdmcars/zen_st1.mdl",
	price = 40000,
}

TCBDealer.vehicleTable["raptorsvttdm"] = {
	name = "Ford Raptor SVT",
	mdl = "models/tdmcars/for_raptor.mdl",
	price = 25000,
}
