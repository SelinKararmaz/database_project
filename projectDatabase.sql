Set search_path = 'project','public';

CREATE TABLE IF NOT EXISTS Employee
(
    employee_id integer NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    houseno integer,
    street character varying(255),
    city character varying(255),
    province character varying(255),
    postalcode character varying(255),
    employeerole character varying(255),
    employeetype character varying(255),
    salary integer,
    ssn character varying(255),
    emailaddress character varying(255),
    dob date,
    phonenumber character varying(255),
    age integer,
    CONSTRAINT employee_pkey PRIMARY KEY (employee_id)
)

CREATE TABLE IF NOT EXISTS Review
(
    Review_ID integer NOT NULL,
    Patient_ID integer NOT NULL,
    customerComments VARCHAR(255),
    Branch_No integer NOT NULL,
    CONSTRAINT Review_pkey PRIMARY KEY (Review_ID)
	
)

CREATE TABLE IF NOT EXISTS Branch
(
	branchNo integer NOT NULL,
	houseno integer,
    street character varying(255),
    city character varying(255),
    province character varying(255),
    postalcode character varying(255),
	emailaddress character varying(255),
    phonenumber character varying(255)
);

CREATE TABLE IF NOT EXISTS Patient
(
	patient_id integer NOT NULL,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    houseno integer,
    street VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    postalcode VARCHAR(255),
	gender VARCHAR(255),
	insuranceNo integer,
	SSN integer,
	emailAddress VARCHAR(255),
	dob date,
    phonenumber VARCHAR(255),
    age integer,
    CONSTRAINT patient_pkey PRIMARY KEY (patient_id)
);

ALTER TABLE Branch ADD PRIMARY KEY (branchNo);

CREATE TABLE Record(
	recordID integer NOT NULL,
	treatmentID integer NOT NULL,
	PRIMARY KEY (recordID,treatmentID));
	
CREATE TABLE Treatment(
	treatmentType VARCHAR(255),
	procedureTypeCode VARCHAR(255),
	medication VARCHAR(255),
	sympotoms VARCHAR[],
	tooth VARCHAR(255),
	dentistComments VARCHAR(255)
);
