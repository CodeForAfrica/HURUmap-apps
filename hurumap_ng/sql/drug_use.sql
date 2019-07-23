--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.drug_use DROP CONSTRAINT IF EXISTS drug_use_pkey;
DROP TABLE IF EXISTS public.drug_use;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: drug_use; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.drug_use (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    drug character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: drug_use; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.drug_use (geo_level, geo_code, geo_version, drug, total) FROM stdin;
country	NG	2016	Amphetamine	0.0
country	NG	2016	Barbiturates	12.4
country	NG	2016	Benzodiazapine	1464.9
country	NG	2016	Cannabis	271812.1
country	NG	2016	Cocaine	124.9
country	NG	2016	Cough Syrup Codeine	16039.1
country	NG	2016	Ephedrine	364.2
country	NG	2016	Heroin	59.6
country	NG	2016	Khat	6.7
country	NG	2016	Methamphetamine	270.1
country	NG	2016	Opiates	493.6
country	NG	2016	Opiods	184.3
country	NG	2016	Others	2971.3
country	NG	2016	Tramadol	22562.3
state	1	2016	Amphetamine	0.0
state	1	2016	Barbiturates	0.0
state	1	2016	Benzodiazapine	0.7
state	1	2016	Cannabis	407.7
state	1	2016	Cocaine	0.2
state	1	2016	Cough Syrup Codeine	6.1
state	1	2016	Ephedrine	0.0
state	1	2016	Heroin	1.6
state	1	2016	Khat	0.0
state	1	2016	Methamphetamine	0.0
state	1	2016	Opiates	0.0
state	1	2016	Opiods	0.0
state	1	2016	Others	6.6
state	1	2016	Tramadol	23.7
state	2	2016	Amphetamine	0.0
state	2	2016	Barbiturates	1.4
state	2	2016	Benzodiazapine	5.5
state	2	2016	Cannabis	183.1
state	2	2016	Cocaine	0.0
state	2	2016	Cough Syrup Codeine	513.3
state	2	2016	Ephedrine	0.0
state	2	2016	Heroin	0.0
state	2	2016	Khat	0.0
state	2	2016	Methamphetamine	0.0
state	2	2016	Opiates	2.5
state	2	2016	Opiods	8.0
state	2	2016	Others	21.0
state	2	2016	Tramadol	1501.0
state	3	2016	Amphetamine	0.0
state	3	2016	Barbiturates	0.0
state	3	2016	Benzodiazapine	3.6
state	3	2016	Cannabis	505.0
state	3	2016	Cocaine	0.0
state	3	2016	Cough Syrup Codeine	0.0
state	3	2016	Ephedrine	0.0
state	3	2016	Heroin	0.9
state	3	2016	Khat	0.0
state	3	2016	Methamphetamine	0.0
state	3	2016	Opiates	0.0
state	3	2016	Opiods	0.0
state	3	2016	Others	0.2
state	3	2016	Tramadol	5.0
state	4	2016	Amphetamine	0.0
state	4	2016	Barbiturates	0.0
state	4	2016	Benzodiazapine	1.3
state	4	2016	Cannabis	457.6
state	4	2016	Cocaine	0.4
state	4	2016	Cough Syrup Codeine	0.0
state	4	2016	Ephedrine	0.0
state	4	2016	Heroin	0.0
state	4	2016	Khat	0.0
state	4	2016	Methamphetamine	0.1
state	4	2016	Opiates	0.0
state	4	2016	Opiods	0.0
state	4	2016	Others	0.0
state	4	2016	Tramadol	0.3
state	5	2016	Amphetamine	0.0
state	5	2016	Barbiturates	0.0
state	5	2016	Benzodiazapine	321.3
state	5	2016	Cannabis	1793.0
state	5	2016	Cocaine	0.0
state	5	2016	Cough Syrup Codeine	806.6
state	5	2016	Ephedrine	0.0
state	5	2016	Heroin	0.0
state	5	2016	Khat	0.0
state	5	2016	Methamphetamine	0.0
state	5	2016	Opiates	0.0
state	5	2016	Opiods	22.5
state	5	2016	Others	24.6
state	5	2016	Tramadol	393.7
state	6	2016	Amphetamine	0.0
state	6	2016	Barbiturates	0.9
state	6	2016	Benzodiazapine	0.0
state	6	2016	Cannabis	322.5
state	6	2016	Cocaine	0.1
state	6	2016	Cough Syrup Codeine	0.2
state	6	2016	Ephedrine	0.0
state	6	2016	Heroin	0.2
state	6	2016	Khat	0.0
state	6	2016	Methamphetamine	0.0
state	6	2016	Opiates	12.6
state	6	2016	Opiods	0.0
state	6	2016	Others	0.3
state	6	2016	Tramadol	37.8
state	7	2016	Amphetamine	0.0
state	7	2016	Barbiturates	0.3
state	7	2016	Benzodiazapine	484.3
state	7	2016	Cannabis	1224.9
state	7	2016	Cocaine	0.0
state	7	2016	Cough Syrup Codeine	165.3
state	7	2016	Ephedrine	0.0
state	7	2016	Heroin	0.0
state	7	2016	Khat	0.0
state	7	2016	Methamphetamine	0.0
state	7	2016	Opiates	0.1
state	7	2016	Opiods	9.0
state	7	2016	Others	110.1
state	7	2016	Tramadol	649.2
state	8	2016	Amphetamine	0.0
state	8	2016	Barbiturates	0.4
state	8	2016	Benzodiazapine	12.0
state	8	2016	Cannabis	62.5
state	8	2016	Cocaine	0.0
state	8	2016	Cough Syrup Codeine	0.1
state	8	2016	Ephedrine	0.0
state	8	2016	Heroin	0.0
state	8	2016	Khat	0.0
state	8	2016	Methamphetamine	0.0
state	8	2016	Opiates	0.0
state	8	2016	Opiods	0.1
state	8	2016	Others	2.0
state	8	2016	Tramadol	70.6
state	9	2016	Amphetamine	0.0
state	9	2016	Barbiturates	0.0
state	9	2016	Benzodiazapine	0.0
state	9	2016	Cannabis	281.6
state	9	2016	Cocaine	0.0
state	9	2016	Cough Syrup Codeine	0.0
state	9	2016	Ephedrine	0.0
state	9	2016	Heroin	0.0
state	9	2016	Khat	0.0
state	9	2016	Methamphetamine	0.0
state	9	2016	Opiates	0.0
state	9	2016	Opiods	0.0
state	9	2016	Others	22.5
state	9	2016	Tramadol	0.9
state	10	2016	Amphetamine	0.0
state	10	2016	Barbiturates	0.0
state	10	2016	Benzodiazapine	22.3
state	10	2016	Cannabis	3133.7
state	10	2016	Cocaine	1.9
state	10	2016	Cough Syrup Codeine	30.0
state	10	2016	Ephedrine	0.0
state	10	2016	Heroin	0.0
state	10	2016	Khat	0.0
state	10	2016	Methamphetamine	0.0
state	10	2016	Opiates	14.0
state	10	2016	Opiods	0.0
state	10	2016	Others	13.6
state	10	2016	Tramadol	29.7
state	11	2016	Amphetamine	0.0
state	11	2016	Barbiturates	0.0
state	11	2016	Benzodiazapine	1.1
state	11	2016	Cannabis	423.2
state	11	2016	Cocaine	0.0
state	11	2016	Cough Syrup Codeine	15.2
state	11	2016	Ephedrine	0.0
state	11	2016	Heroin	0.1
state	11	2016	Khat	0.0
state	11	2016	Methamphetamine	0.0
state	11	2016	Opiates	0.0
state	11	2016	Opiods	0.0
state	11	2016	Others	1.7
state	11	2016	Tramadol	2.0
state	12	2016	Amphetamine	0.0
state	12	2016	Barbiturates	0.0
state	12	2016	Benzodiazapine	0.0
state	12	2016	Cannabis	42203.7
state	12	2016	Cocaine	0.0
state	12	2016	Cough Syrup Codeine	0.0
state	12	2016	Ephedrine	0.0
state	12	2016	Heroin	0.0
state	12	2016	Khat	0.0
state	12	2016	Methamphetamine	0.0
state	12	2016	Opiates	0.0
state	12	2016	Opiods	0.0
state	12	2016	Others	179.4
state	12	2016	Tramadol	19.1
state	13	2016	Amphetamine	0.0
state	13	2016	Barbiturates	0.0
state	13	2016	Benzodiazapine	0.0
state	13	2016	Cannabis	233.0
state	13	2016	Cocaine	0.0
state	13	2016	Cough Syrup Codeine	0.0
state	13	2016	Ephedrine	0.0
state	13	2016	Heroin	0.0
state	13	2016	Khat	0.0
state	13	2016	Methamphetamine	0.0
state	13	2016	Opiates	0.0
state	13	2016	Opiods	0.0
state	13	2016	Others	0.1
state	13	2016	Tramadol	0.0
state	14	2016	Amphetamine	0.0
state	14	2016	Barbiturates	0.0
state	14	2016	Benzodiazapine	0.0
state	14	2016	Cannabis	1223.7
state	14	2016	Cocaine	0.1
state	14	2016	Cough Syrup Codeine	0.0
state	14	2016	Ephedrine	0.0
state	14	2016	Heroin	0.0
state	14	2016	Khat	0.0
state	14	2016	Methamphetamine	0.0
state	14	2016	Opiates	0.0
state	14	2016	Opiods	0.0
state	14	2016	Others	1.4
state	14	2016	Tramadol	0.0
state	15	2016	Amphetamine	0.0
state	15	2016	Barbiturates	0.0
state	15	2016	Benzodiazapine	13.5
state	15	2016	Cannabis	3736.7
state	15	2016	Cocaine	62.5
state	15	2016	Cough Syrup Codeine	0.0
state	15	2016	Ephedrine	0.0
state	15	2016	Heroin	0.0
state	15	2016	Khat	0.0
state	15	2016	Methamphetamine	0.0
state	15	2016	Opiates	0.0
state	15	2016	Opiods	0.0
state	15	2016	Others	503.3
state	15	2016	Tramadol	938.9
state	16	2016	Amphetamine	0.0
state	16	2016	Barbiturates	0.0
state	16	2016	Benzodiazapine	2.0
state	16	2016	Cannabis	25.9
state	16	2016	Cocaine	0.0
state	16	2016	Cough Syrup Codeine	18.5
state	16	2016	Ephedrine	0.0
state	16	2016	Heroin	0.0
state	16	2016	Khat	0.0
state	16	2016	Methamphetamine	0.0
state	16	2016	Opiates	0.0
state	16	2016	Opiods	0.4
state	16	2016	Others	117.3
state	16	2016	Tramadol	77.6
state	17	2016	Amphetamine	0.0
state	17	2016	Barbiturates	0.0
state	17	2016	Benzodiazapine	0.1
state	17	2016	Cannabis	319.9
state	17	2016	Cocaine	0.0
state	17	2016	Cough Syrup Codeine	0.0
state	17	2016	Ephedrine	0.0
state	17	2016	Heroin	0.0
state	17	2016	Khat	0.0
state	17	2016	Methamphetamine	0.0
state	17	2016	Opiates	0.0
state	17	2016	Opiods	0.0
state	17	2016	Others	0.0
state	17	2016	Tramadol	0.1
state	18	2016	Amphetamine	0.0
state	18	2016	Barbiturates	0.0
state	18	2016	Benzodiazapine	2.4
state	18	2016	Cannabis	151.5
state	18	2016	Cocaine	0.0
state	18	2016	Cough Syrup Codeine	57.5
state	18	2016	Ephedrine	0.0
state	18	2016	Heroin	0.0
state	18	2016	Khat	0.0
state	18	2016	Methamphetamine	0.0
state	18	2016	Opiates	176.5
state	18	2016	Opiods	0.9
state	18	2016	Others	1.2
state	18	2016	Tramadol	42.2
state	19	2016	Amphetamine	0.0
state	19	2016	Barbiturates	2.0
state	19	2016	Benzodiazapine	34.2
state	19	2016	Cannabis	929.7
state	19	2016	Cocaine	0.0
state	19	2016	Cough Syrup Codeine	144.4
state	19	2016	Ephedrine	0.0
state	19	2016	Heroin	0.0
state	19	2016	Khat	0.0
state	19	2016	Methamphetamine	0.0
state	19	2016	Opiates	0.0
state	19	2016	Opiods	11.6
state	19	2016	Others	93.7
state	19	2016	Tramadol	234.4
state	20	2016	Amphetamine	0.0
state	20	2016	Barbiturates	0.0
state	20	2016	Benzodiazapine	163.2
state	20	2016	Cannabis	2126.8
state	20	2016	Cocaine	0.0
state	20	2016	Cough Syrup Codeine	1668.3
state	20	2016	Ephedrine	0.0
state	20	2016	Heroin	0.0
state	20	2016	Khat	6.7
state	20	2016	Methamphetamine	0.0
state	20	2016	Opiates	278.3
state	20	2016	Opiods	94.5
state	20	2016	Others	30.5
state	20	2016	Tramadol	6071.4
state	21	2016	Amphetamine	0.0
state	21	2016	Barbiturates	0.0
state	21	2016	Benzodiazapine	10.1
state	21	2016	Cannabis	852.2
state	21	2016	Cocaine	0.0
state	21	2016	Cough Syrup Codeine	0.0
state	21	2016	Ephedrine	0.0
state	21	2016	Heroin	0.0
state	21	2016	Khat	0.0
state	21	2016	Methamphetamine	0.0
state	21	2016	Opiates	0.0
state	21	2016	Opiods	1.2
state	21	2016	Others	14.4
state	21	2016	Tramadol	282.9
state	22	2016	Amphetamine	0.0
state	22	2016	Barbiturates	0.4
state	22	2016	Benzodiazapine	42.7
state	22	2016	Cannabis	190.0
state	22	2016	Cocaine	0.0
state	22	2016	Cough Syrup Codeine	166.9
state	22	2016	Ephedrine	0.0
state	22	2016	Heroin	0.0
state	22	2016	Khat	0.0
state	22	2016	Methamphetamine	0.0
state	22	2016	Opiates	0.0
state	22	2016	Opiods	6.9
state	22	2016	Others	20.8
state	22	2016	Tramadol	1339.5
state	23	2016	Amphetamine	0.0
state	23	2016	Barbiturates	0.0
state	23	2016	Benzodiazapine	15.8
state	23	2016	Cannabis	840.0
state	23	2016	Cocaine	0.0
state	23	2016	Cough Syrup Codeine	3.9
state	23	2016	Ephedrine	0.0
state	23	2016	Heroin	0.0
state	23	2016	Khat	0.0
state	23	2016	Methamphetamine	0.1
state	23	2016	Opiates	9.4
state	23	2016	Opiods	0.0
state	23	2016	Others	1.1
state	23	2016	Tramadol	207.3
state	24	2016	Amphetamine	0.0
state	24	2016	Barbiturates	0.0
state	24	2016	Benzodiazapine	0.8
state	24	2016	Cannabis	3661.0
state	24	2016	Cocaine	0.0
state	24	2016	Cough Syrup Codeine	0.0
state	24	2016	Ephedrine	0.0
state	24	2016	Heroin	0.0
state	24	2016	Khat	0.0
state	24	2016	Methamphetamine	0.0
state	24	2016	Opiates	0.0
state	24	2016	Opiods	0.0
state	24	2016	Others	0.6
state	24	2016	Tramadol	24.5
state	25	2016	Amphetamine	0.0
state	25	2016	Barbiturates	0.0
state	25	2016	Benzodiazapine	28.0
state	25	2016	Cannabis	3904.8
state	25	2016	Cocaine	8.4
state	25	2016	Cough Syrup Codeine	13.5
state	25	2016	Ephedrine	0.0
state	25	2016	Heroin	0.0
state	25	2016	Khat	0.0
state	25	2016	Methamphetamine	2.9
state	25	2016	Opiates	0.0
state	25	2016	Opiods	0.0
state	25	2016	Others	31.7
state	25	2016	Tramadol	2042.9
state	26	2016	Amphetamine	0.0
state	26	2016	Barbiturates	0.0
state	26	2016	Benzodiazapine	0.0
state	26	2016	Cannabis	643.4
state	26	2016	Cocaine	0.0
state	26	2016	Cough Syrup Codeine	0.0
state	26	2016	Ephedrine	0.0
state	26	2016	Heroin	0.0
state	26	2016	Khat	0.0
state	26	2016	Methamphetamine	0.0
state	26	2016	Opiates	0.0
state	26	2016	Opiods	0.0
state	26	2016	Others	0.0
state	26	2016	Tramadol	0.0
state	27	2016	Amphetamine	0.0
state	27	2016	Barbiturates	0.0
state	27	2016	Benzodiazapine	18.6
state	27	2016	Cannabis	625.7
state	27	2016	Cocaine	0.0
state	27	2016	Cough Syrup Codeine	10.1
state	27	2016	Ephedrine	0.0
state	27	2016	Heroin	0.0
state	27	2016	Khat	0.0
state	27	2016	Methamphetamine	0.0
state	27	2016	Opiates	0.0
state	27	2016	Opiods	0.1
state	27	2016	Others	0.0
state	27	2016	Tramadol	46.0
state	28	2016	Amphetamine	0.0
state	28	2016	Barbiturates	0.0
state	28	2016	Benzodiazapine	6.2
state	28	2016	Cannabis	2988.6
state	28	2016	Cocaine	0.0
state	28	2016	Cough Syrup Codeine	168.9
state	28	2016	Ephedrine	0.0
state	28	2016	Heroin	0.0
state	28	2016	Khat	0.0
state	28	2016	Methamphetamine	0.0
state	28	2016	Opiates	0.0
state	28	2016	Opiods	0.1
state	28	2016	Others	6.3
state	28	2016	Tramadol	65.8
state	29	2016	Amphetamine	0.0
state	29	2016	Barbiturates	0.0
state	29	2016	Benzodiazapine	0.1
state	29	2016	Cannabis	26045.0
state	29	2016	Cocaine	0.0
state	29	2016	Cough Syrup Codeine	14.0
state	29	2016	Ephedrine	0.0
state	29	2016	Heroin	0.0
state	29	2016	Khat	0.0
state	29	2016	Methamphetamine	0.0
state	29	2016	Opiates	0.0
state	29	2016	Opiods	0.0
state	29	2016	Others	196.8
state	29	2016	Tramadol	0.3
state	30	2016	Amphetamine	0.0
state	30	2016	Barbiturates	0.0
state	30	2016	Benzodiazapine	2.6
state	30	2016	Cannabis	1115.3
state	30	2016	Cocaine	0.0
state	30	2016	Cough Syrup Codeine	0.0
state	30	2016	Ephedrine	0.0
state	30	2016	Heroin	0.0
state	30	2016	Khat	0.0
state	30	2016	Methamphetamine	0.0
state	30	2016	Opiates	0.0
state	30	2016	Opiods	0.0
state	30	2016	Others	68.0
state	30	2016	Tramadol	0.0
state	31	2016	Amphetamine	0.0
state	31	2016	Barbiturates	0.0
state	31	2016	Benzodiazapine	0.0
state	31	2016	Cannabis	6450.1
state	31	2016	Cocaine	0.0
state	31	2016	Cough Syrup Codeine	0.2
state	31	2016	Ephedrine	0.0
state	31	2016	Heroin	0.0
state	31	2016	Khat	0.0
state	31	2016	Methamphetamine	0.0
state	31	2016	Opiates	0.0
state	31	2016	Opiods	0.0
state	31	2016	Others	201.3
state	31	2016	Tramadol	0.0
state	32	2016	Amphetamine	0.0
state	32	2016	Barbiturates	7.0
state	32	2016	Benzodiazapine	244.8
state	32	2016	Cannabis	2432.3
state	32	2016	Cocaine	0.0
state	32	2016	Cough Syrup Codeine	9030.6
state	32	2016	Ephedrine	0.0
state	32	2016	Heroin	0.0
state	32	2016	Khat	0.0
state	32	2016	Methamphetamine	0.0
state	32	2016	Opiates	0.0
state	32	2016	Opiods	7.1
state	32	2016	Others	1231.7
state	32	2016	Tramadol	1737.4
state	33	2016	Amphetamine	0.0
state	33	2016	Barbiturates	0.1
state	33	2016	Benzodiazapine	2.2
state	33	2016	Cannabis	168.8
state	33	2016	Cocaine	0.1
state	33	2016	Cough Syrup Codeine	68.4
state	33	2016	Ephedrine	0.0
state	33	2016	Heroin	0.1
state	33	2016	Khat	0.0
state	33	2016	Methamphetamine	0.3
state	33	2016	Opiates	0.0
state	33	2016	Opiods	1.7
state	33	2016	Others	14.7
state	33	2016	Tramadol	15.6
state	34	2016	Amphetamine	0.0
state	34	2016	Barbiturates	0.0
state	34	2016	Benzodiazapine	1.2
state	34	2016	Cannabis	115.0
state	34	2016	Cocaine	0.0
state	34	2016	Cough Syrup Codeine	2424.1
state	34	2016	Ephedrine	0.0
state	34	2016	Heroin	0.0
state	34	2016	Khat	0.0
state	34	2016	Methamphetamine	0.0
state	34	2016	Opiates	0.0
state	34	2016	Opiods	0.1
state	34	2016	Others	0.9
state	34	2016	Tramadol	1267.1
state	35	2016	Amphetamine	0.0
state	35	2016	Barbiturates	0.0
state	35	2016	Benzodiazapine	3.5
state	35	2016	Cannabis	293.2
state	35	2016	Cocaine	0.0
state	35	2016	Cough Syrup Codeine	55.1
state	35	2016	Ephedrine	0.0
state	35	2016	Heroin	0.0
state	35	2016	Khat	0.0
state	35	2016	Methamphetamine	0.0
state	35	2016	Opiates	0.0
state	35	2016	Opiods	10.0
state	35	2016	Others	5.5
state	35	2016	Tramadol	178.6
state	36	2016	Amphetamine	0.0
state	36	2016	Barbiturates	0.0
state	36	2016	Benzodiazapine	14.3
state	36	2016	Cannabis	1221.4
state	36	2016	Cocaine	0.0
state	36	2016	Cough Syrup Codeine	108.7
state	36	2016	Ephedrine	0.0
state	36	2016	Heroin	0.0
state	36	2016	Khat	0.0
state	36	2016	Methamphetamine	0.0
state	36	2016	Opiates	0.3
state	36	2016	Opiods	2.7
state	36	2016	Others	6.7
state	36	2016	Tramadol	130.3
state	37	2016	Amphetamine	0.0
state	37	2016	Barbiturates	0.0
state	37	2016	Benzodiazapine	4.5
state	37	2016	Cannabis	265.9
state	37	2016	Cocaine	0.0
state	37	2016	Cough Syrup Codeine	538.1
state	37	2016	Ephedrine	0.0
state	37	2016	Heroin	0.0
state	37	2016	Khat	0.0
state	37	2016	Methamphetamine	0.0
state	37	2016	Opiates	0.0
state	37	2016	Opiods	0.0
state	37	2016	Others	39.8
state	37	2016	Tramadol	66.9
\.


--
-- Name: drug_use drug_use_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drug_use
    ADD CONSTRAINT drug_use_pkey PRIMARY KEY (geo_level, geo_code, geo_version, drug);


--
-- PostgreSQL database dump complete
--
