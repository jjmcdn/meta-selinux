PR .= ".2"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://util-linux-selinux.patch \
           "

inherit with-selinux
