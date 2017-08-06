--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 10:51:18 EAT

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
-- TOC entry 183 (class 1259 OID 17755)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO hurumap_ke;

--
-- TOC entry 184 (class 1259 OID 17758)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO hurumap_ke;

--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 184
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 3061 (class 2604 OID 17924)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 3181 (class 0 OID 17755)
-- Dependencies: 183
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 184
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 3064 (class 2606 OID 17939)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3066 (class 2606 OID 17945)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3062 (class 1259 OID 18046)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


-- Completed on 2017-07-31 10:51:41 EAT

--
-- PostgreSQL database dump complete
--

