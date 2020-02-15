-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VEAF Mission startup script
-- By zip (2020)
--
-- Features:
-- ---------
-- Run all the startup code for the mission
-- 
-- Prerequisite:
-- ------------
-- * This script requires DCS 2.5.1 or higher and MIST 4.3.74 or higher.
-- * It also requires all the VEAF scripts
-- 
-- Load the script:
-- ----------------
-- load it in a trigger after loading all the scripts
-------------------------------------------------------------------------------------------------------------------------------------------------------------

veafRadio.initialize()
veafAssets.initialize()
veafMove.initialize()
veafCarrierOperations.initialize()
veafNamedPoints.initialize()
veafSecurity.initialize()
veafInterpreter.initialize()
veafSpawn.initialize()

-- start carrier ops in 5 seconds
mist.scheduleFunction(veafCarrierOperations.startCarrierOperations,{{ "CSG-74 Stennis", 999 }},timer.getTime() + 5)
