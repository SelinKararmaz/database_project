Set search_path = 'project','public';

CREATE TABLE IF NOT EXISTS "Employee"
(
    "ID" integer NOT NULL,
    "firstName" VARCHAR(255) NOT NULL,
    "lastName" VARCHAR(255) NOT NULL,
    "houseNo" integer,
    street VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    "postalCode" VARCHAR(255),
    role VARCHAR(255),
    "employeeType" VARCHAR(255),
    salary integer,
    "SSN" VARCHAR(255),
    "emailAddress" VARCHAR(255),
    "DOB" DATE,
    "phone number" VARCHAR(255),
    age integer,
    CONSTRAINT "Employee_pkey" PRIMARY KEY ("ID")
)
