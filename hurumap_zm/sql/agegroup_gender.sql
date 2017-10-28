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

ALTER TABLE IF EXISTS ONLY public.agegroup_gender DROP CONSTRAINT IF EXISTS agegroup_gender_pkey;
DROP TABLE IF EXISTS public.agegroup_gender;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: agegroup_gender; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE agegroup_gender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    gender character varying(128) NOT NULL,
    "age group" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: agegroup_gender; Type: TABLE DATA; Schema: public; Owner: -
--


COPY agegroup_gender (geo_level, geo_code, gender, "age group", total) FROM stdin;
country	ZM	male	0-14 Years	2954372
province	1	male	0-14 Years	303521
province	2	male	0-14 Years	398080
province	3	male	0-14 Years	376749
province	4	male	0-14 Years	237719
province	5	male	0-14 Years	432621
province	6	male	0-14 Years	173033
province	7	male	0-14 Years	269359
province	8	male	0-14 Years	177019
province	9	male	0-14 Years	375728
province	10	male	0-14 Years	210543
country	ZM	female	0-14 Years	2988797
province	1	female	0-14 Years	305623
province	2	female	0-14 Years	408528
province	3	female	0-14 Years	376818
province	4	female	0-14 Years	237137
province	5	female	0-14 Years	452941
province	6	female	0-14 Years	172981
province	7	female	0-14 Years	268767
province	8	female	0-14 Years	177475
province	9	female	0-14 Years	378841
province	10	female	0-14 Years	209686
country	ZM	male	15-34 Years	2224884
province	1	male	15-34 Years	217901
province	2	male	15-34 Years	369307
province	3	male	15-34 Years	257254
province	4	male	15-34 Years	151398
province	5	male	15-34 Years	425866
province	6	male	15-34 Years	110133
province	7	male	15-34 Years	169887
province	8	male	15-34 Years	115472
province	9	male	15-34 Years	269219
province	10	male	15-34 Years	138447
country	ZM	female	15-34 Years	2398258
province	1	female	15-34 Years	230600
province	2	female	15-34 Years	386957
province	3	female	15-34 Years	270325
province	4	female	15-34 Years	168751
province	5	female	15-34 Years	464268
province	6	female	15-34 Years	121315
province	7	female	15-34 Years	185981
province	8	female	15-34 Years	124050
province	9	female	15-34 Years	287057
province	10	female	15-34 Years	158954
country	ZM	male	35 and above	1250964
province	1	male	35 and above	122423
province	2	male	35 and above	194945
province	3	male	35 and above	160838
province	4	male	35 and above	97450
province	5	male	35 and above	191018
province	6	male	35 and above	67489
province	7	male	35 and above	104225
province	8	male	35 and above	67378
province	9	male	35 and above	144369
province	10	male	35 and above	100829
country	ZM	female	35 and above	1250964
province	1	female	35 and above	122423
province	2	female	35 and above	194945
province	3	female	35 and above	160838
province	4	female	35 and above	97450
province	5	female	35 and above	191018
province	6	female	35 and above	67489
province	7	female	35 and above	104225
province	8	female	35 and above	67378
province	9	female	35 and above	144369
province	10	female	35 and above	100829
\.


--
-- Name: agegroup_gender_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY agegroup_gender
    ADD CONSTRAINT agegroup_gender_pkey PRIMARY KEY (geo_level, geo_code, gender, "age group");


--
-- PostgreSQL database dump complete
--

