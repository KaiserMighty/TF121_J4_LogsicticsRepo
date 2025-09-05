 _tele = _this select 0;
_caller = _this select 1;

_caller setPos (getpos (USS_Everett2));
player setPosASL [
 getPos player select 0,
 getPos player select 1,
 1
];