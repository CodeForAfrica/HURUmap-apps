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

DROP TABLE IF EXISTS public.towndistrictdistributionavgprice;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: towndistrictdistributionavgprice; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.towndistrictdistributionavgprice (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    town_name character varying(128) NOT NULL,
    class character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: towndistrictdistributionavgprice; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.towndistrictdistributionavgprice (geo_level, geo_code, geo_version, town_name, class, total) FROM stdin;
district	DC10	2016	Aberdeen	Under 1.5K	\N
district	DC10	2016	Aberdeen	1,501-3K	2796
district	DC10	2016	Aberdeen	3,001-5K	\N
district	DC10	2016	Aberdeen	5,001-10K	\N
district	DC10	2016	Aberdeen	10,001-20K	\N
district	DC10	2016	Aberdeen	20,001-30K	\N
district	DC10	2016	Aberdeen	30,001-40K	\N
district	DC10	2016	Aberdeen	40,001-50K	\N
district	DC10	2016	Aberdeen	50,001-100K	\N
district	DC10	2016	Aberdeen	100,001-150K	\N
district	DC10	2016	Aberdeen	150,001-200K	\N
district	DC10	2016	Aberdeen	200,001-300K	\N
district	DC10	2016	Aberdeen	300,001-500K	\N
district	DC10	2016	Aberdeen	500,001-800K	\N
district	DC10	2016	Aberdeen	800,001-1M	\N
district	DC10	2016	Aberdeen	Above 1M	\N
district	DC32	2016	Acornhoek Bushbuckridge	Under 1.5K	\N
district	DC32	2016	Acornhoek Bushbuckridge	1,501-3K	\N
district	DC32	2016	Acornhoek Bushbuckridge	3,001-5K	\N
district	DC32	2016	Acornhoek Bushbuckridge	5,001-10K	\N
district	DC32	2016	Acornhoek Bushbuckridge	10,001-20K	\N
district	DC32	2016	Acornhoek Bushbuckridge	20,001-30K	\N
district	DC32	2016	Acornhoek Bushbuckridge	30,001-40K	\N
district	DC32	2016	Acornhoek Bushbuckridge	40,001-50K	\N
district	DC32	2016	Acornhoek Bushbuckridge	50,001-100K	50400
district	DC32	2016	Acornhoek Bushbuckridge	100,001-150K	\N
district	DC32	2016	Acornhoek Bushbuckridge	150,001-200K	\N
district	DC32	2016	Acornhoek Bushbuckridge	200,001-300K	\N
district	DC32	2016	Acornhoek Bushbuckridge	300,001-500K	\N
district	DC32	2016	Acornhoek Bushbuckridge	500,001-800K	\N
district	DC32	2016	Acornhoek Bushbuckridge	800,001-1M	\N
district	DC32	2016	Acornhoek Bushbuckridge	Above 1M	\N
district	DC10	2016	Albany	Under 1.5K	\N
district	DC10	2016	Albany	1,501-3K	3000
district	DC10	2016	Albany	3,001-5K	3466
district	DC10	2016	Albany	5,001-10K	7137
district	DC10	2016	Albany	10,001-20K	13279
district	DC10	2016	Albany	20,001-30K	25037
district	DC10	2016	Albany	30,001-40K	\N
district	DC10	2016	Albany	40,001-50K	\N
district	DC10	2016	Albany	50,001-100K	69091
district	DC10	2016	Albany	100,001-150K	\N
district	DC10	2016	Albany	150,001-200K	178571
district	DC10	2016	Albany	200,001-300K	\N
district	DC10	2016	Albany	300,001-500K	\N
district	DC10	2016	Albany	500,001-800K	\N
district	DC10	2016	Albany	800,001-1M	\N
district	DC10	2016	Albany	Above 1M	\N
district	DC4	2016	Albertinia HesseQua	Under 1.5K	\N
district	DC4	2016	Albertinia HesseQua	1,501-3K	3001
district	DC4	2016	Albertinia HesseQua	3,001-5K	3772
district	DC4	2016	Albertinia HesseQua	5,001-10K	6848
district	DC4	2016	Albertinia HesseQua	10,001-20K	\N
district	DC4	2016	Albertinia HesseQua	20,001-30K	\N
district	DC4	2016	Albertinia HesseQua	30,001-40K	\N
district	DC4	2016	Albertinia HesseQua	40,001-50K	\N
district	DC4	2016	Albertinia HesseQua	50,001-100K	\N
district	DC4	2016	Albertinia HesseQua	100,001-150K	\N
district	DC4	2016	Albertinia HesseQua	150,001-200K	\N
district	DC4	2016	Albertinia HesseQua	200,001-300K	\N
district	DC4	2016	Albertinia HesseQua	300,001-500K	\N
district	DC4	2016	Albertinia HesseQua	500,001-800K	\N
district	DC4	2016	Albertinia HesseQua	800,001-1M	\N
district	DC4	2016	Albertinia HesseQua	Above 1M	\N
district	DC10	2016	Alexandria Ndlambe	Under 1.5K	\N
district	DC10	2016	Alexandria Ndlambe	1,501-3K	\N
district	DC10	2016	Alexandria Ndlambe	3,001-5K	3552
district	DC10	2016	Alexandria Ndlambe	5,001-10K	8746
district	DC10	2016	Alexandria Ndlambe	10,001-20K	16020
district	DC10	2016	Alexandria Ndlambe	20,001-30K	28384
district	DC10	2016	Alexandria Ndlambe	30,001-40K	31318
district	DC10	2016	Alexandria Ndlambe	40,001-50K	43046
district	DC10	2016	Alexandria Ndlambe	50,001-100K	\N
district	DC10	2016	Alexandria Ndlambe	100,001-150K	\N
district	DC10	2016	Alexandria Ndlambe	150,001-200K	\N
district	DC10	2016	Alexandria Ndlambe	200,001-300K	\N
district	DC10	2016	Alexandria Ndlambe	300,001-500K	339394
district	DC10	2016	Alexandria Ndlambe	500,001-800K	\N
district	DC10	2016	Alexandria Ndlambe	800,001-1M	\N
district	DC10	2016	Alexandria Ndlambe	Above 1M	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	Under 1.5K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	1,501-3K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	3,001-5K	3376
district	DC14	2016	Aliwal-Noord Maletsiwai	5,001-10K	6520
district	DC14	2016	Aliwal-Noord Maletsiwai	10,001-20K	14863
district	DC14	2016	Aliwal-Noord Maletsiwai	20,001-30K	24570
district	DC14	2016	Aliwal-Noord Maletsiwai	30,001-40K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	40,001-50K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	50,001-100K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	100,001-150K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	150,001-200K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	200,001-300K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	300,001-500K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	500,001-800K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	800,001-1M	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	Above 1M	\N
district	DC35	2016	Alldays Blouberg	Under 1.5K	117
district	DC35	2016	Alldays Blouberg	1,501-3K	2466
district	DC35	2016	Alldays Blouberg	3,001-5K	4167
district	DC35	2016	Alldays Blouberg	5,001-10K	7083
district	DC35	2016	Alldays Blouberg	10,001-20K	15293
district	DC35	2016	Alldays Blouberg	20,001-30K	21125
district	DC35	2016	Alldays Blouberg	30,001-40K	\N
district	DC35	2016	Alldays Blouberg	40,001-50K	43109
district	DC35	2016	Alldays Blouberg	50,001-100K	68609
district	DC35	2016	Alldays Blouberg	100,001-150K	\N
district	DC35	2016	Alldays Blouberg	150,001-200K	\N
district	DC35	2016	Alldays Blouberg	200,001-300K	\N
district	DC35	2016	Alldays Blouberg	300,001-500K	\N
district	DC35	2016	Alldays Blouberg	500,001-800K	\N
district	DC35	2016	Alldays Blouberg	800,001-1M	\N
district	DC35	2016	Alldays Blouberg	Above 1M	\N
district	DC30	2016	Amsterdam Mkhondo	Under 1.5K	1485
district	DC30	2016	Amsterdam Mkhondo	1,501-3K	\N
district	DC30	2016	Amsterdam Mkhondo	3,001-5K	\N
district	DC30	2016	Amsterdam Mkhondo	5,001-10K	8781
district	DC30	2016	Amsterdam Mkhondo	10,001-20K	14108
district	DC30	2016	Amsterdam Mkhondo	20,001-30K	21279
district	DC30	2016	Amsterdam Mkhondo	30,001-40K	31329
district	DC30	2016	Amsterdam Mkhondo	40,001-50K	46296
district	DC30	2016	Amsterdam Mkhondo	50,001-100K	86364
district	DC30	2016	Amsterdam Mkhondo	100,001-150K	123773
district	DC30	2016	Amsterdam Mkhondo	150,001-200K	177273
district	DC30	2016	Amsterdam Mkhondo	200,001-300K	284800
district	DC30	2016	Amsterdam Mkhondo	300,001-500K	446000
district	DC30	2016	Amsterdam Mkhondo	500,001-800K	\N
district	DC30	2016	Amsterdam Mkhondo	800,001-1M	\N
district	DC30	2016	Amsterdam Mkhondo	Above 1M	\N
district	DC29	2016	Ballito KwaDukuza	Under 1.5K	\N
district	DC29	2016	Ballito KwaDukuza	1,501-3K	\N
district	DC29	2016	Ballito KwaDukuza	3,001-5K	3846
district	DC29	2016	Ballito KwaDukuza	5,001-10K	8375
district	DC29	2016	Ballito KwaDukuza	10,001-20K	13132
district	DC29	2016	Ballito KwaDukuza	20,001-30K	27328
district	DC29	2016	Ballito KwaDukuza	30,001-40K	32370
district	DC29	2016	Ballito KwaDukuza	40,001-50K	46640
district	DC29	2016	Ballito KwaDukuza	50,001-100K	76526
district	DC29	2016	Ballito KwaDukuza	100,001-150K	117524
district	DC29	2016	Ballito KwaDukuza	150,001-200K	193798
district	DC29	2016	Ballito KwaDukuza	200,001-300K	\N
district	DC29	2016	Ballito KwaDukuza	300,001-500K	461538
district	DC29	2016	Ballito KwaDukuza	500,001-800K	610417
district	DC29	2016	Ballito KwaDukuza	800,001-1M	\N
district	DC29	2016	Ballito KwaDukuza	Above 1M	13264497
district	DC9	2016	Barkley-Wes Dikgatlong	Under 1.5K	992
district	DC9	2016	Barkley-Wes Dikgatlong	1,501-3K	2601
district	DC9	2016	Barkley-Wes Dikgatlong	3,001-5K	3939
district	DC9	2016	Barkley-Wes Dikgatlong	5,001-10K	6322
district	DC9	2016	Barkley-Wes Dikgatlong	10,001-20K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	20,001-30K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	30,001-40K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	40,001-50K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	50,001-100K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	100,001-150K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	150,001-200K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	200,001-300K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	300,001-500K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	500,001-800K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	800,001-1M	\N
district	DC9	2016	Barkley-Wes Dikgatlong	Above 1M	\N
district	DC14	2016	Barkly-Oos Senqu	Under 1.5K	\N
district	DC14	2016	Barkly-Oos Senqu	1,501-3K	2433
district	DC14	2016	Barkly-Oos Senqu	3,001-5K	4921
district	DC14	2016	Barkly-Oos Senqu	5,001-10K	6511
district	DC14	2016	Barkly-Oos Senqu	10,001-20K	\N
district	DC14	2016	Barkly-Oos Senqu	20,001-30K	\N
district	DC14	2016	Barkly-Oos Senqu	30,001-40K	\N
district	DC14	2016	Barkly-Oos Senqu	40,001-50K	\N
district	DC14	2016	Barkly-Oos Senqu	50,001-100K	\N
district	DC14	2016	Barkly-Oos Senqu	100,001-150K	\N
district	DC14	2016	Barkly-Oos Senqu	150,001-200K	\N
district	DC14	2016	Barkly-Oos Senqu	200,001-300K	\N
district	DC14	2016	Barkly-Oos Senqu	300,001-500K	\N
district	DC14	2016	Barkly-Oos Senqu	500,001-800K	\N
district	DC14	2016	Barkly-Oos Senqu	800,001-1M	\N
district	DC14	2016	Barkly-Oos Senqu	Above 1M	\N
district	DC10	2016	Bathurst Ndlambe	Under 1.5K	\N
district	DC10	2016	Bathurst Ndlambe	1,501-3K	\N
district	DC10	2016	Bathurst Ndlambe	3,001-5K	\N
district	DC10	2016	Bathurst Ndlambe	5,001-10K	8158
district	DC10	2016	Bathurst Ndlambe	10,001-20K	12686
district	DC10	2016	Bathurst Ndlambe	20,001-30K	\N
district	DC10	2016	Bathurst Ndlambe	30,001-40K	\N
district	DC10	2016	Bathurst Ndlambe	40,001-50K	43305
district	DC10	2016	Bathurst Ndlambe	50,001-100K	57143
district	DC10	2016	Bathurst Ndlambe	100,001-150K	101818
district	DC10	2016	Bathurst Ndlambe	150,001-200K	\N
district	DC10	2016	Bathurst Ndlambe	200,001-300K	\N
district	DC10	2016	Bathurst Ndlambe	300,001-500K	\N
district	DC10	2016	Bathurst Ndlambe	500,001-800K	\N
district	DC10	2016	Bathurst Ndlambe	800,001-1M	\N
district	DC10	2016	Bathurst Ndlambe	Above 1M	\N
district	DC5	2016	Beaufort-Wes	Under 1.5K	1172
district	DC5	2016	Beaufort-Wes	1,501-3K	2169
district	DC5	2016	Beaufort-Wes	3,001-5K	3105
district	DC5	2016	Beaufort-Wes	5,001-10K	9015
district	DC5	2016	Beaufort-Wes	10,001-20K	14221
district	DC5	2016	Beaufort-Wes	20,001-30K	\N
district	DC5	2016	Beaufort-Wes	30,001-40K	\N
district	DC5	2016	Beaufort-Wes	40,001-50K	\N
district	DC5	2016	Beaufort-Wes	50,001-100K	\N
district	DC5	2016	Beaufort-Wes	100,001-150K	\N
district	DC5	2016	Beaufort-Wes	150,001-200K	\N
district	DC5	2016	Beaufort-Wes	200,001-300K	\N
district	DC5	2016	Beaufort-Wes	300,001-500K	\N
district	DC5	2016	Beaufort-Wes	500,001-800K	\N
district	DC5	2016	Beaufort-Wes	800,001-1M	\N
district	DC5	2016	Beaufort-Wes	Above 1M	\N
district	DC12	2016	Bedford Amathole	Under 1.5K	\N
district	DC12	2016	Bedford Amathole	1,501-3K	\N
district	DC12	2016	Bedford Amathole	3,001-5K	\N
district	DC12	2016	Bedford Amathole	5,001-10K	5038
district	DC12	2016	Bedford Amathole	10,001-20K	\N
district	DC12	2016	Bedford Amathole	20,001-30K	27704
district	DC12	2016	Bedford Amathole	30,001-40K	\N
district	DC12	2016	Bedford Amathole	40,001-50K	\N
district	DC12	2016	Bedford Amathole	50,001-100K	\N
district	DC12	2016	Bedford Amathole	100,001-150K	\N
district	DC12	2016	Bedford Amathole	150,001-200K	\N
district	DC12	2016	Bedford Amathole	200,001-300K	250000
district	DC12	2016	Bedford Amathole	300,001-500K	\N
district	DC12	2016	Bedford Amathole	500,001-800K	\N
district	DC12	2016	Bedford Amathole	800,001-1M	\N
district	DC12	2016	Bedford Amathole	Above 1M	\N
district	DC30	2016	Bethal Gonovan Mbeki	Under 1.5K	\N
district	DC30	2016	Bethal Gonovan Mbeki	1,501-3K	2071
district	DC30	2016	Bethal Gonovan Mbeki	3,001-5K	4627
district	DC30	2016	Bethal Gonovan Mbeki	5,001-10K	8395
district	DC30	2016	Bethal Gonovan Mbeki	10,001-20K	13898
district	DC30	2016	Bethal Gonovan Mbeki	20,001-30K	25109
district	DC30	2016	Bethal Gonovan Mbeki	30,001-40K	35274
district	DC30	2016	Bethal Gonovan Mbeki	40,001-50K	44382
district	DC30	2016	Bethal Gonovan Mbeki	50,001-100K	83812
district	DC30	2016	Bethal Gonovan Mbeki	100,001-150K	130983
district	DC30	2016	Bethal Gonovan Mbeki	150,001-200K	\N
district	DC30	2016	Bethal Gonovan Mbeki	200,001-300K	\N
district	DC30	2016	Bethal Gonovan Mbeki	300,001-500K	303339
district	DC30	2016	Bethal Gonovan Mbeki	500,001-800K	\N
district	DC30	2016	Bethal Gonovan Mbeki	800,001-1M	\N
district	DC30	2016	Bethal Gonovan Mbeki	Above 1M	\N
district	DC19	2016	Bethlehem Dihlabeng	Under 1.5K	543
district	DC19	2016	Bethlehem Dihlabeng	1,501-3K	\N
district	DC19	2016	Bethlehem Dihlabeng	3,001-5K	\N
district	DC19	2016	Bethlehem Dihlabeng	5,001-10K	8396
district	DC19	2016	Bethlehem Dihlabeng	10,001-20K	14276
district	DC19	2016	Bethlehem Dihlabeng	20,001-30K	23459
district	DC19	2016	Bethlehem Dihlabeng	30,001-40K	32586
district	DC19	2016	Bethlehem Dihlabeng	40,001-50K	47191
district	DC19	2016	Bethlehem Dihlabeng	50,001-100K	\N
district	DC19	2016	Bethlehem Dihlabeng	100,001-150K	\N
district	DC19	2016	Bethlehem Dihlabeng	150,001-200K	\N
district	DC19	2016	Bethlehem Dihlabeng	200,001-300K	\N
district	DC19	2016	Bethlehem Dihlabeng	300,001-500K	\N
district	DC19	2016	Bethlehem Dihlabeng	500,001-800K	583333
district	DC19	2016	Bethlehem Dihlabeng	800,001-1M	\N
district	DC19	2016	Bethlehem Dihlabeng	Above 1M	\N
district	DC16	2016	Bethulie	Under 1.5K	\N
district	DC16	2016	Bethulie	1,501-3K	\N
district	DC16	2016	Bethulie	3,001-5K	\N
district	DC16	2016	Bethulie	5,001-10K	6064
district	DC16	2016	Bethulie	10,001-20K	10924
district	DC16	2016	Bethulie	20,001-30K	\N
district	DC16	2016	Bethulie	30,001-40K	\N
district	DC16	2016	Bethulie	40,001-50K	\N
district	DC16	2016	Bethulie	50,001-100K	\N
district	DC16	2016	Bethulie	100,001-150K	\N
district	DC16	2016	Bethulie	150,001-200K	\N
district	DC16	2016	Bethulie	200,001-300K	\N
district	DC16	2016	Bethulie	300,001-500K	\N
district	DC16	2016	Bethulie	500,001-800K	\N
district	DC16	2016	Bethulie	800,001-1M	\N
district	DC16	2016	Bethulie	Above 1M	\N
municipality	MAN	2016	Bloemfontein Mangaung	Under 1.5K	\N
municipality	MAN	2016	Bloemfontein Mangaung	1,501-3K	2121
municipality	MAN	2016	Bloemfontein Mangaung	3,001-5K	4152
municipality	MAN	2016	Bloemfontein Mangaung	5,001-10K	6592
municipality	MAN	2016	Bloemfontein Mangaung	10,001-20K	13219
municipality	MAN	2016	Bloemfontein Mangaung	20,001-30K	24427
municipality	MAN	2016	Bloemfontein Mangaung	30,001-40K	34499
municipality	MAN	2016	Bloemfontein Mangaung	40,001-50K	43662
municipality	MAN	2016	Bloemfontein Mangaung	50,001-100K	86712
municipality	MAN	2016	Bloemfontein Mangaung	100,001-150K	118004
municipality	MAN	2016	Bloemfontein Mangaung	150,001-200K	176490
municipality	MAN	2016	Bloemfontein Mangaung	200,001-300K	256144
municipality	MAN	2016	Bloemfontein Mangaung	300,001-500K	375000
municipality	MAN	2016	Bloemfontein Mangaung	500,001-800K	\N
municipality	MAN	2016	Bloemfontein Mangaung	800,001-1M	\N
municipality	MAN	2016	Bloemfontein Mangaung	Above 1M	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	Under 1.5K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	1,501-3K	2161
district	DC39	2016	Bloemhof Lekwa-Tecma	3,001-5K	4088
district	DC39	2016	Bloemhof Lekwa-Tecma	5,001-10K	7045
district	DC39	2016	Bloemhof Lekwa-Tecma	10,001-20K	12426
district	DC39	2016	Bloemhof Lekwa-Tecma	20,001-30K	26355
district	DC39	2016	Bloemhof Lekwa-Tecma	30,001-40K	37043
district	DC39	2016	Bloemhof Lekwa-Tecma	40,001-50K	44559
district	DC39	2016	Bloemhof Lekwa-Tecma	50,001-100K	90517
district	DC39	2016	Bloemhof Lekwa-Tecma	100,001-150K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	150,001-200K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	200,001-300K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	300,001-500K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	500,001-800K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	800,001-1M	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	Above 1M	\N
district	DC18	2016	Boshof Tokologo	Under 1.5K	888
district	DC18	2016	Boshof Tokologo	1,501-3K	2203
district	DC18	2016	Boshof Tokologo	3,001-5K	4224
district	DC18	2016	Boshof Tokologo	5,001-10K	5937
district	DC18	2016	Boshof Tokologo	10,001-20K	15328
district	DC18	2016	Boshof Tokologo	20,001-30K	24186
district	DC18	2016	Boshof Tokologo	30,001-40K	\N
district	DC18	2016	Boshof Tokologo	40,001-50K	\N
district	DC18	2016	Boshof Tokologo	50,001-100K	72381
district	DC18	2016	Boshof Tokologo	100,001-150K	\N
district	DC18	2016	Boshof Tokologo	150,001-200K	\N
district	DC18	2016	Boshof Tokologo	200,001-300K	\N
district	DC18	2016	Boshof Tokologo	300,001-500K	\N
district	DC18	2016	Boshof Tokologo	500,001-800K	\N
district	DC18	2016	Boshof Tokologo	800,001-1M	\N
district	DC18	2016	Boshof Tokologo	Above 1M	\N
district	DC18	2016	Bothaville Nala	Under 1.5K	\N
district	DC18	2016	Bothaville Nala	1,501-3K	\N
district	DC18	2016	Bothaville Nala	3,001-5K	4007
district	DC18	2016	Bothaville Nala	5,001-10K	6713
district	DC18	2016	Bothaville Nala	10,001-20K	15202
district	DC18	2016	Bothaville Nala	20,001-30K	25328
district	DC18	2016	Bothaville Nala	30,001-40K	\N
district	DC18	2016	Bothaville Nala	40,001-50K	43035
district	DC18	2016	Bothaville Nala	50,001-100K	55492
district	DC18	2016	Bothaville Nala	100,001-150K	\N
district	DC18	2016	Bothaville Nala	150,001-200K	\N
district	DC18	2016	Bothaville Nala	200,001-300K	\N
district	DC18	2016	Bothaville Nala	300,001-500K	\N
district	DC18	2016	Bothaville Nala	500,001-800K	\N
district	DC18	2016	Bothaville Nala	800,001-1M	\N
district	DC18	2016	Bothaville Nala	Above 1M	\N
district	DC18	2016	Brandfort Masilonyana	Under 1.5K	\N
district	DC18	2016	Brandfort Masilonyana	1,501-3K	\N
district	DC18	2016	Brandfort Masilonyana	3,001-5K	\N
district	DC18	2016	Brandfort Masilonyana	5,001-10K	8038
district	DC18	2016	Brandfort Masilonyana	10,001-20K	12094
district	DC18	2016	Brandfort Masilonyana	20,001-30K	\N
district	DC18	2016	Brandfort Masilonyana	30,001-40K	\N
district	DC18	2016	Brandfort Masilonyana	40,001-50K	40476
district	DC18	2016	Brandfort Masilonyana	50,001-100K	85714
district	DC18	2016	Brandfort Masilonyana	100,001-150K	\N
district	DC18	2016	Brandfort Masilonyana	150,001-200K	\N
district	DC18	2016	Brandfort Masilonyana	200,001-300K	\N
district	DC18	2016	Brandfort Masilonyana	300,001-500K	\N
district	DC18	2016	Brandfort Masilonyana	500,001-800K	\N
district	DC18	2016	Brandfort Masilonyana	800,001-1M	\N
district	DC18	2016	Brandfort Masilonyana	Above 1M	\N
district	DC39	2016	Bray Kagisano-Molopo	Under 1.5K	\N
district	DC39	2016	Bray Kagisano-Molopo	1,501-3K	\N
district	DC39	2016	Bray Kagisano-Molopo	3,001-5K	4269
district	DC39	2016	Bray Kagisano-Molopo	5,001-10K	6301
district	DC39	2016	Bray Kagisano-Molopo	10,001-20K	\N
district	DC39	2016	Bray Kagisano-Molopo	20,001-30K	\N
district	DC39	2016	Bray Kagisano-Molopo	30,001-40K	\N
district	DC39	2016	Bray Kagisano-Molopo	40,001-50K	\N
district	DC39	2016	Bray Kagisano-Molopo	50,001-100K	\N
district	DC39	2016	Bray Kagisano-Molopo	100,001-150K	\N
district	DC39	2016	Bray Kagisano-Molopo	150,001-200K	\N
district	DC39	2016	Bray Kagisano-Molopo	200,001-300K	\N
district	DC39	2016	Bray Kagisano-Molopo	300,001-500K	\N
district	DC39	2016	Bray Kagisano-Molopo	500,001-800K	\N
district	DC39	2016	Bray Kagisano-Molopo	800,001-1M	\N
district	DC39	2016	Bray Kagisano-Molopo	Above 1M	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	Under 1.5K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	1,501-3K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	3,001-5K	3423
district	DC3	2016	Bredasdorp Cape Aqulhas	5,001-10K	9932
district	DC3	2016	Bredasdorp Cape Aqulhas	10,001-20K	11809
district	DC3	2016	Bredasdorp Cape Aqulhas	20,001-30K	29663
district	DC3	2016	Bredasdorp Cape Aqulhas	30,001-40K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	40,001-50K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	50,001-100K	72131
district	DC3	2016	Bredasdorp Cape Aqulhas	100,001-150K	118536
district	DC3	2016	Bredasdorp Cape Aqulhas	150,001-200K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	200,001-300K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	300,001-500K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	500,001-800K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	800,001-1M	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	Above 1M	1250000
district	DC7	2016	Britstown	Under 1.5K	942
district	DC7	2016	Britstown	1,501-3K	1934
district	DC7	2016	Britstown	3,001-5K	4101
district	DC7	2016	Britstown	5,001-10K	\N
district	DC7	2016	Britstown	10,001-20K	\N
district	DC7	2016	Britstown	20,001-30K	\N
district	DC7	2016	Britstown	30,001-40K	\N
district	DC7	2016	Britstown	40,001-50K	\N
district	DC7	2016	Britstown	50,001-100K	\N
district	DC7	2016	Britstown	100,001-150K	\N
district	DC7	2016	Britstown	150,001-200K	\N
district	DC7	2016	Britstown	200,001-300K	\N
district	DC7	2016	Britstown	300,001-500K	\N
district	DC7	2016	Britstown	500,001-800K	\N
district	DC7	2016	Britstown	800,001-1M	\N
district	DC7	2016	Britstown	Above 1M	\N
district	DC18	2016	Bultfontein Tswelopele	Under 1.5K	\N
district	DC18	2016	Bultfontein Tswelopele	1,501-3K	\N
district	DC18	2016	Bultfontein Tswelopele	3,001-5K	4455
district	DC18	2016	Bultfontein Tswelopele	5,001-10K	7784
district	DC18	2016	Bultfontein Tswelopele	10,001-20K	10169
district	DC18	2016	Bultfontein Tswelopele	20,001-30K	25746
district	DC18	2016	Bultfontein Tswelopele	30,001-40K	\N
district	DC18	2016	Bultfontein Tswelopele	40,001-50K	48479
district	DC18	2016	Bultfontein Tswelopele	50,001-100K	83212
district	DC18	2016	Bultfontein Tswelopele	100,001-150K	\N
district	DC18	2016	Bultfontein Tswelopele	150,001-200K	\N
district	DC18	2016	Bultfontein Tswelopele	200,001-300K	\N
district	DC18	2016	Bultfontein Tswelopele	300,001-500K	\N
district	DC18	2016	Bultfontein Tswelopele	500,001-800K	\N
district	DC18	2016	Bultfontein Tswelopele	800,001-1M	\N
district	DC18	2016	Bultfontein Tswelopele	Above 1M	\N
district	DC47	2016	Burgersfort Thubatse	Under 1.5K	549
district	DC47	2016	Burgersfort Thubatse	1,501-3K	1805
district	DC47	2016	Burgersfort Thubatse	3,001-5K	3741
district	DC47	2016	Burgersfort Thubatse	5,001-10K	7461
district	DC47	2016	Burgersfort Thubatse	10,001-20K	13910
district	DC47	2016	Burgersfort Thubatse	20,001-30K	22918
district	DC47	2016	Burgersfort Thubatse	30,001-40K	36363
district	DC47	2016	Burgersfort Thubatse	40,001-50K	\N
district	DC47	2016	Burgersfort Thubatse	50,001-100K	75077
district	DC47	2016	Burgersfort Thubatse	100,001-150K	118366
district	DC47	2016	Burgersfort Thubatse	150,001-200K	159953
district	DC47	2016	Burgersfort Thubatse	200,001-300K	226346
district	DC47	2016	Burgersfort Thubatse	300,001-500K	384283
district	DC47	2016	Burgersfort Thubatse	500,001-800K	690409
district	DC47	2016	Burgersfort Thubatse	800,001-1M	948276
district	DC47	2016	Burgersfort Thubatse	Above 1M	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Under 1.5K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	1,501-3K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	3,001-5K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	5,001-10K	8333
district	DC3	2016	Caledon (Overberg) Theewaterskloof	10,001-20K	18130
district	DC3	2016	Caledon (Overberg) Theewaterskloof	20,001-30K	22891
district	DC3	2016	Caledon (Overberg) Theewaterskloof	30,001-40K	37572
district	DC3	2016	Caledon (Overberg) Theewaterskloof	40,001-50K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	50,001-100K	78587
district	DC3	2016	Caledon (Overberg) Theewaterskloof	100,001-150K	134179
district	DC3	2016	Caledon (Overberg) Theewaterskloof	150,001-200K	190441
district	DC3	2016	Caledon (Overberg) Theewaterskloof	200,001-300K	227273
district	DC3	2016	Caledon (Overberg) Theewaterskloof	300,001-500K	374353
district	DC3	2016	Caledon (Overberg) Theewaterskloof	500,001-800K	555592
district	DC3	2016	Caledon (Overberg) Theewaterskloof	800,001-1M	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Above 1M	\N
district	DC4	2016	Calitzdorp Kannaland	Under 1.5K	830
district	DC4	2016	Calitzdorp Kannaland	1,501-3K	\N
district	DC4	2016	Calitzdorp Kannaland	3,001-5K	\N
district	DC4	2016	Calitzdorp Kannaland	5,001-10K	6247
district	DC4	2016	Calitzdorp Kannaland	10,001-20K	16286
district	DC4	2016	Calitzdorp Kannaland	20,001-30K	25625
district	DC4	2016	Calitzdorp Kannaland	30,001-40K	\N
district	DC4	2016	Calitzdorp Kannaland	40,001-50K	47059
district	DC4	2016	Calitzdorp Kannaland	50,001-100K	91304
district	DC4	2016	Calitzdorp Kannaland	100,001-150K	143860
district	DC4	2016	Calitzdorp Kannaland	150,001-200K	\N
district	DC4	2016	Calitzdorp Kannaland	200,001-300K	\N
district	DC4	2016	Calitzdorp Kannaland	300,001-500K	\N
district	DC4	2016	Calitzdorp Kannaland	500,001-800K	\N
district	DC4	2016	Calitzdorp Kannaland	800,001-1M	\N
district	DC4	2016	Calitzdorp Kannaland	Above 1M	\N
district	DC6	2016	Calvinia Hantam	Under 1.5K	863
district	DC6	2016	Calvinia Hantam	1,501-3K	2312
district	DC6	2016	Calvinia Hantam	3,001-5K	\N
district	DC6	2016	Calvinia Hantam	5,001-10K	\N
district	DC6	2016	Calvinia Hantam	10,001-20K	\N
district	DC6	2016	Calvinia Hantam	20,001-30K	\N
district	DC6	2016	Calvinia Hantam	30,001-40K	\N
district	DC6	2016	Calvinia Hantam	40,001-50K	\N
district	DC6	2016	Calvinia Hantam	50,001-100K	\N
district	DC6	2016	Calvinia Hantam	100,001-150K	\N
district	DC6	2016	Calvinia Hantam	150,001-200K	\N
district	DC6	2016	Calvinia Hantam	200,001-300K	\N
district	DC6	2016	Calvinia Hantam	300,001-500K	\N
district	DC6	2016	Calvinia Hantam	500,001-800K	\N
district	DC6	2016	Calvinia Hantam	800,001-1M	\N
district	DC6	2016	Calvinia Hantam	Above 1M	\N
municipality	CPT	2016	Cape Town	Under 1.5K	\N
municipality	CPT	2016	Cape Town	1,501-3K	\N
municipality	CPT	2016	Cape Town	3,001-5K	3989
municipality	CPT	2016	Cape Town	5,001-10K	9880
municipality	CPT	2016	Cape Town	10,001-20K	\N
municipality	CPT	2016	Cape Town	20,001-30K	21279
municipality	CPT	2016	Cape Town	30,001-40K	\N
municipality	CPT	2016	Cape Town	40,001-50K	\N
municipality	CPT	2016	Cape Town	50,001-100K	62904
municipality	CPT	2016	Cape Town	100,001-150K	\N
municipality	CPT	2016	Cape Town	150,001-200K	152381
municipality	CPT	2016	Cape Town	200,001-300K	\N
municipality	CPT	2016	Cape Town	300,001-500K	\N
municipality	CPT	2016	Cape Town	500,001-800K	\N
municipality	CPT	2016	Cape Town	800,001-1M	\N
municipality	CPT	2016	Cape Town	Above 1M	\N
district	DC48	2016	Carletonville Merafong	Under 1.5K	332
district	DC48	2016	Carletonville Merafong	1,501-3K	1852
district	DC48	2016	Carletonville Merafong	3,001-5K	3413
district	DC10	2016	Aberdeen	3,001-5K	\N
district	DC48	2016	Carletonville Merafong	5,001-10K	7901
district	DC48	2016	Carletonville Merafong	10,001-20K	13817
district	DC48	2016	Carletonville Merafong	20,001-30K	24415
district	DC48	2016	Carletonville Merafong	30,001-40K	34450
district	DC48	2016	Carletonville Merafong	40,001-50K	45594
district	DC48	2016	Carletonville Merafong	50,001-100K	71419
district	DC48	2016	Carletonville Merafong	100,001-150K	121616
district	DC48	2016	Carletonville Merafong	150,001-200K	184668
district	DC48	2016	Carletonville Merafong	200,001-300K	231649
district	DC48	2016	Carletonville Merafong	300,001-500K	371103
district	DC48	2016	Carletonville Merafong	500,001-800K	791667
district	DC48	2016	Carletonville Merafong	800,001-1M	940000
district	DC48	2016	Carletonville Merafong	Above 1M	4776381
district	DC7	2016	Carnavon Kareeberg	Under 1.5K	133
district	DC7	2016	Carnavon Kareeberg	1,501-3K	2313
district	DC7	2016	Carnavon Kareeberg	3,001-5K	\N
district	DC7	2016	Carnavon Kareeberg	5,001-10K	\N
district	DC7	2016	Carnavon Kareeberg	10,001-20K	\N
district	DC7	2016	Carnavon Kareeberg	20,001-30K	\N
district	DC7	2016	Carnavon Kareeberg	30,001-40K	\N
district	DC7	2016	Carnavon Kareeberg	40,001-50K	\N
district	DC7	2016	Carnavon Kareeberg	50,001-100K	\N
district	DC7	2016	Carnavon Kareeberg	100,001-150K	\N
district	DC7	2016	Carnavon Kareeberg	150,001-200K	\N
district	DC7	2016	Carnavon Kareeberg	200,001-300K	\N
district	DC7	2016	Carnavon Kareeberg	300,001-500K	\N
district	DC7	2016	Carnavon Kareeberg	500,001-800K	\N
district	DC7	2016	Carnavon Kareeberg	800,001-1M	\N
district	DC7	2016	Carnavon Kareeberg	Above 1M	\N
district	DC12	2016	Cathcart Amahlathi	Under 1.5K	\N
district	DC12	2016	Cathcart Amahlathi	1,501-3K	\N
district	DC12	2016	Cathcart Amahlathi	3,001-5K	4680
district	DC12	2016	Cathcart Amahlathi	5,001-10K	8082
district	DC12	2016	Cathcart Amahlathi	10,001-20K	\N
district	DC12	2016	Cathcart Amahlathi	20,001-30K	\N
district	DC12	2016	Cathcart Amahlathi	30,001-40K	\N
district	DC12	2016	Cathcart Amahlathi	40,001-50K	\N
district	DC12	2016	Cathcart Amahlathi	50,001-100K	56818
district	DC12	2016	Cathcart Amahlathi	100,001-150K	\N
district	DC12	2016	Cathcart Amahlathi	150,001-200K	\N
district	DC12	2016	Cathcart Amahlathi	200,001-300K	\N
district	DC12	2016	Cathcart Amahlathi	300,001-500K	\N
district	DC12	2016	Cathcart Amahlathi	500,001-800K	\N
district	DC12	2016	Cathcart Amahlathi	800,001-1M	\N
district	DC12	2016	Cathcart Amahlathi	Above 1M	\N
district	DC2	2016	Ceres Witzenberg	Under 1.5K	828
district	DC2	2016	Ceres Witzenberg	1,501-3K	1863
district	DC2	2016	Ceres Witzenberg	3,001-5K	3795
district	DC2	2016	Ceres Witzenberg	5,001-10K	7722
district	DC2	2016	Ceres Witzenberg	10,001-20K	\N
district	DC2	2016	Ceres Witzenberg	20,001-30K	26104
district	DC2	2016	Ceres Witzenberg	30,001-40K	\N
district	DC2	2016	Ceres Witzenberg	40,001-50K	41485
district	DC2	2016	Ceres Witzenberg	50,001-100K	\N
district	DC2	2016	Ceres Witzenberg	100,001-150K	125419
district	DC2	2016	Ceres Witzenberg	150,001-200K	200000
district	DC2	2016	Ceres Witzenberg	200,001-300K	\N
district	DC2	2016	Ceres Witzenberg	300,001-500K	\N
district	DC2	2016	Ceres Witzenberg	500,001-800K	\N
district	DC2	2016	Ceres Witzenberg	800,001-1M	\N
district	DC2	2016	Ceres Witzenberg	Above 1M	\N
district	DC1	2016	Clanwilliam Cederberg	Under 1.5K	872
district	DC1	2016	Clanwilliam Cederberg	1,501-3K	2485
district	DC1	2016	Clanwilliam Cederberg	3,001-5K	3899
district	DC1	2016	Clanwilliam Cederberg	5,001-10K	6004
district	DC1	2016	Clanwilliam Cederberg	10,001-20K	11535
district	DC4	2016	George	Above 1M	\N
district	DC1	2016	Clanwilliam Cederberg	20,001-30K	20431
district	DC1	2016	Clanwilliam Cederberg	30,001-40K	\N
district	DC1	2016	Clanwilliam Cederberg	40,001-50K	\N
district	DC1	2016	Clanwilliam Cederberg	50,001-100K	86874
district	DC1	2016	Clanwilliam Cederberg	100,001-150K	122642
district	DC1	2016	Clanwilliam Cederberg	150,001-200K	\N
district	DC1	2016	Clanwilliam Cederberg	200,001-300K	\N
district	DC1	2016	Clanwilliam Cederberg	300,001-500K	\N
district	DC1	2016	Clanwilliam Cederberg	500,001-800K	\N
district	DC1	2016	Clanwilliam Cederberg	800,001-1M	\N
district	DC1	2016	Clanwilliam Cederberg	Above 1M	\N
district	DC19	2016	Clocolan Setso	Under 1.5K	\N
district	DC19	2016	Clocolan Setso	1,501-3K	1931
district	DC19	2016	Clocolan Setso	3,001-5K	3005
district	DC19	2016	Clocolan Setso	5,001-10K	7238
district	DC19	2016	Clocolan Setso	10,001-20K	15317
district	DC19	2016	Clocolan Setso	20,001-30K	\N
district	DC19	2016	Clocolan Setso	30,001-40K	\N
district	DC19	2016	Clocolan Setso	40,001-50K	\N
district	DC19	2016	Clocolan Setso	50,001-100K	\N
district	DC19	2016	Clocolan Setso	100,001-150K	\N
district	DC19	2016	Clocolan Setso	150,001-200K	\N
district	DC19	2016	Clocolan Setso	200,001-300K	\N
district	DC19	2016	Clocolan Setso	300,001-500K	\N
district	DC19	2016	Clocolan Setso	500,001-800K	\N
district	DC19	2016	Clocolan Setso	800,001-1M	\N
district	DC19	2016	Clocolan Setso	Above 1M	\N
district	DC7	2016	Colesberg Umsombomvu	Under 1.5K	835
district	DC7	2016	Colesberg Umsombomvu	1,501-3K	2367
district	DC7	2016	Colesberg Umsombomvu	3,001-5K	\N
district	DC7	2016	Colesberg Umsombomvu	5,001-10K	5115
district	DC7	2016	Colesberg Umsombomvu	10,001-20K	\N
district	DC7	2016	Colesberg Umsombomvu	20,001-30K	\N
district	DC7	2016	Colesberg Umsombomvu	30,001-40K	\N
district	DC7	2016	Colesberg Umsombomvu	40,001-50K	\N
district	DC7	2016	Colesberg Umsombomvu	50,001-100K	\N
district	DC7	2016	Colesberg Umsombomvu	100,001-150K	\N
district	DC7	2016	Colesberg Umsombomvu	150,001-200K	\N
district	DC7	2016	Colesberg Umsombomvu	200,001-300K	\N
district	DC7	2016	Colesberg Umsombomvu	300,001-500K	\N
district	DC7	2016	Colesberg Umsombomvu	500,001-800K	\N
district	DC7	2016	Colesberg Umsombomvu	800,001-1M	\N
district	DC7	2016	Colesberg Umsombomvu	Above 1M	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	Under 1.5K	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	1,501-3K	1805
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	3,001-5K	4263
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	5,001-10K	7522
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	10,001-20K	13999
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	20,001-30K	23602
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	30,001-40K	34958
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	40,001-50K	45769
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	50,001-100K	61381
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	100,001-150K	101111
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	150,001-200K	165761
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	200,001-300K	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	300,001-500K	400000
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	500,001-800K	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	800,001-1M	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	Above 1M	\N
district	DC13	2016	Cradock Inxuba Yethemba	Under 1.5K	\N
district	DC13	2016	Cradock Inxuba Yethemba	1,501-3K	1540
district	DC13	2016	Cradock Inxuba Yethemba	3,001-5K	4360
district	DC13	2016	Cradock Inxuba Yethemba	5,001-10K	6776
district	DC13	2016	Cradock Inxuba Yethemba	10,001-20K	\N
district	DC13	2016	Cradock Inxuba Yethemba	20,001-30K	\N
district	DC13	2016	Cradock Inxuba Yethemba	30,001-40K	\N
district	DC13	2016	Cradock Inxuba Yethemba	40,001-50K	40250
district	DC13	2016	Cradock Inxuba Yethemba	50,001-100K	61303
district	DC13	2016	Cradock Inxuba Yethemba	100,001-150K	\N
district	DC13	2016	Cradock Inxuba Yethemba	150,001-200K	153901
district	DC13	2016	Cradock Inxuba Yethemba	200,001-300K	\N
district	DC13	2016	Cradock Inxuba Yethemba	300,001-500K	\N
district	DC13	2016	Cradock Inxuba Yethemba	500,001-800K	\N
district	DC13	2016	Cradock Inxuba Yethemba	800,001-1M	\N
district	DC13	2016	Cradock Inxuba Yethemba	Above 1M	\N
district	DC38	2016	Delareyville Tswaing	Under 1.5K	\N
district	DC38	2016	Delareyville Tswaing	1,501-3K	2200
district	DC38	2016	Delareyville Tswaing	3,001-5K	4340
district	DC38	2016	Delareyville Tswaing	5,001-10K	8333
district	DC38	2016	Delareyville Tswaing	10,001-20K	12535
district	DC38	2016	Delareyville Tswaing	20,001-30K	23269
district	DC38	2016	Delareyville Tswaing	30,001-40K	37229
district	DC38	2016	Delareyville Tswaing	40,001-50K	\N
district	DC38	2016	Delareyville Tswaing	50,001-100K	\N
district	DC38	2016	Delareyville Tswaing	100,001-150K	\N
district	DC38	2016	Delareyville Tswaing	150,001-200K	\N
district	DC38	2016	Delareyville Tswaing	200,001-300K	\N
district	DC38	2016	Delareyville Tswaing	300,001-500K	\N
district	DC38	2016	Delareyville Tswaing	500,001-800K	\N
district	DC38	2016	Delareyville Tswaing	800,001-1M	\N
district	DC38	2016	Delareyville Tswaing	Above 1M	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	Under 1.5K	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	1,501-3K	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	3,001-5K	3984
district	DC34	2016	Dendron Makhado (Louis Trichardt)	5,001-10K	7334
district	DC34	2016	Dendron Makhado (Louis Trichardt)	10,001-20K	13734
district	DC34	2016	Dendron Makhado (Louis Trichardt)	20,001-30K	25883
district	DC34	2016	Dendron Makhado (Louis Trichardt)	30,001-40K	34786
district	DC34	2016	Dendron Makhado (Louis Trichardt)	40,001-50K	42487
district	DC34	2016	Dendron Makhado (Louis Trichardt)	50,001-100K	86232
district	DC34	2016	Dendron Makhado (Louis Trichardt)	100,001-150K	131727
district	DC34	2016	Dendron Makhado (Louis Trichardt)	150,001-200K	176421
district	DC34	2016	Dendron Makhado (Louis Trichardt)	200,001-300K	239032
district	DC34	2016	Dendron Makhado (Louis Trichardt)	300,001-500K	363636
district	DC34	2016	Dendron Makhado (Louis Trichardt)	500,001-800K	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	800,001-1M	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	Above 1M	\N
district	DC38	2016	Derdepoort	Under 1.5K	\N
district	DC38	2016	Derdepoort	1,501-3K	\N
district	DC38	2016	Derdepoort	3,001-5K	\N
district	DC38	2016	Derdepoort	5,001-10K	7946
district	DC38	2016	Derdepoort	10,001-20K	12550
district	DC38	2016	Derdepoort	20,001-30K	\N
district	DC38	2016	Derdepoort	30,001-40K	\N
district	DC38	2016	Derdepoort	40,001-50K	\N
district	DC38	2016	Derdepoort	50,001-100K	89286
district	DC38	2016	Derdepoort	100,001-150K	\N
district	DC38	2016	Derdepoort	150,001-200K	\N
district	DC38	2016	Derdepoort	200,001-300K	\N
district	DC38	2016	Derdepoort	300,001-500K	\N
district	DC38	2016	Derdepoort	500,001-800K	\N
district	DC38	2016	Derdepoort	800,001-1M	\N
district	DC38	2016	Derdepoort	Above 1M	\N
district	DC16	2016	Dewetsdorp Naledi	Under 1.5K	\N
district	DC16	2016	Dewetsdorp Naledi	1,501-3K	\N
district	DC16	2016	Dewetsdorp Naledi	3,001-5K	4459
district	DC16	2016	Dewetsdorp Naledi	5,001-10K	5501
district	DC16	2016	Dewetsdorp Naledi	10,001-20K	\N
district	DC16	2016	Dewetsdorp Naledi	20,001-30K	\N
district	DC16	2016	Dewetsdorp Naledi	30,001-40K	\N
district	DC16	2016	Dewetsdorp Naledi	40,001-50K	\N
district	DC16	2016	Dewetsdorp Naledi	50,001-100K	\N
district	DC16	2016	Dewetsdorp Naledi	100,001-150K	\N
district	DC16	2016	Dewetsdorp Naledi	150,001-200K	\N
district	DC16	2016	Dewetsdorp Naledi	200,001-300K	\N
district	DC16	2016	Dewetsdorp Naledi	300,001-500K	\N
district	DC16	2016	Dewetsdorp Naledi	500,001-800K	\N
district	DC16	2016	Dewetsdorp Naledi	800,001-1M	\N
district	DC16	2016	Dewetsdorp Naledi	Above 1M	\N
district	DC7	2016	Douglas Siyancuma	Under 1.5K	\N
district	DC7	2016	Douglas Siyancuma	1,501-3K	\N
district	DC7	2016	Douglas Siyancuma	3,001-5K	4243
district	DC7	2016	Douglas Siyancuma	5,001-10K	\N
district	DC7	2016	Douglas Siyancuma	10,001-20K	\N
district	DC7	2016	Douglas Siyancuma	20,001-30K	\N
district	DC7	2016	Douglas Siyancuma	30,001-40K	\N
district	DC7	2016	Douglas Siyancuma	40,001-50K	\N
district	DC7	2016	Douglas Siyancuma	50,001-100K	\N
district	DC7	2016	Douglas Siyancuma	100,001-150K	120000
district	DC7	2016	Douglas Siyancuma	150,001-200K	170535
district	DC7	2016	Douglas Siyancuma	200,001-300K	256410
district	DC7	2016	Douglas Siyancuma	300,001-500K	\N
district	DC7	2016	Douglas Siyancuma	500,001-800K	\N
district	DC7	2016	Douglas Siyancuma	800,001-1M	\N
district	DC7	2016	Douglas Siyancuma	Above 1M	\N
district	DC16	2016	Edenburg Kopanong	Under 1.5K	\N
district	DC16	2016	Edenburg Kopanong	1,501-3K	2814
district	DC16	2016	Edenburg Kopanong	3,001-5K	3250
district	DC16	2016	Edenburg Kopanong	5,001-10K	6027
district	DC16	2016	Edenburg Kopanong	10,001-20K	\N
district	DC16	2016	Edenburg Kopanong	20,001-30K	\N
district	DC16	2016	Edenburg Kopanong	30,001-40K	\N
district	DC16	2016	Edenburg Kopanong	40,001-50K	\N
district	DC16	2016	Edenburg Kopanong	50,001-100K	\N
district	DC16	2016	Edenburg Kopanong	100,001-150K	\N
district	DC16	2016	Edenburg Kopanong	150,001-200K	\N
district	DC16	2016	Edenburg Kopanong	200,001-300K	\N
district	DC16	2016	Edenburg Kopanong	300,001-500K	\N
district	DC16	2016	Edenburg Kopanong	500,001-800K	\N
district	DC16	2016	Edenburg Kopanong	800,001-1M	\N
district	DC16	2016	Edenburg Kopanong	Above 1M	\N
district	DC14	2016	Elliot Sakhiszwe	Under 1.5K	\N
district	DC14	2016	Elliot Sakhiszwe	1,501-3K	1679
district	DC14	2016	Elliot Sakhiszwe	3,001-5K	4658
district	DC14	2016	Elliot Sakhiszwe	5,001-10K	7298
district	DC14	2016	Elliot Sakhiszwe	10,001-20K	\N
district	DC14	2016	Elliot Sakhiszwe	20,001-30K	22958
district	DC14	2016	Elliot Sakhiszwe	30,001-40K	\N
district	DC14	2016	Elliot Sakhiszwe	40,001-50K	43135
district	DC14	2016	Elliot Sakhiszwe	50,001-100K	100000
district	DC14	2016	Elliot Sakhiszwe	100,001-150K	\N
district	DC14	2016	Elliot Sakhiszwe	150,001-200K	\N
district	DC14	2016	Elliot Sakhiszwe	200,001-300K	\N
district	DC14	2016	Elliot Sakhiszwe	300,001-500K	\N
district	DC14	2016	Elliot Sakhiszwe	500,001-800K	\N
district	DC14	2016	Elliot Sakhiszwe	800,001-1M	\N
district	DC14	2016	Elliot Sakhiszwe	Above 1M	\N
district	DC36	2016	Ellisras Lephalale	Under 1.5K	\N
district	DC36	2016	Ellisras Lephalale	1,501-3K	1557
district	DC36	2016	Ellisras Lephalale	3,001-5K	3791
district	DC36	2016	Ellisras Lephalale	5,001-10K	6842
district	DC36	2016	Ellisras Lephalale	10,001-20K	12949
district	DC36	2016	Ellisras Lephalale	20,001-30K	\N
district	DC36	2016	Ellisras Lephalale	30,001-40K	32544
district	DC36	2016	Ellisras Lephalale	40,001-50K	43478
district	DC36	2016	Ellisras Lephalale	50,001-100K	51297
district	DC36	2016	Ellisras Lephalale	100,001-150K	\N
district	DC36	2016	Ellisras Lephalale	150,001-200K	\N
district	DC36	2016	Ellisras Lephalale	200,001-300K	\N
district	DC36	2016	Ellisras Lephalale	300,001-500K	340909
district	DC36	2016	Ellisras Lephalale	500,001-800K	\N
district	DC36	2016	Ellisras Lephalale	800,001-1M	\N
district	DC36	2016	Ellisras Lephalale	Above 1M	\N
municipality	DC40	2016	Ewbank	Under 1.5K	\N
municipality	DC40	2016	Ewbank	1,501-3K	\N
municipality	DC40	2016	Ewbank	3,001-5K	4500
municipality	DC40	2016	Ewbank	5,001-10K	\N
municipality	DC40	2016	Ewbank	10,001-20K	\N
municipality	DC40	2016	Ewbank	20,001-30K	\N
municipality	DC40	2016	Ewbank	30,001-40K	\N
municipality	DC40	2016	Ewbank	40,001-50K	\N
municipality	DC40	2016	Ewbank	50,001-100K	\N
municipality	DC40	2016	Ewbank	100,001-150K	\N
municipality	DC40	2016	Ewbank	150,001-200K	\N
municipality	DC40	2016	Ewbank	200,001-300K	\N
municipality	DC40	2016	Ewbank	300,001-500K	\N
municipality	DC40	2016	Ewbank	500,001-800K	\N
municipality	DC40	2016	Ewbank	800,001-1M	\N
municipality	DC40	2016	Ewbank	Above 1M	\N
district	DC16	2016	Fauresmith Kopanong	Under 1.5K	\N
district	DC16	2016	Fauresmith Kopanong	1,501-3K	2672
district	DC16	2016	Fauresmith Kopanong	3,001-5K	3790
district	DC16	2016	Fauresmith Kopanong	5,001-10K	7518
district	DC16	2016	Fauresmith Kopanong	10,001-20K	11633
district	DC16	2016	Fauresmith Kopanong	20,001-30K	\N
district	DC16	2016	Fauresmith Kopanong	30,001-40K	\N
district	DC10	2016	Aberdeen	5,001-10K	\N
district	DC16	2016	Fauresmith Kopanong	40,001-50K	\N
district	DC16	2016	Fauresmith Kopanong	50,001-100K	59829
district	DC16	2016	Fauresmith Kopanong	100,001-150K	\N
district	DC16	2016	Fauresmith Kopanong	150,001-200K	\N
district	DC16	2016	Fauresmith Kopanong	200,001-300K	\N
district	DC16	2016	Fauresmith Kopanong	300,001-500K	\N
district	DC16	2016	Fauresmith Kopanong	500,001-800K	\N
district	DC16	2016	Fauresmith Kopanong	800,001-1M	\N
district	DC16	2016	Fauresmith Kopanong	Above 1M	\N
district	DC19	2016	Ficksburg Setso	Under 1.5K	\N
district	DC19	2016	Ficksburg Setso	1,501-3K	\N
district	DC19	2016	Ficksburg Setso	3,001-5K	\N
district	DC19	2016	Ficksburg Setso	5,001-10K	8791
district	DC19	2016	Ficksburg Setso	10,001-20K	12769
district	DC19	2016	Ficksburg Setso	20,001-30K	\N
district	DC19	2016	Ficksburg Setso	30,001-40K	\N
district	DC19	2016	Ficksburg Setso	40,001-50K	41638
district	DC19	2016	Ficksburg Setso	50,001-100K	\N
district	DC19	2016	Ficksburg Setso	100,001-150K	\N
district	DC19	2016	Ficksburg Setso	150,001-200K	\N
district	DC19	2016	Ficksburg Setso	200,001-300K	\N
district	DC19	2016	Ficksburg Setso	300,001-500K	\N
district	DC19	2016	Ficksburg Setso	500,001-800K	\N
district	DC19	2016	Ficksburg Setso	800,001-1M	\N
district	DC19	2016	Ficksburg Setso	Above 1M	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	Under 1.5K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	1,501-3K	2114
district	DC12	2016	Fort Beaufort Raymond Mhlaba	3,001-5K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	5,001-10K	8240
district	DC12	2016	Fort Beaufort Raymond Mhlaba	10,001-20K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	20,001-30K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	30,001-40K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	40,001-50K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	50,001-100K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	100,001-150K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	150,001-200K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	200,001-300K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	300,001-500K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	500,001-800K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	800,001-1M	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	Above 1M	\N
district	DC19	2016	Fouriesburg Dikabeng	Under 1.5K	\N
district	DC19	2016	Fouriesburg Dikabeng	1,501-3K	\N
district	DC19	2016	Fouriesburg Dikabeng	3,001-5K	\N
district	DC19	2016	Fouriesburg Dikabeng	5,001-10K	8889
district	DC19	2016	Fouriesburg Dikabeng	10,001-20K	14593
district	DC19	2016	Fouriesburg Dikabeng	20,001-30K	23091
district	DC19	2016	Fouriesburg Dikabeng	30,001-40K	\N
district	DC19	2016	Fouriesburg Dikabeng	40,001-50K	\N
district	DC19	2016	Fouriesburg Dikabeng	50,001-100K	\N
district	DC19	2016	Fouriesburg Dikabeng	100,001-150K	\N
district	DC19	2016	Fouriesburg Dikabeng	150,001-200K	\N
district	DC19	2016	Fouriesburg Dikabeng	200,001-300K	215909
district	DC19	2016	Fouriesburg Dikabeng	300,001-500K	\N
district	DC19	2016	Fouriesburg Dikabeng	500,001-800K	\N
district	DC19	2016	Fouriesburg Dikabeng	800,001-1M	\N
district	DC19	2016	Fouriesburg Dikabeng	Above 1M	\N
district	DC20	2016	Frankfort Mafube	Under 1.5K	\N
district	DC20	2016	Frankfort Mafube	1,501-3K	\N
district	DC20	2016	Frankfort Mafube	3,001-5K	\N
district	DC20	2016	Frankfort Mafube	5,001-10K	9296
district	DC20	2016	Frankfort Mafube	10,001-20K	15040
district	DC20	2016	Frankfort Mafube	20,001-30K	25849
district	DC20	2016	Frankfort Mafube	30,001-40K	38685
district	DC20	2016	Frankfort Mafube	40,001-50K	\N
district	DC20	2016	Frankfort Mafube	50,001-100K	\N
district	DC20	2016	Frankfort Mafube	100,001-150K	\N
district	DC20	2016	Frankfort Mafube	150,001-200K	\N
district	DC20	2016	Frankfort Mafube	200,001-300K	\N
district	DC20	2016	Frankfort Mafube	300,001-500K	\N
district	DC20	2016	Frankfort Mafube	500,001-800K	\N
district	DC20	2016	Frankfort Mafube	800,001-1M	\N
district	DC20	2016	Frankfort Mafube	Above 1M	\N
district	DC6	2016	Fraserburg Karoo Hoogland	Under 1.5K	1020
district	DC6	2016	Fraserburg Karoo Hoogland	1,501-3K	2089
district	DC6	2016	Fraserburg Karoo Hoogland	3,001-5K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	5,001-10K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	10,001-20K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	20,001-30K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	30,001-40K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	40,001-50K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	50,001-100K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	100,001-150K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	150,001-200K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	200,001-300K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	300,001-500K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	500,001-800K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	800,001-1M	\N
district	DC6	2016	Fraserburg Karoo Hoogland	Above 1M	\N
district	DC4	2016	George	Under 1.5K	1009
district	DC4	2016	George	1,501-3K	\N
district	DC4	2016	George	3,001-5K	4508
district	DC4	2016	George	5,001-10K	6427
district	DC4	2016	George	10,001-20K	17458
district	DC4	2016	George	20,001-30K	28704
district	DC4	2016	George	30,001-40K	35905
district	DC4	2016	George	40,001-50K	47957
district	DC4	2016	George	50,001-100K	68559
district	DC4	2016	George	100,001-150K	119353
district	DC4	2016	George	150,001-200K	170455
district	DC4	2016	George	200,001-300K	250000
district	DC4	2016	George	300,001-500K	331429
district	DC4	2016	George	500,001-800K	\N
district	DC4	2016	George	800,001-1M	\N
district	DC4	2016	George	Above 1M	\N
district	DC6	2016	Gordonia	Under 1.5K	598
district	DC6	2016	Gordonia	1,501-3K	2282
district	DC6	2016	Gordonia	3,001-5K	3452
district	DC6	2016	Gordonia	5,001-10K	5014
district	DC6	2016	Gordonia	10,001-20K	10409
district	DC6	2016	Gordonia	20,001-30K	\N
district	DC6	2016	Gordonia	30,001-40K	\N
district	DC6	2016	Gordonia	40,001-50K	\N
district	DC6	2016	Gordonia	50,001-100K	85714
district	DC6	2016	Gordonia	100,001-150K	113636
district	DC6	2016	Gordonia	150,001-200K	156250
district	DC6	2016	Gordonia	200,001-300K	\N
district	DC6	2016	Gordonia	300,001-500K	\N
district	DC6	2016	Gordonia	500,001-800K	\N
district	DC6	2016	Gordonia	800,001-1M	\N
district	DC6	2016	Gordonia	Above 1M	\N
district	DC10	2016	Graaff-Reinet Camdeboo	Under 1.5K	1033
district	DC10	2016	Graaff-Reinet Camdeboo	1,501-3K	1766
district	DC10	2016	Graaff-Reinet Camdeboo	3,001-5K	3370
district	DC10	2016	Graaff-Reinet Camdeboo	5,001-10K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	10,001-20K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	20,001-30K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	30,001-40K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	40,001-50K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	50,001-100K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	100,001-150K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	150,001-200K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	200,001-300K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	300,001-500K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	500,001-800K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	800,001-1M	\N
district	DC10	2016	Graaff-Reinet Camdeboo	Above 1M	\N
district	DC7	2016	Hanover Emthanjeni	Under 1.5K	\N
district	DC7	2016	Hanover Emthanjeni	1,501-3K	2629
district	DC7	2016	Hanover Emthanjeni	3,001-5K	3991
district	DC7	2016	Hanover Emthanjeni	5,001-10K	5937
district	DC7	2016	Hanover Emthanjeni	10,001-20K	\N
district	DC7	2016	Hanover Emthanjeni	20,001-30K	\N
district	DC7	2016	Hanover Emthanjeni	30,001-40K	\N
district	DC7	2016	Hanover Emthanjeni	40,001-50K	\N
district	DC7	2016	Hanover Emthanjeni	50,001-100K	\N
district	DC7	2016	Hanover Emthanjeni	100,001-150K	\N
district	DC7	2016	Hanover Emthanjeni	150,001-200K	\N
district	DC7	2016	Hanover Emthanjeni	200,001-300K	\N
district	DC4	2016	Knysna	Under 1.5K	\N
district	DC7	2016	Hanover Emthanjeni	300,001-500K	\N
district	DC7	2016	Hanover Emthanjeni	500,001-800K	\N
district	DC7	2016	Hanover Emthanjeni	800,001-1M	\N
district	DC7	2016	Hanover Emthanjeni	Above 1M	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	Under 1.5K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	1,501-3K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	3,001-5K	3207
district	DC19	2016	Harrismith Maluti-A-Phofung	5,001-10K	8315
district	DC19	2016	Harrismith Maluti-A-Phofung	10,001-20K	14235
district	DC19	2016	Harrismith Maluti-A-Phofung	20,001-30K	22846
district	DC19	2016	Harrismith Maluti-A-Phofung	30,001-40K	33812
district	DC19	2016	Harrismith Maluti-A-Phofung	40,001-50K	44737
district	DC19	2016	Harrismith Maluti-A-Phofung	50,001-100K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	100,001-150K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	150,001-200K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	200,001-300K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	300,001-500K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	500,001-800K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	800,001-1M	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	Above 1M	\N
district	DC20	2016	Heilbron Ngwathe	Under 1.5K	\N
district	DC20	2016	Heilbron Ngwathe	1,501-3K	2500
district	DC20	2016	Heilbron Ngwathe	3,001-5K	\N
district	DC20	2016	Heilbron Ngwathe	5,001-10K	8024
district	DC20	2016	Heilbron Ngwathe	10,001-20K	12264
district	DC20	2016	Heilbron Ngwathe	20,001-30K	26846
district	DC20	2016	Heilbron Ngwathe	30,001-40K	37753
district	DC20	2016	Heilbron Ngwathe	40,001-50K	\N
district	DC20	2016	Heilbron Ngwathe	50,001-100K	60000
district	DC20	2016	Heilbron Ngwathe	100,001-150K	\N
district	DC20	2016	Heilbron Ngwathe	150,001-200K	\N
district	DC20	2016	Heilbron Ngwathe	200,001-300K	\N
district	DC20	2016	Heilbron Ngwathe	300,001-500K	\N
district	DC20	2016	Heilbron Ngwathe	500,001-800K	\N
district	DC20	2016	Heilbron Ngwathe	800,001-1M	\N
district	DC20	2016	Heilbron Ngwathe	Above 1M	\N
district	DC24	2016	Helpmekaar uMzinyathi	Under 1.5K	\N
district	DC24	2016	Helpmekaar uMzinyathi	1,501-3K	\N
district	DC24	2016	Helpmekaar uMzinyathi	3,001-5K	3017
district	DC24	2016	Helpmekaar uMzinyathi	5,001-10K	6034
district	DC24	2016	Helpmekaar uMzinyathi	10,001-20K	10340
district	DC24	2016	Helpmekaar uMzinyathi	20,001-30K	\N
district	DC24	2016	Helpmekaar uMzinyathi	30,001-40K	\N
district	DC24	2016	Helpmekaar uMzinyathi	40,001-50K	\N
district	DC24	2016	Helpmekaar uMzinyathi	50,001-100K	\N
district	DC24	2016	Helpmekaar uMzinyathi	100,001-150K	\N
district	DC24	2016	Helpmekaar uMzinyathi	150,001-200K	\N
district	DC24	2016	Helpmekaar uMzinyathi	200,001-300K	\N
district	DC24	2016	Helpmekaar uMzinyathi	300,001-500K	\N
district	DC24	2016	Helpmekaar uMzinyathi	500,001-800K	\N
district	DC24	2016	Helpmekaar uMzinyathi	800,001-1M	\N
district	DC24	2016	Helpmekaar uMzinyathi	Above 1M	\N
district	DC18	2016	Hoopstad Tswelopele	Under 1.5K	\N
district	DC18	2016	Hoopstad Tswelopele	1,501-3K	\N
district	DC18	2016	Hoopstad Tswelopele	3,001-5K	\N
district	DC18	2016	Hoopstad Tswelopele	5,001-10K	\N
district	DC18	2016	Hoopstad Tswelopele	10,001-20K	15317
district	DC18	2016	Hoopstad Tswelopele	20,001-30K	23643
district	DC18	2016	Hoopstad Tswelopele	30,001-40K	\N
district	DC18	2016	Hoopstad Tswelopele	40,001-50K	\N
district	DC18	2016	Hoopstad Tswelopele	50,001-100K	\N
district	DC18	2016	Hoopstad Tswelopele	100,001-150K	\N
district	DC18	2016	Hoopstad Tswelopele	150,001-200K	\N
district	DC18	2016	Hoopstad Tswelopele	200,001-300K	\N
district	DC18	2016	Hoopstad Tswelopele	300,001-500K	\N
district	DC18	2016	Hoopstad Tswelopele	500,001-800K	\N
district	DC18	2016	Hoopstad Tswelopele	800,001-1M	\N
district	DC18	2016	Hoopstad Tswelopele	Above 1M	\N
district	DC7	2016	Hopetown Thembelihle	Under 1.5K	\N
district	DC7	2016	Hopetown Thembelihle	1,501-3K	2607
district	DC7	2016	Hopetown Thembelihle	3,001-5K	\N
district	DC7	2016	Hopetown Thembelihle	5,001-10K	9165
district	DC7	2016	Hopetown Thembelihle	10,001-20K	\N
district	DC7	2016	Hopetown Thembelihle	20,001-30K	21413
district	DC7	2016	Hopetown Thembelihle	30,001-40K	\N
district	DC7	2016	Hopetown Thembelihle	40,001-50K	\N
district	DC7	2016	Hopetown Thembelihle	50,001-100K	\N
district	DC7	2016	Hopetown Thembelihle	100,001-150K	103546
district	DC7	2016	Hopetown Thembelihle	150,001-200K	186743
district	DC7	2016	Hopetown Thembelihle	200,001-300K	260288
district	DC7	2016	Hopetown Thembelihle	300,001-500K	\N
district	DC7	2016	Hopetown Thembelihle	500,001-800K	\N
district	DC7	2016	Hopetown Thembelihle	800,001-1M	\N
district	DC7	2016	Hopetown Thembelihle	Above 1M	\N
district	DC10	2016	Humansdorp Kouga	Under 1.5K	963
district	DC10	2016	Humansdorp Kouga	1,501-3K	2281
district	DC10	2016	Humansdorp Kouga	3,001-5K	\N
district	DC10	2016	Humansdorp Kouga	5,001-10K	5461
district	DC10	2016	Humansdorp Kouga	10,001-20K	15622
district	DC10	2016	Humansdorp Kouga	20,001-30K	28226
district	DC10	2016	Humansdorp Kouga	30,001-40K	38851
district	DC10	2016	Humansdorp Kouga	40,001-50K	45141
district	DC10	2016	Humansdorp Kouga	50,001-100K	83689
district	DC10	2016	Humansdorp Kouga	100,001-150K	102381
district	DC10	2016	Humansdorp Kouga	150,001-200K	\N
district	DC10	2016	Humansdorp Kouga	200,001-300K	280929
district	DC10	2016	Humansdorp Kouga	300,001-500K	351944
district	DC10	2016	Humansdorp Kouga	500,001-800K	695833
district	DC10	2016	Humansdorp Kouga	800,001-1M	\N
district	DC10	2016	Humansdorp Kouga	Above 1M	1083333
district	DC16	2016	Jacobsdal Letsemeng	Under 1.5K	\N
district	DC16	2016	Jacobsdal Letsemeng	1,501-3K	2837
district	DC16	2016	Jacobsdal Letsemeng	3,001-5K	3904
district	DC16	2016	Jacobsdal Letsemeng	5,001-10K	7057
district	DC16	2016	Jacobsdal Letsemeng	10,001-20K	14663
district	DC16	2016	Jacobsdal Letsemeng	20,001-30K	\N
district	DC16	2016	Jacobsdal Letsemeng	30,001-40K	\N
district	DC16	2016	Jacobsdal Letsemeng	40,001-50K	\N
district	DC16	2016	Jacobsdal Letsemeng	50,001-100K	\N
district	DC16	2016	Jacobsdal Letsemeng	100,001-150K	\N
district	DC16	2016	Jacobsdal Letsemeng	150,001-200K	\N
district	DC16	2016	Jacobsdal Letsemeng	200,001-300K	\N
district	DC16	2016	Jacobsdal Letsemeng	300,001-500K	\N
district	DC16	2016	Jacobsdal Letsemeng	500,001-800K	\N
district	DC16	2016	Jacobsdal Letsemeng	800,001-1M	\N
district	DC16	2016	Jacobsdal Letsemeng	Above 1M	\N
district	DC10	2016	Jansenville Ikwezi	Under 1.5K	\N
district	DC10	2016	Jansenville Ikwezi	1,501-3K	2232
district	DC10	2016	Jansenville Ikwezi	3,001-5K	3059
district	DC10	2016	Jansenville Ikwezi	5,001-10K	\N
district	DC10	2016	Jansenville Ikwezi	10,001-20K	\N
district	DC10	2016	Jansenville Ikwezi	20,001-30K	\N
district	DC10	2016	Jansenville Ikwezi	30,001-40K	\N
district	DC10	2016	Jansenville Ikwezi	40,001-50K	\N
district	DC10	2016	Jansenville Ikwezi	50,001-100K	\N
district	DC10	2016	Jansenville Ikwezi	100,001-150K	\N
district	DC10	2016	Jansenville Ikwezi	150,001-200K	\N
district	DC10	2016	Jansenville Ikwezi	200,001-300K	\N
district	DC10	2016	Jansenville Ikwezi	300,001-500K	\N
district	DC10	2016	Jansenville Ikwezi	500,001-800K	\N
district	DC10	2016	Jansenville Ikwezi	800,001-1M	\N
district	DC10	2016	Jansenville Ikwezi	Above 1M	\N
district	DC10	2016	Joubertina Kou-Kamma	Under 1.5K	752
district	DC10	2016	Joubertina Kou-Kamma	1,501-3K	2196
district	DC10	2016	Joubertina Kou-Kamma	3,001-5K	\N
district	DC10	2016	Joubertina Kou-Kamma	5,001-10K	7405
district	DC10	2016	Joubertina Kou-Kamma	10,001-20K	14442
district	DC10	2016	Joubertina Kou-Kamma	20,001-30K	\N
district	DC10	2016	Joubertina Kou-Kamma	30,001-40K	30556
district	DC10	2016	Joubertina Kou-Kamma	40,001-50K	46447
district	DC10	2016	Joubertina Kou-Kamma	50,001-100K	70833
district	DC10	2016	Joubertina Kou-Kamma	100,001-150K	\N
district	DC10	2016	Joubertina Kou-Kamma	150,001-200K	\N
district	DC10	2016	Joubertina Kou-Kamma	200,001-300K	\N
district	DC10	2016	Joubertina Kou-Kamma	300,001-500K	320551
district	DC10	2016	Joubertina Kou-Kamma	500,001-800K	\N
district	DC10	2016	Joubertina Kou-Kamma	800,001-1M	\N
district	DC10	2016	Joubertina Kou-Kamma	Above 1M	\N
district	DC27	2016	Jozini Mkuze	Under 1.5K	\N
district	DC27	2016	Jozini Mkuze	1,501-3K	\N
district	DC27	2016	Jozini Mkuze	3,001-5K	\N
district	DC27	2016	Jozini Mkuze	5,001-10K	\N
district	DC27	2016	Jozini Mkuze	10,001-20K	12381
district	DC27	2016	Jozini Mkuze	20,001-30K	\N
district	DC27	2016	Jozini Mkuze	30,001-40K	37294
district	DC27	2016	Jozini Mkuze	40,001-50K	42270
district	DC27	2016	Jozini Mkuze	50,001-100K	75000
district	DC27	2016	Jozini Mkuze	100,001-150K	\N
district	DC27	2016	Jozini Mkuze	150,001-200K	\N
district	DC27	2016	Jozini Mkuze	200,001-300K	\N
district	DC27	2016	Jozini Mkuze	300,001-500K	\N
district	DC27	2016	Jozini Mkuze	500,001-800K	\N
district	DC27	2016	Jozini Mkuze	800,001-1M	\N
district	DC27	2016	Jozini Mkuze	Above 1M	\N
district	DC8	2016	Kenhardt Kai !Garib	Under 1.5K	766
district	DC8	2016	Kenhardt Kai !Garib	1,501-3K	1757
district	DC8	2016	Kenhardt Kai !Garib	3,001-5K	\N
district	DC8	2016	Kenhardt Kai !Garib	5,001-10K	9002
district	DC8	2016	Kenhardt Kai !Garib	10,001-20K	19205
district	DC8	2016	Kenhardt Kai !Garib	20,001-30K	30000
district	DC8	2016	Kenhardt Kai !Garib	30,001-40K	\N
district	DC8	2016	Kenhardt Kai !Garib	40,001-50K	\N
district	DC8	2016	Kenhardt Kai !Garib	50,001-100K	95833
district	DC8	2016	Kenhardt Kai !Garib	100,001-150K	102963
district	DC8	2016	Kenhardt Kai !Garib	150,001-200K	\N
district	DC8	2016	Kenhardt Kai !Garib	200,001-300K	245187
district	DC8	2016	Kenhardt Kai !Garib	300,001-500K	325000
district	DC8	2016	Kenhardt Kai !Garib	500,001-800K	\N
district	DC8	2016	Kenhardt Kai !Garib	800,001-1M	\N
district	DC8	2016	Kenhardt Kai !Garib	Above 1M	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Under 1.5K	1450
district	DC9	2016	Kimberley / HAY Frances Baard	1,501-3K	2556
district	DC9	2016	Kimberley / HAY Frances Baard	3,001-5K	3876
district	DC9	2016	Kimberley / HAY Frances Baard	5,001-10K	8315
district	DC9	2016	Kimberley / HAY Frances Baard	10,001-20K	13302
district	DC4	2016	Knysna	1,501-3K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	20,001-30K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	30,001-40K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	40,001-50K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	50,001-100K	62155
district	DC9	2016	Kimberley / HAY Frances Baard	100,001-150K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	150,001-200K	163971
district	DC9	2016	Kimberley / HAY Frances Baard	200,001-300K	290698
district	DC9	2016	Kimberley / HAY Frances Baard	300,001-500K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	500,001-800K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	800,001-1M	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Above 1M	1086957
municipality	BUF	2016	King Williams Town Baffalo City	Under 1.5K	749
municipality	BUF	2016	King Williams Town Baffalo City	1,501-3K	1841
municipality	BUF	2016	King Williams Town Baffalo City	3,001-5K	\N
municipality	BUF	2016	King Williams Town Baffalo City	5,001-10K	6729
municipality	BUF	2016	King Williams Town Baffalo City	10,001-20K	12687
municipality	BUF	2016	King Williams Town Baffalo City	20,001-30K	\N
municipality	BUF	2016	King Williams Town Baffalo City	30,001-40K	\N
municipality	BUF	2016	King Williams Town Baffalo City	40,001-50K	\N
municipality	BUF	2016	King Williams Town Baffalo City	50,001-100K	\N
municipality	BUF	2016	King Williams Town Baffalo City	100,001-150K	\N
municipality	BUF	2016	King Williams Town Baffalo City	150,001-200K	\N
municipality	BUF	2016	King Williams Town Baffalo City	200,001-300K	\N
municipality	BUF	2016	King Williams Town Baffalo City	300,001-500K	382514
municipality	BUF	2016	King Williams Town Baffalo City	500,001-800K	\N
municipality	BUF	2016	King Williams Town Baffalo City	800,001-1M	\N
municipality	BUF	2016	King Williams Town Baffalo City	Above 1M	\N
district	DC4	2016	Knysna	Under 1.5K	\N
district	DC4	2016	Knysna	1,501-3K	\N
district	DC4	2016	Knysna	3,001-5K	\N
district	DC4	2016	Knysna	5,001-10K	9417
district	DC4	2016	Knysna	10,001-20K	15332
district	DC4	2016	Knysna	20,001-30K	\N
district	DC4	2016	Knysna	30,001-40K	\N
district	DC4	2016	Knysna	40,001-50K	49327
district	DC4	2016	Knysna	50,001-100K	71971
district	DC4	2016	Knysna	100,001-150K	121701
district	DC4	2016	Knysna	150,001-200K	176182
district	DC4	2016	Knysna	200,001-300K	300000
district	DC4	2016	Knysna	300,001-500K	392857
district	DC4	2016	Knysna	500,001-800K	545455
district	DC4	2016	Knysna	800,001-1M	\N
district	DC4	2016	Knysna	Above 1M	\N
district	DC43	2016	Kokstad	Under 1.5K	\N
district	DC43	2016	Kokstad	1,501-3K	\N
district	DC43	2016	Kokstad	3,001-5K	4644
district	DC43	2016	Kokstad	5,001-10K	8163
district	DC43	2016	Kokstad	10,001-20K	14952
district	DC43	2016	Kokstad	20,001-30K	25364
district	DC43	2016	Kokstad	30,001-40K	36184
district	DC43	2016	Kokstad	40,001-50K	\N
district	DC43	2016	Kokstad	50,001-100K	77329
district	DC43	2016	Kokstad	100,001-150K	102222
district	DC43	2016	Kokstad	150,001-200K	\N
district	DC43	2016	Kokstad	200,001-300K	235000
district	DC43	2016	Kokstad	300,001-500K	\N
district	DC43	2016	Kokstad	500,001-800K	\N
district	DC43	2016	Kokstad	800,001-1M	\N
district	DC43	2016	Kokstad	Above 1M	\N
district	DC32	2016	Komatipoort Nkomazi	Under 1.5K	\N
district	DC32	2016	Komatipoort Nkomazi	1,501-3K	2577
district	DC32	2016	Komatipoort Nkomazi	3,001-5K	\N
district	DC32	2016	Komatipoort Nkomazi	5,001-10K	8145
district	DC32	2016	Komatipoort Nkomazi	10,001-20K	17498
district	DC32	2016	Komatipoort Nkomazi	20,001-30K	21196
district	DC32	2016	Komatipoort Nkomazi	30,001-40K	32484
district	DC32	2016	Komatipoort Nkomazi	40,001-50K	\N
district	DC32	2016	Komatipoort Nkomazi	50,001-100K	66751
district	DC32	2016	Komatipoort Nkomazi	100,001-150K	123686
district	DC32	2016	Komatipoort Nkomazi	150,001-200K	160989
district	DC32	2016	Komatipoort Nkomazi	200,001-300K	224352
district	DC32	2016	Komatipoort Nkomazi	300,001-500K	329171
district	DC32	2016	Komatipoort Nkomazi	500,001-800K	\N
district	DC32	2016	Komatipoort Nkomazi	800,001-1M	\N
district	DC32	2016	Komatipoort Nkomazi	Above 1M	\N
district	DC12	2016	Komga Great Kei	Under 1.5K	\N
district	DC12	2016	Komga Great Kei	1,501-3K	2469
district	DC12	2016	Komga Great Kei	3,001-5K	\N
district	DC12	2016	Komga Great Kei	5,001-10K	8540
district	DC12	2016	Komga Great Kei	10,001-20K	\N
district	DC12	2016	Komga Great Kei	20,001-30K	23597
district	DC12	2016	Komga Great Kei	30,001-40K	31914
district	DC12	2016	Komga Great Kei	40,001-50K	\N
district	DC12	2016	Komga Great Kei	50,001-100K	\N
district	DC12	2016	Komga Great Kei	100,001-150K	\N
district	DC12	2016	Komga Great Kei	150,001-200K	\N
district	DC12	2016	Komga Great Kei	200,001-300K	\N
district	DC12	2016	Komga Great Kei	300,001-500K	\N
district	DC12	2016	Komga Great Kei	500,001-800K	\N
district	DC12	2016	Komga Great Kei	800,001-1M	\N
district	DC12	2016	Komga Great Kei	Above 1M	\N
district	DC20	2016	Koppies Ngwathe	Under 1.5K	\N
district	DC20	2016	Koppies Ngwathe	1,501-3K	\N
district	DC20	2016	Koppies Ngwathe	3,001-5K	\N
district	DC20	2016	Koppies Ngwathe	5,001-10K	8067
district	DC20	2016	Koppies Ngwathe	10,001-20K	12087
district	DC20	2016	Koppies Ngwathe	20,001-30K	29483
district	DC20	2016	Koppies Ngwathe	30,001-40K	\N
district	DC20	2016	Koppies Ngwathe	40,001-50K	\N
district	DC20	2016	Koppies Ngwathe	50,001-100K	\N
district	DC20	2016	Koppies Ngwathe	100,001-150K	\N
district	DC20	2016	Koppies Ngwathe	150,001-200K	\N
district	DC20	2016	Koppies Ngwathe	200,001-300K	\N
district	DC20	2016	Koppies Ngwathe	300,001-500K	\N
district	DC20	2016	Koppies Ngwathe	500,001-800K	\N
district	DC20	2016	Koppies Ngwathe	800,001-1M	\N
district	DC20	2016	Koppies Ngwathe	Above 1M	\N
district	DC20	2016	Kroonstad Moqhaka	Under 1.5K	\N
district	DC20	2016	Kroonstad Moqhaka	1,501-3K	\N
district	DC20	2016	Kroonstad Moqhaka	3,001-5K	\N
district	DC20	2016	Kroonstad Moqhaka	5,001-10K	8362
district	DC20	2016	Kroonstad Moqhaka	10,001-20K	13035
district	DC20	2016	Kroonstad Moqhaka	20,001-30K	24365
district	DC20	2016	Kroonstad Moqhaka	30,001-40K	\N
district	DC20	2016	Kroonstad Moqhaka	40,001-50K	\N
district	DC20	2016	Kroonstad Moqhaka	50,001-100K	\N
district	DC20	2016	Kroonstad Moqhaka	100,001-150K	\N
district	DC20	2016	Kroonstad Moqhaka	150,001-200K	\N
district	DC20	2016	Kroonstad Moqhaka	200,001-300K	\N
district	DC20	2016	Kroonstad Moqhaka	300,001-500K	\N
district	DC20	2016	Kroonstad Moqhaka	500,001-800K	\N
district	DC20	2016	Kroonstad Moqhaka	800,001-1M	\N
district	DC20	2016	Kroonstad Moqhaka	Above 1M	\N
district	DC45	2016	Kuruman Ga-Segonyana	Under 1.5K	621
district	DC45	2016	Kuruman Ga-Segonyana	1,501-3K	2198
district	DC45	2016	Kuruman Ga-Segonyana	3,001-5K	4044
district	DC45	2016	Kuruman Ga-Segonyana	5,001-10K	6327
district	DC45	2016	Kuruman Ga-Segonyana	10,001-20K	10534
district	DC45	2016	Kuruman Ga-Segonyana	20,001-30K	\N
district	DC45	2016	Kuruman Ga-Segonyana	30,001-40K	\N
district	DC45	2016	Kuruman Ga-Segonyana	40,001-50K	\N
district	DC45	2016	Kuruman Ga-Segonyana	50,001-100K	54000
district	DC45	2016	Kuruman Ga-Segonyana	100,001-150K	\N
district	DC45	2016	Kuruman Ga-Segonyana	150,001-200K	\N
district	DC45	2016	Kuruman Ga-Segonyana	200,001-300K	266667
district	DC45	2016	Kuruman Ga-Segonyana	300,001-500K	\N
district	DC45	2016	Kuruman Ga-Segonyana	500,001-800K	\N
district	DC45	2016	Kuruman Ga-Segonyana	800,001-1M	\N
district	DC45	2016	Kuruman Ga-Segonyana	Above 1M	\N
district	DC4	2016	Ladismith Kannaland	Under 1.5K	666
district	DC4	2016	Ladismith Kannaland	1,501-3K	2452
district	DC4	2016	Ladismith Kannaland	3,001-5K	3799
district	DC4	2016	Ladismith Kannaland	5,001-10K	6112
district	DC4	2016	Ladismith Kannaland	10,001-20K	15006
district	DC4	2016	Ladismith Kannaland	20,001-30K	22437
district	DC4	2016	Ladismith Kannaland	30,001-40K	32759
district	DC4	2016	Ladismith Kannaland	40,001-50K	\N
district	DC4	2016	Ladismith Kannaland	50,001-100K	67262
district	DC4	2016	Ladismith Kannaland	100,001-150K	\N
district	DC4	2016	Ladismith Kannaland	150,001-200K	165156
district	DC4	2016	Ladismith Kannaland	200,001-300K	\N
district	DC4	2016	Ladismith Kannaland	300,001-500K	\N
district	DC4	2016	Ladismith Kannaland	500,001-800K	\N
district	DC4	2016	Ladismith Kannaland	800,001-1M	\N
district	DC4	2016	Ladismith Kannaland	Above 1M	\N
district	DC19	2016	Ladybrand Mantsopa	Under 1.5K	133
district	DC19	2016	Ladybrand Mantsopa	1,501-3K	\N
district	DC19	2016	Ladybrand Mantsopa	3,001-5K	4502
district	DC19	2016	Ladybrand Mantsopa	5,001-10K	8119
district	DC19	2016	Ladybrand Mantsopa	10,001-20K	13041
district	DC19	2016	Ladybrand Mantsopa	20,001-30K	20179
district	DC19	2016	Ladybrand Mantsopa	30,001-40K	\N
district	DC19	2016	Ladybrand Mantsopa	40,001-50K	\N
district	DC19	2016	Ladybrand Mantsopa	50,001-100K	\N
district	DC19	2016	Ladybrand Mantsopa	100,001-150K	\N
district	DC19	2016	Ladybrand Mantsopa	150,001-200K	\N
district	DC19	2016	Ladybrand Mantsopa	200,001-300K	\N
district	DC19	2016	Ladybrand Mantsopa	300,001-500K	\N
district	DC19	2016	Ladybrand Mantsopa	500,001-800K	\N
district	DC19	2016	Ladybrand Mantsopa	800,001-1M	\N
district	DC19	2016	Ladybrand Mantsopa	Above 1M	\N
district	DC23	2016	Ladysmith Emnambithi	Under 1.5K	\N
district	DC23	2016	Ladysmith Emnambithi	1,501-3K	\N
district	DC23	2016	Ladysmith Emnambithi	3,001-5K	4544
district	DC23	2016	Ladysmith Emnambithi	5,001-10K	7032
district	DC23	2016	Ladysmith Emnambithi	10,001-20K	13457
district	DC23	2016	Ladysmith Emnambithi	20,001-30K	20332
district	DC23	2016	Ladysmith Emnambithi	30,001-40K	\N
district	DC23	2016	Ladysmith Emnambithi	40,001-50K	43609
district	DC23	2016	Ladysmith Emnambithi	50,001-100K	75401
district	DC23	2016	Ladysmith Emnambithi	100,001-150K	\N
district	DC23	2016	Ladysmith Emnambithi	150,001-200K	\N
district	DC23	2016	Ladysmith Emnambithi	200,001-300K	210000
district	DC23	2016	Ladysmith Emnambithi	300,001-500K	\N
district	DC23	2016	Ladysmith Emnambithi	500,001-800K	\N
district	DC23	2016	Ladysmith Emnambithi	800,001-1M	\N
district	DC23	2016	Ladysmith Emnambithi	Above 1M	\N
district	DC5	2016	Laingsburg	Under 1.5K	536
district	DC5	2016	Laingsburg	1,501-3K	2139
district	DC5	2016	Laingsburg	3,001-5K	\N
district	DC5	2016	Laingsburg	5,001-10K	\N
district	DC5	2016	Laingsburg	10,001-20K	\N
district	DC5	2016	Laingsburg	20,001-30K	\N
district	DC5	2016	Laingsburg	30,001-40K	\N
district	DC5	2016	Laingsburg	40,001-50K	\N
district	DC5	2016	Laingsburg	50,001-100K	\N
district	DC5	2016	Laingsburg	100,001-150K	\N
district	DC5	2016	Laingsburg	150,001-200K	\N
district	DC5	2016	Laingsburg	200,001-300K	\N
district	DC5	2016	Laingsburg	300,001-500K	\N
district	DC5	2016	Laingsburg	500,001-800K	\N
district	DC5	2016	Laingsburg	800,001-1M	\N
district	DC5	2016	Laingsburg	Above 1M	\N
district	DC30	2016	Leandra Gonovan Mbeki	Under 1.5K	909
district	DC30	2016	Leandra Gonovan Mbeki	1,501-3K	\N
district	DC30	2016	Leandra Gonovan Mbeki	3,001-5K	\N
district	DC30	2016	Leandra Gonovan Mbeki	5,001-10K	6338
district	DC30	2016	Leandra Gonovan Mbeki	10,001-20K	14056
district	DC30	2016	Leandra Gonovan Mbeki	20,001-30K	23962
district	DC30	2016	Leandra Gonovan Mbeki	30,001-40K	36861
district	DC30	2016	Leandra Gonovan Mbeki	40,001-50K	44421
district	DC30	2016	Leandra Gonovan Mbeki	50,001-100K	62134
district	DC30	2016	Leandra Gonovan Mbeki	100,001-150K	129298
district	DC30	2016	Leandra Gonovan Mbeki	150,001-200K	\N
district	DC30	2016	Leandra Gonovan Mbeki	200,001-300K	259750
district	DC30	2016	Leandra Gonovan Mbeki	300,001-500K	\N
district	DC30	2016	Leandra Gonovan Mbeki	500,001-800K	\N
district	DC30	2016	Leandra Gonovan Mbeki	800,001-1M	\N
district	DC30	2016	Leandra Gonovan Mbeki	Above 1M	\N
district	DC19	2016	Lindley Nketoana	Under 1.5K	\N
district	DC19	2016	Lindley Nketoana	1,501-3K	\N
district	DC19	2016	Lindley Nketoana	3,001-5K	\N
district	DC19	2016	Lindley Nketoana	5,001-10K	6877
district	DC19	2016	Lindley Nketoana	10,001-20K	14626
district	DC19	2016	Lindley Nketoana	20,001-30K	26367
district	DC19	2016	Lindley Nketoana	30,001-40K	32609
district	DC19	2016	Lindley Nketoana	40,001-50K	\N
district	DC19	2016	Lindley Nketoana	50,001-100K	\N
district	DC19	2016	Lindley Nketoana	100,001-150K	\N
district	DC19	2016	Lindley Nketoana	150,001-200K	\N
district	DC19	2016	Lindley Nketoana	200,001-300K	\N
district	DC19	2016	Lindley Nketoana	300,001-500K	\N
district	DC19	2016	Lindley Nketoana	500,001-800K	\N
district	DC19	2016	Lindley Nketoana	800,001-1M	\N
district	DC19	2016	Lindley Nketoana	Above 1M	\N
district	DC26	2016	Louwsburg Abaqulusi	Under 1.5K	\N
district	DC26	2016	Louwsburg Abaqulusi	1,501-3K	2042
district	DC26	2016	Louwsburg Abaqulusi	3,001-5K	\N
district	DC26	2016	Louwsburg Abaqulusi	5,001-10K	6737
district	DC26	2016	Louwsburg Abaqulusi	10,001-20K	16588
district	DC26	2016	Louwsburg Abaqulusi	20,001-30K	28903
district	DC26	2016	Louwsburg Abaqulusi	30,001-40K	\N
district	DC26	2016	Louwsburg Abaqulusi	40,001-50K	\N
district	DC26	2016	Louwsburg Abaqulusi	50,001-100K	\N
district	DC26	2016	Louwsburg Abaqulusi	100,001-150K	113858
district	DC26	2016	Louwsburg Abaqulusi	150,001-200K	\N
district	DC26	2016	Louwsburg Abaqulusi	200,001-300K	\N
district	DC26	2016	Louwsburg Abaqulusi	300,001-500K	\N
district	DC26	2016	Louwsburg Abaqulusi	500,001-800K	\N
district	DC26	2016	Louwsburg Abaqulusi	800,001-1M	\N
district	DC26	2016	Louwsburg Abaqulusi	Above 1M	\N
district	DC14	2016	Maclear Elundini	Under 1.5K	\N
district	DC14	2016	Maclear Elundini	1,501-3K	2805
district	DC14	2016	Maclear Elundini	3,001-5K	3974
district	DC14	2016	Maclear Elundini	5,001-10K	8037
district	DC14	2016	Maclear Elundini	10,001-20K	14157
district	DC14	2016	Maclear Elundini	20,001-30K	\N
district	DC14	2016	Maclear Elundini	30,001-40K	\N
district	DC14	2016	Maclear Elundini	40,001-50K	\N
district	DC14	2016	Maclear Elundini	50,001-100K	\N
district	DC14	2016	Maclear Elundini	100,001-150K	\N
district	DC14	2016	Maclear Elundini	150,001-200K	\N
district	DC14	2016	Maclear Elundini	200,001-300K	\N
district	DC14	2016	Maclear Elundini	300,001-500K	\N
district	DC14	2016	Maclear Elundini	500,001-800K	\N
district	DC14	2016	Maclear Elundini	800,001-1M	\N
district	DC14	2016	Maclear Elundini	Above 1M	\N
district	DC38	2016	Mahikeng	Under 1.5K	20
district	DC38	2016	Mahikeng	1,501-3K	2921
district	DC38	2016	Mahikeng	3,001-5K	3277
district	DC38	2016	Mahikeng	5,001-10K	6748
district	DC38	2016	Mahikeng	10,001-20K	13694
district	DC38	2016	Mahikeng	20,001-30K	\N
district	DC38	2016	Mahikeng	30,001-40K	36111
district	DC38	2016	Mahikeng	40,001-50K	40909
district	DC38	2016	Mahikeng	50,001-100K	76471
district	DC38	2016	Mahikeng	100,001-150K	\N
district	DC38	2016	Mahikeng	150,001-200K	\N
district	DC38	2016	Mahikeng	200,001-300K	\N
district	DC38	2016	Mahikeng	300,001-500K	\N
district	DC38	2016	Mahikeng	500,001-800K	\N
district	DC38	2016	Mahikeng	800,001-1M	\N
district	DC38	2016	Mahikeng	Above 1M	\N
district	DC1	2016	Malmesbury Swartland	Under 1.5K	30
district	DC1	2016	Malmesbury Swartland	1,501-3K	2349
district	DC1	2016	Malmesbury Swartland	3,001-5K	\N
district	DC1	2016	Malmesbury Swartland	5,001-10K	7836
district	DC1	2016	Malmesbury Swartland	10,001-20K	13166
district	DC1	2016	Malmesbury Swartland	20,001-30K	22465
district	DC1	2016	Malmesbury Swartland	30,001-40K	38499
district	DC1	2016	Malmesbury Swartland	40,001-50K	45898
district	DC1	2016	Malmesbury Swartland	50,001-100K	65249
district	DC1	2016	Malmesbury Swartland	100,001-150K	120614
district	DC1	2016	Malmesbury Swartland	150,001-200K	170588
district	DC1	2016	Malmesbury Swartland	200,001-300K	253105
district	DC1	2016	Malmesbury Swartland	300,001-500K	475000
district	DC1	2016	Malmesbury Swartland	500,001-800K	\N
district	DC1	2016	Malmesbury Swartland	800,001-1M	\N
district	DC1	2016	Malmesbury Swartland	Above 1M	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	Under 1.5K	978
district	DC37	2016	Marikana (Rustenburg) Bonjala	1,501-3K	2569
district	DC37	2016	Marikana (Rustenburg) Bonjala	3,001-5K	3755
district	DC37	2016	Marikana (Rustenburg) Bonjala	5,001-10K	8179
district	DC37	2016	Marikana (Rustenburg) Bonjala	10,001-20K	16290
district	DC37	2016	Marikana (Rustenburg) Bonjala	20,001-30K	24583
district	DC37	2016	Marikana (Rustenburg) Bonjala	30,001-40K	34483
district	DC37	2016	Marikana (Rustenburg) Bonjala	40,001-50K	45404
district	DC37	2016	Marikana (Rustenburg) Bonjala	50,001-100K	69359
district	DC37	2016	Marikana (Rustenburg) Bonjala	100,001-150K	125148
district	DC37	2016	Marikana (Rustenburg) Bonjala	150,001-200K	171567
district	DC37	2016	Marikana (Rustenburg) Bonjala	200,001-300K	255788
district	DC37	2016	Marikana (Rustenburg) Bonjala	300,001-500K	392406
district	DC37	2016	Marikana (Rustenburg) Bonjala	500,001-800K	583092
district	DC37	2016	Marikana (Rustenburg) Bonjala	800,001-1M	929803
district	DC37	2016	Marikana (Rustenburg) Bonjala	Above 1M	\N
district	DC36	2016	Marken	Under 1.5K	\N
district	DC36	2016	Marken	1,501-3K	2993
district	DC36	2016	Marken	3,001-5K	4100
district	DC36	2016	Marken	5,001-10K	7546
district	DC36	2016	Marken	10,001-20K	13071
district	DC36	2016	Marken	20,001-30K	23977
district	DC36	2016	Marken	30,001-40K	\N
district	DC36	2016	Marken	40,001-50K	\N
district	DC36	2016	Marken	50,001-100K	69892
district	DC36	2016	Marken	100,001-150K	\N
district	DC36	2016	Marken	150,001-200K	\N
district	DC36	2016	Marken	200,001-300K	\N
district	DC36	2016	Marken	300,001-500K	\N
district	DC36	2016	Marken	500,001-800K	\N
district	DC36	2016	Marken	800,001-1M	\N
district	DC36	2016	Marken	Above 1M	\N
district	DC19	2016	Marquard Setso	Under 1.5K	\N
district	DC19	2016	Marquard Setso	1,501-3K	\N
district	DC19	2016	Marquard Setso	3,001-5K	\N
district	DC19	2016	Marquard Setso	5,001-10K	7895
district	DC19	2016	Marquard Setso	10,001-20K	11735
district	DC19	2016	Marquard Setso	20,001-30K	\N
district	DC19	2016	Marquard Setso	30,001-40K	\N
district	DC19	2016	Marquard Setso	40,001-50K	\N
district	DC19	2016	Marquard Setso	50,001-100K	\N
district	DC19	2016	Marquard Setso	100,001-150K	\N
district	DC19	2016	Marquard Setso	150,001-200K	\N
district	DC19	2016	Marquard Setso	200,001-300K	\N
district	DC19	2016	Marquard Setso	300,001-500K	\N
district	DC19	2016	Marquard Setso	500,001-800K	\N
district	DC19	2016	Marquard Setso	800,001-1M	\N
district	DC19	2016	Marquard Setso	Above 1M	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	Under 1.5K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	1,501-3K	2763
district	DC13	2016	Middelburg EC Inxuba Yethemba	3,001-5K	3784
district	DC13	2016	Middelburg EC Inxuba Yethemba	5,001-10K	6027
district	DC13	2016	Middelburg EC Inxuba Yethemba	10,001-20K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	20,001-30K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	30,001-40K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	40,001-50K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	50,001-100K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	100,001-150K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	150,001-200K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	200,001-300K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	300,001-500K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	500,001-800K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	800,001-1M	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	Above 1M	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Under 1.5K	2
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	1,501-3K	2410
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	3,001-5K	4233
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	5,001-10K	8628
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	10,001-20K	14709
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	20,001-30K	26285
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	30,001-40K	36526
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	40,001-50K	44534
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	50,001-100K	71096
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	100,001-150K	126772
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	150,001-200K	167862
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	200,001-300K	249606
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	300,001-500K	359924
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	500,001-800K	519545
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	800,001-1M	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Above 1M	\N
district	DC39	2016	Moloporivier Bophirima	Under 1.5K	\N
district	DC39	2016	Moloporivier Bophirima	1,501-3K	\N
district	DC39	2016	Moloporivier Bophirima	3,001-5K	\N
district	DC39	2016	Moloporivier Bophirima	5,001-10K	5287
district	DC39	2016	Moloporivier Bophirima	10,001-20K	14321
district	DC39	2016	Moloporivier Bophirima	20,001-30K	\N
district	DC39	2016	Moloporivier Bophirima	30,001-40K	\N
district	DC39	2016	Moloporivier Bophirima	40,001-50K	\N
district	DC39	2016	Moloporivier Bophirima	50,001-100K	\N
district	DC39	2016	Moloporivier Bophirima	100,001-150K	\N
district	DC39	2016	Moloporivier Bophirima	150,001-200K	\N
district	DC39	2016	Moloporivier Bophirima	200,001-300K	\N
district	DC39	2016	Moloporivier Bophirima	300,001-500K	\N
district	DC39	2016	Moloporivier Bophirima	500,001-800K	\N
district	DC39	2016	Moloporivier Bophirima	800,001-1M	\N
district	DC39	2016	Moloporivier Bophirima	Above 1M	\N
district	DC13	2016	Molteno Inkwanca	Under 1.5K	\N
district	DC13	2016	Molteno Inkwanca	1,501-3K	2439
district	DC13	2016	Molteno Inkwanca	3,001-5K	3003
district	DC13	2016	Molteno Inkwanca	5,001-10K	8035
district	DC13	2016	Molteno Inkwanca	10,001-20K	\N
district	DC13	2016	Molteno Inkwanca	20,001-30K	\N
district	DC13	2016	Molteno Inkwanca	30,001-40K	\N
district	DC13	2016	Molteno Inkwanca	40,001-50K	\N
district	DC13	2016	Molteno Inkwanca	50,001-100K	\N
district	DC13	2016	Molteno Inkwanca	100,001-150K	\N
district	DC13	2016	Molteno Inkwanca	150,001-200K	\N
district	DC13	2016	Molteno Inkwanca	200,001-300K	\N
district	DC13	2016	Molteno Inkwanca	300,001-500K	\N
district	DC13	2016	Molteno Inkwanca	500,001-800K	\N
district	DC13	2016	Molteno Inkwanca	800,001-1M	\N
district	DC13	2016	Molteno Inkwanca	Above 1M	\N
district	DC2	2016	Montagu Langeberg	Under 1.5K	306
district	DC2	2016	Montagu Langeberg	1,501-3K	2701
district	DC2	2016	Montagu Langeberg	3,001-5K	4472
district	DC2	2016	Montagu Langeberg	5,001-10K	7777
district	DC2	2016	Montagu Langeberg	10,001-20K	15393
district	DC2	2016	Montagu Langeberg	20,001-30K	21645
district	DC2	2016	Montagu Langeberg	30,001-40K	35000
district	DC2	2016	Montagu Langeberg	40,001-50K	45600
district	DC2	2016	Montagu Langeberg	50,001-100K	63183
district	DC2	2016	Montagu Langeberg	100,001-150K	\N
district	DC2	2016	Montagu Langeberg	150,001-200K	\N
district	DC2	2016	Montagu Langeberg	200,001-300K	\N
district	DC2	2016	Montagu Langeberg	300,001-500K	\N
district	DC2	2016	Montagu Langeberg	500,001-800K	\N
district	DC2	2016	Montagu Langeberg	800,001-1M	\N
district	DC2	2016	Montagu Langeberg	Above 1M	\N
district	DC4	2016	Mosselbaai	Under 1.5K	\N
district	DC4	2016	Mosselbaai	1,501-3K	\N
district	DC4	2016	Mosselbaai	3,001-5K	\N
district	DC4	2016	Mosselbaai	5,001-10K	5907
district	DC4	2016	Mosselbaai	10,001-20K	17119
district	DC4	2016	Mosselbaai	20,001-30K	22798
district	DC4	2016	Mosselbaai	30,001-40K	\N
district	DC4	2016	Mosselbaai	40,001-50K	47784
district	DC4	2016	Mosselbaai	50,001-100K	86158
district	DC4	2016	Mosselbaai	100,001-150K	121062
district	DC4	2016	Mosselbaai	150,001-200K	181022
district	DC4	2016	Mosselbaai	200,001-300K	\N
district	DC4	2016	Mosselbaai	300,001-500K	\N
district	DC4	2016	Mosselbaai	500,001-800K	\N
district	DC4	2016	Mosselbaai	800,001-1M	\N
district	DC4	2016	Mosselbaai	Above 1M	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	Under 1.5K	988
district	DC15	2016	Mthatha King Sabata Dalindyebo	1,501-3K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	3,001-5K	4589
district	DC15	2016	Mthatha King Sabata Dalindyebo	5,001-10K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	10,001-20K	15685
district	DC15	2016	Mthatha King Sabata Dalindyebo	20,001-30K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	30,001-40K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	40,001-50K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	50,001-100K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	100,001-150K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	150,001-200K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	200,001-300K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	300,001-500K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	500,001-800K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	800,001-1M	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	Above 1M	\N
district	DC5	2016	Murraysburg	Under 1.5K	\N
district	DC5	2016	Murraysburg	1,501-3K	2348
district	DC5	2016	Murraysburg	3,001-5K	\N
district	DC5	2016	Murraysburg	5,001-10K	\N
district	DC5	2016	Murraysburg	10,001-20K	\N
district	DC5	2016	Murraysburg	20,001-30K	29470
district	DC5	2016	Murraysburg	30,001-40K	\N
district	DC5	2016	Murraysburg	40,001-50K	\N
district	DC5	2016	Murraysburg	50,001-100K	\N
district	DC5	2016	Murraysburg	100,001-150K	\N
district	DC5	2016	Murraysburg	150,001-200K	\N
district	DC5	2016	Murraysburg	200,001-300K	\N
district	DC5	2016	Murraysburg	300,001-500K	\N
district	DC5	2016	Murraysburg	500,001-800K	\N
district	DC5	2016	Murraysburg	800,001-1M	\N
district	DC5	2016	Murraysburg	Above 1M	\N
district	DC34	2016	Musina	Under 1.5K	18
district	DC34	2016	Musina	1,501-3K	\N
district	DC34	2016	Musina	3,001-5K	3788
district	DC34	2016	Musina	5,001-10K	5714
district	DC34	2016	Musina	10,001-20K	\N
district	DC34	2016	Musina	20,001-30K	\N
district	DC34	2016	Musina	30,001-40K	31008
district	DC34	2016	Musina	40,001-50K	43836
district	DC34	2016	Musina	50,001-100K	56000
district	DC34	2016	Musina	100,001-150K	\N
district	DC34	2016	Musina	150,001-200K	\N
district	DC34	2016	Musina	200,001-300K	\N
district	DC34	2016	Musina	300,001-500K	\N
district	DC34	2016	Musina	500,001-800K	\N
district	DC34	2016	Musina	800,001-1M	\N
district	DC34	2016	Musina	Above 1M	2615732
district	DC6	2016	Namakwa	Under 1.5K	497
district	DC6	2016	Namakwa	1,501-3K	2076
district	DC6	2016	Namakwa	3,001-5K	3540
district	DC6	2016	Namakwa	5,001-10K	\N
district	DC6	2016	Namakwa	10,001-20K	18421
district	DC6	2016	Namakwa	20,001-30K	28205
district	DC6	2016	Namakwa	30,001-40K	\N
district	DC6	2016	Namakwa	40,001-50K	\N
district	DC6	2016	Namakwa	50,001-100K	54167
district	DC6	2016	Namakwa	100,001-150K	\N
district	DC6	2016	Namakwa	150,001-200K	\N
district	DC6	2016	Namakwa	200,001-300K	\N
district	DC6	2016	Namakwa	300,001-500K	\N
district	DC6	2016	Namakwa	500,001-800K	\N
district	DC6	2016	Namakwa	800,001-1M	\N
district	DC6	2016	Namakwa	Above 1M	\N
district	DC32	2016	Nelspruit Mbombela	Under 1.5K	1200
district	DC32	2016	Nelspruit Mbombela	1,501-3K	2472
district	DC32	2016	Nelspruit Mbombela	3,001-5K	\N
district	DC32	2016	Nelspruit Mbombela	5,001-10K	8207
district	DC32	2016	Nelspruit Mbombela	10,001-20K	14546
district	DC32	2016	Nelspruit Mbombela	20,001-30K	25976
district	DC32	2016	Nelspruit Mbombela	30,001-40K	35060
district	DC32	2016	Nelspruit Mbombela	40,001-50K	45164
district	DC32	2016	Nelspruit Mbombela	50,001-100K	79353
district	DC32	2016	Nelspruit Mbombela	100,001-150K	124705
district	DC32	2016	Nelspruit Mbombela	150,001-200K	179679
district	DC32	2016	Nelspruit Mbombela	200,001-300K	245671
district	DC32	2016	Nelspruit Mbombela	300,001-500K	357132
district	DC32	2016	Nelspruit Mbombela	500,001-800K	526707
district	DC32	2016	Nelspruit Mbombela	800,001-1M	\N
district	DC32	2016	Nelspruit Mbombela	Above 1M	\N
district	DC25	2016	Newcastle	Under 1.5K	1400
district	DC25	2016	Newcastle	1,501-3K	2011
district	DC25	2016	Newcastle	3,001-5K	\N
district	DC25	2016	Newcastle	5,001-10K	8417
district	DC25	2016	Newcastle	10,001-20K	14377
district	DC25	2016	Newcastle	20,001-30K	24414
district	DC25	2016	Newcastle	30,001-40K	33846
district	DC25	2016	Newcastle	40,001-50K	43651
district	DC25	2016	Newcastle	50,001-100K	\N
district	DC25	2016	Newcastle	100,001-150K	121212
district	DC25	2016	Newcastle	150,001-200K	\N
district	DC25	2016	Newcastle	200,001-300K	\N
district	DC25	2016	Newcastle	300,001-500K	\N
district	DC25	2016	Newcastle	500,001-800K	\N
district	DC25	2016	Newcastle	800,001-1M	\N
district	DC25	2016	Newcastle	Above 1M	\N
municipality	EKU	2016	Nigel Ekurhuleni	Under 1.5K	427
municipality	EKU	2016	Nigel Ekurhuleni	1,501-3K	\N
municipality	EKU	2016	Nigel Ekurhuleni	3,001-5K	3333
municipality	EKU	2016	Nigel Ekurhuleni	5,001-10K	6003
municipality	EKU	2016	Nigel Ekurhuleni	10,001-20K	16238
municipality	EKU	2016	Nigel Ekurhuleni	20,001-30K	24693
municipality	EKU	2016	Nigel Ekurhuleni	30,001-40K	34107
municipality	EKU	2016	Nigel Ekurhuleni	40,001-50K	46790
municipality	EKU	2016	Nigel Ekurhuleni	50,001-100K	70058
municipality	EKU	2016	Nigel Ekurhuleni	100,001-150K	125119
municipality	EKU	2016	Nigel Ekurhuleni	150,001-200K	188462
municipality	EKU	2016	Nigel Ekurhuleni	200,001-300K	227244
municipality	EKU	2016	Nigel Ekurhuleni	300,001-500K	\N
municipality	EKU	2016	Nigel Ekurhuleni	500,001-800K	583333
municipality	EKU	2016	Nigel Ekurhuleni	800,001-1M	\N
municipality	EKU	2016	Nigel Ekurhuleni	Above 1M	3413096
district	DC36	2016	Nylstroom Modimolle	Under 1.5K	1015
district	DC36	2016	Nylstroom Modimolle	1,501-3K	2299
district	DC36	2016	Nylstroom Modimolle	3,001-5K	4349
district	DC36	2016	Nylstroom Modimolle	5,001-10K	7220
district	DC36	2016	Nylstroom Modimolle	10,001-20K	15150
district	DC36	2016	Nylstroom Modimolle	20,001-30K	24060
district	DC36	2016	Nylstroom Modimolle	30,001-40K	35778
district	DC36	2016	Nylstroom Modimolle	40,001-50K	45817
district	DC36	2016	Nylstroom Modimolle	50,001-100K	70869
district	DC36	2016	Nylstroom Modimolle	100,001-150K	122165
district	DC36	2016	Nylstroom Modimolle	150,001-200K	163636
district	DC36	2016	Nylstroom Modimolle	200,001-300K	\N
district	DC36	2016	Nylstroom Modimolle	300,001-500K	335294
district	DC36	2016	Nylstroom Modimolle	500,001-800K	\N
district	DC36	2016	Nylstroom Modimolle	800,001-1M	\N
district	DC36	2016	Nylstroom Modimolle	Above 1M	\N
district	DC18	2016	Odendaalsrus Matjhabeng	Under 1.5K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	1,501-3K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	3,001-5K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	5,001-10K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	10,001-20K	14195
district	DC18	2016	Odendaalsrus Matjhabeng	20,001-30K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	30,001-40K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	40,001-50K	44474
district	DC18	2016	Odendaalsrus Matjhabeng	50,001-100K	76316
district	DC18	2016	Odendaalsrus Matjhabeng	100,001-150K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	150,001-200K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	200,001-300K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	300,001-500K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	500,001-800K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	800,001-1M	\N
district	DC18	2016	Odendaalsrus Matjhabeng	Above 1M	\N
municipality	BUF	2016	Oos-Londen Baffalo City	Under 1.5K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	1,501-3K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	3,001-5K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	5,001-10K	7923
municipality	BUF	2016	Oos-Londen Baffalo City	10,001-20K	14872
municipality	BUF	2016	Oos-Londen Baffalo City	20,001-30K	26748
municipality	BUF	2016	Oos-Londen Baffalo City	30,001-40K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	40,001-50K	45930
municipality	BUF	2016	Oos-Londen Baffalo City	50,001-100K	70249
municipality	BUF	2016	Oos-Londen Baffalo City	100,001-150K	128496
municipality	BUF	2016	Oos-Londen Baffalo City	150,001-200K	177487
municipality	BUF	2016	Oos-Londen Baffalo City	200,001-300K	250000
municipality	BUF	2016	Oos-Londen Baffalo City	300,001-500K	396946
municipality	BUF	2016	Oos-Londen Baffalo City	500,001-800K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	800,001-1M	836000
municipality	BUF	2016	Oos-Londen Baffalo City	Above 1M	\N
district	DC4	2016	Oudtshoorn	Under 1.5K	589
district	DC4	2016	Oudtshoorn	1,501-3K	2453
district	DC4	2016	Oudtshoorn	3,001-5K	3361
district	DC4	2016	Oudtshoorn	5,001-10K	6018
district	DC4	2016	Oudtshoorn	10,001-20K	15491
district	DC4	2016	Oudtshoorn	20,001-30K	24496
district	DC4	2016	Oudtshoorn	30,001-40K	35852
district	DC4	2016	Oudtshoorn	40,001-50K	\N
district	DC4	2016	Oudtshoorn	50,001-100K	72252
district	DC4	2016	Oudtshoorn	100,001-150K	124294
district	DC4	2016	Oudtshoorn	150,001-200K	\N
district	DC4	2016	Oudtshoorn	200,001-300K	\N
district	DC4	2016	Oudtshoorn	300,001-500K	414126
district	DC4	2016	Oudtshoorn	500,001-800K	\N
district	DC4	2016	Oudtshoorn	800,001-1M	\N
district	DC4	2016	Oudtshoorn	Above 1M	\N
district	DC2	2016	Paarl/Wel Drakenstein	Under 1.5K	\N
district	DC2	2016	Paarl/Wel Drakenstein	1,501-3K	\N
district	DC2	2016	Paarl/Wel Drakenstein	3,001-5K	\N
district	DC2	2016	Paarl/Wel Drakenstein	5,001-10K	\N
district	DC2	2016	Paarl/Wel Drakenstein	10,001-20K	19167
district	DC2	2016	Paarl/Wel Drakenstein	20,001-30K	\N
district	DC2	2016	Paarl/Wel Drakenstein	30,001-40K	37838
district	DC2	2016	Paarl/Wel Drakenstein	40,001-50K	44429
district	DC2	2016	Paarl/Wel Drakenstein	50,001-100K	68846
district	DC2	2016	Paarl/Wel Drakenstein	100,001-150K	121111
district	DC2	2016	Paarl/Wel Drakenstein	150,001-200K	184261
district	DC2	2016	Paarl/Wel Drakenstein	200,001-300K	237744
district	DC2	2016	Paarl/Wel Drakenstein	300,001-500K	354260
district	DC2	2016	Paarl/Wel Drakenstein	500,001-800K	658850
district	DC2	2016	Paarl/Wel Drakenstein	800,001-1M	\N
district	DC2	2016	Paarl/Wel Drakenstein	Above 1M	1721591
district	DC20	2016	Parys Ngwathe	Under 1.5K	410
district	DC20	2016	Parys Ngwathe	1,501-3K	1670
district	DC20	2016	Parys Ngwathe	3,001-5K	\N
district	DC20	2016	Parys Ngwathe	5,001-10K	\N
district	DC20	2016	Parys Ngwathe	10,001-20K	16240
district	DC20	2016	Parys Ngwathe	20,001-30K	20833
district	DC20	2016	Parys Ngwathe	30,001-40K	\N
district	DC20	2016	Parys Ngwathe	40,001-50K	45693
district	DC20	2016	Parys Ngwathe	50,001-100K	92208
district	DC20	2016	Parys Ngwathe	100,001-150K	\N
district	DC20	2016	Parys Ngwathe	150,001-200K	\N
district	DC20	2016	Parys Ngwathe	200,001-300K	\N
district	DC20	2016	Parys Ngwathe	300,001-500K	316350
district	DC20	2016	Parys Ngwathe	500,001-800K	\N
district	DC20	2016	Parys Ngwathe	800,001-1M	\N
district	DC20	2016	Parys Ngwathe	Above 1M	\N
district	DC10	2016	Pearston Blue Crane	Under 1.5K	\N
district	DC10	2016	Pearston Blue Crane	1,501-3K	\N
district	DC10	2016	Pearston Blue Crane	3,001-5K	\N
district	DC10	2016	Pearston Blue Crane	5,001-10K	5327
district	DC10	2016	Pearston Blue Crane	10,001-20K	15578
district	DC10	2016	Pearston Blue Crane	20,001-30K	\N
district	DC10	2016	Pearston Blue Crane	30,001-40K	\N
district	DC10	2016	Pearston Blue Crane	40,001-50K	\N
district	DC10	2016	Pearston Blue Crane	50,001-100K	58398
district	DC10	2016	Pearston Blue Crane	100,001-150K	\N
district	DC10	2016	Pearston Blue Crane	150,001-200K	\N
district	DC10	2016	Pearston Blue Crane	200,001-300K	\N
district	DC10	2016	Pearston Blue Crane	300,001-500K	\N
district	DC10	2016	Pearston Blue Crane	500,001-800K	\N
district	DC10	2016	Pearston Blue Crane	800,001-1M	\N
district	DC10	2016	Pearston Blue Crane	Above 1M	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	Under 1.5K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	1,501-3K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	3,001-5K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	5,001-10K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	10,001-20K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	20,001-30K	20048
district	DC33	2016	Phalaborwa Ba-Phalaborwa	30,001-40K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	40,001-50K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	50,001-100K	84921
district	DC33	2016	Phalaborwa Ba-Phalaborwa	100,001-150K	117000
district	DC33	2016	Phalaborwa Ba-Phalaborwa	150,001-200K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	200,001-300K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	300,001-500K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	500,001-800K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	800,001-1M	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	Above 1M	\N
district	DC16	2016	Philipolis Kopanong	Under 1.5K	\N
district	DC16	2016	Philipolis Kopanong	1,501-3K	\N
district	DC16	2016	Philipolis Kopanong	3,001-5K	4571
district	DC16	2016	Philipolis Kopanong	5,001-10K	8539
district	DC16	2016	Philipolis Kopanong	10,001-20K	\N
district	DC16	2016	Philipolis Kopanong	20,001-30K	\N
district	DC16	2016	Philipolis Kopanong	30,001-40K	\N
district	DC16	2016	Philipolis Kopanong	40,001-50K	\N
district	DC16	2016	Philipolis Kopanong	50,001-100K	\N
district	DC16	2016	Philipolis Kopanong	100,001-150K	\N
district	DC16	2016	Philipolis Kopanong	150,001-200K	\N
district	DC16	2016	Philipolis Kopanong	200,001-300K	\N
district	DC16	2016	Philipolis Kopanong	300,001-500K	\N
district	DC16	2016	Philipolis Kopanong	500,001-800K	\N
district	DC16	2016	Philipolis Kopanong	800,001-1M	\N
district	DC16	2016	Philipolis Kopanong	Above 1M	\N
district	DC7	2016	Phillipstown Renosterberg	Under 1.5K	648
district	DC7	2016	Phillipstown Renosterberg	1,501-3K	2477
district	DC7	2016	Phillipstown Renosterberg	3,001-5K	\N
district	DC7	2016	Phillipstown Renosterberg	5,001-10K	\N
district	DC7	2016	Phillipstown Renosterberg	10,001-20K	11127
district	DC7	2016	Phillipstown Renosterberg	20,001-30K	\N
district	DC7	2016	Phillipstown Renosterberg	30,001-40K	\N
district	DC7	2016	Phillipstown Renosterberg	40,001-50K	\N
district	DC7	2016	Phillipstown Renosterberg	50,001-100K	\N
district	DC7	2016	Phillipstown Renosterberg	100,001-150K	\N
district	DC7	2016	Phillipstown Renosterberg	150,001-200K	\N
district	DC7	2016	Phillipstown Renosterberg	200,001-300K	\N
district	DC7	2016	Phillipstown Renosterberg	300,001-500K	\N
district	DC7	2016	Phillipstown Renosterberg	500,001-800K	\N
district	DC7	2016	Phillipstown Renosterberg	800,001-1M	\N
district	DC7	2016	Phillipstown Renosterberg	Above 1M	\N
district	DC22	2016	Pietermaritzburg Msunduzi	Under 1.5K	596
district	DC22	2016	Pietermaritzburg Msunduzi	1,501-3K	2767
district	DC22	2016	Pietermaritzburg Msunduzi	3,001-5K	3641
district	DC22	2016	Pietermaritzburg Msunduzi	5,001-10K	8141
district	DC22	2016	Pietermaritzburg Msunduzi	10,001-20K	13327
district	DC22	2016	Pietermaritzburg Msunduzi	20,001-30K	25263
district	DC22	2016	Pietermaritzburg Msunduzi	30,001-40K	34768
district	DC22	2016	Pietermaritzburg Msunduzi	40,001-50K	49959
district	DC22	2016	Pietermaritzburg Msunduzi	50,001-100K	68041
district	DC22	2016	Pietermaritzburg Msunduzi	100,001-150K	124260
district	DC22	2016	Pietermaritzburg Msunduzi	150,001-200K	172518
district	DC22	2016	Pietermaritzburg Msunduzi	200,001-300K	257099
district	DC22	2016	Pietermaritzburg Msunduzi	300,001-500K	381212
district	DC22	2016	Pietermaritzburg Msunduzi	500,001-800K	708333
district	DC22	2016	Pietermaritzburg Msunduzi	800,001-1M	882000
district	DC22	2016	Pietermaritzburg Msunduzi	Above 1M	9654429
district	DC1	2016	Piketberg Bergriver	Under 1.5K	629
district	DC1	2016	Piketberg Bergriver	1,501-3K	2119
district	DC1	2016	Piketberg Bergriver	3,001-5K	3742
district	DC1	2016	Piketberg Bergriver	5,001-10K	7350
district	DC1	2016	Piketberg Bergriver	10,001-20K	12751
district	DC1	2016	Piketberg Bergriver	20,001-30K	23785
district	DC1	2016	Piketberg Bergriver	30,001-40K	32716
district	DC1	2016	Piketberg Bergriver	40,001-50K	41322
district	DC1	2016	Piketberg Bergriver	50,001-100K	55556
district	DC1	2016	Piketberg Bergriver	100,001-150K	124035
district	DC1	2016	Piketberg Bergriver	150,001-200K	\N
district	DC1	2016	Piketberg Bergriver	200,001-300K	\N
district	DC1	2016	Piketberg Bergriver	300,001-500K	\N
district	DC1	2016	Piketberg Bergriver	500,001-800K	\N
district	DC1	2016	Piketberg Bergriver	800,001-1M	\N
district	DC1	2016	Piketberg Bergriver	Above 1M	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Under 1.5K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	1,501-3K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	3,001-5K	4942
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	5,001-10K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	10,001-20K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	20,001-30K	25000
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	30,001-40K	31094
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	40,001-50K	50000
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	50,001-100K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	100,001-150K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	150,001-200K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	200,001-300K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	300,001-500K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	500,001-800K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	800,001-1M	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Above 1M	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	Under 1.5K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	1,501-3K	2270
district	DC21	2016	Port Shepstone Ray Nkonyeni	3,001-5K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	5,001-10K	7715
district	DC21	2016	Port Shepstone Ray Nkonyeni	10,001-20K	14519
district	DC21	2016	Port Shepstone Ray Nkonyeni	20,001-30K	26580
district	DC21	2016	Port Shepstone Ray Nkonyeni	30,001-40K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	40,001-50K	43457
district	DC21	2016	Port Shepstone Ray Nkonyeni	50,001-100K	71408
district	DC21	2016	Port Shepstone Ray Nkonyeni	100,001-150K	113310
district	DC21	2016	Port Shepstone Ray Nkonyeni	150,001-200K	165859
district	DC21	2016	Port Shepstone Ray Nkonyeni	200,001-300K	210000
district	DC21	2016	Port Shepstone Ray Nkonyeni	300,001-500K	384524
district	DC21	2016	Port Shepstone Ray Nkonyeni	500,001-800K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	800,001-1M	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	Above 1M	\N
municipality	TSH	2016	Pretoria Tshwane	Under 1.5K	\N
municipality	TSH	2016	Pretoria Tshwane	1,501-3K	\N
municipality	TSH	2016	Pretoria Tshwane	3,001-5K	\N
municipality	TSH	2016	Pretoria Tshwane	5,001-10K	7820
municipality	TSH	2016	Pretoria Tshwane	10,001-20K	14838
municipality	TSH	2016	Pretoria Tshwane	20,001-30K	25505
municipality	TSH	2016	Pretoria Tshwane	30,001-40K	35460
municipality	TSH	2016	Pretoria Tshwane	40,001-50K	45315
municipality	TSH	2016	Pretoria Tshwane	50,001-100K	75815
municipality	TSH	2016	Pretoria Tshwane	100,001-150K	119719
municipality	TSH	2016	Pretoria Tshwane	150,001-200K	173636
municipality	TSH	2016	Pretoria Tshwane	200,001-300K	238346
municipality	TSH	2016	Pretoria Tshwane	300,001-500K	357865
municipality	TSH	2016	Pretoria Tshwane	500,001-800K	600720
municipality	TSH	2016	Pretoria Tshwane	800,001-1M	\N
municipality	TSH	2016	Pretoria Tshwane	Above 1M	3381043
district	DC7	2016	Prieska Siyathemba	Under 1.5K	1000
district	DC7	2016	Prieska Siyathemba	1,501-3K	1838
district	DC7	2016	Prieska Siyathemba	3,001-5K	\N
district	DC7	2016	Prieska Siyathemba	5,001-10K	\N
district	DC7	2016	Prieska Siyathemba	10,001-20K	\N
district	DC7	2016	Prieska Siyathemba	20,001-30K	\N
district	DC7	2016	Prieska Siyathemba	30,001-40K	\N
district	DC7	2016	Prieska Siyathemba	40,001-50K	\N
district	DC7	2016	Prieska Siyathemba	50,001-100K	\N
district	DC7	2016	Prieska Siyathemba	100,001-150K	\N
district	DC7	2016	Prieska Siyathemba	150,001-200K	\N
district	DC7	2016	Prieska Siyathemba	200,001-300K	\N
district	DC7	2016	Prieska Siyathemba	300,001-500K	\N
district	DC7	2016	Prieska Siyathemba	500,001-800K	\N
district	DC7	2016	Prieska Siyathemba	800,001-1M	\N
district	DC7	2016	Prieska Siyathemba	Above 1M	\N
district	DC5	2016	Prins Albert	Under 1.5K	1008
district	DC5	2016	Prins Albert	1,501-3K	1936
district	DC5	2016	Prins Albert	3,001-5K	\N
district	DC5	2016	Prins Albert	5,001-10K	9804
district	DC5	2016	Prins Albert	10,001-20K	12794
district	DC5	2016	Prins Albert	20,001-30K	\N
district	DC5	2016	Prins Albert	30,001-40K	\N
district	DC5	2016	Prins Albert	40,001-50K	\N
district	DC5	2016	Prins Albert	50,001-100K	\N
district	DC5	2016	Prins Albert	100,001-150K	\N
district	DC5	2016	Prins Albert	150,001-200K	\N
district	DC5	2016	Prins Albert	200,001-300K	\N
district	DC5	2016	Prins Albert	300,001-500K	\N
district	DC5	2016	Prins Albert	500,001-800K	\N
district	DC5	2016	Prins Albert	800,001-1M	\N
district	DC5	2016	Prins Albert	Above 1M	\N
district	DC13	2016	Queenstown Lukanji	Under 1.5K	\N
district	DC13	2016	Queenstown Lukanji	1,501-3K	2739
district	DC13	2016	Queenstown Lukanji	3,001-5K	\N
district	DC13	2016	Queenstown Lukanji	5,001-10K	7560
district	DC13	2016	Queenstown Lukanji	10,001-20K	\N
district	DC13	2016	Queenstown Lukanji	20,001-30K	\N
district	DC13	2016	Queenstown Lukanji	30,001-40K	\N
district	DC13	2016	Queenstown Lukanji	40,001-50K	\N
district	DC13	2016	Queenstown Lukanji	50,001-100K	\N
district	DC13	2016	Queenstown Lukanji	100,001-150K	\N
district	DC13	2016	Queenstown Lukanji	150,001-200K	\N
district	DC13	2016	Queenstown Lukanji	200,001-300K	\N
district	DC13	2016	Queenstown Lukanji	300,001-500K	\N
district	DC13	2016	Queenstown Lukanji	500,001-800K	\N
district	DC13	2016	Queenstown Lukanji	800,001-1M	\N
district	DC13	2016	Queenstown Lukanji	Above 1M	\N
district	DC16	2016	Reddersburg Kopanong	Under 1.5K	\N
district	DC16	2016	Reddersburg Kopanong	1,501-3K	\N
district	DC16	2016	Reddersburg Kopanong	3,001-5K	4236
district	DC16	2016	Reddersburg Kopanong	5,001-10K	6733
district	DC16	2016	Reddersburg Kopanong	10,001-20K	\N
district	DC16	2016	Reddersburg Kopanong	20,001-30K	\N
district	DC16	2016	Reddersburg Kopanong	30,001-40K	\N
district	DC16	2016	Reddersburg Kopanong	40,001-50K	\N
district	DC16	2016	Reddersburg Kopanong	50,001-100K	\N
district	DC16	2016	Reddersburg Kopanong	100,001-150K	\N
district	DC16	2016	Reddersburg Kopanong	150,001-200K	\N
district	DC16	2016	Reddersburg Kopanong	200,001-300K	\N
district	DC16	2016	Reddersburg Kopanong	300,001-500K	\N
district	DC16	2016	Reddersburg Kopanong	500,001-800K	\N
district	DC16	2016	Reddersburg Kopanong	800,001-1M	\N
district	DC16	2016	Reddersburg Kopanong	Above 1M	\N
district	DC19	2016	Reitz Nketoana	Under 1.5K	594
district	DC19	2016	Reitz Nketoana	1,501-3K	\N
district	DC19	2016	Reitz Nketoana	3,001-5K	3115
district	DC19	2016	Reitz Nketoana	5,001-10K	7589
district	DC19	2016	Reitz Nketoana	10,001-20K	14360
district	DC19	2016	Reitz Nketoana	20,001-30K	22951
district	DC19	2016	Reitz Nketoana	30,001-40K	34461
district	DC19	2016	Reitz Nketoana	40,001-50K	46849
district	DC19	2016	Reitz Nketoana	50,001-100K	\N
district	DC19	2016	Reitz Nketoana	100,001-150K	\N
district	DC19	2016	Reitz Nketoana	150,001-200K	\N
district	DC19	2016	Reitz Nketoana	200,001-300K	289855
district	DC19	2016	Reitz Nketoana	300,001-500K	\N
district	DC19	2016	Reitz Nketoana	500,001-800K	\N
district	DC19	2016	Reitz Nketoana	800,001-1M	\N
district	DC19	2016	Reitz Nketoana	Above 1M	\N
district	DC39	2016	Reivilo Thaung	Under 1.5K	\N
district	DC39	2016	Reivilo Thaung	1,501-3K	\N
district	DC39	2016	Reivilo Thaung	3,001-5K	4169
district	DC39	2016	Reivilo Thaung	5,001-10K	6268
district	DC39	2016	Reivilo Thaung	10,001-20K	11407
district	DC39	2016	Reivilo Thaung	20,001-30K	27483
district	DC39	2016	Reivilo Thaung	30,001-40K	\N
district	DC39	2016	Reivilo Thaung	40,001-50K	\N
district	DC39	2016	Reivilo Thaung	50,001-100K	\N
district	DC39	2016	Reivilo Thaung	100,001-150K	147368
district	DC39	2016	Reivilo Thaung	150,001-200K	\N
district	DC39	2016	Reivilo Thaung	200,001-300K	\N
district	DC39	2016	Reivilo Thaung	300,001-500K	\N
district	DC39	2016	Reivilo Thaung	500,001-800K	678788
district	DC39	2016	Reivilo Thaung	800,001-1M	\N
district	DC39	2016	Reivilo Thaung	Above 1M	\N
district	DC7	2016	Richmond	Under 1.5K	\N
district	DC7	2016	Richmond	1,501-3K	\N
district	DC7	2016	Richmond	3,001-5K	3182
district	DC7	2016	Richmond	5,001-10K	\N
district	DC7	2016	Richmond	10,001-20K	\N
district	DC7	2016	Richmond	20,001-30K	\N
district	DC7	2016	Richmond	30,001-40K	\N
district	DC7	2016	Richmond	40,001-50K	\N
district	DC7	2016	Richmond	50,001-100K	\N
district	DC7	2016	Richmond	100,001-150K	\N
district	DC7	2016	Richmond	150,001-200K	\N
district	DC7	2016	Richmond	200,001-300K	\N
district	DC7	2016	Richmond	300,001-500K	\N
district	DC7	2016	Richmond	500,001-800K	\N
district	DC7	2016	Richmond	800,001-1M	\N
district	DC7	2016	Richmond	Above 1M	\N
district	DC4	2016	Riversdal Hessequa	Under 1.5K	594
district	DC4	2016	Riversdal Hessequa	1,501-3K	2378
district	DC4	2016	Riversdal Hessequa	3,001-5K	\N
district	DC4	2016	Riversdal Hessequa	5,001-10K	7135
district	DC4	2016	Riversdal Hessequa	10,001-20K	14964
district	DC4	2016	Riversdal Hessequa	20,001-30K	25523
district	DC4	2016	Riversdal Hessequa	30,001-40K	36397
district	DC4	2016	Riversdal Hessequa	40,001-50K	44668
district	DC4	2016	Riversdal Hessequa	50,001-100K	76834
district	DC4	2016	Riversdal Hessequa	100,001-150K	150000
district	DC4	2016	Riversdal Hessequa	150,001-200K	\N
district	DC4	2016	Riversdal Hessequa	200,001-300K	203125
district	DC4	2016	Riversdal Hessequa	300,001-500K	342105
district	DC4	2016	Riversdal Hessequa	500,001-800K	\N
district	DC4	2016	Riversdal Hessequa	800,001-1M	\N
district	DC4	2016	Riversdal Hessequa	Above 1M	\N
district	DC2	2016	Robertson Breede /Winelands	Under 1.5K	\N
district	DC2	2016	Robertson Breede /Winelands	1,501-3K	\N
district	DC2	2016	Robertson Breede /Winelands	3,001-5K	\N
district	DC2	2016	Robertson Breede /Winelands	5,001-10K	7227
district	DC2	2016	Robertson Breede /Winelands	10,001-20K	19531
district	DC2	2016	Robertson Breede /Winelands	20,001-30K	\N
district	DC2	2016	Robertson Breede /Winelands	30,001-40K	36199
district	DC2	2016	Robertson Breede /Winelands	40,001-50K	49347
district	DC2	2016	Robertson Breede /Winelands	50,001-100K	71250
district	DC2	2016	Robertson Breede /Winelands	100,001-150K	108750
district	DC2	2016	Robertson Breede /Winelands	150,001-200K	167308
district	DC2	2016	Robertson Breede /Winelands	200,001-300K	273125
district	DC2	2016	Robertson Breede /Winelands	300,001-500K	326512
district	DC2	2016	Robertson Breede /Winelands	500,001-800K	\N
district	DC2	2016	Robertson Breede /Winelands	800,001-1M	\N
district	DC2	2016	Robertson Breede /Winelands	Above 1M	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Under 1.5K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	1,501-3K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	3,001-5K	3983
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	5,001-10K	8841
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	10,001-20K	13418
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	20,001-30K	25305
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	30,001-40K	33762
district	DC10	2016	Aberdeen	10,001-20K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	40,001-50K	45595
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	50,001-100K	65799
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	100,001-150K	119403
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	150,001-200K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	200,001-300K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	300,001-500K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	500,001-800K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	800,001-1M	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Above 1M	\N
district	DC16	2016	Rouxville Mohokare	Under 1.5K	\N
district	DC16	2016	Rouxville Mohokare	1,501-3K	\N
district	DC16	2016	Rouxville Mohokare	3,001-5K	4288
district	DC16	2016	Rouxville Mohokare	5,001-10K	6708
district	DC16	2016	Rouxville Mohokare	10,001-20K	10627
district	DC16	2016	Rouxville Mohokare	20,001-30K	25944
district	DC16	2016	Rouxville Mohokare	30,001-40K	\N
district	DC16	2016	Rouxville Mohokare	40,001-50K	\N
district	DC16	2016	Rouxville Mohokare	50,001-100K	\N
district	DC16	2016	Rouxville Mohokare	100,001-150K	115385
district	DC16	2016	Rouxville Mohokare	150,001-200K	\N
district	DC16	2016	Rouxville Mohokare	200,001-300K	\N
district	DC16	2016	Rouxville Mohokare	300,001-500K	\N
district	DC16	2016	Rouxville Mohokare	500,001-800K	\N
district	DC16	2016	Rouxville Mohokare	800,001-1M	\N
district	DC16	2016	Rouxville Mohokare	Above 1M	\N
district	DC19	2016	Senekal Setsoto	Under 1.5K	\N
district	DC19	2016	Senekal Setsoto	1,501-3K	\N
district	DC19	2016	Senekal Setsoto	3,001-5K	\N
district	DC19	2016	Senekal Setsoto	5,001-10K	8050
district	DC19	2016	Senekal Setsoto	10,001-20K	11438
district	DC19	2016	Senekal Setsoto	20,001-30K	\N
district	DC19	2016	Senekal Setsoto	30,001-40K	\N
district	DC19	2016	Senekal Setsoto	40,001-50K	\N
district	DC19	2016	Senekal Setsoto	50,001-100K	\N
district	DC19	2016	Senekal Setsoto	100,001-150K	\N
district	DC19	2016	Senekal Setsoto	150,001-200K	\N
district	DC19	2016	Senekal Setsoto	200,001-300K	\N
district	DC19	2016	Senekal Setsoto	300,001-500K	\N
district	DC19	2016	Senekal Setsoto	500,001-800K	\N
district	DC19	2016	Senekal Setsoto	800,001-1M	\N
district	DC19	2016	Senekal Setsoto	Above 1M	\N
district	DC16	2016	Smithfield Mohkare	Under 1.5K	1482
district	DC16	2016	Smithfield Mohkare	1,501-3K	\N
district	DC16	2016	Smithfield Mohkare	3,001-5K	\N
district	DC16	2016	Smithfield Mohkare	5,001-10K	6177
district	DC16	2016	Smithfield Mohkare	10,001-20K	\N
district	DC16	2016	Smithfield Mohkare	20,001-30K	\N
district	DC16	2016	Smithfield Mohkare	30,001-40K	\N
district	DC16	2016	Smithfield Mohkare	40,001-50K	\N
district	DC16	2016	Smithfield Mohkare	50,001-100K	\N
district	DC16	2016	Smithfield Mohkare	100,001-150K	\N
district	DC16	2016	Smithfield Mohkare	150,001-200K	\N
district	DC16	2016	Smithfield Mohkare	200,001-300K	\N
district	DC16	2016	Smithfield Mohkare	300,001-500K	\N
district	DC16	2016	Smithfield Mohkare	500,001-800K	\N
district	DC16	2016	Smithfield Mohkare	800,001-1M	\N
district	DC16	2016	Smithfield Mohkare	Above 1M	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Under 1.5K	1398
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	1,501-3K	1505
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	3,001-5K	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	5,001-10K	7179
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	10,001-20K	14431
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	20,001-30K	24041
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	30,001-40K	36667
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	40,001-50K	45159
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	50,001-100K	71078
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	100,001-150K	129622
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	150,001-200K	176389
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	200,001-300K	268616
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	300,001-500K	346154
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	500,001-800K	538462
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	800,001-1M	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Above 1M	\N
district	DC10	2016	Somerset-Oos Blue Crane	Under 1.5K	\N
district	DC10	2016	Somerset-Oos Blue Crane	1,501-3K	2143
district	DC10	2016	Somerset-Oos Blue Crane	3,001-5K	4691
district	DC10	2016	Somerset-Oos Blue Crane	5,001-10K	7049
district	DC10	2016	Somerset-Oos Blue Crane	10,001-20K	10610
district	DC10	2016	Somerset-Oos Blue Crane	20,001-30K	21915
district	DC10	2016	Somerset-Oos Blue Crane	30,001-40K	\N
district	DC10	2016	Somerset-Oos Blue Crane	40,001-50K	\N
district	DC10	2016	Somerset-Oos Blue Crane	50,001-100K	83721
district	DC10	2016	Somerset-Oos Blue Crane	100,001-150K	134454
district	DC10	2016	Somerset-Oos Blue Crane	150,001-200K	\N
district	DC10	2016	Somerset-Oos Blue Crane	200,001-300K	230651
district	DC10	2016	Somerset-Oos Blue Crane	300,001-500K	\N
district	DC10	2016	Somerset-Oos Blue Crane	500,001-800K	\N
district	DC10	2016	Somerset-Oos Blue Crane	800,001-1M	\N
district	DC10	2016	Somerset-Oos Blue Crane	Above 1M	\N
district	DC27	2016	St Lucia Mtubatuba	Under 1.5K	469
district	DC27	2016	St Lucia Mtubatuba	1,501-3K	\N
district	DC27	2016	St Lucia Mtubatuba	3,001-5K	\N
district	DC27	2016	St Lucia Mtubatuba	5,001-10K	\N
district	DC27	2016	St Lucia Mtubatuba	10,001-20K	\N
district	DC27	2016	St Lucia Mtubatuba	20,001-30K	\N
district	DC10	2016	Aberdeen	20,001-30K	\N
district	DC27	2016	St Lucia Mtubatuba	30,001-40K	30864
district	DC27	2016	St Lucia Mtubatuba	40,001-50K	\N
district	DC27	2016	St Lucia Mtubatuba	50,001-100K	67063
district	DC27	2016	St Lucia Mtubatuba	100,001-150K	\N
district	DC27	2016	St Lucia Mtubatuba	150,001-200K	\N
district	DC27	2016	St Lucia Mtubatuba	200,001-300K	\N
district	DC27	2016	St Lucia Mtubatuba	300,001-500K	\N
district	DC27	2016	St Lucia Mtubatuba	500,001-800K	\N
district	DC27	2016	St Lucia Mtubatuba	800,001-1M	\N
district	DC27	2016	St Lucia Mtubatuba	Above 1M	\N
district	DC2	2016	Stellenbosch	Under 1.5K	\N
district	DC2	2016	Stellenbosch	1,501-3K	\N
district	DC2	2016	Stellenbosch	3,001-5K	\N
district	DC2	2016	Stellenbosch	5,001-10K	\N
district	DC2	2016	Stellenbosch	10,001-20K	\N
district	DC2	2016	Stellenbosch	20,001-30K	\N
district	DC2	2016	Stellenbosch	30,001-40K	\N
district	DC2	2016	Stellenbosch	40,001-50K	\N
district	DC2	2016	Stellenbosch	50,001-100K	74813
district	DC2	2016	Stellenbosch	100,001-150K	150000
district	DC2	2016	Stellenbosch	150,001-200K	172480
district	DC2	2016	Stellenbosch	200,001-300K	265562
district	DC2	2016	Stellenbosch	300,001-500K	407146
district	DC2	2016	Stellenbosch	500,001-800K	630946
district	DC2	2016	Stellenbosch	800,001-1M	871205
district	DC2	2016	Stellenbosch	Above 1M	2392045
district	DC14	2016	Steynsburg Gariep	Under 1.5K	\N
district	DC14	2016	Steynsburg Gariep	1,501-3K	2589
district	DC14	2016	Steynsburg Gariep	3,001-5K	3245
district	DC14	2016	Steynsburg Gariep	5,001-10K	9726
district	DC14	2016	Steynsburg Gariep	10,001-20K	\N
district	DC14	2016	Steynsburg Gariep	20,001-30K	\N
district	DC14	2016	Steynsburg Gariep	30,001-40K	\N
district	DC14	2016	Steynsburg Gariep	40,001-50K	\N
district	DC14	2016	Steynsburg Gariep	50,001-100K	\N
district	DC14	2016	Steynsburg Gariep	100,001-150K	\N
district	DC14	2016	Steynsburg Gariep	150,001-200K	\N
district	DC14	2016	Steynsburg Gariep	200,001-300K	\N
district	DC14	2016	Steynsburg Gariep	300,001-500K	\N
district	DC14	2016	Steynsburg Gariep	500,001-800K	\N
district	DC14	2016	Steynsburg Gariep	800,001-1M	\N
district	DC14	2016	Steynsburg Gariep	Above 1M	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	Under 1.5K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	1,501-3K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	3,001-5K	4353
district	DC10	2016	Steytlerville Dr Beyers Naude	5,001-10K	6467
district	DC10	2016	Steytlerville Dr Beyers Naude	10,001-20K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	20,001-30K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	30,001-40K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	40,001-50K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	50,001-100K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	100,001-150K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	150,001-200K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	200,001-300K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	300,001-500K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	500,001-800K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	800,001-1M	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	Above 1M	\N
district	DC12	2016	Stutterheim Amahlathi	Under 1.5K	\N
district	DC12	2016	Stutterheim Amahlathi	1,501-3K	\N
district	DC12	2016	Stutterheim Amahlathi	3,001-5K	\N
district	DC12	2016	Stutterheim Amahlathi	5,001-10K	5324
district	DC12	2016	Stutterheim Amahlathi	10,001-20K	13892
district	DC12	2016	Stutterheim Amahlathi	20,001-30K	23815
district	DC12	2016	Stutterheim Amahlathi	30,001-40K	\N
district	DC12	2016	Stutterheim Amahlathi	40,001-50K	50000
district	DC12	2016	Stutterheim Amahlathi	50,001-100K	\N
district	DC12	2016	Stutterheim Amahlathi	100,001-150K	\N
district	DC12	2016	Stutterheim Amahlathi	150,001-200K	\N
district	DC12	2016	Stutterheim Amahlathi	200,001-300K	\N
district	DC12	2016	Stutterheim Amahlathi	300,001-500K	\N
district	DC12	2016	Stutterheim Amahlathi	500,001-800K	\N
district	DC12	2016	Stutterheim Amahlathi	800,001-1M	\N
district	DC12	2016	Stutterheim Amahlathi	Above 1M	\N
district	DC6	2016	Sutherland	Under 1.5K	1118
district	DC6	2016	Sutherland	1,501-3K	2535
district	DC6	2016	Sutherland	3,001-5K	\N
district	DC6	2016	Sutherland	5,001-10K	\N
district	DC6	2016	Sutherland	10,001-20K	\N
district	DC6	2016	Sutherland	20,001-30K	\N
district	DC6	2016	Sutherland	30,001-40K	\N
district	DC6	2016	Sutherland	40,001-50K	\N
district	DC6	2016	Sutherland	50,001-100K	\N
district	DC6	2016	Sutherland	100,001-150K	\N
district	DC6	2016	Sutherland	150,001-200K	\N
district	DC6	2016	Sutherland	200,001-300K	\N
district	DC6	2016	Sutherland	300,001-500K	\N
district	DC6	2016	Sutherland	500,001-800K	\N
district	DC6	2016	Sutherland	800,001-1M	\N
district	DC6	2016	Sutherland	Above 1M	\N
district	DC3	2016	Swellendam	Under 1.5K	\N
district	DC3	2016	Swellendam	1,501-3K	\N
district	DC3	2016	Swellendam	3,001-5K	4248
district	DC3	2016	Swellendam	5,001-10K	6172
district	DC3	2016	Swellendam	10,001-20K	15102
district	DC3	2016	Swellendam	20,001-30K	26442
district	DC3	2016	Swellendam	30,001-40K	36422
district	DC3	2016	Swellendam	40,001-50K	41555
district	DC3	2016	Swellendam	50,001-100K	73487
district	DC3	2016	Swellendam	100,001-150K	129026
district	DC3	2016	Swellendam	150,001-200K	170635
district	DC3	2016	Swellendam	200,001-300K	268934
district	DC3	2016	Swellendam	300,001-500K	356905
district	DC3	2016	Swellendam	500,001-800K	\N
district	DC3	2016	Swellendam	800,001-1M	\N
district	DC3	2016	Swellendam	Above 1M	\N
district	DC13	2016	Tarkastad Tsolwana	Under 1.5K	\N
district	DC13	2016	Tarkastad Tsolwana	1,501-3K	2869
district	DC13	2016	Tarkastad Tsolwana	3,001-5K	4517
district	DC13	2016	Tarkastad Tsolwana	5,001-10K	7198
district	DC13	2016	Tarkastad Tsolwana	10,001-20K	17578
district	DC13	2016	Tarkastad Tsolwana	20,001-30K	25090
district	DC13	2016	Tarkastad Tsolwana	30,001-40K	\N
district	DC13	2016	Tarkastad Tsolwana	40,001-50K	\N
district	DC13	2016	Tarkastad Tsolwana	50,001-100K	89400
district	DC13	2016	Tarkastad Tsolwana	100,001-150K	\N
district	DC13	2016	Tarkastad Tsolwana	150,001-200K	\N
district	DC13	2016	Tarkastad Tsolwana	200,001-300K	\N
district	DC13	2016	Tarkastad Tsolwana	300,001-500K	\N
district	DC13	2016	Tarkastad Tsolwana	500,001-800K	\N
district	DC13	2016	Tarkastad Tsolwana	800,001-1M	\N
district	DC13	2016	Tarkastad Tsolwana	Above 1M	\N
municipality	MAN	2016	Thaba Nchu	Under 1.5K	\N
municipality	MAN	2016	Thaba Nchu	1,501-3K	2529
municipality	MAN	2016	Thaba Nchu	3,001-5K	3763
municipality	MAN	2016	Thaba Nchu	5,001-10K	7850
municipality	MAN	2016	Thaba Nchu	10,001-20K	10592
municipality	MAN	2016	Thaba Nchu	20,001-30K	\N
municipality	MAN	2016	Thaba Nchu	30,001-40K	\N
municipality	MAN	2016	Thaba Nchu	40,001-50K	\N
municipality	MAN	2016	Thaba Nchu	50,001-100K	\N
municipality	MAN	2016	Thaba Nchu	100,001-150K	\N
municipality	MAN	2016	Thaba Nchu	150,001-200K	\N
municipality	MAN	2016	Thaba Nchu	200,001-300K	\N
municipality	MAN	2016	Thaba Nchu	300,001-500K	\N
municipality	MAN	2016	Thaba Nchu	500,001-800K	\N
municipality	MAN	2016	Thaba Nchu	800,001-1M	\N
municipality	MAN	2016	Thaba Nchu	Above 1M	\N
district	DC36	2016	Thabazimbi	Under 1.5K	1016
district	DC36	2016	Thabazimbi	1,501-3K	\N
district	DC36	2016	Thabazimbi	3,001-5K	5000
district	DC36	2016	Thabazimbi	5,001-10K	7662
district	DC36	2016	Thabazimbi	10,001-20K	14805
district	DC36	2016	Thabazimbi	20,001-30K	23960
district	DC36	2016	Thabazimbi	30,001-40K	32658
district	DC36	2016	Thabazimbi	40,001-50K	50000
district	DC36	2016	Thabazimbi	50,001-100K	65923
district	DC36	2016	Thabazimbi	100,001-150K	109091
district	DC36	2016	Thabazimbi	150,001-200K	\N
district	DC36	2016	Thabazimbi	200,001-300K	\N
district	DC36	2016	Thabazimbi	300,001-500K	\N
district	DC36	2016	Thabazimbi	500,001-800K	668325
district	DC36	2016	Thabazimbi	800,001-1M	\N
district	DC36	2016	Thabazimbi	Above 1M	\N
district	DC18	2016	Theunissen Masilonyana	Under 1.5K	1179
district	DC18	2016	Theunissen Masilonyana	1,501-3K	1637
district	DC18	2016	Theunissen Masilonyana	3,001-5K	3767
district	DC18	2016	Theunissen Masilonyana	5,001-10K	6957
district	DC18	2016	Theunissen Masilonyana	10,001-20K	12889
district	DC18	2016	Theunissen Masilonyana	20,001-30K	20051
district	DC18	2016	Theunissen Masilonyana	30,001-40K	\N
district	DC18	2016	Theunissen Masilonyana	40,001-50K	47125
district	DC18	2016	Theunissen Masilonyana	50,001-100K	65330
district	DC18	2016	Theunissen Masilonyana	100,001-150K	128031
district	DC18	2016	Theunissen Masilonyana	150,001-200K	\N
district	DC18	2016	Theunissen Masilonyana	200,001-300K	\N
district	DC18	2016	Theunissen Masilonyana	300,001-500K	\N
district	DC18	2016	Theunissen Masilonyana	500,001-800K	\N
district	DC18	2016	Theunissen Masilonyana	800,001-1M	\N
district	DC18	2016	Theunissen Masilonyana	Above 1M	\N
district	DC2	2016	Tulbagh	Under 1.5K	\N
district	DC2	2016	Tulbagh	1,501-3K	\N
district	DC2	2016	Tulbagh	3,001-5K	\N
district	DC2	2016	Tulbagh	5,001-10K	\N
district	DC2	2016	Tulbagh	10,001-20K	11942
district	DC2	2016	Tulbagh	20,001-30K	\N
district	DC2	2016	Tulbagh	30,001-40K	\N
district	DC2	2016	Tulbagh	40,001-50K	49462
district	DC2	2016	Tulbagh	50,001-100K	71014
district	DC2	2016	Tulbagh	100,001-150K	117647
district	DC2	2016	Tulbagh	150,001-200K	\N
district	DC2	2016	Tulbagh	200,001-300K	204386
district	DC2	2016	Tulbagh	300,001-500K	\N
district	DC2	2016	Tulbagh	500,001-800K	\N
district	DC2	2016	Tulbagh	800,001-1M	\N
district	DC2	2016	Tulbagh	Above 1M	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Under 1.5K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	1,501-3K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	3,001-5K	3866
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	5,001-10K	6863
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	10,001-20K	12741
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	20,001-30K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	30,001-40K	33098
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	40,001-50K	46267
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	50,001-100K	68267
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	100,001-150K	139271
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	150,001-200K	179412
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	200,001-300K	253549
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	300,001-500K	342129
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	500,001-800K	585016
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	800,001-1M	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Above 1M	\N
district	DC26	2016	Ulundi	Under 1.5K	73
district	DC26	2016	Ulundi	1,501-3K	\N
district	DC26	2016	Ulundi	3,001-5K	\N
district	DC26	2016	Ulundi	5,001-10K	6749
district	DC26	2016	Ulundi	10,001-20K	12938
district	DC26	2016	Ulundi	20,001-30K	22727
district	DC26	2016	Ulundi	30,001-40K	39640
district	DC26	2016	Ulundi	40,001-50K	46274
district	DC26	2016	Ulundi	50,001-100K	67162
district	DC26	2016	Ulundi	100,001-150K	114173
district	DC26	2016	Ulundi	150,001-200K	\N
district	DC26	2016	Ulundi	200,001-300K	\N
district	DC26	2016	Ulundi	300,001-500K	\N
district	DC26	2016	Ulundi	500,001-800K	\N
district	DC26	2016	Ulundi	800,001-1M	\N
district	DC26	2016	Ulundi	Above 1M	\N
district	DC43	2016	Underberg KwaSani	Under 1.5K	\N
district	DC43	2016	Underberg KwaSani	1,501-3K	\N
district	DC43	2016	Underberg KwaSani	3,001-5K	4878
district	DC43	2016	Underberg KwaSani	5,001-10K	7770
district	DC43	2016	Underberg KwaSani	10,001-20K	13631
district	DC43	2016	Underberg KwaSani	20,001-30K	24978
district	DC43	2016	Underberg KwaSani	30,001-40K	34708
district	DC43	2016	Underberg KwaSani	40,001-50K	45774
district	DC43	2016	Underberg KwaSani	50,001-100K	72088
district	DC43	2016	Underberg KwaSani	100,001-150K	122555
district	DC43	2016	Underberg KwaSani	150,001-200K	164286
district	DC43	2016	Underberg KwaSani	200,001-300K	241234
district	DC43	2016	Underberg KwaSani	300,001-500K	\N
district	DC43	2016	Underberg KwaSani	500,001-800K	\N
district	DC43	2016	Underberg KwaSani	800,001-1M	\N
district	DC43	2016	Underberg KwaSani	Above 1M	\N
district	DC44	2016	Uniondale	Under 1.5K	114
district	DC44	2016	Uniondale	1,501-3K	2798
district	DC44	2016	Uniondale	3,001-5K	5000
district	DC44	2016	Uniondale	5,001-10K	7730
district	DC44	2016	Uniondale	10,001-20K	\N
district	DC44	2016	Uniondale	20,001-30K	25610
district	DC44	2016	Uniondale	30,001-40K	\N
district	DC44	2016	Uniondale	40,001-50K	43210
district	DC44	2016	Uniondale	50,001-100K	\N
district	DC44	2016	Uniondale	100,001-150K	\N
district	DC44	2016	Uniondale	150,001-200K	189145
district	DC44	2016	Uniondale	200,001-300K	\N
district	DC44	2016	Uniondale	300,001-500K	\N
district	DC44	2016	Uniondale	500,001-800K	\N
district	DC44	2016	Uniondale	800,001-1M	\N
district	DC44	2016	Uniondale	Above 1M	\N
district	DC35	2016	Usutu	Under 1.5K	\N
district	DC35	2016	Usutu	1,501-3K	\N
district	DC35	2016	Usutu	3,001-5K	4442
district	DC35	2016	Usutu	5,001-10K	9113
district	DC35	2016	Usutu	10,001-20K	10638
district	DC35	2016	Usutu	20,001-30K	24236
district	DC35	2016	Usutu	30,001-40K	\N
district	DC35	2016	Usutu	40,001-50K	\N
district	DC35	2016	Usutu	50,001-100K	\N
district	DC35	2016	Usutu	100,001-150K	\N
district	DC35	2016	Usutu	150,001-200K	\N
district	DC35	2016	Usutu	200,001-300K	\N
district	DC35	2016	Usutu	300,001-500K	\N
district	DC35	2016	Usutu	500,001-800K	\N
district	DC35	2016	Usutu	800,001-1M	\N
district	DC35	2016	Usutu	Above 1M	\N
district	DC25	2016	Utrecht eMadlangeni	Under 1.5K	1350
district	DC25	2016	Utrecht eMadlangeni	1,501-3K	2909
district	DC25	2016	Utrecht eMadlangeni	3,001-5K	3725
district	DC25	2016	Utrecht eMadlangeni	5,001-10K	7741
district	DC25	2016	Utrecht eMadlangeni	10,001-20K	13107
district	DC25	2016	Utrecht eMadlangeni	20,001-30K	27076
district	DC25	2016	Utrecht eMadlangeni	30,001-40K	33333
district	DC25	2016	Utrecht eMadlangeni	40,001-50K	\N
district	DC25	2016	Utrecht eMadlangeni	50,001-100K	63524
district	DC25	2016	Utrecht eMadlangeni	100,001-150K	125000
district	DC25	2016	Utrecht eMadlangeni	150,001-200K	\N
district	DC25	2016	Utrecht eMadlangeni	200,001-300K	\N
district	DC25	2016	Utrecht eMadlangeni	300,001-500K	\N
district	DC25	2016	Utrecht eMadlangeni	500,001-800K	\N
district	DC25	2016	Utrecht eMadlangeni	800,001-1M	\N
district	DC25	2016	Utrecht eMadlangeni	Above 1M	\N
district	DC9	2016	Vaalharts Phokwane	Under 1.5K	\N
district	DC9	2016	Vaalharts Phokwane	1,501-3K	\N
district	DC9	2016	Vaalharts Phokwane	3,001-5K	\N
district	DC9	2016	Vaalharts Phokwane	5,001-10K	\N
district	DC9	2016	Vaalharts Phokwane	10,001-20K	\N
district	DC9	2016	Vaalharts Phokwane	20,001-30K	\N
district	DC9	2016	Vaalharts Phokwane	30,001-40K	\N
district	DC9	2016	Vaalharts Phokwane	40,001-50K	\N
district	DC9	2016	Vaalharts Phokwane	50,001-100K	63093
district	DC9	2016	Vaalharts Phokwane	100,001-150K	116372
district	DC9	2016	Vaalharts Phokwane	150,001-200K	192308
district	DC9	2016	Vaalharts Phokwane	200,001-300K	245068
district	DC9	2016	Vaalharts Phokwane	300,001-500K	331411
district	DC9	2016	Vaalharts Phokwane	500,001-800K	591567
district	DC9	2016	Vaalharts Phokwane	800,001-1M	939394
district	DC9	2016	Vaalharts Phokwane	Above 1M	\N
district	DC1	2016	Vanrynsdorp Matzikama	Under 1.5K	561
district	DC1	2016	Vanrynsdorp Matzikama	1,501-3K	2594
district	DC1	2016	Vanrynsdorp Matzikama	3,001-5K	\N
district	DC1	2016	Vanrynsdorp Matzikama	5,001-10K	7290
district	DC1	2016	Vanrynsdorp Matzikama	10,001-20K	15454
district	DC1	2016	Vanrynsdorp Matzikama	20,001-30K	25220
district	DC1	2016	Vanrynsdorp Matzikama	30,001-40K	\N
district	DC1	2016	Vanrynsdorp Matzikama	40,001-50K	\N
district	DC10	2016	Aberdeen	30,001-40K	\N
district	DC1	2016	Vanrynsdorp Matzikama	50,001-100K	50847
district	DC1	2016	Vanrynsdorp Matzikama	100,001-150K	\N
district	DC1	2016	Vanrynsdorp Matzikama	150,001-200K	159301
district	DC1	2016	Vanrynsdorp Matzikama	200,001-300K	260354
district	DC1	2016	Vanrynsdorp Matzikama	300,001-500K	323958
district	DC1	2016	Vanrynsdorp Matzikama	500,001-800K	\N
district	DC1	2016	Vanrynsdorp Matzikama	800,001-1M	\N
district	DC1	2016	Vanrynsdorp Matzikama	Above 1M	\N
district	DC18	2016	Ventersburg Matjhabeng	Under 1.5K	\N
district	DC18	2016	Ventersburg Matjhabeng	1,501-3K	2793
district	DC18	2016	Ventersburg Matjhabeng	3,001-5K	3314
district	DC18	2016	Ventersburg Matjhabeng	5,001-10K	8378
district	DC18	2016	Ventersburg Matjhabeng	10,001-20K	13128
district	DC18	2016	Ventersburg Matjhabeng	20,001-30K	23008
district	DC18	2016	Ventersburg Matjhabeng	30,001-40K	\N
district	DC18	2016	Ventersburg Matjhabeng	40,001-50K	\N
district	DC18	2016	Ventersburg Matjhabeng	50,001-100K	\N
district	DC18	2016	Ventersburg Matjhabeng	100,001-150K	109856
district	DC18	2016	Ventersburg Matjhabeng	150,001-200K	\N
district	DC18	2016	Ventersburg Matjhabeng	200,001-300K	\N
district	DC18	2016	Ventersburg Matjhabeng	300,001-500K	\N
district	DC18	2016	Ventersburg Matjhabeng	500,001-800K	\N
district	DC18	2016	Ventersburg Matjhabeng	800,001-1M	\N
district	DC18	2016	Ventersburg Matjhabeng	Above 1M	\N
district	DC7	2016	Victoria-Wes Umbuntu	Under 1.5K	\N
district	DC7	2016	Victoria-Wes Umbuntu	1,501-3K	2386
district	DC7	2016	Victoria-Wes Umbuntu	3,001-5K	\N
district	DC7	2016	Victoria-Wes Umbuntu	5,001-10K	6288
district	DC7	2016	Victoria-Wes Umbuntu	10,001-20K	\N
district	DC7	2016	Victoria-Wes Umbuntu	20,001-30K	\N
district	DC7	2016	Victoria-Wes Umbuntu	30,001-40K	\N
district	DC7	2016	Victoria-Wes Umbuntu	40,001-50K	\N
district	DC7	2016	Victoria-Wes Umbuntu	50,001-100K	\N
district	DC7	2016	Victoria-Wes Umbuntu	100,001-150K	\N
district	DC7	2016	Victoria-Wes Umbuntu	150,001-200K	\N
district	DC7	2016	Victoria-Wes Umbuntu	200,001-300K	\N
district	DC7	2016	Victoria-Wes Umbuntu	300,001-500K	\N
district	DC7	2016	Victoria-Wes Umbuntu	500,001-800K	\N
district	DC7	2016	Victoria-Wes Umbuntu	800,001-1M	\N
district	DC7	2016	Victoria-Wes Umbuntu	Above 1M	\N
district	DC20	2016	Viljoenskroon Moqhaka	Under 1.5K	\N
district	DC20	2016	Viljoenskroon Moqhaka	1,501-3K	\N
district	DC20	2016	Viljoenskroon Moqhaka	3,001-5K	\N
district	DC20	2016	Viljoenskroon Moqhaka	5,001-10K	9128
district	DC20	2016	Viljoenskroon Moqhaka	10,001-20K	15115
district	DC20	2016	Viljoenskroon Moqhaka	20,001-30K	\N
district	DC20	2016	Viljoenskroon Moqhaka	30,001-40K	\N
district	DC20	2016	Viljoenskroon Moqhaka	40,001-50K	\N
district	DC20	2016	Viljoenskroon Moqhaka	50,001-100K	61250
district	DC20	2016	Viljoenskroon Moqhaka	100,001-150K	\N
district	DC20	2016	Viljoenskroon Moqhaka	150,001-200K	164097
district	DC20	2016	Viljoenskroon Moqhaka	200,001-300K	\N
district	DC20	2016	Viljoenskroon Moqhaka	300,001-500K	\N
district	DC20	2016	Viljoenskroon Moqhaka	500,001-800K	\N
district	DC20	2016	Viljoenskroon Moqhaka	800,001-1M	\N
district	DC20	2016	Viljoenskroon Moqhaka	Above 1M	\N
municipality	DC40	2016	Vostershoop	Under 1.5K	\N
municipality	DC40	2016	Vostershoop	1,501-3K	\N
district	DC4	2016	Knysna	3,001-5K	\N
municipality	DC40	2016	Vostershoop	3,001-5K	\N
municipality	DC40	2016	Vostershoop	5,001-10K	\N
municipality	DC40	2016	Vostershoop	10,001-20K	15666
municipality	DC40	2016	Vostershoop	20,001-30K	\N
municipality	DC40	2016	Vostershoop	30,001-40K	\N
municipality	DC40	2016	Vostershoop	40,001-50K	\N
municipality	DC40	2016	Vostershoop	50,001-100K	\N
municipality	DC40	2016	Vostershoop	100,001-150K	\N
municipality	DC40	2016	Vostershoop	150,001-200K	\N
municipality	DC40	2016	Vostershoop	200,001-300K	\N
municipality	DC40	2016	Vostershoop	300,001-500K	\N
municipality	DC40	2016	Vostershoop	500,001-800K	\N
municipality	DC40	2016	Vostershoop	800,001-1M	\N
municipality	DC40	2016	Vostershoop	Above 1M	\N
district	DC19	2016	Vrede Phumelela	Under 1.5K	9
district	DC19	2016	Vrede Phumelela	1,501-3K	1928
district	DC19	2016	Vrede Phumelela	3,001-5K	3568
district	DC19	2016	Vrede Phumelela	5,001-10K	8284
district	DC19	2016	Vrede Phumelela	10,001-20K	14293
district	DC19	2016	Vrede Phumelela	20,001-30K	25275
district	DC19	2016	Vrede Phumelela	30,001-40K	\N
district	DC19	2016	Vrede Phumelela	40,001-50K	\N
district	DC19	2016	Vrede Phumelela	50,001-100K	\N
district	DC19	2016	Vrede Phumelela	100,001-150K	\N
district	DC19	2016	Vrede Phumelela	150,001-200K	\N
district	DC19	2016	Vrede Phumelela	200,001-300K	\N
district	DC19	2016	Vrede Phumelela	300,001-500K	\N
district	DC19	2016	Vrede Phumelela	500,001-800K	\N
district	DC19	2016	Vrede Phumelela	800,001-1M	\N
district	DC19	2016	Vrede Phumelela	Above 1M	\N
district	DC20	2016	Vredefort Ngwathe	Under 1.5K	\N
district	DC20	2016	Vredefort Ngwathe	1,501-3K	\N
district	DC20	2016	Vredefort Ngwathe	3,001-5K	\N
district	DC20	2016	Vredefort Ngwathe	5,001-10K	9277
district	DC20	2016	Vredefort Ngwathe	10,001-20K	14198
district	DC20	2016	Vredefort Ngwathe	20,001-30K	24194
district	DC20	2016	Vredefort Ngwathe	30,001-40K	35174
district	DC20	2016	Vredefort Ngwathe	40,001-50K	\N
district	DC20	2016	Vredefort Ngwathe	50,001-100K	\N
district	DC20	2016	Vredefort Ngwathe	100,001-150K	\N
district	DC10	2016	Aberdeen	40,001-50K	\N
district	DC20	2016	Vredefort Ngwathe	150,001-200K	\N
district	DC20	2016	Vredefort Ngwathe	200,001-300K	\N
district	DC20	2016	Vredefort Ngwathe	300,001-500K	\N
district	DC20	2016	Vredefort Ngwathe	500,001-800K	\N
district	DC20	2016	Vredefort Ngwathe	800,001-1M	\N
district	DC20	2016	Vredefort Ngwathe	Above 1M	\N
district	DC39	2016	Vryburg Naledi	Under 1.5K	\N
district	DC39	2016	Vryburg Naledi	1,501-3K	2156
district	DC39	2016	Vryburg Naledi	3,001-5K	4539
district	DC39	2016	Vryburg Naledi	5,001-10K	7200
district	DC39	2016	Vryburg Naledi	10,001-20K	14893
district	DC39	2016	Vryburg Naledi	20,001-30K	25805
district	DC39	2016	Vryburg Naledi	30,001-40K	38095
district	DC39	2016	Vryburg Naledi	40,001-50K	\N
district	DC39	2016	Vryburg Naledi	50,001-100K	\N
district	DC39	2016	Vryburg Naledi	100,001-150K	112500
district	DC39	2016	Vryburg Naledi	150,001-200K	\N
district	DC39	2016	Vryburg Naledi	200,001-300K	\N
district	DC39	2016	Vryburg Naledi	300,001-500K	\N
district	DC39	2016	Vryburg Naledi	500,001-800K	\N
district	DC39	2016	Vryburg Naledi	800,001-1M	\N
district	DC39	2016	Vryburg Naledi	Above 1M	\N
district	DC26	2016	Vryheid Abaqulusi	Under 1.5K	\N
district	DC26	2016	Vryheid Abaqulusi	1,501-3K	\N
district	DC26	2016	Vryheid Abaqulusi	3,001-5K	\N
district	DC26	2016	Vryheid Abaqulusi	5,001-10K	7205
district	DC26	2016	Vryheid Abaqulusi	10,001-20K	\N
district	DC26	2016	Vryheid Abaqulusi	20,001-30K	\N
district	DC26	2016	Vryheid Abaqulusi	30,001-40K	\N
district	DC26	2016	Vryheid Abaqulusi	40,001-50K	\N
district	DC26	2016	Vryheid Abaqulusi	50,001-100K	\N
district	DC26	2016	Vryheid Abaqulusi	100,001-150K	\N
district	DC26	2016	Vryheid Abaqulusi	150,001-200K	\N
district	DC26	2016	Vryheid Abaqulusi	200,001-300K	\N
district	DC26	2016	Vryheid Abaqulusi	300,001-500K	\N
district	DC26	2016	Vryheid Abaqulusi	500,001-800K	\N
district	DC26	2016	Vryheid Abaqulusi	800,001-1M	\N
district	DC26	2016	Vryheid Abaqulusi	Above 1M	\N
district	DC18	2016	Welkom Matjhabeng	Under 1.5K	\N
district	DC18	2016	Welkom Matjhabeng	1,501-3K	\N
district	DC18	2016	Welkom Matjhabeng	3,001-5K	\N
district	DC18	2016	Welkom Matjhabeng	5,001-10K	\N
district	DC18	2016	Welkom Matjhabeng	10,001-20K	\N
district	DC18	2016	Welkom Matjhabeng	20,001-30K	28871
district	DC18	2016	Welkom Matjhabeng	30,001-40K	\N
district	DC18	2016	Welkom Matjhabeng	40,001-50K	\N
district	DC18	2016	Welkom Matjhabeng	50,001-100K	\N
district	DC18	2016	Welkom Matjhabeng	100,001-150K	\N
district	DC18	2016	Welkom Matjhabeng	150,001-200K	\N
district	DC18	2016	Welkom Matjhabeng	200,001-300K	\N
district	DC18	2016	Welkom Matjhabeng	300,001-500K	\N
district	DC18	2016	Welkom Matjhabeng	500,001-800K	\N
district	DC18	2016	Welkom Matjhabeng	800,001-1M	\N
district	DC18	2016	Welkom Matjhabeng	Above 1M	\N
municipality	MAN	2016	Wepener Naledi	Under 1.5K	\N
municipality	MAN	2016	Wepener Naledi	1,501-3K	2706
municipality	MAN	2016	Wepener Naledi	3,001-5K	3442
municipality	MAN	2016	Wepener Naledi	5,001-10K	7564
municipality	MAN	2016	Wepener Naledi	10,001-20K	\N
municipality	MAN	2016	Wepener Naledi	20,001-30K	\N
municipality	MAN	2016	Wepener Naledi	30,001-40K	\N
municipality	MAN	2016	Wepener Naledi	40,001-50K	\N
municipality	MAN	2016	Wepener Naledi	50,001-100K	\N
municipality	MAN	2016	Wepener Naledi	100,001-150K	\N
municipality	MAN	2016	Wepener Naledi	150,001-200K	\N
municipality	MAN	2016	Wepener Naledi	200,001-300K	\N
municipality	MAN	2016	Wepener Naledi	300,001-500K	\N
municipality	MAN	2016	Wepener Naledi	500,001-800K	\N
municipality	MAN	2016	Wepener Naledi	800,001-1M	\N
municipality	MAN	2016	Wepener Naledi	Above 1M	\N
district	DC18	2016	Wesselsbron Nala	Under 1.5K	\N
district	DC18	2016	Wesselsbron Nala	1,501-3K	\N
district	DC18	2016	Wesselsbron Nala	3,001-5K	\N
district	DC18	2016	Wesselsbron Nala	5,001-10K	9886
district	DC18	2016	Wesselsbron Nala	10,001-20K	16514
district	DC18	2016	Wesselsbron Nala	20,001-30K	22625
district	DC18	2016	Wesselsbron Nala	30,001-40K	\N
district	DC18	2016	Wesselsbron Nala	40,001-50K	\N
district	DC18	2016	Wesselsbron Nala	50,001-100K	53587
district	DC18	2016	Wesselsbron Nala	100,001-150K	\N
district	DC18	2016	Wesselsbron Nala	150,001-200K	\N
district	DC18	2016	Wesselsbron Nala	200,001-300K	\N
district	DC18	2016	Wesselsbron Nala	300,001-500K	\N
district	DC18	2016	Wesselsbron Nala	500,001-800K	\N
district	DC18	2016	Wesselsbron Nala	800,001-1M	\N
district	DC18	2016	Wesselsbron Nala	Above 1M	\N
district	DC10	2016	Willomore Baviaans	Under 1.5K	1422
district	DC10	2016	Willomore Baviaans	1,501-3K	2420
district	DC10	2016	Willomore Baviaans	3,001-5K	3930
district	DC10	2016	Willomore Baviaans	5,001-10K	6473
district	DC10	2016	Willomore Baviaans	10,001-20K	\N
district	DC10	2016	Willomore Baviaans	20,001-30K	\N
district	DC10	2016	Willomore Baviaans	30,001-40K	\N
district	DC10	2016	Willomore Baviaans	40,001-50K	\N
district	DC10	2016	Willomore Baviaans	50,001-100K	\N
district	DC10	2016	Willomore Baviaans	100,001-150K	\N
district	DC10	2016	Willomore Baviaans	150,001-200K	\N
district	DC10	2016	Willomore Baviaans	200,001-300K	\N
district	DC10	2016	Willomore Baviaans	300,001-500K	\N
district	DC10	2016	Willomore Baviaans	500,001-800K	\N
district	DC10	2016	Willomore Baviaans	800,001-1M	\N
district	DC10	2016	Willomore Baviaans	Above 1M	\N
district	DC18	2016	Winburg Masilonyana	Under 1.5K	\N
district	DC18	2016	Winburg Masilonyana	1,501-3K	\N
district	DC18	2016	Winburg Masilonyana	3,001-5K	\N
district	DC18	2016	Winburg Masilonyana	5,001-10K	7393
district	DC18	2016	Winburg Masilonyana	10,001-20K	13165
district	DC18	2016	Winburg Masilonyana	20,001-30K	\N
district	DC18	2016	Winburg Masilonyana	30,001-40K	\N
district	DC18	2016	Winburg Masilonyana	40,001-50K	\N
district	DC18	2016	Winburg Masilonyana	50,001-100K	\N
district	DC18	2016	Winburg Masilonyana	100,001-150K	\N
district	DC18	2016	Winburg Masilonyana	150,001-200K	\N
district	DC18	2016	Winburg Masilonyana	200,001-300K	\N
district	DC18	2016	Winburg Masilonyana	300,001-500K	\N
district	DC18	2016	Winburg Masilonyana	500,001-800K	\N
district	DC18	2016	Winburg Masilonyana	800,001-1M	\N
district	DC18	2016	Winburg Masilonyana	Above 1M	\N
district	DC14	2016	Wodehouse	Under 1.5K	270
district	DC14	2016	Wodehouse	1,501-3K	2016
district	DC14	2016	Wodehouse	3,001-5K	4047
district	DC14	2016	Wodehouse	5,001-10K	6271
district	DC14	2016	Wodehouse	10,001-20K	\N
district	DC14	2016	Wodehouse	20,001-30K	\N
district	DC14	2016	Wodehouse	30,001-40K	\N
district	DC14	2016	Wodehouse	40,001-50K	\N
district	DC14	2016	Wodehouse	50,001-100K	\N
district	DC14	2016	Wodehouse	100,001-150K	\N
district	DC14	2016	Wodehouse	150,001-200K	\N
district	DC14	2016	Wodehouse	200,001-300K	\N
district	DC14	2016	Wodehouse	300,001-500K	\N
district	DC14	2016	Wodehouse	500,001-800K	\N
district	DC14	2016	Wodehouse	800,001-1M	\N
district	DC14	2016	Wodehouse	Above 1M	\N
district	DC40	2016	Wolmaransstad Maquassi	Under 1.5K	\N
district	DC40	2016	Wolmaransstad Maquassi	1,501-3K	\N
district	DC40	2016	Wolmaransstad Maquassi	3,001-5K	4552
district	DC40	2016	Wolmaransstad Maquassi	5,001-10K	7978
district	DC40	2016	Wolmaransstad Maquassi	10,001-20K	15825
district	DC40	2016	Wolmaransstad Maquassi	20,001-30K	25753
district	DC40	2016	Wolmaransstad Maquassi	30,001-40K	30270
district	DC40	2016	Wolmaransstad Maquassi	40,001-50K	42647
district	DC40	2016	Wolmaransstad Maquassi	50,001-100K	\N
district	DC40	2016	Wolmaransstad Maquassi	100,001-150K	\N
district	DC40	2016	Wolmaransstad Maquassi	150,001-200K	\N
district	DC40	2016	Wolmaransstad Maquassi	200,001-300K	\N
district	DC40	2016	Wolmaransstad Maquassi	300,001-500K	\N
district	DC40	2016	Wolmaransstad Maquassi	500,001-800K	\N
district	DC40	2016	Wolmaransstad Maquassi	800,001-1M	\N
district	DC40	2016	Wolmaransstad Maquassi	Above 1M	\N
district	DC2	2016	Worcester Breede Valley	Under 1.5K	228
district	DC2	2016	Worcester Breede Valley	1,501-3K	1907
district	DC2	2016	Worcester Breede Valley	3,001-5K	\N
district	DC2	2016	Worcester Breede Valley	5,001-10K	9460
district	DC2	2016	Worcester Breede Valley	10,001-20K	12514
district	DC2	2016	Worcester Breede Valley	20,001-30K	25675
district	DC2	2016	Worcester Breede Valley	30,001-40K	\N
district	DC2	2016	Worcester Breede Valley	40,001-50K	43370
district	DC2	2016	Worcester Breede Valley	50,001-100K	76518
district	DC2	2016	Worcester Breede Valley	100,001-150K	110431
district	DC2	2016	Worcester Breede Valley	150,001-200K	192662
district	DC2	2016	Worcester Breede Valley	200,001-300K	267868
district	DC2	2016	Worcester Breede Valley	300,001-500K	\N
district	DC2	2016	Worcester Breede Valley	500,001-800K	545455
district	DC2	2016	Worcester Breede Valley	800,001-1M	\N
district	DC2	2016	Worcester Breede Valley	Above 1M	\N
district	DC16	2016	Zastron Mohokare	Under 1.5K	\N
district	DC16	2016	Zastron Mohokare	1,501-3K	2249
district	DC16	2016	Zastron Mohokare	3,001-5K	3796
district	DC16	2016	Zastron Mohokare	5,001-10K	6438
district	DC16	2016	Zastron Mohokare	10,001-20K	\N
district	DC16	2016	Zastron Mohokare	20,001-30K	\N
district	DC16	2016	Zastron Mohokare	30,001-40K	\N
district	DC16	2016	Zastron Mohokare	40,001-50K	\N
district	DC16	2016	Zastron Mohokare	50,001-100K	\N
district	DC16	2016	Zastron Mohokare	100,001-150K	\N
district	DC16	2016	Zastron Mohokare	150,001-200K	\N
district	DC16	2016	Zastron Mohokare	200,001-300K	\N
district	DC16	2016	Zastron Mohokare	300,001-500K	\N
district	DC16	2016	Zastron Mohokare	500,001-800K	\N
district	DC16	2016	Zastron Mohokare	800,001-1M	\N
district	DC16	2016	Zastron Mohokare	Above 1M	\N
district	DC38	2016	Zeerust Ramotshere	Under 1.5K	296
district	DC38	2016	Zeerust Ramotshere	1,501-3K	2360
district	DC38	2016	Zeerust Ramotshere	3,001-5K	4164
district	DC38	2016	Zeerust Ramotshere	5,001-10K	7621
district	DC38	2016	Zeerust Ramotshere	10,001-20K	14913
district	DC38	2016	Zeerust Ramotshere	20,001-30K	24085
district	DC38	2016	Zeerust Ramotshere	30,001-40K	36010
district	DC38	2016	Zeerust Ramotshere	40,001-50K	\N
district	DC38	2016	Zeerust Ramotshere	50,001-100K	64116
district	DC38	2016	Zeerust Ramotshere	100,001-150K	115507
district	DC38	2016	Zeerust Ramotshere	150,001-200K	\N
district	DC38	2016	Zeerust Ramotshere	200,001-300K	\N
district	DC38	2016	Zeerust Ramotshere	300,001-500K	\N
district	DC38	2016	Zeerust Ramotshere	500,001-800K	\N
district	DC38	2016	Zeerust Ramotshere	800,001-1M	\N
district	DC38	2016	Zeerust Ramotshere	Above 1M	\N
district	DC10	2016	Aberdeen	Under 1.5K	\N
district	DC10	2016	Aberdeen	1,501-3K	2796
district	DC10	2016	Aberdeen	50,001-100K	\N
district	DC10	2016	Aberdeen	100,001-150K	\N
district	DC10	2016	Aberdeen	150,001-200K	\N
district	DC10	2016	Aberdeen	200,001-300K	\N
district	DC10	2016	Aberdeen	300,001-500K	\N
district	DC10	2016	Aberdeen	500,001-800K	\N
district	DC10	2016	Aberdeen	800,001-1M	\N
district	DC10	2016	Aberdeen	Above 1M	\N
district	DC10	2016	Albany	Under 1.5K	\N
district	DC10	2016	Albany	1,501-3K	3000
district	DC10	2016	Albany	3,001-5K	3466
district	DC10	2016	Albany	5,001-10K	7137
district	DC10	2016	Albany	10,001-20K	13279
district	DC10	2016	Albany	20,001-30K	25037
district	DC10	2016	Albany	30,001-40K	\N
district	DC10	2016	Albany	40,001-50K	\N
district	DC10	2016	Albany	50,001-100K	69091
district	DC10	2016	Albany	100,001-150K	\N
district	DC10	2016	Albany	150,001-200K	178571
district	DC10	2016	Albany	200,001-300K	\N
district	DC10	2016	Albany	300,001-500K	\N
district	DC10	2016	Albany	500,001-800K	\N
district	DC10	2016	Albany	800,001-1M	\N
district	DC10	2016	Albany	Above 1M	\N
district	DC10	2016	Alexandria Ndlambe	Under 1.5K	\N
district	DC10	2016	Alexandria Ndlambe	1,501-3K	\N
district	DC10	2016	Alexandria Ndlambe	3,001-5K	3552
district	DC10	2016	Alexandria Ndlambe	5,001-10K	8746
district	DC10	2016	Alexandria Ndlambe	10,001-20K	16020
district	DC10	2016	Alexandria Ndlambe	20,001-30K	28384
district	DC10	2016	Alexandria Ndlambe	30,001-40K	31318
district	DC10	2016	Alexandria Ndlambe	40,001-50K	43046
district	DC10	2016	Alexandria Ndlambe	50,001-100K	\N
district	DC10	2016	Alexandria Ndlambe	100,001-150K	\N
district	DC10	2016	Alexandria Ndlambe	150,001-200K	\N
district	DC10	2016	Alexandria Ndlambe	200,001-300K	\N
district	DC10	2016	Alexandria Ndlambe	300,001-500K	339394
district	DC10	2016	Alexandria Ndlambe	500,001-800K	\N
district	DC10	2016	Alexandria Ndlambe	800,001-1M	\N
district	DC10	2016	Alexandria Ndlambe	Above 1M	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	Under 1.5K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	1,501-3K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	3,001-5K	3376
district	DC14	2016	Aliwal-Noord Maletsiwai	5,001-10K	6520
district	DC14	2016	Aliwal-Noord Maletsiwai	10,001-20K	14863
district	DC14	2016	Aliwal-Noord Maletsiwai	20,001-30K	24570
district	DC14	2016	Aliwal-Noord Maletsiwai	30,001-40K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	40,001-50K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	50,001-100K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	100,001-150K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	150,001-200K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	200,001-300K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	300,001-500K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	500,001-800K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	800,001-1M	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	Above 1M	\N
district	DC14	2016	Barkly-Oos Senqu	Under 1.5K	\N
district	DC14	2016	Barkly-Oos Senqu	1,501-3K	2433
district	DC14	2016	Barkly-Oos Senqu	3,001-5K	4921
district	DC14	2016	Barkly-Oos Senqu	5,001-10K	6511
district	DC14	2016	Barkly-Oos Senqu	10,001-20K	\N
district	DC14	2016	Barkly-Oos Senqu	20,001-30K	\N
district	DC14	2016	Barkly-Oos Senqu	30,001-40K	\N
district	DC14	2016	Barkly-Oos Senqu	40,001-50K	\N
district	DC14	2016	Barkly-Oos Senqu	50,001-100K	\N
district	DC14	2016	Barkly-Oos Senqu	100,001-150K	\N
district	DC14	2016	Barkly-Oos Senqu	150,001-200K	\N
district	DC14	2016	Barkly-Oos Senqu	200,001-300K	\N
district	DC14	2016	Barkly-Oos Senqu	300,001-500K	\N
district	DC14	2016	Barkly-Oos Senqu	500,001-800K	\N
district	DC14	2016	Barkly-Oos Senqu	800,001-1M	\N
district	DC14	2016	Barkly-Oos Senqu	Above 1M	\N
district	DC10	2016	Bathurst Ndlambe	Under 1.5K	\N
district	DC10	2016	Bathurst Ndlambe	1,501-3K	\N
district	DC10	2016	Bathurst Ndlambe	3,001-5K	\N
district	DC10	2016	Bathurst Ndlambe	5,001-10K	8158
district	DC10	2016	Bathurst Ndlambe	10,001-20K	12686
district	DC10	2016	Bathurst Ndlambe	20,001-30K	\N
district	DC10	2016	Bathurst Ndlambe	30,001-40K	\N
district	DC10	2016	Bathurst Ndlambe	40,001-50K	43305
district	DC10	2016	Bathurst Ndlambe	50,001-100K	57143
district	DC10	2016	Bathurst Ndlambe	100,001-150K	101818
district	DC10	2016	Bathurst Ndlambe	150,001-200K	\N
district	DC10	2016	Bathurst Ndlambe	200,001-300K	\N
district	DC10	2016	Bathurst Ndlambe	300,001-500K	\N
district	DC10	2016	Bathurst Ndlambe	500,001-800K	\N
district	DC10	2016	Bathurst Ndlambe	800,001-1M	\N
district	DC10	2016	Bathurst Ndlambe	Above 1M	\N
district	DC12	2016	Bedford Amathole	Under 1.5K	\N
district	DC12	2016	Bedford Amathole	1,501-3K	\N
district	DC12	2016	Bedford Amathole	3,001-5K	\N
district	DC12	2016	Bedford Amathole	5,001-10K	5038
district	DC12	2016	Bedford Amathole	10,001-20K	\N
district	DC12	2016	Bedford Amathole	20,001-30K	27704
district	DC12	2016	Bedford Amathole	30,001-40K	\N
district	DC12	2016	Bedford Amathole	40,001-50K	\N
district	DC12	2016	Bedford Amathole	50,001-100K	\N
district	DC12	2016	Bedford Amathole	100,001-150K	\N
district	DC12	2016	Bedford Amathole	150,001-200K	\N
district	DC12	2016	Bedford Amathole	200,001-300K	250000
district	DC12	2016	Bedford Amathole	300,001-500K	\N
district	DC12	2016	Bedford Amathole	500,001-800K	\N
district	DC12	2016	Bedford Amathole	800,001-1M	\N
district	DC12	2016	Bedford Amathole	Above 1M	\N
district	DC12	2016	Cathcart Amahlathi	Under 1.5K	\N
district	DC12	2016	Cathcart Amahlathi	1,501-3K	\N
district	DC12	2016	Cathcart Amahlathi	3,001-5K	4680
district	DC12	2016	Cathcart Amahlathi	5,001-10K	8082
district	DC12	2016	Cathcart Amahlathi	10,001-20K	\N
district	DC12	2016	Cathcart Amahlathi	20,001-30K	\N
district	DC12	2016	Cathcart Amahlathi	30,001-40K	\N
district	DC12	2016	Cathcart Amahlathi	40,001-50K	\N
district	DC12	2016	Cathcart Amahlathi	50,001-100K	56818
district	DC12	2016	Cathcart Amahlathi	100,001-150K	\N
district	DC12	2016	Cathcart Amahlathi	150,001-200K	\N
district	DC12	2016	Cathcart Amahlathi	200,001-300K	\N
district	DC12	2016	Cathcart Amahlathi	300,001-500K	\N
district	DC12	2016	Cathcart Amahlathi	500,001-800K	\N
district	DC12	2016	Cathcart Amahlathi	800,001-1M	\N
district	DC12	2016	Cathcart Amahlathi	Above 1M	\N
district	DC13	2016	Cradock Inxuba Yethemba	Under 1.5K	\N
district	DC13	2016	Cradock Inxuba Yethemba	1,501-3K	1540
district	DC13	2016	Cradock Inxuba Yethemba	3,001-5K	4360
district	DC13	2016	Cradock Inxuba Yethemba	5,001-10K	6776
district	DC13	2016	Cradock Inxuba Yethemba	10,001-20K	\N
district	DC13	2016	Cradock Inxuba Yethemba	20,001-30K	\N
district	DC13	2016	Cradock Inxuba Yethemba	30,001-40K	\N
district	DC13	2016	Cradock Inxuba Yethemba	40,001-50K	40250
district	DC13	2016	Cradock Inxuba Yethemba	50,001-100K	61303
district	DC13	2016	Cradock Inxuba Yethemba	100,001-150K	\N
district	DC13	2016	Cradock Inxuba Yethemba	150,001-200K	153901
district	DC13	2016	Cradock Inxuba Yethemba	200,001-300K	\N
district	DC13	2016	Cradock Inxuba Yethemba	300,001-500K	\N
district	DC13	2016	Cradock Inxuba Yethemba	500,001-800K	\N
district	DC13	2016	Cradock Inxuba Yethemba	800,001-1M	\N
district	DC13	2016	Cradock Inxuba Yethemba	Above 1M	\N
district	DC14	2016	Elliot Sakhiszwe	Under 1.5K	\N
district	DC14	2016	Elliot Sakhiszwe	1,501-3K	1679
district	DC14	2016	Elliot Sakhiszwe	3,001-5K	4658
district	DC14	2016	Elliot Sakhiszwe	5,001-10K	7298
district	DC14	2016	Elliot Sakhiszwe	10,001-20K	\N
district	DC14	2016	Elliot Sakhiszwe	20,001-30K	22958
district	DC14	2016	Elliot Sakhiszwe	30,001-40K	\N
district	DC14	2016	Elliot Sakhiszwe	40,001-50K	43135
district	DC14	2016	Elliot Sakhiszwe	50,001-100K	100000
district	DC14	2016	Elliot Sakhiszwe	100,001-150K	\N
district	DC14	2016	Elliot Sakhiszwe	150,001-200K	\N
district	DC14	2016	Elliot Sakhiszwe	200,001-300K	\N
district	DC14	2016	Elliot Sakhiszwe	300,001-500K	\N
district	DC14	2016	Elliot Sakhiszwe	500,001-800K	\N
district	DC14	2016	Elliot Sakhiszwe	800,001-1M	\N
district	DC14	2016	Elliot Sakhiszwe	Above 1M	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	Under 1.5K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	1,501-3K	2114
district	DC12	2016	Fort Beaufort Raymond Mhlaba	3,001-5K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	5,001-10K	8240
district	DC12	2016	Fort Beaufort Raymond Mhlaba	10,001-20K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	20,001-30K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	30,001-40K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	40,001-50K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	50,001-100K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	100,001-150K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	150,001-200K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	200,001-300K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	300,001-500K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	500,001-800K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	800,001-1M	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	Above 1M	\N
district	DC10	2016	Graaff-Reinet Camdeboo	Under 1.5K	1033
district	DC10	2016	Graaff-Reinet Camdeboo	1,501-3K	1766
district	DC10	2016	Graaff-Reinet Camdeboo	3,001-5K	3370
district	DC10	2016	Graaff-Reinet Camdeboo	5,001-10K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	10,001-20K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	20,001-30K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	30,001-40K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	40,001-50K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	50,001-100K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	100,001-150K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	150,001-200K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	200,001-300K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	300,001-500K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	500,001-800K	\N
district	DC10	2016	Graaff-Reinet Camdeboo	800,001-1M	\N
district	DC10	2016	Graaff-Reinet Camdeboo	Above 1M	\N
district	DC10	2016	Humansdorp Kouga	Under 1.5K	963
district	DC10	2016	Humansdorp Kouga	1,501-3K	2281
district	DC10	2016	Humansdorp Kouga	3,001-5K	\N
district	DC10	2016	Humansdorp Kouga	5,001-10K	5461
district	DC10	2016	Humansdorp Kouga	10,001-20K	15622
district	DC10	2016	Humansdorp Kouga	20,001-30K	28226
district	DC10	2016	Humansdorp Kouga	30,001-40K	38851
district	DC10	2016	Humansdorp Kouga	40,001-50K	45141
district	DC10	2016	Humansdorp Kouga	50,001-100K	83689
district	DC10	2016	Humansdorp Kouga	100,001-150K	102381
district	DC10	2016	Humansdorp Kouga	150,001-200K	\N
district	DC10	2016	Humansdorp Kouga	200,001-300K	280929
district	DC10	2016	Humansdorp Kouga	300,001-500K	351944
district	DC10	2016	Humansdorp Kouga	500,001-800K	695833
district	DC10	2016	Humansdorp Kouga	800,001-1M	\N
district	DC10	2016	Humansdorp Kouga	Above 1M	1083333
district	DC10	2016	Jansenville Ikwezi	Under 1.5K	\N
district	DC10	2016	Jansenville Ikwezi	1,501-3K	2232
district	DC10	2016	Jansenville Ikwezi	3,001-5K	3059
district	DC10	2016	Jansenville Ikwezi	5,001-10K	\N
district	DC10	2016	Jansenville Ikwezi	10,001-20K	\N
district	DC10	2016	Jansenville Ikwezi	20,001-30K	\N
district	DC10	2016	Jansenville Ikwezi	30,001-40K	\N
district	DC10	2016	Jansenville Ikwezi	40,001-50K	\N
district	DC10	2016	Jansenville Ikwezi	50,001-100K	\N
district	DC10	2016	Jansenville Ikwezi	100,001-150K	\N
district	DC10	2016	Jansenville Ikwezi	150,001-200K	\N
district	DC10	2016	Jansenville Ikwezi	200,001-300K	\N
district	DC10	2016	Jansenville Ikwezi	300,001-500K	\N
district	DC10	2016	Jansenville Ikwezi	500,001-800K	\N
district	DC10	2016	Jansenville Ikwezi	800,001-1M	\N
district	DC10	2016	Jansenville Ikwezi	Above 1M	\N
district	DC10	2016	Joubertina Kou-Kamma	Under 1.5K	752
district	DC10	2016	Joubertina Kou-Kamma	1,501-3K	2196
district	DC10	2016	Joubertina Kou-Kamma	3,001-5K	\N
district	DC10	2016	Joubertina Kou-Kamma	5,001-10K	7405
district	DC10	2016	Joubertina Kou-Kamma	10,001-20K	14442
district	DC10	2016	Joubertina Kou-Kamma	20,001-30K	\N
district	DC10	2016	Joubertina Kou-Kamma	30,001-40K	30556
district	DC10	2016	Joubertina Kou-Kamma	40,001-50K	46447
district	DC10	2016	Joubertina Kou-Kamma	50,001-100K	70833
district	DC10	2016	Joubertina Kou-Kamma	100,001-150K	\N
district	DC10	2016	Joubertina Kou-Kamma	150,001-200K	\N
district	DC10	2016	Joubertina Kou-Kamma	200,001-300K	\N
district	DC10	2016	Joubertina Kou-Kamma	300,001-500K	320551
district	DC10	2016	Joubertina Kou-Kamma	500,001-800K	\N
district	DC10	2016	Joubertina Kou-Kamma	800,001-1M	\N
district	DC10	2016	Joubertina Kou-Kamma	Above 1M	\N
municipality	BUF	2016	King Williams Town Baffalo City	Under 1.5K	749
municipality	BUF	2016	King Williams Town Baffalo City	1,501-3K	1841
municipality	BUF	2016	King Williams Town Baffalo City	3,001-5K	\N
municipality	BUF	2016	King Williams Town Baffalo City	5,001-10K	6729
municipality	BUF	2016	King Williams Town Baffalo City	10,001-20K	12687
municipality	BUF	2016	King Williams Town Baffalo City	20,001-30K	\N
municipality	BUF	2016	King Williams Town Baffalo City	30,001-40K	\N
municipality	BUF	2016	King Williams Town Baffalo City	40,001-50K	\N
municipality	BUF	2016	King Williams Town Baffalo City	50,001-100K	\N
municipality	BUF	2016	King Williams Town Baffalo City	100,001-150K	\N
municipality	BUF	2016	King Williams Town Baffalo City	150,001-200K	\N
municipality	BUF	2016	King Williams Town Baffalo City	200,001-300K	\N
municipality	BUF	2016	King Williams Town Baffalo City	300,001-500K	382514
municipality	BUF	2016	King Williams Town Baffalo City	500,001-800K	\N
municipality	BUF	2016	King Williams Town Baffalo City	800,001-1M	\N
municipality	BUF	2016	King Williams Town Baffalo City	Above 1M	\N
district	DC12	2016	Komga Great Kei	Under 1.5K	\N
district	DC12	2016	Komga Great Kei	1,501-3K	2469
district	DC12	2016	Komga Great Kei	3,001-5K	\N
district	DC12	2016	Komga Great Kei	5,001-10K	8540
district	DC12	2016	Komga Great Kei	10,001-20K	\N
district	DC12	2016	Komga Great Kei	20,001-30K	23597
district	DC12	2016	Komga Great Kei	30,001-40K	31914
district	DC12	2016	Komga Great Kei	40,001-50K	\N
district	DC12	2016	Komga Great Kei	50,001-100K	\N
district	DC12	2016	Komga Great Kei	100,001-150K	\N
district	DC12	2016	Komga Great Kei	150,001-200K	\N
district	DC12	2016	Komga Great Kei	200,001-300K	\N
district	DC12	2016	Komga Great Kei	300,001-500K	\N
district	DC12	2016	Komga Great Kei	500,001-800K	\N
district	DC12	2016	Komga Great Kei	800,001-1M	\N
district	DC12	2016	Komga Great Kei	Above 1M	\N
district	DC14	2016	Maclear Elundini	Under 1.5K	\N
district	DC14	2016	Maclear Elundini	1,501-3K	2805
district	DC14	2016	Maclear Elundini	3,001-5K	3974
district	DC14	2016	Maclear Elundini	5,001-10K	8037
district	DC14	2016	Maclear Elundini	10,001-20K	14157
district	DC14	2016	Maclear Elundini	20,001-30K	\N
district	DC14	2016	Maclear Elundini	30,001-40K	\N
district	DC14	2016	Maclear Elundini	40,001-50K	\N
district	DC14	2016	Maclear Elundini	50,001-100K	\N
district	DC14	2016	Maclear Elundini	100,001-150K	\N
district	DC14	2016	Maclear Elundini	150,001-200K	\N
district	DC14	2016	Maclear Elundini	200,001-300K	\N
district	DC14	2016	Maclear Elundini	300,001-500K	\N
district	DC14	2016	Maclear Elundini	500,001-800K	\N
district	DC14	2016	Maclear Elundini	800,001-1M	\N
district	DC14	2016	Maclear Elundini	Above 1M	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	Under 1.5K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	1,501-3K	2763
district	DC13	2016	Middelburg EC Inxuba Yethemba	3,001-5K	3784
district	DC13	2016	Middelburg EC Inxuba Yethemba	5,001-10K	6027
district	DC13	2016	Middelburg EC Inxuba Yethemba	10,001-20K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	20,001-30K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	30,001-40K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	40,001-50K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	50,001-100K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	100,001-150K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	150,001-200K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	200,001-300K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	300,001-500K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	500,001-800K	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	800,001-1M	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	Above 1M	\N
district	DC13	2016	Molteno Inkwanca	Under 1.5K	\N
district	DC13	2016	Molteno Inkwanca	1,501-3K	2439
district	DC13	2016	Molteno Inkwanca	3,001-5K	3003
district	DC13	2016	Molteno Inkwanca	5,001-10K	8035
district	DC13	2016	Molteno Inkwanca	10,001-20K	\N
district	DC13	2016	Molteno Inkwanca	20,001-30K	\N
district	DC13	2016	Molteno Inkwanca	30,001-40K	\N
district	DC13	2016	Molteno Inkwanca	40,001-50K	\N
district	DC13	2016	Molteno Inkwanca	50,001-100K	\N
district	DC13	2016	Molteno Inkwanca	100,001-150K	\N
district	DC13	2016	Molteno Inkwanca	150,001-200K	\N
district	DC13	2016	Molteno Inkwanca	200,001-300K	\N
district	DC13	2016	Molteno Inkwanca	300,001-500K	\N
district	DC13	2016	Molteno Inkwanca	500,001-800K	\N
district	DC13	2016	Molteno Inkwanca	800,001-1M	\N
district	DC13	2016	Molteno Inkwanca	Above 1M	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	Under 1.5K	988
district	DC15	2016	Mthatha King Sabata Dalindyebo	1,501-3K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	3,001-5K	4589
district	DC15	2016	Mthatha King Sabata Dalindyebo	5,001-10K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	10,001-20K	15685
district	DC15	2016	Mthatha King Sabata Dalindyebo	20,001-30K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	30,001-40K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	40,001-50K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	50,001-100K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	100,001-150K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	150,001-200K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	200,001-300K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	300,001-500K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	500,001-800K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	800,001-1M	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	Above 1M	\N
municipality	BUF	2016	Oos-Londen Baffalo City	Under 1.5K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	1,501-3K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	3,001-5K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	5,001-10K	7923
municipality	BUF	2016	Oos-Londen Baffalo City	10,001-20K	14872
municipality	BUF	2016	Oos-Londen Baffalo City	20,001-30K	26748
municipality	BUF	2016	Oos-Londen Baffalo City	30,001-40K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	40,001-50K	45930
municipality	BUF	2016	Oos-Londen Baffalo City	50,001-100K	70249
municipality	BUF	2016	Oos-Londen Baffalo City	100,001-150K	128496
municipality	BUF	2016	Oos-Londen Baffalo City	150,001-200K	177487
municipality	BUF	2016	Oos-Londen Baffalo City	200,001-300K	250000
municipality	BUF	2016	Oos-Londen Baffalo City	300,001-500K	396946
municipality	BUF	2016	Oos-Londen Baffalo City	500,001-800K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	800,001-1M	836000
municipality	BUF	2016	Oos-Londen Baffalo City	Above 1M	\N
district	DC10	2016	Pearston Blue Crane	Under 1.5K	\N
district	DC10	2016	Pearston Blue Crane	1,501-3K	\N
district	DC10	2016	Pearston Blue Crane	3,001-5K	\N
district	DC10	2016	Pearston Blue Crane	5,001-10K	5327
district	DC10	2016	Pearston Blue Crane	10,001-20K	15578
district	DC10	2016	Pearston Blue Crane	20,001-30K	\N
district	DC10	2016	Pearston Blue Crane	30,001-40K	\N
district	DC10	2016	Pearston Blue Crane	40,001-50K	\N
district	DC10	2016	Pearston Blue Crane	50,001-100K	58398
district	DC10	2016	Pearston Blue Crane	100,001-150K	\N
district	DC10	2016	Pearston Blue Crane	150,001-200K	\N
district	DC10	2016	Pearston Blue Crane	200,001-300K	\N
district	DC10	2016	Pearston Blue Crane	300,001-500K	\N
district	DC10	2016	Pearston Blue Crane	500,001-800K	\N
district	DC10	2016	Pearston Blue Crane	800,001-1M	\N
district	DC10	2016	Pearston Blue Crane	Above 1M	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Under 1.5K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	1,501-3K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	3,001-5K	4942
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	5,001-10K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	10,001-20K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	20,001-30K	25000
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	30,001-40K	31094
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	40,001-50K	50000
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	50,001-100K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	100,001-150K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	150,001-200K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	200,001-300K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	300,001-500K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	500,001-800K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	800,001-1M	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Above 1M	\N
district	DC13	2016	Queenstown Lukanji	Under 1.5K	\N
district	DC13	2016	Queenstown Lukanji	1,501-3K	2739
district	DC13	2016	Queenstown Lukanji	3,001-5K	\N
district	DC13	2016	Queenstown Lukanji	5,001-10K	7560
district	DC13	2016	Queenstown Lukanji	10,001-20K	\N
district	DC13	2016	Queenstown Lukanji	20,001-30K	\N
district	DC13	2016	Queenstown Lukanji	30,001-40K	\N
district	DC13	2016	Queenstown Lukanji	40,001-50K	\N
district	DC13	2016	Queenstown Lukanji	50,001-100K	\N
district	DC13	2016	Queenstown Lukanji	100,001-150K	\N
district	DC13	2016	Queenstown Lukanji	150,001-200K	\N
district	DC13	2016	Queenstown Lukanji	200,001-300K	\N
district	DC13	2016	Queenstown Lukanji	300,001-500K	\N
district	DC13	2016	Queenstown Lukanji	500,001-800K	\N
district	DC13	2016	Queenstown Lukanji	800,001-1M	\N
district	DC13	2016	Queenstown Lukanji	Above 1M	\N
district	DC10	2016	Somerset-Oos Blue Crane	Under 1.5K	\N
district	DC10	2016	Somerset-Oos Blue Crane	1,501-3K	2143
district	DC10	2016	Somerset-Oos Blue Crane	3,001-5K	4691
district	DC10	2016	Somerset-Oos Blue Crane	5,001-10K	7049
district	DC10	2016	Somerset-Oos Blue Crane	10,001-20K	10610
district	DC10	2016	Somerset-Oos Blue Crane	20,001-30K	21915
district	DC10	2016	Somerset-Oos Blue Crane	30,001-40K	\N
district	DC10	2016	Somerset-Oos Blue Crane	40,001-50K	\N
district	DC10	2016	Somerset-Oos Blue Crane	50,001-100K	83721
district	DC10	2016	Somerset-Oos Blue Crane	100,001-150K	134454
district	DC10	2016	Somerset-Oos Blue Crane	150,001-200K	\N
district	DC10	2016	Somerset-Oos Blue Crane	200,001-300K	230651
district	DC10	2016	Somerset-Oos Blue Crane	300,001-500K	\N
district	DC10	2016	Somerset-Oos Blue Crane	500,001-800K	\N
district	DC10	2016	Somerset-Oos Blue Crane	800,001-1M	\N
district	DC10	2016	Somerset-Oos Blue Crane	Above 1M	\N
district	DC14	2016	Steynsburg Gariep	Under 1.5K	\N
district	DC14	2016	Steynsburg Gariep	1,501-3K	2589
district	DC14	2016	Steynsburg Gariep	3,001-5K	3245
district	DC14	2016	Steynsburg Gariep	5,001-10K	9726
district	DC14	2016	Steynsburg Gariep	10,001-20K	\N
district	DC14	2016	Steynsburg Gariep	20,001-30K	\N
district	DC14	2016	Steynsburg Gariep	30,001-40K	\N
district	DC14	2016	Steynsburg Gariep	40,001-50K	\N
district	DC14	2016	Steynsburg Gariep	50,001-100K	\N
district	DC14	2016	Steynsburg Gariep	100,001-150K	\N
district	DC14	2016	Steynsburg Gariep	150,001-200K	\N
district	DC14	2016	Steynsburg Gariep	200,001-300K	\N
district	DC14	2016	Steynsburg Gariep	300,001-500K	\N
district	DC14	2016	Steynsburg Gariep	500,001-800K	\N
district	DC14	2016	Steynsburg Gariep	800,001-1M	\N
district	DC14	2016	Steynsburg Gariep	Above 1M	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	Under 1.5K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	1,501-3K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	3,001-5K	4353
district	DC10	2016	Steytlerville Dr Beyers Naude	5,001-10K	6467
district	DC10	2016	Steytlerville Dr Beyers Naude	10,001-20K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	20,001-30K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	30,001-40K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	40,001-50K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	50,001-100K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	100,001-150K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	150,001-200K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	200,001-300K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	300,001-500K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	500,001-800K	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	800,001-1M	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	Above 1M	\N
district	DC12	2016	Stutterheim Amahlathi	Under 1.5K	\N
district	DC12	2016	Stutterheim Amahlathi	1,501-3K	\N
district	DC12	2016	Stutterheim Amahlathi	3,001-5K	\N
district	DC12	2016	Stutterheim Amahlathi	5,001-10K	5324
district	DC12	2016	Stutterheim Amahlathi	10,001-20K	13892
district	DC12	2016	Stutterheim Amahlathi	20,001-30K	23815
district	DC12	2016	Stutterheim Amahlathi	30,001-40K	\N
district	DC12	2016	Stutterheim Amahlathi	40,001-50K	50000
district	DC12	2016	Stutterheim Amahlathi	50,001-100K	\N
district	DC12	2016	Stutterheim Amahlathi	100,001-150K	\N
district	DC12	2016	Stutterheim Amahlathi	150,001-200K	\N
district	DC12	2016	Stutterheim Amahlathi	200,001-300K	\N
district	DC12	2016	Stutterheim Amahlathi	300,001-500K	\N
district	DC12	2016	Stutterheim Amahlathi	500,001-800K	\N
district	DC12	2016	Stutterheim Amahlathi	800,001-1M	\N
district	DC12	2016	Stutterheim Amahlathi	Above 1M	\N
district	DC13	2016	Tarkastad Tsolwana	Under 1.5K	\N
district	DC13	2016	Tarkastad Tsolwana	1,501-3K	2869
district	DC13	2016	Tarkastad Tsolwana	3,001-5K	4517
district	DC13	2016	Tarkastad Tsolwana	5,001-10K	7198
district	DC13	2016	Tarkastad Tsolwana	10,001-20K	17578
district	DC13	2016	Tarkastad Tsolwana	20,001-30K	25090
district	DC13	2016	Tarkastad Tsolwana	30,001-40K	\N
district	DC13	2016	Tarkastad Tsolwana	40,001-50K	\N
district	DC13	2016	Tarkastad Tsolwana	50,001-100K	89400
district	DC13	2016	Tarkastad Tsolwana	100,001-150K	\N
district	DC13	2016	Tarkastad Tsolwana	150,001-200K	\N
district	DC13	2016	Tarkastad Tsolwana	200,001-300K	\N
district	DC13	2016	Tarkastad Tsolwana	300,001-500K	\N
district	DC13	2016	Tarkastad Tsolwana	500,001-800K	\N
district	DC13	2016	Tarkastad Tsolwana	800,001-1M	\N
district	DC13	2016	Tarkastad Tsolwana	Above 1M	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Under 1.5K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	1,501-3K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	3,001-5K	3866
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	5,001-10K	6863
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	10,001-20K	12741
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	20,001-30K	\N
district	DC36	2016	Marken	300,001-500K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	30,001-40K	33098
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	40,001-50K	46267
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	50,001-100K	68267
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	100,001-150K	139271
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	150,001-200K	179412
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	200,001-300K	253549
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	300,001-500K	342129
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	500,001-800K	585016
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	800,001-1M	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Above 1M	\N
district	DC44	2016	Uniondale	Under 1.5K	114
district	DC44	2016	Uniondale	1,501-3K	2798
district	DC44	2016	Uniondale	3,001-5K	5000
district	DC44	2016	Uniondale	5,001-10K	7730
district	DC44	2016	Uniondale	10,001-20K	\N
district	DC44	2016	Uniondale	20,001-30K	25610
district	DC44	2016	Uniondale	30,001-40K	\N
district	DC44	2016	Uniondale	40,001-50K	43210
district	DC44	2016	Uniondale	50,001-100K	\N
district	DC44	2016	Uniondale	100,001-150K	\N
district	DC44	2016	Uniondale	150,001-200K	189145
district	DC44	2016	Uniondale	200,001-300K	\N
district	DC44	2016	Uniondale	300,001-500K	\N
district	DC44	2016	Uniondale	500,001-800K	\N
district	DC44	2016	Uniondale	800,001-1M	\N
district	DC44	2016	Uniondale	Above 1M	\N
district	DC10	2016	Willomore Baviaans	Under 1.5K	1422
district	DC10	2016	Willomore Baviaans	1,501-3K	2420
district	DC10	2016	Willomore Baviaans	3,001-5K	3930
district	DC10	2016	Willomore Baviaans	5,001-10K	6473
district	DC10	2016	Willomore Baviaans	10,001-20K	\N
district	DC10	2016	Willomore Baviaans	20,001-30K	\N
district	DC10	2016	Willomore Baviaans	30,001-40K	\N
district	DC10	2016	Willomore Baviaans	40,001-50K	\N
district	DC10	2016	Willomore Baviaans	50,001-100K	\N
district	DC10	2016	Willomore Baviaans	100,001-150K	\N
district	DC10	2016	Willomore Baviaans	150,001-200K	\N
district	DC10	2016	Willomore Baviaans	200,001-300K	\N
district	DC10	2016	Willomore Baviaans	300,001-500K	\N
district	DC10	2016	Willomore Baviaans	500,001-800K	\N
district	DC10	2016	Willomore Baviaans	800,001-1M	\N
district	DC10	2016	Willomore Baviaans	Above 1M	\N
district	DC14	2016	Wodehouse	Under 1.5K	270
district	DC14	2016	Wodehouse	1,501-3K	2016
district	DC14	2016	Wodehouse	3,001-5K	4047
district	DC14	2016	Wodehouse	5,001-10K	6271
district	DC14	2016	Wodehouse	10,001-20K	\N
district	DC14	2016	Wodehouse	20,001-30K	\N
district	DC14	2016	Wodehouse	30,001-40K	\N
district	DC14	2016	Wodehouse	40,001-50K	\N
district	DC14	2016	Wodehouse	50,001-100K	\N
district	DC14	2016	Wodehouse	100,001-150K	\N
district	DC14	2016	Wodehouse	150,001-200K	\N
district	DC14	2016	Wodehouse	200,001-300K	\N
district	DC14	2016	Wodehouse	300,001-500K	\N
district	DC14	2016	Wodehouse	500,001-800K	\N
district	DC14	2016	Wodehouse	800,001-1M	\N
district	DC14	2016	Wodehouse	Above 1M	\N
district	DC19	2016	Bethlehem Dihlabeng	Under 1.5K	543
district	DC19	2016	Bethlehem Dihlabeng	1,501-3K	\N
district	DC19	2016	Bethlehem Dihlabeng	3,001-5K	\N
district	DC19	2016	Bethlehem Dihlabeng	5,001-10K	8396
district	DC19	2016	Bethlehem Dihlabeng	10,001-20K	14276
district	DC19	2016	Bethlehem Dihlabeng	20,001-30K	23459
district	DC19	2016	Bethlehem Dihlabeng	30,001-40K	32586
district	DC19	2016	Bethlehem Dihlabeng	40,001-50K	47191
district	DC19	2016	Bethlehem Dihlabeng	50,001-100K	\N
district	DC19	2016	Bethlehem Dihlabeng	100,001-150K	\N
district	DC19	2016	Bethlehem Dihlabeng	150,001-200K	\N
district	DC19	2016	Bethlehem Dihlabeng	200,001-300K	\N
district	DC19	2016	Bethlehem Dihlabeng	300,001-500K	\N
district	DC19	2016	Bethlehem Dihlabeng	500,001-800K	583333
district	DC19	2016	Bethlehem Dihlabeng	800,001-1M	\N
district	DC19	2016	Bethlehem Dihlabeng	Above 1M	\N
district	DC16	2016	Bethulie	Under 1.5K	\N
district	DC16	2016	Bethulie	1,501-3K	\N
district	DC16	2016	Bethulie	3,001-5K	\N
district	DC16	2016	Bethulie	5,001-10K	6064
district	DC16	2016	Bethulie	10,001-20K	10924
district	DC16	2016	Bethulie	20,001-30K	\N
district	DC16	2016	Bethulie	30,001-40K	\N
district	DC16	2016	Bethulie	40,001-50K	\N
district	DC16	2016	Bethulie	50,001-100K	\N
district	DC16	2016	Bethulie	100,001-150K	\N
district	DC16	2016	Bethulie	150,001-200K	\N
district	DC16	2016	Bethulie	200,001-300K	\N
district	DC16	2016	Bethulie	300,001-500K	\N
district	DC16	2016	Bethulie	500,001-800K	\N
district	DC16	2016	Bethulie	800,001-1M	\N
district	DC16	2016	Bethulie	Above 1M	\N
municipality	MAN	2016	Bloemfontein Mangaung	Under 1.5K	\N
municipality	MAN	2016	Bloemfontein Mangaung	1,501-3K	2121
municipality	MAN	2016	Bloemfontein Mangaung	3,001-5K	4152
municipality	MAN	2016	Bloemfontein Mangaung	5,001-10K	6592
municipality	MAN	2016	Bloemfontein Mangaung	10,001-20K	13219
municipality	MAN	2016	Bloemfontein Mangaung	20,001-30K	24427
municipality	MAN	2016	Bloemfontein Mangaung	30,001-40K	34499
municipality	MAN	2016	Bloemfontein Mangaung	40,001-50K	43662
municipality	MAN	2016	Bloemfontein Mangaung	50,001-100K	86712
municipality	MAN	2016	Bloemfontein Mangaung	100,001-150K	118004
municipality	MAN	2016	Bloemfontein Mangaung	150,001-200K	176490
municipality	MAN	2016	Bloemfontein Mangaung	200,001-300K	256144
municipality	MAN	2016	Bloemfontein Mangaung	300,001-500K	375000
municipality	MAN	2016	Bloemfontein Mangaung	500,001-800K	\N
municipality	MAN	2016	Bloemfontein Mangaung	800,001-1M	\N
municipality	MAN	2016	Bloemfontein Mangaung	Above 1M	\N
district	DC18	2016	Boshof Tokologo	Under 1.5K	888
district	DC18	2016	Boshof Tokologo	1,501-3K	2203
district	DC18	2016	Boshof Tokologo	3,001-5K	4224
district	DC18	2016	Boshof Tokologo	5,001-10K	5937
district	DC18	2016	Boshof Tokologo	10,001-20K	15328
district	DC18	2016	Boshof Tokologo	20,001-30K	24186
district	DC18	2016	Boshof Tokologo	30,001-40K	\N
district	DC18	2016	Boshof Tokologo	40,001-50K	\N
district	DC18	2016	Boshof Tokologo	50,001-100K	72381
district	DC18	2016	Boshof Tokologo	100,001-150K	\N
district	DC18	2016	Boshof Tokologo	150,001-200K	\N
district	DC18	2016	Boshof Tokologo	200,001-300K	\N
district	DC18	2016	Boshof Tokologo	300,001-500K	\N
district	DC18	2016	Boshof Tokologo	500,001-800K	\N
district	DC18	2016	Boshof Tokologo	800,001-1M	\N
district	DC18	2016	Boshof Tokologo	Above 1M	\N
district	DC18	2016	Bothaville Nala	Under 1.5K	\N
district	DC18	2016	Bothaville Nala	1,501-3K	\N
district	DC18	2016	Bothaville Nala	3,001-5K	4007
district	DC18	2016	Bothaville Nala	5,001-10K	6713
district	DC18	2016	Bothaville Nala	10,001-20K	15202
district	DC18	2016	Bothaville Nala	20,001-30K	25328
district	DC18	2016	Bothaville Nala	30,001-40K	\N
district	DC18	2016	Bothaville Nala	40,001-50K	43035
district	DC18	2016	Bothaville Nala	50,001-100K	55492
district	DC18	2016	Bothaville Nala	100,001-150K	\N
district	DC18	2016	Bothaville Nala	150,001-200K	\N
district	DC18	2016	Bothaville Nala	200,001-300K	\N
district	DC18	2016	Bothaville Nala	300,001-500K	\N
district	DC18	2016	Bothaville Nala	500,001-800K	\N
district	DC18	2016	Bothaville Nala	800,001-1M	\N
district	DC18	2016	Bothaville Nala	Above 1M	\N
district	DC18	2016	Brandfort Masilonyana	Under 1.5K	\N
district	DC18	2016	Brandfort Masilonyana	1,501-3K	\N
district	DC18	2016	Brandfort Masilonyana	3,001-5K	\N
district	DC18	2016	Brandfort Masilonyana	5,001-10K	8038
district	DC18	2016	Brandfort Masilonyana	10,001-20K	12094
district	DC18	2016	Brandfort Masilonyana	20,001-30K	\N
district	DC18	2016	Brandfort Masilonyana	30,001-40K	\N
district	DC18	2016	Brandfort Masilonyana	40,001-50K	40476
district	DC18	2016	Brandfort Masilonyana	50,001-100K	85714
district	DC18	2016	Brandfort Masilonyana	100,001-150K	\N
district	DC18	2016	Brandfort Masilonyana	150,001-200K	\N
district	DC18	2016	Brandfort Masilonyana	200,001-300K	\N
district	DC18	2016	Brandfort Masilonyana	300,001-500K	\N
district	DC18	2016	Brandfort Masilonyana	500,001-800K	\N
district	DC18	2016	Brandfort Masilonyana	800,001-1M	\N
district	DC18	2016	Brandfort Masilonyana	Above 1M	\N
district	DC18	2016	Bultfontein Tswelopele	Under 1.5K	\N
district	DC18	2016	Bultfontein Tswelopele	1,501-3K	\N
district	DC18	2016	Bultfontein Tswelopele	3,001-5K	4455
district	DC18	2016	Bultfontein Tswelopele	5,001-10K	7784
district	DC18	2016	Bultfontein Tswelopele	10,001-20K	10169
district	DC18	2016	Bultfontein Tswelopele	20,001-30K	25746
district	DC18	2016	Bultfontein Tswelopele	30,001-40K	\N
district	DC18	2016	Bultfontein Tswelopele	40,001-50K	48479
district	DC18	2016	Bultfontein Tswelopele	50,001-100K	83212
district	DC18	2016	Bultfontein Tswelopele	100,001-150K	\N
district	DC18	2016	Bultfontein Tswelopele	150,001-200K	\N
district	DC18	2016	Bultfontein Tswelopele	200,001-300K	\N
district	DC18	2016	Bultfontein Tswelopele	300,001-500K	\N
district	DC18	2016	Bultfontein Tswelopele	500,001-800K	\N
district	DC18	2016	Bultfontein Tswelopele	800,001-1M	\N
district	DC18	2016	Bultfontein Tswelopele	Above 1M	\N
district	DC19	2016	Clocolan Setso	Under 1.5K	\N
district	DC19	2016	Clocolan Setso	1,501-3K	1931
district	DC19	2016	Clocolan Setso	3,001-5K	3005
district	DC19	2016	Clocolan Setso	5,001-10K	7238
district	DC19	2016	Clocolan Setso	10,001-20K	15317
district	DC19	2016	Clocolan Setso	20,001-30K	\N
district	DC19	2016	Clocolan Setso	30,001-40K	\N
district	DC19	2016	Clocolan Setso	40,001-50K	\N
district	DC19	2016	Clocolan Setso	50,001-100K	\N
district	DC19	2016	Clocolan Setso	100,001-150K	\N
district	DC19	2016	Clocolan Setso	150,001-200K	\N
district	DC19	2016	Clocolan Setso	200,001-300K	\N
district	DC19	2016	Clocolan Setso	300,001-500K	\N
district	DC19	2016	Clocolan Setso	500,001-800K	\N
district	DC19	2016	Clocolan Setso	800,001-1M	\N
district	DC19	2016	Clocolan Setso	Above 1M	\N
district	DC16	2016	Dewetsdorp Naledi	Under 1.5K	\N
district	DC16	2016	Dewetsdorp Naledi	1,501-3K	\N
district	DC16	2016	Dewetsdorp Naledi	3,001-5K	4459
district	DC16	2016	Dewetsdorp Naledi	5,001-10K	5501
district	DC16	2016	Dewetsdorp Naledi	10,001-20K	\N
district	DC16	2016	Dewetsdorp Naledi	20,001-30K	\N
district	DC16	2016	Dewetsdorp Naledi	30,001-40K	\N
district	DC16	2016	Dewetsdorp Naledi	40,001-50K	\N
district	DC16	2016	Dewetsdorp Naledi	50,001-100K	\N
district	DC16	2016	Dewetsdorp Naledi	100,001-150K	\N
district	DC16	2016	Dewetsdorp Naledi	150,001-200K	\N
district	DC16	2016	Dewetsdorp Naledi	200,001-300K	\N
district	DC16	2016	Dewetsdorp Naledi	300,001-500K	\N
district	DC16	2016	Dewetsdorp Naledi	500,001-800K	\N
district	DC16	2016	Dewetsdorp Naledi	800,001-1M	\N
district	DC16	2016	Dewetsdorp Naledi	Above 1M	\N
district	DC16	2016	Edenburg Kopanong	Under 1.5K	\N
district	DC16	2016	Edenburg Kopanong	1,501-3K	2814
district	DC16	2016	Edenburg Kopanong	3,001-5K	3250
district	DC16	2016	Edenburg Kopanong	5,001-10K	6027
district	DC16	2016	Edenburg Kopanong	10,001-20K	\N
district	DC16	2016	Edenburg Kopanong	20,001-30K	\N
district	DC16	2016	Edenburg Kopanong	30,001-40K	\N
district	DC16	2016	Edenburg Kopanong	40,001-50K	\N
district	DC16	2016	Edenburg Kopanong	50,001-100K	\N
district	DC16	2016	Edenburg Kopanong	100,001-150K	\N
district	DC16	2016	Edenburg Kopanong	150,001-200K	\N
district	DC16	2016	Edenburg Kopanong	200,001-300K	\N
district	DC16	2016	Edenburg Kopanong	300,001-500K	\N
district	DC16	2016	Edenburg Kopanong	500,001-800K	\N
district	DC16	2016	Edenburg Kopanong	800,001-1M	\N
district	DC16	2016	Edenburg Kopanong	Above 1M	\N
district	DC16	2016	Fauresmith Kopanong	Under 1.5K	\N
district	DC16	2016	Fauresmith Kopanong	1,501-3K	2672
district	DC16	2016	Fauresmith Kopanong	3,001-5K	3790
district	DC16	2016	Fauresmith Kopanong	5,001-10K	7518
district	DC16	2016	Fauresmith Kopanong	10,001-20K	11633
district	DC16	2016	Fauresmith Kopanong	20,001-30K	\N
district	DC16	2016	Fauresmith Kopanong	30,001-40K	\N
district	DC16	2016	Fauresmith Kopanong	40,001-50K	\N
district	DC16	2016	Fauresmith Kopanong	50,001-100K	59829
district	DC16	2016	Fauresmith Kopanong	100,001-150K	\N
district	DC16	2016	Fauresmith Kopanong	150,001-200K	\N
district	DC16	2016	Fauresmith Kopanong	200,001-300K	\N
district	DC16	2016	Fauresmith Kopanong	300,001-500K	\N
district	DC16	2016	Fauresmith Kopanong	500,001-800K	\N
district	DC16	2016	Fauresmith Kopanong	800,001-1M	\N
district	DC16	2016	Fauresmith Kopanong	Above 1M	\N
district	DC19	2016	Ficksburg Setso	Under 1.5K	\N
district	DC19	2016	Ficksburg Setso	1,501-3K	\N
district	DC19	2016	Ficksburg Setso	3,001-5K	\N
district	DC19	2016	Ficksburg Setso	5,001-10K	8791
district	DC19	2016	Ficksburg Setso	10,001-20K	12769
district	DC19	2016	Ficksburg Setso	20,001-30K	\N
district	DC19	2016	Ficksburg Setso	30,001-40K	\N
district	DC19	2016	Ficksburg Setso	40,001-50K	41638
district	DC19	2016	Ficksburg Setso	50,001-100K	\N
district	DC19	2016	Ficksburg Setso	100,001-150K	\N
district	DC19	2016	Ficksburg Setso	150,001-200K	\N
district	DC19	2016	Ficksburg Setso	200,001-300K	\N
district	DC19	2016	Ficksburg Setso	300,001-500K	\N
district	DC19	2016	Ficksburg Setso	500,001-800K	\N
district	DC19	2016	Ficksburg Setso	800,001-1M	\N
district	DC19	2016	Ficksburg Setso	Above 1M	\N
district	DC19	2016	Fouriesburg Dikabeng	Under 1.5K	\N
district	DC19	2016	Fouriesburg Dikabeng	1,501-3K	\N
district	DC19	2016	Fouriesburg Dikabeng	3,001-5K	\N
district	DC19	2016	Fouriesburg Dikabeng	5,001-10K	8889
district	DC19	2016	Fouriesburg Dikabeng	10,001-20K	14593
district	DC19	2016	Fouriesburg Dikabeng	20,001-30K	23091
district	DC19	2016	Fouriesburg Dikabeng	30,001-40K	\N
district	DC19	2016	Fouriesburg Dikabeng	40,001-50K	\N
district	DC19	2016	Fouriesburg Dikabeng	50,001-100K	\N
district	DC19	2016	Fouriesburg Dikabeng	100,001-150K	\N
district	DC19	2016	Fouriesburg Dikabeng	150,001-200K	\N
district	DC19	2016	Fouriesburg Dikabeng	200,001-300K	215909
district	DC19	2016	Fouriesburg Dikabeng	300,001-500K	\N
district	DC19	2016	Fouriesburg Dikabeng	500,001-800K	\N
district	DC19	2016	Fouriesburg Dikabeng	800,001-1M	\N
district	DC19	2016	Fouriesburg Dikabeng	Above 1M	\N
district	DC20	2016	Frankfort Mafube	Under 1.5K	\N
district	DC20	2016	Frankfort Mafube	1,501-3K	\N
district	DC20	2016	Frankfort Mafube	3,001-5K	\N
district	DC20	2016	Frankfort Mafube	5,001-10K	9296
district	DC20	2016	Frankfort Mafube	10,001-20K	15040
district	DC20	2016	Frankfort Mafube	20,001-30K	25849
district	DC20	2016	Frankfort Mafube	30,001-40K	38685
district	DC20	2016	Frankfort Mafube	40,001-50K	\N
district	DC20	2016	Frankfort Mafube	50,001-100K	\N
district	DC20	2016	Frankfort Mafube	100,001-150K	\N
district	DC20	2016	Frankfort Mafube	150,001-200K	\N
district	DC20	2016	Frankfort Mafube	200,001-300K	\N
district	DC20	2016	Frankfort Mafube	300,001-500K	\N
district	DC20	2016	Frankfort Mafube	500,001-800K	\N
district	DC20	2016	Frankfort Mafube	800,001-1M	\N
district	DC20	2016	Frankfort Mafube	Above 1M	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	Under 1.5K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	1,501-3K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	3,001-5K	3207
district	DC19	2016	Harrismith Maluti-A-Phofung	5,001-10K	8315
district	DC19	2016	Harrismith Maluti-A-Phofung	10,001-20K	14235
district	DC19	2016	Harrismith Maluti-A-Phofung	20,001-30K	22846
district	DC19	2016	Harrismith Maluti-A-Phofung	30,001-40K	33812
district	DC19	2016	Harrismith Maluti-A-Phofung	40,001-50K	44737
district	DC19	2016	Harrismith Maluti-A-Phofung	50,001-100K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	100,001-150K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	150,001-200K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	200,001-300K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	300,001-500K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	500,001-800K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	800,001-1M	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	Above 1M	\N
district	DC20	2016	Heilbron Ngwathe	Under 1.5K	\N
district	DC20	2016	Heilbron Ngwathe	1,501-3K	2500
district	DC20	2016	Heilbron Ngwathe	3,001-5K	\N
district	DC20	2016	Heilbron Ngwathe	5,001-10K	8024
district	DC20	2016	Heilbron Ngwathe	10,001-20K	12264
district	DC20	2016	Heilbron Ngwathe	20,001-30K	26846
district	DC20	2016	Heilbron Ngwathe	30,001-40K	37753
district	DC20	2016	Heilbron Ngwathe	40,001-50K	\N
district	DC20	2016	Heilbron Ngwathe	50,001-100K	60000
district	DC20	2016	Heilbron Ngwathe	100,001-150K	\N
district	DC20	2016	Heilbron Ngwathe	150,001-200K	\N
district	DC20	2016	Heilbron Ngwathe	200,001-300K	\N
district	DC20	2016	Heilbron Ngwathe	300,001-500K	\N
district	DC20	2016	Heilbron Ngwathe	500,001-800K	\N
district	DC20	2016	Heilbron Ngwathe	800,001-1M	\N
district	DC20	2016	Heilbron Ngwathe	Above 1M	\N
district	DC18	2016	Hoopstad Tswelopele	Under 1.5K	\N
district	DC18	2016	Hoopstad Tswelopele	1,501-3K	\N
district	DC18	2016	Hoopstad Tswelopele	3,001-5K	\N
district	DC18	2016	Hoopstad Tswelopele	5,001-10K	\N
district	DC18	2016	Hoopstad Tswelopele	10,001-20K	15317
district	DC18	2016	Hoopstad Tswelopele	20,001-30K	23643
district	DC18	2016	Hoopstad Tswelopele	30,001-40K	\N
district	DC18	2016	Hoopstad Tswelopele	40,001-50K	\N
district	DC18	2016	Hoopstad Tswelopele	50,001-100K	\N
district	DC18	2016	Hoopstad Tswelopele	100,001-150K	\N
district	DC18	2016	Hoopstad Tswelopele	150,001-200K	\N
district	DC18	2016	Hoopstad Tswelopele	200,001-300K	\N
district	DC18	2016	Hoopstad Tswelopele	300,001-500K	\N
district	DC18	2016	Hoopstad Tswelopele	500,001-800K	\N
district	DC18	2016	Hoopstad Tswelopele	800,001-1M	\N
district	DC18	2016	Hoopstad Tswelopele	Above 1M	\N
district	DC16	2016	Jacobsdal Letsemeng	Under 1.5K	\N
district	DC16	2016	Jacobsdal Letsemeng	1,501-3K	2837
district	DC16	2016	Jacobsdal Letsemeng	3,001-5K	3904
district	DC16	2016	Jacobsdal Letsemeng	5,001-10K	7057
district	DC16	2016	Jacobsdal Letsemeng	10,001-20K	14663
district	DC16	2016	Jacobsdal Letsemeng	20,001-30K	\N
district	DC16	2016	Jacobsdal Letsemeng	30,001-40K	\N
district	DC16	2016	Jacobsdal Letsemeng	40,001-50K	\N
district	DC16	2016	Jacobsdal Letsemeng	50,001-100K	\N
district	DC16	2016	Jacobsdal Letsemeng	100,001-150K	\N
district	DC16	2016	Jacobsdal Letsemeng	150,001-200K	\N
district	DC16	2016	Jacobsdal Letsemeng	200,001-300K	\N
district	DC16	2016	Jacobsdal Letsemeng	300,001-500K	\N
district	DC16	2016	Jacobsdal Letsemeng	500,001-800K	\N
district	DC16	2016	Jacobsdal Letsemeng	800,001-1M	\N
district	DC16	2016	Jacobsdal Letsemeng	Above 1M	\N
district	DC20	2016	Koppies Ngwathe	Under 1.5K	\N
district	DC20	2016	Koppies Ngwathe	1,501-3K	\N
district	DC20	2016	Koppies Ngwathe	3,001-5K	\N
district	DC20	2016	Koppies Ngwathe	5,001-10K	8067
district	DC20	2016	Koppies Ngwathe	10,001-20K	12087
district	DC20	2016	Koppies Ngwathe	20,001-30K	29483
district	DC20	2016	Koppies Ngwathe	30,001-40K	\N
district	DC20	2016	Koppies Ngwathe	40,001-50K	\N
district	DC20	2016	Koppies Ngwathe	50,001-100K	\N
district	DC20	2016	Koppies Ngwathe	100,001-150K	\N
district	DC20	2016	Koppies Ngwathe	150,001-200K	\N
district	DC20	2016	Koppies Ngwathe	200,001-300K	\N
district	DC20	2016	Koppies Ngwathe	300,001-500K	\N
district	DC20	2016	Koppies Ngwathe	500,001-800K	\N
district	DC20	2016	Koppies Ngwathe	800,001-1M	\N
district	DC20	2016	Koppies Ngwathe	Above 1M	\N
district	DC20	2016	Kroonstad Moqhaka	Under 1.5K	\N
district	DC20	2016	Kroonstad Moqhaka	1,501-3K	\N
district	DC20	2016	Kroonstad Moqhaka	3,001-5K	\N
district	DC20	2016	Kroonstad Moqhaka	5,001-10K	8362
district	DC20	2016	Kroonstad Moqhaka	10,001-20K	13035
district	DC20	2016	Kroonstad Moqhaka	20,001-30K	24365
district	DC20	2016	Kroonstad Moqhaka	30,001-40K	\N
district	DC20	2016	Kroonstad Moqhaka	40,001-50K	\N
district	DC20	2016	Kroonstad Moqhaka	50,001-100K	\N
district	DC20	2016	Kroonstad Moqhaka	100,001-150K	\N
district	DC20	2016	Kroonstad Moqhaka	150,001-200K	\N
district	DC20	2016	Kroonstad Moqhaka	200,001-300K	\N
district	DC20	2016	Kroonstad Moqhaka	300,001-500K	\N
district	DC20	2016	Kroonstad Moqhaka	500,001-800K	\N
district	DC20	2016	Kroonstad Moqhaka	800,001-1M	\N
district	DC20	2016	Kroonstad Moqhaka	Above 1M	\N
district	DC19	2016	Ladybrand Mantsopa	Under 1.5K	133
district	DC19	2016	Ladybrand Mantsopa	1,501-3K	\N
district	DC19	2016	Ladybrand Mantsopa	3,001-5K	4502
district	DC19	2016	Ladybrand Mantsopa	5,001-10K	8119
district	DC19	2016	Ladybrand Mantsopa	10,001-20K	13041
district	DC19	2016	Ladybrand Mantsopa	20,001-30K	20179
district	DC19	2016	Ladybrand Mantsopa	30,001-40K	\N
district	DC19	2016	Ladybrand Mantsopa	40,001-50K	\N
district	DC19	2016	Ladybrand Mantsopa	50,001-100K	\N
district	DC19	2016	Ladybrand Mantsopa	100,001-150K	\N
district	DC19	2016	Ladybrand Mantsopa	150,001-200K	\N
district	DC19	2016	Ladybrand Mantsopa	200,001-300K	\N
district	DC19	2016	Ladybrand Mantsopa	300,001-500K	\N
district	DC19	2016	Ladybrand Mantsopa	500,001-800K	\N
district	DC19	2016	Ladybrand Mantsopa	800,001-1M	\N
district	DC19	2016	Ladybrand Mantsopa	Above 1M	\N
district	DC19	2016	Lindley Nketoana	Under 1.5K	\N
district	DC19	2016	Lindley Nketoana	1,501-3K	\N
district	DC19	2016	Lindley Nketoana	3,001-5K	\N
district	DC19	2016	Lindley Nketoana	5,001-10K	6877
district	DC19	2016	Lindley Nketoana	10,001-20K	14626
district	DC19	2016	Lindley Nketoana	20,001-30K	26367
district	DC19	2016	Lindley Nketoana	30,001-40K	32609
district	DC19	2016	Lindley Nketoana	40,001-50K	\N
district	DC19	2016	Lindley Nketoana	50,001-100K	\N
district	DC19	2016	Lindley Nketoana	100,001-150K	\N
district	DC19	2016	Lindley Nketoana	150,001-200K	\N
district	DC19	2016	Lindley Nketoana	200,001-300K	\N
district	DC19	2016	Lindley Nketoana	300,001-500K	\N
district	DC19	2016	Lindley Nketoana	500,001-800K	\N
district	DC19	2016	Lindley Nketoana	800,001-1M	\N
district	DC19	2016	Lindley Nketoana	Above 1M	\N
district	DC19	2016	Marquard Setso	Under 1.5K	\N
district	DC19	2016	Marquard Setso	1,501-3K	\N
district	DC19	2016	Marquard Setso	3,001-5K	\N
district	DC19	2016	Marquard Setso	5,001-10K	7895
district	DC19	2016	Marquard Setso	10,001-20K	11735
district	DC19	2016	Marquard Setso	20,001-30K	\N
district	DC19	2016	Marquard Setso	30,001-40K	\N
district	DC19	2016	Marquard Setso	40,001-50K	\N
district	DC19	2016	Marquard Setso	50,001-100K	\N
district	DC19	2016	Marquard Setso	100,001-150K	\N
district	DC19	2016	Marquard Setso	150,001-200K	\N
district	DC19	2016	Marquard Setso	200,001-300K	\N
district	DC19	2016	Marquard Setso	300,001-500K	\N
district	DC19	2016	Marquard Setso	500,001-800K	\N
district	DC19	2016	Marquard Setso	800,001-1M	\N
district	DC19	2016	Marquard Setso	Above 1M	\N
district	DC18	2016	Odendaalsrus Matjhabeng	Under 1.5K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	1,501-3K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	3,001-5K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	5,001-10K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	10,001-20K	14195
district	DC18	2016	Odendaalsrus Matjhabeng	20,001-30K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	30,001-40K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	40,001-50K	44474
district	DC18	2016	Odendaalsrus Matjhabeng	50,001-100K	76316
district	DC18	2016	Odendaalsrus Matjhabeng	100,001-150K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	150,001-200K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	200,001-300K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	300,001-500K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	500,001-800K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	800,001-1M	\N
district	DC18	2016	Odendaalsrus Matjhabeng	Above 1M	\N
district	DC20	2016	Parys Ngwathe	Under 1.5K	410
district	DC20	2016	Parys Ngwathe	1,501-3K	1670
district	DC20	2016	Parys Ngwathe	3,001-5K	\N
district	DC20	2016	Parys Ngwathe	5,001-10K	\N
district	DC20	2016	Parys Ngwathe	10,001-20K	16240
district	DC20	2016	Parys Ngwathe	20,001-30K	20833
district	DC20	2016	Parys Ngwathe	30,001-40K	\N
district	DC20	2016	Parys Ngwathe	40,001-50K	45693
district	DC20	2016	Parys Ngwathe	50,001-100K	92208
district	DC20	2016	Parys Ngwathe	100,001-150K	\N
district	DC20	2016	Parys Ngwathe	150,001-200K	\N
district	DC20	2016	Parys Ngwathe	200,001-300K	\N
district	DC20	2016	Parys Ngwathe	300,001-500K	316350
district	DC20	2016	Parys Ngwathe	500,001-800K	\N
district	DC20	2016	Parys Ngwathe	800,001-1M	\N
district	DC20	2016	Parys Ngwathe	Above 1M	\N
district	DC16	2016	Philipolis Kopanong	Under 1.5K	\N
district	DC16	2016	Philipolis Kopanong	1,501-3K	\N
district	DC16	2016	Philipolis Kopanong	3,001-5K	4571
district	DC16	2016	Philipolis Kopanong	5,001-10K	8539
district	DC16	2016	Philipolis Kopanong	10,001-20K	\N
district	DC16	2016	Philipolis Kopanong	20,001-30K	\N
district	DC16	2016	Philipolis Kopanong	30,001-40K	\N
district	DC16	2016	Philipolis Kopanong	40,001-50K	\N
district	DC16	2016	Philipolis Kopanong	50,001-100K	\N
district	DC16	2016	Philipolis Kopanong	100,001-150K	\N
district	DC16	2016	Philipolis Kopanong	150,001-200K	\N
district	DC16	2016	Philipolis Kopanong	200,001-300K	\N
district	DC16	2016	Philipolis Kopanong	300,001-500K	\N
district	DC16	2016	Philipolis Kopanong	500,001-800K	\N
district	DC16	2016	Philipolis Kopanong	800,001-1M	\N
district	DC16	2016	Philipolis Kopanong	Above 1M	\N
district	DC16	2016	Reddersburg Kopanong	Under 1.5K	\N
district	DC16	2016	Reddersburg Kopanong	1,501-3K	\N
district	DC16	2016	Reddersburg Kopanong	3,001-5K	4236
district	DC16	2016	Reddersburg Kopanong	5,001-10K	6733
district	DC16	2016	Reddersburg Kopanong	10,001-20K	\N
district	DC16	2016	Reddersburg Kopanong	20,001-30K	\N
district	DC16	2016	Reddersburg Kopanong	30,001-40K	\N
district	DC16	2016	Reddersburg Kopanong	40,001-50K	\N
district	DC16	2016	Reddersburg Kopanong	50,001-100K	\N
district	DC16	2016	Reddersburg Kopanong	100,001-150K	\N
district	DC16	2016	Reddersburg Kopanong	150,001-200K	\N
district	DC16	2016	Reddersburg Kopanong	200,001-300K	\N
district	DC16	2016	Reddersburg Kopanong	300,001-500K	\N
district	DC16	2016	Reddersburg Kopanong	500,001-800K	\N
district	DC16	2016	Reddersburg Kopanong	800,001-1M	\N
district	DC16	2016	Reddersburg Kopanong	Above 1M	\N
district	DC19	2016	Reitz Nketoana	Under 1.5K	594
district	DC19	2016	Reitz Nketoana	1,501-3K	\N
district	DC19	2016	Reitz Nketoana	3,001-5K	3115
district	DC19	2016	Reitz Nketoana	5,001-10K	7589
district	DC19	2016	Reitz Nketoana	10,001-20K	14360
district	DC19	2016	Reitz Nketoana	20,001-30K	22951
district	DC19	2016	Reitz Nketoana	30,001-40K	34461
district	DC19	2016	Reitz Nketoana	40,001-50K	46849
district	DC19	2016	Reitz Nketoana	50,001-100K	\N
district	DC19	2016	Reitz Nketoana	100,001-150K	\N
district	DC19	2016	Reitz Nketoana	150,001-200K	\N
district	DC19	2016	Reitz Nketoana	200,001-300K	289855
district	DC19	2016	Reitz Nketoana	300,001-500K	\N
district	DC19	2016	Reitz Nketoana	500,001-800K	\N
district	DC19	2016	Reitz Nketoana	800,001-1M	\N
district	DC19	2016	Reitz Nketoana	Above 1M	\N
district	DC16	2016	Rouxville Mohokare	Under 1.5K	\N
district	DC16	2016	Rouxville Mohokare	1,501-3K	\N
district	DC16	2016	Rouxville Mohokare	3,001-5K	4288
district	DC16	2016	Rouxville Mohokare	5,001-10K	6708
district	DC16	2016	Rouxville Mohokare	10,001-20K	10627
district	DC16	2016	Rouxville Mohokare	20,001-30K	25944
district	DC16	2016	Rouxville Mohokare	30,001-40K	\N
district	DC16	2016	Rouxville Mohokare	40,001-50K	\N
district	DC16	2016	Rouxville Mohokare	50,001-100K	\N
district	DC16	2016	Rouxville Mohokare	100,001-150K	115385
district	DC16	2016	Rouxville Mohokare	150,001-200K	\N
district	DC16	2016	Rouxville Mohokare	200,001-300K	\N
district	DC16	2016	Rouxville Mohokare	300,001-500K	\N
district	DC16	2016	Rouxville Mohokare	500,001-800K	\N
district	DC16	2016	Rouxville Mohokare	800,001-1M	\N
district	DC16	2016	Rouxville Mohokare	Above 1M	\N
district	DC19	2016	Senekal Setsoto	Under 1.5K	\N
district	DC19	2016	Senekal Setsoto	1,501-3K	\N
district	DC19	2016	Senekal Setsoto	3,001-5K	\N
district	DC19	2016	Senekal Setsoto	5,001-10K	8050
district	DC19	2016	Senekal Setsoto	10,001-20K	11438
district	DC19	2016	Senekal Setsoto	20,001-30K	\N
district	DC19	2016	Senekal Setsoto	30,001-40K	\N
district	DC19	2016	Senekal Setsoto	40,001-50K	\N
district	DC19	2016	Senekal Setsoto	50,001-100K	\N
district	DC19	2016	Senekal Setsoto	100,001-150K	\N
district	DC19	2016	Senekal Setsoto	150,001-200K	\N
district	DC19	2016	Senekal Setsoto	200,001-300K	\N
district	DC19	2016	Senekal Setsoto	300,001-500K	\N
district	DC19	2016	Senekal Setsoto	500,001-800K	\N
district	DC19	2016	Senekal Setsoto	800,001-1M	\N
district	DC19	2016	Senekal Setsoto	Above 1M	\N
district	DC16	2016	Smithfield Mohkare	Under 1.5K	1482
district	DC16	2016	Smithfield Mohkare	1,501-3K	\N
district	DC16	2016	Smithfield Mohkare	3,001-5K	\N
district	DC16	2016	Smithfield Mohkare	5,001-10K	6177
district	DC16	2016	Smithfield Mohkare	10,001-20K	\N
district	DC16	2016	Smithfield Mohkare	20,001-30K	\N
district	DC16	2016	Smithfield Mohkare	30,001-40K	\N
district	DC16	2016	Smithfield Mohkare	40,001-50K	\N
district	DC16	2016	Smithfield Mohkare	50,001-100K	\N
district	DC16	2016	Smithfield Mohkare	100,001-150K	\N
district	DC16	2016	Smithfield Mohkare	150,001-200K	\N
district	DC16	2016	Smithfield Mohkare	200,001-300K	\N
district	DC16	2016	Smithfield Mohkare	300,001-500K	\N
district	DC16	2016	Smithfield Mohkare	500,001-800K	\N
district	DC16	2016	Smithfield Mohkare	800,001-1M	\N
district	DC16	2016	Smithfield Mohkare	Above 1M	\N
municipality	MAN	2016	Thaba Nchu	Under 1.5K	\N
municipality	MAN	2016	Thaba Nchu	1,501-3K	2529
municipality	MAN	2016	Thaba Nchu	3,001-5K	3763
municipality	MAN	2016	Thaba Nchu	5,001-10K	7850
municipality	MAN	2016	Thaba Nchu	10,001-20K	10592
municipality	MAN	2016	Thaba Nchu	20,001-30K	\N
municipality	MAN	2016	Thaba Nchu	30,001-40K	\N
municipality	MAN	2016	Thaba Nchu	40,001-50K	\N
municipality	MAN	2016	Thaba Nchu	50,001-100K	\N
municipality	MAN	2016	Thaba Nchu	100,001-150K	\N
municipality	MAN	2016	Thaba Nchu	150,001-200K	\N
municipality	MAN	2016	Thaba Nchu	200,001-300K	\N
municipality	MAN	2016	Thaba Nchu	300,001-500K	\N
municipality	MAN	2016	Thaba Nchu	500,001-800K	\N
municipality	MAN	2016	Thaba Nchu	800,001-1M	\N
municipality	MAN	2016	Thaba Nchu	Above 1M	\N
district	DC18	2016	Theunissen Masilonyana	Under 1.5K	1179
district	DC18	2016	Theunissen Masilonyana	1,501-3K	1637
district	DC18	2016	Theunissen Masilonyana	3,001-5K	3767
district	DC18	2016	Theunissen Masilonyana	5,001-10K	6957
district	DC18	2016	Theunissen Masilonyana	10,001-20K	12889
district	DC18	2016	Theunissen Masilonyana	20,001-30K	20051
district	DC18	2016	Theunissen Masilonyana	30,001-40K	\N
district	DC18	2016	Theunissen Masilonyana	40,001-50K	47125
district	DC18	2016	Theunissen Masilonyana	50,001-100K	65330
district	DC18	2016	Theunissen Masilonyana	100,001-150K	128031
district	DC18	2016	Theunissen Masilonyana	150,001-200K	\N
district	DC18	2016	Theunissen Masilonyana	200,001-300K	\N
district	DC18	2016	Theunissen Masilonyana	300,001-500K	\N
district	DC18	2016	Theunissen Masilonyana	500,001-800K	\N
district	DC18	2016	Theunissen Masilonyana	800,001-1M	\N
district	DC18	2016	Theunissen Masilonyana	Above 1M	\N
district	DC18	2016	Ventersburg Matjhabeng	Under 1.5K	\N
district	DC18	2016	Ventersburg Matjhabeng	1,501-3K	2793
district	DC18	2016	Ventersburg Matjhabeng	3,001-5K	3314
district	DC18	2016	Ventersburg Matjhabeng	5,001-10K	8378
district	DC18	2016	Ventersburg Matjhabeng	10,001-20K	13128
district	DC18	2016	Ventersburg Matjhabeng	20,001-30K	23008
district	DC18	2016	Ventersburg Matjhabeng	30,001-40K	\N
district	DC18	2016	Ventersburg Matjhabeng	40,001-50K	\N
district	DC18	2016	Ventersburg Matjhabeng	50,001-100K	\N
district	DC18	2016	Ventersburg Matjhabeng	100,001-150K	109856
district	DC18	2016	Ventersburg Matjhabeng	150,001-200K	\N
district	DC18	2016	Ventersburg Matjhabeng	200,001-300K	\N
district	DC18	2016	Ventersburg Matjhabeng	300,001-500K	\N
district	DC18	2016	Ventersburg Matjhabeng	500,001-800K	\N
district	DC18	2016	Ventersburg Matjhabeng	800,001-1M	\N
district	DC18	2016	Ventersburg Matjhabeng	Above 1M	\N
district	DC20	2016	Viljoenskroon Moqhaka	Under 1.5K	\N
district	DC20	2016	Viljoenskroon Moqhaka	1,501-3K	\N
district	DC20	2016	Viljoenskroon Moqhaka	3,001-5K	\N
district	DC20	2016	Viljoenskroon Moqhaka	5,001-10K	9128
district	DC20	2016	Viljoenskroon Moqhaka	10,001-20K	15115
district	DC20	2016	Viljoenskroon Moqhaka	20,001-30K	\N
district	DC20	2016	Viljoenskroon Moqhaka	30,001-40K	\N
district	DC20	2016	Viljoenskroon Moqhaka	40,001-50K	\N
district	DC20	2016	Viljoenskroon Moqhaka	50,001-100K	61250
district	DC20	2016	Viljoenskroon Moqhaka	100,001-150K	\N
district	DC20	2016	Viljoenskroon Moqhaka	150,001-200K	164097
district	DC20	2016	Viljoenskroon Moqhaka	200,001-300K	\N
district	DC20	2016	Viljoenskroon Moqhaka	300,001-500K	\N
district	DC20	2016	Viljoenskroon Moqhaka	500,001-800K	\N
district	DC20	2016	Viljoenskroon Moqhaka	800,001-1M	\N
district	DC20	2016	Viljoenskroon Moqhaka	Above 1M	\N
district	DC19	2016	Vrede Phumelela	Under 1.5K	9
district	DC19	2016	Vrede Phumelela	1,501-3K	1928
district	DC19	2016	Vrede Phumelela	3,001-5K	3568
district	DC19	2016	Vrede Phumelela	5,001-10K	8284
district	DC19	2016	Vrede Phumelela	10,001-20K	14293
district	DC19	2016	Vrede Phumelela	20,001-30K	25275
district	DC19	2016	Vrede Phumelela	30,001-40K	\N
district	DC19	2016	Vrede Phumelela	40,001-50K	\N
district	DC19	2016	Vrede Phumelela	50,001-100K	\N
district	DC19	2016	Vrede Phumelela	100,001-150K	\N
district	DC19	2016	Vrede Phumelela	150,001-200K	\N
district	DC19	2016	Vrede Phumelela	200,001-300K	\N
district	DC19	2016	Vrede Phumelela	300,001-500K	\N
district	DC19	2016	Vrede Phumelela	500,001-800K	\N
district	DC19	2016	Vrede Phumelela	800,001-1M	\N
district	DC19	2016	Vrede Phumelela	Above 1M	\N
district	DC20	2016	Vredefort Ngwathe	Under 1.5K	\N
district	DC20	2016	Vredefort Ngwathe	1,501-3K	\N
district	DC20	2016	Vredefort Ngwathe	3,001-5K	\N
district	DC20	2016	Vredefort Ngwathe	5,001-10K	9277
district	DC20	2016	Vredefort Ngwathe	10,001-20K	14198
district	DC20	2016	Vredefort Ngwathe	20,001-30K	24194
district	DC20	2016	Vredefort Ngwathe	30,001-40K	35174
district	DC20	2016	Vredefort Ngwathe	40,001-50K	\N
district	DC20	2016	Vredefort Ngwathe	50,001-100K	\N
district	DC20	2016	Vredefort Ngwathe	100,001-150K	\N
district	DC20	2016	Vredefort Ngwathe	150,001-200K	\N
district	DC20	2016	Vredefort Ngwathe	200,001-300K	\N
district	DC20	2016	Vredefort Ngwathe	300,001-500K	\N
district	DC20	2016	Vredefort Ngwathe	500,001-800K	\N
district	DC20	2016	Vredefort Ngwathe	800,001-1M	\N
district	DC20	2016	Vredefort Ngwathe	Above 1M	\N
district	DC18	2016	Welkom Matjhabeng	Under 1.5K	\N
district	DC18	2016	Welkom Matjhabeng	1,501-3K	\N
district	DC18	2016	Welkom Matjhabeng	3,001-5K	\N
district	DC18	2016	Welkom Matjhabeng	5,001-10K	\N
district	DC18	2016	Welkom Matjhabeng	10,001-20K	\N
district	DC18	2016	Welkom Matjhabeng	20,001-30K	28871
district	DC18	2016	Welkom Matjhabeng	30,001-40K	\N
district	DC18	2016	Welkom Matjhabeng	40,001-50K	\N
district	DC18	2016	Welkom Matjhabeng	50,001-100K	\N
district	DC18	2016	Welkom Matjhabeng	100,001-150K	\N
district	DC18	2016	Welkom Matjhabeng	150,001-200K	\N
district	DC18	2016	Welkom Matjhabeng	200,001-300K	\N
district	DC18	2016	Welkom Matjhabeng	300,001-500K	\N
district	DC18	2016	Welkom Matjhabeng	500,001-800K	\N
district	DC18	2016	Welkom Matjhabeng	800,001-1M	\N
district	DC18	2016	Welkom Matjhabeng	Above 1M	\N
municipality	MAN	2016	Wepener Naledi	Under 1.5K	\N
municipality	MAN	2016	Wepener Naledi	1,501-3K	2706
municipality	MAN	2016	Wepener Naledi	3,001-5K	3442
municipality	MAN	2016	Wepener Naledi	5,001-10K	7564
municipality	MAN	2016	Wepener Naledi	10,001-20K	\N
municipality	MAN	2016	Wepener Naledi	20,001-30K	\N
municipality	MAN	2016	Wepener Naledi	30,001-40K	\N
municipality	MAN	2016	Wepener Naledi	40,001-50K	\N
municipality	MAN	2016	Wepener Naledi	50,001-100K	\N
municipality	MAN	2016	Wepener Naledi	100,001-150K	\N
municipality	MAN	2016	Wepener Naledi	150,001-200K	\N
municipality	MAN	2016	Wepener Naledi	200,001-300K	\N
municipality	MAN	2016	Wepener Naledi	300,001-500K	\N
municipality	MAN	2016	Wepener Naledi	500,001-800K	\N
municipality	MAN	2016	Wepener Naledi	800,001-1M	\N
municipality	MAN	2016	Wepener Naledi	Above 1M	\N
district	DC18	2016	Wesselsbron Nala	Under 1.5K	\N
district	DC18	2016	Wesselsbron Nala	1,501-3K	\N
district	DC18	2016	Wesselsbron Nala	3,001-5K	\N
district	DC18	2016	Wesselsbron Nala	5,001-10K	9886
district	DC18	2016	Wesselsbron Nala	10,001-20K	16514
district	DC18	2016	Wesselsbron Nala	20,001-30K	22625
district	DC18	2016	Wesselsbron Nala	30,001-40K	\N
district	DC18	2016	Wesselsbron Nala	40,001-50K	\N
district	DC18	2016	Wesselsbron Nala	50,001-100K	53587
district	DC18	2016	Wesselsbron Nala	100,001-150K	\N
district	DC18	2016	Wesselsbron Nala	150,001-200K	\N
district	DC18	2016	Wesselsbron Nala	200,001-300K	\N
district	DC18	2016	Wesselsbron Nala	300,001-500K	\N
district	DC18	2016	Wesselsbron Nala	500,001-800K	\N
district	DC18	2016	Wesselsbron Nala	800,001-1M	\N
district	DC18	2016	Wesselsbron Nala	Above 1M	\N
district	DC18	2016	Winburg Masilonyana	Under 1.5K	\N
district	DC18	2016	Winburg Masilonyana	1,501-3K	\N
district	DC18	2016	Winburg Masilonyana	3,001-5K	\N
district	DC18	2016	Winburg Masilonyana	5,001-10K	7393
district	DC18	2016	Winburg Masilonyana	10,001-20K	13165
district	DC18	2016	Winburg Masilonyana	20,001-30K	\N
district	DC18	2016	Winburg Masilonyana	30,001-40K	\N
district	DC18	2016	Winburg Masilonyana	40,001-50K	\N
district	DC18	2016	Winburg Masilonyana	50,001-100K	\N
district	DC18	2016	Winburg Masilonyana	100,001-150K	\N
district	DC18	2016	Winburg Masilonyana	150,001-200K	\N
district	DC18	2016	Winburg Masilonyana	200,001-300K	\N
district	DC18	2016	Winburg Masilonyana	300,001-500K	\N
district	DC18	2016	Winburg Masilonyana	500,001-800K	\N
district	DC18	2016	Winburg Masilonyana	800,001-1M	\N
district	DC18	2016	Winburg Masilonyana	Above 1M	\N
district	DC16	2016	Zastron Mohokare	Under 1.5K	\N
district	DC16	2016	Zastron Mohokare	1,501-3K	2249
district	DC16	2016	Zastron Mohokare	3,001-5K	3796
district	DC16	2016	Zastron Mohokare	5,001-10K	6438
district	DC16	2016	Zastron Mohokare	10,001-20K	\N
district	DC16	2016	Zastron Mohokare	20,001-30K	\N
district	DC16	2016	Zastron Mohokare	30,001-40K	\N
district	DC16	2016	Zastron Mohokare	40,001-50K	\N
district	DC16	2016	Zastron Mohokare	50,001-100K	\N
district	DC16	2016	Zastron Mohokare	100,001-150K	\N
district	DC16	2016	Zastron Mohokare	150,001-200K	\N
district	DC16	2016	Zastron Mohokare	200,001-300K	\N
district	DC16	2016	Zastron Mohokare	300,001-500K	\N
district	DC16	2016	Zastron Mohokare	500,001-800K	\N
district	DC16	2016	Zastron Mohokare	800,001-1M	\N
district	DC16	2016	Zastron Mohokare	Above 1M	\N
district	DC48	2016	Carletonville Merafong	Under 1.5K	332
district	DC48	2016	Carletonville Merafong	1,501-3K	1852
district	DC48	2016	Carletonville Merafong	3,001-5K	3413
district	DC48	2016	Carletonville Merafong	5,001-10K	7901
district	DC48	2016	Carletonville Merafong	10,001-20K	13817
district	DC48	2016	Carletonville Merafong	20,001-30K	24415
district	DC48	2016	Carletonville Merafong	30,001-40K	34450
district	DC48	2016	Carletonville Merafong	40,001-50K	45594
district	DC48	2016	Carletonville Merafong	50,001-100K	71419
district	DC48	2016	Carletonville Merafong	100,001-150K	121616
district	DC48	2016	Carletonville Merafong	150,001-200K	184668
district	DC48	2016	Carletonville Merafong	200,001-300K	231649
district	DC48	2016	Carletonville Merafong	300,001-500K	371103
district	DC48	2016	Carletonville Merafong	500,001-800K	791667
district	DC48	2016	Carletonville Merafong	800,001-1M	940000
district	DC48	2016	Carletonville Merafong	Above 1M	4776381
district	DC30	2016	Leandra Gonovan Mbeki	Under 1.5K	909
district	DC30	2016	Leandra Gonovan Mbeki	1,501-3K	\N
district	DC30	2016	Leandra Gonovan Mbeki	3,001-5K	\N
district	DC30	2016	Leandra Gonovan Mbeki	5,001-10K	6338
district	DC30	2016	Leandra Gonovan Mbeki	10,001-20K	14056
district	DC30	2016	Leandra Gonovan Mbeki	20,001-30K	23962
district	DC30	2016	Leandra Gonovan Mbeki	30,001-40K	36861
district	DC30	2016	Leandra Gonovan Mbeki	40,001-50K	44421
district	DC30	2016	Leandra Gonovan Mbeki	50,001-100K	62134
district	DC30	2016	Leandra Gonovan Mbeki	100,001-150K	129298
district	DC30	2016	Leandra Gonovan Mbeki	150,001-200K	\N
district	DC30	2016	Leandra Gonovan Mbeki	200,001-300K	259750
district	DC30	2016	Leandra Gonovan Mbeki	300,001-500K	\N
district	DC30	2016	Leandra Gonovan Mbeki	500,001-800K	\N
district	DC30	2016	Leandra Gonovan Mbeki	800,001-1M	\N
district	DC30	2016	Leandra Gonovan Mbeki	Above 1M	\N
municipality	EKU	2016	Nigel Ekurhuleni	Under 1.5K	427
municipality	EKU	2016	Nigel Ekurhuleni	1,501-3K	\N
municipality	EKU	2016	Nigel Ekurhuleni	3,001-5K	3333
municipality	EKU	2016	Nigel Ekurhuleni	5,001-10K	6003
municipality	EKU	2016	Nigel Ekurhuleni	10,001-20K	16238
municipality	EKU	2016	Nigel Ekurhuleni	20,001-30K	24693
municipality	EKU	2016	Nigel Ekurhuleni	30,001-40K	34107
municipality	EKU	2016	Nigel Ekurhuleni	40,001-50K	46790
municipality	EKU	2016	Nigel Ekurhuleni	50,001-100K	70058
municipality	EKU	2016	Nigel Ekurhuleni	100,001-150K	125119
municipality	EKU	2016	Nigel Ekurhuleni	150,001-200K	188462
municipality	EKU	2016	Nigel Ekurhuleni	200,001-300K	227244
municipality	EKU	2016	Nigel Ekurhuleni	300,001-500K	\N
municipality	EKU	2016	Nigel Ekurhuleni	500,001-800K	583333
municipality	EKU	2016	Nigel Ekurhuleni	800,001-1M	\N
municipality	EKU	2016	Nigel Ekurhuleni	Above 1M	3413096
municipality	TSH	2016	Pretoria Tshwane	Under 1.5K	\N
municipality	TSH	2016	Pretoria Tshwane	1,501-3K	\N
municipality	TSH	2016	Pretoria Tshwane	3,001-5K	\N
municipality	TSH	2016	Pretoria Tshwane	5,001-10K	7820
municipality	TSH	2016	Pretoria Tshwane	10,001-20K	14838
municipality	TSH	2016	Pretoria Tshwane	20,001-30K	25505
municipality	TSH	2016	Pretoria Tshwane	30,001-40K	35460
municipality	TSH	2016	Pretoria Tshwane	40,001-50K	45315
municipality	TSH	2016	Pretoria Tshwane	50,001-100K	75815
municipality	TSH	2016	Pretoria Tshwane	100,001-150K	119719
municipality	TSH	2016	Pretoria Tshwane	150,001-200K	173636
municipality	TSH	2016	Pretoria Tshwane	200,001-300K	238346
municipality	TSH	2016	Pretoria Tshwane	300,001-500K	357865
municipality	TSH	2016	Pretoria Tshwane	500,001-800K	600720
municipality	TSH	2016	Pretoria Tshwane	800,001-1M	\N
municipality	TSH	2016	Pretoria Tshwane	Above 1M	3381043
district	DC29	2016	Ballito KwaDukuza	Under 1.5K	\N
district	DC29	2016	Ballito KwaDukuza	1,501-3K	\N
district	DC29	2016	Ballito KwaDukuza	3,001-5K	3846
district	DC29	2016	Ballito KwaDukuza	5,001-10K	8375
district	DC29	2016	Ballito KwaDukuza	10,001-20K	13132
district	DC29	2016	Ballito KwaDukuza	20,001-30K	27328
district	DC29	2016	Ballito KwaDukuza	30,001-40K	32370
district	DC29	2016	Ballito KwaDukuza	40,001-50K	46640
district	DC29	2016	Ballito KwaDukuza	50,001-100K	76526
district	DC29	2016	Ballito KwaDukuza	100,001-150K	117524
district	DC29	2016	Ballito KwaDukuza	150,001-200K	193798
district	DC29	2016	Ballito KwaDukuza	200,001-300K	\N
district	DC29	2016	Ballito KwaDukuza	300,001-500K	461538
district	DC29	2016	Ballito KwaDukuza	500,001-800K	610417
district	DC29	2016	Ballito KwaDukuza	800,001-1M	\N
district	DC29	2016	Ballito KwaDukuza	Above 1M	13264497
district	DC24	2016	Helpmekaar uMzinyathi	Under 1.5K	\N
district	DC24	2016	Helpmekaar uMzinyathi	1,501-3K	\N
district	DC24	2016	Helpmekaar uMzinyathi	3,001-5K	3017
district	DC24	2016	Helpmekaar uMzinyathi	5,001-10K	6034
district	DC24	2016	Helpmekaar uMzinyathi	10,001-20K	10340
district	DC24	2016	Helpmekaar uMzinyathi	20,001-30K	\N
district	DC24	2016	Helpmekaar uMzinyathi	30,001-40K	\N
district	DC24	2016	Helpmekaar uMzinyathi	40,001-50K	\N
district	DC24	2016	Helpmekaar uMzinyathi	50,001-100K	\N
district	DC24	2016	Helpmekaar uMzinyathi	100,001-150K	\N
district	DC24	2016	Helpmekaar uMzinyathi	150,001-200K	\N
district	DC24	2016	Helpmekaar uMzinyathi	200,001-300K	\N
district	DC24	2016	Helpmekaar uMzinyathi	300,001-500K	\N
district	DC24	2016	Helpmekaar uMzinyathi	500,001-800K	\N
district	DC24	2016	Helpmekaar uMzinyathi	800,001-1M	\N
district	DC24	2016	Helpmekaar uMzinyathi	Above 1M	\N
district	DC27	2016	Jozini Mkuze	Under 1.5K	\N
district	DC27	2016	Jozini Mkuze	1,501-3K	\N
district	DC27	2016	Jozini Mkuze	3,001-5K	\N
district	DC27	2016	Jozini Mkuze	5,001-10K	\N
district	DC27	2016	Jozini Mkuze	10,001-20K	12381
district	DC27	2016	Jozini Mkuze	20,001-30K	\N
district	DC27	2016	Jozini Mkuze	30,001-40K	37294
district	DC27	2016	Jozini Mkuze	40,001-50K	42270
district	DC27	2016	Jozini Mkuze	50,001-100K	75000
district	DC27	2016	Jozini Mkuze	100,001-150K	\N
district	DC27	2016	Jozini Mkuze	150,001-200K	\N
district	DC27	2016	Jozini Mkuze	200,001-300K	\N
district	DC27	2016	Jozini Mkuze	300,001-500K	\N
district	DC27	2016	Jozini Mkuze	500,001-800K	\N
district	DC27	2016	Jozini Mkuze	800,001-1M	\N
district	DC27	2016	Jozini Mkuze	Above 1M	\N
district	DC43	2016	Kokstad	Under 1.5K	\N
district	DC43	2016	Kokstad	1,501-3K	\N
district	DC43	2016	Kokstad	3,001-5K	4644
district	DC43	2016	Kokstad	5,001-10K	8163
district	DC43	2016	Kokstad	10,001-20K	14952
district	DC43	2016	Kokstad	20,001-30K	25364
district	DC43	2016	Kokstad	30,001-40K	36184
district	DC43	2016	Kokstad	40,001-50K	\N
district	DC43	2016	Kokstad	50,001-100K	77329
district	DC43	2016	Kokstad	100,001-150K	102222
district	DC43	2016	Kokstad	150,001-200K	\N
district	DC43	2016	Kokstad	200,001-300K	235000
district	DC43	2016	Kokstad	300,001-500K	\N
district	DC43	2016	Kokstad	500,001-800K	\N
district	DC43	2016	Kokstad	800,001-1M	\N
district	DC43	2016	Kokstad	Above 1M	\N
district	DC23	2016	Ladysmith Emnambithi	Under 1.5K	\N
district	DC23	2016	Ladysmith Emnambithi	1,501-3K	\N
district	DC23	2016	Ladysmith Emnambithi	3,001-5K	4544
district	DC23	2016	Ladysmith Emnambithi	5,001-10K	7032
district	DC23	2016	Ladysmith Emnambithi	10,001-20K	13457
district	DC23	2016	Ladysmith Emnambithi	20,001-30K	20332
district	DC23	2016	Ladysmith Emnambithi	30,001-40K	\N
district	DC23	2016	Ladysmith Emnambithi	40,001-50K	43609
district	DC23	2016	Ladysmith Emnambithi	50,001-100K	75401
district	DC23	2016	Ladysmith Emnambithi	100,001-150K	\N
district	DC23	2016	Ladysmith Emnambithi	150,001-200K	\N
district	DC23	2016	Ladysmith Emnambithi	200,001-300K	210000
district	DC23	2016	Ladysmith Emnambithi	300,001-500K	\N
district	DC23	2016	Ladysmith Emnambithi	500,001-800K	\N
district	DC23	2016	Ladysmith Emnambithi	800,001-1M	\N
district	DC23	2016	Ladysmith Emnambithi	Above 1M	\N
district	DC26	2016	Louwsburg Abaqulusi	Under 1.5K	\N
district	DC26	2016	Louwsburg Abaqulusi	1,501-3K	2042
district	DC26	2016	Louwsburg Abaqulusi	3,001-5K	\N
district	DC26	2016	Louwsburg Abaqulusi	5,001-10K	6737
district	DC26	2016	Louwsburg Abaqulusi	10,001-20K	16588
district	DC26	2016	Louwsburg Abaqulusi	20,001-30K	28903
district	DC26	2016	Louwsburg Abaqulusi	30,001-40K	\N
district	DC26	2016	Louwsburg Abaqulusi	40,001-50K	\N
district	DC26	2016	Louwsburg Abaqulusi	50,001-100K	\N
district	DC26	2016	Louwsburg Abaqulusi	100,001-150K	113858
district	DC26	2016	Louwsburg Abaqulusi	150,001-200K	\N
district	DC26	2016	Louwsburg Abaqulusi	200,001-300K	\N
district	DC26	2016	Louwsburg Abaqulusi	300,001-500K	\N
district	DC26	2016	Louwsburg Abaqulusi	500,001-800K	\N
district	DC26	2016	Louwsburg Abaqulusi	800,001-1M	\N
district	DC26	2016	Louwsburg Abaqulusi	Above 1M	\N
district	DC25	2016	Newcastle	Under 1.5K	1400
district	DC25	2016	Newcastle	1,501-3K	2011
district	DC25	2016	Newcastle	3,001-5K	\N
district	DC25	2016	Newcastle	5,001-10K	8417
district	DC25	2016	Newcastle	10,001-20K	14377
district	DC25	2016	Newcastle	20,001-30K	24414
district	DC25	2016	Newcastle	30,001-40K	33846
district	DC25	2016	Newcastle	40,001-50K	43651
district	DC25	2016	Newcastle	50,001-100K	\N
district	DC25	2016	Newcastle	100,001-150K	121212
district	DC25	2016	Newcastle	150,001-200K	\N
district	DC25	2016	Newcastle	200,001-300K	\N
district	DC25	2016	Newcastle	300,001-500K	\N
district	DC25	2016	Newcastle	500,001-800K	\N
district	DC25	2016	Newcastle	800,001-1M	\N
district	DC25	2016	Newcastle	Above 1M	\N
district	DC22	2016	Pietermaritzburg Msunduzi	Under 1.5K	596
district	DC22	2016	Pietermaritzburg Msunduzi	1,501-3K	2767
district	DC22	2016	Pietermaritzburg Msunduzi	3,001-5K	3641
district	DC22	2016	Pietermaritzburg Msunduzi	5,001-10K	8141
district	DC22	2016	Pietermaritzburg Msunduzi	10,001-20K	13327
district	DC22	2016	Pietermaritzburg Msunduzi	20,001-30K	25263
district	DC22	2016	Pietermaritzburg Msunduzi	30,001-40K	34768
district	DC22	2016	Pietermaritzburg Msunduzi	40,001-50K	49959
district	DC22	2016	Pietermaritzburg Msunduzi	50,001-100K	68041
district	DC22	2016	Pietermaritzburg Msunduzi	100,001-150K	124260
district	DC22	2016	Pietermaritzburg Msunduzi	150,001-200K	172518
district	DC22	2016	Pietermaritzburg Msunduzi	200,001-300K	257099
district	DC22	2016	Pietermaritzburg Msunduzi	300,001-500K	381212
district	DC22	2016	Pietermaritzburg Msunduzi	500,001-800K	708333
district	DC22	2016	Pietermaritzburg Msunduzi	800,001-1M	882000
district	DC22	2016	Pietermaritzburg Msunduzi	Above 1M	9654429
district	DC21	2016	Port Shepstone Ray Nkonyeni	Under 1.5K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	1,501-3K	2270
district	DC21	2016	Port Shepstone Ray Nkonyeni	3,001-5K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	5,001-10K	7715
district	DC21	2016	Port Shepstone Ray Nkonyeni	10,001-20K	14519
district	DC21	2016	Port Shepstone Ray Nkonyeni	20,001-30K	26580
district	DC21	2016	Port Shepstone Ray Nkonyeni	30,001-40K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	40,001-50K	43457
district	DC21	2016	Port Shepstone Ray Nkonyeni	50,001-100K	71408
district	DC21	2016	Port Shepstone Ray Nkonyeni	100,001-150K	113310
district	DC21	2016	Port Shepstone Ray Nkonyeni	150,001-200K	165859
district	DC21	2016	Port Shepstone Ray Nkonyeni	200,001-300K	210000
district	DC21	2016	Port Shepstone Ray Nkonyeni	300,001-500K	384524
district	DC21	2016	Port Shepstone Ray Nkonyeni	500,001-800K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	800,001-1M	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	Above 1M	\N
district	DC27	2016	St Lucia Mtubatuba	Under 1.5K	469
district	DC27	2016	St Lucia Mtubatuba	1,501-3K	\N
district	DC27	2016	St Lucia Mtubatuba	3,001-5K	\N
district	DC27	2016	St Lucia Mtubatuba	5,001-10K	\N
district	DC27	2016	St Lucia Mtubatuba	10,001-20K	\N
district	DC27	2016	St Lucia Mtubatuba	20,001-30K	\N
district	DC27	2016	St Lucia Mtubatuba	30,001-40K	30864
district	DC27	2016	St Lucia Mtubatuba	40,001-50K	\N
district	DC27	2016	St Lucia Mtubatuba	50,001-100K	67063
district	DC27	2016	St Lucia Mtubatuba	100,001-150K	\N
district	DC27	2016	St Lucia Mtubatuba	150,001-200K	\N
district	DC27	2016	St Lucia Mtubatuba	200,001-300K	\N
district	DC27	2016	St Lucia Mtubatuba	300,001-500K	\N
district	DC27	2016	St Lucia Mtubatuba	500,001-800K	\N
district	DC27	2016	St Lucia Mtubatuba	800,001-1M	\N
district	DC27	2016	St Lucia Mtubatuba	Above 1M	\N
district	DC26	2016	Ulundi	Under 1.5K	73
district	DC26	2016	Ulundi	1,501-3K	\N
district	DC26	2016	Ulundi	3,001-5K	\N
district	DC26	2016	Ulundi	5,001-10K	6749
district	DC26	2016	Ulundi	10,001-20K	12938
district	DC26	2016	Ulundi	20,001-30K	22727
district	DC26	2016	Ulundi	30,001-40K	39640
district	DC26	2016	Ulundi	40,001-50K	46274
district	DC26	2016	Ulundi	50,001-100K	67162
district	DC26	2016	Ulundi	100,001-150K	114173
district	DC26	2016	Ulundi	150,001-200K	\N
district	DC26	2016	Ulundi	200,001-300K	\N
district	DC26	2016	Ulundi	300,001-500K	\N
district	DC26	2016	Ulundi	500,001-800K	\N
district	DC26	2016	Ulundi	800,001-1M	\N
district	DC26	2016	Ulundi	Above 1M	\N
district	DC43	2016	Underberg KwaSani	Under 1.5K	\N
district	DC43	2016	Underberg KwaSani	1,501-3K	\N
district	DC43	2016	Underberg KwaSani	3,001-5K	4878
district	DC43	2016	Underberg KwaSani	5,001-10K	7770
district	DC43	2016	Underberg KwaSani	10,001-20K	13631
district	DC43	2016	Underberg KwaSani	20,001-30K	24978
district	DC43	2016	Underberg KwaSani	30,001-40K	34708
district	DC43	2016	Underberg KwaSani	40,001-50K	45774
district	DC43	2016	Underberg KwaSani	50,001-100K	72088
district	DC43	2016	Underberg KwaSani	100,001-150K	122555
district	DC43	2016	Underberg KwaSani	150,001-200K	164286
district	DC43	2016	Underberg KwaSani	200,001-300K	241234
district	DC43	2016	Underberg KwaSani	300,001-500K	\N
district	DC43	2016	Underberg KwaSani	500,001-800K	\N
district	DC43	2016	Underberg KwaSani	800,001-1M	\N
district	DC43	2016	Underberg KwaSani	Above 1M	\N
district	DC25	2016	Utrecht eMadlangeni	Under 1.5K	1350
district	DC25	2016	Utrecht eMadlangeni	1,501-3K	2909
district	DC25	2016	Utrecht eMadlangeni	3,001-5K	3725
district	DC25	2016	Utrecht eMadlangeni	5,001-10K	7741
district	DC25	2016	Utrecht eMadlangeni	10,001-20K	13107
district	DC25	2016	Utrecht eMadlangeni	20,001-30K	27076
district	DC25	2016	Utrecht eMadlangeni	30,001-40K	33333
district	DC25	2016	Utrecht eMadlangeni	40,001-50K	\N
district	DC25	2016	Utrecht eMadlangeni	50,001-100K	63524
district	DC25	2016	Utrecht eMadlangeni	100,001-150K	125000
district	DC25	2016	Utrecht eMadlangeni	150,001-200K	\N
district	DC25	2016	Utrecht eMadlangeni	200,001-300K	\N
district	DC25	2016	Utrecht eMadlangeni	300,001-500K	\N
district	DC25	2016	Utrecht eMadlangeni	500,001-800K	\N
district	DC25	2016	Utrecht eMadlangeni	800,001-1M	\N
district	DC25	2016	Utrecht eMadlangeni	Above 1M	\N
district	DC26	2016	Vryheid Abaqulusi	Under 1.5K	\N
district	DC26	2016	Vryheid Abaqulusi	1,501-3K	\N
district	DC26	2016	Vryheid Abaqulusi	3,001-5K	\N
district	DC26	2016	Vryheid Abaqulusi	5,001-10K	7205
district	DC26	2016	Vryheid Abaqulusi	10,001-20K	\N
district	DC26	2016	Vryheid Abaqulusi	20,001-30K	\N
district	DC26	2016	Vryheid Abaqulusi	30,001-40K	\N
district	DC26	2016	Vryheid Abaqulusi	40,001-50K	\N
district	DC26	2016	Vryheid Abaqulusi	50,001-100K	\N
district	DC26	2016	Vryheid Abaqulusi	100,001-150K	\N
district	DC26	2016	Vryheid Abaqulusi	150,001-200K	\N
district	DC26	2016	Vryheid Abaqulusi	200,001-300K	\N
district	DC26	2016	Vryheid Abaqulusi	300,001-500K	\N
district	DC26	2016	Vryheid Abaqulusi	500,001-800K	\N
district	DC26	2016	Vryheid Abaqulusi	800,001-1M	\N
district	DC26	2016	Vryheid Abaqulusi	Above 1M	\N
district	DC35	2016	Alldays Blouberg	Under 1.5K	117
district	DC35	2016	Alldays Blouberg	1,501-3K	2466
district	DC35	2016	Alldays Blouberg	3,001-5K	4167
district	DC35	2016	Alldays Blouberg	5,001-10K	7083
district	DC35	2016	Alldays Blouberg	10,001-20K	15293
district	DC35	2016	Alldays Blouberg	20,001-30K	21125
district	DC35	2016	Alldays Blouberg	30,001-40K	\N
district	DC35	2016	Alldays Blouberg	40,001-50K	43109
district	DC35	2016	Alldays Blouberg	50,001-100K	68609
district	DC35	2016	Alldays Blouberg	100,001-150K	\N
district	DC35	2016	Alldays Blouberg	150,001-200K	\N
district	DC35	2016	Alldays Blouberg	200,001-300K	\N
district	DC35	2016	Alldays Blouberg	300,001-500K	\N
district	DC35	2016	Alldays Blouberg	500,001-800K	\N
district	DC35	2016	Alldays Blouberg	800,001-1M	\N
district	DC35	2016	Alldays Blouberg	Above 1M	\N
district	DC47	2016	Burgersfort Thubatse	Under 1.5K	549
district	DC47	2016	Burgersfort Thubatse	1,501-3K	1805
district	DC47	2016	Burgersfort Thubatse	3,001-5K	3741
district	DC47	2016	Burgersfort Thubatse	5,001-10K	7461
district	DC47	2016	Burgersfort Thubatse	10,001-20K	13910
district	DC47	2016	Burgersfort Thubatse	20,001-30K	22918
district	DC47	2016	Burgersfort Thubatse	30,001-40K	36363
district	DC47	2016	Burgersfort Thubatse	40,001-50K	\N
district	DC47	2016	Burgersfort Thubatse	50,001-100K	75077
district	DC47	2016	Burgersfort Thubatse	100,001-150K	118366
district	DC47	2016	Burgersfort Thubatse	150,001-200K	159953
district	DC47	2016	Burgersfort Thubatse	200,001-300K	226346
district	DC47	2016	Burgersfort Thubatse	300,001-500K	384283
district	DC47	2016	Burgersfort Thubatse	500,001-800K	690409
district	DC47	2016	Burgersfort Thubatse	800,001-1M	948276
district	DC47	2016	Burgersfort Thubatse	Above 1M	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	Under 1.5K	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	1,501-3K	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	3,001-5K	3984
district	DC34	2016	Dendron Makhado (Louis Trichardt)	5,001-10K	7334
district	DC34	2016	Dendron Makhado (Louis Trichardt)	10,001-20K	13734
district	DC34	2016	Dendron Makhado (Louis Trichardt)	20,001-30K	25883
district	DC34	2016	Dendron Makhado (Louis Trichardt)	30,001-40K	34786
district	DC34	2016	Dendron Makhado (Louis Trichardt)	40,001-50K	42487
district	DC34	2016	Dendron Makhado (Louis Trichardt)	50,001-100K	86232
district	DC34	2016	Dendron Makhado (Louis Trichardt)	100,001-150K	131727
district	DC34	2016	Dendron Makhado (Louis Trichardt)	150,001-200K	176421
district	DC34	2016	Dendron Makhado (Louis Trichardt)	200,001-300K	239032
district	DC34	2016	Dendron Makhado (Louis Trichardt)	300,001-500K	363636
district	DC34	2016	Dendron Makhado (Louis Trichardt)	500,001-800K	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	800,001-1M	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	Above 1M	\N
district	DC36	2016	Ellisras Lephalale	Under 1.5K	\N
district	DC36	2016	Ellisras Lephalale	1,501-3K	1557
district	DC36	2016	Ellisras Lephalale	3,001-5K	3791
district	DC36	2016	Ellisras Lephalale	5,001-10K	6842
district	DC36	2016	Ellisras Lephalale	10,001-20K	12949
district	DC36	2016	Ellisras Lephalale	20,001-30K	\N
district	DC36	2016	Ellisras Lephalale	30,001-40K	32544
district	DC36	2016	Ellisras Lephalale	40,001-50K	43478
district	DC36	2016	Ellisras Lephalale	50,001-100K	51297
district	DC36	2016	Ellisras Lephalale	100,001-150K	\N
district	DC36	2016	Ellisras Lephalale	150,001-200K	\N
district	DC36	2016	Ellisras Lephalale	200,001-300K	\N
district	DC36	2016	Ellisras Lephalale	300,001-500K	340909
district	DC36	2016	Ellisras Lephalale	500,001-800K	\N
district	DC36	2016	Ellisras Lephalale	800,001-1M	\N
district	DC36	2016	Ellisras Lephalale	Above 1M	\N
district	DC36	2016	Marken	Under 1.5K	\N
district	DC36	2016	Marken	1,501-3K	2993
district	DC36	2016	Marken	3,001-5K	4100
district	DC36	2016	Marken	5,001-10K	7546
district	DC36	2016	Marken	10,001-20K	13071
district	DC36	2016	Marken	20,001-30K	23977
district	DC36	2016	Marken	30,001-40K	\N
district	DC36	2016	Marken	40,001-50K	\N
district	DC36	2016	Marken	50,001-100K	69892
district	DC36	2016	Marken	100,001-150K	\N
district	DC36	2016	Marken	150,001-200K	\N
district	DC36	2016	Marken	200,001-300K	\N
district	DC36	2016	Marken	500,001-800K	\N
district	DC36	2016	Marken	800,001-1M	\N
district	DC36	2016	Marken	Above 1M	\N
district	DC34	2016	Musina	Under 1.5K	18
district	DC34	2016	Musina	1,501-3K	\N
district	DC34	2016	Musina	3,001-5K	3788
district	DC34	2016	Musina	5,001-10K	5714
district	DC34	2016	Musina	10,001-20K	\N
district	DC34	2016	Musina	20,001-30K	\N
district	DC34	2016	Musina	30,001-40K	31008
district	DC34	2016	Musina	40,001-50K	43836
district	DC34	2016	Musina	50,001-100K	56000
district	DC34	2016	Musina	100,001-150K	\N
district	DC34	2016	Musina	150,001-200K	\N
district	DC34	2016	Musina	200,001-300K	\N
district	DC34	2016	Musina	300,001-500K	\N
district	DC34	2016	Musina	500,001-800K	\N
district	DC34	2016	Musina	800,001-1M	\N
district	DC34	2016	Musina	Above 1M	2615732
district	DC36	2016	Nylstroom Modimolle	Under 1.5K	1015
district	DC36	2016	Nylstroom Modimolle	1,501-3K	2299
district	DC36	2016	Nylstroom Modimolle	3,001-5K	4349
district	DC36	2016	Nylstroom Modimolle	5,001-10K	7220
district	DC36	2016	Nylstroom Modimolle	10,001-20K	15150
district	DC36	2016	Nylstroom Modimolle	20,001-30K	24060
district	DC36	2016	Nylstroom Modimolle	30,001-40K	35778
district	DC36	2016	Nylstroom Modimolle	40,001-50K	45817
district	DC36	2016	Nylstroom Modimolle	50,001-100K	70869
district	DC36	2016	Nylstroom Modimolle	100,001-150K	122165
district	DC36	2016	Nylstroom Modimolle	150,001-200K	163636
district	DC36	2016	Nylstroom Modimolle	200,001-300K	\N
district	DC36	2016	Nylstroom Modimolle	300,001-500K	335294
district	DC36	2016	Nylstroom Modimolle	500,001-800K	\N
district	DC36	2016	Nylstroom Modimolle	800,001-1M	\N
district	DC36	2016	Nylstroom Modimolle	Above 1M	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	Under 1.5K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	1,501-3K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	3,001-5K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	5,001-10K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	10,001-20K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	20,001-30K	20048
district	DC33	2016	Phalaborwa Ba-Phalaborwa	30,001-40K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	40,001-50K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	50,001-100K	84921
district	DC33	2016	Phalaborwa Ba-Phalaborwa	100,001-150K	117000
district	DC33	2016	Phalaborwa Ba-Phalaborwa	150,001-200K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	200,001-300K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	300,001-500K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	500,001-800K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	800,001-1M	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	Above 1M	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Under 1.5K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	1,501-3K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	3,001-5K	3983
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	5,001-10K	8841
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	10,001-20K	13418
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	20,001-30K	25305
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	30,001-40K	33762
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	40,001-50K	45595
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	50,001-100K	65799
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	100,001-150K	119403
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	150,001-200K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	200,001-300K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	300,001-500K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	500,001-800K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	800,001-1M	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Above 1M	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Under 1.5K	1398
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	1,501-3K	1505
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	3,001-5K	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	5,001-10K	7179
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	10,001-20K	14431
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	20,001-30K	24041
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	30,001-40K	36667
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	40,001-50K	45159
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	50,001-100K	71078
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	100,001-150K	129622
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	150,001-200K	176389
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	200,001-300K	268616
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	300,001-500K	346154
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	500,001-800K	538462
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	800,001-1M	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Above 1M	\N
district	DC36	2016	Thabazimbi	Under 1.5K	1016
district	DC36	2016	Thabazimbi	1,501-3K	\N
district	DC36	2016	Thabazimbi	3,001-5K	5000
district	DC36	2016	Thabazimbi	5,001-10K	7662
district	DC36	2016	Thabazimbi	10,001-20K	14805
district	DC36	2016	Thabazimbi	20,001-30K	23960
district	DC36	2016	Thabazimbi	30,001-40K	32658
district	DC36	2016	Thabazimbi	40,001-50K	50000
district	DC36	2016	Thabazimbi	50,001-100K	65923
district	DC36	2016	Thabazimbi	100,001-150K	109091
district	DC36	2016	Thabazimbi	150,001-200K	\N
district	DC36	2016	Thabazimbi	200,001-300K	\N
district	DC36	2016	Thabazimbi	300,001-500K	\N
district	DC36	2016	Thabazimbi	500,001-800K	668325
district	DC36	2016	Thabazimbi	800,001-1M	\N
district	DC36	2016	Thabazimbi	Above 1M	\N
district	DC35	2016	Usutu	Under 1.5K	\N
district	DC35	2016	Usutu	1,501-3K	\N
district	DC35	2016	Usutu	3,001-5K	4442
district	DC35	2016	Usutu	5,001-10K	9113
district	DC35	2016	Usutu	10,001-20K	10638
district	DC35	2016	Usutu	20,001-30K	24236
district	DC35	2016	Usutu	30,001-40K	\N
district	DC35	2016	Usutu	40,001-50K	\N
district	DC35	2016	Usutu	50,001-100K	\N
district	DC35	2016	Usutu	100,001-150K	\N
district	DC35	2016	Usutu	150,001-200K	\N
district	DC35	2016	Usutu	200,001-300K	\N
district	DC35	2016	Usutu	300,001-500K	\N
district	DC35	2016	Usutu	500,001-800K	\N
district	DC35	2016	Usutu	800,001-1M	\N
district	DC35	2016	Usutu	Above 1M	\N
district	DC32	2016	Acornhoek Bushbuckridge	Under 1.5K	\N
district	DC32	2016	Acornhoek Bushbuckridge	1,501-3K	\N
district	DC32	2016	Acornhoek Bushbuckridge	3,001-5K	\N
district	DC32	2016	Acornhoek Bushbuckridge	5,001-10K	\N
district	DC32	2016	Acornhoek Bushbuckridge	10,001-20K	\N
district	DC32	2016	Acornhoek Bushbuckridge	20,001-30K	\N
district	DC32	2016	Acornhoek Bushbuckridge	30,001-40K	\N
district	DC32	2016	Acornhoek Bushbuckridge	40,001-50K	\N
district	DC32	2016	Acornhoek Bushbuckridge	50,001-100K	50400
district	DC32	2016	Acornhoek Bushbuckridge	100,001-150K	\N
district	DC32	2016	Acornhoek Bushbuckridge	150,001-200K	\N
district	DC32	2016	Acornhoek Bushbuckridge	200,001-300K	\N
district	DC32	2016	Acornhoek Bushbuckridge	300,001-500K	\N
district	DC32	2016	Acornhoek Bushbuckridge	500,001-800K	\N
district	DC32	2016	Acornhoek Bushbuckridge	800,001-1M	\N
district	DC32	2016	Acornhoek Bushbuckridge	Above 1M	\N
district	DC30	2016	Amsterdam Mkhondo	Under 1.5K	1485
district	DC30	2016	Amsterdam Mkhondo	1,501-3K	\N
district	DC30	2016	Amsterdam Mkhondo	3,001-5K	\N
district	DC30	2016	Amsterdam Mkhondo	5,001-10K	8781
district	DC30	2016	Amsterdam Mkhondo	10,001-20K	14108
district	DC30	2016	Amsterdam Mkhondo	20,001-30K	21279
district	DC30	2016	Amsterdam Mkhondo	30,001-40K	31329
district	DC30	2016	Amsterdam Mkhondo	40,001-50K	46296
district	DC30	2016	Amsterdam Mkhondo	50,001-100K	86364
district	DC30	2016	Amsterdam Mkhondo	100,001-150K	123773
district	DC30	2016	Amsterdam Mkhondo	150,001-200K	177273
district	DC30	2016	Amsterdam Mkhondo	200,001-300K	284800
district	DC30	2016	Amsterdam Mkhondo	300,001-500K	446000
district	DC30	2016	Amsterdam Mkhondo	500,001-800K	\N
district	DC30	2016	Amsterdam Mkhondo	800,001-1M	\N
district	DC30	2016	Amsterdam Mkhondo	Above 1M	\N
district	DC30	2016	Bethal Gonovan Mbeki	Under 1.5K	\N
district	DC30	2016	Bethal Gonovan Mbeki	1,501-3K	2071
district	DC30	2016	Bethal Gonovan Mbeki	3,001-5K	4627
district	DC30	2016	Bethal Gonovan Mbeki	5,001-10K	8395
district	DC30	2016	Bethal Gonovan Mbeki	10,001-20K	13898
district	DC30	2016	Bethal Gonovan Mbeki	20,001-30K	25109
district	DC30	2016	Bethal Gonovan Mbeki	30,001-40K	35274
district	DC30	2016	Bethal Gonovan Mbeki	40,001-50K	44382
district	DC30	2016	Bethal Gonovan Mbeki	50,001-100K	83812
district	DC30	2016	Bethal Gonovan Mbeki	100,001-150K	130983
district	DC30	2016	Bethal Gonovan Mbeki	150,001-200K	\N
district	DC30	2016	Bethal Gonovan Mbeki	200,001-300K	\N
district	DC30	2016	Bethal Gonovan Mbeki	300,001-500K	303339
district	DC30	2016	Bethal Gonovan Mbeki	500,001-800K	\N
district	DC30	2016	Bethal Gonovan Mbeki	800,001-1M	\N
district	DC30	2016	Bethal Gonovan Mbeki	Above 1M	\N
district	DC32	2016	Komatipoort Nkomazi	Under 1.5K	\N
district	DC32	2016	Komatipoort Nkomazi	1,501-3K	2577
district	DC32	2016	Komatipoort Nkomazi	3,001-5K	\N
district	DC32	2016	Komatipoort Nkomazi	5,001-10K	8145
district	DC32	2016	Komatipoort Nkomazi	10,001-20K	17498
district	DC32	2016	Komatipoort Nkomazi	20,001-30K	21196
district	DC32	2016	Komatipoort Nkomazi	30,001-40K	32484
district	DC32	2016	Komatipoort Nkomazi	40,001-50K	\N
district	DC32	2016	Komatipoort Nkomazi	50,001-100K	66751
district	DC32	2016	Komatipoort Nkomazi	100,001-150K	123686
district	DC32	2016	Komatipoort Nkomazi	150,001-200K	160989
district	DC32	2016	Komatipoort Nkomazi	200,001-300K	224352
district	DC32	2016	Komatipoort Nkomazi	300,001-500K	329171
district	DC32	2016	Komatipoort Nkomazi	500,001-800K	\N
district	DC32	2016	Komatipoort Nkomazi	800,001-1M	\N
district	DC32	2016	Komatipoort Nkomazi	Above 1M	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Under 1.5K	2
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	1,501-3K	2410
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	3,001-5K	4233
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	5,001-10K	8628
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	10,001-20K	14709
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	20,001-30K	26285
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	30,001-40K	36526
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	40,001-50K	44534
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	50,001-100K	71096
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	100,001-150K	126772
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	150,001-200K	167862
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	200,001-300K	249606
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	300,001-500K	359924
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	500,001-800K	519545
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	800,001-1M	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Above 1M	\N
district	DC4	2016	George	500,001-800K	\N
district	DC32	2016	Nelspruit Mbombela	Under 1.5K	1200
district	DC32	2016	Nelspruit Mbombela	1,501-3K	2472
district	DC32	2016	Nelspruit Mbombela	3,001-5K	\N
district	DC32	2016	Nelspruit Mbombela	5,001-10K	8207
district	DC32	2016	Nelspruit Mbombela	10,001-20K	14546
district	DC32	2016	Nelspruit Mbombela	20,001-30K	25976
district	DC32	2016	Nelspruit Mbombela	30,001-40K	35060
district	DC32	2016	Nelspruit Mbombela	40,001-50K	45164
district	DC32	2016	Nelspruit Mbombela	50,001-100K	79353
district	DC32	2016	Nelspruit Mbombela	100,001-150K	124705
district	DC32	2016	Nelspruit Mbombela	150,001-200K	179679
district	DC32	2016	Nelspruit Mbombela	200,001-300K	245671
district	DC32	2016	Nelspruit Mbombela	300,001-500K	357132
district	DC32	2016	Nelspruit Mbombela	500,001-800K	526707
district	DC32	2016	Nelspruit Mbombela	800,001-1M	\N
district	DC32	2016	Nelspruit Mbombela	Above 1M	\N
district	DC9	2016	Barkley-Wes Dikgatlong	Under 1.5K	992
district	DC9	2016	Barkley-Wes Dikgatlong	1,501-3K	2601
district	DC9	2016	Barkley-Wes Dikgatlong	3,001-5K	3939
district	DC9	2016	Barkley-Wes Dikgatlong	5,001-10K	6322
district	DC9	2016	Barkley-Wes Dikgatlong	10,001-20K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	20,001-30K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	30,001-40K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	40,001-50K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	50,001-100K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	100,001-150K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	150,001-200K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	200,001-300K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	300,001-500K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	500,001-800K	\N
district	DC9	2016	Barkley-Wes Dikgatlong	800,001-1M	\N
district	DC9	2016	Barkley-Wes Dikgatlong	Above 1M	\N
district	DC7	2016	Britstown	Under 1.5K	942
district	DC7	2016	Britstown	1,501-3K	1934
district	DC7	2016	Britstown	3,001-5K	4101
district	DC7	2016	Britstown	5,001-10K	\N
district	DC7	2016	Britstown	10,001-20K	\N
district	DC7	2016	Britstown	20,001-30K	\N
district	DC7	2016	Britstown	30,001-40K	\N
district	DC7	2016	Britstown	40,001-50K	\N
district	DC7	2016	Britstown	50,001-100K	\N
district	DC7	2016	Britstown	100,001-150K	\N
district	DC7	2016	Britstown	150,001-200K	\N
district	DC7	2016	Britstown	200,001-300K	\N
district	DC7	2016	Britstown	300,001-500K	\N
district	DC7	2016	Britstown	500,001-800K	\N
district	DC7	2016	Britstown	800,001-1M	\N
district	DC7	2016	Britstown	Above 1M	\N
district	DC6	2016	Calvinia Hantam	Under 1.5K	863
district	DC6	2016	Calvinia Hantam	1,501-3K	2312
district	DC6	2016	Calvinia Hantam	3,001-5K	\N
district	DC6	2016	Calvinia Hantam	5,001-10K	\N
district	DC6	2016	Calvinia Hantam	10,001-20K	\N
district	DC6	2016	Calvinia Hantam	20,001-30K	\N
district	DC6	2016	Calvinia Hantam	30,001-40K	\N
district	DC6	2016	Calvinia Hantam	40,001-50K	\N
district	DC6	2016	Calvinia Hantam	50,001-100K	\N
district	DC6	2016	Calvinia Hantam	100,001-150K	\N
district	DC6	2016	Calvinia Hantam	150,001-200K	\N
district	DC6	2016	Calvinia Hantam	200,001-300K	\N
district	DC6	2016	Calvinia Hantam	300,001-500K	\N
district	DC6	2016	Calvinia Hantam	500,001-800K	\N
district	DC6	2016	Calvinia Hantam	800,001-1M	\N
district	DC6	2016	Calvinia Hantam	Above 1M	\N
district	DC7	2016	Carnavon Kareeberg	Under 1.5K	133
district	DC7	2016	Carnavon Kareeberg	1,501-3K	2313
district	DC7	2016	Carnavon Kareeberg	3,001-5K	\N
district	DC7	2016	Carnavon Kareeberg	5,001-10K	\N
district	DC7	2016	Carnavon Kareeberg	10,001-20K	\N
district	DC7	2016	Carnavon Kareeberg	20,001-30K	\N
district	DC7	2016	Carnavon Kareeberg	30,001-40K	\N
district	DC7	2016	Carnavon Kareeberg	40,001-50K	\N
district	DC7	2016	Carnavon Kareeberg	50,001-100K	\N
district	DC7	2016	Carnavon Kareeberg	100,001-150K	\N
district	DC7	2016	Carnavon Kareeberg	150,001-200K	\N
district	DC7	2016	Carnavon Kareeberg	200,001-300K	\N
district	DC7	2016	Carnavon Kareeberg	300,001-500K	\N
district	DC7	2016	Carnavon Kareeberg	500,001-800K	\N
district	DC7	2016	Carnavon Kareeberg	800,001-1M	\N
district	DC7	2016	Carnavon Kareeberg	Above 1M	\N
district	DC7	2016	Colesberg Umsombomvu	Under 1.5K	835
district	DC7	2016	Colesberg Umsombomvu	1,501-3K	2367
district	DC7	2016	Colesberg Umsombomvu	3,001-5K	\N
district	DC7	2016	Colesberg Umsombomvu	5,001-10K	5115
district	DC7	2016	Colesberg Umsombomvu	10,001-20K	\N
district	DC7	2016	Colesberg Umsombomvu	20,001-30K	\N
district	DC7	2016	Colesberg Umsombomvu	30,001-40K	\N
district	DC7	2016	Colesberg Umsombomvu	40,001-50K	\N
district	DC7	2016	Colesberg Umsombomvu	50,001-100K	\N
district	DC7	2016	Colesberg Umsombomvu	100,001-150K	\N
district	DC7	2016	Colesberg Umsombomvu	150,001-200K	\N
district	DC7	2016	Colesberg Umsombomvu	200,001-300K	\N
district	DC7	2016	Colesberg Umsombomvu	300,001-500K	\N
district	DC7	2016	Colesberg Umsombomvu	500,001-800K	\N
district	DC7	2016	Colesberg Umsombomvu	800,001-1M	\N
district	DC7	2016	Colesberg Umsombomvu	Above 1M	\N
district	DC7	2016	Douglas Siyancuma	Under 1.5K	\N
district	DC7	2016	Douglas Siyancuma	1,501-3K	\N
district	DC7	2016	Douglas Siyancuma	3,001-5K	4243
district	DC7	2016	Douglas Siyancuma	5,001-10K	\N
district	DC7	2016	Douglas Siyancuma	10,001-20K	\N
district	DC7	2016	Douglas Siyancuma	20,001-30K	\N
district	DC7	2016	Douglas Siyancuma	30,001-40K	\N
district	DC7	2016	Douglas Siyancuma	40,001-50K	\N
district	DC7	2016	Douglas Siyancuma	50,001-100K	\N
district	DC7	2016	Douglas Siyancuma	100,001-150K	120000
district	DC7	2016	Douglas Siyancuma	150,001-200K	170535
district	DC7	2016	Douglas Siyancuma	200,001-300K	256410
district	DC7	2016	Douglas Siyancuma	300,001-500K	\N
district	DC7	2016	Douglas Siyancuma	500,001-800K	\N
district	DC7	2016	Douglas Siyancuma	800,001-1M	\N
district	DC7	2016	Douglas Siyancuma	Above 1M	\N
district	DC6	2016	Fraserburg Karoo Hoogland	Under 1.5K	1020
district	DC6	2016	Fraserburg Karoo Hoogland	1,501-3K	2089
district	DC6	2016	Fraserburg Karoo Hoogland	3,001-5K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	5,001-10K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	10,001-20K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	20,001-30K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	30,001-40K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	40,001-50K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	50,001-100K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	100,001-150K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	150,001-200K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	200,001-300K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	300,001-500K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	500,001-800K	\N
district	DC6	2016	Fraserburg Karoo Hoogland	800,001-1M	\N
district	DC6	2016	Fraserburg Karoo Hoogland	Above 1M	\N
district	DC6	2016	Gordonia	Under 1.5K	598
district	DC6	2016	Gordonia	1,501-3K	2282
district	DC6	2016	Gordonia	3,001-5K	3452
district	DC6	2016	Gordonia	5,001-10K	5014
district	DC6	2016	Gordonia	10,001-20K	10409
district	DC6	2016	Gordonia	20,001-30K	\N
district	DC6	2016	Gordonia	30,001-40K	\N
district	DC6	2016	Gordonia	40,001-50K	\N
district	DC6	2016	Gordonia	50,001-100K	85714
district	DC6	2016	Gordonia	100,001-150K	113636
district	DC6	2016	Gordonia	150,001-200K	156250
district	DC6	2016	Gordonia	200,001-300K	\N
district	DC6	2016	Gordonia	300,001-500K	\N
district	DC6	2016	Gordonia	500,001-800K	\N
district	DC6	2016	Gordonia	800,001-1M	\N
district	DC6	2016	Gordonia	Above 1M	\N
district	DC7	2016	Hanover Emthanjeni	Under 1.5K	\N
district	DC7	2016	Hanover Emthanjeni	1,501-3K	2629
district	DC7	2016	Hanover Emthanjeni	3,001-5K	3991
district	DC7	2016	Hanover Emthanjeni	5,001-10K	5937
district	DC7	2016	Hanover Emthanjeni	10,001-20K	\N
district	DC7	2016	Hanover Emthanjeni	20,001-30K	\N
district	DC7	2016	Hanover Emthanjeni	30,001-40K	\N
district	DC7	2016	Hanover Emthanjeni	40,001-50K	\N
district	DC7	2016	Hanover Emthanjeni	50,001-100K	\N
district	DC7	2016	Hanover Emthanjeni	100,001-150K	\N
district	DC7	2016	Hanover Emthanjeni	150,001-200K	\N
district	DC7	2016	Hanover Emthanjeni	200,001-300K	\N
district	DC7	2016	Hanover Emthanjeni	300,001-500K	\N
district	DC7	2016	Hanover Emthanjeni	500,001-800K	\N
district	DC7	2016	Hanover Emthanjeni	800,001-1M	\N
district	DC7	2016	Hanover Emthanjeni	Above 1M	\N
district	DC7	2016	Hopetown Thembelihle	Under 1.5K	\N
district	DC7	2016	Hopetown Thembelihle	1,501-3K	2607
district	DC7	2016	Hopetown Thembelihle	3,001-5K	\N
district	DC7	2016	Hopetown Thembelihle	5,001-10K	9165
district	DC7	2016	Hopetown Thembelihle	10,001-20K	\N
district	DC7	2016	Hopetown Thembelihle	20,001-30K	21413
district	DC7	2016	Hopetown Thembelihle	30,001-40K	\N
district	DC7	2016	Hopetown Thembelihle	40,001-50K	\N
district	DC7	2016	Hopetown Thembelihle	50,001-100K	\N
district	DC7	2016	Hopetown Thembelihle	100,001-150K	103546
district	DC7	2016	Hopetown Thembelihle	150,001-200K	186743
district	DC7	2016	Hopetown Thembelihle	200,001-300K	260288
district	DC7	2016	Hopetown Thembelihle	300,001-500K	\N
district	DC7	2016	Hopetown Thembelihle	500,001-800K	\N
district	DC7	2016	Hopetown Thembelihle	800,001-1M	\N
district	DC7	2016	Hopetown Thembelihle	Above 1M	\N
district	DC8	2016	Kenhardt Kai !Garib	Under 1.5K	766
district	DC8	2016	Kenhardt Kai !Garib	1,501-3K	1757
district	DC8	2016	Kenhardt Kai !Garib	3,001-5K	\N
district	DC8	2016	Kenhardt Kai !Garib	5,001-10K	9002
district	DC8	2016	Kenhardt Kai !Garib	10,001-20K	19205
district	DC8	2016	Kenhardt Kai !Garib	20,001-30K	30000
district	DC8	2016	Kenhardt Kai !Garib	30,001-40K	\N
district	DC8	2016	Kenhardt Kai !Garib	40,001-50K	\N
district	DC8	2016	Kenhardt Kai !Garib	50,001-100K	95833
district	DC8	2016	Kenhardt Kai !Garib	100,001-150K	102963
district	DC8	2016	Kenhardt Kai !Garib	150,001-200K	\N
district	DC8	2016	Kenhardt Kai !Garib	200,001-300K	245187
district	DC8	2016	Kenhardt Kai !Garib	300,001-500K	325000
district	DC8	2016	Kenhardt Kai !Garib	500,001-800K	\N
district	DC8	2016	Kenhardt Kai !Garib	800,001-1M	\N
district	DC8	2016	Kenhardt Kai !Garib	Above 1M	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Under 1.5K	1450
district	DC9	2016	Kimberley / HAY Frances Baard	1,501-3K	2556
district	DC9	2016	Kimberley / HAY Frances Baard	3,001-5K	3876
district	DC9	2016	Kimberley / HAY Frances Baard	5,001-10K	8315
district	DC9	2016	Kimberley / HAY Frances Baard	10,001-20K	13302
district	DC9	2016	Kimberley / HAY Frances Baard	20,001-30K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	30,001-40K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	40,001-50K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	50,001-100K	62155
district	DC9	2016	Kimberley / HAY Frances Baard	100,001-150K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	150,001-200K	163971
district	DC9	2016	Kimberley / HAY Frances Baard	200,001-300K	290698
district	DC9	2016	Kimberley / HAY Frances Baard	300,001-500K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	500,001-800K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	800,001-1M	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Above 1M	1086957
district	DC45	2016	Kuruman Ga-Segonyana	Under 1.5K	621
district	DC45	2016	Kuruman Ga-Segonyana	1,501-3K	2198
district	DC45	2016	Kuruman Ga-Segonyana	3,001-5K	4044
district	DC45	2016	Kuruman Ga-Segonyana	5,001-10K	6327
district	DC45	2016	Kuruman Ga-Segonyana	10,001-20K	10534
district	DC45	2016	Kuruman Ga-Segonyana	20,001-30K	\N
district	DC45	2016	Kuruman Ga-Segonyana	30,001-40K	\N
district	DC45	2016	Kuruman Ga-Segonyana	40,001-50K	\N
district	DC45	2016	Kuruman Ga-Segonyana	50,001-100K	54000
district	DC45	2016	Kuruman Ga-Segonyana	100,001-150K	\N
district	DC45	2016	Kuruman Ga-Segonyana	150,001-200K	\N
district	DC45	2016	Kuruman Ga-Segonyana	200,001-300K	266667
district	DC45	2016	Kuruman Ga-Segonyana	300,001-500K	\N
district	DC45	2016	Kuruman Ga-Segonyana	500,001-800K	\N
district	DC45	2016	Kuruman Ga-Segonyana	800,001-1M	\N
district	DC45	2016	Kuruman Ga-Segonyana	Above 1M	\N
district	DC6	2016	Namakwa	Under 1.5K	497
district	DC6	2016	Namakwa	1,501-3K	2076
district	DC6	2016	Namakwa	3,001-5K	3540
district	DC6	2016	Namakwa	5,001-10K	\N
district	DC6	2016	Namakwa	10,001-20K	18421
district	DC6	2016	Namakwa	20,001-30K	28205
district	DC6	2016	Namakwa	30,001-40K	\N
district	DC6	2016	Namakwa	40,001-50K	\N
district	DC6	2016	Namakwa	50,001-100K	54167
district	DC6	2016	Namakwa	100,001-150K	\N
district	DC6	2016	Namakwa	150,001-200K	\N
district	DC6	2016	Namakwa	200,001-300K	\N
district	DC6	2016	Namakwa	300,001-500K	\N
district	DC6	2016	Namakwa	500,001-800K	\N
district	DC6	2016	Namakwa	800,001-1M	\N
district	DC6	2016	Namakwa	Above 1M	\N
district	DC7	2016	Phillipstown Renosterberg	Under 1.5K	648
district	DC7	2016	Phillipstown Renosterberg	1,501-3K	2477
district	DC7	2016	Phillipstown Renosterberg	3,001-5K	\N
district	DC7	2016	Phillipstown Renosterberg	5,001-10K	\N
district	DC7	2016	Phillipstown Renosterberg	10,001-20K	11127
district	DC7	2016	Phillipstown Renosterberg	20,001-30K	\N
district	DC7	2016	Phillipstown Renosterberg	30,001-40K	\N
district	DC7	2016	Phillipstown Renosterberg	40,001-50K	\N
district	DC7	2016	Phillipstown Renosterberg	50,001-100K	\N
district	DC7	2016	Phillipstown Renosterberg	100,001-150K	\N
district	DC7	2016	Phillipstown Renosterberg	150,001-200K	\N
district	DC7	2016	Phillipstown Renosterberg	200,001-300K	\N
district	DC7	2016	Phillipstown Renosterberg	300,001-500K	\N
district	DC7	2016	Phillipstown Renosterberg	500,001-800K	\N
district	DC7	2016	Phillipstown Renosterberg	800,001-1M	\N
district	DC7	2016	Phillipstown Renosterberg	Above 1M	\N
district	DC7	2016	Prieska Siyathemba	Under 1.5K	1000
district	DC7	2016	Prieska Siyathemba	1,501-3K	1838
district	DC7	2016	Prieska Siyathemba	3,001-5K	\N
district	DC7	2016	Prieska Siyathemba	5,001-10K	\N
district	DC7	2016	Prieska Siyathemba	10,001-20K	\N
district	DC7	2016	Prieska Siyathemba	20,001-30K	\N
district	DC7	2016	Prieska Siyathemba	30,001-40K	\N
district	DC7	2016	Prieska Siyathemba	40,001-50K	\N
district	DC7	2016	Prieska Siyathemba	50,001-100K	\N
district	DC7	2016	Prieska Siyathemba	100,001-150K	\N
district	DC7	2016	Prieska Siyathemba	150,001-200K	\N
district	DC7	2016	Prieska Siyathemba	200,001-300K	\N
district	DC7	2016	Prieska Siyathemba	300,001-500K	\N
district	DC7	2016	Prieska Siyathemba	500,001-800K	\N
district	DC7	2016	Prieska Siyathemba	800,001-1M	\N
district	DC7	2016	Prieska Siyathemba	Above 1M	\N
district	DC7	2016	Richmond	Under 1.5K	\N
district	DC7	2016	Richmond	1,501-3K	\N
district	DC7	2016	Richmond	3,001-5K	3182
district	DC7	2016	Richmond	5,001-10K	\N
district	DC7	2016	Richmond	10,001-20K	\N
district	DC7	2016	Richmond	20,001-30K	\N
district	DC7	2016	Richmond	30,001-40K	\N
district	DC7	2016	Richmond	40,001-50K	\N
district	DC7	2016	Richmond	50,001-100K	\N
district	DC7	2016	Richmond	100,001-150K	\N
district	DC7	2016	Richmond	150,001-200K	\N
district	DC7	2016	Richmond	200,001-300K	\N
district	DC7	2016	Richmond	300,001-500K	\N
district	DC7	2016	Richmond	500,001-800K	\N
district	DC7	2016	Richmond	800,001-1M	\N
district	DC7	2016	Richmond	Above 1M	\N
district	DC6	2016	Sutherland	Under 1.5K	1118
district	DC6	2016	Sutherland	1,501-3K	2535
district	DC6	2016	Sutherland	3,001-5K	\N
district	DC6	2016	Sutherland	5,001-10K	\N
district	DC6	2016	Sutherland	10,001-20K	\N
district	DC6	2016	Sutherland	20,001-30K	\N
district	DC6	2016	Sutherland	30,001-40K	\N
district	DC6	2016	Sutherland	40,001-50K	\N
district	DC6	2016	Sutherland	50,001-100K	\N
district	DC6	2016	Sutherland	100,001-150K	\N
district	DC6	2016	Sutherland	150,001-200K	\N
district	DC6	2016	Sutherland	200,001-300K	\N
district	DC6	2016	Sutherland	300,001-500K	\N
district	DC6	2016	Sutherland	500,001-800K	\N
district	DC6	2016	Sutherland	800,001-1M	\N
district	DC6	2016	Sutherland	Above 1M	\N
district	DC9	2016	Vaalharts Phokwane	Under 1.5K	\N
district	DC9	2016	Vaalharts Phokwane	1,501-3K	\N
district	DC9	2016	Vaalharts Phokwane	3,001-5K	\N
district	DC9	2016	Vaalharts Phokwane	5,001-10K	\N
district	DC9	2016	Vaalharts Phokwane	10,001-20K	\N
district	DC9	2016	Vaalharts Phokwane	20,001-30K	\N
district	DC9	2016	Vaalharts Phokwane	30,001-40K	\N
district	DC9	2016	Vaalharts Phokwane	40,001-50K	\N
district	DC9	2016	Vaalharts Phokwane	50,001-100K	63093
district	DC9	2016	Vaalharts Phokwane	100,001-150K	116372
district	DC9	2016	Vaalharts Phokwane	150,001-200K	192308
district	DC9	2016	Vaalharts Phokwane	200,001-300K	245068
district	DC9	2016	Vaalharts Phokwane	300,001-500K	331411
district	DC9	2016	Vaalharts Phokwane	500,001-800K	591567
district	DC9	2016	Vaalharts Phokwane	800,001-1M	939394
district	DC9	2016	Vaalharts Phokwane	Above 1M	\N
district	DC7	2016	Victoria-Wes Umbuntu	Under 1.5K	\N
district	DC7	2016	Victoria-Wes Umbuntu	1,501-3K	2386
district	DC7	2016	Victoria-Wes Umbuntu	3,001-5K	\N
district	DC7	2016	Victoria-Wes Umbuntu	5,001-10K	6288
district	DC7	2016	Victoria-Wes Umbuntu	10,001-20K	\N
district	DC7	2016	Victoria-Wes Umbuntu	20,001-30K	\N
district	DC7	2016	Victoria-Wes Umbuntu	30,001-40K	\N
district	DC7	2016	Victoria-Wes Umbuntu	40,001-50K	\N
district	DC7	2016	Victoria-Wes Umbuntu	50,001-100K	\N
district	DC7	2016	Victoria-Wes Umbuntu	100,001-150K	\N
district	DC7	2016	Victoria-Wes Umbuntu	150,001-200K	\N
district	DC7	2016	Victoria-Wes Umbuntu	200,001-300K	\N
district	DC7	2016	Victoria-Wes Umbuntu	300,001-500K	\N
district	DC7	2016	Victoria-Wes Umbuntu	500,001-800K	\N
district	DC7	2016	Victoria-Wes Umbuntu	800,001-1M	\N
district	DC7	2016	Victoria-Wes Umbuntu	Above 1M	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	Under 1.5K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	1,501-3K	2161
district	DC39	2016	Bloemhof Lekwa-Tecma	3,001-5K	4088
district	DC39	2016	Bloemhof Lekwa-Tecma	5,001-10K	7045
district	DC39	2016	Bloemhof Lekwa-Tecma	10,001-20K	12426
district	DC39	2016	Bloemhof Lekwa-Tecma	20,001-30K	26355
district	DC39	2016	Bloemhof Lekwa-Tecma	30,001-40K	37043
district	DC39	2016	Bloemhof Lekwa-Tecma	40,001-50K	44559
district	DC39	2016	Bloemhof Lekwa-Tecma	50,001-100K	90517
district	DC39	2016	Bloemhof Lekwa-Tecma	100,001-150K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	150,001-200K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	200,001-300K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	300,001-500K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	500,001-800K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	800,001-1M	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	Above 1M	\N
district	DC39	2016	Bray Kagisano-Molopo	Under 1.5K	\N
district	DC39	2016	Bray Kagisano-Molopo	1,501-3K	\N
district	DC39	2016	Bray Kagisano-Molopo	3,001-5K	4269
district	DC39	2016	Bray Kagisano-Molopo	5,001-10K	6301
district	DC39	2016	Bray Kagisano-Molopo	10,001-20K	\N
district	DC39	2016	Bray Kagisano-Molopo	20,001-30K	\N
district	DC39	2016	Bray Kagisano-Molopo	30,001-40K	\N
district	DC39	2016	Bray Kagisano-Molopo	40,001-50K	\N
district	DC39	2016	Bray Kagisano-Molopo	50,001-100K	\N
district	DC39	2016	Bray Kagisano-Molopo	100,001-150K	\N
district	DC39	2016	Bray Kagisano-Molopo	150,001-200K	\N
district	DC39	2016	Bray Kagisano-Molopo	200,001-300K	\N
district	DC39	2016	Bray Kagisano-Molopo	300,001-500K	\N
district	DC39	2016	Bray Kagisano-Molopo	500,001-800K	\N
district	DC39	2016	Bray Kagisano-Molopo	800,001-1M	\N
district	DC39	2016	Bray Kagisano-Molopo	Above 1M	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	Under 1.5K	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	1,501-3K	1805
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	3,001-5K	4263
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	5,001-10K	7522
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	10,001-20K	13999
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	20,001-30K	23602
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	30,001-40K	34958
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	40,001-50K	45769
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	50,001-100K	61381
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	100,001-150K	101111
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	150,001-200K	165761
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	200,001-300K	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	300,001-500K	400000
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	500,001-800K	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	800,001-1M	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	Above 1M	\N
district	DC38	2016	Delareyville Tswaing	Under 1.5K	\N
district	DC38	2016	Delareyville Tswaing	1,501-3K	2200
district	DC38	2016	Delareyville Tswaing	3,001-5K	4340
district	DC38	2016	Delareyville Tswaing	5,001-10K	8333
district	DC38	2016	Delareyville Tswaing	10,001-20K	12535
district	DC38	2016	Delareyville Tswaing	20,001-30K	23269
district	DC38	2016	Delareyville Tswaing	30,001-40K	37229
district	DC38	2016	Delareyville Tswaing	40,001-50K	\N
district	DC38	2016	Delareyville Tswaing	50,001-100K	\N
district	DC38	2016	Delareyville Tswaing	100,001-150K	\N
district	DC38	2016	Delareyville Tswaing	150,001-200K	\N
district	DC38	2016	Delareyville Tswaing	200,001-300K	\N
district	DC38	2016	Delareyville Tswaing	300,001-500K	\N
district	DC38	2016	Delareyville Tswaing	500,001-800K	\N
district	DC38	2016	Delareyville Tswaing	800,001-1M	\N
district	DC38	2016	Delareyville Tswaing	Above 1M	\N
district	DC38	2016	Derdepoort	Under 1.5K	\N
district	DC38	2016	Derdepoort	1,501-3K	\N
district	DC38	2016	Derdepoort	3,001-5K	\N
district	DC38	2016	Derdepoort	5,001-10K	7946
district	DC38	2016	Derdepoort	10,001-20K	12550
district	DC38	2016	Derdepoort	20,001-30K	\N
district	DC38	2016	Derdepoort	30,001-40K	\N
district	DC38	2016	Derdepoort	40,001-50K	\N
district	DC38	2016	Derdepoort	50,001-100K	89286
district	DC38	2016	Derdepoort	100,001-150K	\N
district	DC38	2016	Derdepoort	150,001-200K	\N
district	DC38	2016	Derdepoort	200,001-300K	\N
district	DC38	2016	Derdepoort	300,001-500K	\N
district	DC38	2016	Derdepoort	500,001-800K	\N
district	DC38	2016	Derdepoort	800,001-1M	\N
district	DC38	2016	Derdepoort	Above 1M	\N
municipality	DC40	2016	Ewbank	Under 1.5K	\N
municipality	DC40	2016	Ewbank	1,501-3K	\N
municipality	DC40	2016	Ewbank	3,001-5K	4500
municipality	DC40	2016	Ewbank	5,001-10K	\N
municipality	DC40	2016	Ewbank	10,001-20K	\N
municipality	DC40	2016	Ewbank	20,001-30K	\N
municipality	DC40	2016	Ewbank	30,001-40K	\N
municipality	DC40	2016	Ewbank	40,001-50K	\N
municipality	DC40	2016	Ewbank	50,001-100K	\N
municipality	DC40	2016	Ewbank	100,001-150K	\N
municipality	DC40	2016	Ewbank	150,001-200K	\N
municipality	DC40	2016	Ewbank	200,001-300K	\N
municipality	DC40	2016	Ewbank	300,001-500K	\N
municipality	DC40	2016	Ewbank	500,001-800K	\N
municipality	DC40	2016	Ewbank	800,001-1M	\N
municipality	DC40	2016	Ewbank	Above 1M	\N
district	DC38	2016	Mahikeng	Under 1.5K	20
district	DC38	2016	Mahikeng	1,501-3K	2921
district	DC38	2016	Mahikeng	3,001-5K	3277
district	DC38	2016	Mahikeng	5,001-10K	6748
district	DC38	2016	Mahikeng	10,001-20K	13694
district	DC38	2016	Mahikeng	20,001-30K	\N
district	DC38	2016	Mahikeng	30,001-40K	36111
district	DC38	2016	Mahikeng	40,001-50K	40909
district	DC38	2016	Mahikeng	50,001-100K	76471
district	DC38	2016	Mahikeng	100,001-150K	\N
district	DC38	2016	Mahikeng	150,001-200K	\N
district	DC38	2016	Mahikeng	200,001-300K	\N
district	DC38	2016	Mahikeng	300,001-500K	\N
district	DC38	2016	Mahikeng	500,001-800K	\N
district	DC38	2016	Mahikeng	800,001-1M	\N
district	DC38	2016	Mahikeng	Above 1M	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	Under 1.5K	978
district	DC37	2016	Marikana (Rustenburg) Bonjala	1,501-3K	2569
district	DC37	2016	Marikana (Rustenburg) Bonjala	3,001-5K	3755
district	DC37	2016	Marikana (Rustenburg) Bonjala	5,001-10K	8179
district	DC37	2016	Marikana (Rustenburg) Bonjala	10,001-20K	16290
district	DC37	2016	Marikana (Rustenburg) Bonjala	20,001-30K	24583
district	DC37	2016	Marikana (Rustenburg) Bonjala	30,001-40K	34483
district	DC37	2016	Marikana (Rustenburg) Bonjala	40,001-50K	45404
district	DC37	2016	Marikana (Rustenburg) Bonjala	50,001-100K	69359
district	DC37	2016	Marikana (Rustenburg) Bonjala	100,001-150K	125148
district	DC37	2016	Marikana (Rustenburg) Bonjala	150,001-200K	171567
district	DC37	2016	Marikana (Rustenburg) Bonjala	200,001-300K	255788
district	DC37	2016	Marikana (Rustenburg) Bonjala	300,001-500K	392406
district	DC37	2016	Marikana (Rustenburg) Bonjala	500,001-800K	583092
district	DC37	2016	Marikana (Rustenburg) Bonjala	800,001-1M	929803
district	DC37	2016	Marikana (Rustenburg) Bonjala	Above 1M	\N
district	DC39	2016	Moloporivier Bophirima	Under 1.5K	\N
district	DC39	2016	Moloporivier Bophirima	1,501-3K	\N
district	DC39	2016	Moloporivier Bophirima	3,001-5K	\N
district	DC39	2016	Moloporivier Bophirima	5,001-10K	5287
district	DC39	2016	Moloporivier Bophirima	10,001-20K	14321
district	DC39	2016	Moloporivier Bophirima	20,001-30K	\N
district	DC39	2016	Moloporivier Bophirima	30,001-40K	\N
district	DC39	2016	Moloporivier Bophirima	40,001-50K	\N
district	DC39	2016	Moloporivier Bophirima	50,001-100K	\N
district	DC39	2016	Moloporivier Bophirima	100,001-150K	\N
district	DC39	2016	Moloporivier Bophirima	150,001-200K	\N
district	DC39	2016	Moloporivier Bophirima	200,001-300K	\N
district	DC39	2016	Moloporivier Bophirima	300,001-500K	\N
district	DC39	2016	Moloporivier Bophirima	500,001-800K	\N
district	DC39	2016	Moloporivier Bophirima	800,001-1M	\N
district	DC39	2016	Moloporivier Bophirima	Above 1M	\N
district	DC39	2016	Reivilo Thaung	Under 1.5K	\N
district	DC39	2016	Reivilo Thaung	1,501-3K	\N
district	DC39	2016	Reivilo Thaung	3,001-5K	4169
district	DC39	2016	Reivilo Thaung	5,001-10K	6268
district	DC39	2016	Reivilo Thaung	10,001-20K	11407
district	DC39	2016	Reivilo Thaung	20,001-30K	27483
district	DC39	2016	Reivilo Thaung	30,001-40K	\N
district	DC39	2016	Reivilo Thaung	40,001-50K	\N
district	DC39	2016	Reivilo Thaung	50,001-100K	\N
district	DC39	2016	Reivilo Thaung	100,001-150K	147368
district	DC39	2016	Reivilo Thaung	150,001-200K	\N
district	DC39	2016	Reivilo Thaung	200,001-300K	\N
district	DC39	2016	Reivilo Thaung	300,001-500K	\N
district	DC39	2016	Reivilo Thaung	500,001-800K	678788
district	DC39	2016	Reivilo Thaung	800,001-1M	\N
district	DC39	2016	Reivilo Thaung	Above 1M	\N
municipality	DC40	2016	Vostershoop	Under 1.5K	\N
municipality	DC40	2016	Vostershoop	1,501-3K	\N
municipality	DC40	2016	Vostershoop	3,001-5K	\N
municipality	DC40	2016	Vostershoop	5,001-10K	\N
municipality	DC40	2016	Vostershoop	10,001-20K	15666
municipality	DC40	2016	Vostershoop	20,001-30K	\N
municipality	DC40	2016	Vostershoop	30,001-40K	\N
municipality	DC40	2016	Vostershoop	40,001-50K	\N
municipality	DC40	2016	Vostershoop	50,001-100K	\N
municipality	DC40	2016	Vostershoop	100,001-150K	\N
municipality	DC40	2016	Vostershoop	150,001-200K	\N
municipality	DC40	2016	Vostershoop	200,001-300K	\N
municipality	DC40	2016	Vostershoop	300,001-500K	\N
municipality	DC40	2016	Vostershoop	500,001-800K	\N
municipality	DC40	2016	Vostershoop	800,001-1M	\N
municipality	DC40	2016	Vostershoop	Above 1M	\N
district	DC39	2016	Vryburg Naledi	Under 1.5K	\N
district	DC39	2016	Vryburg Naledi	1,501-3K	2156
district	DC39	2016	Vryburg Naledi	3,001-5K	4539
district	DC39	2016	Vryburg Naledi	5,001-10K	7200
district	DC39	2016	Vryburg Naledi	10,001-20K	14893
district	DC39	2016	Vryburg Naledi	20,001-30K	25805
district	DC39	2016	Vryburg Naledi	30,001-40K	38095
district	DC39	2016	Vryburg Naledi	40,001-50K	\N
district	DC39	2016	Vryburg Naledi	50,001-100K	\N
district	DC39	2016	Vryburg Naledi	100,001-150K	112500
district	DC39	2016	Vryburg Naledi	150,001-200K	\N
district	DC39	2016	Vryburg Naledi	200,001-300K	\N
district	DC39	2016	Vryburg Naledi	300,001-500K	\N
district	DC39	2016	Vryburg Naledi	500,001-800K	\N
district	DC39	2016	Vryburg Naledi	800,001-1M	\N
district	DC39	2016	Vryburg Naledi	Above 1M	\N
district	DC40	2016	Wolmaransstad Maquassi	Under 1.5K	\N
district	DC40	2016	Wolmaransstad Maquassi	1,501-3K	\N
district	DC40	2016	Wolmaransstad Maquassi	3,001-5K	4552
district	DC40	2016	Wolmaransstad Maquassi	5,001-10K	7978
district	DC40	2016	Wolmaransstad Maquassi	10,001-20K	15825
district	DC40	2016	Wolmaransstad Maquassi	20,001-30K	25753
district	DC40	2016	Wolmaransstad Maquassi	30,001-40K	30270
district	DC40	2016	Wolmaransstad Maquassi	40,001-50K	42647
district	DC40	2016	Wolmaransstad Maquassi	50,001-100K	\N
district	DC40	2016	Wolmaransstad Maquassi	100,001-150K	\N
district	DC40	2016	Wolmaransstad Maquassi	150,001-200K	\N
district	DC40	2016	Wolmaransstad Maquassi	200,001-300K	\N
district	DC40	2016	Wolmaransstad Maquassi	300,001-500K	\N
district	DC40	2016	Wolmaransstad Maquassi	500,001-800K	\N
district	DC40	2016	Wolmaransstad Maquassi	800,001-1M	\N
district	DC40	2016	Wolmaransstad Maquassi	Above 1M	\N
district	DC38	2016	Zeerust Ramotshere	Under 1.5K	296
district	DC38	2016	Zeerust Ramotshere	1,501-3K	2360
district	DC38	2016	Zeerust Ramotshere	3,001-5K	4164
district	DC38	2016	Zeerust Ramotshere	5,001-10K	7621
district	DC38	2016	Zeerust Ramotshere	10,001-20K	14913
district	DC38	2016	Zeerust Ramotshere	20,001-30K	24085
district	DC38	2016	Zeerust Ramotshere	30,001-40K	36010
district	DC38	2016	Zeerust Ramotshere	40,001-50K	\N
district	DC38	2016	Zeerust Ramotshere	50,001-100K	64116
district	DC38	2016	Zeerust Ramotshere	100,001-150K	115507
district	DC38	2016	Zeerust Ramotshere	150,001-200K	\N
district	DC38	2016	Zeerust Ramotshere	200,001-300K	\N
district	DC38	2016	Zeerust Ramotshere	300,001-500K	\N
district	DC38	2016	Zeerust Ramotshere	500,001-800K	\N
district	DC38	2016	Zeerust Ramotshere	800,001-1M	\N
district	DC38	2016	Zeerust Ramotshere	Above 1M	\N
district	DC4	2016	Albertinia HesseQua	Under 1.5K	\N
district	DC4	2016	Albertinia HesseQua	1,501-3K	3001
district	DC4	2016	Albertinia HesseQua	3,001-5K	3772
district	DC4	2016	Albertinia HesseQua	5,001-10K	6848
district	DC4	2016	Albertinia HesseQua	10,001-20K	\N
district	DC4	2016	Albertinia HesseQua	20,001-30K	\N
district	DC4	2016	Albertinia HesseQua	30,001-40K	\N
district	DC4	2016	Albertinia HesseQua	40,001-50K	\N
district	DC4	2016	Albertinia HesseQua	50,001-100K	\N
district	DC4	2016	Albertinia HesseQua	100,001-150K	\N
district	DC4	2016	Albertinia HesseQua	150,001-200K	\N
district	DC4	2016	Albertinia HesseQua	200,001-300K	\N
district	DC4	2016	Albertinia HesseQua	300,001-500K	\N
district	DC4	2016	Albertinia HesseQua	500,001-800K	\N
district	DC4	2016	Albertinia HesseQua	800,001-1M	\N
district	DC4	2016	Albertinia HesseQua	Above 1M	\N
district	DC5	2016	Beaufort-Wes	Under 1.5K	1172
district	DC5	2016	Beaufort-Wes	1,501-3K	2169
district	DC5	2016	Beaufort-Wes	3,001-5K	3105
district	DC5	2016	Beaufort-Wes	5,001-10K	9015
district	DC5	2016	Beaufort-Wes	10,001-20K	14221
district	DC5	2016	Beaufort-Wes	20,001-30K	\N
district	DC5	2016	Beaufort-Wes	30,001-40K	\N
district	DC5	2016	Beaufort-Wes	40,001-50K	\N
district	DC5	2016	Beaufort-Wes	50,001-100K	\N
district	DC5	2016	Beaufort-Wes	100,001-150K	\N
district	DC5	2016	Beaufort-Wes	150,001-200K	\N
district	DC5	2016	Beaufort-Wes	200,001-300K	\N
district	DC5	2016	Beaufort-Wes	300,001-500K	\N
district	DC5	2016	Beaufort-Wes	500,001-800K	\N
district	DC5	2016	Beaufort-Wes	800,001-1M	\N
district	DC5	2016	Beaufort-Wes	Above 1M	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	Under 1.5K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	1,501-3K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	3,001-5K	3423
district	DC3	2016	Bredasdorp Cape Aqulhas	5,001-10K	9932
district	DC3	2016	Bredasdorp Cape Aqulhas	10,001-20K	11809
district	DC3	2016	Bredasdorp Cape Aqulhas	20,001-30K	29663
district	DC3	2016	Bredasdorp Cape Aqulhas	30,001-40K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	40,001-50K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	50,001-100K	72131
district	DC3	2016	Bredasdorp Cape Aqulhas	100,001-150K	118536
district	DC3	2016	Bredasdorp Cape Aqulhas	150,001-200K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	200,001-300K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	300,001-500K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	500,001-800K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	800,001-1M	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	Above 1M	1250000
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Under 1.5K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	1,501-3K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	3,001-5K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	5,001-10K	8333
district	DC3	2016	Caledon (Overberg) Theewaterskloof	10,001-20K	18130
district	DC3	2016	Caledon (Overberg) Theewaterskloof	20,001-30K	22891
district	DC3	2016	Caledon (Overberg) Theewaterskloof	30,001-40K	37572
district	DC3	2016	Caledon (Overberg) Theewaterskloof	40,001-50K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	50,001-100K	78587
district	DC3	2016	Caledon (Overberg) Theewaterskloof	100,001-150K	134179
district	DC3	2016	Caledon (Overberg) Theewaterskloof	150,001-200K	190441
district	DC3	2016	Caledon (Overberg) Theewaterskloof	200,001-300K	227273
district	DC3	2016	Caledon (Overberg) Theewaterskloof	300,001-500K	374353
district	DC3	2016	Caledon (Overberg) Theewaterskloof	500,001-800K	555592
district	DC3	2016	Caledon (Overberg) Theewaterskloof	800,001-1M	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Above 1M	\N
district	DC4	2016	Calitzdorp Kannaland	Under 1.5K	830
district	DC4	2016	Calitzdorp Kannaland	1,501-3K	\N
district	DC4	2016	Calitzdorp Kannaland	3,001-5K	\N
district	DC4	2016	Calitzdorp Kannaland	5,001-10K	6247
district	DC4	2016	Calitzdorp Kannaland	10,001-20K	16286
district	DC4	2016	Calitzdorp Kannaland	20,001-30K	25625
district	DC4	2016	Calitzdorp Kannaland	30,001-40K	\N
district	DC4	2016	Calitzdorp Kannaland	40,001-50K	47059
district	DC4	2016	Calitzdorp Kannaland	50,001-100K	91304
district	DC4	2016	Calitzdorp Kannaland	100,001-150K	143860
district	DC4	2016	Calitzdorp Kannaland	150,001-200K	\N
district	DC4	2016	Calitzdorp Kannaland	200,001-300K	\N
district	DC4	2016	Calitzdorp Kannaland	300,001-500K	\N
district	DC4	2016	Calitzdorp Kannaland	500,001-800K	\N
district	DC4	2016	Calitzdorp Kannaland	800,001-1M	\N
district	DC4	2016	Calitzdorp Kannaland	Above 1M	\N
municipality	CPT	2016	Cape Town	Under 1.5K	\N
municipality	CPT	2016	Cape Town	1,501-3K	\N
municipality	CPT	2016	Cape Town	3,001-5K	3989
municipality	CPT	2016	Cape Town	5,001-10K	9880
municipality	CPT	2016	Cape Town	10,001-20K	\N
municipality	CPT	2016	Cape Town	20,001-30K	21279
municipality	CPT	2016	Cape Town	30,001-40K	\N
municipality	CPT	2016	Cape Town	40,001-50K	\N
municipality	CPT	2016	Cape Town	50,001-100K	62904
municipality	CPT	2016	Cape Town	100,001-150K	\N
municipality	CPT	2016	Cape Town	150,001-200K	152381
municipality	CPT	2016	Cape Town	200,001-300K	\N
municipality	CPT	2016	Cape Town	300,001-500K	\N
municipality	CPT	2016	Cape Town	500,001-800K	\N
municipality	CPT	2016	Cape Town	800,001-1M	\N
municipality	CPT	2016	Cape Town	Above 1M	\N
district	DC2	2016	Ceres Witzenberg	Under 1.5K	828
district	DC2	2016	Ceres Witzenberg	1,501-3K	1863
district	DC2	2016	Ceres Witzenberg	3,001-5K	3795
district	DC2	2016	Ceres Witzenberg	5,001-10K	7722
district	DC2	2016	Ceres Witzenberg	10,001-20K	\N
district	DC2	2016	Ceres Witzenberg	20,001-30K	26104
district	DC2	2016	Ceres Witzenberg	30,001-40K	\N
district	DC2	2016	Ceres Witzenberg	40,001-50K	41485
district	DC2	2016	Ceres Witzenberg	50,001-100K	\N
district	DC2	2016	Ceres Witzenberg	100,001-150K	125419
district	DC2	2016	Ceres Witzenberg	150,001-200K	200000
district	DC2	2016	Ceres Witzenberg	200,001-300K	\N
district	DC2	2016	Ceres Witzenberg	300,001-500K	\N
district	DC2	2016	Ceres Witzenberg	500,001-800K	\N
district	DC2	2016	Ceres Witzenberg	800,001-1M	\N
district	DC2	2016	Ceres Witzenberg	Above 1M	\N
district	DC1	2016	Clanwilliam Cederberg	Under 1.5K	872
district	DC1	2016	Clanwilliam Cederberg	1,501-3K	2485
district	DC1	2016	Clanwilliam Cederberg	3,001-5K	3899
district	DC1	2016	Clanwilliam Cederberg	5,001-10K	6004
district	DC1	2016	Clanwilliam Cederberg	10,001-20K	11535
district	DC1	2016	Clanwilliam Cederberg	20,001-30K	20431
district	DC1	2016	Clanwilliam Cederberg	30,001-40K	\N
district	DC1	2016	Clanwilliam Cederberg	40,001-50K	\N
district	DC1	2016	Clanwilliam Cederberg	50,001-100K	86874
district	DC1	2016	Clanwilliam Cederberg	100,001-150K	122642
district	DC1	2016	Clanwilliam Cederberg	150,001-200K	\N
district	DC1	2016	Clanwilliam Cederberg	200,001-300K	\N
district	DC1	2016	Clanwilliam Cederberg	300,001-500K	\N
district	DC1	2016	Clanwilliam Cederberg	500,001-800K	\N
district	DC1	2016	Clanwilliam Cederberg	800,001-1M	\N
district	DC1	2016	Clanwilliam Cederberg	Above 1M	\N
district	DC4	2016	George	Under 1.5K	1009
district	DC4	2016	George	1,501-3K	\N
district	DC4	2016	George	3,001-5K	4508
district	DC4	2016	George	5,001-10K	6427
district	DC4	2016	George	10,001-20K	17458
district	DC4	2016	George	20,001-30K	28704
district	DC4	2016	George	30,001-40K	35905
district	DC4	2016	George	40,001-50K	47957
district	DC4	2016	George	50,001-100K	68559
district	DC4	2016	George	100,001-150K	119353
district	DC4	2016	George	150,001-200K	170455
district	DC4	2016	George	200,001-300K	250000
district	DC4	2016	George	300,001-500K	331429
district	DC4	2016	George	800,001-1M	\N
district	DC4	2016	Knysna	5,001-10K	9417
district	DC4	2016	Knysna	10,001-20K	15332
district	DC4	2016	Knysna	20,001-30K	\N
district	DC4	2016	Knysna	30,001-40K	\N
district	DC4	2016	Knysna	40,001-50K	49327
district	DC4	2016	Knysna	50,001-100K	71971
district	DC4	2016	Knysna	100,001-150K	121701
district	DC4	2016	Knysna	150,001-200K	176182
district	DC4	2016	Knysna	200,001-300K	300000
district	DC4	2016	Knysna	300,001-500K	392857
district	DC4	2016	Knysna	500,001-800K	545455
district	DC4	2016	Knysna	800,001-1M	\N
district	DC4	2016	Knysna	Above 1M	\N
district	DC4	2016	Ladismith Kannaland	Under 1.5K	666
district	DC4	2016	Ladismith Kannaland	1,501-3K	2452
district	DC4	2016	Ladismith Kannaland	3,001-5K	3799
district	DC4	2016	Ladismith Kannaland	5,001-10K	6112
district	DC4	2016	Ladismith Kannaland	10,001-20K	15006
district	DC4	2016	Ladismith Kannaland	20,001-30K	22437
district	DC4	2016	Ladismith Kannaland	30,001-40K	32759
district	DC4	2016	Ladismith Kannaland	40,001-50K	\N
district	DC4	2016	Ladismith Kannaland	50,001-100K	67262
district	DC4	2016	Ladismith Kannaland	100,001-150K	\N
district	DC4	2016	Ladismith Kannaland	150,001-200K	165156
district	DC4	2016	Ladismith Kannaland	200,001-300K	\N
district	DC4	2016	Ladismith Kannaland	300,001-500K	\N
district	DC4	2016	Ladismith Kannaland	500,001-800K	\N
district	DC4	2016	Ladismith Kannaland	800,001-1M	\N
district	DC4	2016	Ladismith Kannaland	Above 1M	\N
district	DC5	2016	Laingsburg	Under 1.5K	536
district	DC5	2016	Laingsburg	1,501-3K	2139
district	DC5	2016	Laingsburg	3,001-5K	\N
district	DC5	2016	Laingsburg	5,001-10K	\N
district	DC5	2016	Laingsburg	10,001-20K	\N
district	DC5	2016	Laingsburg	20,001-30K	\N
district	DC5	2016	Laingsburg	30,001-40K	\N
district	DC5	2016	Laingsburg	40,001-50K	\N
district	DC5	2016	Laingsburg	50,001-100K	\N
district	DC5	2016	Laingsburg	100,001-150K	\N
district	DC5	2016	Laingsburg	150,001-200K	\N
district	DC5	2016	Laingsburg	200,001-300K	\N
district	DC5	2016	Laingsburg	300,001-500K	\N
district	DC5	2016	Laingsburg	500,001-800K	\N
district	DC5	2016	Laingsburg	800,001-1M	\N
district	DC5	2016	Laingsburg	Above 1M	\N
district	DC1	2016	Malmesbury Swartland	Under 1.5K	30
district	DC1	2016	Malmesbury Swartland	1,501-3K	2349
district	DC1	2016	Malmesbury Swartland	3,001-5K	\N
district	DC1	2016	Malmesbury Swartland	5,001-10K	7836
district	DC1	2016	Malmesbury Swartland	10,001-20K	13166
district	DC1	2016	Malmesbury Swartland	20,001-30K	22465
district	DC1	2016	Malmesbury Swartland	30,001-40K	38499
district	DC1	2016	Malmesbury Swartland	40,001-50K	45898
district	DC1	2016	Malmesbury Swartland	50,001-100K	65249
district	DC1	2016	Malmesbury Swartland	100,001-150K	120614
district	DC1	2016	Malmesbury Swartland	150,001-200K	170588
district	DC1	2016	Malmesbury Swartland	200,001-300K	253105
district	DC1	2016	Malmesbury Swartland	300,001-500K	475000
district	DC1	2016	Malmesbury Swartland	500,001-800K	\N
district	DC1	2016	Malmesbury Swartland	800,001-1M	\N
district	DC1	2016	Malmesbury Swartland	Above 1M	\N
district	DC2	2016	Montagu Langeberg	Under 1.5K	306
district	DC2	2016	Montagu Langeberg	1,501-3K	2701
district	DC2	2016	Montagu Langeberg	3,001-5K	4472
district	DC2	2016	Montagu Langeberg	5,001-10K	7777
district	DC2	2016	Montagu Langeberg	10,001-20K	15393
district	DC2	2016	Montagu Langeberg	20,001-30K	21645
district	DC2	2016	Montagu Langeberg	30,001-40K	35000
district	DC2	2016	Montagu Langeberg	40,001-50K	45600
district	DC2	2016	Montagu Langeberg	50,001-100K	63183
district	DC2	2016	Montagu Langeberg	100,001-150K	\N
district	DC2	2016	Montagu Langeberg	150,001-200K	\N
district	DC2	2016	Montagu Langeberg	200,001-300K	\N
district	DC2	2016	Montagu Langeberg	300,001-500K	\N
district	DC2	2016	Montagu Langeberg	500,001-800K	\N
district	DC2	2016	Montagu Langeberg	800,001-1M	\N
district	DC2	2016	Montagu Langeberg	Above 1M	\N
district	DC4	2016	Mosselbaai	Under 1.5K	\N
district	DC4	2016	Mosselbaai	1,501-3K	\N
district	DC4	2016	Mosselbaai	3,001-5K	\N
district	DC4	2016	Mosselbaai	5,001-10K	5907
district	DC4	2016	Mosselbaai	10,001-20K	17119
district	DC4	2016	Mosselbaai	20,001-30K	22798
district	DC4	2016	Mosselbaai	30,001-40K	\N
district	DC4	2016	Mosselbaai	40,001-50K	47784
district	DC4	2016	Mosselbaai	50,001-100K	86158
district	DC4	2016	Mosselbaai	100,001-150K	121062
district	DC4	2016	Mosselbaai	150,001-200K	181022
district	DC4	2016	Mosselbaai	200,001-300K	\N
district	DC4	2016	Mosselbaai	300,001-500K	\N
district	DC4	2016	Mosselbaai	500,001-800K	\N
district	DC4	2016	Mosselbaai	800,001-1M	\N
district	DC4	2016	Mosselbaai	Above 1M	\N
district	DC5	2016	Murraysburg	Under 1.5K	\N
district	DC5	2016	Murraysburg	1,501-3K	2348
district	DC5	2016	Murraysburg	3,001-5K	\N
district	DC5	2016	Murraysburg	5,001-10K	\N
district	DC5	2016	Murraysburg	10,001-20K	\N
district	DC5	2016	Murraysburg	20,001-30K	29470
district	DC5	2016	Murraysburg	30,001-40K	\N
district	DC5	2016	Murraysburg	40,001-50K	\N
district	DC5	2016	Murraysburg	50,001-100K	\N
district	DC5	2016	Murraysburg	100,001-150K	\N
district	DC5	2016	Murraysburg	150,001-200K	\N
district	DC5	2016	Murraysburg	200,001-300K	\N
district	DC5	2016	Murraysburg	300,001-500K	\N
district	DC5	2016	Murraysburg	500,001-800K	\N
district	DC5	2016	Murraysburg	800,001-1M	\N
district	DC5	2016	Murraysburg	Above 1M	\N
district	DC4	2016	Oudtshoorn	Under 1.5K	589
district	DC4	2016	Oudtshoorn	1,501-3K	2453
district	DC4	2016	Oudtshoorn	3,001-5K	3361
district	DC4	2016	Oudtshoorn	5,001-10K	6018
district	DC4	2016	Oudtshoorn	10,001-20K	15491
district	DC4	2016	Oudtshoorn	20,001-30K	24496
district	DC4	2016	Oudtshoorn	30,001-40K	35852
district	DC4	2016	Oudtshoorn	40,001-50K	\N
district	DC4	2016	Oudtshoorn	50,001-100K	72252
district	DC4	2016	Oudtshoorn	100,001-150K	124294
district	DC4	2016	Oudtshoorn	150,001-200K	\N
district	DC4	2016	Oudtshoorn	200,001-300K	\N
district	DC4	2016	Oudtshoorn	300,001-500K	414126
district	DC4	2016	Oudtshoorn	500,001-800K	\N
district	DC4	2016	Oudtshoorn	800,001-1M	\N
district	DC4	2016	Oudtshoorn	Above 1M	\N
district	DC2	2016	Paarl/Wel Drakenstein	Under 1.5K	\N
district	DC2	2016	Paarl/Wel Drakenstein	1,501-3K	\N
district	DC2	2016	Paarl/Wel Drakenstein	3,001-5K	\N
district	DC2	2016	Paarl/Wel Drakenstein	5,001-10K	\N
district	DC2	2016	Paarl/Wel Drakenstein	10,001-20K	19167
district	DC2	2016	Paarl/Wel Drakenstein	20,001-30K	\N
district	DC2	2016	Paarl/Wel Drakenstein	30,001-40K	37838
district	DC2	2016	Paarl/Wel Drakenstein	40,001-50K	44429
district	DC2	2016	Paarl/Wel Drakenstein	50,001-100K	68846
district	DC2	2016	Paarl/Wel Drakenstein	100,001-150K	121111
district	DC2	2016	Paarl/Wel Drakenstein	150,001-200K	184261
district	DC2	2016	Paarl/Wel Drakenstein	200,001-300K	237744
district	DC2	2016	Paarl/Wel Drakenstein	300,001-500K	354260
district	DC2	2016	Paarl/Wel Drakenstein	500,001-800K	658850
district	DC2	2016	Paarl/Wel Drakenstein	800,001-1M	\N
district	DC2	2016	Paarl/Wel Drakenstein	Above 1M	1721591
district	DC1	2016	Piketberg Bergriver	Under 1.5K	629
district	DC1	2016	Piketberg Bergriver	1,501-3K	2119
district	DC1	2016	Piketberg Bergriver	3,001-5K	3742
district	DC1	2016	Piketberg Bergriver	5,001-10K	7350
district	DC1	2016	Piketberg Bergriver	10,001-20K	12751
district	DC1	2016	Piketberg Bergriver	20,001-30K	23785
district	DC1	2016	Piketberg Bergriver	30,001-40K	32716
district	DC1	2016	Piketberg Bergriver	40,001-50K	41322
district	DC1	2016	Piketberg Bergriver	50,001-100K	55556
district	DC1	2016	Piketberg Bergriver	100,001-150K	124035
district	DC1	2016	Piketberg Bergriver	150,001-200K	\N
district	DC1	2016	Piketberg Bergriver	200,001-300K	\N
district	DC1	2016	Piketberg Bergriver	300,001-500K	\N
district	DC1	2016	Piketberg Bergriver	500,001-800K	\N
district	DC1	2016	Piketberg Bergriver	800,001-1M	\N
district	DC1	2016	Piketberg Bergriver	Above 1M	\N
district	DC5	2016	Prins Albert	Under 1.5K	1008
district	DC5	2016	Prins Albert	1,501-3K	1936
district	DC5	2016	Prins Albert	3,001-5K	\N
district	DC5	2016	Prins Albert	5,001-10K	9804
district	DC5	2016	Prins Albert	10,001-20K	12794
district	DC5	2016	Prins Albert	20,001-30K	\N
district	DC5	2016	Prins Albert	30,001-40K	\N
district	DC5	2016	Prins Albert	40,001-50K	\N
district	DC5	2016	Prins Albert	50,001-100K	\N
district	DC5	2016	Prins Albert	100,001-150K	\N
district	DC5	2016	Prins Albert	150,001-200K	\N
district	DC5	2016	Prins Albert	200,001-300K	\N
district	DC5	2016	Prins Albert	300,001-500K	\N
district	DC5	2016	Prins Albert	500,001-800K	\N
district	DC5	2016	Prins Albert	800,001-1M	\N
district	DC5	2016	Prins Albert	Above 1M	\N
district	DC4	2016	Riversdal Hessequa	Under 1.5K	594
district	DC4	2016	Riversdal Hessequa	1,501-3K	2378
district	DC4	2016	Riversdal Hessequa	3,001-5K	\N
district	DC4	2016	Riversdal Hessequa	5,001-10K	7135
district	DC4	2016	Riversdal Hessequa	10,001-20K	14964
district	DC4	2016	Riversdal Hessequa	20,001-30K	25523
district	DC4	2016	Riversdal Hessequa	30,001-40K	36397
district	DC4	2016	Riversdal Hessequa	40,001-50K	44668
district	DC4	2016	Riversdal Hessequa	50,001-100K	76834
district	DC4	2016	Riversdal Hessequa	100,001-150K	150000
district	DC4	2016	Riversdal Hessequa	150,001-200K	\N
district	DC4	2016	Riversdal Hessequa	200,001-300K	203125
district	DC4	2016	Riversdal Hessequa	300,001-500K	342105
district	DC4	2016	Riversdal Hessequa	500,001-800K	\N
district	DC4	2016	Riversdal Hessequa	800,001-1M	\N
district	DC4	2016	Riversdal Hessequa	Above 1M	\N
district	DC2	2016	Robertson Breede /Winelands	Under 1.5K	\N
district	DC2	2016	Robertson Breede /Winelands	1,501-3K	\N
district	DC2	2016	Robertson Breede /Winelands	3,001-5K	\N
district	DC2	2016	Robertson Breede /Winelands	5,001-10K	7227
district	DC2	2016	Robertson Breede /Winelands	10,001-20K	19531
district	DC2	2016	Robertson Breede /Winelands	20,001-30K	\N
district	DC2	2016	Robertson Breede /Winelands	30,001-40K	36199
district	DC2	2016	Robertson Breede /Winelands	40,001-50K	49347
district	DC2	2016	Robertson Breede /Winelands	50,001-100K	71250
district	DC2	2016	Robertson Breede /Winelands	100,001-150K	108750
district	DC2	2016	Robertson Breede /Winelands	150,001-200K	167308
district	DC2	2016	Robertson Breede /Winelands	200,001-300K	273125
district	DC2	2016	Robertson Breede /Winelands	300,001-500K	326512
district	DC2	2016	Robertson Breede /Winelands	500,001-800K	\N
district	DC2	2016	Robertson Breede /Winelands	800,001-1M	\N
district	DC2	2016	Robertson Breede /Winelands	Above 1M	\N
district	DC2	2016	Stellenbosch	Under 1.5K	\N
district	DC2	2016	Stellenbosch	1,501-3K	\N
district	DC2	2016	Stellenbosch	3,001-5K	\N
district	DC2	2016	Stellenbosch	5,001-10K	\N
district	DC2	2016	Stellenbosch	10,001-20K	\N
district	DC2	2016	Stellenbosch	20,001-30K	\N
district	DC2	2016	Stellenbosch	30,001-40K	\N
district	DC2	2016	Stellenbosch	40,001-50K	\N
district	DC2	2016	Stellenbosch	50,001-100K	74813
district	DC2	2016	Stellenbosch	100,001-150K	150000
district	DC2	2016	Stellenbosch	150,001-200K	172480
district	DC2	2016	Stellenbosch	200,001-300K	265562
district	DC2	2016	Stellenbosch	300,001-500K	407146
district	DC2	2016	Stellenbosch	500,001-800K	630946
district	DC2	2016	Stellenbosch	800,001-1M	871205
district	DC2	2016	Stellenbosch	Above 1M	2392045
district	DC3	2016	Swellendam	Under 1.5K	\N
district	DC3	2016	Swellendam	1,501-3K	\N
district	DC3	2016	Swellendam	3,001-5K	4248
district	DC3	2016	Swellendam	5,001-10K	6172
district	DC3	2016	Swellendam	10,001-20K	15102
district	DC3	2016	Swellendam	20,001-30K	26442
district	DC3	2016	Swellendam	30,001-40K	36422
district	DC3	2016	Swellendam	40,001-50K	41555
district	DC3	2016	Swellendam	50,001-100K	73487
district	DC3	2016	Swellendam	100,001-150K	129026
district	DC3	2016	Swellendam	150,001-200K	170635
district	DC3	2016	Swellendam	200,001-300K	268934
district	DC3	2016	Swellendam	300,001-500K	356905
district	DC3	2016	Swellendam	500,001-800K	\N
district	DC3	2016	Swellendam	800,001-1M	\N
district	DC3	2016	Swellendam	Above 1M	\N
district	DC2	2016	Tulbagh	Under 1.5K	\N
district	DC2	2016	Tulbagh	1,501-3K	\N
district	DC2	2016	Tulbagh	3,001-5K	\N
district	DC2	2016	Tulbagh	5,001-10K	\N
district	DC2	2016	Tulbagh	10,001-20K	11942
district	DC2	2016	Tulbagh	20,001-30K	\N
district	DC2	2016	Tulbagh	30,001-40K	\N
district	DC2	2016	Tulbagh	40,001-50K	49462
district	DC2	2016	Tulbagh	50,001-100K	71014
district	DC2	2016	Tulbagh	100,001-150K	117647
district	DC2	2016	Tulbagh	150,001-200K	\N
district	DC2	2016	Tulbagh	200,001-300K	204386
district	DC2	2016	Tulbagh	300,001-500K	\N
district	DC2	2016	Tulbagh	500,001-800K	\N
district	DC2	2016	Tulbagh	800,001-1M	\N
district	DC2	2016	Tulbagh	Above 1M	\N
district	DC1	2016	Vanrynsdorp Matzikama	Under 1.5K	561
district	DC1	2016	Vanrynsdorp Matzikama	1,501-3K	2594
district	DC1	2016	Vanrynsdorp Matzikama	3,001-5K	\N
district	DC1	2016	Vanrynsdorp Matzikama	5,001-10K	7290
district	DC1	2016	Vanrynsdorp Matzikama	10,001-20K	15454
district	DC1	2016	Vanrynsdorp Matzikama	20,001-30K	25220
district	DC1	2016	Vanrynsdorp Matzikama	30,001-40K	\N
district	DC1	2016	Vanrynsdorp Matzikama	40,001-50K	\N
district	DC1	2016	Vanrynsdorp Matzikama	50,001-100K	50847
district	DC1	2016	Vanrynsdorp Matzikama	100,001-150K	\N
district	DC1	2016	Vanrynsdorp Matzikama	150,001-200K	159301
district	DC1	2016	Vanrynsdorp Matzikama	200,001-300K	260354
district	DC1	2016	Vanrynsdorp Matzikama	300,001-500K	323958
district	DC1	2016	Vanrynsdorp Matzikama	500,001-800K	\N
district	DC1	2016	Vanrynsdorp Matzikama	800,001-1M	\N
district	DC1	2016	Vanrynsdorp Matzikama	Above 1M	\N
district	DC2	2016	Worcester Breede Valley	Under 1.5K	228
district	DC2	2016	Worcester Breede Valley	1,501-3K	1907
district	DC2	2016	Worcester Breede Valley	3,001-5K	\N
district	DC2	2016	Worcester Breede Valley	5,001-10K	9460
district	DC2	2016	Worcester Breede Valley	10,001-20K	12514
district	DC2	2016	Worcester Breede Valley	20,001-30K	25675
district	DC2	2016	Worcester Breede Valley	30,001-40K	\N
district	DC2	2016	Worcester Breede Valley	40,001-50K	43370
district	DC2	2016	Worcester Breede Valley	50,001-100K	76518
district	DC2	2016	Worcester Breede Valley	100,001-150K	110431
district	DC2	2016	Worcester Breede Valley	150,001-200K	192662
district	DC2	2016	Worcester Breede Valley	200,001-300K	267868
district	DC2	2016	Worcester Breede Valley	300,001-500K	\N
district	DC2	2016	Worcester Breede Valley	500,001-800K	545455
district	DC2	2016	Worcester Breede Valley	800,001-1M	\N
district	DC2	2016	Worcester Breede Valley	Above 1M	\N
\.


--
-- PostgreSQL database dump complete
--

