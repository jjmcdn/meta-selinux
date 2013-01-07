PR .= ".3"

do_install () {
	install -d ${D}${base_bindir}
	install -m 4755 tinylogin ${D}${base_bindir}/tinylogin
	echo '#!'"${base_bindir}/tinylogin" > tinylogin_wrapper
	for i in `cat tinylogin.links`; do
		mkdir -p ${D}/`dirname $i`
		install -m 755 tinylogin_wrapper ${D}$i
	done

        mv ${D}${base_bindir}/login ${D}${base_bindir}/login.${PN}
        mv ${D}${bindir}/passwd ${D}${bindir}/passwd.${PN}
}

pkg_postinst_${PN} () {
        update-alternatives --install ${base_bindir}/login login login.${PN} ${ALTERNATIVE_PRIORITY}
        update-alternatives --install ${bindir}/passwd passwd passwd.${PN} ${ALTERNATIVE_PRIORITY}
}

pkg_postrm_${PN} () {
        update-alternatives --remove ${base_bindir}/login login.${PN}
        update-alternatives --remove ${bindir}/passwd passwd.${PN}
}

