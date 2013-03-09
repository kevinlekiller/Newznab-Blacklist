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

In this folder there are 2 folders, Put in misc/testing and Put in www/lib.

You put the files in those appropriate folders of your newznab installation.

Update_parsing_mod.php will try to fix release names from the "other" categories.

Remove_misc_releases.php is used to remove some releases which update_parsing_mod.php can not fix. (you can run this after you run update_parsing_mod if you want).

Open the files in a text editor and read the options to see how to use them. By default update_parsing will only do 24 hours, I recommend turning this to false for the first run, then switching it back to true.

You must be running php 5.4+ to use update_parsing_mod.php.

---------------------------------------------------------------------------------------------------------------------

Thanks to thezoggy, sy and nivong for help / additions.

---------------------------------------------------------------------------------------------------------------------

Donation link, if you want, thanks!

https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=kevspamail%40gmail%2ecom&lc=CA&item_name=kevin123%20software&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted
