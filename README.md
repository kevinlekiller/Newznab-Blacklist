Newznab-Blacklist
=================

Blacklist for Newznab.

All blacklists are disabled by default, enable them in admin - view black list, click the edit button to the right of the blacklist.
Sort them by clicking on ID 2 times.

(Change user= for your mysql user in the following commands)

Backup your your blacklist: from a command line: mysqldump -l --user=root -p newznab binaryblacklist > binaryblacklist.sql
 
To import the blacklist, from a command where the blacklist is, type: mysql --user=root -p newznab < binaryblacklist.sql to import.
You can also use phpmyadmin to import it.

---------------------------------------------------------------------------------------------------------------------

Thanks to nivong for cleaning up the blacklist!

---------------------------------------------------------------------------------------------------------------------

Donation link, if you want, thanks!

https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=kevspamail%40gmail%2ecom&lc=CA&item_name=kevin123%20software&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted
