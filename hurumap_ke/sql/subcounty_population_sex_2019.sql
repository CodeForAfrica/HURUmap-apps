--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.subcounty_population_sex_2019 DROP CONSTRAINT IF EXISTS pk_subcounty_population_sex_2019;
DROP TABLE IF EXISTS public.subcounty_population_sex_2019;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: subcounty_population_sex_2019; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subcounty_population_sex_2019 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    subcounty character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: subcounty_population_sex_2019; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.subcounty_population_sex_2019 (geo_level, geo_code, geo_version, subcounty, gender, total) FROM stdin;
county	12	2009	Mt Kenya Forest	Female	54
county	5	2009	Lamu East	Female	10583
county	3	2009	Kauma	Female	11673
county	7	2009	Balambala	Female	11979
county	10	2009	Loiyangalani	Female	18051
county	10	2009	Sololo	Female	21354
county	11	2009	Merti	Female	22768
county	8	2009	Buna	Female	23088
county	7	2009	Lagdera	Female	25291
county	10	2009	North Horr	Female	29726
county	8	2009	Tarbaj	Female	30086
county	8	2009	Wajir North	Female	30209
county	3	2009	Chonyi	Female	32807
county	9	2009	Kutulo	Female	36593
county	12	2009	Buuri East	Female	38497
county	24	2009	Pokot South	Female	40851
county	9	2009	Lafey	Female	42976
county	8	2009	Eldas	Female	43759
county	4	2009	Tana River	Female	44835
county	2	2009	Kinango	Female	48806
county	24	2009	Kipkomo	Female	51703
county	8	2009	Wajir South	Female	51864
county	10	2009	Moyale	Female	52508
county	12	2009	Tigania Central	Female	52916
county	4	2009	Tana North	Female	54924
county	26	2009	Endebess	Female	55689
county	7	2009	Hulugho	Female	55898
county	8	2009	Wajir West	Female	56037
county	5	2009	Lamu West	Female	57230
county	4	2009	Tana Delta	Female	57632
county	24	2009	Pokot Central	Female	59331
county	11	2009	Isiolo	Female	60647
county	7	2009	Ijara	Female	61129
county	7	2009	Fafi	Female	61413
county	3	2009	Rabai	Female	62242
county	1	2009	Changamwe	Female	63121
county	9	2009	Mandera North	Female	66835
county	12	2009	Meru Central	Female	66894
county	24	2009	Pokot North	Female	69702
county	12	2009	Tigania West	Female	72241
county	9	2009	Banisa	Female	74288
county	9	2009	Mandera East	Female	76095
county	3	2009	Ganze	Female	76981
county	1	2009	Mvita	Female	78601
county	1	2009	Jomvu	Female	80410
county	7	2009	Garissa	Female	80449
county	12	2009	Igembe South	Female	81446
county	9	2009	Mandera Central	Female	85527
county	12	2009	Igembe North	Female	85949
county	7	2009	Dadaab	Female	86185
county	2	2009	Msambweni	Female	88480
county	47	2009	Kibra	Female	91569
county	3	2009	Kilifi North	Female	91836
county	24	2009	West Pokot	Female	92626
county	47	2009	Makadara	Female	93157
county	3	2009	Magarini	Female	98308
county	2	2009	Matuga	Female	98419
county	47	2009	Mathare	Female	100028
county	47	2009	Lang'ata	Female	100774
county	3	2009	Kaloleni	Female	101063
county	26	2009	Trans Nzoia West	Female	101174
county	47	2009	Starehe	Female	101238
county	2	2009	Lungalunga	Female	101245
county	26	2009	Kwanza	Female	103584
county	2	2009	Samburu Kwale	Female	104731
county	3	2009	Kilifi South	Female	104897
county	1	2009	Nyali	Female	107346
county	12	2009	Igembe Central	Female	110200
county	26	2009	Trans Nzoia East	Female	116029
county	1	2009	Likoni	Female	123392
county	26	2009	Kiminini	Female	124730
county	47	2009	Kamukunji	Female	131599
county	1	2009	Kisauni	Female	145176
county	47	2009	Westlands	Female	155021
county	3	2009	Malindi	Female	169866
county	47	2009	Dagoretti	Female	216526
county	47	2009	Njiru	Female	318809
county	47	2009	Kasarani	Female	399385
county	47	2009	Embakasi	Female	496270
county	2	2009	Kinango	Intersex	1
county	3	2009	Chonyi	Intersex	1
county	7	2009	Balambala	Intersex	1
county	7	2009	Lagdera	Intersex	1
county	10	2009	Moyale	Intersex	1
county	2	2009	Matuga	Intersex	2
county	3	2009	Kilifi North	Intersex	2
county	4	2009	Tana Delta	Intersex	2
county	8	2009	Buna	Intersex	2
county	9	2009	Kutulo	Intersex	2
county	10	2009	North Horr	Intersex	2
county	24	2009	Pokot South	Intersex	2
county	1	2009	Jomvu	Intersex	3
county	8	2009	Wajir South	Intersex	3
county	10	2009	Loiyangalani	Intersex	3
county	11	2009	Merti	Intersex	3
county	24	2009	Pokot Central	Intersex	3
county	24	2009	Pokot North	Intersex	3
county	26	2009	Endebess	Intersex	3
county	26	2009	Kwanza	Intersex	3
county	1	2009	Likoni	Intersex	4
county	2	2009	Lungalunga	Intersex	4
county	2	2009	Msambweni	Intersex	4
county	3	2009	Ganze	Intersex	4
county	3	2009	Kilifi South	Intersex	4
county	5	2009	Lamu West	Intersex	4
county	7	2009	Ijara	Intersex	4
county	12	2009	Igembe Central	Intersex	4
county	12	2009	Igembe North	Intersex	4
county	12	2009	Meru Central	Intersex	4
county	1	2009	Mvita	Intersex	5
county	3	2009	Kaloleni	Intersex	5
county	7	2009	Garissa	Intersex	5
county	7	2009	Hulugho	Intersex	5
county	8	2009	Tarbaj	Intersex	5
county	9	2009	Lafey	Intersex	5
county	9	2009	Mandera Central	Intersex	5
county	9	2009	Mandera East	Intersex	5
county	11	2009	Isiolo	Intersex	5
county	12	2009	Tigania West	Intersex	5
county	26	2009	Trans Nzoia West	Intersex	5
county	1	2009	Kisauni	Intersex	6
county	8	2009	Wajir West	Intersex	6
county	26	2009	Kiminini	Intersex	6
county	2	2009	Samburu Kwale	Intersex	7
county	8	2009	Eldas	Intersex	7
county	8	2009	Wajir North	Intersex	7
county	9	2009	Mandera North	Intersex	7
county	24	2009	Kipkomo	Intersex	7
county	47	2009	Kamukunji	Intersex	7
county	7	2009	Dadaab	Intersex	8
county	12	2009	Igembe South	Intersex	8
county	3	2009	Malindi	Intersex	9
county	9	2009	Banisa	Intersex	9
county	47	2009	Kibra	Intersex	9
county	7	2009	Fafi	Intersex	10
county	47	2009	Makadara	Intersex	10
county	26	2009	Trans Nzoia East	Intersex	11
county	1	2009	Nyali	Intersex	12
county	47	2009	Starehe	Intersex	12
county	47	2009	Mathare	Intersex	14
county	47	2009	Westlands	Intersex	15
county	47	2009	Lang'ata	Intersex	17
county	47	2009	Dagoretti	Intersex	31
county	47	2009	Njiru	Intersex	31
county	47	2009	Kasarani	Intersex	37
county	47	2009	Embakasi	Intersex	62
county	1	2009	Changamwe	Intersex	0
county	3	2009	Kauma	Intersex	0
county	3	2009	Magarini	Intersex	0
county	3	2009	Rabai	Intersex	0
county	4	2009	Tana North	Intersex	0
county	4	2009	Tana River	Intersex	0
county	5	2009	Lamu East	Intersex	0
county	10	2009	Sololo	Intersex	0
county	12	2009	Buuri East	Intersex	0
county	12	2009	Mt Kenya Forest	Intersex	0
county	12	2009	Tigania Central	Intersex	0
county	24	2009	West Pokot	Intersex	0
county	12	2009	Mt Kenya Forest	Male	409
county	3	2009	Kauma	Male	10965
county	5	2009	Lamu East	Male	11675
county	10	2009	Loiyangalani	Male	17659
county	7	2009	Balambala	Male	20277
county	10	2009	Sololo	Male	23468
county	11	2009	Merti	Male	24435
county	7	2009	Lagdera	Male	25023
county	8	2009	Buna	Male	26796
county	8	2009	Tarbaj	Male	27141
county	3	2009	Chonyi	Male	29527
county	8	2009	Wajir North	Male	31990
county	9	2009	Kutulo	Male	35799
county	12	2009	Buuri East	Male	38101
county	24	2009	Pokot South	Male	39808
county	9	2009	Lafey	Male	40476
county	10	2009	North Horr	Male	41719
county	4	2009	Tana River	Male	43711
county	8	2009	Eldas	Male	44743
county	2	2009	Kinango	Male	45413
county	24	2009	Kipkomo	Male	50923
county	12	2009	Tigania Central	Male	51814
county	4	2009	Tana North	Male	55716
county	26	2009	Endebess	Male	56090
county	10	2009	Moyale	Male	56440
county	3	2009	Rabai	Male	58571
county	4	2009	Tana Delta	Male	59123
county	24	2009	Pokot Central	Male	59682
county	11	2009	Isiolo	Male	60414
county	5	2009	Lamu West	Male	64428
county	24	2009	Pokot North	Male	64780
county	8	2009	Wajir South	Male	64947
county	8	2009	Wajir West	Male	65785
county	12	2009	Meru Central	Male	66920
county	3	2009	Ganze	Male	66921
county	12	2009	Tigania West	Male	67715
county	1	2009	Changamwe	Male	68761
county	9	2009	Mandera Central	Male	71688
county	7	2009	Fafi	Male	72617
county	1	2009	Mvita	Male	75565
county	9	2009	Mandera North	Male	77008
county	7	2009	Hulugho	Male	78081
county	9	2009	Banisa	Male	78301
county	12	2009	Igembe South	Male	80192
county	7	2009	Ijara	Male	80458
county	1	2009	Jomvu	Male	83002
county	12	2009	Igembe North	Male	83364
county	7	2009	Garissa	Male	83460
county	9	2009	Mandera East	Male	83538
county	3	2009	Kilifi North	Male	86986
county	2	2009	Msambweni	Male	89206
county	24	2009	West Pokot	Male	91820
county	3	2009	Kaloleni	Male	92614
county	3	2009	Magarini	Male	93302
county	47	2009	Kibra	Male	94199
county	2	2009	Matuga	Male	95831
county	47	2009	Makadara	Male	96369
county	47	2009	Lang'ata	Male	96698
county	2	2009	Lungalunga	Male	97174
county	2	2009	Samburu Kwale	Male	97497
county	7	2009	Dadaab	Male	99059
county	26	2009	Kwanza	Male	100234
county	26	2009	Trans Nzoia West	Male	101198
county	3	2009	Kilifi South	Male	101852
county	47	2009	Mathare	Male	106522
county	47	2009	Starehe	Male	109173
county	1	2009	Nyali	Male	109219
county	12	2009	Igembe Central	Male	111208
county	26	2009	Trans Nzoia East	Male	113498
county	26	2009	Kiminini	Male	118087
county	1	2009	Likoni	Male	126962
county	47	2009	Kamukunji	Male	136670
county	1	2009	Kisauni	Male	146748
county	47	2009	Westlands	Male	153818
county	3	2009	Malindi	Male	163351
county	47	2009	Dagoretti	Male	217651
county	47	2009	Njiru	Male	307642
county	47	2009	Kasarani	Male	381234
county	47	2009	Embakasi	Male	492476
\.


--
-- Name: subcounty_population_sex_2019 pk_subcounty_population_sex_2019; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subcounty_population_sex_2019
    ADD CONSTRAINT pk_subcounty_population_sex_2019 PRIMARY KEY (geo_level, geo_code, geo_version, subcounty, gender);


--
-- PostgreSQL database dump complete
--

