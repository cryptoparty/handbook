Secure Calls
============

Phone calls made over the normal telecommunications system have some forms of protection from third party interception, i.e. GSM mobile phones calls are encrypted. GSM calls are not encrypted end-to-end however and telephone providers are increasingly forced to give governments and law enforement organisations access to your calls. In addition to this the encryption used in GSM has been cracked and now anyone with enough interest and capital can buy the equipment to intercept calls. A GSM Interceptor ([http://en.intercept.ws/catalog/2087.html](http://en.intercept.ws/catalog/2087.html) is an off the shelf device to record mobile phone conversations when in the vicinity of the call. Centralised or proprietary systems like Skype also encrypt calls but have built in backdoors for secret services and governments and are at the behest of their owner (in Skype's case Microsoft). Additionally, there are a whole classification of devices called IMSI catchers which can further gather information about mobile phones, including the content of your communication.

However, there are a variety of tools you can use to secure your phone using end-to-end encryption. 

iOS - Installing Signal
---------------------------

From the makers of TextSecure is a free and open source tool named Signal. [https://itunes.apple.com/us/app/signal-private-messenger/id874139669?mt=8](https://itunes.apple.com/us/app/signal-private-messenger/id874139669?mt=8) Signal uses similar same encryption methods as SilentCircle but provides their service with free and using open source tools. Additionally, the GUI is extremely easy to use. Signal will transparently detect if you are calling a fellow Signal user and ask if you wish to make a "secure call" (with Signal) or "insecure call" (without end-to-end encryption). 


Android - Installing RedPhone
---------------------------

Also from the makers of Signal, there is a free and open source tool named Redphone. [https://play.google.com/store/apps/details?id=org.thoughtcrime.redphone&hl=en](https://play.google.com/store/apps/details?id=org.thoughtcrime.redphone&hl=en) Again, RedPhone uses the similar encryption methods as SilentCircle but provides their service with free and using open source tools. Again, the GUI will transparently detect if you are calling a fellow Signal or RedPhone user and ask if you wish to make a "secure call" (with RedPhone) or "insecure call" (without end-to-end encryption). Unfortunately, RedPhone requires the Google Play framework so it will not work on phones without it (stock Cyanogenmod or similar ROMs).
