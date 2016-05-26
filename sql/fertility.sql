--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.fertility DROP CONSTRAINT IF EXISTS fertility_pkey;
DROP TABLE IF EXISTS public.fertility;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: fertility; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE fertility (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "fertility" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: fertility; Type: TABLE DATA; Schema: public; Owner: -
--

COPY fertility (geo_level, geo_code, "fertility", total) FROM stdin;
country	KE	rate	3.9
country	KE	pregnant	6.3
country	KE	mean	5.0
county	2	rate	4.7
county	2	pregnant	7.5
county	2	mean	5.8
county	3	rate	5.1
county	3	pregnant	7.1
county	3	mean	6.4
county	4	rate	5.8
county	4	pregnant	10.2
county	4	mean	7.4
county	5	rate	4.3
county	5	pregnant	5.6
county	5	mean	5.0
county	6	rate	3.2
county	6	pregnant	3.7
county	6	mean	4.3
county	7	rate	6.1
county	7	pregnant	11.7
county	7	mean	6.8
county	8	rate	7.8
county	8	pregnant	13.6
county	8	mean	7.9
county	9	rate	5.2
county	9	pregnant	10.6
county	9	mean	6.4
county	10	rate	5.0
county	10	pregnant	12.7
county	10	mean	6.0
county	11	rate	4.9
county	11	pregnant	6.2
county	11	mean	6.1
county	12	rate	3.1
county	12	pregnant	4.8
county	12	mean	4.3
county	13	rate	3.4
county	13	pregnant	4.4
county	13	mean	4.3
county	14	rate	3.1
county	14	pregnant	4.5
county	14	mean	4.1
county	15	rate	3.9
county	15	pregnant	4.1
county	15	mean	5.3
county	16	rate	3.4
county	16	pregnant	3.9
county	16	mean	4.3
county	18	rate	3.5
county	18	pregnant	6.0
county	18	mean	4.8
county	19	rate	2.7
county	19	pregnant	4.8
county	19	mean	3.3
county	20	rate	2.3
county	20	pregnant	4.1
county	20	mean	3.4
county	21	rate	3.0
county	21	pregnant	4.3
county	21	mean	3.9
county	22	rate	2.7
county	22	pregnant	5.0
county	22	mean	3.6
county	23	rate	6.9
county	23	pregnant	10.6
county	23	mean	6.4
county	24	rate	7.2
county	24	pregnant	10.7
county	24	mean	6.4
county	25	rate	6.3
county	25	pregnant	11.6
county	25	mean	6.5
county	26	rate	5.2
county	26	pregnant	6.3
county	26	mean	6.6
county	27	rate	3.6
county	27	pregnant	8.4
county	27	mean	5.3
county	28	rate	4.1
county	28	pregnant	5.9
county	28	mean	5.8
county	29	rate	4.0
county	29	pregnant	4.8
county	29	mean	6.1
county	30	rate	4.8
county	30	pregnant	7.8
county	30	mean	6.2
county	31	rate	3.7
county	31	pregnant	7.9
county	31	mean	4.9
county	32	rate	3.7
county	32	pregnant	5.3
county	32	mean	4.7
county	33	rate	6.0
county	33	pregnant	10.2
county	33	mean	6.7
county	35	rate	4.0
county	35	pregnant	5.7
county	35	mean	5.0
county	36	rate	4.3
county	36	pregnant	5.5
county	36	mean	5.7
county	37	rate	4.4
county	37	pregnant	7.3
county	37	mean	5.4
county	38	rate	4.5
county	38	pregnant	6.2
county	38	mean	5.3
county	39	rate	5.0
county	39	pregnant	6.2
county	39	mean	6.9
county	40	rate	4.7
county	40	pregnant	6.8
county	40	mean	6.5
county	41	rate	4.2
county	41	pregnant	5.9
county	41	mean	5.9
county	42	rate	3.6
county	42	pregnant	5.3
county	42	mean	5.6
county	43	rate	5.2
county	43	pregnant	6.4
county	43	mean	6.2
county	44	rate	5.3
county	44	pregnant	9.0
county	44	mean	7.0
county	45	rate	3.7
county	45	pregnant	5.0
county	45	mean	5.1
county	46	rate	3.5
county	46	pregnant	3.2
county	46	mean	4.7
county	47	rate	2.7
county	47	pregnant	6.8
county	47	mean	3.1
county	17	rate	3.3
county	17	pregnant	4.0
county	17	mean	5.5
county	1	rate	3.2
county	1	pregnant	5.4
county	1	mean	4.1
county	34	rate	4.5
county	34	pregnant	7.7
county	34	mean	4.3
\.
--
-- Name: fertility_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY fertility
    ADD CONSTRAINT fertility_pkey PRIMARY KEY (geo_level, geo_code, "fertility");


--
-- PostgreSQL database dump complete
--

