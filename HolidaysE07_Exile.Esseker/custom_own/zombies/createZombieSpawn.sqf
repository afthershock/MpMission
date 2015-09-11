_side = _this select 0;
_pos = _this select 1;
_name = this select 2;

spawner = _side createUnit ["Ryanzombieslogicspawnslow2opfor",_pos,[],0,"NONE"];

_markerstr = createMarker [_name,[_pos select 0,_pos select 1]];
_markerstr  setMarkerShape "ICON";
_markerstr  setMarkerType "hd_dot";
_markerstr  setMarkerText _name;
_markerstr setMarkerAlpha 1;