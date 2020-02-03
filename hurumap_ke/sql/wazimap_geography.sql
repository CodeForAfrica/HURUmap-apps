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

DROP INDEX IF EXISTS public.wazimap_geography_version_01953818_like;
DROP INDEX IF EXISTS public.wazimap_geography_name_36b79089_like;
DROP INDEX IF EXISTS public.wazimap_geography_long_name_9b8409f5_like;
DROP INDEX IF EXISTS public.wazimap_geography_b068931c;
DROP INDEX IF EXISTS public.wazimap_geography_2fc6351a;
DROP INDEX IF EXISTS public.wazimap_geography_2af72f10;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_pkey;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_bbe3c9fc_uniq;
ALTER TABLE IF EXISTS public.wazimap_geography ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.wazimap_geography_id_seq;
DROP TABLE IF EXISTS public.wazimap_geography;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wazimap_geography; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wazimap_geography (
    id integer NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    name character varying(100) NOT NULL,
    square_kms double precision,
    parent_level character varying(15),
    parent_code character varying(10),
    long_name character varying(100),
    version character varying(100) NOT NULL
);


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wazimap_geography_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wazimap_geography_id_seq OWNED BY public.wazimap_geography.id;


--
-- Name: wazimap_geography id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wazimap_geography ALTER COLUMN id SET DEFAULT nextval('public.wazimap_geography_id_seq'::regclass);


--
-- Data for Name: wazimap_geography; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wazimap_geography (id, geo_level, geo_code, name, square_kms, parent_level, parent_code, long_name, version) FROM stdin;
364	county	20	Kirinyaga	1478.3	country	KE	Kirinyaga	2009
365	county	21	Murang'a	2524.2	country	KE	Murang'a	2009
366	county	18	Nyandarua	3285.7	country	KE	Nyandarua	2009
367	county	19	Nyeri	3325	country	KE	Nyeri	2009
368	county	24	West Pokot	9123.2	country	KE	West Pokot	2009
369	county	25	Samburu	21065.1	country	KE	Samburu	2009
370	county	22	Kiambu	2538.6	country	KE	Kiambu	2009
371	county	23	Turkana	68232.9	country	KE	Turkana	2009
372	county	28	Elgeyo-Marakwet	3032	country	KE	Elgeyo-Marakwet	2009
373	county	29	Nandi	2855.8	country	KE	Nandi	2009
374	county	26	Trans-Nzoia	2495.2	country	KE	Trans-Nzoia	2009
375	county	27	Uasin Gishu	3392.2	country	KE	Uasin Gishu	2009
376	county	32	Nakuru	7462.4	country	KE	Nakuru	2009
377	county	33	Narok	17950.3	country	KE	Narok	2009
378	county	30	Baringo	10976.4	country	KE	Baringo	2009
379	county	31	Laikipia	9532.2	country	KE	Laikipia	2009
380	county	36	Bomet	2530.9	country	KE	Bomet	2009
381	county	37	Kakamega	3020	country	KE	Kakamega	2009
382	county	34	Kajiado	21871.1	country	KE	Kajiado	2009
383	county	35	Kericho	2436.1	country	KE	Kericho	2009
384	county	40	Busia	1696.3	country	KE	Busia	2009
385	county	41	Siaya	2529.8	country	KE	Siaya	2009
386	county	38	Vihiga	563.8	country	KE	Vihiga	2009
387	county	39	Bungoma	3023.9	country	KE	Bungoma	2009
388	county	44	Migori	2613.5	country	KE	Migori	2009
389	county	45	Kisii	1323	country	KE	Kisii	2009
390	county	42	Kisumu	2085.4	country	KE	Kisumu	2009
391	county	43	Homa Bay	3152.5	country	KE	Homa Bay	2009
392	county	46	Nyamira	897.3	country	KE	Nyamira	2009
393	county	47	Nairobi	703.9	country	KE	Nairobi	2009
394	country	KE	Kenya	580876.3	continent	AFR	Kenya	2009
395	county	1	Mombasa	219.9	country	KE	Mombasa	2009
396	county	4	Tana River	37950.5	country	KE	Tana River	2009
397	county	5	Lamu	6253.3	country	KE	Lamu	2009
398	county	2	Kwale	8267.1	country	KE	Kwale	2009
399	county	3	Kilifi	12539.7	country	KE	Kilifi	2009
400	county	8	Wajir	56773.1	country	KE	Wajir	2009
401	county	9	Mandera	25939.8	country	KE	Mandera	2009
402	county	6	Taita Taveta	17152	country	KE	Taita Taveta	2009
403	county	7	Garissa	44736	country	KE	Garissa	2009
404	county	12	Meru	7006.3	country	KE	Meru	2009
405	county	13	Tharaka-Nithi	2564.4	country	KE	Tharaka-Nithi	2009
406	county	10	Marsabit	70944.1	country	KE	Marsabit	2009
407	county	11	Isiolo	25350.6	country	KE	Isiolo	2009
408	county	16	Machakos	6042.7	country	KE	Machakos	2009
409	county	17	Makueni	8169.8	country	KE	Makueni	2009
410	county	14	Embu	2820.7	country	KE	Embu	2009
411	county	15	Kitui	30429.5	country	KE	Kitui	2009
\.


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wazimap_geography_id_seq', 49, true);


--
-- Name: wazimap_geography wazimap_geography_geo_level_bbe3c9fc_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_bbe3c9fc_uniq UNIQUE (geo_level, geo_code, version);


--
-- Name: wazimap_geography wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);


--
-- Name: wazimap_geography_2af72f10; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_2af72f10 ON public.wazimap_geography USING btree (version);


--
-- Name: wazimap_geography_2fc6351a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_2fc6351a ON public.wazimap_geography USING btree (long_name);


--
-- Name: wazimap_geography_b068931c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_b068931c ON public.wazimap_geography USING btree (name);


--
-- Name: wazimap_geography_long_name_9b8409f5_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_long_name_9b8409f5_like ON public.wazimap_geography USING btree (long_name varchar_pattern_ops);


--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_name_36b79089_like ON public.wazimap_geography USING btree (name varchar_pattern_ops);


--
-- Name: wazimap_geography_version_01953818_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_version_01953818_like ON public.wazimap_geography USING btree (version varchar_pattern_ops);


--
-- PostgreSQL database dump complete
--

