create table register (
	number int not null ,
    id varchar(30) not null,
    password varchar(30) not null,
    name varchar(30) not null,
    birth DATE not null,
    address varchar(50) not null,
    phone varchar(15) not null,
    classification varchar(10) not null,
    primary key(number)
);

create table patient (
	patient_number int not null primary key,
    name varchar(30) not null,
    birth DATE not null,
    address varchar(50) not null,
    phone varchar(15) not null,
    hospitalization_date DATE not null,
    discharge_date DATE not null,
    room_number int,
    application varchar(30) not null,
    classification varchar(10) not null
);

create table family (
	family_number INT NOT NULL,
    certificate varchar(30) not null,
    approval BOOLEAN,
    
    PRIMARY KEY(family_number),
	FOREIGN KEY(number) REFERENCES register(number),
    FOREIGN KEY(patient_number) REFERENCES patient(patient_number)
);

create table admin (
	admin_number INT NOT NULL,
    id varchar(30) not null,
    password varchar(30) not null,
    name varchar(30) not null,
    birth DATE not null,
    address varchar(50) not null,
    phone varchar(15) not null,
    
    PRIMARY KEY(admin_number),
	FOREIGN KEY(number) REFERENCES register(number)
);

create table caregiver (
	caregiver_number INT NOT NULL,
    start_date DATE not null,
    resignation_date DATE not null,
	approval BOOLEAN,
        
    PRIMARY KEY(caregiver_number),
	FOREIGN KEY(number) REFERENCES register(number)
);

create table reservation (
	visit_number INT NOT NULL,
    visit_date DATE NOT NULL,
    visit_time TIME NOT NULL,
        
    PRIMARY KEY(visit_number),
	FOREIGN KEY(family_number) REFERENCES family(family_number),
    FOREIGN KEY(patient_number) REFERENCES patient(patient_number),
);



