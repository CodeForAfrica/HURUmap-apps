--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 10:53:06 EAT

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
-- TOC entry 193 (class 1259 OID 17780)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO hurumap_ke;

--
-- TOC entry 194 (class 1259 OID 17783)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO hurumap_ke;

--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 194
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 3061 (class 2604 OID 17929)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3184 (class 0 OID 17780)
-- Dependencies: 193
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 194
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3065 (class 2606 OID 17957)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3067 (class 2606 OID 17959)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3062 (class 1259 OID 18052)
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3063 (class 1259 OID 18053)
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3068 (class 2606 OID 18086)
-- Name: auth_user_user_permissions auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3069 (class 2606 OID 18091)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2017-07-31 10:53:27 EAT

--
-- PostgreSQL database dump complete
--

