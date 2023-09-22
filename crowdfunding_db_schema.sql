DROP TABLE IF EXISTS "campaign";
DROP TABLE IF EXISTS "contacts";
DROP TABLE IF EXISTS "category";
DROP TABLE IF EXISTS "subcategory";



-- Tables creation 

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(100)   NOT NULL,
    "description" VARCHAR(200)   NOT NULL,
    "goal" NUMERIC(10,2)   NOT NULL,
    "pledged" NUMERIC(10,2)   NOT NULL,
    "outcome" VARCHAR(30)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(30)   NOT NULL,
    "currency" VARCHAR(30)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(30)   NOT NULL,
    "subcategory_id" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" VARCHAR(30)   NOT NULL,
    "category" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(30)   NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");



-- Verify table creation 

select * from campaign

select * from category

select * from subcategory

select * from contacts



-- Import CSV files into corresponding SQL table 
-- (Change each path to corresponding file paths.)

copy category from '/Users/andreaaguilar/Crowdfunding_ETL/Resources/category.csv' delimiter ',' csv header;

copy subcategory from '/Users/andreaaguilar/Crowdfunding_ETL/Resources/subcategory.csv' delimiter ',' csv header;

copy contacts from '/Users/andreaaguilar/Crowdfunding_ETL/Resources/contacts.csv' delimiter ',' csv header;

copy campaign from '/Users/andreaaguilar/Crowdfunding_ETL/Resources/campaign.csv' delimiter ',' csv header;



-- Verify data import

select * from campaign

select * from category

select * from subcategory

select * from contacts