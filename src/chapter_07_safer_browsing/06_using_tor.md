Using Tor?
==========

Tor is a system intended to enable online anonymity, composed of client software and a network of servers which can hide information about users' location and other factors which might identify them. Imagine a message being wrapped in several layers of protection: every server is only able to take off one layer, thereby immediately deleting the sender information of the previous server.

If Alice wants to view Bob's website, instead of directly talking to Bob like this:

    Alice -> Bob
    
This is fine, and Alice and Bob can use end to end cryptography to ensure privacy, integrity and authenticity of their communications, however if Alice does not want Bob to know that she is viewing his website or does not want Eve (a hypothetical evesdropper, on Alice or Bobs side of the connection) to know she and Bob are communicating, extra steps must be taken.

Alice instead makes an encrypted connection to an EntryNode on the Tor network, here they establish a TLS connection and the EntryNode allows Alice to make a further connection through it. Once again a TLS connection is established this time through the already encrypted EntryNode connection, and once again the process is repeated through the RelayNode to the ExitNode. Now, Alice is encrypting the data 3 times, first for the ExitNode, then for the RelayNode and finally for the EntryNode. Creating a network path like this:

    Alice -> EntryNode -> RelayNode -> ExitNode -> Bob
    
When the EntryNode receives Alice's data it is still encrypted for the RelayNode and ExitNode, it knows where the data is coming from but not the final destination or the message content, it then passes the data on to the RelayNode. The RelayNode receives the data but it is still encrypted for the ExitNode, it knows it is coming from the EntryNode and going to the ExitNode but does not know the final destination or the original sender, it then passes the data to the ExitNode which removes the final layer of encryption, the ExitNode knows what the message is, that it came from RelayNode but does not know where it entered the network, or who sent it.

This layered approach is where Tor derives it's name from (The Onion Router), each 'layer' knows only of the layer on either side of it, meaning that none in the chain except Alice knows the full path the data is taking, however Alice, Bob and the ExitNode are all able to see the message content, thus end-to-end cryptography is still required to ensure privacy, integrity and authenticity of the communications across the Tor network.

Use of this system makes it more difficult to trace internet traffic to the user, including visits to Web sites, online posts, instant messages, and other communication forms. It is intended to protect users' personal freedom, privacy, and ability to conduct confidential business, by keeping their internet activities from being monitored. The software is open-source and the network is free of charge to use.

Like all current low latency anonymity networks, Tor cannot and does not attempt to protect against monitoring of traffic at the boundaries of the Tor network, i.e., the traffic entering and exiting the network. While Tor does provide protection against traffic analysis, it cannot prevent traffic confirmation (also called end-to-end correlation)

Caution: As Tor does not, and by design cannot, encrypt the traffic between an exit node and the target server, any exit node is in a position to capture any traffic passing through it which does not use end-to-end encryption such as TLS. (If your postman is corrupt he might still open the envelope and read the content). While this may or may not inherently violate the anonymity of the source, if users mistake Tor's anonymity for end-to-end encryption they may be subject to additional risk of data interception by third parties. So: the location of the user remains hidden; however, in some cases content is vulnerable for analysis through which identifying or revealing information about the user may be gained.

Using Tor Browser Bundle
------------------------

The Tor Browser Bundle lets you use Tor on Windows, OSX and/or Linux without requiring you to configure a Web browser. Even better, it's a portable application that can be run from a USB flash drive, allowing you to carry it to any PC without installing it on each computer's hard drive.

Downloading Tor Browser Bundle
------------------------------

You can download the Tor Browser Bundle from the torproject.org Web site ([https://www.torproject.org](https://www.torproject.org)).

If the torproject.org Web site is filtered from where you are, type "tor mirrors" in your favorite Web search engine: The results probably include some alternative addresses to download the Tor Browser Bundle.

Please follow the instructions on the Tor Project Website on how to install the Tor Browser.

Caution: When you download Tor Bundle (plain or split versions), you should check the signatures of the files. This step ensures that the files have not been tampered with. To learn more about signature files and how to check them, read [https://www.torproject.org/docs/verifying-signatures](https://www.torproject.org/docs/verifying-signatures)



Running a Relay or Bridge
-------------------------

Tor is a network of volunteers who run relays and bridges.  If you would like to grow the Tor network by contributing bandwidth and spare CPU cycles, consider running a relay.  Plus, running a relay may improve your anonymity since an attacker can't distinguished between traffic that originated from you or from the relay.  See the [Tor FAQ](https://www.torproject.org/docs/faq.html.en#BetterAnonymity) for more details.

However, if you do run a relay, your IP address will be listed on the Internet as a Tor relay.  Tor clients depend on this list, provided by Tor Directory Servers, so that they can build circuits.  If you wish to contribute to Tor, but do not want to run a public relay, consider running a bridge.  Since Tor relays are public, some ISP block access to the Tor network by blocking *all the relays.*  Tor Bridges are unlisted are therefore, more difficult to find.

Tor's goal is to protect anonymity on the Internet, but sometimes Tor is used for illegal purposes.  As a relay operator, consult the [Legal FAQ](https://www.torproject.org/eff/tor-legal-faq.html), written by the Electronic Frontier Foundation (EFF).  The EFF is a U.S. based non-profit organization whose mission is to "protect your digital right."  Other countries should seek the advice of similar organizations.  However, legal risks can be minimized by running a non-exit relay or bridge.

If you'd like to configure your computer to run a relay or a bridge, visit the [Tor website](https://www.torproject.org/docs/tor-doc-relay.html.en) for thorough instructions.
