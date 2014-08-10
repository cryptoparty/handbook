Basic Tips
==========

Just as with other forms of communication on the web, some basic precautions always ought to be taken to ensure you have the best chance at protecting your privacy.

In brief:
---------

 * Passwords shouldn't relate to personal details and should contain a mix of a reasonable amount of letters and other characters.
 * To change passwords regularly is important as they might have been stolen, cracked or exposed to others in the meantime.
 * Always be sure your connection is secure when reading email on a wireless network, especially in Internet cafes.
 * Temporary files (the 'cache') on the computer that you use to check your email can present some risks. Clear them often.
 * Create and maintain separate email accounts for different tasks and interests.
 * Encrypt any message you wouldn't feel comfortable sending on a post card.
 * Be aware of the risks of having your email hosted by a company or organization.

Passwords
---------

Passwords are a primary point of vulnerability in email communication. Even a secure password can be read in transit unless the connection is secure (see TLS/SSL in the glossary). In addition, just because a password is long doesn't mean it cannot be guessed by using knowledge of you and your life to determine likely words and numbers.

The general rule for creating passwords is that it should be long (8 characters might be cracked within few hours) and have a mix of letters and other characters (numbers and symbols, which means you could just choose a sentence). Combining your birthday with that of a family name is however a great example of how not to do it.  This kind of information is easy to find using public resources. A popular trick is to base it on a favourite phrase and then, just to throw people off, sprinkle it with a few numbers.  Best of all is to use a password generator, either on your local system or online.

Often such passwords are difficult to remember and a second point of vulnerability is opened up – physical discovery. Since there is no better means of storing a password than in your own brain, services like OnlinePasswordGenerator ([http://www.onlinepasswordgenerator.com/](http://www.onlinepasswordgenerator.com/)) offer a great compromise by randomly generating passwords that vaguely resemble words and present you with a list to choose from.

If you do choose to store your password outside your head, you have the choice to either write it down or use keychain software. This can be a risky decision, especially if the email account and password are on the same device like your phone or computer.

Keychain software, like Keepass, consolidates various passwords and passphrases in one place and makes them accessible through a master password or passphrase. This puts a lot of pressure on the master password. If you do decide to use a keychain software, remember to choose a secure password.

Finally, you should use a different password for different accounts. In that way, if one of them gets hijacked, your other accounts remain safe. Never use the same password for your work and private email accounts. See section **Passwords** to learn more about how to secure yourself.

Reading Email in Public Places
------------------------------

One of the great conveniences of wireless networking and 'cloud computing' is the ability to work anywhere. You may often want to check your email in an Internet cafe, on open networks or public location. Spies, criminals and mischievous types are known to visit these locations in order to take advantage of the rich opportunities offered for ID theft, email snooping and hijacking bank accounts.

Here we find ourselves within an often underestimated risk of someone listening in on your communications using *network packet sniffing*. It matters little if the network itself is open or password secured.  If someone joins the same encrypted network, s/he can easily capture and read all *unsecured* (see chapter **Secure Connection** for *TLS* and *VPN* solutions) traffic of all of other users within the same network. A wireless key can be acquired for the cost of a cup of coffee and gives those that know how to capture and read network packets the chance to read your password while you check your email if the connection to that service is not secured.

Here a simple general rule always applies: if the cafe offers a network cable connection, use it! Finally, just as at a bank machine, make sure no one watches over your shoulder when you type in the password.

Cache Cunning
-------------

Here again convenience quickly paves the road to bad places. Due to the general annoyance of having to type in your password over and over again, you ask the browser or local mail client to store it for you. This is not bad in itself, but when a notebook or phone gets stolen, it enables the thief to access the owner's email account(s). The best practice is to clear this cache every time you close your browser. All popular browsers have an option to clear this cache on exit. 

One basic precaution can justify you holding onto your convenient cache: disk encryption. If your notebook is stolen and the thief reboots the machine, they'll be met with an encrypted disk. It is also wise to have a screen lock installed on your computer or phone. If the machine is taken from you while still running your existing browsing session, it cannot be accessed.

Securing your communication
---------------------------

Whenever you write and send email in a browser or use an email program (Outlook Express, Mozilla Thunderbird, Mail.app or Mutt), you should always ensure to use encryption for the entire session. This is easily done due to the popular use of *TLS/SSL (Secure Socket Layer)* connections by email servers (See glossary **TLS/SSL**).

If using a browser to check your email, check to see if the mail server supports SSL sessions by looking for https:// at the beginning of the URL. If not, be sure to turn it on in your email account settings, such as Gmail or Hotmail. This ensures that not just the login part of your email session is encrypted but also the writing and sending of emails. Furthermore check the cetificate details and take *TLS pinning* into account and endorse browser extensions that warn about changing or disfunctional certificates (e.g. *Certificate Patrol*) and make use of TLS secured version of the website the default (e.g. *HTTPS everywhere*).

The email service provider you select, should provide you with the mail server details. These details can often be found in the settings option. If your email service provider does not offer you a cryptographic protocol (TLS/SSL) to encrypt your data on the network, then it is advised to stop using it. Even if your emails are not important, you might find yourself 'locked out' of your account one day with a changed password!

When using an email program to check your email, be sure that you are using TLS/SSL in the program options. For instance in Mozilla Thunderbird the option for securing your outgoing email is found in `Tools -> Account Settings -> Outgoing Server (SMTP)` and for incoming email in `Tools -> Account Settings -> Server Settings`. This ensures that the downloading and sending of email is encrypted, making it very difficult for someone on your network, or on any of the networks between you and the server, to read or log your email.
Encrypting the email itself

Even if the line itself is encrypted using a system such as SSL, the email service provider still has full access to the email because they own and have full access to the storage device where you host your email. If you want to use a web service and be sure that your provider cannot read your messages, then you'll need to use something like *GPG* (Appendix for **GnuPG**) with which you can encrypt the email. The header of the email however will still contain the IP (Internet address) that the email was sent from alongside other compromising details. Worth mentioning here is that the use of *GPG* in webmail is not as comfortable as with a locally installed mail client, such as *Thunderbird* or *Outlook Express*.

DNSSEC & DANE
-------------

certificate information can be stored in DNS records and therefore be regarded more relyable. Check the availability of *DNSSEC* and especially regarding email services *DANE* with your service providers.
Here again browser extensions (e.g. *DNSSEC/TLSA Validator*) can assist to control the availability of these security measures.

Account Separation
------------------

Due to the convenience of services like Gmail, it is increasingly typical for people to have only one email account. This considerably centralises the potential damage done by a compromised account. More so, there is nothing to stop a disgruntled Google employee from deleting or stealing your email, let alone Google itself getting hacked. Hacks happen.

A practical strategy is to keep your personal email, well, personal. If you have a work email then create a new account if your employers haven't already done it for you. The same should go for any clubs or organisations you belong to, each with a unique password. Not only does this improve security, by reducing the risk of whole identity theft, but greatly reduces the likelihood of spam dominating your daily email.

A note about hosted email
-------------------------

Those that provide you with the service to host, send, download and read email are not encumbered by the use of TLS/SSL. As hosts, they can read and log your email in plain text. They can comply with requests by local law enforcement agencies who wish to access email. They may also study your email for patterns, keywords or signs of sentiment for or against brands, ideologies or political groups. It is important to read the EULA (End-user license agreement) of your email service provider and do some background research on their affiliations and interests before choosing what kind of email content they have access to. These concerns also apply to the hosts of your messages' recipients.
