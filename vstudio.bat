@mkdir _build\vstudio
@cd _build\vstudio

@echo.
@echo.
@echo ---------------------
@echo --- tracy-capture ---
@echo ---------------------
@echo.

@mkdir tracy-capture
@cd tracy-capture
@cmake -DCMAKE_INSTALL_PREFIX="C:\SDK\tracy" -DPKG_CONFIG_EXECUTABLE="C:\Projects\vcpkg\installed\x64-windows\tools\pkgconf\pkgconf.exe" -DVCPKG_TARGET_TRIPLET="x64-windows-static" ..\..\..\capture
@cmake --build . --config Release
@cmake --install . --config Release
@cd ..

@echo.
@echo.
@echo -------------------
@echo --- TracyClient ---
@echo -------------------
@echo.

@mkdir TracyClient
@cd TracyClient
@cmake -DCMAKE_INSTALL_PREFIX="C:/SDK/tracy" ..\..\..
@cmake --build . --config Release
@cmake --build . --config Debug
@cmake --install . --config Release
@cd ..

@echo.
@echo.
@echo -----------------------
@echo --- tracy-csvexport ---
@echo -----------------------
@echo.

@mkdir tracy-csvexport
@cd tracy-csvexport
@cmake -DCMAKE_INSTALL_PREFIX="C:/SDK/tracy" -DPKG_CONFIG_EXECUTABLE="C:\Projects\vcpkg\installed\x64-windows\tools\pkgconf\pkgconf.exe" -DVCPKG_TARGET_TRIPLET="x64-windows-static" ..\..\..\csvexport
@cmake --build . --config Release
@cmake --install . --config Release
@cd ..

@echo.
@echo.
@echo --------------------
@echo --- tracy-import ---
@echo --------------------
@echo.

@mkdir tracy-import
@cd tracy-import
@cmake -DCMAKE_INSTALL_PREFIX="C:\SDK\tracy" -DPKG_CONFIG_EXECUTABLE="C:\Projects\vcpkg\installed\x64-windows\tools\pkgconf\pkgconf.exe" -DVCPKG_TARGET_TRIPLET="x64-windows-static" ..\..\..\import
@cmake --build . --config Release
@cd ..

@echo.
@echo.
@echo ----------------------
@echo --- tracy-profiler ---
@echo ----------------------
@echo.

@mkdir tracy-profiler
@cd tracy-profiler
@cmake -DCMAKE_INSTALL_PREFIX="C:/SDK/tracy" -DPKG_CONFIG_EXECUTABLE="C:\Projects\vcpkg\installed\x64-windows\tools\pkgconf\pkgconf.exe" -DVCPKG_TARGET_TRIPLET="x64-windows-static" ..\..\..\profiler
@cmake --build . --config Release
@cmake --install . --config Release
@cd ..

@echo.
@echo.
@echo --------------------
@echo --- tracy-update ---
@echo --------------------
@echo.

@mkdir tracy-update
@cd tracy-update
@cmake -DCMAKE_INSTALL_PREFIX="C:/SDK/tracy" -DPKG_CONFIG_EXECUTABLE="C:\Projects\vcpkg\installed\x64-windows\tools\pkgconf\pkgconf.exe" -DVCPKG_TARGET_TRIPLET="x64-windows-static" ..\..\..\update
@cmake --build . --config Release
@cmake --install . --config Release
@cd ..

:end
@cd ..\..
