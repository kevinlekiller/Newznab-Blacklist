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
(100100, 'alt.binaries.*', '[ -.](espn|ultimate.?fighter|mlb|mls|mfc|mma|ncaa|nba|nbl|nfl|nhl|pga|tna|ufc|us.?open|wec|wcw|world.?series|wwe|wwf)[ -.].*((480|720|1080)(i|p)|(d|h|p|s)d?tv|divx|(dvd.?|sat|vhs)rip|(h|x).?264|vcd|xvi ?d)', 1, 1, 0, 'Blacklists american sports.'),
(100101, 'alt.binaries.*', '[ -.](anz|bundesliga|cfb|epl|fa.?cup|la.?liga|netball|nrl|rugby|serie.?a|supercup|super.?league|uefa|wimbledon)[ -.].*((480|720|1080)(i|p)|(d|h|p|s)d?tv|divx|(dvd.?|sat|vhs)rip|(h|x).?264|xvid)', 1, 1, 0, 'Blacklists european sports.'),
(100102, 'alt.binaries.*', '[ -.](afl|fifa|fina|gymanstics|hdnet.?fights|iihf|league(.?challenge|.?cup|.?soccer)|olympics?|playoffs|wba|world.?championships?|world cup)[ -.].*((480|720|1080)(i|p)|(d|h|p|s)d?tv|divx|(dvd.?|sat|vhs)rip|(h|x).?264|xvid)', 1, 1, 0, 'Blacklists various sports.'),
(100110, 'alt.binaries.*', '[ -.](bmx|motogp|sbk|superbike|tour.?de.?france|la.?vuelta|wsbk).*[ -.]((480|720|1080)(i|p)|(bi|motor)?cycle?(ing)?|(d|h|p|s)d?tv|divx|(dvd.?|sat|vhs)rip|(h|x).?264|rac(e|ing)|round|series|xvid)', 1, 1, 0, 'Blacklists bike racing.'),
(100111, 'alt.binaries.*', '[ -.](ama.?supercross|dtm|f1.?legends|fia|formula(.?one|.?1|.?honda|.?renault)|gp3||grand.?prix|indycar||nascar|rally(.?challenge|.?championship)|supercars?|wrc|wtcc).*[ -.]((480|720|1080)(i|p)|(d|h|p|s)d?tv|divx|(dvd.?|sat|vhs)rip|(h|x).?264|rac(e|ing)|round|series|xvid)', 1, 1, 0, 'Blacklists car racing.'),
(100112, 'alt.binaries.*', '[ -.](horse.?racing|kentucky.?derby).*[ -.]((480|720|1080)(i|p)|(d|h|p|s)d?tv|divx|(dvd.?|sat|vhs)rip|(h|x).?264|rac(e|ing)|xvid)', 1, 1, 0, 'Blacklists various racing.');
