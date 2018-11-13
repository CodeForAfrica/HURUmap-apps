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
county	30	2009	Don't know	5
county	36	2009	Don't know	1
county	39	2009	Don't know	2
county	28	2009	Don't know	1
county	14	2009	Don't know	2
county	7	2009	Don't know	3
county	34	2009	Don't know	1
county	37	2009	Don't know	2
county	35	2009	Don't know	1
county	22	2009	Don't know	2
county	3	2009	Don't know	2
county	45	2009	Don't know	1
county	2	2009	Don't know	3
county	31	2009	Don't know	3
county	17	2009	Don't know	4
county	9	2009	Don't know	1
county	12	2009	Don't know	6
county	21	2009	Don't know	1
county	47	2009	Don't know	6
county	32	2009	Don't know	5
county	29	2009	Don't know	7
county	19	2009	Don't know	1
county	25	2009	Don't know	1
county	41	2009	Don't know	1
county	6	2009	Don't know	2
county	4	2009	Don't know	3
county	13	2009	Don't know	1
county	26	2009	Don't know	3
county	23	2009	Don't know	6
county	27	2009	Don't know	7
county	38	2009	Don't know	2
county	8	2009	Don't know	1
county	24	2009	Don't know	1
county	47	2009	Educate people	1
county	46	2009	Educate people	1
county	36	2009	Join or support an organization that is fighting corruption	1
county	39	2009	Join or support an organization that is fighting corruption	2
county	40	2009	Join or support an organization that is fighting corruption	2
county	7	2009	Join or support an organization that is fighting corruption	2
county	43	2009	Join or support an organization that is fighting corruption	4
county	34	2009	Join or support an organization that is fighting corruption	1
county	37	2009	Join or support an organization that is fighting corruption	3
county	35	2009	Join or support an organization that is fighting corruption	2
county	22	2009	Join or support an organization that is fighting corruption	4
county	45	2009	Join or support an organization that is fighting corruption	1
county	42	2009	Join or support an organization that is fighting corruption	1
county	2	2009	Join or support an organization that is fighting corruption	1
county	16	2009	Join or support an organization that is fighting corruption	1
county	17	2009	Join or support an organization that is fighting corruption	3
county	44	2009	Join or support an organization that is fighting corruption	2
county	1	2009	Join or support an organization that is fighting corruption	1
county	21	2009	Join or support an organization that is fighting corruption	2
county	47	2009	Join or support an organization that is fighting corruption	3
county	32	2009	Join or support an organization that is fighting corruption	3
county	33	2009	Join or support an organization that is fighting corruption	1
county	46	2009	Join or support an organization that is fighting corruption	3
county	25	2009	Join or support an organization that is fighting corruption	1
county	13	2009	Join or support an organization that is fighting corruption	2
county	26	2009	Join or support an organization that is fighting corruption	4
county	27	2009	Join or support an organization that is fighting corruption	1
county	22	2009	Missing	2
county	21	2009	Missing	1
county	47	2009	Missing	1
county	30	2009	Nothing / Ordinary people cannot do anything	1
county	36	2009	Nothing / Ordinary people cannot do anything	15
county	39	2009	Nothing / Ordinary people cannot do anything	21
county	40	2009	Nothing / Ordinary people cannot do anything	15
county	28	2009	Nothing / Ordinary people cannot do anything	4
county	14	2009	Nothing / Ordinary people cannot do anything	10
county	7	2009	Nothing / Ordinary people cannot do anything	10
county	43	2009	Nothing / Ordinary people cannot do anything	31
county	11	2009	Nothing / Ordinary people cannot do anything	5
county	34	2009	Nothing / Ordinary people cannot do anything	7
county	37	2009	Nothing / Ordinary people cannot do anything	32
county	35	2009	Nothing / Ordinary people cannot do anything	11
county	22	2009	Nothing / Ordinary people cannot do anything	15
county	3	2009	Nothing / Ordinary people cannot do anything	23
county	20	2009	Nothing / Ordinary people cannot do anything	4
county	45	2009	Nothing / Ordinary people cannot do anything	27
county	42	2009	Nothing / Ordinary people cannot do anything	29
county	15	2009	Nothing / Ordinary people cannot do anything	6
county	2	2009	Nothing / Ordinary people cannot do anything	8
county	31	2009	Nothing / Ordinary people cannot do anything	8
county	5	2009	Nothing / Ordinary people cannot do anything	1
county	16	2009	Nothing / Ordinary people cannot do anything	10
county	17	2009	Nothing / Ordinary people cannot do anything	7
county	9	2009	Nothing / Ordinary people cannot do anything	19
county	10	2009	Nothing / Ordinary people cannot do anything	8
county	12	2009	Nothing / Ordinary people cannot do anything	17
county	44	2009	Nothing / Ordinary people cannot do anything	14
county	1	2009	Nothing / Ordinary people cannot do anything	22
county	21	2009	Nothing / Ordinary people cannot do anything	8
county	47	2009	Nothing / Ordinary people cannot do anything	60
county	32	2009	Nothing / Ordinary people cannot do anything	28
county	29	2009	Nothing / Ordinary people cannot do anything	6
county	33	2009	Nothing / Ordinary people cannot do anything	11
county	46	2009	Nothing / Ordinary people cannot do anything	12
county	18	2009	Nothing / Ordinary people cannot do anything	2
county	19	2009	Nothing / Ordinary people cannot do anything	3
county	25	2009	Nothing / Ordinary people cannot do anything	1
county	41	2009	Nothing / Ordinary people cannot do anything	12
county	6	2009	Nothing / Ordinary people cannot do anything	1
county	4	2009	Nothing / Ordinary people cannot do anything	3
county	13	2009	Nothing / Ordinary people cannot do anything	7
county	26	2009	Nothing / Ordinary people cannot do anything	14
county	23	2009	Nothing / Ordinary people cannot do anything	10
county	27	2009	Nothing / Ordinary people cannot do anything	1
county	38	2009	Nothing / Ordinary people cannot do anything	9
county	8	2009	Nothing / Ordinary people cannot do anything	16
county	24	2009	Nothing / Ordinary people cannot do anything	6
county	40	2009	Other	1
county	22	2009	Other	1
county	42	2009	Other	1
county	17	2009	Other	1
county	9	2009	Other	1
county	21	2009	Other	1
county	47	2009	Other	1
county	32	2009	Other	1
county	29	2009	Other	1
county	19	2009	Other	1
county	41	2009	Other	1
county	6	2009	Other	2
county	26	2009	Other	1
county	27	2009	Other	1
county	38	2009	Other	1
county	30	2009	Participate in protest marches	1
county	39	2009	Participate in protest marches	5
county	43	2009	Participate in protest marches	3
county	22	2009	Participate in protest marches	1
county	42	2009	Participate in protest marches	2
county	16	2009	Participate in protest marches	1
county	44	2009	Participate in protest marches	1
county	1	2009	Participate in protest marches	1
county	21	2009	Participate in protest marches	1
county	47	2009	Participate in protest marches	4
county	29	2009	Participate in protest marches	1
county	19	2009	Participate in protest marches	1
county	26	2009	Participate in protest marches	3
county	21	2009	Punish the responsible person	1
county	30	2009	Refuse to pay bribes	16
county	36	2009	Refuse to pay bribes	13
county	39	2009	Refuse to pay bribes	16
county	40	2009	Refuse to pay bribes	5
county	28	2009	Refuse to pay bribes	5
county	14	2009	Refuse to pay bribes	20
county	7	2009	Refuse to pay bribes	13
county	43	2009	Refuse to pay bribes	7
county	11	2009	Refuse to pay bribes	3
county	34	2009	Refuse to pay bribes	27
county	37	2009	Refuse to pay bribes	24
county	35	2009	Refuse to pay bribes	19
county	22	2009	Refuse to pay bribes	53
county	3	2009	Refuse to pay bribes	23
county	20	2009	Refuse to pay bribes	18
county	45	2009	Refuse to pay bribes	17
county	42	2009	Refuse to pay bribes	14
county	15	2009	Refuse to pay bribes	28
county	2	2009	Refuse to pay bribes	12
county	31	2009	Refuse to pay bribes	9
county	5	2009	Refuse to pay bribes	6
county	16	2009	Refuse to pay bribes	36
county	17	2009	Refuse to pay bribes	22
county	9	2009	Refuse to pay bribes	18
county	10	2009	Refuse to pay bribes	7
county	12	2009	Refuse to pay bribes	37
county	44	2009	Refuse to pay bribes	11
county	1	2009	Refuse to pay bribes	25
county	21	2009	Refuse to pay bribes	26
county	47	2009	Refuse to pay bribes	98
county	32	2009	Refuse to pay bribes	41
county	29	2009	Refuse to pay bribes	21
county	33	2009	Refuse to pay bribes	23
county	46	2009	Refuse to pay bribes	6
county	18	2009	Refuse to pay bribes	23
county	19	2009	Refuse to pay bribes	25
county	25	2009	Refuse to pay bribes	3
county	41	2009	Refuse to pay bribes	22
county	6	2009	Refuse to pay bribes	3
county	4	2009	Refuse to pay bribes	2
county	13	2009	Refuse to pay bribes	8
county	26	2009	Refuse to pay bribes	12
county	23	2009	Refuse to pay bribes	18
county	27	2009	Refuse to pay bribes	24
county	38	2009	Refuse to pay bribes	9
county	8	2009	Refuse to pay bribes	9
county	24	2009	Refuse to pay bribes	12
county	30	2009	Report corruption when you see or experience it	4
county	36	2009	Report corruption when you see or experience it	8
county	39	2009	Report corruption when you see or experience it	23
county	40	2009	Report corruption when you see or experience it	9
county	28	2009	Report corruption when you see or experience it	2
county	14	2009	Report corruption when you see or experience it	2
county	7	2009	Report corruption when you see or experience it	1
county	43	2009	Report corruption when you see or experience it	5
county	34	2009	Report corruption when you see or experience it	7
county	37	2009	Report corruption when you see or experience it	19
county	35	2009	Report corruption when you see or experience it	4
county	22	2009	Report corruption when you see or experience it	38
county	3	2009	Report corruption when you see or experience it	12
county	20	2009	Report corruption when you see or experience it	13
county	45	2009	Report corruption when you see or experience it	21
county	42	2009	Report corruption when you see or experience it	7
county	15	2009	Report corruption when you see or experience it	10
county	2	2009	Report corruption when you see or experience it	14
county	31	2009	Report corruption when you see or experience it	2
county	5	2009	Report corruption when you see or experience it	1
county	16	2009	Report corruption when you see or experience it	16
county	17	2009	Report corruption when you see or experience it	11
county	9	2009	Report corruption when you see or experience it	5
county	10	2009	Report corruption when you see or experience it	1
county	12	2009	Report corruption when you see or experience it	11
county	44	2009	Report corruption when you see or experience it	15
county	1	2009	Report corruption when you see or experience it	18
county	21	2009	Report corruption when you see or experience it	20
county	47	2009	Report corruption when you see or experience it	55
county	32	2009	Report corruption when you see or experience it	17
county	29	2009	Report corruption when you see or experience it	6
county	33	2009	Report corruption when you see or experience it	8
county	46	2009	Report corruption when you see or experience it	16
county	18	2009	Report corruption when you see or experience it	11
county	19	2009	Report corruption when you see or experience it	13
county	41	2009	Report corruption when you see or experience it	7
county	6	2009	Report corruption when you see or experience it	6
county	13	2009	Report corruption when you see or experience it	1
county	26	2009	Report corruption when you see or experience it	6
county	23	2009	Report corruption when you see or experience it	5
county	27	2009	Report corruption when you see or experience it	10
county	38	2009	Report corruption when you see or experience it	5
county	8	2009	Report corruption when you see or experience it	3
county	24	2009	Report corruption when you see or experience it	4
county	28	2009	Sign a petition	1
county	14	2009	Sign a petition	1
county	43	2009	Sign a petition	1
county	34	2009	Sign a petition	1
county	37	2009	Sign a petition	1
county	45	2009	Sign a petition	1
county	42	2009	Sign a petition	1
county	2	2009	Sign a petition	1
county	16	2009	Sign a petition	1
county	9	2009	Sign a petition	1
county	29	2009	Sign a petition	1
county	41	2009	Sign a petition	1
county	13	2009	Sign a petition	1
county	26	2009	Sign a petition	1
county	27	2009	Sign a petition	2
county	8	2009	Sign a petition	1
county	36	2009	Speak out about the problem	3
county	39	2009	Speak out about the problem	4
county	40	2009	Speak out about the problem	2
county	28	2009	Speak out about the problem	1
county	14	2009	Speak out about the problem	1
county	7	2009	Speak out about the problem	2
county	43	2009	Speak out about the problem	2
county	34	2009	Speak out about the problem	1
county	37	2009	Speak out about the problem	3
county	22	2009	Speak out about the problem	2
county	3	2009	Speak out about the problem	2
county	20	2009	Speak out about the problem	3
county	45	2009	Speak out about the problem	1
county	15	2009	Speak out about the problem	2
county	31	2009	Speak out about the problem	1
county	16	2009	Speak out about the problem	2
county	17	2009	Speak out about the problem	3
county	9	2009	Speak out about the problem	1
county	12	2009	Speak out about the problem	1
county	44	2009	Speak out about the problem	1
county	1	2009	Speak out about the problem	1
county	21	2009	Speak out about the problem	3
county	47	2009	Speak out about the problem	8
county	32	2009	Speak out about the problem	2
county	29	2009	Speak out about the problem	1
county	33	2009	Speak out about the problem	2
county	18	2009	Speak out about the problem	1
county	19	2009	Speak out about the problem	3
county	41	2009	Speak out about the problem	4
county	6	2009	Speak out about the problem	1
county	26	2009	Speak out about the problem	1
county	23	2009	Speak out about the problem	1
county	27	2009	Speak out about the problem	1
county	38	2009	Speak out about the problem	2
county	8	2009	Speak out about the problem	1
county	30	2009	Talk to friends and relatives about the problem	1
county	36	2009	Talk to friends and relatives about the problem	3
county	39	2009	Talk to friends and relatives about the problem	1
county	40	2009	Talk to friends and relatives about the problem	2
county	43	2009	Talk to friends and relatives about the problem	1
county	34	2009	Talk to friends and relatives about the problem	1
county	37	2009	Talk to friends and relatives about the problem	2
county	22	2009	Talk to friends and relatives about the problem	1
county	20	2009	Talk to friends and relatives about the problem	2
county	45	2009	Talk to friends and relatives about the problem	3
county	42	2009	Talk to friends and relatives about the problem	1
county	16	2009	Talk to friends and relatives about the problem	1
county	17	2009	Talk to friends and relatives about the problem	4
county	44	2009	Talk to friends and relatives about the problem	1
county	1	2009	Talk to friends and relatives about the problem	1
county	47	2009	Talk to friends and relatives about the problem	3
county	32	2009	Talk to friends and relatives about the problem	1
county	29	2009	Talk to friends and relatives about the problem	1
county	46	2009	Talk to friends and relatives about the problem	1
county	19	2009	Talk to friends and relatives about the problem	1
county	26	2009	Talk to friends and relatives about the problem	1
county	23	2009	Talk to friends and relatives about the problem	5
county	27	2009	Talk to friends and relatives about the problem	1
county	30	2009	Vote for clean candidates	4
county	36	2009	Vote for clean candidates	4
county	39	2009	Vote for clean candidates	6
county	40	2009	Vote for clean candidates	4
county	28	2009	Vote for clean candidates	2
county	14	2009	Vote for clean candidates	4
county	7	2009	Vote for clean candidates	1
county	43	2009	Vote for clean candidates	2
county	34	2009	Vote for clean candidates	2
county	37	2009	Vote for clean candidates	10
county	35	2009	Vote for clean candidates	3
county	22	2009	Vote for clean candidates	1
county	3	2009	Vote for clean candidates	2
county	15	2009	Vote for clean candidates	10
county	2	2009	Vote for clean candidates	1
county	31	2009	Vote for clean candidates	1
county	16	2009	Vote for clean candidates	4
county	17	2009	Vote for clean candidates	1
county	9	2009	Vote for clean candidates	2
county	12	2009	Vote for clean candidates	13
county	44	2009	Vote for clean candidates	3
county	1	2009	Vote for clean candidates	3
county	47	2009	Vote for clean candidates	8
county	32	2009	Vote for clean candidates	6
county	29	2009	Vote for clean candidates	3
county	33	2009	Vote for clean candidates	3
county	46	2009	Vote for clean candidates	1
county	18	2009	Vote for clean candidates	3
county	25	2009	Vote for clean candidates	2
county	6	2009	Vote for clean candidates	1
county	13	2009	Vote for clean candidates	4
county	26	2009	Vote for clean candidates	2
county	23	2009	Vote for clean candidates	3
county	27	2009	Vote for clean candidates	8
county	38	2009	Vote for clean candidates	4
county	8	2009	Vote for clean candidates	1
county	24	2009	Vote for clean candidates	1
\.


--
-- Name: most_effective_way_to_combat_corruption pk_most_effective_way_to_combat_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.most_effective_way_to_combat_corruption
    ADD CONSTRAINT pk_most_effective_way_to_combat_corruption PRIMARY KEY (geo_level, geo_code, geo_version, most_effective_way_to_combat_corruption);


--
-- PostgreSQL database dump complete
--

