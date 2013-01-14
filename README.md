Newznab_blacklist
=================

What is blocked?
-------------------------
I block all german, turkish, danish, belgium, french, norwegian, korsub, ita, japanese, spanish.
All android, iPhone, console releases.
!! All non HD content!!


The list is only for HD movies, series and MP3.
You can use the list also for non HD and non console blocker, just make sure to disable them.




How to install this
-------------------------
BACKUP BACKUP BACKUP!
----------------------------------
Through CLI of linux: mysqldump -l -u username -p -h localhost DATA-BASE-NAME binaryblacklist > binaryblacklist.sql


Through CLI of linux: mysql -u username -p -h localhost DATA-BASE-NAME < binaryblacklist.sql

Or you can use PHPMYADMIN
* Open phpmyadmin
* Login
* Go to your database
* Hit import
* Done.


---------------------------------------------------------------------------------------------------------------------

Thanks to nivong for additions. His github can be found at: https://github.com/nivong/Newznab_blacklist

---------------------------------------------------------------------------------------------------------------------

Donation link, if you want, thanks!

https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=kevspamail%40gmail%2ecom&lc=CA&item_name=kevin123%20software&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted
