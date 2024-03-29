# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "ehci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/3343f911-4e97-45f1-902b-f4ee62248bf3";
      fsType = "f2fs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/9AA8-C873";
      fsType = "vfat";
    };

  fileSystems."/home" =
    { device = "ssdPool/home";
      fsType = "zfs";
    };

  fileSystems."/run/media/HDD" =
    { device = "hddPool/hdd";
      fsType = "zfs";
    };


  swapDevices = [ ];

}
