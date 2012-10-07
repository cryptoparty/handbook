Accounts and Security
=====================

When you browse, you may be logged into various services, sometimes at the same time. It may be a company website, your email or a social networking site. Our accounts are important to us because highly sensitive information about us and others is stored on machines elsewhere on the Internet.

Keeping your accounts secure requires more than just a strong password (see section **Passwords**) and a secure communication link with the server via TLS/SSL (see chapter **Secure Connection**). Unless specified otherwise, most browsers will store your login data in tiny files called cookies, reducing the need for you re-type your password when you reconnect to those sites. This means that someone with access to your computer or phone may be able to access your accounts without having to steal your password or do sophisticated snooping.

As smart phones have become more popular there has been a dramatic rise in account hijacking with stolen phones. Laptops theft presents a similar risk. If you do choose to have the browser save your passwords then you have a few options to protect yourself:

 * Use a screen lock. If you have a phone and prefer an unlock pattern system get in the habit of wiping the screen so an attacker can not guess the pattern from finger smears. On a Laptop, you should set your screensaver to require a password as well as a password on start-up.
 * Encrypt your hard disk. TrueCrypt is an open and secure disk encryption system for Windows 7/Vista/XP, Mac OS X and Linux. OSX and most Linux distributions provide the option for disk encryption on install.
 * Android Developers: do not enable USB debugging on your phone by default. This allows an attacker using the Android *adb shell* on a computer to access your phone's hard disk without unlocking the phone.

Can malicious web sites take over my accounts?
----------------------------------------------

Those special cookies that contain your login data are a primary point of vulnerability. One particularly popular technique for stealing login data is called click-jacking, where the user is tricked into clicking on a seemingly innocuous link, executing a script that takes advantage of the fact you are logged in. The login data can then be stolen, giving the remote attacker access to your account. While this is a very complicated technique, it has proven effective on several occasions. Both Twitter and Facebook have seen cases of login sessions being stolen using these techniques.

It's important to develop a habit for thinking before you click on links to sites while logged into your accounts. One technique is to use another browser entirely that is not logged into your accounts as a tool for testing the safety of a link. Always confirm the address (URL) in the link to make sure it is spelled correctly. It may be a site with a name very similar to one you already trust. Note that links using URL shorteners (like http://is.gd and http://bit.ly) present a risk as you cannot see the actual link you are requesting data from.

If using Firefox on your device, use the add-on [NoScript](http://noscript.net) as it mitigates many of the *Cross Site Scripting* techniques that allow for your cookie to be hijacked but it will disable many fancy features on some web sites.
