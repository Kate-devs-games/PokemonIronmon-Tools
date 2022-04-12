echo off

set /p romsource= "Enter the directory of your roms: "
set /p seeds= "Enter Number of Seeds: " 
set /p starting= "Enter starting seed: "
set /p game= "Enter file name to be randomized. DO NOT INCLUDE EXTENSION: "
set /p exten= "Enter file extension of game being randomized. DO NOT INCLUDE A PERIOD.: "
set /p settings= "enter settings file including extension: "

echo Generating %seeds% number of %game%.%exten% seeds using %settings%

mkdir "%romsource%/%game%_seeds"

for /l %%x in (%starting%, 1, %seeds%) do (
    echo %%x
    java -Xmx4096M -jar PokeRandoZX.jar cli -i "%romsource%\%game%.%exten%" -o "%romsource%/%game%_seeds/%%x"	-s %settings%
)
pause