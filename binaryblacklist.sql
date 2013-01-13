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
(1,'alt.binaries.boneless','usenet-4all|u4all|usenet4all', 1,2,0,'only allow u4all posts in boneless'),
(100000,'alt.binaries.*','french|german|danish|spanish|flemish|dutch|swedish|swesub|deutsch|nl\\.?sub|norwegian|\\.ita\\.',1,1,0,'Blocks non-english language releases.'),
(100001,'alt.binaries.*','Serbian|FRENCH|GERMAN|NORWEGIAN|Turkish|korsub|\\.japanese\\.|\\.GER\\.|ita-eng|FLEMISH', 1,1,0,'Blocks non-english language releases.'),
(100002, 'alt.binaries.*', '[-.](FR|DE|ITA)[-.]', 1, 1, 0, 'Block Foreign Abbreviations'),
(100003, 'alt.binaries.*', '(^|[.\\/ \\-]+)(sie|seit|ihn|ihm|haben|besitzen|sein|kriegen|nehmen|welche|jenes|von|auf|gegen|nach|das|sein|der|und|fuer|ersten|leicht|meinem|zum|aus|dem|blitzlicht|alle|grosse|zed|ich|sed|blitzen)([.\\/ \\-]+|$)', 1, 1, 0, 'Removes many german releases.'),
(100004, 'alt.binaries.*', 'CPP-Gebruiker|L.Joe@no-mans-land.com|Firestorm2012', 2, 1, 0, 'Blocks foreign posters.'),
(100010, 'alt.binaries.*', 'DEFA|Knochen|Giro|iRLS\\\\HYBRiS|Snoballkrigen!ATKGalleria|RealCo|[MP4SUX]|CytSuNee|NZBRoyalty', 1, 1, 0, 'Blocking various.'),
(100011, 'alt.binaries.*', 'CowboyUp26|gr4ndstre4m|CowboyUp2012|trein', 1, 1, 0, 'Blocking various.'),
(100012, 'alt.binaries.*', 'TrollHD|damike99|iMPACT|AVIGUY', 1, 1, 0, 'Blocking various.'),
(100013, 'alt.binaries.*', 'NoTHing|9NoTHing|EveryFinG', 1, 1, 0, 'Blocking various.'),
(100014,'alt.binaries.*','NovaRip', 1, 1, 0, 'Blocking various.'),
(100020, 'alt.binaries.*', 'dvd|dvdrip|dvdr|dvd-r|dvd-rip|DVDRip', 1, 1, 0, 'Blocking DVDs'),
(100021, 'alt.binaries.*', 'xvid|divx|480p|320p', 1, 1, 0, 'Blocking xvid encodes.'),
(100025, 'alt.binaries.*', 'wii|ps3|xbox|nds', 1, 1, 0, 'Blocking console.'),
(100026, 'alt.binaries.*', 'MacOSX', 1, 1, 0, 'Blocking pc.'),
(100027, 'alt.binaries.*', 'AnDrOiD', 1, 1, 0, 'Blocking mobile.'),
(100030, 'alt.binaries.*', 'Olympics|NASCAR|NHL|EUFA|NRL', 1, 1, 0, 'Blocking sports.'),
(100031, 'alt.binaries.*', 'Liga', 1, 1, 0, 'Blocking foreign sports.'),
(100035, 'alt.binaries.*', 'TheMaker|gilf|nomytnopyht|lordsofusenet|klaus|ihate|aart|my2cents|ISNOGOOD|Captain Jack|seizoen', 2, 1, 0, 'Blocking virus posters.'),
(100040, 'alt.binaries.*', 'Password', 1, 1, 0, 'Blocking passwords.'),
(100045, 'alt.binaries.*', 'Keygen', 1, 1, 0, 'Blocking keygens.'),
(100050, 'alt.binaries.*', 'AutoRarPar\\d', 1, 1, 0, 'Removes releases with AutoRarPar\\d in the name.'),
(100055, 'alt.binaries.*', '^[^.^ ]{10,20}$', 1, 1, 0, 'Hashed Releases.'),
(100056, 'alt.binaries.*', '^[a-z0-9]{20}', 1, 1, 0, 'Hashed releases.'),
(100057,'alt.binaries.*','^[a-z0-9]{1,80}([0-9-]+$|$)', 1,1,0,'Hashed Releases.'),
(100058, 'alt.binaries.*', '[aeiouy]{4,80}', 1, 1, 0, 'Removes multiple vowels strung together.'),
(100065, 'alt.binaries.cores', 'xxx', 1, 1, 0, 'Removes XXX.'),
(100066, 'alt.binaries.ghosts', 'xxx', 1, 1, 0, 'removes xxx'),
(100067, 'alt.binaries.mom', 'xxx', 1, 1, 0, 'Removes XXX.'),
(100075, 'alt.binaries.multimedia', 'nosendemails@me.com|The Phantom|xslidian@hmlt|tim96|GeorgBaer|knt', 2, 1, 0, 'Blocking junk posters in multimedia.'),
(100076, 'alt.binaries.movies.xvid', 'theknife', 2, 1, 0, 'Blocking junk posters in xvid.'),
(100077, 'alt.binaries.tv', '6UL85|XA7MY|36CLX|Y642D|5SC5F|674XL', 1, 1, 0, 'Blocks these posts in tv.');
