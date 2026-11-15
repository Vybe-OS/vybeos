# fix for screen readers
if grep -Fqa 'accessibility=' /proc/cmdline &> /dev/null; then
    setopt SINGLE_LINE_ZLE
fi

if [[ $(tty) == /dev/tty1 ]]; then
    dmesg -n 1
    vybeos-installer
fi

~/.automated_script.sh
