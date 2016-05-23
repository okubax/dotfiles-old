#!/bin/sh
#
# Powertop
#
# Executed on startup

#VM writeback timeout
echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs';
#Enable SATA link power management for host0
echo 'min_power' > '/sys/class/scsi_host/host0/link_power_management_policy';
#Enable SATA link power management for host1
echo 'min_power' > '/sys/class/scsi_host/host1/link_power_management_policy';
#Enable SATA link power management for host2
echo 'min_power' > '/sys/class/scsi_host/host2/link_power_management_policy';
#Enable SATA link power management for host3
echo 'min_power' > '/sys/class/scsi_host/host3/link_power_management_policy';
#Enable SATA link power management for host4
echo 'min_power' > '/sys/class/scsi_host/host4/link_power_management_policy';
#Enable SATA link power management for host5
echo 'min_power' > '/sys/class/scsi_host/host5/link_power_management_policy';
#Enable Audio codec power management
echo '1' > '/sys/module/snd_hda_intel/parameters/power_save';
#NMI watchdog should be turned off
echo '0' > '/proc/sys/kernel/nmi_watchdog';
#Autosuspend for unknown USB device 1-1.4 (8087:07da)
echo 'auto' > '/sys/bus/usb/devices/1-1.4/power/control';
#Runtime PM for PCI Device Intel Corporation 7 Series/C210 Series Chipset Family USB Enhanced Host Controller #2
echo 'auto' > '/sys/bus/pci/devices/0000:00:1a.0/power/control';
#Runtime PM for PCI Device Intel Corporation 7 Series/C210 Series Chipset Family MEI Controller #1
echo 'auto' > '/sys/bus/pci/devices/0000:00:16.0/power/control';
#Runtime PM for PCI Device Intel Corporation 7 Series/C210 Series Chipset Family USB xHCI Host Controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:14.0/power/control';
#Runtime PM for PCI Device Intel Corporation 7 Series/C210 Series Chipset Family SMBus Controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.3/power/control';
#Runtime PM for PCI Device Intel Corporation 3rd Gen Core processor Graphics Controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:02.0/power/control';
#Runtime PM for PCI Device Intel Corporation 7 Series/C210 Series Chipset Family USB Enhanced Host Controller #1
echo 'auto' > '/sys/bus/pci/devices/0000:00:1d.0/power/control';
#Runtime PM for PCI Device Intel Corporation 7 Series/C210 Series Chipset Family PCI Express Root Port 2
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.1/power/control';
#Runtime PM for PCI Device Intel Corporation 7 Series/C210 Series Chipset Family PCI Express Root Port 3
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.2/power/control';
#Runtime PM for PCI Device Intel Corporation 7 Series/C210 Series Chipset Family PCI Express Root Port 1
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.0/power/control';
#Runtime PM for PCI Device Intel Corporation 3rd Gen Core processor DRAM Controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:00.0/power/control';
#Runtime PM for PCI Device Intel Corporation 7 Series/C210 Series Chipset Family High Definition Audio Controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:1b.0/power/control';
#Runtime PM for PCI Device Intel Corporation 82801 Mobile SATA Controller [RAID mode]
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/power/control';
#Runtime PM for PCI Device Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller
echo 'auto' > '/sys/bus/pci/devices/0000:04:00.0/power/control';
#Runtime PM for PCI Device Intel Corporation Centrino Wireless-N 2230
echo 'auto' > '/sys/bus/pci/devices/0000:03:00.0/power/control';
#Runtime PM for PCI Device NVIDIA Corporation GF108M [GeForce GT 630M]
echo 'auto' > '/sys/bus/pci/devices/0000:01:00.0/power/control';
#Runtime PM for PCI Device Intel Corporation HM77 Express Chipset LPC Controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.0/power/control';
#Runtime PM for PCI Device Intel Corporation Xeon E3-1200 v2/3rd Gen Core processor PCI Express Root Port
echo 'auto' > '/sys/bus/pci/devices/0000:00:01.0/power/control';
