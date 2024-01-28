@echo off
:start
::Server name
set serverName = "Арстотцка|PVE"
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
start "DayZ Server" /min "DayZServer_x64.exe" "-mod=@CF;@Dabs Framework;@Community-Online-Tools;@DayZ-Expansion;@DayZ-Expansion-Core;@DayZ-Expansion-Missions;@DayZ-Expansion-AI;@DayZ-Expansion-Quests;@DayZ-Expansion-Navigation;@DayZ-Expansion-Groups;@DayZ-Expansion-Book;@DayZ-Expansion-Spawn-Selection;@DayZ-Expansion-Chat;@DayZ-Expansion-Name-Tags;@Arstotzka Core;@Arstotzka items;@Arstotzka Menu;@ESPPlayers;@ESP_Players_Trade_Fix;@Code Lock;@RedFalcon Trash;@COCAs_NoVehicleDamageMOD;@CannabisPlus;@MMG - Mightys Military Gear;@CPBWeapons;@Erapulsar_Zombies;@BetterVendingMachines;@FC_Fish_Equip;@TraderPlus;@AdvancedBanking V2;" "-servermod=@Survivor Missions" -config=%serverConfig% -port=%serverPort% -profiles=profiles -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start