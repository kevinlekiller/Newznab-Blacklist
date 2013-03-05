Newznab-Blacklist
=================
Scripts to clean up your Newznab installation.

----------
BLACKLIST:
----------

There are 2 blacklists, new (recommended), old (the old blacklists, will not be updated).

You can use the blacklists.txt file to manually add blacklists into newznab, or use the SQL file to import them all in 1 go.

All blacklists are disabled by default, enable them in admin - view black list, click the edit button to the right of the blacklist, click enable and save.

IMPORTING THE BLACKLIST:

(Change root in user=root for your own mysql user in the following commands)

Backup your blacklist: from a command line: mysqldump -l --user=root -p newznab binaryblacklist > binaryblacklist.sql
 
To import the blacklist, from a command where the blacklist is, type: mysql --user=root -p newznab < binaryblacklist.sql to import.

You can also use phpmyadmin to backup/import.

---------------
UPDATE PARSING:
---------------

In this folder there are 2 scripts, update_parsing_mod.php and remove_misc_releases.php.

update_parsing_mod.php will try to fix release names from the "other" categories, remove_misc_releases.php is used to remove some releases which update_parsing_mod.php can not fix.

Open the files in a text editor and read the options to see how to use them.

These scripts go in newznab/misc/testing

You must be running php 5.4+ to use update_parsing_mod.php

---------------------------------------------------------------------------------------------------------------------

Thanks to thezoggy, sy and nivong for help / additions.

---------------------------------------------------------------------------------------------------------------------

Donation link, if you want, thanks!

https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=kevspamail%40gmail%2ecom&lc=CA&item_name=kevin123%20software&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted
