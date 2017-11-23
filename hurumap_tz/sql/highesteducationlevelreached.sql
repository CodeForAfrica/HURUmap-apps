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

ALTER TABLE IF EXISTS ONLY public.highesteducationlevelreached DROP CONSTRAINT IF EXISTS pk_highesteducationlevelreached;
DROP TABLE IF EXISTS public.highesteducationlevelreached;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: highesteducationlevelreached; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE highesteducationlevelreached (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "highest education level reached" character varying(128) NOT NULL,
    total integer,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: highesteducationlevelreached; Type: TABLE DATA; Schema: public; Owner: -
--

COPY highesteducationlevelreached (geo_level, geo_code, "highest education level reached", total, geo_version) FROM stdin;
region	22	basic literacy	4525	
region	22	madrassa	344	
region	22	none	97649	
region	22	pre-primary	95423	
region	22	primary	740539	
region	22	secondary	437294	
region	22	tertiary	112740	
region	22	university	45680	
region	22	youth polytechnic	8262	
region	28	basic literacy	419	
region	28	madrassa	17	
region	28	none	43642	
region	28	pre-primary	26192	
region	28	primary	201577	
region	28	secondary	49082	
region	28	tertiary	8409	
region	28	university	2197	
region	28	youth polytechnic	1505	
region	30	basic literacy	551	
region	30	madrassa	52	
region	30	none	140043	
region	30	pre-primary	38957	
region	30	primary	237325	
region	30	secondary	63547	
region	30	tertiary	14654	
region	30	university	3896	
region	30	youth polytechnic	1233	
region	34	basic literacy	1205	
region	34	madrassa	504	
region	34	none	144098	
region	34	pre-primary	45718	
region	34	primary	253654	
region	34	secondary	116920	
region	34	tertiary	31561	
region	34	university	19186	
region	34	youth polytechnic	2772	
region	35	basic literacy	647	
region	35	madrassa	80	
region	35	none	52661	
region	35	pre-primary	38252	
region	35	primary	322587	
region	35	secondary	92317	
region	35	tertiary	17826	
region	35	university	5298	
region	35	youth polytechnic	2104	
region	36	basic literacy	1015	
region	36	madrassa	79	
region	36	none	87597	
region	36	pre-primary	54658	
region	36	primary	503574	
region	36	secondary	126073	
region	36	tertiary	20942	
region	36	university	5388	
region	36	youth polytechnic	2921	
region	37	basic literacy	1599	
region	37	madrassa	230	
region	37	none	211448	
region	37	pre-primary	108891	
region	37	primary	883557	
region	37	secondary	224519	
region	37	tertiary	32942	
region	7	basic literacy	423	
region	7	madrassa	39662	
region	7	none	379051	
region	7	pre-primary	8775	
region	7	primary	112347	
region	7	secondary	24421	
region	7	tertiary	3095	
region	7	university	2461	
region	11	basic literacy	125	
region	11	madrassa	1076	
region	11	none	54105	
region	11	pre-primary	9751	
region	11	primary	45724	
region	11	secondary	13589	
region	11	tertiary	2672	
region	11	university	931	
region	11	youth polytechnic	346	
region	14	basic literacy	1542	
region	14	madrassa	49	
region	14	none	56517	
region	14	pre-primary	18718	
region	14	primary	281293	
region	14	secondary	90932	
region	14	tertiary	17140	
region	14	university	5031	
region	14	youth polytechnic	3784	
region	15	basic literacy	2185	
region	15	madrassa	234	
region	15	none	168726	
region	15	pre-primary	57502	
region	15	primary	555091	
region	15	secondary	94245	
region	15	tertiary	17251	
region	20	basic literacy	1627	
region	20	madrassa	118	
region	20	none	45033	
region	20	pre-primary	21983	
region	20	primary	288571	
region	20	secondary	112656	
region	20	tertiary	15505	
region	20	university	4706	
region	40	basic literacy	640	
region	40	madrassa	120	
region	40	none	105650	
region	40	pre-primary	51408	
region	40	primary	400807	
region	40	secondary	85031	
region	40	tertiary	11784	
region	40	university	3753	
region	40	youth polytechnic	1661	
region	37	university	13329	
region	37	youth polytechnic	3156	
region	39	basic literacy	1333	
region	39	madrassa	114	
region	39	none	143688	
region	39	pre-primary	86555	
region	39	primary	731968	
region	39	secondary	217310	
region	39	tertiary	30024	
region	39	university	9351	
region	39	youth polytechnic	2641	
region	42	basic literacy	1491	
region	42	madrassa	164	
region	42	none	75700	
region	42	pre-primary	83062	
region	42	primary	481966	
region	42	secondary	167723	
region	42	tertiary	32808	
region	42	university	16264	
region	42	youth polytechnic	3004	
region	43	basic literacy	774	
region	43	madrassa	42	
region	43	none	87603	
region	43	pre-primary	91107	
region	43	primary	527361	
region	43	secondary	125211	
region	43	tertiary	16259	
region	43	university	5845	
region	43	youth polytechnic	1704	
region	45	basic literacy	1179	
region	45	madrassa	65	
region	45	none	118497	
region	45	pre-primary	86681	
region	45	primary	610717	
region	45	secondary	270662	
region	45	tertiary	30346	
region	45	university	10923	
region	45	youth polytechnic	4269	
region	21	basic literacy	3154	
region	21	madrassa	82	
region	21	none	80762	
region	21	pre-primary	33452	
region	21	primary	504390	
region	21	secondary	172117	
region	21	tertiary	24308	
region	21	university	6684	
region	21	youth polytechnic	3557	
region	29	basic literacy	814	
region	29	madrassa	93	
region	29	none	70364	
region	29	pre-primary	61589	
region	29	primary	419103	
region	29	secondary	100002	
region	29	tertiary	18298	
region	29	university	6194	
region	29	youth polytechnic	2010	
region	31	basic literacy	861	
region	31	madrassa	66	
region	31	none	61541	
region	31	pre-primary	27328	
region	31	primary	186821	
region	31	secondary	69127	
region	31	tertiary	11054	
region	31	university	3948	
region	31	youth polytechnic	1283	
region	32	basic literacy	2828	
region	32	madrassa	256	
region	32	none	139539	
region	32	pre-primary	116217	
region	32	primary	780918	
region	32	secondary	320381	
region	32	tertiary	61662	
region	32	university	23976	
region	32	youth polytechnic	3844	
region	33	basic literacy	572	
region	33	madrassa	84	
region	33	none	231573	
region	33	pre-primary	55205	
region	33	primary	376147	
region	33	secondary	66146	
region	33	tertiary	10601	
region	33	university	3052	
region	33	youth polytechnic	1070	
region	44	basic literacy	708	
region	44	madrassa	247	
region	44	none	90415	
region	44	pre-primary	81616	
region	44	primary	508578	
region	44	secondary	102617	
region	44	tertiary	14584	
region	44	university	5458	
region	44	youth polytechnic	1524	
region	46	basic literacy	455	
region	46	madrassa	13	
region	46	none	41178	
region	46	pre-primary	33258	
region	46	primary	233911	
region	46	secondary	113806	
region	46	tertiary	12102	
region	46	university	3656	
region	46	youth polytechnic	1483	
region	47	basic literacy	8300	
region	47	madrassa	9065	
region	47	none	162504	
region	47	pre-primary	162520	
region	47	primary	1074033	
region	47	secondary	944148	
region	47	tertiary	287649	
region	47	university	192337	
region	47	youth polytechnic	21803	
region	2	basic literacy	844	
region	2	madrassa	2446	
region	2	none	168879	
region	2	pre-primary	53274	
region	2	primary	290116	
region	2	secondary	49182	
region	2	tertiary	8370	
region	2	university	1992	
region	2	youth polytechnic	1503	
region	5	basic literacy	152	
region	5	madrassa	3004	
region	5	none	19460	
region	5	pre-primary	7812	
region	5	primary	48223	
region	5	secondary	10587	
region	5	tertiary	1480	
region	5	university	415	
region	5	youth polytechnic	131	
region	9	basic literacy	480	
region	9	madrassa	98975	
region	9	none	560334	
region	9	pre-primary	10411	
region	9	primary	235580	
region	9	secondary	40413	
region	9	tertiary	2519	
region	9	university	1424	
region	9	youth polytechnic	202	
region	10	basic literacy	468	
region	10	madrassa	3119	
region	10	none	163550	
region	10	pre-primary	12989	
region	10	primary	67450	
region	10	secondary	12665	
region	10	tertiary	2135	
region	10	university	956	
region	10	youth polytechnic	308	
region	12	basic literacy	4144	
region	12	madrassa	225	
region	12	none	226905	
region	12	pre-primary	71376	
region	12	primary	881763	
region	12	secondary	209839	
region	12	tertiary	39147	
region	12	university	11930	
region	15	university	4469	
region	15	youth polytechnic	12216	
region	16	basic literacy	4649	
region	16	madrassa	317	
region	16	none	99498	
region	16	pre-primary	51475	
region	16	primary	578689	
region	16	secondary	203414	
region	16	tertiary	37277	
region	16	university	12437	
region	16	youth polytechnic	18698	
region	17	basic literacy	2637	
region	17	madrassa	187	
region	17	none	99661	
region	17	pre-primary	39584	
region	17	primary	496042	
region	17	secondary	131811	
region	17	tertiary	19235	
region	17	university	4683	
region	18	basic literacy	1658	
region	18	madrassa	50	
region	18	none	47332	
region	18	pre-primary	40067	
region	18	primary	336716	
region	18	secondary	104653	
region	18	tertiary	12800	
region	18	university	3610	
region	18	youth polytechnic	1360	
region	19	basic literacy	2531	
region	19	madrassa	118	
region	19	none	42333	
region	19	pre-primary	36274	
region	23	basic literacy	840	
region	23	madrassa	424	
region	23	none	614643	
region	23	pre-primary	24486	
region	23	primary	121093	
region	23	secondary	22393	
region	23	tertiary	3776	
region	23	university	1489	
region	23	youth polytechnic	351	
region	24	basic literacy	153	
region	24	madrassa	23	
region	24	none	219742	
region	24	pre-primary	33514	
region	24	primary	172096	
region	24	secondary	22097	
region	24	tertiary	4564	
region	24	university	1407	
region	24	youth polytechnic	582	
region	26	basic literacy	774	
region	26	madrassa	110	
region	26	none	98644	
region	26	pre-primary	55557	
region	26	primary	425993	
region	26	secondary	126449	
region	26	tertiary	16326	
region	26	university	6412	
region	26	youth polytechnic	1173	
region	27	basic literacy	1428	
region	27	madrassa	182	
region	27	none	78641	
region	27	pre-primary	63490	
region	27	primary	422770	
region	27	secondary	174412	
region	27	tertiary	36479	
region	27	university	26454	
region	27	youth polytechnic	2778	
region	38	basic literacy	1328	
region	38	madrassa	60	
region	38	none	58485	
region	38	pre-primary	32971	
region	38	primary	309369	
region	38	secondary	82617	
region	38	tertiary	11985	
region	38	university	3907	
region	38	youth polytechnic	1481	
region	41	basic literacy	948	
region	41	madrassa	90	
region	41	none	102506	
region	41	pre-primary	59001	
region	41	primary	471530	
region	1	basic literacy	2705	
region	1	madrassa	4431	
region	1	none	84459	
region	1	pre-primary	59153	
region	1	primary	384904	
region	1	secondary	226497	
region	1	tertiary	56992	
region	1	university	20239	
region	1	youth polytechnic	6844	
region	3	basic literacy	1638	
region	3	madrassa	1606	
region	3	none	249459	
region	3	pre-primary	106855	
region	3	primary	505502	
region	3	secondary	96901	
region	3	tertiary	17830	
region	3	university	5475	
region	3	youth polytechnic	2978	
region	4	basic literacy	316	
region	4	madrassa	4046	
region	4	none	98600	
region	4	pre-primary	16129	
region	4	primary	77008	
region	4	secondary	11941	
region	4	tertiary	1773	
region	4	university	336	
region	4	youth polytechnic	261	
region	6	basic literacy	1004	
region	6	madrassa	293	
region	6	none	30876	
region	6	pre-primary	16611	
region	6	primary	151123	
region	6	secondary	40858	
region	6	tertiary	8478	
region	6	university	1776	
region	6	youth polytechnic	3917	
region	7	youth polytechnic	238	
region	8	basic literacy	213	
region	8	madrassa	62342	
region	8	none	399405	
region	8	pre-primary	6177	
region	8	primary	118167	
region	8	secondary	20917	
region	8	tertiary	2174	
region	8	university	1311	
region	8	youth polytechnic	164	
region	12	youth polytechnic	10256	
region	13	basic literacy	145	
region	13	madrassa	7	
region	13	none	21263	
region	13	pre-primary	6519	
region	13	primary	74126	
region	13	secondary	11148	
region	13	tertiary	2290	
region	13	university	522	
region	13	youth polytechnic	1482	
region	17	youth polytechnic	11600	
region	19	primary	345189	
region	19	secondary	175626	
region	19	tertiary	28956	
region	19	university	9881	
region	19	youth polytechnic	3896	
region	20	youth polytechnic	1691	
region	25	basic literacy	303	
region	25	madrassa	10	
region	25	none	117716	
region	25	pre-primary	16489	
region	25	primary	50422	
region	25	secondary	9428	
region	25	tertiary	2270	
region	25	university	666	
region	25	youth polytechnic	291	
region	41	secondary	100596	
region	41	tertiary	12358	
region	41	university	4967	
region	41	youth polytechnic	1367	
country	TZ	basic literacy	136660	
country	TZ	madrassa	469842	
country	TZ	none	12983950	
country	TZ	pre-primary	4630064	
country	TZ	primary	35652860	
country	TZ	secondary	12168640	
country	TZ	tertiary	2370860	
country	TZ	university	1052604	
country	TZ	youth polytechnic	323408	
\.


--
-- Name: pk_highesteducationlevelreached; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY highesteducationlevelreached
    ADD CONSTRAINT pk_highesteducationlevelreached PRIMARY KEY (geo_level, geo_code, geo_version, "highest education level reached");


--
-- PostgreSQL database dump complete
--

