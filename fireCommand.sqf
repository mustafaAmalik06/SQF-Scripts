params ["_unit", "_amount"];


//Every unit in the units group fires the round once.
group _unit setBehaviour "COMBAT";
sleep 1;
for "_i" from 1 to _amount do {
{
_x forceWeaponFire [weaponState _x select 1, "FullAuto"];
sleep 0.005;
//hint str _x;
_x addeventhandler ["fired", {(_this select 0) setvehicleammo 1}]
//_x addMagazine 



} forEach units group _unit;




};