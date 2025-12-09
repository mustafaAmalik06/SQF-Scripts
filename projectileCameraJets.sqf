params ["_object", "_flarename"];
//WIP, GET FLARES TO BE IGNORED!
_object addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
    copyToClipboard str _projectile;
    hint str _flarename;
	if (_projectile != _flarename) then {
     projectileFire = _projectile;
	setAccTime 1;
	camera = "camera" camcreate [0,0,0]; 
	camera cameraeffect ["internal", "back"]; 
	camera attachTo [projectileFire, [0.5, -3, 0.15]]; 
	camera setDir 0; 
	camera camSetFOV 0.50; 
	showCinemaBorder false;
	0 spawn {waitUntil {sleep 1; not alive projectileFire};
	sleep 2;
	camera cameraEffect ["terminate", "back"];}}; 
	
		}];