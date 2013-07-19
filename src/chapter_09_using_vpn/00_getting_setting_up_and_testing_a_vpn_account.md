Getting, setting-up and testing a VPN account
=============================================

In all the VPN systems, there is one computer set up as a server (in an unrestricted location), to which one or more clients connect. The set up of the server is out of the scope of this manual and the set up of this system is in general covered by your VPN provider. This server is one of the two ends of the encrypted tunnel. It is important that the company running this server can be trusted and is located in an area you trust. So to run a VPN, an account is needed at such a trusted server.

Please keep in mind that an account can often only be used on one device at a time. If you want to use a VPN with both your mobile and laptop concurrently, it is very well possible you need two accounts.
 
An account from a commercial VPN provider
-----------------------------------------

There are multiple VPN providers out there. Some will give you free trial time, others will begin charging right away at an approximate rate of €5 per month. Look for a VPN provider that offers OpenVPN accounts - it is an Open Source, trusted solution available for Linux, OS X, and Windows, as well as Android and iOS.

When choosing a VPN provider you need to consider the following points:

 * Information that is required from you to register an account - the less that is needed the better. A truly privacy concerned VPN provider would only ask you for email address (make a temporary one!), username and password. More isn't required unless the provider creates a user database which you probably don't want to be a part of.
 * Payment method to be used to pay for your subscription. Cash-transfer is probably the most privacy-prone method, since it does not link your bank account and your VPN network ID. Paypal can also be an acceptable option assuming that you can register and use a temporary account for every payment. Payment via a bank transfer or by a credit card can severely undermine your anonymity on and beyond the VPN.
 * Avoid VPN providers that require you to install their own proprietary client software. There is a perfect open source solution for any platform, and having to run a "special" client is a clear sign of a phony service.
 * Avoid using PPTP based VPNs, as several security vulnerabilities exist in that protocol. In fact, if two providers are otherwise equal, choose the one _not_ offering PPTP if feasible.
 * Look for a VPN provider that's using OpenVPN - an open source, multi-platform VPN solution.
 * Exit gateways in countries of your interest. Having a choice of several countries allows you to change your geo-political context and appears to come from a different part of the world. You need to be aware of legislation details and privacy laws in that particular country.
 * Anonymity policy regarding your traffic - a safe VPN provider will have a non-disclosure policy. Personal information, such as username and times of connection, should not be logged either.
 * Allowed protocols to use within VPN and protocols that are routed to the Internet. You probably want most of the protocols to be available
 * Price vs. quality of the service and its reliability.
 * Any known issues in regard to anonymity of the users the VPN provider might have had in the past. Look online, read forums and ask around. Don't be tempted by unknown, new, cheap or dodgy offers.

There are several VPN review oriented places online that can help you make the right choice:

 * http://www.bestvpnservice.com/vpn-providers.php
 * http://vpncreative.com/complete-list-of-vpn-providers
 * http://en.cship.org/wiki/VPN

 
Setting up your VPN client

 > "OpenVPN [..] is a full featured SSL VPN software solution that integrates OpenVPN server capabilities, enterprise management capabilities, simplified OpenVPN Connect UI, and OpenVPN Client software packages that accommodate GNu/Linux, OSX, Windows and  environments. OpenVPN Access Server supports a wide range of configurations, including secure and granular remote access to internal network and/or private cloud network resources and applications with fine-grained access control." ([http://openvpn.net/index.php/access-server/overview.html](http://openvpn.net/index.php/access-server/overview.html))

There is a number of different standards for setting up VPNs, including PPTP, LL2P/IPSec and **OpenVPN**. They vary in complexity, the level of security they provide, and which operating systems they are available for. Do not use PPTP as it has several security vulnerabilities. In this text we will concentrate on OpenVPN. It works on most versions of GNU/Linux, OSX, Windows. OpenVPN is TLS/SSL-based - it uses the same type of **encryption** that is used in HTTPS (Secure HTTP) and a myriad of other encrypted protocols. OpenVPN encryption is based on **RSA** key exchange algorithm. For this to work and in order to communicate, both the server and the client need to have public and private RSA keys.

Once you obtain access to your VPN account the server generates those keys and you simply need to download those from the website of your VPN provider or have them sent to your email address. Together with your keys you will receive a *root certificate (\*.ca)* and a *main configuration file (\*.conf or \*.ovpn)*. In most cases only the following files will be needed to configure and run an OpenVPN client:

 * **client.conf** (or client.ovpn) - configuration file that includes all necessary parameters and settings. NOTE: in some cases certificates and keys can come embedded inside the main configuration file. In such a case the below mentioned files are not necessary.
 * **ca.crt** (unless in configuration file) - root authority certificate of your VPN server, used to sign and check other keys issued by the provider.
 * **client.crt** (unless in configuration file) - your client certificate, allows you to communicate with VPN server.

Based on a particular configuration, your VPN provider might require a username and password to authenticate your connection. Often, for convenience, these can be saved into a separate file or added to the main configuration file. In other cases, key-based authentication is used, and the key is stored in a separate file:

 * **client.key** (unless in configuration file) - client authentication key, used to authenticate to the VPN server and establish an encrypted data channel.

In most cases, unless otherwise necessary, you don't need to change anything in the configuration file and (surely!) **do not edit key or certificate files!** All VPN providers have thorough instructions regarding the setup. Read and follow those guidelines to make sure your VPN client is configured correctly.

NOTE: Usually it's only allowed to use one key per one connection, so you probably shouldn't be using the same keys on different devices at the same time. Get a new set of keys for each device you plan to use with a VPN, or attempt to set up a local VPN gateway (advanced, not covered here).

Download your OpenVPN configuration and key files copy them to a safe place and proceed to the following chapter.

Setting up OpenVPN client
-------------------------

In the following chapters some examples are given for setting up OpenVPN client software. On any flavor of GNU/Linux use your favorite package manager and install **openvpn** or **openvpn-client** package.

If you want to use OpenVPN on Windows or OSX, have look at:

 * [http://openvpn.se](http://openvpn.se) (Windows interface)
 * [http://code.google.com/p/tunnelblick](http://code.google.com/p/tunnelblick) (OSX interface)
