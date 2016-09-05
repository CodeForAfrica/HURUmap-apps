--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.crimereport DROP CONSTRAINT IF EXISTS crimereportpkey;
DROP TABLE IF EXISTS public.crimereport;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: crimereport; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE crimereport (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    crimereport character varying(30) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: crimereport; Type: TABLE DATA; Schema: public; Owner: -
--
COPY crimereport (geo_level, geo_code, crimereport, total) FROM stdin;
county	20	crimes	1776
county	20	crimesindex	336
county	6	crimes	1047
county	6	crimesindex	368
county	1	crimes	2946
county	1	crimesindex	314
county	5	crimes	316
county	5	crimesindex	311
county	32	crimes	4525
county	32	crimesindex	282
county	18	crimes	1654
county	18	crimesindex	277
county	22	crimes	4449
county	22	crimesindex	274
county	35	crimes	1577
county	35	crimesindex	267
county	21	crimes	2501
county	21	crimesindex	265
county	28	crimes	892
county	28	crimesindex	241
county	19	crimes	1632
county	19	crimesindex	235
county	42	crimes	2249
county	42	crimesindex	232
county	4	crimes	525
county	4	crimesindex	219
county	34	crimes	1502
county	34	crimesindex	219
county	47	crimes	6732
county	47	crimesindex	215
county	3	crimes	2362
county	3	crimesindex	213
county	27	crimes	1872
county	27	crimesindex	209
county	26	crimes	1610
county	26	crimesindex	197
county	33	crimes	1626
county	33	crimesindex	191
county	31	crimes	752
county	31	crimesindex	188
county	13	crimes	659
county	13	crimesindex	180
county	41	crimes	1452
county	41	crimesindex	172
county	45	crimes	1933
county	45	crimesindex	168
county	30	crimes	923
county	30	crimesindex	166
county	25	crimes	371
county	25	crimesindex	166
county	14	crimes	824
county	14	crimesindex	160
county	39	crimes	2150
county	39	crimesindex	156
county	11	crimes	219
county	11	crimesindex	153
county	2	crimes	958
county	2	crimesindex	147
county	37	crimes	2444
county	37	crimesindex	147
county	46	crimes	878
county	46	crimesindex	147
county	12	crimes	1971
county	12	crimesindex	145
county	29	crimes	1090
county	29	crimesindex	145
county	24	crimes	739
county	24	crimesindex	144
county	38	crimes	771
county	38	crimesindex	139
county	43	crimes	1320
county	43	crimesindex	137
county	7	crimes	850
county	7	crimesindex	136
county	10	crimes	370
county	10	crimesindex	127
county	40	crimes	931
county	40	crimesindex	125
county	36	crimes	1089
county	36	crimesindex	122
county	44	crimes	1054
county	44	crimesindex	115
county	23	crimes	787
county	23	crimesindex	92
county	15	crimes	722
county	15	crimesindex	71
county	16	crimes	738
county	16	crimesindex	67
county	17	crimes	561
county	17	crimesindex	63
county	8	crimes	438
county	8	crimesindex	43
county	9	crimes	252
county	9	crimesindex	38
country	KE	crimes	69376
country	KE	crimesindex	180
\.
--
-- Name: crimereportpkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY crimereport
    ADD CONSTRAINT crimereportpkey PRIMARY KEY (geo_level, geo_code, crimereport);


--
-- PostgreSQL database dump complete
--

