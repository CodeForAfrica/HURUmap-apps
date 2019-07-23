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

ALTER TABLE IF EXISTS ONLY public.contraceptive_use DROP CONSTRAINT IF EXISTS contraceptive_use_pkey;
DROP TABLE IF EXISTS public.contraceptive_use;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contraceptive_use; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contraceptive_use (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    contraceptive_method character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: contraceptive_use; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contraceptive_use (geo_level, geo_code, geo_version, contraceptive_method, total) FROM stdin;
country	NG	2016	Any method	13.4
country	NG	2016	Any modern method	10.8
country	NG	2016	Diaphragm/Foam/Jelly	0.1
country	NG	2016	Female condom	0.1
country	NG	2016	Female sterilization	0.2
country	NG	2016	Implants	1.4
country	NG	2016	Injectables	4.3
country	NG	2016	IUD	0.7
country	NG	2016	LAM	0.6
country	NG	2016	Male condom	1.1
country	NG	2016	Male sterilization	0
country	NG	2016	No method	86.6
country	NG	2016	Other	0.7
country	NG	2016	Periodic abstinence	1
country	NG	2016	Pill	2.3
country	NG	2016	Traditional Method	2.6
country	NG	2016	Withdrawal	0.9
state	1	2016	Any method	16.6
state	1	2016	Any modern method	9.5
state	1	2016	Diaphragm/Foam/Jelly	0
state	1	2016	Female condom	0
state	1	2016	Female sterilization	0
state	1	2016	Implants	0.5
state	1	2016	Injectables	3.9
state	1	2016	IUD	1.1
state	1	2016	LAM	1.1
state	1	2016	Male condom	1.1
state	1	2016	Male sterilization	0
state	1	2016	No method	83.4
state	1	2016	Other	0
state	1	2016	Periodic abstinence	5.8
state	1	2016	Pill	1.8
state	1	2016	Traditional Method	7.1
state	1	2016	Withdrawal	1.4
state	2	2016	Any method	9.1
state	2	2016	Any modern method	7.1
state	2	2016	Diaphragm/Foam/Jelly	0.3
state	2	2016	Female condom	0.1
state	2	2016	Female sterilization	0.6
state	2	2016	Implants	0.4
state	2	2016	Injectables	3.9
state	2	2016	IUD	0.5
state	2	2016	LAM	0
state	2	2016	Male condom	0.3
state	2	2016	Male sterilization	0
state	2	2016	No method	90.9
state	2	2016	Other	0.5
state	2	2016	Periodic abstinence	0.5
state	2	2016	Pill	1.2
state	2	2016	Traditional Method	2
state	2	2016	Withdrawal	1
state	3	2016	Any method	15.7
state	3	2016	Any modern method	10.8
state	3	2016	Diaphragm/Foam/Jelly	0
state	3	2016	Female condom	0.2
state	3	2016	Female sterilization	0.3
state	3	2016	Implants	1
state	3	2016	Injectables	5.9
state	3	2016	IUD	0
state	3	2016	LAM	0
state	3	2016	Male condom	1.3
state	3	2016	Male sterilization	0
state	3	2016	No method	84.3
state	3	2016	Other	0.2
state	3	2016	Periodic abstinence	3.7
state	3	2016	Pill	2.2
state	3	2016	Traditional Method	4.9
state	3	2016	Withdrawal	1
state	4	2016	Any method	28.2
state	4	2016	Any modern method	16.9
state	4	2016	Diaphragm/Foam/Jelly	0
state	4	2016	Female condom	1
state	4	2016	Female sterilization	0.6
state	4	2016	Implants	3.4
state	4	2016	Injectables	1.9
state	4	2016	IUD	0
state	4	2016	LAM	2.8
state	4	2016	Male condom	5
state	4	2016	Male sterilization	0
state	4	2016	No method	71.8
state	4	2016	Other	0
state	4	2016	Periodic abstinence	7.1
state	4	2016	Pill	2.2
state	4	2016	Traditional Method	11.3
state	4	2016	Withdrawal	4.2
state	5	2016	Any method	11.9
state	5	2016	Any modern method	8.4
state	5	2016	Diaphragm/Foam/Jelly	0.2
state	5	2016	Female condom	0
state	5	2016	Female sterilization	0.5
state	5	2016	Implants	1.2
state	5	2016	Injectables	1.6
state	5	2016	IUD	0
state	5	2016	LAM	3.5
state	5	2016	Male condom	0
state	5	2016	Male sterilization	0
state	5	2016	No method	88.1
state	5	2016	Other	3.1
state	5	2016	Periodic abstinence	0.1
state	5	2016	Pill	1.5
state	5	2016	Traditional Method	3.5
state	5	2016	Withdrawal	0.3
state	6	2016	Any method	14.6
state	6	2016	Any modern method	10
state	6	2016	Diaphragm/Foam/Jelly	0
state	6	2016	Female condom	0.2
state	6	2016	Female sterilization	0
state	6	2016	Implants	2
state	6	2016	Injectables	1.2
state	6	2016	IUD	0.5
state	6	2016	LAM	1.9
state	6	2016	Male condom	1
state	6	2016	Male sterilization	0
state	6	2016	No method	85.4
state	6	2016	Other	1.3
state	6	2016	Periodic abstinence	2.6
state	6	2016	Pill	3.2
state	6	2016	Traditional Method	4.6
state	6	2016	Withdrawal	0.7
state	7	2016	Any method	18.1
state	7	2016	Any modern method	13.9
state	7	2016	Diaphragm/Foam/Jelly	0
state	7	2016	Female condom	0.1
state	7	2016	Female sterilization	0.7
state	7	2016	Implants	5.5
state	7	2016	Injectables	3.3
state	7	2016	IUD	0
state	7	2016	LAM	0
state	7	2016	Male condom	3.3
state	7	2016	Male sterilization	0
state	7	2016	No method	81.9
state	7	2016	Other	0.7
state	7	2016	Periodic abstinence	1.9
state	7	2016	Pill	1.1
state	7	2016	Traditional Method	4.2
state	7	2016	Withdrawal	1.7
state	8	2016	Any method	5.8
state	8	2016	Any modern method	5.3
state	8	2016	Diaphragm/Foam/Jelly	0
state	8	2016	Female condom	0
state	8	2016	Female sterilization	0
state	8	2016	Implants	1
state	8	2016	Injectables	2.4
state	8	2016	IUD	0.2
state	8	2016	LAM	0
state	8	2016	Male condom	0
state	8	2016	Male sterilization	0
state	8	2016	No method	94.2
state	8	2016	Other	0.1
state	8	2016	Periodic abstinence	0
state	8	2016	Pill	1.7
state	8	2016	Traditional Method	0.5
state	8	2016	Withdrawal	0.4
state	9	2016	Any method	23
state	9	2016	Any modern method	16.1
state	9	2016	Diaphragm/Foam/Jelly	0
state	9	2016	Female condom	0
state	9	2016	Female sterilization	0.6
state	9	2016	Implants	5.9
state	9	2016	Injectables	4.7
state	9	2016	IUD	0.6
state	9	2016	LAM	0.2
state	9	2016	Male condom	1.8
state	9	2016	Male sterilization	0.2
state	9	2016	No method	77
state	9	2016	Other	0.9
state	9	2016	Periodic abstinence	4.9
state	9	2016	Pill	2.1
state	9	2016	Traditional Method	7
state	9	2016	Withdrawal	1.1
state	10	2016	Any method	10.9
state	10	2016	Any modern method	8
state	10	2016	Diaphragm/Foam/Jelly	0
state	10	2016	Female condom	0
state	10	2016	Female sterilization	0
state	10	2016	Implants	0.8
state	10	2016	Injectables	3.5
state	10	2016	IUD	0.8
state	10	2016	LAM	0
state	10	2016	Male condom	0.3
state	10	2016	Male sterilization	0
state	10	2016	No method	89.1
state	10	2016	Other	0.4
state	10	2016	Periodic abstinence	1.5
state	10	2016	Pill	2.6
state	10	2016	Traditional Method	2.9
state	10	2016	Withdrawal	1
state	11	2016	Any method	3
state	11	2016	Any modern method	2.1
state	11	2016	Diaphragm/Foam/Jelly	0.3
state	11	2016	Female condom	0
state	11	2016	Female sterilization	0.3
state	11	2016	Implants	0.4
state	11	2016	Injectables	0.5
state	11	2016	IUD	0
state	11	2016	LAM	0.4
state	11	2016	Male condom	0
state	11	2016	Male sterilization	0.2
state	11	2016	No method	97
state	11	2016	Other	0.2
state	11	2016	Periodic abstinence	0.5
state	11	2016	Pill	0
state	11	2016	Traditional Method	0.9
state	11	2016	Withdrawal	0.3
state	12	2016	Any method	15.7
state	12	2016	Any modern method	10
state	12	2016	Diaphragm/Foam/Jelly	0.2
state	12	2016	Female condom	0
state	12	2016	Female sterilization	0
state	12	2016	Implants	0.4
state	12	2016	Injectables	2.4
state	12	2016	IUD	1.5
state	12	2016	LAM	1
state	12	2016	Male condom	1
state	12	2016	Male sterilization	0
state	12	2016	No method	84.3
state	12	2016	Other	0
state	12	2016	Periodic abstinence	3.1
state	12	2016	Pill	3.5
state	12	2016	Traditional Method	5.7
state	12	2016	Withdrawal	2.6
state	13	2016	Any method	31.4
state	13	2016	Any modern method	24.4
state	13	2016	Diaphragm/Foam/Jelly	0.2
state	13	2016	Female condom	0
state	13	2016	Female sterilization	0.6
state	13	2016	Implants	1.7
state	13	2016	Injectables	7.7
state	13	2016	IUD	4
state	13	2016	LAM	0.7
state	13	2016	Male condom	7.3
state	13	2016	Male sterilization	0.3
state	13	2016	No method	68.6
state	13	2016	Other	1.3
state	13	2016	Periodic abstinence	2.1
state	13	2016	Pill	1.6
state	13	2016	Traditional Method	6.8
state	13	2016	Withdrawal	3.4
state	14	2016	Any method	22.1
state	14	2016	Any modern method	18
state	14	2016	Diaphragm/Foam/Jelly	0.9
state	14	2016	Female condom	0
state	14	2016	Female sterilization	0.5
state	14	2016	Implants	2.7
state	14	2016	Injectables	8.2
state	14	2016	IUD	0.2
state	14	2016	LAM	1.4
state	14	2016	Male condom	2.8
state	14	2016	Male sterilization	0
state	14	2016	No method	77.9
state	14	2016	Other	0.2
state	14	2016	Periodic abstinence	3.7
state	14	2016	Pill	1.4
state	14	2016	Traditional Method	4.1
state	14	2016	Withdrawal	0.2
state	15	2016	Any method	26.2
state	15	2016	Any modern method	19.9
state	15	2016	Diaphragm/Foam/Jelly	0
state	15	2016	Female condom	0.4
state	15	2016	Female sterilization	1.6
state	15	2016	Implants	1.7
state	15	2016	Injectables	5.9
state	15	2016	IUD	1.4
state	15	2016	LAM	1.3
state	15	2016	Male condom	5
state	15	2016	Male sterilization	0
state	15	2016	No method	73.8
state	15	2016	Other	2.6
state	15	2016	Periodic abstinence	2.4
state	15	2016	Pill	2.7
state	15	2016	Traditional Method	6.3
state	15	2016	Withdrawal	1.3
state	16	2016	Any method	6.6
state	16	2016	Any modern method	6
state	16	2016	Diaphragm/Foam/Jelly	0
state	16	2016	Female condom	0
state	16	2016	Female sterilization	0
state	16	2016	Implants	0.9
state	16	2016	Injectables	3.4
state	16	2016	IUD	0.3
state	16	2016	LAM	0.7
state	16	2016	Male condom	0.1
state	16	2016	Male sterilization	0
state	16	2016	No method	93.4
state	16	2016	Other	0.3
state	16	2016	Periodic abstinence	0.1
state	16	2016	Pill	0.7
state	16	2016	Traditional Method	0.4
state	16	2016	Withdrawal	0
state	17	2016	Any method	35.8
state	17	2016	Any modern method	21.3
state	17	2016	Diaphragm/Foam/Jelly	1.1
state	17	2016	Female condom	0
state	17	2016	Female sterilization	0.2
state	17	2016	Implants	1.7
state	17	2016	Injectables	4.4
state	17	2016	IUD	1.5
state	17	2016	LAM	2.6
state	17	2016	Male condom	6.4
state	17	2016	Male sterilization	0
state	17	2016	No method	64.2
state	17	2016	Other	0.2
state	17	2016	Periodic abstinence	6.3
state	17	2016	Pill	3.3
state	17	2016	Traditional Method	14.5
state	17	2016	Withdrawal	7.9
state	18	2016	Any method	1.3
state	18	2016	Any modern method	1.1
state	18	2016	Diaphragm/Foam/Jelly	0
state	18	2016	Female condom	0
state	18	2016	Female sterilization	0
state	18	2016	Implants	0
state	18	2016	Injectables	0.4
state	18	2016	IUD	0.4
state	18	2016	LAM	0
state	18	2016	Male condom	0
state	18	2016	Male sterilization	0
state	18	2016	No method	98.7
state	18	2016	Other	0.2
state	18	2016	Periodic abstinence	0
state	18	2016	Pill	0.4
state	18	2016	Traditional Method	0.2
state	18	2016	Withdrawal	0
state	19	2016	Any method	24.1
state	19	2016	Any modern method	21.9
state	19	2016	Diaphragm/Foam/Jelly	0.1
state	19	2016	Female condom	0.1
state	19	2016	Female sterilization	0
state	19	2016	Implants	3.4
state	19	2016	Injectables	9.5
state	19	2016	IUD	0.7
state	19	2016	LAM	0.3
state	19	2016	Male condom	1.1
state	19	2016	Male sterilization	0
state	19	2016	No method	75.9
state	19	2016	Other	0.1
state	19	2016	Periodic abstinence	0.2
state	19	2016	Pill	6.7
state	19	2016	Traditional Method	2.2
state	19	2016	Withdrawal	1.9
state	20	2016	Any method	6.3
state	20	2016	Any modern method	5.7
state	20	2016	Diaphragm/Foam/Jelly	0.1
state	20	2016	Female condom	0
state	20	2016	Female sterilization	0
state	20	2016	Implants	0.7
state	20	2016	Injectables	2.2
state	20	2016	IUD	0.4
state	20	2016	LAM	0.2
state	20	2016	Male condom	0
state	20	2016	Male sterilization	0
state	20	2016	No method	93.7
state	20	2016	Other	0.4
state	20	2016	Periodic abstinence	0.2
state	20	2016	Pill	2.2
state	20	2016	Traditional Method	0.6
state	20	2016	Withdrawal	0
state	21	2016	Any method	6.3
state	21	2016	Any modern method	4.9
state	21	2016	Diaphragm/Foam/Jelly	0.4
state	21	2016	Female condom	0
state	21	2016	Female sterilization	0.4
state	21	2016	Implants	0.2
state	21	2016	Injectables	3.1
state	21	2016	IUD	0.2
state	21	2016	LAM	0
state	21	2016	Male condom	0.1
state	21	2016	Male sterilization	0
state	21	2016	No method	93.7
state	21	2016	Other	1.5
state	21	2016	Periodic abstinence	0
state	21	2016	Pill	0.6
state	21	2016	Traditional Method	1.5
state	21	2016	Withdrawal	0
state	22	2016	Any method	6.3
state	22	2016	Any modern method	5
state	22	2016	Diaphragm/Foam/Jelly	0.1
state	22	2016	Female condom	0
state	22	2016	Female sterilization	0.1
state	22	2016	Implants	0.6
state	22	2016	Injectables	2.8
state	22	2016	IUD	0
state	22	2016	LAM	0
state	22	2016	Male condom	0
state	22	2016	Male sterilization	0.1
state	22	2016	No method	93.7
state	22	2016	Other	0.8
state	22	2016	Periodic abstinence	0.1
state	22	2016	Pill	1.2
state	22	2016	Traditional Method	1.4
state	22	2016	Withdrawal	0.4
state	23	2016	Any method	6.7
state	23	2016	Any modern method	6.2
state	23	2016	Diaphragm/Foam/Jelly	0
state	23	2016	Female condom	0
state	23	2016	Female sterilization	0.3
state	23	2016	Implants	0.3
state	23	2016	Injectables	3.5
state	23	2016	IUD	0
state	23	2016	LAM	0
state	23	2016	Male condom	0.1
state	23	2016	Male sterilization	0
state	23	2016	No method	93.3
state	23	2016	Other	0.3
state	23	2016	Periodic abstinence	0
state	23	2016	Pill	2
state	23	2016	Traditional Method	0.3
state	23	2016	Withdrawal	0
state	24	2016	Any method	27.1
state	24	2016	Any modern method	23.7
state	24	2016	Diaphragm/Foam/Jelly	0
state	24	2016	Female condom	0
state	24	2016	Female sterilization	0
state	24	2016	Implants	2.3
state	24	2016	Injectables	7.3
state	24	2016	IUD	1.2
state	24	2016	LAM	3.9
state	24	2016	Male condom	5.1
state	24	2016	Male sterilization	0
state	24	2016	No method	72.9
state	24	2016	Other	0
state	24	2016	Periodic abstinence	2.1
state	24	2016	Pill	3.9
state	24	2016	Traditional Method	3.4
state	24	2016	Withdrawal	1.2
state	25	2016	Any method	22.6
state	25	2016	Any modern method	17.4
state	25	2016	Diaphragm/Foam/Jelly	0
state	25	2016	Female condom	0.4
state	25	2016	Female sterilization	0.7
state	25	2016	Implants	1.9
state	25	2016	Injectables	4.6
state	25	2016	IUD	2.1
state	25	2016	LAM	0
state	25	2016	Male condom	3.6
state	25	2016	Male sterilization	0
state	25	2016	No method	77.4
state	25	2016	Other	0.8
state	25	2016	Periodic abstinence	2.4
state	25	2016	Pill	4
state	25	2016	Traditional Method	5.3
state	25	2016	Withdrawal	2.1
state	26	2016	Any method	17
state	26	2016	Any modern method	13.8
state	26	2016	Diaphragm/Foam/Jelly	0
state	26	2016	Female condom	0
state	26	2016	Female sterilization	0
state	26	2016	Implants	4
state	26	2016	Injectables	7.2
state	26	2016	IUD	1
state	26	2016	LAM	0
state	26	2016	Male condom	0.3
state	26	2016	Male sterilization	0
state	26	2016	No method	83
state	26	2016	Other	1.2
state	26	2016	Periodic abstinence	1.1
state	26	2016	Pill	1.3
state	26	2016	Traditional Method	3.2
state	26	2016	Withdrawal	0.9
state	27	2016	Any method	11.2
state	27	2016	Any modern method	8.1
state	27	2016	Diaphragm/Foam/Jelly	0
state	27	2016	Female condom	0.1
state	27	2016	Female sterilization	0
state	27	2016	Implants	0
state	27	2016	Injectables	2.9
state	27	2016	IUD	1
state	27	2016	LAM	1.3
state	27	2016	Male condom	0.6
state	27	2016	Male sterilization	0
state	27	2016	No method	88.8
state	27	2016	Other	1.9
state	27	2016	Periodic abstinence	1.2
state	27	2016	Pill	2.2
state	27	2016	Traditional Method	3.2
state	27	2016	Withdrawal	0.1
state	28	2016	Any method	21.3
state	28	2016	Any modern method	18.2
state	28	2016	Diaphragm/Foam/Jelly	0.1
state	28	2016	Female condom	0
state	28	2016	Female sterilization	0
state	28	2016	Implants	1.7
state	28	2016	Injectables	8.1
state	28	2016	IUD	1
state	28	2016	LAM	0
state	28	2016	Male condom	2.3
state	28	2016	Male sterilization	0
state	28	2016	No method	78.7
state	28	2016	Other	1.9
state	28	2016	Periodic abstinence	0.4
state	28	2016	Pill	5
state	28	2016	Traditional Method	3.2
state	28	2016	Withdrawal	0.8
state	29	2016	Any method	21.8
state	29	2016	Any modern method	18.8
state	29	2016	Diaphragm/Foam/Jelly	0
state	29	2016	Female condom	0.3
state	29	2016	Female sterilization	0
state	29	2016	Implants	1.7
state	29	2016	Injectables	5.5
state	29	2016	IUD	3
state	29	2016	LAM	1.6
state	29	2016	Male condom	3.6
state	29	2016	Male sterilization	0
state	29	2016	No method	78.2
state	29	2016	Other	0
state	29	2016	Periodic abstinence	0.5
state	29	2016	Pill	3
state	29	2016	Traditional Method	3.1
state	29	2016	Withdrawal	2.6
state	30	2016	Any method	24.6
state	30	2016	Any modern method	22.9
state	30	2016	Diaphragm/Foam/Jelly	0.2
state	30	2016	Female condom	0
state	30	2016	Female sterilization	0.2
state	30	2016	Implants	1.5
state	30	2016	Injectables	11.2
state	30	2016	IUD	3.3
state	30	2016	LAM	0
state	30	2016	Male condom	2.7
state	30	2016	Male sterilization	0
state	30	2016	No method	75.4
state	30	2016	Other	0.6
state	30	2016	Periodic abstinence	0.5
state	30	2016	Pill	3.8
state	30	2016	Traditional Method	1.7
state	30	2016	Withdrawal	0.7
state	31	2016	Any method	34.2
state	31	2016	Any modern method	30
state	31	2016	Diaphragm/Foam/Jelly	0.1
state	31	2016	Female condom	0
state	31	2016	Female sterilization	0.2
state	31	2016	Implants	3.3
state	31	2016	Injectables	12.3
state	31	2016	IUD	3.3
state	31	2016	LAM	2.2
state	31	2016	Male condom	2.5
state	31	2016	Male sterilization	0
state	31	2016	No method	65.8
state	31	2016	Other	0.6
state	31	2016	Periodic abstinence	1.2
state	31	2016	Pill	6
state	31	2016	Traditional Method	4.2
state	31	2016	Withdrawal	2.3
state	32	2016	Any method	20.1
state	32	2016	Any modern method	19.2
state	32	2016	Diaphragm/Foam/Jelly	0.2
state	32	2016	Female condom	0.1
state	32	2016	Female sterilization	0.3
state	32	2016	Implants	1.6
state	32	2016	Injectables	12.1
state	32	2016	IUD	1
state	32	2016	LAM	0.4
state	32	2016	Male condom	0.4
state	32	2016	Male sterilization	0.1
state	32	2016	No method	79.9
state	32	2016	Other	0.3
state	32	2016	Periodic abstinence	0.2
state	32	2016	Pill	3.1
state	32	2016	Traditional Method	0.9
state	32	2016	Withdrawal	0.4
state	33	2016	Any method	18
state	33	2016	Any modern method	11
state	33	2016	Diaphragm/Foam/Jelly	0
state	33	2016	Female condom	0.2
state	33	2016	Female sterilization	0.2
state	33	2016	Implants	1.7
state	33	2016	Injectables	3.5
state	33	2016	IUD	0
state	33	2016	LAM	1.2
state	33	2016	Male condom	1.7
state	33	2016	Male sterilization	0
state	33	2016	No method	82
state	33	2016	Other	1.1
state	33	2016	Periodic abstinence	3.4
state	33	2016	Pill	2.5
state	33	2016	Traditional Method	7
state	33	2016	Withdrawal	2.5
state	34	2016	Any method	4.7
state	34	2016	Any modern method	4.6
state	34	2016	Diaphragm/Foam/Jelly	0
state	34	2016	Female condom	0
state	34	2016	Female sterilization	0
state	34	2016	Implants	0.5
state	34	2016	Injectables	2.7
state	34	2016	IUD	0
state	34	2016	LAM	0
state	34	2016	Male condom	0
state	34	2016	Male sterilization	0
state	34	2016	No method	95.3
state	34	2016	Other	0
state	34	2016	Periodic abstinence	0.1
state	34	2016	Pill	1.5
state	34	2016	Traditional Method	0.1
state	34	2016	Withdrawal	0
state	35	2016	Any method	6.7
state	35	2016	Any modern method	5.6
state	35	2016	Diaphragm/Foam/Jelly	0.1
state	35	2016	Female condom	0
state	35	2016	Female sterilization	0.1
state	35	2016	Implants	0.2
state	35	2016	Injectables	4.3
state	35	2016	IUD	0.2
state	35	2016	LAM	0
state	35	2016	Male condom	0.1
state	35	2016	Male sterilization	0
state	35	2016	No method	93.3
state	35	2016	Other	0.4
state	35	2016	Periodic abstinence	0.7
state	35	2016	Pill	0.5
state	35	2016	Traditional Method	1.1
state	35	2016	Withdrawal	0
state	36	2016	Any method	3.5
state	36	2016	Any modern method	3.3
state	36	2016	Diaphragm/Foam/Jelly	0
state	36	2016	Female condom	0
state	36	2016	Female sterilization	0
state	36	2016	Implants	0.2
state	36	2016	Injectables	1.8
state	36	2016	IUD	0
state	36	2016	LAM	0
state	36	2016	Male condom	0
state	36	2016	Male sterilization	0
state	36	2016	No method	96.5
state	36	2016	Other	0.2
state	36	2016	Periodic abstinence	0
state	36	2016	Pill	1.2
state	36	2016	Traditional Method	0.2
state	36	2016	Withdrawal	0
state	37	2016	Any method	5.6
state	37	2016	Any modern method	5
state	37	2016	Diaphragm/Foam/Jelly	0.1
state	37	2016	Female condom	0
state	37	2016	Female sterilization	0
state	37	2016	Implants	1.2
state	37	2016	Injectables	1.8
state	37	2016	IUD	0.4
state	37	2016	LAM	0.1
state	37	2016	Male condom	0.2
state	37	2016	Male sterilization	0
state	37	2016	No method	94.4
state	37	2016	Other	0.2
state	37	2016	Periodic abstinence	0.2
state	37	2016	Pill	1.1
state	37	2016	Traditional Method	0.6
state	37	2016	Withdrawal	0.2
\.


--
-- Name: contraceptive_use contraceptive_use_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contraceptive_use
    ADD CONSTRAINT contraceptive_use_pkey PRIMARY KEY (geo_level, geo_code, geo_version, contraceptive_method);


--
-- PostgreSQL database dump complete
--
