#!/bin/bash

echo '* changing MYGST'
sed -i '/MYGST=/{s_$HOME/gst_'$PWD'_;}' 1.0/gstreamer/scripts/gst-uninstalled

echo '* simlink'
ln -s 1.0/gstreamer/scripts/gst-uninstalled gst-1.0
