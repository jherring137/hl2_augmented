"Resource/UI/BuyEquipment_CT.res"
{
	"BuySubMenu"
	{
		"ControlName"		"WizardSubPanel"
		"fieldName"		"BuySubMenu"
		"xpos"			"0"
		"ypos"			"0"
		"wide"			"640"
		"tall"			"480"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
	}

	"Title"
	{
		"ControlName"		"Label"
		"fieldName"		"Title"
				"xpos"		"52"
		"ypos"		"22"
		"wide"		"500"
		"tall"		"48"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#Cstrike_EquipmentLabel"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"font"		"MenuTitle"
		"wrap"		"0"
	}

	"ItemInfo"
	{
		"ControlName"		"Panel"
		"fieldName"		"ItemInfo"
		"xpos"		"244"
		"ypos"		"116"
		"wide"		"400"
		"tall"		"380"
		"autoResize"		"3"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
	}

	"healthvial"
	{
		"ControlName"		"MouseOverPanelButton"
		"fieldName"		"healthvial"
					"xpos"		"52"
		"ypos"		"116"
		"wide"		"170"
		"tall"		"20"
		"autoResize"	"0"
		"pinCorner"		"2"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"#CE_HealthVial"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"command"		"buy item_healthvial"
		"cost"			"650"
	}

	"healthkit"
	{
		"ControlName"		"MouseOverPanelButton"
		"fieldName"		"healthkit"
				"xpos"		"52"
		"xpos"		"0"
		"ypos"		"148"
		"wide"		"170"
		"tall"		"20"
		"autoResize"	"0"
		"pinCorner"		"2"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"#CE_HealthKit"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"command"		"buy item_healthkit"
		"cost"			"1000"
	}

	"battery"
	{
		"ControlName"		"MouseOverPanelButton"
		"fieldName"		"battery"
				"xpos"		"52"
		"ypos"		"180"
		"wide"		"170"
		"tall"		"20"
		"autoResize"	"0"
		"pinCorner"		"2"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"#Cstrike_Battery"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"command"		"buy item_battery"
		"cost"			"200"
	}
	
	"hegrenade"
	{
		"ControlName"		"MouseOverPanelButton"
		"fieldName"		"hegrenade"
				"xpos"		"52"
		"ypos"		"212"
		"wide"		"170"
		"tall"		"20"
		"autoResize"	"0"
		"pinCorner"		"2"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"#CE_HE_Grenade"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"command"		"buy weapon_frag"
		"cost"			"300"
	}
	
	"CancelButton"
	{
		"ControlName"		"MouseOverPanelButton"
		"fieldName"		"CancelButton"
				"xpos"		"52"
		"ypos"		"380"
		"wide"		"170"
		"tall"		"20"
		"autoResize"		"0"
		"pinCorner"		"2"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#Cstrike_Cancel"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"Command"		"vguicancel"
		"Default"		"1"
	}
	"MarketSticker"
	{
		"ControlName"	"ImagePanel"
		"fieldName"	"MarketSticker"
		"image"			"gfx/vgui/market_sticker_category"
		"xpos"	"508"
		"ypos"	"250"
		"wide"	"84"
		"tall"	"84"
		"autoresize"	"2"
		"pinCorner"	"0"
		"visible"	"1"
		"enabled"	"1"
		"tabPosition"	"0"
		"vpos"	"-1"
		"scaleImage"	"1"
	}
}
