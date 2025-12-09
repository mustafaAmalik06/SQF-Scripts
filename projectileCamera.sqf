params ["_object"];
_object addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
	hint "Fired!";
	hint str _ammo;
	projectileFire = _projectile;
	setAccTime 1;
	camera = "camera" camcreate [0,0,0]; 
	camera cameraeffect ["internal", "back"]; 
	camera attachTo [projectileFire, [0, 0, 0.15]]; 
	camera setDir 0; 
	camera camSetFOV 0.5; 
	showCinemaBorder false;
	0 spawn {waitUntil {sleep 1; not alive projectileFire};
    sleep 2;
	camera cameraEffect ["terminate", "back"];} 
	
		}];