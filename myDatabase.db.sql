BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "students" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	TEXT,
	"Gender"	TEXT,
	"Points"	INTEGER,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "graduates" (
	"ID"	int NOT NULL,
	"Name"	text NOT NULL UNIQUE,
	"Age"	int,
	"Gender"	text,
	"Points"	int,
	"Graduation"	date,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "emp_comp" (
	"ID"	int,
	"Name"	text NOT NULL,
	"Company_Name"	text NOT NULL,
	"Company_Date"	date,
	PRIMARY KEY("ID")
);
INSERT INTO "students" VALUES (1,'Alex','21','M',198);
INSERT INTO "students" VALUES (2,'Basma','25','F',305);
INSERT INTO "students" VALUES (3,'Hasan','30','M',150);
INSERT INTO "students" VALUES (5,'Robert','34','M',500);
INSERT INTO "students" VALUES (6,'Jana','33','F',500);
INSERT INTO "students" VALUES (8,'Ahmad','20','M',NULL);
INSERT INTO "graduates" VALUES (1,'Layal',18,'F',350,-2019);
COMMIT;
