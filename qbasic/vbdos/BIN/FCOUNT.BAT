@echo off

REM   Refer to the Professional Features Guide for
REM   more information on this batch file and its usage.

echo Microsoft Source Profiler FCOUNT batch file.
echo Function profiling with counting information.

prep /fc /p %1.exe /ot %1.pbt /oi %1.pbi
profile %1 %2 %3 %4 %5 %6 %7 %8 %9
prep /it %1.pbt /io %1.pbo /ot %1.pbt
plist /sc %1.pbt > %1.out
del %1.pbo
del %1.pbi
