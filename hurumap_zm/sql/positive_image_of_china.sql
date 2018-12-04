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
province	1	2010	An appreciation of the Chinese people, culture and language	5
province	1	2010	China's business investment	108
province	1	2010	China's investment in infrastructure in the country	480
province	1	2010	China's support for the country in international affairs	50
province	1	2010	Don't know / Haven't heard enough	65
province	1	2010	Non-interference in the internal affairs of African countries	27
province	1	2010	None of these	9
province	1	2010	Some other factor	3
province	1	2010	The quality or cost of Chinese products	84
province	2	2010	China's business investment	3
province	2	2010	China's investment in infrastructure in the country	22
province	2	2010	China's support for the country in international affairs	1
province	2	2010	Don't know / Haven't heard enough	1
province	2	2010	Non-interference in the internal affairs of African countries	2
province	2	2010	None of these	1
province	2	2010	The quality or cost of Chinese products	2
province	3	2010	China's business investment	2
province	3	2010	China's investment in infrastructure in the country	30
province	3	2010	Don't know / Haven't heard enough	5
province	3	2010	Non-interference in the internal affairs of African countries	1
province	3	2010	None of these	1
province	3	2010	Some other factor	1
province	4	2010	China's business investment	5
province	4	2010	China's investment in infrastructure in the country	23
province	4	2010	China's support for the country in international affairs	2
province	4	2010	Don't know / Haven't heard enough	4
province	4	2010	Missing	1
province	4	2010	Non-interference in the internal affairs of African countries	1
province	4	2010	Some other factor	1
province	4	2010	The quality or cost of Chinese products	3
province	6	2010	China's business investment	10
province	6	2010	China's investment in infrastructure in the country	29
province	6	2010	Don't know / Haven't heard enough	2
province	6	2010	Non-interference in the internal affairs of African countries	2
province	6	2010	None of these	2
province	6	2010	Some other factor	1
province	6	2010	The quality or cost of Chinese products	2
province	8	2010	China's business investment	3
province	8	2010	China's investment in infrastructure in the country	18
province	8	2010	China's support for the country in international affairs	1
province	8	2010	Don't know / Haven't heard enough	1
province	8	2010	The quality or cost of Chinese products	1
province	7	2010	An appreciation of the Chinese people, culture and language	1
province	7	2010	China's business investment	7
province	7	2010	China's investment in infrastructure in the country	26
province	7	2010	China's support for the country in international affairs	4
province	7	2010	Don't know / Haven't heard enough	3
province	7	2010	Non-interference in the internal affairs of African countries	1
province	7	2010	None of these	1
province	7	2010	The quality or cost of Chinese products	5
province	9	2010	China's business investment	13
province	9	2010	China's investment in infrastructure in the country	53
province	9	2010	China's support for the country in international affairs	1
province	9	2010	Don't know / Haven't heard enough	3
province	9	2010	Non-interference in the internal affairs of African countries	3
province	9	2010	Some other factor	1
province	9	2010	The quality or cost of Chinese products	6
province	10	2010	China's business investment	11
province	10	2010	China's investment in infrastructure in the country	35
province	10	2010	China's support for the country in international affairs	2
province	10	2010	Don't know / Haven't heard enough	1
province	10	2010	The quality or cost of Chinese products	7
country	ZM	2010	Don't know / Haven't heard enough	85
country	ZM	2010	Non-interference in the internal affairs of African countries	37
country	ZM	2010	Missing	1
country	ZM	2010	The quality or cost of Chinese products	110
country	ZM	2010	An appreciation of the Chinese people, culture and language	6
country	ZM	2010	Some other factor	7
country	ZM	2010	China's support for the country in international affairs	61
country	ZM	2010	China's investment in infrastructure in the country	716
country	ZM	2010	China's business investment	162
country	ZM	2010	None of these	14
\.


--
-- Name: positive_image_of_china pk_positive_image_of_china; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.positive_image_of_china
    ADD CONSTRAINT pk_positive_image_of_china PRIMARY KEY (geo_level, geo_code, geo_version, positive_image_of_china);


--
-- PostgreSQL database dump complete
--

