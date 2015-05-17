_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "UAZ" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
