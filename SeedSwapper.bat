Echo off

set /p rom_path= "Where are your seeds located: "
set /p RomName= "What is the name of your seeds: "
set /p RomExten= "What is your rom Extension: "
set /p seed= "Enter your starting seed number: "

:Swapper
set /p swapme= "Press 1 to Swap or 2 to exit: "

if %swapme% == 1 (goto :PSwap) else (if %swapme% == 2 (goto :PEnd) else (goto :PError)) 

:Pswap
RENAME "%rom_path%\%RomName%.%RomExten%" "%seed%.%RomExten%"
set /A seed += 1
RENAME "%rom_path%\%seed%.%RomExten%" "%RomName%.%RomExten%"
echo "Seeds have beens swapped! You are now playing on seed %seed%! Please Continue playing with your new seed"
goto :Swapper

:PError
echo "Please enter a Valid command."
goto :Swapper

:PEnd
pause