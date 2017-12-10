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

ALTER TABLE IF EXISTS ONLY public.causesofdeathoverfive DROP CONSTRAINT IF EXISTS pk_causesofdeathoverfive;
DROP TABLE IF EXISTS public.causesofdeathoverfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: causesofdeathoverfive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE causesofdeathoverfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "causes of death over five" character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: causesofdeathoverfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY causesofdeathoverfive (geo_level, geo_code, "causes of death over five", total, geo_version) FROM stdin;
region	1	diarrhoeal diseases	8	2009
region	1	malaria	77	2009
region	1	TB	97	2009
region	1	anaemia	96	2009
region	1	cardiac failure	123	2009
region	1	hypertension	61	2009
region	1	pneumonia	139	2009
region	1	HIV/AIDS	345	2009
region	1	Diabetes Mellitus	64	2009
region	1	others	534	2009
region	3	diarrhoeal diseases	21	2009
region	3	malaria	138	2009
region	3	TB	41	2009
region	3	anaemia	50	2009
region	3	cardiac failure	14	2009
region	3	hypertension	32	2009
region	3	pneumonia	51	2009
region	3	HIV/AIDS	164	2009
region	3	Diabetes Mellitus	5	2009
region	3	others	80	2009
region	2	diarrhoeal diseases	30	2009
region	2	malaria	300	2009
region	2	TB	271	2009
region	2	anaemia	297	2009
region	2	cardiac failure	178	2009
region	2	hypertension	259	2009
region	2	pneumonia	205	2009
region	2	HIV/AIDS	437	2009
region	2	Diabetes Mellitus	112	2009
region	2	others	696	2009
region	4	diarrhoeal diseases	5	2009
region	4	malaria	205	2009
region	4	TB	22	2009
region	4	anaemia	63	2009
region	4	cardiac failure	7	2009
region	4	hypertension	10	2009
region	4	pneumonia	5	2009
region	4	HIV/AIDS	90	2009
region	4	Diabetes Mellitus	3	2009
region	4	others	47	2009
region	5	diarrhoeal diseases	45	2009
region	5	malaria	87	2009
region	5	TB	13	2009
region	5	anaemia	34	2009
region	5	cardiac failure	95	2009
region	5	hypertension	88	2009
region	5	pneumonia	51	2009
region	5	HIV/AIDS	38	2009
region	5	Diabetes Mellitus	19	2009
region	5	others	91	2009
region	6	diarrhoeal diseases	24	2009
region	6	malaria	184	2009
region	6	TB	48	2009
region	6	anaemia	53	2009
region	6	cardiac failure	42	2009
region	6	hypertension	56	2009
region	6	pneumonia	54	2009
region	6	HIV/AIDS	124	2009
region	6	Diabetes Mellitus	21	2009
region	6	others	264	2009
region	9	diarrhoeal diseases	9	2009
region	9	malaria	217	2009
region	9	TB	29	2009
region	9	anaemia	92	2009
region	9	cardiac failure	47	2009
region	9	hypertension	12	2009
region	9	pneumonia	44	2009
region	9	HIV/AIDS	61	2009
region	9	Diabetes Mellitus	36	2009
region	9	others	271	2009
region	10	diarrhoeal diseases	23	2009
region	10	malaria	54	2009
region	10	TB	3	2009
region	10	anaemia	33	2009
region	10	cardiac failure	5	2009
region	10	hypertension	10	2009
region	10	pneumonia	21	2009
region	10	HIV/AIDS	49	2009
region	10	Diabetes Mellitus	2	2009
region	10	others	94	2009
region	11	diarrhoeal diseases	15	2009
region	11	malaria	92	2009
region	11	TB	39	2009
region	11	anaemia	42	2009
region	11	cardiac failure	85	2009
region	11	hypertension	99	2009
region	11	pneumonia	100	2009
region	11	HIV/AIDS	63	2009
region	11	Diabetes Mellitus	38	2009
region	11	others	227	2009
region	14	diarrhoeal diseases	10	2009
region	14	malaria	169	2009
region	14	TB	16	2009
region	14	anaemia	19	2009
region	14	cardiac failure	5	2009
region	14	hypertension	38	2009
region	14	pneumonia	22	2009
region	14	HIV/AIDS	32	2009
region	14	Diabetes Mellitus	6	2009
region	14	others	41	2009
region	15	diarrhoeal diseases	16	2009
region	15	malaria	112	2009
region	15	TB	92	2009
region	15	anaemia	28	2009
region	15	cardiac failure	63	2009
region	15	hypertension	13	2009
region	15	pneumonia	104	2009
region	15	HIV/AIDS	60	2009
region	15	Diabetes Mellitus	10	2009
region	15	others	295	2009
region	16	diarrhoeal diseases	36	2009
region	16	malaria	648	2009
region	16	TB	36	2009
region	16	anaemia	86	2009
region	16	cardiac failure	11	2009
region	16	hypertension	5	2009
region	16	pneumonia	17	2009
region	16	HIV/AIDS	306	2009
region	16	Diabetes Mellitus	16	2009
region	16	others	584	2009
region	17	diarrhoeal diseases	74	2009
region	17	malaria	243	2009
region	17	TB	100	2009
region	17	anaemia	151	2009
region	17	cardiac failure	61	2009
region	17	hypertension	19	2009
region	17	pneumonia	159	2009
region	17	HIV/AIDS	212	2009
region	17	Diabetes Mellitus	31	2009
region	17	others	357	2009
region	18	diarrhoeal diseases	24	2009
region	18	malaria	283	2009
region	18	TB	74	2009
region	18	anaemia	66	2009
region	18	cardiac failure	12	2009
region	18	hypertension	20	2009
region	18	pneumonia	49	2009
region	18	HIV/AIDS	187	2009
region	18	Diabetes Mellitus	19	2009
region	18	others	150	2009
region	19	diarrhoeal diseases	26	2009
region	19	malaria	270	2009
region	19	TB	33	2009
region	19	anaemia	82	2009
region	19	cardiac failure	40	2009
region	19	hypertension	79	2009
region	19	pneumonia	33	2009
region	19	HIV/AIDS	61	2009
region	19	Diabetes Mellitus	20	2009
region	19	others	260	2009
region	20	diarrhoeal diseases	19	2009
region	20	malaria	105	2009
region	20	TB	23	2009
region	20	anaemia	36	2009
region	20	cardiac failure	1	2009
region	20	hypertension	14	2009
region	20	pneumonia	17	2009
region	20	HIV/AIDS	118	2009
region	20	Diabetes Mellitus	7	2009
region	20	others	143	2009
region	21	diarrhoeal diseases	19	2009
region	21	malaria	82	2009
region	21	TB	11	2009
region	21	anaemia	36	2009
region	21	cardiac failure	15	2009
region	21	hypertension	16	2009
region	21	pneumonia	39	2009
region	21	HIV/AIDS	1717	2009
region	21	Diabetes Mellitus	3	2009
region	21	others	147	2009
region	22	diarrhoeal diseases	14	2009
region	22	malaria	59	2009
region	22	TB	36	2009
region	22	anaemia	22	2009
region	22	cardiac failure	19	2009
region	22	hypertension	27	2009
region	22	pneumonia	24	2009
region	22	HIV/AIDS	42	2009
region	22	Diabetes Mellitus	7	2009
region	22	others	121	2009
region	23	diarrhoeal diseases	13	2009
region	23	malaria	169	2009
region	23	TB	11	2009
region	23	anaemia	57	2009
region	23	cardiac failure	3	2009
region	23	hypertension	8	2009
region	23	pneumonia	37	2009
region	23	HIV/AIDS	5	2009
region	23	Diabetes Mellitus	1	2009
region	23	others	104	2009
region	24	diarrhoeal diseases	14	2009
region	24	malaria	148	2009
region	24	TB	18	2009
region	24	anaemia	25	2009
region	24	cardiac failure	47	2009
region	24	hypertension	33	2009
region	24	pneumonia	65	2009
region	24	HIV/AIDS	76	2009
region	24	Diabetes Mellitus	2	2009
region	24	others	150	2009
region	25	diarrhoeal diseases	11	2009
region	25	malaria	302	2009
region	25	TB	11	2009
region	25	anaemia	114	2009
region	25	cardiac failure	5	2009
region	25	hypertension	12	2009
region	25	pneumonia	14	2009
region	25	HIV/AIDS	53	2009
region	25	Diabetes Mellitus	4	2009
region	25	others	97	2009
region	26	diarrhoeal diseases	13	2009
region	26	malaria	79	2009
region	26	TB	64	2009
region	26	anaemia	89	2009
region	26	cardiac failure	31	2009
region	26	hypertension	23	2009
region	26	pneumonia	7	2009
region	26	HIV/AIDS	75	2009
region	26	Diabetes Mellitus	9	2009
region	26	others	79	2009
region	27	diarrhoeal diseases	46	2009
region	27	malaria	468	2009
region	27	TB	31	2009
region	27	anaemia	56	2009
region	27	cardiac failure	34	2009
region	27	hypertension	23	2009
region	27	pneumonia	38	2009
region	27	HIV/AIDS	46	2009
region	27	Diabetes Mellitus	10	2009
region	27	others	501	2009
region	29	diarrhoeal diseases	80	2009
region	29	malaria	348	2009
region	29	TB	37	2009
region	29	anaemia	79	2009
region	29	cardiac failure	29	2009
region	29	hypertension	49	2009
region	29	pneumonia	73	2009
region	29	HIV/AIDS	236	2009
region	29	Diabetes Mellitus	25	2009
region	29	others	208	2009
region	28	diarrhoeal diseases	29	2009
region	28	malaria	163	2009
region	28	TB	46	2009
region	28	anaemia	75	2009
region	28	cardiac failure	47	2009
region	28	hypertension	61	2009
region	28	pneumonia	55	2009
region	28	HIV/AIDS	185	2009
region	28	Diabetes Mellitus	65	2009
region	28	others	287	2009
region	7	diarrhoeal diseases	0	2009
region	7	malaria	0	2009
region	7	TB	0	2009
region	7	anaemia	0	2009
region	7	cardiac failure	0	2009
region	7	hypertension	0	2009
region	7	pneumonia	0	2009
region	7	HIV/AIDS	0	2009
region	7	Diabetes Mellitus	0	2009
region	7	others	0	2009
region	8	diarrhoeal diseases	0	2009
region	8	malaria	0	2009
region	8	TB	0	2009
region	8	anaemia	0	2009
region	8	cardiac failure	0	2009
region	8	hypertension	0	2009
region	8	pneumonia	0	2009
region	8	HIV/AIDS	0	2009
region	8	Diabetes Mellitus	0	2009
region	8	others	0	2009
region	12	diarrhoeal diseases	0	2009
region	12	malaria	0	2009
region	12	TB	0	2009
region	12	anaemia	0	2009
region	12	cardiac failure	0	2009
region	12	hypertension	0	2009
region	12	pneumonia	0	2009
region	12	HIV/AIDS	0	2009
region	12	Diabetes Mellitus	0	2009
region	12	others	0	2009
region	13	diarrhoeal diseases	0	2009
region	13	malaria	0	2009
region	13	TB	0	2009
region	13	anaemia	0	2009
region	13	cardiac failure	0	2009
region	13	hypertension	0	2009
region	13	pneumonia	0	2009
region	13	HIV/AIDS	0	2009
region	13	Diabetes Mellitus	0	2009
region	13	others	0	2009
region	30	diarrhoeal diseases	0	2009
region	30	malaria	0	2009
region	30	TB	0	2009
region	30	anaemia	0	2009
region	30	cardiac failure	0	2009
region	30	hypertension	0	2009
region	30	pneumonia	0	2009
region	30	HIV/AIDS	0	2009
region	30	Diabetes Mellitus	0	2009
region	30	others	0	2009
country	TZ	diarrhoeal diseases	624	2009
country	TZ	malaria	5002	2009
country	TZ	TB	1202	2009
country	TZ	anaemia	1781	2009
country	TZ	cardiac failure	1019	2009
country	TZ	hypertension	1067	2009
country	TZ	pneumonia	1423	2009
country	TZ	HIV/AIDS	4782	2009
country	TZ	Diabetes Mellitus	535	2009
country	TZ	others	5828	2009
\.


--
-- Name: pk_causesofdeathoverfive; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY causesofdeathoverfive
    ADD CONSTRAINT pk_causesofdeathoverfive PRIMARY KEY (geo_level, geo_code, geo_version, "causes of death over five");


--
-- PostgreSQL database dump complete
--

