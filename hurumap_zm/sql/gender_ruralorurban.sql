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
-- Name: gender_ruralorurban; Type: TABLE; Schema: public; Owner: hurumap_zm
--

CREATE TABLE gender_ruralorurban (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    gender character varying(128) NOT NULL,
    "rural or urban" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100)
);


ALTER TABLE gender_ruralorurban OWNER TO hurumap_zm;

--
-- Data for Name: gender_ruralorurban; Type: TABLE DATA; Schema: public; Owner: hurumap_zm
--

COPY gender_ruralorurban (geo_level, geo_code, gender, "rural or urban", total, geo_version) FROM stdin;
country	ZM	male	rural	3664349	2010
province	1	male	rural	460146	2010
province	2	male	rural	181734	2010
province	3	male	rural	651737	2010
province	4	male	rural	367462	2010
province	5	male	rural	160216	2010
province	6	male	rural	272884	2010
province	7	male	rural	415508	2010
province	8	male	rural	256167	2010
province	9	male	rural	556592	2010
province	10	male	rural	341903	2010
country	ZM	female	rural	3840943	2010
province	1	female	rural	468896	2010
province	2	female	rural	179918	2010
province	3	female	rural	681706	2010
province	4	female	rural	388889	2010
province	5	female	rural	159516	2010
province	6	female	rural	289141	2010
province	7	female	rural	437455	2010
province	8	female	rural	268989	2010
province	9	female	rural	584948	2010
province	10	female	rural	381485	2010
country	ZM	male	urban	2452904	2010
province	1	male	urban	153226	2010
province	2	male	urban	769041	2010
province	3	male	urban	92617	2010
province	4	male	urban	87584	2010
province	5	male	urban	888999	2010
province	6	male	urban	56096	2010
province	7	male	urban	92718	2010
province	8	male	urban	76209	2010
province	9	male	urban	182404	2010
province	10	male	urban	54010	2010
country	ZM	female	urban	2568118	2010
province	1	female	urban	162821	2010
province	2	female	urban	789918	2010
province	3	female	urban	99063	2010
province	4	female	urban	94456	2010
province	5	female	urban	930176	2010
province	6	female	urban	59386	2010
province	7	female	urban	99274	2010
province	8	female	urban	80333	2010
province	9	female	urban	193144	2010
province	10	female	urban	59547	2010
\.


--
-- Name: gender_ruralorurban gender_ruralorurban_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_zm
--

ALTER TABLE ONLY gender_ruralorurban
    ADD CONSTRAINT gender_ruralorurban_pkey PRIMARY KEY (geo_level, geo_code, gender, "rural or urban");


--
-- PostgreSQL database dump complete
--

