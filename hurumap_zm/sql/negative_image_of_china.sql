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
province	1	2010	China's extraction of resources from Africa	4
province	1	2010	China's willingness to cooperate with undemocratic rulers	3
province	1	2010	Don't know / Haven't heard enough	10
province	1	2010	Land grabbing by Chinese individuals or businesses	10
province	1	2010	None of these	2
province	1	2010	Taking jobs or business from the locals	13
province	1	2010	The behavior of Chinese citizens in the country	39
province	1	2010	The quality of Chinese products	39
province	2	2010	China's extraction of resources from Africa	18
province	2	2010	China's willingness to cooperate with undemocratic rulers	9
province	2	2010	Don't know / Haven't heard enough	3
province	2	2010	Land grabbing by Chinese individuals or businesses	53
province	2	2010	None of these	8
province	2	2010	Some other factor	4
province	2	2010	Taking jobs or business from the locals	43
province	2	2010	The behavior of Chinese citizens in the country	9
province	2	2010	The quality of Chinese products	45
province	3	2010	China's extraction of resources from Africa	7
province	3	2010	China's willingness to cooperate with undemocratic rulers	2
province	3	2010	Don't know / Haven't heard enough	23
province	3	2010	Land grabbing by Chinese individuals or businesses	11
province	3	2010	None of these	7
province	3	2010	Some other factor	5
province	3	2010	Taking jobs or business from the locals	4
province	3	2010	The behavior of Chinese citizens in the country	11
province	3	2010	The quality of Chinese products	66
province	4	2010	China's extraction of resources from Africa	8
province	4	2010	China's willingness to cooperate with undemocratic rulers	1
province	4	2010	Don't know / Haven't heard enough	19
province	4	2010	Land grabbing by Chinese individuals or businesses	2
province	4	2010	None of these	6
province	4	2010	Some other factor	1
province	4	2010	Taking jobs or business from the locals	6
province	4	2010	The behavior of Chinese citizens in the country	27
province	4	2010	The quality of Chinese products	16
province	5	2010	China's extraction of resources from Africa	27
province	5	2010	China's willingness to cooperate with undemocratic rulers	12
province	5	2010	Don't know / Haven't heard enough	23
province	5	2010	Land grabbing by Chinese individuals or businesses	26
province	5	2010	None of these	8
province	5	2010	Some other factor	4
province	5	2010	Taking jobs or business from the locals	37
province	5	2010	The behavior of Chinese citizens in the country	22
province	5	2010	The quality of Chinese products	65
province	6	2010	China's extraction of resources from Africa	4
province	6	2010	China's willingness to cooperate with undemocratic rulers	4
province	6	2010	Don't know / Haven't heard enough	6
province	6	2010	Land grabbing by Chinese individuals or businesses	7
province	6	2010	None of these	4
province	6	2010	Some other factor	1
province	6	2010	Taking jobs or business from the locals	7
province	6	2010	The behavior of Chinese citizens in the country	21
province	6	2010	The quality of Chinese products	10
province	8	2010	China's extraction of resources from Africa	3
province	8	2010	Don't know / Haven't heard enough	13
province	8	2010	Land grabbing by Chinese individuals or businesses	11
province	8	2010	None of these	3
province	8	2010	Some other factor	5
province	8	2010	Taking jobs or business from the locals	1
province	8	2010	The behavior of Chinese citizens in the country	9
province	8	2010	The quality of Chinese products	19
province	7	2010	China's extraction of resources from Africa	7
province	7	2010	China's willingness to cooperate with undemocratic rulers	6
province	7	2010	Don't know / Haven't heard enough	21
province	7	2010	Land grabbing by Chinese individuals or businesses	9
province	7	2010	None of these	8
province	7	2010	Some other factor	2
province	7	2010	Taking jobs or business from the locals	16
province	7	2010	The behavior of Chinese citizens in the country	16
province	7	2010	The quality of Chinese products	11
province	9	2010	China's extraction of resources from Africa	5
province	9	2010	China's willingness to cooperate with undemocratic rulers	1
province	9	2010	Don't know / Haven't heard enough	7
province	9	2010	Land grabbing by Chinese individuals or businesses	18
province	9	2010	None of these	7
province	9	2010	Taking jobs or business from the locals	5
province	9	2010	The behavior of Chinese citizens in the country	34
province	9	2010	The quality of Chinese products	59
province	10	2010	China's extraction of resources from Africa	9
province	10	2010	China's willingness to cooperate with undemocratic rulers	3
province	10	2010	Don't know / Haven't heard enough	9
province	10	2010	Land grabbing by Chinese individuals or businesses	2
province	10	2010	None of these	4
province	10	2010	Some other factor	1
province	10	2010	Taking jobs or business from the locals	11
province	10	2010	The behavior of Chinese citizens in the country	9
province	10	2010	The quality of Chinese products	32
country	ZM	2010	Some other factor	23
country	ZM	2010	The quality of Chinese products	362
country	ZM	2010	The behavior of Chinese citizens in the country	197
country	ZM	2010	Taking jobs or business from the locals	143
country	ZM	2010	Don't know / Haven't heard enough	134
country	ZM	2010	None of these	57
country	ZM	2010	China's extraction of resources from Africa	92
country	ZM	2010	Land grabbing by Chinese individuals or businesses	149
country	ZM	2010	China's willingness to cooperate with undemocratic rulers	41
\.


--
-- Name: negative_image_of_china pk_negative_image_of_china; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.negative_image_of_china
    ADD CONSTRAINT pk_negative_image_of_china PRIMARY KEY (geo_level, geo_code, geo_version, negative_image_of_china);


--
-- PostgreSQL database dump complete
--

