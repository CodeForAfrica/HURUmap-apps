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

ALTER TABLE IF EXISTS ONLY public.causesofdeathunderfive DROP CONSTRAINT IF EXISTS pk_causesofdeathunderfive;
DROP TABLE IF EXISTS public.causesofdeathunderfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: causesofdeathunderfive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE causesofdeathunderfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "causes of death under five" character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: causesofdeathunderfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY causesofdeathunderfive (geo_level, geo_code, "causes of death under five", total, geo_version) FROM stdin;
region	1	acute respiratory infections	1	2009
region	1	diarrhoeal diseases	43	2009
region	1	malaria	39	2009
region	1	nutritional disorders	21	2009
region	1	anaemia	19	2009
region	1	pneumonia	237	2009
region	1	pre-natal conditions	17	2009
region	1	HIV/AIDS	21	2009
region	1	others	84	2009
region	3	acute respiratory infections	52	2009
region	3	diarrhoeal diseases	34	2009
region	3	malaria	56	2009
region	3	nutritional disorders	22	2009
region	3	anaemia	27	2009
region	3	pneumonia	105	2009
region	3	pre-natal conditions	64	2009
region	3	HIV/AIDS	27	2009
region	3	others	118	2009
region	2	acute respiratory infections	0	2009
region	2	diarrhoeal diseases	31	2009
region	2	malaria	234	2009
region	2	nutritional disorders	6	2009
region	2	anaemia	180	2009
region	2	pneumonia	223	2009
region	2	pre-natal conditions	517	2009
region	2	HIV/AIDS	10	2009
region	2	others	106	2009
region	4	acute respiratory infections	18	2009
region	4	diarrhoeal diseases	42	2009
region	4	malaria	260	2009
region	4	nutritional disorders	4	2009
region	4	anaemia	157	2009
region	4	pneumonia	45	2009
region	4	pre-natal conditions	15	2009
region	4	HIV/AIDS	16	2009
region	4	others	21	2009
region	5	acute respiratory infections	4	2009
region	5	diarrhoeal diseases	15	2009
region	5	malaria	34	2009
region	5	nutritional disorders	7	2009
region	5	anaemia	9	2009
region	5	pneumonia	80	2009
region	5	pre-natal conditions	3	2009
region	5	HIV/AIDS	5	2009
region	5	others	21	2009
region	6	acute respiratory infections	6	2009
region	6	diarrhoeal diseases	26	2009
region	6	malaria	438	2009
region	6	nutritional disorders	58	2009
region	6	anaemia	176	2009
region	6	pneumonia	169	2009
region	6	pre-natal conditions	23	2009
region	6	HIV/AIDS	7	2009
region	6	others	43	2009
region	9	acute respiratory infections	9	2009
region	9	diarrhoeal diseases	52	2009
region	9	malaria	161	2009
region	9	nutritional disorders	11	2009
region	9	anaemia	110	2009
region	9	pneumonia	55	2009
region	9	pre-natal conditions	18	2009
region	9	HIV/AIDS	4	2009
region	9	others	76	2009
region	10	acute respiratory infections	23	2009
region	10	diarrhoeal diseases	8	2009
region	10	malaria	338	2009
region	10	nutritional disorders	17	2009
region	10	anaemia	128	2009
region	10	pneumonia	136	2009
region	10	pre-natal conditions	60	2009
region	10	HIV/AIDS	2	2009
region	10	others	163	2009
region	11	acute respiratory infections	31	2009
region	11	diarrhoeal diseases	14	2009
region	11	malaria	66	2009
region	11	nutritional disorders	14	2009
region	11	anaemia	8	2009
region	11	pneumonia	50	2009
region	11	pre-natal conditions	3	2009
region	11	HIV/AIDS	13	2009
region	11	others	50	2009
region	14	acute respiratory infections	1	2009
region	14	diarrhoeal diseases	27	2009
region	14	malaria	143	2009
region	14	nutritional disorders	0	2009
region	14	anaemia	14	2009
region	14	pneumonia	20	2009
region	14	pre-natal conditions	0	2009
region	14	HIV/AIDS	1	2009
region	14	others	5	2009
region	15	acute respiratory infections	1	2009
region	15	diarrhoeal diseases	11	2009
region	15	malaria	62	2009
region	15	nutritional disorders	16	2009
region	15	anaemia	24	2009
region	15	pneumonia	58	2009
region	15	pre-natal conditions	4	2009
region	15	HIV/AIDS	5	2009
region	15	others	153	2009
region	16	acute respiratory infections	69	2009
region	16	diarrhoeal diseases	66	2009
region	16	malaria	551	2009
region	16	nutritional disorders	20	2009
region	16	anaemia	287	2009
region	16	pneumonia	100	2009
region	16	pre-natal conditions	0	2009
region	16	HIV/AIDS	0	2009
region	16	others	78	2009
region	17	acute respiratory infections	14	2009
region	17	diarrhoeal diseases	104	2009
region	17	malaria	76	2009
region	17	nutritional disorders	46	2009
region	17	anaemia	36	2009
region	17	pneumonia	170	2009
region	17	pre-natal conditions	33	2009
region	17	HIV/AIDS	5	2009
region	17	others	340	2009
region	18	acute respiratory infections	11	2009
region	18	diarrhoeal diseases	21	2009
region	18	malaria	288	2009
region	18	nutritional disorders	12	2009
region	18	anaemia	79	2009
region	18	pneumonia	142	2009
region	18	pre-natal conditions	47	2009
region	18	HIV/AIDS	82	2009
region	18	others	329	2009
region	19	acute respiratory infections	13	2009
region	19	diarrhoeal diseases	14	2009
region	19	malaria	172	2009
region	19	nutritional disorders	0	2009
region	19	anaemia	64	2009
region	19	pneumonia	46	2009
region	19	pre-natal conditions	79	2009
region	19	HIV/AIDS	1	2009
region	19	others	40	2009
region	20	acute respiratory infections	2	2009
region	20	diarrhoeal diseases	19	2009
region	20	malaria	349	2009
region	20	nutritional disorders	18	2009
region	20	anaemia	135	2009
region	20	pneumonia	74	2009
region	20	pre-natal conditions	4	2009
region	20	HIV/AIDS	21	2009
region	20	others	18	2009
region	21	acute respiratory infections	13	2009
region	21	diarrhoeal diseases	9	2009
region	21	malaria	43	2009
region	21	nutritional disorders	12	2009
region	21	anaemia	15	2009
region	21	pneumonia	30	2009
region	21	pre-natal conditions	0	2009
region	21	HIV/AIDS	8	2009
region	21	others	25	2009
region	22	acute respiratory infections	0	2009
region	22	diarrhoeal diseases	25	2009
region	22	malaria	72	2009
region	22	nutritional disorders	2	2009
region	22	anaemia	25	2009
region	22	pneumonia	45	2009
region	22	pre-natal conditions	27	2009
region	22	HIV/AIDS	10	2009
region	22	others	23	2009
region	23	acute respiratory infections	11	2009
region	23	diarrhoeal diseases	34	2009
region	23	malaria	128	2009
region	23	nutritional disorders	28	2009
region	23	anaemia	52	2009
region	23	pneumonia	53	2009
region	23	pre-natal conditions	2	2009
region	23	HIV/AIDS	0	2009
region	23	others	24	2009
region	24	acute respiratory infections	1	2009
region	24	diarrhoeal diseases	21	2009
region	24	malaria	271	2009
region	24	nutritional disorders	19	2009
region	24	anaemia	70	2009
region	24	pneumonia	74	2009
region	24	pre-natal conditions	12	2009
region	24	HIV/AIDS	10	2009
region	24	others	42	2009
region	25	acute respiratory infections	0	2009
region	25	diarrhoeal diseases	10	2009
region	25	malaria	370	2009
region	25	nutritional disorders	3	2009
region	25	anaemia	100	2009
region	25	pneumonia	45	2009
region	25	pre-natal conditions	0	2009
region	25	HIV/AIDS	0	2009
region	25	others	33	2009
region	26	acute respiratory infections	2	2009
region	26	diarrhoeal diseases	12	2009
region	26	malaria	205	2009
region	26	nutritional disorders	20	2009
region	26	anaemia	241	2009
region	26	pneumonia	49	2009
region	26	pre-natal conditions	12	2009
region	26	HIV/AIDS	10	2009
region	26	others	126	2009
region	27	acute respiratory infections	38	2009
region	27	diarrhoeal diseases	76	2009
region	27	malaria	146	2009
region	27	nutritional disorders	23	2009
region	27	anaemia	45	2009
region	27	pneumonia	92	2009
region	27	pre-natal conditions	25	2009
region	27	HIV/AIDS	7	2009
region	27	others	75	2009
region	29	acute respiratory infections	2	2009
region	29	diarrhoeal diseases	60	2009
region	29	malaria	380	2009
region	29	nutritional disorders	16	2009
region	29	anaemia	172	2009
region	29	pneumonia	93	2009
region	29	pre-natal conditions	0	2009
region	29	HIV/AIDS	44	2009
region	29	others	123	2009
region	28	acute respiratory infections	34	2009
region	28	diarrhoeal diseases	26	2009
region	28	malaria	149	2009
region	28	nutritional disorders	1	2009
region	28	anaemia	68	2009
region	28	pneumonia	124	2009
region	28	pre-natal conditions	2	2009
region	28	HIV/AIDS	40	2009
region	28	others	22	2009
region	7	acute respiratory infections	0	2009
region	7	diarrhoeal diseases	0	2009
region	7	malaria	0	2009
region	7	nutritional disorders	0	2009
region	7	anaemia	0	2009
region	7	pneumonia	0	2009
region	7	pre-natal conditions	0	2009
region	7	HIV/AIDS	0	2009
region	7	others	0	2009
region	8	acute respiratory infections	0	2009
region	8	diarrhoeal diseases	0	2009
region	8	malaria	0	2009
region	8	nutritional disorders	0	2009
region	8	anaemia	0	2009
region	8	pneumonia	0	2009
region	8	pre-natal conditions	0	2009
region	8	HIV/AIDS	0	2009
region	8	others	0	2009
region	12	acute respiratory infections	0	2009
region	12	diarrhoeal diseases	0	2009
region	12	malaria	0	2009
region	12	nutritional disorders	0	2009
region	12	anaemia	0	2009
region	12	pneumonia	0	2009
region	12	pre-natal conditions	0	2009
region	12	HIV/AIDS	0	2009
region	12	others	0	2009
region	13	acute respiratory infections	0	2009
region	13	diarrhoeal diseases	0	2009
region	13	malaria	0	2009
region	13	nutritional disorders	0	2009
region	13	anaemia	0	2009
region	13	pneumonia	0	2009
region	13	pre-natal conditions	0	2009
region	13	HIV/AIDS	0	2009
region	13	others	0	2009
region	30	acute respiratory infections	0	2009
region	30	diarrhoeal diseases	0	2009
region	30	malaria	0	2009
region	30	nutritional disorders	0	2009
region	30	anaemia	0	2009
region	30	pneumonia	0	2009
region	30	pre-natal conditions	0	2009
region	30	HIV/AIDS	0	2009
region	30	others	0	2009
country	TZ	acute respiratory infections	356	2009
country	TZ	diarrhoeal diseases	800	2009
country	TZ	malaria	5031	2009
country	TZ	nutritional disorders	396	2009
country	TZ	anaemia	2241	2009
country	TZ	pneumonia	2315	2009
country	TZ	pre-natal conditions	967	2009
country	TZ	HIV/AIDS	349	2009
country	TZ	others	2138	2009
\.


--
-- Name: pk_causesofdeathunderfive; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY causesofdeathunderfive
    ADD CONSTRAINT pk_causesofdeathunderfive PRIMARY KEY (geo_level, geo_code, geo_version, "causes of death under five");


--
-- PostgreSQL database dump complete
--

