-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 25 dec 2017 om 15:23
-- Serverversie: 10.1.26-MariaDB
-- PHP-versie: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `got`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `characters`
--

CREATE TABLE `characters` (
  `character_ID` int(11) NOT NULL,
  `character_name` varchar(30) NOT NULL,
  `character_house` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `characters`
--

INSERT INTO `characters` (`character_ID`, `character_name`, `character_house`) VALUES
(1, 'Jon Snow', 'Stark'),
(2, 'Bran Stark', 'Stark'),
(3, 'Eddard Stark', 'Stark'),
(4, 'Robb Stark', 'Stark'),
(5, 'Rickon Stark', 'Stark'),
(6, 'Sansa Stark', 'Stark'),
(7, 'Arya Stark', 'Stark'),
(8, 'Lady Catelyn', 'Stark'),
(9, 'Theon Greyjoy', 'Greyjoy'),
(10, 'Cersei Lannister', 'Lannister'),
(11, 'Tyrion Lannister', 'Lannister'),
(12, 'Jamie Lannister', 'Lannister'),
(13, 'Joffrey Baratheon', 'Lannister'),
(14, 'Robert Baratheon', 'Stark'),
(15, 'Khal Drogo', 'Drogo'),
(16, 'Daenerys Targaryen', 'Targaryen'),
(17, 'Viserys Targaryen', 'Targaryen'),
(18, 'Jorah Mormont', 'Mormont'),
(19, 'Myrcella Baratheon', 'Baratheon'),
(20, 'Tommen Baratheon', 'Baratheon'),
(21, 'Petyr Baelish', 'Baelish'),
(22, 'Varys', 'none'),
(23, 'Samwell Tarly', 'Tarly'),
(24, 'Hodor', 'none'),
(25, 'Lysa Arryn', 'Arryn'),
(26, 'Robin Arryn', 'Arryn'),
(27, 'Tywin Lannister', 'Lannister');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `character_connections`
--

CREATE TABLE `character_connections` (
  `connection_ID` int(11) NOT NULL,
  `character_name1` text NOT NULL,
  `character_name2` text NOT NULL,
  `connection_start_episode` int(11) NOT NULL,
  `connection_end_episode` int(11) NOT NULL,
  `connection_type` varchar(1) NOT NULL COMMENT 'H = Hostile, F = friendly, N = neutral'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `character_info`
--

CREATE TABLE `character_info` (
  `character_ID` int(11) NOT NULL,
  `character_information` text NOT NULL,
  `character_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `character_info`
--

INSERT INTO `character_info` (`character_ID`, `character_information`, `character_name`) VALUES
(1, 'In season 1 Jon, Ned Starks bastard, <br>\r\njoins the Night\'s Watch.\r\nHe arrives at the Wall,  <br>\r\nwith his direwolf Ghost in tow, <br> \r\nto find that the order  \r\nis a shadow of its former self. <br> \r\nRaised to be a talented fighter  <br>\r\nwith a strong sense of justice and honor, <br>\r\nJon is at first contemptuous\r\nof his fellow recruits, <br>\r\nwho are mostly lowborn, \r\nuntrained criminals and exiles. <br> \r\nEventually, Tyrion Lannister persuades him <br>\r\nto put aside his prejudices\r\nand helps some of the others <br>\r\nwith their weapons training.  <br>\r\nJon befriends Samwell Tarly,  <br>\r\nwho is more an intellectual than a fighter. <br> \r\nJon takes his vows, <br>\r\nbut is disappointed to be made steward <br>\r\nto Lord Commander Jeor Mormont <br>\r\nrather than a ranger.\r\nSam points out that  <br>\r\nhe is likely being groomed for command. <br>\r\nJon ends up saving Mormont from a wight <br>\r\nand is given House Mormont\'s <br>\r\nancestral blade Longclaw,  <br>\r\na sword made of Valyrian steel, in thanks. <br> \r\nJon learns of his father\'s execution for treason <br>\r\nand though tempted to leave the Wall <br>\r\nto help his family, his sense of duty <br>\r\nultimately compels him to stay.', 'Jon Snow'),
(2, 'Bran receives one of a litter of recovered direwolves <br> given to the Stark children and names him Summer.  <br> During the King\'s visit to Winterfell,  <br> Bran accidentally interrupts the Queen, Cersei, <br>  having sex with her brother, Jaime,  <br> who shoves him from the window. While he is <br>  unconscious and recovering from his injuries,  <br> Summer kills an assassin sent to murder Bran. <br> When he awakens Bran cannot recall the events  <br> before his fall and finds that he is crippled  <br> from the waist down, forced to be carried everywhere  <br> by the stableboy Hodor. Slowly, he realizes that he  <br> has gained the ability to assume Summer\'s <br> consciousness,  making him a warg or a skinchanger.  <br> After his older brother, Robb, is crowned  <br> King in the North, Bran becomes Robb\'s heir  <br> and the Lord of Winterfell.', 'Bran Stark'),
(3, 'King Robert Baratheon asks his old friend <br> Eddard \"Ned\" Stark, <br>\r\nLord of Winterfell and Warden of the North,  <br>\r\nto assume the position of Hand of the King  <br>\r\nafter the sudden death of their mentor, Jon Arryn. <br> \r\nNot interested in politics or the intrigues of the court, <br> \r\nNed accepts out of duty and to discover how Arryn died.  <br>\r\nRobert is killed just as Ned discovers that his  <br>\r\nthree children by Cersei were actually fathered  <br>\r\nby the queen\'s twin, Jaime. Before Ned is able to  <br>\r\nneutralize Cersei and place Robert\'s brother Stannis <br>\r\non the throne, he is betrayed by Littlefinger,  <br>\r\nand the queen has him imprisoned for treason.  <br>\r\nNed makes a public confession to save his daughters <br>\r\nfrom Cersei\'s wrath, but Joffrey still has Ned beheaded. <br>', 'Eddard Stark'),
(4, 'Robb Stark is the eldest son of Eddard and <br>\r\nCatelyn Stark and the heir to Winterfell.  <br>\r\nHis dire wolf is called Grey Wind.  <br>\r\nRobb becomes involved in the war against <br> \r\nthe Lannisters after his father, Ned Stark,  <br>\r\nis arrested for treason.  <br>\r\nRobb summons his bannermen for war against <br> \r\nHouse Lannister and marches to the Riverlands.  <br>\r\nEventually, crossing the river at the Twins  <br>\r\nbecomes strategically necessary.  <br>\r\nTo win permission to cross, Robb agrees to marry <br>\r\na daughter of Walder Frey, Lord of the Twins.  <br>\r\nRobb leads the war effort against the Lannisters  <br>\r\nand successfully captures Jaime.  <br>\r\nAfter Ned is executed, the North and the Riverlands <br>\r\ndeclare their independence from the Seven Kingdoms  <br>\r\nand proclaim Robb as their new King,  <br>\r\n\"The King in the North\".', 'Robb Stark'),
(5, 'Rickon Stark is born and raised at Winterfell. <br>\r\nHe is the youngest son of Ned and Catelyn Stark. <br>\r\nHe is six-years-old when his uncle, Lord Arryn, <br>\r\nthe Hand of the King, mysteriously dies. <br>\r\n<br>\r\nWhen his brothers find direwolf pups, <br>\r\nRickon adopts one and names him Shaggydog. <br>\r\nWhen Robb decides to ride against King Joffrey <br>\r\nand wants to say goodbye, Rickon is nowhere to be found. <br>\r\nAfterwards, Bran tries to reassure Rickon that Robb <br>\r\nwill return along their parents, but Rickon wistfully <br>\r\nreplies: \"No, they won\'t\".', 'Rickon Stark'),
(6, 'When Robert Baratheon and his escort arrive at 					<br>\r\nWinterfell, he insists to Ned that Joffrey and Sansa 					<br>\r\nshould be married in order to join their houses. 					<br>\r\nSansa, who is desperate to leave Winterfell begs 					<br>\r\nCatelyn to make Ned agree to the engagement. 					<br>\r\nFollowing Sansa, Ned, and Arya\'s departure from 					<br>\r\nWinterfell, Joffrey is injured by Arya\'s direwolf Nymeria, 					<br>\r\nafter he attacks the butcher\'s boy and Arya. 					<br>\r\nAs retribution for Joffrey\'s injury, Cersei convinces 					<br>\r\nRobert to have Sansa\'s direwolf, Lady, slaughtered in 					<br>\r\nplace of the missing Nymeria. Following Ned\'s initial <br>\r\nresignation as hand of the king, Sansa is devastated to<br> hear 		\r\nshe has to return to Winterfell, in which she likens 					<br>\r\nJoffrey to a lion, and that he was nothing like Robert. <br>\r\nFollowing Robert\'s death, and Ned\'s arrest for declaring 					<br>\r\nJoffrey was not the true king, The entire Stark household 					<br>\r\nin Kings Landing, with the exception of Sansa and Arya, 					<br>\r\nare executed. Cersei persuades Sansa to write to Robb and 					<br>\r\nCatelyn Stark imploring them to swear fealty to Joffrey. 					<br>\r\nAt court, Sansa pleads to Joffrey to show Ned mercy,  					<br>\r\nhe agrees on the condition Ned swears loyalty to Joffrey. 					<br>\r\nSansa is present at the Great Sept of Baelor, where she is 					<br>\r\ninitially confident Ned will be saved. However, Sansa is 					<br>\r\nhorrified when Joffrey orders Ned\'s execution, and begs 					<br>\r\nsomeone to intervene, before fainting as Ned is beheaded. 					<br>\r\nSansa, grieving her fathers death, is forced by Joffrey 					<br>\r\nto look at the spiked head of Ned. Sansa begs 					<br>\r\nJoffrey to let her return home, but he tells Sansa 					<br>\r\nthat they are to be married and that she will stay and obey. 					<br>\r\nWhile on the boardwalk, Sansa moves to push Joffrey to <br>\r\nhis death, but is stopped by Sandor Clegane, 					<br>\r\nwho warns her she will continue to be abused.', 'Sansa Stark'),
(7, 'Arya accompanies her father Ned and her sister Sansa 		<br>\r\nto King\'s Landing. Before their departure, Arya\'s 		<br>\r\nhalf-brother Jon Snow gifts Arya a sword which she 		<br>\r\ndubs \"Needle\". On the Kingsroad, Arya is sparring 		<br>\r\nwith a butcher\'s boy, Mycah, when Sansa\'s betrothed 		<br>\r\nPrince Joffrey Baratheon attacks Mycah, prompting 		<br>\r\nArya\'s direwolf Nymeria to bite Joffrey. Arya shoos 		<br>\r\nNymeria away so she is not killed, but is furious 		<br>\r\nwhen Sansa later refuses to support her version of 		<br>\r\nevents. Mycah is later killed by Joffrey\'s bodyguard 		<br>\r\nSandor \"The Hound\" Clegane, earning him Arya\'s hatred. 		<br>\r\nNed arranges for Arya to have sword lessons with the 		<br>\r\nBraavosi Syrio Forel, who later defends her from 		<br>\r\nSer Meryn Trant after Joffrey ascends to the throne 		<br>\r\nand kills the Stark household. Arya flees the Red Keep,		<br>\r\naccidentally killing a stable boy in her escape, 		<br>\r\nhiding out as a beggar in the streets of King\'s Landing. 		<br>\r\nNed is eventually taken to the Great Sept of Baelor 		<br>\r\nto face judgment; he spots Arya in the crowd 		<br>\r\nand alerts the Night\'s Watch recruiter Yoren 		<br>\r\nto her presence. Yoren prevents Arya from witnessing 		<br>\r\nNed\'s execution and has her pose as a boy 		<br>\r\nas she joins Yoren\'s recruits on the march north.		<br>', 'Arya Stark'),
(8, '\r\nA raven arrives in Winterfell, bearing the news of			<br>\r\nJon Arryn\'s death, where Catelyn tells Ned the bad news.			<br>\r\nShe also tells him that King Robert Baratheon is riding			<br>\r\nfor Winterfell with most of the royal court. After 		<br>\r\nlearning that Robert means to marry Joffrey to Sansa,			<br>\r\nCatelyn and Queen Cersei exchange cordial words.			<br>\r\nLater that day, Catelyn recieves a letter from Lysa Arryn,			<br>\r\nimplying Jon Arryn\'s murder was ordered by the Queen.			<br>\r\nNed decides to investigate the truth of the matter and 			<br>\r\naccepts Robert\'s offer to become Hand of the King,			<br>\r\nwhile Catelyn prefers that he remains in Winterfell.			<br>\r\nCatelyn tends to Bran after his fall from a a tower and			<br>\r\nrefuses to leave his side. After an assassin tries to			<br>\r\nhave Bran killed, Catelyn suspects that the Lannisters			<br>\r\nwant to have Bran killed because of something he saw.			<br>\r\nShe decides to go after Ned, accompanied by Ser Rodrik.			<br>\r\nUpon arrival in Kings Landing, Catelyn is taken to see			<br>\r\nPetyr Baelish, a childhood friend. He tells Catelyn			<br>\r\nthe dagger that the assassin used was Tyrion Lannister\'s.			<br>\r\nPetyr convinces Ned to meet him and there Catelyn tells 			<br>\r\nhim the news. When returning to Winterfell, Catelyn and			<br>\r\nSer Rodrik find Tyrion at the Crossroads inn. They take 			<br>\r\nhim into custody. They take Tyrion to the Vale of Arryn.			<br>\r\nTyrion demands a trial by combat, which sellsword Bronn 			<br>\r\nfights for him. Bronn wins and Tyrion is released.			<br>\r\nCatelyn tries to convince Lysa to oppose the Lannisters,			<br>\r\nbut Lysa is unwilling to do so, since it endangers her son.			<br>\r\nWhen word arrives that Ned has been executed, Catelyn			<br>\r\nsays to Robb that they will kill all the Lannisters,			<br>\r\nafter they secure the release of Arya and Sansa.			<br>', 'Catelyn Stark'),
(9, 'Theon is introduced as the hostage and ward of 		<br>\r\nLord Eddard Stark, stemming from the failed 		<br>\r\nGreyjoy Rebellion. Despite his position, 		<br>\r\nhe remains loyal to Eddard and is good friends 		<br>\r\nwith his sons Robb and Jon. While he has never 		<br>\r\nquestioned his position, he soon begins to have 		<br>\r\ndoubts after Tyrion Lannister tells him he is nothing		<br>\r\nmore than a servant to the Starks and that not everyone 		<br>\r\nrespects him. Nevertheless, Theon initially remains loyal 		<br>\r\nto Robb after he goes to war with the Lannisters and 		<br>\r\nsupports his decision to have the North secede 		<br>\r\nfrom the Seven Kingdoms and form their own kingdom.		<br>', 'Theon Greyjoy'),
(10, 'In King\'s Landing Cersei and Jaime discuss the situation	<br>\r\naround Lord Arryns death and they wonder if Arryn told	<br>\r\nanyone about what he discovered. 	<br>\r\nLater they travel to Winterfell to ask Lord Eddard	<br>\r\nStark to become the new hand, as well as to propose a	<br>\r\nmarriage between Joffrey and Sansa.In Winterfell,	<br>\r\nCersei and Jamie engage in sexual intercourse. Bran	<br>\r\nclimbs the tower they are in and is caught watching,	<br>\r\nupon which Jamie pushes him out of the window.	<br>\r\nBack at court in King\'s Landing, Cersei tells Joffrey	<br>\r\nthat when he is king, the truth is whatever he	<br>\r\ndecides it will be. Eventually, Eddard Stark confronts	<br>\r\nCersei and tells her he knows her children are fathered	<br>\r\nby Jaime. She doesn\'t deny it, but claims she and her	<br>\r\nbrother belong together. Eddard advises her to leave	<br>\r\nbefore Robert returns from a hunt, to which Cersei	<br>\r\nresponds: \"In the game of thrones, you win or you die.\"	<br>\r\nRobert returns mortally wounded from his hunt, and	<br>\r\nupon his death, Cersei quickly makes Joffrey king.	<br>\r\nEddard is arrested and imprisoned after he tries to	<br>\r\nreveal the truth. Cersei persuades Sansa to write a	<br>\r\nletter to Robb, asking him to bend the knee to Joffrey.	<br>\r\nCersei and Sansa make an arrangement that will allow	<br>\r\nEddard to join the Night\'s Watch if he confesses.	<br>\r\nJoffrey however, after Eddard confessed to his crimes,	<br>\r\ndemands a decapitation. Cersei tries to persuade her 	<br>\r\nson to reconsider, but is unable to. This causes the	<br>\r\nwar to break out between the Starks and Lannisters.	<br>\r\nAt the end of season one, she receives a letter	<br>\r\ninforming her of her brother Jamie\'s capture.', 'Cersei Lannister'),
(11, 'Tyrion accompanies King Robert\'s party to Winterfell,	<br>\r\nbut decides to ride ahead after weeks on the road.	<br>\r\nHe meets up with Jon Snow, and realizes that Jon is	<br>\r\nsomething of a kindred spirit; \"All dwarfs are bastards	<br>\r\nin their father\'s eyes\". Tyrion wants to visit the Wall<br>\r\nand is interested in Bran\'s fall and how it happened. <br>\r\nWhen Jamie and Cersei hear Bran is likely to live, he 	<br>\r\nnotes their reaction. While Jon and Tyrion stay at	<br>\r\nCastle Black, Tyrion watches Jon train and advises him	<br>\r\nto not act superior to his fellow recruits, but help	<br>\r\nthem train instead. Tyrion  befriends Yoren, a recruiter,	<br>\r\nand together they travel back to King\'s Landing.	<br>\r\nPausing in Winterfell on their way home, Tyrion gives	<br>\r\nplans for a special saddle to Bran, which would allow	<br>\r\nhim to ride even in his crippled state. When he stops	<br>\r\nat the Crossroads Inn, Tyrion is suprised when Catelyn	<br>\r\ndenounces him a murderer and has him arrested. He is <br>\r\ntaken to the stronghold of house Arryn. Here he	<br>\r\ndemands a trial by combat, which Bronn, a sellsword who	<br>\r\ntravelled with them from the Inn, fights and wins for him.	<br>\r\nTyrion is brought to his fathers army by the hillmen,	<br>\r\nwhere he learns that Robb Stark is leading an army to war.	<br>\r\nTywin, who is attacking Catelyn\'s home as retribution for	<br>\r\nTyrions capture, agrees to honor Tyrion\'s alliance with	<br>\r\nthe hillmen. They will only fight if Tyrion is on the 	<br>\r\nbattlefield with them, which Tywin agrees to. When he	<br>\r\nsuspects his father is trying to have him killed by sending	<br>\r\nthe hillmen in as frontline, he retreats to his tent.	<br> \r\nAfter the battle, he learns Robb deceived them and defeated	<br>\r\nJamie\'s army in battle, while delaying their army. 	<br>\r\nTywin sends Tyrion to King\'s Landing to become Hand of	<br>\r\nthe King to try to keep Joffrey in line.', 'Tyrion Lannister'),
(12, 'Jaime Lannister accompanies the royal family to 			<br>\r\nWinterfell, where King Robert Baratheon hopes			<br>\r\nto persuade his old friend Ned Stark to serve			<br>\r\nas Hand of the King. During the visit, Ned\'s 			<br>\r\nyoung son Bran inadvertently spies Jaime and			<br>\r\nCersei having sex in a remote tower, at which			<br>\r\npoint Jaime pushes the boy out a window, intending			<br>\r\nto kill Bran to keep their relationship secret. 			<br>\r\nBran managed to survive, though crippled, and when 			<br>\r\nan assassin later tries to kill Bran, Catelyn Stark			<br>\r\naccuses and arrests Tyrion. In revenge, Jaime 			<br>\r\ninstigates a brawl with Ned and his men in the 			<br>\r\nstreets of King\'s Landing, killing many on both 			<br>\r\nsides. Ned later discovers that Robert\'s three 			<br>\r\nchildren are actually the products of Jaime and 			<br>\r\nCersei\'s affair, but is executed by the oldest child, 			<br>\r\nJoffrey Baratheon, upon the latter\'s ascension as king. 			<br>\r\nJaime then rides for the Riverlands to aid Tywin in his 			<br>\r\ncampaign against the Riverlands, taking command of half			<br>\r\nthe Lannister host. He captures the Riverlands\' capital			<br>\r\nof Riverrun, but his army is waylaid by Robb Stark\'s			<br>\r\narmy in the Battle of the Whispering Wood. Jaime is			<br>\r\ntaken prisoner and incarcerated in Riverrun. 			<br>\r\nDespite his capture Joffrey names Jaime			<br>\r\nas commander of his Kingsguard.', 'Jamie Lannister'),
(13, 'Prince Joffrey is taken by his parents to Winterfell	<br>\r\nand is betrothed to Sansa Stark in order to create 	<br>\r\nan alliance between House Baratheon and House Stark. 	<br>\r\nAt first, Joffrey is kind and polite to Sansa. However, 	<br>\r\nhe refuses to show sympathy with the family when Bran 	<br>\r\nStark falls from a tower; this makes Joffrey\'s uncle 	<br>\r\nTyrion have to physically punish him until he shows 	<br>\r\nrespect. While on the Kingsroad to King\'s Landing, 	<br>\r\nJoffrey and Sansa come across Arya Stark practicing 	<br>\r\nswordplay with Mycah. Joffrey accuses him 	<br>\r\nof assaulting a noble girl and makes a cut on his face 	<br>\r\nwith a sword. This causes Arya to hit Joffrey, allowing 	<br>\r\nMycah to escape. Joffrey then turns on Arya, making her 	<br>\r\ndirewolf Nymeria attack Joffrey, injuring him. Later, 	<br>\r\nJoffrey lies about the attack, saying it was unprovoked 	<br>\r\nand demands Nymeria to be killed; however, Sansa\'s 	<br>\r\ndirewolf Lady is killed instead. He later orders his 	<br>\r\nbodyguard Sandor \"The Hound\" Clegane 	<br>\r\nto kill Mycah and bring him his corpse, which he does.	<br>\r\nLater, Eddard Stark discovers that Joffrey is not King	<br>\r\nRobert\'s son and rightful heir. This causes Eddard to	<br>\r\nrefuse to acknowledge Joffrey\'s claim to the throne	<br>\r\nwhen King Robert dies. He is taken into custody and 	<br>\r\nhis guards and household are murdered. Sansa kneels 	<br>\r\nand begs for Joffrey to spare her father\'s life and 	<br>\r\ngive him a chance to confess the treason. Joffrey 	<br>\r\npromises Sansa that if Eddard truly does confess, he 	<br>\r\nwould be merciful. Reluctant at first, Eddard  	<br>\r\naccepts Joffrey as the rightful King in order to spare Sansa\'s 	<br>\r\nlife. However, Joffrey, though pleased by Eddard\'s confession, 	<br>\r\nsays that he has no acceptance for traitors and beheads 	<br>\r\nEddard and forces Sansa to look upon her father\'s head.', 'Joffrey Baratheon'),
(14, 'When his Hand of the King, Lord Jon Arryn, dies, Robert	<br>\r\ntravels to Winterfell to over this position to Lord	<br>\r\nEddard \"Ned\" Stark and offers a betrothal between 	<br>\r\nJoffrey and Sansa. Ned accepts the position and 	<br>\r\nmoves to King\'s Landing. On the way back, Robert and	<br>\r\nNed discuss the marriage between Daenerys Targaryen	<br>\r\nto the Dothraki Khal Drogo.	<br>\r\nRobert decides to host a tourney for Ned\'s new	<br>\r\nappointment as Hand of the King, in which he plans	<br>\r\nto fight himself, which Cersei forbids. Eventually	<br>\r\nhe decides to not participate in the melee.	<br>\r\nWhen Robert calls a meeting to demand the death	<br>\r\nof the pregnant Daenerys, who is in exile, Ned	<br>\r\nrefuses to be part of it and resigns his position.	<br>\r\nAfter a fight between Ned and Jamie, Robert	<br>\r\nconvinced Ned to take back the Hand of the King	<br>\r\nposition, by treathening to give it to Jamie	<br>\r\nif Ned declines. 	<br>	<br>\r\nDuring one of Robert\'s hunting trips, his squire,	<br>\r\nLancel Lannister, gives him a stronger wine,	<br>\r\nwhich results in Robert being very drunk while	<br>\r\nhunting a monstrous large boar. He insist on	<br>\r\nfacing the boar alone and ends up getting	<br>\r\nmortally wounded. He is brought back to King\'s	<br>\r\nLanding, where he has Ned write him his will.	<br>\r\nRobert names him Lord Regent, to serve until	<br>\r\nJoffrey comes of age. Ned, unable to tell Robert	<br>\r\nabout Cersei\'s infidelity, changes the wording 	<br>\r\nin the will, replacing \"my son Joffrey\" with 	<br>\r\n\"my heir\". Robert dies the next day.', 'Robert Baratheon'),
(15, 'Illyrio and Viserys Targaryen arrange the marriage		<br>\r\nbetween Daenerys and Khal Drogo in return for Drogo	<br>\r\nsupplying Dothraki troops to support Viserys\'s play	<br>\r\nfor the Iron Throne of Westeros. 	<br>\r\nDrogo marries Daenerys outside the Free City of Pentos,	<br>\r\nbut they are unable to communicate due to not sharing 	<br>\r\na language. Ser Jorah Mormont, aids with translation.	<br>\r\nDrogo is determined to consummate their marriage 	<br>\r\nimmediately, which Daenerys finds frightening.	<br>\r\nAfter two months, they are happier together.	<br>\r\nIn Vaes Dothrak, the sacred city of the Dothraki,	<br>\r\ndrunk and aggressive Viserys petulantly demands that	<br>\r\nDrogo took Daenerys, but never provided the army he	<br>\r\npromised. Believing he would not be harmed, since 	<br>\r\nshedding blood in the city is forbidden, he draws	<br>\r\nhis sword. He is then promised a \"golden crown\",	<br>\r\nupon which he lowers his guard. Drogo uses this to	<br>\r\ncrown Viserys with molten gold, killing him.	<br>\r\nDaenerys asks Drogo to continue with the invasion,	<br>\r\nbut Drogo is reluctant to attempt to cross the Sea	<br>\r\nbecause of his people\'s fear of the \"poison water\".	<br>\r\nAfter Daenerys survives an assassination attempt,	<br>\r\nDrogo swears a blood oath that he will punish 	<br>\r\nWesteros for their attempt on the life of his wife	<br>\r\nand child.\r\nDrogo leads his men to raid a village,	<br>\r\nhe plans to take slaves to trade for a fleet to invade	<br>\r\nWesteros. Mago becomes infuriated when Daenerys <br>\r\norders him to not rape the women in the town. This leads	<br>\r\nto a fight between Mago and Drogo, which Drogo wins,	<br>\r\nbut he gets wounded. The wound festers, which poisons	<br>\r\nDrogo. Drogo survives in a vegetative state, and to	<br>\r\nend his misery, Daenerys smothers Drogo with a pillow.', 'Khal Drogo'),
(16, 'Daenerys is sold off by her brother Viserys and Illyrio		<br>\r\nMopatis to marry Khal Drogo, a Dothraki warlord, 	<br>\r\nin exchange for an army for Viserys. At that time,	<br>\r\nDaenerys befriends Jorah Mormont, an exiled Westerosi 	<br>\r\nknight, and is given three petrified dragon eggs as a 	<br>\r\nwedding gift. Though initially terrified of Drogo, 	<br>\r\nthe marriage turns out to be a happy one, and Daenerys 	<br>\r\ngrew to love him and began to take to Dothraki customs, 	<br>\r\nfinding strength and determination for the first time. 	<br>\r\nThis leads her to stand up to Viserys\'s attempts to 	<br>\r\nbully her into coercing Drogo. After Drogo kills 	<br>\r\nViserys by pouring molten gold atop his head for 	<br>\r\nthreatening his wife, Daenerys sees herself as the 	<br>\r\nheir to the Targaryen dynasty, and responsible for 	<br>\r\nreclaiming the throne for her family. Shortly 	<br>\r\nthereafter, Drogo is wounded in a fight, and the 	<br>\r\ncut festers. With Drogo ill, his warriors mutiny 	<br>\r\nand abandon him. In desperation, Daenerys recruits 	<br>\r\nan enslaved Lhazareen priestess, Mirri Maz Duur, 	<br>\r\nto save Drogo with blood magic. However, despite 	<br>\r\nbeing saved by Daenerys from being raped by the 	<br>\r\ntribe\'s warriors, the priestess betrays her trust 	<br>\r\nand the magic ritual leads to the stillbirth of 	<br>\r\nDaenerys\'s unborn child and leaves Drogo in a catatonic 	<br>\r\nstate. Daenerys does not want her husband to suffer 	<br>\r\nany longer, and euthanizes him with a pillow. 	<br>\r\nShe burns the priestess in Drogo\'s funeral pyre 	<br>\r\nand climbs into the flame with her three dragon eggs. 	<br>\r\nWhen the pyre dies out the following morning, 	<br>\r\nDaenerys emerges alive and unburnt from the ashes 	<br>\r\nwith three hatched dragons.', 'Daenerys Targaryen'),
(17, 'Viserys Targaryen is the exiled prince and 				<br>\r\nheir of the Targaryen dynasty. Known as 				<br>\r\n\"The Beggar King\" for his search for an army 				<br>\r\nto recapture his throne. A narcissist, 				<br>\r\nhe is arrogant and self-centered, 				<br>\r\ncaring only about himself and looking down on others,				<br> \r\nespecially his sister Daenerys. 				<br>\r\n<br>\r\nIn exchange for an army to help regain the Iron Throne,				<br> \r\nViserys marries off his sister to the powerful Dothraki 				<br>\r\nwarlord Khal Drogo and follows his horde\'s journey 				<br>\r\nto the Dothraki capital to ensure Drogo will keep 				<br>\r\nhis end of the bargain. But as they journey, 				<br>\r\nit becomes evident that Viserys does not have 				<br>\r\nany leadership skills to reclaim the throne as 				<br>\r\nhis arrogance and disrespect for the Dothraki 				<br>\r\ndoes not win him any hearts. Furthermore, Daenerys, 				<br>\r\nwhom he has always threatened throughout his life, 				<br>\r\nstarts to stand up to him. Realizing that Daenerys 				<br>\r\nis loved by the Dothraki and that her and Drogo\'s 				<br>\r\nunborn son are prophesied to unite the world, 				<br>\r\nViserys realizes that it is not he but Daenerys 				<br>\r\nwho will reclaim the Iron Throne. In a fit 				<br>\r\nof drunken rage, he threatens Drogo to give him 				<br>\r\nhis army now or he will kill his unborn son. 				<br>\r\nHaving enough of his behavior, Drogo kills Viserys 				<br>\r\nby giving him a \"Golden Crown\"; molten gold poured 				<br>\r\nover his head. Daenerys watches her brother\'s 				<br>\r\nagonizing death, proclaiming that he wasn\'t 				<br>\r\na true dragon, as \"fire cannot kill a dragon\".', 'Viserys Targaryen'),
(18, 'Ser Jorah Mormont is an exiled knight in the service	<br>\r\nof Daenerys Targaryen and the son of Jeor Mormont 	<br>\r\nof the Night\'s Watch. To fund his wife\'s extravagant 	<br>\r\nlifestyle, he sold poachers on his land to slave 	<br>\r\ntraders, which is illegal in the Seven Kingdoms. 	<br>\r\nRather than face punishment by Lord Stark, 	<br>\r\nhe fled to Essos and learned the lifestyle 	<br>\r\nof the Dothraki who embrace him as one of their 	<br>\r\nown and know him as \"Jorah the Andal\". 	<br>\r\nJorah serves as an adviser to the Targaryens	<br> \r\non both political and cultural matters 	<br>\r\nof both the Seven Kingdoms and Essos. Jorah is	<br> \r\nactually spying on the Targaryens for Lord Varys 	<br>\r\nin exchange for a pardon on his crimes but 	<br>\r\nafter learning more about Daenerys, Jorah 	<br>\r\nfalls in love with her and decides to protect 	<br>\r\nand help her regain the Iron Throne.', 'Jorah Mormont'),
(19, 'Myrcella accompanies her family north to Winterfell 	<br>\r\nafter the death of Jon Arryn. During their stay, 	<br>\r\nBran Stark is severely injured.Myrcella is eating 	<br>\r\nbreakfast with Cersei, Jaime and Tommen when her 	<br>\r\nuncle Tyrion joins them. Myrcella asks whether 	<br>\r\nBran will die and Tyrion replies that he is 	<br>\r\nexpected to live, delighting Myrcella and 	<br>\r\nhorrifying Cersei. Tyrion excites Myrcella 	<br>\r\nand Tommen by announcing that he wishes to see 	<br>\r\nthe Wall and the \"wintry abode of the White Walkers.\"	<br> \r\nHe then amuses them by claiming that he wants to 	<br>\r\nurinate off the edge of the wall. Cersei is 	<br>\r\nirritated by his rudeness and leaves, taking the 	<br>\r\nchildren with her.	<br>\r\n<br>\r\nMyrcella seated with the rest of the royal family 	<br>\r\nat the Tourney of the Hand. Myrcella attends the 	<br>\r\ntournament to celebrate Eddard Stark becoming 	<br>\r\nHand of the King. She witnesses the horrific 	<br>\r\ndeath of Ser Hugh of the Vale during his joust 	<br>\r\nagainst Ser Gregor Clegane. Myrcella returns for 	<br>\r\nthe second day of the tournament and applauds when 	<br>\r\nSer Loras Tyrell unseats Gregor. Gregor attacks 	<br>\r\nLoras and Sandor Clegane intervenes. King Robert 	<br>\r\ncalls an end to the fighting. Myrcella joins the 	<br>\r\napplause when Loras declares Sandor a champion.', 'Myrcella Baratheon'),
(20, 'Tommen accompanies his family north to Winterfell. 		<br>\r\nTommen is eating breakfast with his mother, father 	<br>\r\nand sister as his uncle Tyrion approaches.	<br>\r\n	<br>\r\nHe giggles as his uncle lifts him aside to join them.	<br> \r\nHis sister asks whether Bran Stark will die and Tyrion 	<br>\r\nreplies that he is expected to live, much to Myrcella\'s 	<br>\r\ndelight and Cersei\'s horror. Tyrion goes on to say how 	<br>\r\nhe wishes to see the Wall and witness the \"wintry abode 	<br>\r\nof the white walkers,\" exciting Myrcella and Tommen. 	<br>\r\nHe then says he wants to urinate off the edge of it, 	<br>\r\na comment which causes both his niece and nephew to laugh. 	<br>\r\nCersei is irritated by his words and leaves, calling the 	<br>\r\nchildren to her.	<br>\r\n	<br>\r\nTommen attends the tournament to celebrate Eddard Stark 	<br>\r\nbecoming Hand of the King, during which he and the crowd 	<br>\r\nbear witness to Gregor Clegane killing his opponent in an 	<br>\r\napparent and very gruesome accident and then behead his 	<br>\r\nown stallion in a rage, both of which causes the young 	<br>\r\nprince to leap out of his chair in horror.	<br>', 'Tommen Baratheon'),
(21, 'Lord Petyr Baelish, popularly called Littlefinger, 	<br>\r\nis the Master of Coin on the Small Council under  	<br>\r\nKing Robert Baratheon and King Joffrey Baratheon.  	<br>\r\nHe was a skilled manipulator and used his ownership  	<br>\r\nof brothels in King\'s Landing to both accrue  	<br>\r\nintelligence on political rivals and acquire vast  	<br>\r\nwealth. Baelish\'s spy network is eclipsed only  	<br>\r\nby that of his arch-rival Varys. 	<br>\r\n<br>\r\nBaelish hides Catelyn at one of his brothels when she 	<br> \r\nbrings the news of the attempt on Bran\'s life, and  	<br>\r\ntells her the dagger used was won from him by Tyrion  	<br>\r\nLannister. This leads to Catelyn\'s capture of Tyrion; 	<br>\r\n but this information is later identified as a lie.  	<br>\r\n Petyr helps Eddard expose the secret parentage of  	<br>\r\n the royal children, but advises him to abet  	<br>\r\n Joffrey\'s rise to power in order to consolidate  	<br>\r\n their own. Ned insists that Stannis must be king  	<br>\r\n and asks Baelish to secure the help of the City  	<br>\r\n Watch when he moves against the Lannisters, but  	<br>\r\n Petyr betrays Lord Stark and aids his arrest.', 'Petyr Baelish'),
(22, 'Varys, also called the Spider, is a eunuch and 		<br>\r\ncourtier who serves as Master of Whisperers, <br>\r\nthe spymaster for the king of the Seven Kingdoms <br>\r\nat the royal court in King\'s Landing.<br><br>\r\n\r\nSoon after Eddard Stark\'s arrival in King\'s Landing,<br> \r\nVarys warns him that Robert\'s wife Cersei Lannister <br>\r\nintends to kill Robert and offers his help to Eddard <br>\r\nin investigating the Lannisters. He later meets in <br>\r\nsecret with Illyrio to discuss stalling a war <br>\r\nbetween Houses Stark and Lannister until the right<br> \r\nmoment; this is overheard by Arya Stark, but she <br>\r\nis unable to identify the men. When Robert is <br>\r\nultimately killed, Varys remains spymaster for <br>\r\nhis heir Joffrey, and suggests that Ser Barristan <br>\r\nSelmy be blamed for his death. Selmy is removed <br>\r\nfrom the Kingsguard and ultimately defects to <br>\r\nDaenerys Targaryen, which may have been Varys\' <br>\r\nplan all along. Varys visits Eddard in captivity <br>\r\nand convinces him to plead guilty to treason and <br>\r\njoin the Night\'s Watch in order to save the life <br>\r\nof his daughter Sansa, also averting war between <br>\r\nthe Starks and Lannisters. Eddard goes along with <br>\r\nthe plan, but Joffrey has him executed regardless. <br>\r\nVarys also arranges for Robert\'s bastard Gendry <br>\r\nto join the Night\'s Watch, to avoid being killed <br>\r\nby Cersei.', 'Varys'),
(23, 'Upon arriving at the Wall, Sam is soon bullied by <br>\r\nSer Alliser Thorne and the fellow recruits for his <br>\r\nweight, shyness and clumsiness in training. Jon Snow <br>\r\ntakes pity on Sam and defends him in arms training. <br>\r\nLater on, Sam confesses his life story to Jon, who <br>\r\nsympathizes with Sam and secretly uses his influence <br>\r\namong the recruits (making violent threats when necessary)<br> \r\nto protect Sam from harm. When Sam fails to progress <br>\r\nin fight training and is not deemed worthy to join <br>\r\nthe Night\'s Watch, Jon persuades Maester Aemon take <br>\r\nin Sam as a personal stewards assigned to help <br>\r\nAemon in the rookery and library.<br>\r\n<br>\r\nSam is the first person to notice something strange <br>\r\nabout the corpse of rangers Othor and Jafer Flowers <br>\r\n(who are actually wights sent to assassinate Lord <br>\r\nCommander Jeor Mormont). When Jon tries to abandon <br>\r\nthe Night\'s Watch to join Robb Stark\'s army and avenge <br>\r\nthe death of his father Eddard Stark, Sam alerts their <br>\r\nfellow recruits, who catch up to Jon and convince to <br>\r\nnot break his vows to the Night\'s Watch.', 'Samwell Tarly'),
(24, 'Hodor greets the arrival of King Robert Baratheon 	<br>\r\nwith the rest of the Stark household when the King	<br> \r\narrives to recruit Lord Eddard as his new 	<br>\r\nHand of the King.	<br>\r\nTheon Greyjoy directs Hodor to carry the crippled 	<br>\r\nBran Stark to the great hall to meet Tyrion. 	<br>\r\nHe holds Bran while Tyrion offers to give him 	<br>\r\nthe plans for a new kind of saddle that he can 	<br>\r\nride even in his crippled state. Some weeks later, 	<br>\r\nHodor excitedly bursts into Bran\'s room with the 	<br>\r\nsaddle made from Tyrion\'s schematics. Hodor bathes 	<br>\r\nnaked in the hot pool in the Godswood while Bran prays. 	<br>\r\nHodor is seen by Osha, who tells Bran that she thinks 	<br>\r\nhe must have giants\' blood in him. 	<br>\r\nBran reminds Hodor to get dressed.', 'Hodor'),
(25, 'Lysa\'s husband Jon Arryn, the Hand of the King, 			<br>\r\ndies of an apparent fever. Lysa flees the capital			<br> \r\nand returns to the Eyrie with her son Robin. She sends 			<br>\r\nher sister Catelyn a letter claiming that the Lannisters 			<br>\r\nmurdered Jon Arryn for unknown reasons. 			<br>\r\nCatelyn apprehends Tyrion Lannister on suspicion of 			<br>\r\ntrying to kill Bran. She brings him to the Eyrie to 			<br>\r\nbe questioned. Lysa is furious with Catelyn for 			<br>\r\nexposing her to the wrath of House Lannister. She 			<br>\r\nand Robin hold Tyrion in contempt, ignoring his 			<br>\r\nthreats that his house will repay them for any 			<br>\r\nharm they visit upon him. Lysa orders Tyrion sent 			<br>\r\nto Mord, the castle jailer. 			<br>\r\nTyrion convinces Lysa to give him a trial, only to			<br> \r\nprotest his innocence. He demands the right of 			<br>\r\ntrial by combat, supported by the mercenary Bronn. 			<br>\r\nBronn wins the battle, killing Lysa\'s champion, 			<br>\r\nSer Vardis Egen. Lysa chides Bronn for not 			<br>\r\nfighting with honor, but reluctantly releases Tyrion.			<br>\r\nLysa receives a letter from King\'s Landing announcing			<br>\r\nthat Robert has died and Eddard has been arrested as			<br>\r\na traitor. She delays showing the letter to Catelyn, 			<br>\r\nto Catelyn\'s great annoyance. Catelyn asks that 			<br>\r\nthe knights of the Vale join House Tully and House 			<br>\r\nStark in fighting the Lannisters for his freedom, 			<br>\r\nbut Lysa refuses. Lysa insists that the Vale 			<br>\r\nknights must remain at home to defend Robin. 			<br>\r\nCatelyn leaves, frustrated and annoyed.', 'Lysa Arryn'),
(26, 'Catelyn Stark brings the captive Tyrion Lannister to <br>\r\nthe Eyrie. Catelyn has arrested him on suspicion of <br>\r\ninvolvement in the attempted assassination of her <br>\r\nson Bran and expects Lysa\'s support given her <br>\r\nearlier accusation. She is shocked to see that <br>\r\nLysa still breastfeeds Robin, despite him being so old.<br> \r\nRobin is prone to fits of histrionics, demanding to <br>\r\nsee \"the bad man fly\". Lysa calls him a strong and <br>\r\nmighty ruler, worthy of the Vale\'s leadership, <br>\r\nbut Catelyn appears skeptical.<br>\r\n<br>\r\nTyrion agrees to confess to his crimes and is brought <br>\r\nbefore the High Seat. He presents a list of minor <br>\r\nmisdemeanors from childhood, though Robin is particularly<br> \r\nintrigued by some of them. Tyrion demands a trial by <br>\r\ncombat to prove his innocence and calls upon his <br>\r\nbrother Jaime Lannister to be his champion, even <br>\r\nthough getting word to Jaime and his arrival would <br>\r\ntake many days. When his request is refused, the <br>\r\nmercenary Bronn agrees to be his champion, much to <br>\r\nTyrion\'s surprise and relief. Bronn triumphs against <br>\r\nLysa\'s champion, Ser Vardis Egen, and he and Tyrion <br>\r\nare allowed to go free. Robin is disappointed at <br>\r\nbeing deprived of an execution by Moon Door.<br>\r\n<br>\r\nCatelyn visits Robin and Lysa before leaving the Vale <br>\r\nto join her son Robb\'s army. She asks Lysa to commit <br>\r\nthe Vale to the war on the side of the Starks and <br>\r\nTullys, but Lysa refuses, saying the Vale\'s knights <br>\r\nare needed at home to defend Robin.', 'Robin Arryn'),
(27, 'Tywin Lannister is Lord of Casterly Rock, 	<br>\r\nShield of Lannisport, and Warden of the West.	<br>\r\nAfter Tyrion Lannister\'s arrest by Catelyn Stark, 	<br>\r\nTywin marches on the Riverlands with 60,000 men,  	<br>\r\ngiving half to Jaime Lannister to besiege House  	<br>\r\nTully\'s ancestral home of Riverrun. Tywin takes  	<br>\r\nhis force to the Trident to battle Robb Stark\'s  	<br>\r\nmen, but Robb instead leads his force on Riverrun  	<br>\r\nand captures Jaime. When Joffrey Baratheon ascends  	<br>\r\nas king, he names Tywin as his Hand but also executes  	<br>\r\nthe former Hand, Eddard Stark. Realising that Eddard\'s  	<br>\r\ndeath prevents any chance of suing for peace, Tywin  	<br>\r\nsends Tyrion to King\'s Landing as acting Hand, while  	<br>\r\nhe continues the campaign in the Riverlands. 	<br>', 'Tywin Lannister');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `character_positions`
--

CREATE TABLE `character_positions` (
  `Character ID` int(11) NOT NULL,
  `S1E0` int(11) DEFAULT NULL,
  `S1E1` int(11) DEFAULT NULL,
  `S1E2` int(11) DEFAULT NULL,
  `S1E3` int(11) DEFAULT NULL,
  `S1E4` int(11) DEFAULT NULL,
  `S1E5` int(11) DEFAULT NULL,
  `S1E6` int(11) DEFAULT NULL,
  `S1E7` int(11) DEFAULT NULL,
  `S1E8` int(11) DEFAULT NULL,
  `S1E9` int(11) DEFAULT NULL,
  `S1E10` int(11) DEFAULT NULL,
  `S2E1` int(11) DEFAULT NULL,
  `S2E2` int(11) DEFAULT NULL,
  `S2E3` int(11) DEFAULT NULL,
  `S2E4` int(11) DEFAULT NULL,
  `S2E5` int(11) DEFAULT NULL,
  `S2E6` int(11) DEFAULT NULL,
  `S2E7` int(11) DEFAULT NULL,
  `S2E8` int(11) DEFAULT NULL,
  `S2E9` int(11) DEFAULT NULL,
  `S2E10` int(11) DEFAULT NULL,
  `S3E1` int(11) DEFAULT NULL,
  `S3E2` int(11) DEFAULT NULL,
  `S3E3` int(11) DEFAULT NULL,
  `S3E4` int(11) DEFAULT NULL,
  `S3E5` int(11) DEFAULT NULL,
  `S3E6` int(11) DEFAULT NULL,
  `S3E7` int(11) DEFAULT NULL,
  `S3E8` int(11) DEFAULT NULL,
  `S3E9` int(11) DEFAULT NULL,
  `S3E10` int(11) DEFAULT NULL,
  `S4E1` int(11) DEFAULT NULL,
  `S4E2` int(11) DEFAULT NULL,
  `S4E3` int(11) DEFAULT NULL,
  `S4E4` int(11) DEFAULT NULL,
  `S4E5` int(11) DEFAULT NULL,
  `S4E6` int(11) DEFAULT NULL,
  `S4E7` int(11) DEFAULT NULL,
  `S4E8` int(11) DEFAULT NULL,
  `S4E9` int(11) DEFAULT NULL,
  `S4E10` int(11) DEFAULT NULL,
  `S5E1` int(11) DEFAULT NULL,
  `S5E2` int(11) DEFAULT NULL,
  `S5E3` int(11) DEFAULT NULL,
  `S5E4` int(11) DEFAULT NULL,
  `S5E5` int(11) DEFAULT NULL,
  `S5E6` int(11) DEFAULT NULL,
  `S5E7` int(11) DEFAULT NULL,
  `S5E8` int(11) DEFAULT NULL,
  `S5E9` int(11) DEFAULT NULL,
  `S5E10` int(11) DEFAULT NULL,
  `S6E1` int(11) DEFAULT NULL,
  `S6E2` int(11) DEFAULT NULL,
  `S6E3` int(11) DEFAULT NULL,
  `S6E4` int(11) DEFAULT NULL,
  `S6E5` int(11) DEFAULT NULL,
  `S6E6` int(11) DEFAULT NULL,
  `S6E7` int(11) DEFAULT NULL,
  `S6E8` int(11) DEFAULT NULL,
  `S6E9` int(11) DEFAULT NULL,
  `S6E10` int(11) DEFAULT NULL,
  `S7E1` int(11) DEFAULT NULL,
  `S7E2` int(11) DEFAULT NULL,
  `S7E3` int(11) DEFAULT NULL,
  `S7E4` int(11) DEFAULT NULL,
  `S7E5` int(11) DEFAULT NULL,
  `S7E6` int(11) DEFAULT NULL,
  `S7E7` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `character_positions`
--

INSERT INTO `character_positions` (`Character ID`, `S1E0`, `S1E1`, `S1E2`, `S1E3`, `S1E4`, `S1E5`, `S1E6`, `S1E7`, `S1E8`, `S1E9`, `S1E10`, `S2E1`, `S2E2`, `S2E3`, `S2E4`, `S2E5`, `S2E6`, `S2E7`, `S2E8`, `S2E9`, `S2E10`, `S3E1`, `S3E2`, `S3E3`, `S3E4`, `S3E5`, `S3E6`, `S3E7`, `S3E8`, `S3E9`, `S3E10`, `S4E1`, `S4E2`, `S4E3`, `S4E4`, `S4E5`, `S4E6`, `S4E7`, `S4E8`, `S4E9`, `S4E10`, `S5E1`, `S5E2`, `S5E3`, `S5E4`, `S5E5`, `S5E6`, `S5E7`, `S5E8`, `S5E9`, `S5E10`, `S6E1`, `S6E2`, `S6E3`, `S6E4`, `S6E5`, `S6E6`, `S6E7`, `S6E8`, `S6E9`, `S6E10`, `S7E1`, `S7E2`, `S7E3`, `S7E4`, `S7E5`, `S7E6`, `S7E7`) VALUES
(1, 1, 1, 67, 67, 68, 68, 68, 68, 68, 68, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 3, 58, 27, 27, 27, 27, 27, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 4, 1, 1, 1, 1, 1, 1, 73, 109, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 5, 3, 3, 3, 3, 3, 3, 3, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 6, 59, 28, 28, 28, 28, 28, 28, 28, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 7, 60, 29, 29, 29, 29, 29, 29, 29, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 8, 73, 47, 58, 87, 87, 87, 106, 110, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 9, 4, 4, 4, 4, 4, 4, 4, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 51, 21, 61, 30, 30, 30, 30, 30, 30, 30, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 27, 22, 68, 68, 59, 88, 91, 91, 97, 98, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 28, 23, 62, 31, 31, 31, 31, 97, 111, 111, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 29, 24, 63, 32, 32, 32, 32, 51, 51, 51, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 30, 25, 64, 51, 51, 51, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 52, 52, 74, 79, 84, 84, 84, 84, 102, 102, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 57, 57, 75, 80, 85, 85, 85, 85, 103, 103, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 54, 54, 76, 81, 86, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 55, 55, 77, 82, 83, 83, 83, 83, 104, 104, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 31, 20, 65, 40, 40, 40, 40, 31, 31, 31, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 32, 19, 66, 38, 38, 38, 38, 32, 32, 32, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, 33, 33, 33, 33, 33, 33, 33, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, 34, 34, 34, 34, 34, 34, 34, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, 69, 69, 69, 69, 69, 69, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, 5, 5, 5, 5, 5, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, 89, 89, 89, 89, 89, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, 90, 90, 90, 90, 90, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, 92, 96, 96, 100, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `position_id_x_y`
--

CREATE TABLE `position_id_x_y` (
  `position_block_number` int(11) NOT NULL,
  `x_value` int(11) NOT NULL,
  `y_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `position_id_x_y`
--

INSERT INTO `position_id_x_y` (`position_block_number`, `x_value`, `y_value`) VALUES
(1, 6, 9),
(2, 5, 9),
(3, 5, 8),
(4, 5, 10),
(5, 6, 8),
(6, 6, 10),
(7, 7, 8),
(8, 7, 9),
(9, 7, 10),
(10, 4, 9),
(11, 4, 8),
(12, 4, 10),
(13, 4, 7),
(14, 4, 11),
(15, 5, 7),
(16, 5, 11),
(17, 6, 11),
(18, 6, 7),
(19, 7, 11),
(20, 7, 7),
(21, 8, 8),
(22, 8, 10),
(23, 8, 7),
(24, 8, 11),
(25, 8, 9),
(26, 8, 8),
(27, 19, 11),
(28, 21, 11),
(29, 19, 10),
(30, 20, 10),
(31, 21, 10),
(32, 19, 12),
(33, 20, 12),
(34, 21, 12),
(35, 18, 10),
(36, 18, 11),
(37, 18, 12),
(38, 22, 10),
(39, 22, 12),
(40, 22, 11),
(41, 19, 13),
(42, 20, 13),
(43, 21, 13),
(44, 19, 9),
(45, 20, 9),
(46, 21, 9),
(47, 18, 9),
(48, 22, 9),
(49, 22, 13),
(50, 18, 13),
(51, 20, 11),
(52, 20, 19),
(53, 19, 19),
(54, 21, 19),
(55, 20, 20),
(56, 19, 20),
(57, 21, 20),
(58, 15, 9),
(59, 16, 9),
(60, 14, 9),
(61, 15, 8),
(62, 16, 8),
(63, 16, 10),
(64, 14, 8),
(65, 14, 10),
(66, 15, 10),
(67, 1, 9),
(68, 1, 10),
(69, 1, 11),
(70, 2, 9),
(71, 2, 10),
(72, 2, 11),
(73, 11, 7),
(74, 22, 27),
(75, 23, 27),
(76, 22, 28),
(77, 23, 28),
(78, 23, 38),
(79, 23, 37),
(80, 22, 36),
(81, 22, 37),
(82, 23, 36),
(83, 17, 45),
(84, 16, 45),
(85, 17, 46),
(86, 16, 46),
(87, 15, 12),
(88, 15, 13),
(89, 16, 12),
(90, 16, 13),
(91, 15, 9),
(92, 20, 5),
(93, 21, 5),
(94, 21, 6),
(95, 20, 6),
(96, 18, 7),
(97, 19, 7),
(98, 17, 9),
(99, 18, 9),
(100, 17, 10),
(101, 18, 10),
(102, 24, 45),
(103, 25, 45),
(104, 24, 44),
(105, 25, 44),
(106, 11, 8),
(107, 12, 7),
(108, 12, 8),
(109, 16, 6),
(110, 16, 7),
(111, 17, 6),
(112, 17, 7),
(113, 3, 9),
(114, 3, 10);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`character_ID`),
  ADD UNIQUE KEY `Character Name` (`character_name`);

--
-- Indexen voor tabel `character_connections`
--
ALTER TABLE `character_connections`
  ADD PRIMARY KEY (`connection_ID`);

--
-- Indexen voor tabel `character_info`
--
ALTER TABLE `character_info`
  ADD UNIQUE KEY `character_ID_2` (`character_ID`),
  ADD KEY `character_ID` (`character_ID`);

--
-- Indexen voor tabel `character_positions`
--
ALTER TABLE `character_positions`
  ADD PRIMARY KEY (`Character ID`),
  ADD UNIQUE KEY `S6E2` (`S6E2`,`S6E3`,`S6E4`,`S6E5`,`S6E6`,`S6E7`,`S6E8`,`S6E9`,`S6E10`,`S7E1`,`S7E2`,`S7E3`,`S7E4`,`S7E5`,`S7E6`,`S7E7`),
  ADD UNIQUE KEY `S3E5` (`S3E5`,`S3E6`,`S3E7`,`S3E8`,`S3E9`,`S3E10`,`S4E1`,`S4E2`,`S4E3`,`S4E4`,`S4E5`,`S4E6`,`S4E7`,`S4E8`,`S4E9`,`S4E10`,`S5E1`,`S5E2`,`S5E3`,`S5E4`,`S5E5`,`S5E6`,`S5E7`,`S5E8`,`S5E9`,`S5E10`,`S6E1`),
  ADD UNIQUE KEY `S3E3` (`S3E3`),
  ADD UNIQUE KEY `S3E4` (`S3E4`),
  ADD UNIQUE KEY `S1E2` (`S1E2`),
  ADD UNIQUE KEY `S1E3` (`S1E3`,`S1E4`,`S1E5`,`S1E6`,`S1E7`,`S1E8`,`S1E9`,`S1E10`,`S2E1`,`S2E2`,`S2E3`,`S2E4`,`S2E5`,`S2E6`,`S2E7`,`S2E8`,`S2E9`,`S2E10`,`S3E1`,`S3E2`),
  ADD UNIQUE KEY `S1E2_2` (`S1E2`,`S1E3`,`S1E4`,`S1E5`,`S7E1`,`S7E2`,`S7E3`,`S7E4`,`S7E5`,`S7E6`,`S7E7`),
  ADD UNIQUE KEY `S1E1` (`S1E1`),
  ADD KEY `S1E4` (`S1E4`),
  ADD KEY `S1E5` (`S1E5`),
  ADD KEY `S1E1_2` (`S1E1`);

--
-- Indexen voor tabel `position_id_x_y`
--
ALTER TABLE `position_id_x_y`
  ADD PRIMARY KEY (`position_block_number`),
  ADD UNIQUE KEY `position_block_number` (`position_block_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
