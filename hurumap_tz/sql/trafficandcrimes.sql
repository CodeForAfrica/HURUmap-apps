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

ALTER TABLE IF EXISTS ONLY public.trafficandcrimes DROP CONSTRAINT IF EXISTS pk_trafficandcrimes;
DROP TABLE IF EXISTS public.trafficandcrimes;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: trafficandcrimes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE trafficandcrimes (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(50) NOT NULL,
    "traffic and crimes" character varying(100) NOT NULL,
    total integer,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: trafficandcrimes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY trafficandcrimes (geo_level, geo_code, "traffic and crimes", total, geo_version) FROM stdin;
country	TZ	Female Dead Persons	729	2009
region	1	Female Dead Persons	5	2009
region	2	Female Dead Persons	53	2009
region	3	Female Dead Persons	13	2009
region	4	Female Dead Persons	13	2009
region	5	Female Dead Persons	44	2009
region	6	Female Dead Persons	18	2009
region	9	Female Dead Persons	7	2009
region	10	Female Dead Persons	16	2009
region	11	Female Dead Persons	15	2009
region	14	Female Dead Persons	19	2009
region	16	Female Dead Persons	27	2009
region	15	Female Dead Persons	22	2009
region	17	Female Dead Persons	153	2009
region	18	Female Dead Persons	45	2009
region	19	Female Dead Persons	16	2009
region	20	Female Dead Persons	35	2009
region	21	Female Dead Persons	25	2009
region	22	Female Dead Persons	33	2009
region	23	Female Dead Persons	10	2009
region	24	Female Dead Persons	20	2009
region	25	Female Dead Persons	22	2009
region	26	Female Dead Persons	9	2009
region	27	Female Dead Persons	42	2009
region	29	Female Dead Persons	31	2009
region	28	Female Dead Persons	22	2009
region	7	Female Dead Persons	1	2009
region	8	Female Dead Persons	7	2009
region	12	Female Dead Persons	1	2009
region	13	Female Dead Persons	0	2009
region	30	Female Dead Persons	5	2009
region	1	Murder	70	2009
region	1	Male Dead Persons	21	2009
region	2	Male Dead Persons	269	2009
region	3	Male Dead Persons	131	2009
region	4	Male Dead Persons	75	2009
region	5	Male Dead Persons	169	2009
region	6	Male Dead Persons	68	2009
region	9	Male Dead Persons	42	2009
region	10	Male Dead Persons	63	2009
region	11	Male Dead Persons	57	2009
region	14	Male Dead Persons	83	2009
region	16	Male Dead Persons	95	2009
region	15	Male Dead Persons	94	2009
region	17	Male Dead Persons	181	2009
region	18	Male Dead Persons	276	2009
region	19	Male Dead Persons	42	2009
region	20	Male Dead Persons	136	2009
region	21	Male Dead Persons	78	2009
region	22	Male Dead Persons	184	2009
region	23	Male Dead Persons	37	2009
region	24	Male Dead Persons	118	2009
region	25	Male Dead Persons	104	2009
region	26	Male Dead Persons	45	2009
region	27	Male Dead Persons	143	2009
region	29	Male Dead Persons	131	2009
region	28	Male Dead Persons	111	2009
region	7	Male Dead Persons	7	2009
region	8	Male Dead Persons	10	2009
region	12	Male Dead Persons	7	2009
region	13	Male Dead Persons	18	2009
region	30	Male Dead Persons	50	2009
country	TZ	Male Dead Persons	2845	2009
region	1	Minor Offences	112408	2009
region	10	Minor Offences	17923	2009
region	11	Minor Offences	54449	2009
region	14	Minor Offences	18381	2009
region	15	Minor Offences	37694	2009
region	16	Minor Offences	14079	2009
region	17	Minor Offences	71372	2009
region	18	Minor Offences	86123	2009
region	19	Minor Offences	27266	2009
region	20	Minor Offences	69694	2009
region	21	Minor Offences	31260	2009
region	22	Minor Offences	78062	2009
region	23	Minor Offences	11657	2009
region	24	Minor Offences	11229	2009
region	25	Minor Offences	37523	2009
region	26	Minor Offences	13762	2009
region	27	Minor Offences	37224	2009
region	28	Minor Offences	35951	2009
region	29	Minor Offences	30241	2009
region	3	Minor Offences	41537	2009
region	30	Minor Offences	6470	2009
region	4	Minor Offences	24107	2009
region	5	Minor Offences	36542	2009
region	6	Minor Offences	47801	2009
region	7	Minor Offences	1276	2009
region	9	Minor Offences	7470	2009
region	1	Fatal Accidents	21	2009
region	10	Fatal Accidents	62	2009
region	11	Fatal Accidents	58	2009
region	14	Fatal Accidents	85	2009
region	15	Fatal Accidents	90	2009
region	16	Fatal Accidents	68	2009
region	17	Fatal Accidents	264	2009
region	18	Fatal Accidents	251	2009
region	19	Fatal Accidents	49	2009
region	20	Fatal Accidents	152	2009
region	21	Fatal Accidents	91	2009
region	22	Fatal Accidents	175	2009
region	23	Fatal Accidents	43	2009
region	24	Fatal Accidents	114	2009
region	25	Fatal Accidents	111	2009
region	26	Fatal Accidents	48	2009
region	27	Fatal Accidents	144	2009
region	28	Fatal Accidents	99	2009
region	29	Fatal Accidents	137	2009
region	3	Fatal Accidents	124	2009
region	30	Fatal Accidents	55	2009
region	4	Fatal Accidents	75	2009
region	5	Fatal Accidents	108	2009
region	6	Fatal Accidents	67	2009
region	7	Fatal Accidents	7	2009
region	9	Fatal Accidents	37	2009
region	1	Injury Accidents	20	2009
region	10	Injury Accidents	17	2009
region	11	Injury Accidents	101	2009
region	14	Injury Accidents	120	2009
region	15	Injury Accidents	138	2009
region	16	Injury Accidents	23	2009
region	17	Injury Accidents	170	2009
region	18	Injury Accidents	109	2009
region	19	Injury Accidents	12	2009
region	20	Injury Accidents	44	2009
region	21	Injury Accidents	10	2009
region	22	Injury Accidents	283	2009
region	23	Injury Accidents	10	2009
region	24	Injury Accidents	257	2009
region	25	Injury Accidents	64	2009
region	26	Injury Accidents	27	2009
region	27	Injury Accidents	43	2009
region	28	Injury Accidents	15	2009
region	29	Injury Accidents	106	2009
region	3	Injury Accidents	116	2009
region	30	Injury Accidents	158	2009
region	4	Injury Accidents	22	2009
region	5	Injury Accidents	27	2009
region	6	Injury Accidents	27	2009
region	7	Injury Accidents	0	2009
region	9	Injury Accidents	60	2009
region	1	Normal Accidents	12	2009
region	10	Normal Accidents	3	2009
region	11	Normal Accidents	41	2009
region	14	Normal Accidents	53	2009
region	15	Normal Accidents	77	2009
region	16	Normal Accidents	1	2009
region	17	Normal Accidents	0	2009
region	18	Normal Accidents	19	2009
region	19	Normal Accidents	1	2009
region	20	Normal Accidents	10	2009
region	21	Normal Accidents	1	2009
region	22	Normal Accidents	10	2009
region	23	Normal Accidents	0	2009
region	24	Normal Accidents	34	2009
region	25	Normal Accidents	0	2009
region	26	Normal Accidents	1	2009
region	27	Normal Accidents	4	2009
region	28	Normal Accidents	3	2009
region	29	Normal Accidents	47	2009
region	3	Normal Accidents	70	2009
region	30	Normal Accidents	81	2009
region	4	Normal Accidents	1	2009
region	5	Normal Accidents	0	2009
region	6	Normal Accidents	10	2009
region	7	Normal Accidents	16	2009
region	9	Normal Accidents	15	2009
region	1	Male Injured Persons	43	2009
region	10	Male Injured Persons	84	2009
region	11	Male Injured Persons	180	2009
region	14	Male Injured Persons	203	2009
region	15	Male Injured Persons	319	2009
region	16	Male Injured Persons	60	2009
region	17	Male Injured Persons	265	2009
region	18	Male Injured Persons	457	2009
region	19	Male Injured Persons	47	2009
region	20	Male Injured Persons	178	2009
region	21	Male Injured Persons	45	2009
region	22	Male Injured Persons	585	2009
region	23	Male Injured Persons	24	2009
region	24	Male Injured Persons	361	2009
region	25	Male Injured Persons	144	2009
region	26	Male Injured Persons	97	2009
region	27	Male Injured Persons	170	2009
region	28	Male Injured Persons	134	2009
region	29	Male Injured Persons	296	2009
region	3	Male Injured Persons	212	2009
region	30	Male Injured Persons	250	2009
region	4	Male Injured Persons	138	2009
region	5	Male Injured Persons	140	2009
region	6	Male Injured Persons	77	2009
region	7	Male Injured Persons	53	2009
region	9	Male Injured Persons	96	2009
region	1	Female Injured Persons	17	2009
region	10	Female Injured Persons	49	2009
region	11	Female Injured Persons	59	2009
region	14	Female Injured Persons	89	2009
region	15	Female Injured Persons	131	2009
region	16	Female Injured Persons	33	2009
region	17	Female Injured Persons	216	2009
region	18	Female Injured Persons	178	2009
region	19	Female Injured Persons	15	2009
region	20	Female Injured Persons	37	2009
region	21	Female Injured Persons	28	2009
region	22	Female Injured Persons	147	2009
region	23	Female Injured Persons	6	2009
region	24	Female Injured Persons	142	2009
region	25	Female Injured Persons	32	2009
region	26	Female Injured Persons	44	2009
region	27	Female Injured Persons	89	2009
region	28	Female Injured Persons	57	2009
region	29	Female Injured Persons	110	2009
region	3	Female Injured Persons	68	2009
region	30	Female Injured Persons	39	2009
region	4	Female Injured Persons	57	2009
region	5	Female Injured Persons	37	2009
region	6	Female Injured Persons	22	2009
region	7	Female Injured Persons	15	2009
region	9	Female Injured Persons	26	2009
region	1	Male Suspects	101500	2009
region	10	Male Suspects	16584	2009
region	11	Male Suspects	49124	2009
region	14	Male Suspects	17103	2009
region	15	Male Suspects	34008	2009
region	16	Male Suspects	13043	2009
region	17	Male Suspects	63952	2009
region	18	Male Suspects	78437	2009
region	19	Male Suspects	25197	2009
region	20	Male Suspects	61295	2009
region	21	Male Suspects	28410	2009
region	22	Male Suspects	70323	2009
region	23	Male Suspects	10623	2009
region	24	Male Suspects	10270	2009
region	25	Male Suspects	33109	2009
region	26	Male Suspects	12289	2009
region	27	Male Suspects	32662	2009
region	28	Male Suspects	34803	2009
region	29	Male Suspects	27741	2009
region	3	Male Suspects	37389	2009
region	30	Male Suspects	6860	2009
region	4	Male Suspects	21998	2009
region	5	Male Suspects	33434	2009
region	6	Male Suspects	43530	2009
region	7	Male Suspects	1474	2009
region	9	Male Suspects	6891	2009
region	1	Female Suspects	0	2009
region	10	Female Suspects	0	2009
region	11	Female Suspects	0	2009
region	14	Female Suspects	0	2009
region	15	Female Suspects	0	2009
region	16	Female Suspects	0	2009
region	17	Female Suspects	0	2009
region	18	Female Suspects	0	2009
region	19	Female Suspects	0	2009
region	20	Female Suspects	0	2009
region	21	Female Suspects	0	2009
region	22	Female Suspects	0	2009
region	23	Female Suspects	0	2009
region	24	Female Suspects	0	2009
region	25	Female Suspects	0	2009
region	26	Female Suspects	0	2009
region	27	Female Suspects	0	2009
region	28	Female Suspects	0	2009
region	29	Female Suspects	0	2009
region	3	Female Suspects	0	2009
region	30	Female Suspects	6	2009
region	4	Female Suspects	0	2009
region	5	Female Suspects	0	2009
region	6	Female Suspects	0	2009
region	7	Female Suspects	0	2009
region	9	Female Suspects	0	2009
country	TZ	Minor Offences	1389483	2009
country	TZ	Fatal Accidents	2950	2009
country	TZ	Injury Accidents	4304	2009
country	TZ	Normal Accidents	1646	2009
country	TZ	Male Injured Persons	7494	2009
country	TZ	Female Injured Persons	2632	2009
country	TZ	Male Suspects	1259720	2009
country	TZ	Female Suspects	32	2009
region	2	Minor Offences	397789	2009
region	2	Fatal Accidents	293	2009
region	2	Injury Accidents	2169	2009
region	2	Normal Accidents	1112	2009
region	2	Male Injured Persons	2501	2009
region	2	Female Injured Persons	808	2009
region	2	Male Suspects	357863	2009
region	2	Female Suspects	0	2009
region	2	Murder	339	2009
region	3	Murder	168	2009
region	4	Murder	178	2009
region	5	Murder	77	2009
region	6	Murder	271	2009
region	9	Murder	94	2009
region	10	Murder	94	2009
region	11	Murder	93	2009
region	14	Murder	71	2009
region	16	Murder	170	2009
region	15	Murder	79	2009
region	17	Murder	300	2009
region	18	Murder	160	2009
region	19	Murder	70	2009
region	20	Murder	167	2009
region	21	Murder	89	2009
region	22	Murder	106	2009
region	23	Murder	126	2009
region	24	Murder	82	2009
region	25	Murder	106	2009
region	26	Murder	115	2009
region	27	Murder	108	2009
region	29	Murder	306	2009
region	28	Murder	98	2009
region	7	Murder	1	2009
region	8	Murder	2	2009
region	12	Murder	6	2009
region	13	Murder	4	2009
region	30	Murder	8	2009
region	1	Rape	225	2009
region	2	Rape	1068	2009
region	3	Rape	194	2009
region	4	Rape	144	2009
region	5	Rape	164	2009
region	6	Rape	192	2009
region	9	Rape	117	2009
region	10	Rape	214	2009
region	11	Rape	202	2009
region	14	Rape	113	2009
region	16	Rape	259	2009
region	15	Rape	122	2009
region	17	Rape	530	2009
region	18	Rape	316	2009
region	19	Rape	84	2009
region	20	Rape	165	2009
region	21	Rape	105	2009
region	22	Rape	339	2009
region	23	Rape	174	2009
region	24	Rape	144	2009
region	25	Rape	181	2009
region	26	Rape	97	2009
region	27	Rape	116	2009
region	29	Rape	195	2009
region	28	Rape	286	2009
region	7	Rape	13	2009
region	8	Rape	15	2009
region	12	Rape	3	2009
region	13	Rape	11	2009
region	30	Rape	13	2009
region	1	Child Desertion	28	2009
region	2	Child Desertion	24	2009
region	3	Child Desertion	4	2009
region	4	Child Desertion	5	2009
region	5	Child Desertion	16	2009
region	6	Child Desertion	18	2009
region	9	Child Desertion	1	2009
region	10	Child Desertion	7	2009
region	11	Child Desertion	3	2009
region	14	Child Desertion	0	2009
region	16	Child Desertion	13	2009
region	15	Child Desertion	5	2009
region	17	Child Desertion	15	2009
region	18	Child Desertion	7	2009
region	19	Child Desertion	11	2009
region	20	Child Desertion	7	2009
region	21	Child Desertion	6	2009
region	22	Child Desertion	6	2009
region	23	Child Desertion	8	2009
region	24	Child Desertion	7	2009
region	25	Child Desertion	2	2009
region	26	Child Desertion	3	2009
region	27	Child Desertion	3	2009
region	29	Child Desertion	3	2009
region	28	Child Desertion	2	2009
region	7	Child Desertion	0	2009
region	8	Child Desertion	0	2009
region	12	Child Desertion	0	2009
region	13	Child Desertion	1	2009
region	30	Child Desertion	0	2009
region	1	Unnatural Offence	53	2009
region	2	Unnatural Offence	314	2009
region	3	Unnatural Offence	55	2009
region	4	Unnatural Offence	1	2009
region	5	Unnatural Offence	21	2009
region	6	Unnatural Offence	8	2009
region	9	Unnatural Offence	5	2009
region	10	Unnatural Offence	29	2009
region	11	Unnatural Offence	42	2009
region	14	Unnatural Offence	16	2009
region	16	Unnatural Offence	37	2009
region	15	Unnatural Offence	16	2009
region	17	Unnatural Offence	31	2009
region	18	Unnatural Offence	40	2009
region	19	Unnatural Offence	15	2009
region	20	Unnatural Offence	17	2009
region	21	Unnatural Offence	6	2009
region	22	Unnatural Offence	53	2009
region	23	Unnatural Offence	5	2009
region	24	Unnatural Offence	15	2009
region	25	Unnatural Offence	16	2009
region	26	Unnatural Offence	0	2009
region	27	Unnatural Offence	10	2009
region	29	Unnatural Offence	59	2009
region	28	Unnatural Offence	50	2009
region	7	Unnatural Offence	0	2009
region	8	Unnatural Offence	7	2009
region	12	Unnatural Offence	1	2009
region	13	Unnatural Offence	3	2009
region	30	Unnatural Offence	2	2009
region	1	Child Stealing	0	2009
region	2	Child Stealing	28	2009
region	3	Child Stealing	5	2009
region	4	Child Stealing	9	2009
region	5	Child Stealing	0	2009
region	6	Child Stealing	4	2009
region	9	Child Stealing	1	2009
region	10	Child Stealing	2	2009
region	11	Child Stealing	8	2009
region	14	Child Stealing	1	2009
region	16	Child Stealing	14	2009
region	15	Child Stealing	1	2009
region	17	Child Stealing	18	2009
region	18	Child Stealing	10	2009
region	19	Child Stealing	2	2009
region	20	Child Stealing	5	2009
region	21	Child Stealing	3	2009
region	22	Child Stealing	8	2009
region	23	Child Stealing	3	2009
region	24	Child Stealing	5	2009
region	25	Child Stealing	4	2009
region	26	Child Stealing	0	2009
region	27	Child Stealing	3	2009
region	29	Child Stealing	5	2009
region	28	Child Stealing	6	2009
region	7	Child Stealing	0	2009
region	8	Child Stealing	0	2009
region	12	Child Stealing	0	2009
region	13	Child Stealing	1	2009
region	30	Child Stealing	0	2009
region	1	Defilement	2	2009
region	2	Defilement	0	2009
region	3	Defilement	1	2009
region	4	Defilement	0	2009
region	5	Defilement	0	2009
region	6	Defilement	1	2009
region	9	Defilement	0	2009
region	10	Defilement	0	2009
region	11	Defilement	0	2009
region	14	Defilement	0	2009
region	16	Defilement	1	2009
region	15	Defilement	4	2009
region	17	Defilement	0	2009
region	18	Defilement	0	2009
region	19	Defilement	0	2009
region	20	Defilement	0	2009
region	21	Defilement	0	2009
region	22	Defilement	1	2009
region	23	Defilement	0	2009
region	24	Defilement	0	2009
region	25	Defilement	0	2009
region	26	Defilement	0	2009
region	27	Defilement	0	2009
region	29	Defilement	0	2009
region	28	Defilement	0	2009
region	7	Defilement	0	2009
region	8	Defilement	2	2009
region	12	Defilement	0	2009
region	13	Defilement	0	2009
region	30	Defilement	0	2009
region	1	Human Trafficking	1	2009
region	2	Human Trafficking	3	2009
region	3	Human Trafficking	5	2009
region	4	Human Trafficking	0	2009
region	5	Human Trafficking	0	2009
region	6	Human Trafficking	0	2009
region	9	Human Trafficking	0	2009
region	10	Human Trafficking	14	2009
region	11	Human Trafficking	1	2009
region	14	Human Trafficking	0	2009
region	16	Human Trafficking	0	2009
region	15	Human Trafficking	2	2009
region	17	Human Trafficking	5	2009
region	18	Human Trafficking	3	2009
region	19	Human Trafficking	0	2009
region	20	Human Trafficking	0	2009
region	21	Human Trafficking	2	2009
region	22	Human Trafficking	0	2009
region	23	Human Trafficking	2	2009
region	24	Human Trafficking	0	2009
region	25	Human Trafficking	0	2009
region	26	Human Trafficking	0	2009
region	27	Human Trafficking	0	2009
region	29	Human Trafficking	0	2009
region	28	Human Trafficking	0	2009
region	7	Human Trafficking	0	2009
region	8	Human Trafficking	0	2009
region	12	Human Trafficking	0	2009
region	13	Human Trafficking	0	2009
region	30	Human Trafficking	0	2009
country	TZ	Unnatural Offence	927	2009
country	TZ	Child Stealing	146	2009
country	TZ	Murder	3558	2009
country	TZ	Rape	5801	2009
country	TZ	Defilement	12	2009
country	TZ	Child Desertion	205	2009
country	TZ	Human Trafficking	38	2009
region	1	Murdered Male	58	2009
region	2	Murdered Male	311	2009
region	3	Murdered Male	186	2009
region	4	Murdered Male	145	2009
region	5	Murdered Male	75	2009
region	6	Murdered Male	213	2009
region	9	Murdered Male	72	2009
region	10	Murdered Male	85	2009
region	11	Murdered Male	89	2009
region	14	Murdered Male	66	2009
region	16	Murdered Male	156	2009
region	15	Murdered Male	68	2009
region	17	Murdered Male	251	2009
region	18	Murdered Male	134	2009
region	19	Murdered Male	81	2009
region	20	Murdered Male	140	2009
region	21	Murdered Male	69	2009
region	22	Murdered Male	110	2009
region	23	Murdered Male	99	2009
region	24	Murdered Male	62	2009
region	25	Murdered Male	87	2009
region	26	Murdered Male	95	2009
region	27	Murdered Male	94	2009
region	29	Murdered Male	217	2009
region	28	Murdered Male	92	2009
region	7	Murdered Male	0	2009
region	8	Murdered Male	2	2009
region	12	Murdered Male	6	2009
region	13	Murdered Male	3	2009
region	30	Murdered Male	7	2009
region	1	Murdered Female	18	2009
region	2	Murdered Female	32	2009
region	3	Murdered Female	25	2009
region	4	Murdered Female	38	2009
region	5	Murdered Female	15	2009
region	6	Murdered Female	58	2009
region	9	Murdered Female	22	2009
region	10	Murdered Female	18	2009
region	11	Murdered Female	22	2009
region	14	Murdered Female	12	2009
region	16	Murdered Female	15	2009
region	15	Murdered Female	11	2009
region	17	Murdered Female	54	2009
region	18	Murdered Female	27	2009
region	19	Murdered Female	12	2009
region	20	Murdered Female	27	2009
region	21	Murdered Female	20	2009
region	22	Murdered Female	16	2009
region	23	Murdered Female	27	2009
region	24	Murdered Female	20	2009
region	25	Murdered Female	22	2009
region	26	Murdered Female	24	2009
region	27	Murdered Female	14	2009
region	29	Murdered Female	106	2009
region	28	Murdered Female	12	2009
region	7	Murdered Female	1	2009
region	8	Murdered Female	0	2009
region	12	Murdered Female	0	2009
region	13	Murdered Female	1	2009
region	30	Murdered Female	1	2009
region	1	Cattle Thieves	4	2009
region	2	Cattle Thieves	33	2009
region	3	Cattle Thieves	12	2009
region	4	Cattle Thieves	8	2009
region	5	Cattle Thieves	4	2009
region	6	Cattle Thieves	15	2009
region	9	Cattle Thieves	0	2009
region	10	Cattle Thieves	7	2009
region	11	Cattle Thieves	5	2009
region	14	Cattle Thieves	12	2009
region	16	Cattle Thieves	25	2009
region	15	Cattle Thieves	0	2009
region	17	Cattle Thieves	6	2009
region	18	Cattle Thieves	4	2009
region	19	Cattle Thieves	3	2009
region	20	Cattle Thieves	4	2009
region	21	Cattle Thieves	0	2009
region	22	Cattle Thieves	15	2009
region	23	Cattle Thieves	16	2009
region	24	Cattle Thieves	5	2009
region	25	Cattle Thieves	2	2009
region	26	Cattle Thieves	4	2009
region	27	Cattle Thieves	2	2009
region	29	Cattle Thieves	2	2009
region	28	Cattle Thieves	12	2009
region	7	Cattle Thieves	0	2009
region	8	Cattle Thieves	0	2009
region	12	Cattle Thieves	0	2009
region	13	Cattle Thieves	0	2009
region	30	Cattle Thieves	0	2009
region	1	Murdered Cattle Owners	0	2009
region	2	Murdered Cattle Owners	11	2009
region	3	Murdered Cattle Owners	0	2009
region	4	Murdered Cattle Owners	2	2009
region	5	Murdered Cattle Owners	3	2009
region	6	Murdered Cattle Owners	5	2009
region	9	Murdered Cattle Owners	1	2009
region	10	Murdered Cattle Owners	0	2009
region	11	Murdered Cattle Owners	0	2009
region	14	Murdered Cattle Owners	0	2009
region	16	Murdered Cattle Owners	3	2009
region	15	Murdered Cattle Owners	1	2009
region	17	Murdered Cattle Owners	0	2009
region	18	Murdered Cattle Owners	5	2009
region	19	Murdered Cattle Owners	1	2009
region	20	Murdered Cattle Owners	0	2009
region	21	Murdered Cattle Owners	1	2009
region	22	Murdered Cattle Owners	1	2009
region	23	Murdered Cattle Owners	0	2009
region	24	Murdered Cattle Owners	2	2009
region	25	Murdered Cattle Owners	1	2009
region	26	Murdered Cattle Owners	0	2009
region	27	Murdered Cattle Owners	0	2009
region	29	Murdered Cattle Owners	11	2009
region	28	Murdered Cattle Owners	2	2009
region	7	Murdered Cattle Owners	0	2009
region	8	Murdered Cattle Owners	0	2009
region	12	Murdered Cattle Owners	0	2009
region	13	Murdered Cattle Owners	0	2009
region	30	Murdered Cattle Owners	0	2009
region	1	Robbery Thieves	9	2009
region	2	Robbery Thieves	56	2009
region	3	Robbery Thieves	13	2009
region	4	Robbery Thieves	29	2009
region	5	Robbery Thieves	10	2009
region	6	Robbery Thieves	10	2009
region	9	Robbery Thieves	0	2009
region	10	Robbery Thieves	9	2009
region	11	Robbery Thieves	11	2009
region	14	Robbery Thieves	2	2009
region	16	Robbery Thieves	16	2009
region	15	Robbery Thieves	3	2009
region	17	Robbery Thieves	9	2009
region	18	Robbery Thieves	10	2009
region	19	Robbery Thieves	20	2009
region	20	Robbery Thieves	26	2009
region	21	Robbery Thieves	2	2009
region	22	Robbery Thieves	17	2009
region	23	Robbery Thieves	5	2009
region	24	Robbery Thieves	11	2009
region	25	Robbery Thieves	2	2009
region	26	Robbery Thieves	4	2009
region	27	Robbery Thieves	3	2009
region	29	Robbery Thieves	11	2009
region	28	Robbery Thieves	2	2009
region	7	Robbery Thieves	0	2009
region	8	Robbery Thieves	0	2009
region	12	Robbery Thieves	0	2009
region	13	Robbery Thieves	0	2009
region	30	Robbery Thieves	0	2009
region	1	Robbery Victims	0	2009
region	2	Robbery Victims	6	2009
region	3	Robbery Victims	4	2009
region	4	Robbery Victims	4	2009
region	5	Robbery Victims	2	2009
region	6	Robbery Victims	0	2009
region	9	Robbery Victims	4	2009
region	10	Robbery Victims	15	2009
region	11	Robbery Victims	6	2009
region	14	Robbery Victims	0	2009
region	16	Robbery Victims	10	2009
region	15	Robbery Victims	2	2009
region	17	Robbery Victims	0	2009
region	18	Robbery Victims	4	2009
region	19	Robbery Victims	6	2009
region	20	Robbery Victims	2	2009
region	21	Robbery Victims	2	2009
region	22	Robbery Victims	13	2009
region	23	Robbery Victims	0	2009
region	24	Robbery Victims	7	2009
region	25	Robbery Victims	0	2009
region	26	Robbery Victims	1	2009
region	27	Robbery Victims	1	2009
region	29	Robbery Victims	7	2009
region	28	Robbery Victims	1	2009
region	7	Robbery Victims	0	2009
region	8	Robbery Victims	0	2009
region	12	Robbery Victims	0	2009
region	13	Robbery Victims	1	2009
region	30	Robbery Victims	1	2009
region	1	Superstitious Beliefs Theft	3	2009
region	2	Superstitious Beliefs Theft	97	2009
region	3	Superstitious Beliefs Theft	28	2009
region	4	Superstitious Beliefs Theft	19	2009
region	1	Superstitious Beliefs Others	3	2009
region	2	Superstitious Beliefs Others	97	2009
region	3	Superstitious Beliefs Others	28	2009
region	4	Superstitious Beliefs Others	19	2009
region	5	Superstitious Beliefs Others	19	2009
region	6	Superstitious Beliefs Others	15	2009
region	9	Superstitious Beliefs Others	9	2009
region	10	Superstitious Beliefs Others	0	2009
region	11	Superstitious Beliefs Others	7	2009
region	14	Superstitious Beliefs Others	9	2009
region	16	Superstitious Beliefs Others	13	2009
region	15	Superstitious Beliefs Others	0	2009
region	17	Superstitious Beliefs Others	81	2009
region	18	Superstitious Beliefs Others	21	2009
region	19	Superstitious Beliefs Others	21	2009
region	20	Superstitious Beliefs Others	21	2009
region	21	Superstitious Beliefs Others	9	2009
region	22	Superstitious Beliefs Others	5	2009
region	23	Superstitious Beliefs Others	10	2009
region	24	Superstitious Beliefs Others	4	2009
region	25	Superstitious Beliefs Others	17	2009
region	26	Superstitious Beliefs Others	16	2009
region	27	Superstitious Beliefs Others	14	2009
region	29	Superstitious Beliefs Others	50	2009
region	5	Superstitious Beliefs Theft	19	2009
region	6	Superstitious Beliefs Theft	15	2009
region	9	Superstitious Beliefs Theft	9	2009
region	10	Superstitious Beliefs Theft	0	2009
region	11	Superstitious Beliefs Theft	7	2009
region	14	Superstitious Beliefs Theft	9	2009
region	16	Superstitious Beliefs Theft	13	2009
region	15	Superstitious Beliefs Theft	0	2009
region	17	Superstitious Beliefs Theft	81	2009
region	18	Superstitious Beliefs Theft	21	2009
region	19	Superstitious Beliefs Theft	21	2009
region	20	Superstitious Beliefs Theft	21	2009
region	21	Superstitious Beliefs Theft	9	2009
region	22	Superstitious Beliefs Theft	5	2009
region	23	Superstitious Beliefs Theft	10	2009
region	24	Superstitious Beliefs Theft	4	2009
region	25	Superstitious Beliefs Theft	17	2009
region	26	Superstitious Beliefs Theft	16	2009
region	27	Superstitious Beliefs Theft	14	2009
region	29	Superstitious Beliefs Theft	50	2009
region	28	Superstitious Beliefs Theft	11	2009
region	7	Superstitious Beliefs Theft	0	2009
region	8	Superstitious Beliefs Theft	0	2009
region	1	Public Fighting Accident	2	2009
region	2	Public Fighting Accident	11	2009
region	3	Public Fighting Accident	3	2009
region	4	Public Fighting Accident	2	2009
region	5	Public Fighting Accident	1	2009
region	6	Public Fighting Accident	12	2009
region	9	Public Fighting Accident	0	2009
region	10	Public Fighting Accident	2	2009
region	11	Public Fighting Accident	2	2009
region	14	Public Fighting Accident	1	2009
region	16	Public Fighting Accident	1	2009
region	15	Public Fighting Accident	3	2009
region	17	Public Fighting Accident	1	2009
region	18	Public Fighting Accident	5	2009
region	19	Public Fighting Accident	6	2009
region	20	Public Fighting Accident	17	2009
region	21	Public Fighting Accident	4	2009
region	22	Public Fighting Accident	3	2009
region	23	Public Fighting Accident	5	2009
region	24	Public Fighting Accident	0	2009
region	25	Public Fighting Accident	0	2009
region	26	Public Fighting Accident	0	2009
region	27	Public Fighting Accident	1	2009
region	29	Public Fighting Accident	1	2009
region	28	Public Fighting Accident	1	2009
region	7	Public Fighting Accident	0	2009
region	8	Public Fighting Accident	0	2009
region	12	Public Fighting Accident	0	2009
region	13	Public Fighting Accident	0	2009
region	30	Public Fighting Accident	0	2009
region	12	Superstitious Beliefs Theft	4	2009
country	TZ	Murdered Female	670	2009
country	TZ	Robbery Thieves	290	2009
country	TZ	Murdered Male	3073	2009
country	TZ	Cattle Thieves	200	2009
country	TZ	Murdered Cattle Owners	50	2009
region	13	Superstitious Beliefs Theft	1	2009
country	TZ	Robbery Victims	99	2009
region	30	Superstitious Beliefs Theft	3	2009
region	1	Superstitious Beliefs Albino	1	2009
region	2	Superstitious Beliefs Albino	1	2009
region	3	Superstitious Beliefs Albino	11	2009
country	TZ	Superstitious Beliefs Others	507	2009
country	TZ	Public Fighting Pombe shops	178	2009
country	TZ	Public Fighting Jelousy	330	2009
country	TZ	Public Fighting Domestic	460	2009
country	TZ	Public Fighting Grudge	206	2009
country	TZ	Public Fighting Accident	84	2009
country	TZ	Superstitious Beliefs Theft	507	2009
region	12	Minor Offences	2611	2009
region	13	Minor Offences	2639	2009
region	8	Minor Offences	2528	2009
region	13	Normal Accidents	7	2009
region	13	Female Injured Persons	7	2009
region	13	Fatal Accidents	21	2009
region	13	Female Suspects	6	2009
region	13	Male Injured Persons	26	2009
region	13	Injury Accidents	14	2009
region	13	Male Suspects	3621	2009
region	12	Injury Accidents	4	2009
region	12	Male Injured Persons	28	2009
region	12	Male Suspects	3916	2009
region	12	Female Suspects	7	2009
region	12	Normal Accidents	4	2009
region	12	Fatal Accidents	6	2009
region	12	Female Injured Persons	5	2009
region	8	Male Injured Persons	100	2009
region	8	Male Suspects	2561	2009
region	8	Injury Accidents	52	2009
region	8	Normal Accidents	1	2009
region	8	Female Injured Persons	27	2009
region	8	Fatal Accidents	14	2009
region	8	Female Suspects	0	2009
region	1	Superstitious Beliefs Old Age	3	2009
region	2	Superstitious Beliefs Old Age	3	2009
region	3	Superstitious Beliefs Old Age	10	2009
region	4	Superstitious Beliefs Old Age	22	2009
region	5	Superstitious Beliefs Old Age	9	2009
region	6	Superstitious Beliefs Old Age	15	2009
region	9	Superstitious Beliefs Old Age	12	2009
region	10	Superstitious Beliefs Old Age	14	2009
region	11	Superstitious Beliefs Old Age	3	2009
region	14	Superstitious Beliefs Old Age	0	2009
region	16	Superstitious Beliefs Old Age	5	2009
region	15	Superstitious Beliefs Old Age	0	2009
region	17	Superstitious Beliefs Old Age	6	2009
region	18	Superstitious Beliefs Old Age	1	2009
region	19	Superstitious Beliefs Old Age	0	2009
region	20	Superstitious Beliefs Old Age	25	2009
region	21	Superstitious Beliefs Old Age	9	2009
region	22	Superstitious Beliefs Old Age	6	2009
region	23	Superstitious Beliefs Old Age	14	2009
region	24	Superstitious Beliefs Old Age	3	2009
region	25	Superstitious Beliefs Old Age	14	2009
region	26	Superstitious Beliefs Old Age	31	2009
region	27	Superstitious Beliefs Old Age	24	2009
region	29	Superstitious Beliefs Old Age	0	2009
region	28	Superstitious Beliefs Old Age	5	2009
region	7	Superstitious Beliefs Old Age	0	2009
region	8	Superstitious Beliefs Old Age	0	2009
region	12	Superstitious Beliefs Old Age	1	2009
region	13	Superstitious Beliefs Old Age	0	2009
region	30	Superstitious Beliefs Old Age	0	2009
country	TZ	Superstitious Beliefs Old Age	235	2009
region	4	Superstitious Beliefs Albino	8	2009
region	5	Superstitious Beliefs Albino	0	2009
region	6	Superstitious Beliefs Albino	3	2009
region	9	Superstitious Beliefs Albino	7	2009
region	10	Superstitious Beliefs Albino	5	2009
region	11	Superstitious Beliefs Albino	0	2009
region	14	Superstitious Beliefs Albino	9	2009
region	16	Superstitious Beliefs Albino	4	2009
region	15	Superstitious Beliefs Albino	0	2009
region	17	Superstitious Beliefs Albino	27	2009
region	18	Superstitious Beliefs Albino	7	2009
region	19	Superstitious Beliefs Albino	0	2009
region	20	Superstitious Beliefs Albino	3	2009
region	21	Superstitious Beliefs Albino	7	2009
region	22	Superstitious Beliefs Albino	5	2009
region	23	Superstitious Beliefs Albino	11	2009
region	24	Superstitious Beliefs Albino	0	2009
region	25	Superstitious Beliefs Albino	21	2009
region	26	Superstitious Beliefs Albino	8	2009
region	27	Superstitious Beliefs Albino	2	2009
region	29	Superstitious Beliefs Albino	50	2009
region	28	Superstitious Beliefs Albino	0	2009
region	7	Superstitious Beliefs Albino	0	2009
region	8	Superstitious Beliefs Albino	0	2009
region	12	Superstitious Beliefs Albino	0	2009
region	13	Superstitious Beliefs Albino	0	2009
region	30	Superstitious Beliefs Albino	0	2009
country	TZ	Superstitious Beliefs Albino	190	2009
region	28	Superstitious Beliefs Others	11	2009
region	7	Superstitious Beliefs Others	0	2009
region	8	Superstitious Beliefs Others	0	2009
region	12	Superstitious Beliefs Others	4	2009
region	13	Superstitious Beliefs Others	1	2009
region	30	Superstitious Beliefs Others	3	2009
region	1	Public Fighting Domestic	16	2009
region	2	Public Fighting Domestic	22	2009
region	3	Public Fighting Domestic	24	2009
region	4	Public Fighting Domestic	22	2009
region	5	Public Fighting Domestic	12	2009
region	6	Public Fighting Domestic	38	2009
region	9	Public Fighting Domestic	5	2009
region	10	Public Fighting Domestic	5	2009
region	11	Public Fighting Domestic	26	2009
region	14	Public Fighting Domestic	20	2009
region	16	Public Fighting Domestic	13	2009
region	15	Public Fighting Domestic	14	2009
region	17	Public Fighting Domestic	32	2009
region	18	Public Fighting Domestic	29	2009
region	19	Public Fighting Domestic	9	2009
region	20	Public Fighting Domestic	26	2009
region	21	Public Fighting Domestic	13	2009
region	22	Public Fighting Domestic	20	2009
region	23	Public Fighting Domestic	24	2009
region	24	Public Fighting Domestic	20	2009
region	25	Public Fighting Domestic	7	2009
region	26	Public Fighting Domestic	9	2009
region	27	Public Fighting Domestic	24	2009
region	29	Public Fighting Domestic	16	2009
region	28	Public Fighting Domestic	12	2009
region	7	Public Fighting Domestic	0	2009
region	8	Public Fighting Domestic	0	2009
region	12	Public Fighting Domestic	0	2009
region	13	Public Fighting Domestic	0	2009
region	30	Public Fighting Domestic	2	2009
region	1	Public Fighting Pombe shops	1	2009
region	2	Public Fighting Pombe shops	7	2009
region	3	Public Fighting Pombe shops	20	2009
region	4	Public Fighting Pombe shops	3	2009
region	5	Public Fighting Pombe shops	5	2009
region	6	Public Fighting Pombe shops	7	2009
region	9	Public Fighting Pombe shops	3	2009
region	10	Public Fighting Pombe shops	5	2009
region	11	Public Fighting Pombe shops	3	2009
region	14	Public Fighting Pombe shops	7	2009
region	16	Public Fighting Pombe shops	10	2009
region	15	Public Fighting Pombe shops	7	2009
region	17	Public Fighting Pombe shops	27	2009
region	18	Public Fighting Pombe shops	4	2009
region	19	Public Fighting Pombe shops	4	2009
region	20	Public Fighting Pombe shops	11	2009
region	21	Public Fighting Pombe shops	5	2009
region	22	Public Fighting Pombe shops	6	2009
region	23	Public Fighting Pombe shops	5	2009
region	1	Murdered Other Reasons	28	2009
region	2	Murdered Other Reasons	70	2009
region	3	Murdered Other Reasons	43	2009
region	4	Murdered Other Reasons	48	2009
region	5	Murdered Other Reasons	18	2009
region	6	Murdered Other Reasons	110	2009
region	9	Murdered Other Reasons	43	2009
region	24	Public Fighting Pombe shops	13	2009
region	25	Public Fighting Pombe shops	6	2009
region	26	Public Fighting Pombe shops	2	2009
region	27	Public Fighting Pombe shops	2	2009
region	29	Public Fighting Pombe shops	6	2009
region	28	Public Fighting Pombe shops	7	2009
region	7	Public Fighting Pombe shops	0	2009
region	8	Public Fighting Pombe shops	0	2009
region	12	Public Fighting Pombe shops	0	2009
region	13	Public Fighting Pombe shops	2	2009
region	30	Public Fighting Pombe shops	0	2009
region	1	Public Fighting Jelousy	4	2009
region	2	Public Fighting Jelousy	20	2009
region	3	Public Fighting Jelousy	34	2009
region	4	Public Fighting Jelousy	8	2009
region	5	Public Fighting Jelousy	5	2009
region	6	Public Fighting Jelousy	18	2009
region	9	Public Fighting Jelousy	6	2009
region	10	Public Fighting Jelousy	9	2009
region	11	Public Fighting Jelousy	6	2009
region	14	Public Fighting Jelousy	5	2009
region	16	Public Fighting Jelousy	9	2009
region	15	Public Fighting Jelousy	5	2009
region	17	Public Fighting Jelousy	51	2009
region	18	Public Fighting Jelousy	20	2009
region	19	Public Fighting Jelousy	2	2009
region	20	Public Fighting Jelousy	9	2009
region	21	Public Fighting Jelousy	10	2009
region	22	Public Fighting Jelousy	8	2009
region	23	Public Fighting Jelousy	8	2009
region	24	Public Fighting Jelousy	8	2009
region	25	Public Fighting Jelousy	8	2009
region	26	Public Fighting Jelousy	15	2009
region	27	Public Fighting Jelousy	8	2009
region	29	Public Fighting Jelousy	41	2009
region	28	Public Fighting Jelousy	12	2009
region	7	Public Fighting Jelousy	0	2009
region	8	Public Fighting Jelousy	1	2009
region	12	Public Fighting Jelousy	0	2009
region	13	Public Fighting Jelousy	0	2009
region	30	Public Fighting Jelousy	0	2009
region	1	Public Fighting Grudge	4	2009
region	2	Public Fighting Grudge	6	2009
region	3	Public Fighting Grudge	9	2009
region	4	Public Fighting Grudge	3	2009
region	5	Public Fighting Grudge	0	2009
region	6	Public Fighting Grudge	22	2009
region	9	Public Fighting Grudge	4	2009
region	10	Public Fighting Grudge	6	2009
region	11	Public Fighting Grudge	5	2009
region	14	Public Fighting Grudge	6	2009
region	16	Public Fighting Grudge	3	2009
region	15	Public Fighting Grudge	0	2009
region	17	Public Fighting Grudge	19	2009
region	18	Public Fighting Grudge	11	2009
region	19	Public Fighting Grudge	1	2009
region	20	Public Fighting Grudge	11	2009
region	21	Public Fighting Grudge	4	2009
region	22	Public Fighting Grudge	3	2009
region	23	Public Fighting Grudge	8	2009
region	24	Public Fighting Grudge	3	2009
region	25	Public Fighting Grudge	7	2009
region	26	Public Fighting Grudge	9	2009
region	27	Public Fighting Grudge	12	2009
region	29	Public Fighting Grudge	41	2009
region	28	Public Fighting Grudge	9	2009
region	7	Public Fighting Grudge	0	2009
region	8	Public Fighting Grudge	0	2009
region	12	Public Fighting Grudge	0	2009
region	13	Public Fighting Grudge	0	2009
region	30	Public Fighting Grudge	0	2009
region	10	Murdered Other Reasons	26	2009
region	11	Murdered Other Reasons	32	2009
region	14	Murdered Other Reasons	7	2009
region	16	Murdered Other Reasons	59	2009
region	15	Murdered Other Reasons	44	2009
region	17	Murdered Other Reasons	45	2009
region	18	Murdered Other Reasons	38	2009
region	19	Murdered Other Reasons	15	2009
region	20	Murdered Other Reasons	12	2009
region	21	Murdered Other Reasons	19	2009
region	22	Murdered Other Reasons	24	2009
region	23	Murdered Other Reasons	18	2009
region	24	Murdered Other Reasons	6	2009
region	25	Murdered Other Reasons	24	2009
region	26	Murdered Other Reasons	20	2009
region	27	Murdered Other Reasons	15	2009
region	29	Murdered Other Reasons	84	2009
region	28	Murdered Other Reasons	26	2009
region	7	Murdered Other Reasons	0	2009
region	8	Murdered Other Reasons	1	2009
region	12	Murdered Other Reasons	1	2009
region	13	Murdered Other Reasons	0	2009
region	30	Murdered Other Reasons	0	2009
country	TZ	Murdered Other Reasons	876	2009
\.


--
-- Name: pk_trafficandcrimes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY trafficandcrimes
    ADD CONSTRAINT pk_trafficandcrimes PRIMARY KEY (geo_level, geo_code, geo_version, "traffic and crimes");


--
-- PostgreSQL database dump complete
--

