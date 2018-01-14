--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: watersources; Type: TABLE; Schema: public; Owner: hurumap_tz
--

CREATE TABLE watersources (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "water sources" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE watersources OWNER TO hurumap_tz;

--
-- Data for Name: watersources; Type: TABLE DATA; Schema: public; Owner: hurumap_tz
--

COPY watersources (geo_level, geo_code, geo_version, "water sources", total) FROM stdin;
region	1	2009	functional	3363
region	10	2009	functional	2064
region	11	2009	functional	3859
region	14	2009	functional	1262
region	15	2009	functional	1739
region	16	2009	functional	1687
region	17	2009	functional	3018
region	18	2009	functional	3150
region	19	2009	functional	1648
region	2	2009	functional	760
region	20	2009	functional	2379
region	22	2009	functional	2026
region	23	2009	functional	1292
region	24	2009	functional	2259
region	25	2009	functional	1516
region	26	2009	functional	2692
region	27	2009	functional	1651
region	28	2009	functional	2232
region	29	2009	functional	1438
region	3	2009	functional	1650
region	4	2009	functional	1356
region	5	2009	functional	1334
region	6	2009	functional	3104
region	9	2009	functional	646
country	TZ	2009	functional	48125
region	1	2009	nonfunctional	924
region	10	2009	nonfunctional	1412
region	11	2009	nonfunctional	1521
region	14	2009	nonfunctional	772
region	15	2009	nonfunctional	830
region	16	2009	nonfunctional	1104
region	17	2009	nonfunctional	1452
region	18	2009	nonfunctional	1680
region	19	2009	nonfunctional	612
region	2	2009	nonfunctional	272
region	20	2009	nonfunctional	1103
region	22	2009	nonfunctional	1504
region	23	2009	nonfunctional	481
region	24	2009	nonfunctional	1368
region	25	2009	nonfunctional	1333
region	26	2009	nonfunctional	1196
region	27	2009	nonfunctional	1012
region	28	2009	nonfunctional	1288
region	29	2009	nonfunctional	1435
region	3	2009	nonfunctional	1454
region	4	2009	nonfunctional	558
region	5	2009	nonfunctional	1007
region	6	2009	nonfunctional	1227
region	9	2009	nonfunctional	275
country	TZ	2009	nonfunctional	25820
region	1	2009	needsrepair	277
region	10	2009	needsrepair	607
region	11	2009	needsrepair	714
region	14	2009	needsrepair	195
region	15	2009	needsrepair	244
region	16	2009	needsrepair	243
region	17	2009	needsrepair	133
region	18	2009	needsrepair	646
region	19	2009	needsrepair	40
region	2	2009	needsrepair	101
region	20	2009	needsrepair	223
region	22	2009	needsrepair	144
region	23	2009	needsrepair	134
region	24	2009	needsrepair	183
region	25	2009	needsrepair	189
region	26	2009	needsrepair	131
region	27	2009	needsrepair	251
region	28	2009	needsrepair	220
region	29	2009	needsrepair	162
region	3	2009	needsrepair	431
region	4	2009	needsrepair	34
region	5	2009	needsrepair	56
region	6	2009	needsrepair	200
region	9	2009	needsrepair	148
country	TZ	2009	needsrepair	5706
\.


--
-- Name: pk_watersources; Type: CONSTRAINT; Schema: public; Owner: hurumap_tz
--

ALTER TABLE ONLY watersources
    ADD CONSTRAINT pk_watersources PRIMARY KEY (geo_level, geo_code, geo_version, "water sources");


--
-- PostgreSQL database dump complete
--

