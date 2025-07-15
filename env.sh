# This script sources env.sh in all immediate subdirectories of $XDG_DATA_HOME/xdg_convert
# Invoked env.sh files should be idempotent and configure their application to be XDG compliant.

    for app_dir in $(find $XDG_DATA_HOME/xdg_convert/* -maxdepth 0 -type d); do
        if [ -f "$app_dir/env.sh" ]; then
            source $app_dir/env.sh
        fi
    done

