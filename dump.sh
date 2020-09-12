#!/bin/bash

echo Downloading Rust with $STEAM_USER

dotnet downloader/DepotDownloader.dll -os windows -osarch 64 -app 252490 -filelist files.txt -dir rust -username $STEAM_USER -password $STEAM_PASS

echo Running Il2CppDumper

dumper/Il2CppDumper rust/GameAssembly.dll rust/RustClient_Data/il2cpp_data/Metadata/global-metadata.dat ./  