-- Lisää CREATE TABLE lauseet tähän tiedostoon
CREATE TABLE Forum_Group(
  id SERIAL PRIMARY KEY,
  name varchar(120) NOT NULL
);

CREATE TABLE Forum_User(
  id SERIAL PRIMARY KEY,
  name varchar(120) UNIQUE NOT NULL,
  password varchar(120) NOT NULL,
  admin boolean DEFAULT FALSE
);

CREATE TABLE Group_Member(
  user_id INTEGER REFERENCES Forum_User(id),
  forum_group_id INTEGER REFERENCES Forum_Group(id)
);

CREATE TABLE Topic(
  topic_id SERIAL PRIMARY KEY,
  title varchar(120) NOT NULL,
  forum_group_id INTEGER REFERENCES Forum_Group(id)
);

CREATE TABLE Forum_Message(
  message_id SERIAL PRIMARY KEY,
  author INTEGER REFERENCES Forum_User(id),
  posted TIMESTAMP NOT NULL,
  message varchar(120) NOT NULL,
  topic_id INTEGER REFERENCES Topic(topic_id) NOT NULL
)

CREATE TABLE Has_Read(
  message_id INTEGER REFERENCES Forum_Message(message_id),
  user_id INTEGER REFERENCES Forum_User(id)
);

CREATE TABLE Tag(
  id SERIAL PRIMARY KEY,
  tag_name varchar(120) UNIQUE NOT NULL
)

CREATE TABLE Tagged(
  tag_id INTEGER REFERENCES Tag(id),
  topic_id INTEGER REFERENCES Topic(topic_id)
)
