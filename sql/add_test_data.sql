INSERT INTO Forum_User (name, password) VALUES ('fallenangel69', 'salasana');
INSERT INTO Forum_Group (name) VALUES ('BLACK SPIRIT');
INSERT INTO Tag (name) VALUES ('Rant');
INSERT INTO Group_Member (user_id, forum_group_id) VALUES ('1', '1');
INSERT INTO Topic (title, forum_group_id) VALUES ('Black Spirits?', '1');
INSERT INTO Forum_Message (author, posted, message, topic_id) VALUES ('1', NOW(), 'White white winds', '1');
INSERT INTO Has_Read (message_id, user_id) VALUES ('1', '1');
INSERT INTO Tagged (tag_id, topic_id) VALUES ('1', '1');
