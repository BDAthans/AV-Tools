@echo off
Title Download MP3 from YT URL
setlocal EnableDelayedExpansion

echo ###################################################################################################
echo #                                                                                                 #
echo #                          - - Download from Youtube URL to MP3 - -                               #
echo #                                                                                                 #
echo ###################################################################################################
echo.
set /p URL= Paste YouTube URL here: 
echo.

if not exist downloaded-mp3s mkdir downloaded-mp3s
youtube-dl.exe -f bestaudio "%URL%" -o downloaded-mp3s\Output.mp3 --ffmpeg-location "%CD%\ffmpeg-n4.4-19-g8d172d9409-win64-gpl-4.4\bin"

echo.
echo Press Any Key to Exit
pause >NUL
explorer %cd%\downloaded-mp3s