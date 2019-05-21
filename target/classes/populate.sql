 
INSERT INTO credentials(username,password,enabled) VALUES ('guest','guest', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('admin','admin', TRUE);
INSERT INTO authority (username, authority) VALUES ('guest', 'ROLE_USER');
INSERT INTO authority (username, authority) VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO authority (username, authority) VALUES ('admin', 'ROLE_USER');

INSERT INTO  `MEMBER` (id,firstname, lastname,age,title,membernumber, member_id,adress,email) VALUES (12,'Curious','George',12,'Boy Monkey', 8754,'admin','setantato','sbsrat@mum.edu');
INSERT INTO `MEMBER` (id,firstname, lastname,age,title,membernumber,member_id,adress,email) VALUES (78,'Allen','Rench',123,'Torque Master', 8733,'guest','setantato','tmelake@mum.edu');
INSERT INTO `MEMBER` (id,firstname, lastname,age,title,membernumber,member_id,adress,email) VALUES (45,'Redae','Mengsteab',124,'Software Engineer', 8765,'guest','setantato','mseud@mum.edu');

INSERT INTO `HOTEL` (id,address,contact,descroption,name,price) VALUES(1,'Asmara','234-987-9876','Five Star','Redsea Hotel',34);

INSERT INTO `BOOKHOTEL` (roomtype,hotel_id,member_id) VALUES(4,1,12);
