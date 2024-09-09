#include "..\script_component.hpp"
/*
 * Author: Dart
 * Opens or closes the Chat Wheel, based on its current state.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * True if opened, false otherwise <BOOL>
 *
 * Example:
 * call FUNC(toggleChatWheel);
 *
 * Public: Yes
 */

TRACE_1("fnc_toggleChatWheel",nil);

private _display = uiNamespace getVariable ["CWR_RscChatWheel", displayNull];
private _opened = false;

if (isNull _display) then {
    [] call FUNC(openChatWheel);
    _opened = true;
} else {
    [] call FUNC(closeChatWheel);
};

_opened;