INSERT INTO song VALUES (10001,'Michael Chaves','Billie Eilish','Billie Eilish ','bury a friend','Step on the glass, staple your tongue (Ahh)
Bury a friend, try to wake up (Ahh-ha)
Cannibal class, killin the son (Ahh)
Bury a friend, I wanna end me',NULL,'Electropop ','English');

INSERT INTO song VALUES (10002,'Michael Chaves','Billie Eilish','Billie Eilish ','bad guy','So you’re a tough guy
Like it really rough guy
Just can’t get enough guy
Chest always so puffed guy
I’m that bad type
Make your mama sad type
Make your girlfriend mad type
Might seduce your dad type
I’m the bad guy
Duh I’m the bad guy', NULL,'Pop','English');
INSERT INTO song VALUES (10003,'Tim Van Der Kuil','Adele','Adele','Hello', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10004,'David Hodges','Christiana Perri','David Hodges','A Thousand Years', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10005,'Matthew Sheeran','Ed Sheeran','Ed Sheeran','Perfect', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10006,'Nabil Elderkin','John Legend','John Legend','All of Me ', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10007,'Anthony Mandler','Rihanna','SIA','Diamonds', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10008,'Chris Applebaum','Rihanna','The Dream','Umbrella', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10009,'Luke Manoghan','Sam Smith','Sam Smith','Im Not The Only One', NULL, NULL,'Soul','English');
INSERT INTO song VALUES (10010,'Ryan Tedder','Beyonce','Beyonce','Halo', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10011,'Ryan Tedder','Beyonce','Beyonce','Disappear', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10012,'Ryan Tedder','Beyonce','Beyonce','Broken-Hearted Girl', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10013,'Ryan Tedder','Beyonce','Beyonce','Satellites', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10014,'Michael Chaves','Billie Eilish','Billie Eilish ','Xanny', NULL, NULL,'Electropop ','English');
INSERT INTO song VALUES (10015,'Michael Chaves','Billie Eilish','Billie Eilish ','You should see me in a crown', NULL, NULL,'Electropop ','English');
INSERT INTO song VALUES (10016,'Michael Chaves','Billie Eilish','Billie Eilish ','When the party is over', NULL, NULL,'Electropop ','English');
INSERT INTO song VALUES (10017,'Michael Chaves','Billie Eilish','Billie Eilish ','goodbye', NULL, NULL,'Electropop ','English');
INSERT INTO song VALUES (10018,'Matthew Sheeran','Ed Sheeran','Ed Sheeran','Castle on the Hill', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10019,'Matthew Sheeran','Ed Sheeran','Ed Sheeran','Shape of you', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10020,'Matthew Sheeran','Ed Sheeran','Ed Sheeran','Galway Girl', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10021,'Matthew Sheeran','Ed Sheeran','Ed Sheeran','Happier', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10022,'Chris Applebaum','Rihanna','The Dream','Jump', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10023,'Chris Applebaum','Rihanna','The Dream','Right Now(ft. David Guetta)', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10024,'Chris Applebaum','Rihanna','The Dream','Pour it up', NULL, NULL,'Pop','English');
INSERT INTO song VALUES (10025,'Chris Applebaum','Rihanna','The Dream','Get it over with', NULL, NULL,'Pop','English');



INSERT INTO album VALUES ('When We All Fall Asleep, Where Do We Go?',2001,'3/29/2019');
INSERT INTO album VALUES ('25',2002,'10/23/2015');
INSERT INTO album VALUES ('The Twilight Saga: Breaking Dawn - Part 1',2003,'10/18/2011');
INSERT INTO album VALUES ('Divide',2004,'3/3/2017');
INSERT INTO album VALUES ('Love in the future',2005,'8/12/2013');
INSERT INTO album VALUES ('Unapologetic',2006,'11/19/2012');
INSERT INTO album VALUES ('Good Girl Gone Bad: Reloaded',2007,'6/2/2008');
INSERT INTO album VALUES ('In the lonely hour',2008,'8/1/2014');
INSERT INTO album VALUES ('I Am... Sasha Fierce',2009,'11/12/2008');


INSERT INTO channel VALUES (5001,'Sunday Morning Linux Review',2);
INSERT INTO channel VALUES (5002,'The Cyberlaw Podcast',1);
INSERT INTO channel VALUES (5003,'TubbTalk',1);
INSERT INTO channel VALUES (5004,'Hackable?',1);
INSERT INTO channel VALUES (5005,'ChannelBuzz',1);
INSERT INTO channel VALUES (5006,'Women TechCast',1);


INSERT INTO subscriber VALUES ('1001','User1@123','user1@gmail.com');
INSERT INTO subscriber VALUES ('1002','User2@123','user2@gmail.com');
INSERT INTO subscriber VALUES ('1003','User3@123','user3@gmail.com');
INSERT INTO subscriber VALUES ('1004','User4@123','user4@gmail.com');



INSERT INTO album_has_songs VALUES (2001,10001);
INSERT INTO album_has_songs VALUES (2001,10002);
INSERT INTO album_has_songs VALUES (2002,10003);
INSERT INTO album_has_songs VALUES (2003,10004);
INSERT INTO album_has_songs VALUES (2004,10005);
INSERT INTO album_has_songs VALUES (2005,10006);
INSERT INTO album_has_songs VALUES (2006,10007);
INSERT INTO album_has_songs VALUES (2007,10008);
INSERT INTO album_has_songs VALUES (2008,10009);
INSERT INTO album_has_songs VALUES (2009,10010);
INSERT INTO album_has_songs VALUES (2009,10011);
INSERT INTO album_has_songs VALUES (2009,10012);
INSERT INTO album_has_songs VALUES (2009,10013);
INSERT INTO album_has_songs VALUES (2001,10014);
INSERT INTO album_has_songs VALUES (2001,10015);
INSERT INTO album_has_songs VALUES (2001,10016);
INSERT INTO album_has_songs VALUES (2001,10017);
INSERT INTO album_has_songs VALUES (2004,10018);
INSERT INTO album_has_songs VALUES (2004,10019);
INSERT INTO album_has_songs VALUES (2004,10020);
INSERT INTO album_has_songs VALUES (2004,10021);
INSERT INTO album_has_songs VALUES (2007,10022);
INSERT INTO album_has_songs VALUES (2007,10023);
INSERT INTO album_has_songs VALUES (2007,10024);
INSERT INTO album_has_songs VALUES (2007,10025);

INSERT INTO Band_create_Album VALUES (2001,6001,'When We All Fall Asleep, Where Do We Go?','Bellie Eilish 2019','Michael Chaves','Billie Eilish','Billie Eilish ','3/29/2019');

INSERT INTO Band_create_Album VALUES (2002,6002,'25','Adele 2018','Tim Van Der Kuil','Adele','Adele','10/23/2018');
INSERT INTO Band_create_Album VALUES (2003,6003,'The Twilight Saga: Breaking Dawn - Part 1','Christiana Perri 2011','David Hodges','Christiana Perri','David Hodges','10/18/2011');
INSERT INTO Band_create_Album VALUES (2004,6004,'Divide','Ed Sheeran 2017','Matthew Sheeran','Ed Sheeran','Ed Sheeran','3/3/2017');
INSERT INTO Band_create_Album VALUES (2005,6005,'Love in the future','John Legend 2013','Nabil Elderkin','John Legend','John Legend','8/12/2013');
INSERT INTO Band_create_Album VALUES (2006,6006,'Unapologetic','Rihanna 2012','Anthony Mandler','Rihanna','SIA','11/19/2012');
INSERT INTO Band_create_Album VALUES (2007,6007,'Good Girl Gone Bad: Reloaded','Rihanna 2008','Chris Applebaum','Rihanna','The Dream','6/2/2008');
INSERT INTO Band_create_Album VALUES (2008,6008,'In the lonely hour','Sam Smith 2014','Luke Manoghan','Sam Smith','Sam Smith','8/1/2014');
INSERT INTO Band_create_Album VALUES (2009,6009,'I Am... Sasha Fierce','Beyonce 2008','Ryan Tedder','Beyonce','Beyonce','11/12/2008');



INSERT INTO channel_record_podcast VALUES ('Episode 1',4001,'Host: Tony Bemus, Tom Lawrence, Phil Porada, Mary Tee
Description: Sunday Morning Linux Review is a podcast with Tony Bemus, Tom Lawrence, Phil Porada, and Mary Tee. We talk about Linux and open source news. Edited episodes and show notes are found at www.smlr.us.',NULL,NULL,5001);

 INSERT INTO channel_record_podcast VALUES ('Episode 2',4002,'Host: Tony Bemus, Tom Lawrence, Phil Porada, Mary Tee
Description: Sunday Morning Linux Review is a podcast with Tony Bemus, Tom Lawrence, Phil Porada, and Mary Tee. We talk about Linux and open source news. Edited episodes and show notes are found at www.smlr.us.',NULL,NULL,5001); 
 INSERT INTO channel_record_podcast VALUES ('Episode 3',4003,'Host: Tony Bemus, Tom Lawrence, Phil Porada, Mary Tee
Description: Sunday Morning Linux Review is a podcast with Tony Bemus, Tom Lawrence, Phil Porada, and Mary Tee. We talk about Linux and open source news. Edited episodes and show notes are found at www.smlr.us.',NULL,NULL,5001); 
 INSERT INTO channel_record_podcast VALUES ('Episode 4',4004,'Host: Tony Bemus, Tom Lawrence, Phil Porada, Mary Tee
Description: Sunday Morning Linux Review is a podcast with Tony Bemus, Tom Lawrence, Phil Porada, and Mary Tee. We talk about Linux and open source news. Edited episodes and show notes are found at www.smlr.us.',NULL,NULL,5001); 
 INSERT INTO channel_record_podcast VALUES ('Episode 1',4005,'Host: Stewart Baker
Description: The Cyberlaw Podcast is a weekly interview series and discussion on the latest events in technology, security, privacy, and government. The podcast is hosted by Steptoe & Johnson LLP partner Stewart Baker, who is joined by a wide variety of guests, including academics, politicians, authors, and reporters.
Link: https://www.lawfareblog.com/topic/cyberlaw-podcast',NULL,NULL,5002); 
 INSERT INTO channel_record_podcast VALUES ('Episode 2',4006,'Host: Stewart Baker
Description: The Cyberlaw Podcast is a weekly interview series and discussion on the latest events in technology, security, privacy, and government. The podcast is hosted by Steptoe & Johnson LLP partner Stewart Baker, who is joined by a wide variety of guests, including academics, politicians, authors, and reporters.
Link: https://www.lawfareblog.com/topic/cyberlaw-podcast',NULL,NULL,5002); 
 INSERT INTO channel_record_podcast VALUES ('Episode 3',4007,'Host: Stewart Baker
Description: The Cyberlaw Podcast is a weekly interview series and discussion on the latest events in technology, security, privacy, and government. The podcast is hosted by Steptoe & Johnson LLP partner Stewart Baker, who is joined by a wide variety of guests, including academics, politicians, authors, and reporters.
Link: https://www.lawfareblog.com/topic/cyberlaw-podcast',NULL,NULL,5002); 
 INSERT INTO channel_record_podcast VALUES ('Episode 4',4008,'Host: Stewart Baker
Description: The Cyberlaw Podcast is a weekly interview series and discussion on the latest events in technology, security, privacy, and government. The podcast is hosted by Steptoe & Johnson LLP partner Stewart Baker, who is joined by a wide variety of guests, including academics, politicians, authors, and reporters.
Link: https://www.lawfareblog.com/topic/cyberlaw-podcast',NULL,NULL,5002); 
 INSERT INTO channel_record_podcast VALUES ('Episode 1',4009,'Host: Richard Tubb
Description: For years, I have been fortunate enough to regularly sit down and talk with the most successful and smartest people within the IT industry. At the end of those conversations, I have frequently thought “Wow! That was gold! I wish I could share that conversation with others!” Now, I’m sharing those conversations with you through my podcast! In TubbTalk — the podcast for IT consultants — I invite you to eavesdrop on my conversations with the IT industry’s top thought leaders.
Link: https://www.tubblog.co.uk/podcast/',NULL,NULL,5003); 
 INSERT INTO channel_record_podcast VALUES ('Episode 2',4010,'Host: Richard Tubb
Description: For years, I have been fortunate enough to regularly sit down and talk with the most successful and smartest people within the IT industry. At the end of those conversations, I have frequently thought “Wow! That was gold! I wish I could share that conversation with others!” Now, I’m sharing those conversations with you through my podcast! In TubbTalk — the podcast for IT consultants — I invite you to eavesdrop on my conversations with the IT industry’s top thought leaders.
Link: https://www.tubblog.co.uk/podcast/',NULL,NULL,5003); 
 INSERT INTO channel_record_podcast VALUES ('Episode 3',4011,'Host: Richard Tubb
Description: For years, I have been fortunate enough to regularly sit down and talk with the most successful and smartest people within the IT industry. At the end of those conversations, I have frequently thought “Wow! That was gold! I wish I could share that conversation with others!” Now, I’m sharing those conversations with you through my podcast! In TubbTalk — the podcast for IT consultants — I invite you to eavesdrop on my conversations with the IT industry’s top thought leaders.
Link: https://www.tubblog.co.uk/podcast/',NULL,NULL,5003); 
 INSERT INTO channel_record_podcast VALUES ('Episode 4',4012,'Host: Richard Tubb
Description: For years, I have been fortunate enough to regularly sit down and talk with the most successful and smartest people within the IT industry. At the end of those conversations, I have frequently thought “Wow! That was gold! I wish I could share that conversation with others!” Now, I’m sharing those conversations with you through my podcast! In TubbTalk — the podcast for IT consultants — I invite you to eavesdrop on my conversations with the IT industry’s top thought leaders.
Link: https://www.tubblog.co.uk/podcast/',NULL,NULL,5003); 
 INSERT INTO channel_record_podcast VALUES ('Episode 1',4013,'Host: Geoff Siskind, Bruce Snell, McAfee
Description: We see lots of movies and TV shows where hackers can infiltrate our lives with just a few keystrokes. But is it real? We’re here to find out. Malicious cat photos, sketchy Wi-Fi networks, rogue rentals, all-knowing webcams — those are just a few topics tackled in Hackable?, where we let our hackers shed light on just how secure we really are.
Link: https://hackablepodcast.com/',NULL,NULL,5004); 
 INSERT INTO channel_record_podcast VALUES ('Episode 2',4014,'Host: Geoff Siskind, Bruce Snell, McAfee
Description: We see lots of movies and TV shows where hackers can infiltrate our lives with just a few keystrokes. But is it real? We’re here to find out. Malicious cat photos, sketchy Wi-Fi networks, rogue rentals, all-knowing webcams — those are just a few topics tackled in Hackable?, where we let our hackers shed light on just how secure we really are.
Link: https://hackablepodcast.com/',NULL,NULL,5004); 
 INSERT INTO channel_record_podcast VALUES ('Episode 3',4015,'Host: Geoff Siskind, Bruce Snell, McAfee
Description: We see lots of movies and TV shows where hackers can infiltrate our lives with just a few keystrokes. But is it real? We’re here to find out. Malicious cat photos, sketchy Wi-Fi networks, rogue rentals, all-knowing webcams — those are just a few topics tackled in Hackable?, where we let our hackers shed light on just how secure we really are.
Link: https://hackablepodcast.com/',NULL,NULL,5004); 
 INSERT INTO channel_record_podcast VALUES ('Episode 4',4016,'Host: Geoff Siskind, Bruce Snell, McAfee
Description: We see lots of movies and TV shows where hackers can infiltrate our lives with just a few keystrokes. But is it real? We’re here to find out. Malicious cat photos, sketchy Wi-Fi networks, rogue rentals, all-knowing webcams — those are just a few topics tackled in Hackable?, where we let our hackers shed light on just how secure we really are.
Link: https://hackablepodcast.com/',NULL,NULL,5004); 
 INSERT INTO channel_record_podcast VALUES ('Episode 1',4017,'Host: Geoff Siskind, Bruce Snell, McAfee
Description: We see lots of movies and TV shows where hackers can infiltrate our lives with just a few keystrokes. But is it real? We’re here to find out. Malicious cat photos, sketchy Wi-Fi networks, rogue rentals, all-knowing webcams — those are just a few topics tackled in Hackable?, where we let our hackers shed light on just how secure we really are.
Link: https://hackablepodcast.com/',NULL,NULL,5005); 
 INSERT INTO channel_record_podcast VALUES ('Episode 2',4019,'Host: Robert Dutt
Description: ChannelBuzz.ca, the first news and analysis blog platform for the Canadian IT channel community, with the stated goal of cutting through the noise for Canadian VARs and MSPs.
Link: https://channelbuzz.ca/subjects/podcasts/
',NULL,NULL,5005); 
 INSERT INTO channel_record_podcast VALUES ('Episode 3',4020,'Host: Robert Dutt
Description: ChannelBuzz.ca, the first news and analysis blog platform for the Canadian IT channel community, with the stated goal of cutting through the noise for Canadian VARs and MSPs.
Link: https://channelbuzz.ca/subjects/podcasts/
',NULL,NULL,5005); 
 INSERT INTO channel_record_podcast VALUES ('Episode 4',4021,'Host: Robert Dutt
Description: ChannelBuzz.ca, the first news and analysis blog platform for the Canadian IT channel community, with the stated goal of cutting through the noise for Canadian VARs and MSPs.
Link: https://channelbuzz.ca/subjects/podcasts/
',NULL,NULL,5005); 

INSERT INTO User_Subscribe_Channel VALUES ('1001',5001);
INSERT INTO User_Subscribe_Channel VALUES ('1001',5002);
INSERT INTO User_Subscribe_Channel VALUES ('1002',5003);
INSERT INTO User_Subscribe_Channel VALUES ('1002',5004);
INSERT INTO User_Subscribe_Channel VALUES ('1003',5005);
INSERT INTO User_Subscribe_Channel VALUES ('1004',5006);
INSERT INTO User_Subscribe_Channel VALUES ('1002',5001);

INSERT INTO song_chronicle VALUES (10001,'1001',56);
INSERT INTO song_chronicle VALUES (10002,'1001',35);
INSERT INTO song_chronicle VALUES (10003,'1001',21);
INSERT INTO song_chronicle VALUES (10004,'1001',22);
INSERT INTO song_chronicle VALUES (10005,'1001',11);
INSERT INTO song_chronicle VALUES (10006,'1001',85);
INSERT INTO song_chronicle VALUES (10007,'1001',21);
INSERT INTO song_chronicle VALUES (10008,'1001',11);
INSERT INTO song_chronicle VALUES (10009,'1001',11);
INSERT INTO song_chronicle VALUES (10010,'1001',21);
INSERT INTO song_chronicle VALUES (10001,'1002',1);
INSERT INTO song_chronicle VALUES (10002,'1002',2);
INSERT INTO song_chronicle VALUES (10003,'1002',3);
INSERT INTO song_chronicle VALUES (10004,'1002',21);
INSERT INTO song_chronicle VALUES (10005,'1002',11);
INSERT INTO song_chronicle VALUES (10006,'1002',33);
INSERT INTO song_chronicle VALUES (10007,'1002',11);
INSERT INTO song_chronicle VALUES (10008,'1002',43);
INSERT INTO song_chronicle VALUES (10009,'1002',12);
INSERT INTO song_chronicle VALUES (10010,'1002',43);
INSERT INTO song_chronicle VALUES (10001,'1003',11);
INSERT INTO song_chronicle VALUES (10002,'1003',34);
INSERT INTO song_chronicle VALUES (10003,'1003',44);
INSERT INTO song_chronicle VALUES (10004,'1003',62);
INSERT INTO song_chronicle VALUES (10005,'1003',32);
INSERT INTO song_chronicle VALUES (10006,'1003',22);
INSERT INTO song_chronicle VALUES (10007,'1003',11);
INSERT INTO song_chronicle VALUES (10008,'1003',77);
INSERT INTO song_chronicle VALUES (10009,'1003',44);
INSERT INTO song_chronicle VALUES (10010,'1003',41);
INSERT INTO song_chronicle VALUES (10001,'1004',32);
INSERT INTO song_chronicle VALUES (10002,'1004',21);
INSERT INTO song_chronicle VALUES (10003,'1004',21);
INSERT INTO song_chronicle VALUES (10004,'1004',54);
INSERT INTO song_chronicle VALUES (10005,'1004',32);
INSERT INTO song_chronicle VALUES (10006,'1004',13);
INSERT INTO song_chronicle VALUES (10007,'1004',76);
INSERT INTO song_chronicle VALUES (10008,'1004',32);
INSERT INTO song_chronicle VALUES (10009,'1004',1);
INSERT INTO song_chronicle VALUES (10010,'1004',2);
INSERT INTO song_chronicle VALUES (10011,'1001',14);
INSERT INTO song_chronicle VALUES (10012,'1001',22);
INSERT INTO song_chronicle VALUES (10013,'1001',54);
INSERT INTO song_chronicle VALUES (10014,'1001',12);
INSERT INTO song_chronicle VALUES (10015,'1001',23);
INSERT INTO song_chronicle VALUES (10016,'1001',14);
INSERT INTO song_chronicle VALUES (10017,'1001',21);
INSERT INTO song_chronicle VALUES (10018,'1001',13);
INSERT INTO song_chronicle VALUES (10019,'1001',44);
INSERT INTO song_chronicle VALUES (10020,'1001',12);
INSERT INTO song_chronicle VALUES (10021,'1001',43);
INSERT INTO song_chronicle VALUES (10022,'1001',11);
INSERT INTO song_chronicle VALUES (10023,'1001',11);
INSERT INTO song_chronicle VALUES (10024,'1001',44);
INSERT INTO song_chronicle VALUES (10025,'1001',45);
INSERT INTO song_chronicle VALUES (10011,'1002',21);
INSERT INTO song_chronicle VALUES (10012,'1002',34);
INSERT INTO song_chronicle VALUES (10013,'1002',11);
INSERT INTO song_chronicle VALUES (10014,'1002',41);
INSERT INTO song_chronicle VALUES (10015,'1002',11);
INSERT INTO song_chronicle VALUES (10016,'1002',23);
INSERT INTO song_chronicle VALUES (10017,'1002',45);
INSERT INTO song_chronicle VALUES (10018,'1002',12);
INSERT INTO song_chronicle VALUES (10019,'1002',34);
INSERT INTO song_chronicle VALUES (10020,'1002',14);
INSERT INTO song_chronicle VALUES (10021,'1002',45);
INSERT INTO song_chronicle VALUES (10022,'1002',42);
INSERT INTO song_chronicle VALUES (10023,'1002',66);
INSERT INTO song_chronicle VALUES (10024,'1002',11);
INSERT INTO song_chronicle VALUES (10025,'1002',1);
INSERT INTO song_chronicle VALUES (10011,'1003',11);
INSERT INTO song_chronicle VALUES (10012,'1003',23);
INSERT INTO song_chronicle VALUES (10013,'1003',45);
INSERT INTO song_chronicle VALUES (10014,'1003',56);
INSERT INTO song_chronicle VALUES (10015,'1003',67);
INSERT INTO song_chronicle VALUES (10016,'1003',15);
INSERT INTO song_chronicle VALUES (10017,'1003',34);
INSERT INTO song_chronicle VALUES (10018,'1003',54);
INSERT INTO song_chronicle VALUES (10019,'1003',12);
INSERT INTO song_chronicle VALUES (10020,'1003',45);
INSERT INTO song_chronicle VALUES (10021,'1003',2);
INSERT INTO song_chronicle VALUES (10022,'1003',5);
INSERT INTO song_chronicle VALUES (10023,'1003',3);
INSERT INTO song_chronicle VALUES (10024,'1003',2);
INSERT INTO song_chronicle VALUES (10025,'1003',1);
INSERT INTO song_chronicle VALUES (10011,'1004',1);
INSERT INTO song_chronicle VALUES (10012,'1004',2);
INSERT INTO song_chronicle VALUES (10013,'1004',3);
INSERT INTO song_chronicle VALUES (10014,'1004',4);
INSERT INTO song_chronicle VALUES (10015,'1004',5);
INSERT INTO song_chronicle VALUES (10016,'1004',6);
INSERT INTO song_chronicle VALUES (10017,'1004',7);
INSERT INTO song_chronicle VALUES (10018,'1004',8);
INSERT INTO song_chronicle VALUES (10019,'1004',9);
INSERT INTO song_chronicle VALUES (10020,'1004',11);
INSERT INTO song_chronicle VALUES (10021,'1004',12);
INSERT INTO song_chronicle VALUES (10022,'1004',13);
INSERT INTO song_chronicle VALUES (10023,'1004',13);
INSERT INTO song_chronicle VALUES (10024,'1004',13);
INSERT INTO song_chronicle VALUES (10025,'1004',13);