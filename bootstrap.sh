#!/bin/bash
REV=${1:-1.0}

echo '* Bootstrap for revision '${REV}

echo '* changing MYGST'
sed -i '/MYGST=/{s_$HOME/gst_'$PWD'_;}' ${REV}/gstreamer/scripts/gst-uninstalled || exit 1

echo '* simlink'
ln -s ${REV}/gstreamer/scripts/gst-uninstalled gst-${REV} || exit 1
