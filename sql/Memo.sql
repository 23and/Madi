DROP SEQUENCE SEQ_MEMO_NUM;

DROP TABLE MEMO CASCADE CONSTRAINTS PURGE;

CREATE TABLE MEMO
(
	MEMO_NUM                  NUMBER(3)  NOT NULL ,
	MEMBER_NUM                NUMBER(3)  NOT NULL ,
	TITLE                 	  VARCHAR2(500)  NOT NULL ,
	CONTENT                   VARCHAR2(500)  NULL ,
	HASHTAG1                  VARCHAR2(500)  NULL ,
	HASHTAG2                  VARCHAR2(500)  NULL ,
	HASHTAG3                  VARCHAR2(500)  NULL ,
	WRITEDAY                  DATE  NOT NULL ,
	MUSIC_NUM                 NUMBER(3)  NOT NULL
);

ALTER TABLE MEMO
	ADD  PRIMARY KEY (MEMO_NUM);

CREATE SEQUENCE SEQ_MEMO_NUM START WITH 1 MAXVALUE 99999999999999 MINVALUE 1 NOCYCLE CACHE 20  NOORDER;

COMMIT;

ALTER TABLE MEMO
	ADD ( FOREIGN KEY (MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM));
	
INSERT INTO MEMO (MEMO_NUM, MEMBER_NUM, TITLE, CONTENT, HASHTAG1, HASHTAG2, HASHTAG3, WRITEDAY, MUSIC_NUM) VALUES (SEQ_MEMO_NUM.NEXTVAL, 1, 'titleTEST', 'contentTEST', 'hash1', 'hash2', 'hash3', SYSDATE,	0);
	
COMMIT;
