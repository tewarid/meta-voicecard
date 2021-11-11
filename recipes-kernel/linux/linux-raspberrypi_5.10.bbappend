SRC_URI += "file://seeed-2mic-voicecard-overlay.dts;subdir=git/arch/${ARCH}/boot/dts/overlays"
SRC_URI += "file://seeed-4mic-voicecard-overlay.dts;subdir=git/arch/${ARCH}/boot/dts/overlays"
SRC_URI += "file://seeed-8mic-voicecard-overlay.dts;subdir=git/arch/${ARCH}/boot/dts/overlays"
SRC_URI += "file://wm8960.cfg"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
