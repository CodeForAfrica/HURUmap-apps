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
    crimereport character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: crimereport; Type: TABLE DATA; Schema: public; Owner: -
--
COPY crimereport (geo_level, geo_code, crimereport, total) FROM stdin;
county	20	crimes	1177
county	20	crimesindex	223
county	6	crimes	961
county	6	crimesindex	338
county	1	crimes	3194
county	1	crimesindex	340
county	5	crimes	492
county	5	crimesindex	485
county	32	crimes	4384
county	32	crimesindex	273
county	18	crimes	1446
county	18	crimesindex	243
county	22	crimes	4768
county	22	crimesindex	294
county	35	crimes	1510
county	35	crimesindex	256
county	21	crimes	2363
county	21	crimesindex	251
county	28	crimes	571
county	28	crimesindex	154
county	19	crimes	1668
county	19	crimesindex	240
county	42	crimes	2293
county	42	crimesindex	237
county	4	crimes	622
county	4	crimesindex	259
county	34	crimes	1256
county	34	crimesindex	183
county	47	crimes	4383
county	47	crimesindex	140
county	3	crimes	2199
county	3	crimesindex	198
county	27	crimes	1654
county	27	crimesindex	185
county	26	crimes	1781
county	26	crimesindex	218
county	33	crimes	1335
county	33	crimesindex	157
county	31	crimes	830
county	31	crimesindex	208
county	13	crimes	628
county	13	crimesindex	172
county	41	crimes	1493
county	41	crimesindex	177
county	45	crimes	2018
county	45	crimesindex	175
county	30	crimes	1035
county	30	crimesindex	186
county	25	crimes	355
county	25	crimesindex	159
county	14	crimes	848
county	14	crimesindex	164
county	39	crimes	2852
county	39	crimesindex	207
county	11	crimes	213
county	11	crimesindex	149
county	2	crimes	1097
county	2	crimesindex	169
county	37	crimes	2514
county	37	crimesindex	151
county	46	crimes	1124
county	46	crimesindex	188
county	12	crimes	4215
county	12	crimesindex	311
county	29	crimes	989
county	29	crimesindex	131
county	24	crimes	684
county	24	crimesindex	133
county	38	crimes	1146
county	38	crimesindex	207
county	43	crimes	1568
county	43	crimesindex	163
county	7	crimes	638
county	7	crimesindex	102
county	10	crimes	468
county	10	crimesindex	161
county	40	crimes	1553
county	40	crimesindex	209
county	36	crimes	968
county	36	crimesindex	109
county	44	crimes	1282
county	44	crimesindex	140
county	23	crimes	974
county	23	crimesindex	114
county	15	crimes	1573
county	15	crimesindex	155
county	16	crimes	1461
county	16	crimesindex	133
county	17	crimes	1025
county	17	crimesindex	116
county	8	crimes	317
county	8	crimesindex	31
county	9	crimes	271
county	9	crimesindex	41
country	KE	crimes	72490
country	KE	crimesindex	188
\.
--
-- Name: crimereportpkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY crimereport
    ADD CONSTRAINT crimereportpkey PRIMARY KEY (geo_level, geo_code, crimereport);


--
-- PostgreSQL database dump complete
--

