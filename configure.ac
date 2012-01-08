AC_INIT([ovirt-node], [2.2.3], [node-devel@ovirt.org])
AM_INIT_AUTOMAKE([-Wall -Werror foreign -Wno-portability tar-pax])

AC_SUBST([FEDORA],[[`rpm --eval '%{fedora}'|sed 's/[^0-9]//g'`]])
AC_SUBST([RHEL], [[`rpm --eval '%{rhel}'|sed 's/[^0-9]//g'`]])
AC_SUBST([DISTRO])
AC_SUBST([PACKAGE])
AC_SUBST([PRODUCT])


if test "$FEDORA"; then
    DISTRO=ovirt$FEDORA
fi
if test "$RHEL"; then
    DISTRO=rhevh$RHEL
fi

AC_ARG_WITH([image-minimizer], [AC_HELP_STRING([--with-image-minimizer],
            [enable aggresive reduction of the image size])],
            [IMAGE_MINIMIZER="%include image-minimizer.ks"],
            [IMAGE_MINIMIZER=""])
AC_SUBST([IMAGE_MINIMIZER])

AC_ARG_WITH([archipel], [AC_HELP_STRING([--with-archipel],
            [build ovirt node including Archipel])],
            [ARCHIPEL="ARCHIPEL"],
            [ARCHIPEL=""])
AC_SUBST([ARCHIPEL])

if test $ARCHIPEL; then
    PACKAGE=archipel-node-image
    PRODUCT=Archipel\ Node\ Hypervisor
    MAIN_KS=recipe/archipel-node-image.ks

else
    PACKAGE=ovirt-node-image
    PRODUCT=oVirt\ Node\ Hypervisor
    MAIN_KS=recipe/ovirt-node-image.ks
fi


AC_CONFIG_FILES([Makefile
                dracut/Makefile
                images/Makefile
                kinit/Makefile
                scripts/Makefile
                scripts/collectd.conf
                recipe/Makefile
                $MAIN_KS
                recipe/image-minimizer.ks
                ovirt-node.spec])   
AC_OUTPUT


