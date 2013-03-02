<?php

//This script is a modification of deletereleases.php , it looks for releases in other->misc section and deletes them.
//First you should run update_parsing.php (on the whole DB, not just 24 hours) to try and fix some releases, this will remove many posts that update_parsing can not fix.
//For this script to work, remove the 2 slashes (//) on the $sql you whish to run.

define('FS_ROOT', realpath(dirname(__FILE__)));
require_once(FS_ROOT."/../../www/config.php");
require_once(FS_ROOT."/../../www/lib/framework/db.php");
require_once(FS_ROOT."/../../www/lib/releases.php");

$releases = new Releases();
$db = new Db;

//Delete releases from known poor posters where post processing has not gotten any extra information.
$sql = "select ID from releases where (fromname like '???? (????)' or fromname like 'merlin@nowere.com (Merlin)' or fromname like 'serientown <serientown@town.ag>' or fromname like 'Yenc@power-post.org (Yenc-PP-A&A-FeNix2)' or fromname like 'PhilW@ix.netcom.com (PhilW)' or fromname like 'DeineMudda <Deine@Mudda.com>' or fromname like 'Thor <Thor@no-mans-land.com>' or fromname like 'dragonladyr@hotmail.nl (DragonLady)' or fromname like 'merlin#nowere.com (merlin)' or fromname like 'CPP-gebruiker@domein.nl (triple)' or fromname like 'Merlin@gmail.com (Merlin)' or fromname like 'no.name@no.name.com (no.name)' or fromname like 'Dropperr@Not.nl (CPP-Gebruiker)' or fromname like 'HLVN (HLVN)' or fromname like 'alfiy@alfiy.com (alfiy)' or fromname like 'yEncBin@Poster.com (Bullus)' or fromname like 'nighbomberReMoVe@hotmail.com (LaughingMan)' or fromname like 'spotnet@Poster.com (erwin0001)' or fromname like 'serientown <serientown@town.ag>' or fromname like 'CPP-gebruiker@domein.nl (mustafa333)' or fromname like 'theknife@dutchmaffiacrew.com (theknife)' or fromname like 'VuonYeu (VuonYeu)' or fromname like 'CTLL (CTLL)' or fromname like 'Fake@address.com (Yenc-PP-GB-12b4)' or fromname like 'norway@vast.eu (Jefmen)' or fromname like 'JBinUp.com <JBinUp@JBinUp.local>' or fromname like '23110141521 (AutoPost 1.1 Final)' or fromname like '5646^%^4444 <444@444.44>' or fromname like 'Amateure <cindy@md-hobbys.com>' or fromname like 'beavis (beavis)' or fromname like 'Biky1959@59biky.nl (Biky)' or fromname like 'Bob <bob@home.com>' or fromname like 'bourne@has.no.mail.com (lecter)' or fromname like 'buffone <lol@saba.ch>' or fromname like 'CCP <CCP_Gebruiker@fuckbrein>' or fromname like 'Cobus <Cobus@cobus.com>' or fromname like 'CowboyUp26 Serien <CowboyUp26@no-mans-land.com>' or fromname like 'CPP-gebruiker@domein.nl (Aloha)' or fromname like 'CPP-gebruiker@domein.nl (AVH2008)' or fromname like 'CPP-user@domain.com (CPP-User)' or fromname like 'CPP-gebruiker@domein.nl (Dready Niek)' or fromname like 'CPP-user@domain.com (Knoc-One)' or fromname like 'CPP-gebruiker@domein.nl (mafkees)' or fromname like 'CPP-gebruiker@domein.nl (maric)' or fromname like 'CPP-gebruiker@domein.nl (mixmaster)' or fromname like 'CPP-gebruiker@domein.nl (molly)' or fromname like 'CPP-gebruiker@domein.nl (WickedCreations)' or fromname like 'd@mn.dmca (DD)' or fromname like 'CyberStorm <Soyez.p@tient.fr>' or fromname like 'Danilo@power-post.org (Danilo)' or fromname like 'dont@mail.me (bambam)' or fromname like 'DTC TEAM <DTCTEAM@JBinUp.local>' or fromname like 'EasyUsenet@Uploader.com (Rudaphos)' or fromname like 'fantasticfour@baxterbuilding.com (BenGrimm)' or fromname like 'Funboy@domein.nl (Funboy)' or fromname like 'GNU <GNUsenet@lavabit.com>' or fromname like 'hate@love.net (schaefchen)' or fromname like 'insane@yourbrain.ciom (ghostbrain)' or fromname like 'keeskruik@ziggo.nl (KeesKruik)' or fromname like 'keepitup <upit@noob.com>' or fromname like 'ladym@nZbSa.com (pinky)' or fromname like 'Matrix <Matrix@JBinUp.local>' or fromname like 'Meeee <Me@me.com>' or fromname like 'MetalDept <Metal@Metal>' or fromname like 'moviemeister2013 <moviemeister2013@dontcare.com>' or fromname like 'neesie@domein.nl (Neesie)' or fromname like 'Newsconnection.co.uk <News@Newsconnection.local>' or fromname like 'noreply@emit.co.ak (<hufsa>)' or fromname like 'nosendemails@me.com.bk (radombk)' or fromname like 'NPCXD (NPCXD)' or fromname like 'oude-zooi@free.nl (midland)' or fromname like 'ollie38 (ollie38)' or fromname like 'Profess0r <town@town.ag>' or fromname like 'retort5@funmail.com (Retort5)' or fromname like 'r@yahoo.com.au (Snail Malone)' or fromname like 'SoMore (MSD)' or fromname like 'Stiekemerd@jeraadthet.com (Tikus)' or fromname like 'suck@my.dick.eu (jimmy)' or fromname like 't54654tre <rette@fdf.ccx>' or fromname like 'The Phantom <yeahright@echtniet.nl>' or fromname like 'theknife@NlXviD.nl (theknife)' or fromname like 'TLHTT (TLHTT)' or fromname like 'Upperteam der Devils <upload@usenet-devils.org>' or fromname like 'upload@usenext.com (Round24)' or fromname like 'welke.email@gmail.com (Boompje)' or fromname like 'xslidian@ddshome.cn (xslidian)' or fromname like 'xslidian@jlpzj.net (xslidian)' or fromname like 'yEncBin@Poster.com (Firestorm2012)' or fromname like 'yEncBin@Poster.com (NWork)' or fromname like 'yEncBin@Poster.com (H' or fromname like 'yEncBin@Poster.com (master)' or fromname like 'yEncBin@Poster.com (jumpy)' or fromname like 'yEncBin@Poster.com (rhino)' or fromname like 'yEncBin@Poster.com (bikertyke)' or fromname like 'Yenc@power-post.org (michi 5)' or fromname like 'Yenc@power-post.org (4uFun)' or fromname like 'Yenc@power-post.org (pater damiaan molokai)') and anidbid is NULL and bookinfoid is null and categoryid like '8010' and consoleinfoid is null and episode is null and episodeinfoid is null and imdbid is null and musicinfoid is null and passwordstatus like '0' and releasenfoid like '-1' and season is null and seriesfull is null and tvdbid is null and tvtitle is null";

//Delete releases from posters that might have extra information but that information is not enough for update_parsing to fix.
//$sql = "select ID from releases where (fromname like 'Danny Claude <antigel@synchronicity.com>' or fromname like 'xslidian@lanmao.info (xslidian)' or fromname like 'serientown <serientown@town.ag>' or fromname like 'xslidian@hmlt.info (xslidian)') and categoryid like '8010'";

//Delete releases with poor names which can not be fixed.
//$sql = "select ID from releases where (name like '%ENG_AAC_2_0%' or name like '%Format......................................%' or name like '%sexo-atkg%' or name like 'idtv-%' or searchname like '%Simply ReleaseS Toppers%' or name like 'iak-%' or name like '%world-taste' or name like 'ohrly-%' or name like 'zzgtv-%' or name like 'utopia-%' or name like 'sexo-%' or name like '%00000_MPLS%') and categoryid like '8010'";

//Delete releases where names are just a string of numbers (42342342 for example) and have been fully post processed but post processing has not gotten any extra information.
//$sql = "select ID from releases where name REGEXP '(^[0-9]+$)' and anidbid is NULL and bookinfoid is null and categoryid like '8010' and consoleinfoid is null and episode is null and episodeinfoid is null and imdbid is null and musicinfoid is null and passwordstatus like '0' and releasenfoid like '-1' and season is null and seriesfull is null and tvdbid is null and tvtitle is null";

//Delete releases where the name is just a string of characters (ew65rfyuhj2X, There112, aaa, etc for example) and has been fully post processed but post processing has not gotten any extra information.
//$sql = "select ID from releases where name REGEXP '(^([a-zA-Z0-9]{1,})$)' and anidbid is NULL and bookinfoid is null and categoryid like '8010' and consoleinfoid is null and episode is null and episodeinfoid is null and imdbid is null and musicinfoid is null and passwordstatus like '0' and releasenfoid like '-1' and season is null and seriesfull is null and tvdbid is null and tvtitle is null";


//The next ones can remove decent named releases (in other misc) that update_parsing couln't fix. I'd use this if you want to clean other misc more.

//Delete releases that have been fully post processed but post processing has not gotten any extra information.
//$sql = "select ID from releases where anidbid is NULL and bookinfoid is null and categoryid like '8010' and consoleinfoid is null and episode is null and episodeinfoid is null and imdbid is null and musicinfoid is null and passwordstatus like '0' and releasenfoid like '-1' and season is null and seriesfull is null and tvdbid is null and tvtitle is null";

//!!DANGER!!Delete releases from other misc without an nfo!!DANGER!!
//$sql = "select ID from releases where categoryid like '8010' and releasenfoid like '-1'";

//!!EXTREME DANGER!!Delete releases from other misc!!EXTREME DANGER!!
//$sql = "select ID from releases where categoryid like '8010'";

$rel = $db->query($sql);
echo "about to delete ".count($rel)." release(s)";

foreach ($rel as $r) 
{
	$releases->delete($r['ID']);
}
?>
