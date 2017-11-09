--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wazimap_geography; Type: TABLE; Schema: public; Owner: hurumap_zm
--

CREATE TABLE wazimap_geography (
    id integer NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    name character varying(100) NOT NULL,
    version integer,
    square_kms double precision,
    parent_level character varying(15),
    parent_code character varying(10),
    long_name character varying(100)
);


ALTER TABLE wazimap_geography OWNER TO hurumap_zm;

--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_zm
--

CREATE SEQUENCE wazimap_geography_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wazimap_geography_id_seq OWNER TO hurumap_zm;

--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_zm
--

ALTER SEQUENCE wazimap_geography_id_seq OWNED BY wazimap_geography.id;


--
-- Name: wazimap_geography id; Type: DEFAULT; Schema: public; Owner: hurumap_zm
--

ALTER TABLE ONLY wazimap_geography ALTER COLUMN id SET DEFAULT nextval('wazimap_geography_id_seq'::regclass);


--
-- Data for Name: wazimap_geography; Type: TABLE DATA; Schema: public; Owner: hurumap_zm
--

COPY wazimap_geography (id, geo_level, geo_code, name, version, square_kms, parent_level, parent_code, long_name) FROM stdin;
1	country	ZM	Zambia	2010	\N	\N	\N	\N
2	province	1	Central	2010	\N	country	ZM	\N
3	province	2	Copperbelt	2010	\N	country	ZM	\N
4	province	3	Eastern	2010	\N	country	ZM	\N
5	province	4	Luapula	2010	\N	country	ZM	\N
6	province	5	Lusaka	2010	\N	country	ZM	\N
7	province	6	Muchinga	2010	\N	country	ZM	\N
8	province	7	Northern	2010	\N	country	ZM	\N
9	province	8	North-Western	2010	\N	country	ZM	\N
10	province	9	Southern	2010	\N	country	ZM	\N
11	province	10	Western	2010	\N	country	ZM	\N
\.


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_zm
--

SELECT pg_catalog.setval('wazimap_geography_id_seq', 48, true);


--
-- Name: wazimap_geography wazimap_geography_geo_level_9a5128d2_uniq; Type: CONSTRAINT; Schema: public; Owner: hurumap_zm
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_9a5128d2_uniq UNIQUE (geo_level, geo_code);


--
-- Name: wazimap_geography wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_zm
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);


--
-- Name: wazimap_geography_84cdc76c; Type: INDEX; Schema: public; Owner: hurumap_zm
--

CREATE INDEX wazimap_geography_84cdc76c ON wazimap_geography USING btree (version);


--
-- Name: wazimap_geography_b068931c; Type: INDEX; Schema: public; Owner: hurumap_zm
--

CREATE INDEX wazimap_geography_b068931c ON wazimap_geography USING btree (name);


--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: hurumap_zm
--

CREATE INDEX wazimap_geography_name_36b79089_like ON wazimap_geography USING btree (name varchar_pattern_ops);


--
-- PostgreSQL database dump complete
--

