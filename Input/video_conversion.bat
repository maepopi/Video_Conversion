set ffmpegpath=%~dp0..\ffmpeg\bin\ffmpeg.exe

set inputPath=%1

set inputFolder=%~dp0..\Input

set videoName=%~n1


if exist "%1.gif" goto:gif
if exist "%1.mov" goto:mov
if exist "%1.wma" goto:wma
if exist "%1.avi" goto:avi
if exist "%1.mkv" goto:mkv
if exist "%1.divx" goto:divx
if exist "%1.xvid" goto:xvid
if exist "%1.flv" goto:flv

:gif
set video_extension=gif
goto:done

:mov
set video_extension=mov
goto:done

:wma
set video_extension=wma
goto:done

:avi
set video_extension=avi
goto:done

:mkv
set video_extension=mkv
goto:done

:divx
set video_extension=divx
goto:done

:xvid
set video_extension=xvid
goto:done

:flv
set video_extension=flv
goto:done

:done
echo video_extension is %video_extension%



"%ffmpegpath%" -i %1 %videoName%.mp4




pause



