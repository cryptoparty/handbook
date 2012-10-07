Secure Emails
=============

It is possible to send and receive secure email using standard current email programs by adding a few add-ons. The essential function of these add-ons is to make the message body (but not the To:, From:, CC: and Subject: fields) unreadable by any 3rd party that intercepts or otherwise gains access to your email or that of your conversation partner. This process is known as encryption.

Secure email is generally done using a technique called *Public-Key Cryptography*. Public-Key Cryptography is a clever technique that uses two code keys to send a message. Each user has a *public key*, which can only be used to encrypt a message but not to decrypt it. The public keys are quite safe to pass around without worrying that somebody might discover them. The *private keys* are kept secret by the person who receives the message and can be used to decode the messages that are encoded with the matching public key.

In practice, that means if Rosa wants to send Heinz a secure message, she only needs his public key which encodes the text. Upon receiving the email, Heinz then uses his private key to decrypt the message. If he wants to respond, he will need to use Rosa's public key to encrypt the response, and so on.

What software can I use to encrypt my email?
--------------------------------------------

The most popular setup for public-key cryptography is to use *Gnu Privacy Guard (GPG)* to create and manage keys and an add-on to integrate it with standard email software. Using GPG will give you the option of encrypting sensitive mail and decoding incoming mail that has been encrypted but it will not force you to use it all the time. In years past, it was quite difficult to install and set up email encryption but recent advances have made this process relatively simple.

See section **Email Encryption** for working with GPG in the scope of your operating system and email program.

If you use a *webmail* service and wish to encrypt your email this is more difficult. You can use a GPG program on your computer to encrypt the text using your public key or you can use an add-on, like Lock The Text ([http://lockthetext.sourceforge.net/](http://lockthetext.sourceforge.net/)).  If you want to keep your messages private, we suggest using a dedicated email program like Thunderbird instead of webmail.
