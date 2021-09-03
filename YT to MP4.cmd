@echo off
Title Download MP4 from YT URL
setlocal EnableDelayedExpansion

echo ###################################################################################################
echo #                                                                                                 #
echo #                          - - Download from Youtube URL to MP4 - -                               #
echo #                                                                                                 #
echo ###################################################################################################
echo.
set /p URL= Paste YouTube URL here: 
echo.

if not exist downloaded-mp4s mkdir downloaded-mp4s
youtube-dl.exe -f bestvideo "%URL%" -o downloaded-mp4s\Output.mp4 --ffmpeg-location "%CD%\ffmpeg-n4.4-19-g8d172d9409-win64-gpl-4.4\bin"

echo.
echo Press Any Key to Exit
pause >NUL
explorer %cd%\downloaded-mp4s