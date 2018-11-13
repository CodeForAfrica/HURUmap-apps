--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.language_of_respondent DROP CONSTRAINT IF EXISTS pk_language_of_respondent;
DROP TABLE IF EXISTS public.language_of_respondent;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: language_of_respondent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.language_of_respondent (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    language_of_respondent character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: language_of_respondent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.language_of_respondent (geo_level, geo_code, geo_version, language_of_respondent, total) FROM stdin;
county	22	2009	Borana	1
county	10	2009	Borana	5
county	47	2009	Borana	1
county	4	2009	Borana	2
county	8	2009	Borana	2
county	39	2009	English	1
county	40	2009	English	1
county	7	2009	English	1
county	43	2009	English	1
county	34	2009	English	2
county	3	2009	English	1
county	16	2009	English	2
county	9	2009	English	1
county	47	2009	English	1
county	33	2009	English	1
county	25	2009	English	1
county	38	2009	English	1
county	9	2009	Garre	12
county	30	2009	Kalenjin	30
county	36	2009	Kalenjin	40
county	39	2009	Kalenjin	5
county	28	2009	Kalenjin	16
county	35	2009	Kalenjin	32
county	47	2009	Kalenjin	3
county	32	2009	Kalenjin	21
county	29	2009	Kalenjin	37
county	33	2009	Kalenjin	1
county	46	2009	Kalenjin	1
county	26	2009	Kalenjin	2
county	27	2009	Kalenjin	34
county	14	2009	Kamba	3
county	34	2009	Kamba	3
county	22	2009	Kamba	7
county	3	2009	Kamba	1
county	20	2009	Kamba	2
county	15	2009	Kamba	53
county	2	2009	Kamba	5
county	5	2009	Kamba	1
county	16	2009	Kamba	67
county	17	2009	Kamba	55
county	12	2009	Kamba	1
county	1	2009	Kamba	15
county	47	2009	Kamba	41
county	32	2009	Kamba	1
county	46	2009	Kamba	1
county	6	2009	Kamba	2
county	30	2009	Kikuyu	2
county	39	2009	Kikuyu	1
county	40	2009	Kikuyu	1
county	34	2009	Kikuyu	6
county	37	2009	Kikuyu	2
county	22	2009	Kikuyu	100
county	3	2009	Kikuyu	1
county	20	2009	Kikuyu	37
county	45	2009	Kikuyu	1
county	42	2009	Kikuyu	2
county	15	2009	Kikuyu	1
county	2	2009	Kikuyu	1
county	31	2009	Kikuyu	10
county	5	2009	Kikuyu	6
county	16	2009	Kikuyu	1
county	12	2009	Kikuyu	5
county	1	2009	Kikuyu	6
county	21	2009	Kikuyu	62
county	47	2009	Kikuyu	85
county	32	2009	Kikuyu	60
county	33	2009	Kikuyu	5
county	18	2009	Kikuyu	40
county	19	2009	Kikuyu	46
county	26	2009	Kikuyu	1
county	27	2009	Kikuyu	1
county	8	2009	Kikuyu	1
county	36	2009	Kisii	5
county	39	2009	Kisii	1
county	34	2009	Kisii	4
county	45	2009	Kisii	70
county	42	2009	Kisii	1
county	12	2009	Kisii	1
county	44	2009	Kisii	1
county	1	2009	Kisii	1
county	47	2009	Kisii	13
county	32	2009	Kisii	8
county	33	2009	Kisii	1
county	46	2009	Kisii	38
county	26	2009	Kisii	1
county	27	2009	Kisii	2
county	44	2009	Kuria	16
county	36	2009	Luhya	1
county	39	2009	Luhya	48
county	40	2009	Luhya	23
county	34	2009	Luhya	6
county	37	2009	Luhya	67
county	22	2009	Luhya	5
county	45	2009	Luhya	1
county	42	2009	Luhya	4
county	16	2009	Luhya	2
county	17	2009	Luhya	1
county	44	2009	Luhya	1
county	1	2009	Luhya	6
county	47	2009	Luhya	38
county	32	2009	Luhya	2
county	29	2009	Luhya	10
county	33	2009	Luhya	1
county	19	2009	Luhya	1
county	41	2009	Luhya	3
county	26	2009	Luhya	21
county	27	2009	Luhya	9
county	38	2009	Luhya	27
county	36	2009	Luo	1
county	40	2009	Luo	3
county	43	2009	Luo	50
county	34	2009	Luo	3
county	37	2009	Luo	2
county	35	2009	Luo	8
county	22	2009	Luo	2
county	3	2009	Luo	1
county	42	2009	Luo	48
county	2	2009	Luo	4
county	9	2009	Luo	1
county	44	2009	Luo	30
county	1	2009	Luo	8
county	47	2009	Luo	41
county	32	2009	Luo	3
county	29	2009	Luo	1
county	33	2009	Luo	1
county	41	2009	Luo	45
county	26	2009	Luo	1
county	23	2009	Luo	1
county	27	2009	Luo	4
county	11	2009	Maasai/Samburu	1
county	34	2009	Maasai/Samburu	24
county	31	2009	Maasai/Samburu	9
county	10	2009	Maasai/Samburu	2
county	47	2009	Maasai/Samburu	1
county	32	2009	Maasai/Samburu	1
county	33	2009	Maasai/Samburu	31
county	25	2009	Maasai/Samburu	7
county	14	2009	Meru/Embu	36
county	22	2009	Meru/Embu	3
county	20	2009	Meru/Embu	1
county	15	2009	Meru/Embu	1
county	12	2009	Meru/Embu	78
county	1	2009	Meru/Embu	2
county	21	2009	Meru/Embu	2
county	47	2009	Meru/Embu	6
county	13	2009	Meru/Embu	24
county	3	2009	Mijikenda	50
county	42	2009	Mijikenda	1
county	2	2009	Mijikenda	23
county	5	2009	Mijikenda	1
county	1	2009	Mijikenda	24
county	6	2009	Mijikenda	1
county	27	2009	Mijikenda	1
county	36	2009	Other	1
county	39	2009	Other	6
county	40	2009	Other	8
county	43	2009	Other	4
county	11	2009	Other	1
county	3	2009	Other	3
county	2	2009	Other	5
county	1	2009	Other	3
county	47	2009	Other	4
county	32	2009	Other	8
county	33	2009	Other	2
county	6	2009	Other	1
county	4	2009	Other	6
county	26	2009	Other	3
county	27	2009	Other	1
county	8	2009	Other	1
county	10	2009	Pokot	1
county	27	2009	Pokot	1
county	24	2009	Pokot	24
county	7	2009	Somali	31
county	11	2009	Somali	6
county	22	2009	Somali	1
county	3	2009	Somali	3
county	31	2009	Somali	4
county	9	2009	Somali	34
county	10	2009	Somali	7
county	1	2009	Somali	1
county	47	2009	Somali	6
county	8	2009	Somali	28
county	39	2009	Swahili	18
county	40	2009	Swahili	4
county	14	2009	Swahili	1
county	43	2009	Swahili	1
county	37	2009	Swahili	25
county	22	2009	Swahili	1
county	3	2009	Swahili	4
county	2	2009	Swahili	1
county	1	2009	Swahili	4
county	47	2009	Swahili	8
county	33	2009	Swahili	5
county	26	2009	Swahili	12
county	27	2009	Swahili	1
county	38	2009	Swahili	4
county	15	2009	Taita	1
county	2	2009	Taita	1
county	1	2009	Taita	2
county	6	2009	Taita	12
county	31	2009	Turkana	1
county	10	2009	Turkana	1
county	19	2009	Turkana	1
county	26	2009	Turkana	7
county	23	2009	Turkana	47
county	27	2009	Turkana	2
\.


--
-- Name: language_of_respondent pk_language_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.language_of_respondent
    ADD CONSTRAINT pk_language_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, language_of_respondent);


--
-- PostgreSQL database dump complete
--

