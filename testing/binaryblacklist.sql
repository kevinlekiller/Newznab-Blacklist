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
(100001, 'alt.binaries.*', '(chinese|danish|deutsch|dutch|flemish|finnish|french|german|hebrew|icelandic|italian|nordic|norwegian|japenese|japanese|serbian|spanish|spanisch|swedish|turkish)[\\)]?( -)?[ -.]((19|20)\\d\\d|(480|720|1080)(i|p)|ac3|(bd|dvd.?|sat|vhs)rip|bluray|board|cracked|custom|\\(uncut\\)|"|(d|h|p|s)d?tv|dirfix|divx|dl|dub|dts|(h|x).?2?64|incl|ml|nzb|pal|par2|proper|read.?nfo|real|repack|sub|webrip|winall|ws|xvid|xxx)', 1, 1, 0, 'Blacklists non-english releases.'),
(100002, 'alt.binaries.*', '[ -.](chinese.subbed|dksubs|fansubs?|hebdub|hebsub|korsub|norsub|nl( -.)?sub(ed|bed|s)?|nlvlaams|plsub|slosinh|swesub|truefrench|vostfr)[-. ]', 1, 1, 0, 'Blacklists non-english subtitled releases.');
