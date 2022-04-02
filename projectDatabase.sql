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
