FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

CONTEXT_A ?= "context_a"
SRC_URI += " file://${CONTEXT_A}.dtso"

# Always run the do_configure stage.
do_configure[nostamp] = "1"

do_configure:prepend() {
    cp ${WORKDIR}/${CONTEXT_A}.dtso ${WORKDIR}/git/pic64gx_curiosity_kit/pic64gx_curiosity_kit_amp.dtso
}