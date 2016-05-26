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

ALTER TABLE IF EXISTS ONLY public.useofipt DROP CONSTRAINT IF EXISTS useofipt_pkey;
DROP TABLE IF EXISTS public.useofipt;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: useofipt; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE useofipt (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "use of ipt" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: useofipt; Type: TABLE DATA; Schema: public; Owner: -
--

COPY useofipt (geo_level, geo_code, "use of ipt", total) FROM stdin;
county	1	1 or more	67.3
county	1	2 or more	46.4
county	1	3 or more	24.9
county	2	1 or more	91.8
county	2	2 or more	79.1
county	2	3 or more	51.9
county	3	1 or more	65.2
county	3	2 or more	41.8
county	3	3 or more	28.5
county	4	1 or more	77
county	4	2 or more	41.6
county	4	3 or more	21.4
county	5	1 or more	81
county	5	2 or more	60
county	5	3 or more	35.7
county	6	1 or more	75
county	6	2 or more	55.1
county	6	3 or more	31.9
county	7	1 or more	2.7
county	7	2 or more	1
county	7	3 or more	0.8
county	8	1 or more	4.4
county	8	2 or more	2
county	8	3 or more	0.5
county	9	1 or more	11.3
county	9	2 or more	4.3
county	9	3 or more	3
county	10	1 or more	1.5
county	10	2 or more	1.2
county	10	3 or more	0.6
county	11	1 or more	48.2
county	11	2 or more	3.3
county	11	3 or more	1.3
county	12	1 or more	19.1
county	12	2 or more	3.8
county	12	3 or more	0
county	13	1 or more	25.9
county	13	2 or more	10.3
county	13	3 or more	7.1
county	14	1 or more	15
county	14	2 or more	1.1
county	14	3 or more	0
county	15	1 or more	42.2
county	15	2 or more	25.8
county	15	3 or more	16
county	16	1 or more	16.5
county	16	2 or more	8.3
county	16	3 or more	2.5
county	17	1 or more	26.5
county	17	2 or more	10.1
county	17	3 or more	7.4
county	18	1 or more	7.3
county	18	2 or more	3
county	18	3 or more	2.2
county	19	1 or more	5.2
county	19	2 or more	3.2
county	19	3 or more	1.9
county	20	1 or more	10.2
county	20	2 or more	8.4
county	20	3 or more	3.7
county	21	1 or more	14.4
county	21	2 or more	4.8
county	21	3 or more	1.9
county	22	1 or more	24.5
county	22	2 or more	4.4
county	22	3 or more	2.6
county	23	1 or more	52.4
county	23	2 or more	22.7
county	23	3 or more	13
county	24	1 or more	3.1
county	24	2 or more	3
county	24	3 or more	2.9
county	25	1 or more	6.3
county	25	2 or more	2.9
county	25	3 or more	2.8
county	26	1 or more	11
county	26	2 or more	3.7
county	26	3 or more	3.2
county	27	1 or more	7.8
county	27	2 or more	7
county	27	3 or more	6.4
county	28	1 or more	15.2
county	28	2 or more	4.3
county	28	3 or more	1.8
county	29	1 or more	11.3
county	29	2 or more	3.4
county	29	3 or more	1.9
county	30	1 or more	21.2
county	30	2 or more	9.9
county	30	3 or more	6.7
county	31	1 or more	19.4
county	31	2 or more	7
county	31	3 or more	1.6
county	32	1 or more	19.2
county	32	2 or more	9.3
county	32	3 or more	4.2
county	33	1 or more	6.6
county	33	2 or more	1.4
county	33	3 or more	0.6
county	34	1 or more	20.6
county	34	2 or more	12.3
county	34	3 or more	8.5
county	35	1 or more	7.5
county	35	2 or more	4.4
county	35	3 or more	3.4
county	36	1 or more	7.5
county	36	2 or more	5.2
county	36	3 or more	4.8
county	37	1 or more	36.2
county	37	2 or more	28.1
county	37	3 or more	20.1
county	38	1 or more	72.9
county	38	2 or more	47.1
county	38	3 or more	20.5
county	39	1 or more	57.5
county	39	2 or more	39.6
county	39	3 or more	27.7
county	40	1 or more	60.9
county	40	2 or more	47.9
county	40	3 or more	36.1
county	41	1 or more	58.1
county	41	2 or more	23.4
county	41	3 or more	15
county	42	1 or more	58.2
county	42	2 or more	26.9
county	42	3 or more	5.9
county	43	1 or more	38.4
county	43	2 or more	22.8
county	43	3 or more	12.3
county	44	1 or more	51
county	44	2 or more	26.1
county	44	3 or more	12.9
county	45	1 or more	25.5
county	45	2 or more	11.3
county	45	3 or more	3.7
county	46	1 or more	21.9
county	46	2 or more	18.1
county	46	3 or more	7
county	47	1 or more	6.3
county	47	2 or more	1.3
county	47	3 or more	0.8
country	KE	1 or more	29.6
country	KE	2 or more	16.9
country	KE	3 or more	10.1
\.
--
-- Name: useofipt_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY useofipt
    ADD CONSTRAINT useofipt_pkey PRIMARY KEY (geo_level, geo_code, "use of ipt");


--
-- PostgreSQL database dump complete
--

