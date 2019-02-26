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

ALTER TABLE IF EXISTS ONLY public.extent_of_democracy DROP CONSTRAINT IF EXISTS pk_extent_of_democracy;
DROP TABLE IF EXISTS public.extent_of_democracy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: extent_of_democracy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.extent_of_democracy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    extent_of_democracy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: extent_of_democracy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.extent_of_democracy (geo_level, geo_code, geo_version, extent_of_democracy, total) FROM stdin;
region	1	2009	A democracy, but with minor problems	41
region	1	2009	A democracy, with major problems	19
region	1	2009	A full democracy	11
region	1	2009	Do not understand question / democracy	9
region	1	2009	Don't know	37
region	1	2009	Not a democracy	3
region	2	2009	A democracy, but with minor problems	156
region	2	2009	A democracy, with major problems	42
region	2	2009	A full democracy	25
region	2	2009	Do not understand question / democracy	23
region	2	2009	Don't know	24
region	2	2009	Not a democracy	3
region	3	2009	A democracy, but with minor problems	16
region	3	2009	A democracy, with major problems	6
region	3	2009	A full democracy	25
region	3	2009	Don't know	49
region	4	2009	A democracy, but with minor problems	27
region	4	2009	A democracy, with major problems	20
region	4	2009	A full democracy	14
region	4	2009	Do not understand question / democracy	4
region	4	2009	Don't know	6
region	5	2009	A democracy, but with minor problems	16
region	5	2009	A democracy, with major problems	5
region	5	2009	A full democracy	9
region	5	2009	Do not understand question / democracy	12
region	5	2009	Don't know	5
region	5	2009	Not a democracy	1
region	6	2009	A democracy, but with minor problems	32
region	6	2009	A democracy, with major problems	4
region	6	2009	A full democracy	13
region	6	2009	Do not understand question / democracy	11
region	6	2009	Don't know	9
region	6	2009	Not a democracy	3
region	7	2009	A democracy, but with minor problems	25
region	7	2009	A democracy, with major problems	12
region	7	2009	A full democracy	16
region	7	2009	Not a democracy	3
region	8	2009	A democracy, but with minor problems	26
region	8	2009	A democracy, with major problems	6
region	8	2009	A full democracy	6
region	8	2009	Not a democracy	2
region	9	2009	A democracy, but with minor problems	9
region	9	2009	A democracy, with major problems	6
region	9	2009	A full democracy	2
region	9	2009	Do not understand question / democracy	2
region	9	2009	Don't know	5
region	10	2009	A democracy, but with minor problems	39
region	10	2009	A democracy, with major problems	6
region	10	2009	A full democracy	16
region	10	2009	Do not understand question / democracy	16
region	10	2009	Don't know	15
region	10	2009	Not a democracy	4
region	11	2009	A democracy, but with minor problems	34
region	11	2009	A democracy, with major problems	24
region	11	2009	A full democracy	5
region	11	2009	Do not understand question / democracy	2
region	11	2009	Don't know	23
region	12	2009	A democracy, but with minor problems	3
region	12	2009	A democracy, with major problems	2
region	12	2009	A full democracy	3
region	13	2009	A democracy, but with minor problems	13
region	13	2009	A democracy, with major problems	7
region	13	2009	A full democracy	4
region	14	2009	A democracy, but with minor problems	38
region	14	2009	A democracy, with major problems	4
region	14	2009	A full democracy	3
region	14	2009	Do not understand question / democracy	1
region	14	2009	Don't know	2
region	15	2009	A democracy, but with minor problems	9
region	15	2009	A democracy, with major problems	10
region	15	2009	A full democracy	2
region	15	2009	Don't know	32
region	15	2009	Not a democracy	11
region	16	2009	A democracy, but with minor problems	29
region	16	2009	A democracy, with major problems	14
region	16	2009	A full democracy	30
region	16	2009	Do not understand question / democracy	4
region	16	2009	Not a democracy	3
region	17	2009	A democracy, but with minor problems	30
region	17	2009	A democracy, with major problems	11
region	17	2009	A full democracy	14
region	17	2009	Do not understand question / democracy	4
region	17	2009	Don't know	4
region	17	2009	Not a democracy	1
region	30	2009	A democracy, but with minor problems	73
region	30	2009	A democracy, with major problems	17
region	30	2009	A full democracy	16
region	30	2009	Don't know	1
region	30	2009	Not a democracy	5
region	18	2009	A democracy, but with minor problems	30
region	18	2009	A democracy, with major problems	8
region	18	2009	A full democracy	19
region	18	2009	Don't know	63
region	19	2009	A democracy, but with minor problems	55
region	19	2009	A democracy, with major problems	9
region	19	2009	A full democracy	5
region	19	2009	Don't know	2
region	20	2009	A democracy, but with minor problems	37
region	20	2009	A democracy, with major problems	15
region	20	2009	A full democracy	60
region	20	2009	Do not understand question / democracy	7
region	20	2009	Don't know	2
region	20	2009	Not a democracy	3
region	21	2009	A democracy, but with minor problems	18
region	21	2009	A democracy, with major problems	7
region	21	2009	A full democracy	5
region	21	2009	Do not understand question / democracy	10
region	22	2009	A democracy, but with minor problems	37
region	22	2009	A democracy, with major problems	6
region	22	2009	A full democracy	10
region	22	2009	Do not understand question / democracy	4
region	22	2009	Don't know	11
region	22	2009	Not a democracy	4
region	23	2009	A democracy, but with minor problems	17
region	23	2009	A full democracy	13
region	23	2009	Do not understand question / democracy	5
region	23	2009	Don't know	4
region	24	2009	A democracy, but with minor problems	35
region	24	2009	A democracy, with major problems	1
region	24	2009	A full democracy	19
region	24	2009	Do not understand question / democracy	14
region	24	2009	Don't know	3
region	25	2009	A democracy, but with minor problems	41
region	25	2009	A democracy, with major problems	6
region	25	2009	A full democracy	10
region	25	2009	Do not understand question / democracy	6
region	25	2009	Don't know	6
region	25	2009	Not a democracy	3
region	26	2009	A democracy, but with minor problems	27
region	26	2009	A democracy, with major problems	7
region	26	2009	A full democracy	6
region	26	2009	Do not understand question / democracy	17
region	26	2009	Don't know	7
region	27	2009	A democracy, but with minor problems	40
region	27	2009	A democracy, with major problems	4
region	27	2009	A full democracy	6
region	27	2009	Do not understand question / democracy	11
region	27	2009	Don't know	3
region	31	2009	A democracy, but with minor problems	28
region	31	2009	A democracy, with major problems	5
region	31	2009	A full democracy	21
region	31	2009	Do not understand question / democracy	9
region	31	2009	Don't know	6
region	31	2009	Not a democracy	3
region	29	2009	A democracy, but with minor problems	31
region	29	2009	A democracy, with major problems	6
region	29	2009	A full democracy	10
region	29	2009	Do not understand question / democracy	4
region	29	2009	Don't know	53
region	28	2009	A democracy, but with minor problems	10
region	28	2009	A democracy, with major problems	8
region	28	2009	A full democracy	11
region	28	2009	Do not understand question / democracy	2
region	28	2009	Don't know	47
region	28	2009	Not a democracy	10
country	TZ	2009	A democracy, but with minor problems	1022
country	TZ	2009	Not a democracy	62
country	TZ	2009	Do not understand question / democracy	177
country	TZ	2009	A democracy, with major problems	297
country	TZ	2009	Don't know	419
country	TZ	2009	A full democracy	409
\.


--
-- Name: extent_of_democracy pk_extent_of_democracy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.extent_of_democracy
    ADD CONSTRAINT pk_extent_of_democracy PRIMARY KEY (geo_level, geo_code, geo_version, extent_of_democracy);


--
-- PostgreSQL database dump complete
--

