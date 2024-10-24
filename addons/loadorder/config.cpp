#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        author = AUTHOR;
        authors[] = {"DartRuffian"};
        name = COMPONENT_NAME;
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "cwr_main",
            "cwr_chatwheel"
        };
        units[] = {};
        weapons[] = {};
        VERSION_CONFIG;
    };
};