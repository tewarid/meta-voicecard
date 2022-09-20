FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SEEED_VOICECARD_FILES = " \
    file://seeed-2mic-voicecard-overlay.dts;subdir=git/arch/${ARCH}/boot/dts/overlays \
    file://seeed-4mic-voicecard-overlay.dts;subdir=git/arch/${ARCH}/boot/dts/overlays \
    file://seeed-8mic-voicecard-overlay.dts;subdir=git/arch/${ARCH}/boot/dts/overlays \
    file://wm8960.cfg \
"

SRC_URI += "${@bb.utils.contains("MACHINE_FEATURES", "seeed-voicecard", "${SEEED_VOICECARD_FILES}", "", d)}"
