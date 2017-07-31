--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 10:55:55 EAT

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
-- TOC entry 205 (class 1259 OID 17817)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO hurumap_ke;

--
-- TOC entry 206 (class 1259 OID 17823)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO hurumap_ke;

--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 206
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 3061 (class 2604 OID 17932)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 3178 (class 0 OID 17817)
-- Dependencies: 205
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-03-25 15:39:58.274822+00
2	auth	0001_initial	2017-03-25 15:39:58.358585+00
3	admin	0001_initial	2017-03-25 15:39:58.413926+00
4	admin	0002_logentry_remove_auto_add	2017-03-25 15:39:58.437914+00
5	contenttypes	0002_remove_content_type_name	2017-03-25 15:39:58.484345+00
6	auth	0002_alter_permission_name_max_length	2017-03-25 15:39:58.498967+00
7	auth	0003_alter_user_email_max_length	2017-03-25 15:39:58.512494+00
8	auth	0004_alter_user_username_opts	2017-03-25 15:39:58.534689+00
9	auth	0005_alter_user_last_login_null	2017-03-25 15:39:58.548062+00
10	auth	0006_require_contenttypes_0002	2017-03-25 15:39:58.550646+00
11	auth	0007_alter_validators_add_error_messages	2017-03-25 15:39:58.563799+00
\.


--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 206
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('django_migrations_id_seq', 11, true);


--
-- TOC entry 3063 (class 2606 OID 17981)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


-- Completed on 2017-07-31 10:56:13 EAT

--
-- PostgreSQL database dump complete
--

