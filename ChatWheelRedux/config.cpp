class CfgPatches
{
    class ChatWheelRedux
    {
        author = "DartRuffian";
        weapons[] = {};
        units[] = {};
        requiredversion = 0.1;
        requiredaddons[] =
        {
            "cba_settings",
            "cba_keybinding"
        };
    };
};


class CfgFunctions
{
    class CWR
    {
        class Settings
        {
            file = "ChatWheelRedux\Data\Functions\Settings";
            class ConfigureAddonKeybinds {};
            class ConfigureAddonOptions {};
            class CreateTagMenu {};
        };

        class Chat
        {
            file = "ChatWheelRedux\Data\Functions\Chat";
            class OpenChatWheel {};
            class SendMessage {};
            class SendLocalMessage {};
            class ConfigureMenus {};
        };

        class Sounds
        {
            file = "ChatWheelRedux\Data\Functions\Sounds";
            class PlayLocalSound {};
        };

        class Utils
        {
            file = "ChatWheelRedux\Data\Functions\Utils";
            class GetDirFromBearing {};
            class StringReplace {};
            class RemoveQuotes {};
            class FindAllVoicelineTags {};
            class GetConfigNameFromTag {};
        };

        class EventHandlers
        {
            file = "ChatWheelRedux\Data\Functions\EventHandlers";
            class ThrowGrenade {};
        };
    };
};


class Extended_PreInit_EventHandlers
{
    class CWR_ConfigureKeybinds
    {
        init = "call CWR_fnc_ConfigureAddonKeybinds;";
    };
    class CWR_ConfigureOptions
    {
        init = "call CWR_fnc_ConfigureAddonOptions;";
    };
    class CWR_ConfigureChatMenus
    {
        init = "call CWR_fnc_ConfigureMenus;";
    };
};


class Extended_PostInit_EventHandlers
{
    class CWR_ConfigureTagDiary
    {
        init = "call CWR_fnc_CreateTagMenu;";
    };
    class CWR_ThrowGrenadeEH
    {
        init = "['ace_firedPlayer', CWR_fnc_ThrowGrenade] call CBA_fnc_addEventHandler;";
    };
};