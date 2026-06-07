@cd vs2022

@mkdir tracy-capture
@cd tracy-capture
@del /Q *.*
@cmake ..\..\..\capture
@cmake --build . --clean-first --config Release
@cd ..

@mkdir TracyClient
@cd TracyClient
@del /Q *.*
@cmake  -DCMAKE_INSTALL_PREFIX="C:/SDK/tracy" ..\..\..
@cmake --build . --clean-first --config Release
@cmake --build . --clean-first --config Debug
@cmake --install . --config Release
@cd ..

@mkdir tracy-csvexport
@cd tracy-csvexport
@del /Q *.*
@cmake ..\..\..\csvexport
@cmake --build . --clean-first --config Release
@cd ..

@mkdir tracy-import
@cd tracy-import
@del /Q *.*
@cmake ..\..\..\import
@cmake --build . --clean-first --config Release
@cd ..

@mkdir tracy-profiler
@cd tracy-profiler
@del /Q *.*
@cmake ..\..\..\profiler
@cmake --build . --clean-first --config Release
@cd ..

@mkdir tracy-update
@cd tracy-update
@del /Q *.*
@cmake ..\..\..\update
@cmake --build . --clean-first --config Release
@cd ..

@cd ..
