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

ALTER TABLE IF EXISTS ONLY public.outpatientdiagnosisoverfive DROP CONSTRAINT IF EXISTS pk_outpatientdiagnosisoverfive;
DROP TABLE IF EXISTS public.outpatientdiagnosisoverfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: outpatientdiagnosisoverfive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE outpatientdiagnosisoverfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "outpatient diagnosis over five" character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: outpatientdiagnosisoverfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY outpatientdiagnosisoverfive (geo_level, geo_code, "outpatient diagnosis over five", total, geo_version) FROM stdin;
region	1	diarrhoea	28274	2009
region	1	hypertension	31121	2009
region	1	intestinal worms	23005	2009
region	1	malaria	33833	2009
region	1	surgical conditions	44772	2009
region	1	pneumonia	59702	2009
region	1	upper respiratory disorders	82980	2009
region	1	skin infections	43659	2009
region	1	UTI	65644	2009
region	3	diarrhoea	87029	2009
region	3	hypertension	82124	2009
region	3	intestinal worms	78960	2009
region	3	malaria	461786	2009
region	3	surgical conditions	49047	2009
region	3	pneumonia	63317	2009
region	3	upper respiratory disorders	157448	2009
region	3	skin infections	156592	2009
region	3	UTI	237459	2009
region	2	diarrhoea	39895	2009
region	2	hypertension	6549	2009
region	2	intestinal worms	22504	2009
region	2	malaria	126094	2009
region	2	surgical conditions	17481	2009
region	2	pneumonia	26152	2009
region	2	upper respiratory disorders	40710	2009
region	2	skin infections	29347	2009
region	2	UTI	41872	2009
region	4	diarrhoea	12682	2009
region	4	hypertension	3139	2009
region	4	intestinal worms	23311	2009
region	4	malaria	126160	2009
region	4	surgical conditions	5622	2009
region	4	pneumonia	9938	2009
region	4	upper respiratory disorders	15276	2009
region	4	skin infections	11985	2009
region	4	UTI	31396	2009
region	5	diarrhoea	22334	2009
region	5	hypertension	6459	2009
region	5	intestinal worms	15452	2009
region	5	malaria	60186	2009
region	5	surgical conditions	15703	2009
region	5	pneumonia	16745	2009
region	5	upper respiratory disorders	26056	2009
region	5	skin infections	23054	2009
region	5	UTI	24436	2009
region	6	diarrhoea	25226	2009
region	6	hypertension	13224	2009
region	6	intestinal worms	38606	2009
region	6	malaria	259856	2009
region	6	surgical conditions	15369	2009
region	6	pneumonia	20098	2009
region	6	upper respiratory disorders	41090	2009
region	6	skin infections	18662	2009
region	6	UTI	78677	2009
region	9	diarrhoea	7208	2009
region	9	hypertension	1730	2009
region	9	intestinal worms	8258	2009
region	9	malaria	41782	2009
region	9	surgical conditions	1682	2009
region	9	pneumonia	3560	2009
region	9	upper respiratory disorders	7776	2009
region	9	skin infections	5802	2009
region	9	UTI	10882	2009
region	10	diarrhoea	22293	2009
region	10	hypertension	5438	2009
region	10	intestinal worms	46894	2009
region	10	malaria	199323	2009
region	10	surgical conditions	8448	2009
region	10	pneumonia	13976	2009
region	10	upper respiratory disorders	39690	2009
region	10	skin infections	16465	2009
region	10	UTI	50819	2009
region	11	diarrhoea	20140	2009
region	11	hypertension	41422	2009
region	11	intestinal worms	38035	2009
region	11	malaria	63798	2009
region	11	surgical conditions	36984	2009
region	11	pneumonia	50911	2009
region	11	upper respiratory disorders	90294	2009
region	11	skin infections	43510	2009
region	11	UTI	59498	2009
region	14	diarrhoea	15204	2009
region	14	hypertension	9942	2009
region	14	intestinal worms	10487	2009
region	14	malaria	147525	2009
region	14	surgical conditions	11007	2009
region	14	pneumonia	12420	2009
region	14	upper respiratory disorders	19613	2009
region	14	skin infections	13174	2009
region	14	UTI	18998	2009
region	15	diarrhoea	21107	2009
region	15	hypertension	3106	2009
region	15	intestinal worms	14265	2009
region	15	malaria	75027	2009
region	15	surgical conditions	16759	2009
region	15	pneumonia	31601	2009
region	15	upper respiratory disorders	33651	2009
region	15	skin infections	127577	2009
region	15	UTI	26656	2009
region	16	diarrhoea	24014	2009
region	16	hypertension	4950	2009
region	16	intestinal worms	40183	2009
region	16	malaria	199835	2009
region	16	surgical conditions	15469	2009
region	16	pneumonia	16754	2009
region	16	upper respiratory disorders	31429	2009
region	16	skin infections	21752	2009
region	16	UTI	57655	2009
region	17	diarrhoea	45613	2009
region	17	hypertension	14672	2009
region	17	intestinal worms	25842	2009
region	17	malaria	104218	2009
region	17	surgical conditions	24136	2009
region	17	pneumonia	31531	2009
region	17	upper respiratory disorders	49634	2009
region	17	skin infections	36567	2009
region	17	UTI	39453	2009
region	18	diarrhoea	37771	2009
region	18	hypertension	18899	2009
region	18	intestinal worms	42646	2009
region	18	malaria	319602	2009
region	18	surgical conditions	24837	2009
region	18	pneumonia	31834	2009
region	18	upper respiratory disorders	52380	2009
region	18	skin infections	45028	2009
region	18	UTI	78748	2009
region	19	diarrhoea	16992	2009
region	19	hypertension	10680	2009
region	19	intestinal worms	12045	2009
region	19	malaria	192333	2009
region	19	surgical conditions	11923	2009
region	19	pneumonia	18654	2009
region	19	upper respiratory disorders	23771	2009
region	19	skin infections	15211	2009
region	19	UTI	25551	2009
region	20	diarrhoea	27941	2009
region	20	hypertension	9394	2009
region	20	intestinal worms	48618	2009
region	20	malaria	229520	2009
region	20	surgical conditions	14735	2009
region	20	pneumonia	20243	2009
region	20	upper respiratory disorders	39290	2009
region	20	skin infections	33815	2009
region	20	UTI	92271	2009
region	21	diarrhoea	13885	2009
region	21	hypertension	4208	2009
region	21	intestinal worms	6844	2009
region	21	malaria	27670	2009
region	21	surgical conditions	7296	2009
region	21	pneumonia	10561	2009
region	21	upper respiratory disorders	13198	2009
region	21	skin infections	13931	2009
region	21	UTI	11265	2009
region	22	diarrhoea	21128	2009
region	22	hypertension	15754	2009
region	22	intestinal worms	17434	2009
region	22	malaria	244679	2009
region	22	surgical conditions	16616	2009
region	22	pneumonia	17414	2009
region	22	upper respiratory disorders	45542	2009
region	22	skin infections	24472	2009
region	22	UTI	54574	2009
region	23	diarrhoea	17062	2009
region	23	hypertension	2559	2009
region	23	intestinal worms	11529	2009
region	23	malaria	69919	2009
region	23	surgical conditions	6476	2009
region	23	pneumonia	11275	2009
region	23	upper respiratory disorders	11379	2009
region	23	skin infections	13718	2009
region	23	UTI	16449	2009
region	24	diarrhoea	18192	2009
region	24	hypertension	11484	2009
region	24	intestinal worms	15023	2009
region	24	malaria	183819	2009
region	24	surgical conditions	16330	2009
region	24	pneumonia	20209	2009
region	24	upper respiratory disorders	27345	2009
region	24	skin infections	19308	2009
region	24	UTI	18919	2009
region	25	diarrhoea	24111	2009
region	25	hypertension	5590	2009
region	25	intestinal worms	21553	2009
region	25	malaria	157642	2009
region	25	surgical conditions	6871	2009
region	25	pneumonia	12182	2009
region	25	upper respiratory disorders	36171	2009
region	25	skin infections	19037	2009
region	25	UTI	43194	2009
region	26	diarrhoea	18586	2009
region	26	hypertension	1631	2009
region	26	intestinal worms	16511	2009
region	26	malaria	90687	2009
region	26	surgical conditions	3002	2009
region	26	pneumonia	10156	2009
region	26	upper respiratory disorders	20370	2009
region	26	skin infections	10868	2009
region	26	UTI	30865	2009
region	27	diarrhoea	33771	2009
region	27	hypertension	4043	2009
region	27	intestinal worms	16369	2009
region	27	malaria	95183	2009
region	27	surgical conditions	16802	2009
region	27	pneumonia	18858	2009
region	27	upper respiratory disorders	53355	2009
region	27	skin infections	22149	2009
region	27	UTI	31143	2009
region	29	diarrhoea	28323	2009
region	29	hypertension	4479	2009
region	29	intestinal worms	20844	2009
region	29	malaria	211160	2009
region	29	surgical conditions	7566	2009
region	29	pneumonia	12666	2009
region	29	upper respiratory disorders	32161	2009
region	29	skin infections	13597	2009
region	29	UTI	32539	2009
region	28	diarrhoea	36855	2009
region	28	hypertension	23839	2009
region	28	intestinal worms	34304	2009
region	28	malaria	300736	2009
region	28	surgical conditions	36421	2009
region	28	pneumonia	42122	2009
region	28	upper respiratory disorders	78197	2009
region	28	skin infections	60071	2009
region	28	UTI	76590	2009
region	7	diarrhoea	0	2009
region	7	hypertension	0	2009
region	7	intestinal worms	0	2009
region	7	malaria	0	2009
region	7	surgical conditions	0	2009
region	7	pneumonia	0	2009
region	7	upper respiratory disorders	0	2009
region	7	skin infections	0	2009
region	7	UTI	0	2009
region	8	diarrhoea	0	2009
region	8	hypertension	0	2009
region	8	intestinal worms	0	2009
region	8	malaria	0	2009
region	8	surgical conditions	0	2009
region	8	pneumonia	0	2009
region	8	upper respiratory disorders	0	2009
region	8	skin infections	0	2009
region	8	UTI	0	2009
region	12	diarrhoea	0	2009
region	12	hypertension	0	2009
region	12	intestinal worms	0	2009
region	12	malaria	0	2009
region	12	surgical conditions	0	2009
region	12	pneumonia	0	2009
region	12	upper respiratory disorders	0	2009
region	12	skin infections	0	2009
region	12	UTI	0	2009
region	13	diarrhoea	0	2009
region	13	hypertension	0	2009
region	13	intestinal worms	0	2009
region	13	malaria	0	2009
region	13	surgical conditions	0	2009
region	13	pneumonia	0	2009
region	13	upper respiratory disorders	0	2009
region	13	skin infections	0	2009
region	13	UTI	0	2009
region	30	diarrhoea	0	2009
region	30	hypertension	0	2009
region	30	intestinal worms	0	2009
region	30	malaria	0	2009
region	30	surgical conditions	0	2009
region	30	pneumonia	0	2009
region	30	upper respiratory disorders	0	2009
region	30	skin infections	0	2009
region	30	UTI	0	2009
country	TZ	diarrhoea	665636	2009
country	TZ	hypertension	336436	2009
country	TZ	intestinal worms	649522	2009
country	TZ	malaria	4022373	2009
country	TZ	surgical conditions	431354	2009
country	TZ	pneumonia	582879	2009
country	TZ	upper respiratory disorders	1068806	2009
country	TZ	skin infections	839351	2009
country	TZ	UTI	1255553	2009
\.


--
-- Name: pk_outpatientdiagnosisoverfive; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY outpatientdiagnosisoverfive
    ADD CONSTRAINT pk_outpatientdiagnosisoverfive PRIMARY KEY (geo_level, geo_code, geo_version, "outpatient diagnosis over five");


--
-- PostgreSQL database dump complete
--

