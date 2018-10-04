--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.4

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
1	country	ZW	Zimbabwe	\N	\N	\N	Zimbabwe	2009
2	province	12	Mashonaland Central	28347	country	ZW	Mashonaland Central	2009
3	province	16	Matabeleland South	54172	country	ZW	Matabeleland South	2009
4	province	18	Masvingo	56566	country	ZW	Masvingo	2009
5	province	15	Matabeleland North	75025	country	ZW	Matabeleland North	2009
6	province	17	Midlands	49166	country	ZW	Midlands	2009
7	province	14	Mashonaland West	57441	country	ZW	Mashonaland West	2009
8	province	10	Bulawayo	900	country	ZW	Bulawayo	2009
9	province	11	Manicaland	36459	country	ZW	Manicaland	2009
10	province	13	Mashonaland East	32230	country	ZW	Mashonaland East	2009
11	province	19	Harare	872	country	ZW	Harare	2009
\.


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wazimap_geography_id_seq', 133, true);


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

