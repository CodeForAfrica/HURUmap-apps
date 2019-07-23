--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.driver_licences_processed DROP CONSTRAINT IF EXISTS driver_licences_processed_pkey;
DROP TABLE IF EXISTS public.driver_licences_processed;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: driver_licences_processed; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.driver_licences_processed (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: driver_licences_processed; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.driver_licences_processed (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	Breach of Peace	243
state	1	2016	Bribery and Corruption	0
state	1	2016	Coining Offence	0
state	1	2016	Escape from Custody	6
state	1	2016	Forgery of Currency	4
state	1	2016	Gambling	4
state	1	2016	Other Offence	11
state	1	2016	Perjury	4
state	2	2016	Breach of Peace	37
state	2	2016	Bribery and Corruption	0
state	2	2016	Coining Offence	0
state	2	2016	Escape from Custody	6
state	2	2016	Forgery of Currency	0
state	2	2016	Gambling	0
state	2	2016	Other Offence	9
state	2	2016	Perjury	0
state	3	2016	Breach of Peace	366
state	3	2016	Bribery and Corruption	0
state	3	2016	Coining Offence	0
state	3	2016	Escape from Custody	3
state	3	2016	Forgery of Currency	3
state	3	2016	Gambling	4
state	3	2016	Other Offence	0
state	3	2016	Perjury	2
state	4	2016	Breach of Peace	537
state	4	2016	Bribery and Corruption	0
state	4	2016	Coining Offence	2
state	4	2016	Escape from Custody	9
state	4	2016	Forgery of Currency	1
state	4	2016	Gambling	0
state	4	2016	Other Offence	182
state	4	2016	Perjury	0
state	5	2016	Breach of Peace	0
state	5	2016	Bribery and Corruption	0
state	5	2016	Coining Offence	0
state	5	2016	Escape from Custody	0
state	5	2016	Forgery of Currency	4
state	5	2016	Gambling	0
state	5	2016	Other Offence	0
state	5	2016	Perjury	0
state	6	2016	Breach of Peace	87
state	6	2016	Bribery and Corruption	0
state	6	2016	Coining Offence	0
state	6	2016	Escape from Custody	2
state	6	2016	Forgery of Currency	1
state	6	2016	Gambling	0
state	6	2016	Other Offence	0
state	6	2016	Perjury	1
state	7	2016	Breach of Peace	64
state	7	2016	Bribery and Corruption	0
state	7	2016	Coining Offence	0
state	7	2016	Escape from Custody	5
state	7	2016	Forgery of Currency	11
state	7	2016	Gambling	6
state	7	2016	Other Offence	23
state	7	2016	Perjury	1
state	8	2016	Breach of Peace	1
state	8	2016	Bribery and Corruption	0
state	8	2016	Coining Offence	0
state	8	2016	Escape from Custody	0
state	8	2016	Forgery of Currency	2
state	8	2016	Gambling	0
state	8	2016	Other Offence	0
state	8	2016	Perjury	0
state	9	2016	Breach of Peace	49
state	9	2016	Bribery and Corruption	0
state	9	2016	Coining Offence	0
state	9	2016	Escape from Custody	1
state	9	2016	Forgery of Currency	0
state	9	2016	Gambling	0
state	9	2016	Other Offence	6
state	9	2016	Perjury	0
state	10	2016	Breach of Peace	537
state	10	2016	Bribery and Corruption	0
state	10	2016	Coining Offence	2
state	10	2016	Escape from Custody	9
state	10	2016	Forgery of Currency	1
state	10	2016	Gambling	0
state	10	2016	Other Offence	182
state	10	2016	Perjury	0
state	11	2016	Breach of Peace	6
state	11	2016	Bribery and Corruption	0
state	11	2016	Coining Offence	13
state	11	2016	Escape from Custody	1
state	11	2016	Forgery of Currency	23
state	11	2016	Gambling	72
state	11	2016	Other Offence	34
state	11	2016	Perjury	3
state	12	2016	Breach of Peace	2
state	12	2016	Bribery and Corruption	6
state	12	2016	Coining Offence	4
state	12	2016	Escape from Custody	11
state	12	2016	Forgery of Currency	0
state	12	2016	Gambling	243
state	12	2016	Other Offence	41
state	12	2016	Perjury	0
state	13	2016	Breach of Peace	0
state	13	2016	Bribery and Corruption	0
state	13	2016	Coining Offence	0
state	13	2016	Escape from Custody	0
state	13	2016	Forgery of Currency	0
state	13	2016	Gambling	0
state	13	2016	Other Offence	0
state	13	2016	Perjury	0
state	14	2016	Breach of Peace	125
state	14	2016	Bribery and Corruption	0
state	14	2016	Coining Offence	0
state	14	2016	Escape from Custody	0
state	14	2016	Forgery of Currency	0
state	14	2016	Gambling	0
state	14	2016	Other Offence	0
state	14	2016	Perjury	0
state	15	2016	Breach of Peace	11
state	15	2016	Bribery and Corruption	0
state	15	2016	Coining Offence	0
state	15	2016	Escape from Custody	0
state	15	2016	Forgery of Currency	0
state	15	2016	Gambling	0
state	15	2016	Other Offence	28
state	15	2016	Perjury	0
state	16	2016	Breach of Peace	4
state	16	2016	Bribery and Corruption	0
state	16	2016	Coining Offence	0
state	16	2016	Escape from Custody	1
state	16	2016	Forgery of Currency	13
state	16	2016	Gambling	1
state	16	2016	Other Offence	14
state	16	2016	Perjury	0
state	17	2016	Breach of Peace	80
state	17	2016	Bribery and Corruption	0
state	17	2016	Coining Offence	0
state	17	2016	Escape from Custody	0
state	17	2016	Forgery of Currency	0
state	17	2016	Gambling	0
state	17	2016	Other Offence	0
state	17	2016	Perjury	0
state	18	2016	Breach of Peace	20
state	18	2016	Bribery and Corruption	0
state	18	2016	Coining Offence	5
state	18	2016	Escape from Custody	2
state	18	2016	Forgery of Currency	0
state	18	2016	Gambling	5
state	18	2016	Other Offence	15
state	18	2016	Perjury	0
state	19	2016	Breach of Peace	0
state	19	2016	Bribery and Corruption	0
state	19	2016	Coining Offence	0
state	19	2016	Escape from Custody	2
state	19	2016	Forgery of Currency	0
state	19	2016	Gambling	2
state	19	2016	Other Offence	0
state	19	2016	Perjury	0
state	20	2016	Breach of Peace	183
state	20	2016	Bribery and Corruption	0
state	20	2016	Coining Offence	3
state	20	2016	Escape from Custody	4
state	20	2016	Forgery of Currency	5
state	20	2016	Gambling	56
state	20	2016	Other Offence	38
state	20	2016	Perjury	0
state	21	2016	Breach of Peace	5
state	21	2016	Bribery and Corruption	0
state	21	2016	Coining Offence	0
state	21	2016	Escape from Custody	7
state	21	2016	Forgery of Currency	1
state	21	2016	Gambling	0
state	21	2016	Other Offence	45
state	21	2016	Perjury	0
state	22	2016	Breach of Peace	6
state	22	2016	Bribery and Corruption	0
state	22	2016	Coining Offence	0
state	22	2016	Escape from Custody	1
state	22	2016	Forgery of Currency	4
state	22	2016	Gambling	0
state	22	2016	Other Offence	0
state	22	2016	Perjury	0
state	23	2016	Breach of Peace	0
state	23	2016	Bribery and Corruption	0
state	23	2016	Coining Offence	0
state	23	2016	Escape from Custody	0
state	23	2016	Forgery of Currency	2
state	23	2016	Gambling	0
state	23	2016	Other Offence	23
state	23	2016	Perjury	0
state	24	2016	Breach of Peace	11
state	24	2016	Bribery and Corruption	1
state	24	2016	Coining Offence	0
state	24	2016	Escape from Custody	1
state	24	2016	Forgery of Currency	3
state	24	2016	Gambling	0
state	24	2016	Other Offence	5
state	24	2016	Perjury	4
state	25	2016	Breach of Peace	6,183
state	25	2016	Bribery and Corruption	4
state	25	2016	Coining Offence	13
state	25	2016	Escape from Custody	18
state	25	2016	Forgery of Currency	23
state	25	2016	Gambling	72
state	25	2016	Other Offence	712
state	25	2016	Perjury	35
state	26	2016	Breach of Peace	96
state	26	2016	Bribery and Corruption	0
state	26	2016	Coining Offence	0
state	26	2016	Escape from Custody	4
state	26	2016	Forgery of Currency	0
state	26	2016	Gambling	0
state	26	2016	Other Offence	33
state	26	2016	Perjury	0
state	27	2016	Breach of Peace	21
state	27	2016	Bribery and Corruption	1
state	27	2016	Coining Offence	0
state	27	2016	Escape from Custody	18
state	27	2016	Forgery of Currency	2
state	27	2016	Gambling	0
state	27	2016	Other Offence	712
state	27	2016	Perjury	0
country	NG	2016	Breach of Peace	9,605
country	NG	2016	Bribery and Corruption	17
country	NG	2016	Coining Offence	46
country	NG	2016	Escape from Custody	123
country	NG	2016	Forgery of Currency	111
country	NG	2016	Gambling	471
country	NG	2016	Other Offence	2,240
country	NG	2016	Perjury	65
state	28	2016	Breach of Peace	537
state	28	2016	Bribery and Corruption	0
state	28	2016	Coining Offence	0
state	28	2016	Escape from Custody	0
state	28	2016	Forgery of Currency	0
state	28	2016	Gambling	0
state	28	2016	Other Offence	0
state	28	2016	Perjury	0
state	29	2016	Breach of Peace	279
state	29	2016	Bribery and Corruption	0
state	29	2016	Coining Offence	0
state	29	2016	Escape from Custody	0
state	29	2016	Forgery of Currency	0
state	29	2016	Gambling	0
state	29	2016	Other Offence	0
state	29	2016	Perjury	10
state	30	2016	Breach of Peace	52
state	30	2016	Bribery and Corruption	0
state	30	2016	Coining Offence	0
state	30	2016	Escape from Custody	1
state	30	2016	Forgery of Currency	0
state	30	2016	Gambling	0
state	30	2016	Other Offence	
state	30	2016	Perjury	1
state	31	2016	Breach of Peace	40
state	31	2016	Bribery and Corruption	0
state	31	2016	Coining Offence	0
state	31	2016	Escape from Custody	0
state	31	2016	Forgery of Currency	0
state	31	2016	Gambling	6
state	31	2016	Other Offence	0
state	31	2016	Perjury	0
state	32	2016	Breach of Peace	0
state	32	2016	Bribery and Corruption	0
state	32	2016	Coining Offence	0
state	32	2016	Escape from Custody	1
state	32	2016	Forgery of Currency	1
state	32	2016	Gambling	0
state	32	2016	Other Offence	0
state	32	2016	Perjury	0
state	33	2016	Breach of Peace	0
state	33	2016	Bribery and Corruption	0
state	33	2016	Coining Offence	0
state	33	2016	Escape from Custody	0
state	33	2016	Forgery of Currency	0
state	33	2016	Gambling	0
state	33	2016	Other Offence	0
state	33	2016	Perjury	0
state	34	2016	Breach of Peace	22
state	34	2016	Bribery and Corruption	3
state	34	2016	Coining Offence	0
state	34	2016	Escape from Custody	0
state	34	2016	Forgery of Currency	0
state	34	2016	Gambling	0
state	34	2016	Other Offence	0
state	34	2016	Perjury	1
state	35	2016	Breach of Peace	1
state	35	2016	Bribery and Corruption	2
state	35	2016	Coining Offence	4
state	35	2016	Escape from Custody	3
state	35	2016	Forgery of Currency	3
state	35	2016	Gambling	0
state	35	2016	Other Offence	19
state	35	2016	Perjury	1
state	36	2016	Breach of Peace	0
state	36	2016	Bribery and Corruption	0
state	36	2016	Coining Offence	0
state	36	2016	Escape from Custody	7
state	36	2016	Forgery of Currency	3
state	36	2016	Gambling	0
state	36	2016	Other Offence	77
state	36	2016	Perjury	1
state	37	2016	Breach of Peace	0
state	37	2016	Bribery and Corruption	0
state	37	2016	Coining Offence	0
state	37	2016	Escape from Custody	0
state	37	2016	Forgery of Currency	1
state	37	2016	Gambling	0
state	37	2016	Other Offence	31
state	37	2016	Perjury	0
\.


--
-- Name: driver_licences_processed driver_licences_processed_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.driver_licences_processed
    ADD CONSTRAINT driver_licences_processed_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
