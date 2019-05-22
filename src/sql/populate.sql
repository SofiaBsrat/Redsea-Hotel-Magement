  --user credentials
INSERT INTO credentials(username,password,enabled) VALUES ('guest','guest', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('admin','admin', TRUE);
  --autorities
INSERT INTO authority (username, authority) VALUES ('guest', 'ROLE_USER');
INSERT INTO authority (username, authority) VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO authority (username, authority) VALUES ('admin', 'ROLE_USER');
   --  admin
INSERT INTO  `MEMBER` (id,firstname, lastname,age,title,membernumber, member_id,adress,email) VALUES (18,'Sofiya','Bsrat',12,'Boy Monkey', 8754,'admin','setantato','sbsrat@mum.edu');
    --un assigned users
INSERT INTO  `MEMBER` (id,firstname, lastname,age,title,membernumber, member_id,adress,email) VALUES (16,'hame','Seud',12,'Boy Monkey', 8754,'guest','setantato','mseud@mum.edu');
INSERT INTO  `MEMBER` (id,firstname, lastname,age,title,membernumber, member_id,adress,email) VALUES (44,'Selina','shkor',12,'Boy Monkey', 8754,'guest','setantato','sshkor@mum.edu');

   --assigned users
INSERT INTO  `MEMBER` (id,firstname, lastname,age,title,membernumber, member_id,adress,email) VALUES (12,'Curious','George',12,'Boy Monkey', 8754,'guest','setantato','sbsrat@mum.edu');
INSERT INTO `MEMBER` (id,firstname, lastname,age,title,membernumber,member_id,adress,email) VALUES (78,'Allen','Rench',123,'Torque Master', 8733,'guest','setantato','tmelake@mum.edu');
INSERT INTO `MEMBER` (id,firstname, lastname,age,title,membernumber,member_id,adress,email) VALUES (45,'Redae','Mengsteab',124,'Software Engineer', 8765,'guest','setantato','mseud@mum.edu');

    --hotels
INSERT INTO `HOTEL` (id,address,contact,descroption,name,price) VALUES(1,'Asmara','234-987-9876','Five Star','Redsea Hotel',34);

INSERT INTO `HOTEL` (id,address,contact,descroption,name,price) VALUES(2,'Chicago','234-987-9876','Five Star','Marriott Hotel',64);

INSERT INTO `HOTEL` (id,address,contact,descroption,name,price) VALUES(3,'Mendefera','234-987-9876','Five Star','Keren Hotel',39);

     --booked with member and hotel
INSERT INTO `BOOKHOTEL` (roomtype,fromdate,todate,hotel_id,member_id) VALUES('1bedroom','2019-03-02','2019-03-05',1,12);


INSERT INTO `BOOKHOTEL` (roomtype,fromdate,todate,hotel_id,member_id) VALUES('2bedroom','2019-03-03','2019-03-07',2,78);

INSERT INTO `BOOKHOTEL` (roomtype,fromdate,todate,hotel_id,member_id) VALUES('1bedroom','2019-03-03','2019-03-07',2,45);
