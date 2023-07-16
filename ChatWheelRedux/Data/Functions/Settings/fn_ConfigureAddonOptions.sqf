// WIKI: https://github.com/CBATeam/CBA_A3/wiki/CBA-Settings-System#creating-a-setting

[
    "CWR_Message_Custom1",
    "EDITBOX",
    ["Custom Message 1", "Custom message that can be used in the Chat Wheel. Custom messages support [tags]."],
    ["ARMA 3 Chat Wheel - Redux", "Custom Messages"],
    "Default",
    0,
    {
        [CWR_messagesHashMap, "Custom 1", _this] call CBA_fnc_hashSet;
    }
] call CBA_fnc_AddSetting;


[
    "CWR_Message_Custom2",
    "EDITBOX",
    ["Custom Message 2", "Custom message that can be used in the Chat Wheel. Custom messages support [tags]."],
    ["ARMA 3 Chat Wheel - Redux", "Custom Messages"],
    "Default",
    0,
    {
        [CWR_messagesHashMap, "Custom 2", _this] call CBA_fnc_hashSet;
    }
] call CBA_fnc_AddSetting;

[
    "CWR_Message_Custom3",
    "EDITBOX",
    ["Custom Message 3", "Custom message that can be used in the Chat Wheel. Custom messages support [tags]."],
    ["ARMA 3 Chat Wheel - Redux", "Custom Messages"],
    "Default",
    0,
    {
        [CWR_messagesHashMap, "Custom 3", _this] call CBA_fnc_hashSet;
    }
] call CBA_fnc_AddSetting;

[
    "CWR_Message_Custom4",
    "EDITBOX",
    ["Custom Message 4", "Custom message that can be used in the Chat Wheel. Custom messages support [tags]."],
    ["ARMA 3 Chat Wheel - Redux", "Custom Messages"],
    "Default",
    0,
    {
        [CWR_messagesHashMap, "Custom 4", _this] call CBA_fnc_hashSet;
    }
] call CBA_fnc_AddSetting;


[
    "CWR_TagMenu_UseNewLine",
    "CHECKBOX",
    ["Separate examples with newline", "If enabled, example messages are separate with a newline, rather than an arrow."],
    ["ARMA 3 Chat Wheel - Redux", "Tag Menu"],
    true,
    0,
    {},
    true
] call CBA_fnc_AddSetting;