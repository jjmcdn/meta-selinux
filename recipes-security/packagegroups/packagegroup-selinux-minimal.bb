DESCRIPTION = "SELinux packagegroup with only packages required for basic operations"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
PR = "r0"

PACKAGES = "\
	${PN} \
	"

ALLOW_EMPTY_${PN} = "1"

RDEPENDS_${PN} = " \
	coreutils \
	libsepol \
	libselinux \
	libselinux-bin \
	libsemanage \
	policycoreutils-fixfiles \
	policycoreutils-secon \
	policycoreutils-semodule \
	policycoreutils-sestatus \
	policycoreutils-setfiles \
	selinux-config \
	refpolicy-mls \
	"
