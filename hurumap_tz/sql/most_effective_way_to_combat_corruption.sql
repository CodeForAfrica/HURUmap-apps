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
region	1	2009	Don't know	2
region	1	2009	Join or support an organization that is fighting corruption	1
region	1	2009	Nothing / Ordinary people cannot do anything	25
region	1	2009	Participate in protest marches	1
region	1	2009	Refuse to pay bribes	46
region	1	2009	Report corruption when you see or experience it	16
region	1	2009	Speak out about the problem	13
region	1	2009	Talk to friends and relatives about the problem	2
region	1	2009	Vote for clean candidates	14
region	2	2009	Don't know	4
region	2	2009	Join or support an organization that is fighting corruption	6
region	2	2009	Nothing / Ordinary people cannot do anything	15
region	2	2009	Other	1
region	2	2009	Participate in protest marches	3
region	2	2009	Refuse to pay bribes	124
region	2	2009	Report corruption when you see or experience it	80
region	2	2009	Sign a petition	1
region	2	2009	Speak out about the problem	14
region	2	2009	Talk to friends and relatives about the problem	5
region	2	2009	Vote for clean candidates	20
region	3	2009	Don't know	9
region	3	2009	Join or support an organization that is fighting corruption	2
region	3	2009	Nothing / Ordinary people cannot do anything	32
region	3	2009	Participate in protest marches	1
region	3	2009	Refuse to pay bribes	24
region	3	2009	Report corruption when you see or experience it	21
region	3	2009	Speak out about the problem	1
region	3	2009	Talk to friends and relatives about the problem	2
region	3	2009	Vote for clean candidates	4
region	4	2009	Join or support an organization that is fighting corruption	3
region	4	2009	Nothing / Ordinary people cannot do anything	8
region	4	2009	Participate in protest marches	1
region	4	2009	Refuse to pay bribes	40
region	4	2009	Report corruption when you see or experience it	8
region	4	2009	Speak out about the problem	10
region	4	2009	Vote for clean candidates	1
region	5	2009	Don't know	3
region	5	2009	Join or support an organization that is fighting corruption	1
region	5	2009	Nothing / Ordinary people cannot do anything	10
region	5	2009	Refuse to pay bribes	18
region	5	2009	Report corruption when you see or experience it	5
region	5	2009	Sign a petition	1
region	5	2009	Speak out about the problem	3
region	5	2009	Talk to friends and relatives about the problem	5
region	5	2009	Vote for clean candidates	2
region	6	2009	Don't know	4
region	6	2009	Join or support an organization that is fighting corruption	1
region	6	2009	Nothing / Ordinary people cannot do anything	8
region	6	2009	Refuse to pay bribes	46
region	6	2009	Report corruption when you see or experience it	8
region	6	2009	Speak out about the problem	3
region	6	2009	Vote for clean candidates	2
region	7	2009	Join or support an organization that is fighting corruption	1
region	7	2009	Nothing / Ordinary people cannot do anything	9
region	7	2009	Other	1
region	7	2009	Refuse to pay bribes	28
region	7	2009	Report corruption when you see or experience it	11
region	7	2009	Speak out about the problem	2
region	7	2009	Vote for clean candidates	4
region	8	2009	Nothing / Ordinary people cannot do anything	1
region	8	2009	Refuse to pay bribes	19
region	8	2009	Report corruption when you see or experience it	10
region	8	2009	Speak out about the problem	2
region	8	2009	Talk to friends and relatives about the problem	1
region	8	2009	Vote for clean candidates	7
region	9	2009	Nothing / Ordinary people cannot do anything	5
region	9	2009	Refuse to pay bribes	7
region	9	2009	Report corruption when you see or experience it	5
region	9	2009	Speak out about the problem	4
region	9	2009	Talk to friends and relatives about the problem	2
region	9	2009	Vote for clean candidates	1
region	10	2009	Don't know	7
region	10	2009	Join or support an organization that is fighting corruption	1
region	10	2009	Nothing / Ordinary people cannot do anything	8
region	10	2009	Refuse to pay bribes	34
region	10	2009	Report corruption when you see or experience it	26
region	10	2009	Sign a petition	1
region	10	2009	Speak out about the problem	4
region	10	2009	Talk to friends and relatives about the problem	4
region	10	2009	Vote for clean candidates	11
region	11	2009	Don't know	2
region	11	2009	Join or support an organization that is fighting corruption	1
region	11	2009	Nothing / Ordinary people cannot do anything	18
region	11	2009	Participate in protest marches	2
region	11	2009	Refuse to pay bribes	25
region	11	2009	Report corruption when you see or experience it	14
region	11	2009	Sign a petition	1
region	11	2009	Speak out about the problem	6
region	11	2009	Talk to friends and relatives about the problem	2
region	11	2009	Vote for clean candidates	17
region	12	2009	Refuse to pay bribes	3
region	12	2009	Report corruption when you see or experience it	3
region	12	2009	Speak out about the problem	1
region	12	2009	Talk to friends and relatives about the problem	1
region	13	2009	Join or support an organization that is fighting corruption	1
region	13	2009	Nothing / Ordinary people cannot do anything	1
region	13	2009	Refuse to pay bribes	12
region	13	2009	Report corruption when you see or experience it	6
region	13	2009	Speak out about the problem	1
region	13	2009	Talk to friends and relatives about the problem	2
region	13	2009	Vote for clean candidates	1
region	14	2009	Nothing / Ordinary people cannot do anything	6
region	14	2009	Refuse to pay bribes	25
region	14	2009	Report corruption when you see or experience it	11
region	14	2009	Speak out about the problem	2
region	14	2009	Talk to friends and relatives about the problem	1
region	14	2009	Vote for clean candidates	3
region	15	2009	Don't know	2
region	15	2009	Nothing / Ordinary people cannot do anything	16
region	15	2009	Participate in protest marches	2
region	15	2009	Refuse to pay bribes	17
region	15	2009	Report corruption when you see or experience it	6
region	15	2009	Sign a petition	1
region	15	2009	Speak out about the problem	15
region	15	2009	Talk to friends and relatives about the problem	1
region	15	2009	Vote for clean candidates	4
region	16	2009	Don't know	3
region	16	2009	Join or support an organization that is fighting corruption	6
region	16	2009	Nothing / Ordinary people cannot do anything	14
region	16	2009	Other	1
region	16	2009	Participate in protest marches	1
region	16	2009	Refuse to pay bribes	31
region	16	2009	Report corruption when you see or experience it	14
region	16	2009	Sign a petition	1
region	16	2009	Speak out about the problem	3
region	16	2009	Talk to friends and relatives about the problem	1
region	16	2009	Vote for clean candidates	5
region	17	2009	Join or support an organization that is fighting corruption	2
region	17	2009	Nothing / Ordinary people cannot do anything	5
region	17	2009	Participate in protest marches	1
region	17	2009	Refuse to pay bribes	35
region	17	2009	Report corruption when you see or experience it	12
region	17	2009	Speak out about the problem	4
region	17	2009	Talk to friends and relatives about the problem	1
region	17	2009	Vote for clean candidates	4
region	30	2009	Join or support an organization that is fighting corruption	1
region	30	2009	Nothing / Ordinary people cannot do anything	7
region	30	2009	Refuse to pay bribes	49
region	30	2009	Report corruption when you see or experience it	31
region	30	2009	Speak out about the problem	6
region	30	2009	Talk to friends and relatives about the problem	7
region	30	2009	Vote for clean candidates	11
region	18	2009	Don't know	11
region	18	2009	Join or support an organization that is fighting corruption	5
region	18	2009	Nothing / Ordinary people cannot do anything	23
region	18	2009	Participate in protest marches	1
region	18	2009	Refuse to pay bribes	39
region	18	2009	Report corruption when you see or experience it	33
region	18	2009	Talk to friends and relatives about the problem	4
region	18	2009	Vote for clean candidates	4
region	19	2009	Join or support an organization that is fighting corruption	7
region	19	2009	Nothing / Ordinary people cannot do anything	3
region	19	2009	Participate in protest marches	1
region	19	2009	Refuse to pay bribes	26
region	19	2009	Report corruption when you see or experience it	18
region	19	2009	Speak out about the problem	6
region	19	2009	Talk to friends and relatives about the problem	3
region	19	2009	Vote for clean candidates	7
region	20	2009	Join or support an organization that is fighting corruption	6
region	20	2009	Nothing / Ordinary people cannot do anything	25
region	20	2009	Other	1
region	20	2009	Participate in protest marches	1
region	20	2009	Refuse to pay bribes	44
region	20	2009	Report corruption when you see or experience it	12
region	20	2009	Speak out about the problem	11
region	20	2009	Talk to friends and relatives about the problem	8
region	20	2009	Vote for clean candidates	16
region	21	2009	Don't know	2
region	21	2009	Nothing / Ordinary people cannot do anything	5
region	21	2009	Refuse to pay bribes	15
region	21	2009	Report corruption when you see or experience it	10
region	21	2009	Sign a petition	1
region	21	2009	Speak out about the problem	2
region	21	2009	Talk to friends and relatives about the problem	1
region	21	2009	Vote for clean candidates	4
region	22	2009	Don't know	1
region	22	2009	Join or support an organization that is fighting corruption	2
region	22	2009	Nothing / Ordinary people cannot do anything	15
region	22	2009	Refuse to pay bribes	26
region	22	2009	Report corruption when you see or experience it	14
region	22	2009	Speak out about the problem	3
region	22	2009	Talk to friends and relatives about the problem	2
region	22	2009	Vote for clean candidates	9
region	23	2009	Don't know	2
region	23	2009	Join or support an organization that is fighting corruption	2
region	23	2009	Nothing / Ordinary people cannot do anything	5
region	23	2009	Refuse to pay bribes	11
region	23	2009	Report corruption when you see or experience it	6
region	23	2009	Speak out about the problem	4
region	23	2009	Talk to friends and relatives about the problem	1
region	23	2009	Vote for clean candidates	8
region	24	2009	Join or support an organization that is fighting corruption	2
region	24	2009	Nothing / Ordinary people cannot do anything	12
region	24	2009	Participate in protest marches	2
region	24	2009	Refuse to pay bribes	28
region	24	2009	Report corruption when you see or experience it	7
region	24	2009	Sign a petition	2
region	24	2009	Speak out about the problem	8
region	24	2009	Talk to friends and relatives about the problem	3
region	24	2009	Vote for clean candidates	8
region	25	2009	Don't know	1
region	25	2009	Join or support an organization that is fighting corruption	1
region	25	2009	Nothing / Ordinary people cannot do anything	8
region	25	2009	Refuse to pay bribes	36
region	25	2009	Report corruption when you see or experience it	17
region	25	2009	Speak out about the problem	1
region	25	2009	Talk to friends and relatives about the problem	4
region	25	2009	Vote for clean candidates	4
region	26	2009	Don't know	8
region	26	2009	Nothing / Ordinary people cannot do anything	10
region	26	2009	Refuse to pay bribes	25
region	26	2009	Report corruption when you see or experience it	14
region	26	2009	Speak out about the problem	1
region	26	2009	Talk to friends and relatives about the problem	1
region	26	2009	Vote for clean candidates	5
region	27	2009	Join or support an organization that is fighting corruption	1
region	27	2009	Nothing / Ordinary people cannot do anything	14
region	27	2009	Refuse to pay bribes	25
region	27	2009	Report corruption when you see or experience it	14
region	27	2009	Speak out about the problem	4
region	27	2009	Vote for clean candidates	6
region	31	2009	Nothing / Ordinary people cannot do anything	12
region	31	2009	Refuse to pay bribes	30
region	31	2009	Report corruption when you see or experience it	9
region	31	2009	Speak out about the problem	7
region	31	2009	Talk to friends and relatives about the problem	4
region	31	2009	Vote for clean candidates	10
region	29	2009	Don't know	12
region	29	2009	Join or support an organization that is fighting corruption	1
region	29	2009	Nothing / Ordinary people cannot do anything	19
region	29	2009	Participate in protest marches	2
region	29	2009	Refuse to pay bribes	41
region	29	2009	Report corruption when you see or experience it	23
region	29	2009	Speak out about the problem	1
region	29	2009	Talk to friends and relatives about the problem	1
region	29	2009	Vote for clean candidates	4
region	28	2009	Don't know	5
region	28	2009	Nothing / Ordinary people cannot do anything	21
region	28	2009	Refuse to pay bribes	26
region	28	2009	Report corruption when you see or experience it	6
region	28	2009	Speak out about the problem	15
region	28	2009	Talk to friends and relatives about the problem	3
region	28	2009	Vote for clean candidates	12
country	TZ	2009	Join or support an organization that is fighting corruption	54
country	TZ	2009	Talk to friends and relatives about the problem	72
country	TZ	2009	Participate in protest marches	19
country	TZ	2009	Vote for clean candidates	208
country	TZ	2009	Nothing / Ordinary people cannot do anything	360
country	TZ	2009	Other	4
country	TZ	2009	Sign a petition	9
country	TZ	2009	Report corruption when you see or experience it	470
country	TZ	2009	Refuse to pay bribes	955
country	TZ	2009	Don't know	78
country	TZ	2009	Speak out about the problem	157
\.


--
-- Name: most_effective_way_to_combat_corruption pk_most_effective_way_to_combat_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.most_effective_way_to_combat_corruption
    ADD CONSTRAINT pk_most_effective_way_to_combat_corruption PRIMARY KEY (geo_level, geo_code, geo_version, most_effective_way_to_combat_corruption);


--
-- PostgreSQL database dump complete
--

