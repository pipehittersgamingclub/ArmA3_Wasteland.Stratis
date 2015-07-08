// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: playerSetupGear.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private ["_player", "_uniform", "_vest", "_headgear", "_goggles", "_donatorLevel"];
_player = _this;

_donatorEnabled = ["A3W_donatorEnabled"] call isConfigOn;
_donatorLevel = player getVariable ["donator", 0];


// Clothing is now defined in "client\functions\getDefaultClothing.sqf"

_uniform = [_player, "uniform"] call getDefaultClothing;
_vest = [_player, "vest"] call getDefaultClothing;
_headgear = [_player, "headgear"] call getDefaultClothing;
_goggles = [_player, "goggles"] call getDefaultClothing;

if (_uniform != "") then { _player addUniform _uniform };
if (_vest != "") then { _player addVest _vest };
if (_headgear != "") then { _player addHeadgear _headgear };
if (_goggles != "") then { _player addGoggles _goggles };

sleep 0.1;

// Remove GPS
_player unlinkItem "ItemGPS";

// Remove radio
//_player unlinkItem "ItemRadio";

// Remove NVG
if (hmd _player != "") then { _player unlinkItem hmd _player };

switch (_donatorLevel) do 
{
	case 1:
	{
		// Basic;
		//Remove all Items;
		removeAllWeapons _player;
		removeAllItems _player;
		removeAllAssignedItems _player;
		removeUniform _player;
		removeVest _player;
		removeBackpack _player;
		removeHeadgear _player;
		removeGoggles _player;
		
		//  "Add containers";
		_player forceAddUniform "U_BG_Guerilla2_3";
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addVest "V_PlateCarrierGL_rgr";
		_player addItemToVest "HandGrenade";
		_player addItemToVest "HandGrenade";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addBackpack "B_Carryall_oli";
		_player addHeadgear "H_Cap_headphones";
		_player addGoggles "G_Bandanna_beast";

		// "Add weapons";
		_player addWeapon "SMG_01_F";
		_player addPrimaryWeaponItem "muzzle_snds_acp";
		_player addPrimaryWeaponItem "optic_Holosight_smg";		
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addHandgunItem "muzzle_snds_acp";
		_player addHandgunItem "optic_MRD";
		_player addWeapon "Rangefinder";

		// "Add items";
		_player linkItem "ItemMap";
		_player linkItem "ItemCompass";
		_player linkItem "ItemWatch";
		_player linkItem "ItemRadio";
		_player linkItem "ItemGPS";
		_player linkItem "NVGoggles_OPFOR";
		_player linkItem "Medikit";
	};
	case 2:
	{
		// BASS;	
		//Remove all Items;
		removeAllWeapons _player;
		removeAllItems _player;
		removeAllAssignedItems _player;
		removeUniform _player;
		removeVest _player;
		removeBackpack _player;
		removeHeadgear _player;
		removeGoggles _player;
		
		// "Add containers";
		_player forceAddUniform "U_BG_Guerilla2_1";
		_player addItemToUniform "6Rnd_45ACP_Cylinder";
		_player addItemToUniform "6Rnd_45ACP_Cylinder";
		_player addItemToUniform "6Rnd_45ACP_Cylinder";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addVest "V_PlateCarrierGL_rgr";
		_player addItemToVest "HandGrenade";
		_player addItemToVest "HandGrenade";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addBackpack "B_Carryall_khk";
		_player addGoggles "G_Bandanna_blk";

		// "Add weapons";
		_player addWeapon "SMG_01_F";
		_player addPrimaryWeaponItem "muzzle_snds_acp";
		_player addPrimaryWeaponItem "optic_Holosight_smg";		
		_player addWeapon "hgun_Pistol_heavy_02_F";
		_player addHandgunItem "optic_Yorris";
		_player addWeapon "Rangefinder";

		// "Add items";
		_player linkItem "ItemMap";
		_player linkItem "ItemCompass";
		_player linkItem "ItemWatch";
		_player linkItem "ItemRadio";
		_player linkItem "ItemGPS";
		_player linkItem "NVGoggles_OPFOR";
		_player linkItem "Medikit";
	};
	case 3:
	{
		// Thasher;
		//Remove all Items;
		removeAllWeapons _player;
		removeAllItems _player;
		removeAllAssignedItems _player;
		removeUniform _player;
		removeVest _player;
		removeBackpack _player;
		removeHeadgear _player;
		removeGoggles _player;
		
		// "Add containers";
		_player forceAddUniform "U_BG_Guerilla2_1";
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addVest "V_PlateCarrierGL_rgr";
		_player addItemToVest "HandGrenade";
		_player addItemToVest "HandGrenade";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addBackpack "B_Carryall_khk";
		_player addHeadgear "H_HelmetSpecB_paint1";
		_player addGoggles "G_Bandanna_beast";

		// "Add weapons";
		_player addWeapon "SMG_01_F";
		_player addPrimaryWeaponItem "muzzle_snds_acp";
		_player addPrimaryWeaponItem "optic_Holosight_smg";		
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addHandgunItem "muzzle_snds_acp";
		_player addHandgunItem "optic_MRD";
		_player addWeapon "Rangefinder";

		// "Add items";
		_player linkItem "ItemMap";
		_player linkItem "ItemCompass";
		_player linkItem "ItemWatch";
		_player linkItem "ItemRadio";
		_player linkItem "ItemGPS";
		_player linkItem "NVGoggles_OPFOR";
		_player linkItem "Medikit";
	};
	case 4:
	{
		// TurtleTax;
		//Remove all Items;
		removeAllWeapons _player;
		removeAllItems _player;
		removeAllAssignedItems _player;
		removeUniform _player;
		removeVest _player;
		removeBackpack _player;
		removeHeadgear _player;
		removeGoggles _player;
		
		// "Add containers";		
		_player forceAddUniform "U_BG_Guerilla2_3";
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addVest "V_PlateCarrierGL_rgr";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "HandGrenade";
		_player addItemToVest "HandGrenade";
		_player addBackpack "B_Carryall_oli";
		_player addHeadgear "H_HelmetSpecB_paint1";
		_player addGoggles "G_Bandanna_sport";

		// "Add weapons";
		_player addWeapon "SMG_01_F";
		_player addPrimaryWeaponItem "muzzle_snds_acp";
		_player addPrimaryWeaponItem "optic_Holosight_smg";		
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addHandgunItem "muzzle_snds_acp";
		_player addHandgunItem "optic_MRD";
		_player addWeapon "Rangefinder";

		// "Add items";
		_player linkItem "ItemMap";
		_player linkItem "ItemCompass";
		_player linkItem "ItemWatch";
		_player linkItem "ItemRadio";
		_player linkItem "ItemGPS";
		_player linkItem "NVGoggles_OPFOR";
		_player linkItem "Medikit";
	};
	case 5:
	{
		// ZDUB;
		//Remove all Items;
		removeAllWeapons _player;
		removeAllItems _player;
		removeAllAssignedItems _player;
		removeUniform _player;
		removeVest _player;
		removeBackpack _player;
		removeHeadgear _player;
		removeGoggles _player;
		
		//"Add containers";
		_player forceAddUniform "U_BG_Guerilla2_3";
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "11Rnd_45ACP_Mag";		
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addVest "V_PlateCarrierGL_rgr";
		_player addItemToVest "HandGrenade";
		_player addItemToVest "HandGrenade";		
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addBackpack "B_Carryall_mcamo";
		_player addHeadgear "H_HelmetB_light_snakeskin";
		_player addGoggles "G_Bandanna_sport";

		// "Add weapons";
		_player addWeapon "SMG_01_F";
		_player addPrimaryWeaponItem "muzzle_snds_acp";
		_player addPrimaryWeaponItem "optic_Holosight_smg";
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addHandgunItem "muzzle_snds_acp";
		_player addHandgunItem "optic_MRD";
		_player addWeapon "Rangefinder";

		//"Add items";
		_player linkItem "ItemMap";
		_player linkItem "ItemCompass";
		_player linkItem "ItemWatch";
		_player linkItem "ItemRadio";
		_player linkItem "ItemGPS";
		_player linkItem "NVGoggles_OPFOR";
		_player linkItem "Medikit";
	};
	case 6:
	{
		
		// TurtleTax Recontango;
		//Remove all Items;
		removeAllWeapons _player;
		removeAllItems _player;
		removeAllAssignedItems _player;
		removeUniform _player;
		removeVest _player;
		removeBackpack _player;
		removeHeadgear _player;
		removeGoggles _player;
		
		//"Add containers";
		_player forceAddUniform "U_B_HeliPilotCoveralls";
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "11Rnd_45ACP_Mag";		
		_player addItemToUniform "11Rnd_45ACP_Mag";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addItemToUniform "SmokeShellRed";
		_player addVest "V_PlateCarrierGL_rgr";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "30Rnd_45ACP_Mag_SMG_01_Tracer_Green";
		_player addItemToVest "HandGrenade";
		_player addItemToVest "HandGrenade";		
		_player addBackpack "B_Carryall_oli";
		_player addHeadgear "H_Cap_headphones";
		_player addGoggles "G_Bandanna_beast";

		// "Add weapons";
		_player addWeapon "SMG_01_F";
		_player addPrimaryWeaponItem "muzzle_snds_acp";
		_player addPrimaryWeaponItem "optic_Holosight_smg";
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addHandgunItem "muzzle_snds_acp";
		_player addHandgunItem "optic_MRD";
		_player addWeapon "Rangefinder";

		//"Add items";
		_player linkItem "ItemMap";
		_player linkItem "ItemCompass";
		_player linkItem "ItemWatch";
		_player linkItem "ItemRadio";
		_player linkItem "ItemGPS";
		_player linkItem "NVGoggles_OPFOR";
		_player linkItem "Medikit";
	};
	default 
	{
		_player addBackpack "B_AssaultPack_rgr";
		_player addMagazine "11Rnd_45ACP_Mag";
		_player addWeapon "hgun_Pistol_heavy_01_snds_F";
		_player addMagazine "11Rnd_45ACP_Mag";
		_player addMagazine "11Rnd_45ACP_Mag";
		_player addMagazine "11Rnd_45ACP_Mag";
		_player addItem "FirstAidKit";
		_player selectWeapon "hgun_Pistol_heavy_01_snds_F";
	};
	
};
 
switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player removeItem "FirstAidKit";
		_player addItem "Medikit";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player addItem "MineDetector";
		_player addItem "Toolkit";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Rangefinder";
	};
};

if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};
