#include "macros.hpp"
_unit = _this select 0;
_type = toUpper(_this select 1);
switch _type do {
	case "SL": {
		_unit addUniform "U_B_CombatUniform_mcam";
		_unit addVest "";
		_unit addBackpack "TK_RPG_Backpack_EP1";
		_unit addBackpackCargoGlobal ["TK_RPG_Backpack_EP1",2];
		_unit addGoggles "G_Tactical_Clear";
		_unit addHeadgear "H_HelmetB";


		_unit addItemToBackpack ["",0];
		_unit addItemToUniform "itemGPS";
		_unit addItemToVest "itemGPS";

		_unit addPrimaryWeaponItem "muzzle_snds_H";
		_unit addSecondaryWeaponItem "";
		_unit addHandgunItem "muzzle_snds_L";

		addMagazines("1Rnd_HE_M203",3);
		addWeapons ["ACE_M4_RCO_GL","M9","ACE_ANPRC77"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};