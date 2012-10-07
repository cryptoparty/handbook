What happens when you browse
============================

Browsing the web is communicating. You might not send as much text in terms of number of words, but it is always the browser which initiates and maintains the communication by requesting the bits and pieces which are woven into what is eventually displayed on your screen.

Browsers like Mozilla Firefox, Google Chrome, Opera, Safari & Internet Explorer all work in a similar manner. When we type a URL (e.g. "http://happybunnies.com") in the address bar, the browser requests the website (which is just a special kind of text) from a remote server and then transforms it into colored blocks, text and images to be displayed in the browser window. To see the text the way the browser sees it, one just has to click on the `View --> Page source` menu entry in the browser. What comes up is the same webpage but in HTML – a language mainly concerned with content, context and links to other resources (CSS and JavaScript) which govern the way these contents are displayed and behave.

When the browser tries to open a webpage – and assuming there are no proxies involved – the first thing it does is to check its own cache. If there is no past memories of such website, it tries to resolve the name into an address it can actually use. It is an internet program, so it needs an Internet Protocol address (IP address or just IP). To get this address it asks a DNS Server (kind of a telephone book for internet programs) which is installed in the router of your internet access by default. The IP address is a numerical label assigned to every device in the (global) network, like the address of a house in the postal system – and as the address of your home, you should be very careful to whom you hand out the IP address you are browsing from (by default this is: to everyone). Once the IP address has been received, the browser opens a TCP (just a communication protocol) connection to the destination host and starts sending packages to a port at this address, typically no. 80 (ports are like doors to the servers, there are many but usually only a few are open), unless another path is specified. These packages travel through a number of servers on the internet (up to a couple of dozens depending on were the target address is located). The server then looks for the requested page and, if found, delivers it using the HTTP protocol. (To prevent others from reading or altering the data, TLS/SSL can be used to below HTTP to secure the connection)

When the HTTP response arrives, the browser can close the TCP connection or reuse it for subsequent requests. The response can be one of many things, from some sort of redirection or a classic Internal Server Error (500). Provided the response proceeds as expected the browser will store the page in a cache for further use, decode it (uncompress it if compressed, rendered if video codec, etc) and display/play it according to instructions.

Now, the process can be illustrated in a little conversation between browser (B) and server (S):

B: "Hallo."

S: "Hey!"

B: "May I get that page with the happy bunnies, please?"

S: "Well, here you are."

B: "Oh, maybe you could also give me a big version of that picture of that bunny baby cuddling a teddy bear."

S: "Sure, why not."

[...]

B: "That's all for now. Thank you. Bye."

Note that there are lots of activities happening parallel to this TCP/IP exchange. Depending on how you have configured its options, your browser might be adding the page to browser history, saving cookies, checking for plugins, checking for RSS updates and communicating with a variety of servers, all while you're doing something else.

A topography of you: footprints
-------------------------------

Most important: you will leave footprints. Some of them will be left on your own computer – a collection of cache data, browsing history and naughty little files with elephantine memory called cookies. They are all very convenient; speed up your browser's performance, reduce your data download or remember your passwords and preferences from Social Networks. They also snitch on your browsing habits and compile a record of everywhere you go and everything you do there. This should bother you if you are using a public computer station at a library, work at a cybercafe, or share your apartment with a nosey partner!

Even if you configure your browser to not keep a history record, reject cookies and delete cached files (or allocate zero MB of space for the cache), you would still leave breadcrumbs all over the Internet. Your IP address is recorded by default everywhere, by everyone and the packets sent are monitored by an increasing number of entities - commercial, governmental or criminal, along with some creeps and potential stalkers.

Democratic governments everywhere are redesigning regulations to require Internet providers to keep a copy of everything so they can have later access to it. In the USA, section 215 of the American PATRIOT act *'prohibits an individual or organization from revealing that it has given records to the federal government, following an investigation'*. That means that the company you pay every month as a customer to provide you with Internet access can be ordered to turn over your browsing and email records without your knowledge.

Most of the time, though, surveillance is not a 1984 affair. Google collects your searches along with your browser identification (*user agent*), your IP and a whole bunch of data that can eventually lead to your doorstep, but the ultimate aim is usually not political repression but market research. Advertisers don't fuss about advertising space any more, they just want to know everything about you. They want to know your dietary and medication habits, how many children you have and where you take them on holidays; how you make your money, how much you earn and how you like to spend it. Even more: they want to know how you *feel* about stuff. They want to know if your friends respect those feelings enough so that you can convince them to change their consumption habits. This is not a conspiracy, but rather the nature of Information Age capitalism. To paraphrase a famous observation of the current situation, the best minds of our generation are thinking about how to make people click ads.4

Some people think ads can be ignored or that having advertisers cater for our specific needs is a win-win situation, because at least they are spammed with things they may actually want. Even if that was the case (it isn't): should we trust Google with such intimate details of our life? Even if we trust Google to 'do no evil', it can still be bought by someone we do not trust; benevolent Larry Page and Sergey Brin could be overruled by their own Board, or their data base be sequestered by a fascistic government. One of their 30,000 employees worldwide could cut loose and run with our data. Their servers can be hacked. And in the end, they are just interested in their customers, *the companies paying for advertising*. We are just the product being sold.

Moreover; in the Social Networks our browsing habits are generating a Permanent Record, a collection of data so vast that the information that Facebook keeps about a given user alone can fill 880 pages. Nobody will be surprised to learn that Facebook's purpose is not to make us happy – again: if you are not paying for it, you're not the customer, you're the product. But even if you don't care about their commercial goals, consider this: the platform has publicly admitted hackers break into hundreds of thousands of Facebook accounts every day.

For a taste of what lurks behind the curtains of the websites you visit, install a plugin/add-on called *Ghostery* to your browser. It's like an x-ray-machine which reveals all the surveillance technology which might be (and often is) embedded in a web page, normally invisible to the user. In the same line, *Do Not Track Plus* and *Trackerblock* will give you further control over online tracking, through cookie blocking, persistent opt-out cookies, etc. Our following chapter **Tracking** will equip you with expertise in such topics.

Even in between your computer and the router, your packages can easily be intercepted by anyone using the same wireless network in the casual environment of a cafe. It is a jungle out there, but still we choose passwords like  "password" and "123456", perform economic transactions and buy tickets on public wireless networks and click on links from unsolicited emails. It is not only our right to preserve our privacy but also our responsibility to defend that right against the intrusions of governments, corporations and anyone who attempts to dispossess us. If we do not exercise those rights today, we deserve whatever happens tomorrow.

 

 1. If you are a Unix user, you can use the tcpdump command in the bash and view real time dns traffic. It's loads of fun! (and disturbing) ^
 2. See list of TCP and UDP port numbers ([http://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers](http://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers))
 3. If this exchange is happening under an HTTPS connection, the process is much more complicated and also much safer, but you will find out more about that in a most fascinating chapter called Encryption. ^
 4. This Tech Bubble Is Different ([http://www.businessweek.com/magazine/content/11_17/b4225060960537.htm](http://www.businessweek.com/magazine/content/11_17/b4225060960537.htm)), Ashlee Vance (Businessweek magazine) ^
 