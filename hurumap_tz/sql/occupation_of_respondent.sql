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

ALTER TABLE IF EXISTS ONLY public.occupation_of_respondent DROP CONSTRAINT IF EXISTS pk_occupation_of_respondent;
DROP TABLE IF EXISTS public.occupation_of_respondent;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: occupation_of_respondent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.occupation_of_respondent (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    occupation_of_respondent character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: occupation_of_respondent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.occupation_of_respondent (geo_level, geo_code, geo_version, occupation_of_respondent, total) FROM stdin;
region	1	2009	Agriculture / farming / fishing / forestry	57
region	1	2009	Artisan or skilled manual worker	4
region	1	2009	Housewife / homemaker	5
region	1	2009	Mid-level professional	1
region	1	2009	Never had a job	34
region	1	2009	Retail / Shop	6
region	1	2009	Student	2
region	1	2009	Trader / hawker / vendor	9
region	1	2009	Unskilled manual worker	1
region	1	2009	Upper-level professional	1
region	2	2009	Agriculture / farming / fishing / forestry	14
region	2	2009	Artisan or skilled manual worker	23
region	2	2009	Clerical or secretarial	3
region	2	2009	Housewife / homemaker	27
region	2	2009	Mid-level professional	15
region	2	2009	Never had a job	30
region	2	2009	Other	7
region	2	2009	Retail / Shop	48
region	2	2009	Security services	6
region	2	2009	Student	23
region	2	2009	Trader / hawker / vendor	50
region	2	2009	Unskilled manual worker	14
region	2	2009	Upper-level professional	13
region	3	2009	Agriculture / farming / fishing / forestry	65
region	3	2009	Artisan or skilled manual worker	5
region	3	2009	Housewife / homemaker	1
region	3	2009	Mid-level professional	3
region	3	2009	Never had a job	5
region	3	2009	Other	1
region	3	2009	Retail / Shop	10
region	3	2009	Security services	2
region	3	2009	Student	1
region	3	2009	Trader / hawker / vendor	2
region	3	2009	Unskilled manual worker	1
region	4	2009	Agriculture / farming / fishing / forestry	37
region	4	2009	Artisan or skilled manual worker	3
region	4	2009	Housewife / homemaker	4
region	4	2009	Mid-level professional	4
region	4	2009	Never had a job	2
region	4	2009	Other	2
region	4	2009	Retail / Shop	8
region	4	2009	Student	3
region	4	2009	Trader / hawker / vendor	7
region	4	2009	Unskilled manual worker	1
region	5	2009	Agriculture / farming / fishing / forestry	29
region	5	2009	Artisan or skilled manual worker	1
region	5	2009	Housewife / homemaker	1
region	5	2009	Mid-level professional	2
region	5	2009	Never had a job	2
region	5	2009	Other	1
region	5	2009	Retail / Shop	2
region	5	2009	Student	5
region	5	2009	Trader / hawker / vendor	3
region	5	2009	Unskilled manual worker	2
region	6	2009	Agriculture / farming / fishing / forestry	35
region	6	2009	Artisan or skilled manual worker	4
region	6	2009	Housewife / homemaker	1
region	6	2009	Mid-level professional	2
region	6	2009	Never had a job	12
region	6	2009	Retail / Shop	8
region	6	2009	Security services	1
region	6	2009	Student	4
region	6	2009	Trader / hawker / vendor	3
region	6	2009	Unskilled manual worker	2
region	7	2009	Agriculture / farming / fishing / forestry	24
region	7	2009	Artisan or skilled manual worker	4
region	7	2009	Clerical or secretarial	1
region	7	2009	Housewife / homemaker	4
region	7	2009	Mid-level professional	4
region	7	2009	Never had a job	3
region	7	2009	Retail / Shop	9
region	7	2009	Security services	1
region	7	2009	Trader / hawker / vendor	2
region	7	2009	Unskilled manual worker	4
region	8	2009	Agriculture / farming / fishing / forestry	18
region	8	2009	Artisan or skilled manual worker	3
region	8	2009	Housewife / homemaker	1
region	8	2009	Mid-level professional	2
region	8	2009	Retail / Shop	6
region	8	2009	Security services	4
region	8	2009	Student	1
region	8	2009	Trader / hawker / vendor	2
region	8	2009	Unskilled manual worker	2
region	8	2009	Upper-level professional	1
region	9	2009	Agriculture / farming / fishing / forestry	19
region	9	2009	Mid-level professional	1
region	9	2009	Retail / Shop	3
region	9	2009	Trader / hawker / vendor	1
region	10	2009	Agriculture / farming / fishing / forestry	58
region	10	2009	Artisan or skilled manual worker	4
region	10	2009	Housewife / homemaker	9
region	10	2009	Mid-level professional	1
region	10	2009	Never had a job	2
region	10	2009	Other	1
region	10	2009	Retail / Shop	6
region	10	2009	Security services	1
region	10	2009	Student	2
region	10	2009	Trader / hawker / vendor	7
region	10	2009	Unskilled manual worker	5
region	11	2009	Agriculture / farming / fishing / forestry	24
region	11	2009	Artisan or skilled manual worker	3
region	11	2009	Housewife / homemaker	7
region	11	2009	Mid-level professional	6
region	11	2009	Never had a job	30
region	11	2009	Retail / Shop	4
region	11	2009	Security services	1
region	11	2009	Student	3
region	11	2009	Trader / hawker / vendor	7
region	11	2009	Unskilled manual worker	2
region	11	2009	Upper-level professional	1
region	12	2009	Agriculture / farming / fishing / forestry	2
region	12	2009	Artisan or skilled manual worker	2
region	12	2009	Housewife / homemaker	2
region	12	2009	Student	1
region	12	2009	Upper-level professional	1
region	13	2009	Agriculture / farming / fishing / forestry	12
region	13	2009	Artisan or skilled manual worker	1
region	13	2009	Housewife / homemaker	3
region	13	2009	Other	1
region	13	2009	Retail / Shop	4
region	13	2009	Security services	2
region	13	2009	Student	1
region	14	2009	Agriculture / farming / fishing / forestry	41
region	14	2009	Clerical or secretarial	1
region	14	2009	Mid-level professional	1
region	14	2009	Never had a job	2
region	14	2009	Retail / Shop	1
region	14	2009	Trader / hawker / vendor	1
region	14	2009	Unskilled manual worker	1
region	15	2009	Agriculture / farming / fishing / forestry	25
region	15	2009	Artisan or skilled manual worker	1
region	15	2009	Housewife / homemaker	9
region	15	2009	Mid-level professional	4
region	15	2009	Never had a job	16
region	15	2009	Retail / Shop	4
region	15	2009	Student	1
region	15	2009	Supervisor / Foreman / Senior Manager	1
region	15	2009	Trader / hawker / vendor	2
region	15	2009	Unskilled manual worker	1
region	16	2009	Agriculture / farming / fishing / forestry	50
region	16	2009	Artisan or skilled manual worker	1
region	16	2009	Clerical or secretarial	1
region	16	2009	Housewife / homemaker	1
region	16	2009	Mid-level professional	3
region	16	2009	Never had a job	3
region	16	2009	Other	1
region	16	2009	Retail / Shop	7
region	16	2009	Security services	1
region	16	2009	Student	3
region	16	2009	Trader / hawker / vendor	6
region	16	2009	Unskilled manual worker	2
region	16	2009	Upper-level professional	1
region	17	2009	Agriculture / farming / fishing / forestry	31
region	17	2009	Artisan or skilled manual worker	2
region	17	2009	Housewife / homemaker	1
region	17	2009	Mid-level professional	3
region	17	2009	Never had a job	2
region	17	2009	Other	1
region	17	2009	Retail / Shop	13
region	17	2009	Student	2
region	17	2009	Trader / hawker / vendor	8
region	17	2009	Upper-level professional	1
region	30	2009	Agriculture / farming / fishing / forestry	16
region	30	2009	Artisan or skilled manual worker	7
region	30	2009	Clerical or secretarial	1
region	30	2009	Housewife / homemaker	11
region	30	2009	Mid-level professional	13
region	30	2009	Never had a job	4
region	30	2009	Other	1
region	30	2009	Retail / Shop	20
region	30	2009	Security services	4
region	30	2009	Student	9
region	30	2009	Trader / hawker / vendor	17
region	30	2009	Unskilled manual worker	4
region	30	2009	Upper-level professional	5
region	18	2009	Agriculture / farming / fishing / forestry	77
region	18	2009	Artisan or skilled manual worker	5
region	18	2009	Housewife / homemaker	1
region	18	2009	Mid-level professional	3
region	18	2009	Never had a job	4
region	18	2009	Other	1
region	18	2009	Retail / Shop	18
region	18	2009	Student	6
region	18	2009	Trader / hawker / vendor	1
region	18	2009	Unskilled manual worker	4
region	19	2009	Agriculture / farming / fishing / forestry	55
region	19	2009	Artisan or skilled manual worker	4
region	19	2009	Housewife / homemaker	2
region	19	2009	Mid-level professional	2
region	19	2009	Retail / Shop	2
region	19	2009	Student	2
region	19	2009	Trader / hawker / vendor	3
region	19	2009	Unskilled manual worker	1
region	20	2009	Agriculture / farming / fishing / forestry	63
region	20	2009	Artisan or skilled manual worker	12
region	20	2009	Housewife / homemaker	1
region	20	2009	Mid-level professional	3
region	20	2009	Never had a job	6
region	20	2009	Other	11
region	20	2009	Retail / Shop	10
region	20	2009	Security services	2
region	20	2009	Student	3
region	20	2009	Trader / hawker / vendor	10
region	20	2009	Unskilled manual worker	2
region	20	2009	Upper-level professional	1
region	21	2009	Agriculture / farming / fishing / forestry	22
region	21	2009	Artisan or skilled manual worker	1
region	21	2009	Housewife / homemaker	1
region	21	2009	Mid-level professional	2
region	21	2009	Never had a job	3
region	21	2009	Retail / Shop	3
region	21	2009	Student	4
region	21	2009	Trader / hawker / vendor	3
region	21	2009	Upper-level professional	1
region	22	2009	Agriculture / farming / fishing / forestry	34
region	22	2009	Artisan or skilled manual worker	6
region	22	2009	Housewife / homemaker	4
region	22	2009	Never had a job	4
region	22	2009	Retail / Shop	11
region	22	2009	Security services	1
region	22	2009	Student	1
region	22	2009	Supervisor / Foreman / Senior Manager	1
region	22	2009	Trader / hawker / vendor	10
region	23	2009	Agriculture / farming / fishing / forestry	32
region	23	2009	Housewife / homemaker	3
region	23	2009	Retail / Shop	3
region	23	2009	Trader / hawker / vendor	1
region	24	2009	Agriculture / farming / fishing / forestry	62
region	24	2009	Artisan or skilled manual worker	1
region	24	2009	Housewife / homemaker	1
region	24	2009	Mid-level professional	1
region	24	2009	Retail / Shop	1
region	24	2009	Student	2
region	24	2009	Trader / hawker / vendor	3
region	24	2009	Upper-level professional	1
region	25	2009	Agriculture / farming / fishing / forestry	42
region	25	2009	Artisan or skilled manual worker	5
region	25	2009	Housewife / homemaker	9
region	25	2009	Mid-level professional	2
region	25	2009	Retail / Shop	7
region	25	2009	Trader / hawker / vendor	5
region	25	2009	Unskilled manual worker	2
region	26	2009	Agriculture / farming / fishing / forestry	39
region	26	2009	Artisan or skilled manual worker	3
region	26	2009	Housewife / homemaker	10
region	26	2009	Mid-level professional	1
region	26	2009	Never had a job	4
region	26	2009	Retail / Shop	2
region	26	2009	Student	1
region	26	2009	Trader / hawker / vendor	1
region	26	2009	Unskilled manual worker	3
region	27	2009	Agriculture / farming / fishing / forestry	39
region	27	2009	Artisan or skilled manual worker	2
region	27	2009	Housewife / homemaker	4
region	27	2009	Retail / Shop	7
region	27	2009	Student	2
region	27	2009	Trader / hawker / vendor	9
region	27	2009	Unskilled manual worker	1
region	31	2009	Agriculture / farming / fishing / forestry	54
region	31	2009	Artisan or skilled manual worker	2
region	31	2009	Housewife / homemaker	1
region	31	2009	Mid-level professional	2
region	31	2009	Never had a job	1
region	31	2009	Retail / Shop	4
region	31	2009	Student	5
region	31	2009	Trader / hawker / vendor	3
region	29	2009	Agriculture / farming / fishing / forestry	78
region	29	2009	Artisan or skilled manual worker	8
region	29	2009	Housewife / homemaker	6
region	29	2009	Never had a job	2
region	29	2009	Other	3
region	29	2009	Retail / Shop	1
region	29	2009	Student	3
region	29	2009	Trader / hawker / vendor	1
region	29	2009	Unskilled manual worker	2
region	28	2009	Agriculture / farming / fishing / forestry	32
region	28	2009	Artisan or skilled manual worker	3
region	28	2009	Housewife / homemaker	9
region	28	2009	Mid-level professional	1
region	28	2009	Never had a job	23
region	28	2009	Retail / Shop	5
region	28	2009	Trader / hawker / vendor	9
region	28	2009	Unskilled manual worker	5
region	28	2009	Upper-level professional	1
country	TZ	2009	Agriculture / farming / fishing / forestry	1186
country	TZ	2009	Student	90
country	TZ	2009	Unskilled manual worker	62
country	TZ	2009	Artisan or skilled manual worker	120
country	TZ	2009	Trader / hawker / vendor	186
country	TZ	2009	Clerical or secretarial	7
country	TZ	2009	Never had a job	194
country	TZ	2009	Housewife / homemaker	139
country	TZ	2009	Other	31
country	TZ	2009	Supervisor / Foreman / Senior Manager	2
country	TZ	2009	Mid-level professional	82
country	TZ	2009	Upper-level professional	28
country	TZ	2009	Security services	26
country	TZ	2009	Retail / Shop	233
\.


--
-- Name: occupation_of_respondent pk_occupation_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.occupation_of_respondent
    ADD CONSTRAINT pk_occupation_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, occupation_of_respondent);


--
-- PostgreSQL database dump complete
--

