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

ALTER TABLE IF EXISTS ONLY public.maintain_willing_buyer_willing_seller_policy DROP CONSTRAINT IF EXISTS pk_maintain_willing_buyer_willing_seller_policy;
DROP TABLE IF EXISTS public.maintain_willing_buyer_willing_seller_policy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maintain_willing_buyer_willing_seller_policy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.maintain_willing_buyer_willing_seller_policy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    maintain_willing_buyer_willing_seller_policy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: maintain_willing_buyer_willing_seller_policy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.maintain_willing_buyer_willing_seller_policy (geo_level, geo_code, geo_version, maintain_willing_buyer_willing_seller_policy, total) FROM stdin;
province	EC	2016	Strongly Disagree	13
province	EC	2016	Disagree	14
province	EC	2016	Neither Agree Nor Disagree	5
province	EC	2016	Agree	44
province	EC	2016	Strongly Agree	18
province	EC	2016	Refused	1
province	EC	2016	Don't know	5
province	FS	2016	Strongly Disagree	27
province	FS	2016	Disagree	7
province	FS	2016	Neither Agree Nor Disagree	5
province	FS	2016	Agree	26
province	FS	2016	Strongly Agree	24
province	FS	2016	Refused	0
province	FS	2016	Don't know	11
province	GT	2016	Strongly Disagree	9
province	GT	2016	Disagree	18
province	GT	2016	Neither Agree Nor Disagree	12
province	GT	2016	Agree	28
province	GT	2016	Strongly Agree	19
province	GT	2016	Refused	0
province	GT	2016	Don't know	15
province	KZN	2016	Strongly Disagree	11
province	KZN	2016	Disagree	13
province	KZN	2016	Neither Agree Nor Disagree	18
province	KZN	2016	Agree	32
province	KZN	2016	Strongly Agree	16
province	KZN	2016	Refused	1
province	KZN	2016	Don't know	10
province	LIM	2016	Strongly Disagree	13
province	LIM	2016	Disagree	18
province	LIM	2016	Neither Agree Nor Disagree	3
province	LIM	2016	Agree	43
province	LIM	2016	Strongly Agree	20
province	LIM	2016	Refused	0
province	LIM	2016	Don't know	3
province	MP	2016	Strongly Disagree	2
province	MP	2016	Disagree	14
province	MP	2016	Neither Agree Nor Disagree	6
province	MP	2016	Agree	37
province	MP	2016	Strongly Agree	24
province	MP	2016	Refused	0
province	MP	2016	Don't know	17
province	NW	2016	Strongly Disagree	26
province	NW	2016	Disagree	21
province	NW	2016	Neither Agree Nor Disagree	11
province	NW	2016	Agree	18
province	NW	2016	Strongly Agree	10
province	NW	2016	Refused	0
province	NW	2016	Don't know	15
province	NC	2016	Strongly Disagree	5
province	NC	2016	Disagree	24
province	NC	2016	Neither Agree Nor Disagree	5
province	NC	2016	Agree	41
province	NC	2016	Strongly Agree	7
province	NC	2016	Refused	0
province	NC	2016	Don't know	19
province	WC	2016	Strongly Disagree	5
province	WC	2016	Disagree	8
province	WC	2016	Neither Agree Nor Disagree	1
province	WC	2016	Agree	38
province	WC	2016	Strongly Agree	36
province	WC	2016	Refused	1
province	WC	2016	Don't know	12
country	ZA	2016	Agree	305
country	ZA	2016	Disagree	137
country	ZA	2016	Don't know	108
country	ZA	2016	Neither Agree Nor Disagree	66
country	ZA	2016	Refused	2
country	ZA	2016	Strongly Agree	172
country	ZA	2016	Strongly Disagree	111
\.


--
-- Name: maintain_willing_buyer_willing_seller_policy pk_maintain_willing_buyer_willing_seller_policy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.maintain_willing_buyer_willing_seller_policy
    ADD CONSTRAINT pk_maintain_willing_buyer_willing_seller_policy PRIMARY KEY (geo_level, geo_code, geo_version, maintain_willing_buyer_willing_seller_policy);


--
-- PostgreSQL database dump complete
--

