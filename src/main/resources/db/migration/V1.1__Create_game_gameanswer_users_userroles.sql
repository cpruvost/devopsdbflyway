ALTER SESSION SET EDITION = V1POINT1;

CREATE TABLE game (
    id          NUMBER(10) NOT NULL,
    code        VARCHAR2(10 BYTE) NOT NULL,
    quiz_id     NUMBER(10) NOT NULL,
    startdate   TIMESTAMP,
    enddate     TIMESTAMP
)
    PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
        STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

COMMENT ON TABLE game IS
    'The games';

COMMENT ON COLUMN game.code IS
    'The code for playing the game';

COMMENT ON COLUMN game.quiz_id IS
    'The quiz of the game';

COMMENT ON COLUMN game.startdate IS
    'The start of the game';

COMMENT ON COLUMN game.enddate IS
    'The end of the game';

CREATE UNIQUE INDEX game_pk ON
    game ( id ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE game ADD CONSTRAINT game_pk PRIMARY KEY ( id )
    USING INDEX game_pk;
    
CREATE TABLE gameanswer (
    id                NUMBER(10) NOT NULL,
    game_id           NUMBER(10),
    game_code         VARCHAR2(10 BYTE),
    playeremail       VARCHAR2(100 BYTE) NOT NULL,
    playername        VARCHAR2(100 BYTE),
    playerfirstname   VARCHAR2(100 BYTE),
    question          VARCHAR2(500 BYTE) NOT NULL,
    answer            VARCHAR2(500 BYTE) NOT NULL,
    score             NUMBER(8,5)
)
    PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
        STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

COMMENT ON TABLE gameanswer IS
    'The answers of players';

COMMENT ON COLUMN gameanswer.question IS
    'The question';

COMMENT ON COLUMN gameanswer.answer IS
    'The answer';

CREATE UNIQUE INDEX gameanswer_pk ON
    gameanswer ( id ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE gameanswer ADD CONSTRAINT gameanswer_pk PRIMARY KEY ( id )
    USING INDEX gameanswer_pk;
    
CREATE TABLE users (
    username    VARCHAR2(45 BYTE) NOT NULL,
    name        VARCHAR2(45 BYTE) NOT NULL,
    firstname   VARCHAR2(45 BYTE) NOT NULL,
    passwd      VARCHAR2(45 BYTE) NOT NULL,
    enabled     NUMBER(1)
)
    PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
        STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

COMMENT ON TABLE users IS
    'The users';

COMMENT ON COLUMN users.name IS
    'The name of the user';

COMMENT ON COLUMN users.firstname IS
    'The firstname of the user';

COMMENT ON COLUMN users.passwd IS
    'The password of the user';

COMMENT ON COLUMN users.enabled IS
    'User is enabled or not';

CREATE UNIQUE INDEX users_pk ON
    users ( username ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE users ADD CONSTRAINT users_pk PRIMARY KEY ( username )
    USING INDEX users_pk;
    
CREATE TABLE user_roles (
    id         NUMBER(10) NOT NULL,
    username   VARCHAR2(45 BYTE) NOT NULL,
    rolename   VARCHAR2(45 BYTE) NOT NULL
)
    PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
        STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

COMMENT ON TABLE user_roles IS
    'The roles of user';

COMMENT ON COLUMN user_roles.username IS
    'The user (email)';

COMMENT ON COLUMN user_roles.rolename IS
    'The role of the user';

CREATE UNIQUE INDEX user_roles_pk ON
    user_roles ( id ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE user_roles ADD CONSTRAINT user_roles_pk PRIMARY KEY ( id )
    USING INDEX user_roles_pk;
    
ALTER TABLE game ADD CONSTRAINT quiz_fk FOREIGN KEY ( quiz_id )
    REFERENCES quiz ( id )
NOT DEFERRABLE;

ALTER TABLE user_roles ADD CONSTRAINT users_fk FOREIGN KEY ( username )
    REFERENCES users ( username )
NOT DEFERRABLE;

ALTER TABLE QUIZ ADD (DETAILS VARCHAR2(150));

CREATE OR REPLACE EDITIONING VIEW V_quiz AS SELECT ID, NAME, DETAILS from quiz;

CREATE OR REPLACE EDITIONING VIEW V_game AS SELECT ID, CODE, QUIZ_ID, STARTDATE, ENDDATE from game; 
CREATE OR REPLACE EDITIONING VIEW V_gameanswer AS SELECT * from gameanswer; 
CREATE OR REPLACE EDITIONING VIEW V_users AS SELECT * from users;
CREATE OR REPLACE EDITIONING VIEW V_user_roles AS SELECT * from user_roles; 