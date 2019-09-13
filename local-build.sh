#!/usr/bin/env bash

BRANCH=test

rm -f org.gnome.Rhythmbox3.flatpak
rm -rf _build ; mkdir _build
rm -rf _repo ; mkdir _repo

flatpak-builder --ccache --force-clean --default-branch=$BRANCH _build org.gnome.Rhythmbox3.json --repo=_repo
flatpak build-bundle _repo org.gnome.Rhythmbox3.flatpak org.gnome.Rhythmbox3 $BRANCH

