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

ALTER TABLE IF EXISTS ONLY public.heightforage DROP CONSTRAINT IF EXISTS heightforage_pkey;
ALTER TABLE IF EXISTS ONLY public.weightforheight DROP CONSTRAINT IF EXISTS weightforheight_pkey;
ALTER TABLE IF EXISTS ONLY public.weightforage DROP CONSTRAINT IF EXISTS weightforage_pkey;
DROP TABLE IF EXISTS public.heightforage;
DROP TABLE IF EXISTS public.weightforheight;
DROP TABLE IF EXISTS public.weightforage;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: weightforage; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE weightforage (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "weight for age" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Name: weightforheight; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE weightforheight (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "weight for height" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Name: heightforage; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE heightforage (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "height for age" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: weightforage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY weightforage (geo_level, geo_code, "weight for age", total) FROM stdin;
county	1	below -3	1.5
county	1	below -2	9.6
county	1	above +2	1.9
county	1	mean Z-score	-0.6
county	2	below -3	1.5
county	2	below -2	11.8
county	2	above +2	1.5
county	2	mean Z-score	-0.8
county	3	below -3	3.1
county	3	below -2	16.9
county	3	above +2	0.6
county	3	mean Z-score	-1
county	4	below -3	3.1
county	4	below -2	18.6
county	4	above +2	0.6
county	4	mean Z-score	-1
county	5	below -3	2.1
county	5	below -2	11.8
county	5	above +2	2.1
county	5	mean Z-score	-0.8
county	6	below -3	3.2
county	6	below -2	7.8
county	6	above +2	1.8
county	6	mean Z-score	-0.6
county	7	below -3	2.9
county	7	below -2	13.1
county	7	above +2	1.3
county	7	mean Z-score	-0.8
county	8	below -3	3.7
county	8	below -2	21.1
county	8	above +2	0
county	8	mean Z-score	-1.1
county	9	below -3	8.2
county	9	below -2	24.9
county	9	above +2	3
county	9	mean Z-score	-1.1
county	10	below -3	7.3
county	10	below -2	30.1
county	10	above +2	0.4
county	10	mean Z-score	-1.3
county	11	below -3	3.2
county	11	below -2	12.9
county	11	above +2	1
county	11	mean Z-score	-0.8
county	12	below -3	1.2
county	12	below -2	8.1
county	12	above +2	0.5
county	12	mean Z-score	-0.6
county	13	below -3	4.1
county	13	below -2	10.8
county	13	above +2	0.8
county	13	mean Z-score	-0.8
county	14	below -3	1.3
county	14	below -2	11.1
county	14	above +2	1.3
county	14	mean Z-score	-0.7
county	15	below -3	2.9
county	15	below -2	19.7
county	15	above +2	0.7
county	15	mean Z-score	-1.1
county	16	below -3	1.7
county	16	below -2	8.1
county	16	above +2	1.2
county	16	mean Z-score	-0.7
county	17	below -3	1.7
county	17	below -2	10.2
county	17	above +2	1
county	17	mean Z-score	-0.7
county	18	below -3	1
county	18	below -2	6.8
county	18	above +2	0.8
county	18	mean Z-score	-0.6
county	19	below -3	1.2
county	19	below -2	2.5
county	19	above +2	2.1
county	19	mean Z-score	-0.3
county	20	below -3	1.3
county	20	below -2	7.7
county	20	above +2	0
county	20	mean Z-score	-0.5
county	21	below -3	1.6
county	21	below -2	5.6
county	21	above +2	1.2
county	21	mean Z-score	-0.5
county	22	below -3	1.1
county	22	below -2	5.1
county	22	above +2	4.3
county	22	mean Z-score	-0.1
county	23	below -3	9.8
county	23	below -2	34
county	23	above +2	0
county	23	mean Z-score	-1.5
county	24	below -3	9.6
county	24	below -2	38.5
county	24	above +2	0.3
county	24	mean Z-score	-1.5
county	25	below -3	8.1
county	25	below -2	28.9
county	25	above +2	0.3
county	25	mean Z-score	-1.4
county	26	below -3	3.9
county	26	below -2	15.3
county	26	above +2	0.6
county	26	mean Z-score	-0.8
county	27	below -3	2.8
county	27	below -2	11.5
county	27	above +2	0.7
county	27	mean Z-score	-0.7
county	28	below -3	2.5
county	28	below -2	12.6
county	28	above +2	0.7
county	28	mean Z-score	-0.9
county	29	below -3	1.9
county	29	below -2	11.1
county	29	above +2	0.5
county	29	mean Z-score	-0.8
county	30	below -3	3.6
county	30	below -2	20.2
county	30	above +2	1.2
county	30	mean Z-score	-1.1
county	31	below -3	2.8
county	31	below -2	13.9
county	31	above +2	0.8
county	31	mean Z-score	-0.8
county	32	below -3	2.8
county	32	below -2	10.2
county	32	above +2	1.5
county	32	mean Z-score	-0.6
county	33	below -3	1.1
county	33	below -2	11.6
county	33	above +2	0.6
county	33	mean Z-score	-0.9
county	34	below -3	2.5
county	34	below -2	8.1
county	34	above +2	4
county	34	mean Z-score	-0.4
county	35	below -3	3.5
county	35	below -2	12.4
county	35	above +2	1.4
county	35	mean Z-score	-0.7
county	36	below -3	2.1
county	36	below -2	12
county	36	above +2	0.6
county	36	mean Z-score	-0.8
county	37	below -3	2.2
county	37	below -2	10.1
county	37	above +2	1.2
county	37	mean Z-score	-0.6
county	38	below -3	1.4
county	38	below -2	5.9
county	38	above +2	0.9
county	38	mean Z-score	-0.5
county	39	below -3	0.9
county	39	below -2	9
county	39	above +2	1.8
county	39	mean Z-score	-0.5
county	40	below -3	1.8
county	40	below -2	9
county	40	above +2	0.8
county	40	mean Z-score	-0.6
county	41	below -3	1.4
county	41	below -2	7.8
county	41	above +2	1.6
county	41	mean Z-score	-0.4
county	42	below -3	0.4
county	42	below -2	6.6
county	42	above +2	3.8
county	42	mean Z-score	-0.2
county	43	below -3	1.3
county	43	below -2	5.4
county	43	above +2	2.6
county	43	mean Z-score	-0.3
county	44	below -3	1.6
county	44	below -2	8.6
county	44	above +2	1.5
county	44	mean Z-score	-0.5
county	45	below -3	1.8
county	45	below -2	8.4
county	45	above +2	0.9
county	45	mean Z-score	-0.6
county	46	below -3	2
county	46	below -2	9.6
county	46	above +2	0.5
county	46	mean Z-score	-0.6
county	47	below -3	1.2
county	47	below -2	3.8
county	47	above +2	1.7
county	47	mean Z-score	-0.2
country	KE	below -3	2.3
country	KE	below -2	11
country	KE	above +2	1.4
country	KE	mean Z-score	-0.6
\.


--
-- Data for Name: weightforheight; Type: TABLE DATA; Schema: public; Owner: -
--

COPY weightforheight (geo_level, geo_code, "weight for height", total) FROM stdin;
county	1	below -3	0
county	1	below -2	4.1
county	1	above +2	4.2
county	1	mean Z-score	0
county	2	below -3	0.8
county	2	below -2	4.4
county	2	above +2	3.8
county	2	mean Z-score	0
county	3	below -3	0.9
county	3	below -2	4.1
county	3	above +2	2.8
county	3	mean Z-score	-0.1
county	4	below -3	0.9
county	4	below -2	5.7
county	4	above +2	1.3
county	4	mean Z-score	-0.3
county	5	below -3	0.3
county	5	below -2	4.2
county	5	above +2	2
county	5	mean Z-score	-0.1
county	6	below -3	3.6
county	6	below -2	7.2
county	6	above +2	4.2
county	6	mean Z-score	-0.1
county	7	below -3	1.3
county	7	below -2	11.4
county	7	above +2	2.3
county	7	mean Z-score	-0.6
county	8	below -3	3.1
county	8	below -2	14.2
county	8	above +2	0.7
county	8	mean Z-score	-0.8
county	9	below -3	3.8
county	9	below -2	14.8
county	9	above +2	5.9
county	9	mean Z-score	-0.5
county	10	below -3	5.1
county	10	below -2	16.3
county	10	above +2	1
county	10	mean Z-score	-0.9
county	11	below -3	2.4
county	11	below -2	9.1
county	11	above +2	1.6
county	11	mean Z-score	-0.6
county	12	below -3	1
county	12	below -2	2.9
county	12	above +2	4.9
county	12	mean Z-score	0.1
county	13	below -3	0
county	13	below -2	3.3
county	13	above +2	3.6
county	13	mean Z-score	0
county	14	below -3	0.2
county	14	below -2	3
county	14	above +2	3.6
county	14	mean Z-score	0.1
county	15	below -3	0.4
county	15	below -2	3.4
county	15	above +2	3.1
county	15	mean Z-score	-0.2
county	16	below -3	2.5
county	16	below -2	6.5
county	16	above +2	5.5
county	16	mean Z-score	-0.1
county	17	below -3	1
county	17	below -2	2.1
county	17	above +2	5.3
county	17	mean Z-score	0.1
county	18	below -3	0.1
county	18	below -2	2
county	18	above +2	6.8
county	18	mean Z-score	0.3
county	19	below -3	0
county	19	below -2	2.4
county	19	above +2	5.9
county	19	mean Z-score	0.2
county	20	below -3	0.8
county	20	below -2	3.9
county	20	above +2	4.5
county	20	mean Z-score	0
county	21	below -3	0
county	21	below -2	1.4
county	21	above +2	3.1
county	21	mean Z-score	0.1
county	22	below -3	0.3
county	22	below -2	2.3
county	22	above +2	7.9
county	22	mean Z-score	0.4
county	23	below -3	4.4
county	23	below -2	22.9
county	23	above +2	0.2
county	23	mean Z-score	-1.3
county	24	below -3	2.4
county	24	below -2	14.3
county	24	above +2	1.4
county	24	mean Z-score	-0.8
county	25	below -3	2.8
county	25	below -2	13.6
county	25	above +2	0.6
county	25	mean Z-score	-0.9
county	26	below -3	2
county	26	below -2	3.9
county	26	above +2	2.4
county	26	mean Z-score	-0.1
county	27	below -3	1.1
county	27	below -2	3
county	27	above +2	5.1
county	27	mean Z-score	0
county	28	below -3	1.2
county	28	below -2	4.3
county	28	above +2	4.5
county	28	mean Z-score	-0.2
county	29	below -3	1
county	29	below -2	3.9
county	29	above +2	3.7
county	29	mean Z-score	-0.1
county	30	below -3	1.2
county	30	below -2	6.9
county	30	above +2	2
county	30	mean Z-score	-0.5
county	31	below -3	0.8
county	31	below -2	4.4
county	31	above +2	3.7
county	31	mean Z-score	-0.1
county	32	below -3	0.6
county	32	below -2	4.5
county	32	above +2	5.7
county	32	mean Z-score	0.1
county	33	below -3	0.7
county	33	below -2	2.4
county	33	above +2	3
county	33	mean Z-score	-0.1
county	34	below -3	0.8
county	34	below -2	3
county	34	above +2	4.3
county	34	mean Z-score	0.1
county	35	below -3	1.1
county	35	below -2	5.6
county	35	above +2	6.6
county	35	mean Z-score	0.1
county	36	below -3	0.4
county	36	below -2	1.8
county	36	above +2	3.7
county	36	mean Z-score	0.1
county	37	below -3	0.5
county	37	below -2	1.8
county	37	above +2	4.3
county	37	mean Z-score	0.2
county	38	below -3	0.4
county	38	below -2	2.6
county	38	above +2	4
county	38	mean Z-score	0.2
county	39	below -3	0.2
county	39	below -2	1.8
county	39	above +2	2.9
county	39	mean Z-score	0.1
county	40	below -3	0.7
county	40	below -2	2.2
county	40	above +2	2.4
county	40	mean Z-score	0.1
county	41	below -3	0
county	41	below -2	0.2
county	41	above +2	4.7
county	41	mean Z-score	0.2
county	42	below -3	0
county	42	below -2	0.8
county	42	above +2	5.7
county	42	mean Z-score	0.2
county	43	below -3	0.9
county	43	below -2	2.3
county	43	above +2	4.1
county	43	mean Z-score	0.2
county	44	below -3	0.9
county	44	below -2	4
county	44	above +2	4.4
county	44	mean Z-score	0.2
county	45	below -3	0
county	45	below -2	1.7
county	45	above +2	4
county	45	mean Z-score	0.2
county	46	below -3	0.9
county	46	below -2	4.1
county	46	above +2	2.9
county	46	mean Z-score	0
county	47	below -3	0.8
county	47	below -2	2.5
county	47	above +2	5.3
county	47	mean Z-score	0.2
country	KE	below -3	0.9
country	KE	below -2	4
country	KE	above +2	4.1
country	KE	mean Z-score	0
\.


--
-- Data for Name: heightforage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY heightforage (geo_level, geo_code, "height for age", total) FROM stdin;
county	1	below -3	7.1
county	1	below -2	21.1
county	1	mean Z-score	-1
county	2	below -3	10.5
county	2	below -2	29.7
county	2	mean Z-score	-1.4
county	3	below -3	13.6
county	3	below -2	39.1
county	3	mean Z-score	-1.5
county	4	below -3	9.4
county	4	below -2	28.1
county	4	mean Z-score	-1.4
county	5	below -3	7.1
county	5	below -2	29.2
county	5	mean Z-score	-1.2
county	6	below -3	5.8
county	6	below -2	23.8
county	6	mean Z-score	-0.9
county	7	below -3	5.9
county	7	below -2	15.6
county	7	mean Z-score	-0.7
county	8	below -3	10.3
county	8	below -2	26.4
county	8	mean Z-score	-1
county	9	below -3	19
county	9	below -2	36.1
county	9	mean Z-score	-1.3
county	10	below -3	10.7
county	10	below -2	26.5
county	10	mean Z-score	-1.2
county	11	below -3	5.1
county	11	below -2	19.1
county	11	mean Z-score	-0.7
county	12	below -3	6.2
county	12	below -2	25.2
county	12	mean Z-score	-1.1
county	13	below -3	7.6
county	13	below -2	32.9
county	13	mean Z-score	-1.4
county	14	below -3	6.5
county	14	below -2	26.8
county	14	mean Z-score	-1.3
county	15	below -3	12.7
county	15	below -2	45.8
county	15	mean Z-score	-1.7
county	16	below -3	7.1
county	16	below -2	26.5
county	16	mean Z-score	-1.1
county	17	below -3	7.8
county	17	below -2	25.1
county	17	mean Z-score	-1.3
county	18	below -3	8.1
county	18	below -2	29.4
county	18	mean Z-score	-1.3
county	19	below -3	5.6
county	19	below -2	15.1
county	19	mean Z-score	-0.9
county	20	below -3	3.7
county	20	below -2	17.2
county	20	mean Z-score	-0.9
county	21	below -3	4.8
county	21	below -2	19.3
county	21	mean Z-score	-1
county	22	below -3	3.8
county	22	below -2	15.7
county	22	mean Z-score	-0.7
county	23	below -3	7.1
county	23	below -2	23.9
county	23	mean Z-score	-1.1
county	24	below -3	19
county	24	below -2	45.9
county	24	mean Z-score	-1.8
county	25	below -3	9.8
county	25	below -2	30.1
county	25	mean Z-score	-1.3
county	26	below -3	10.7
county	26	below -2	29.2
county	26	mean Z-score	-1.3
county	27	below -3	11.1
county	27	below -2	31.2
county	27	mean Z-score	-1.3
county	28	below -3	7.3
county	28	below -2	29.9
county	28	mean Z-score	-1.4
county	29	below -3	8.3
county	29	below -2	29.9
county	29	mean Z-score	-1.3
county	30	below -3	8.4
county	30	below -2	29.5
county	30	mean Z-score	-1.4
county	31	below -3	7.4
county	31	below -2	26.9
county	31	mean Z-score	-1.3
county	32	below -3	7.2
county	32	below -2	27.6
county	32	mean Z-score	-1.2
county	33	below -3	8.7
county	33	below -2	32.9
county	33	mean Z-score	-1.4
county	34	below -3	7.1
county	34	below -2	18.2
county	34	mean Z-score	-0.7
county	35	below -3	10.5
county	35	below -2	28.7
county	35	mean Z-score	-1.3
county	36	below -3	10.7
county	36	below -2	35.5
county	36	mean Z-score	-1.6
county	37	below -3	12.3
county	37	below -2	28.4
county	37	mean Z-score	-1.3
county	38	below -3	6
county	38	below -2	23.5
county	38	mean Z-score	-1.1
county	39	below -3	6.4
county	39	below -2	24.4
county	39	mean Z-score	-1.1
county	40	below -3	5.4
county	40	below -2	22
county	40	mean Z-score	-1.1
county	41	below -3	7.1
county	41	below -2	24.7
county	41	mean Z-score	-1.1
county	42	below -3	6.9
county	42	below -2	18
county	42	mean Z-score	-0.7
county	43	below -3	4.2
county	43	below -2	18.7
county	43	mean Z-score	-0.7
county	44	below -3	10.1
county	44	below -2	26.4
county	44	mean Z-score	-1.1
county	45	below -3	9.3
county	45	below -2	25.5
county	45	mean Z-score	-1.3
county	46	below -3	10.1
county	46	below -2	25.5
county	46	mean Z-score	-1.1
county	47	below -3	3.9
county	47	below -2	17.2
county	47	mean Z-score	-0.7
country	KE	below -3	8.1
country	KE	below -2	26
country	KE	mean Z-score	-1.1
\.


--
-- Name: weightforage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY weightforage
    ADD CONSTRAINT weightforage_pkey PRIMARY KEY (geo_level, geo_code, "weight for age");


--
-- Name: weightforheight_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY weightforheight
    ADD CONSTRAINT weightforheight_pkey PRIMARY KEY (geo_level, geo_code, "weight for height");


--
-- Name: heightforage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY heightforage
    ADD CONSTRAINT heightforage_pkey PRIMARY KEY (geo_level, geo_code, "height for age");


--
-- PostgreSQL database dump complete
--

