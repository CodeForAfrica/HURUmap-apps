--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

-- Started on 2018-04-09 12:07:22 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.university_finder DROP CONSTRAINT IF EXISTS pk_university_finder;
ALTER TABLE IF EXISTS public.university_finder ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.university_finder_id_seq;
DROP TABLE IF EXISTS public.university_finder;
SET default_tablespace = '';

SET default_with_oids = false;

--
--
--
-- NOTE: HSTORE EXTENSION IS REQUIRED

-- TOC entry 201 (class 1259 OID 24930)
-- Name: university_finder; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE university_finder (
    id integer NOT NULL,
    university_name character varying,
    course_name character varying,
    major_name character varying,
    compulsory_alevel hstore,
    compulsory_olevel hstore,
    other_alevel hstore,
    other_olevel hstore
);


--
-- TOC entry 200 (class 1259 OID 24928)
-- Name: university_finder_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE university_finder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2292 (class 0 OID 0)
-- Dependencies: 200
-- Name: university_finder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE university_finder_id_seq OWNED BY university_finder.id;


--
-- TOC entry 2169 (class 2604 OID 24933)
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY university_finder ALTER COLUMN id SET DEFAULT nextval('university_finder_id_seq'::regclass);


--
-- TOC entry 2287 (class 0 OID 24930)
-- Dependencies: 201
-- Data for Name: university_finder; Type: TABLE DATA; Schema: public; Owner: -
--

COPY university_finder (id, university_name, course_name, major_name, compulsory_alevel, compulsory_olevel, other_alevel, other_olevel) FROM stdin;
1	University of Dar es Salaam	Bachelor of science in Aquatic Sciences and Fisheries	Aquatic Science	"Biology"=>"E", "General Studies"=>"S", "Basic Mathematics"=>"S"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"	
2	University of Dar es Salaam	Bachelor of science in Beekeeping Science and Technology	Engineering\\\\, Agritechnology	"Biology"=>"E", "General Studies"=>"S", "Basic Mathematics"=>"S"		"Physics"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"	
3	University of Dar es Salaam	Bachelor of science in Agricultural Engineering and Mechanization	Engineering\\\\,Agritechnology	"Physics"=>"E", "General Studies"=>"S", "Advance Mathematics"=>"E"		"Chemistry"=>"E"	
4	University of Dar es Salaam	Bachelor of science in Food Science and Technology	Engineering\\\\,Agritechnology	"Biology"=>"E", "General Studies"=>"S", "Basic Mathematics"=>"S"	"Basic Mathematics"=>"E"	"Physics"=>"E", "Chemistry"=>"E", "Agriculture"=>"E", "Food & Nutrition"=>"E"	
5	University of Dar es Salaam	Bachelor of science in Agricultural and Natural Resources Economics and Business	Agribusiness\\\\, "Agriculture"	"Biology"=>"E", "Economics"=>"E", "General Studies"=>"S"		"Physics"=>"E", "Commerce"=>"E", "Chemistry"=>"E", "Geography"=>"E", "Agriculture"=>"E"	"Basic Mathematics"=>"E"
6	University of Dar es Salaam	Bachelor of Arts in (Heritage Management)	Art\\\\, Designer	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"
7	University of Dar es Salaam	Bachelor of Arts in Art and Design	Art	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"
8	University of Dar es Salaam	Bachelor of Arts in Theatre Arts	Art	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"
9	University of Dar es Salaam	Bachelor of Arts in Film and Television	Art\\\\,Filming	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"
10	University of Dar es Salaam	Bachelor of Arts in Music	Music\\\\,Art	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"
11	University of Dar es Salaam	Bachelor of Arts in (History)	Art\\\\, History	"History"=>"E", "General Studies"=>"S"		"Geography"=>"E", "Kiswahili"=>"E", "English Language"=>"E"	"Fine Art"=>"E"
\.


--
-- TOC entry 2293 (class 0 OID 0)
-- Dependencies: 200
-- Name: university_finder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('university_finder_id_seq', 11, true);


--
-- TOC entry 2171 (class 2606 OID 24938)
-- Name: pk_university_finder; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY university_finder
    ADD CONSTRAINT pk_university_finder PRIMARY KEY (id);


-- Completed on 2018-04-09 12:07:22 EAT

--
-- PostgreSQL database dump complete
--

