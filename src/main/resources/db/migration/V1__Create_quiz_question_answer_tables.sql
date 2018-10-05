ALTER SESSION SET EDITION = V1;

CREATE TABLE answer (
    id            NUMBER(10) NOT NULL,
    question_id   NUMBER(10) NOT NULL,
    text          VARCHAR2(500 BYTE) NOT NULL
)
    PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
        STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

COMMENT ON TABLE answer IS
    'The answers';

COMMENT ON COLUMN answer.text IS
    'The text of the answer';

CREATE UNIQUE INDEX answer_pk ON
    answer ( id ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE answer ADD CONSTRAINT answer_pk PRIMARY KEY ( id )
    USING INDEX answer_pk;
    
CREATE TABLE question (
    id              NUMBER(10) NOT NULL,
    type            VARCHAR2(10 BYTE) NOT NULL,
    text            VARCHAR2(500 BYTE) NOT NULL,
    open_answer     NUMBER(10),
    closed_answer   VARCHAR2(500 BYTE)
)
    PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
        STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

COMMENT ON TABLE question IS
    'The questions';

COMMENT ON COLUMN question.type IS
    'The question is Opened or Closed';

COMMENT ON COLUMN question.text IS
    'The text of the question';

COMMENT ON COLUMN question.open_answer IS
    'The answer of an opened question';

COMMENT ON COLUMN question.closed_answer IS
    'The answer of a closed question';

CREATE UNIQUE INDEX question_pk ON
    question ( id ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE question ADD CONSTRAINT question_pk PRIMARY KEY ( id )
    USING INDEX question_pk;
    
CREATE TABLE quiz (
    id     NUMBER(10) NOT NULL,
    name   VARCHAR2(100 BYTE) NOT NULL
)
    PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
        STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

COMMENT ON TABLE quiz IS
    'The quiz';

COMMENT ON COLUMN quiz.name IS
    'The name of the quiz';

CREATE UNIQUE INDEX quiz_pk ON
    quiz ( id ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE quiz ADD CONSTRAINT quiz_pk PRIMARY KEY ( id )
    USING INDEX quiz_pk;
    
CREATE TABLE quizquestion (
    quiz_id       NUMBER(10) NOT NULL,
    question_id   NUMBER(10) NOT NULL
)
    PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
        STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

COMMENT ON TABLE quizquestion IS
    'The questions of a quiz';

CREATE UNIQUE INDEX quizquestion_pk ON
    quizquestion (
        quiz_id
    ASC,
        question_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE quizquestion ADD CONSTRAINT quizquestion_pk PRIMARY KEY ( quiz_id,question_id )
    USING INDEX quizquestion_pk;
    
ALTER TABLE answer ADD CONSTRAINT question_fk FOREIGN KEY ( question_id )
    REFERENCES question ( id )
NOT DEFERRABLE;

ALTER TABLE quizquestion ADD CONSTRAINT question2_fk FOREIGN KEY ( question_id )
    REFERENCES question ( id )
NOT DEFERRABLE;

ALTER TABLE quizquestion ADD CONSTRAINT quiz2_fk FOREIGN KEY ( quiz_id )
    REFERENCES quiz ( id )
NOT DEFERRABLE;

CREATE OR REPLACE EDITIONING VIEW V_answer AS SELECT ID, QUESTION_ID, TEXT from answer; 
CREATE OR REPLACE EDITIONING VIEW V_question AS SELECT ID, TYPE, TEXT, OPEN_ANSWER, CLOSED_ANSWER from question; 
CREATE OR REPLACE EDITIONING VIEW V_quiz AS SELECT ID, NAME from quiz;
CREATE OR REPLACE EDITIONING VIEW V_quizquestion AS SELECT QUIZ_ID, QUESTION_ID from quizquestion;  

CREATE OR REPLACE Function FindQuizName
   ( id_in IN number )
   RETURN varchar2
IS
   cname varchar2(100);

   cursor c1 is
   SELECT name
     FROM quiz
     WHERE id = id_in;

BEGIN

   open c1;
   fetch c1 into cname;

   if c1%notfound then
      cname := 'EMPTY';
   end if;

   close c1;

RETURN cname;

EXCEPTION
WHEN OTHERS THEN
   raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);
END;
/



    