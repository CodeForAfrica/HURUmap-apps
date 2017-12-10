SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.gender_ruralorurban DROP CONSTRAINT IF EXISTS gender_ruralorurban_pkey;
DROP TABLE IF EXISTS public.gender_ruralorurban;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: gender_ruralorurban; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE gender_ruralorurban (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    gender character varying(128) NOT NULL,
    "rural or urban" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: gender_ruralorurban; Type: TABLE DATA; Schema: public; Owner: -
--


COPY gender_ruralorurban (geo_level, geo_code, gender, "rural or urban", total) FROM stdin;
country	ZM	male	rural	3664349
province	1	male	rural	460146
province	2	male	rural	181734
province	3	male	rural	651737
province	4	male	rural	367462
province	5	male	rural	160216
province	6	male	rural	272884
province	7	male	rural	415508
province	8	male	rural	256167
province	9	male	rural	556592
province	10	male	rural	341903
country	ZM	female	rural	3840943
province	1	female	rural	468896
province	2	female	rural	179918
province	3	female	rural	681706
province	4	female	rural	388889
province	5	female	rural	159516
province	6	female	rural	289141
province	7	female	rural	437455
province	8	female	rural	268989
province	9	female	rural	584948
province	10	female	rural	381485
country	ZM	male	urban	2452904
province	1	male	urban	153226
province	2	male	urban	769041
province	3	male	urban	92617
province	4	male	urban	87584
province	5	male	urban	888999
province	6	male	urban	56096
province	7	male	urban	92718
province	8	male	urban	76209
province	9	male	urban	182404
province	10	male	urban	54010
country	ZM	female	urban	2568118
province	1	female	urban	162821
province	2	female	urban	789918
province	3	female	urban	99063
province	4	female	urban	94456
province	5	female	urban	930176
province	6	female	urban	59386
province	7	female	urban	99274
province	8	female	urban	80333
province	9	female	urban	193144
province	10	female	urban	59547
\.


--
-- Name: gender_ruralorurban_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY gender_ruralorurban
    ADD CONSTRAINT gender_ruralorurban_pkey PRIMARY KEY (geo_level, geo_code, gender, "rural or urban");


--
-- PostgreSQL database dump complete
--

