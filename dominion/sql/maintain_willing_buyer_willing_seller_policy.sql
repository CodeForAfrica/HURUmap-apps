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
level1	ZA_1_003	2016	Strongly Disagree	13
level1	ZA_1_003	2016	Disagree	14
level1	ZA_1_003	2016	Neither Agree Nor Disagree	5
level1	ZA_1_003	2016	Agree	44
level1	ZA_1_003	2016	Strongly Agree	18
level1	ZA_1_003	2016	Refused	1
level1	ZA_1_003	2016	Don't know	5
level1	ZA_1_002	2016	Strongly Disagree	27
level1	ZA_1_002	2016	Disagree	7
level1	ZA_1_002	2016	Neither Agree Nor Disagree	5
level1	ZA_1_002	2016	Agree	26
level1	ZA_1_002	2016	Strongly Agree	24
level1	ZA_1_002	2016	Refused	0
level1	ZA_1_002	2016	Don't know	11
level1	ZA_1_009	2016	Strongly Disagree	9
level1	ZA_1_009	2016	Disagree	18
level1	ZA_1_009	2016	Neither Agree Nor Disagree	12
level1	ZA_1_009	2016	Agree	28
level1	ZA_1_009	2016	Strongly Agree	19
level1	ZA_1_009	2016	Refused	0
level1	ZA_1_009	2016	Don't know	15
level1	ZA_1_001	2016	Strongly Disagree	11
level1	ZA_1_001	2016	Disagree	13
level1	ZA_1_001	2016	Neither Agree Nor Disagree	18
level1	ZA_1_001	2016	Agree	32
level1	ZA_1_001	2016	Strongly Agree	16
level1	ZA_1_001	2016	Refused	1
level1	ZA_1_001	2016	Don't know	10
level1	ZA_1_005	2016	Strongly Disagree	13
level1	ZA_1_005	2016	Disagree	18
level1	ZA_1_005	2016	Neither Agree Nor Disagree	3
level1	ZA_1_005	2016	Agree	43
level1	ZA_1_005	2016	Strongly Agree	20
level1	ZA_1_005	2016	Refused	0
level1	ZA_1_005	2016	Don't know	3
level1	ZA_1_004	2016	Strongly Disagree	2
level1	ZA_1_004	2016	Disagree	14
level1	ZA_1_004	2016	Neither Agree Nor Disagree	6
level1	ZA_1_004	2016	Agree	37
level1	ZA_1_004	2016	Strongly Agree	24
level1	ZA_1_004	2016	Refused	0
level1	ZA_1_004	2016	Don't know	17
level1	ZA_1_007	2016	Strongly Disagree	26
level1	ZA_1_007	2016	Disagree	21
level1	ZA_1_007	2016	Neither Agree Nor Disagree	11
level1	ZA_1_007	2016	Agree	18
level1	ZA_1_007	2016	Strongly Agree	10
level1	ZA_1_007	2016	Refused	0
level1	ZA_1_007	2016	Don't know	15
level1	ZA_1_006	2016	Strongly Disagree	5
level1	ZA_1_006	2016	Disagree	24
level1	ZA_1_006	2016	Neither Agree Nor Disagree	5
level1	ZA_1_006	2016	Agree	41
level1	ZA_1_006	2016	Strongly Agree	7
level1	ZA_1_006	2016	Refused	0
level1	ZA_1_006	2016	Don't know	19
level1	ZA_1_008	2016	Strongly Disagree	5
level1	ZA_1_008	2016	Disagree	8
level1	ZA_1_008	2016	Neither Agree Nor Disagree	1
level1	ZA_1_008	2016	Agree	38
level1	ZA_1_008	2016	Strongly Agree	36
level1	ZA_1_008	2016	Refused	1
level1	ZA_1_008	2016	Don't know	12
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

