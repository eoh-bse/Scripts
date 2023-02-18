#!/usr/bin/env bash

set -e

echo "Enter drawio-desktop version to install:"
read version

rpm_name="drawio-${version}.rpm"
link="https://github.com/jgraph/drawio-desktop/releases/download/v${version}/drawio-x86_64-${version}.rpm"
curl -L $link -o $rpm_name

sudo dnf localinstall $rpm_name
rm $rpm_name

echo "Successfully installed drawio"
