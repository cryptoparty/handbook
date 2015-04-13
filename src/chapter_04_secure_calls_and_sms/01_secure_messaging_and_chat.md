Secure Messaging
================

SMS are short messages sent between mobile phones. The text is sent without encryption and can be read and stored by mobile phone providers and other parties with access to the network infrastructure to which you're connected. To protect your messages from interception you need to use end-to-end encryption on your text messages.

Android
-------
 * **TextSecure** - WhisperSystems provide an SMS encryption system for Android called TextSecure, based on public key cryptography which ensures that messages are encrypted on the wire and are also stored in an encrypted database on the device, however to ensure encryption on the wire, both parties must be using the application. It is [Open Source](https://github.com/WhisperSystems/TextSecure/) and available through the [Play Store](https://play.google.com/store/apps/details?id=org.thoughtcrime.securesms&hl=en)

The encryption technology behind it (named //axolotl//) extends the OTR protocol so that messages can be encrypted and send even if not all of the communicating parties are online.
