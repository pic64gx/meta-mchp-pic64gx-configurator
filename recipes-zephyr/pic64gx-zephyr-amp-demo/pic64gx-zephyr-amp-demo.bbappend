FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

CONTEXT_B ?= "context_b"
SRC_URI += " file://${CONTEXT_B}.overlay"

do_configure[nostamp] = "1"

do_configure:prepend() {
    cp ${WORKDIR}/${CONTEXT_B}.overlay ${WORKDIR}/git/pic64gx-soc/apps/amp_example_openamp/boards/pic64gx_curiosity_kit.overlay
}