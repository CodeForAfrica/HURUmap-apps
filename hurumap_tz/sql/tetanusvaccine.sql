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

ALTER TABLE IF EXISTS ONLY public.tetanusvaccine DROP CONSTRAINT IF EXISTS pk_tetanusvaccine;
DROP TABLE IF EXISTS public.tetanusvaccine;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tetanusvaccine; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tetanusvaccine (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "tetanus vaccine" character varying(128) NOT NULL,
    total double precision,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: tetanusvaccine; Type: TABLE DATA; Schema: public; Owner: -
--

COPY tetanusvaccine (geo_level, geo_code, "tetanus vaccine", total, geo_version) FROM stdin;
region	1	vaccinated	52138	2009
region	1	coverage	83	2009
region	3	vaccinated	126966	2009
region	3	coverage	87	2009
region	2	vaccinated	53216	2009
region	2	coverage	67	2009
region	4	vaccinated	54064	2009
region	4	coverage	59	2009
region	5	vaccinated	22927	2009
region	5	coverage	75	2009
region	6	vaccinated	60455	2009
region	6	coverage	74	2009
region	9	vaccinated	22675	2009
region	9	coverage	72	2009
region	10	vaccinated	52638	2009
region	10	coverage	78	2009
region	11	vaccinated	34174	2009
region	11	coverage	93	2009
region	14	vaccinated	19226	2009
region	14	coverage	69	2009
region	15	vaccinated	35852	2009
region	15	coverage	63	2009
region	16	vaccinated	56399	2009
region	16	coverage	72	2009
region	17	vaccinated	79818	2009
region	17	coverage	81	2009
region	18	vaccinated	56437	2009
region	18	coverage	71	2009
region	19	vaccinated	24727	2009
region	19	coverage	71	2009
region	20	vaccinated	74977	2009
region	20	coverage	65	2009
region	21	vaccinated	15882	2009
region	21	coverage	76	2009
region	22	vaccinated	35282	2009
region	22	coverage	72	2009
region	23	vaccinated	43563	2009
region	23	coverage	82	2009
region	24	vaccinated	33662	2009
region	24	coverage	72	2009
region	25	vaccinated	53979	2009
region	25	coverage	69	2009
region	26	vaccinated	62805	2009
region	26	coverage	80	2009
region	27	vaccinated	34480	2009
region	27	coverage	57	2009
region	29	vaccinated	65647	2009
region	29	coverage	56	2009
region	28	vaccinated	44559	2009
region	28	coverage	61	2009
region	7	vaccinated	\N	2009
region	7	coverage	\N	2009
region	8	vaccinated	\N	2009
region	8	coverage	\N	2009
region	12	vaccinated	\N	2009
region	12	coverage	\N	2009
region	13	vaccinated	\N	2009
region	13	coverage	\N	2009
region	30	vaccinated	\N	2009
region	30	coverage	\N	2009
country	TZ	vaccinated	1216548	2009
country	TZ	coverage	72	2009
\.


--
-- Name: pk_tetanusvaccine; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tetanusvaccine
    ADD CONSTRAINT pk_tetanusvaccine PRIMARY KEY (geo_level, geo_code, geo_version, "tetanus vaccine");


--
-- PostgreSQL database dump complete
--

