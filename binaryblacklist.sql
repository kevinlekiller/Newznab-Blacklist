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
(1, 'alt.binaries.boneless','usenet-4all|u4all|usenet4all', 1,2,0,'only allow u4all posts in boneless'),
(100000, 'alt.binaries.*','danish|deutsch|dutch|dksubs|flemish|french|hebrew|german|ita-eng|korsub|norwegian|serbian|spanish|spanisch|swedish|swesub|turkish|nl\\.?sub|\\.ita\\.|\\.japanese\\.', 1,1,0,'Blocks non-english language releases.'),
(100001, 'alt.binaries.*','Danish|Deutsch|Dutch|DKsubs|Flemish|French|Hebrew|German|KorSub|Norwegian|Serbian|Spanish|Spanisch|Swedish|SweSUB|Turkish|\\.Japanese\\.', 1,1,0,'Blocks non-english language releases.'),
(100002, 'alt.binaries.*','DANiSH|DEUTSCH|DUTCH|DKSUBS|FLEMISH|FRENCH|HEBREW|GERMAN|KORSUB|NORWEGIAN|SERBIAN|SPANISH|SPANiSH|SWEDISH|SWEDiSH|SWESUB|TURKSIH|\\.GER\\|\\.JAPENESE\\.', 1,1,0,'Blocks non-english language releases.'),
(100003, 'alt.binaries.*', '[-.](DE|FR|ITA|NL)[-.]', 1, 1, 0, 'Block Foreign Abbreviations'),
(100004, 'alt.binaries.*', 'CPP-Gebruiker|L.Joe@no-mans-land.com|Firestorm2012|#cripples', 2, 1, 0, 'Blocks foreign posters.'),
(100005, 'alt.binaries.*', 'DUBBED|dubbed', 1, 1, 0, 'Blocks dubbed releases.'),
(100010, 'alt.binaries.*', 'DEFA|Knochen|Giro|iRLS\\\\HYBRiS|Snoballkrigen!ATKGalleria|RealCo|MP4SUX|CytSuNee|NZBRoyalty', 1, 1, 0, 'Blocking various.'),
(100011, 'alt.binaries.*', 'CowboyUp26|gr4ndstre4m|CowboyUp2012|trein', 1, 1, 0, 'Blocking various.'),
(100012, 'alt.binaries.*', 'TrollHD|damike99|iMPACT|AVIGUY', 1, 1, 0, 'Blocking various.'),
(100013, 'alt.binaries.*', 'NoTHing|9NoTHing|EveryFinG', 1, 1, 0, 'Blocking various.'),
(100014, 'alt.binaries.*','NovaRip', 1, 1, 0, 'Blocking various.'),
(100015, 'alt.binaries.*', '6UL85|XA7MY|36CLX|Y642D|5SC5F|674XL|D3YL1|HWP6B', 1, 1, 0, 'Blocking various.'),
(100020, 'alt.binaries.*', 'dvd|DVD|dvdrip|DVDRip|dvdr|DVDR|DVDr|dvd-r|dvd-rip|DVD-Rip|DVDRip', 1, 1, 0, 'Blocking DVDs'),
(100021, 'alt.binaries.*', 'xvid|XVID|Xvid|divx|DivX|DIVX|480p|320p', 1, 1, 0, 'Blocking xvid encodes.'),
(100025, 'alt.binaries.*', 'Nintendo|wii|WII|Wii|ps3|PS3|xbox|Xbox|XBOX|nds|PSP|NDS', 1, 1, 0, 'Blocking console.'),
(100026, 'alt.binaries.*', 'MacOSX', 1, 1, 0, 'Blocking pc.'),
(100027, 'alt.binaries.*', 'Keygen|KeyGen|KEYGEN|Cracked|Keymaker', 1, 1, 0, 'Blocking PC.'),
(100028, 'alt.binaries.*', 'AnDrOiD|ANDROiD|iPhone|iPod|iPad', 1, 1, 0, 'Blocking mobile.'),
(100030, 'alt.binaries.*', 'ANZAC|AFC|AFL|BCS|CONCACAF|EUFA|FIFA|GAA|IIHF|IPL|MLB|MLS|NASCAR|NBA|NCAA|NFL|NHL|NRL|NRB|Olympics|PBA|UAAP', 1, 1, 0, 'Blocking sports.'),
(100031, 'alt.binaries.*', 'Liga', 1, 1, 0, 'Blocking foreign sports.'),
(100035, 'alt.binaries.*', 'TheMaker|gilf|nomytnopyht|lordsofusenet|klaus|ihate|aart|my2cents|ISNOGOOD|Captain Jack|seizoen', 2, 1, 0, 'Blocking virus posters.'),
(100040, 'alt.binaries.*', 'Password|password', 1, 1, 0, 'Blocking passwords.'),
(100050, 'alt.binaries.*', 'AutoRarPar\\d', 1, 1, 0, 'Removes releases with AutoRarPar\\d in the name.'),
(100055, 'alt.binaries.*', '^[^.^ ]{10,20}$', 1, 1, 0, 'Hashed Releases.'),
(100056, 'alt.binaries.*', '^[a-z0-9]{20}', 1, 1, 0, 'Hashed releases.'),
(100057, 'alt.binaries.*','^[a-z0-9]{1,80}([0-9-]+$|$)', 1,1,0,'Hashed Releases.'),
(100058, 'alt.binaries.*', '[aeiouy]{4,80}', 1, 1, 0, 'Removes multiple vowels strung together.'),
(100065, 'alt.binaries.cores', 'xxx|XXX', 1, 1, 0, 'Removes XXX.'),
(100066, 'alt.binaries.ghosts', 'xxx|XXX', 1, 1, 0, 'removes xxx'),
(100067, 'alt.binaries.mom', 'xxx|XXX', 1, 1, 0, 'Removes XXX.'),
(100068, 'alt.binaries.hdtv', 'xxx|XXX', 1, 1, 0, 'Removes XXX.'),
(100069, 'alt.binaries.movies.divx', 'xxx|XXX', 1, 1, 0, 'Removes XXX.'),
(100070, 'alt.binaries.multimedia', 'xxx|XXX', 1, 1, 0, 'Removes XXX.'),
(100075, 'alt.binaries.multimedia', 'nosendemails@me.com|The Phantom|xslidian@hmlt|tim96|GeorgBaer|knt', 2, 1, 0, 'Blocking junk posters in multimedia.'),
(100076, 'alt.binaries.movies.xvid', 'theknife', 2, 1, 0, 'Blocking junk posters in xvid.');
