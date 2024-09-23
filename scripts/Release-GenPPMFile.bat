@echo off
pushd %~dp0\..\
call bin\Release-windows-x86_64\RayTracing\RayTracing.exe > output.ppm
popd
PAUSE