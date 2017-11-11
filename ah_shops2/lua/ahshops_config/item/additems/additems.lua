---------------------------------------------------------------------------------
-- Developed by Mikael for Xanath Roleplay from 21-8-2016 to **-**-****        --
-- Mikael ( Mikael ******** ) [ goo.gl/W5SrkB ] ( ID64: 76561198020603627 )    --
-- 								            								   --
-- "Shop Npc"							     								   --
-- Features armor and health selling, features a new plus for your roleplay    --
-- Easy config which everyone can handle.									   --
-- Brings life to your roleplay experience.                					   --
--								              								   --
-- If you wish to contact me:             					   				   --
-- Mikael: mikaelgame@hotmailcom				             				   --
---------------------------------------------------------------------------------
--------------BEFORE YOU START BE SURE TO READ THE README.TXT--------------------
---------------------------------------------------------------------------------
addItems = {}
---------------------------------------------------------------------------------
------------------------------Add Item Explained --------------------------------
---------------------------------------------------------------------------------

--[[
	
	MAIN GUIDE:
	
	Here is a short guide about how to make items and what dealer can see them etc.
	
	We start of by explaining about this first part, what do you place in here?
	Well this determine which npc will sell these items you added to this row.
	
	Every npc have a Id when you create it, you use the id you set to place in here.
	So fx my npc's Id is set to ArmorDealer_1, therefore i place ArmorDealer_1 in the top.
	You are only allowed to use 1 id per row, if you use more, stuff can break.
	
	Here is a picture of my npc create, so it maybe makes more sense in what you need to use from it.
	https://gyazo.com/16e850e11b262e9977abca168eb375aa
	
	addItems["ArmorDealer_1"] = { 
	
	Now we have decided which npc will read our row, in this case the npc we created is set to sell armor.
	You can read more about this in the main/addnpc/addnpc.lua, where it is all explained.
	
	Sinse our npc is set to sell Armor, then there is lot of irrelevant stuff in our row, which we don't need.
	But this doesn't mean you are forced to remove the irrevant stuff from your table, in this case as we sell armor,
	then its "Health", "Item", but mainly you can just leave them in the row, the code will ignore them if they are not used.
	
	But if you want the row to look more organized you can freely remove them from the row, so it will look like this:
	
	addItems["ArmorDealer_1"] = { 
	[1] = {
		Name = "Armor Pack",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50, 
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true }, 
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true} 
	},
	[2] = {
		Name = "Armor Pack2",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50,
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}
	}
	
	Now lets say you set the npc to sell "Health", then you could have removed "Armor = 50," amd kept "Health = 50,".
	If you are confused about all this, then just keep them in the row.
	
	JOB AND ULX RESTRICTIONS:
	
	If you do not want to restrict a item to a Job/ulx group, then be sure to remove them from the row.
	Mainly so it look like this:
	
		addItems["ArmorDealer_1"] = { 
	[1] = {
		Name = "Armor Pack",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50, 
		Outline = false
	},
	[2] = {
		Name = "Armor Pack2",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50,
		Outline = false
	}
	}
	
	Another note, be sure to end every row with a comma, and leave the last one without a comma.
	
]]--

---------------------------------------------------------------------------------
--------------------Add more Items to a row.Item Explained ----------------------
---------------------------------------------------------------------------------

--[[
	HOW TO ADD MORE ITEMS TO A ROW:
	
	It is extremely simple to add new items to a row, lets take an example here.
		
	addItems["ArmorDealer_1"] = { -- Set the Id from ahCreateNpc here.
	[1] = {
		Name = "Armor Pack",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50, -- If you do not use this row, then remove it entirely from the table.
		Health = 0, -- If you do not use this row, then remove it entirely from the table.
		Item = "", -- If you do not use this row, then remove it entirely from the table.
		Outline = false, --Draw a outline around a box, if its job/ulx restricted.
		Job = {["Medic"] = true, ["Mayor"] = true }, -- If you do not use this row, then remove it entirely from the table.
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true} -- If you do not use this row, then remove it entirely from the table.
	},
	[2] = {
		Name = "Armor Pack2",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50,
		Health = 0,
		Item = "",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}
	}
	
	To make a new item, you simply just copy paste the row above:
	
		[2] = {
		Name = "Armor Pack2",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50,
		Health = 0,
		Item = "",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}
	
	then we change its number, so it doesnt match the other rows, in this case set it to 3.
	And then we change it bit up, so it contain a different offer.
	
		[3] = {
		Name = "Armor Pack 33",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 120 armor.",
		Price = 5000,
		Armor = 120,
		Health = 0,
		Item = "",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}
	
	after editing we add it to the main row.
	
	addItems["ArmorDealer_1"] = { -- Set the Id from ahCreateNpc here.
	[1] = {
		Name = "Armor Pack",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50, -- If you do not use this row, then remove it entirely from the table.
		Health = 0, -- If you do not use this row, then remove it entirely from the table.
		Item = "", -- If you do not use this row, then remove it entirely from the table.
		Outline = false, --Draw a outline around a box, if its job/ulx restricted.
		Job = {["Medic"] = true, ["Mayor"] = true }, -- If you do not use this row, then remove it entirely from the table.
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true} -- If you do not use this row, then remove it entirely from the table.
	}, 
	[2] = {
		Name = "Armor Pack2",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50,
		Health = 0,
		Item = "",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}
		[3] = {
		Name = "Armor Pack 33",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 120 armor.",
		Price = 5000,
		Armor = 120,
		Health = 0,
		Item = "",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}
	}
	
	now something is missing, every "}" between rows, there will need to be a comma exept the last one, so it will look like this.
	
		addItems["ArmorDealer_1"] = { -- Set the Id from ahCreateNpc here.
	[1] = {
		Name = "Armor Pack",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50, -- If you do not use this row, then remove it entirely from the table.
		Health = 0, -- If you do not use this row, then remove it entirely from the table.
		Item = "", -- If you do not use this row, then remove it entirely from the table.
		Outline = false, --Draw a outline around a box, if its job/ulx restricted.
		Job = {["Medic"] = true, ["Mayor"] = true }, -- If you do not use this row, then remove it entirely from the table.
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true} -- If you do not use this row, then remove it entirely from the table.
	}, 
	[2] = {
		Name = "Armor Pack2",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50,
		Health = 0,
		Item = "",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}, --COMMA IS ADDED HERE
		[3] = {
		Name = "Armor Pack 33",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 120 armor.",
		Price = 5000,
		Armor = 120,
		Health = 0,
		Item = "",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	} -- NO COMMA NEEDED HERE AS IT IS THE LAST ONE.
	}
	
	And boom here we got a new item, if you are still confused, there is a youtube guide, which describe it better.
	If you are still confused after, you are welcome to add me on steam.

]]--

---------------------------------------------------------------------------------
---------------------------------Add Item tabs ----------------------------------
---------------------------------------------------------------------------------

addItems["ArmorDealer_1"] = { -- Set the Id from ahCreateNpc here.
	[1] = {
		Name = "Armor Pack", -- not allowed to delete from row.
		Color = Color( 50, 50, 180 ), -- not allowed to delete from row.
		Model = "models/weapons/w_defuser.mdl", -- not allowed to delete from row.
		Description = "This pack include 50 armor.", -- not allowed to delete from row.
		Price = 450, -- not allowed to delete from row.
		Armor = 50, -- If you do not use this row, then you can remove it entirely from the table.
		Health = 0, -- If you do not use this row, then you can remove it entirely from the table.
		Item = "", -- If you do not use this row, then you can remove it entirely from the table.
		Outline = false, --Draw a outline around a box, if its job/ulx restricted, do not delete this.
		Job = {["Medic"] = true, ["Mayor"] = true }, -- If you do not use this row, then remove it entirely from the table.
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true} -- If you do not use this row, then remove it entirely from the table.
	},
	[2] = {
		Name = "Armor Pack2",
		Color = Color( 50, 50, 180 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50,
		Health = 0,
		Item = "",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}
}

addItems["HealthDealer_1"] = { -- Set the Id from ahCreateNpc here.
	[1] = {
		Name = "Health Pack",
		Color = Color( 255, 50, 50 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50,
		Health = 80,
		Item = "",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	},
	[2] = {
		Name = "health Pack2",
		Color = Color( 255, 50, 50 ),
		Model = "models/weapons/w_defuser.mdl",
		Description = "This pack include 50 armor.",
		Price = 450,
		Armor = 50,
		Health = 80,
		Item = "",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}
}

addItems["WeaponDealer_1"] = { -- Set the Id from ahCreateNpc here.
	[1] = {
		Name = "G3sg1 Riffle",
		Color = Color( 50, 180, 50 ),
		Model = "models/weapons/w_snip_g3sg1.mdl",
		Description = "This pack include a heavy riffle.",
		Price = 450,
		Armor = 50,
		Health = 80,
		Item = "bb_g3sg1_alt",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	},
	[2] = {
		Name = "G3sg1 Riffle",
		Color = Color( 50, 180, 50 ),
		Model = "models/weapons/w_snip_g3sg1.mdl",
		Description = "This pack include a heavy riffle.",
		Price = 450,
		Armor = 50,
		Health = 80,
		Item = "bb_g3sg1_alt",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}
}

addItems["EntitiesDealer_1"] = { -- Set the Id from ahCreateNpc here.
	[1] = {
		Name = "Soil Pack",
		Color = Color( 180, 180, 50 ),
		Model = "models/soil/soil.mdl",
		Description = "This pack include a soilpack.",
		Price = 450,
		Armor = 50,
		Health = 80,
		Item = "the_weed_dirt",
		Outline = false,
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	},
	[2] = {
		Name = "Soil Pack",
		Color = Color( 180, 180, 50 ),
		Model = "models/soil/soil.mdl",
		Description = "This pack include a soilpack.",
		Price = 450,
		Armor = 50,
		Health = 80,
		Item = "the_weed_dirt",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}
}

addItems["PropDealer_1"] = { -- Set the Id from ahCreateNpc prop dealer here.
	[1] = {
		Name = "Couch",
		Color = Color( 255, 255, 255 ),
		Model = "models/props_c17/FurnitureCouch002a.mdl",
		Description = "This pack include a couch.",
		Price = 450,
		Armor = 50,
		Health = 80,
		Item = "the_weed_dirt",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	},
	[2] = {
		Name = "Soil Pack",
		Color = Color( 255, 255, 255 ),
		Model = "models/props_c17/FurnitureCouch002a.mdl",
		Description = "This pack include a couch.",
		Price = 450,
		Armor = 50,
		Health = 80,
		Item = "the_weed_dirt",
		Outline = false, 
		Job = {["Medic"] = true, ["Mayor"] = true },
		Ulx = {["donator"] = true, ["ultradonator"] = true, ["ambassador"] = true, ["superadmin"] = true}
	}
}

---------------------------------------------------------------------------------
----------------------------------------------- ---------------------------------
---------------------------------------------------------------------------------


