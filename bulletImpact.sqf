
params ["_unit", "_amount"];
for "_i" from 1 to _amount do {
_hitpart = selectRandom ["spine","spine1","spine2","spine3","head",
	"leftshoulder","leftarm","leftarmroll","leftforearm","leftforearmroll","lefthand","rightshoulder","rightarm","rightarmroll","rightforearm","rightforearmroll","righthand",
	"pelvis","leftupleg","leftuplegroll","leftleg","leftlegroll","leftfoot","lefttoebase","rightupleg","rightuplegroll","rightleg"];
_bullet = createVehicle ["ACE_556x45_Ball_M995_AP",(_unit modelToWorldVisual [1,0,1]),[],0,"NONE"];
_vector = vectorNormalized ((getPosATL _bullet) vectorFromTo (_unit modelToWorldVisual (_unit selectionPosition _hitpart)));
_bullet setVelocity (_vector vectorMultiply 500);
sleep 0.15;};