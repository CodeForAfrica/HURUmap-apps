--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE EXTENSION IF NOT EXISTS hstore SCHEMA public;

--
-- Name: university_finder; Type: TABLE; Schema: public; Owner: elimu_yangu
--

ALTER TABLE IF EXISTS ONLY public.university_finder DROP CONSTRAINT IF EXISTS pk_university_finder;
DROP TABLE IF EXISTS public.university_finder;

CREATE TABLE public.university_finder (
    id integer NOT NULL,
    university_name character varying,
    course_name character varying,
    major_name character varying,
    compulsory_alevel public.hstore,
    compulsory_olevel public.hstore,
    other_alevel public.hstore,
    other_olevel public.hstore,
    total_point numeric DEFAULT 0 NOT NULL
);


--
-- Name: university_finder_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.university_finder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: university_finder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.university_finder_id_seq OWNED BY public.university_finder.id;


--
-- Name: university_finder id; Type: DEFAULT; Schema: public; Owner: elimu_yangu
--

ALTER TABLE ONLY public.university_finder ALTER COLUMN id SET DEFAULT nextval('public.university_finder_id_seq'::regclass);


--
-- Data for Name: university_finder; Type: TABLE DATA; Schema: public; Owner: elimu_yangu
--

COPY public.university_finder (id, university_name, course_name, major_name, compulsory_alevel, compulsory_olevel, other_alevel, other_olevel, total_point) FROM stdin;
29	University of Dar es Salaam	Bachelor of Sciene in Metallurgy and Mineral Processing Engineering	Engineering	"Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			0
3	University of Dar es Salaam	Bachelor of science in Agricultural Engineering and Mechanization	Engineering\\\\,Agritechnology	"Physics"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"		"Chemistry"=>"E"		4
5	University of Dar es Salaam	Bachelor of science in Agricultural and Natural Resources Economics and Business	Agribusiness\\\\, "Agriculture"	"Biology"=>"E", "Economics"=>"E", "General Studies"=>"S"		"Physics"=>"E", "Commerce"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E"	"Basic Mathematics"=>"E"	4
25	University of Dar es Salaam	Bachelor of Science in Chemical and Process Engineering	Engineering	"General Studies"=>"S", "Advance Mathematics"=>"C"	"Physics"=>"D", "Chemistry"=>"D"	"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E"		4
26	University of Dar es Salaam	Bachelor of Science in Civil Engineering	Engineering	"Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			4
27	University of Dar es Salaam	Bachelor of Science in Electrical Engineering	Engineering	"Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			4
28	University of Dar es Salaam	Bachelor of Science in Mechanical Engineering	Engineering	"Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			4
1	University of Dar es Salaam	Bachelor of science in Aquatic Sciences and Fisheries	Aquatic Science	"Biology"=>"E", "General Studies"=>"S", "Basic Mathematics"=>"S"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
2	University of Dar es Salaam	Bachelor of science in Beekeeping Science and Technology	Engineering\\\\, Agritechnology	"Biology"=>"E", "General Studies"=>"S", "Basic Mathematics"=>"S"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
4	University of Dar es Salaam	Bachelor of science in Food Science and Technology	Engineering\\\\,Agritechnology	"Biology"=>"E", "General Studies"=>"S", "Basic Mathematics"=>"S"	"Basic Mathematics"=>"E"	"Physics"=>"E", "Chemistry"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
35	University of Dar es Salaam	Bachelor of Architecture	Architecture	"Physics"=>"E", "Fine Art"=>"E", "Chemistry"=>"E", "Geography"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				0
58	University of Dar es Salaam	Bachelor of Commerce in Accounting	Accountancy	"General Studies"=>"S", "Advance Mathematics"=>"E"	"Basic Mathematics"=>"D"			4
59	University of Dar es Salaam	Bachelor of Commerce in Banking and Financial Services	Banking\\\\, Business Studies	"General Studies"=>"S", "Advance Mathematics"=>"E"	"Basic Mathematics"=>"D"			4
60	University of Dar es Salaam	Bachelor of Commerce in Finance	Finance\\\\, Business Studies	"General Studies"=>"S", "Advance Mathematics"=>"E"	"Basic Mathematics"=>"D"			4
61	University of Dar es Salaam	Bachelor of Commerce in Human Resources Management	Human Resources	"General Studies"=>"S", "Advance Mathematics"=>"E"	"Basic Mathematics"=>"D"			4
62	University of Dar es Salaam	Bachelor of Commerce in Marketing	Marketing	"General Studies"=>"S", "Advance Mathematics"=>"E"	"Basic Mathematics"=>"D"			4
30	University of Dar es Salaam	Bachelor of Science in Mining Engineering	Engineering	"Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			4
31	University of Dar es Salaam	Bachelor of Science in Industrial Engineering	Engineering	"Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			4
32	University of Dar es Salaam	Bachelor of Science in Textile Design and Technology	Textile Design	"Physics"=>"E", "Fine Art"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D", "Basic Mathematics"=>"D"			4
64	University of Dar es Salaam	Bachelor of Business Administration	Business Administration\\\\, Business Studies	"General Studies"=>"S", "Advance Mathematics"=>"E"	"Basic Mathematics"=>"D"			0
65	University of Dar es Salaam	Bachelor of Education in Adult and Community Education	Education\\\\, Community Education	"Biology"=>"E", "History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	0
66	University of Dar es Salaam	Bachelor of Education in Early Childhood Education	Education\\\\, Child Education	"Biology"=>"E", "History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	0
67	University of Dar es Salaam	Bachelor of Education in Psychology	Psychology Education	"Biology"=>"E", "History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	0
70	University of Dar es Salaam	Bachelor of Laws	Law	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	0
63	University of Dar es Salaam	Bachelor of Commerce in Tourism and Hospitality Management	Tourism	"General Studies"=>"S", "Advance Mathematics"=>"E"	"Basic Mathematics"=>"D"			4
68	University of Dar es Salaam	Bachelor of Education in Commerce	Education\\\\, Commerce	"Economics"=>"E", "Accountancy"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"			4
6	University of Dar es Salaam	Bachelor of Arts in (Heritage Management)	Art\\\\, Designer	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"	5
7	University of Dar es Salaam	Bachelor of Arts in Art and Design	Art	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"	5
8	University of Dar es Salaam	Bachelor of Arts in Theatre Arts	Art	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"	5
9	University of Dar es Salaam	Bachelor of Arts in Film and Television	Art\\\\,Filming	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"	5
10	University of Dar es Salaam	Bachelor of Arts in Music	Music\\\\,Art	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"	5
11	University of Dar es Salaam	Bachelor of Arts in (History)	Art\\\\, History	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"	5
12	University of Dar es Salaam	Bachelor of Arts in (Archeology)	Archeology	"History"=>"E", "General Studies"=>"S"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E", "Economics"=>"E", "Geography"=>"E", "Kiswahili"=>"E", "Agriculture"=>"E", "English Language"=>"E", "Food & Nutrition"=>"E"	"Fine Art"=>"E"	5
13	University of Dar es Salaam	Bachelor of Arts in Language Studies	Language	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"English"=>"D"	5
14	University of Dar es Salaam	Bachelor of Arts in Literature	Literature	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"		5
15	University of Dar es Salaam	Bachelor of Arts in History	History	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"History"=>"D"	5
16	University of Dar es Salaam	Bachelor of Arts with Education (shared with CoSS)	Art\\\\, Education	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"History"=>"D"	5
17	University of Dar es Salaam	Bachelor of Arts with Education (Chinese and English)	Language\\\\, Education	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"		5
18	University of Dar es Salaam	Bachelor of Arts in Anthropology	Anthropology	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"History"=>"D"	5
19	University of Dar es Salaam	Bachelor of Arts in Economics	Economics	"Economics"=>"C", "Accountancy"=>"C", "Advance Mathematics"=>"C"		"Geography"=>"E", "English Language"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	5
69	University of Dar es Salaam	Bachelor of Education in Physical Education and Sport Sciences	Physical Education	"Biologoy"=>"E", "General Studies"=>"S"	"Biology"=>"D"			4
76	University of Dar es Salaam	Bachelor of Education in Science	Education\\\\, Science	"Chemistry"=>"E", "Geography"=>"E", "General Studies"=>"S"		"Biology"=>"E", "Physics"=>"E", "Basic Mathematics"=>"S"		4
78	University of Dar es Salaam	Bachelor of Science with Education	Science\\\\, Education	"Chemistry"=>"E", "Geography"=>"E", "General Studies"=>"S"		"Biology"=>"E", "Physics"=>"E", "Basic Mathematics"=>"S"		4
20	University of Dar es Salaam	Bachelor of Arts in Economics and Statistics	Economics\\\\, Statistics	"Economics"=>"C", "Accountancy"=>"C", "Advance Mathematics"=>"C"		"Geography"=>"E", "English Language"=>"E"	"Commerce"=>"D"	5
21	University of Dar es Salaam	Bachelor of Arts in Geography and Environmental Studies	Environment Studies	"History"=>"E", "Geography"=>"C", "General Studies"=>"S"		"English Language"=>"E"	"History"=>"D"	5
23	University of Dar es Salaam	Bachelor of Arts in Sociology	Sociology	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"			"English"=>"E", "History"=>"E", "Kiswahili"=>"E"	5
24	University of Dar es Salaam	Bachelor of Arts in Statistics	Statistics	"Economics"=>"C", "Accountancy"=>"C", "General Studies"=>"S", "Advance Mathematics"=>"C"		"English"=>"E", "Geography"=>"E"	"Commerce"=>"D"	5
55	University of Dar es Salaam	Bachelor of Arts in Journalism	Journalism	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	5
56	University of Dar es Salaam	Bachelor of Arts in Mass Communication	Mass Communication	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	5
57	University of Dar es Salaam	Bachelor of Arts in Public Relations and Advertising	Public Relations	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	5
71	University of Dar es Salaam	Bachelor of Arts in Law Enforcement	Law Enforcement	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	5
72	University of Dar es Salaam	Bachelor of Arts in Kiswahili	Kiswahili	"History"=>"E", "Kiswahili"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	5
73	University of Dar es Salaam	Bachelor of Arts in Library Information Studies	Library Information Studies	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	5
74	University of Dar es Salaam	Bachelor of Arts in Development Studies	Development Studies	"History"=>"E", "General Studies"=>"S", "English Language"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	5
75	University of Dar es Salaam	Bachelor of Education in Arts	Education\\\\, Arts	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	5
77	University of Dar es Salaam	Bachelor of Arts with Education	Art\\\\, Education	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	5
33	University of Dar es Salaam	Bachelor of Science in Textile Engineering	Engineering	"Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			4
34	University of Dar es Salaam	Bachelor of Science in Petroleum Engineering	Engineering	"Physics"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"		"Chemistry"=>"E"		4
36	University of Dar es Salaam	Bachelor of Science in Quantity Surveying	Surveying	"Physics"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
37	University of Dar es Salaam	Bachelor of Science in Applied Zoology	Zoology	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
38	University of Dar es Salaam	Bachelor of Science in Botanical Sciences	Botanical Science	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
39	University of Dar es Salaam	Bachelor of Science - General	Science	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
40	University of Dar es Salaam	Bachelor of Science in Chemistry	Chemistry	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
41	University of Dar es Salaam	Bachelor of Science in Microbiology	Microbiology	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
42	University of Dar es Salaam	Bachelor of Science in Molecular Biology and Biotechnology	Molecular Biology	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
43	University of Dar es Salaam	Bachelor of Science in Wildlife Science and Conservation	Wildlife	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
44	University of Dar es Salaam	Bacheor of Science with Education	Education\\\\, Science	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E", "Economics"=>"E", "Geography"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
45	University of Dar es Salaam	Bachelor of Science in Engineering Geology	Geology\\\\, Engineering	"Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			4
46	University of Dar es Salaam	Bachelor of Science in Geology	Geology	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			4
47	University of Dar es Salaam	Bachelor of Science in Petroleum Geology	Petroleum Geology	"Physics"=>"E", "Chemistry"=>"E", "Advance Mathematics"=>"E"				4
48	University of Dar es Salaam	Bachelor of Science with Geology	Science\\\\, Geology	"Physics"=>"E", "Chemistry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			4
49	University of Dar es Salaam	Bachelor of Science in Actuarial Sciences	Actuarial Science	"General Studies"=>"S", "Advance Mathematics"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"D"		4
50	University of Dar es Salaam	Bachelor of Science in Computer Science	Computer Science	"Physics"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
51	University of Dar es Salaam	Bachelor of Science with Computer Science	Computer Science	"Physics"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
52	University of Dar es Salaam	Bachelor of Science in Electronic Science and Communication	Electronic Science	"Physics"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"				4
53	University of Dar es Salaam	Bachelor of Science in Computer Engineering and Information Technology	Engineering	"Physics"=>"E", "Chemostry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			4
54	University of Dar es Salaam	Bachelor of Science in Telecommunications Engineering	Telecommunications	"Physics"=>"E", "Chemostry"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"	"Chemistry"=>"D"			4
22	University of Dar es Salaam	Bachelor of Arts in Political Science and Public Administration	Political Science	"History"=>"E", "General Studies"=>"S", "English Language"=>"C"			"English"=>"D", "History"=>"D", "Kiswahili"=>"D"	4
81	IFM	Bachelor of Banking and Finance	Banking and Finance	"Commerce"=>"E", "Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	4
82	IFM	Bachelor of Science in information Technology	Information Technology	"Physics"=>"D", "Basic Mathematics"=>"S"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	4
83	IFM	Bachelor of Bachelor of Computer Science 	Computer science	"Physics"=>"D", "Basic Mathematics"=>"S"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	4
84	IFM	Bachelor of Science in Social Protection	Social Protection	"Biology"=>"E", "Geography"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
85	IFM	Bachelor of Science in Taxation	Taxation	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
86	Tumaini University	Bachelor of Information Management	Information Management	"English"=>"E", "History"=>"E", "Kiswahili"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
87	Tumaini University	Bachelor of Arts with Education	Arts\\\\,Education	"History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
88	Tumaini University	Bachelor of Arts in Library and Information Studies	Library Information Studies	"History"=>"E", "Kiswahili"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
89	Tumaini University	Bachelor of Arts in Mass Communication	Mass Communication	"English"=>"E", "History"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	4
90	Tumaini University	Bachelor of Business Administration	Business Administration	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
91	Tumaini University	Bachelor of Human Resources Management	Human Resources	"History"=>"E", "Kiswahili"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
92	Tumaini University	Bachelor of Laws	Law	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
93	Sokoine University	Bachelor of Information and Records Management	Information and Records Management	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
94	Sokoine University	Bachelor of Rural Development	Development Studies	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
95	Sokoine University	Bachelor of Science in Agriculture Economics and Agribusiness	Agriculture\\\\, Agribusiness\\\\, Economics	"Biology"=>"E", "Economics"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
96	Sokoine University	Bachelor of Science in Agricultural Engineering 	Engineering	"Physics"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
97	Sokoine University	Bachelor of Science in Agriculture General	Agriculture	"Physics"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"		"Physics"=>"E", "Commerce"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Basic Mathematics"=>"E"		4
98	Sokoine University	Bachelor of Science in Agronomy	Agronomy	"Biology"=>"E\\"", "Chemistry"=>"E", "Geography"=>"E"		"Chemistry"=>"E"		4
99	Sokoine University	Bachelor of Science in Animal Science	Zoology	"Biology"=>"E", "Chemistry"=>"E"		"Chemistry"=>"E"		4
100	Sokoine University	Bachelor of Science in Applied Agricultural Extension	Agriculture	"Biology"=>"E", "General Studies"=>"S", "Basic Mathematics"=>"S"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
101	Sokoine University	Bachelor of Science in Aquaculture	Aquatic Science	"Biology"=>"E", "General Studies"=>"S", "Basic Mathematics"=>"S"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E"		4
102	Sokoine University	Bachelor of Science in Bioprocess and Post-harvest engineering	Engineering	"Biology"=>"E", "Chemistry"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
103	Sokoine University	Bachelor of Science in Biotechnology and Laboratory science	Biotechnology	"Biology"=>"E", "Chemistry"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
104	Sokoine University	Bachelor of Science in environmental sciences and management	Environmnet Studies	"Biology"=>"E", "Chemistry"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E"		4
105	Sokoine University	Bachelor of Science in family and consumer studies	Family	"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E"		4
106	Sokoine University	Bachelor of science in food science and technology	Food Technology	"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E"		4
107	Sokoine University	Bachelor of science in forestry	Forestry	"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
108	Sokoine University	Bachelor of science in Horticulture	Agriculture	"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
109	Sokoine University	Bachelor of science in human nutrition	Nutrition	"Biology"=>"E", "Chemistry"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
110	Sokoine University	Bachelor of science in informatics	Informatics	"Physics"=>"E", "Chemistry"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
111	Sokoine University	Bachelor of science in irrigation and water resources engineering	Irrigation	"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
112	Sokoine University	Bachelor of science in range management	Range Management	"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E"		4
113	Sokoine University	Bachelor of science in wildlife management	Wildlife	"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
114	Sokoine University	Bachelor of science with education	Education\\\\, Science	"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
115	Sokoine University	Bachelor of tourism management	Range Management	"Economics"=>"E", "Basic Mathematics"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		4
116	Sokoine University	Bachelor of veterinary medicine	Medicine	"Biology"=>"E", "Chemistry"=>"E"		"Biology"=>"E", "Geography"=>"E", "Advance Mathematics"=>"S"		4
117	Hubert Kairuki Memorial University	Bachelor of Science in Nursing (BScN) In-Service Programme	Nursing	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Basic Mathematics"=>"D"		6
118	Hubert Kairuki Memorial University	Bachelor of Science in Nursing (BScN) Pre-Service Programme	Nursing	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Basic Mathematics"=>"D"		6
119	Muhimbili University	Bachelor of science in nursing	Nursing	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Basic Mathematics"=>"D"		6
120	Muhimbili University	Bachelor of Medical Laboratory Sciences	Laboratory sciences	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Basic Mathematics"=>"D"		6
121	Muhimbili University	Haematology and Blood Transfusion (BMLS)	Nursing	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Basic Mathematics"=>"D"		6
122	Muhimbili University	Parasitology and Medical Entomology (BMLS)	Zoology	"Chemistry"=>"E"		"Biology"=>"E", "Physics"=>"E", "Basic Mathematics"=>"E"		6
123	Muhimbili University	Clinical Chemistry (BMLS)	Chemist\\\\, Clinical Chemistry	"Chemistry"=>"E"		"Biology"=>"E", "Physics"=>"E", "Basic Mathematics"=>"E"		6
124	Muhimbili University	Histotechnology (BMLS)	Medical Technology	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Basic Mathematics"=>"E"		6
125	Muhimbili University	Bachelor of Science Radiation Therapy Technology	Medical Technology	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Basic Mathematics"=>"E"	"Physics"=>"E"	6
126	Muhimbili University	Bachelor of Pharmacy	Pharmacy	"Chemistry"=>"E"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"D", "Basic Mathematics"=>"E"		6
127	Muhimbili University	Bachelor of Science in Nursing (Management) 	Nursing	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Basic Mathematics"=>"E"		6
128	Muhimbili University	Bachelor of Science in Midwifery	Nursing	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Basic Mathematics"=>"E"		6
129	Muhimbili University	Bachelor of Science in Environmental Health Science	Environmnet Studies	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Geography"=>"E", "Basic Mathematics"=>"E"		6
130	CBE	Bachelor Degree in Marketing	Marketing	"Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	4
131	CBE	Bachelor Degree in Accountancy	Accountancy	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
132	CBE	Bachelor Degree in Business Administration	Business Administration	"Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	4
133	CBE	Bachelor Degree in Procurement and Supplies Management	Procurement	"Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
134	Kampala University	Bachelor of Medicine and Bachelor of Surgery	Medicine	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Advance Mathematics"=>"S"		2
135	Kampala University	Bachelor of Medical Laboratory Science	Laboratory sciences	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Advance Mathematics"=>"S"		2
136	Kampala University	Bachelor of Pharmacy	Pharmacy	"Chemistry"=>"E"		"Biology"=>"E", "Physics"=>"E"	"Chemistry"=>"D"	2
137	Kampala University	Bachelor of Science in Radiation Therapy Technology	Medical Technology	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Advance Mathematics"=>"E"	"Physics"=>"D"	2
138	Kampala University	Bachelor of Science in Prosthetic and Orthotics	Medicine	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Advance Mathematics"=>"E"	"Physics"=>"D"	2
139	Kampala University	Bachelor of Science in Nursing	Nursing	"Biology"=>"E", "Chemistry"=>"E"		"Physics"=>"E"	"Biology"=>"D", "English"=>"D"	2
140	Kampala University	Bachelor of Science in Environmental Health Sciences	Environmnet Studies	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Geography"=>"E", "Basic Mathematics"=>"E"		2
141	Kampala University	Bachelor of Medical Laboratory Sciences in Clinical Chemistry	Laboratory sciences	"Chemistry"=>"E"		"Biology"=>"E", "Physics"=>"E", "Basic Mathematics"=>"E"	"Chemistry"=>"D"	2
142	Kampala University	Bachelor of Medical Laboratory Sciences in Histotechnology	Laboratory sciences	"Physics"=>"E", "Chemistry"=>"E"		"Biology"=>"E", "Basic Mathematics"=>"E"		2
143	Kampala University	Bachelor of Medical Laboratory Science in Microbiology and Immunology	Laboratory sciences	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Basic Mathematics"=>"E"	"Biology"=>"D"	2
144	Kampala University	Bachelor of Medical Laboratory Sciences in Parasitology and Medical Entomology	Laboratory sciences	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Basic Mathematics"=>"E"	"Biology"=>"D"	2
145	Kampala University	Bachelor of Medical Laboratory Sciences General	Laboratory sciences	"Physics"=>"E", "Chemistry"=>"E"		"Biology"=>"E", "Basic Mathematics"=>"E"		2
146	Kampala University	Bachelor of Medical Laboratory Sciences in Hematology and Blood Transfusion	Laboratory sciences	"Physics"=>"E", "Chemistry"=>"E"		"Biology"=>"E", "Basic Mathematics"=>"E"		2
147	Kampala University	Bachelor of Sciences in Health Laboratory	Laboratory sciences	"Physics"=>"E", "Chemistry"=>"E"		"Biology"=>"E", "Basic Mathematics"=>"E"		2
148	Kampala University	Bachelor of Science in Optometry	Medicine	"Biology"=>"E", "Chemistry"=>"E"		"Physics"=>"E"	"Biology"=>"D", "Chemistry"=>"D"	2
149	Kampala University	Bachelor of Computer Science	Computer science	"Physics"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	2
150	Kampala University	Bachelor of Information Technology	Information Technology	"Physics"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	2
151	Kampala University	Bachelor of Information Systems	Information Systems	"Physics"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	2
152	Kampala University	Bachelor of Conflict Resolution and Peace Building	Conflict Resolution	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
153	Kampala University	Bachelor of Public Administration	Public Administration	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
154	Kampala University	Bachelor of Guidance and Counseling	Social Work, Counselling	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
155	Kampala University	Bachelor of Social Work and Social Administration	Social Work	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
156	Kampala University	Bachelor of Business Administration (Accounting)	Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
157	Kampala University	Bachelor of Business Administration (Finance and Banking)	Business Administration	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
158	Kampala University	Bachelor of Business Administration (Human Resources Management)	Business Administration	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
159	Kampala University	Bachelor of Business Administration (Marketing Management)	Business Administration	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
160	Kampala University	Bachelor of Business Administration (Supplies and Procurement Management)	Business Administration	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
161	Kampala University	Bachelor of Commerce	Commerce	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
162	Kampala University	Bachelor of Laws	Law	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
163	Kampala University	Bachelor of Art with Education	Education	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
164	Open university of Tanzania	Bachelor of Arts in Tourism Management (BTM)	Tourism	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "History"=>"D", "Kiswahili"=>"E"	5
165	Open university of Tanzania	Bachelor of Arts in literature (BALIT)	Literature	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "History"=>"D", "Kiswahili"=>"E"	5
166	Open university of Tanzania	Bachelor of Arts in Sociology (BA (Soc))	Sociology	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "History"=>"D", "Kiswahili"=>"E"	5
167	Open university of Tanzania	Bachelor of Arts in Social Work (BA (SW))	Social Work	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "History"=>"D", "Kiswahili"=>"E"	5
168	Open university of Tanzania	Bachelor of Arts in Journalism (BA (Journ))	Journalism	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "History"=>"D", "Kiswahili"=>"E"	5
169	Open university of Tanzania	Bachelor of Arts in Mass Communication (BA (MC))	Mass Communication	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "History"=>"D", "Kiswahili"=>"E"	5
170	Open university of Tanzania	Bachelor of Arts in Economics (BA Econ)	Economics	"Economics"=>"C", "Accountancy"=>"C", "Mathematics"=>"C"		"English"=>"E"	"Commerce"=>"D", "Geography"=>"E", "Basic Mathematics"=>"D"	5
171	Open university of Tanzania	Bachelor of Arts in English Language & Linguistics (BA ELL)	Language	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	5
172	Open university of Tanzania	Bachelor of Arts in Kiswahili & Creative Studies (BA KCS)	Kiswahili	"History"=>"E", "Kiswahili"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	5
173	Open university of Tanzania	Bachelor of Library & Information Management (BLIM)	Library Information Studies	"History"=>"E", "Kiswahili"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	5
174	Open university of Tanzania	Bachelor of Arts in History (BA Hist)	History	"English"=>"E", "History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
175	Open university of Tanzania	Bachelor of Community Economic Development (BCED)	Development Studies	"Economics"=>"C", "General Studies"=>"S"		"Geography"=>"E"	"History"=>"D", "Commerce"=>"D", "Basic Mathematics"=>"D"	5
176	Open university of Tanzania	Bachelor of Arts in Natural Resources Assessment and Management (BA NRAM)	Natural Resources	"History"=>"E", "Geography"=>"E"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
177	Open university of Tanzania	Bachelor of Arts in Population and Development (BA PD)	Development Studies	"History"=>"E", "Geography"=>"E"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
178	Open university of Tanzania	Bachelor of Arts in Philosophy and religious Studies (BA PRS)	Philosophy\\\\, Religious Studies	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
179	Open university of Tanzania	Bachelor of Arts in Public Administration (BA PA)	Public Administration	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
180	Open university of Tanzania	Bachelor of Arts in International Relations (BA IR)	International Relation	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
181	Open university of Tanzania	Bachelor of Business Administration Accounting (BBA ACC))	Business Administration\\\\, Accountancy	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	5
182	Open university of Tanzania	Bachelor of Business Administration Marketing (BBA MKT)	Business Administration\\\\, Marketing	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	5
183	Open university of Tanzania	Bachelor of Business Administration Finance (BBA FIN)	Business Adminiistration\\\\, Finance	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	5
184	Open university of Tanzania	Bachelor of business Administration Human resource Management (BBA HRM)	Human Resources\\\\, Business Administration	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	5
185	Open university of Tanzania	Bachelor of Business Administration in International Business (BBA IB)	Business Administration\\\\,International Business	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	5
186	Open university of Tanzania	Bachelor of Human Resource Management (BHRM)	Human Resources	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
187	Open university of Tanzania	Bachelor of Science (BSc.ICT))	Information Technology	"Physics"=>"E", "Basic Mathematics"=>"S"		"Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	5
188	Open university of Tanzania	Bachelor of Science in Data Management	Data Management	"Physics"=>"E", "Basic Mathematics"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		5
189	Open university of Tanzania	Bachelor of Science with Education (B.Sc. Ed)) – Conducted jointly with the Faculty of Education	Education\\\\, Science Education	"Biology"=>"E", "Chemistry"=>"E", "Basic Mathematics"=>"E"		"Physics"=>"E", "Chemistry"=>"E"	"Physics"=>"D"	5
190	Open university of Tanzania	Bachelor of Science in Environmental Studies (BSc ES)	Environment Studies	"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"		5
191	Open university of Tanzania	Bachelor of Science in Food, Nutrition and Dietetics (BSc FND)	Nutrition	"Biology"=>"E", "Foodnutrition"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Food & Nutrition"=>"E"	"Biology"=>"D"	5
192	Open university of Tanzania	Bachelor of Science in Energy Resources (BSc ER)	Energy Resources	"Physics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E"	"Mathematics"=>"D"	5
193	Open university of Tanzania	Bachelor of Education Special Education	Education	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
194	Open university of Tanzania	Bachelor of Education (Teacher Education)	Education	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
195	Open university of Tanzania	Bachelor of Education (Adult and Distance Learning)	Education	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
196	Open university of Tanzania	Bachelor of Education (Policy and Management)	Education	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
197	Open university of Tanzania	Bachelor of Arts with Education (B.A. (Ed)	Education	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Kiswahili"=>"E"	"History"=>"D"	5
198	Open university of Tanzania	Bachelor of Business Administration with Education (BBA ED)	Education\\\\, Business Administration	"Economics"=>"E", "Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"E"	5
199	Open university of Tanzania	Bachelor of Laws (LL.B)	Law	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	5
200	Ardhi University 	Bachelor of Architecture	Architecture	"Physics"=>"E", "Advance Mathematics"=>"E"		"Biology"=>"E", "Fine Art"=>"E", "Chemistry"=>"E", "Geography"=>"E"	"Basic Mathematics"=>"D"	4
201	Ardhi University 	Bachelor of Architecture in Interior Design	Interior Design	"Physics"=>"E", "Advance Mathematics"=>"E"		"Biology"=>"E", "Fine Art"=>"E", "Chemistry"=>"E", "Geography"=>"E"	"Basic Mathematics"=>"D"	4
202	Ardhi University 	Bachelor of Architecture in Landscape Architecture	Architecture	"Physics"=>"E", "Advance Mathematics"=>"E"		"Biology"=>"E", "Fine Art"=>"E", "Chemistry"=>"E", "Geography"=>"E"	"Basic Mathematics"=>"D"	4
203	Ardhi University 	Bachelor of Science in Civil Engineering	Engineering	"Physics"=>"E", "Advance Mathematics"=>"E"		"Biology"=>"E", "Fine Art"=>"E", "Chemistry"=>"E", "Geography"=>"E"	"Basic Mathematics"=>"D"	4
204	Ardhi University 	Bachelor of Science in Building Economics	Building Economics	"Physics"=>"E", "Advance Mathematics"=>"E"		"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
205	Ardhi University 	Bachelor of Science in Urban and Regional Planning	Urban and Regional Planning	"Physics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
206	Ardhi University 	Bachelor of Science in Regional Development Planning	Regional Development Planning	"Physics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
207	Ardhi University 	Bachelor of Science in Housing and Infrastructure Planning	House Planning	"Physics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
208	Ardhi University 	Bachelor of Arts in Economics	Economics	"Economics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
209	Ardhi University 	Bachelor of Arts in Community and Development Studies	Development Studies	"Physics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
210	Ardhi University 	Bachelor of Science in Land Management and Valuation	Land Management	"Economics"=>"E", "Geography"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
211	Ardhi University 	Bachelor of Science in Real Estate (Finance and Investment)	Real Estate	"Physics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
212	Ardhi University 	Bachelor of Science in Property and Facilities Management	Property Management	"Geography"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
213	Ardhi University 	Bachelor of Science in Accounting and Finance	Accountancy\\\\, Finance	"Economics"=>"E", "Geography"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
214	Ardhi University 	Bachelor of Science in Geomatics	Geomatics	"Physics"=>"E", "Basic Mathematics"=>"E"		"Chemistry"=>"E", "Geography"=>"E"	"Basic Mathematics"=>"D"	4
215	Ardhi University 	Bachelor of Science in Geoinformatics	Geoinformatics	"Physics"=>"E", "Basic Mathematics"=>"E"		"Chemistry"=>"E", "Geography"=>"E"	"Basic Mathematics"=>"D"	4
216	Ardhi University 	Bachelor of Science in Information Systems Management	Information Systems	"Physics"=>"E", "Basic Mathematics"=>"E"		"Chemistry"=>"E", "Geography"=>"E"	"Basic Mathematics"=>"D"	4
217	Ardhi University 	Bachelor of Science in Environmental Engineering	Engineering	"Geography"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	4
218	Ardhi University 	Bachelor of Science in Environmental Science and Management	Environment Studies	"Geography"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	4
219	Ardhi University 	Bachelor of Science in Municipal and Industrial Services Engineering	Engineering	"Physics"=>"E", "Advance Mathematics"=>"S"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	4
220	State University of Zanzibar	Bachelor of Arts with Education (B.A. (Ed)	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	4.5
221	State University of Zanzibar	Bachelor of Swahili with Education	Education, Kiswahili	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	4.5
222	State University of Zanzibar	Bachelor of Arts in Education Geography and Environmental Studies	Environment Studies\\\\, Education	"Geography"=>"E"		"English"=>"E", "History"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4.5
223	State University of Zanzibar	Bachelor of Arts in History (BA Hist)	History	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	4.5
224	State University of Zanzibar	Bchelor of Science in Environmental Health	Environment Studies	"Biology"=>"E", "Chemistry"=>"E"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E"		2
225	State University of Zanzibar	Bachelor of science with Education (B.Sc. Ed)	Education	"Biology"=>"E", "Chemistry"=>"E"		"Physics"=>"E", "Advance Mathematics"=>"E"	"Biology"=>"D", "Chemistry"=>"D"	2
226	State University of Zanzibar	Bacholor of Information Technology Application and Management	Information Technology	"Physics"=>"E", "Basic Mathematics"=>"E"		"Chemistry"=>"E", "Geography"=>"E"	"Basic Mathematics"=>"D"	2
227	State University of Zanzibar	Bachelor of science and Information technology with Education	Information Technology	"Physics"=>"E", "Basic Mathematics"=>"E"		"Chemistry"=>"E", "Geography"=>"E"	"Basic Mathematics"=>"D"	2
228	Mzumbe University	Bachelor of Human Resources Management (BHRM)	Human Resources	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	4
229	Mzumbe University	Bachelor of Public Administration (BPA)	Public Administration	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	4
230	Mzumbe University	Bachelor of Public Administration-Records and Archives Management (BPA-RAM)	Public Administration	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	4
231	Mzumbe University	Bachelor of Local Government Management (BLGM)	Local Government Management	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	4
232	Mzumbe University	Bachelor of Health Systems Management (BHSM)	Health Systems Management	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	4
233	Mzumbe University	Bachelor of Science in Economics – Economic Planning and Policy (BSc. Econ-EPP)	Economics	"Economics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
234	Mzumbe University	Bachelor of Science in Economics – Project Planning and Management (BSc.Econ- PPM)	Economics	"Economics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
235	Mzumbe University	Bachelor of Science in Economics – Population and Development (BSc. Econ-P&D)	Economics	"Economics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
236	Mzumbe University	Bachelor of Education in Languages and Management (BELM)	Language\\\\, Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	4
237	Mzumbe University	Bachelor of Education in Commerce and Accountancy (BECA)	Commerce\\\\, Accounitng\\\\, Education	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
238	Mzumbe University	Bachelor of Education in Economics and Mathematics (BEEM)	Economics\\\\, Mathematics\\\\, Education	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
239	Mzumbe University	Bachelor of Accounting and Finance in Business Sector (BAF-BS)	Accountancy\\\\, Finance	"Economics"=>"E", "Basic Mathematics"=>"S"		"Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
240	Mzumbe University	Bachelor of Accounting and Finance in Public Sector (BAF-PS)	Accountancy\\\\, Finance	"Economics"=>"E", "Basic Mathematics"=>"S"		"Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
241	Mzumbe University	Bachelor of Business Administration in Marketing Management (BBA-MKT)	Business Administration\\\\, Marketing	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
242	Mzumbe University	Bachelor of Business Administration in Entrepreneurship and Development (BBA-ED)	Business Administration\\\\, Enterpremeurs	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
243	Mzumbe University	Bachelor of Business Administration in Procurement and Logistics Management (BBA-PLM)	Business Administration\\\\, Procurement	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
244	Mzumbe University	Bachelor of Science in Library and Information Management (BSc. LIM)	Library Information Studies	"History"=>"E", "Kiswahili"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
245	Mzumbe University	Bachelor of Science in Information Technology and Systems (BSc. ITS)	Information Technology	"Basic Mathematics"=>"S"		"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"S"	"Physics"=>"D"	4
246	Mzumbe University	Bachelor of Science in Information and Communication Technology with Business (BSc. ICT-B)	Information Technology	"Physics"=>"D", "Basic Mathematics"=>"S"		"Biology"=>"D", "Chemistry"=>"S"	"Physics"=>"D"	4
247	Mzumbe University	Bachelor of Science in Information and Communication Technology with Management (BSc. ICT-M)	Information Technology	"Physics"=>"D", "Basic Mathematics"=>"S"		"Biology"=>"D", "Chemistry"=>"S"	"Physics"=>"D"	4
248	Mzumbe University	Bachelor of Science in Industrial Engineering Management (BSc. IEM)	Engineering	"Economics"=>"E", "Advance Mathematics"=>"S"		"Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	4
249	Mzumbe University	Bachelor of Science in Mathematics and ICT with Education (BSc.MIST-EDU)	Mathematics\\\\, Education\\\\, Information Technology	"Physics"=>"E", "Advance Mathematics"=>"S"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	4
250	Mzumbe University	Bachelor of Science in Production and Operations Management (BSc. POM)	Production and Operation Management	"Physics"=>"E", "Advance Mathematics"=>"S"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	4
251	Mzumbe University	Bachelor of Science in Applied Statistics (BSc. Applied Statistics)	Statistics	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
252	Muhimbili University of Health & Allied Sciences	Bachelor of Medical Laboratory Sciences (BMLS)	Laboratory sciences	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Basic Mathematics"=>"D"		6
253	Muhimbili University of Health & Allied Sciences	BMLS Haematology and Blood Transfusion	Medicine	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"D"		6
254	Muhimbili University of Health & Allied Sciences	BMLS Parasitology and Medical Entomology	Medicine	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"D"		6
255	Muhimbili University of Health & Allied Sciences	BMLS Clinical Chemistry	Chemistry\\\\, Clinical Chemistry	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"D"		6
256	Muhimbili University of Health & Allied Sciences	BMLS Histotechnology	Medical Technology	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"D"		6
257	Muhimbili University of Health & Allied Sciences	Bachelor of Science Radiation Therapy Technology (BSc RTT)	Medical Technology	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"D"		6
258	Muhimbili University of Health & Allied Sciences	Bachelor of Pharmacy	Pharmacy	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"D"		6
259	Muhimbili University of Health & Allied Sciences	Bachelor of Science Nursing Degree Programme	Nursing	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"D"		6
260	Muhimbili University of Health & Allied Sciences	Bachelor of Science Nursing (Management) Degree Programme	Nursing	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"D"		6
261	Muhimbili University of Health & Allied Sciences	Bachelor of Science Midwifery Degree Programme	Nursing	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"D"		6
262	Muhimbili University of Health & Allied Sciences	Bachelor of Science (Environmental Health Science) Degree Programme	Environment Studies	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"D"		6
263	University of Dodoma	Bachelor of Science in Business Information Systems	Information Systems	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
264	University of Dodoma	Bachelor of Science in Computer and Information Security	Information Security	"Physics"=>"E", "Advance Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
265	University of Dodoma	Bachelor of Science in Computer Engineering	Computer Engineering\\\\, Engineering	"Physics"=>"E", "Advance Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
266	University of Dodoma	Bachelor of Science in Computer Science	Computer Science	"Physics"=>"E", "Advance Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
267	University of Dodoma	Bachelor of Science in Health Information System (BSC HIS).	Health Systems Management	"Physics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
268	University of Dodoma	Bachelor of Science in ICT -Mediation and Content Development .	Information Technology	"Physics"=>"E", "Advance Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
269	University of Dodoma	Bachelor of Science in Information System (BSC.IS).	Information Systems	"Physics"=>"E", "Basic Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
270	University of Dodoma	Bachelor of Science in Multimedia Technology and Animation	Multimedia Technology	"Physics"=>"E", "Advance Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
271	University of Dodoma	Bachelor of Science in Software Engineering	Engineering	"Physics"=>"E", "Advance Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
272	University of Dodoma	Bachelor of Science in Telecommunication Engineering	Telecommucation\\\\, Engineering	"Physics"=>"E", "Advance Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
273	University of Dodoma	Bachelor of Science in Virtual Education (B.Sc. VE)	Education	"Physics"=>"E", "Advance Mathematics"=>"S"		"Biology"=>"E", "Chemistry"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
274	Mbeya University of Science and Technology	Bachelor of Electrical and Electronic Engineering	Engineering	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	4
275	Mbeya University of Science and Technology	Bachelor of Mechanical Engineering	Engineering	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	4
276	Mbeya University of Science and Technology	Bachelor of Civil Engineering	Engineering	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	4
277	Mbeya University of Science and Technology	Bachelor of Computer Engineering	Engineering\\\\, Computer Engineering	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	4
278	Mbeya University of Science and Technology	Bachelor of Technology in Architecture	Architecture	"Physics"=>"E", "Advance Mathematics"=>"E"		"Biology"=>"E", "Fine Art"=>"E", "Chemistry"=>"E", "Geography"=>"E"	"Basic Mathematics"=>"D"	4
279	Mbeya University of Science and Technology	Bachelor of Business Administration	Business Administration	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	4
280	Moshi Cooperative University	Bachelor of Arts in Accounting and Finance	Accountancy, Finance	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
281	Moshi Cooperative University	Bachelor of Arts in Business Economics	Business Studies\\\\, Economics	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
282	Moshi Cooperative University	Bachelor of Arts in Community Economic Development	Development Studies	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
283	Moshi Cooperative University	Bachelor of Arts in Co-operative Management and Accounting	Accountancy\\\\, Business Studies	"Economics"=>"E", "Basic Mathematics"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D", "Commerce"=>"D"	4
284	Moshi Cooperative University	Bachelor of Arts in Human Resource Management	Human Resources	"Economics"=>"E", "Basic Mathematics"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D", "Commerce"=>"D"	4
285	Moshi Cooperative University	Bachelor of Arts in Marketing and Entrepreneurship	Marketing\\\\, Enterpreneurship	"Economics"=>"E", "Basic Mathematics"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D", "Commerce"=>"D"	4
286	Moshi Cooperative University	Bachelor of Arts in Microfinance and Enterprise Development	Enterpreneurship\\\\, Business Studies	"Economics"=>"E", "Basic Mathematics"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D", "Commerce"=>"D"	4
287	Moshi Cooperative University	Bachelor of Arts in Procurement and Supply Management	Procurement	"Economics"=>"E", "Basic Mathematics"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D", "Commerce"=>"D"	4
288	Moshi Cooperative University	Bachelor of Library and Information Sciences	Library Information Studies	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
289	Moshi Cooperative University	Bachelor of Science in Business Information and Communication Technology	Information Technology	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
290	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Bachlor of science with Education	Education	"Basic Mathematics"=>"E"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	4
291	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Bachelor of Agricultural Economics and Agribusiness	Agriculture\\\\, Agribusiness\\\\, Economics	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E", "Agriculture"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
292	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Bachelor of Agricultural Financing	Agriculture\\\\, Finance	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
293	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Bachelor of Marketing Management	Marketing	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
294	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Bachelor of Entrepreneurship Development	Enterpreneurship\\\\, Business Studies	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
295	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Bachelor of Human Resource Management	Human Resources	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	4
296	Hubert Kairuki Memorial University	Bachelor of Science in Nursing (BScN)	Nursing	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"E"		4
297	International Medical and Technological University 	Bachelor of Medicine & Bachelor of Surgery (MBBS)	Medicine	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"E"		4.5
298	International Medical and Technological University 	Bachelor of Science in Medical Laboratory Technology (BSc MLT)	Medical Technology	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"E"		4.5
299	International Medical and Technological University 	Bachelor of Science in Nursing	Nursing	"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"E"		4.5
300	Tumaini University Makumira	Bachelor of Science in Computer and Information Management	Information Managemnt	"Physics"=>"E", "Basic Mathematics"=>"E"		"Biology"=>"E", "Chemistry"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
301	Tumaini University Makumira	Bachelor of Business Administration	Business Studies	"Economics"=>"E", "Basic Mathematics"=>"E"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
302	Tumaini University Makumira	Bachelor of Arts in Languages for Academic and Professional Skills (English, Kiswahili, French)	Language	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
303	Tumaini University Makumira	Bachelor of Education	Education	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
304	Tumaini University Makumira	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
305	Tumaini University Makumira	Bachelor of Arts in Music	Music	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
306	Tumaini University Makumira	Bachelor of Laws	Law	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
307	Tumaini University Makumira	Bachelor of Divinity	Divinity\\\\, Religious Studies	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
308	Tumaini University Makumira	Bachelor of Counseling	Social Work\\\\, Counselling	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
309	St. Augustine University of Tanzania	Bachelor of Arts in Public Relations and Marketing	Public Relations	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
310	St. Augustine University of Tanzania	Bachelor of Arts in Sociology	Sociology	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
311	St. Augustine University of Tanzania	Bachelor of Arts in Economics	Economics	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
312	St. Augustine University of Tanzania	Bachelor of Business Administration	Business Studies	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
313	St. Augustine University of Tanzania	Bachelor of Science in Procurement and Supply Chain Management	Procurement	"Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
314	St. Augustine University of Tanzania	Bachelor of Science in Tourism and Hospitality Management	Tourism	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "History"=>"D", "Kiswahili"=>"E"	2
315	St. Augustine University of Tanzania	Bachelor of Arts in Mass Communication	Mass Communication	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
316	St. Augustine University of Tanzania	Bachelor of Philosophy with Education	Philosophy	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
317	St. Augustine University of Tanzania	Bachelor of Arts in Religious Studies	Religious Studies	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
318	St. Augustine University of Tanzania	Bachelor of Laws	Law	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
319	St. Augustine University of Tanzania	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
320	St. Augustine University of Tanzania	Bachelor of Science in Civil Engineering	Engineering	"Physics"=>"E", "Advance Mathematics"=>"E"		"Biology"=>"E", "Fine Art"=>"E", "Chemistry"=>"E", "Geography"=>"E"	"Basic Mathematics"=>"D"	4.5
321	St. Augustine University of Tanzania	Bachelor of Science in Electrical Engineering	Engineering	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	4.5
322	Zanzibar University	Bachelor of Business Administration in Marketing	Marketing\\\\, Business Studies	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
323	Zanzibar University	Bachelor of Business Administration in Accounting and Finance	Business Studies\\\\, Accountancy\\\\, Finance	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
324	Zanzibar University	Bachelor of Business Information Technology	Information Technology	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
325	Zanzibar University	Bachelor of Law and Shariah	Law\\\\, Shariah	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
326	Zanzibar University	Bachelor of Arts in Public Administration	Public Administration	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
327	Zanzibar University	Bachelor of Arts in Economics	Economics	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
328	Mount Meru University	Bachelor of Christian Education	Education\\\\, Religious Studies	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
329	Mount Meru University	Bachelor of Theology	Theology\\\\, Religious Studies	"English"=>"E", "History"=>"E", "Divinity"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2.5
330	Mount Meru University	Bachelor of Arts in Community Economic Development	Development Studies	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
331	Mount Meru University	Bachelor of Business Administration (Accounting and Finance,Entrepreneurship,Marketing)	Business Studies	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
332	Mount Meru University	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
333	Mount Meru University	Bachelor of Arts in Human Resource Management	Human Resources	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
334	Mount Meru University	Bachelor of Education in Religious Education	Education\\\\, Religious Studies\\\\, Religious Education	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
335	Mount Meru University	Bachelor of Theology with Education	Education\\\\, Theology\\\\, Religious Studies	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
336	Mount Meru University	Bachelor of Science with Education	Education	"Basic Mathematics"=>"E"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"	"Mathematics"=>"D"	2
337	University of Arusha	Bachelor of Arts in Theology	Religious Studies	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
338	University of Arusha	Bachelor of Arts in Religion	Religious Studies	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
339	University of Arusha	Bachelor of Business Administration in Accounting	Business Studies\\\\, Accountancy	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
340	University of Arusha	Bachelor of Business Administration in Management	Business Studies	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
341	University of Arusha	Bachelor of Business Administration in Marketing	Business Studies\\\\, Marketing	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
342	University of Arusha	Bachelor of Business Administration in Office Administration & HRM	Business Studies	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
343	University of Arusha	Bachelor of Business Administration in Accounting with Education	Education\\\\, Business Studies\\\\, Accountancy	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
344	University of Arusha	Bachelor of Education (options in any of the following ): English, Kiswahili, Geography, History, Religion, BED Accounting	Education	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
345	Teofilo Kisanji University	Bachelor of Education Mathematics	Education\\\\, Mathematics	"Physics"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	2
346	Teofilo Kisanji University	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
347	Teofilo Kisanji University	Bachelor of Education Languages	Language\\\\, Education	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
348	Teofilo Kisanji University	Bachelor of Education in Psychology	Psychology	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
349	Teofilo Kisanji University	Bachelor of Commerce	Commerce	"Commerce"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Economics"=>"E", "Basic Mathematics"=>"D"	2
350	Teofilo Kisanji University	Bachelor of Arts Economics	Economics	"Commerce"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
351	Teofilo Kisanji University	Bachelor of Arts Sociology and Social Work	Social Work\\\\, Sociology	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "History"=>"D", "Kiswahili"=>"D"	2
352	Teofilo Kisanji University	Bachelor of Education Counselling Psychology	Education\\\\, Counselling	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
353	Teofilo Kisanji University	Bachelor of Science in Management Information	Information Managemnt	"Physics"=>"C", "Basic Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
354	Teofilo Kisanji University	Bachelor of Divinity	Divinity\\\\, Religious Studies	"English"=>"E", "History"=>"E", "Divinity"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
355	Teofilo Kisanji University	Bachelor of Business Administration	Business Studies	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
356	Teofilo Kisanji University	Bachelor of Human Resources Management	Human Resources	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	2
357	Teofilo Kisanji University	Bachelor of Law	Law	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
358	Teofilo Kisanji University	Bachelor of Science in Computer Science	Computer Science	"Physics"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	2
359	Teofilo Kisanji University	Bachelor of Science in Environmental Studies	Environment Studies	"Geography"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	2
360	Muslim University of Morogoro	Bachelor of Arts with Education	Education	"English"=>"E", "Geography"=>"E"		"English"=>"E", "Kiswahili"=>"E"	"History"=>"D", "Commerce"=>"D"	2
361	Muslim University of Morogoro	Bachelor of Languages and Interpretation	Language	"English"=>"E", "History"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	2
362	Muslim University of Morogoro	Bachelor of Arts in Mass Communication	Mass Communication	"English"=>"E", "History"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	2
363	Muslim University of Morogoro	Bachelor of Science with Education	Education	"Basic Mathematics"=>"E"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	2
364	Muslim University of Morogoro	Bachelor of Islamic Studies with Education	Islaminc Studies\\\\, Religious Studies\\\\, Education\\\\, Religious Education	"History"=>"E"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
365	Muslim University of Morogoro	Bachelor of Business Administration	Business Studies\\\\,Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
366	Muslim University of Morogoro	Bachelor of Laws with Shariah	Law\\\\, Shariah\\\\, Islamic Studies	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
367	St. Johns University of Tanzania	Bachelor of Science in Nursing (BSc. Nursing)	Nursing	"Biology"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Advance Mathematics"=>"E"	"Chemistry"=>"D"	4.5
368	St. Johns University of Tanzania	Bachelor of Pharmacy (BPharm)	Pharmacy	"Chemistry"=>"E"		"Biology"=>"E", "Physics"=>"E", "Advance Mathematics"=>"E"		5.5
369	St. Johns University of Tanzania	Bachelor of Arts in Applied Theology	Religious Studies\\\\, Theology	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
370	St. Johns University of Tanzania	Bachelor of Arts in Theology with Education	Religous Studies\\\\, Religious Education\\\\, Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
371	St. Johns University of Tanzania	Bachelor of Arts in Theology with General Management	Religious Studies\\\\, Theology	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
372	St. Johns University of Tanzania	Bachelor of Arts with Education (BA Ed)	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
373	St. Johns University of Tanzania	Bachelor of Science with Education (BSc. Ed)	Education\\\\, Science Education	"Basic Mathematics"=>"E"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	2
374	St. Johns University of Tanzania	Bachelor of Business Administration	Business Studies\\\\, Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
375	St. Johns University of Tanzania	Bachelor of Business Studies	Business Studies	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2.5
376	St. Johns University of Tanzania	Bachelor of Commerce with Education	Commerce\\\\, Education	"Commerce"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E", "Economics"=>"E"	"Basic Mathematics"=>"D"	2
377	St. Johns University of Tanzania	Bachelor of Accountancy and Finance	Accountancy\\\\, Finance	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
378	University of Bagamoyo	Bachelor of Science in Mathematics and Statistics	Mathematics\\\\, Statistics	"Accountancy"=>"C", "Advance Mathematics"=>"C"		"English"=>"E", "Economics"=>"C", "Geography"=>"E"	"Commerce"=>"D"	2
379	University of Bagamoyo	Bachelor of Science in Geoinformatics	Geoinformatics	"Geography"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	2
380	University of Bagamoyo	Bachelor of Science in Chemistry	Chemistry	"Chemistry"=>"C"		"Biology"=>"E", "Physics"=>"C"	"Chemistry"=>"D", "Basic Mathematics"=>"D"	2
381	University of Bagamoyo	Bachelor of Science in Biology	Biology	"Biology"=>"D"		"Physics"=>"C", "Chemistry"=>"D", "Advance Mathematics"=>"E"	"Advance Mathematics"=>"D"	2
382	University of Bagamoyo	Bachelor of law	Law	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
383	University of Bagamoyo	Bachelor of Arts with Education (English and Geography )	Education	"English"=>"E", "Geography"=>"E"		"History"=>"E", "Kiswahili"=>"E"	"History"=>"D", "Commerce"=>"D"	2
384	Catholic University of Health and Allied Sciences	Bachelor of Pharmacy (B.Pharm):	Pharmacy	"Chemistry"=>"E"		"Biology"=>"E", "Physics"=>"E", "Advance Mathematics"=>"E"	"Chemistry"=>"D"	5
385	Catholic University of Health and Allied Sciences	Bachelor of Science in Nursing Education (B.Sc.NED):	Nursing\\\\, Education\\\\, Nursing Education	"Physics"=>"D", "Chemistry"=>"C"		"Biology"=>"C", "Nutrition"=>"E"		4
386	Catholic University of Health and Allied Sciences	Bachelor of Science in Nursing	Nursing	"Biology"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "nutrition"=>"E", "Basic Mathematics"=>"E"		4
387	Catholic University of Health and Allied Sciences	Bachelor of Medical Laboratory Sciences	Laboratory sciences	"Biology"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Nutrition"=>"E", "Basic Mathematics"=>"E"		4
388	St. Joseph University in Tanzania	Bachelor of Engineering in Civil Engineering	Engineering	"Physics"=>"D"		"Biology"=>"C", "Chemistry"=>"C", "Advance Mathematics"=>"E"		2
389	St. Joseph University in Tanzania	Bachelor of Engineering in Mechanical Engineering	Engineering	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
390	St. Joseph University in Tanzania	Bachelor of Engineering in Electrical & Electronics Engineering	Engineering	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
391	St. Joseph University in Tanzania	Bachelor of Engineering in Electronics & Communication Engineering	Engineering	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
392	St. Joseph University in Tanzania	Bachelor of Engineering in Computer Science Engineering	Engineering	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
393	St. Joseph University in Tanzania	Bachelor of Engineering in Information Systems and Network Engineering	Engineering	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
394	St. Joseph University in Tanzania	Bachelor of Science in Education with Physics and Chemistry	Education\\\\, Physics\\\\, Chemistry	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
395	St. Joseph University in Tanzania	Bachelor of Science in Education with Physics and Mathematics	Education\\\\, Physics\\\\, Mathematics	"Physics"=>"D", "Chemistry"=>"C"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
396	St. Joseph University in Tanzania	Bachelor of Science in Education with Physics and Computer Science	Education\\\\, Physics\\\\, Computer Science	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
397	St. Joseph University in Tanzania	Bachelor of Science in Education with Mathematics and Chemistry	Education\\\\, Phyisics\\\\, Mathematics	"Physics"=>"C", "Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
398	St. Joseph University in Tanzania	Bachelor of Science in Education with Mathematics and Computer Science	Education\\\\, Mathematics\\\\, Computer Science	"Advance Mathematics"=>"D"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
399	St. Joseph University in Tanzania	Bachelor of Science in Education with Biology and Chemistry	Education\\\\, Biology,	"Biology"=>"D", "Chemistry"=>"C"		"Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
400	United African University of Tanzania	Bachelor of Science in Computer Engineering and Information Technology	Computer Engineering\\\\, Engineering\\\\, Information Technology	"Physics"=>"E", "Advance Mathematics"=>"E"		"Physics"=>"C", "Chemistry"=>"D\\""	"Basic Mathematics"=>"D"	2
401	United African University of Tanzania	Bachelor of Business Administration	Business Studies\\\\, Business Administration	"Basic Mathematics"=>"S"		"English"=>"E", "History"=>"C"	"Basic Mathematics"=>"D"	2
402	Sebastian Kolowa Memorial University	Bachelor of Education Special Needs (Science Subjects)	Education\\\\, Science Education	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
403	Sebastian Kolowa Memorial University	Bachelor of Education Special Needs (Arts Subjects)	Education	"English"=>"E", "History"=>"E", "Kiswahili"=>"E"		"Commerce"=>"E", "Geography"=>"E"	"History"=>"D"	2
404	Sebastian Kolowa Memorial University	Bachelor of Science in Eco-tourism and Nature Conservation	Tourism\\\\, Nature	"Chemistry"=>"C\\"", "Geography"=>"E"		"Biology"=>"D", "Physics"=>"C", "Chemistry"=>"D"	"Basic Mathematics"=>"D"	2
405	Sebastian Kolowa Memorial University	Bachelor of Science with Education	Education\\\\, Science Education	"Biology"=>"D", "Chemistry"=>"C"		"Physics"=>"C", "Chemistry"=>"D\\"", "Advance Mathematics"=>"E"	"Basic Mathematics"=>"D"	2.5
406	Sebastian Kolowa Memorial University	Bachelor of Science in Mental Health and Rehabilitation	Medicine\\\\, Mental Health\\\\, Health Studies	"Biology"=>"D", "Chemistry"=>"C"		"Physics"=>"C", "Chemistry"=>"D\\"", "Advance Mathematics"=>"E"	"Basic Mathematics"=>"D"	2
407	University of Iringa	Bachelor of Laws (LLB)	Law	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	2
408	University of Iringa	Bachelor of counseling psychology	Counselling\\\\, Psychology	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	2
409	University of Iringa	Bachelor of Education (Mathematics)	Mathematics\\\\, Education\\\\, Science Education	"Physics"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	2
410	University of Iringa	Bachelor of Education (Arts)	Education	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	2
411	University of Iringa	Bachelor of Arts in Journalism	Journalism	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "Kiswahili"=>"D"	2
412	University of Iringa	Bachelor of Arts Community Development	Development Studies	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "Kiswahili"=>"D"	2
413	University of Iringa	Bachelor of Arts in Anthropology and Tourism	Anthropology\\\\, Tourism	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"History"=>"D"	2
414	University of Iringa	Bachelor of Business Administration	Business Studies\\\\, Business Administration	"Accountancy"=>"E", "Adance Mathematics"=>"C"		"English"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
415	University of Iringa	Bachelor of Business in Human Resource Management	Human Resources	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	2
416	University of Iringa	Bachelor of Business in Procurement and Supply Chain Management	Procurement	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
417	University of Iringa	Bachelor of Business in Marketing	Marketing	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
418	University of Iringa	Bachelor of Applied Marketing and Entrepreneurship	Marketing\\\\, Enterpreneurship	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
419	University of Iringa	Bachelor of Science in Accounting and Finance	Accountancy\\\\, Finance	"Accountancy"=>"E", "Basic Mathematics"=>"C"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
420	University of Iringa	Bachelor of Science in Economics and Finance	Economics\\\\, Finance	"Accountancy"=>"E", "Basic Mathematics"=>"C"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
421	AbdulRahman Al-Sumait Memorial University	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
422	AbdulRahman Al-Sumait Memorial University	Bachelor of Science with Education	Education\\\\, Science Education	"Biology"=>"E", "Chemistry"=>"E", "Basic Mathematics"=>"E"		"Physics"=>"E", "Chemistry"=>"E"	"Physics"=>"D"	2
423	AbdulRahman Al-Sumait Memorial University	Bachelor of Science	Science	"Biology"=>"E", "Chemistry"=>"E", "Basic Mathematics"=>"E"		"Physics"=>"E", "Chemistry"=>"E"	"Physics"=>"D"	2
424	AbdulRahman Al-Sumait Memorial University	Bachelor of Arts	Arts	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
425	Mwenge Catholic University	Bachelor of Education in Science (BEDS)	Science Education\\\\, Education	"Basic Mathematics"=>"E"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	2
426	Mwenge Catholic University	Bachelor of Science in Mathematics and Statistics (BSMST)	Mathematics\\\\, Statistics	"Biology"=>"D", "Chemistry"=>"C"		"Physics"=>"E", "Advance Mathematics"=>"E"	"Physics"=>"D"	2
427	Mwenge Catholic University	Bachelor of Arts in Geography and Environmental Studies (BAGEN)	Environment Studies	"Basic Mathematics"=>"E"		"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	4
428	Mwenge Catholic University	Bachelor of Arts in Sociology and Social work (BASSW)	Sociology\\\\, Social Work	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "History"=>"D", "Kiswahili"=>"D"	2
429	Mwenge Catholic University	Bachelor of Business Administration Management (BBA)	Business Studies\\\\,Business Administration	"Accountancy"=>"E", "Advance Mathematics"=>"C"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4
430	Mwenge Catholic University	Bachelor of Philosophy with Ethics	Philosophy	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
431	Ruaha Catholic University	Bachelor of science in computer science information system	Computer Science\\\\, Information Systems	"Physics"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	3
432	Ruaha Catholic University	Bachelor of science in computer science software engineering	Computer Science\\\\, Engineering	"Physics"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	3
433	Ruaha Catholic University	Bachelor of environmental health science with information technology	Environment Studies	"Biology"=>"E", "Physics"=>"E", "Chemistry"=>"E"		"Geography"=>"E", "Advance Mathematics"=>"E"		3
434	Ruaha Catholic University	Bachelor of law (LL.B)	Law	"English"=>"E", "History"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D", "History"=>"D"	3.5
435	Ruaha Catholic University	Bachelor of arts with education ( IT and Mathematics)	Education\\\\, Science Education	"Physics"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	4.5
436	Ruaha Catholic University	Bachelor of arts with education (IT and Geography)	Education	"Geography"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Advance Mathematics"=>"S"	"Physics"=>"D"	4.5
437	Ruaha Catholic University	Bachelor of arts with education (Information technology and Economics)	Education\\\\, Science Education	"Physics"=>"E", "Basic Mathematics"=>"S"		"Physics"=>"E", "Chemistry"=>"E"		4.5
438	Ruaha Catholic University	Bachelor of Business Administration (BBA)	Business Studies\\\\,Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	3
439	Ruaha Catholic University	Bachelor of Accounting and finance with information technology (BAFIT)	Accountancy\\\\, Finance\\\\, information Technology	"Commerce"=>"E", "Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	3
440	Eckernforde Tanga University	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
441	Eckernforde Tanga University	Bachelor of Business Administration (BBA)	Business Admnistration\\\\, Business Studies	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
442	Aga Khan University	Bachelor of health science	Health Science	"Biology"=>"D", "Chemistry"=>"D"		"Physics"=>"E"	"Biology"=>"C"	6
443	Mkwawa University College of Education	Bachelor of Education in Arts	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	5
444	Mkwawa University College of Education	Bachelor of Education in Science	Science Education\\\\, Education	"Biology"=>"E", "Chemistry"=>"E", "Basic Mathematics"=>"E"		"Physics"=>"E", "Chemistry"=>"E"	"Physics"=>"D"	3
445	Mkwawa University College of Education	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	5
446	Mkwawa University College of Education	Bachelor of Science with Education	Science Education\\\\, Education	"Biology"=>"E", "Chemistry"=>"E", "Basic Mathematics"=>"E"		"Physics"=>"E", "Chemistry"=>"E"	"Physics"=>"D"	3
447	Kilimanjaro Christian Medical College	Bachelor of Scince in Health Laboratory	Laboratory sciences	"Biology"=>"D", "Chemistry"=>"D"		"Physics"=>"E"	"Biology"=>"C"	4.5
448	Kilimanjaro Christian Medical College	Bachelor of Scince in Nursing	Nursing	"Biology"=>"D", "Chemistry"=>"D"		"Physics"=>"E", "Nutrition"=>"E", "Basic Mathematics"=>"E"		4.5
449	Kilimanjaro Christian Medical College	Bachelor of scince in Physiotherapy	Medicines\\\\, Physiotherapy	"Biology"=>"D", "Chemistry"=>"D"		"Physics"=>"E", "Nutrition"=>"E", "Basic Mathematics"=>"E"	"English"=>"D"	4.5
450	Kilimanjaro Christian Medical College	Bachelor of Science in Prothestics / Orthotics	Medicine	"Biology"=>"D", "Chemistry"=>"D"		"Physics"=>"E", "Nutrition"=>"E", "Basic Mathematics"=>"E"	"English"=>"D"	4.5
451	Kilimanjaro Christian Medical College	Bachelor of Science in Optometry	Medicine	"Biology"=>"D", "Chemistry"=>"D"		"Physics"=>"E", "Nutrition"=>"E", "Basic Mathematics"=>"E"	"English"=>"D"	4.5
452	Tumaini University Makumira, Dar es Salaam College	Bachelor of Arts with Library and Information Studies	Library Information Studies	"History"=>"E", "Kiswahili"=>"E"		"Geography"=>"E", "Kiswahili"=>"E"	"English"=>"D"	2
453	Tumaini University Makumira, Dar es Salaam College	Bachelor of Arts in Mass Communication	Mass Communication	"English"=>"E", "History"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	2
454	Tumaini University Makumira, Dar es Salaam College	Bachelor of law	Law	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
455	Tumaini University Makumira, Dar es Salaam College	Bachelor of Business Administration	Business Studies\\\\,Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
456	Stefano Moshi Memorial University College	Bachelor of Business Administration with Education	Business Studies\\\\,Business Administration, Education	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
457	Stefano Moshi Memorial University College	Bachelor of Education (Arts)	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
458	Stefano Moshi Memorial University College	Bachelor of Arts in Mass communication	Mass Communication	"English"=>"E", "History"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	2
459	Stefano Moshi Memorial University College	Bachelor of Arts in Public Administration and Management	Public Administration	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
460	Stefano Moshi Memorial University College	Bachelor of Accountancy	Accountancy	"Commerce"=>"E", "Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"Basic Mathematics"=>"D"	2
461	Stefano Moshi Memorial University College	Bachelor of Arts in Community Development	Development Studies	"English"=>"E", "History"=>"E"		"Kiswahili"=>"E"	"History"=>"D"	2
462	Stefano Moshi Memorial University College	Bachelor of Science in Information Technology	Information Technology	"Physics"=>"E", "Basic Mathematics"=>"S"		"Physics"=>"E", "Chemistry"=>"E"	"Basic Mathematics"=>"D"	2
463	Stefano Moshi Memorial University College	Bachelor of Science in Hospitality and Tourism Management	Tourism	"History"=>"E", "General Studies"=>"S"		"English"=>"E"	"English"=>"D", "History"=>"D", "Kiswahili"=>"D"	2
464	Archbishop Mihayo University College of Tabora	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
465	Archbishop Mihayo University College of Tabora	Bachelor of Arts in Sociology	Sociology	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
466	Archbishop Mihayo University College of Tabora	Bachelor of Art in Public Relations and Marketing	Public Relations\\\\, Marketing	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
467	Archbishop Mihayo University College of Tabora	Bachelor of Laws	Law	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
468	Archbishop Mihayo University College of Tabora	Bachelor of Business Administration	Business Studies\\\\, Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
469	Archbishop Mihayo University College of Tabora	Bachelor of Education (Special Needs)	Education\\\\, Science Education	"Biology"=>"D", "Chemistry"=>"D"		"Physics"=>"E"	"Basic Mathematics"=>"D"	2
470	St. Francis University College of Health and Allied Sciences	Bachelor Degree in Doctor of Medicine	Medicine	"Biology"=>"D", "Chemistry"=>"D"		"Physics"=>"E"	"Biology"=>"C"	6
471	St. Francis University College of Health and Allied Sciences	Bachelor of Medical Laboratory Sciences	Laboratory sciences	"Biology"=>"D", "Chemistry"=>"D"		"Physics"=>"E"	"Biology"=>"C"	6
472	Jordan University College	Bachelor of Arts with Education	Education	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
473	Jordan University College	Bachelor of Arts in Sociology	Sociology	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
474	Jordan University College	Bachelor of Arts in Philosophy	Philosophy	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
475	Jordan University College	Bachelor of Arts in African Studies	African Studies\\\\, History	"History"=>"E", "Geography"=>"E"		"English"=>"E", "Kiswahili"=>"E"	"History"=>"D", "Commerce"=>"D"	2
476	Jordan University College	Bachelor of Arts in Education with Religious Studies (Christianity)	Religious Studies\\\\, Education	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
477	Jordan University College	Bachelor of Business Administration	Business Studies\\\\,Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
478	Jordan University College	Bachelor of Arts in Economics	Economics	"Economics"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
479	Jordan University College	Bachelor of Law	Law	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	3
480	Jordan University College	Bachelor of Science in Psychology and Counselling	Psychology\\\\, Counselling	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
481	Jordan University College	Bachelor of Arts in Theology	Theology\\\\, Religious Studies	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Divinity"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
482	Stella Maris Mtwara University College	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
483	Stella Maris Mtwara University College	Bachelor of Arts in Sociology	Sociology	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
484	Stella Maris Mtwara University College	Bachelor of Philosophy with Education	Philosophy\\\\, Education	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
485	Stella Maris Mtwara University College	Bachelor of Philosophy with Political Science	Philosophy\\\\, Political Science	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
486	Stella Maris Mtwara University College	Bachelor of Laws	Law	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
487	Stella Maris Mtwara University College	Bachelor of Business Administration	Business Admnistration\\\\, Business Studies	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
488	Stella Maris Mtwara University College	Bachelor of Arts in Economics	Economics	"Economics"=>"E", "Basic Mathematics"=>"S"		"Geography"=>"E", "Accountancy"=>"E"	"Commerce"=>"D", "Basic Mathematics"=>"D"	2
489	Stella Maris Mtwara University College	Bachelor of Science in Mathematics and Statistics	Mathematics\\\\, Statistics	"Accountancy"=>"C", "Advance Mathematics"=>"C"		"English"=>"E", "Economics"=>"C\\"", "Geography"=>"E"	"Commerce"=>"D"	2
490	Josiah Kibira University College	Bachelor of Education (BEd)	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
491	Josiah Kibira University College	Bachelor of Arts with Education (BAEd)	Education\\\\, Science Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
492	Josiah Kibira University College	Bachelor of Science with Education (BScEd)	Education\\\\, Science Education	"Biology"=>"E", "Chemistry"=>"E", "Advance Mathematics"=>"E"		"Physics"=>"E", "Chemistry"=>"E"	"Physics"=>"D"	2
493	Josiah Kibira University College	Bachelor of Education in Science (BEdSc)	Education\\\\, Science Education	"Biology"=>"E", "Chemistry"=>"E", "Advance Mathematics"=>"E"		"Physics"=>"E", "Chemistry"=>"E"	"Physics"=>"D"	2
494	Josiah Kibira University College	Bachelor of Accounting and Finance (BAF)	Accountancy\\\\, Finance	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
495	Josiah Kibira University College	Bachelor in Business Administration (BBA)	Business Studies\\\\, Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
496	Arch Bishop James University College	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
497	Arch Bishop James University College	Bachelor of Arts in Mass Communication	Mass Communication	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
498	Arch Bishop James University College	Bachelor of Business Administration (BBA)	Business Studies\\\\, Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
499	Arch Bishop James University College	Bachelor of Laws	Law	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	2
500	Marian University College	Bachelor of Education in Science	Education\\\\, Science Education	"Biology"=>"E", "Chemistry"=>"E", "Advance Mathematics"=>"E"		"Physics"=>"E", "Chemistry"=>"E"	"Physics"=>"D"	4
501	Marian University College	Bachelor of Science in Computer Science	Computer Science	"Physics"=>"D", "Advance Mathematics"=>"D"		"Physics"=>"D", "Chemistry"=>"S", "Mathematics"=>"S"	"Physics"=>"D"	4
502	Marian University College	Bachelor of Science in Mathematics and Statistics	Mathematics\\\\, Statistics	"Accountancy"=>"C", "Advance Mathematics"=>"C"		"English"=>"E", "Economics"=>"C\\"", "Geography"=>"E"	"Commerce"=>"D"	4
503	Cardinal Rugambwa Memorial University College	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	4
504	Mzumbe University Mbeya Campus	Bachelor of Laws	Law	"History"=>"E", "Kiswahili"=>"E"		"English"=>"E", "Geography"=>"E"	"History"=>"D", "Commerce"=>"D"	4.5
505	Mzumbe University Mbeya Campus	Bachelor of Business Administration	Business Studies\\\\, Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4.5
506	Mzumbe University Mbeya Campus	Bachelor of Accountancy and Finance	Acccountancy\\\\, Finance	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	4.5
507	Mzumbe University Mbeya Campus	Bachelor of Human Resource Management	Human Resources	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E", "Kiswahili"=>"E"	"History"=>"D"	4.5
508	Kenyatta University\\\\, Arusha Centre	Bachelor of Business Information Technology	Information Technology	"Basic Mathematics"=>"S"		"Biology"=>"D", "Physics"=>"D", "Chemistry"=>"S"	"Physics"=>"D"	2.5
509	Kenyatta University\\\\, Arusha Centre	Bachelor of Commerce	Commerce	"Commerce"=>"E", "Basic Mathematics"=>"S"		"Accountancy"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2.5
510	Kenyatta University\\\\, Arusha Centre	Bachelor of development studies	Development Studies	"History"=>"E", "General Studies"=>"S"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D", "Kiswahili"=>"D"	2.5
511	Mount Meru University, Mwanza Centre	Bachelor of Business Administration	Business Studies\\\\, Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
512	Mount Meru University\\\\, Mwanza Centre	Bachelor of Arts with Education	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
513	Mount Meru University\\\\, Mwanza Centre	Bachelor of Education	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
514	Teofilo Kisanji University\\\\, Tabora Centre	Bachelor of Arts with Education (BAED)	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
515	Teofilo Kisanji University\\\\, Dar es Salaam Centre	Bachelor of Arts with Education (BAED)	Education	"English"=>"E", "History"=>"E"		"English"=>"E", "Geography"=>"E"	"English"=>"D", "History"=>"D"	2
516	Teofilo Kisanji University\\\\, Dar es Salaam Centre	Bachelor of Business Administration (BBA)	Business Studies\\\\, Business Administration	"Accountancy"=>"E", "Basic Mathematics"=>"S"		"Commerce"=>"E"	"History"=>"D", "Basic Mathematics"=>"D"	2
517	Teofilo Kisanji University\\\\, Dar es Salaam Centre	Bachelor of Arts in Sociology and Social Work	Sociology\\\\, Social Work	"English"=>"E", "History"=>"E", "General Studies"=>"S"			"English"=>"D", "History"=>"D", "Kiswahili"=>"D"	2
\.


--
-- Name: university_finder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elimu_yangu
--

SELECT pg_catalog.setval('public.university_finder_id_seq', 78, true);


--
-- Name: university_finder university_finder_pkey; Type: CONSTRAINT; Schema: public; Owner: elimu_yangu
--

ALTER TABLE ONLY public.university_finder
    ADD CONSTRAINT university_finder_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

