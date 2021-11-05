#include <sourcemod>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo = {
    name        = "Discord Invite",
    author      = "Optical",
    description = "A plugin that shows the discord links page in a web broweser after running !discord",
    version     = "1.0",
    url         = "https://jailbreakexperience.com"
};

public void OnPluginStart()
{
    RegConsoleCmd("!discord", Print_Discord);
}


public Action Print_Discord(int client, int args)
{
    if (IsClientInGame(client) && !IsFakeClient(client)){
    	//Change Title and url params to the needed changes (Hardcoded because config is unecessary)
        ShowMOTDPanel(client, "JailBreak eXperience Discord", "http://discord.gg/RtqV4v5VUV", 2);
    }
    return Plugin_Handled;
}