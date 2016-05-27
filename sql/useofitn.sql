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

ALTER TABLE IF EXISTS ONLY public.household_itn_use_users DROP CONSTRAINT IF EXISTS household_itn_use_users_pkey;
DROP TABLE IF EXISTS public.household_itn_use_users;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: household_itn_use_users; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE household_itn_use_users (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    household character varying(128) NOT NULL,
    users character varying(128) NOT NULL,
    itn_use character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: household_itn_use_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY household_itn_use_users (geo_level, geo_code, household, users, itn_use, total) FROM stdin;
county	1	all	children	slept under any net last night	67.2
county	1	all	children	used ITN last night	61.5
county	1	all	children	used ITN all  year 	61.5
county	1	with at least one ITN	children	used ITN last night	85.9
county	1	all	pregnant women	slept under any net last night	66.7
county	1	all	pregnant women	used ITN last night	55.0
county	1	all	pregnant women	used ITN all  year 	55.0
county	1	with at least one ITN	pregnant women	used ITN last night	0.0
county	2	all	children	slept under any net last night	74.6
county	2	all	children	used ITN last night	72.4
county	2	all	children	used ITN all  year 	72.4
county	2	with at least one ITN	children	used ITN last night	83.4
county	2	all	pregnant women	slept under any net last night	86.6
county	2	all	pregnant women	used ITN last night	84.7
county	2	all	pregnant women	used ITN all  year 	84.7
county	2	with at least one ITN	pregnant women	used ITN last night	96.3
county	3	all	children	slept under any net last night	70.9
county	3	all	children	used ITN last night	63.6
county	3	all	children	used ITN all  year 	63.6
county	3	with at least one ITN	children	used ITN last night	79.1
county	3	all	pregnant women	slept under any net last night	68.7
county	3	all	pregnant women	used ITN last night	58
county	3	all	pregnant women	used ITN all  year 	58
county	3	with at least one ITN	pregnant women	used ITN last night	87.1
county	4	all	children	slept under any net last night	60.1
county	4	all	children	used ITN last night	57.4
county	4	all	children	used ITN all  year 	57.6
county	4	with at least one ITN	children	used ITN last night	78.3
county	4	all	pregnant women	slept under any net last night	53.6
county	4	all	pregnant women	used ITN last night	47.6
county	4	all	pregnant women	used ITN all  year 	47.6
county	4	with at least one ITN	pregnant women	used ITN last night	63.6
county	5	all	children	slept under any net last night	68.8
county	5	all	children	used ITN last night	57.7
county	5	all	children	used ITN all  year 	57.7
county	5	with at least one ITN	children	used ITN last night	81
county	5	all	pregnant women	slept under any net last night	73.6
county	5	all	pregnant women	used ITN last night	64.0
county	5	all	pregnant women	used ITN all  year 	64.0
county	5	with at least one ITN	pregnant women	used ITN last night	0.0
county	6	all	children	slept under any net last night	83.2
county	6	all	children	used ITN last night	82
county	6	all	children	used ITN all  year 	82
county	6	with at least one ITN	children	used ITN last night	88.8
county	6	all	pregnant women	slept under any net last night	0.0
county	6	all	pregnant women	used ITN last night	0.0
county	6	all	pregnant women	used ITN all  year 	0.0
county	6	with at least one ITN	pregnant women	used ITN last night	0.0
county	7	all	children	slept under any net last night	52.5
county	7	all	children	used ITN last night	47.6
county	7	all	children	used ITN all  year 	47.9
county	7	with at least one ITN	children	used ITN last night	77.2
county	7	all	pregnant women	slept under any net last night	51.7
county	7	all	pregnant women	used ITN last night	51.7
county	7	all	pregnant women	used ITN all  year 	52.6
county	7	with at least one ITN	pregnant women	used ITN last night	79.7
county	8	all	children	slept under any net last night	46.1
county	8	all	children	used ITN last night	42.8
county	8	all	children	used ITN all  year 	42.8
county	8	with at least one ITN	children	used ITN last night	76.1
county	8	all	pregnant women	slept under any net last night	49.8
county	8	all	pregnant women	used ITN last night	49.4
county	8	all	pregnant women	used ITN all  year 	49.4
county	8	with at least one ITN	pregnant women	used ITN last night	88.1
county	9	all	children	slept under any net last night	27.5
county	9	all	children	used ITN last night	25.5
county	9	all	children	used ITN all  year 	25.5
county	9	with at least one ITN	children	used ITN last night	84.1
county	9	all	pregnant women	slept under any net last night	20.6
county	9	all	pregnant women	used ITN last night	19.9
county	9	all	pregnant women	used ITN all  year 	19.9
county	9	with at least one ITN	pregnant women	used ITN last night	0.0
county	10	all	children	slept under any net last night	15
county	10	all	children	used ITN last night	12.1
county	10	all	children	used ITN all  year 	12.1
county	10	with at least one ITN	children	used ITN last night	43.7
county	10	all	pregnant women	slept under any net last night	7.9
county	10	all	pregnant women	used ITN last night	7.9
county	10	all	pregnant women	used ITN all  year 	7.9
county	10	with at least one ITN	pregnant women	used ITN last night	0.0
county	11	all	children	slept under any net last night	60.6
county	11	all	children	used ITN last night	57.7
county	11	all	children	used ITN all  year 	57.7
county	11	with at least one ITN	children	used ITN last night	80.9
county	11	all	pregnant women	slept under any net last night	62.9
county	11	all	pregnant women	used ITN last night	56.4
county	11	all	pregnant women	used ITN all  year 	56.4
county	11	with at least one ITN	pregnant women	used ITN last night	83.9
county	12	all	children	slept under any net last night	64.3
county	12	all	children	used ITN last night	59.3
county	12	all	children	used ITN all  year 	60
county	12	with at least one ITN	children	used ITN last night	81.8
county	12	all	pregnant women	slept under any net last night	54.4
county	12	all	pregnant women	used ITN last night	49.0
county	12	all	pregnant women	used ITN all  year 	49.0
county	12	with at least one ITN	pregnant women	used ITN last night	0.0
county	13	all	children	slept under any net last night	65.4
county	13	all	children	used ITN last night	61.9
county	13	all	children	used ITN all  year 	61.9
county	13	with at least one ITN	children	used ITN last night	77.8
county	13	all	pregnant women	slept under any net last night	0.0
county	13	all	pregnant women	used ITN last night	0.0
county	13	all	pregnant women	used ITN all  year 	0.0
county	13	with at least one ITN	pregnant women	used ITN last night	0.0
county	14	all	children	slept under any net last night	63
county	14	all	children	used ITN last night	58.5
county	14	all	children	used ITN all  year 	58.5
county	14	with at least one ITN	children	used ITN last night	72.3
county	14	all	pregnant women	slept under any net last night	0.0
county	14	all	pregnant women	used ITN last night	0.0
county	14	all	pregnant women	used ITN all  year 	0.0
county	14	with at least one ITN	pregnant women	used ITN last night	0.0
county	15	all	children	slept under any net last night	39.8
county	15	all	children	used ITN last night	39.6
county	15	all	children	used ITN all  year 	39.6
county	15	with at least one ITN	children	used ITN last night	54.2
county	15	all	pregnant women	slept under any net last night	47.0
county	15	all	pregnant women	used ITN last night	47.0
county	15	all	pregnant women	used ITN all  year 	47.0
county	15	with at least one ITN	pregnant women	used ITN last night	0.0
county	16	all	children	slept under any net last night	65
county	16	all	children	used ITN last night	62.9
county	16	all	children	used ITN all  year 	62.9
county	16	with at least one ITN	children	used ITN last night	85
county	16	all	pregnant women	slept under any net last night	0.0
county	16	all	pregnant women	used ITN last night	0.0
county	16	all	pregnant women	used ITN all  year 	0.0
county	16	with at least one ITN	pregnant women	used ITN last night	0.0
county	17	all	children	slept under any net last night	52.5
county	17	all	children	used ITN last night	50.8
county	17	all	children	used ITN all  year 	50.8
county	17	with at least one ITN	children	used ITN last night	70.9
county	17	all	pregnant women	slept under any net last night	49.7
county	17	all	pregnant women	used ITN last night	48.0
county	17	all	pregnant women	used ITN all  year 	48.0
county	17	with at least one ITN	pregnant women	used ITN last night	0.0
county	18	all	children	slept under any net last night	14.8
county	18	all	children	used ITN last night	12.3
county	18	all	children	used ITN all  year 	12.3
county	18	with at least one ITN	children	used ITN last night	69.7
county	18	all	pregnant women	slept under any net last night	9.7
county	18	all	pregnant women	used ITN last night	6.7
county	18	all	pregnant women	used ITN all  year 	6.7
county	18	with at least one ITN	pregnant women	used ITN last night	0.0
county	19	all	children	slept under any net last night	24.1
county	19	all	children	used ITN last night	17.4
county	19	all	children	used ITN all  year 	17.4
county	19	with at least one ITN	children	used ITN last night	62.6
county	19	all	pregnant women	slept under any net last night	23.0
county	19	all	pregnant women	used ITN last night	14.3
county	19	all	pregnant women	used ITN all  year 	14.3
county	19	with at least one ITN	pregnant women	used ITN last night	0.0
county	20	all	children	slept under any net last night	81.1
county	20	all	children	used ITN last night	78.9
county	20	all	children	used ITN all  year 	78.9
county	20	with at least one ITN	children	used ITN last night	89.6
county	20	all	pregnant women	slept under any net last night	63.4
county	20	all	pregnant women	used ITN last night	63.4
county	20	all	pregnant women	used ITN all  year 	63.4
county	20	with at least one ITN	pregnant women	used ITN last night	0.0
county	21	all	children	slept under any net last night	58
county	21	all	children	used ITN last night	57
county	21	all	children	used ITN all  year 	57
county	21	with at least one ITN	children	used ITN last night	81.3
county	21	all	pregnant women	slept under any net last night	49.9
county	21	all	pregnant women	used ITN last night	45.2
county	21	all	pregnant women	used ITN all  year 	45.2
county	21	with at least one ITN	pregnant women	used ITN last night	0.0
county	22	all	children	slept under any net last night	53.6
county	22	all	children	used ITN last night	47.5
county	22	all	children	used ITN all  year 	47.5
county	22	with at least one ITN	children	used ITN last night	81.3
county	22	all	pregnant women	slept under any net last night	44.5
county	22	all	pregnant women	used ITN last night	41.2
county	22	all	pregnant women	used ITN all  year 	41.2
county	22	with at least one ITN	pregnant women	used ITN last night	0.0
county	23	all	children	slept under any net last night	21
county	23	all	children	used ITN last night	21
county	23	all	children	used ITN all  year 	21
county	23	with at least one ITN	children	used ITN last night	40.8
county	23	all	pregnant women	slept under any net last night	20.3
county	23	all	pregnant women	used ITN last night	20.3
county	23	all	pregnant women	used ITN all  year 	20.3
county	23	with at least one ITN	pregnant women	used ITN last night	0.0
county	24	all	children	slept under any net last night	43.4
county	24	all	children	used ITN last night	42.9
county	24	all	children	used ITN all  year 	43.7
county	24	with at least one ITN	children	used ITN last night	61.4
county	24	all	pregnant women	slept under any net last night	31.5
county	24	all	pregnant women	used ITN last night	31.5
county	24	all	pregnant women	used ITN all  year 	33
county	24	with at least one ITN	pregnant women	used ITN last night	56.9
county	25	all	children	slept under any net last night	18.2
county	25	all	children	used ITN last night	16.6
county	25	all	children	used ITN all  year 	16.9
county	25	with at least one ITN	children	used ITN last night	86.1
county	25	all	pregnant women	slept under any net last night	8.9
county	25	all	pregnant women	used ITN last night	6.7
county	25	all	pregnant women	used ITN all  year 	6.7
county	25	with at least one ITN	pregnant women	used ITN last night	0.0
county	26	all	children	slept under any net last night	60.2
county	26	all	children	used ITN last night	59.2
county	26	all	children	used ITN all  year 	61.3
county	26	with at least one ITN	children	used ITN last night	74.8
county	26	all	pregnant women	slept under any net last night	55.7
county	26	all	pregnant women	used ITN last night	55.7
county	26	all	pregnant women	used ITN all  year 	55.7
county	26	with at least one ITN	pregnant women	used ITN last night	67.8
county	27	all	children	slept under any net last night	69.8
county	27	all	children	used ITN last night	69.3
county	27	all	children	used ITN all  year 	69.5
county	27	with at least one ITN	children	used ITN last night	84.1
county	27	all	pregnant women	slept under any net last night	51.5
county	27	all	pregnant women	used ITN last night	51.5
county	27	all	pregnant women	used ITN all  year 	51.5
county	27	with at least one ITN	pregnant women	used ITN last night	63.1
county	28	all	children	slept under any net last night	39.1
county	28	all	children	used ITN last night	16.9
county	28	all	children	used ITN all  year 	16.9
county	28	with at least one ITN	children	used ITN last night	56.5
county	28	all	pregnant women	slept under any net last night	48.0
county	28	all	pregnant women	used ITN last night	25.5
county	28	all	pregnant women	used ITN all  year 	25.5
county	28	with at least one ITN	pregnant women	used ITN last night	0.0
county	29	all	children	slept under any net last night	55.2
county	29	all	children	used ITN last night	55
county	29	all	children	used ITN all  year 	55.5
county	29	with at least one ITN	children	used ITN last night	67.1
county	29	all	pregnant women	slept under any net last night	61.9
county	29	all	pregnant women	used ITN last night	61.9
county	29	all	pregnant women	used ITN all  year 	66.1
county	29	with at least one ITN	pregnant women	used ITN last night	67.6
county	30	all	children	slept under any net last night	52.5
county	30	all	children	used ITN last night	49.1
county	30	all	children	used ITN all  year 	49.9
county	30	with at least one ITN	children	used ITN last night	69.2
county	30	all	pregnant women	slept under any net last night	45.3
county	30	all	pregnant women	used ITN last night	44.1
county	30	all	pregnant women	used ITN all  year 	45.9
county	30	with at least one ITN	pregnant women	used ITN last night	58.7
county	31	all	children	slept under any net last night	22.2
county	31	all	children	used ITN last night	13.6
county	31	all	children	used ITN all  year 	13.6
county	31	with at least one ITN	children	used ITN last night	78.7
county	31	all	pregnant women	slept under any net last night	11.4
county	31	all	pregnant women	used ITN last night	6.5
county	31	all	pregnant women	used ITN all  year 	6.5
county	31	with at least one ITN	pregnant women	used ITN last night	0.0
county	32	all	children	slept under any net last night	34.1
county	32	all	children	used ITN last night	30.7
county	32	all	children	used ITN all  year 	31.1
county	32	with at least one ITN	children	used ITN last night	74.6
county	32	all	pregnant women	slept under any net last night	37.1
county	32	all	pregnant women	used ITN last night	35.0
county	32	all	pregnant women	used ITN all  year 	35.0
county	32	with at least one ITN	pregnant women	used ITN last night	0.0
county	33	all	children	slept under any net last night	31.5
county	33	all	children	used ITN last night	31.1
county	33	all	children	used ITN all  year 	32
county	33	with at least one ITN	children	used ITN last night	56.1
county	33	all	pregnant women	slept under any net last night	32.1
county	33	all	pregnant women	used ITN last night	32.1
county	33	all	pregnant women	used ITN all  year 	34.2
county	33	with at least one ITN	pregnant women	used ITN last night	63
county	34	all	children	slept under any net last night	47.7
county	34	all	children	used ITN last night	42.8
county	34	all	children	used ITN all  year 	43
county	34	with at least one ITN	children	used ITN last night	81.4
county	34	all	pregnant women	slept under any net last night	47.4
county	34	all	pregnant women	used ITN last night	45.1
county	34	all	pregnant women	used ITN all  year 	45.1
county	34	with at least one ITN	pregnant women	used ITN last night	72.5
county	35	all	children	slept under any net last night	55.7
county	35	all	children	used ITN last night	53.1
county	35	all	children	used ITN all  year 	54.3
county	35	with at least one ITN	children	used ITN last night	61.4
county	35	all	pregnant women	slept under any net last night	70.2
county	35	all	pregnant women	used ITN last night	68.0
county	35	all	pregnant women	used ITN all  year 	68.0
county	35	with at least one ITN	pregnant women	used ITN last night	74.9
county	36	all	children	slept under any net last night	63
county	36	all	children	used ITN last night	60
county	36	all	children	used ITN all  year 	60.8
county	36	with at least one ITN	children	used ITN last night	69.7
county	36	all	pregnant women	slept under any net last night	49.0
county	36	all	pregnant women	used ITN last night	47.7
county	36	all	pregnant women	used ITN all  year 	47.7
county	36	with at least one ITN	pregnant women	used ITN last night	60.1
county	37	all	children	slept under any net last night	66
county	37	all	children	used ITN last night	62.6
county	37	all	children	used ITN all  year 	62.9
county	37	with at least one ITN	children	used ITN last night	73.1
county	37	all	pregnant women	slept under any net last night	71.1
county	37	all	pregnant women	used ITN last night	65.7
county	37	all	pregnant women	used ITN all  year 	65.7
county	37	with at least one ITN	pregnant women	used ITN last night	74.6
county	38	all	children	slept under any net last night	72.5
county	38	all	children	used ITN last night	70.9
county	38	all	children	used ITN all  year 	71.3
county	38	with at least one ITN	children	used ITN last night	78.3
county	38	all	pregnant women	slept under any net last night	73.0
county	38	all	pregnant women	used ITN last night	73.0
county	38	all	pregnant women	used ITN all  year 	73.0
county	38	with at least one ITN	pregnant women	used ITN last night	77.1
county	39	all	children	slept under any net last night	73.7
county	39	all	children	used ITN last night	71.5
county	39	all	children	used ITN all  year 	71.5
county	39	with at least one ITN	children	used ITN last night	82
county	39	all	pregnant women	slept under any net last night	66
county	39	all	pregnant women	used ITN last night	62.4
county	39	all	pregnant women	used ITN all  year 	62.4
county	39	with at least one ITN	pregnant women	used ITN last night	73.6
county	40	all	children	slept under any net last night	78.4
county	40	all	children	used ITN last night	73.9
county	40	all	children	used ITN all  year 	73.9
county	40	with at least one ITN	children	used ITN last night	83.5
county	40	all	pregnant women	slept under any net last night	76.9
county	40	all	pregnant women	used ITN last night	73.5
county	40	all	pregnant women	used ITN all  year 	73.5
county	40	with at least one ITN	pregnant women	used ITN last night	81.3
county	41	all	children	slept under any net last night	71.3
county	41	all	children	used ITN last night	67.8
county	41	all	children	used ITN all  year 	68.1
county	41	with at least one ITN	children	used ITN last night	77.1
county	41	all	pregnant women	slept under any net last night	70.1
county	41	all	pregnant women	used ITN last night	66.3
county	41	all	pregnant women	used ITN all  year 	66.3
county	41	with at least one ITN	pregnant women	used ITN last night	85.3
county	42	all	children	slept under any net last night	82.2
county	42	all	children	used ITN last night	81.7
county	42	all	children	used ITN all  year 	82.2
county	42	with at least one ITN	children	used ITN last night	88.4
county	42	all	pregnant women	slept under any net last night	89.3
county	42	all	pregnant women	used ITN last night	89.3
county	42	all	pregnant women	used ITN all  year 	89.3
county	42	with at least one ITN	pregnant women	used ITN last night	94.9
county	43	all	children	slept under any net last night	63.9
county	43	all	children	used ITN last night	56.4
county	43	all	children	used ITN all  year 	58.4
county	43	with at least one ITN	children	used ITN last night	74.8
county	43	all	pregnant women	slept under any net last night	77.1
county	43	all	pregnant women	used ITN last night	66.1
county	43	all	pregnant women	used ITN all  year 	66.1
county	43	with at least one ITN	pregnant women	used ITN last night	87.6
county	44	all	children	slept under any net last night	63
county	44	all	children	used ITN last night	62.2
county	44	all	children	used ITN all  year 	62.6
county	44	with at least one ITN	children	used ITN last night	74.4
county	44	all	pregnant women	slept under any net last night	60.3
county	44	all	pregnant women	used ITN last night	56
county	44	all	pregnant women	used ITN all  year 	56
county	44	with at least one ITN	pregnant women	used ITN last night	68.6
county	45	all	children	slept under any net last night	80.4
county	45	all	children	used ITN last night	79.5
county	45	all	children	used ITN all  year 	79.5
county	45	with at least one ITN	children	used ITN last night	88.5
county	45	all	pregnant women	slept under any net last night	82.1
county	45	all	pregnant women	used ITN last night	76.8
county	45	all	pregnant women	used ITN all  year 	76.8
county	45	with at least one ITN	pregnant women	used ITN last night	97.6
county	46	all	children	slept under any net last night	70.5
county	46	all	children	used ITN last night	69.6
county	46	all	children	used ITN all  year 	69.9
county	46	with at least one ITN	children	used ITN last night	79.8
county	46	all	pregnant women	slept under any net last night	0.0
county	46	all	pregnant women	used ITN last night	0.0
county	46	all	pregnant women	used ITN all  year 	0.0
county	46	with at least one ITN	pregnant women	used ITN last night	0.0
county	47	all	children	slept under any net last night	70.7
county	47	all	children	used ITN last night	49.5
county	47	all	children	used ITN all  year 	49.5
county	47	with at least one ITN	children	used ITN last night	85.8
county	47	all	pregnant women	slept under any net last night	61
county	47	all	pregnant women	used ITN last night	43.3
county	47	all	pregnant women	used ITN all  year 	45.7
county	47	with at least one ITN	pregnant women	used ITN last night	78.8
country	KE	all	children	slept under any net last night	58.9
country	KE	all	children	used ITN last night	54.1
country	KE	all	children	used ITN all  year 	54.4
country	KE	with at least one ITN	children	used ITN last night	76.9
country	KE	all	pregnant women	slept under any net last night	55.8
country	KE	all	pregnant women	used ITN last night	50.5
country	KE	all	pregnant women	used ITN all  year 	51
country	KE	with at least one ITN	pregnant women	used ITN last night	76.5
\.
--
-- Name: household_itn_use_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY household_itn_use_users
    ADD CONSTRAINT household_itn_use_users_pkey PRIMARY KEY (geo_level, geo_code, household, users, itn_use);

