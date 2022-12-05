CREATE TABLE school (
					HCE_id SERIAL (500) NOT NULL, 
					school_name VARCHAR (500) NOT NULL,
					street VARCHAR (500) NOT NULL,
					zip VARCHAR (500) NOT NULL, 
					city VARCHAR (500)NOT NULL,
					);
          
ALTER TABLE school ADD CONSTRAINT PK_school PRIMARY KEY (HCE_id);
					
create table person (
          person_id SERIAL (500) NOT NULL, 
					person_number VARCHAR (12),
					first_name VARCHAR (500),
					last_name VARCHAR (500),
					street VARCHAR (500),
					zip VARCHAR (500), 
					city VARCHAR (500),
					);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (person_id);


CREATE TABLE instructor (
          instructor_id SERIAL (500) NOT NULL, 
					employment_id VARCHAR (500),
					person_id VARCHAR (500),	
					);
        
ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id);


CREATE TABLE phone (
          phone_id SERIAL (500) NOT NULL, 
					phone_no VARCHAR (500) unique,
					);
          
ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (phone_id);
		
    
CREATE TABLE person_phone (
          person_id INTEGER NOT NULL, /*FK*/ 
					phone_id INTEGER NOT NULL, /*FK*/
          CONSTRAINT  pers_id FOREIGN KEY (person_id) REFERENCES  person(person_id),
					CONSTRAINT  phn_id FOREIGN KEY (phone_id) REFERENCES  phone(phone_id),  
					);
					
          
CREATE TABLE email (
          email_id SERIAL (500) NOT NULL, 
					email VARCHAR (500) unique,
					);
          
ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (email_id);


CREATE TABLE person_email (
          person_id INTEGER NOT NULL, /*FK*/ 
					email_id INTEGER NOT NULL, /*FK*/
				  CONSTRAINT pers_id FOREIGN KEY (person_id) REFERENCES person(person_id),
					CONSTRAINT eml_id FOREIGN KEY (email_id) REFERENCES email(email_id),
					);
          
					
CREATE TABLE lesson (
          lesson_id  SERIAL (500) NOT NULL,
	        time_lesson TIMESTAMP (10), 
					HCE_id integer NOT NULL /*FK*/
					instructor_id INTEGER NOT NULL, /*FK*/
					person_id INTEGER NOT NULL, /*FK*/
					description VARCHAR (500),
					cost_of_lesson VARCHAR (500),
					CONSTRAINT school_id FOREIGN KEY (HCE_id) REFERENCES school(HCE_id),
					CONSTRAINT instrc_id FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id),
					CONSTRAINT pers_id FOREIGN KEY (person_id) REFERENCES person(person_id),
					);
          
ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);
					
          
CREATE TABLE individual_lesson(
					lesson_id INTEGER NOT NULL, /*FK*/
					CONSTRAINT lsn_id FOREIGN KEY (lesson_id) REFERENCES school(lesson_id),
					instrument_id INTEGER NOT NULL, /*FK*/
					CONSTRAINT instmnt_id FOREIGN KEY (instrument_id) REFERENCES instrument(instrument_id),
					skill_level VARCHAR (500),
					booking_number VARCHAR (500) unique, 
          );
          

CREATE TABLE group_lesson(
					lesson_id integer NOT NULL, /*FK*/
					CONSTRAINT lsn_id FOREIGN KEY (lesson_id) REFERENCES school(lesson_id),
					instrument_id INTEGER NOT NULL, /*FK*/
					CONSTRAINT instmnt_id FOREIGN KEY (instrument_id) REFERENCES instrument(instrument_id),
					skill_level VARCHAR (500),
					min_number_students VARCHAR (500), 
					max_number_students VARCHAR (500),
          );

CREATE TABLE ensemble(
					lesson_id INTEGER NOT NULL, /*FK*/
					CONSTRAINT lsn_id FOREIGN KEY (lesson_id) REFERENCES school(lesson_id),
					genre VARCHAR (500),
					min_number_students VARCHAR (500), 
					max_number_students VARCHAR (500),
          );

CREATE TABLE instrument( 
          instrument_id SERIAL (500) NOT NULL,
				  instrument_name VARCHAR (500),
					instrument_brand VARCHAR (500),
          );
          
ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);
	
  
CREATE TABLE rental ( 
          rental_id SERIAL (500) NOT NULL,
					rental_description VARCHAR (500),
          );
          
ALTER TABLE rental ADD CONSTRAINT PK_rental PRIMARY KEY (rental_id);
					
          
CREATE TABLE Intrument_rental(
          person_id INTEGER NOT NULL /*FK*/ 
					rental_id INTEGER NOT NULL /*FK*/
          instrument_id INTEGER NOT NULL /*FK*/  
					CONSTRAINT pers_id FOREIGN KEY (person_id) REFERENCES person(person_id)
					CONSTRAINT rntl_id FOREIGN KEY (rental_id) REFERENCES rental(rental_id)
)					CONSTRAINT instmnt_id FOREIGN KEY (instrument_id) REFERENCES instrument(instrument_id)

					
