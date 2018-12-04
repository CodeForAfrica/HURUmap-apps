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
province	1	2010	Don't know	48
province	1	2010	Join or support an organization that is fighting corruption	36
province	1	2010	Missing	1
province	1	2010	Nothing / Ordinary people cannot do anything	139
province	1	2010	Other	8
province	1	2010	Participate in protest marches	4
province	1	2010	Refuse to pay bribes	220
province	1	2010	Report corruption when you see or experience it	265
province	1	2010	Sign a petition	6
province	1	2010	Speak out about the problem	31
province	1	2010	Talk to friends and relatives about the problem	20
province	1	2010	Vote for clean candidates	53
province	2	2010	Join or support an organization that is fighting corruption	3
province	2	2010	Nothing / Ordinary people cannot do anything	14
province	2	2010	Refuse to pay bribes	3
province	2	2010	Report corruption when you see or experience it	6
province	2	2010	Speak out about the problem	1
province	2	2010	Talk to friends and relatives about the problem	2
province	2	2010	Vote for clean candidates	3
province	3	2010	Don't know	7
province	3	2010	Join or support an organization that is fighting corruption	3
province	3	2010	Nothing / Ordinary people cannot do anything	16
province	3	2010	Refuse to pay bribes	3
province	3	2010	Report corruption when you see or experience it	9
province	3	2010	Talk to friends and relatives about the problem	1
province	3	2010	Vote for clean candidates	1
province	4	2010	Don't know	3
province	4	2010	Join or support an organization that is fighting corruption	2
province	4	2010	Nothing / Ordinary people cannot do anything	3
province	4	2010	Other	2
province	4	2010	Refuse to pay bribes	6
province	4	2010	Report corruption when you see or experience it	19
province	4	2010	Speak out about the problem	1
province	4	2010	Talk to friends and relatives about the problem	2
province	4	2010	Vote for clean candidates	2
province	6	2010	Don't know	5
province	6	2010	Join or support an organization that is fighting corruption	2
province	6	2010	Nothing / Ordinary people cannot do anything	7
province	6	2010	Participate in protest marches	1
province	6	2010	Refuse to pay bribes	11
province	6	2010	Report corruption when you see or experience it	14
province	6	2010	Speak out about the problem	3
province	6	2010	Vote for clean candidates	5
province	8	2010	Join or support an organization that is fighting corruption	1
province	8	2010	Nothing / Ordinary people cannot do anything	4
province	8	2010	Refuse to pay bribes	13
province	8	2010	Report corruption when you see or experience it	4
province	8	2010	Speak out about the problem	1
province	8	2010	Vote for clean candidates	1
province	7	2010	Don't know	3
province	7	2010	Join or support an organization that is fighting corruption	2
province	7	2010	Nothing / Ordinary people cannot do anything	7
province	7	2010	Other	1
province	7	2010	Refuse to pay bribes	10
province	7	2010	Report corruption when you see or experience it	13
province	7	2010	Speak out about the problem	3
province	7	2010	Talk to friends and relatives about the problem	4
province	7	2010	Vote for clean candidates	5
province	9	2010	Don't know	3
province	9	2010	Join or support an organization that is fighting corruption	1
province	9	2010	Nothing / Ordinary people cannot do anything	12
province	9	2010	Refuse to pay bribes	14
province	9	2010	Report corruption when you see or experience it	42
province	9	2010	Speak out about the problem	2
province	9	2010	Vote for clean candidates	6
province	10	2010	Don't know	4
province	10	2010	Nothing / Ordinary people cannot do anything	16
province	10	2010	Other	1
province	10	2010	Refuse to pay bribes	10
province	10	2010	Report corruption when you see or experience it	13
province	10	2010	Speak out about the problem	3
province	10	2010	Talk to friends and relatives about the problem	2
province	10	2010	Vote for clean candidates	7
country	ZM	2010	Join or support an organization that is fighting corruption	50
country	ZM	2010	Talk to friends and relatives about the problem	31
country	ZM	2010	Participate in protest marches	5
country	ZM	2010	Missing	1
country	ZM	2010	Vote for clean candidates	83
country	ZM	2010	Nothing / Ordinary people cannot do anything	218
country	ZM	2010	Other	12
country	ZM	2010	Sign a petition	6
country	ZM	2010	Report corruption when you see or experience it	385
country	ZM	2010	Refuse to pay bribes	290
country	ZM	2010	Don't know	73
country	ZM	2010	Speak out about the problem	45
\.


--
-- Name: most_effective_way_to_combat_corruption pk_most_effective_way_to_combat_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.most_effective_way_to_combat_corruption
    ADD CONSTRAINT pk_most_effective_way_to_combat_corruption PRIMARY KEY (geo_level, geo_code, geo_version, most_effective_way_to_combat_corruption);


--
-- PostgreSQL database dump complete
--

