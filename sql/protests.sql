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

ALTER TABLE IF EXISTS ONLY public.protests DROP CONSTRAINT IF EXISTS protests_pkey;
DROP TABLE IF EXISTS public.protests;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: protests; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE protests (
	geo_level character varying(15) NOT NULL,
	geo_code character varying(10) NOT NULL,
	"protests" character varying(128) NOT NULL,
	total float NOT NULL
);


--
-- Data for Name: protests; Type: TABLE DATA; Schema: public; Owner: -
--

COPY	protests (geo_level, geo_code, "protests", total) FROM stdin;
county	1	number of protests	5
county	2	number of protests	0
county	3	number of protests	0
county	4	number of protests	0
county	5	number of protests	0
county	6	number of protests	3
county	7	number of protests	0
county	8	number of protests	0
county	9	number of protests	0
county	10	number of protests	5
county	11	number of protests	0
county	12	number of protests	0
county	13	number of protests	0
county	14	number of protests	4
county	15	number of protests	0
county	16	number of protests	0
county	17	number of protests	0
county	18	number of protests	0
county	19	number of protests	0
county	20	number of protests	0
county	21	number of protests	6
county	22	number of protests	12
county	23	number of protests	2
county	24	number of protests	1
county	25	number of protests	2
county	26	number of protests	6
county	27	number of protests	7
county	28	number of protests	1
county	29	number of protests	2
county	30	number of protests	4
county	31	number of protests	2
county	32	number of protests	7
county	33	number of protests	4
county	34	number of protests	0
county	35	number of protests	2
county	36	number of protests	3
county	37	number of protests	6
county	38	number of protests	2
county	39	number of protests	2
county	40	number of protests	2
county	41	number of protests	4
county	42	number of protests	5
county	43	number of protests	2
county	44	number of protests	3
county	45	number of protests	10
county	46	number of protests	3
county	47	number of protests	26
country	KE	number of protests	140
\.
--
-- Name: protests_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY protests
	ADD CONSTRAINT protests_pkey PRIMARY KEY (geo_level, geo_code, "protests", total);


--
-- PostgreSQL database dump complete
--

