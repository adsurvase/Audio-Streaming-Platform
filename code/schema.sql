 DROP TABLE user_subscribe_channel; 
 DROP TABLE channel_record_podcast;
 DROP TABLE user_create_playlist;
 DROP TABLE band_create_album;
 DROP TABLE song_chronicle;
 DROP TABLE album_has_songs;
 DROP TABLE album;
 DROP TABLE channel;
 DROP TABLE subscriber;
 DROP TABLE song;

create table Song(
  song_id serial primary key,
  music_director varchar(32),
  singer varchar(32),
  lyricist varchar(32),
  name varchar(32),
  lyrics text,
  duration float,
  genre varchar(32),
  language varchar(32)
);
 
create table Subscriber(
  id varchar(32) primary key,
  password varchar(32) not null,
  email varchar(32)
);

create table Album(
 name varchar(128),
 album_id integer primary key,
 release_date date
);


create table Channel(
  channel_id integer primary key,
  channel_name varchar(128) ,
  num_subscribers integer
);


create table Album_has_songs(
 album_id integer,
 song_id integer,
 primary key(album_id, song_id),
 foreign key(album_id) references Album(album_id),
 foreign key(song_id) references Song(song_id)
);


create table Band_create_Album(
album_id integer,
band_id integer,
album_name varchar(128) not null,
band_name varchar(128) not null,
music_director varchar(128),
singer varchar(128),
lyricist varchar(128),
release_date date,
Primary key (album_id,band_id)
);



create table Song_chronicle(
  song_id integer,
  id varchar(32),
  num_instance integer,
  primary key(song_id, id),
  foreign key(song_id) references Song(song_id),
  foreign key(id) references Subscriber(id)
);



create table user_create_playlist(
 name varchar(32),
 user_id varchar(32),
 song_id integer not null,
 primary key(name, user_id, song_id),
 foreign key(user_id) references Subscriber(id),
 foreign key(song_id) references Song(song_id)
);


create table channel_record_podcast(
  podcast_name varchar(32),
  podcast_id integer not null,
  description text,
  release_date date,
  duration float,
  channel_id integer not null,
  primary key(channel_id,podcast_id),
  foreign key(channel_id) references Channel(channel_id)
);


create table User_Subscribe_Channel(
  user_id varchar(32),
  channel_id integer,
  primary key(user_id, channel_id),
  foreign key(channel_id) references Channel(channel_id),
  foreign key(user_id) references Subscriber(id)
);




















