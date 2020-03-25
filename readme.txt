For initial investigation into a file in the ~ directory, check here:
https://wiki.archlinux.org/index.php/XDG_Base_Directory


The next section describes files that will remain in the home directory with no plans to relocate.
.bash_aliases
.bash_history
.bash_logout
.bash_profile
.bashrc
.cache/
.config/


The next section describes files that will remain in the home directory temporarily and the reason.


.toprc - procps-ng - (top command) requires v3.3.11, unavailable in CentOS 7. See https://gitlab.com/procps-ng/procps/tags
.oracle_jre_usage/ - java - bug introduced in java8u60, fixed in java8u102
.freerdp/ - freerdp - fixed in version > 1.0
.speech-dispatcher/ - spd-conf - fixed in version 0.8. https://github.com/hadess/speechd/blob/speech-dispatcher-0-8/src/api/python/speechd_config/config.py.in
.vboxclient-*.pid - VirtualBox - Seems to be unsupported. See calls to RTPathUserHome/ RTPathAppend in https://www.virtualbox.org/svn/vbox/trunk/src/VBox/Additions/x11/VBoxClient/main.cpp

