#!/usr/bin/env fish

# Ensure the required binaries are available in NixOS
set polybar_path (command -v polybar)
set tint2_path (command -v tint2)

if not test -x $polybar_path
    echo "Error: polybar not found in PATH or environment"
    exit 1
end

if not test -x $tint2_path
    echo "Error: tint2 not found in PATH or environment"
    exit 1
end

if pgrep polybar
    # Kill existing processes
    pkill tint2
    pkill polybar
    exit 1
else
    # Start tint2 with configurations
    $tint2_path -c ~/.config/tint2/panellauncher.tint2rc &
    $tint2_path -c ~/.config/tint2/clock.tint2rc &
    $tint2_path -c ~/.config/tint2/date.tint2rc &
    $tint2_path -c ~/.config/tint2/customscripts.tint2rc &
    $tint2_path -c ~/.config/tint2/icons.tint2rc &
    $tint2_path -c ~/.config/tint2/workspaces.tint2rc &

    # Start polybar instances
    $polybar_path windows &
    $polybar_path systray &
    $polybar_path date &
    $polybar_path workspace &
end

exit

