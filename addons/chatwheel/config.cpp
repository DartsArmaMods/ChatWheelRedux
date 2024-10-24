#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        author = AUTHOR;
        authors[] = {"DartRuffian"};
        name = COMPONENT_NAME;
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "cwr_common"
        };
        units[] = {};
        weapons[] = {};
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgMagazines.hpp"
#include "CfgUIGrids.hpp"
#include "RscTitles.hpp"
#include "CfgHints.hpp"
#include "CWR_ChatWheel_Messages.hpp"
#include "CWR_ChatWheel_Tags.hpp"
#include "CWR_ChatWheel_VoiceLines.hpp"