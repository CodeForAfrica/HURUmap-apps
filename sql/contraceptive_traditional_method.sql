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

ALTER TABLE IF EXISTS ONLY public.contraceptive_traditional_method DROP CONSTRAINT IF EXISTS contraceptive_traditional_method_pkey;
DROP TABLE IF EXISTS public.contraceptive_traditional_method;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contraceptive_traditional_method; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE contraceptive_traditional_method (
	geo_level character varying(15) NOT NULL,
	geo_code character varying(10) NOT NULL,
	"contraceptive_traditional_method" character varying(128) NOT NULL,
	total float NOT NULL
);


--
-- Data for Name: contraceptive_traditional_method; Type: TABLE DATA; Schema: public; Owner: -
--

COPY	contraceptive_traditional_method (geo_level, geo_code, "contraceptive_traditional_method", total) FROM stdin;
county	1	female sterilisation	0.2
county	1	male sterilisation	0
county	1	IUD	3.2
county	1	implants	12.6
county	1	injectables	17.7
county	1	pill	6.5
county	1	male condom	2.9
county	1	female condom	0
county	1	LAM	0.4
county	1	other	0
county	2	female sterilisation	3
county	2	male sterilisation	0
county	2	IUD	1.6
county	2	implants	6.8
county	2	injectables	21.6
county	2	pill	4.3
county	2	male condom	0.8
county	2	female condom	0
county	2	LAM	0
county	2	other	0
county	3	female sterilisation	2.8
county	3	male sterilisation	0
county	3	IUD	1.1
county	3	implants	10
county	3	injectables	15.9
county	3	pill	2.7
county	3	male condom	0.3
county	3	female condom	0
county	3	LAM	0
county	3	other	0
county	4	female sterilisation	0.2
county	4	male sterilisation	0
county	4	IUD	0.4
county	4	implants	2.7
county	4	injectables	13.1
county	4	pill	1.1
county	4	male condom	3
county	4	female condom	0
county	4	LAM	0
county	4	other	0
county	5	female sterilisation	1.2
county	5	male sterilisation	0
county	5	IUD	1
county	5	implants	6.4
county	5	injectables	19
county	5	pill	10.2
county	5	male condom	1.2
county	5	female condom	0
county	5	LAM	0.5
county	5	other	0
county	6	female sterilisation	0.4
county	6	male sterilisation	0
county	6	IUD	6.9
county	6	implants	8.6
county	6	injectables	34.1
county	6	pill	10
county	6	male condom	1.5
county	6	female condom	0
county	6	LAM	0
county	6	other	0
county	7	female sterilisation	0
county	7	male sterilisation	0
county	7	IUD	0.2
county	7	implants	1.5
county	7	injectables	2.4
county	7	pill	1.1
county	7	male condom	0.1
county	7	female condom	0
county	7	LAM	0.1
county	7	other	0
county	8	female sterilisation	0
county	8	male sterilisation	0
county	8	IUD	0
county	8	implants	0.2
county	8	injectables	1.6
county	8	pill	0.2
county	8	male condom	0.1
county	8	female condom	0
county	8	LAM	0.2
county	8	other	0
county	9	female sterilisation	0
county	9	male sterilisation	0
county	9	IUD	0
county	9	implants	0
county	9	injectables	1.5
county	9	pill	0.4
county	9	male condom	0
county	9	female condom	0
county	9	LAM	0
county	9	other	0
county	10	female sterilisation	0.4
county	10	male sterilisation	0
county	10	IUD	0.3
county	10	implants	2.7
county	10	injectables	6.3
county	10	pill	1.1
county	10	male condom	0
county	10	female condom	0
county	10	LAM	0
county	10	other	0
county	11	female sterilisation	0.8
county	11	male sterilisation	0
county	11	IUD	1.4
county	11	implants	3.3
county	11	injectables	13.2
county	11	pill	7.2
county	11	male condom	0.4
county	11	female condom	0
county	11	LAM	0
county	11	other	0
county	12	female sterilisation	4.3
county	12	male sterilisation	0
county	12	IUD	5.4
county	12	implants	3.5
county	12	injectables	44.8
county	12	pill	12.3
county	12	male condom	2.8
county	12	female condom	0
county	12	LAM	0
county	12	other	0
county	13	female sterilisation	1.8
county	13	male sterilisation	0
county	13	IUD	7.2
county	13	implants	5.5
county	13	injectables	44.1
county	13	pill	7
county	13	male condom	1.3
county	13	female condom	0.2
county	13	LAM	0
county	13	other	0
county	14	female sterilisation	3.8
county	14	male sterilisation	0
county	14	IUD	4.6
county	14	implants	11
county	14	injectables	31.2
county	14	pill	15.2
county	14	male condom	1.5
county	14	female condom	0
county	14	LAM	0
county	14	other	0
county	15	female sterilisation	3
county	15	male sterilisation	0
county	15	IUD	1.1
county	15	implants	9.5
county	15	injectables	36.9
county	15	pill	4.5
county	15	male condom	0
county	15	female condom	0
county	15	LAM	0
county	15	other	0
county	16	female sterilisation	5.5
county	16	male sterilisation	0
county	16	IUD	0.5
county	16	implants	10.4
county	16	injectables	41.6
county	16	pill	9.1
county	16	male condom	0.5
county	16	female condom	0
county	16	LAM	0
county	16	other	0
county	17	female sterilisation	10.2
county	17	male sterilisation	0
county	17	IUD	1.8
county	17	implants	10.3
county	17	injectables	33.8
county	17	pill	5.9
county	17	male condom	2.9
county	17	female condom	0
county	17	LAM	0
county	17	other	0
county	18	female sterilisation	2.8
county	18	male sterilisation	0
county	18	IUD	8
county	18	implants	10.8
county	18	injectables	22.9
county	18	pill	13.8
county	18	male condom	0.9
county	18	female condom	0
county	18	LAM	1.3
county	18	other	0
county	19	female sterilisation	7.3
county	19	male sterilisation	0
county	19	IUD	10
county	19	implants	9.2
county	19	injectables	22.3
county	19	pill	16.7
county	19	male condom	1.6
county	19	female condom	0
county	19	LAM	0
county	19	other	0
county	20	female sterilisation	0.9
county	20	male sterilisation	0
county	20	IUD	13.2
county	20	implants	13
county	20	injectables	20.4
county	20	pill	26
county	20	male condom	2
county	20	female condom	0
county	20	LAM	0
county	20	other	0
county	21	female sterilisation	4
county	21	male sterilisation	0
county	21	IUD	6.3
county	21	implants	7.8
county	21	injectables	20.6
county	21	pill	22.1
county	21	male condom	2.5
county	21	female condom	0
county	21	LAM	0
county	21	other	0
county	22	female sterilisation	2.7
county	22	male sterilisation	0
county	22	IUD	8.9
county	22	implants	12
county	22	injectables	21.9
county	22	pill	19.2
county	22	male condom	3.1
county	22	female condom	0
county	22	LAM	0
county	22	other	0
county	23	female sterilisation	0
county	23	male sterilisation	0
county	23	IUD	0.5
county	23	implants	3
county	23	injectables	5.7
county	23	pill	0.5
county	23	male condom	0.4
county	23	female condom	0
county	23	LAM	0
county	23	other	0
county	24	female sterilisation	0.4
county	24	male sterilisation	0
county	24	IUD	0.2
county	24	implants	3.1
county	24	injectables	9
county	24	pill	0.7
county	24	male condom	0
county	24	female condom	0
county	24	LAM	0
county	24	other	0
county	25	female sterilisation	0.5
county	25	male sterilisation	0
county	25	IUD	0.6
county	25	implants	4.4
county	25	injectables	10.9
county	25	pill	2.9
county	25	male condom	0.8
county	25	female condom	0
county	25	LAM	0
county	25	other	0
county	26	female sterilisation	4
county	26	male sterilisation	0
county	26	IUD	0.7
county	26	implants	4.6
county	26	injectables	38.7
county	26	pill	4.9
county	26	male condom	3.2
county	26	female condom	0.1
county	26	LAM	0.2
county	26	other	0
county	27	female sterilisation	1.8
county	27	male sterilisation	0
county	27	IUD	2.7
county	27	implants	12.9
county	27	injectables	28.7
county	27	pill	7.4
county	27	male condom	2.4
county	27	female condom	0
county	27	LAM	0
county	27	other	0
county	28	female sterilisation	1.1
county	28	male sterilisation	0
county	28	IUD	1.3
county	28	implants	8.7
county	28	injectables	28.5
county	28	pill	1.6
county	28	male condom	2.1
county	28	female condom	0.3
county	28	LAM	0
county	28	other	0
county	29	female sterilisation	1.8
county	29	male sterilisation	0
county	29	IUD	0.9
county	29	implants	9.1
county	29	injectables	40.3
county	29	pill	5.5
county	29	male condom	1.6
county	29	female condom	0
county	29	LAM	0
county	29	other	0
county	30	female sterilisation	0.7
county	30	male sterilisation	0
county	30	IUD	3.2
county	30	implants	5.5
county	30	injectables	16.2
county	30	pill	4.6
county	30	male condom	2.3
county	30	female condom	0
county	30	LAM	0.6
county	30	other	0
county	31	female sterilisation	5
county	31	male sterilisation	0
county	31	IUD	5.1
county	31	implants	4.5
county	31	injectables	20.8
county	31	pill	12.5
county	31	male condom	3.1
county	31	female condom	0
county	31	LAM	0
county	31	other	0.4
county	32	female sterilisation	1.4
county	32	male sterilisation	0.2
county	32	IUD	6.7
county	32	implants	7.6
county	32	injectables	25.4
county	32	pill	10.4
county	32	male condom	1.4
county	32	female condom	0
county	32	LAM	0.4
county	32	other	0
county	33	female sterilisation	1.9
county	33	male sterilisation	0
county	33	IUD	1.1
county	33	implants	3.8
county	33	injectables	25.3
county	33	pill	3.7
county	33	male condom	2.2
county	33	female condom	0
county	33	LAM	0
county	33	other	0.1
county	34	female sterilisation	1.5
county	34	male sterilisation	0
county	34	IUD	5.9
county	34	implants	8.9
county	34	injectables	20
county	34	pill	6.5
county	34	male condom	2.2
county	34	female condom	0
county	34	LAM	0.2
county	34	other	0
county	35	female sterilisation	3.5
county	35	male sterilisation	0
county	35	IUD	2.1
county	35	implants	9.9
county	35	injectables	35.8
county	35	pill	3.2
county	35	male condom	1.9
county	35	female condom	0
county	35	LAM	0.3
county	35	other	0.2
county	36	female sterilisation	4.9
county	36	male sterilisation	0
county	36	IUD	1.7
county	36	implants	7.5
county	36	injectables	33.9
county	36	pill	0.4
county	36	male condom	2
county	36	female condom	0
county	36	LAM	0
county	36	other	0
county	37	female sterilisation	6.9
county	37	male sterilisation	0
county	37	IUD	1
county	37	implants	14.1
county	37	injectables	30.4
county	37	pill	5.4
county	37	male condom	2.6
county	37	female condom	0
county	37	LAM	0
county	37	other	0
county	38	female sterilisation	3.9
county	38	male sterilisation	0
county	38	IUD	3.3
county	38	implants	16.2
county	38	injectables	25.3
county	38	pill	4.8
county	38	male condom	3.1
county	38	female condom	0
county	38	LAM	0
county	38	other	0
county	39	female sterilisation	5.1
county	39	male sterilisation	0
county	39	IUD	0.8
county	39	implants	11.8
county	39	injectables	29
county	39	pill	4.4
county	39	male condom	2.9
county	39	female condom	0
county	39	LAM	0
county	39	other	0
county	40	female sterilisation	6.5
county	40	male sterilisation	0
county	40	IUD	1.8
county	40	implants	23.6
county	40	injectables	20.2
county	40	pill	3.5
county	40	male condom	1
county	40	female condom	0
county	40	LAM	0
county	40	other	0
county	41	female sterilisation	3.2
county	41	male sterilisation	0
county	41	IUD	1.8
county	41	implants	15.3
county	41	injectables	19.3
county	41	pill	5.8
county	41	male condom	5.7
county	41	female condom	0
county	41	LAM	0
county	41	other	0
county	42	female sterilisation	5.2
county	42	male sterilisation	0
county	42	IUD	1.5
county	42	implants	21.1
county	42	injectables	24.3
county	42	pill	3.7
county	42	male condom	3.5
county	42	female condom	0
county	42	LAM	0
county	42	other	0
county	43	female sterilisation	3.8
county	43	male sterilisation	0
county	43	IUD	1.1
county	43	implants	8.6
county	43	injectables	26.1
county	43	pill	2.1
county	43	male condom	3.5
county	43	female condom	0
county	43	LAM	0
county	43	other	0.3
county	44	female sterilisation	1.9
county	44	male sterilisation	0
county	44	IUD	1.1
county	44	implants	10.6
county	44	injectables	24.6
county	44	pill	2.3
county	44	male condom	3.1
county	44	female condom	0.3
county	44	LAM	0
county	44	other	0
county	45	female sterilisation	3.2
county	45	male sterilisation	0
county	45	IUD	3.5
county	45	implants	9.2
county	45	injectables	41.8
county	45	pill	4
county	45	male condom	0.8
county	45	female condom	0
county	45	LAM	0.3
county	45	other	0
county	46	female sterilisation	4.2
county	46	male sterilisation	0
county	46	IUD	3.9
county	46	implants	8.2
county	46	injectables	42.6
county	46	pill	3.5
county	46	male condom	1.2
county	46	female condom	0
county	46	LAM	0.3
county	46	other	0.3
county	47	female sterilisation	2
county	47	male sterilisation	0.1
county	47	IUD	4.5
county	47	implants	12.1
county	47	injectables	23.6
county	47	pill	12.5
county	47	male condom	3.3
county	47	female condom	0
county	47	LAM	0
county	47	other	0
country	KE	female sterilisation	3.2
country	KE	male sterilisation	0
country	KE	IUD	3.4
country	KE	implants	9.9
country	KE	injectables	26.4
country	KE	pill	8
country	KE	male condom	2.2
country	KE	female condom	0
country	KE	LAM	0.1
country	KE	other	0
\.
--
-- Name: contraceptive_traditional_method_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY contraceptive_traditional_method
	ADD CONSTRAINT contraceptive_traditional_method_pkey PRIMARY KEY (geo_level, geo_code, "contraceptive_traditional_method", total);


--
-- PostgreSQL database dump complete
--

