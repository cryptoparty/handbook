Secure Messaging
================

SMS are short messages sent between mobile phones. The text is sent without encryption and can be read and stored by mobile phone providers and other parties with access to the network infrastructure to which you're connected. To protect your messages from interception you have to use a *chat protocol* over your data connection. Thankfully this is not at all difficult. Many Instant Messaging providers use the *Extensible Messaging and Presence Protocol (XMPP)* that allows users to use various clients to send and receive messages and exchange message with other providers.

Although XMPP uses TLS/SSL (see glossary entry TLS/SSL) encryption to prevent 3rd party interception, your provider can still read your messages and hand them over to other entities. *Off-the-Record (OTR)* Messaging however allows you encrypt your messages. The messages you send do not have digital signatures that can be verified by a third party, consequently the identity of their author is *repudiable afterwards*. Anyone can forge messages after a conversation to make them look like they came from you. However, *during* a conversation, your correspondent is assured of the *integrity* of the messages - what s/he sees is authentic and unmodified.

See the section **Instant Messaging Encryption**
