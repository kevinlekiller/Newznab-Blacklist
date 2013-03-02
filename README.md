Newznab-Blacklist
=================

02 MARCH 2013: Added update_parsing_mod.php (requires php 5.4+) and remove_misc_releases.php
---------------------------------------------------------------------------------------------------------------------

Blacklist for Newznab. By https://github.com/thezoggy and kevin123

UPDATE: 13 FEB 2013 : Old is the old blacklist, Testing will be a blacklist that will take more time to make but will have less false positives.

You can use the blacklists.txt file to manually add blacklists into newznab, or use the SQL file to import them all in 1 go.

All blacklists are disabled by default, enable them in admin - view black list, click the edit button to the right of the blacklist, click enable and save.

(Change root in user=root for your own mysql user in the following commands)

Backup your blacklist: from a command line: mysqldump -l --user=root -p newznab binaryblacklist > binaryblacklist.sql
 
To import the blacklist, from a command where the blacklist is, type: mysql --user=root -p newznab < binaryblacklist.sql to import.

You can also use phpmyadmin to backup/import.

Sy recommends not enabling the hashed ones.

---------------------------------------------------------------------------------------------------------------------

Thanks to thezoggy, sy and nivong for help / additions.

---------------------------------------------------------------------------------------------------------------------

Donation link, if you want, thanks!

https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=kevspamail%40gmail%2ecom&lc=CA&item_name=kevin123%20software&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted
