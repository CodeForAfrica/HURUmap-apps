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

ALTER TABLE IF EXISTS ONLY public.country_with_most_influence DROP CONSTRAINT IF EXISTS pk_country_with_most_influence;
DROP TABLE IF EXISTS public.country_with_most_influence;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: country_with_most_influence; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.country_with_most_influence (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    country_with_most_influence character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: country_with_most_influence; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.country_with_most_influence (geo_level, geo_code, geo_version, country_with_most_influence, total) FROM stdin;
county	30	2009	China	17
county	36	2009	China	15
county	39	2009	China	31
county	40	2009	China	11
county	28	2009	China	7
county	14	2009	China	6
county	7	2009	China	11
county	43	2009	China	22
county	34	2009	China	29
county	37	2009	China	37
county	35	2009	China	16
county	22	2009	China	67
county	3	2009	China	21
county	20	2009	China	23
county	45	2009	China	12
county	42	2009	China	29
county	15	2009	China	6
county	2	2009	China	12
county	31	2009	China	7
county	5	2009	China	5
county	16	2009	China	10
county	17	2009	China	13
county	9	2009	China	21
county	12	2009	China	14
county	44	2009	China	14
county	1	2009	China	23
county	21	2009	China	35
county	47	2009	China	97
county	32	2009	China	55
county	29	2009	China	27
county	33	2009	China	25
county	46	2009	China	11
county	18	2009	China	27
county	19	2009	China	36
county	25	2009	China	3
county	41	2009	China	21
county	6	2009	China	4
county	13	2009	China	5
county	26	2009	China	17
county	23	2009	China	13
county	27	2009	China	34
county	38	2009	China	17
county	8	2009	China	9
county	24	2009	China	10
county	30	2009	Don't know / Haven't heard enough	1
county	36	2009	Don't know / Haven't heard enough	1
county	39	2009	Don't know / Haven't heard enough	8
county	40	2009	Don't know / Haven't heard enough	5
county	28	2009	Don't know / Haven't heard enough	2
county	14	2009	Don't know / Haven't heard enough	2
county	7	2009	Don't know / Haven't heard enough	10
county	43	2009	Don't know / Haven't heard enough	1
county	11	2009	Don't know / Haven't heard enough	2
county	34	2009	Don't know / Haven't heard enough	3
county	37	2009	Don't know / Haven't heard enough	12
county	35	2009	Don't know / Haven't heard enough	4
county	22	2009	Don't know / Haven't heard enough	2
county	3	2009	Don't know / Haven't heard enough	8
county	45	2009	Don't know / Haven't heard enough	4
county	42	2009	Don't know / Haven't heard enough	2
county	15	2009	Don't know / Haven't heard enough	4
county	2	2009	Don't know / Haven't heard enough	3
county	31	2009	Don't know / Haven't heard enough	7
county	5	2009	Don't know / Haven't heard enough	1
county	16	2009	Don't know / Haven't heard enough	3
county	17	2009	Don't know / Haven't heard enough	8
county	9	2009	Don't know / Haven't heard enough	3
county	10	2009	Don't know / Haven't heard enough	4
county	12	2009	Don't know / Haven't heard enough	4
county	44	2009	Don't know / Haven't heard enough	1
county	1	2009	Don't know / Haven't heard enough	1
county	21	2009	Don't know / Haven't heard enough	3
county	47	2009	Don't know / Haven't heard enough	16
county	32	2009	Don't know / Haven't heard enough	7
county	29	2009	Don't know / Haven't heard enough	2
county	33	2009	Don't know / Haven't heard enough	4
county	46	2009	Don't know / Haven't heard enough	5
county	19	2009	Don't know / Haven't heard enough	1
county	25	2009	Don't know / Haven't heard enough	2
county	41	2009	Don't know / Haven't heard enough	3
county	6	2009	Don't know / Haven't heard enough	1
county	4	2009	Don't know / Haven't heard enough	6
county	13	2009	Don't know / Haven't heard enough	2
county	26	2009	Don't know / Haven't heard enough	8
county	23	2009	Don't know / Haven't heard enough	5
county	38	2009	Don't know / Haven't heard enough	2
county	8	2009	Don't know / Haven't heard enough	13
county	24	2009	Don't know / Haven't heard enough	2
county	30	2009	Former Colonial Power	1
county	36	2009	Former Colonial Power	1
county	39	2009	Former Colonial Power	5
county	40	2009	Former Colonial Power	6
county	28	2009	Former Colonial Power	1
county	14	2009	Former Colonial Power	8
county	7	2009	Former Colonial Power	2
county	11	2009	Former Colonial Power	1
county	34	2009	Former Colonial Power	1
county	37	2009	Former Colonial Power	5
county	35	2009	Former Colonial Power	1
county	22	2009	Former Colonial Power	6
county	3	2009	Former Colonial Power	4
county	20	2009	Former Colonial Power	2
county	45	2009	Former Colonial Power	1
county	15	2009	Former Colonial Power	8
county	2	2009	Former Colonial Power	4
county	16	2009	Former Colonial Power	7
county	17	2009	Former Colonial Power	4
county	9	2009	Former Colonial Power	6
county	12	2009	Former Colonial Power	10
county	44	2009	Former Colonial Power	1
county	1	2009	Former Colonial Power	6
county	21	2009	Former Colonial Power	5
county	47	2009	Former Colonial Power	24
county	32	2009	Former Colonial Power	7
county	29	2009	Former Colonial Power	4
county	33	2009	Former Colonial Power	4
county	18	2009	Former Colonial Power	2
county	19	2009	Former Colonial Power	2
county	41	2009	Former Colonial Power	3
county	13	2009	Former Colonial Power	3
county	26	2009	Former Colonial Power	1
county	23	2009	Former Colonial Power	2
county	27	2009	Former Colonial Power	1
county	38	2009	Former Colonial Power	3
county	8	2009	Former Colonial Power	3
county	24	2009	Former Colonial Power	3
county	36	2009	India	1
county	39	2009	India	2
county	40	2009	India	1
county	43	2009	India	1
county	37	2009	India	1
county	22	2009	India	1
county	15	2009	India	6
county	16	2009	India	2
county	17	2009	India	3
county	12	2009	India	2
county	44	2009	India	1
county	21	2009	India	2
county	47	2009	India	2
county	46	2009	India	1
county	41	2009	India	1
county	26	2009	India	1
county	38	2009	India	1
county	36	2009	International organizations	2
county	39	2009	International organizations	3
county	40	2009	International organizations	2
county	7	2009	International organizations	1
county	43	2009	International organizations	2
county	37	2009	International organizations	3
county	35	2009	International organizations	3
county	22	2009	International organizations	14
county	3	2009	International organizations	7
county	20	2009	International organizations	3
county	45	2009	International organizations	6
county	2	2009	International organizations	9
county	31	2009	International organizations	1
county	16	2009	International organizations	2
county	17	2009	International organizations	7
county	9	2009	International organizations	1
county	10	2009	International organizations	1
county	44	2009	International organizations	1
county	1	2009	International organizations	13
county	21	2009	International organizations	5
county	47	2009	International organizations	13
county	32	2009	International organizations	4
county	46	2009	International organizations	2
county	18	2009	International organizations	3
county	19	2009	International organizations	2
county	6	2009	International organizations	3
county	13	2009	International organizations	1
county	26	2009	International organizations	1
county	38	2009	International organizations	1
county	8	2009	International organizations	1
county	39	2009	None of these have much influence	2
county	15	2009	None of these have much influence	2
county	12	2009	None of these have much influence	1
county	1	2009	None of these have much influence	1
county	47	2009	None of these have much influence	2
county	19	2009	None of these have much influence	1
county	40	2009	Some other country or organization	1
county	20	2009	Some other country or organization	1
county	44	2009	Some other country or organization	1
county	46	2009	Some other country or organization	1
county	26	2009	Some other country or organization	1
county	36	2009	South Africa	6
county	39	2009	South Africa	3
county	40	2009	South Africa	1
county	14	2009	South Africa	1
county	34	2009	South Africa	2
county	37	2009	South Africa	2
county	35	2009	South Africa	1
county	22	2009	South Africa	2
county	3	2009	South Africa	3
county	45	2009	South Africa	2
county	42	2009	South Africa	1
county	15	2009	South Africa	2
county	31	2009	South Africa	2
county	16	2009	South Africa	1
county	17	2009	South Africa	2
county	12	2009	South Africa	1
county	44	2009	South Africa	1
county	1	2009	South Africa	1
county	21	2009	South Africa	2
county	47	2009	South Africa	7
county	32	2009	South Africa	6
county	33	2009	South Africa	3
county	19	2009	South Africa	1
county	13	2009	South Africa	1
county	38	2009	South Africa	2
county	8	2009	South Africa	1
county	30	2009	United States	13
county	36	2009	United States	22
county	39	2009	United States	26
county	40	2009	United States	13
county	28	2009	United States	6
county	14	2009	United States	23
county	7	2009	United States	8
county	43	2009	United States	30
county	11	2009	United States	5
county	34	2009	United States	13
county	37	2009	United States	36
county	35	2009	United States	15
county	22	2009	United States	28
county	3	2009	United States	21
county	20	2009	United States	11
county	45	2009	United States	47
county	42	2009	United States	24
county	15	2009	United States	28
county	2	2009	United States	12
county	31	2009	United States	7
county	5	2009	United States	2
county	16	2009	United States	47
county	17	2009	United States	19
county	9	2009	United States	17
county	10	2009	United States	11
county	12	2009	United States	53
county	44	2009	United States	28
county	1	2009	United States	27
county	21	2009	United States	12
county	47	2009	United States	87
county	32	2009	United States	25
county	29	2009	United States	15
county	33	2009	United States	12
county	46	2009	United States	20
county	18	2009	United States	8
county	19	2009	United States	5
county	25	2009	United States	3
county	41	2009	United States	20
county	6	2009	United States	8
county	4	2009	United States	2
county	13	2009	United States	12
county	26	2009	United States	19
county	23	2009	United States	28
county	27	2009	United States	21
county	38	2009	United States	6
county	8	2009	United States	5
county	24	2009	United States	9
\.


--
-- Name: country_with_most_influence pk_country_with_most_influence; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.country_with_most_influence
    ADD CONSTRAINT pk_country_with_most_influence PRIMARY KEY (geo_level, geo_code, geo_version, country_with_most_influence);


--
-- PostgreSQL database dump complete
--

