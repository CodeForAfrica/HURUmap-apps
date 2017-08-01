--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 10:55:16 EAT

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
-- TOC entry 201 (class 1259 OID 17803)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO hurumap_ke;

--
-- TOC entry 202 (class 1259 OID 17810)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO hurumap_ke;

--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 3061 (class 2604 OID 17930)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 3183 (class 0 OID 17803)
-- Dependencies: 201
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- TOC entry 3066 (class 2606 OID 17975)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3063 (class 1259 OID 18055)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 3064 (class 1259 OID 18056)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 3067 (class 2606 OID 18096)
-- Name: django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3068 (class 2606 OID 18101)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2017-07-31 10:55:35 EAT

--
-- PostgreSQL database dump complete
--

