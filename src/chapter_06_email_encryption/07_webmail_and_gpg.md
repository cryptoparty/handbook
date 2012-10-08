Webmail and PGP
===============

The only safe way of encrypting email inside of the browser window is to encypt it outside and then copy & paste the encrypted text into the browser window.

For example, write the text in a text editor like gedit, vim or kate and save it as .txt file (in this example "message.txt". Then type

    gpg -ase -r the.recipients.email.address@or.gpg.id -r your.gpg.id message.txt

A new file called "message.asc" will be created. It contains the encrypted message and can thus be either attached to an email or its content safely copy & pasted into the browser window.

To decrypt a message from the browser window, simply type `gpg` into the command line and hit Enter. Then copy & paste the message to be decrpyted into the commandline window and after being asked for your passphrase hit Ctrl+D (this enters a end-of-file character and prompts gpg to output the cleartext message).

If using the commandline seems too cumbersome to you, you might consider installing a helper application like gpgApplet, kgpg or whatever application ships with your operating system.
