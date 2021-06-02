-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2021 at 08:23 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `loginattempt`
--

CREATE TABLE `loginattempt` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `time_attempt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginattempt`
--

INSERT INTO `loginattempt` (`id`, `username`, `status`, `time_attempt`) VALUES
(1, '123@gmail.com', 1, '2021-05-30 21:07:15'),
(2, '123@gmail.com', 1, '2021-05-30 21:09:30'),
(3, '123@gmail.com', 1, '2021-05-30 21:16:02'),
(4, '123@gmail.com', -1, '2021-05-31 19:13:50'),
(5, '123@gmail.com', 1, '2021-05-31 19:15:09'),
(6, '123@gmail.com', -1, '2021-06-01 12:43:21'),
(7, 'akahle@gmail.com', 1, '2021-06-01 12:44:22'),
(8, '123@gmail.com', 1, '2021-06-01 15:39:51'),
(9, '123@gmail.com', -1, '2021-06-01 19:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `newsdb`
--

CREATE TABLE `newsdb` (
  `item_id` varchar(60) NOT NULL,
  `view_count` int(10) NOT NULL,
  `img` text NOT NULL,
  `item_type` text NOT NULL,
  `source` text NOT NULL,
  `author` text NOT NULL,
  `descr` text NOT NULL,
  `url` text NOT NULL,
  `content` text NOT NULL,
  `title` text NOT NULL,
  `date_uploaded` date NOT NULL,
  `time_uploaded` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsdb`
--

INSERT INTO `newsdb` (`item_id`, `view_count`, `img`, `item_type`, `source`, `author`, `descr`, `url`, `content`, `title`, `date_uploaded`, `time_uploaded`) VALUES
('1003197', 0, 'https://i.cbc.ca/1.6043873.1622204788!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_620/dino-colalillo-edgewood-furniture.jpg', 'story', 'CBC News', '', 'The federal government slapped tariffs on certain types of furniture made in Vietnam and China earlier this month, and the impact on consumers and retailers has been dramatic, with some items now costing almost four times what they did before.', 'https://www.cbc.ca/news/business/furniture-tariffs-1.6043863', 'With more than 40 years of experience, Love Dodd of Victoria thought he had seen everything the furniture business could throw at him.\r\nBut even he almost jumped out of his chair when he saw the size… [+8231 chars]', 'Thinking of buying a new couch? The price may have just quadrupled - CBC.ca', '2021-05-31', '03:42:02'),
('1194010', 4, 'https://www.sportsnet.ca/wp-content/uploads/2021/05/islanders-game-2.jpg', 'story', 'Sportsnet.ca', 'Iain MacIntyre', 'Physical would be understating it. The Boston Bruins and New York Islanders are engaged in a heavyweight slugfest, two formidable teams going head-to-head in what`s shaping up to be a test of survival.', 'https://www.sportsnet.ca/nhl/article/islanders-take-game-2-clash-bruins-shapes-test-survival/', 'The New York Islanders and Boston Bruins played a fantastic playoff game Monday night, and Auston Matthews and Mitch Marner didnt score in that one either.\r\nBut Casey Cizikas did.\r\nThe veteran energy… [+7043 chars]', 'Islanders take Game 2 as clash with Bruins shapes up to be test of survival - Sportsnet.ca', '2021-06-01', '05:38:00'),
('1196737', 0, 'https://images.glaciermedia.ca/polopoly_fs/1.24325184.1622521217!/fileImage/httpImage/image.jpg_gen/derivatives/facebookogimage_560_292/tc-250765-web-05312021-covid-update-1-jpg.jpg', 'story', 'Times Colonist', 'Cindy E. Harnett', 'A case of a rare blood clot linked to the AstraZeneca vaccine — the province’s third — has been reported in Island Health.The man, who in his 30s, is receiving treatment and recovering in hospital, . . .', 'https://www.timescolonist.com/news/local/b-c-s-third-case-of-rare-covid-vaccine-related-blood-clot-reported-in-island-health-1.24325181', 'A case of a rare blood clot linked to the AstraZeneca vaccine the provinces third has been reported in Island Health.\r\nThe man, who in his 30s, is receiving treatment and recovering in hospital, prov… [+3077 chars]', 'B.C.`s third case of rare COVID vaccine-related blood clot reported in Island Health - Times Colonist', '2021-05-31', '11:01:00'),
('1203446', 1, 'https://i2.wp.com/nasilemaktech.com/wp-content/uploads/2021/05/Arm_Computex_2021_Event_Banner_1140x695.png', 'story', 'Nasilemaktech.com', '', 'Arm`s keynote at COMPUTEX 2021 is not purely about product announcement or updates to the company, it was about sending a message delivered in 4 major points. We`ve round it up and summarized it here.', 'https://nasilemaktech.com/computex-2021-arm-1st-keynote-summary/', 'Arm’s keynote at COMPUTEX 2021 is not purely about product announcement or updates to the company, it was about sending a message delivered in 4 major points. We’ve round it up and summarized it here… [+1775 chars]', 'Simon Segars delivers 4 key points during Arm`s 1st keynote at COMPUTEX 2021 - Nasi Lemak Tech', '2021-06-01', '02:00:51'),
('1481364', 0, 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/8f3bb112fecff52a0839d387a7f9d2ef.jpg', 'story', 'Gizmodo.com', 'Florence Ion', 'More than 60 new laptops are coming this year.', 'https://gizmodo.com/intel-beefs-up-11th-gen-laptop-processors-with-better-g-1846985639', 'Intel revealed new additions to its 11th-gen mobile processor lineup as part of this years virtual Computex show. The processors are based on Intels Evo platform and feature integrated Iris Xe graphi… [+3312 chars]', 'Intel Beefs Up 11th-Gen Laptop Processors With Better Graphics and Faster Wifi - Gizmodo', '2021-05-31', '03:42:03'),
('167990', 0, 'https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=%5B1040%2C293%5D&w=2000&h=1000&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2021%2F03%2F31%2FMare-of-Easttown.jpg', 'story', 'Entertainment Weekly', 'Joey Nolfi', 'The Oscar winner says she was determined to make the grizzled detective look as real and hardened as possible.', 'https://ew.com/tv/kate-winslet-mare-of-easttown-sex-scene/', 'The woman behind HBO`s limited seriesMare of Easttownwas willing to bare it all for the critically lauded murder-mystery show.\r\nIn a New York Times interview published hours after Sunday`s shocking s… [+1957 chars]', 'Kate Winslet didn`t let `Mare of Easttown` crew cut her `bulgy bit of belly` from sex scene - Entertainment Weekly News', '2021-05-31', '11:05:00'),
('1890979', 0, 'https://www.ctvnews.ca/polopoly_fs/1.5450359.1622497695!/httpImage/image.jpg_gen/derivatives/landscape_620/image.jpg', 'story', 'Ctvnews.ca', 'Josef Federman', 'Israel`s defense minister on Monday distanced himself from comments made by his military chief after Israel bombed a Gaza Strip high-rise housing an Associated Press office and other news outlets, saying the remarks were not meant to be taken literally.', 'https://www.ctvnews.ca/world/israeli-official-rolls-back-army-chief-comments-on-ap-gaza-1.5450342', 'JERUSALEM -- \r\nIsrael`s defense minister on Monday distanced himself from comments made by his military chief after Israel bombed a Gaza Strip high-rise housing an Associated Press office and other n… [+2400 chars]', 'Israeli official rolls back army chief comments on AP Gaza - CTV News', '2021-05-31', '09:49:00'),
('2146811', 0, 'https://www.castanet.net/content/2021/5/20210530160524-60b3f531ca795630d62aa0dejpeg_p3533423._p3533629.jpg', 'story', 'Castanet.net', '', 'Canadians are in no rush to head back to the office even as COVID-19 cases and deaths continue to decline across the country, a new survey suggests.', 'https://www.castanet.net/news/Poll/335558/If-given-the-choice-do-you-prefer-to-work-from-home-', 'Canadians are in no rush to head back to the office even as COVID-19 cases and deaths continue to decline across the country, a new survey suggests.\r\nA recent poll by Leger and the Association for Ca… [+850 chars]', 'If given the choice, do you prefer to work from home? - Castanet.net', '2021-06-01', '02:32:00'),
('2185667', 5, 'https://smartcdn.prod.postmedia.digital/nationalpost/wp-content/uploads/2021/05/Cherie-Wong-1.png', 'story', 'National Post', 'Jesse Snyder', 'China has sought to exert control over foreign politicians, academics, media, and other institutions in an attempt to grow its geopolitical position, the…', 'https://nationalpost.com/news/canada/china-exporting-their-authoritarianism-overseas-through-canadian-institutions-hong-kong-advocate-warns', 'China has sought to exert control over foreign politicians, academics, media, and other institutions in an attempt to grow its geopolitical position, the committee heard \r\nJesse Snyder\r\nCherie Wong, … [+7466 chars]', 'China `exporting their authoritarianism overseas` through Canadian institutions, Hong Kong advocate warns - National Post', '2021-06-01', '02:52:32'),
('2589985', 0, '', 'story', 'CanIndia News', '', 'After workers accused the company of censoring pro-Palestine content, Facebook-owned Instagram has tweaked its algorithms that will begin ranking original', 'https://www.canindia.com/instagram-tweaks-algorithm-after-censoring-pro-palestinian-content/', 'After workers accused the company of censoring pro-Palestine content, Facebook-owned Instagram has tweaked its algorithms that will begin ranking original and re-shared content equally.\r\nThe employee… [+1316 chars]', 'Instagram tweaks algorithm after `censoring` pro-Palestinian content - CanIndia News', '2021-05-31', '03:42:02'),
('2815743', 0, 'https://www.aljazeera.com/wp-content/uploads/2021/05/2021-05-09T082910Z_1645306009_RC28CN9ZCJQJ_RTRMADP_3_HEALTH-CORONAVIRUS-PERU-GRIEF.jpg?resize=1200%2C630', 'story', 'Al Jazeera English', 'Al Jazeera', 'A government review finds that 180,764 died from the disease – almost triple the previous official figure of 69,342.', 'https://www.aljazeera.com/news/2021/5/31/peru-adjusts-covid-19-death-toll-to-over-180000', 'Peru has announced a sharp increase in its COVID-19 death toll, giving the South American nation the worst coronavirus-related death rate per capita in the world.\r\nIn an announcement from the preside… [+3369 chars]', 'Peru adjusts COVID-19 death toll, now highest per capita overall - Al Jazeera English', '2021-05-31', '11:26:15'),
('3023562', 0, '', 'story', 'Google News', '', '', 'https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9VS1EMm5XNjQ0bGPSAQA?oc=5', '', 'William Nylander Spoils Carey Price`s Shutout With Late Consolation Goal - SPORTSNET', '2021-06-01', '01:41:19'),
('3031190', 0, 'https://www.geo.tv/assets/uploads/updates/2021-05-31/352736_124037_updates.jpg', 'story', 'Www.geo.tv', 'Web Desk', 'Ed Sheeran and Courteney Cox joined forces to recreate the iconic “routine” from `Friends`', 'https://www.geo.tv/latest/352736-ed-sheeran-and-courteney-cox-recreate-the-iconic-routine-from-friends', 'British singer Ed Sheeran and American actor Courteney Cox have a special treat for all Friends fans.\r\nThe two stars joined forces to recreate the iconic routine from the classic nineties sitcom, ori… [+494 chars]', 'Ed Sheeran and Courteney Cox recreate the iconic routine from Friends - Geo News', '2021-05-31', '03:42:02'),
('3371742', 0, 'https://i.guim.co.uk/img/media/03296e4ddb5aec6151d5f135121aadd99d6812c0/0_420_5058_3034/master/5058.jpg?width=1200&height=630&quality=85&auto=format&fit=crop&overlay-align=bottom%2Cleft&overlay-width=100p&overlay-base64=L2ltZy9zdGF0aWMvb3ZlcmxheXMvdGctZGVmYXVsdC5wbmc&enable=upscale&s=74658a44cd2edcb39c90bc3e10b7e24d', 'story', 'The Guardian', 'Guardian staff reporter', 'First Nations groups say giving children a proper burial will help families find closure following discovery of 215 bodies at Kamloops school', 'https://amp.theguardian.com/world/2021/jun/01/calls-to-find-all-canadas-indigenous-mass-graves-after-grim-residential-school-discovery', 'Indigenous groups in Canada are calling for a nationwide search for mass graves at residential school sites after the discovery of the remains of more than 200 children at one former school last week… [+4937 chars]', 'Calls to find all Canada’s Indigenous mass graves after grim residential school discovery - The Guardian', '2021-06-01', '01:34:00'),
('3579021', 0, 'https://images.indianexpress.com/2021/06/frog.jpg', 'story', 'The Indian Express', 'Dipanita Nath', 'The species is called Litoria mira, inspired by the Latin adjective mirum, which means surprised or strange, stemming from the scientist’s surprise in discovering an undescribed member of the predominately Australian Litoria genus of tree frogs.', 'https://indianexpress.com/article/explained/litoria-mira-frog-species-7338983/', 'A species of frog lives in the rainforests of New Guinea that appears to be made from chocolate just like the magical sweets popular in the wizarding world of J K Rowlings Harry Potter.\r\nAn Australia… [+2429 chars]', 'Explained: Meet the Litoria mira, real-life version of Harry Potter’s chocolate frogs - The Indian Express', '2021-06-01', '02:28:43'),
('3656726', 0, 'https://news.google.com/pageCount.htm?type=read&articleId=24829089', 'story', 'Swordstoday.ie', 'Jake Pearson', 'After two decades of research, NASA has released an image describing the ``violent energy`` that is not found at the center of our galaxy. CNN.The stunning', 'https://swordstoday.ie/a-new-nasa-photo-shows-the-violent-energy-of-our-galaxy-this-is-evidence-of-a-continuum-of-magnetic-field-reconnection-space/', 'After two decades of research, NASA has released an image describing the “violent energy” that is not found at the center of our galaxy. CNN.The stunning panorama was compiled using data from NASA’s … [+2038 chars]', 'A new NASA photo shows the ``violent energy`` of our galaxy / ``This is evidence of a continuum of magnetic field reconnection`` - Space - SwordsToday.ie', '2021-05-31', '03:42:02'),
('4076132', 0, 'https://www.aljazeera.com/wp-content/uploads/2021/05/2021-05-31T193906Z_964628406_RC27RN9APJ90_RTRMADP_3_TENNIS-FRENCHOPEN.jpg?resize=1160%2C630', 'story', 'Al Jazeera English', 'Al Jazeera', 'Osaka withdrawing from the French Open following the bitter fallout from her decision to boycott all media activity.', 'https://www.aljazeera.com/news/2021/5/31/naomi-osaka-french-open-withdrawal-statement-in-full', 'Hey everyone, this isnt a situation I ever imagined or intended when I posted a few days ago. I think now the best thing for the tournament, the other players and my wellbeing is that I withdraw so t… [+1675 chars]', 'Naomi Osaka: French Open withdrawal statement in full - Al Jazeera English', '2021-05-31', '08:45:35'),
('4151128', 0, 'https://basketball.realgm.com/images/nba/4.2/wiretap/photos/2006/Paul_Chris_phx_201230.jpg', 'story', 'Realgm.com', '', '', 'https://basketball.realgm.com/wiretap/262767/Monty-Williams-Planned-To-Sit-Chris-Paul-For-Game-4-But-Had-To-Trust-The-Player', 'Monty Williams originally planned to sit Chris Paul for the Phoenix Suns` 100-92 win over of the Los Angeles Lakers in Game 4.\r\n``He said, `Coach, let me start, and if you don`t think I`m looking like… [+540 chars]', 'Monty Williams Planned To Sit Chris Paul For Game 4 But `Had To Trust The Player` - RealGM.com', '2021-05-31', '03:42:03'),
('4229853', 0, 'https://i.itbusiness.ca/wp-content/uploads/2018/01/ht_banner-hashtag-trending.jpg', 'story', 'ITBusiness.ca', 'Alex Coop', 'A lawsuit against Google gets class-action status, Iran bans cryptomining after rolling blackouts, and unredacted documents show Google made it hard to', 'https://www.itbusiness.ca/news/hashtag-trending-may-31-2021-600m-class-action-lawsuit-against-google-iran-bans-cryptomining-googles-collection-of-location-data/118286', 'A lawsuit against Google gets class-action status, Iran bans cryptomining after rolling blackouts, and unredacted documents show Google made it hard to keep location data private.\r\nIts all the biz/te… [+3018 chars]', 'Hashtag Trending, May 31, 2021 - $600M class-action lawsuit against Google; Iran bans cryptomining; Google’s collection of location data - ITBusiness.ca', '2021-05-31', '03:42:02'),
('4515014', 0, 'https://i.cbc.ca/1.4733413.1598369030!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_620/mars-dust-storm.jpg', 'story', 'CBC News', '', 'Researchers from Western University in London, Ont., have found a unique subsurface ice feature in a location that would be optimal for future explorers of the Red Planet.', 'https://www.cbc.ca/news/science/glaciers-mars-arcadia-planitia-1.6044691', 'If humans are to truly become interplanetary settlers, we`re going to need to have access to water a lot of it. But loading it on a rocket would be heavy, and trying to escape Earth`s gravity with al… [+4296 chars]', 'Newly discovered glaciers on Mars may help humans settle on the Red Planet one day - CBC.ca', '2021-05-31', '03:42:02'),
('4982838', 0, 'https://images.thestar.com/raOgXQ3P_j0DNk3-KRTQerBl3hI=/1200x838/smart/filters:cb(1622409651785)/https://www.thespec.com/content/dam/thespec/news/hamilton-region/2021/05/30/covid-hamilton-latest-news/signs.jpg', 'story', 'TheSpec.com', '', 'Three deaths reported over weekend including a person in their 40s.', 'https://www.thespec.com/news/hamilton-region/2021/05/30/covid-hamilton-latest-news.html', 'Hamilton’s COVID-19 cases continued to drop over the weekend even as the city reported more deaths and cases of new variants.\r\nTwo deaths were reported on Sunday, one of a person in their 60s and ano… [+2319 chars]', 'COVID cases continue to drop as Hamilton reports new unknown variant - TheSpec.com', '2021-05-31', '03:42:03'),
('4984170', 0, 'https://s.yimg.com/os/creatr-uploaded-images/2021-06/fbb1bb20-c285-11eb-9a8f-cbb712015476', 'story', 'Yahoo Entertainment', 'Devindra Hardawar', 'Tesla`s refreshed Model S and X will run AMD`s RDNA 2 graphics.', 'https://ca.news.yahoo.com/teslas-new-model-s-x-rdna2-gpu-amd-030917029.html', 'The latest numbers on COVID-19 vaccinations in Canada as of 4:00 a.m. ET on Monday May 31, 2021. In Canada, the provinces are reporting 315,187 new vaccinations administered for a total of 23,471,446… [+8175 chars]', 'Tesla`s revamped Model S and X will feature RDNA 2 GPUs, AMD confirms - Yahoo Movies Canada', '2021-06-01', '03:18:43'),
('5407902', 0, 'http://ampvideo.bnnbloomberg.ca/polopoly_fs/1.1608681!/fileimage/httpImage/image.jpg_gen/derivatives/landscape_620/cracking-towers-stand-at-the-ruwais-refinery-and-petrochemical-complex-operated-by-abu-dhabi-national-oil-co-adnoc-in-al-ruwais-united-arab-emirates-on-monday-may-14-2018-adnoc-is-seeking-to-create-world-s-largest-integrated-refinery-and-petrochemical-complex-at-ruwais.jpg', 'story', 'BNNBloomberg.ca', 'Bloomberg News', 'Oil climbed for a second month as OPEC and its allies forecast that inventories will fall sharply this year if the group sticks to its plan.', 'http://ampvideo.bnnbloomberg.ca/oil-edges-higher-with-market-set-to-focus-on-opec-policy-meet-1.1610616', 'Oil climbed for a second month as OPEC and its allies forecast that inventories will fall sharply this year if the group sticks to its plan.\r\nFutures rose 0.9 per cent on Monday in New York, bringing… [+2218 chars]', 'Oil gains as OPEC+ forecasts crude stockpiles will drop sharply - BNN', '2021-05-31', '08:29:09'),
('5571022', 6, '', 'story', 'Google News', '', '', 'https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9S2VpUmIxYUdFb2vSAQA?oc=5', '', 'COVID-19: Manitoba doctors call for complete lockdown as hospitals reach breaking point - Global News', '2021-06-01', '02:30:08'),
('5698562', 0, 'https://smartcdn.prod.postmedia.digital/calgaryherald/wp-content/uploads/2021/05/PatioOpenings015-copy.jpg', 'story', 'Calgary Herald', 'Madeline Smith', 'Alberta’s reopening plan takes a step forward today, but city council heard Monday that there are still big questions looming for Calgary.', 'https://calgaryherald.com/news/local-news/nenshi-calls-for-massively-expanded-pop-up-vaccine-clinics-as-stage-1-reopening-starts-tuesday', 'Madeline Smith, Stephanie Babych\r\nChris Miller, husband of the co-owner, sets up the patio at the Seed N Salt on 4th Ave. S.W. for the June 1 openings in Calgary on Monday, May 31, 2021.Photo by Darr… [+7372 chars]', 'Nenshi calls for `massively expanded` pop-up vaccine clinics as Stage 1 reopening starts Tuesday - Calgary Herald', '2021-06-01', '01:41:15'),
('5839169', 0, 'https://www.sportsnet.ca/wp-content/uploads/2021/05/clippers-mavs.jpg', 'story', 'Sportsnet.ca', 'Associated Press', 'Kawhi Leonard and Paul George combined to carry Los Angeles on the road again, and the Clippers are back in control of their first-round series with Dallas.', 'https://www.sportsnet.ca/nba/article/clippers-take-back-control-series-big-win-mavericks/', 'DALLAS — A little cat-and-mouse game between the coaches over the size of the lineups didn’t amount to much, as entertaining as it was early for another boisterous crowd in Dallas.\r\nThe big dogs of t… [+5178 chars]', 'Clippers take back control of series with big win over Mavericks - Sportsnet.ca', '2021-05-31', '03:42:02'),
('6042329', 0, 'https://i.cbc.ca/1.6047795.1622498570!/cpImage/httpImage/image.jpg_gen/derivatives/16x9_620/covid-ont-20210301.jpg', 'story', 'CBC News', '', 'The doctor who will guide Ontario`s path out of the COVID-19 pandemic is being described by colleagues and friends as a competent public health expert, straight shooter and excellent communicator.', 'https://www.cbc.ca/news/canada/toronto/ont-kieran-moore-1.6047776', 'The doctor who will guide Ontario`s path out of the COVID-19 pandemic is being described by colleagues and friends as a competent public health expert, straight shooter and excellent communicator.\r\nD… [+5542 chars]', '`He`ll give you a straight answer,` colleagues say of Ontario`s next top doctor - CBC.ca', '2021-05-31', '11:25:13'),
('6134388', 15, '', 'story', 'Google News', '', '', 'https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9aTNjTm5tUFFNU2vSAQA?oc=5', '', 'Trudeau says more help coming for residential school survivors - CBC News', '2021-06-01', '01:04:38'),
('667483', 12, 'https://www.ctvnews.ca/polopoly_fs/1.5449305.1622451268!/httpImage/image.jpg_gen/derivatives/landscape_620/image.jpg', 'story', 'Ctvnews.ca', 'Joe Mcdonald', 'China`s ruling Communist Party said Monday it will ease birth limits to allow all couples to have three children instead of two in hopes of slowing the rapid aging of its population, which is adding to strains on the economy and society.', 'https://www.ctvnews.ca/world/china-easing-birth-limits-further-to-cope-with-aging-society-1.5449304', 'BEIJING -- \r\nChina`s ruling Communist Party said Monday it will ease birth limits to allow all couples to have three children instead of two in hopes of slowing the rapid aging of its population, whi… [+4368 chars]', 'China easing birth limits further to cope with aging society - CTV News', '2021-05-30', '03:42:02'),
('7048907', 0, 'https://www.ctvnews.ca/polopoly_fs/1.5448778.1622396891!/httpImage/image.png_gen/derivatives/landscape_620/image.png', 'story', 'Ctvnews.ca', '', 'Two days after the remains of 215 children were found buried near a former residential school in Kamloops, B.C., the country is making small steps to acknowledge the enormity of the horrific discovery, including the federal government announcing it would be l…', 'https://www.ctvnews.ca/canada/tiny-shoes-and-lowered-flags-memorials-spread-for-215-first-nations-children-found-buried-in-mass-grave-in-b-c-1.5448699', '', 'Tiny shoes and lowered flags: Memorials spread for 215 First Nations children found buried in mass grave in B.C. - CTV News', '2021-05-31', '03:42:03'),
('7059441', 0, 'https://www.straight.com/files/v3/styles/gs_feature/public/images/21/05/51215680462_83e2326489_c.jpg?itok=Wk7sABFv', 'story', 'Straight.com', '', 'A total of 12 children received the Moderna vaccine by mistake.', 'https://www.straight.com/covid-19-pandemic/may-31-coronavirus-update-bc-vancouver-vaccine-error-among-youth-recipients-one-new-bloodclotting-case-and-more', 'With B.C.s reopening plan underway, this week, as B.C. provincial health officer Dr. Bonnie Henry noted at todays briefing, B.C. will begin to see any cases that may have been contracted among those … [+7137 chars]', 'COVID-19 in B.C.: Vaccine error among youth; one new blood-clot case; outbreak at one school; and more - The Georgia Straight', '2021-06-01', '12:50:00'),
('7080354', 0, 'https://img.buzzfeed.com/buzzfeed-static/static/2021-05/31/3/campaign_images/976d68fe3db8/what-will-we-do-without-mare-of-easttown-2-3868-1622430478-8_dblbig.jpg?resize=1200:*', 'story', 'BuzzFeed News', 'Estelle Tang', 'The HBO whodunit replaced the Sunday scaries with prime appointment TV. Here’s why it worked so well.', 'https://www.buzzfeednews.com/article/estelletang/mare-of-easttown-finale-season-1-review', 'On Sunday night, HBO crime drama Mare of Easttown came to an end. Boasting Kate Winslet in the title role, twisty plotlines, and breakneck pacing, the series earned fans aplenty over the course of it… [+15777 chars]', 'What Will We Do Without ``Mare Of Easttown``? - BuzzFeed News', '2021-05-31', '03:42:02'),
('7108878', 0, 'https://smartcdn.prod.postmedia.digital/vancouversun/wp-content/uploads/2021/05/health-coronavirus-waiver-stocks.jpg', 'story', 'Vancouver Sun', 'The Canadian Press', 'The health authority says the errors happened Friday and Saturday during the first full week that kids aged 12 to 17 could get their first dose.', 'https://vancouversun.com/news/local-news/a-dozen-kids-mistakenly-given-the-wrong-covid-19-vaccine-in-vancouver', 'Article content\r\nVancouver Coastal Health is apologizing and says its updating its immunization processes after confirming a dozen incidents in which youth were given the wrong COVID-19 vaccine.\r\nThe… [+2201 chars]', 'COVID-19: A dozen kids mistakenly given the wrong vaccine in Vancouver - Vancouver Sun', '2021-06-01', '12:33:45'),
('7847637', 12, 'https://www.vmcdn.ca/f/files/shared/feeds/cp/2021/05/20210530220540-60b44cb004e8b3fdfb8303e0jpeg.jpg;w=650;h=466;mode=crop', 'story', 'Dawson Creek Mirror', 'Canadian Press', 'The latest numbers on COVID-19 vaccinations in Canada as of 4:00 a.m. ET on Monday May 31, 2021. In Canada, the provinces are reporting 315,187 new vaccinations administered for a total of 23,471,446 doses given. Nationwide, 2,012,849 people or 5.', 'https://www.dawsoncreekmirror.ca/national-news/a-look-at-covid-19-vaccinations-in-canada-on-may-31-2021-3824140', 'The latest numbers on COVID-19 vaccinations in Canada as of 4:00 a.m. ET on Monday May 31, 2021.\r\nIn Canada, the provinces are reporting 315,187 new vaccinations administered for a total of 23,471,44… [+8192 chars]', 'A look at COVID-19 vaccinations in Canada on May 30, 2021 - Dawson Creek Mirror', '2021-05-31', '03:42:02'),
('7896753', 0, 'https://ml.globenewswire.com/Resource/Download/9782a337-07ac-424b-9c5a-f9cde47d8d55?size=1', 'story', 'GlobeNewswire', 'Advanced Micro Devices, Inc.', '— Keynote highlights company’s growing momentum, strong and expanding set of partners, and breakthrough AMD technologies powering gaming, PCs and the...', 'https://www.globenewswire.com/news-release/2021/06/01/2239108/0/en/AMD-Showcases-Industry-Leading-Innovation-Across-the-High-Performance-Computing-Ecosystem-at-COMPUTEX-2021.html', 'Keynote highlights companys growing momentum, strong and expanding set of partners, and breakthrough AMD technologies powering gaming, PCs and the data center \r\nSANTA CLARA, Calif., May 31, 2021 (GLO… [+14044 chars]', 'AMD Showcases Industry-Leading Innovation Across the High-Performance Computing Ecosystem at COMPUTEX 2021 - GlobeNewswire', '2021-06-01', '03:00:00'),
('7901688', 0, 'https://www.theglobeandmail.com/resizer/0W-UOwbjt6kewEXxJ0tZ-VMipvY=/1200x0/filters:quality(80)/cloudfront-us-east-1.images.arcpublishing.com/tgam/26GE2GC2SRCSZKB7Y4T6XLBY7A.jpg', 'story', 'The Globe And Mail', 'Leslie Beck', 'Findings from a four-year randomized controlled trial indicate that the combination of healthy eating and regular aerobic exercise improves cognitive prowess in middle-aged and older adults', 'https://www.theglobeandmail.com/life/health-and-fitness/article-a-healthy-diet-plus-aerobic-exercise-preserves-cognition/', 'Findings from a four-year randomized controlled trial indicate that the combination of healthy eating and regular aerobic exercise improves cognitive prowess in middle-aged and older adults.\r\nISTOCKP… [+4820 chars]', 'A healthy diet plus aerobic exercise preserves cognition - The Globe and Mail', '2021-05-31', '03:42:01'),
('8122061', 0, 'https://i.cbc.ca/1.5520668.1621648866!/fileImage/httpImage/image.jpeg_gen/derivatives/16x9_620/amazon-warehouse-ottawa.jpeg', 'story', 'CBC News', '', 'An Amazon employee says working at the distribution giant’s Ottawa warehouse during the pandemic has been a nerve-racking experience, saying some safety measures have been ignored and dozens of workers have tested positive.', 'https://www.cbc.ca/news/canada/ottawa/ottawa-amazon-warehouse-covid-19-1.6024241', 'An Amazon employee says working at the distribution giant`s Ottawa warehouse during the pandemic has been a nerve-racking experience, citing examples of safety measures that were allegedly ignored an… [+6529 chars]', '`Terrified` Amazon employee speaks out about lax COVID-19 precautions - CBC.ca', '2021-05-31', '03:42:01'),
('8321082', 0, 'https://assets.stockhouse.com/kentico-cms/0251-00/images/stockhouse-logo-og.png', 'story', 'Stockhouse', 'Stockhouse.com', 'NVIDIA RTX Titles Jump to 130 on Widespread Industry Adoption of Ray Tracing, NVIDIA DLSS', 'https://stockhouse.com/news/press-releases/2021/06/01/nvidia-rtx-titles-jump-to-130-on-widespread-industry-adoption-xa0-of-ray', '‘DOOM Eternal&amp;CloseCurlyQuote;, ‘Rainbow Six Siege&amp;CloseCurlyQuote; and ‘Red Dead Redemption 2&amp;CloseCurlyQuote; Among Latest RTX Titles; NVIDIA Reflex in 12 of Top 15 Competitive Shooters… [+9721 chars]', 'NVIDIA RTX Titles Jump to 130 on Widespread Industry Adoption of Ray Tracing, NVIDIA DLSS - Stockhouse', '2021-06-01', '05:11:00'),
('8509736', 0, 'https://i.cbc.ca/1.6046318.1622407204!/fileImage/httpImage/image.JPG_gen/derivatives/16x9_620/israel-politics.JPG', 'story', 'CBC News', '', 'On Sunday, right-wing nationalist party leader Naftali Bennett announced a deal with centrist Yair Lapid to form a new `unity government` to end the political upheaval in Israel. If successful, it would mark the end of Benjamin Netanyahu`s current 12-year run…', 'https://www.cbc.ca/news/world/israel-netanyahu-coalition-government-1.6046255', 'A flurry of promises, backroom deal-making and last-minute shifts in political allegiance marked what seems to be the final days of Benjamin Netanyahu`s long tenure as prime minister of Israel.\r\nWhen… [+6764 chars]', 'Benjamin Netanyahu`s days leading Israel could be numbered as new coalition forms - CBC.ca', '2021-05-31', '03:42:02'),
('8811567', 0, 'https://www.ctvnews.ca/polopoly_fs/1.5307810.1613192243!/httpImage/image.jpg_gen/derivatives/landscape_620/image.jpg', 'story', 'Ctvnews.ca', 'Lee Berthiaume', 'Canada is set to receive 2.9 million COVID-19 vaccine doses this week thanks in large part to an increase in planned deliveries from Pfizer and BioNTech.', 'https://www.ctvnews.ca/health/coronavirus/canada-to-receive-2-9m-vaccine-doses-this-week-as-pfizer-biontech-increase-deliveries-1.5449303', 'OTTAWA -- \r\nCanada is set to receive 2.9 million COVID-19 vaccine doses this week thanks in large part to an increase in planned deliveries from Pfizer and BioNTech.\r\nThe two pharmaceutical companies… [+2566 chars]', 'Canada to receive 2.9M vaccine doses this week as Pfizer-BioNTech increase deliveries - CTV News', '2021-05-31', '03:42:02'),
('9071124', 0, 'https://www.theglobeandmail.com/resizer/H-6YYY8VALbncJftY4xghtN1m90=/1200x0/filters:quality(80)/cloudfront-us-east-1.images.arcpublishing.com/tgam/TKPVTEQUQFN47EZAB7ISSEQZBI.jpg', 'story', 'The Globe And Mail', '', 'Vaccinating at least 90 per cent of eligible Canadians against COVID-19 could tip the balance against new, more infectious variants much better than the 75-per-cent uptake Ottawa is pushing for. Here’s how things could play out', 'https://www.theglobeandmail.com/canada/article-how-many-doses-will-make-the-difference-between-a-canadian-fourth-wave/', 'Femia Gabiana, a licensed practical nurse at B.C.`s Fraser Health region, administers a first dose of Pfizer vaccine at a walk-in vaccination clinic at Bear Creek Park in Surrey, B.C.\r\nDarryl Dyck/Th… [+13580 chars]', 'How many COVID-19 vaccine doses could make the difference between a fourth wave in Canada and no wave at all? New models offer four scenarios - The Globe and Mail', '2021-05-31', '03:42:02'),
('9361591', 1, 'https://www.theglobeandmail.com/resizer/OYMu5IuLzkgCeo8O5kBCZbIY8KM=/1200x0/filters:quality(80)/cloudfront-us-east-1.images.arcpublishing.com/tgam/BYRGC4M5RZHWTBXNHBGGNZAM64.jpg', 'story', 'The Globe And Mail', '', 'In a season full of promise, Toronto’s playoff woes carry on for another year courtesy of a first round exit against the Montreal Canadiens', 'https://www.theglobeandmail.com/sports/article-canadiens-advance-maple-leafs-fall-in-game-7-again-as-history-repeats/', 'Jake Evans (71) of the Montreal Canadiens skates the puck ahead of Auston Matthews (34) of the Toronto Maple Leafs during Game 7 at Scotiabank Arena on May 31, 2021 in Toronto, Ont.\r\nClaus Andersen/G… [+5202 chars]', 'Canadiens advance, Maple Leafs fall in Game 7 again as history repeats itself - The Globe and Mail', '2021-06-01', '02:22:47'),
('9377450', 5, '', 'story', 'Google News', '', '', 'https://news.google.com/__i/rss/rd/articles/CBMieWh0dHBzOi8vd3d3LnNwYWNlZmxpZ2h0aW5zaWRlci5jb20vbWlzc2lvbnMvc29sYXItc3lzdGVtL25hc2EtcmVsZWFzZXMtM2QtdmlkZW8tb2YtaW5nZW51aXR5LW1hcnMtaGVsaWNvcHRlcnMtM3JkLWZsaWdodC_SAQA?oc=5', '', 'NASA releases 3D video of Ingenuity Mars Helicopter`s 3rd flight - SpaceFlight Insider', '2021-06-01', '01:54:46'),
('9414896', 0, 'https://i.cbc.ca/1.6044786.1622241551!/fileImage/httpImage/image.jpeg_gen/derivatives/16x9_620/tom-puglas.jpeg', 'story', 'CBC News', '', 'Tom Puglas, a First Nations elder on Vancouver Island, says he planned to repair his aging boat. But before he could — and without any warning, he says — the coast guard destroyed the boat, which it says was sinking and leaching oil. Now, a federal agency wan…', 'https://www.cbc.ca/news/indigenous/boat-destoryed-elder-1.6044730', 'Tom Puglas, 76, says he had just spent thousands of dollars on parts to fix the engine of his aging, second-hand fishing boat when he received a phone call from a friend in the fall of 2017 telling h… [+5630 chars]', 'The coast guard destroyed his boat without asking. Now, a federal agency wants him to pay $8,500 bill - CBC.ca', '2021-05-31', '03:42:02'),
('9918334', 0, '', 'story', 'Google News', '', '', 'https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9dzhnTXNiYTVlMlHSAQA?oc=5', '', 'COVID:19- Second vaccine dose announcement imminent - Edmonton Journal', '2021-05-31', '09:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `password` varchar(500) NOT NULL,
  `isadmin` int(1) NOT NULL,
  `isloggedin` int(1) NOT NULL,
  `about` text NOT NULL,
  `time_reg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `firstname`, `lastname`, `password`, `isadmin`, `isloggedin`, `about`, `time_reg`) VALUES
(1, 'abc@gmail.com', 'bbb', 'kjnkjnjk', 'ef51306214d9a6361ee1d5b452e6d2bb70dc7ebb85bf9e02c3d4747fb57d6bec', 0, 1, '0', '2021-05-30 20:57:09'),
(2, 'admin@gmail.com', 'aa', 'aa', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 0, 1, '0', '2021-05-30 20:59:51'),
(3, '123@gmail.com', '123', 'qwe', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0, 0, '0', '2021-05-30 21:01:34'),
(4, 'akahle@gmail.com', 'akahle', 'man', 'eebe8b5af6d2d5536e3cca806887b5428d44b9dde64428177942e33c3d2b8de9', 0, 1, '0', '2021-06-01 12:44:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loginattempt`
--
ALTER TABLE `loginattempt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsdb`
--
ALTER TABLE `newsdb`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginattempt`
--
ALTER TABLE `loginattempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
