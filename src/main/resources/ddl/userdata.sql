-- glassfishへのJDBCレルムの設定と、以下のデータの投入が必要。
drop table app_user;
drop table app_group;
-- ユーザー
CREATE TABLE app_user (
  user_id VARCHAR(30) NOT NULL,
  password CHAR(64) NOT NULL,
  constraint app_user_pk primary key(user_id)
);
 
-- グループ
CREATE TABLE app_group (
  group_id VARCHAR(30) NOT NULL,
  user_id VARCHAR(30) NOT NULL,
  constraint app_groupe_pk primary key(group_id,user_id)
);
 
-- ユーザーの初期データ
INSERT INTO app_user VALUES ('user1', '0a041b9462caa4a31bac3567e0b6e6fd9100787db2ab433d96f6d178cabfce90');
-- グループの初期データ
INSERT INTO app_group VALUES ('normal','user1');