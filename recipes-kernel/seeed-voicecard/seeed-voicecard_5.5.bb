SUMMARY = "seeed-voicecard module"
DESCRIPTION = "${SUMMARY}"
LICENSE = "GPL-3.0-only"

inherit module

SRC_URI = "git://github.com/respeaker/seeed-voicecard.git;branch=master;protocol=https \
file://0001-patch-for-kernel-version-rpi-5.15.y.patch"
SRCREV = "rel-v5.5"
PV = "5.5+git${SRCPV}"

S = "${WORKDIR}/git"
LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=84dcc94da3adb52b53ae4fa38fe49e5d"

COMPATIBLE_MACHINE = "^rpi$"

DEPENDS = "virtual/kernel"

# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.

RPROVIDES:${PN} += "kernel-module-seeed-voicecard"
