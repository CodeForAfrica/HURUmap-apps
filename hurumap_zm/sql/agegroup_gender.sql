--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: agegroup_gender; Type: TABLE; Schema: public; Owner: hurumap_zm
--

CREATE TABLE agegroup_gender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    gender character varying(128) NOT NULL,
    "age group" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100)
);


ALTER TABLE agegroup_gender OWNER TO hurumap_zm;

--
-- Data for Name: agegroup_gender; Type: TABLE DATA; Schema: public; Owner: hurumap_zm
--

COPY agegroup_gender (geo_level, geo_code, gender, "age group", total, geo_version) FROM stdin;
country	ZM	male	0-14 Years	2954372	2010
province	1	male	0-14 Years	303521	2010
province	2	male	0-14 Years	398080	2010
province	3	male	0-14 Years	376749	2010
province	4	male	0-14 Years	237719	2010
province	5	male	0-14 Years	432621	2010
province	6	male	0-14 Years	173033	2010
province	7	male	0-14 Years	269359	2010
province	8	male	0-14 Years	177019	2010
province	9	male	0-14 Years	375728	2010
province	10	male	0-14 Years	210543	2010
country	ZM	female	0-14 Years	2988797	2010
province	1	female	0-14 Years	305623	2010
province	2	female	0-14 Years	408528	2010
province	3	female	0-14 Years	376818	2010
province	4	female	0-14 Years	237137	2010
province	5	female	0-14 Years	452941	2010
province	6	female	0-14 Years	172981	2010
province	7	female	0-14 Years	268767	2010
province	8	female	0-14 Years	177475	2010
province	9	female	0-14 Years	378841	2010
province	10	female	0-14 Years	209686	2010
country	ZM	male	15-34 Years	2224884	2010
province	1	male	15-34 Years	217901	2010
province	2	male	15-34 Years	369307	2010
province	3	male	15-34 Years	257254	2010
province	4	male	15-34 Years	151398	2010
province	5	male	15-34 Years	425866	2010
province	6	male	15-34 Years	110133	2010
province	7	male	15-34 Years	169887	2010
province	8	male	15-34 Years	115472	2010
province	9	male	15-34 Years	269219	2010
province	10	male	15-34 Years	138447	2010
country	ZM	female	15-34 Years	2398258	2010
province	1	female	15-34 Years	230600	2010
province	2	female	15-34 Years	386957	2010
province	3	female	15-34 Years	270325	2010
province	4	female	15-34 Years	168751	2010
province	5	female	15-34 Years	464268	2010
province	6	female	15-34 Years	121315	2010
province	7	female	15-34 Years	185981	2010
province	8	female	15-34 Years	124050	2010
province	9	female	15-34 Years	287057	2010
province	10	female	15-34 Years	158954	2010
country	ZM	male	35 and above	1250964	2010
province	1	male	35 and above	122423	2010
province	2	male	35 and above	194945	2010
province	3	male	35 and above	160838	2010
province	4	male	35 and above	97450	2010
province	5	male	35 and above	191018	2010
province	6	male	35 and above	67489	2010
province	7	male	35 and above	104225	2010
province	8	male	35 and above	67378	2010
province	9	male	35 and above	144369	2010
province	10	male	35 and above	100829	2010
country	ZM	female	35 and above	1250964	2010
province	1	female	35 and above	122423	2010
province	2	female	35 and above	194945	2010
province	3	female	35 and above	160838	2010
province	4	female	35 and above	97450	2010
province	5	female	35 and above	191018	2010
province	6	female	35 and above	67489	2010
province	7	female	35 and above	104225	2010
province	8	female	35 and above	67378	2010
province	9	female	35 and above	144369	2010
province	10	female	35 and above	100829	2010
\.


--
-- Name: agegroup_gender agegroup_gender_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_zm
--

ALTER TABLE ONLY agegroup_gender
    ADD CONSTRAINT agegroup_gender_pkey PRIMARY KEY (geo_level, geo_code, gender, "age group");


--
-- PostgreSQL database dump complete
--

