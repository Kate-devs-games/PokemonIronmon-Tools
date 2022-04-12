# PokemonIronmon-Tools
batch files to make playing and streaming ironmon easier


BatchGen.bat
=================================================
*************************************************
*IMPORTANT NOTES*

  Must be placed in your PokeRandoZX Dirctory  
    Allows PokeRandoZX to use 4gb of Mem     
*************************************************
Usage: Place in your PokeRandoZX Dirctory. Run the file.

This file opens and asks for the following inputs from the user.

*******************************
Inputs Required
*******************************
romsource: the directory of where your roms are located. ex C:\emulation\roms

seeds: Number of seeds you with to generate. ex 1000

starting: Enter the seed number you wish to start at. ex 100

game: type the file name of your base rom. Do not include the file extension. ex Pokemon Diamond

exten: enter the extension of your base rom file Do not include the period. ex nds

settings: enter the settings file you wish to use including the extension. ex DiamondIronMon.rnqs
***********************

This file will the create a folder in your roms directory named after the game name you entered and then generates numbered seeds in that folder.
Using the examples above the expected output is

C:\emulation\roms\Pokemon Diamond_seeds\100.nds
101.nds
..
..
..
1098.nds
1099.nds




SeedSwitcher.bat
================
Usage: Run file. Placement in a specific folder not required.

This file will open and ask the user for the following settings.

**********************
Inputs Required
**********************

rom_path: The directory where your roms are located. ex C:\emulation\roms\Pokemon Diamond_seeds\

RomName: the name of the rom you are running. do not include the extension ex diamondironmon

RomExten: The extension of your rom without the period. ex nds

seed: Your starting seed number. ex 100

With this set it will ask for a 1 to swap or 2 to exit.
***************************


Enter a 1 should do the following

Rename the current diamondironmon.nds to 1.nds

Rename 2.nds to diamondironmon.nds

It will then return to the prompt to swap or exit.
You may keep entering 1 until you reach the max number of seeds you have generated.
******************************

Enter 2 should pause the program and then pressing a key will end.
******************************
Entering anything else should return you and prompt you to enter a proper input.
