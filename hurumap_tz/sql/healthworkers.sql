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

ALTER TABLE IF EXISTS ONLY public.healthworkers DROP CONSTRAINT IF EXISTS pk_healthworkers;
DROP TABLE IF EXISTS public.healthworkers;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: healthworkers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE healthworkers (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "health workers" character varying(128) NOT NULL,
    total double precision,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: healthworkers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY healthworkers (geo_level, geo_code, "health workers", total, geo_version) FROM stdin;
region	1	assistant medical oficer	67	2009
region	1	assistant nursing officer	258	2009
region	1	clinical assistant	35	2009
region	1	clinical officer	326	2009
region	1	medical attendant	944	2009
region	1	medical officers	82	2009
region	1	nurses	693	2009
region	1	nursing officer	98	2009
region	1	nutrition officer	3	2009
region	1	MO and AMO per 10000	0.819999999999999951	2009
region	1	nurses and midwives per 10000	3.83999999999999986	2009
region	1	pharmacists per 10000	0.0700000000000000067	2009
region	1	clinicians per 10000	3.00999999999999979	2009
region	1	HRH patient ratio	6.84999999999999964	2009
region	3	assistant medical oficer	217	2009
region	3	assistant nursing officer	1352	2009
region	3	clinical assistant	48	2009
region	3	clinical officer	653	2009
region	3	medical attendant	1640	2009
region	3	medical officers	541	2009
region	3	nurses	1546	2009
region	3	nursing officer	604	2009
region	3	nutrition officer	15	2009
region	3	MO and AMO per 10000	1.52000000000000002	2009
region	3	nurses and midwives per 10000	3.10000000000000009	2009
region	3	pharmacists per 10000	0.200000000000000011	2009
region	3	clinicians per 10000	3.66000000000000014	2009
region	3	HRH patient ratio	6.76999999999999957	2009
region	2	assistant medical oficer	72	2009
region	2	assistant nursing officer	201	2009
region	2	clinical assistant	50	2009
region	2	clinical officer	298	2009
region	2	medical attendant	748	2009
region	2	medical officers	98	2009
region	2	nurses	704	2009
region	2	nursing officer	88	2009
region	2	nutrition officer	3	2009
region	2	MO and AMO per 10000	0.780000000000000027	2009
region	2	nurses and midwives per 10000	3.2200000000000002	2009
region	2	pharmacists per 10000	0.110000000000000001	2009
region	2	clinicians per 10000	2.4700000000000002	2009
region	2	HRH patient ratio	5.69000000000000039	2009
region	4	assistant medical oficer	37	2009
region	4	assistant nursing officer	115	2009
region	4	clinical assistant	44	2009
region	4	clinical officer	134	2009
region	4	medical attendant	340	2009
region	4	medical officers	15	2009
region	4	nurses	283	2009
region	4	nursing officer	6	2009
region	4	nutrition officer	0	2009
region	4	MO and AMO per 10000	0.280000000000000027	2009
region	4	nurses and midwives per 10000	1.53000000000000003	2009
region	4	pharmacists per 10000	0.0200000000000000004	2009
region	4	clinicians per 10000	1.25	2009
region	4	HRH patient ratio	2.7799999999999998	2009
region	5	assistant medical oficer	53	2009
region	5	assistant nursing officer	90	2009
region	5	clinical assistant	51	2009
region	5	clinical officer	241	2009
region	5	medical attendant	509	2009
region	5	medical officers	51	2009
region	5	nurses	617	2009
region	5	nursing officer	26	2009
region	5	nutrition officer	4	2009
region	5	MO and AMO per 10000	1.08000000000000007	2009
region	5	nurses and midwives per 10000	6.37999999999999989	2009
region	5	pharmacists per 10000	0.170000000000000012	2009
region	5	clinicians per 10000	4.24000000000000021	2009
region	5	HRH patient ratio	10.6199999999999992	2009
region	6	assistant medical oficer	64	2009
region	6	assistant nursing officer	281	2009
region	6	clinical assistant	31	2009
region	6	clinical officer	203	2009
region	6	medical attendant	1002	2009
region	6	medical officers	31	2009
region	6	nurses	745	2009
region	6	nursing officer	56	2009
region	6	nutrition officer	2	2009
region	6	MO and AMO per 10000	0.359999999999999987	2009
region	6	nurses and midwives per 10000	2.81000000000000005	2009
region	6	pharmacists per 10000	0.0299999999999999989	2009
region	6	clinicians per 10000	1.28000000000000003	2009
region	6	HRH patient ratio	4.08999999999999986	2009
region	9	assistant medical oficer	18	2009
region	9	assistant nursing officer	20	2009
region	9	clinical assistant	9	2009
region	9	clinical officer	31	2009
region	9	medical attendant	140	2009
region	9	medical officers	7	2009
region	9	nurses	66	2009
region	9	nursing officer	4	2009
region	9	nutrition officer	0	2009
region	9	MO and AMO per 10000	0.409999999999999976	2009
region	9	nurses and midwives per 10000	1.08000000000000007	2009
region	9	pharmacists per 10000	0.0299999999999999989	2009
region	9	clinicians per 10000	1.08000000000000007	2009
region	9	HRH patient ratio	2.16999999999999993	2009
region	10	assistant medical oficer	61	2009
region	10	assistant nursing officer	107	2009
region	10	clinical assistant	52	2009
region	10	clinical officer	124	2009
region	10	medical attendant	612	2009
region	10	medical officers	13	2009
region	10	nurses	409	2009
region	10	nursing officer	23	2009
region	10	nutrition officer	0	2009
region	10	MO and AMO per 10000	0.330000000000000016	2009
region	10	nurses and midwives per 10000	1.82000000000000006	2009
region	10	pharmacists per 10000	0.0299999999999999989	2009
region	10	clinicians per 10000	1.1399999999999999	2009
region	10	HRH patient ratio	2.95000000000000018	2009
region	11	assistant medical oficer	151	2009
region	11	assistant nursing officer	505	2009
region	11	clinical assistant	60	2009
region	11	clinical officer	488	2009
region	11	medical attendant	1927	2009
region	11	medical officers	100	2009
region	11	nurses	1074	2009
region	11	nursing officer	164	2009
region	11	nutrition officer	4	2009
region	11	MO and AMO per 10000	1.46999999999999997	2009
region	11	nurses and midwives per 10000	6.28000000000000025	2009
region	11	pharmacists per 10000	0.110000000000000001	2009
region	11	clinicians per 10000	4.95000000000000018	2009
region	11	HRH patient ratio	11.2400000000000002	2009
region	14	assistant medical oficer	57	2009
region	14	assistant nursing officer	150	2009
region	14	clinical assistant	28	2009
region	14	clinical officer	166	2009
region	14	medical attendant	647	2009
region	14	medical officers	27	2009
region	14	nurses	333	2009
region	14	nursing officer	8	2009
region	14	nutrition officer	0	2009
region	14	MO and AMO per 10000	0.949999999999999956	2009
region	14	nurses and midwives per 10000	3.77000000000000002	2009
region	14	pharmacists per 10000	0.0299999999999999989	2009
region	14	clinicians per 10000	3.27000000000000002	2009
region	14	HRH patient ratio	7.04000000000000004	2009
region	15	assistant medical oficer	51	2009
region	15	assistant nursing officer	354	2009
region	15	clinical assistant	41	2009
region	15	clinical officer	176	2009
region	15	medical attendant	729	2009
region	15	medical officers	37	2009
region	15	nurses	459	2009
region	15	nursing officer	41	2009
region	15	nutrition officer	2	2009
region	15	MO and AMO per 10000	0.569999999999999951	2009
region	15	nurses and midwives per 10000	2.99000000000000021	2009
region	15	pharmacists per 10000	0.0500000000000000028	2009
region	15	clinicians per 10000	2.04999999999999982	2009
region	15	HRH patient ratio	5.04000000000000004	2009
region	16	assistant medical oficer	49	2009
region	16	assistant nursing officer	136	2009
region	16	clinical assistant	55	2009
region	16	clinical officer	201	2009
region	16	medical attendant	622	2009
region	16	medical officers	33	2009
region	16	nurses	640	2009
region	16	nursing officer	50	2009
region	16	nutrition officer	2	2009
region	16	MO and AMO per 10000	0.440000000000000002	2009
region	16	nurses and midwives per 10000	3.45999999999999996	2009
region	16	pharmacists per 10000	0.0400000000000000008	2009
region	16	clinicians per 10000	1.87999999999999989	2009
region	16	HRH patient ratio	5.34999999999999964	2009
region	17	assistant medical oficer	126	2009
region	17	assistant nursing officer	379	2009
region	17	clinical assistant	124	2009
region	17	clinical officer	384	2009
region	17	medical attendant	1846	2009
region	17	medical officers	200	2009
region	17	nurses	1332	2009
region	17	nursing officer	193	2009
region	17	nutrition officer	9	2009
region	17	MO and AMO per 10000	1.12999999999999989	2009
region	17	nurses and midwives per 10000	4.62000000000000011	2009
region	17	pharmacists per 10000	0.140000000000000013	2009
region	17	clinicians per 10000	3.06999999999999984	2009
region	17	HRH patient ratio	7.69000000000000039	2009
region	18	assistant medical oficer	134	2009
region	18	assistant nursing officer	233	2009
region	18	clinical assistant	68	2009
region	18	clinical officer	529	2009
region	18	medical attendant	1032	2009
region	18	medical officers	75	2009
region	18	nurses	793	2009
region	18	nursing officer	167	2009
region	18	nutrition officer	1	2009
region	18	MO and AMO per 10000	0.890000000000000013	2009
region	18	nurses and midwives per 10000	3.37999999999999989	2009
region	18	pharmacists per 10000	0.0599999999999999978	2009
region	18	clinicians per 10000	3.58000000000000007	2009
region	18	HRH patient ratio	6.96999999999999975	2009
region	19	assistant medical oficer	54	2009
region	19	assistant nursing officer	212	2009
region	19	clinical assistant	29	2009
region	19	clinical officer	157	2009
region	19	medical attendant	567	2009
region	19	medical officers	42	2009
region	19	nurses	370	2009
region	19	nursing officer	17	2009
region	19	nutrition officer	1	2009
region	19	MO and AMO per 10000	0.729999999999999982	2009
region	19	nurses and midwives per 10000	2.83000000000000007	2009
region	19	pharmacists per 10000	0.0299999999999999989	2009
region	19	clinicians per 10000	2.22999999999999998	2009
region	19	HRH patient ratio	5.05999999999999961	2009
region	20	assistant medical oficer	66	2009
region	20	assistant nursing officer	381	2009
region	20	clinical assistant	72	2009
region	20	clinical officer	280	2009
region	20	medical attendant	1177	2009
region	20	medical officers	117	2009
region	20	nurses	985	2009
region	20	nursing officer	72	2009
region	20	nutrition officer	1	2009
region	20	MO and AMO per 10000	0.619999999999999996	2009
region	20	nurses and midwives per 10000	3.31000000000000005	2009
region	20	pharmacists per 10000	0.0700000000000000067	2009
region	20	clinicians per 10000	1.93999999999999995	2009
region	20	HRH patient ratio	5.25	2009
region	21	assistant medical oficer	33	2009
region	21	assistant nursing officer	126	2009
region	21	clinical assistant	52	2009
region	21	clinical officer	108	2009
region	21	medical attendant	600	2009
region	21	medical officers	22	2009
region	21	nurses	531	2009
region	21	nursing officer	28	2009
region	21	nutrition officer	0	2009
region	21	MO and AMO per 10000	0.770000000000000018	2009
region	21	nurses and midwives per 10000	7.41999999999999993	2009
region	21	pharmacists per 10000	0.130000000000000004	2009
region	21	clinicians per 10000	3.16000000000000014	2009
region	21	HRH patient ratio	10.5800000000000001	2009
region	22	assistant medical oficer	74	2009
region	22	assistant nursing officer	114	2009
region	22	clinical assistant	31	2009
region	22	clinical officer	406	2009
region	22	medical attendant	621	2009
region	22	medical officers	59	2009
region	22	nurses	469	2009
region	22	nursing officer	126	2009
region	22	nutrition officer	1	2009
region	22	MO and AMO per 10000	1.14999999999999991	2009
region	22	nurses and midwives per 10000	4.05999999999999961	2009
region	22	pharmacists per 10000	0.160000000000000003	2009
region	22	clinicians per 10000	5.16000000000000014	2009
region	22	HRH patient ratio	9.22000000000000064	2009
region	23	assistant medical oficer	26	2009
region	23	assistant nursing officer	72	2009
region	23	clinical assistant	33	2009
region	23	clinical officer	102	2009
region	23	medical attendant	516	2009
region	23	medical officers	25	2009
region	23	nurses	276	2009
region	23	nursing officer	12	2009
region	23	nutrition officer	0	2009
region	23	MO and AMO per 10000	0.469999999999999973	2009
region	23	nurses and midwives per 10000	2.54999999999999982	2009
region	23	pharmacists per 10000	0.0400000000000000008	2009
region	23	clinicians per 10000	1.76000000000000001	2009
region	23	HRH patient ratio	4.30999999999999961	2009
region	24	assistant medical oficer	66	2009
region	24	assistant nursing officer	116	2009
region	24	clinical assistant	66	2009
region	24	clinical officer	181	2009
region	24	medical attendant	925	2009
region	24	medical officers	25	2009
region	24	nurses	602	2009
region	24	nursing officer	32	2009
region	24	nutrition officer	5	2009
region	24	MO and AMO per 10000	0.630000000000000004	2009
region	24	nurses and midwives per 10000	4.16000000000000014	2009
region	24	pharmacists per 10000	0.0400000000000000008	2009
region	24	clinicians per 10000	2.45000000000000018	2009
region	24	HRH patient ratio	6.61000000000000032	2009
region	25	assistant medical oficer	39	2009
region	25	assistant nursing officer	162	2009
region	25	clinical assistant	53	2009
region	25	clinical officer	162	2009
region	25	medical attendant	650	2009
region	25	medical officers	15	2009
region	25	nurses	431	2009
region	25	nursing officer	18	2009
region	25	nutrition officer	1	2009
region	25	MO and AMO per 10000	0.340000000000000024	2009
region	25	nurses and midwives per 10000	2.68000000000000016	2009
region	25	pharmacists per 10000	0.0400000000000000008	2009
region	25	clinicians per 10000	1.70999999999999996	2009
region	25	HRH patient ratio	4.37999999999999989	2009
region	26	assistant medical oficer	23	2009
region	26	assistant nursing officer	70	2009
region	26	clinical assistant	53	2009
region	26	clinical officer	104	2009
region	26	medical attendant	415	2009
region	26	medical officers	11	2009
region	26	nurses	223	2009
region	26	nursing officer	1	2009
region	26	nutrition officer	0	2009
region	26	MO and AMO per 10000	0.209999999999999992	2009
region	26	nurses and midwives per 10000	1.35000000000000009	2009
region	26	pharmacists per 10000	0.0200000000000000004	2009
region	26	clinicians per 10000	1.18999999999999995	2009
region	26	HRH patient ratio	2.54000000000000004	2009
region	27	assistant medical oficer	44	2009
region	27	assistant nursing officer	113	2009
region	27	clinical assistant	24	2009
region	27	clinical officer	125	2009
region	27	medical attendant	655	2009
region	27	medical officers	14	2009
region	27	nurses	460	2009
region	27	nursing officer	53	2009
region	27	nutrition officer	3	2009
region	27	MO and AMO per 10000	0.400000000000000022	2009
region	27	nurses and midwives per 10000	3.18000000000000016	2009
region	27	pharmacists per 10000	0.0299999999999999989	2009
region	27	clinicians per 10000	1.46999999999999997	2009
region	27	HRH patient ratio	4.65000000000000036	2009
region	29	assistant medical oficer	47	2009
region	29	assistant nursing officer	155	2009
region	29	clinical assistant	45	2009
region	29	clinical officer	139	2009
region	29	medical attendant	548	2009
region	29	medical officers	11	2009
region	29	nurses	372	2009
region	29	nursing officer	18	2009
region	29	nutrition officer	0	2009
region	29	MO and AMO per 10000	0.239999999999999991	2009
region	29	nurses and midwives per 10000	1.52000000000000002	2009
region	29	pharmacists per 10000	0	2009
region	29	clinicians per 10000	1.02000000000000002	2009
region	29	HRH patient ratio	2.5299999999999998	2009
region	28	assistant medical oficer	108	2009
region	28	assistant nursing officer	199	2009
region	28	clinical assistant	62	2009
region	28	clinical officer	446	2009
region	28	medical attendant	1210	2009
region	28	medical officers	58	2009
region	28	nurses	667	2009
region	28	nursing officer	56	2009
region	28	nutrition officer	3	2009
region	28	MO and AMO per 10000	0.770000000000000018	2009
region	28	nurses and midwives per 10000	3.08999999999999986	2009
region	28	pharmacists per 10000	0.0800000000000000017	2009
region	28	clinicians per 10000	3.29999999999999982	2009
region	28	HRH patient ratio	6.38999999999999968	2009
region	7	assistant medical oficer	\N	2009
region	7	assistant nursing officer	\N	2009
region	7	clinical assistant	\N	2009
region	7	clinical officer	\N	2009
region	7	medical attendant	\N	2009
region	7	medical officers	\N	2009
region	7	nurses	\N	2009
region	7	nursing officer	\N	2009
region	7	nutrition officer	\N	2009
region	7	MO and AMO per 10000	\N	2009
region	7	nurses and midwives per 10000	\N	2009
region	7	pharmacists per 10000	\N	2009
region	7	clinicians per 10000	\N	2009
region	7	HRH patient ratio	\N	2009
region	8	assistant medical oficer	\N	2009
region	8	assistant nursing officer	\N	2009
region	8	clinical assistant	\N	2009
region	8	clinical officer	\N	2009
region	8	medical attendant	\N	2009
region	8	medical officers	\N	2009
region	8	nurses	\N	2009
region	8	nursing officer	\N	2009
region	8	nutrition officer	\N	2009
region	8	MO and AMO per 10000	\N	2009
region	8	nurses and midwives per 10000	\N	2009
region	8	pharmacists per 10000	\N	2009
region	8	clinicians per 10000	\N	2009
region	8	HRH patient ratio	\N	2009
region	12	assistant medical oficer	\N	2009
region	12	assistant nursing officer	\N	2009
region	12	clinical assistant	\N	2009
region	12	clinical officer	\N	2009
region	12	medical attendant	\N	2009
region	12	medical officers	\N	2009
region	12	nurses	\N	2009
region	12	nursing officer	\N	2009
region	12	nutrition officer	\N	2009
region	12	MO and AMO per 10000	\N	2009
region	12	nurses and midwives per 10000	\N	2009
region	12	pharmacists per 10000	\N	2009
region	12	clinicians per 10000	\N	2009
region	12	HRH patient ratio	\N	2009
region	13	assistant medical oficer	\N	2009
region	13	assistant nursing officer	\N	2009
region	13	clinical assistant	\N	2009
region	13	clinical officer	\N	2009
region	13	medical attendant	\N	2009
region	13	medical officers	\N	2009
region	13	nurses	\N	2009
region	13	nursing officer	\N	2009
region	13	nutrition officer	\N	2009
region	13	MO and AMO per 10000	\N	2009
region	13	nurses and midwives per 10000	\N	2009
region	13	pharmacists per 10000	\N	2009
region	13	clinicians per 10000	\N	2009
region	13	HRH patient ratio	\N	2009
region	30	assistant medical oficer	\N	2009
region	30	assistant nursing officer	\N	2009
region	30	clinical assistant	\N	2009
region	30	clinical officer	\N	2009
region	30	medical attendant	\N	2009
region	30	medical officers	\N	2009
region	30	nurses	\N	2009
region	30	nursing officer	\N	2009
region	30	nutrition officer	\N	2009
region	30	MO and AMO per 10000	\N	2009
region	30	nurses and midwives per 10000	\N	2009
region	30	pharmacists per 10000	\N	2009
region	30	clinicians per 10000	\N	2009
region	30	HRH patient ratio	\N	2009
country	TZ	assistant medical oficer	1737	2009
country	TZ	assistant nursing officer	5901	2009
country	TZ	clinical assistant	1216	2009
country	TZ	clinical officer	6164	2009
country	TZ	medical attendant	20622	2009
country	TZ	medical officers	1709	2009
country	TZ	nurses	15080	2009
country	TZ	nursing officer	1961	2009
country	TZ	nutrition officer	60	2009
country	TZ	MO and AMO per 10000	0.689999999999999947	2009
country	TZ	nurses and midwives per 10000	3.37999999999999989	2009
country	TZ	pharmacists per 10000	0.0700000000000000067	2009
country	TZ	clinicians per 10000	2.49000000000000021	2009
country	TZ	HRH patient ratio	5.87000000000000011	2009
\.


--
-- Name: pk_healthworkers; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY healthworkers
    ADD CONSTRAINT pk_healthworkers PRIMARY KEY (geo_level, geo_code, geo_version, "health workers");


--
-- PostgreSQL database dump complete
--

