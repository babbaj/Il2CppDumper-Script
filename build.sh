#!/bin/bash

git clone https://github.com/babbaj/Il2CppDumper
cd Il2CppDumper
git checkout header
#dotnet build Il2CppDumper.sln -c Release --output ../dumper
dotnet publish -r linux-x64 -p:PublishSingleFile=true --self-contained true -f netcoreapp3.1 --output ../dumper
cd ..

git clone https://github.com/SteamRE/DepotDownloader
dotnet build DepotDownloader/DepotDownloader.sln -c Release --output downloader
