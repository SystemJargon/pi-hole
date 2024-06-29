## Raspberry-Pi Update CLI syntax

Some config is available also via ```sudo raspi-config```

```
# update package list
sudo apt update -y
```

```
# full upgrade any package
sudo apt full-upgrade -y
```

```
# you may need to reboot but only if effecting kernel
sudo reboot
```

```
# clean up cached package remnants
sudo apt autoremove
sudo apt clean
```

```
# check bootloader current version and compare to available update
sudo rpi-eeprom-update
```

```
# update bootloader
sudo rpi-eeprom-update -a
```

```
# reboot needed to apply any bootloader update
sudo reboot
```
