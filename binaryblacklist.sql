DROP TABLE IF EXISTS `binaryblacklist`;
CREATE TABLE IF NOT EXISTS `binaryblacklist` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regex` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `msgcol` int(11) unsigned NOT NULL DEFAULT '1',
  `optype` int(11) unsigned NOT NULL DEFAULT '1',
  `status` int(11) unsigned NOT NULL DEFAULT '1',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1000041 ;

--
-- Dumping data for table `binaryblacklist`
--

INSERT INTO `binaryblacklist` (`ID`, `groupname`, `regex`, `msgcol`, `optype`, `status`, `description`) VALUES
(100009, 'alt.binaries.*', 'dvd|dvdrip|dvdr|dvd-r|dvd-rip|DVDRip|Password', 1, 1, 0, 'dvd troep'),
(100000, 'alt.binaries.*', 'xvid|divx|480p|320p', 1, 1, 0, 'Blocking xvid encodes.'),
(100004, 'alt.binaries.*', 'nomytnopyht|lordsofusenet|klaus|ihate|aart|my2cents|ISNOGOOD|Captain Jack|seizoen', 2, 1, 0, 'Virus Posters'),
(100002, 'alt.binaries.*', 'TrollHD|Olympics|Serbian|damike99|iMPACT|AVIGUY', 1, 1, 0, ''),
(100003, 'alt.binaries.*', 'CowboyUp26|gr4ndstre4m|CowboyUp2012|trein', 1, 1, 0, ''),
(1000040, 'alt.binaries.*', '[-.](FR|DE|ITA)[-.]', 1, 1, 1, 'Block Foreign Abbreviations'),
(100008, 'alt.binaries.*', 'german|danish|flemish|swedish|swesub|deutsch|DEFA|Knochen|korsub|GERMAN|Keygen|Giro|norwegian|\\.ita\\.|\\.japanese\\.|\\.GER\\.|ita-eng|FLEMISH|iRLS\\\\HYBRiS|FR|NORWEGIAN|Liga|EUFA|Footy|NRL|Snoballkrigen!ATKGalleria|RealCo|[MP4SUX]|Turkish|CytSuNee|NZBRoyalty', 1, 1, 0, ''),
(100012, 'alt.binaries.*', 'wii|ps3|xbox', 1, 1, 1, 'Console'),
(1, 'alt.binaries.boneless', 'usenet-4all|u4all|usenet4all', 1, 2, 0, 'only allow u4all posts in boneless'),
(100014, 'alt.binaries.cores', 'xxx', 3, 1, 0, 'Removes XXX.'),
(100016, 'alt.binaries.ghosts', 'xxx', 3, 1, 0, 'removes xxx'),
(100019, 'alt.binaries.mom', 'xxx', 1, 1, 0, 'Removes XXX.'),
(100020, 'alt.binaries.multimedia', 'nosendemails@me.com|The Phantom|xslidian@hmlt|tim96|GeorgBaer|knt', 2, 1, 0, 'Deletes crap'),
(100021, 'alt.binaries.movies.xvid', 'theknife', 2, 1, 0, NULL),
(100022, 'alt.binaries.*', '^[^.^ ]{10,20}$', 1, 1, 0, 'Filters out all hashes between 10 and 20 characters, that haven''t got a space, period or caret in them, a negated character class that starts with a ^, doesn''t have a ^ before every character.'),
(100023, 'alt.binaries.tv', '6UL85|XA7MY|36CLX|Y642D', 1, 1, 0, 'Removes crap.'),
(100024, 'alt.binaries.*', 'TheMaker|gilf|lordsofusenet|klaus|ihate|aart|my2cents|ISNOGOOD|Captain Jack', 2, 1, 0, 'VIRUS POSTERS'),
(100025, 'alt.binaries.*', '^[a-z0-9]{20}', 1, 1, 0, 'Removes crap.'),
(100026, 'alt.binaries.hdtv.x264', 'zed|ich', 2, 1, 0, 'Removes crap.'),
(100036, 'alt.binaries.*', '(^|[.\\/ \\-]+)(sie|seit|ihn|ihm|haben|besitzen|sein|kriegen|nehmen|welche|jenes|von|auf|gegen|nach|das|sein|der|und|fuer|ersten|leicht|meinem|zum|aus|dem|blitzlicht|alle|grosse|zed|ich|sed|blitzen)([.\\/ \\-]+|$)', 1, 1, 0, 'Removes many german releases.'),
(100037, 'alt.binaries.*', '[aeiouy]{4,80}', 1, 1, 0, 'Removes multiple vowels strung together. See: http://blog.phile.biz/post/39106364519/useful-blacklist-rules'),
(100040, 'alt.binaries.*', 'AutoRarPar\\d', 1, 1, 0, 'Removes releases with AutoRarPar\\d in the name.'),
(100043, 'alt.binaries.*', 'CPP-Gebruiker', 2, 1, 0, 'foreign'),
(100044, 'alt.binaries.*', 'NoTHing|9NoTHing|EveryFinG', 1, 1, 0, '');
(100045, 'alt.binaries.*', 'L.Joe@no-mans-land.com', 2, 1, 0, 'foreign'),
