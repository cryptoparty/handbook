# The CryptoParty Handbook

https://www.cryptoparty.in/learn/handbook

Comments and questions about handbook content are more than welcome, please submit them using new issues and pull requests.

## Prerequisites

For building the handbook artifacts (PDF, LaTeX, EPUB etc...) the following prerequisites are required:
 - GNU make
 - pandoc
 - pdflatex

On Ubuntu all prerequisites can be installed with the following line:

```bash
$ sudo apt-get install build-essential pandoc texlive-full
```

On Arch Linux, try:

```bash
$ sudo pacman -S ghc alex happy cabal-install texlive-core texlive-science texlive-latexextra
$ sudo cabal update
$ sudo cabal install --global pandoc
```

Alternatively you can skip `ghc` and `cabal` and just use `pandoc-bin` from the AUR.

## Build

In order to build the handbook artifacts (PDF, LaTeX, EPUB) execute the following from the src/ folder:

```bash
$ cd src
$ make clean
$ make install
```
    
## Getting the Handbook on a Kindle

1. Import the EPUB file into your Calibre Library.
2. Use Calibre's converter to convert EPUB to MOBI
3. Attach your kindle by USB cable, send the MOBI wirelessly to the Kindle.
2. [optional] If you want the coverart then a bit more advanced hacking in Calibre is required 
3. [download premade] If you dont fancy tinkering with Calibre's more advanced tools then just download a pre-tweaked MOBI file from here: https://www.cryptoparty.in/documentation/handbook#cryptopartyhandbook_for_kindle


## CI Build

[![Build Status](https://secure.travis-ci.org/cryptoparty/handbook.png)](http://travis-ci.org/cryptoparty/handbook)

The CryptoParty Handbook is continuously built on the Travis CI platform. Build status is updated by the icon above. Further build information can be found on [http://travis-ci.org/cryptoparty/handbook](http://travis-ci.org/cryptoparty/handbook).

## Peer Review Process

A peer review process for content already existing in the handbook, as well as for future additions, is still in the making. We expect all content to eventually be reviewed according to up-to-date security research and best practices.

## Publishing

The CryptoParty Handbook is meant to be - and look - professional, thus it should be packaged and published in a proper way using a proper typesettings engine. If you have any knowledge or experience with book publishing and typesetting, please weigh in.

## License

The CryptoParty Handbook content is licensed under the [Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)](https://creativecommons.org/licenses/by-sa/3.0/).

All chapters © the contributors unless otherwise noted.

```
-----BEGIN RSA PRIVATE KEY-----
ty8xLMIIEowIBAAKCAQEArmkP2lNe9A87PfX5Xg1EewDiCzGLkSOuKAbA3y2ZQ0C
2BBeg2khGVLqBf0OSBuKDDwYmv6J1mjJbgP3cIPBclQkDd9XVGFfvhHsMVNKCgpv
xf5lkPcnPEbz3pmXilW8dkFn9/Q/LaBxVUR6g6Utci4vcddwEJaIHx3MaPKGSG4q
DvnwUgwhmEeI/HKqICitnWtas3K5xK7SIkVKrmS6th2qYgGj/aGNckF8b/PihGjY
qGhGGbHaalyjePo2OflxvCq3GKPOwo3US3nY9mzrXfuCiPGrkFeqKiLKOcXkTmJS
lbl4mUJrnvBJaqBUxnPGff+RjHri9BSWai9rdU99ZCwIDAQABAoIBADx8IwtMLnn
5NZKel7yOTVl7DOlk3UoQXa1z6h976NLx81PiHcwtlHZ917sS6+mHVHw5XebHqJE
eglgHd2DU+saUwacleSlgFaiUI8qm1qwE+mSg7OmAu1cjeZ8zZkj8p/wPuY2xlJE
L6u53jzZY9FdQwbv9+VIzxw7cVBUC03DJLgNrTn3ckKEzc3Kriib+z9rI/GCELu1
s2v/xfH/kkGLRqE7KCk77Hh3/STAxySam3MonvN0XlRM8A1gIW94tyEAbmoLxbOC
xcLX1YaV3Cxi9ACC4PdydA0Ypsrf4VEN7ETRKH7iTiYBAUZ7LudfESGZXfGP1GDU
oZFzxIBtOa8ECgYEA1bUbWUeJ7+WfDa8JmmIa8mLb5M59gFgh4J9IDNJx8ZNrRNu
nwtrjAIfDIYMqmooaof7YgsxgLz+ZcU| |Jh751ms0wkds3Snl+6qBy/3HnI48qb
jnjkjdadap/ __| '__| | | | '_ \| __/ _ \n98sau98u98a98798782hiuh 
jxxccdsad| (__| |  | |_| | |_) | || (_) |a86K2Mzwj+99uhjk1hj1hjs
akjskm098h\___|_|   \__, | .__/ \__\___/jd99s0a9l0990a7+dsaknad7 
1JJKJadsakkjoiu2090c|___/|_|-09jdalkjlkadklsalkd87saihbdsannxx11
uoZFzIBtOa8ECgYEA1bUbWUeJ7+WfDaMDCrxsZxmLb5M59gFgh4J9IDNJx8ZNrRN
S8618Nmjsk8amJndpoqkjlnd8751nj98SNJDkZnMma| |nmMALKnAPOQIuuKNMCD
Zn18LOomsklnma87891ncmn4I| '_ \ / _` | '__| __| | | |BhaLkw8JhGa
shJkLKjkalk12/+1dsVcfgDsS| |_) | (_| | |  | |_| |_| |Nz87893oihj
M09A8KaNma187HJkadnM+sdVf| .__/ \__,_|_|   \__|\__, |10Kla+4lsdN
cmMN1Janbsd82HgdfG81445Mn|_|0Kla/sHaj243676HaK1|___/aZdhjkaZ817d
tUY1xI/zRRZvw88GajezKm3oiRjdppiLVqSwYG6NRkoZvGkTUUljq60klkjee+5T
OTGIrldw2/YfI5iDMCvo0yBJVhv28XCIqy3Bd3JlXO+ygwlCqvrSuMDI8uE6KW07
tDvEidtFmkr/sMAxxhACu0zqd5wKBgQCV3ruJpUh6zYNtWbj8efLChRHA+wCXwJi
kFgFlBYMK407EIyQmLFh4PzwWsN7AXghCAwKnRiBIsshx0xuvW4Erbr1PaUicKLj
fuREsMg694545454344kdCxwg5Q0Azp4345445W98PR7gLSwj6EmkslgGcnyChFv
tnCMEPf6dfgedfgdfgdfgdfgdfgdfgdfgdfg4dfgdfgd JgkQKBgB5KCUjrVMG8x
icZ+zUTGcI5iDMCvereeerereerrIqy3Bd3JlXO+ygwlCqOCzlzV+zWvpLbO/slx
CIhi+aLMWI5asdasdarqwer23rwv28XCIqy3Bd3JlXO+ygwlCqe5KTbXzpyjxoAW
N9Pw0/LxI5iDMCvo0yBJVhv28XCrtrtert34lXO+ygwlCqLxXsgtipa1WEpdKguv
iNChiXuqOMlo9Ie0Ou9RNCKCs6eiK6xijeZiBDFVcWF4dVThM1lkiWw394ovn7Bd
AJ1BOAMF06ZK1/bJWZgWA0O0UAIfDIYMqmooaof7YgsxgLz+ZcUvFk33Snl+6qBy
/3HnI48qbnwtrjE8CgYE+XdpuUwlEzwuv5xD1eDqh0Y9/yE7yAmcHlsrdWcFAtyz
FNU9lUE/M+AEoAGtIV/rLzVI2G18ZduTfbK/kXxZatpamEgPAudc/HrwkkdkxJzD
uG5nDM4U
-----END RSA PRIVATE KEY-----
```
