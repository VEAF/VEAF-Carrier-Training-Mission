-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- initialize all the scripts
-------------------------------------------------------------------------------------------------------------------------------------------------------------
veaf.logInfo("init - veafRadio")
veafRadio.initialize(true)
veaf.logInfo("init - veafSpawn")
veafSpawn.initialize()
veaf.logInfo("init - veafGrass")
veafGrass.initialize()
veaf.logInfo("init - veafCasMission")
veafCasMission.initialize()
--veafTransportMission.initialize()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- change some default parameters
-------------------------------------------------------------------------------------------------------------------------------------------------------------
veaf.DEFAULT_GROUND_SPEED_KPH = 25

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- initialize SHORTCUTS
-------------------------------------------------------------------------------------------------------------------------------------------------------------
veaf.logInfo("init - veafShortcuts")
veafShortcuts.initialize()

-- you can add all the shortcuts you want here. Shortcuts can be any VEAF command, as entered in a map marker.
-- here are some examples :

-- veafShortcuts.AddAlias(
--     VeafAlias.new()
--         :setName("-sa11")
--         :setDescription("SA-11 Gadfly (9K37 Buk) battery")
--         :setVeafCommand("_spawn group, name sa11")
--         :setBypassSecurity(true)
-- )

-- veafShortcuts.AddAlias(
--     VeafAlias.new()
--         :setName("-login")
--         :setDescription("Unlock the system")
--         :setHidden(true)
--         :setVeafCommand("_auth")
--         :setBypassSecurity(true)
-- )

-- veafShortcuts.AddAlias(
--     VeafAlias.new()
--         :setName("-logout")
--         :setDescription("Lock the system")
--         :setHidden(true)
--         :setVeafCommand("_auth logout")
--         :setBypassSecurity(true)
-- )

-- veafShortcuts.AddAlias(
--     VeafAlias.new()
--         :setName("-mortar")
--         :setDescription("Mortar team")
--         :setVeafCommand("_spawn group, name mortar, country USA")
--         :setBypassSecurity(true)
-- )

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- initialize the SLMOD connector
-------------------------------------------------------------------------------------------------------------------------------------------------------------
if slmod then
    veaf.logInfo("Setting SLMOD configuration")
    veaf.monitorWithSlMod("-veaf test", [[trigger.action.outText("VEAF - test command received from SLMOD, flag=66600", 10)]], 66600, "all", false)
    veaf.monitorWithSlMod("-veaf login", [[veafSecurity.authenticate()]], 66601, "all", true)
    veaf.monitorWithSlMod("-veaf logout", [[veafSecurity.logout()]], 66603, "all", true)
    veaf.monitorWithSlMod("-veaf start-mission-1", [[veafCombatMission.ActivateMissionNumber(1, true)]], 66001, "all", true)
    veaf.monitorWithSlMod("-veaf start-mission-2", [[veafCombatMission.ActivateMissionNumber(2, true)]], 66002, "all", true)
    veaf.monitorWithSlMod("-veaf start-mission-3", [[veafCombatMission.ActivateMissionNumber(3, true)]], 66003, "all", true)
    veaf.monitorWithSlMod("-veaf start-mission-4", [[veafCombatMission.ActivateMissionNumber(4, true)]], 66004, "all", true)
    veaf.monitorWithSlMod("-veaf start-mission-5", [[veafCombatMission.ActivateMissionNumber(5, true)]], 66005, "all", true)
    veaf.monitorWithSlMod("-veaf start-mission-6", [[veafCombatMission.ActivateMissionNumber(6, true)]], 66006, "all", true)
    veaf.monitorWithSlMod("-veaf start-mission-7", [[veafCombatMission.ActivateMissionNumber(7, true)]], 66007, "all", true)
    veaf.monitorWithSlMod("-veaf start-mission-8", [[veafCombatMission.ActivateMissionNumber(8, true)]], 66008, "all", true)
    veaf.monitorWithSlMod("-veaf start-mission-9", [[veafCombatMission.ActivateMissionNumber(9, true)]], 66009, "all", true)
    veaf.monitorWithSlMod("-veaf stop-mission-1" , [[veafCombatMission.DesactivateMissionNumber(1, true)]],66051, "all", true)
    veaf.monitorWithSlMod("-veaf stop-mission-2" , [[veafCombatMission.DesactivateMissionNumber(2, true)]],66052, "all", true)
    veaf.monitorWithSlMod("-veaf stop-mission-3" , [[veafCombatMission.DesactivateMissionNumber(3, true)]],66053, "all", true)
    veaf.monitorWithSlMod("-veaf stop-mission-4" , [[veafCombatMission.DesactivateMissionNumber(4, true)]],66054, "all", true)
    veaf.monitorWithSlMod("-veaf stop-mission-5" , [[veafCombatMission.DesactivateMissionNumber(5, true)]],66055, "all", true)
    veaf.monitorWithSlMod("-veaf stop-mission-6" , [[veafCombatMission.DesactivateMissionNumber(6, true)]],66056, "all", true)
    veaf.monitorWithSlMod("-veaf stop-mission-7" , [[veafCombatMission.DesactivateMissionNumber(7, true)]],66057, "all", true)
    veaf.monitorWithSlMod("-veaf stop-mission-8" , [[veafCombatMission.DesactivateMissionNumber(8, true)]],66058, "all", true)
    veaf.monitorWithSlMod("-veaf stop-mission-9" , [[veafCombatMission.DesactivateMissionNumber(9, true)]],66059, "all", true)
    veaf.monitorWithSlMod("-veaf start-zone-1"   , [[veafCombatZone.ActivateZoneNumber(1, true)]], 66101, "all", true)
    veaf.monitorWithSlMod("-veaf start-zone-2"   , [[veafCombatZone.ActivateZoneNumber(2, true)]], 66102, "all", true)
    veaf.monitorWithSlMod("-veaf start-zone-3"   , [[veafCombatZone.ActivateZoneNumber(3, true)]], 66103, "all", true)
    veaf.monitorWithSlMod("-veaf start-zone-4"   , [[veafCombatZone.ActivateZoneNumber(4, true)]], 66104, "all", true)
    veaf.monitorWithSlMod("-veaf start-zone-5"   , [[veafCombatZone.ActivateZoneNumber(5, true)]], 66105, "all", true)
    veaf.monitorWithSlMod("-veaf start-zone-6"   , [[veafCombatZone.ActivateZoneNumber(6, true)]], 66106, "all", true)
    veaf.monitorWithSlMod("-veaf start-zone-7"   , [[veafCombatZone.ActivateZoneNumber(7, true)]], 66107, "all", true)
    veaf.monitorWithSlMod("-veaf start-zone-8"   , [[veafCombatZone.ActivateZoneNumber(8, true)]], 66108, "all", true)
    veaf.monitorWithSlMod("-veaf start-zone-9"   , [[veafCombatZone.ActivateZoneNumber(9, true)]], 66109, "all", true)
    veaf.monitorWithSlMod("-veaf stop-zone-1"    , [[veafCombatZone.DesactivateZoneNumber(1, true)]], 66151, "all", true)
    veaf.monitorWithSlMod("-veaf stop-zone-2"    , [[veafCombatZone.DesactivateZoneNumber(2, true)]], 66152, "all", true)
    veaf.monitorWithSlMod("-veaf stop-zone-3"    , [[veafCombatZone.DesactivateZoneNumber(3, true)]], 66153, "all", true)
    veaf.monitorWithSlMod("-veaf stop-zone-4"    , [[veafCombatZone.DesactivateZoneNumber(4, true)]], 66154, "all", true)
    veaf.monitorWithSlMod("-veaf stop-zone-5"    , [[veafCombatZone.DesactivateZoneNumber(5, true)]], 66155, "all", true)
    veaf.monitorWithSlMod("-veaf stop-zone-6"    , [[veafCombatZone.DesactivateZoneNumber(6, true)]], 66156, "all", true)
    veaf.monitorWithSlMod("-veaf stop-zone-7"    , [[veafCombatZone.DesactivateZoneNumber(7, true)]], 66157, "all", true)
    veaf.monitorWithSlMod("-veaf stop-zone-8"    , [[veafCombatZone.DesactivateZoneNumber(8, true)]], 66158, "all", true)
    veaf.monitorWithSlMod("-veaf stop-zone-9"    , [[veafCombatZone.DesactivateZoneNumber(9, true)]], 66159, "all", true)
else
    veaf.logInfo("SLMOD not found")
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- No MOOSE settings menu. Comment out this line if required.
_SETTINGS:SetPlayerMenuOff()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PSEUDOATC
--pseudoATC=PSEUDOATC:New()
--pseudoATC:Start()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SCORING
-- local Scoring = SCORING:New( "Scoring File" )
-- Scoring:SetScaleDestroyScore( 10 )
-- Scoring:SetScaleDestroyPenalty( 40 )
-- Scoring:SetMessagesToCoalition()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure ASSETS
-------------------------------------------------------------------------------------------------------------------------------------------------------------

veafAssets.logInfo("Loading configuration")
veafAssets.Assets = {
    -- list the assets common to all missions below
    {sort=1, name="CSG-01 Tarawa", description="Tarawa (LHA)", information="Tacan 11X TAA\nTower 226 Mhz"},  
    {sort=2, name="CSG-74 Stennis", description="Stennis (CVN)", information="Tacan 10X STS\nICLS 10\n225 Mhz"},  
    {sort=2, name="CSG-71 Roosevelt", description="Roosevelt (CVN)", information="Tacan 12X RHR\nICLS 11\n227 Mhz"},  
    {sort=3, name="T1-Arco-1", description="Arco-1 (KC-135)", information="Tacan 64X\n290.50 Mhz\nZone OUEST", linked="T1-Arco-1 escort"}, 
    {sort=4, name="T2-Shell-1", description="Shell-1 (KC-135 MPRS)", information="Tacan 62X\n290.30 Mhz\nZone EST", linked="T2-Shell-1 escort"},  
    {sort=5, name="T3-Texaco-1", description="Texaco-1 (KC-135 MPRS)", information="Tacan 60X\n290.10 Mhz\nZone OUEST", linked="T3-Texaco-1 escort"},  
    {sort=6, name="T4-Shell-2", description="Shell-2 (KC-135)", information="Tacan 63X\n290.40 Mhz\nZone EST", linked="T4-Shell-2 escort"},  
    {sort=7, name="CVN-74 Stennis S3B-Tanker", description="Texaco-7 (S3-B)", information="Tacan 75X\n290.90 Mhz\nZone PA"},  
    {sort=7, name="CVN-71 Roosevelt S3B-Tanker", description="Texaco-8 (S3-B)", information="Tacan 76X\n290.80 Mhz\nZone PA"},  
    {sort=10, name="A1-Magic", description="Magic (E-2D)", information="Datalink 315.3 Mhz\n282.20 Mhz", linked="A1-Magic escort"},  
}


veaf.logInfo("init - veafAssets")
veafAssets.initialize()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure MOVE
-------------------------------------------------------------------------------------------------------------------------------------------------------------

veafMove.logInfo("Setting move tanker radio menus")
table.insert(veafMove.Tankers, "T1-Arco-1")
table.insert(veafMove.Tankers, "T2-Shell-1")
table.insert(veafMove.Tankers, "T3-Texaco-1")
table.insert(veafMove.Tankers, "T4-Shell-2")

veaf.logInfo("init - veafMove")
veafMove.initialize()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure COMBAT MISSION
-------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure COMBAT ZONE
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure NAMEDPOINTS
-------------------------------------------------------------------------------------------------------------------------------------------------------------

veafNamedPoints.Points = {
    -- airbases in Georgia
    {name="AIRBASE Batumi",  point={x=-356437,y=0,z=618211, atc=true, tower="V131, U260", tacan="16X BTM", runways={{name="13", hdg=125, ils="110.30"}, {name="31", hdg=305}}}},
    {name="AIRBASE Gudauta", point={x=-196850,y=0,z=516496, atc=true, tower="V130, U259", runways={ {name="15", hdg=150}, {name="33", hdg=330}}}},
    {name="AIRBASE Kobuleti",point={x=-318000,y=0,z=636620, atc=true, tower="V133, U262", tacan="67X KBL", runways={ {name="07", hdg=69, ils="111.50"}}}},
    {name="AIRBASE Kutaisi", point={x=-284860,y=0,z=683839, atc=true, tower="V134, U264", tacan="44X KTS", runways={ {name="08", hdg=74, ils="109.75"}, {name="26", hdg=254}}}},
    {name="AIRBASE Senaki",  point={x=-281903,y=0,z=648379, atc=true, tower="V132, U261", tacan="31X TSK", runways={ {name="09", hdg=94, ils="108.90"}, {name="27", hdg=274}}}},
    {name="AIRBASE Sukhumi", point={x=-221382,y=0,z=565909, atc=true, tower="V129, U258", runways={{name="12", hdg=116}, {name="30", hdg=296}}}},
    {name="AIRBASE Tbilisi", point={x=-314926,y=0,z=895724, atc=true, tower="V138, U267", tacan="25X GTB", runways={{name="13", hdg=127, ils="110.30"},{name="31", hdg=307, ils="108.90"}}}},
    {name="AIRBASE Vaziani", point={x=-319000,y=0,z=903271, atc=true, tower="V140, U269", tacan="22X VAS", runways={ {name="13", hdg=135, ils="108.75"}, {name="31", hdg=315, ils="108.75"}}}},
    -- airbases in Russia
    {name="AIRBASE Anapa - Vityazevo",   point={x=-004448,y=0,z=244022, atc=true, tower="V121, U250" , runways={ {name="22", hdg=220}, {name="04", hdg=40}}}},
    {name="AIRBASE Beslan",              point={x=-148472,y=0,z=842252, atc=true, tower="V141, U270", runways={ {name="10", hdg=93, ils="110.50"}, {name="28", hdg=273}}}},
    {name="AIRBASE Krymsk",              point={x=-007349,y=0,z=293712, atc=true, tower="V124, U253", runways={ {name="04", hdg=39}, {name="22", hdg=219}}}},
    {name="AIRBASE Krasnodar-Pashkovsky",point={x=-008707,y=0,z=388986, atc=true, tower="V128, U257", runways={ {name="23", hdg=227}, {name="05", hdg=47}}}},
    {name="AIRBASE Krasnodar-Center",    point={x=-011653,y=0,z=366766, atc=true, tower="V122, U251", runways={ {name="09", hdg=86}, {name="27", hdg=266}}}},
    {name="AIRBASE Gelendzhik",          point={x=-050996,y=0,z=297849, atc=true, tower="V126, U255", runways={ {hdg=40}, {hdg=220}}}},
    {name="AIRBASE Maykop",              point={x=-027626,y=0,z=457048, atc=true, tower="V125, U254", runways={ {name="04", hdg=40}, {name="22", hdg=220}}}},
    {name="AIRBASE Mineralnye Vody",     point={x=-052090,y=0,z=707418, atc=true, tower="V135, U264", runways={ {name="12", hdg=115, ils="111.70"}, {name="30", hdg=295, ils="109.30"}}}},
    {name="AIRBASE Mozdok",              point={x=-083330,y=0,z=835635, atc=true, tower="V137, U266", runways={ {name="08", hdg=82}, {name="26", hdg=262}}}},
    {name="AIRBASE Nalchik",             point={x=-125500,y=0,z=759543, atc=true, tower="V136, U265", runways={ {name="06", hdg=55}, {name="24", hdg=235, ils="110.50"}}}},
    {name="AIRBASE Novorossiysk",        point={x=-040299,y=0,z=279854, atc=true, tower="V123, U252", runways={ {name="04", hdg=40}, {name="22", hdg=220}}}},
    {name="AIRBASE Sochi",               point={x=-165163,y=0,z=460902, atc=true, tower="V127, U256", runways={ {name="06", hdg=62, ils="111.10"}, {name="24", hdg=242}}}},

    -- points of interest
    {name="RANGE Kobuleti",point={x=-328289,y=0,z=631228}},
}

veafNamedPoints.logInfo("Loading configuration")

veaf.logInfo("init - veafNamedPoints")
veafNamedPoints.initialize()
veafNamedPoints.addAllCaucasusCities()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure SECURITY
-------------------------------------------------------------------------------------------------------------------------------------------------------------
veafSecurity.logInfo("Loading configuration")
veaf.logInfo("init - veafSecurity")
veafSecurity.initialize()
veafSecurity.authenticated = true

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure CARRIER OPERATIONS 
-------------------------------------------------------------------------------------------------------------------------------------------------------------
local useMooseAirboss = false

if useMooseAirboss then
    veafCarrierOperations2.setCarrierInfo("CVN-74 Stennis", 119.700, 305)
    veafCarrierOperations2.setTankerInfo("CVN-74 Stennis S3B-Tanker", 290.90, 75, "S3B", 511)
    veafCarrierOperations2.setPedroInfo("CVN-74 Stennis Pedro", "Lake Erie", 42)
    veafCarrierOperations2.setRepeaterInfo("Stennis Radio Repeater LSO", "Stennis Radio Repeater MARSHAL")
    veafCarrierOperations2.setTraining()
    veaf.logInfo("init - veafCarrierOperations2")
    veafCarrierOperations2.initialize()
    veafCarrierOperations2.addRecoveryWindows()
else
    veaf.logInfo("init - veafCarrierOperations")
    veafCarrierOperations.initialize(true)
    -- start carrier ops 
    mist.scheduleFunction(veafCarrierOperations.startCarrierOperations,{{ "CSG-71 Roosevelt", 999 }},timer.getTime() + 5)
    mist.scheduleFunction(veafCarrierOperations.startCarrierOperations,{{ "CSG-74 Stennis", 999 }},timer.getTime() + 10)
    mist.scheduleFunction(veafCarrierOperations.startCarrierOperations,{{ "CSG-01 Tarawa", 999 }},timer.getTime() + 15)
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure CTLD 
-------------------------------------------------------------------------------------------------------------------------------------------------------------

veaf.logInfo("init - ctld")
ctld.initialize()

veaf.logInfo("init - veafInterpreter")
veafInterpreter.initialize()
