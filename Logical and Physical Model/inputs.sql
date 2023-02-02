
--  instructor
INSERT INTO instructor (instructor_id,employment_id,person_number)
VALUES
  (100,'Y6H 7U6','49775889-8774'),
  (101,'O1J 5W3','51559336-1488'),
  (102,'C1J 1H0','62482786-4805'),
  (103,'D4D 7T7','12015323-5424'),
  (104,'D5O 4N0','31653181-5435'),
  (105,'U7E 5P0','68651211-3718'),
  (106,'D8M 4Y5','64388494-1982'),
  (107,'O6Y 3F1','10126019-6301'),
  (108,'V7I 6W8','64408221-6804'),
  (109,'G2N 7K7','36341879-5878');


--person
INSERT INTO person (person_id,person_number,first_name,last_name,street,zip,city)
VALUES
  (1000,'49775889-8774','Jessica','Craft','Ap #981-7448 Ante, St.','47357','Söderhamn'),
  (1001,'51559336-1488','Naida','Rosario','891 Arcu. Street','64464','Alingsås'),
  (1002,'62482786-4805','Lilah','Nielsen','531-9468 Cursus Av.','92372','Falun'),
  (1003,'12015323-5424','Howard','Lucas','Ap #928-2541 Facilisis St.','36268','Täby'),
  (1004,'31653181-5435','Phelan','Farmer','Ap #955-5879 Quis Rd.','29002','Finspång'),
  (1005,'68651211-3718','Griffith','Valdez','Ap #268-9005 Vulputate, St.','57961','Täby'),
  (1006,'64388494-1982','Shay','Whitley','358-9301 Sagittis. Ave','31638','Trollhättan'),
  (1007,'10126019-6301','Uriah','Booker','Ap #114-2520 Erat. Avenue','36217','Borlänge'),
  (1008,'64408221-6804','Melvin','Brooks','6720 Sit Av.','88895','Finspång'),
  (1009,'36341879-5878','Raya','Ayers','814-4689 At, St.','35012','Borås');


  --school
  INSERT INTO school (hce_id ,school_name,address,zip,city)
VALUES
  (1,'Main campus','P.O. Box 515, 2625 Auctor, Rd.','41335','Gävle'),
  (2,'South School','Ap #446-9007 Lacus. St.','30316','Uddevalla'),
  (3,'Sandviken campus','Ap #683-424 Adipiscing. Rd.','55759','Sandviken');


  --phone
  INSERT INTO person_phone (person_id,phone_no)
VALUES
  (1000,'(081) 24857528'),
  (1001,'(015) 51812715'),
  (1002,'(036) 36158260'),
  (1003,'(044) 81826677'),
  (1004,'(066) 91744762'),
  (1005,'(041) 61923797'),
  (1006,'(075) 75441581'),
  (1007,'(041) 62286354'),
  (1008,'(042) 12764768'),
  (1009,'(011) 57742845');

  --email
  INSERT INTO person_email (person_id,email )
VALUES
  (1000,'ac.sem@hotmail.edu'),
  (1001,'leo.cras@yahoo.edu'),
  (1002,'vivamus.sit.amet@google.couk'),
  (1003,'odio.a.purus@icloud.ca'),
  (1004,'montes.nascetur@aol.edu'),
  (1005,'dolor@aol.edu'),
  (1006,'auctor.mauris@yahoo.com'),
  (1007,'ut@yahoo.ca'),
  (1008,'lorem.vehicula.et@outlook.ca'),
  (1009,'tempus.lorem@hotmail.net');


  --  lesson
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (1, 2, 3, 3, '2021/10/05 12:50:00', null, null, null, null, 'saxophone', 'individual', 'Advanced');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (2, 1, 4, 3, '2020/10/18 11:40:00', null, null, null, null, 'Piano', 'individual', 'Advanced');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (3, 3, 3, 2, '2021/12/05 09:50:00', null, null, null, null, 'clarinet', 'individual', 'Intermediate');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (4, 5, 5, 1, '2021/07/21 08:00:00', null, null, null, null, 'violin', 'individual', 'Beginner');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (5, 2, 4, 1, '2021/09/02 14:00:00', null, null, null, null, 'flute', 'individual', 'Beginner');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (6, 1, 3, 2, '2022/01/21 13:00:00', null, null, null, null, 'Piano', 'individual', 'Intermediate');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (7, 8, 5, 3, '2021/02/24 08:00:00', null, null, null, null, 'saxophone', 'individual', 'Beginner');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (8, 2, 3, 1, '2021/11/06 12:00:00', null, null, null, null, 'flute', 'individual', 'Beginner');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (9, 3, 3, 1,'2021/01/04 16:00:00', null, null, null, null, 'electric guitar', 'individual', 'Beginner');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (10, 4, 4, 3, '2021/12/16 16:30:00', null, null, null, null, 'violin', 'individual', 'Advanced');

insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (11, 1, 2, 7, '2021/05/18 10:10:00', 'gospel band', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (12, 2, 5, 7, '2021/10/25 14:50:00', 'Jazz', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (13, 3, 2, 7, '2020/10/12 15:30:00', 'blues', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (14, 1, 2, 7, '2021/07/24 08:00:00', 'Rock', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (15, 2, 3, 7, '2020/12/23 09:40:00', 'classical music', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (16, 3, 1, 7, '2021/08/29 12:00:00', 'classical music', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (17, 1, 2, 7, '2021/08/03 17:00:00', 'blues', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (18, 2, 3, 7, '2020/12/27 09:00:00', 'Jazz', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (19, 3, 3, 7, '2021/06/27 11:30:00', 'gospel band', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (20, 1, 4, 7, '2022/01/23 08:00:00', 'R&B', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (21, 2, 4, 7, '2021/02/01 16:15:00', 'Folk Music', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (22, 3, 2, 7, '2022/02/04 13:15:00', 'Country', 4, 3, 20, null, 'ensemble', null);

insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (23, 5, 5, 5, '2020/11/19 12:00:00', null, 4, 3, 10, 'guitar', 'group', 'Intermediate');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (24, 4, 2, 6, '2021/06/28 08:15:00', null, 4, 3, 10, 'trumpet', 'group', 'Advanced');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (25, 3, 3, 5, '2020/10/08 09:30:00', null, 4, 3, 10, 'electric guitar', 'group', 'Intermediate');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (26, 6, 3, 5, '2022/02/19 14:00:00', null, 4, 3, 10, 'violin', 'group', 'Intermediate');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (27, 4, 1, 5, '2021/08/16 17:00:00', null, 4, 3, 10, 'trumpet', 'group', 'Intermediate');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (28, 5, 2, 5, '2021/03/13 12:30:00', null, 4, 3, 10, 'violin', 'group', 'Intermediate');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (29, 7, 5, 6, '2020/10/27 14:30:00', null, 4, 3, 10, 'trumpet', 'group', 'Advanced');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (30, 2, 4, 6, '2022/03/01 08:50:00', null, 4, 3, 10, 'electric guitar', 'group', 'Advanced');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (31, 7, 3, 4, '2021/07/08 09:15:00', null, 4, 3, 10, 'clarinet', 'group', 'Beginner');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (32, 2, 2, 4, '2021/02/18 14:15:00', null, 4, 3, 10, 'clarinet', 'group', 'Beginner');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (33, 4, 2, 6, '2021/03/10 10:15:00', null, 4, 3, 10, 'electric guitar', 'group', 'Advanced');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (34, 2, 1, 6, '2021/03/01 13:50:00', null, 4, 3, 10, 'cello', 'group', 'Advanced');
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (35, 5, 5, 6, '2021/05/19 20:50:00', null, 4, 3, 10, 'Piano', 'group', 'Advanced');

insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (36, 1, 4, 7, '2021/12/27 08:00:00', 'R&B', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (37, 2, 4, 7, '2021/12/28 16:15:00', 'Folk Music', 4, 3, 20, null, 'ensemble', null);
insert into lesson (lesson_id, instructor_id, room_id, price_type_id, time, genre, amount_students, min_students, max_students, instrument_type, lesson_type, skill_level) values (38, 3, 2, 7, '2021/12/29 13:15:00', 'Country', 4, 3, 20, null, 'ensemble', null);


 --  instrument
insert into instrument (id, type) values (1, 'Piano');
insert into instrument (id, type) values (2, 'Guitar');
insert into instrument (id, type) values (3, 'Violin');
insert into instrument (id, type) values (4, 'Drums');
insert into instrument (id, type) values (5, 'Saxophone');
insert into instrument (id, type) values (6, 'Flute');
insert into instrument (id, type) values (7, 'Clarinet');
insert into instrument (id, type) values (8, 'Cello');
insert into instrument (id, type) values (9, 'Trumpet');
insert into instrument (id, type) values (10, 'Electric guitar');

-- instrument_to_rent
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (1, 'Veribet', 'piano', 212, true);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (2, 'Subin', 'cello', 128, false);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (3, 'Rank', 'guitar', 194, true);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (4, 'Gembucket', 'guitar', 155, true);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (5,'Bigtax', 'harp', 115, false);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (6,'Matsoft', 'violin', 107, false);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (7,'Bamity', 'drums', 148, false);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (8,'Greenlam', 'clarinet', 218, false);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (9, 'Otcom', 'flute', 124, true);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (10, 'Opela', 'drums', 196, false);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (11,'Rank', 'clarinet', 162, true);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (12, 'Viva', 'piano', 139, false);
insert into instrument_to_rent (instrument_id, brand, type, price, is_available) values (13,  'Bitwolf', 'violin', 164, true)

 --  instrument_rental
insert into instrument_rental (rental_id, time_rented, student_id, is_terminated, instrument_id) values (1, '2021-04-06 22:25:50', 7, true, 5);
insert into instrument_rental (rental_id, time_rented, student_id, is_terminated, instrument_id) values (2, '2021-04-04 20:18:19', 1, true, 16);
insert into instrument_rental (rental_id, time_rented, student_id, is_terminated, instrument_id) values (3, '2021-08-25 04:19:15', 12, true, 8);
insert into instrument_rental (rental_id, time_rented, student_id, is_terminated, instrument_id) values (4, '2021-03-30 11:31:51', 25, false, 2);
insert into instrument_rental (rental_id, time_rented, student_id, is_terminated, instrument_id) values (5, '2021-09-22 16:06:14', 10, true, 21);
insert into instrument_rental (rental_id, time_rented, student_id, is_terminated, instrument_id) values (6, '2021-06-01 12:09:41', 19, false, 5);
insert into instrument_rental (rental_id, time_rented, student_id, is_terminated, instrument_id) values (7, '2021-09-10 18:34:30', 16, false, 6);
insert into instrument_rental (rental_id, time_rented, student_id, is_terminated, instrument_id) values (8, '2020-12-21 02:15:31', 1, true, 2);
insert into instrument_rental (rental_id, time_rented, student_id, is_terminated, instrument_id) values (9, '2021-04-06 11:39:35', 18, true, 7);


 --  sibling
insert into sibling (student_id, person_number) values (18, '4013647070');
insert into sibling (student_id, person_number) values (26, '8653873926');
insert into sibling (student_id, person_number) values (5, '0775049192');
insert into sibling (student_id, person_number) values (24, '7256816073');
insert into sibling (student_id, person_number) values (8, '2653677903');
insert into sibling (student_id, person_number) values (15, '4437475714');
insert into sibling (student_id, person_number) values (23, '2511972389');
insert into sibling (student_id, person_number) values (20, '6573117231');
