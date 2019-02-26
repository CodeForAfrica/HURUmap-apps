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
province	10	2009	China's extraction of resources from Africa	28
province	10	2009	China's willingness to cooperate with undemocratic rulers	3
province	10	2009	Don't know / Haven't heard enough	8
province	10	2009	Land grabbing by Chinese individuals or businesses	5
province	10	2009	None of these	6
province	10	2009	Taking jobs or business from the locals	29
province	10	2009	The behavior of Chinese citizens in the country	1
province	10	2009	The quality of Chinese products	72
province	19	2009	China's extraction of resources from Africa	120
province	19	2009	China's willingness to cooperate with undemocratic rulers	16
province	19	2009	Don't know / Haven't heard enough	5
province	19	2009	Land grabbing by Chinese individuals or businesses	11
province	19	2009	None of these	24
province	19	2009	Some other factor	3
province	19	2009	Taking jobs or business from the locals	21
province	19	2009	The behavior of Chinese citizens in the country	11
province	19	2009	The quality of Chinese products	237
province	11	2009	China's extraction of resources from Africa	73
province	11	2009	China's willingness to cooperate with undemocratic rulers	15
province	11	2009	Don't know / Haven't heard enough	62
province	11	2009	Land grabbing by Chinese individuals or businesses	17
province	11	2009	None of these	7
province	11	2009	Some other factor	1
province	11	2009	Taking jobs or business from the locals	32
province	11	2009	The behavior of Chinese citizens in the country	5
province	11	2009	The quality of Chinese products	92
province	12	2009	China's extraction of resources from Africa	28
province	12	2009	China's willingness to cooperate with undemocratic rulers	1
province	12	2009	Don't know / Haven't heard enough	17
province	12	2009	Land grabbing by Chinese individuals or businesses	3
province	12	2009	None of these	22
province	12	2009	Some other factor	3
province	12	2009	Taking jobs or business from the locals	19
province	12	2009	The behavior of Chinese citizens in the country	10
province	12	2009	The quality of Chinese products	105
province	13	2009	China's extraction of resources from Africa	37
province	13	2009	China's willingness to cooperate with undemocratic rulers	2
province	13	2009	Don't know / Haven't heard enough	34
province	13	2009	Land grabbing by Chinese individuals or businesses	15
province	13	2009	None of these	5
province	13	2009	Some other factor	7
province	13	2009	Taking jobs or business from the locals	30
province	13	2009	The behavior of Chinese citizens in the country	8
province	13	2009	The quality of Chinese products	110
province	14	2009	China's extraction of resources from Africa	61
province	14	2009	China's willingness to cooperate with undemocratic rulers	4
province	14	2009	Don't know / Haven't heard enough	20
province	14	2009	Land grabbing by Chinese individuals or businesses	13
province	14	2009	None of these	8
province	14	2009	Some other factor	4
province	14	2009	Taking jobs or business from the locals	21
province	14	2009	The behavior of Chinese citizens in the country	7
province	14	2009	The quality of Chinese products	134
province	18	2009	China's extraction of resources from Africa	33
province	18	2009	China's willingness to cooperate with undemocratic rulers	4
province	18	2009	Don't know / Haven't heard enough	15
province	18	2009	Land grabbing by Chinese individuals or businesses	8
province	18	2009	None of these	6
province	18	2009	Taking jobs or business from the locals	14
province	18	2009	The behavior of Chinese citizens in the country	7
province	18	2009	The quality of Chinese products	161
province	15	2009	China's extraction of resources from Africa	8
province	15	2009	China's willingness to cooperate with undemocratic rulers	2
province	15	2009	Don't know / Haven't heard enough	35
province	15	2009	Land grabbing by Chinese individuals or businesses	1
province	15	2009	None of these	6
province	15	2009	Some other factor	1
province	15	2009	Taking jobs or business from the locals	4
province	15	2009	The behavior of Chinese citizens in the country	8
province	15	2009	The quality of Chinese products	63
province	16	2009	China's extraction of resources from Africa	9
province	16	2009	Don't know / Haven't heard enough	23
province	16	2009	Land grabbing by Chinese individuals or businesses	3
province	16	2009	None of these	8
province	16	2009	Taking jobs or business from the locals	11
province	16	2009	The behavior of Chinese citizens in the country	3
province	16	2009	The quality of Chinese products	47
province	17	2009	China's extraction of resources from Africa	44
province	17	2009	China's willingness to cooperate with undemocratic rulers	12
province	17	2009	Don't know / Haven't heard enough	25
province	17	2009	Land grabbing by Chinese individuals or businesses	19
province	17	2009	None of these	22
province	17	2009	Some other factor	5
province	17	2009	Taking jobs or business from the locals	40
province	17	2009	The behavior of Chinese citizens in the country	6
province	17	2009	The quality of Chinese products	115
country	ZW	2009	Some other factor	24
country	ZW	2009	The quality of Chinese products	1136
country	ZW	2009	The behavior of Chinese citizens in the country	66
country	ZW	2009	Taking jobs or business from the locals	221
country	ZW	2009	Don't know / Haven't heard enough	244
country	ZW	2009	None of these	114
country	ZW	2009	China's extraction of resources from Africa	441
country	ZW	2009	Land grabbing by Chinese individuals or businesses	95
country	ZW	2009	China's willingness to cooperate with undemocratic rulers	59
\.


--
-- Name: negative_image_of_china pk_negative_image_of_china; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.negative_image_of_china
    ADD CONSTRAINT pk_negative_image_of_china PRIMARY KEY (geo_level, geo_code, geo_version, negative_image_of_china);


--
-- PostgreSQL database dump complete
--

