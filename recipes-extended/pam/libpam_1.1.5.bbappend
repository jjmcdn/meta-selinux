DEPENDS += "${@base_contains('DISTRO_FEATURES', 'selinux', 'libselinux', '', d)}"

RDEPENDS_${PN}-runtime += "${@base_contains('DISTRO_FEATURES', 'selinux', 'pam-plugin-selinux', '', d)}"

EXTRA_OECONF += "${@base_contains('DISTRO_FEATURES', 'selinux', '', '--disable-selinux', d)}"

PR .= ".4"

