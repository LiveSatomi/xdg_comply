This repostory is a collection of scripts that set up environment variables and other settings to make them XDG compliant.

Usage involves 3 steps.

Clone this repo into XDG_DATA_HOME.

Add XDG environment variables (if they aren't already set) and call the app scripts to the shell's start up file.

# XDG setup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

. $XDG_DATA_HOME/xdg_comply/env.sh

Then source the startup file and run the first time use file. These commands are separated because they don't make sense to run repeatedly. If the whole filesystem will be restarted often, run ftu.sh before env.sh.
. $XDG_DATA_HOME/xdg_comply/ftu.sh


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

