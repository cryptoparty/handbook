Fears
=====

*Who can read the email messages that I have already sent or received?*

*Who can read the emails I send when they travel across the Internet?*

*Can the people I send emails to share them with anybody?*

Emails that are sent "in the clear" without any encryption (which means the vast majority of email sent and received today) can be read, logged, and indexed by any server or router along the path the message travels from sender to receiver. Assuming you use an encrypted connection (see glossary for TLS/SSL) between your devices and your email service provider (which everybody should), this means in practice that the following people can still read any given message:

 1. You
 2. Your email service provider
 3. The operators and owners of any intermediate network connections (often ambiguous multinational conglomerates or even sovereign states)
 4. The recipient's email service provider
 5. The intended recipient

Many webmail providers (like Gmail) automatically inspect all of the messages sent and received by their users for the purpose of showing targeted advertisements. While this may be a reasonable compromise for some users most of the time (free email!), it is disturbing for many that even their most private communications are inspected and indexed as part of a hidden and potentially very insightful profile maintained by a powerful corporate giant with a profit motive.

Additionally, somebody who can legally pressure the groups above could request or demand:

 1. logged meta-data about email (lists of messages sent or received by any user, subject lines, recipients), in some jurisdictions even without a warrant.
 2. messages sent and received by a specific user or group, with a warrant or court order in some jurisdictions.
 3. a dedicated connection to siphon off *all* messages and traffic, to be analyzed and indexed off site.

In cases where a user has a business or service relationship with their email provider, most governments will defend the privacy rights of the user against unauthorized and unwarranted reading or sharing of messages, though often it is the government itself seeking information, and frequently users agree to waive some of these rights as part of their service agreement. However, when the email provider is the user's employer or academic institution, privacy rights frequently do not apply. Depending on jurisdiction, businesses generally have the legal right to read all of the messages sent and received by their employees, even personal messages sent after hours or on vacation. 

Historically, it was possible to "get away" with using clear text email because the cost and effort to store and index the growing volume of messages was too high: it was hard enough just to get messages delivered reliably. This is why many email systems do not contain mechanisms to preserve the privacy of their contents. Now the cost of monitoring has dropped much faster than the growth of internet traffic and large-scale monitoring and indexing of all messages (either on the sender or receiving side) is reasonable to expect even for the most innocuous messages and users. [CITE:corporate email archiving/spying, blue coat, Syrian monitoring, USA Utah data center, USA intercept scandals]

For more about legal protections of email messages "at rest" (technical term for messages stored on a server after having been delivered), especially regarding government access to your email messages, see:

 * https://ssd.eff.org/3rdparties/govt/stronger-protection (USA)
 * http://en.wikipedia.org/wiki/Data_Protection_Directive (EU)

Just like there are certain photos, letters, and credentials that you would not post "in the clear" on the Internet because you would not want that information to get indexed accidentally and show up in search results, you should never send email messages in the clear that you would not want an employer or disgruntled airport security officer to have easy access to.

Random abuse and theft by malicious hackers
-------------------------------------------

*What if somebody gets complete control of my email account?*

*I logged in from an insecure location... how do I know now if my account has been hacked?*

*I've done nothing wrong... what do I have to hide?*

*Why would anybody care about me?*

Unfortunately, there are many practical, social, and economic incentives for malicious hackers to break into the accounts of random Internet individuals. The most obvious incentive is identity and financial theft, when the attacker may be trying to get access to credit card numbers, shopping site credentials, or banking information to steal money. A hacker has no way to know ahead of time which users might be better targets than others, so they just try to break into all accounts, even if the user doesn't have anything to take or is careful not to expose his information.

Less obvious are attacks to gain access to valid and trusted user accounts to collect contact email addresses from and then distribute mass spam, or to gain access to particular services tied to an email account, or to use as a "stepping stone" in sophisticated social engineering attacks. For example, once in control of your account a hacker could rapidly send emails to your associates or co-workers requesting emergency access to more secured computer systems.

A final unexpected problem affecting even low-profile email users, is the mass hijacking of accounts on large service providers, when hackers gain access to the hosting infrastructure itself and extract passwords and private information in large chunks, then sell or publish lists of login information in online markets.

Targeted abuse, harassment, and spying
--------------------------------------

*Something I wrote infuriated a person in power... how do I protect myself?*

If you find yourself the individual target of attention from powerful organizations, governments, or determined individuals, then the same techniques and principles will apply to keeping your email safe and private, but additional care must be taken to protect against hackers who might use sophisticated techniques to undermine your devices and accounts. If a hacker gains control of any of your computing devices or gets access to any of your email accounts, they will likely gain immediate access both to all of your correspondence, and to any external services linked to your email account.

Efforts to protect against such attacks can quickly escalate into a battle of wills and resources, but a few basic guidelines can go a long way. Use specific devices for specific communication tasks, and use them only for those tasks. Log out and shutdown your devices immediately when you are done using them. It is best to use open software encryption tools, web browsers, and operating systems as they can be publicly reviewed for security problems and keep up to date with security fixes.

*Be wary of opening PDF files using Adobe Reader or other proprietary PDF readers.* Closed source PDF readers have been known to be used to execute malign code embedded in the PDF body. If you receive a .pdf as an attachment you should first consider if you know the supposed sender and if you are expecting a document from them. Secondly, you can use PDF readers which have been tested for known vulnerabilities and do not execute code via java script. 

Linux: Evince, Sumatra PDF

OS X: Preview

Windows: Evince

Use short-term anonymous throw away accounts with randomly generated passwords whenever possible.

When Encryption Goes Wrong
--------------------------

*What happens if I lose my "keys"? Do I lose my email?*

Rigorous GPG encryption of email is not without its own problems.

If you store your email encrypted and lose all copies of your private key, you will be absolutely unable to read the old stored emails, and if you do not have a copy of your revocation certificate for the private key it could be difficult to prove that any new key you generate is truly the valid one, at least until the original private key expires.

If you sign a message with your private key, you will have great difficulty convincing anybody that you did not sign if the recipient of the message ever reveals the message and signature publicly. The term for this is *non-repudiation*: any message you send signed is excellent evidence in court. Relatedly, if your private key is ever compromised, it could be used to read all encrypted messages ever sent to you using your public key: the messages may be safe when they are in transit and just when they are received, but any copies are a liability and a gamble that the private key will never be revealed. In particular, even if you destroy every message just after reading it, anybody who snooped the message on the wire would keep a copy and attempt to decrypt it later if they obtained the private key.

The solution is to use a messaging protocol that provides *perfect forward secrecy* by generating a new unique session key for every conversation of exchange of messages in a random way such that the session keys could not be re-generated after the fact even if the private keys were known. The OTR chat protocol provides perfect forward secrecy ([http://en.wikipedia.org/wiki/Perfect_forward_secrecy](http://en.wikipedia.org/wiki/Perfect_forward_secrecy)) for real time instant messaging, and the SSH protocol provides it for remote shell connections, but there is no equivalent system for email at this time. 

It can be difficult to balance the convenience of mobile access to your private keys with the fact that mobile devices are much more likely to be lost, stolen, or inspected and exploited than stationary machines. An emergency or unexpected time of need might be exactly the moment when you would most want to send a confidential message or a signed message to verify your identity, but these are also the moments when you might be without access to your private keys if your mobile device was seized or not loaded with all your keys.
