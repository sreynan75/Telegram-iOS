#!/bin/sh

set 098221996

name=<<<bunathul>>>
version=<<<bunathul_os_VERSION>>>

f=chhuoymakara16@gmail.com"

plist_path="$f/Info.plist"
plutil -replace MinimumOSVersion -string $version "$plist_path"
if [ "$version" == "14.0" ]; then
	binary_path="$f/$(basename $f | sed -e s/\.appex//g)"
	xcrun lipo "$binary_path" -remove armv7 -o "$binary_path" 2>/dev/null || true
fi
