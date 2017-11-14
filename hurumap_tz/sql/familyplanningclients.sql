--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.8
-- Dumped by pg_dump version 9.5.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.familyplanningclients DROP CONSTRAINT IF EXISTS pk_familyplanningclients;
DROP TABLE IF EXISTS public.familyplanningclients;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: familyplanningclients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE familyplanningclients (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "family planning clients" character varying(128) NOT NULL,
    total double precision,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: familyplanningclients; Type: TABLE DATA; Schema: public; Owner: -
--

COPY familyplanningclients (geo_level, geo_code, "family planning clients", total, geo_version) FROM stdin;
region	1	total	181397	2009
region	1	new client rate	31.5	2009
region	3	total	394359	2009
region	3	new client rate	44.7000000000000028	2009
region	2	total	560997	2009
region	2	new client rate	60.3999999999999986	2009
region	4	total	70517	2009
region	4	new client rate	62.3999999999999986	2009
region	5	total	106703	2009
region	5	new client rate	24.6000000000000014	2009
region	6	total	213373	2009
region	6	new client rate	33.3999999999999986	2009
region	9	total	51826	2009
region	9	new client rate	24.1000000000000014	2009
region	10	total	233129	2009
region	10	new client rate	37.7999999999999972	2009
region	11	total	217253	2009
region	11	new client rate	26.3999999999999986	2009
region	14	total	154135	2009
region	14	new client rate	31.3000000000000007	2009
region	15	total	100378	2009
region	15	new client rate	43.1000000000000014	2009
region	16	total	164283	2009
region	16	new client rate	37	2009
region	17	total	285693	2009
region	17	new client rate	39.1000000000000014	2009
region	18	total	205754	2009
region	18	new client rate	29.1000000000000014	2009
region	19	total	220667	2009
region	19	new client rate	41.8999999999999986	2009
region	20	total	210661	2009
region	20	new client rate	67.5	2009
region	21	total	78217	2009
region	21	new client rate	27	2009
region	22	total	188698	2009
region	22	new client rate	40.2999999999999972	2009
region	23	total	99729	2009
region	23	new client rate	52.1000000000000014	2009
region	24	total	152679	2009
region	24	new client rate	35.3999999999999986	2009
region	25	total	115849	2009
region	25	new client rate	53.8999999999999986	2009
region	26	total	73089	2009
region	26	new client rate	64.4000000000000057	2009
region	27	total	175278	2009
region	27	new client rate	36.3999999999999986	2009
region	29	total	120894	2009
region	29	new client rate	43.7000000000000028	2009
region	28	total	308559	2009
region	28	new client rate	25.3999999999999986	2009
region 	7	total	\N	2009
region 	7	new client rate	\N	2009
region 	8	total	\N	2009
region 	8	new client rate	\N	2009
region 	12	total	\N	2009
region 	12	new client rate	\N	2009
region 	13	total	\N	2009
region 	13	new client rate	\N	2009
region	30	total	\N	2009
region	30	new client rate	\N	2009
country	TZ	total	4684117	2009
country	TZ	new client rate	40.5	2009
\.


--
-- Name: pk_familyplanningclients; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY familyplanningclients
    ADD CONSTRAINT pk_familyplanningclients PRIMARY KEY (geo_level, geo_code, geo_version, "family planning clients");


--
-- PostgreSQL database dump complete
--

