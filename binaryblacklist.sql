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
(1, 'alt.binaries.boneless', 'usenet-4all|u4all|usenet4all', 1,2,0, 'only allow u4all posts in boneless'),
(100000, 'alt.binaries.*', '[-.](danish|deutsch|dutch|dksubs|flemish|french|hebrew|german|ita-eng|japenese|japanese|korsub|norwegian|serbian|spanish|spanisch|swedish|swesub|turkish)[-.]', 1,1,0, 'Blocks non-english language releases.'),
(100001, 'alt.binaries.*', '\\.ger\\|nl\\.?sub|\\.ita\\.|\\.japanese\\.', 1,1,0, 'Blocks non-english language releases.'),
(100002, 'alt.binaries.*', '[-.](bl|cz|es|fr|ger|ita|kor|nl|pl)[-.]', 1, 1, 0, 'Block Foreign Abbreviations'),
(100003, 'alt.binaries.*', 'dubbed', 1, 1, 0, 'Blocks dubbed releases.'),
(100004, 'alt.binaries.*', 'cpp-gebruiker|l.joe@no-mans-land.com|firestorm2012|#cripples', 2, 1, 0, 'Blocks foreign posters.'),
(100010, 'alt.binaries.*', 'defa|nzbroyalty', 1, 1, 0, 'Blocking various.'),
(100011, 'alt.binaries.*', 'cowboyup26|gr4ndstre4m|cowboyup2012|trein', 1, 1, 0, 'Blocking various.'),
(100012, 'alt.binaries.*', 'trollhd|damike99|impact|aviguy', 1, 1, 0, 'Blocking various.'),
(100013, 'alt.binaries.*', 'nothing|9nothing', 1, 1, 0, 'Blocking various.'),
(100014, 'alt.binaries.*', 'novarip', 1, 1, 0, 'Blocking various.'),
(100015, 'alt.binaries.*', '6ul85|xa7my|36clx|y642d|5sc5f|674xl|d3yl1|hwp6b', 1, 1, 0, 'Blocking various.'),
(100016, 'alt.binaries.*', 'hdnectar|nzbcave', 1, 1, 0, 'Blocks hdnectar.com 1:1 bluray releases.'),
(100017, 'alt.binaries.*', 'cytsunee|mp4sux|\\[everyfing\\]', 1, 1, 0, 'Blocks p2p posters.'),
(100020, 'alt.binaries.*', 'dvd|dvdrip|dvdr|dvd-r|dvd-rip', 1, 1, 0, 'Blocking DVDs'),
(100021, 'alt.binaries.*', 'xvid|divx|480p|320p', 1, 1, 0, 'Blocking xvid encodes.'),
(100025, 'alt.binaries.*', 'nintendo|wii|ps3|xbox|nds|psp', 1, 1, 0, 'Blocking console.'),
(100026, 'alt.binaries.*', 'macosx', 1, 1, 0, 'Blocking pc.'),
(100027, 'alt.binaries.*', 'keygen|cracked|keymaker', 1, 1, 0, 'Blocking PC.'),
(100028, 'alt.binaries.*', 'android|iphone|ipod|ipad', 1, 1, 0, 'Blocking mobile.'),
(100030, 'alt.binaries.*', 'anzac|afc|afl|bcs|concacaf|eufa|fida|gaa|iihf|ipl|mlb|mls|nascar|nba|ncaa|nfl|nhl|nrl|nrb|olympics|pba|uaap', 1, 1, 0, 'Blocking sports.'),
(100031, 'alt.binaries.*', 'liga', 1, 1, 0, 'Blocking foreign sports.'),
(100035, 'alt.binaries.*', 'themaker|gilf|nomytnopyht|lordsofusenet|klaus|ihate|aart|my2cents|isnogood|captain jack|seizoen', 2, 1, 0, 'Blocking virus posters.'),
(100040, 'alt.binaries.*', '\\[password\\]', 1, 1, 0, 'Blocking passwords.'),
(100050, 'alt.binaries.*', 'autorarpar\\d', 1, 1, 0, 'Removes releases with AutoRarPar\\d in the name.'),
(100055, 'alt.binaries.*', '^[^.^ ]{10,20}$', 1, 1, 0, 'Hashed Releases.'),
(100056, 'alt.binaries.*', '^[a-z0-9]{20}', 1, 1, 0, 'Hashed releases.'),
(100057, 'alt.binaries.*', '^[a-z0-9]{1,80}([0-9-]+$|$)', 1,1,0, 'Hashed Releases.'),
(100058, 'alt.binaries.*', '[aeiouy]{4,80}', 1, 1, 0, 'Removes multiple vowels strung together.'),
(100065, 'alt.binaries.*', 'imageset', 1, 1, 0, 'Removes XXX Imagesets.'),
(100066, 'alt.binaries.*', '\\.+xxx\\.+', 1, 1, 0, 'Removes XXX scene releases.'),
(100067, 'alt.binaries.*', 'xxx', 1, 1, 0, 'Removes XXX non scene releases (use with caution, can remove wanted releases).'),
(100075, 'alt.binaries.multimedia', 'nosendemails@me.com|the phantom|xslidian@hmlt|tim96|georgbaer|knt', 2, 1, 0, 'Blocking junk posters in multimedia.'),
(100076, 'alt.binaries.movies.xvid', 'theknife', 2, 1, 0, 'Blocking junk posters in xvid.');
