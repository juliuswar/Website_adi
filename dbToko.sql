drop database if exists dbToko;
create database dbToko;
use dbToko;

create table tblUser(
    kodeUser int primary key auto_increment,
    namaUser varchar(255),
    alamat varchar(255),
    nomorTelepon int,
    password varchar(100),
    id_role int

);

-- INSERT INTO tblUser VALUES (NULL,'Juljul','Semarang',081321234543,1);
-- INSERT INTO tblUser VALUES (NULL,'Bima','Ungaran',081324543556,2);
-- INSERT INTO tblUser VALUES (NULL,'Soleh','Mrangen',082009987654,3);
-- INSERT INTO tblUser VALUES (NULL,'Adhi','Ungaran',087889654321,4);
-- INSERT INTO tblUser VALUES (NULL,'Teno','Semarang',08954423565,5);
-- INSERT INTO tblUser VALUES (NULL,'Sutris','Semarang',087855435621,6);
-- INSERT INTO tblUser VALUES (NULL,'Agus','Salatiga',081778743722,7);
-- INSERT INTO tblUser VALUES (NULL,'Deni','Semarang',085332456211,8);
-- INSERT INTO tblUser VALUES (NULL,'Yoto','Ambarawa',089345322244,9);
-- INSERT INTO tblUser VALUES (NULL,'Hadi','Ungaran',081908765234,10);
-- INSERT INTO tblUser VALUES (NULL,'Beni','Ungaran',081905400511,11);
-- INSERT INTO tblUser VALUES (NULL,'Lukas','Salatiga',081534666780,12);
-- INSERT INTO tblUser VALUES (NULL,'Manto','Pudakpayung',081667583412,13);
-- INSERT INTO tblUser VALUES (NULL,'Slamet','Sragen',081390795044,14);
-- INSERT INTO tblUser VALUES (NULL,'Darto','Bawen',081225532342,15);
-- INSERT INTO tblUser VALUES (NULL,'Yayak','Jimbaran',081285441515,16);
-- INSERT INTO tblUser VALUES (NULL,'Titot','Semarang',085544726104,17);
-- INSERT INTO tblUser VALUES (NULL,'Windu','Ungaran',087724228212,18);
-- INSERT INTO tblUser VALUES (NULL,'Thomas','Ungaran',081540141500,19);
-- INSERT INTO tblUser VALUES (NULL,'Teguh','Bawen',087700901902,20);


create table tbljenisBarang(
    kodeJenis varchar(10) primary key,
    namaJenis varchar(255)
);

INSERT INTO tbljenisBarang VALUES ('A1','RemotTV');
INSERT INTO tbljenisBarang VALUES ('A3','AntenaRemot');
INSERT INTO tbljenisBarang VALUES ('B4','DinamoKipas');
INSERT INTO tbljenisBarang VALUES ('A2','BoosterAntena');
INSERT INTO tbljenisBarang VALUES ('B1','DinamoMesinCuci');
INSERT INTO tbljenisBarang VALUES ('D10','Adaptor12v');
INSERT INTO tbljenisBarang VALUES ('E5','Solder60w');
INSERT INTO tbljenisBarang VALUES ('E1','Tenol');
INSERT INTO tbljenisBarang VALUES ('L1','LemAlteco');
INSERT INTO tbljenisBarang VALUES ('L2','LemBakar');
INSERT INTO tbljenisBarang VALUES ('L10','LEDcumi');
INSERT INTO tbljenisBarang VALUES ('L5','LEDRGB');
INSERT INTO tbljenisBarang VALUES ('B8','BalingKipas');
INSERT INTO tbljenisBarang VALUES ('K1','Travo');
INSERT INTO tbljenisBarang VALUES ('M2','Multitester');
INSERT INTO tbljenisBarang VALUES ('K2','Kapasitor10uf');
INSERT INTO tbljenisBarang VALUES ('K3','Resistor');
INSERT INTO tbljenisBarang VALUES ('K4','Dioda');
INSERT INTO tbljenisBarang VALUES ('K10','ICSTRW6753');
INSERT INTO tbljenisBarang VALUES ('B10','Baterai3,7v');

create table tblBarang(
    kodeBarang varchar(10) primary key,
    kodeJenis varchar(10),
    namaBarang varchar(255),
    Harga double,
    stok int,
    keterangan varchar(255),
    foreign key(kodeJenis) references tbljenisBarang(kodeJenis)
);

INSERT INTO tblBarang VALUES ('B12','A1','RemotTV',25000,30,'Universal');
INSERT INTO tblBarang VALUES ('B11','A3','AntenaRemot',135000,10,'TV');
INSERT INTO tblBarang VALUES ('A9','B4','DinamoKipas',95000,14,'Kipas');
INSERT INTO tblBarang VALUES ('B10','A2','BoosterAntena',75000,8,'TV');
INSERT INTO tblBarang VALUES ('A1','B1','DinamoMesinCuci',220000,21,'Mesincuci');
INSERT INTO tblBarang VALUES ('C3','D10','Adaptor12v',45000,50,'Adaptor12v');
INSERT INTO tblBarang VALUES ('C5','E5','Solder60w',50000,36,'Solder');
INSERT INTO tblBarang VALUES ('C10','E1','Tenol',15000,40,'Solder');
INSERT INTO tblBarang VALUES ('D1','L1','LemAlteco',14000,21,'Lem');
INSERT INTO tblBarang VALUES ('D2','L2','LemBakar',3000,100,'Lem');
INSERT INTO tblBarang VALUES ('L1','L10','LEDcumi',20000,30,'Aksesoris');
INSERT INTO tblBarang VALUES ('L2','L5','LEDRGB',135000,23,'Aksesoris');
INSERT INTO tblBarang VALUES ('A10','B8','BalingKipas',25000,26,'Part');
INSERT INTO tblBarang VALUES ('C15','K1','Travo',95000,5,'Komponen');
INSERT INTO tblBarang VALUES ('E1','M2','Multitester',80000,10,'Tester');
INSERT INTO tblBarang VALUES ('K12','K2','Kapasitor10uf',20000,27,'Komponen');
INSERT INTO tblBarang VALUES ('K4','K3','Resistor',300,88,'Komponen');
INSERT INTO tblBarang VALUES ('K20','K4','Dioda',1000,51,'Komponen');
INSERT INTO tblBarang VALUES ('K11','K10','ICSTRW6753',2000,30,'Komponen');
INSERT INTO tblBarang VALUES ('C20','B10','Baterai3,7v',25000,40,'Baterai');



create table tblPenjualan(
    noTransaksi int primary key auto_increment,
    kodeUser int,
    tanggal timestamp default CURRENT_TIMESTAMP,
    totalBayar double,
    foreign key(kodeUser) references tblUser(kodeUser)

);

-- INSERT INTO tblPenjualan VALUES (NULL,1,NULL,25000);
-- INSERT INTO tblPenjualan VALUES (NULL,2,NULL,40000);
-- INSERT INTO tblPenjualan VALUES (NULL,3,NULL,2000);
-- INSERT INTO tblPenjualan VALUES (NULL,4,NULL,10000);
-- INSERT INTO tblPenjualan VALUES (NULL,5,NULL,220000);
-- INSERT INTO tblPenjualan VALUES (NULL,6,NULL,9000);
-- INSERT INTO tblPenjualan VALUES (NULL,7,NULL,90000);
-- INSERT INTO tblPenjualan VALUES (NULL,8,NULL,135000);
-- INSERT INTO tblPenjualan VALUES (NULL,9,NULL,20000);
-- INSERT INTO tblPenjualan VALUES (NULL,10,NULL,14000);
-- INSERT INTO tblPenjualan VALUES (NULL,11,NULL,40000);
-- INSERT INTO tblPenjualan VALUES (NULL,12,NULL,220000);
-- INSERT INTO tblPenjualan VALUES (NULL,13,NULL,95000);
-- INSERT INTO tblPenjualan VALUES (NULL,14,NULL,45000);
-- INSERT INTO tblPenjualan VALUES (NULL,15,NULL,25000);
-- INSERT INTO tblPenjualan VALUES (NULL,16,NULL,9000);
-- INSERT INTO tblPenjualan VALUES (NULL,17,NULL,20000);
-- INSERT INTO tblPenjualan VALUES (NULL,18,NULL,6000);
-- INSERT INTO tblPenjualan VALUES (NULL,19,NULL,75000);
-- INSERT INTO tblPenjualan VALUES (NULL,20,NULL,160000);


create table tblpenjualanDetail(
    noTransaksi int,
    kodeBarang varchar(10),
    hargaJual double,
    jumlahJual int,
    foreign key(noTransaksi) references tblPenjualan(noTransaksi),
    foreign key(kodeBarang) references tblBarang(kodeBarang)
);

-- INSERT INTO tblpenjualanDetail VALUES (1,'B12',25000,1);
-- INSERT INTO tblpenjualanDetail VALUES (2,'C3',40000,1);
-- INSERT INTO tblpenjualanDetail VALUES (3,'K11',2000,1);
-- INSERT INTO tblpenjualanDetail VALUES (4,'K20',10000,10);
-- INSERT INTO tblpenjualanDetail VALUES (5,'A1',220000,1);
-- INSERT INTO tblpenjualanDetail VALUES (6,'D2',9000,3);
-- INSERT INTO tblpenjualanDetail VALUES (7,'C5',90000,2);
-- INSERT INTO tblpenjualanDetail VALUES (8,'L2',135000,1);
-- INSERT INTO tblpenjualanDetail VALUES (9,'L1',20000,1);
-- INSERT INTO tblpenjualanDetail VALUES (10,'D1',14000,1);
-- INSERT INTO tblpenjualanDetail VALUES (11,'L1',40000,2);
-- INSERT INTO tblpenjualanDetail VALUES (12,'A1',220000,1);
-- INSERT INTO tblpenjualanDetail VALUES (13,'C15',95000,1);
-- INSERT INTO tblpenjualanDetail VALUES (14,'C3',45000,1);
-- INSERT INTO tblpenjualanDetail VALUES (15,'B12',25000,1);
-- INSERT INTO tblpenjualanDetail VALUES (16,'D2',9000,3);
-- INSERT INTO tblpenjualanDetail VALUES (17,'K12',20000,1);
-- INSERT INTO tblpenjualanDetail VALUES (18,'K11',6000,3);
-- INSERT INTO tblpenjualanDetail VALUES (19,'B10',75000,1);
-- INSERT INTO tblpenjualanDetail VALUES (20,'B11',135000,1);

create table tblpemasukanBarang(
    kodeBarang varchar(10),
    kodeJenis varchar(10),
    jumlahMasuk int,
    tanggal timestamp default CURRENT_TIMESTAMP
);

INSERT INTO tblpemasukanBarang VALUES ('B12','A1',10,NULL);
INSERT INTO tblpemasukanBarang VALUES ('B11','A3',5,NULL);
INSERT INTO tblpemasukanBarang VALUES ('A9','B4',15,NULL);
INSERT INTO tblpemasukanBarang VALUES ('B10','A2',10,NULL);
INSERT INTO tblpemasukanBarang VALUES ('A1','B1',10,NULL);
INSERT INTO tblpemasukanBarang VALUES ('C3','D10',7,NULL);
INSERT INTO tblpemasukanBarang VALUES ('C5','E5',5,NULL);
INSERT INTO tblpemasukanBarang VALUES ('C10','E1',50,NULL);
INSERT INTO tblpemasukanBarang VALUES ('D1','L1',20,NULL);
INSERT INTO tblpemasukanBarang VALUES ('D2','L2',50,NULL);
INSERT INTO tblpemasukanBarang VALUES ('L1','L10',80,NULL);
INSERT INTO tblpemasukanBarang VALUES ('L2','L5',15,NULL);
INSERT INTO tblpemasukanBarang VALUES ('A10','B8',6,NULL);
INSERT INTO tblpemasukanBarang VALUES ('C15','K1',10,NULL);
INSERT INTO tblpemasukanBarang VALUES ('E1','M2',5,NULL);
INSERT INTO tblpemasukanBarang VALUES ('K12','K2',15,NULL);
INSERT INTO tblpemasukanBarang VALUES ('K4','K3',100,NULL);
INSERT INTO tblpemasukanBarang VALUES ('K20','K4',100,NULL);
INSERT INTO tblpemasukanBarang VALUES ('K11','K10',50,NULL);
INSERT INTO tblpemasukanBarang VALUES ('C20','B10',20,NULL);


create table tblReturn(
    kodeBarang varchar(10),
    kodeJenis varchar(10),
    tanggal timestamp,
    jumlah int,
    keterangan text,
    nama_supplier varchar(255)
);
-- INSERT INTO tblReturn VALUES ('B1','A1',1,'rusak');

