Types of Email
==============

The use of email almost always comes in two forms:

 * Email read, written and sent in the *browser* (webmail), or

 * Email read, written and sent using an *email program*, like Mozilla Thunderbird, Mail.App or Outlook Express.

Remotely hosted email ('webmail'), resourced using a web browser
----------------------------------------------------------------

Email sent using the *browser*, sometimes referred to as *webmail*, typically assumes an account with a remote email host like Google (Gmail), Microsoft (Hotmail) or Yahoo (Yahoo Mail). The business opportunities opened up by hosting other people's email are many: contact with other services offered by the company, brand exposure and most importantly, mining your email for patterns that can be used to evaluate your interests – something of great value to the advertising industry (alongside certain Governments).

Remotely hosted email, resourced using an email program or using a web browser
------------------------------------------------------------------------------

Email sent using an email program like Outlook, Thunderbird, Mail.App aso. can also be used with a webmail service like Gmail or your company's email service. In either case, email may still be downloaded onto your computer but is retained on the email server (e.g. Gmail). Done this way, accessing email doesn't require the browser at all, but you are still using Gmail, Hotmail as a service. The difference between storing email on your computer with an email program and having it stored remotely on an email server (like Hotmail, Gmail or your University's service) on the Internet can appear confusing at first.
Email sent and received using an email program, not stored on the remote machine

Finally, email can also be sent to an email server but not stored there at all, merely volleyed onto its' destination as soon as the email reaches the email forwarding server. Google and Microsoft do not allow for this sort of setup. Rather this is typically something your university or company will provide for you. Bear in mind that this comes with the risk of the email administrator on that system still secretly copying the email as it reaches and leaves the server.

Generally, using webmail alongside downloading it using an email program is the best approach. This approach adds redundancy (local backups) alongside the option to delete all email from the remote server once downloaded. The latter option is ideal for content sensitive information where the possibility of account hijacking is high but risks total loss of email should the local machine go missing, without backups. Secondly, when using an email program, we have the option of using Email Encryption such as the popular GPG, something not easily set up and used with browser-only webmail services. In any case, disk encryption on the local machine is highly advisable (Appendix **Disk Encryption**).

Context considerations
----------------------

You may be a server administrator yourself and run your own email service. Or your email could be stored on your company or bosses' server. Finally you may be using a service provided by a corporation, like Google (Gmail) or Microsoft (Hotmail). Each comes with its own interesting mix of considerations that relates precisely to the basic fact that unless the email itself is encrypted, the administrator of the email server can still secretly copy the email the moment it reaches the server. It doesn't matter that you may be using *TLS/SSL* (Appendix **SSL**) to login and check your email as this only protects the connection between your local machine and the server.

As always, if you know the risks and feel concerned it is wise to listen to them - don't send sensitive email using a service you don't trust.
Employer/Organisation

Your employer or an organisation that you are involved with is in a very good position to take advantage of your trust and read the emails of your business email account that is stored on their email server, perhaps in an effort to learn about you, your motivations, agendas and interests. Such cases of employer->employee spying are so typical they do not bear mention. Your only measure against it is to use an email encryption solution like GPG (Appendix GPG).

Self-administered email server
------------------------------

Generally speaking this is the ideal hosting configuration, but requires a higher level of technical skill. Here, in general, the risks to privacy are not only in protecting your own email against attempts at exploit (poor passwords, no SSL) but in that you have a responsibility, and perhaps a temptation, to read the emails of those you provide a service for.

'Free' email services
---------------------

As mentioned above the risks of storing and sending your email using a service provided by a corporation are rather high if respect of your civil right to privacy is valued. The companies hosting your love letters, random expressions and diaries are always at risk of yielding to pressures from political, economic and law enforcement interests of the country to which they are legally subject. A Malaysian Gmail user, for instance, risks exposing her interests and intents to a government she did not elect, not to mention business partners of Google interested in expanding their market reach.

Non-profit
----------

Several non-profit web hosts offer free email accounts to organisations that are themselves non-profit or philanthropic. Some of them even offer wikis, mailing lists, chats and social networks. A consideration for organisations working in a political field may be differences of interests between the state in which the email is hosted and the political interests of the organisation using that service. Such risks would ideally be reflected in the End User License Agreement.

Notes on email forwarding
-------------------------

Email forwarding services provide the great convenience of 'linking' one email account to another as the user sees fit. This of course is most commonly used when an account holder is on holiday and would like email forwarded from their work account to another used during travel or otherwise inaccessible outside the workplace. The risk with any external email forwarding service is the same as with remotely hosted emails through Gmail for instance: it can be copied and stored. Here email encryption using a system such as *GPG* (Appendix **GPG**) will ensure that if it is copied at least it cannot be read.
