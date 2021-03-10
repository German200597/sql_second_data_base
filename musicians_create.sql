create table if not exists Singer(
	id serial primary key,
	Name varchar(40) not null
);

create table if not exists Album(
	id serial primary key,
	Title varchar(40) not null
);

create table if not exists SingerAlbum( 
	Singer_id serial not null references Singer(id),
	Album_id serial not null references Album(id)	
);

create table if not exists Collection( 
	id serial primary key,
	Title varchar(40) not null,
    Release_Year integer not null check(Release_Year>0)
);

create table if not exists Track( 
	id serial primary key,
	Album_id integer references Album(id)
	Title varchar(40) not null,
	Duration timestamp not null,
	Release_Year integer not null check(Release_Year>0)	
);

create table if not exists TrackCollection( 
	Track_id serial not null references Track(id),
	Collection_id serial not null references Collection(id)
);

create table if not exists Genre( 
	id serial primary key,
	Title varchar(40) not null
);

create table if not exists SingerGenre( 
	Singer_id serial not null,
	Genre_id serial not null
);