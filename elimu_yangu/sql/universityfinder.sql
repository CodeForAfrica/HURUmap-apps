--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-03-27 17:05:15 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 215 (class 1259 OID 18220)
-- Name: universityfinder; Type: TABLE; Schema: public; Owner: elimu_yangu
--

CREATE TABLE public.universityfinder (
    geo_level character varying,
    geo_code character varying(10),
    geo_version character varying(10),
    university_name character varying(300),
    course_name character varying(500),
    general_major character varying(300),
    cumpulsory_subjects_ar character varying,
    other_subjects_ar character varying
);


ALTER TABLE public.universityfinder OWNER TO elimu_yangu;

--
-- TOC entry 2227 (class 0 OID 18220)
-- Dependencies: 215
-- Data for Name: universityfinder; Type: TABLE DATA; Schema: public; Owner: elimu_yangu
--

COPY public.universityfinder (geo_level, geo_code, geo_version, university_name, course_name, general_major, cumpulsory_subjects_ar, other_subjects_ar) FROM stdin;
country	TZ	2018	University of Dar es Salaam	Aquatic Science	Bachelor of science in Aquatic Sciences and Fisheries	Abiology-E\\, Ageneralstudies-S\\, Abasicmathematics-S	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	University of Dar es Salaam	Engineering\\, Agritechnology	Bachelor of science in Beekeeping Science and Technology	Abiology-E\\, Ageneralstudies-S\\, Abasicmathematics-S	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	University of Dar es Salaam	Engineering\\, Agritechnology	Bachelor of science in Agricultural Engineering and Mechanization	Aadvancemathematics-E\\, Aphysics-E\\, Agenerealstudies-S	Achemistry-E\\,
country	TZ	2018	University of Dar es Salaam	Engineering\\, Agritechnology	Bachelor of science in Food Science and Technology	Abiology-E\\, Obasicmathematics-E\\, Abasicmathematics-S\\,  Ageneralstudies-S	Afoodnutrition-E\\, Aphysics-E\\, Achemistry-E\\, Aagriculture-E\\,
country	TZ	2018	University of Dar es Salaam	Agribusiness\\, Agriculture	Bachelor of science in Agricultural and Natural Resources Economics and Business	Aeconomics-E\\, Abiology-E\\,  Ageneralstudies-S\\,	Acommerce-E\\, Aphysics-E\\, Achemistry-E\\, Agriculture-E\\, Obasicmathematics-E\\, Ageography-E
country	TZ	2018	University of Dar es Salaam	Art\\, Designer	Bachelor of Arts in (Heritage Management)	 Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ofineart-E
country	TZ	2018	University of Dar es Salaam	Art	Bachelor of Arts in Art and Design	 Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ofineart-E
country	TZ	2018	University of Dar es Salaam	Art	Bachelor of Arts in Theatre Arts	 Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ofineart-E
country	TZ	2018	University of Dar es Salaam	Filming	Bachelor of Arts in Film and Television	 Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ofineart-E
country	TZ	2018	University of Dar es Salaam	Music	Bachelor of Arts in Music	 Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ofineart-E
country	TZ	2018	University of Dar es Salaam	History	Bachelor of Arts in (History)	 Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ofineart-E
country	TZ	2018	University of Dar es Salaam	Archaelogy	Bachelor of Arts in (Archeology)	 Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ofineart-E\\, Afoodnutrition-E\\, Aphysics-E\\, Abiology-E\\, Achemistry-E\\, Aeconomics-E\\, Aagriculture-E
country	TZ	2018	University of Dar es Salaam	language	Bachelor of Arts in Language Studies	 Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Oenglish-D
country	TZ	2018	University of Dar es Salaam	Literature	Bachelor of Arts in Literature	 Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, 
country	TZ	2018	University of Dar es Salaam	History	Bachelor of Arts in History	 Ageneralstudies-S\\,Ahistory-E\\, Aenglish-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	University of Dar es Salaam	Arts\\, Education	Bachelor of Arts with Education (shared with CoSS)	 Ageneralstudies-S\\,Ahistory-E\\, Aenglish-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	University of Dar es Salaam	Language\\, Education	Bachelor of Arts with Education (Chinese and English)	 Ageneralstudies-S\\,Ahistory-E\\, Aenglish-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	University of Dar es Salaam	Anthropology	Bachelor of Arts in Anthropology	 Ageneralstudies-S\\,Ahistory-E\\, Aenglish-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	University of Dar es Salaam	Economics	Bachelor of Arts in Economics	Amathematics-C\\,A Accountancy-C\\, Aeconomics-C	Aenglish-E\\, Ageography-E\\, Ocommerce-D\\,Omathematics-D
country	TZ	2018	University of Dar es Salaam	Economics\\, Statistics	Bachelor of Arts in Economics and Statistics	Amathematics-C\\,A Accountancy-C\\, Aeconomics-C	Aenglish-E\\, Ageography-E\\, Ocommerce-D
country	TZ	2018	University of Dar es Salaam	Environmnet Studies	Bachelor of Arts in Geography and Environmental Studies	Ageography-C\\,Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Ohistory-D
country	TZ	2018	University of Dar es Salaam	Political Science	Bachelor of Arts in Political Science and Public Administration	Ageneralstudies-S\\,Ahistory-E\\, Aenglish-E	Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	University of Dar es Salaam	Sociology	Bachelor of Arts in Sociology	Ageneralstudies-S\\,Ahistory-E\\, Aenglish-E	Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	University of Dar es Salaam	Statistics	Bachelor of Arts in Statistics	Amathematics-C\\,A Accountancy-C\\, Aeconomics-C	Aenglish-E\\, Ageography-E\\, Ocommerce-D
country	TZ	2018	University of Dar es Salaam	Engineering	Bachelor of Science in Chemical and Process Engineering	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ochemistry-D	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Engineering	Bachelor of Science in Civil Engineering	Amathematics-D\\,Aphysics-D\\,Achemistry-D	Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Engineering	Bachelor of Science in Electrical Engineering	Amathematics-D\\,Aphysics-D\\,Ageography-E	Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Engineering	Bachelor of Science in Mechanical Engineering	Amathematics-D\\,Aphysics-D\\,Ageography-E	Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Engineering	Bachelor of Sciene in Metallurgy and Mineral Processing Engineering	Amathematics-D\\,Aphysics-D\\,Ageography-E	Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Engineering	Bachelor of Science in Mining Engineering	Amathematics-D\\,Aphysics-D\\,Ageography-E	Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Engineering	Bachelor of Science in Industrial Engineering	Amathematics-D\\,Aphysics-D\\,Ageography-E	Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Textile Design	Bachelor of Science in Textile Design and Technology	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ochemistry-D	Omathematics-D\\,Ochemistry-D\\,Afineart-E
country	TZ	2018	University of Dar es Salaam	Engineering	Bachelor of Science in Textile Engineering	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ochemistry-D	Omathematics-D\\,Ochemistry-D\\,Afineart-E
country	TZ	2018	University of Dar es Salaam	Engineering	Bachelor of Science in Petroleum Engineering	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ochemistry-D	Omathematics-D\\,Ochemistry-D\\,Afineart-E
country	TZ	2018	University of Dar es Salaam	Architecture	Bachelor of Architecture	Amathematics-S\\,Aphysics-D\\,Achemistry-D\\,Abiology-D\\,Ochemistry-D	Omathematics-D
country	TZ	2018	University of Dar es Salaam	Surveying	Bachelor of Science in Quantity Surveying	Amathematics-S\\,Aphysics-D\\,Achemistry-D\\,Ageography-E	Omathematics-D\\,Ochemistry-D
country	TZ	2018	University of Dar es Salaam	Zoology	Bachelor of Science in Applied Zoology	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Botanical Science	Bachelor of Science in Botanical Sciences	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Science	Bachelor of Science - General	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Chemistry	Bachelor of Science in Chemistry	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Microbiology	Bachelor of Science in Microbiology	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Molecular Biology	Bachelor of Science in Molecular Biology and Biotechnology	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Wildlife	Bachelor of Science in Wildlife Science and Conservation	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	University of Dar es Salaam	Education\\, Science	Bacheor of Science with Education	Abiology-E	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ochemistry-D
country	TZ	2018	University of Dar es Salaam	Geology\\, Engineering	Bachelor of Science in Engineering Geology	Achemistry-E\\,Aphysics-E	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ochemistry-D
country	TZ	2018	University of Dar es Salaam	Geology	Bachelor of Science in Geology	Achemistry-E\\,Aphysics-E	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ochemistry-D
country	TZ	2018	University of Dar es Salaam	Petroleum Geology	Bachelor of Science in Petroleum Geology	Achemistry-E\\,Aphysics-E	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ochemistry-D
country	TZ	2018	University of Dar es Salaam	Science\\, Geology	Bachelor of Science with Geology	Achemistry-E\\,Ageography-E	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ochemistry-D
country	TZ	2018	University of Dar es Salaam	Actuarial Science	Bachelor of Science in Actuarial Sciences	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	University of Dar es Salaam	Computer Science	Bachelor of Science in Computer Science	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	University of Dar es Salaam	Computer science	Bachelor of Science with Computer Science	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	University of Dar es Salaam	Electronic Science	Bachelor of Science in Electronic Science and Communication	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	University of Dar es Salaam	Engineering	Bachelor of Science in Computer Engineering and Information Technology	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	University of Dar es Salaam	Telecommunications	Bachelor of Science in Telecommunications Engineering	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	University of Dar es Salaam	Journalism	Bachelor of Arts in Journalism	Ahistory-E\\,Aenglish-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	University of Dar es Salaam	Mass Communication	Bachelor of Arts in Mass Communication	Ahistory-E\\,Aenglish-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	University of Dar es Salaam	Public Relations	Bachelor of Arts in Public Relations and Advertising	Ahistory-E\\,Aenglish-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	University of Dar es Salaam	Accounting	Bachelor of Commerce in Accounting	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D
country	TZ	2018	University of Dar es Salaam	Banking	Bachelor of Commerce in Banking and Financial Services	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D
country	TZ	2018	University of Dar es Salaam	Finance	Bachelor of Commerce in Finance	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D
country	TZ	2018	University of Dar es Salaam	Human Resources	Bachelor of Commerce in Human Resources Management	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dar es Salaam	Marketing	Bachelor of Commerce in Marketing	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dar es Salaam	Tourism	Bachelor of Commerce in Tourism and Hospitality Management	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dar es Salaam	Business Administration	Bachelor of Business Administration	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dar es Salaam	Education\\, Community Education	Bachelor of Education in Adult and Community Education	Ahistory-E\\,Aenglish-E\\,Abiology-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	University of Dar es Salaam	Education\\, Child Education	Bachelor of Education in Early Childhood Education	Ahistory-E\\,Aenglish-E\\,Abiology-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	University of Dar es Salaam	Psychology Education	Bachelor of Education in Psychology	Ahistory-E\\,Aenglish-E\\,Abiology-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	University of Dar es Salaam	Education\\, Commerce	Bachelor of Education in Commerce	Amathematics-C\\,A Accountancy-C\\, Aeconomics-C	Aenglish-E\\, Ageography-E\\, Ocommerce-D
country	TZ	2018	University of Dar es Salaam	Physical Education	Bachelor of Education in Physical Education and Sport Sciences	Amathematics-E\\,Aphysics-E	Abiology-E\\,Achemistry-E
country	TZ	2018	University of Dar es Salaam	Law	Bachelor of Laws	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	University of Dar es Salaam	Law Enforcement	Bachelor of Arts in Law Enforcement	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	University of Dar es Salaam	Kiswahili	Bachelor of Arts in Kiswahili	Ahistory-E\\,Akiswahili-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	University of Dar es Salaam	Library Information Studies	Bachelor of Arts in Library Information Studies	Ahistory-E\\,Akiswahili-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	University of Dar es Salaam	Development Studies	Bachelor of Arts in Development Studies	Ahistory-E\\,Akiswahili-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	University of Dar es Salaam	Education\\, Arts	Bachelor of Education in Arts	Ahistory-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	University of Dar es Salaam	Education\\, Science	Bachelor of Education in Science	Achemistry-E\\,Ageography-E	ABiology-E\\,Amathematics-S\\,Aphysics-E
country	TZ	2018	University of Dar es Salaam	Arts\\, Education	Bachelor of Arts with Education	Ahistory-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	University of Dar es Salaam	Science\\, Education	Bachelor of Science with Education	Achemistry-E\\,Ageography-E	ABiology-E\\,Amathematics-S\\,Aphysics-E
country	TZ	2018	IFM	Accounting	Bachelor of Accounting	Amathematics-S\\,Acommerce-E\\,economics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	IFM	Banking and Finance	Bachelor of Banking and Finance	Amathematics-S\\,Acommerce-E\\,economics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	IFM	Information Technology	Bachelor of Science in information Technology	Amathematics-S\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	IFM	Computer science	Bachelor of Bachelor of Computer Science 	Amathematics-S\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	IFM	Social Protection	Bachelor of Science in Social Protection	Ageography-E\\,Abiology-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	IFM	Taxation	Bachelor of Science in Taxation	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Tumaini University	Information Management	Bachelor of Information Management	Ahistory-E\\,Akiswahili-E\\,Aenglish	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Tumaini University	Arts\\, Education	Bachelor of Arts with Education	Ahistory-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Tumaini University	Library Information Studies	Bachelor of Arts in Library and Information Studies	Ahistory-E\\,Akiswahili-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Tumaini University	Mass Communication	Bachelor of Arts in Mass Communication	Ahistory-E\\,Aenglish-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	Tumaini University	Business Administration	Bachelor of Business Administration	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Tumaini University	Human Resources	Bachelor of Human Resources Management	Ahistory-E\\,Akiswahili-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Tumaini University	Law	Bachelor of Laws	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Sokoine University	Information and Records Management	Bachelor of Information and Records Management	Ahistory-E\\,Akiswahili-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Sokoine University	Development Studies	Bachelor of Rural Development	Ahistory-E\\,Aenglish-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Sokoine University	Agriculture\\, Agribusiness\\, Economics	Bachelor of Science in Agriculture Economics and Agribusiness	Aeconomics-E\\, Abiology-E\\,  Ageneralstudies-S\\,	Acommerce-E\\, Aphysics-E\\, Achemistry-E\\, Agriculture-E\\, Obasicmathematics-E\\, Ageography-E
country	TZ	2018	Sokoine University	Engineering	Bachelor of Science in Agricultural Engineering 	Aadvancemathematics-E\\, Aphysics-E\\, Agenerealstudies-S	Achemistry-E\\,
country	TZ	2018	Sokoine University	Agriculture	Bachelor of Science in Agriculture General	Aadvancemathematics-E\\, Aphysics-E\\, Agenerealstudies-S	Achemistry-E\\,
country	TZ	2018	Sokoine University	Agronomy	Bachelor of Science in Agronomy	Achemistry-E\\,Abiology-E\\,Ageography-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Sokoine University	Zoology	Bachelor of Science in Animal Science	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	Sokoine University	Agriculture	Bachelor of Science in Applied Agricultural Extension	Abiology-E\\, Ageneralstudies-S\\, Abasicmathematics-S	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Sokoine University	Aquatic Science	Bachelor of Science in Aquaculture	Abiology-E\\, Ageneralstudies-S\\, Abasicmathematics-S	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Sokoine University	Engineering	Bachelor of Science in Bioprocess and Post-harvest engineering	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	Sokoine University	Biotechnology	Bachelor of Science in Biotechnology and Laboratory science	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	Sokoine University	Environmnet Studies	Bachelor of Science in environmental sciences and management	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	Sokoine University	Family	Bachelor of Science in family and consumer studies	Achemistry-E\\,Abiology-E\\,Ageography-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Sokoine University	Food Technology	Bachelor of science in food science and technology	Achemistry-E\\,Abiology-E\\,Ageography-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Sokoine University	Forestry	Bachelor of science in forestry	Achemistry-E\\,Abiology-E\\,Ageography-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Sokoine University	Agriculture	Bachelor of science in Horticulture	Achemistry-E\\,Abiology-E\\,Ageography-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Sokoine University	Nutrition	Bachelor of science in human nutrition	Achemistry-E\\,Abiology-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Sokoine University	Informatics	Bachelor of science in informatics	Achemistry-E\\,Aphysics-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	Sokoine University	Irrigation	Bachelor of science in irrigation and water resources engineering	Achemistry-E\\,Abiology-E\\,Ageography-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Sokoine University	Range Management	Bachelor of science in range management	Achemistry-E\\,Abiology-E\\,Ageography-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Sokoine University	Wildlife	Bachelor of science in wildlife management	Achemistry-E\\,Abiology-E\\,Ageography-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Sokoine University	Education\\, Science	Bachelor of science with education	Achemistry-E\\,Ageography-E\\,Aphysics-E	ABiology-E\\,Amathematics-S\\,Ageography-E
country	TZ	2018	Kampala University	Business Administration	Bachelor of Business Administration (Finance and Banking)	\N	Aeconomics-E\\,Amathematics-S\\,
country	TZ	2018	Sokoine University	Range Management	Bachelor of tourism management	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Ageography-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Sokoine University	Medicine	Bachelor of veterinary medicine	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E\\,Ochemistry-D
country	TZ	2018	Hubert Kairuki Memorial University	Nursing	Bachelor of Science in Nursing (BScN) In-Service Programme	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Hubert Kairuki Memorial University	Nursing	Bachelor of Science in Nursing (BScN) Pre-Service Programme	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University	Nursing	Bachelor of science in nursing	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University	Laboratory sciences	Bachelor of Medical Laboratory Sciences	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University	Nursing	Haematology and Blood Transfusion (BMLS)	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University	Zoology	Parasitology and Medical Entomology (BMLS)	Achemistry-E	Amathematics-E\\,Aphysics-E\\,Abiology-E
country	TZ	2018	Muhimbili University	Chemistry\\, Clinical Chemistry	Clinical Chemistry (BMLS)	Achemistry-E	Amathematics-E\\,Aphysics-E\\,Abiology-E
country	TZ	2018	Muhimbili University	Medical Technology	Histotechnology (BMLS)	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-E
country	TZ	2018	Muhimbili University	Medical Technology	Bachelor of Science Radiation Therapy Technology	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-E\\,Ophysics-D
country	TZ	2018	Muhimbili University	Pharmacy	Bachelor of Pharmacy	Achemistry-E	Amathematics-E\\,Aphysics-E\\,Abiology-E\\,Ochemistry-D
country	TZ	2018	Muhimbili University	Nursing	Bachelor of Science in Nursing (Management) 	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-E
country	TZ	2018	Muhimbili University	Nursing	Bachelor of Science in Midwifery	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-E
country	TZ	2018	Muhimbili University	Environmnet Studies	Bachelor of Science in Environmental Health Science	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-E\\,Ageography-E
country	TZ	2018	CBE	Marketing	Bachelor Degree in Marketing	Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	CBE	Accounting	Bachelor Degree in Accountancy	Amathematics-S\\,Aaccounts-E	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	CBE	Business Administration	Bachelor Degree in Business Administration	\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D
country	TZ	2018	CBE	Procurement	Bachelor Degree in Procurement and Supplies Management	Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Kampala University	Medicine	Bachelor of Medicine and Bachelor of Surgery	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-S
country	TZ	2018	Kampala University	Laboratory sciences	Bachelor of Medical Laboratory Science	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-S
country	TZ	2018	Kampala University	Pharmacy	Bachelor of Pharmacy	Achemistry-E	Aphysics-E\\,Abiology-E\\,Ochemistry-D
country	TZ	2018	Kampala University	Medical Technology	Bachelor of Science in Radiation Therapy Technology 	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-E\\,Ophysics-D
country	TZ	2018	Kampala University	Medicine	Bachelor of Science in Prosthetic and Orthotics	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-E\\,Ophysics-D
country	TZ	2018	Kampala University	Nursing	Bachelor of Science in Nursing	Achemistry-E\\,Abiology-E	Aphysics-E\\,Obiology-D\\,Oenglish-D
country	TZ	2018	Kampala University	Environmnet Studies	Bachelor of Science in Environmental Health Sciences	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-E\\,Ageography-E
country	TZ	2018	Kampala University	Laboratory sciences	Bachelor of Medical Laboratory Sciences in Clinical Chemistry	Achemistry-E	Amathematics-E\\,Aphysics-E\\,Abiology-E\\,Ochemistry-D
country	TZ	2018	Kampala University	Laboratory sciences	Bachelor of Medical Laboratory Sciences in Histotechnology	Achemistry-E\\, Aphysics-E\\,	Amathematics-E\\,Abiology-E
country	TZ	2018	Kampala University	Laboratory sciences	Bachelor of Medical Laboratory Science in Microbiology and Immunology	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-E\\,Obiology-D
country	TZ	2018	Kampala University	Laboratory sciences	Bachelor of Medical Laboratory Sciences in Parasitology and Medical Entomology	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-E\\,Obiology-D
country	TZ	2018	Kampala University	Laboratory sciences	Bachelor of Medical Laboratory Sciences General	Achemistry-E\\, Aphysics-E\\,	Amathematics-E\\,Abiology-E
country	TZ	2018	Kampala University	Laboratory sciences	Bachelor of Medical Laboratory Sciences in Hematology and Blood Transfusion	Achemistry-E\\, Aphysics-E\\,	Amathematics-E\\,Abiology-E
country	TZ	2018	Kampala University	Laboratory sciences	Bachelor of Sciences in Health Laboratory	Achemistry-E\\, Aphysics-E\\,	Amathematics-E\\,Abiology-E
country	TZ	2018	Kampala University	Medicine	Bachelor of Science in Optometry	Abiology-E\\,Achemistry-E	Aphysics-E\\,Obiology-D\\,Ochemistry-D
country	TZ	2018	Kampala University	Computer science	Bachelor of Computer Science	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Kampala University	Information Technology	Bachelor of Information Technology	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Kampala University	Information Systems	Bachelor of Information Systems	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Kampala University	Conflict Resolution	Bachelor of Conflict Resolution and Peace Building	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Kampala University	Public Administration	Bachelor of Public Administration	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Kampala University	Social Work\\, Counselling	Bachelor of Guidance and Counseling	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Kampala University	Social Work	Bachelor of Social Work and Social Administration	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Kampala University	Business Administration	Bachelor of Business Administration (Accounting)	Amathematics-S\\,Aaccounts-E	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Kampala University	Business Administration	Bachelor of Business Administration (Human Resources Management)	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Kampala University	Business Administration	Bachelor of Business Administration (Marketing Management)	\N	Aeconomics-E\\,Amathematics-S\\,
country	TZ	2018	Kampala University	Business Administration	Bachelor of Business Administration (Supplies and Procurement Management)	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Kampala University	Commerce	Bachelor of Commerce	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Kampala University	Law	Bachelor of Laws	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Kampala University	Education	Bachelor of Art with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Open university of Tanzania	Tourism	Bachelor of Arts in Tourism Management (BTM)	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	Open university of Tanzania	Literature	Bachelor of Arts in literature (BALIT)	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	Open university of Tanzania	Sociology	Bachelor of Arts in Sociology (BA (Soc))	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	Open university of Tanzania	Social Work	Bachelor of Arts in Social Work (BA (SW))	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	Open university of Tanzania	Journalism	Bachelor of Arts in Journalism (BA (Journ))	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	Open university of Tanzania	Mass Communication	Bachelor of Arts in Mass Communication (BA (MC))	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	Open university of Tanzania	Economics	Bachelor of Arts in Economics (BA Econ)	Amathematics-C\\,A Accountancy-C\\, Aeconomics-C	Aenglish-E\\, Ageography-E\\, Ocommerce-D\\,Omathematics-D
country	TZ	2018	Open university of Tanzania	Language	Bachelor of Arts in English Language & Linguistics (BA ELL)	Ahistory-E\\,Aenglish-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Open university of Tanzania	Kiswahili	Bachelor of Arts in Kiswahili & Creative Studies (BA KCS)	Ahistory-E\\,Akiswahili-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Open university of Tanzania	Library Information Studies	Bachelor of Library & Information Management (BLIM)	Ahistory-E\\,Akiswahili-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Open university of Tanzania	History	Bachelor of Arts in History (BA Hist)	Ageneralstudies-S\\,Ahistory-E\\, Aenglish-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Open university of Tanzania	Development Studies	Bachelor of Community Economic Development (BCED)	Aeconomics-C\\,Ageneralstudies-S	Ageography-E\\,Ohistory-D\\,Ocommerce-D\\,Omathematics-D
country	TZ	2018	Open university of Tanzania	Natural Resources	Bachelor of Arts in Natural Resources Assessment and Management (BA NRAM)	Agrography-E\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Open university of Tanzania	Development Studies	Bachelor of Arts in Population and Development (BA PD)	Agrography-E\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Open university of Tanzania	Philosophy\\, Religious Studies	Bachelor of Arts in Philosophy and religious Studies (BA PRS)	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Open university of Tanzania	Public Administration	Bachelor of Arts in Public Administration (BA PA)	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Open university of Tanzania	International Relation	Bachelor of Arts in International Relations (BA IR)	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Open university of Tanzania	Business Administration\\, Accounting	Bachelor of Business Administration Accounting (BBA ACC))	Amathematics-S\\,Aaccounts-E	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Open university of Tanzania	Business Administration\\, Marketing	Bachelor of Business Administration Marketing (BBA MKT)	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Open university of Tanzania	Business Adminiistration\\, Finance	Bachelor of Business Administration Finance (BBA FIN)	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Open university of Tanzania	Human Resources\\, Business Administration	Bachelor of business Administration Human resource Management (BBA HRM)	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Open university of Tanzania	Business Administration\\, International Business	Bachelor of Business Administration in International Business (BBA IB)	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Open university of Tanzania	Human Resources	Bachelor of Human Resource Management (BHRM)	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Open university of Tanzania	Information Technology	Bachelor of Science (BSc.ICT))	Aphysics-E\\,Amathematics-S	Achemistry-E\\, Aphysics-E\\,Omathematics-D
country	TZ	2018	Open university of Tanzania	Data Management	Bachelor of Science in Data Management	Amathematics-E\\,Aphysics-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Open university of Tanzania	Education\\, Science Education	Bachelor of Science with Education (B.Sc. Ed)) – Conducted jointly with the Faculty of Education	Abiology-E\\,Achemistry-E\\,Amathematics-E	Achemistry-E\\, Aphysics-E\\,Ophysics-D
country	TZ	2018	Open university of Tanzania	Environmnet Studies	Bachelor of Science in Environmental Studies (BSc ES)	Achemistry-E\\,Abiology-E\\,Ageography-E	Ageography-E\\, Aagriculture-E\\, Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E
country	TZ	2018	Open university of Tanzania	Nutrition	Bachelor of Science in Food\\, Nutrition and Dietetics (BSc FND)	Abiology-E\\,Afoodnutrition-E	Achemistry-E\\, Aphysics-E\\, Afoodnutrition-E\\,Obiology-D
country	TZ	2018	Open university of Tanzania	Energy Resources	Bachelor of Science in Energy Resources (BSc ER)	Aphysics-E\\,Amathematics-S	Achemistry-E\\, Aphysics-E\\,Omathematics-D
country	TZ	2018	Open university of Tanzania	Education	Bachelor of Education Special Education	Ahistory-E\\,Ageneralstudies-S	Akiswahili-E\\,Ohistory-D\\,Aenglish-E
country	TZ	2018	Open university of Tanzania	Education	Bachelor of Education (Teacher Education)	Ahistory-E\\,Ageneralstudies-S	Akiswahili-E\\,Ohistory-D\\,Aenglish-E
country	TZ	2018	Open university of Tanzania	Education	Bachelor of Education (Adult and Distance Learning)	Ahistory-E\\,Ageneralstudies-S	Akiswahili-E\\,Ohistory-D\\,Aenglish-E
country	TZ	2018	Open university of Tanzania	Education	Bachelor of Education (Policy and Management)	Ahistory-E\\,Ageneralstudies-S	Akiswahili-E\\,Ohistory-D\\,Aenglish-E
country	TZ	2018	Open university of Tanzania	Education	Bachelor of Arts with Education (B.A. (Ed)	Ahistory-E\\,Ageneralstudies-S	Akiswahili-E\\,Ohistory-D\\,Aenglish-E
country	TZ	2018	Open university of Tanzania	Education\\, Business Administration	Bachelor of Business Administration with Education (BBA ED)	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-E\\,Ohistory-D
country	TZ	2018	Open university of Tanzania	Law	Bachelor of Laws (LL.B)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Ardhi University 	Architecture	Bachelor of Architecture	Aadv.mathematics-E\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Ageography-E\\,AFine Art-E\\,Omathematics-D
country	TZ	2018	Ardhi University 	Interior Design	Bachelor of Architecture in Interior Design	Aadv.mathematics-E\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Ageography-E\\,AFine Art-E\\,Omathematics-D
country	TZ	2018	Ardhi University 	Architecture	Bachelor of Architecture in Landscape Architecture	Aadv.mathematics-E\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Ageography-E\\,AFine Art-E\\,Omathematics-D
country	TZ	2018	Ardhi University 	Engineering	Bachelor of Science in Civil Engineering	Aadv.mathematics-E\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Ageography-E\\,AFine Art-E\\,Omathematics-D
country	TZ	2018	Ardhi University 	Building Economics	Bachelor of Science in Building Economics	Aadv.mathematics-E\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Ardhi University 	Urban and Regional Planning	Bachelor of Science in Urban and Regional Planning	Aphysics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Ardhi University 	Regional Development Planning	Bachelor of Science in Regional Development Planning	Aphysics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Ardhi University 	House Planning	Bachelor of Science in Housing and Infrastructure Planning	Aphysics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Ardhi University 	Economics	Bachelor of Arts in Economics	Aeconomics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Ardhi University 	Development Studies	Bachelor of Arts in Community and Development Studies	Aphysics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Ardhi University 	Land Management	Bachelor of Science in Land Management and Valuation	Ageography-E\\,Aeconomics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Ardhi University 	Real Estate	Bachelor of Science in Real Estate (Finance and Investment)	Aphysics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Ardhi University 	Property Management	Bachelor of Science in Property and Facilities Management	Ageography-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Ardhi University 	Accounting\\, Finance	Bachelor of Science in Accounting and Finance	Ageography-E\\,Aeconomics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Ardhi University 	Geomatics	Bachelor of Science in Geomatics	Amathematics-E\\,Aphysics-E	Achemistry-E\\,Ageography-E\\,Omathematics-D
country	TZ	2018	Ardhi University 	Geoinformatics	Bachelor of Science in Geoinformatics	Amathematics-E\\,Aphysics-E	Achemistry-E\\,Ageography-E\\,Omathematics-D
country	TZ	2018	Ardhi University 	Information Systems	Bachelor of Science in Information Systems Management	Amathematics-E\\,Aphysics-E	Achemistry-E\\,Ageography-E\\,Omathematics-D
country	TZ	2018	Ardhi University 	Engineering	Bachelor of Science in Environmental Engineering	Ageography-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Aphysics-E\\,Omatematics-D
country	TZ	2018	Ardhi University 	Environmnet Studies	Bachelor of Science in Environmental Science and Management	Ageography-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Aphysics-E\\,Omatematics-D
country	TZ	2018	Ardhi University 	Engineering	Bachelor of Science in Municipal and Industrial Services Engineering	Aphysics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Aphysics-E\\,Omatematics-D
country	TZ	2018	State University of Zanzibar	Education	Bachelor of Arts with Education (B.A. (Ed)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	State University of Zanzibar	Education\\, Kiswahili	Bachelor of Swahili with Education	Ahistory-E\\,Akiswahili-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	State University of Zanzibar	Environmnet Studies\\, Education	Bachelor of Arts in Education Geography and Environmental Studies	Ageography-E	Akiswahili-E\\,Ahistory-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	State University of Zanzibar	History	Bachelor of Arts in History (BA Hist)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	State University of Zanzibar	Environment Studies	Bchelor of Science in Environmental Health	Abiology-E\\,Achemistry-E	Ageography-E\\, Achemistry-E\\, Aphysics-E
country	TZ	2018	State University of Zanzibar	Education	Bachelor of science with Education (B.Sc. Ed)	Abiology-E\\,Achemistry-E	Aphysics-E\\,Amathematics-E\\,Obiology-D\\,Ochemistry-D
country	TZ	2018	State University of Zanzibar	Information Technology	Bacholor of Information Technology Application and Management	Amathematics-E\\,Aphysics-E	Achemistry-E\\,Ageography-E\\,Omathematics-D
country	TZ	2018	State University of Zanzibar	Information Technology	Bachelor of science and Information technology with Education	Amathematics-E\\,Aphysics-E	Achemistry-E\\,Ageography-E\\,Omathematics-D
country	TZ	2018	Mzumbe University	Human Resources	Bachelor of Human Resources Management (BHRM)	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Mzumbe University	Public Administration	Bachelor of Public Administration (BPA)	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Mzumbe University	Public Administration	Bachelor of Public Administration-Records and Archives Management (BPA-RAM)	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Mzumbe University	Local Government Management	Bachelor of Local Government Management (BLGM)	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Mzumbe University	Health Systems Management	Bachelor of Health Systems Management (BHSM)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mzumbe University	Economics	Bachelor of Science in Economics – Economic Planning and Policy (BSc. Econ-EPP)	Aeconomics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Mzumbe University	Economics	Bachelor of Science in Economics – Project Planning and Management (BSc.Econ- PPM)	Aeconomics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Mzumbe University	Economics	Bachelor of Science in Economics – Population and Development (BSc. Econ-P&D)	Aeconomics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Mzumbe University	Language\\, Education	Bachelor of Education in Languages and Management (BELM)	Ahistory-E\\,Aenglish-E	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mzumbe University	Commerce\\, Accounitng\\, Education	Bachelor of Education in Commerce and Accountancy (BECA)	Aeconomics-E\\,Amathematics-S	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Mzumbe University	Economics\\, Mathematics\\, Education	Bachelor of Education in Economics and Mathematics (BEEM)	Aeconomics-E\\,Amathematics-S	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Mzumbe University	Accounting\\, Finance	Bachelor of Accounting and Finance in Business Sector (BAF-BS)	Aeconomics-E\\,Amathematics-S	Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Mzumbe University	Accounting\\, Finance	Bachelor of Accounting and Finance in Public Sector (BAF-PS)	Aeconomics-E\\,Amathematics-S	Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Mzumbe University	Business Administration\\, Marketing	Bachelor of Business Administration in Marketing Management (BBA-MKT)	Aeconomics-E\\,Amathematics-S	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Mzumbe University	Business Administration\\, Enterpremeurs	Bachelor of Business Administration in Entrepreneurship and Development (BBA-ED)	Aeconomics-E\\,Amathematics-S	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Mzumbe University	Business Administration\\, Procurement	Bachelor of Business Administration in Procurement and Logistics Management (BBA-PLM)	Aeconomics-E\\,Amathematics-S	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Mzumbe University	Library Information Studies	Bachelor of Science in Library and Information Management (BSc. LIM)	Ahistory-E\\,Akiswahili-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mzumbe University	Information Technology	Bachelor of Science in Information Technology and Systems (BSc. ITS)	Amathematics-S	Abiology-D\\,Achemistry-S\\,\\,Aphysics-D\\,Ophysics-D
country	TZ	2018	Mzumbe University	Information Technology	Bachelor of Science in Information and Communication Technology with Business (BSc. ICT-B)	Amathematics-S\\,Aphysics-D	Abiology-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Mzumbe University	Information Technology	Bachelor of Science in Information and Communication Technology with Management (BSc. ICT-M)	Amathematics-S\\,Aphysics-D	Abiology-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Mzumbe University	Engineering	Bachelor of Science in Industrial Engineering Management (BSc. IEM)	Aeconomics-E\\,Amathematics-S	Ageography-E\\,Aaccounts-E\\,Omathematics-D\\,Ocommerce-D
country	TZ	2018	Mzumbe University	Mathematics\\, Education\\, Information Technology	Bachelor of Science in Mathematics and ICT with Education (BSc.MIST-EDU)	Aphysics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Aphysics-E\\,Omathematics-D
country	TZ	2018	Mzumbe University	Production and Operation Management	Bachelor of Science in Production and Operations Management (BSc. POM)	Aphysics-E\\,Amathematics-S	Achemistry-E\\,Abiology-E\\,Aphysics-E\\,Omathematics-D
country	TZ	2018	Mzumbe University	Statistics	Bachelor of Science in Applied Statistics (BSc. Applied Statistics)	Aeconomics-E\\,Amathematics-S	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Muhimbili University of Health & Allied Sciences	Laboratory sciences	Bachelor of Medical Laboratory Sciences (BMLS)	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University of Health & Allied Sciences	Medicine	BMLS Haematology and Blood Transfusion	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University of Health & Allied Sciences	Medicine	BMLS Parasitology and Medical Entomology	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University of Health & Allied Sciences	Chemistry\\, Clinical Chemistry	BMLS Clinical Chemistry	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University of Health & Allied Sciences	Medical Technology	BMLS Histotechnology	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University of Health & Allied Sciences	Medical Technology	Bachelor of Science Radiation Therapy Technology (BSc RTT)	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University of Health & Allied Sciences	Pharmacy	Bachelor of Pharmacy	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University of Health & Allied Sciences	Nursing	Bachelor of Science Nursing Degree Programme	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University of Health & Allied Sciences	Nursing	Bachelor of Science Nursing (Management) Degree Programme	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University of Health & Allied Sciences	Nursing	Bachelor of Science Midwifery Degree Programme	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	Muhimbili University of Health & Allied Sciences	Environment Studies	Bachelor of Science (Environmental Health Science) Degree Programme	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-D\\,Anutrition-E
country	TZ	2018	University of Dodoma	Information Systems	Bachelor of Science in Business Information Systems	Amathematics-S\\,Aaccounts-E	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dodoma	Information Security	Bachelor of Science in Computer and Information Security	Amathematics-S\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dodoma	Computer Engineering\\, Engineering	Bachelor of Science in Computer Engineering	Amathematics-S\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dodoma	Computer Science	Bachelor of Science in Computer Science	Amathematics-S\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dodoma	Health Systems Management	Bachelor of Science in Health Information System (BSC HIS).	Amathematics-S\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dodoma	Information Technology	Bachelor of Science in ICT -Mediation and Content Development .	Amathematics-S\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dodoma	Information Systems	Bachelor of Science in Information System (BSC.IS).	Amathematics-S\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dodoma	Multimedia Technology	Bachelor of Science in Multimedia Technology and Animation	Amathematics-S\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dodoma	Engineering	Bachelor of Science in Software Engineering	Amathematics-S\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dodoma	Telecommucation\\, Engineering	Bachelor of Science in Telecommunication Engineering	Amathematics-S\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Dodoma	Education	Bachelor of Science in Virtual Education (B.Sc. VE)	Amathematics-S\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Mbeya University of Science and Technology	Engineering	Bachelor of Electrical and Electronic Engineering	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	Mbeya University of Science and Technology	Engineering	Bachelor of Mechanical Engineering	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	Mbeya University of Science and Technology	Engineering	Bachelor of Civil Engineering	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	Mbeya University of Science and Technology	Engineering\\, Computer Engineering	Bachelor of Computer Engineering	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	Mbeya University of Science and Technology	Architecture	Bachelor of Technology in Architecture	Aadv.mathematics-E\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Ageography-E\\,AFine Art-E\\,Omatematics-D
country	TZ	2018	Mbeya University of Science and Technology	Business Administration	Bachelor of Business Administration	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Moshi Cooperative University	Accounting\\, Finance	Bachelor of Arts in Accounting and Finance	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Moshi Cooperative University	Business Studies\\, Economics	Bachelor of Arts in Business Economics	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Moshi Cooperative University	Development Studies	Bachelor of Arts in Community Economic Development	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Moshi Cooperative University	Accounting\\, Business Studies	Bachelor of Arts in Co-operative Management and Accounting	Amathematics-S\\,Aeconomics-E	Ageography-E\\,Aenglish-E\\,Akiswahili-E\\,Ocommerce-D\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Moshi Cooperative University	Human Resources	Bachelor of Arts in Human Resource Management	Amathematics-S\\,Aeconomics-E	Ageography-E\\,Aenglish-E\\,Akiswahili-E\\,Ocommerce-D\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Moshi Cooperative University	Marketing\\, Enterpreneurship	Bachelor of Arts in Marketing and Entrepreneurship	Amathematics-S\\,Aeconomics-E	Ageography-E\\,Aenglish-E\\,Akiswahili-E\\,Ocommerce-D\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Moshi Cooperative University	Enterpreneurship\\, Business Studies	Bachelor of Arts in Microfinance and Enterprise Development	Amathematics-S\\,Aeconomics-E	Ageography-E\\,Aenglish-E\\,Akiswahili-E\\,Ocommerce-D\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Moshi Cooperative University	Procurement	Bachelor of Arts in Procurement and Supply Management	Amathematics-S\\,Aeconomics-E	Ageography-E\\,Aenglish-E\\,Akiswahili-E\\,Ocommerce-D\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Moshi Cooperative University	Library Information Studies	Bachelor of Library and Information Sciences	Amathematics-S\\,Aaccounts-E	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Moshi Cooperative University	Information Technology	Bachelor of Science in Business Information and Communication Technology	Amathematics-S\\,Aaccounts-E	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Education	Bachlor of science with Education	Amathematics-E	Achemistry-E\\, Aphysics-E\\,Omathematics-D\\,Abiology-E\\,Achemistry-E
country	TZ	2018	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Agriculture\\, Agribusiness\\, Economics	Bachelor of Agricultural Economics and Agribusiness	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Aagriculture-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Agriculture\\, Finance	Bachelor of Agricultural Financing	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Marketing	Bachelor of Marketing Management	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Enterpreneurship\\, Business Studies	Bachelor of Entrepreneurship Development	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mwalimu Julius K. Nyerere University of Agriculture and Technology	Human Resources	Bachelor of Human Resource Management	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Hubert Kairuki Memorial University	Nursing	Bachelor of Science in Nursing (BScN)	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-E\\,Anutrition-E
country	TZ	2018	International Medical and Technological University 	Medicine	Bachelor of Medicine & Bachelor of Surgery (MBBS)	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-E\\,Anutrition-E
country	TZ	2018	International Medical and Technological University 	Medical Technology	Bachelor of Science in Medical Laboratory Technology (BSc MLT)	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-E\\,Anutrition-E
country	TZ	2018	International Medical and Technological University 	Nursing	Bachelor of Science in Nursing	Achemistry-C\\,Abiology-D\\,Aphysics-D	Aphysics-E\\,Amathematics-E\\,Anutrition-E
country	TZ	2018	Tumaini University Makumira	Information Managemnt	Bachelor of Science in Computer and Information Management	Amathematics-S\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Tumaini University Makumira	Business Studies	Bachelor of Business Administration	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Tumaini University Makumira	Language	Bachelor of Arts in Languages for Academic and Professional Skills (English\\, Kiswahili\\, French)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Tumaini University Makumira	Education	Bachelor of Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Tumaini University Makumira	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Tumaini University Makumira	Music	Bachelor of Arts in Music	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Tumaini University Makumira	Law	Bachelor of Laws	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Tumaini University Makumira	Divinity\\, Religious Studies	Bachelor of Divinity	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Tumaini University Makumira	Social Work\\, Counselling	Bachelor of Counseling	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. Augustine University of Tanzania	Public Relations	Bachelor of Arts in Public Relations and Marketing	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. Augustine University of Tanzania	Sociology	Bachelor of Arts in Sociology	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. Augustine University of Tanzania	Economics	Bachelor of Arts in Economics	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	St. Augustine University of Tanzania	Business Studies	Bachelor of Business Administration	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	St. Augustine University of Tanzania	Procurement	Bachelor of Science in Procurement and Supply Chain Management	Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-E\\,Ohistory-D
country	TZ	2018	St. Augustine University of Tanzania	Tourism	Bachelor of Science in Tourism and Hospitality Management	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	St. Augustine University of Tanzania	Mass Communication	Bachelor of Arts in Mass Communication	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. Augustine University of Tanzania	Philosophy	Bachelor of Philosophy with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. Augustine University of Tanzania	Religious Studies	Bachelor of Arts in Religious Studies	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. Augustine University of Tanzania	Law	Bachelor of Laws	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. Augustine University of Tanzania	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. Augustine University of Tanzania	Engineering	Bachelor of Science in Civil Engineering	Aadv.mathematics-E\\,Aphysics-E	Achemistry-E\\,Abiology-E\\,Ageography-E\\,AFine Art-E\\,Omatematics-D
country	TZ	2018	St. Augustine University of Tanzania	Engineering	Bachelor of Science in Electrical Engineering	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	Zanzibar University	Marketing\\, Business Studies	Bachelor of Business Administration in Marketing	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Zanzibar University	Business Studies\\, Accounting\\, Finance	Bachelor of Business Administration in Accounting and Finance	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Zanzibar University	Information Technology	Bachelor of Business Information Technology	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Zanzibar University	Law\\, Shariah	Bachelor of Law and Shariah	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Zanzibar University	Public Administration	Bachelor of Arts in Public Administration	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Zanzibar University	Economics	Bachelor of Arts in Economics	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Mount Meru University	Education\\, Religious Studies	Bachelor of Christian Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mount Meru University	Theology\\, Religious Studies	Bachelor of Theology	Ahistory-E\\,Aenglish-E\\,Adivinity-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mount Meru University	Development Studies	Bachelor of Arts in Community Economic Development	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Mount Meru University	Business Studies	Bachelor of Business Administration (Accounting and Finance\\,Entrepreneurship\\,Marketing)	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Mount Meru University	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mount Meru University	Human Resources	Bachelor of Arts in Human Resource Management	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mount Meru University	Education\\, Religious Studies\\, Religious Education	Bachelor of Education in Religious Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mount Meru University	Educatuin\\, Theology\\, Religious Studies	Bachelor of Theology with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mount Meru University	Education	Bachelor of Science with Education	Amathematics-E	Achemistry-E\\, Aphysics-E\\,Omathematics-D\\,Abiology-E\\,Achemistry-E
country	TZ	2018	University of Arusha	Religious Studies	Bachelor of Arts in Theology	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	University of Arusha	Religious Studies	Bachelor of Arts in Religion	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	University of Arusha	Business Studies\\, Accounting	Bachelor of Business Administration in Accounting	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	University of Arusha	Business Studies	Bachelor of Business Administration in Management	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	University of Arusha	Business Studies\\, Marketing	Bachelor of Business Administration in Marketing	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	University of Arusha	Business Studies	Bachelor of Business Administration in Office Administration & HRM	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	University of Arusha	Education\\, Business Studies\\, Accounting	Bachelor of Business Administration in Accounting with Education	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	University of Arusha	Education	Bachelor of Education (options in any of the following ): English\\, Kiswahili\\, Geography\\, History\\, Religion\\, BED Accounting	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Teofilo Kisanji University	Education\\, Mathematics	Bachelor of Education Mathematics	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Teofilo Kisanji University	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Teofilo Kisanji University	Language\\, Education	Bachelor of Education Languages	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Teofilo Kisanji University	Psychology	Bachelor of Education in Psychology	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Teofilo Kisanji University	Commerce	Bachelor of Commerce	Amathematics-S\\,Acommerce-E	Acommerce-E\\, Obasicmathematics-D\\,economics-E
country	TZ	2018	Teofilo Kisanji University	Economics	Bachelor of Arts Economics	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Teofilo Kisanji University	Social Work\\, Sociology	Bachelor of Arts Sociology and Social Work	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	Teofilo Kisanji University	Education\\, Counselling	Bachelor of Education Counselling Psychology	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Teofilo Kisanji University	Information Managemnt	Bachelor of Science in Management Information	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	Teofilo Kisanji University	Divinity\\, Religious Studies	Bachelor of Divinity	Ahistory-E\\,Aenglish-E\\,Adivinity-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Teofilo Kisanji University	Business Studies	Bachelor of Business Administration	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Teofilo Kisanji University	Human Resources	Bachelor of Human Resources Management	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Teofilo Kisanji University	Law	Bachelor of Law	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Teofilo Kisanji University	Computer Science	Bachelor of Science in Computer Science	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Teofilo Kisanji University	Environment Studies	Bachelor of Science in Environmental Studies	Amathematics-D\\,Ageiography-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Muslim University of Morogoro	Education	Bachelor of Arts with Education	Aenglish-E\\, Ageographyi-E	Akiswahili-E\\, Ahistory-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Muslim University of Morogoro	Language	Bachelor of Languages and Interpretation	Ahistory-E\\,Aenglish-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	Muslim University of Morogoro	Mass Communication	Bachelor of Arts in Mass Communication	Ahistory-E\\,Aenglish-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	Muslim University of Morogoro	Education	Bachelor of Science with Education	Amathematics-E	Achemistry-E\\, Aphysics-E\\,Omathematics-D\\,Abiology-E\\,Achemistry-E
country	TZ	2018	Muslim University of Morogoro	Islaminc Studies\\, Religious Studies\\, Education\\, Religious Education	Bachelor of Islamic Studies with Education	Ahistory-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D\\,Aenglish-E\\,
country	TZ	2018	Muslim University of Morogoro	Business Studies\\, Business Administration	Bachelor of Business Administration	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Muslim University of Morogoro	Law\\, Shariah\\, Islamic Studies	Bachelor of Laws with Sharia'h	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. John's University of Tanzania	Nursing	Bachelor of Science in Nursing (BSc. Nursing)	Achemistry-C\\,Abiology-D	Aphysics-E\\,Amathematics-E\\,Anutrition-E
country	TZ	2018	St. John's University of Tanzania	Pharmacy	Bachelor of Pharmacy (BPharm)	Achemistry-E	Amathematics-E\\,Aphysics-E\\,Abiology-E\\,Ochemistry-D
country	TZ	2018	St. John's University of Tanzania	Religious Studies\\, Theology	Bachelor of Arts in Applied Theology	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. John's University of Tanzania	Religous Studies\\, Religious Education\\, Education	Bachelor of Arts in Theology with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. John's University of Tanzania	Religious Studies\\, Theology	Bachelor of Arts in Theology with General Management	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. John's University of Tanzania	Education	Bachelor of Arts with Education (BA Ed)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	St. John's University of Tanzania	Education\\, Science Education	Bachelor of Science with Education (BSc. Ed)	Amathematics-E	Achemistry-E\\, Aphysics-E\\,Omathematics-D\\,Abiology-E\\,Achemistry-E
country	TZ	2018	St. John's University of Tanzania	Business Studies\\, Business Administration	Bachelor of Business Administration	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	St. John's University of Tanzania	Business Studies	Bachelor of Business Studies	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	St. John's University of Tanzania	Commerce\\, Education	Bachelor of Commerce with Education	Amathematics-S\\,Acommerce-E	Acommerce-E\\, Obasicmathematics-D\\,economics-E
country	TZ	2018	St. John's University of Tanzania	Accountancy\\, Finance	Bachelor of Accountancy and Finance	Amathematics-S\\,Aeconomics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	University of Bagamoyo	Mathematics\\, Statistics	Bachelor of Science in Mathematics and Statistics	Amathematics-C\\,Accountancy-C\\, 	Aenglish-E\\, Ageography-E\\, Ocommerce-D\\,Aeconomics-C
country	TZ	2018	University of Bagamoyo	Geoinformatics	Bachelor of Science in Geoinformatics	Amathematics-D\\,Ageiography-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	University of Bagamoyo	Chemistry	Bachelor of Science in Chemistry	Achemistry-C	Aphysics-C\\,Abiology-E\\,Omathematics-D\\,Ochemistry-D
country	TZ	2018	University of Bagamoyo	Biology	Bachelor of Science in Biology	Abiology-D	Aphysics-C\\,Amathematics-E\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	University of Bagamoyo	Law	Bachelor of law	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	University of Bagamoyo	Education	Bachelor of Arts with Education (English and Geography )	Aenglish-E\\, Ageographyi-E	Akiswahili-E\\, Ahistory-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Catholic University of Health and Allied Sciences	Pharmacy	Bachelor of Pharmacy (B.Pharm):	Achemistry-E	Amathematics-E\\,Aphysics-E\\,Abiology-E\\,Ochemistry-D
country	TZ	2018	Catholic University of Health and Allied Sciences	Nursing\\, Education\\, Nursing Education	Bachelor of Science in Nursing Education (B.Sc.NED):	APhysics-D\\,Achamistry-C	Abiology-C\\,\\,Anutrition-E
country	TZ	2018	Catholic University of Health and Allied Sciences	Nursing	Bachelor of Science in Nursing	Achemistry-C\\,Abiology-D	Aphysics-E\\,Amathematics-E\\,Anutrition-E
country	TZ	2018	Catholic University of Health and Allied Sciences	Laboratory sciences	Bachelor of Medical Laboratory Sciences	Achemistry-C\\,Abiology-D	Aphysics-E\\,Amathematics-E\\,Anutrition-E
country	TZ	2018	St. Joseph University in Tanzania	Engineering	Bachelor of Engineering in Civil Engineering	APhysics-D\\,	Abiology-C\\,Achamistry-C\\,Amathematics-E
country	TZ	2018	St. Joseph University in Tanzania	Engineering	Bachelor of Engineering in Mechanical Engineering	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	St. Joseph University in Tanzania	Engineering	Bachelor of Engineering in Electrical & Electronics Engineering	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	St. Joseph University in Tanzania	Engineering	Bachelor of Engineering in Electronics & Communication Engineering	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	St. Joseph University in Tanzania	Engineering	Bachelor of Engineering in Computer Science Engineering	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	St. Joseph University in Tanzania	Engineering	Bachelor of Engineering in Information Systems and Network Engineering	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	St. Joseph University in Tanzania	Education\\, Physics\\, Chemistry	Bachelor of Science in Education with Physics and Chemistry	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	St. Joseph University in Tanzania	Education\\, Physics\\, Mathematics	Bachelor of Science in Education with Physics and Mathematics	APhysics-D\\,Achamistry-C	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	St. Joseph University in Tanzania	Education\\, Physics\\, Computer Science	Bachelor of Science in Education with Physics and Computer Science	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	St. Joseph University in Tanzania	Education\\, Phyisics\\, Mathematics	Bachelor of Science in Education with Mathematics and Chemistry	Aphysics-C\\,Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	St. Joseph University in Tanzania	Education\\, Mathematics\\, Computer Science	Bachelor of Science in Education with Mathematics and Computer Science	Amathematics-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	St. Joseph University in Tanzania	Education\\, Biology\\, 	Bachelor of Science in Education with Biology and Chemistry	Achemistry-C\\,Abiology-D	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	United African University of Tanzania	Computer Engineering\\, Engineering\\, Information Technology	Bachelor of Science in Computer Engineering and Information Technology	Aphysics-E\\,Amathematics-E	Aphysics-C\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	United African University of Tanzania	Business Studies\\, Business Administration	Bachelor of Business Administration	Amathematics-D	Ahistory-C\\,Omathematics-D\\,Aenglish-E
country	TZ	2018	Sebastian Kolowa Memorial University	Education\\, Science Education	Bachelor of Education Special Needs (Science Subjects)	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-E\\,Ohistory-D
country	TZ	2018	Sebastian Kolowa Memorial University	Education	Bachelor of Education Special Needs (Arts Subjects)	Ahistory-E\\,Aenglish-E\\,Akiswahili-E	Acommerce-E\\,Ageography-E\\,Ohistory-D
country	TZ	2018	Sebastian Kolowa Memorial University	Tourism\\, Nature	Bachelor of Science in Eco-tourism and Nature Conservation	Achemistry-C\\,Ageography-E	Aphysics-C\\,Omathematics-D\\,Achemistry-D\\,Abiology-D
country	TZ	2018	Sebastian Kolowa Memorial University	Education\\, Science Education	Bachelor of Science with Education	Achemistry-C\\,Abiology-D	Aphysics-C\\,Amathematics-E\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	Sebastian Kolowa Memorial University	Medicine\\, Mental Health\\, Health Studies	Bachelor of Science in Mental Health and Rehabilitation	Achemistry-C\\,Abiology-D	Aphysics-C\\,Amathematics-E\\,Omathematics-D\\,Achemistry-D
country	TZ	2018	University of Iringa	Law	Bachelor of Laws (LLB)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	University of Iringa	Counselling\\, Psychology	Bachelor of counseling psychology	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	University of Iringa	Mathematics\\, Education\\, Science Education	Bachelor of Education (Mathematics)	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	University of Iringa	Education	Bachelor of Education (Arts)	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	University of Iringa	Journalism	Bachelor of Arts in Journalism	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	University of Iringa	Development Studies	Bachelor of Arts Community Development	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	University of Iringa	Anthropology\\, Tourism	Bachelor of Arts in Anthropology and Tourism	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	University of Iringa	Business Studies\\, Business Administration	Bachelor of Business Administration	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	University of Iringa	Human Resources	Bachelor of Business in Human Resource Management	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	University of Iringa	Procurement	Bachelor of Business in Procurement and Supply Chain Management	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Iringa	Marketing	Bachelor of Business in Marketing	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Iringa	Marketing\\, Enterpreneurship	Bachelor of Applied Marketing and Entrepreneurship	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	University of Iringa	Accounting\\, Finance	Bachelor of Science in Accounting and Finance	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	University of Iringa	Economics\\, Finance	Bachelor of Science in Economics and Finance	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	AbdulRahman Al-Sumait Memorial University	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	AbdulRahman Al-Sumait Memorial University	Education\\, Science Education	Bachelor of Science with Education	Abiology-E\\,Achemistry-E\\,Amathematics-E	Achemistry-E\\, Aphysics-E\\,Ophysics-D
country	TZ	2018	AbdulRahman Al-Sumait Memorial University	Science	Bachelor of Science	Abiology-E\\,Achemistry-E\\,Amathematics-E	Achemistry-E\\, Aphysics-E\\,Ophysics-D
country	TZ	2018	AbdulRahman Al-Sumait Memorial University	Arts	Bachelor of Arts	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Mwenge Catholic University	Science Education\\, Education	Bachelor of Education in Science (BEDS)	Amathematics-E	Achemistry-E\\, Aphysics-E\\,Omathematics-D\\,Abiology-E\\,Achemistry-E
country	TZ	2018	Mwenge Catholic University	Mathematics\\, Statistics	Bachelor of Science in Mathematics and Statistics (BSMST)	Achemistry-C\\,Abiology-D	Aphysics-E\\,Amathematics-E\\,Ophysics-D
country	TZ	2018	Mwenge Catholic University	Environment Studies	Bachelor of Arts in Geography and Environmental Studies (BAGEN)	Amathematics-E	Achemistry-E\\, Aphysics-E\\,Omathematics-D\\,Abiology-E\\,Achemistry-E
country	TZ	2018	Mwenge Catholic University	Sociology\\, Social Work	Bachelor of Arts in Sociology and Social work (BASSW)	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	Mwenge Catholic University	Business Studies\\, Business Administration	Bachelor of Business Administration Management (BBA)	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Mwenge Catholic University	Philosophy	Bachelor of Philosophy with Ethics	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Ruaha Catholic University	Computer Science\\, Information Systems	Bachelor of science in computer science information system	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Ruaha Catholic University	Computer Science\\, Engineering	Bachelor of science in computer science software engineering	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Ruaha Catholic University	Environment Studies	Bachelor of environmental health science with information technology	Achemistry-E\\, Aphysics-E\\,Abiology-E	Amathematics-E\\,Ageography-E
country	TZ	2018	Ruaha Catholic University	Law	Bachelor of law (LL.B)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Ruaha Catholic University	Education\\, Science Education	Bachelor of arts in education ( IT and Mathematics)	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Ruaha Catholic University	Education	Bachelor of arts in education (IT and Geography)	Amathematics-D\\,Ageiography-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Ruaha Catholic University	Education\\, Science Education	Bachelor of arts in education (Information technology and Economics)	Aphysics-E\\,Amathematics-S	Achemistry-E\\, Aphysics-E\\,Omathematics-D
country	TZ	2018	Ruaha Catholic University	Business Studies\\, Business Administration	Bachelor of Business Administration (BBA)	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Ruaha Catholic University	Accounting\\, Finance\\, information Technology	Bachelor of Accounting and finance with information technology (BAFIT)	Amathematics-S\\,Acommerce-E\\,economics-E	Acommerce-E\\, Obasicmathematics-D 
country	TZ	2018	Eckernforde Tanga University	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Eckernforde Tanga University	Business Admnistration\\, Business Studies	Bachelor of Business Administration (BBA)	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Aga Khan University	Health Science	Bachelor of health science	Achenistry-D\\,Abiology-D	Aphysics-E\\,Obiology-C
country	TZ	2018	Mkwawa University College of Education	Education	Bachelor of Education Arts	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mkwawa University College of Education	Science Education\\, Education	Bachelor of Education Science	Abiology-E\\,Achemistry-E\\,Amathematics-E	Achemistry-E\\, Aphysics-E\\,Ophysics-D
country	TZ	2018	Mkwawa University College of Education	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mkwawa University College of Education	Science Education\\, Education	Bachelor of Science with Education	Abiology-E\\,Achemistry-E\\,Amathematics-E	Achemistry-E\\, Aphysics-E\\,Ophysics-D
country	TZ	2018	Kilimanjaro Christian Medical College	Laboratory sciences	Bachelor of Scince Health Laboratory Science	Achemistry-D\\,Abiology-D	Aphysics-E\\,Obiology-C
country	TZ	2018	Kilimanjaro Christian Medical College	Nursing	Bachelor of Scince in Nursing	Achemistry-C\\,Abiology-D	Aphysics-E\\,Amathematics-E\\,Anutrition-E
country	TZ	2018	Kilimanjaro Christian Medical College	Medicines\\, Physiotherapy	Bachelor of scince in Physiotherapy	Achemistry-C\\,Abiology-D	Aphysics-E\\,Amathematics-E\\,Anutrition-E\\,Oenglish-D
country	TZ	2018	Kilimanjaro Christian Medical College	Medicine	Bachelor of Science Prothestics / Orthotics	Achemistry-C\\,Abiology-D	Aphysics-E\\,Amathematics-E\\,Anutrition-E\\,Oenglish-D
country	TZ	2018	Kilimanjaro Christian Medical College	Medicine	Bachelor of Science Optometry	Achemistry-C\\,Abiology-D	Aphysics-E\\,Amathematics-E\\,Anutrition-E\\,Oenglish-D
country	TZ	2018	Tumaini University Makumira\\, Dar es Salaam College	Library Information Studies	Bachelor of Arts with Library and Information Studies	Ahistory-E\\,Akiswahili-E	Ageography-E\\,Akiswahili-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Tumaini University Makumira\\, Dar es Salaam College	Mass Communication	Bachelor of Arts in Mass Communication	Ahistory-E\\,Aenglish-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	Tumaini University Makumira\\, Dar es Salaam College	Law	Bachelor of law	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Tumaini University Makumira\\, Dar es Salaam College	Business Studies\\, Business Administration	Bachelor of Business Administration	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Stefano Moshi Memorial University College	Business Studies\\, Business Administration\\, Education	Bachelor of Business Administration with Education	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Stefano Moshi Memorial University College	Education	Bachelor of Education (Arts)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Stefano Moshi Memorial University College	Mass Communication	Bachelor of Arts in Mass communication	Ahistory-E\\,Aenglish-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	Stefano Moshi Memorial University College	Public Administration	Bachelor of Arts in Public Administration and Management	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Stefano Moshi Memorial University College	Accountancy	Bachelor of Accountancy	Amathematics-S\\,Acommerce-E\\,economics-E	Acommerce-E\\, Obasicmathematics-D
country	TZ	2018	Stefano Moshi Memorial University College	Development Studies	Bachelor of Arts in Community Development	Ahistory-E\\,Aenglish-E	Akiswahili-E\\,Ohistory-D
country	TZ	2018	Stefano Moshi Memorial University College	Information Technology	Bachelor of Science in Information Technology	Aphysics-E\\,Amathematics-S	Achemistry-E\\, Aphysics-E\\,Omathematics-D
country	TZ	2018	Stefano Moshi Memorial University College	Tourism	Bachelor of Science in Hospitality and Tourism Management	Ageneralstudies-S\\,Ahistory-E\\,	Aenglish-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	Archbishop Mihayo University College of Tabora	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Archbishop Mihayo University College of Tabora	Sociology	Bachelor of Arts in Sociology	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Archbishop Mihayo University College of Tabora	Public Relations\\, Marketing	Bachelor of Art in Public Relations and Marketing	Aeconomics-E\\,Amathematics-S\\,	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Archbishop Mihayo University College of Tabora	Law	Bachelor of Laws	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Archbishop Mihayo University College of Tabora	Business Studies\\, Business Administration	Bachelor of Business Administration	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Archbishop Mihayo University College of Tabora	Education\\, Science Education	Bachelor of Education (Special Needs)	Achenistry-D\\,Abiology-D	Aphysics-E\\,Omathematics-D
country	TZ	2018	St. Francis University College of Health and Allied Sciences	Medicine	Bachelor Degree in Doctor of Medicine	Achenistry-D\\,Abiology-D	Aphysics-E\\,Obiology-C
country	TZ	2018	St. Francis University College of Health and Allied Sciences	Laboratory sciences	Bachelor of Medical Laboratory Sciences	Achenistry-D\\,Abiology-D	Aphysics-E\\,Obiology-C
country	TZ	2018	Jordan University College	Education	Bachelor of Arts with Education	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Jordan University College	Sociology	Bachelor of Arts in Sociology	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Jordan University College	Philosophy	Bachelor of Arts in Philosophy	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Jordan University College	African Studies\\, History	Bachelor of Arts in African Studies	Ahistory-E\\,Ageography-E\\, 	Aenglish-E\\,Ocommerce-D\\,Ohistory-D\\,Akiswahili-E
country	TZ	2018	Jordan University College	Religious Studies\\, Education	Bachelor of Arts in Education with Religious Studies (Christianity)	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Jordan University College	Business Studies\\, Business Administration	Bachelor of Business Administration	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Jordan University College	Economics	Bachelor of Arts in Economics	Aeconomics-E\\,Amathematics-S	Acommerce-E\\, Obasicmathematics-D\\,Ohistory-D
country	TZ	2018	Jordan University College	Law	Bachelor of Law	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Jordan University College	Psychology\\, Counselling	Bachelor of Science in Psychology and Counselling	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Jordan University College	Theology\\, Religious Studies	Bachelor of Arts in Theology	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D\\,Adivinity-E
country	TZ	2018	Stella Maris Mtwara University College	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Stella Maris Mtwara University College	Sociology	Bachelor of Arts in Sociology	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Stella Maris Mtwara University College	Philosophy\\, Education	Bachelor of Philosophy with Education	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Stella Maris Mtwara University College	Philosophy\\, Political Science	Bachelor of Philosophy with Political Science	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Stella Maris Mtwara University College	Law	Bachelor of Laws	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Stella Maris Mtwara University College	Business Admnistration\\, Business Studies	Bachelor of Business Administration	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Stella Maris Mtwara University College	Economics	Bachelor of Arts in Economics	Aeconomics-E\\,Amathematics-S	Ageography-E\\,Aaccounts-E\\,Omatematics-D\\,Ocommerce-D
country	TZ	2018	Stella Maris Mtwara University College	Mathematics\\, Statistics	Bachelor of Science in Mathematics and Statistics	Amathematics-C\\,Accountancy-C\\, 	Aenglish-E\\, Ageography-E\\, Ocommerce-D\\,Aeconomics-C
country	TZ	2018	Josiah Kibira University College	Education	Bachelor of Education (BEd)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Josiah Kibira University College	Education\\, Science Education	Bachelor of Arts with Education (BAEd)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Josiah Kibira University College	Education\\, Science Education	Bachelor of Science with Education (BScEd)	Abiology-E\\,Achemistry-E\\,Amathematics-E	Achemistry-E\\, Aphysics-E\\,Ophysics-D
country	TZ	2018	Josiah Kibira University College	Education\\, Science Education	Bachelor of Education in Science (BEdSc)	Abiology-E\\,Achemistry-E\\,Amathematics-E	Achemistry-E\\, Aphysics-E\\,Ophysics-D
country	TZ	2018	Josiah Kibira University College	Accounting\\, Finance	Bachelor of Accounting and Finance (BAF)	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Josiah Kibira University College	Business Studies\\, Business Administration	Bachelor in Business Administration (BBA)	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Arch Bishop James University College	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Arch Bishop James University College	Mass Communication	Bachelor of Arts in Mass Communication	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Arch Bishop James University College	Business Studies\\, Business Administration	Bachelor of Business Administration (BBA)	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Arch Bishop James University College	Law	Bachelor of Laws	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Marian University College	Education\\, Science Education	Bachelor of Education in Science	Abiology-E\\,Achemistry-E\\,Amathematics-E	Achemistry-E\\, Aphysics-E\\,Ophysics-D
country	TZ	2018	Marian University College	Computer Science	Bachelor of Science in Computer Science	Amathematics-D\\,Aphysics-D\\,	Amathematics-S\\,Aphysics-D\\,Achemistry-S\\,Ophysics-D
country	TZ	2018	Marian University College	Mathematics\\, Statistics	Bachelor of Science in Mathematics and Statistics	Amathematics-C\\,A Accountancy-C\\, 	Aenglish-E\\, Ageography-E\\, Ocommerce-D\\,Aeconomics-C
country	TZ	2018	Cardinal Rugambwa Memorial University College	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mzumbe University Mbeya Campus	Law	Bachelor of Laws	Ahistory-E\\, Akiswahili-E	Ageography-E\\, Aenglish-E\\,Ocommerce-D\\,Ohistory-D
country	TZ	2018	Mzumbe University Mbeya Campus	Business Studies\\, Business Administration	Bachelor of Business Administration	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Mzumbe University Mbeya Campus	Acccountancy\\, Finance	Bachelor of Accountancy and Finance	Amathematics-S\\,Aaccounts-E	Acommerce-E\\, Abasicmathematics-E\\,Ohistory-D
country	TZ	2018	Mzumbe University Mbeya Campus	Human Resources	Bachelor of Human Resource Management	Ahistory-E\\,Ageneralstudies-S	Aenglish-E\\, Ageography-E\\, Akiswahili-E\\, Ohistory-D
country	TZ	2018	Kenyatta University\\, Arusha Centre	Information Technology	Bachelor of Business Information Technology	Amathematics-S	Abiology-D\\,Achemistry-S\\,\\,Aphysics-D\\,Ophysics-D
country	TZ	2018	Kenyatta University\\, Arusha Centre	Commerce	Bachelor of Commerce	Amathematics-S\\,Acommerce-E	Aaccounts-E\\, Omathematics-D\\,Ohistory-D
country	TZ	2018	Kenyatta University\\, Arusha Centre	Development Studies	Bachelor of development studies	Ageneralstudies-S\\,Ahistory-E	Aenglish-E\\,Ageography-E\\,Ohistory-D\\,Oenglish-D\\,Okiswahili-D
country	TZ	2018	Mount Meru University\\, Mwanza Centre	Business Studies\\, Business Administration	Bachelor of Business Administration	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Mount Meru University\\, Mwanza Centre	Education	Bachelor of Arts with Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Mount Meru University\\, Mwanza Centre	Education	Bachelor of Education	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Teofilo Kisanji University\\, Tabora Centre	Education	Bachelor of Arts with Education (BAED)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Teofilo Kisanji University\\, Dar es Salaam Centre	Education	Bachelor of Arts with Education (BAED)	Ahistory-E\\,Aenglish-E\\,	Ageography-E\\,Aenglish-E\\,Ohistory-D\\,Oenglish-D
country	TZ	2018	Teofilo Kisanji University\\, Dar es Salaam Centre	Business Studies\\, Business Administration	Bachelor of Business Administration (BBA)	Amathematics-S\\,Aaccounts-E	Acommerce-E\\,Omathematics-D\\,Ohistory-D
country	TZ	2018	Teofilo Kisanji University\\, Dar es Salaam Centre	Sociology\\, Social Work	Bachelor of Arts in Sociology and Social Work	Ageneralstudies-S\\,Ahistory-E\\, Aenglish-E	Ohistory-D\\,Oenglish-D\\,Okiswahili-D
\.


-- Completed on 2018-03-27 17:05:15 EAT

--
-- PostgreSQL database dump complete
--

