apt-get install linux-image-3.16.0-30-generic

cat > /etc/default/grub << EndOfMessage
GRUB_DEFAULT="1>2"
GRUB_HIDDEN_TIMEOUT_QUIET=true
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet"
GRUB_CMDLINE_LINUX=""
EndOfMessage

update-grub

#reboot
