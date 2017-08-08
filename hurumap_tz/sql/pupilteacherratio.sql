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

ALTER TABLE IF EXISTS ONLY public.pupilteacherratios DROP CONSTRAINT IF EXISTS pupilteacherratios_pkey;
DROP TABLE IF EXISTS public.pupilteacherratios;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pupilteacherratios; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE pupilteacherratios (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "pupil teacher ratios" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: pupilteacherratios; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pupilteacherratios (geo_level, geo_code, "pupil teacher ratios", total) FROM stdin;
region	1	government school attendance rate	91.9
region	2	government school attendance rate	63.8
region	3	government school attendance rate	74.2
region	4	government school attendance rate	64.2
region	5	government school attendance rate	69.1
region	6	government school attendance rate	90.9
region	7	government school attendance rate	90.3
region	8	government school attendance rate	97.4
region	9	government school attendance rate	74.6
region	10	government school attendance rate	96.6
region	11	government school attendance rate	61.0
region	12	government school attendance rate	70.2
region	13	government school attendance rate	87.8
region	14	government school attendance rate	62.1
region	15	government school attendance rate	70.0
region	16	government school attendance rate	85.2
region	17	government school attendance rate	95.4
region	18	government school attendance rate	82.1
region	19	government school attendance rate	92.8
region	20	government school attendance rate	78.6
region	21	government school attendance rate	88.3
region	22	government school attendance rate	67.9
region	23	government school attendance rate	70.0
region	24	government school attendance rate	93.1
region	25	government school attendance rate	74.1
region	26	government school attendance rate	73.9
region	27	government school attendance rate	82.6
country	TZ	government school attendance rate	80.6
region	1	pupil teacher ratio	20.1
region	2	pupil teacher ratio	27.9
region	3	pupil teacher ratio	25.6
region	4	pupil teacher ratio	12.7
region	5	pupil teacher ratio	44.5
region	6	pupil teacher ratio	43.3
region	7	pupil teacher ratio	47.0
region	8	pupil teacher ratio	17.8
region	9	pupil teacher ratio	44.3
region	10	pupil teacher ratio	15.6
region	11	pupil teacher ratio	34.7
region	12	pupil teacher ratio	34.2
region	13	pupil teacher ratio	24.6
region	14	pupil teacher ratio	29.5
region	15	pupil teacher ratio	35.2
region	16	pupil teacher ratio	48.4
region	17	pupil teacher ratio	21.0
region	18	pupil teacher ratio	39.8
region	19	pupil teacher ratio	15.3
region	20	pupil teacher ratio	46.1
region	21	pupil teacher ratio	9.4
region	22	pupil teacher ratio	17.4
region	23	pupil teacher ratio	23.9
region	24	pupil teacher ratio	29.1
region	25	pupil teacher ratio	24.1
region	26	pupil teacher ratio	6.8
region	27	pupil teacher ratio	17.2
country	TZ	pupil teacher ratio	26.5
region	1	teachers absent	9.0
region	2	teachers absent	13.0
region	3	teachers absent	7.0
region	4	teachers absent	8.0
region	5	teachers absent	7.0
region	6	teachers absent	5.0
region	7	teachers absent	9.0
region	8	teachers absent	6.0
region	9	teachers absent	11.0
region	10	teachers absent	14.0
region	11	teachers absent	12.0
region	12	teachers absent	7.0
region	13	teachers absent	5.0
region	14	teachers absent	9.0
region	15	teachers absent	10.0
region	16	teachers absent	10.0
region	17	teachers absent	5.0
region	18	teachers absent	9.0
region	19	teachers absent	5.0
region	20	teachers absent	14.0
region	21	teachers absent	14.0
region	22	teachers absent	8.0
region	23	teachers absent	6.0
region	24	teachers absent	6.0
region	25	teachers absent	8.0
region	26	teachers absent	12.0
region	27	teachers absent	8.0
country	TZ	teachers absent	6.0
region	1	pupils per textbook	7.0
region	2	pupils per textbook	4.0
region	3	pupils per textbook	4.0
region	4	pupils per textbook	0.0
region	5	pupils per textbook	2.0
region	6	pupils per textbook	4.0
region	7	pupils per textbook	5.0
region	8	pupils per textbook	7.0
region	9	pupils per textbook	8.0
region	10	pupils per textbook	5.0
region	11	pupils per textbook	6.0
region	12	pupils per textbook	9.0
region	13	pupils per textbook	6.0
region	14	pupils per textbook	3.0
region	15	pupils per textbook	3.0
region	16	pupils per textbook	8.0
region	17	pupils per textbook	8.0
region	18	pupils per textbook	4.0
region	19	pupils per textbook	8.0
region	20	pupils per textbook	3.0
region	21	pupils per textbook	1.0
region	22	pupils per textbook	6.0
region	23	pupils per textbook	5.0
region	24	pupils per textbook	9.0
region	25	pupils per textbook	4.0
region	26	pupils per textbook	0.0
region	27	pupils per textbook	8.0
country	TZ	pupils per textbook	6.0
\.
--
-- Name: pupilteacherratios_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pupilteacherratios
    ADD CONSTRAINT pupilteacherratios_pkey PRIMARY KEY (geo_level, geo_code, "pupil teacher ratios");


--
-- PostgreSQL database dump complete
--

