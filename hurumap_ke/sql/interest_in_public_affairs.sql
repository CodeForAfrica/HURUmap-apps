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

ALTER TABLE IF EXISTS ONLY public.interest_in_public_affairs DROP CONSTRAINT IF EXISTS pk_interest_in_public_affairs;
DROP TABLE IF EXISTS public.interest_in_public_affairs;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: interest_in_public_affairs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.interest_in_public_affairs (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    interest_in_public_affairs character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: interest_in_public_affairs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.interest_in_public_affairs (geo_level, geo_code, geo_version, interest_in_public_affairs, total) FROM stdin;
county	39	2009	Don't know	1
county	22	2009	Don't know	1
county	44	2009	Don't know	1
county	4	2009	Don't know	1
county	13	2009	Don't know	1
county	15	2009	Missing	1
county	21	2009	Missing	1
county	30	2009	Not at all interested	6
county	36	2009	Not at all interested	3
county	39	2009	Not at all interested	37
county	40	2009	Not at all interested	11
county	28	2009	Not at all interested	8
county	14	2009	Not at all interested	5
county	7	2009	Not at all interested	15
county	43	2009	Not at all interested	4
county	11	2009	Not at all interested	2
county	34	2009	Not at all interested	22
county	37	2009	Not at all interested	37
county	35	2009	Not at all interested	4
county	22	2009	Not at all interested	15
county	3	2009	Not at all interested	20
county	20	2009	Not at all interested	3
county	45	2009	Not at all interested	8
county	42	2009	Not at all interested	7
county	15	2009	Not at all interested	10
county	2	2009	Not at all interested	13
county	31	2009	Not at all interested	7
county	5	2009	Not at all interested	1
county	16	2009	Not at all interested	14
county	17	2009	Not at all interested	14
county	9	2009	Not at all interested	16
county	10	2009	Not at all interested	6
county	12	2009	Not at all interested	16
county	44	2009	Not at all interested	4
county	1	2009	Not at all interested	13
county	21	2009	Not at all interested	5
county	47	2009	Not at all interested	60
county	32	2009	Not at all interested	11
county	29	2009	Not at all interested	15
county	33	2009	Not at all interested	4
county	46	2009	Not at all interested	12
county	18	2009	Not at all interested	1
county	19	2009	Not at all interested	1
county	25	2009	Not at all interested	6
county	41	2009	Not at all interested	7
county	6	2009	Not at all interested	6
county	4	2009	Not at all interested	3
county	13	2009	Not at all interested	3
county	26	2009	Not at all interested	23
county	23	2009	Not at all interested	35
county	27	2009	Not at all interested	25
county	38	2009	Not at all interested	9
county	8	2009	Not at all interested	17
county	24	2009	Not at all interested	14
county	30	2009	Not very interested	8
county	36	2009	Not very interested	12
county	39	2009	Not very interested	26
county	40	2009	Not very interested	13
county	28	2009	Not very interested	3
county	14	2009	Not very interested	14
county	7	2009	Not very interested	6
county	43	2009	Not very interested	20
county	11	2009	Not very interested	3
county	34	2009	Not very interested	9
county	37	2009	Not very interested	28
county	35	2009	Not very interested	8
county	22	2009	Not very interested	13
county	3	2009	Not very interested	15
county	20	2009	Not very interested	8
county	45	2009	Not very interested	26
county	42	2009	Not very interested	17
county	15	2009	Not very interested	11
county	2	2009	Not very interested	9
county	31	2009	Not very interested	6
county	5	2009	Not very interested	2
county	16	2009	Not very interested	20
county	17	2009	Not very interested	19
county	9	2009	Not very interested	12
county	10	2009	Not very interested	3
county	12	2009	Not very interested	18
county	44	2009	Not very interested	13
county	1	2009	Not very interested	23
county	21	2009	Not very interested	7
county	47	2009	Not very interested	55
county	32	2009	Not very interested	31
county	29	2009	Not very interested	13
county	33	2009	Not very interested	17
county	46	2009	Not very interested	8
county	18	2009	Not very interested	12
county	19	2009	Not very interested	10
county	25	2009	Not very interested	2
county	41	2009	Not very interested	11
county	6	2009	Not very interested	2
county	4	2009	Not very interested	1
county	13	2009	Not very interested	5
county	26	2009	Not very interested	10
county	23	2009	Not very interested	7
county	27	2009	Not very interested	12
county	38	2009	Not very interested	16
county	8	2009	Not very interested	7
county	24	2009	Not very interested	4
county	30	2009	Somewhat interested	16
county	36	2009	Somewhat interested	17
county	39	2009	Somewhat interested	5
county	40	2009	Somewhat interested	8
county	28	2009	Somewhat interested	2
county	14	2009	Somewhat interested	8
county	7	2009	Somewhat interested	9
county	43	2009	Somewhat interested	18
county	11	2009	Somewhat interested	2
county	34	2009	Somewhat interested	14
county	37	2009	Somewhat interested	14
county	35	2009	Somewhat interested	11
county	22	2009	Somewhat interested	44
county	3	2009	Somewhat interested	16
county	20	2009	Somewhat interested	14
county	45	2009	Somewhat interested	27
county	42	2009	Somewhat interested	18
county	15	2009	Somewhat interested	19
county	2	2009	Somewhat interested	12
county	31	2009	Somewhat interested	7
county	5	2009	Somewhat interested	2
county	16	2009	Somewhat interested	21
county	17	2009	Somewhat interested	12
county	9	2009	Somewhat interested	17
county	10	2009	Somewhat interested	5
county	12	2009	Somewhat interested	28
county	44	2009	Somewhat interested	18
county	1	2009	Somewhat interested	23
county	21	2009	Somewhat interested	14
county	47	2009	Somewhat interested	79
county	32	2009	Somewhat interested	36
county	29	2009	Somewhat interested	14
county	33	2009	Somewhat interested	13
county	46	2009	Somewhat interested	13
county	18	2009	Somewhat interested	14
county	19	2009	Somewhat interested	14
county	41	2009	Somewhat interested	20
county	6	2009	Somewhat interested	5
county	4	2009	Somewhat interested	3
county	13	2009	Somewhat interested	9
county	26	2009	Somewhat interested	11
county	23	2009	Somewhat interested	6
county	27	2009	Somewhat interested	15
county	38	2009	Somewhat interested	3
county	8	2009	Somewhat interested	5
county	24	2009	Somewhat interested	4
county	30	2009	Very interested	2
county	36	2009	Very interested	16
county	39	2009	Very interested	11
county	40	2009	Very interested	8
county	28	2009	Very interested	3
county	14	2009	Very interested	13
county	7	2009	Very interested	2
county	43	2009	Very interested	14
county	11	2009	Very interested	1
county	34	2009	Very interested	3
county	37	2009	Very interested	17
county	35	2009	Very interested	17
county	22	2009	Very interested	47
county	3	2009	Very interested	13
county	20	2009	Very interested	15
county	45	2009	Very interested	11
county	42	2009	Very interested	14
county	15	2009	Very interested	15
county	2	2009	Very interested	6
county	31	2009	Very interested	4
county	5	2009	Very interested	3
county	16	2009	Very interested	17
county	17	2009	Very interested	11
county	9	2009	Very interested	3
county	10	2009	Very interested	2
county	12	2009	Very interested	23
county	44	2009	Very interested	12
county	1	2009	Very interested	13
county	21	2009	Very interested	37
county	47	2009	Very interested	54
county	32	2009	Very interested	26
county	29	2009	Very interested	6
county	33	2009	Very interested	14
county	46	2009	Very interested	7
county	18	2009	Very interested	13
county	19	2009	Very interested	23
county	41	2009	Very interested	10
county	6	2009	Very interested	3
county	13	2009	Very interested	6
county	26	2009	Very interested	4
county	27	2009	Very interested	4
county	38	2009	Very interested	4
county	8	2009	Very interested	3
county	24	2009	Very interested	2
\.


--
-- Name: interest_in_public_affairs pk_interest_in_public_affairs; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.interest_in_public_affairs
    ADD CONSTRAINT pk_interest_in_public_affairs PRIMARY KEY (geo_level, geo_code, geo_version, interest_in_public_affairs);


--
-- PostgreSQL database dump complete
--

