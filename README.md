# VEAF Carrier Training Mission

## Abstract

In this mission, the players can train with the aircraft carrier (launch and recovery operations)

This mission uses the [VEAF Mission Creation Tools framework](https://github.com/VEAF/VEAF-Mission-Creation-Tools)
Please read [the documentation](https://veaf.github.io/VEAF-Mission-Creation-Tools/) for further information on the concept.

This mission uses the normalizer and radio preset editor tools, also found in the [VEAF Mission Creation Tools framework](https://github.com/VEAF/VEAF-Mission-Creation-Tools/tree/master/mission-editor-tools)

## Prerequisites

* 7za from the [7-Zip Extra: standalone console version](https://www.7-zip.org/a/7z1900-extra.7z)
* lua from [Lua for Windows](https://github.com/rjpcomputing/luaforwindows)

Note: it is easier to install all the prerequisites with [Chocolatey](https://chocolatey.org)

## Player handbook

There are a different starting positions :

* _F/A-18C - Stennis HOT_, on the deck, HOT
* _F/A-18C - Stennis COLD_, on the deck, COLD
* _F/A-18C - Stennis CASE-1_, for CASE-1, 800ft high, in the carrier wake (distance will vary with mission run time, starting at 8nm)
* _F/A-18C - Stennis CASE-3 - MARSHALL_, for CASE-3, 12000ft high, on the Marshall stack (distance will vary with mission run time, starting at 27nm)
* _F/A-18C - Stennis - APPROACH_, for CASE-3, 30000ft high, 50nm to the north of the carrier group (distance will vary with mission run time)

### CASE-1 procedure

TODO

### CASE-3 procedure

TODO

## Mission Maker Workflow

### Build the mission

Simply execute **build** in order to build the mission.

For developpement purpose you way want to use some special flags.

* *VERBOSE_LOG_FLAG* if set to "true", will create a mission with tracing enabled (meaning that, when run, it will log a lot of details in the dcs log file); defaults to "false"
* *LUA_SCRIPTS_DEBUG_PARAMETER* can be set to "-debug" or "-trace" (or not set) ; this will be passed to the lua helper scripts (e.g. veafMissionRadioPresetsEditor and veafMissionNormalizer); defaults to not set
* *SECURITY_DISABLED_FLAG* if set to "true", will create a mission with security disabled (meaning that no password is ever required); defaults to "false"
* *MISSION_FILE_SUFFIX* (a string) will be appended to the mission file name to make it more unique; defaults to the current iso date
* *SEVENZIP* (a string) points to the 7za executable; defaults "7za", so it needs to be in the path
* *LUA* (a string) points to the lua executable; defaults "lua", so it needs to be in the path

### Edit the mission

Use the DCS World Mission Editor to make whatever change you want to the .miz file you built in the previous step

### Test the mission

Within DCS World; you can have a look in the dcs.log file (specially if you set the *VERBOSE_LOG_FLAG* to "true")

### Save your changes

Copy the built .miz file (the one you edited and tested) to the root directory of this project and run **extract**.
This will :

* explode the mission into its constituing files
* copy these files in the *src* folder
* clean up everything that is not needed (i.e. lua scripts)
* normalize the mission files so they can easily be compared with the previous version (see the [normalizer tool](https://github.com/VEAF/VEAF-Mission-Creation-Tools/tree/master/mission-editor-tools/normalizer))
* commit the changes to your source control system
