PR .= ".3"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI += "file://sed-selinux-fix.patch \
	file://configure-option-selinux.patch"

inherit with-selinux
