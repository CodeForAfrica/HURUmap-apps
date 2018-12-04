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
province	1	2010	China's extraction of resources from Africa	66
province	1	2010	China's willingness to cooperate with undemocratic rulers	30
province	1	2010	Don't know / Haven't heard enough	91
province	1	2010	Land grabbing by Chinese individuals or businesses	111
province	1	2010	None of these	42
province	1	2010	Some other factor	16
province	1	2010	Taking jobs or business from the locals	104
province	1	2010	The behavior of Chinese citizens in the country	128
province	1	2010	The quality of Chinese products	243
province	2	2010	China's extraction of resources from Africa	3
province	2	2010	Don't know / Haven't heard enough	2
province	2	2010	Land grabbing by Chinese individuals or businesses	9
province	2	2010	None of these	1
province	2	2010	Taking jobs or business from the locals	9
province	2	2010	The behavior of Chinese citizens in the country	1
province	2	2010	The quality of Chinese products	7
province	3	2010	China's extraction of resources from Africa	2
province	3	2010	China's willingness to cooperate with undemocratic rulers	1
province	3	2010	Don't know / Haven't heard enough	6
province	3	2010	Land grabbing by Chinese individuals or businesses	4
province	3	2010	None of these	1
province	3	2010	Some other factor	1
province	3	2010	Taking jobs or business from the locals	1
province	3	2010	The behavior of Chinese citizens in the country	2
province	3	2010	The quality of Chinese products	22
province	4	2010	China's extraction of resources from Africa	3
province	4	2010	China's willingness to cooperate with undemocratic rulers	1
province	4	2010	Don't know / Haven't heard enough	11
province	4	2010	Missing	1
province	4	2010	None of these	2
province	4	2010	Taking jobs or business from the locals	4
province	4	2010	The behavior of Chinese citizens in the country	10
province	4	2010	The quality of Chinese products	8
province	6	2010	China's extraction of resources from Africa	4
province	6	2010	China's willingness to cooperate with undemocratic rulers	4
province	6	2010	Don't know / Haven't heard enough	6
province	6	2010	Land grabbing by Chinese individuals or businesses	5
province	6	2010	None of these	4
province	6	2010	Some other factor	1
province	6	2010	Taking jobs or business from the locals	6
province	6	2010	The behavior of Chinese citizens in the country	11
province	6	2010	The quality of Chinese products	7
province	8	2010	China's extraction of resources from Africa	2
province	8	2010	Don't know / Haven't heard enough	3
province	8	2010	Land grabbing by Chinese individuals or businesses	4
province	8	2010	Some other factor	3
province	8	2010	The behavior of Chinese citizens in the country	5
province	8	2010	The quality of Chinese products	7
province	7	2010	China's extraction of resources from Africa	4
province	7	2010	China's willingness to cooperate with undemocratic rulers	3
province	7	2010	Don't know / Haven't heard enough	6
province	7	2010	Land grabbing by Chinese individuals or businesses	6
province	7	2010	None of these	2
province	7	2010	Some other factor	1
province	7	2010	Taking jobs or business from the locals	9
province	7	2010	The behavior of Chinese citizens in the country	10
province	7	2010	The quality of Chinese products	7
province	9	2010	China's extraction of resources from Africa	2
province	9	2010	China's willingness to cooperate with undemocratic rulers	1
province	9	2010	Don't know / Haven't heard enough	2
province	9	2010	Land grabbing by Chinese individuals or businesses	10
province	9	2010	None of these	2
province	9	2010	Taking jobs or business from the locals	3
province	9	2010	The behavior of Chinese citizens in the country	22
province	9	2010	The quality of Chinese products	38
province	10	2010	China's extraction of resources from Africa	6
province	10	2010	China's willingness to cooperate with undemocratic rulers	1
province	10	2010	Don't know / Haven't heard enough	7
province	10	2010	None of these	3
province	10	2010	Some other factor	1
province	10	2010	Taking jobs or business from the locals	7
province	10	2010	The behavior of Chinese citizens in the country	8
province	10	2010	The quality of Chinese products	23
country	ZM	2010	Don't know / Haven't heard enough	134
country	ZM	2010	The quality of Chinese products	362
country	ZM	2010	The behavior of Chinese citizens in the country	197
country	ZM	2010	Missing	1
country	ZM	2010	Taking jobs or business from the locals	143
country	ZM	2010	Some other factor	23
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

