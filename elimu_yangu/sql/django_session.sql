--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-05-02 10:28:30 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 25427)
-- Name: django_session; Type: TABLE; Schema: public; Owner: elimu_yangu
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO elimu_yangu;

--
-- TOC entry 2294 (class 0 OID 25427)
-- Dependencies: 203
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: elimu_yangu
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
j7en14dciwz1vnhm3vr22r00908eucx8	OTk0MGEwZmQ5ZTg4YTJlOWNlMzk3Y2QyNjZjYTFjYWRlYjAwY2M4Mjp7Il9sYW5ndWFnZSI6InN3In0=	2018-05-16 10:25:19.259639+03
\.


--
-- TOC entry 2178 (class 2606 OID 25434)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: elimu_yangu
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2176 (class 1259 OID 25435)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: elimu_yangu
--

CREATE INDEX django_session_de54fa62 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2179 (class 1259 OID 25436)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: elimu_yangu
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


-- Completed on 2018-05-02 10:28:30 EAT

--
-- PostgreSQL database dump complete
--

