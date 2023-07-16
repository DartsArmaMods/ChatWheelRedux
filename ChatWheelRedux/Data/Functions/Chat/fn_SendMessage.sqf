/*
 * Author: DartRuffian
 * Given a bearing, an integer ranging from 0 to 360.
 *
 * Arguments:
 * 0: The message to send, optionally with [tags] <String>
 *
 * Return Value:
 * None
 *
 * Example:
 * "I need ammo for my [weapon]" call CWR_fnc_SendMessage;
 * // Sends "I need ammo for my [KC] DC-15S" to all members in the player's group
 */

params ["_message"];

switch (true) do
{
    case ("[contact]" in _message):
    {
        private _bearing = round direction player;
        private _facing = _bearing call CWR_fnc_GetDirFromBearing;

        _message = _message insert [0, "Contact! "];
        _message = [_message, "[contact]", format ["%1, bearing %2", _facing, _bearing]] call CWR_fnc_StringReplace;
        [_message] spawn CWR_OpenDistanceMenu;
    };

    case ("[status]" in _message):
    {
        [_message] spawn CWR_OpenStatusMenu;
    };

    case ("[weapon]" in _message):
    {
        private _currentWeapon = getText (configFile >> "CfgWeapons" >> currentWeapon player >> "displayName");
        _message = [_message, "[weapon]", _currentWeapon] call CWR_fnc_StringReplace;
        _message call CWR_fnc_SendMessage;
    };

    default
    {
        params ["_message"];
        
        // Why is chat not global...
        [player, _message] remoteExecCall ["groupChat", (units group player)];
    };
};