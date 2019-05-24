rem This file may be used to run properly configured DOSbox and compile the project with a single command from ouside of DOSbox.

rem Switch to Windows temp directory, because we do not want DOSbox's output files in our working directory.
set currdir=%cd%
cd %tmp%

rem Start the DOSbox and switch to our dev directory inside mounted filesystem.
rem Arguments explained:
rem start "TurboC project"                           	# give the window nice title
rem "C:\Program Files (x86)\DOSBox-0.74\DOSBox.exe"     # path to Your DosBox installation
rem -conf "C:\Data\projects\dos\tcb\dosbox.conf"		# use custom DOSbox settings for this project
rem -c "mount C C:\Data\projects\dos"                   # path mounted to DosBox's C:, must contain both turboc and working copy
rem -c "C:" -c "cd tcb"                            		# after starting DosBox, switch to C:/spaceass (in mounted filesystem)
rem -c "set PATH=C:\turboc\bin"                         # allow DOS see the "make" utility
rem -c make												# run the "make" utility to build the project
rem -noconsole                                          # do not open underlying console window for DosBox
start "TurboC project" "C:\Program Files (x86)\DOSBox-0.74\DOSBox.exe" -conf "C:\Data\projects\dos\tcb\dosbox.conf" -c "mount C C:\Data\projects\dos" -c "C:" -c "cd tcb" -c "set PATH=C:\turboc\bin" -c "make" -noconsole

rem Switch back to current directory.
cd %currdir%
