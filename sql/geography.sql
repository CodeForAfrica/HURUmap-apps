--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS public.wazimap_geography_name_36b79089_like;
DROP INDEX IF EXISTS public.wazimap_geography_d7d547e9;
DROP INDEX IF EXISTS public.wazimap_geography_b068931c;
DROP INDEX IF EXISTS public.wazimap_geography_84cdc76c;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_pkey;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_9a5128d2_uniq;
ALTER TABLE IF EXISTS public.wazimap_geography ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.wazimap_geography_id_seq;
DROP TABLE IF EXISTS public.wazimap_geography;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wazimap_geography; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wazimap_geography (
    id integer NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    name character varying(20) NOT NULL,
    long_name character varying(128) NOT NULL,
    year integer,
    osm_area_id integer,
    square_kms double precision,
    parent_level character varying(15),
    parent_code character varying(10)
);


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wazimap_geography_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wazimap_geography_id_seq OWNED BY wazimap_geography.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wazimap_geography ALTER COLUMN id SET DEFAULT nextval('wazimap_geography_id_seq'::regclass);


--
-- Data for Name: wazimap_geography; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wazimap_geography (id, geo_level, geo_code, name, long_name, year, osm_area_id, square_kms, parent_level, parent_code) FROM stdin;
1	country	KE	Kenya	Kenya	2009	662008	\N	\N	\N
2	county	1	Mombasa	Mombasa	2009	662784	\N	country	KE
3	county	2	Kwale	Kwale	2009	509519	\N	country	KE
4	county	3	Kilifi	Kilifi	2009	662783	\N	country	KE
5	county	4	Tana River	Tana River	2009	509533	\N	country	KE
6	county	5	Lamu	Lamu	2009	509521	\N	country	KE
7	county	6	Taita-Taveta	Taita-Taveta	2009	509532	\N	country	KE
8	county	7	Garissa	Garissa	2009	662782	\N	country	KE
9	county	8	Wajir	Wajir	2009	509538	\N	country	KE
10	county	9	Mandera	Mandera	2009	509522	\N	country	KE
11	county	10	Marsabit	Marsabit	2009	509523	\N	country	KE
12	county	11	Isiolo	Isiolo	2009	509513	\N	country	KE
13	county	12	Meru	Meru	2009	509524	\N	country	KE
14	county	13	Tharaka-Nithi	Tharaka-Nithi	2009	509534	\N	country	KE
15	county	14	Embu	Embu	2009	509511	\N	country	KE
16	county	15	Kitui	Kitui	2009	509518	\N	country	KE
17	county	16	Machakos	Machakos	2009	509501	\N	country	KE
18	county	17	Makueni	Makueni	2009	509502	\N	country	KE
19	county	18	Nyandarua	Nyandarua	2009	509528	\N	country	KE
20	county	19	Nyeri	Nyeri	2009	509529	\N	country	KE
21	county	20	Kirinyaga	Kirinyaga	2009	509517	\N	country	KE
22	county	21	Murang'a	Murang'a	2009	509526	\N	country	KE
23	county	22	Kiambu	Kiambu	2009	509515	\N	country	KE
24	county	23	Turkana	Turkana	2009	509536	\N	country	KE
25	county	24	West Pokot	West Pokot	2009	509539	\N	country	KE
26	county	25	Samburu	Samburu	2009	509530	\N	country	KE
27	county	26	Trans Nzoia	Trans Nzoia	2009	509535	\N	country	KE
28	county	27	Uasin Gishu	Uasin Gishu	2009	509537	\N	country	KE
29	county	28	Elgeyo-Marakwet	Elgeyo-Marakwet	2009	509510	\N	country	KE
30	county	29	Nandi	Nandi	2009	509527	\N	country	KE
31	county	30	Baringo	Baringo	2009	509508	\N	country	KE
32	county	31	Laikipia	Laikipia	2009	509520	\N	country	KE
33	county	32	Nakuru	Nakuru	2009	509466	\N	country	KE
34	county	33	Narok	Narok	2009	509385	\N	country	KE
35	county	34	Kajiado	Kajiado	2009	662770	\N	country	KE
36	county	35	Kericho	Kericho	2009	509468	\N	country	KE
37	county	36	Bomet	Bomet	2009	509383	\N	country	KE
38	county	37	Kakamega	Kakamega	2009	509514	\N	country	KE
39	county	38	Vihiga	Vihiga	2009	509473	\N	country	KE
40	county	39	Bungoma	Bungoma	2009	509509	\N	country	KE
41	county	40	Busia	Busia	2009	509472	\N	country	KE
42	county	41	Siaya	Siaya	2009	509471	\N	country	KE
43	county	42	Kisumu	Kisumu	2009	509469	\N	country	KE
44	county	43	Homa Bay	Homa Bay	2009	509464	\N	country	KE
45	county	44	Migori	Migori	2009	662769	\N	country	KE
46	county	45	Kisii	Kisii	2009	509384	\N	country	KE
47	county	46	Nyamira	Nyamira	2009	509470	\N	country	KE
48	county	47	Nairobi	Nairobi	2009	509503	\N	country	KE
\.


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wazimap_geography_id_seq', 48, true);


--
-- Name: wazimap_geography_geo_level_9a5128d2_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_9a5128d2_uniq UNIQUE (geo_level, geo_code);


--
-- Name: wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);


--
-- Name: wazimap_geography_84cdc76c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_84cdc76c ON wazimap_geography USING btree (year);


--
-- Name: wazimap_geography_b068931c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_b068931c ON wazimap_geography USING btree (name);


--
-- Name: wazimap_geography_d7d547e9; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_d7d547e9 ON wazimap_geography USING btree (osm_area_id);


--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_name_36b79089_like ON wazimap_geography USING btree (name varchar_pattern_ops);


--
-- PostgreSQL database dump complete
--

