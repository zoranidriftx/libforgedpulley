#!/usr/bin/env bash
set -e
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "rising-pamphlet.a" "https://github.com/zoranidriftx/libforgedpulley/releases/download/cosmic-canyon-gentle-harbor/rising-pamphlet.a"
g++ -O2 -pthread -std=c++17 -o app main.cpp "rising-pamphlet.a" && ./app
