AC_INIT([ovirt-node], [2.2.3], [node-devel@ovirt.org])
AM_INIT_AUTOMAKE([-Wall -Werror foreign -Wno-portability tar-pax])

AC_SUBST([FEDORA],[[`rpm --eval '%{fedora}'|sed 's/[^0-9]//g'`]])
AC_SUBST([RHEL], [[`rpm --eval '%{rhel}'|sed 's/[^0-9]//g'`]])
AC_SUBST([DISTRO])

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

echo $ARCHIPEL
if test $ARCHIPEL; then
    AC_CONFIG_FILES([Makefile
      dracut/Makefile
      images/Makefile
      kinit/Makefile
      scripts/Makefile
      scripts/collectd.conf
      recipe-archipel/Makefile
      recipe-archipel/archipel-node-image.ks
      recipe-archipel/image-minimizer.ks
      ovirt-node.spec
      ])
    AC_OUTPUT   
else
    AC_CONFIG_FILES([Makefile
      dracut/Makefile
      images/Makefile
      kinit/Makefile
      scripts/Makefile
      scripts/collectd.conf
      recipe/Makefile
      recipe/ovirt-node-image.ks
      recipe/image-minimizer.ks
      ovirt-node.spec
      ])
    AC_OUTPUT
    
fi


