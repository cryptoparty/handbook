Secure Connections
==================

Can other people read along when I check my email?
--------------------------------------------------

As discussed in the Chapter **Basic Tips**, whether you use webmail or an email program you should always be sure to use encryption for the entire session, from login to logout. This will keep anyone from spying on your communication with your email provider. Thankfully, this is easily done due to the popular use of *TLS/SSL* connections on email servers (See appendix **TLS/SSL**).

A TLS/SSL connection in the browser, when using webmail, will appear with `https` in the URL instead of the standard `http`, like so:

`https://gigglemail.com`

If your webmail host does not provide a TLS/SSL service then you should consider discontinuing use of that account; even if your emails themselves are not especially private or important, your account can very easily be hacked by "sniffing" your password! If it is not enabled already be sure to turn it on in your account options. At the time of writing, Google's Gmail and Hotmail / Microsoft Live both automatically switch your browser to using a secure connection.

If you are using an email program like Thunderbird, Mail.app or Outlook, be sure to check that you are using TLS/SSL in the options of the program. See the chapter **Setting Up Secure Connections** in the section **Email Security**.

Notes
-----

It's important to note that the administrators at providers like Hotmail or Google, that host, receive or forward your email can read your email even if you are using secure connections. It is also worth nothing that the cryptographic keys protecting a TLS/SSL connection can be deliberately disclosed by site operators, or copied without their permission, breaching the confidentiality of that connection. It is also possible for a Certificate Authority to be corrupted or compromised so that it creates false certificates for keys held by eavesdroppers, making it much easier for a Man In The Middle Attack on connections using TLS/SSL (See Glossary for "Man in the Middle Attack"). An example of compromised E-mail providers is discussed here, implicating America's NSA and several email providers: [http://cryptome.info/0001/nsa-ssl-email.htm](http://cryptome.info/0001/nsa-ssl-email.htm)

We also note here that a *Virtual Private Network* also a good way of securing your connections when sending and reading email but requires using a VPN client on your local machine connecting to a server. See the chapter **Virtual Private Networking** in the **Browsing** section.
