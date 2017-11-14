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

ALTER TABLE IF EXISTS ONLY public.placeofdelivery DROP CONSTRAINT IF EXISTS pk_placeofdelivery;
DROP TABLE IF EXISTS public.placeofdelivery;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: placeofdelivery; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE placeofdelivery (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "place of delivery" character varying(128) NOT NULL,
    total double precision,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: placeofdelivery; Type: TABLE DATA; Schema: public; Owner: -
--

COPY placeofdelivery (geo_level, geo_code, "place of delivery", total, geo_version) FROM stdin;
region	1	ANC projection	50037	2009
region	1	facility delivery	42278	2009
region	1	birth before arrival	1090	2009
region	1	traditional birth attendance	5535	2009
region	1	home delivery	4530	2009
region	1	facility birth rate	84	2009
region	3	ANC projection	166517	2009
region	3	facility delivery	128853	2009
region	3	birth before arrival	2709	2009
region	3	traditional birth attendance	1974	2009
region	3	home delivery	7562	2009
region	3	facility birth rate	77	2009
region	2	ANC projection	60631	2009
region	2	facility delivery	63208	2009
region	2	birth before arrival	2451	2009
region	2	traditional birth attendance	3740	2009
region	2	home delivery	3982	2009
region	2	facility birth rate	104	2009
region	4	ANC projection	83170	2009
region	4	facility delivery	40494	2009
region	4	birth before arrival	985	2009
region	4	traditional birth attendance	1189	2009
region	4	home delivery	4630	2009
region	4	facility birth rate	49	2009
region	5	ANC projection	27730	2009
region	5	facility delivery	32025	2009
region	5	birth before arrival	712	2009
region	5	traditional birth attendance	228	2009
region	5	home delivery	686	2009
region	5	facility birth rate	115	2009
region	6	ANC projection	83081	2009
region	6	facility delivery	50414	2009
region	6	birth before arrival	1918	2009
region	6	traditional birth attendance	5103	2009
region	6	home delivery	9354	2009
region	6	facility birth rate	61	2009
region	9	ANC projection	48256	2009
region	9	facility delivery	18419	2009
region	9	birth before arrival	421	2009
region	9	traditional birth attendance	1153	2009
region	9	home delivery	498	2009
region	9	facility birth rate	38	2009
region	10	ANC projection	71514	2009
region	10	facility delivery	50898	2009
region	10	birth before arrival	1885	2009
region	10	traditional birth attendance	6767	2009
region	10	home delivery	4172	2009
region	10	facility birth rate	71	2009
region	11	ANC projection	44906	2009
region	11	facility delivery	37581	2009
region	11	birth before arrival	657	2009
region	11	traditional birth attendance	350	2009
region	11	home delivery	911	2009
region	11	facility birth rate	84	2009
region	14	ANC projection	57743	2009
region	14	facility delivery	24335	2009
region	14	birth before arrival	699	2009
region	14	traditional birth attendance	504	2009
region	14	home delivery	1593	2009
region	14	facility birth rate	42	2009
region	15	ANC projection	46334	2009
region	15	facility delivery	29942	2009
region	15	birth before arrival	776	2009
region	15	traditional birth attendance	3240	2009
region	15	home delivery	4313	2009
region	15	facility birth rate	65	2009
region	16	ANC projection	97685	2009
region	16	facility delivery	43715	2009
region	16	birth before arrival	2422	2009
region	16	traditional birth attendance	5265	2009
region	16	home delivery	10586	2009
region	16	facility birth rate	45	2009
region	17	ANC projection	137992	2009
region	17	facility delivery	78732	2009
region	17	birth before arrival	3132	2009
region	17	traditional birth attendance	1788	2009
region	17	home delivery	7171	2009
region	17	facility birth rate	57	2009
region	18	ANC projection	89524	2009
region	18	facility delivery	62457	2009
region	18	birth before arrival	2191	2009
region	18	traditional birth attendance	3625	2009
region	18	home delivery	1658	2009
region	18	facility birth rate	70	2009
region	19	ANC projection	38104	2009
region	19	facility delivery	33546	2009
region	19	birth before arrival	809	2009
region	19	traditional birth attendance	1854	2009
region	19	home delivery	2055	2009
region	19	facility birth rate	88	2009
region	20	ANC projection	200284	2009
region	20	facility delivery	79077	2009
region	20	birth before arrival	2365	2009
region	20	traditional birth attendance	2365	2009
region	20	home delivery	5942	2009
region	20	facility birth rate	39	2009
region	21	ANC projection	31513	2009
region	21	facility delivery	22725	2009
region	21	birth before arrival	632	2009
region	21	traditional birth attendance	91	2009
region	21	home delivery	439	2009
region	21	facility birth rate	72	2009
region	22	ANC projection	36707	2009
region	22	facility delivery	49378	2009
region	22	birth before arrival	662	2009
region	22	traditional birth attendance	600	2009
region	22	home delivery	1189	2009
region	22	facility birth rate	135	2009
region	23	ANC projection	66540	2009
region	23	facility delivery	35457	2009
region	23	birth before arrival	731	2009
region	23	traditional birth attendance	2376	2009
region	23	home delivery	1171	2009
region	23	facility birth rate	53	2009
region	24	ANC projection	61013	2009
region	24	facility delivery	46851	2009
region	24	birth before arrival	1394	2009
region	24	traditional birth attendance	1868	2009
region	24	home delivery	1290	2009
region	24	facility birth rate	77	2009
region	25	ANC projection	89101	2009
region	25	facility delivery	46461	2009
region	25	birth before arrival	1704	2009
region	25	traditional birth attendance	1831	2009
region	25	home delivery	2612	2009
region	25	facility birth rate	52	2009
region	26	ANC projection	93745	2009
region	26	facility delivery	31226	2009
region	26	birth before arrival	1171	2009
region	26	traditional birth attendance	2897	2009
region	26	home delivery	8336	2009
region	26	facility birth rate	33	2009
region	27	ANC projection	67761	2009
region	27	facility delivery	38609	2009
region	27	birth before arrival	1443	2009
region	27	traditional birth attendance	2151	2009
region	27	home delivery	3943	2009
region	27	facility birth rate	57	2009
region	29	ANC projection	136937	2009
region	29	facility delivery	61457	2009
region	29	birth before arrival	2595	2009
region	29	traditional birth attendance	1247	2009
region	29	home delivery	5733	2009
region	29	facility birth rate	45	2009
region	28	ANC projection	123375	2009
region	28	facility delivery	47611	2009
region	28	birth before arrival	1522	2009
region	28	traditional birth attendance	3190	2009
region	28	home delivery	4475	2009
region	28	facility birth rate	39	2009
region 	7	ANC projection	\N	2009
region 	7	facility delivery	\N	2009
region 	7	birth before arrival	\N	2009
region 	7	traditional birth attendance	\N	2009
region 	7	home delivery	\N	2009
region 	7	facility birth rate	\N	2009
region 	8	ANC projection	\N	2009
region 	8	facility delivery	\N	2009
region 	8	birth before arrival	\N	2009
region 	8	traditional birth attendance	\N	2009
region 	8	home delivery	\N	2009
region 	8	facility birth rate	\N	2009
region 	12	ANC projection	\N	2009
region 	12	facility delivery	\N	2009
region 	12	birth before arrival	\N	2009
region 	12	traditional birth attendance	\N	2009
region 	12	home delivery	\N	2009
region 	12	facility birth rate	\N	2009
region 	13	ANC projection	\N	2009
region 	13	facility delivery	\N	2009
region 	13	birth before arrival	\N	2009
region 	13	traditional birth attendance	\N	2009
region 	13	home delivery	\N	2009
region 	13	facility birth rate	\N	2009
region	30	ANC projection	\N	2009
region	30	facility delivery	\N	2009
region	30	birth before arrival	\N	2009
region	30	traditional birth attendance	\N	2009
region	30	home delivery	\N	2009
region	30	facility birth rate	\N	2009
country	TZ	ANC projection	2010200	2009
country	TZ	facility delivery	1195749	2009
country	TZ	birth before arrival	37076	2009
country	TZ	traditional birth attendance	60931	2009
country	TZ	home delivery	98831	2009
country	TZ	facility birth rate	66.0799999999999983	2009
\.


--
-- Name: pk_placeofdelivery; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY placeofdelivery
    ADD CONSTRAINT pk_placeofdelivery PRIMARY KEY (geo_level, geo_code, geo_version, "place of delivery");


--
-- PostgreSQL database dump complete
--

