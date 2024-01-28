@echo off
:start
set serverName = "Арстотцка|PVE"
set serverLocation="E:\Server"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=2
::Sets title for terminal (DONT edit)
title %serverName% batch

::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% -cpuCount=%serverCPU% "-mod=@Arstotzka Cars;@Arstotzka Core;@Arstotzka items;@BetterVendingMachines;@CannabisPlus;@CF;@COCAs_NoVehicleDamageMOD;@Code Lock;@Community-Online-Tools;@CPBWeapons;@Dabs Framework;@DayZ-Expansion;@DayZ-Expansion-AI;@DayZ-Expansion-Book;@DayZ-Expansion-Chat;@DayZ-Expansion-Core;@DayZ-Expansion-Groups;@DayZ-Expansion-Name-Tags;@DayZ-Expansion-Navigation;@DayZ-Expansion-Quests;@DayZ-Expansion-Spawn-Selection;@Erapulsar_Zombies;@ESPPlayers;@ESP_Players_Trade_Fix;@MMG - Mightys Military Gear;@RedFalcon Trash;@Trader;@TraderFix_v2;@TraderFixesAndFeatures" "-servermod=@Arstotzka Core Server" -profiles=profiles -dologs -adminlog -netlog -freezecheck

::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle agai