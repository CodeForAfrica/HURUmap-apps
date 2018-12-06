--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.most_effective_way_to_combat_corruption DROP CONSTRAINT IF EXISTS pk_most_effective_way_to_combat_corruption;
DROP TABLE IF EXISTS public.most_effective_way_to_combat_corruption;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: most_effective_way_to_combat_corruption; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.most_effective_way_to_combat_corruption (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    most_effective_way_to_combat_corruption character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: most_effective_way_to_combat_corruption; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.most_effective_way_to_combat_corruption (geo_level, geo_code, geo_version, most_effective_way_to_combat_corruption, total) FROM stdin;
region	114	2014	Don't know	40
region	114	2014	Join or support an organization that is fighting corruption	18
region	114	2014	Nothing / Ordinary people cannot do anything	214
region	114	2014	Other	7
region	114	2014	Participate in protest marches	15
region	114	2014	Punish the responsible person	3
region	114	2014	Refuse to pay bribes	123
region	114	2014	Report corruption when you see or experience it	166
region	114	2014	Sign a petition	5
region	114	2014	Speak out about the problem	26
region	114	2014	Talk to friends and relatives about the problem	4
region	114	2014	Vote for clean candidates	43
region	115	2014	Don't know	33
region	115	2014	Join or support an organization that is fighting corruption	26
region	115	2014	Nothing / Ordinary people cannot do anything	210
region	115	2014	Other	4
region	115	2014	Participate in protest marches	6
region	115	2014	Punish the responsible person	1
region	115	2014	Refuse to pay bribes	112
region	115	2014	Report corruption when you see or experience it	144
region	115	2014	Sign a petition	5
region	115	2014	Speak out about the problem	25
region	115	2014	Talk to friends and relatives about the problem	8
region	115	2014	Vote for clean candidates	50
region	116	2014	Don't know	64
region	116	2014	Join or support an organization that is fighting corruption	18
region	116	2014	Nothing / Ordinary people cannot do anything	87
region	116	2014	Other	33
region	116	2014	Participate in protest marches	17
region	116	2014	Punish the responsible person	6
region	116	2014	Refuse to pay bribes	41
region	116	2014	Report corruption when you see or experience it	122
region	116	2014	Sign a petition	13
region	116	2014	Speak out about the problem	47
region	116	2014	Talk to friends and relatives about the problem	19
region	116	2014	Vote for clean candidates	37
region	117	2014	Don't know	53
region	117	2014	Join or support an organization that is fighting corruption	15
region	117	2014	Nothing / Ordinary people cannot do anything	229
region	117	2014	Other	6
region	117	2014	Participate in protest marches	3
region	117	2014	Punish the responsible person	1
region	117	2014	Refuse to pay bribes	113
region	117	2014	Report corruption when you see or experience it	130
region	117	2014	Sign a petition	2
region	117	2014	Speak out about the problem	14
region	117	2014	Talk to friends and relatives about the problem	3
region	117	2014	Vote for clean candidates	39
country	UG	2014	Join or support an organization that is fighting corruption	77
country	UG	2014	Talk to friends and relatives about the problem	34
country	UG	2014	Participate in protest marches	41
country	UG	2014	Vote for clean candidates	169
country	UG	2014	Nothing / Ordinary people cannot do anything	740
country	UG	2014	Sign a petition	25
country	UG	2014	Other	50
country	UG	2014	Punish the responsible person	11
country	UG	2014	Report corruption when you see or experience it	562
country	UG	2014	Refuse to pay bribes	389
country	UG	2014	Don't know	190
country	UG	2014	Speak out about the problem	112
\.


--
-- Name: most_effective_way_to_combat_corruption pk_most_effective_way_to_combat_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.most_effective_way_to_combat_corruption
    ADD CONSTRAINT pk_most_effective_way_to_combat_corruption PRIMARY KEY (geo_level, geo_code, geo_version, most_effective_way_to_combat_corruption);


--
-- PostgreSQL database dump complete
--

