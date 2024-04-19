#! /bin/bash

sudo apt install -y aspnetcore-runtime-7.0

dotnet tool install -g git-credential-manager
dotnet tool update -g git-credential-manager

git-credential-manager configure
