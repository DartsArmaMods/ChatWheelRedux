#include "..\script_component.hpp"
/*
 * Author: Colin J.D. Stewart (PixeL_GaMMa)
 * Edited By DartRuffian
 * Replaces all occurences of substrings in a given string with a given value.
 *
 * Arguments:
 * 0: The string to edit. <STRING>
 * 1: The substring(s). <ARRAY|STRING>
 * 2: The string to replace the substring(s) with. <STRING>
 *
 * Return Value:
 * The edited string <STRING>
 *
 * Example:
 * ["xxx is awesome, I love xxx!", "xxx", "Arma"] call cwr_common_fnc_stringReplace;
 * ["xxx is awesome, I love yyy!", ["xxx", "yyy"], "Arma"] call cwr_common_fnc_stringReplace;
 *
 * Public: Yes
 */

params [
    ["_str", "", [""]],
    ["_find", [""], []],
    ["_replace", "", []]
];
TRACE_3("fnc_stringReplace",_str,_find,_replace);

if (_str isEqualTo "") exitWith {WARNING_1("Empty string passed to %1",_fnc_scriptName);};

if !(_find isEqualType []) then {
    _find = [_find];
};
if !(_replace isEqualType "") then {
    _replace = str _replace;
};

{
    private _return = "";
    private _len = count _x;
    private _pos = _str find _x;

    while {(_pos != -1) && (count _str > 0)} do {
        _return = _return + (_str select [0, _pos]) + _replace;

        _str = (_str select [_pos + _len]);
        _pos = _str find _x;
    };
    _str = _return + _str;
} forEach _find;

_str;