/*
############���̺� ����############
## ��ȭ ���̺� ##
��ȭ�ѹ�       -- primary key
��ȭ����
�帣
�ٰŸ�
��������
�����(�����?)
������
�󿵿���
�����       -- sysdate

## ������(��� ����) ���̺� ##
�������ѹ�       -- primary key
��ȭ�ѹ�    -- ���̺� join�� ����
������ �̸�
������ ����
������ ����
�����       -- sysdate

## ���� ���̺� ##
����ѹ�       -- primary key
��ȭ�ѹ�    -- ���̺� join�� ����
ȸ���ѹ�    -- ���̺� join�� ����
ȸ�� ���̵�
���� ����
���� ����
����
�����       -- sysdate

## ȸ�� ���� ���̺� ##
ȸ���ѹ�       -- primary key
ID
��й�ȣ
�̸��� �ּ�
�����       -- sysdate

####################################
*/


DROP TABLE R_MOVIE;
DROP SEQUENCE MOVIE_NO_SEQ;
DROP TABLE R_STAFF;
DROP SEQUENCE STAFF_NO_SEQ;
drop table R_REVIEW;
drop sequence REVIEW_NO_SEQ;
DROP TABLE R_MEMBER;
drop sequence MEMBER_NO_SEQ;



/*
��ȭ ���̺�
��ȭ�ѹ�MNO
����
�帣
�ٰŸ�
��������
������
�����(�����?)
�󿵿���
�����
*/


create table R_MOVIE (
	NO number primary key not null,
    TITLE varchar2(100) not null,
    GENRE varchar2(100) not null,
    SUMMARY_TITLE CLOB not null,
    SUMMARY_CONTENT CLOB not null,
    AGE_LIMIT varchar2(6),
    POSTER varchar2(100),
    THUMBNAIL varchar2(100),
    SCREENING varchar2(1),
    REG_DATE date not null
);


CREATE SEQUENCE MOVIE_NO_SEQ
INCREMENT BY 1
START WITH 1;

INSERT INTO R_MOVIE VALUES(
MOVIE_NO_SEQ.NEXTVAL, 
'��ٿ�Ÿ�ӽ�', 
'�ڹ̵�, �θǽ�', 
'��ȭ �ٰŸ��� ��̷ο� �κ��̳� ��縦 �� �ٷ� ���ϰ� �����մϴ�', 
'���¼ַ� ��(���� �۸���)�� ������ �� ��, �ƹ���(�� ����)�κ��� ������� ������ ����� ��� �ȴ�. 
 �ٷ� �ð��� �ǵ��� �� �ִ� �ɷ��� �ִٴ� ��!
 �װ��� ��� ��Ʋ���� ���̰ų� ���Ű� �߰ſ� ����� �� ���� ������, ����ģ���� ����� �� �� ������..
 
 ���� ���� �������� �� ���� �쿬�� ���� ��������� ���� �޸����� ù���� ���ϰ� �ȴ�.
 �׳��� ����� ��� ���� �ڽ��� Ư���� �ɷ��� ������ �����ϴ� ��.
 ��� ���, ����� ������ �����ε�! �߰ſ��� ���� ���� �̰߰� ���÷���!
 �޿� �׸��� �׳�� ���ϸ��� �ְ��� ������ ������.
 
 ������ �׿� �׳��� ����� �Ϻ��������� ���� �ѷ��� �ֺ� ��Ȳ���� �̹��ϰ� ��������, ����ġ ���� ��ǵ��� �������� ��Ÿ���� �����ϴµ���
 
 ��� ������ �ٽ� ��� �ȴٸ�, ���� �Ϻ��� ����� �̷� �� ������?
',
15,
'thumbnail1.jpg',
'poster1.jpg',
'Y',
SYSDATE
);

INSERT INTO R_MOVIE VALUES(
MOVIE_NO_SEQ.NEXTVAL, 
'Ʈ��������', 
'SF, �׼�, ����', 
'�� ������ ù �ʴ��� ������Ʈ | ��� ���� �����Ѵ�! | �Ժη� ������� ����', 
'�η����� ������ �پ ���ɰ� �Ŀ��� ���� �ܰ� ����ü ��Ʈ�������ӡ�. ���Ǹ� ��ȣ�ϴ� �����亿�� ���ܰ� ���� �뺯�ϴ� �����Ƽ�ܡ� �������� ������ ��Ʈ�������ӡ��� �ñ��� ���������� ��ť�ꡯ�� �����ϱ� ���� ���� ������ �����Դ�. ������ �༺ ���߷� ���� ��򰡷� ��������� ��ť�ꡯ. �׵��� ���� ������ �����θ� ��� ���� ��ť�ꡯ�� ã�� �� ���ָ� ������.
  �η��� �̷��� �¿��� ���������� ��ť�ꡯ�� ���ָ� ������ ������ �������� ���Ƽ�� ������ ������ ���� ���� ��ť�ꡯ�� ������ �ִٴ� ����� �˾Ƴ���. �׵��� ������ ������ ����� ������ ���ϰ�, �ƹ��� �𸣰� ������ �����Ѵ�. � �༺�̵��� ħ���� �� ���� �����ϴ� ���� ����, �ڽ��� ���縦 ���� �� �ִ� Ʈ�������Ӵ� �ڵ���, ���, ������ ���� �پ��� ���·� ������ �η��� ��Ȱ�� ����� ħ���Ѵ�. �׸��� �׵��� ť���� ��ġ�� ã�µ� �������� ���踦 ���� ���ΰ� �������� ���縦 �˰� �ȴ�.
  �� ��� ����� ���� �� ä ��ư��� �������� ��� �� ��, �ڽ��� ���� �ڵ����� �Ŵ��� �κ����� �����ϴ� ���� ������ ����Ѵ�. ���� �ڵ����� ��Ʈ�������ӡ� �� ���Ǹ� ��ȣ�ϴ� �����亿�� ������ ������񡯷� ť�긦 �����ϱ� ���� ���� �ٹ̴� �����Ƽ�ܡ� ���ܿ� �¼� ���� ��ȣ�ϱ� ���� �İߵ� Ʈ��������. ������ ������ ��ȣ�ϱ� ���� �ݵ�� ���� ���Ѿ߸� �ϴ� ������ �ڽ��� �������� �����亿�� ������ ������ �ҷ������� �����ϴµ�..
  �Ŵ� �������� ��ť�ꡯ�� ���Ƽ���� �տ� ���� �͸��� ���ƾ� �Ѵ�. ���� ã�Ƴ� ť�긦 �տ� ��� ������ �����Ϸ��� ���� �����Ƽ�ܡ� ���ܰ� ������ ��Ű���� ������ �����亿�� ������ �η��� ����� �� �������� ����� ��������.
',
12,
'thumbnail2.jpg',
'poster2.jpg',
'N',
SYSDATE
);

INSERT INTO R_MOVIE VALUES(
MOVIE_NO_SEQ.NEXTVAL, 
'�λ��̵�ƿ�', 
'�ִϸ��̼�, �ڹ̵�', 
'��������, �� �� �� �ž�! �츮�� �ູ�ϰ� ����� �ٰԡ�', 
'��� ����� �Ӹ��ӿ� �����ϴ� ���� ��Ʈ�� ����
 �װ����� ��ö�־� ������ ���ϴ� ���, ����, ����, ��ĥ, �ҽ� �ټ� ������.
 �̻� �� ���ο� ȯ�濡 �����ؾ� �ϴ� �����ϸ����� ����
 �� ��� �� ���� �ٻڰ� ������ ��ȣ�� ��������
 �쿬�� �Ǽ��� ����ݡ��� �����ġ��� ���θ� ��Ż�ϰ� ����
 �����ϸ����� ���� �ӿ� ū ��ȭ�� ã�ƿ´�.
 �����ϸ����� ������ ����� ��ã�� ���ؼ��� ����ݡ��� �����ġ��� ���η� ���ư��߸� �Ѵ�!
 �׷��� ��û�� ������ ����Ǿ� �ִ� �Ӹ��� ���迡�� ���α��� ���� ���� �賭�ϱ⸸ �ѵ���
 ����, �����ϸ����� �ٽ� �ູ���� �� ������?
 
 ���� ����� �Ӹ��ӿ��� �������� ���� ��!
 �Ϸ翡�� ����� ���ϴ� ������ ����� ��������!
',
'��ü',
'thumbnail2.jpg',
'poster2.jpg',
'N',
SYSDATE
);


/*
������(��� ����) ���̺�
�������ѹ�
��ȭ�ѹ�
������ �̸�
������ ����
������ ����
�����
*/


create table R_STAFF(
    NO number primary key not null,
    MOVIE_TITLE varchar2(100) not null,
    NAME varchar2(100) not null,
    ROLE varchar2(100) not null,
    PHOTO varchar(100),
    REG_DATE date not null
);


CREATE SEQUENCE STAFF_NO_SEQ
INCREMENT BY 1
START WITH 1;


INSERT INTO R_STAFF VALUES(
STAFF_NO_SEQ.NEXTVAL, 
'�λ��̵� �ƿ�',
'��Ʈ ����',
'����',
'STAFF1.JPG',
SYSDATE
);

INSERT INTO R_STAFF VALUES(
STAFF_NO_SEQ.NEXTVAL, 
'�λ��̵� �ƿ�',
'���̹� ������',
'�ֿ�',
'STAFF2.JPG',
SYSDATE
);

INSERT INTO R_STAFF VALUES(
STAFF_NO_SEQ.NEXTVAL, 
'�λ��̵� �ƿ�',
'�ʸ��� ���̽�',
'�ֿ�',
'STAFF3.JPG',
SYSDATE
);




INSERT INTO R_STAFF VALUES(
STAFF_NO_SEQ.NEXTVAL, 
'Ʈ��������',
'����Ŭ ����',
'����',
'STAFF4.JPG',
SYSDATE
);

INSERT INTO R_STAFF VALUES(
STAFF_NO_SEQ.NEXTVAL, 
'Ʈ��������',
'���̾� ����',
'�ֿ�',
'STAFF5.JPG',
SYSDATE
);

INSERT INTO R_STAFF VALUES(
STAFF_NO_SEQ.NEXTVAL, 
'Ʈ��������',
'Ÿ�̷���',
'�ֿ�',
'STAFF6.JPG',
SYSDATE
);


INSERT INTO R_STAFF VALUES(
STAFF_NO_SEQ.NEXTVAL, 
'��ٿ� Ÿ��',
'������ ĿƼ��',
'����',
'STAFF7.JPG',
SYSDATE
);

INSERT INTO R_STAFF VALUES(
STAFF_NO_SEQ.NEXTVAL, 
'��ٿ� Ÿ��',
'���� �۸���',
'�ֿ�',
'STAFF8.JPG',
SYSDATE
);

INSERT INTO R_STAFF VALUES(
STAFF_NO_SEQ.NEXTVAL, 
'��ٿ� Ÿ��',
'����ÿ �ƾƴ㽺',
'�ֿ�',
'STAFF9.JPG',
SYSDATE
);




/*
���� ���̺�
����ѹ�
��ȭ�ѹ�
ȸ���ѹ�
���� ����
���� ����
����
�����
*/

create table R_REVIEW(
    NO number primary key not null,
    MOVIE_NO number not null,
    MEMBER_NO number not null,
    TITLE CLOB not null,
    CONTENT CLOB not null,
    GRADE NUMBER(5), 
    REG_DATE date not null
);

CREATE SEQUENCE REVIEW_NO_SEQ
INCREMENT BY 1
START WITH 1;

INSERT INTO R_REVIEW VALUES(
    REVIEW_NO_SEQ.NEXTVAL,
    1,
    1,
    '��ȭ �ְ�',
    '�ð��� �ǵ��� �� �ִٸ顦 ����� ����? ����21 | ������ - ������ ������ ���� �� �������� ���ڴ� ����',
    '4',
    SYSDATE
);

INSERT INTO R_REVIEW VALUES(
    REVIEW_NO_SEQ.NEXTVAL,
    1,
    2,
    '��ȭ ����',
    '������ �����ϰ� ���ִ� ���� ���������� ��ȭ ��~��',
    '4',
    SYSDATE
);

INSERT INTO R_REVIEW VALUES(
    REVIEW_NO_SEQ.NEXTVAL,
    1,
    3,
    '��ٿ�Ÿ�� ¯',
    '�ƹ����� Ź������ �� ��å�Ϸ� ������鿡�� �ʹ� ���̿���׿�. ���ݵ� ������ ��¦ ���̳׿�.���̹� ������ ó�� �� ����ϴ�. �ʹ� �����̾��� �ٽñݺ������� ����� ��ȭ�Դϴ�',
    '3',
    SYSDATE
);

INSERT INTO R_REVIEW VALUES(
    REVIEW_NO_SEQ.NEXTVAL,
    2,
    1,
    'Ʈ�������� �ְ�',
    '��Խ��ϴ� ��ȸ�����ϴ�',
    '4',
    SYSDATE
);

INSERT INTO R_REVIEW VALUES(
    REVIEW_NO_SEQ.NEXTVAL,
    2,
    2,
    'Ʈ�� ����',
    '���� ���������� ��ȭ�Դϴ�. �ðܿ� ����',
    '4',
    SYSDATE
);

INSERT INTO R_REVIEW VALUES(
    REVIEW_NO_SEQ.NEXTVAL,
    2,
    3,
    'Ʈ���� ¯',
    '������ �����ϰ� ���ִ� ���� ���������� ��ȭ ��~��',
    '3',
    SYSDATE
);

INSERT INTO R_REVIEW VALUES(
    REVIEW_NO_SEQ.NEXTVAL,
    3,
    1,
    '�ν� �ְ�',
    '�λ��� ��ΰ� �Բ� �ϴ� �����̴�. ',
    '2',
    SYSDATE
);

INSERT INTO R_REVIEW VALUES(
    REVIEW_NO_SEQ.NEXTVAL,
    3,
    2,
    '�ν� ����',
    '�ƺ��� ��å����',
    '4',
    SYSDATE
);

INSERT INTO R_REVIEW VALUES(
    REVIEW_NO_SEQ.NEXTVAL,
    3,
    1,
    'Ʈ���� ¯',
    '��... �߿��� ����� ���ܼ� ������������!',
    '3',
    SYSDATE
);


/*
ȸ�� ���� ���̺�
ȸ���ѹ�
ID
��й�ȣ
�̸��� �ּ�
*/



create table R_MEMBER(
    NO number primary key not null,
    ID VARCHAR2(100) not null,
    PASS VARCHAR2(100) not null,
    EMAIL VARCHAR2(100) not null,
    REG_DATE date not null
);

CREATE SEQUENCE MEMBER_NO_SEQ
INCREMENT BY 1
START WITH 1;

insert into R_MEMBER VALUES(
    MEMBER_NO_SEQ.NEXTVAL,
    'HelloWorld111',
    'oraclejava',
    'HelloWorld111@naver.com',
    SYSDATE
);

insert into R_MEMBER VALUES(
    MEMBER_NO_SEQ.NEXTVAL,
    'HelloWorld222',
    'oraclejava222',
    'HelloWorld111@nate.com',
    SYSDATE
);

insert into R_MEMBER VALUES(
    MEMBER_NO_SEQ.NEXTVAL,
    'HelloWorld333',
    'oraclejava333',
    'HelloWorld333@gmail.com',
    SYSDATE
);

commit;