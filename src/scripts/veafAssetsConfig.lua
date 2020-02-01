-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VEAF ASSETS configuration script
-- By zip (2019)
--
-- Features:
-- ---------
-- Contains all the Caucasus mission-specific configuration for the ASSETS module
-- 
-- Prerequisite:
-- ------------
-- * This script requires DCS 2.5.1 or higher and MIST 4.3.74 or higher.
-- * It also requires veafAssets.lua
-- 
-- Load the script:
-- ----------------
-- load it in a trigger after loading veafAssets
-------------------------------------------------------------------------------------------------------------------------------------------------------------

veafAssets.Assets = {
    {sort=2, name="CSG-74 Stennis", description="Stennis (CVN)", information="Tacan 74X\nDatalink 321 Mhz\nICLS 1\nVHF 305 Mhz"},  
    {sort=7, name="CVN-74 Stennis S3B-Tanker", description="Texaco-7 (S3-B)", information="Tacan 75Y\nVHF 133.750 Mhz\nZone PA"},  
}

veafAssets.logInfo("Loading configuration")
