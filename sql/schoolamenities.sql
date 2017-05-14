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

ALTER TABLE IF EXISTS ONLY public.schoolamenity DROP CONSTRAINT IF EXISTS schoolamenity_pkey;
DROP TABLE IF EXISTS public.schoolamenity;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schoolamenity; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE schoolamenity (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "school amenity" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: schoolamenity; Type: TABLE DATA; Schema: public; Owner: -
--

COPY schoolamenity (geo_level, geo_code, "school amenity", total) FROM stdin;
region	1	library	18.2
region	2	library	39.3
region	3	library	37.5
region	4	library	35.7
region	5	library	43.0
region	6	library	47.8
region	7	library	21.8
region	8	library	15.1
region	9	library	43.2
region	10	library	15.8
region	11	library	32.9
region	12	library	45.6
region	13	library	13.7
region	14	library	46.0
region	15	library	33.1
region	16	library	26.1
region	17	library	34.2
region	18	library	23.9
region	19	library	27.7
region	20	library	40.5
region	21	library	26.6
region	22	library	19.3
region	23	library	39.1
region	24	library	27.9
region	25	library	47.4
region	26	library	43.6
country	TZ	library	30.6
region	27	library	34.8
region	1	drinking water	67.0
region	2	drinking water	93.1
region	3	drinking water	44.4
region	4	drinking water	96.4
region	5	drinking water	51.9
region	6	drinking water	33.7
region	7	drinking water	90.7
region	8	drinking water	94.7
region	9	drinking water	35.8
region	10	drinking water	37.2
region	11	drinking water	61.4
region	12	drinking water	49.3
region	13	drinking water	59.9
region	14	drinking water	53.9
region	15	drinking water	37.6
region	16	drinking water	76.3
region	17	drinking water	38.6
region	18	drinking water	57.9
region	19	drinking water	58.9
region	20	drinking water	34.6
region	21	drinking water	37.0
region	22	drinking water	79.5
region	23	drinking water	42.2
region	24	drinking water	57.9
region	25	drinking water	56.3
region	26	drinking water	62.7
region	27	drinking water	48.8
country	TZ	drinking water	74.4
region	1	feeding program	33.8
region	2	feeding program	13.3
region	3	feeding program	43.5
region	4	feeding program	28.6
region	5	feeding program	10.5
region	6	feeding program	29.5
region	7	feeding program	47.3
region	8	feeding program	43.5
region	9	feeding program	11.6
region	10	feeding program	25.6
region	11	feeding program	40.2
region	12	feeding program	47.9
region	13	feeding program	39.3
region	14	feeding program	28.8
region	15	feeding program	25.5
region	16	feeding program	18.6
region	17	feeding program	48.5
region	18	feeding program	40.6
region	19	feeding program	13.7
region	20	feeding program	30.8
region	21	feeding program	22.6
region	22	feeding program	11.0
region	23	feeding program	48.5
region	24	feeding program	31.6
region	25	feeding program	18.0
region	26	feeding program	33.5
region	27	feeding program	13.2
country	TZ	feeding program	21.3
\.
--
-- Name: schoolamenity_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY schoolamenity
    ADD CONSTRAINT schoolamenity_pkey PRIMARY KEY (geo_level, geo_code, "school amenity");


--
-- PostgreSQL database dump complete
--

