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
region	1	2009	An appreciation of the Chinese people, culture and language	4
region	1	2009	China's business investment	30
region	1	2009	China's investment in infrastructure in the country	10
region	1	2009	China's support for the country in international affairs	13
region	1	2009	Don't know / Haven't heard enough	31
region	1	2009	Non-interference in the internal affairs of African countries	4
region	1	2009	Some other factor	2
region	1	2009	The quality or cost of Chinese products	26
region	2	2009	An appreciation of the Chinese people, culture and language	6
region	2	2009	China's business investment	78
region	2	2009	China's investment in infrastructure in the country	56
region	2	2009	China's support for the country in international affairs	17
region	2	2009	Don't know / Haven't heard enough	27
region	2	2009	Non-interference in the internal affairs of African countries	11
region	2	2009	None of these	4
region	2	2009	Some other factor	1
region	2	2009	The quality or cost of Chinese products	73
region	3	2009	China's business investment	19
region	3	2009	China's investment in infrastructure in the country	20
region	3	2009	China's support for the country in international affairs	1
region	3	2009	Don't know / Haven't heard enough	28
region	3	2009	Some other factor	1
region	3	2009	The quality or cost of Chinese products	27
region	4	2009	An appreciation of the Chinese people, culture and language	5
region	4	2009	China's business investment	13
region	4	2009	China's investment in infrastructure in the country	6
region	4	2009	China's support for the country in international affairs	1
region	4	2009	Don't know / Haven't heard enough	6
region	4	2009	Non-interference in the internal affairs of African countries	16
region	4	2009	None of these	1
region	4	2009	Some other factor	3
region	4	2009	The quality or cost of Chinese products	20
region	5	2009	An appreciation of the Chinese people, culture and language	3
region	5	2009	China's business investment	19
region	5	2009	China's investment in infrastructure in the country	5
region	5	2009	China's support for the country in international affairs	2
region	5	2009	Don't know / Haven't heard enough	11
region	5	2009	The quality or cost of Chinese products	8
region	6	2009	An appreciation of the Chinese people, culture and language	2
region	6	2009	China's business investment	11
region	6	2009	China's investment in infrastructure in the country	7
region	6	2009	China's support for the country in international affairs	3
region	6	2009	Don't know / Haven't heard enough	17
region	6	2009	Non-interference in the internal affairs of African countries	9
region	6	2009	Some other factor	1
region	6	2009	The quality or cost of Chinese products	22
region	7	2009	An appreciation of the Chinese people, culture and language	1
region	7	2009	China's business investment	22
region	7	2009	China's investment in infrastructure in the country	15
region	7	2009	Don't know / Haven't heard enough	5
region	7	2009	Non-interference in the internal affairs of African countries	3
region	7	2009	The quality or cost of Chinese products	10
region	8	2009	China's business investment	15
region	8	2009	China's investment in infrastructure in the country	13
region	8	2009	Don't know / Haven't heard enough	2
region	8	2009	The quality or cost of Chinese products	10
region	9	2009	China's business investment	16
region	9	2009	China's investment in infrastructure in the country	3
region	9	2009	Don't know / Haven't heard enough	5
region	10	2009	China's business investment	32
region	10	2009	China's investment in infrastructure in the country	6
region	10	2009	China's support for the country in international affairs	5
region	10	2009	Don't know / Haven't heard enough	35
region	10	2009	Non-interference in the internal affairs of African countries	1
region	10	2009	The quality or cost of Chinese products	17
region	11	2009	An appreciation of the Chinese people, culture and language	3
region	11	2009	China's business investment	26
region	11	2009	China's investment in infrastructure in the country	8
region	11	2009	China's support for the country in international affairs	17
region	11	2009	Don't know / Haven't heard enough	9
region	11	2009	Non-interference in the internal affairs of African countries	3
region	11	2009	None of these	1
region	11	2009	The quality or cost of Chinese products	21
region	12	2009	China's business investment	4
region	12	2009	China's investment in infrastructure in the country	2
region	12	2009	The quality or cost of Chinese products	2
region	13	2009	China's business investment	6
region	13	2009	China's investment in infrastructure in the country	8
region	13	2009	Don't know / Haven't heard enough	2
region	13	2009	The quality or cost of Chinese products	8
region	14	2009	China's business investment	24
region	14	2009	China's investment in infrastructure in the country	8
region	14	2009	Non-interference in the internal affairs of African countries	2
region	14	2009	The quality or cost of Chinese products	14
region	15	2009	An appreciation of the Chinese people, culture and language	5
region	15	2009	China's business investment	11
region	15	2009	China's investment in infrastructure in the country	5
region	15	2009	China's support for the country in international affairs	15
region	15	2009	Don't know / Haven't heard enough	4
region	15	2009	Non-interference in the internal affairs of African countries	1
region	15	2009	None of these	1
region	15	2009	Some other factor	1
region	15	2009	The quality or cost of Chinese products	21
region	16	2009	An appreciation of the Chinese people, culture and language	1
region	16	2009	China's business investment	17
region	16	2009	China's investment in infrastructure in the country	14
region	16	2009	China's support for the country in international affairs	3
region	16	2009	Don't know / Haven't heard enough	9
region	16	2009	Non-interference in the internal affairs of African countries	13
region	16	2009	None of these	2
region	16	2009	Some other factor	1
region	16	2009	The quality or cost of Chinese products	20
region	17	2009	China's business investment	30
region	17	2009	China's investment in infrastructure in the country	11
region	17	2009	China's support for the country in international affairs	1
region	17	2009	Don't know / Haven't heard enough	10
region	17	2009	Non-interference in the internal affairs of African countries	4
region	17	2009	Some other factor	1
region	17	2009	The quality or cost of Chinese products	7
region	30	2009	China's business investment	35
region	30	2009	China's investment in infrastructure in the country	39
region	30	2009	China's support for the country in international affairs	2
region	30	2009	Don't know / Haven't heard enough	2
region	30	2009	Non-interference in the internal affairs of African countries	3
region	30	2009	The quality or cost of Chinese products	31
region	18	2009	An appreciation of the Chinese people, culture and language	1
region	18	2009	China's business investment	34
region	18	2009	China's investment in infrastructure in the country	23
region	18	2009	China's support for the country in international affairs	2
region	18	2009	Don't know / Haven't heard enough	38
region	18	2009	The quality or cost of Chinese products	22
region	19	2009	China's business investment	43
region	19	2009	China's investment in infrastructure in the country	17
region	19	2009	Don't know / Haven't heard enough	2
region	19	2009	None of these	2
region	19	2009	Some other factor	1
region	19	2009	The quality or cost of Chinese products	6
region	20	2009	An appreciation of the Chinese people, culture and language	5
region	20	2009	China's business investment	53
region	20	2009	China's investment in infrastructure in the country	12
region	20	2009	China's support for the country in international affairs	4
region	20	2009	Don't know / Haven't heard enough	6
region	20	2009	Non-interference in the internal affairs of African countries	15
region	20	2009	None of these	2
region	20	2009	Some other factor	2
region	20	2009	The quality or cost of Chinese products	25
region	21	2009	An appreciation of the Chinese people, culture and language	3
region	21	2009	China's business investment	13
region	21	2009	China's investment in infrastructure in the country	6
region	21	2009	China's support for the country in international affairs	2
region	21	2009	Don't know / Haven't heard enough	7
region	21	2009	Non-interference in the internal affairs of African countries	3
region	21	2009	The quality or cost of Chinese products	6
region	22	2009	An appreciation of the Chinese people, culture and language	1
region	22	2009	China's business investment	25
region	22	2009	China's investment in infrastructure in the country	17
region	22	2009	Don't know / Haven't heard enough	4
region	22	2009	Non-interference in the internal affairs of African countries	5
region	22	2009	None of these	1
region	22	2009	The quality or cost of Chinese products	19
region	23	2009	An appreciation of the Chinese people, culture and language	1
region	23	2009	China's business investment	13
region	23	2009	China's investment in infrastructure in the country	12
region	23	2009	Don't know / Haven't heard enough	10
region	23	2009	Non-interference in the internal affairs of African countries	1
region	23	2009	The quality or cost of Chinese products	2
region	24	2009	An appreciation of the Chinese people, culture and language	1
region	24	2009	China's business investment	28
region	24	2009	China's investment in infrastructure in the country	11
region	24	2009	China's support for the country in international affairs	7
region	24	2009	Don't know / Haven't heard enough	10
region	24	2009	Non-interference in the internal affairs of African countries	4
region	24	2009	Some other factor	1
region	24	2009	The quality or cost of Chinese products	10
region	25	2009	An appreciation of the Chinese people, culture and language	2
region	25	2009	China's business investment	34
region	25	2009	China's investment in infrastructure in the country	9
region	25	2009	China's support for the country in international affairs	8
region	25	2009	Don't know / Haven't heard enough	2
region	25	2009	The quality or cost of Chinese products	17
region	26	2009	An appreciation of the Chinese people, culture and language	1
region	26	2009	China's business investment	19
region	26	2009	China's investment in infrastructure in the country	7
region	26	2009	China's support for the country in international affairs	2
region	26	2009	Don't know / Haven't heard enough	21
region	26	2009	Non-interference in the internal affairs of African countries	3
region	26	2009	The quality or cost of Chinese products	11
region	27	2009	An appreciation of the Chinese people, culture and language	1
region	27	2009	China's business investment	19
region	27	2009	China's investment in infrastructure in the country	20
region	27	2009	China's support for the country in international affairs	2
region	27	2009	Don't know / Haven't heard enough	6
region	27	2009	Non-interference in the internal affairs of African countries	2
region	27	2009	The quality or cost of Chinese products	14
region	31	2009	An appreciation of the Chinese people, culture and language	5
region	31	2009	China's business investment	26
region	31	2009	China's investment in infrastructure in the country	12
region	31	2009	China's support for the country in international affairs	4
region	31	2009	Don't know / Haven't heard enough	14
region	31	2009	Non-interference in the internal affairs of African countries	5
region	31	2009	The quality or cost of Chinese products	6
region	29	2009	An appreciation of the Chinese people, culture and language	1
region	29	2009	China's business investment	24
region	29	2009	China's investment in infrastructure in the country	22
region	29	2009	China's support for the country in international affairs	1
region	29	2009	Don't know / Haven't heard enough	27
region	29	2009	Non-interference in the internal affairs of African countries	1
region	29	2009	The quality or cost of Chinese products	28
region	28	2009	An appreciation of the Chinese people, culture and language	5
region	28	2009	China's business investment	12
region	28	2009	China's investment in infrastructure in the country	9
region	28	2009	China's support for the country in international affairs	11
region	28	2009	Don't know / Haven't heard enough	6
region	28	2009	Non-interference in the internal affairs of African countries	11
region	28	2009	None of these	4
region	28	2009	Some other factor	3
region	28	2009	The quality or cost of Chinese products	27
country	TZ	2009	Don't know / Haven't heard enough	356
country	TZ	2009	Non-interference in the internal affairs of African countries	120
country	TZ	2009	The quality or cost of Chinese products	530
country	TZ	2009	An appreciation of the Chinese people, culture and language	57
country	TZ	2009	Some other factor	18
country	TZ	2009	China's support for the country in international affairs	123
country	TZ	2009	China's investment in infrastructure in the country	413
country	TZ	2009	China's business investment	751
country	TZ	2009	None of these	18
\.


--
-- Name: positive_image_of_china pk_positive_image_of_china; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.positive_image_of_china
    ADD CONSTRAINT pk_positive_image_of_china PRIMARY KEY (geo_level, geo_code, geo_version, positive_image_of_china);


--
-- PostgreSQL database dump complete
--

