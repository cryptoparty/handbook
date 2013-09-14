About LUKS
==========

 LUKS is the Linux Unified Key Setup, it is the default method for disk encryption on Linux. Ff you choose *Full Disk Encryption* during a Ubuntu or Debian installation, it uses the LUKS system to encrypt your hard drive.

 * Advantages: LUKS is available through dm-crypt which is part of the Linux Kernel, so it doesn't need any further software to be installed.

 * Disadvantages: Unlike with Truecrypt, it is not possible to use it with other Operating Systems, so if you use LUKS to encrypt a USB drive, you can only use it on Linux machines, but not on Windows or Mac OS.

 (Note: In the following examples, the device to be encrypted will be named /dev/sdXn. In your case, you will have to replace 'X' with the drive letter, and 'n' and the partition number resulting in a name like /dev/sda2.

Preparations
------------

 Erase the data on the partition of the hard drive you want to encrypt, to ensure that the encrypted data is as indistinguishable from non-used blocks. For that the device should be entirely over-written with random data. This ensures that after setting it up, the encrypted files can not be distiguished from the still empty space.
 
 On the command line type:

    dd if=/dev/urandom of=/dev/sdXn
 
 (Warning: this may take a long time to complete, depending on the size of the device and will entirely **destroy all current data** on the partition.)


Creating a LUKS partition
-------------------------

 The 'cryptsetup' tool is available on most modern Linux distributions by default, if not it is available at [https://code.google.com/p/cryptsetup/](https://code.google.com/p/cryptsetup/).
 
 To format a partition for use as an encrypted device, issue the command
 
    cryptsetup luksFormat /dev/sdXn

 It will ask for confirmation to format the partition and then a passphrase and confirmation of the passphrase. Once this is confirmed and the command has finished its run, we have a LUKS device available. The next step will be to apply a specific filesystem format to the device, first, we need to make the contents of our encrypted container available as a *pseudo block device*. This *pseudo block device* is the interface the Operating System can use once the encrypted device is opened via the passphrase.
 
    cryptsetup open /dev/sdxN cryptfs

 This will ask for the passphrase and create the pseudo device /dev/mapper/cryptfs (the 'cryptfs' part is arbitrary and can be replaced with a name of your own choosing). Now, this device can be treated as any other hard disk. So the next step would be to apply a file system:

 
Formatting a LUKS device with a filesystem
------------------------------------------
 
    mkfs -t ext4 /dev/mapper/cryptfs

This means that the /dev/mapper/cryptfs device will be available as an ext4 formatted block device and can be mounted as any other in your file manager.

But, since we just got comfortable using the commandline, we can mount it using:
 
    mount -t auto /dev/mapper/cryptfs /mnt/

 You can now read and write data from the encrypted device from /mnt as if it were a normally mounted partition.
 
Checking your device
--------------------

 If you've used Ubuntu to encrypt your device and you want to see the specific keysize, hash and block cipher that was chosen to encrypt it, you can see into the information via the command:
 
    cryptsetup luksDump /dev/sdXn
