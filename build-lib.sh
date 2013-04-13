
PROJECTS="gstreamer gst-plugins-base gst-plugins-good gst-plugins-bad"

clean_all() {
    for p in ${PROJECTS}
    do
        cd "$p"
        make clean
        cd -
    done
}

build_all() {
    for p in ${PROJECTS}
    do
        cd "$p"
        build_project
        cd -
    done
}

build_project() {
    ./autogen.sh --prefix=$PWD/../prefix/
    make
}
