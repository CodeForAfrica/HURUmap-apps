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
province	1	2010	Don't know	5
province	1	2010	Join or support an organization that is fighting corruption	5
province	1	2010	Nothing / Ordinary people cannot do anything	20
province	1	2010	Other	2
province	1	2010	Participate in protest marches	2
province	1	2010	Refuse to pay bribes	36
province	1	2010	Report corruption when you see or experience it	36
province	1	2010	Sign a petition	2
province	1	2010	Speak out about the problem	3
province	1	2010	Talk to friends and relatives about the problem	3
province	1	2010	Vote for clean candidates	6
province	2	2010	Don't know	3
province	2	2010	Join or support an organization that is fighting corruption	12
province	2	2010	Nothing / Ordinary people cannot do anything	49
province	2	2010	Other	1
province	2	2010	Refuse to pay bribes	52
province	2	2010	Report corruption when you see or experience it	40
province	2	2010	Sign a petition	1
province	2	2010	Speak out about the problem	10
province	2	2010	Talk to friends and relatives about the problem	2
province	2	2010	Vote for clean candidates	21
province	3	2010	Don't know	20
province	3	2010	Join or support an organization that is fighting corruption	8
province	3	2010	Nothing / Ordinary people cannot do anything	50
province	3	2010	Refuse to pay bribes	9
province	3	2010	Report corruption when you see or experience it	35
province	3	2010	Sign a petition	1
province	3	2010	Speak out about the problem	2
province	3	2010	Talk to friends and relatives about the problem	5
province	3	2010	Vote for clean candidates	6
province	4	2010	Don't know	6
province	4	2010	Join or support an organization that is fighting corruption	6
province	4	2010	Nothing / Ordinary people cannot do anything	4
province	4	2010	Other	2
province	4	2010	Refuse to pay bribes	16
province	4	2010	Report corruption when you see or experience it	43
province	4	2010	Speak out about the problem	3
province	4	2010	Talk to friends and relatives about the problem	2
province	4	2010	Vote for clean candidates	5
province	5	2010	Don't know	10
province	5	2010	Join or support an organization that is fighting corruption	10
province	5	2010	Nothing / Ordinary people cannot do anything	26
province	5	2010	Other	3
province	5	2010	Participate in protest marches	2
province	5	2010	Refuse to pay bribes	68
province	5	2010	Report corruption when you see or experience it	76
province	5	2010	Sign a petition	1
province	5	2010	Speak out about the problem	9
province	5	2010	Talk to friends and relatives about the problem	7
province	5	2010	Vote for clean candidates	12
province	6	2010	Don't know	6
province	6	2010	Join or support an organization that is fighting corruption	3
province	6	2010	Nothing / Ordinary people cannot do anything	10
province	6	2010	Participate in protest marches	1
province	6	2010	Refuse to pay bribes	15
province	6	2010	Report corruption when you see or experience it	20
province	6	2010	Speak out about the problem	4
province	6	2010	Vote for clean candidates	5
province	8	2010	Don't know	2
province	8	2010	Join or support an organization that is fighting corruption	2
province	8	2010	Nothing / Ordinary people cannot do anything	7
province	8	2010	Refuse to pay bribes	38
province	8	2010	Report corruption when you see or experience it	12
province	8	2010	Speak out about the problem	1
province	8	2010	Talk to friends and relatives about the problem	1
province	8	2010	Vote for clean candidates	1
province	7	2010	Don't know	11
province	7	2010	Join or support an organization that is fighting corruption	3
province	7	2010	Nothing / Ordinary people cannot do anything	12
province	7	2010	Other	2
province	7	2010	Refuse to pay bribes	19
province	7	2010	Report corruption when you see or experience it	28
province	7	2010	Speak out about the problem	6
province	7	2010	Talk to friends and relatives about the problem	7
province	7	2010	Vote for clean candidates	8
province	9	2010	Don't know	4
province	9	2010	Join or support an organization that is fighting corruption	1
province	9	2010	Nothing / Ordinary people cannot do anything	20
province	9	2010	Refuse to pay bribes	22
province	9	2010	Report corruption when you see or experience it	73
province	9	2010	Sign a petition	1
province	9	2010	Speak out about the problem	3
province	9	2010	Talk to friends and relatives about the problem	2
province	9	2010	Vote for clean candidates	10
province	10	2010	Don't know	6
province	10	2010	Nothing / Ordinary people cannot do anything	20
province	10	2010	Other	2
province	10	2010	Refuse to pay bribes	15
province	10	2010	Report corruption when you see or experience it	22
province	10	2010	Speak out about the problem	4
province	10	2010	Talk to friends and relatives about the problem	2
province	10	2010	Vote for clean candidates	9
country	ZM	2010	Join or support an organization that is fighting corruption	50
country	ZM	2010	Talk to friends and relatives about the problem	31
country	ZM	2010	Participate in protest marches	5
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

