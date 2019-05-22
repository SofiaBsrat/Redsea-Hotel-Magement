  --user credentials
INSERT INTO credentials(username,password,enabled) VALUES ('hame','hame', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('admin','admin', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('tomas','tomas', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('redae','redae', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('sofiya','sofiya', TRUE);

  --autorities
INSERT INTO authority (username, authority,credentials_id) VALUES ('hame', 'ROLE_USER','hame');
INSERT INTO authority (username, authority,credentials_id) VALUES ('admin', 'ROLE_ADMIN','admin');
INSERT INTO authority (username, authority,credentials_id) VALUES ('tomas', 'ROLE_USER','tomas');
INSERT INTO authority (username, authority,credentials_id) VALUES ('redae', 'ROLE_USER','redae');
INSERT INTO authority (username, authority,credentials_id) VALUES ('sofiya', 'ROLE_USER','sofiya');

   --  admin
INSERT INTO  `MEMBER` (id,firstname, lastname,age,title,membernumber, member_id,adress,email) VALUES (18,'selina','Bsrat',12,'Boy Monkey', 8754,'admin','setantato','sbsrat@mum.edu');
    --un assigned users

INSERT INTO  `MEMBER` (id,firstname, lastname,age,title,membernumber, member_id,adress,email) VALUES (43,'Sofiya','Bsrat',12,'Boy Monkey', 8754,'sofiya','setantato','sbsrat@mum.edu');



   --assigned users
INSERT INTO  `MEMBER` (id,firstname, lastname,age,title,membernumber, member_id,adress,email) VALUES (16,'hame','Seud',12,'Boy Monkey', 8754,'hame','setantato','mseud@mum.edu');


INSERT INTO  `MEMBER` (id,firstname, lastname,age,title,membernumber, member_id,adress,email) VALUES (44,'tomas','melake',12,'Boy Monkey', 8754,'tomas','setantato','tmelake@mum.edu');

INSERT INTO `MEMBER` (id,firstname, lastname,age,title,membernumber,member_id,adress,email) VALUES (45,'Redae','Mengsteab',124,'Software Engineer', 8765,'redae','setantato','rmehari@mum.edu');



    --hotels
INSERT INTO `HOTEL` (id,address,contact,descroption,name,price) VALUES(1,'Asmara','234-987-9876','Five Star','Redsea Hotel',34);

INSERT INTO `HOTEL` (id,address,contact,descroption,name,price) VALUES(2,'Chicago','234-987-9876','Five Star','Marriott Hotel',64);

INSERT INTO `HOTEL` (id,address,contact,descroption,name,price) VALUES(3,'Mendefera','234-987-9876','Five Star','Keren Hotel',39);

     --booked with member and hotel
INSERT INTO `BOOKHOTEL` (roomtype,fromdate,todate,hotel_id,member_id) VALUES('1bedroom','2019-03-02','2019-03-05',1,16);


INSERT INTO `BOOKHOTEL` (roomtype,fromdate,todate,hotel_id,member_id) VALUES('2bedroom','2019-03-03','2019-03-07',2,44);

INSERT INTO `BOOKHOTEL` (roomtype,fromdate,todate,hotel_id,member_id) VALUES('1bedroom','2019-03-03','2019-03-07',2,45);
