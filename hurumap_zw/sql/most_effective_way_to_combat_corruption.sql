--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

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
province	10	2009	Don't know	6
province	10	2009	Join or support an organization that is fighting corruption	8
province	10	2009	Nothing / Ordinary people cannot do anything	50
province	10	2009	Participate in protest marches	2
province	10	2009	Refuse to pay bribes	35
province	10	2009	Report corruption when you see or experience it	34
province	10	2009	Sign a petition	1
province	10	2009	Speak out about the problem	3
province	10	2009	Vote for clean candidates	13
province	19	2009	Don't know	4
province	19	2009	Join or support an organization that is fighting corruption	18
province	19	2009	Nothing / Ordinary people cannot do anything	143
province	19	2009	Other	4
province	19	2009	Participate in protest marches	6
province	19	2009	Refuse to pay bribes	131
province	19	2009	Report corruption when you see or experience it	90
province	19	2009	Sign a petition	8
province	19	2009	Speak out about the problem	14
province	19	2009	Talk to friends and relatives about the problem	4
province	19	2009	Vote for clean candidates	26
province	11	2009	Don't know	12
province	11	2009	Join or support an organization that is fighting corruption	5
province	11	2009	Nothing / Ordinary people cannot do anything	127
province	11	2009	Other	1
province	11	2009	Participate in protest marches	2
province	11	2009	Refuse to pay bribes	72
province	11	2009	Report corruption when you see or experience it	47
province	11	2009	Sign a petition	6
province	11	2009	Speak out about the problem	7
province	11	2009	Talk to friends and relatives about the problem	1
province	11	2009	Vote for clean candidates	24
province	12	2009	Don't know	2
province	12	2009	Join or support an organization that is fighting corruption	5
province	12	2009	Nothing / Ordinary people cannot do anything	95
province	12	2009	Other	1
province	12	2009	Participate in protest marches	2
province	12	2009	Refuse to pay bribes	20
province	12	2009	Report corruption when you see or experience it	53
province	12	2009	Speak out about the problem	10
province	12	2009	Vote for clean candidates	20
province	13	2009	Don't know	2
province	13	2009	Join or support an organization that is fighting corruption	6
province	13	2009	Nothing / Ordinary people cannot do anything	123
province	13	2009	Other	1
province	13	2009	Participate in protest marches	2
province	13	2009	Refuse to pay bribes	50
province	13	2009	Report corruption when you see or experience it	43
province	13	2009	Sign a petition	5
province	13	2009	Speak out about the problem	6
province	13	2009	Talk to friends and relatives about the problem	4
province	13	2009	Vote for clean candidates	6
province	14	2009	Don't know	9
province	14	2009	Educate people	1
province	14	2009	Join or support an organization that is fighting corruption	7
province	14	2009	Nothing / Ordinary people cannot do anything	110
province	14	2009	Other	2
province	14	2009	Participate in protest marches	4
province	14	2009	Punish the responsible person	1
province	14	2009	Refuse to pay bribes	28
province	14	2009	Report corruption when you see or experience it	95
province	14	2009	Speak out about the problem	3
province	14	2009	Talk to friends and relatives about the problem	3
province	14	2009	Vote for clean candidates	9
province	18	2009	Don't know	3
province	18	2009	Join or support an organization that is fighting corruption	11
province	18	2009	Nothing / Ordinary people cannot do anything	79
province	18	2009	Participate in protest marches	4
province	18	2009	Refuse to pay bribes	53
province	18	2009	Report corruption when you see or experience it	59
province	18	2009	Sign a petition	6
province	18	2009	Speak out about the problem	13
province	18	2009	Talk to friends and relatives about the problem	3
province	18	2009	Vote for clean candidates	17
province	15	2009	Don't know	12
province	15	2009	Join or support an organization that is fighting corruption	5
province	15	2009	Nothing / Ordinary people cannot do anything	62
province	15	2009	Refuse to pay bribes	18
province	15	2009	Report corruption when you see or experience it	24
province	15	2009	Sign a petition	1
province	15	2009	Talk to friends and relatives about the problem	5
province	15	2009	Vote for clean candidates	1
province	16	2009	Don't know	2
province	16	2009	Join or support an organization that is fighting corruption	1
province	16	2009	Nothing / Ordinary people cannot do anything	40
province	16	2009	Refuse to pay bribes	27
province	16	2009	Report corruption when you see or experience it	24
province	16	2009	Speak out about the problem	1
province	16	2009	Talk to friends and relatives about the problem	2
province	16	2009	Vote for clean candidates	7
province	17	2009	Don't know	11
province	17	2009	Join or support an organization that is fighting corruption	16
province	17	2009	Nothing / Ordinary people cannot do anything	89
province	17	2009	Participate in protest marches	5
province	17	2009	Refuse to pay bribes	85
province	17	2009	Report corruption when you see or experience it	50
province	17	2009	Sign a petition	6
province	17	2009	Speak out about the problem	4
province	17	2009	Talk to friends and relatives about the problem	5
province	17	2009	Vote for clean candidates	17
country	ZW	2009	Join or support an organization that is fighting corruption	82
country	ZW	2009	Talk to friends and relatives about the problem	27
country	ZW	2009	Participate in protest marches	27
country	ZW	2009	Vote for clean candidates	140
country	ZW	2009	Nothing / Ordinary people cannot do anything	918
country	ZW	2009	Sign a petition	33
country	ZW	2009	Other	9
country	ZW	2009	Punish the responsible person	1
country	ZW	2009	Report corruption when you see or experience it	519
country	ZW	2009	Refuse to pay bribes	519
country	ZW	2009	Educate people	1
country	ZW	2009	Don't know	63
country	ZW	2009	Speak out about the problem	61
\.


--
-- Name: most_effective_way_to_combat_corruption pk_most_effective_way_to_combat_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.most_effective_way_to_combat_corruption
    ADD CONSTRAINT pk_most_effective_way_to_combat_corruption PRIMARY KEY (geo_level, geo_code, geo_version, most_effective_way_to_combat_corruption);


--
-- PostgreSQL database dump complete
--

