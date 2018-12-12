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
region	114	2014	China's business investment	167
region	114	2014	China's investment in infrastructure in the country	168
region	114	2014	China's support for the country in international affairs	7
region	114	2014	Don't know / Haven't heard enough	132
region	114	2014	Non-interference in the internal affairs of African countries	15
region	114	2014	None of these	9
region	114	2014	Some other factor	2
region	114	2014	The quality or cost of Chinese products	164
region	115	2014	An appreciation of the Chinese people, culture and language	4
region	115	2014	China's business investment	121
region	115	2014	China's investment in infrastructure in the country	126
region	115	2014	China's support for the country in international affairs	26
region	115	2014	Don't know / Haven't heard enough	205
region	115	2014	Non-interference in the internal affairs of African countries	24
region	115	2014	None of these	4
region	115	2014	Some other factor	1
region	115	2014	The quality or cost of Chinese products	113
region	116	2014	An appreciation of the Chinese people, culture and language	3
region	116	2014	China's business investment	98
region	116	2014	China's investment in infrastructure in the country	125
region	116	2014	China's support for the country in international affairs	11
region	116	2014	Don't know / Haven't heard enough	186
region	116	2014	Non-interference in the internal affairs of African countries	10
region	116	2014	None of these	2
region	116	2014	Some other factor	5
region	116	2014	The quality or cost of Chinese products	64
region	117	2014	An appreciation of the Chinese people, culture and language	4
region	117	2014	China's business investment	124
region	117	2014	China's investment in infrastructure in the country	97
region	117	2014	China's support for the country in international affairs	8
region	117	2014	Don't know / Haven't heard enough	226
region	117	2014	Non-interference in the internal affairs of African countries	12
region	117	2014	None of these	3
region	117	2014	Some other factor	3
region	117	2014	The quality or cost of Chinese products	131
country	UG	2014	Don't know / Haven't heard enough	749
country	UG	2014	Non-interference in the internal affairs of African countries	61
country	UG	2014	The quality or cost of Chinese products	472
country	UG	2014	An appreciation of the Chinese people, culture and language	11
country	UG	2014	Some other factor	11
country	UG	2014	China's support for the country in international affairs	52
country	UG	2014	China's investment in infrastructure in the country	516
country	UG	2014	China's business investment	510
country	UG	2014	None of these	18
\.


--
-- Name: positive_image_of_china pk_positive_image_of_china; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.positive_image_of_china
    ADD CONSTRAINT pk_positive_image_of_china PRIMARY KEY (geo_level, geo_code, geo_version, positive_image_of_china);


--
-- PostgreSQL database dump complete
--

