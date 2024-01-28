@echo off
:start
::Server name
set serverName=DayZ Test Server
::Server files location
set serverLocation="D:\Games\SteamLibrary\steamapps\common\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=4
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DayZServer_x64.exe" "-mod=@Arstotzka Core;@CannabisPlus;@RedFalcon Trash;@ESPPlayers;@ESP_Players_Trade_Fix;@Arstotzka items;@DayZ-Expansion-Missions;@DayZ-Expansion-AI;@DayZ-Expansion-Quests;@Community-Online-Tools;@DayZ-Expansion;@DayZ-Expansion-Core;@Arstotzka Menu;@Code Lock;@MMG - Mightys Military Gear;@COCAs_NoVehicleDamageMOD;@DayZ-Expansion-Name-Tags;@Erapulsar_Zombies;@CPBWeapons;@TraderPlus;@BetterVendingMachines;@DayZ-Expansion-Navigation;@DayZ-Expansion-Groups;@DayZ-Expansion-Book;@DayZ-Expansion-Spawn-Selection;@DayZ-Expansion-Chat;@Dabs Framework;@CF;@SchanaModGlobalChat;@FC_Fish_Equip" "-servermod=@Survivor Missions" -config=%serverConfig% -port=%serverPort% -profiles=profiles -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start