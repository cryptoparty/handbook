Installing GPG on Android
=========================

With the growing usage of mobile phones for e-mail, it's interesting to be able to use GPG also on your mobile. This way you can still read the messages sent to you in GPG on your phone and not only on your computer. 

Install the *Android Privacy Guard (APG)* and *K-9 Mail* applications to your Android device from the Google Play Store or another trusted source.

 1. Generate a new private key that uses DSA-Elgamal with your PC's GPG installation (You can only create keys with up to 1024bit key length on Android itself).
 2. Copy the private key to your Android device.
 3. Import the private key to APG. You may wish to have APG automatically delete the plaintext copy of your private key from your Android device's filesystem.
 4. Set-up your e-mail accounts in *K-9 Mail*.
 5. In the settings for each account, under *Cryptography*, make sure that K-9 Mail knows to use APG. You can also find options here to make K-9 Mail automatically sign your messages and/or encrypt them if APG can find a public key for the recipient(s).
 6. Try it out.

APG
---

This is a small tool which makes GPG encryption possible on the phone. You can use APG to manage your private and public keys. The options in the application are quite straightforward if you are a little knowledge of GPG in general.

Management of keys is not very well implemented yet. The best way is to manually copy all your public keys to the SD card in the APG folder. Then it's easy to import your keys. After you've imported your public and private keys, GPG encrypting, signing and decrypting will be available for other applications as long as these applications have integrated encryption/GPG.

GPG enabled e-mail on Android: K-9 Mail
---------------------------------------

The default mail application does not support GPG. Luckily there is an excellent alternative: K-9 Mail. This application is based on the original Android mail application but with some improvements. The application can use APG as it's GPG provider. Setting up K-9 Mail is straightforward and similar to setting up mail in the Android default mail application. In the settings menu there is an option to enable "Cryptography" for GPG mail signing.

If you want to access your GPG mails on your phone this application is a must have.

Please note, due to some small bugs in K-9 Mail and/or APG, it's very advisable to disable HTML mail and use only Plain text. HTML mails are not encrypted nicely and are often not readable.