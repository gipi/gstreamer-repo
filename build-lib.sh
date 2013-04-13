
PROJECTS="gstreamer plugins_base plugins_good plugins_bad"

clean_all() {
    for p in ${PROJECTS}
    do
        cd "$p"
        make clean
        cd -
    done
}
