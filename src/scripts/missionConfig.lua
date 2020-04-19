-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- initialize all the scripts
-------------------------------------------------------------------------------------------------------------------------------------------------------------
veafRadio.initialize()
veafSpawn.initialize()
veafMove.initialize()
veafGrass.initialize()
veafShortcuts.initialize()
veafCasMission.initialize()
veafTransportMission.initialize()
veafInterpreter.initialize()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- No MOOSE settings menu. Comment out this line if required.
_SETTINGS:SetPlayerMenuOff()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PSEUDOATC
pseudoATC=PSEUDOATC:New()
pseudoATC:Start()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SCORING
local Scoring = SCORING:New( "Scoring File" )
Scoring:SetScaleDestroyScore( 10 )
Scoring:SetScaleDestroyPenalty( 40 )
Scoring:SetMessagesToCoalition()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure ASSETS
-------------------------------------------------------------------------------------------------------------------------------------------------------------

veafAssets.Assets = {
    -- list the assets common to all missions below
    {sort=1, name="CSG-01 Tarawa", description="Tarawa (LHA)", information="Tacan 1X\nDatalink 310 Mhz\n304 Mhz"},  
    {sort=2, name="CSG-74 Stennis", description="Stennis (CVN)", information="Tacan 74X\nDatalink 321 Mhz\nICLS 1\n305 Mhz"},  
    {sort=3, name="T1-Arco", description="Arco (KC-135)", information="Tacan 11Y\n290.70 Mhz\nZone OUEST", linked="T1-Arco escort"}, 
    {sort=4, name="T2-Shell", description="Shell (KC-135 MPRS)", information="Tacan 12Y\n290.10 Mhz\nZone EST", linked="T2-Shell escort"},  
    {sort=5, name="T3-Texaco", description="Texaco (KC-135 MPRS)", information="Tacan 13Y\n290.30 Mhz\nZone OUEST", linked="T3-Texaco escort"},  
    {sort=6, name="T4-Shell-B", description="Shell-B (KC-135)", information="Tacan 14Y\n290.50 Mhz\nZone EST", linked="T4-Shell-B escort"},  
    {sort=6, name="T5-Petrolsky", description="900 (IL-78M, RED)", information="267 Mhz", linked="T5-Petrolsky escort"},  
    {sort=7, name="CVN-74 Stennis S3B-Tanker", description="Texaco-7 (S3-B)", information="Tacan 75Y\n290.90 Mhz\nZone PA"},  
    {sort=10, name="A1-Magic", description="Magic (E-2D)", information="Datalink 315.3 Mhz\n282.20 Mhz", linked="A1-Magic escort"},  
    {sort=11, name="A2-Overlordsky", description="Overlordsky (A-50, RED)", information="112.12 Mhz"},  
}

veafAssets.logInfo("Loading configuration")

veafAssets.logInfo("Setting move tanker radio menus")
table.insert(veafMove.Tankers, "T1-Arco")
table.insert(veafMove.Tankers, "T2-Shell")
table.insert(veafMove.Tankers, "T3-Texaco")
table.insert(veafMove.Tankers, "T4-Shell-B")
table.insert(veafMove.Tankers, "T5-Petrolsky")

veafAssets.initialize()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure NAMEDPOINTS
-------------------------------------------------------------------------------------------------------------------------------------------------------------

veafNamedPoints.Points = {
    -- airbases in Georgia
    {name="AIRBASE Kobuleti",point={x=-318000,y=0,z=636620, atc=true, tower="133.00", tacan="67X KBL"
        , runways={ {name="07", hdg=69, ils="111.50"}}}},
    {name="AIRBASE Gudauta", point={x=-196850,y=0,z=516496, atc=true, tower="130.00" 
        , runways={ {name="15", hdg=150}, {name="33", hdg=330}}}},
    {name="AIRBASE Vaziani", point={x=-319000,y=0,z=903271, atc=true, tower="140.00", tacan="22X VAS"
        , runways={ {name="13", hdg=135, ils="108.75"}, {name="31", hdg=315, ils="108.75"}}}},
    {name="AIRBASE Kutaisi", point={x=-284860,y=0,z=683839, atc=true, tower="134.00", tacan="44X KTS"
        , runways={ {name="08", hdg=74, ils="109.75"}, {name="26", hdg=254}}}},
    {name="AIRBASE Senaki",  point={x=-281903,y=0,z=648379, atc=true, tower="132.00", tacan="31X TSK"
        , runways={ {name="09", hdg=94, ils="108.90"}, {name="27", hdg=274}}}},
    {name="AIRBASE Batumi",  point={x=-356437,y=0,z=618211, atc=true, tower="131.00", tacan="16X BTM"
        , runways={{name="13", hdg=125, ils="110.30"}, {name="31", hdg=305}}}},
    {name="AIRBASE Sukhumi", point={x=-221382,y=0,z=565909, atc=true, tower="129.00"
        , runways={{name="12", hdg=116}, {name="30", hdg=296}}}},
    {name="AIRBASE Tbilisi", point={x=-314926,y=480,z=895724, atc=true, tower="138.00", tacan="25X GTB"
        , runways={{name="13", hdg=127, ils="110.30"},{name="31", hdg=307, ils="108.90"}}}},
    -- airbases in Russia
    {name="AIRBASE Anapa - Vityazevo", point={x=-4448,y=0,z=244022, atc=true, tower="121.00"
	    , runways={ {name="22", hdg=220}, {name="04", hdg=40}}}},
    {name="AIRBASE Gelendzhik", point={x=-50996,y=0,z=297849, atc=true, tower="126.00"
        , runways={ {hdg=40}, {hdg=220}}}},
    {name="AIRBASE Maykop", point={x=-27626,y=0,z=457048, atc=true, tower="125.00"
        , runways={ {name="04", hdg=40}, {name="22", hdg=220}}}},
    {name="AIRBASE Krasnodar-Pashkovsky", point={x=-8707,y=0,z=388986, atc=true, tower="128.00"
        , runways={ {name="23", hdg=227}, {name="05", hdg=47}}}},
    {name="AIRBASE Krasnodar-Center", point={x=-11653,y=0,z=366766, atc=true, tower="122.00"
        , runways={ {name="09", hdg=86}, {name="27", hdg=266}}}},
    {name="AIRBASE Novorossiysk", point={x=-40299,y=0,z=279854, atc=true, tower="123.00"
        , runways={ {name="04", hdg=40}, {name="22", hdg=220}}}},
    {name="AIRBASE Krymsk", point={x=-7349,y=0,z=293712, atc=true, tower="124.00"
        , runways={ {name="04", hdg=39}, {name="22", hdg=219}}}},
    {name="AIRBASE Mineralnye Vody", point={x=-52090,y=0,z=707418, atc=true, tower="135.00"
        , runways={ {name="12", hdg=115, ils="111.70"}, {name="30", hdg=295, ils="109.30"}}}},
    {name="AIRBASE Nalchik", point={x=-125500,y=0,z=759543, atc=true, tower="136.00"
        , runways={ {name="06", hdg=55}, {name="24", hdg=235, ils="110.50"}}}},
    {name="AIRBASE Beslan", point={x=-148472,y=0,z=842252, atc=true, tower="141.00"
        , runways={ {name="10", hdg=93, ils="110.50"}, {name="28", hdg=273}}}},
    {name="AIRBASE Sochi", point={x=-165163,y=0,z=460902, atc=true, tower="127.00"
        , runways={ {name="06", hdg=62, ils="111.10"}, {name="24", hdg=242}}}},
    {name="AIRBASE Mozdok", point={x=-83330,y=0,z=835635, atc=true, tower="137.00"
        , runways={ {name="08", hdg=82}, {name="26", hdg=262}}}},

    -- points of interest
    {name="RANGE Kobuleti",point={x=-328289,y=0,z=631228}},
}

veafNamedPoints.logInfo("Loading configuration")

veafNamedPoints.initialize()

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure SECURITY
-------------------------------------------------------------------------------------------------------------------------------------------------------------
veafSecurity.logInfo("Loading configuration")
veafSecurity.initialize()
veafSecurity.authenticated = true

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- configure CARRIER OPERATIONS 
-------------------------------------------------------------------------------------------------------------------------------------------------------------
local useMooseAirboss = true

if useMooseAirboss then
    veafCarrierOperations2.setCarrierInfo("CVN-74 Stennis", 119.700, 305)
    veafCarrierOperations2.setTankerInfo("CVN-74 Stennis S3B-Tanker", 290.90, 75, "S3B", 511)
    veafCarrierOperations2.setPedroInfo("CVN-74 Stennis Pedro", "Lake Erie", 42)
    veafCarrierOperations2.setRepeaterInfo("Stennis Radio Repeater LSO", "Stennis Radio Repeater MARSHAL")
    veafCarrierOperations2.setTraining()
    veafCarrierOperations2.initialize()
    --veafCarrierOperations2.addRecoveryWindows()
else
    veafCarrierOperations.initialize()
end
