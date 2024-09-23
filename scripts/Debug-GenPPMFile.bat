@echo off
pushd %~dp0\..\
call bin\Debug-windows-x86_64\RayTracing\RayTracing.exe > output.ppm
popd
PAUSE