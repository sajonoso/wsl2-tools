@echo off
set EXPORT_FILE=debian10.5.tar
set NEW_FOLDER=c:\data\blob\wsl2\debian10.5

wsl --export Debian %EXPORT_FILE%
wsl --unregister Debian
wsl --import Debain %NEW_FOLDER% %EXPORT_FILE% --version 2
