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

ALTER TABLE IF EXISTS ONLY public.negative_image_of_china DROP CONSTRAINT IF EXISTS pk_negative_image_of_china;
DROP TABLE IF EXISTS public.negative_image_of_china;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: negative_image_of_china; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.negative_image_of_china (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    negative_image_of_china character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: negative_image_of_china; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.negative_image_of_china (geo_level, geo_code, geo_version, negative_image_of_china, total) FROM stdin;
region	1	2009	China's extraction of resources from Africa	10
region	1	2009	China's willingness to cooperate with undemocratic rulers	5
region	1	2009	Don't know / Haven't heard enough	30
region	1	2009	Land grabbing by Chinese individuals or businesses	10
region	1	2009	Some other factor	2
region	1	2009	Taking jobs or business from the locals	28
region	1	2009	The behavior of Chinese citizens in the country	2
region	1	2009	The quality of Chinese products	33
region	2	2009	China's extraction of resources from Africa	23
region	2	2009	China's willingness to cooperate with undemocratic rulers	14
region	2	2009	Don't know / Haven't heard enough	34
region	2	2009	Land grabbing by Chinese individuals or businesses	11
region	2	2009	None of these	4
region	2	2009	Some other factor	1
region	2	2009	Taking jobs or business from the locals	66
region	2	2009	The behavior of Chinese citizens in the country	11
region	2	2009	The quality of Chinese products	109
region	3	2009	China's extraction of resources from Africa	5
region	3	2009	Don't know / Haven't heard enough	32
region	3	2009	Land grabbing by Chinese individuals or businesses	6
region	3	2009	None of these	7
region	3	2009	Some other factor	1
region	3	2009	Taking jobs or business from the locals	4
region	3	2009	The quality of Chinese products	41
region	4	2009	China's extraction of resources from Africa	2
region	4	2009	China's willingness to cooperate with undemocratic rulers	1
region	4	2009	Don't know / Haven't heard enough	13
region	4	2009	Land grabbing by Chinese individuals or businesses	14
region	4	2009	None of these	5
region	4	2009	Some other factor	3
region	4	2009	Taking jobs or business from the locals	9
region	4	2009	The behavior of Chinese citizens in the country	5
region	4	2009	The quality of Chinese products	19
region	5	2009	China's extraction of resources from Africa	3
region	5	2009	China's willingness to cooperate with undemocratic rulers	1
region	5	2009	Don't know / Haven't heard enough	11
region	5	2009	Land grabbing by Chinese individuals or businesses	1
region	5	2009	Taking jobs or business from the locals	12
region	5	2009	The quality of Chinese products	20
region	6	2009	China's extraction of resources from Africa	1
region	6	2009	China's willingness to cooperate with undemocratic rulers	4
region	6	2009	Don't know / Haven't heard enough	25
region	6	2009	Land grabbing by Chinese individuals or businesses	7
region	6	2009	None of these	1
region	6	2009	Taking jobs or business from the locals	9
region	6	2009	The behavior of Chinese citizens in the country	2
region	6	2009	The quality of Chinese products	23
region	7	2009	China's extraction of resources from Africa	4
region	7	2009	China's willingness to cooperate with undemocratic rulers	3
region	7	2009	Don't know / Haven't heard enough	5
region	7	2009	None of these	1
region	7	2009	Taking jobs or business from the locals	20
region	7	2009	The behavior of Chinese citizens in the country	1
region	7	2009	The quality of Chinese products	22
region	8	2009	China's extraction of resources from Africa	2
region	8	2009	China's willingness to cooperate with undemocratic rulers	2
region	8	2009	Don't know / Haven't heard enough	2
region	8	2009	Taking jobs or business from the locals	18
region	8	2009	The quality of Chinese products	16
region	9	2009	China's willingness to cooperate with undemocratic rulers	1
region	9	2009	Don't know / Haven't heard enough	5
region	9	2009	Land grabbing by Chinese individuals or businesses	1
region	9	2009	Taking jobs or business from the locals	4
region	9	2009	The quality of Chinese products	13
region	10	2009	China's extraction of resources from Africa	5
region	10	2009	China's willingness to cooperate with undemocratic rulers	9
region	10	2009	Don't know / Haven't heard enough	33
region	10	2009	Land grabbing by Chinese individuals or businesses	6
region	10	2009	Taking jobs or business from the locals	16
region	10	2009	The behavior of Chinese citizens in the country	2
region	10	2009	The quality of Chinese products	25
region	11	2009	China's extraction of resources from Africa	10
region	11	2009	China's willingness to cooperate with undemocratic rulers	10
region	11	2009	Don't know / Haven't heard enough	8
region	11	2009	Land grabbing by Chinese individuals or businesses	8
region	11	2009	Taking jobs or business from the locals	21
region	11	2009	The behavior of Chinese citizens in the country	3
region	11	2009	The quality of Chinese products	28
region	12	2009	Taking jobs or business from the locals	4
region	12	2009	The quality of Chinese products	4
region	13	2009	China's extraction of resources from Africa	1
region	13	2009	Don't know / Haven't heard enough	2
region	13	2009	Taking jobs or business from the locals	11
region	13	2009	The quality of Chinese products	10
region	14	2009	China's willingness to cooperate with undemocratic rulers	5
region	14	2009	Taking jobs or business from the locals	13
region	14	2009	The behavior of Chinese citizens in the country	1
region	14	2009	The quality of Chinese products	29
region	15	2009	China's extraction of resources from Africa	13
region	15	2009	China's willingness to cooperate with undemocratic rulers	3
region	15	2009	Don't know / Haven't heard enough	5
region	15	2009	Land grabbing by Chinese individuals or businesses	6
region	15	2009	None of these	2
region	15	2009	Taking jobs or business from the locals	7
region	15	2009	The behavior of Chinese citizens in the country	2
region	15	2009	The quality of Chinese products	26
region	16	2009	China's extraction of resources from Africa	2
region	16	2009	China's willingness to cooperate with undemocratic rulers	1
region	16	2009	Don't know / Haven't heard enough	13
region	16	2009	Land grabbing by Chinese individuals or businesses	18
region	16	2009	None of these	5
region	16	2009	Some other factor	2
region	16	2009	Taking jobs or business from the locals	8
region	16	2009	The behavior of Chinese citizens in the country	4
region	16	2009	The quality of Chinese products	27
region	17	2009	China's extraction of resources from Africa	1
region	17	2009	China's willingness to cooperate with undemocratic rulers	3
region	17	2009	Don't know / Haven't heard enough	10
region	17	2009	Land grabbing by Chinese individuals or businesses	3
region	17	2009	Taking jobs or business from the locals	9
region	17	2009	The quality of Chinese products	38
region	30	2009	China's extraction of resources from Africa	6
region	30	2009	China's willingness to cooperate with undemocratic rulers	5
region	30	2009	Don't know / Haven't heard enough	2
region	30	2009	Taking jobs or business from the locals	49
region	30	2009	The behavior of Chinese citizens in the country	3
region	30	2009	The quality of Chinese products	47
region	18	2009	China's extraction of resources from Africa	7
region	18	2009	Don't know / Haven't heard enough	43
region	18	2009	Land grabbing by Chinese individuals or businesses	8
region	18	2009	None of these	3
region	18	2009	Some other factor	2
region	18	2009	Taking jobs or business from the locals	4
region	18	2009	The quality of Chinese products	53
region	19	2009	China's extraction of resources from Africa	2
region	19	2009	China's willingness to cooperate with undemocratic rulers	6
region	19	2009	Don't know / Haven't heard enough	1
region	19	2009	Land grabbing by Chinese individuals or businesses	1
region	19	2009	Taking jobs or business from the locals	38
region	19	2009	The quality of Chinese products	23
region	20	2009	China's extraction of resources from Africa	8
region	20	2009	China's willingness to cooperate with undemocratic rulers	5
region	20	2009	Don't know / Haven't heard enough	8
region	20	2009	Land grabbing by Chinese individuals or businesses	12
region	20	2009	None of these	4
region	20	2009	Some other factor	5
region	20	2009	Taking jobs or business from the locals	38
region	20	2009	The behavior of Chinese citizens in the country	4
region	20	2009	The quality of Chinese products	40
region	21	2009	China's extraction of resources from Africa	4
region	21	2009	Don't know / Haven't heard enough	6
region	21	2009	Taking jobs or business from the locals	12
region	21	2009	The behavior of Chinese citizens in the country	2
region	21	2009	The quality of Chinese products	16
region	22	2009	China's extraction of resources from Africa	4
region	22	2009	China's willingness to cooperate with undemocratic rulers	9
region	22	2009	Don't know / Haven't heard enough	6
region	22	2009	Land grabbing by Chinese individuals or businesses	7
region	22	2009	Taking jobs or business from the locals	9
region	22	2009	The behavior of Chinese citizens in the country	4
region	22	2009	The quality of Chinese products	33
region	23	2009	China's willingness to cooperate with undemocratic rulers	2
region	23	2009	Don't know / Haven't heard enough	10
region	23	2009	Land grabbing by Chinese individuals or businesses	1
region	23	2009	Taking jobs or business from the locals	7
region	23	2009	The behavior of Chinese citizens in the country	1
region	23	2009	The quality of Chinese products	18
region	24	2009	China's extraction of resources from Africa	9
region	24	2009	China's willingness to cooperate with undemocratic rulers	3
region	24	2009	Don't know / Haven't heard enough	11
region	24	2009	Land grabbing by Chinese individuals or businesses	3
region	24	2009	Some other factor	1
region	24	2009	Taking jobs or business from the locals	16
region	24	2009	The behavior of Chinese citizens in the country	3
region	24	2009	The quality of Chinese products	26
region	25	2009	China's extraction of resources from Africa	9
region	25	2009	China's willingness to cooperate with undemocratic rulers	6
region	25	2009	Don't know / Haven't heard enough	3
region	25	2009	Land grabbing by Chinese individuals or businesses	6
region	25	2009	Taking jobs or business from the locals	19
region	25	2009	The behavior of Chinese citizens in the country	8
region	25	2009	The quality of Chinese products	21
region	26	2009	China's extraction of resources from Africa	2
region	26	2009	China's willingness to cooperate with undemocratic rulers	3
region	26	2009	Don't know / Haven't heard enough	24
region	26	2009	Land grabbing by Chinese individuals or businesses	4
region	26	2009	Taking jobs or business from the locals	8
region	26	2009	The behavior of Chinese citizens in the country	5
region	26	2009	The quality of Chinese products	18
region	27	2009	China's extraction of resources from Africa	6
region	27	2009	China's willingness to cooperate with undemocratic rulers	4
region	27	2009	Don't know / Haven't heard enough	13
region	27	2009	Land grabbing by Chinese individuals or businesses	6
region	27	2009	Taking jobs or business from the locals	13
region	27	2009	The behavior of Chinese citizens in the country	5
region	27	2009	The quality of Chinese products	17
region	31	2009	China's extraction of resources from Africa	6
region	31	2009	China's willingness to cooperate with undemocratic rulers	1
region	31	2009	Don't know / Haven't heard enough	14
region	31	2009	Land grabbing by Chinese individuals or businesses	4
region	31	2009	Taking jobs or business from the locals	10
region	31	2009	The behavior of Chinese citizens in the country	3
region	31	2009	The quality of Chinese products	34
region	29	2009	China's extraction of resources from Africa	5
region	29	2009	Don't know / Haven't heard enough	31
region	29	2009	Land grabbing by Chinese individuals or businesses	6
region	29	2009	None of these	2
region	29	2009	Some other factor	2
region	29	2009	Taking jobs or business from the locals	15
region	29	2009	The behavior of Chinese citizens in the country	4
region	29	2009	The quality of Chinese products	39
region	28	2009	China's extraction of resources from Africa	11
region	28	2009	China's willingness to cooperate with undemocratic rulers	9
region	28	2009	Don't know / Haven't heard enough	7
region	28	2009	Land grabbing by Chinese individuals or businesses	15
region	28	2009	Some other factor	1
region	28	2009	Taking jobs or business from the locals	11
region	28	2009	The behavior of Chinese citizens in the country	7
region	28	2009	The quality of Chinese products	27
country	TZ	2009	Some other factor	20
country	TZ	2009	The quality of Chinese products	895
country	TZ	2009	The behavior of Chinese citizens in the country	82
country	TZ	2009	Taking jobs or business from the locals	508
country	TZ	2009	Don't know / Haven't heard enough	407
country	TZ	2009	None of these	34
country	TZ	2009	China's extraction of resources from Africa	161
country	TZ	2009	Land grabbing by Chinese individuals or businesses	164
country	TZ	2009	China's willingness to cooperate with undemocratic rulers	115
\.


--
-- Name: negative_image_of_china pk_negative_image_of_china; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.negative_image_of_china
    ADD CONSTRAINT pk_negative_image_of_china PRIMARY KEY (geo_level, geo_code, geo_version, negative_image_of_china);


--
-- PostgreSQL database dump complete
--

