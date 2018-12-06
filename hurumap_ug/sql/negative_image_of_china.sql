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
region	114	2014	China's extraction of resources from Africa	14
region	114	2014	China's willingness to cooperate with undemocratic rulers	6
region	114	2014	Don't know / Haven't heard enough	157
region	114	2014	Land grabbing by Chinese individuals or businesses	24
region	114	2014	None of these	6
region	114	2014	Some other factor	2
region	114	2014	Taking jobs or business from the locals	66
region	114	2014	The behavior of Chinese citizens in the country	32
region	114	2014	The quality of Chinese products	357
region	115	2014	China's extraction of resources from Africa	26
region	115	2014	China's willingness to cooperate with undemocratic rulers	12
region	115	2014	Don't know / Haven't heard enough	238
region	115	2014	Land grabbing by Chinese individuals or businesses	39
region	115	2014	None of these	7
region	115	2014	Some other factor	3
region	115	2014	Taking jobs or business from the locals	57
region	115	2014	The behavior of Chinese citizens in the country	22
region	115	2014	The quality of Chinese products	220
region	116	2014	China's extraction of resources from Africa	69
region	116	2014	China's willingness to cooperate with undemocratic rulers	18
region	116	2014	Don't know / Haven't heard enough	201
region	116	2014	Land grabbing by Chinese individuals or businesses	34
region	116	2014	None of these	12
region	116	2014	Some other factor	13
region	116	2014	Taking jobs or business from the locals	42
region	116	2014	The behavior of Chinese citizens in the country	25
region	116	2014	The quality of Chinese products	90
region	117	2014	China's extraction of resources from Africa	15
region	117	2014	China's willingness to cooperate with undemocratic rulers	7
region	117	2014	Don't know / Haven't heard enough	255
region	117	2014	Land grabbing by Chinese individuals or businesses	8
region	117	2014	None of these	16
region	117	2014	Some other factor	6
region	117	2014	Taking jobs or business from the locals	35
region	117	2014	The behavior of Chinese citizens in the country	21
region	117	2014	The quality of Chinese products	245
country	UG	2014	Some other factor	24
country	UG	2014	The quality of Chinese products	912
country	UG	2014	The behavior of Chinese citizens in the country	100
country	UG	2014	Taking jobs or business from the locals	200
country	UG	2014	Don't know / Haven't heard enough	851
country	UG	2014	None of these	41
country	UG	2014	China's extraction of resources from Africa	124
country	UG	2014	Land grabbing by Chinese individuals or businesses	105
country	UG	2014	China's willingness to cooperate with undemocratic rulers	43
\.


--
-- Name: negative_image_of_china pk_negative_image_of_china; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.negative_image_of_china
    ADD CONSTRAINT pk_negative_image_of_china PRIMARY KEY (geo_level, geo_code, geo_version, negative_image_of_china);


--
-- PostgreSQL database dump complete
--

