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

ALTER TABLE IF EXISTS ONLY public.positive_image_of_china DROP CONSTRAINT IF EXISTS pk_positive_image_of_china;
DROP TABLE IF EXISTS public.positive_image_of_china;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: positive_image_of_china; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.positive_image_of_china (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    positive_image_of_china character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: positive_image_of_china; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.positive_image_of_china (geo_level, geo_code, geo_version, positive_image_of_china, total) FROM stdin;
province	10	2009	China's business investment	34
province	10	2009	China's investment in infrastructure in the country	38
province	10	2009	China's support for the country in international affairs	1
province	10	2009	Don't know / Haven't heard enough	8
province	10	2009	Non-interference in the internal affairs of African countries	7
province	10	2009	None of these	29
province	10	2009	Some other factor	1
province	10	2009	The quality or cost of Chinese products	34
province	19	2009	An appreciation of the Chinese people, culture and language	4
province	19	2009	China's business investment	79
province	19	2009	China's investment in infrastructure in the country	150
province	19	2009	China's support for the country in international affairs	18
province	19	2009	Don't know / Haven't heard enough	9
province	19	2009	Non-interference in the internal affairs of African countries	23
province	19	2009	None of these	50
province	19	2009	Some other factor	1
province	19	2009	The quality or cost of Chinese products	114
province	11	2009	An appreciation of the Chinese people, culture and language	8
province	11	2009	China's business investment	54
province	11	2009	China's investment in infrastructure in the country	55
province	11	2009	China's support for the country in international affairs	21
province	11	2009	Don't know / Haven't heard enough	50
province	11	2009	Non-interference in the internal affairs of African countries	12
province	11	2009	None of these	22
province	11	2009	Some other factor	5
province	11	2009	The quality or cost of Chinese products	77
province	12	2009	China's business investment	58
province	12	2009	China's investment in infrastructure in the country	41
province	12	2009	China's support for the country in international affairs	10
province	12	2009	Don't know / Haven't heard enough	13
province	12	2009	Non-interference in the internal affairs of African countries	10
province	12	2009	None of these	14
province	12	2009	Some other factor	2
province	12	2009	The quality or cost of Chinese products	60
province	13	2009	An appreciation of the Chinese people, culture and language	3
province	13	2009	China's business investment	47
province	13	2009	China's investment in infrastructure in the country	53
province	13	2009	China's support for the country in international affairs	15
province	13	2009	Don't know / Haven't heard enough	29
province	13	2009	Non-interference in the internal affairs of African countries	19
province	13	2009	None of these	17
province	13	2009	Some other factor	4
province	13	2009	The quality or cost of Chinese products	61
province	14	2009	An appreciation of the Chinese people, culture and language	1
province	14	2009	China's business investment	68
province	14	2009	China's investment in infrastructure in the country	67
province	14	2009	China's support for the country in international affairs	20
province	14	2009	Don't know / Haven't heard enough	13
province	14	2009	Non-interference in the internal affairs of African countries	3
province	14	2009	None of these	14
province	14	2009	Some other factor	3
province	14	2009	The quality or cost of Chinese products	83
province	18	2009	An appreciation of the Chinese people, culture and language	5
province	18	2009	China's business investment	65
province	18	2009	China's investment in infrastructure in the country	33
province	18	2009	China's support for the country in international affairs	14
province	18	2009	Don't know / Haven't heard enough	20
province	18	2009	Non-interference in the internal affairs of African countries	6
province	18	2009	None of these	12
province	18	2009	The quality or cost of Chinese products	93
province	15	2009	An appreciation of the Chinese people, culture and language	2
province	15	2009	China's business investment	31
province	15	2009	China's investment in infrastructure in the country	16
province	15	2009	China's support for the country in international affairs	1
province	15	2009	Don't know / Haven't heard enough	33
province	15	2009	Non-interference in the internal affairs of African countries	1
province	15	2009	None of these	8
province	15	2009	Some other factor	2
province	15	2009	The quality or cost of Chinese products	34
province	16	2009	China's business investment	7
province	16	2009	China's investment in infrastructure in the country	14
province	16	2009	Don't know / Haven't heard enough	21
province	16	2009	None of these	8
province	16	2009	The quality or cost of Chinese products	54
province	17	2009	China's business investment	28
province	17	2009	China's investment in infrastructure in the country	51
province	17	2009	China's support for the country in international affairs	12
province	17	2009	Don't know / Haven't heard enough	16
province	17	2009	Non-interference in the internal affairs of African countries	16
province	17	2009	None of these	32
province	17	2009	Some other factor	5
province	17	2009	The quality or cost of Chinese products	128
country	ZW	2009	Don't know / Haven't heard enough	212
country	ZW	2009	Non-interference in the internal affairs of African countries	97
country	ZW	2009	The quality or cost of Chinese products	738
country	ZW	2009	An appreciation of the Chinese people, culture and language	23
country	ZW	2009	Some other factor	23
country	ZW	2009	China's support for the country in international affairs	112
country	ZW	2009	China's investment in infrastructure in the country	518
country	ZW	2009	China's business investment	471
country	ZW	2009	None of these	206
\.


--
-- Name: positive_image_of_china pk_positive_image_of_china; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.positive_image_of_china
    ADD CONSTRAINT pk_positive_image_of_china PRIMARY KEY (geo_level, geo_code, geo_version, positive_image_of_china);


--
-- PostgreSQL database dump complete
--

