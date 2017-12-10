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

ALTER TABLE IF EXISTS ONLY public.outpatientdiagnosisunderfive DROP CONSTRAINT IF EXISTS pk_outpatientdiagnosisunderfive;
DROP TABLE IF EXISTS public.outpatientdiagnosisunderfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: outpatientdiagnosisunderfive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE outpatientdiagnosisunderfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "outpatient diagnosis under five" character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: outpatientdiagnosisunderfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY outpatientdiagnosisunderfive (geo_level, geo_code, "outpatient diagnosis under five", total, geo_version) FROM stdin;
region	1	diarrhoea	44781	2009
region	1	intestinal worms	14821	2009
region	1	malaria	18895	2009
region	1	pneumonia	80685	2009
region	1	skin infections	31260	2009
region	1	upper respiratory disorders	66511	2009
region	1	UTI	25098	2009
region	3	diarrhoea	108411	2009
region	3	intestinal worms	64692	2009
region	3	malaria	276762	2009
region	3	pneumonia	106899	2009
region	3	skin infections	145834	2009
region	3	upper respiratory disorders	137757	2009
region	3	UTI	161374	2009
region	2	diarrhoea	73926	2009
region	2	intestinal worms	17201	2009
region	2	malaria	111535	2009
region	2	pneumonia	47207	2009
region	2	skin infections	34253	2009
region	2	upper respiratory disorders	43846	2009
region	2	UTI	29084	2009
region	4	diarrhoea	31065	2009
region	4	intestinal worms	17547	2009
region	4	malaria	150911	2009
region	4	pneumonia	21016	2009
region	4	skin infections	16325	2009
region	4	upper respiratory disorders	17554	2009
region	4	UTI	25509	2009
region	5	diarrhoea	20846	2009
region	5	intestinal worms	7622	2009
region	5	malaria	29543	2009
region	5	pneumonia	19898	2009
region	5	skin infections	19403	2009
region	5	upper respiratory disorders	14569	2009
region	5	UTI	7798	2009
region	6	diarrhoea	44398	2009
region	6	intestinal worms	28579	2009
region	6	malaria	279216	2009
region	6	pneumonia	44583	2009
region	6	skin infections	16727	2009
region	6	upper respiratory disorders	38173	2009
region	6	UTI	30569	2009
region	9	diarrhoea	11429	2009
region	9	intestinal worms	6545	2009
region	9	malaria	36880	2009
region	9	pneumonia	5838	2009
region	9	skin infections	6016	2009
region	9	upper respiratory disorders	7147	2009
region	9	UTI	8715	2009
region	10	diarrhoea	38352	2009
region	10	intestinal worms	30229	2009
region	10	malaria	173188	2009
region	10	pneumonia	25366	2009
region	10	skin infections	18680	2009
region	10	upper respiratory disorders	42823	2009
region	10	UTI	37636	2009
region	11	diarrhoea	23657	2009
region	11	intestinal worms	18805	2009
region	11	malaria	21621	2009
region	11	pneumonia	55554	2009
region	11	skin infections	29244	2009
region	11	upper respiratory disorders	48257	2009
region	11	UTI	23345	2009
region	14	diarrhoea	22154	2009
region	14	intestinal worms	10562	2009
region	14	malaria	174654	2009
region	14	pneumonia	19883	2009
region	14	skin infections	14794	2009
region	14	upper respiratory disorders	20293	2009
region	14	UTI	10726	2009
region	15	diarrhoea	38082	2009
region	15	intestinal worms	10264	2009
region	15	malaria	59058	2009
region	15	pneumonia	53305	2009
region	15	skin infections	19588	2009
region	15	upper respiratory disorders	25994	2009
region	15	UTI	9868	2009
region	16	diarrhoea	37024	2009
region	16	intestinal worms	26219	2009
region	16	malaria	200050	2009
region	16	pneumonia	29973	2009
region	16	skin infections	20224	2009
region	16	upper respiratory disorders	26840	2009
region	16	UTI	38204	2009
region	17	diarrhoea	71511	2009
region	17	intestinal worms	17411	2009
region	17	malaria	84351	2009
region	17	pneumonia	55842	2009
region	17	skin infections	41943	2009
region	17	upper respiratory disorders	51389	2009
region	17	UTI	22341	2009
region	18	diarrhoea	43066	2009
region	18	intestinal worms	26349	2009
region	18	malaria	225126	2009
region	18	pneumonia	56095	2009
region	18	skin infections	43685	2009
region	18	upper respiratory disorders	41436	2009
region	18	UTI	52816	2009
region	19	diarrhoea	31262	2009
region	19	intestinal worms	12475	2009
region	19	malaria	216063	2009
region	19	pneumonia	32473	2009
region	19	skin infections	22166	2009
region	19	upper respiratory disorders	25355	2009
region	19	UTI	15339	2009
region	20	diarrhoea	65145	2009
region	20	intestinal worms	30837	2009
region	20	malaria	249147	2009
region	20	pneumonia	55269	2009
region	20	skin infections	48071	2009
region	20	upper respiratory disorders	46425	2009
region	20	UTI	52759	2009
region	21	diarrhoea	11691	2009
region	21	intestinal worms	3528	2009
region	21	malaria	15258	2009
region	21	pneumonia	13925	2009
region	21	skin infections	10372	2009
region	21	upper respiratory disorders	8933	2009
region	21	UTI	3249	2009
region	22	diarrhoea	29904	2009
region	22	intestinal worms	13668	2009
region	22	malaria	190204	2009
region	22	pneumonia	32296	2009
region	22	skin infections	24623	2009
region	22	upper respiratory disorders	41581	2009
region	22	UTI	26335	2009
region	23	diarrhoea	40704	2009
region	23	intestinal worms	9145	2009
region	23	malaria	73850	2009
region	23	pneumonia	17101	2009
region	23	skin infections	17718	2009
region	23	upper respiratory disorders	13483	2009
region	23	UTI	11591	2009
region	24	diarrhoea	26614	2009
region	24	intestinal worms	11711	2009
region	24	malaria	178686	2009
region	24	pneumonia	27612	2009
region	24	skin infections	20459	2009
region	24	upper respiratory disorders	27223	2009
region	24	UTI	9794	2009
region	25	diarrhoea	44455	2009
region	25	intestinal worms	14325	2009
region	25	malaria	159449.100000000006	2009
region	25	pneumonia	28085	2009
region	25	skin infections	18625	2009
region	25	upper respiratory disorders	31540	2009
region	25	UTI	25035	2009
region	26	diarrhoea	39057	2009
region	26	intestinal worms	10624	2009
region	26	malaria	85640	2009
region	26	pneumonia	23571	2009
region	26	skin infections	13972	2009
region	26	upper respiratory disorders	17893	2009
region	26	UTI	22321	2009
region	27	diarrhoea	53021	2009
region	27	intestinal worms	9437	2009
region	27	malaria	64226	2009
region	27	pneumonia	25170	2009
region	27	skin infections	25894	2009
region	27	upper respiratory disorders	40604	2009
region	27	UTI	16011	2009
region	29	diarrhoea	53520	2009
region	29	intestinal worms	14003	2009
region	29	malaria	207585	2009
region	29	pneumonia	25191	2009
region	29	skin infections	15112	2009
region	29	upper respiratory disorders	29867	2009
region	29	UTI	18488	2009
region	28	diarrhoea	51523	2009
region	28	intestinal worms	24896	2009
region	28	malaria	194761	2009
region	28	pneumonia	84269	2009
region	28	skin infections	50188	2009
region	28	upper respiratory disorders	55611	2009
region	28	UTI	37431	2009
region	7	diarrhoea	0	2009
region	7	intestinal worms	0	2009
region	7	malaria	0	2009
region	7	pneumonia	0	2009
region	7	skin infections	0	2009
region	7	upper respiratory disorders	0	2009
region	7	UTI	0	2009
region	8	diarrhoea	0	2009
region	8	intestinal worms	0	2009
region	8	malaria	0	2009
region	8	pneumonia	0	2009
region	8	skin infections	0	2009
region	8	upper respiratory disorders	0	2009
region	8	UTI	0	2009
region	12	diarrhoea	0	2009
region	12	intestinal worms	0	2009
region	12	malaria	0	2009
region	12	pneumonia	0	2009
region	12	skin infections	0	2009
region	12	upper respiratory disorders	0	2009
region	12	UTI	0	2009
region	13	diarrhoea	0	2009
region	13	intestinal worms	0	2009
region	13	malaria	0	2009
region	13	pneumonia	0	2009
region	13	skin infections	0	2009
region	13	upper respiratory disorders	0	2009
region	13	UTI	0	2009
region	30	diarrhoea	0	2009
region	30	intestinal worms	0	2009
region	30	malaria	0	2009
region	30	pneumonia	0	2009
region	30	skin infections	0	2009
region	30	upper respiratory disorders	0	2009
region	30	UTI	0	2009
country	TZ	diarrhoea	1055598	2009
country	TZ	intestinal worms	451495	2009
country	TZ	malaria	3476659.10000000009	2009
country	TZ	pneumonia	987106	2009
country	TZ	skin infections	725176	2009
country	TZ	upper respiratory disorders	921104	2009
country	TZ	UTI	721436	2009
\.


--
-- Name: pk_outpatientdiagnosisunderfive; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY outpatientdiagnosisunderfive
    ADD CONSTRAINT pk_outpatientdiagnosisunderfive PRIMARY KEY (geo_level, geo_code, geo_version, "outpatient diagnosis under five");


--
-- PostgreSQL database dump complete
--

