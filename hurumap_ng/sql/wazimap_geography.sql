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
DROP INDEX IF EXISTS public.wazimap_geography_version_01953818;
DROP INDEX IF EXISTS public.wazimap_geography_name_36b79089_like;
DROP INDEX IF EXISTS public.wazimap_geography_name_36b79089;
DROP INDEX IF EXISTS public.wazimap_geography_long_name_9b8409f5_like;
DROP INDEX IF EXISTS public.wazimap_geography_long_name_9b8409f5;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_pkey;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_geo_code_version_bbe3c9fc_uniq;
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
1	state	1	Abia	6320	country	NG	Abia State	2016
2	state	2	Adamawa	36917	country	NG	Adamawa State	2016
3	state	3	Akwa Ibom	7081	country	NG	Akwa Ibom State	2016
4	state	4	Anambra	4844	country	NG	Anambra State	2016
5	state	5	Bauchi	45837	country	NG	Bauchi State	2016
6	state	6	Bayelsa	10773	country	NG	Bayelsa State	2016
7	state	7	Benue	34059	country	NG	Benue State	2016
8	state	8	Borno	70898	country	NG	Borno State	2016
9	state	9	Cross River	20156	country	NG	Cross River State	2016
10	state	10	Delta	17698	country	NG	Delta State	2016
11	state	11	Ebonyi	5670	country	NG	Ebonyi State	2016
12	state	12	Edo	17802	country	NG	Edo State	2016
13	state	13	Ekiti	6353	country	NG	Ekiti State	2016
14	state	14	Enugu	7161	country	NG	Enugu State	2016
15	state	15	Federal Capital Territory	7315	country	NG	Federal Capital Territory	2016
16	state	16	Gombe	18768	country	NG	Gombe State	2016
17	state	17	Imo	5530	country	NG	Imo State	2016
18	state	18	Jigawa	23154	country	NG	Jigawa State	2016
19	state	19	Kaduna	46053	country	NG	Kaduna State	2016
20	state	20	Kano	20131	country	NG	Kano State	2016
21	state	21	Katsina	24192	country	NG	Katsina State	2016
22	state	22	Kebbi	36800	country	NG	Kebbi State	2016
23	state	23	Kogi	29833	country	NG	Kogi State	2016
24	state	24	Kwara	36825	country	NG	Kwara State	2016
25	state	25	Lagos	3345	country	NG	Lagos State	2016
26	state	26	Nasarawa	27117	country	NG	Nasarawa State	2016
27	state	27	Niger	76363	country	NG	Niger State	2016
28	state	28	Ogun	16762	country	NG	Ogun State	2016
29	state	29	Ondo	15500	country	NG	Ondo State	2016
30	state	30	Osun	9251	country	NG	Osun State	2016
31	state	31	Oyo	28454	country	NG	Oyo State	2016
32	state	32	Plateau	30913	country	NG	Plateau State	2016
33	state	33	Rivers	11077	country	NG	Rivers State	2016
34	state	34	Sokoto	25973	country	NG	Sokoto State	2016
35	state	35	Taraba	54473	country	NG	Taraba State	2016
36	state	36	Yobe	45502	country	NG	Yobe State	2016
37	state	37	Zamfara	39762	country	NG	Zamfara State	2016
\.


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wazimap_geography_id_seq', 37, true);


--
-- Name: wazimap_geography wazimap_geography_geo_level_geo_code_version_bbe3c9fc_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_geo_code_version_bbe3c9fc_uniq UNIQUE (geo_level, geo_code, version);


--
-- Name: wazimap_geography wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);


--
-- Name: wazimap_geography_long_name_9b8409f5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_long_name_9b8409f5 ON public.wazimap_geography USING btree (long_name);


--
-- Name: wazimap_geography_long_name_9b8409f5_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_long_name_9b8409f5_like ON public.wazimap_geography USING btree (long_name varchar_pattern_ops);


--
-- Name: wazimap_geography_name_36b79089; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_name_36b79089 ON public.wazimap_geography USING btree (name);


--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_name_36b79089_like ON public.wazimap_geography USING btree (name varchar_pattern_ops);


--
-- Name: wazimap_geography_version_01953818; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_version_01953818 ON public.wazimap_geography USING btree (version);


--
-- Name: wazimap_geography_version_01953818_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_version_01953818_like ON public.wazimap_geography USING btree (version varchar_pattern_ops);


--
-- PostgreSQL database dump complete
--

