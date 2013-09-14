About LUKS
==========

 LUKS is the Linux Unified Key Setup, it is the normal method for disk encryption on Linux, if you choose Full Disk Encryption with Ubuntu, it uses the LUKS system to encrypt your device.

 * Advantages: LUKS is available through dm-crypt, part of the Linux Kernel, so it doesn't need any further software to be installed to utilise it.

 * Disadvantages: Unlike with Truecrypt, it is not portable between other Operating Systems, so if you use LUKS to encrypt a USB drive, other Linux users will be able to use and mount the disk but Windows and Mac OS users will not.

 (Note: In the following examples, I will give an example of the device as /dev/sdXn, in your case, you will want to replace 'X' with the drive letter, and 'n' and the partition number (eg. /dev/sda2).)

Preparations
------------

 Over-write the previous data, to ensure that the encrypted data is as indistinguishable from non-used blocks, the device should be entirely over-written with random data.

 	dd if=/dev/urandom of=/dev/sdXn
 
 (Warning: this may take a long time to complete, depending on the size of the device and will entirely **destroy all current data** on the partition.)
 
 This step is important, as if the device has been recently formatted, then it will likely consist of areas of blank or otherwise non-uniform data, meaning that if you now move to an encrypted device you may reveal where chunks of data have been written (by comparing the blank/non-uniform areas with the pseudo-random areas) which could leak information about encrypted files stored on the device if analyzed.

Creating a LUKS partition
-------------------------

 The 'cryptsetup' tool is availiable on most modern Linux distributions by default, if not it is available at [https://code.google.com/p/cryptsetup/](https://code.google.com/p/cryptsetup/).
 
 To format a partition for use as an encrypted device, issue the command
 
 	cryptsetup luksFormat /dev/sdXn
 This will use the default cipher, keysize and hashing mechanism, you can view the available cryptographic ciphers for your version of Linux by running the command
 
 	cat /proc/crypto
 To choose a specific cipher, it can be supplied with the '-c' option, for a specific keysize use '-s' and for a specific hashing mechanism use '-h'. For example, if you want to use 512bit aes-xts-plain64 with the sha512 hashing algorithm, you could use:
 
 	cryptsetup luksFormat -c aes-xts-plain64 -s 512 -h sha512 /dev/sdxN
 It is highly recommend, when chosing a cipher and cipher mode that for something like disk encryption you **DO NOT CHOOSE ECB MODE**, the ECB (or Electronic Codebook) mode of encryption means that identicle plaintext becomes identicle ciphertext, which can leak valuable data about the information stored on the device, for more information see here - [https://en.wikipedia.org/wiki/Block_cipher_modes_of_operation#Electronic_codebook_.28ECB.29](https://en.wikipedia.org/wiki/Block_cipher_modes_of_operation#Electronic_codebook_.28ECB.29)	
 
 It will ask for confirmation to format the partition and then a passphrase and confirmation of the passphrase. Once this is confirmed and the command has finished its run, we have a LUKS device available. The next step will be to apply a specific filesystem format to the device, first, we need to make the contents of our encrypted container available as a pseudo block device.
 
 	cryptsetup open /dev/sdxN cryptfs
 This will ask for confirmation of the passphrase, then make the encrypted block device available as /dev/mapper/cryptfs (although the 'cryptfs' part of the command can be replaced by any name you'd like the device to be available under). Now we want to apply a filesystem, as we usually would a plain partition.
 
Formatting a LUKS device with a filesystem
------------------------------------------
 
 	mkfs -t ext4 /dev/mapper/cryptfs
 This will mean that the /dev/mapper/cryptfs device will be available as an ext4 formatted block device, and can be mounted normally, if your file manager supports volume managementm, otherwise we can mount it using the command:
 
 	mount /dev/mapper/cryptfs /mnt/
 You can now read and write data from the encrypted device from /mnt as if it were a normally mounted partition.
 
Checking your device
--------------------

 If you've used Ubuntu to encrypt your device and you want to see the specific keysize, hash etc that was chosen you can see the information through the command:
 
 	cryptsetup luksDump /dev/sdXn
 This will return useful information, including 'Cipher name' (eg. aes), the 'Cipher mode' (eg. xts-plain64), the 'Hash spec' (eg. sha512) and 'MK bits', which is the keysize (eg. 512).
