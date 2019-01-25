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

DROP TABLE IF EXISTS public.towndistrictdistributionhectares;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: towndistrictdistributionhectares; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.towndistrictdistributionhectares (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    town_name_dh character varying(128) NOT NULL,
    class_dh character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: towndistrictdistributionhectares; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.towndistrictdistributionhectares (geo_level, geo_code, geo_version, town_name_dh, class_dh, total) FROM stdin;
district	DC10	2016	Aberdeen	Under 1.5K	\N
district	DC10	2016	Aberdeen	1,501-3K	2046
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
district	DC32	2016	Acornhoek Bushbuckridge	50,001-100K	475
district	DC32	2016	Acornhoek Bushbuckridge	100,001-150K	\N
district	DC32	2016	Acornhoek Bushbuckridge	150,001-200K	\N
district	DC32	2016	Acornhoek Bushbuckridge	200,001-300K	\N
district	DC32	2016	Acornhoek Bushbuckridge	300,001-500K	\N
district	DC32	2016	Acornhoek Bushbuckridge	500,001-800K	\N
district	DC32	2016	Acornhoek Bushbuckridge	800,001-1M	\N
district	DC32	2016	Acornhoek Bushbuckridge	Above 1M	\N
district	DC10	2016	Albany	Under 1.5K	\N
district	DC10	2016	Albany	1,501-3K	3077
district	DC10	2016	Albany	3,001-5K	3145
district	DC10	2016	Albany	5,001-10K	3253
district	DC10	2016	Albany	10,001-20K	677
district	DC10	2016	Albany	20,001-30K	768
district	DC10	2016	Albany	30,001-40K	\N
district	DC10	2016	Albany	40,001-50K	\N
district	DC10	2016	Albany	50,001-100K	11
district	DC10	2016	Albany	100,001-150K	\N
district	DC10	2016	Albany	150,001-200K	14
district	DC10	2016	Albany	200,001-300K	\N
district	DC10	2016	Albany	300,001-500K	\N
district	DC10	2016	Albany	500,001-800K	\N
district	DC10	2016	Albany	800,001-1M	\N
district	DC10	2016	Albany	Above 1M	\N
district	DC4	2016	Albertinia HesseQua	Under 1.5K	\N
district	DC4	2016	Albertinia HesseQua	1,501-3K	545
district	DC4	2016	Albertinia HesseQua	3,001-5K	2333
district	DC4	2016	Albertinia HesseQua	5,001-10K	384
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
district	DC10	2016	Alexandria Ndlambe	3,001-5K	970
district	DC10	2016	Alexandria Ndlambe	5,001-10K	2204
district	DC10	2016	Alexandria Ndlambe	10,001-20K	555
district	DC10	2016	Alexandria Ndlambe	20,001-30K	892
district	DC10	2016	Alexandria Ndlambe	30,001-40K	110
district	DC10	2016	Alexandria Ndlambe	40,001-50K	604
district	DC10	2016	Alexandria Ndlambe	50,001-100K	\N
district	DC10	2016	Alexandria Ndlambe	100,001-150K	\N
district	DC10	2016	Alexandria Ndlambe	150,001-200K	\N
district	DC10	2016	Alexandria Ndlambe	200,001-300K	\N
district	DC10	2016	Alexandria Ndlambe	300,001-500K	25
district	DC10	2016	Alexandria Ndlambe	500,001-800K	\N
district	DC10	2016	Alexandria Ndlambe	800,001-1M	\N
district	DC10	2016	Alexandria Ndlambe	Above 1M	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	Under 1.5K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	1,501-3K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	3,001-5K	779
district	DC14	2016	Aliwal-Noord Maletsiwai	5,001-10K	2045
district	DC14	2016	Aliwal-Noord Maletsiwai	10,001-20K	1041
district	DC14	2016	Aliwal-Noord Maletsiwai	20,001-30K	407
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
district	DC35	2016	Alldays Blouberg	1,501-3K	1548
district	DC35	2016	Alldays Blouberg	3,001-5K	9230
district	DC35	2016	Alldays Blouberg	5,001-10K	4652
district	DC35	2016	Alldays Blouberg	10,001-20K	1479
district	DC35	2016	Alldays Blouberg	20,001-30K	816
district	DC35	2016	Alldays Blouberg	30,001-40K	\N
district	DC35	2016	Alldays Blouberg	40,001-50K	86
district	DC35	2016	Alldays Blouberg	50,001-100K	59
district	DC35	2016	Alldays Blouberg	100,001-150K	\N
district	DC35	2016	Alldays Blouberg	150,001-200K	\N
district	DC35	2016	Alldays Blouberg	200,001-300K	\N
district	DC35	2016	Alldays Blouberg	300,001-500K	\N
district	DC35	2016	Alldays Blouberg	500,001-800K	\N
district	DC35	2016	Alldays Blouberg	800,001-1M	\N
district	DC35	2016	Alldays Blouberg	Above 1M	\N
district	DC30	2016	Amsterdam Mkhondo	Under 1.5K	99
district	DC30	2016	Amsterdam Mkhondo	1,501-3K	\N
district	DC30	2016	Amsterdam Mkhondo	3,001-5K	\N
district	DC30	2016	Amsterdam Mkhondo	5,001-10K	1604
district	DC30	2016	Amsterdam Mkhondo	10,001-20K	7571
district	DC30	2016	Amsterdam Mkhondo	20,001-30K	2838
district	DC30	2016	Amsterdam Mkhondo	30,001-40K	1700
district	DC30	2016	Amsterdam Mkhondo	40,001-50K	81
district	DC30	2016	Amsterdam Mkhondo	50,001-100K	66
district	DC30	2016	Amsterdam Mkhondo	100,001-150K	382
district	DC30	2016	Amsterdam Mkhondo	150,001-200K	44
district	DC30	2016	Amsterdam Mkhondo	200,001-300K	51
district	DC30	2016	Amsterdam Mkhondo	300,001-500K	25
district	DC30	2016	Amsterdam Mkhondo	500,001-800K	\N
district	DC30	2016	Amsterdam Mkhondo	800,001-1M	\N
district	DC30	2016	Amsterdam Mkhondo	Above 1M	\N
district	DC29	2016	Ballito KwaDukuza	Under 1.5K	\N
district	DC29	2016	Ballito KwaDukuza	1,501-3K	\N
district	DC29	2016	Ballito KwaDukuza	3,001-5K	379
district	DC29	2016	Ballito KwaDukuza	5,001-10K	56
district	DC29	2016	Ballito KwaDukuza	10,001-20K	220
district	DC29	2016	Ballito KwaDukuza	20,001-30K	752
district	DC29	2016	Ballito KwaDukuza	30,001-40K	180
district	DC29	2016	Ballito KwaDukuza	40,001-50K	659
district	DC29	2016	Ballito KwaDukuza	50,001-100K	740
district	DC29	2016	Ballito KwaDukuza	100,001-150K	622
district	DC29	2016	Ballito KwaDukuza	150,001-200K	43
district	DC29	2016	Ballito KwaDukuza	200,001-300K	\N
district	DC29	2016	Ballito KwaDukuza	300,001-500K	13
district	DC29	2016	Ballito KwaDukuza	500,001-800K	294
district	DC29	2016	Ballito KwaDukuza	800,001-1M	\N
district	DC29	2016	Ballito KwaDukuza	Above 1M	34
district	DC9	2016	Barkley-Wes Dikgatlong	Under 1.5K	2017
district	DC9	2016	Barkley-Wes Dikgatlong	1,501-3K	1822
district	DC9	2016	Barkley-Wes Dikgatlong	3,001-5K	4205
district	DC9	2016	Barkley-Wes Dikgatlong	5,001-10K	7520
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
district	DC14	2016	Barkly-Oos Senqu	1,501-3K	1348
district	DC14	2016	Barkly-Oos Senqu	3,001-5K	508
district	DC14	2016	Barkly-Oos Senqu	5,001-10K	4281
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
district	DC10	2016	Bathurst Ndlambe	5,001-10K	1129
district	DC10	2016	Bathurst Ndlambe	10,001-20K	2221
district	DC10	2016	Bathurst Ndlambe	20,001-30K	\N
district	DC10	2016	Bathurst Ndlambe	30,001-40K	\N
district	DC10	2016	Bathurst Ndlambe	40,001-50K	104
district	DC10	2016	Bathurst Ndlambe	50,001-100K	28
district	DC10	2016	Bathurst Ndlambe	100,001-150K	55
district	DC10	2016	Bathurst Ndlambe	150,001-200K	\N
district	DC10	2016	Bathurst Ndlambe	200,001-300K	\N
district	DC10	2016	Bathurst Ndlambe	300,001-500K	\N
district	DC10	2016	Bathurst Ndlambe	500,001-800K	\N
district	DC10	2016	Bathurst Ndlambe	800,001-1M	\N
district	DC10	2016	Bathurst Ndlambe	Above 1M	\N
district	DC5	2016	Beaufort-Wes	Under 1.5K	4080
district	DC5	2016	Beaufort-Wes	1,501-3K	11222
district	DC5	2016	Beaufort-Wes	3,001-5K	9919
district	DC5	2016	Beaufort-Wes	5,001-10K	269
district	DC5	2016	Beaufort-Wes	10,001-20K	478
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
district	DC12	2016	Bedford Amathole	5,001-10K	3591
district	DC12	2016	Bedford Amathole	10,001-20K	\N
district	DC12	2016	Bedford Amathole	20,001-30K	2707
district	DC12	2016	Bedford Amathole	30,001-40K	\N
district	DC12	2016	Bedford Amathole	40,001-50K	\N
district	DC12	2016	Bedford Amathole	50,001-100K	\N
district	DC12	2016	Bedford Amathole	100,001-150K	\N
district	DC12	2016	Bedford Amathole	150,001-200K	\N
district	DC12	2016	Bedford Amathole	200,001-300K	52
district	DC12	2016	Bedford Amathole	300,001-500K	\N
district	DC12	2016	Bedford Amathole	500,001-800K	\N
district	DC12	2016	Bedford Amathole	800,001-1M	\N
district	DC12	2016	Bedford Amathole	Above 1M	\N
district	DC30	2016	Bethal Gonovan Mbeki	Under 1.5K	\N
district	DC30	2016	Bethal Gonovan Mbeki	1,501-3K	396
district	DC30	2016	Bethal Gonovan Mbeki	3,001-5K	840
district	DC30	2016	Bethal Gonovan Mbeki	5,001-10K	2935
district	DC30	2016	Bethal Gonovan Mbeki	10,001-20K	8216
district	DC30	2016	Bethal Gonovan Mbeki	20,001-30K	3390
district	DC30	2016	Bethal Gonovan Mbeki	30,001-40K	3790
district	DC30	2016	Bethal Gonovan Mbeki	40,001-50K	2397
district	DC30	2016	Bethal Gonovan Mbeki	50,001-100K	98
district	DC30	2016	Bethal Gonovan Mbeki	100,001-150K	201
district	DC30	2016	Bethal Gonovan Mbeki	150,001-200K	\N
district	DC30	2016	Bethal Gonovan Mbeki	200,001-300K	\N
district	DC30	2016	Bethal Gonovan Mbeki	300,001-500K	23
district	DC30	2016	Bethal Gonovan Mbeki	500,001-800K	\N
district	DC30	2016	Bethal Gonovan Mbeki	800,001-1M	\N
district	DC30	2016	Bethal Gonovan Mbeki	Above 1M	\N
district	DC19	2016	Bethlehem Dihlabeng	Under 1.5K	737
district	DC19	2016	Bethlehem Dihlabeng	1,501-3K	\N
district	DC19	2016	Bethlehem Dihlabeng	3,001-5K	\N
district	DC19	2016	Bethlehem Dihlabeng	5,001-10K	256
district	DC19	2016	Bethlehem Dihlabeng	10,001-20K	1876
district	DC19	2016	Bethlehem Dihlabeng	20,001-30K	3525
district	DC19	2016	Bethlehem Dihlabeng	30,001-40K	1375
district	DC19	2016	Bethlehem Dihlabeng	40,001-50K	335
district	DC19	2016	Bethlehem Dihlabeng	50,001-100K	\N
district	DC19	2016	Bethlehem Dihlabeng	100,001-150K	\N
district	DC19	2016	Bethlehem Dihlabeng	150,001-200K	\N
district	DC19	2016	Bethlehem Dihlabeng	200,001-300K	\N
district	DC19	2016	Bethlehem Dihlabeng	300,001-500K	\N
district	DC19	2016	Bethlehem Dihlabeng	500,001-800K	12
district	DC19	2016	Bethlehem Dihlabeng	800,001-1M	\N
district	DC19	2016	Bethlehem Dihlabeng	Above 1M	\N
district	DC16	2016	Bethulie	Under 1.5K	\N
district	DC16	2016	Bethulie	1,501-3K	\N
district	DC16	2016	Bethulie	3,001-5K	\N
district	DC16	2016	Bethulie	5,001-10K	2880
district	DC16	2016	Bethulie	10,001-20K	357
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
municipality	MAN	2016	Bloemfontein Mangaung	1,501-3K	306
municipality	MAN	2016	Bloemfontein Mangaung	3,001-5K	5514
municipality	MAN	2016	Bloemfontein Mangaung	5,001-10K	5653
municipality	MAN	2016	Bloemfontein Mangaung	10,001-20K	6544
municipality	MAN	2016	Bloemfontein Mangaung	20,001-30K	1294
municipality	MAN	2016	Bloemfontein Mangaung	30,001-40K	274
municipality	MAN	2016	Bloemfontein Mangaung	40,001-50K	115
municipality	MAN	2016	Bloemfontein Mangaung	50,001-100K	287
municipality	MAN	2016	Bloemfontein Mangaung	100,001-150K	143
municipality	MAN	2016	Bloemfontein Mangaung	150,001-200K	37
municipality	MAN	2016	Bloemfontein Mangaung	200,001-300K	83
municipality	MAN	2016	Bloemfontein Mangaung	300,001-500K	12
municipality	MAN	2016	Bloemfontein Mangaung	500,001-800K	\N
municipality	MAN	2016	Bloemfontein Mangaung	800,001-1M	\N
municipality	MAN	2016	Bloemfontein Mangaung	Above 1M	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	Under 1.5K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	1,501-3K	675
district	DC39	2016	Bloemhof Lekwa-Tecma	3,001-5K	2589
district	DC39	2016	Bloemhof Lekwa-Tecma	5,001-10K	7342
district	DC39	2016	Bloemhof Lekwa-Tecma	10,001-20K	3352
district	DC39	2016	Bloemhof Lekwa-Tecma	20,001-30K	88
district	DC39	2016	Bloemhof Lekwa-Tecma	30,001-40K	85
district	DC39	2016	Bloemhof Lekwa-Tecma	40,001-50K	37
district	DC39	2016	Bloemhof Lekwa-Tecma	50,001-100K	116
district	DC39	2016	Bloemhof Lekwa-Tecma	100,001-150K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	150,001-200K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	200,001-300K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	300,001-500K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	500,001-800K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	800,001-1M	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	Above 1M	\N
district	DC18	2016	Boshof Tokologo	Under 1.5K	563
district	DC18	2016	Boshof Tokologo	1,501-3K	3806
district	DC18	2016	Boshof Tokologo	3,001-5K	7614
district	DC18	2016	Boshof Tokologo	5,001-10K	6814
district	DC18	2016	Boshof Tokologo	10,001-20K	499
district	DC18	2016	Boshof Tokologo	20,001-30K	2399
district	DC18	2016	Boshof Tokologo	30,001-40K	\N
district	DC18	2016	Boshof Tokologo	40,001-50K	\N
district	DC18	2016	Boshof Tokologo	50,001-100K	21
district	DC18	2016	Boshof Tokologo	100,001-150K	\N
district	DC18	2016	Boshof Tokologo	150,001-200K	\N
district	DC18	2016	Boshof Tokologo	200,001-300K	\N
district	DC18	2016	Boshof Tokologo	300,001-500K	\N
district	DC18	2016	Boshof Tokologo	500,001-800K	\N
district	DC18	2016	Boshof Tokologo	800,001-1M	\N
district	DC18	2016	Boshof Tokologo	Above 1M	\N
district	DC18	2016	Bothaville Nala	Under 1.5K	\N
district	DC18	2016	Bothaville Nala	1,501-3K	\N
district	DC18	2016	Bothaville Nala	3,001-5K	602
district	DC18	2016	Bothaville Nala	5,001-10K	2673
district	DC18	2016	Bothaville Nala	10,001-20K	3404
district	DC18	2016	Bothaville Nala	20,001-30K	640
district	DC18	2016	Bothaville Nala	30,001-40K	\N
district	DC18	2016	Bothaville Nala	40,001-50K	739
district	DC18	2016	Bothaville Nala	50,001-100K	1360
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
district	DC18	2016	Brandfort Masilonyana	5,001-10K	2803
district	DC18	2016	Brandfort Masilonyana	10,001-20K	1030
district	DC18	2016	Brandfort Masilonyana	20,001-30K	\N
district	DC18	2016	Brandfort Masilonyana	30,001-40K	\N
district	DC18	2016	Brandfort Masilonyana	40,001-50K	21
district	DC18	2016	Brandfort Masilonyana	50,001-100K	49
district	DC18	2016	Brandfort Masilonyana	100,001-150K	\N
district	DC18	2016	Brandfort Masilonyana	150,001-200K	\N
district	DC18	2016	Brandfort Masilonyana	200,001-300K	\N
district	DC18	2016	Brandfort Masilonyana	300,001-500K	\N
district	DC18	2016	Brandfort Masilonyana	500,001-800K	\N
district	DC18	2016	Brandfort Masilonyana	800,001-1M	\N
district	DC18	2016	Brandfort Masilonyana	Above 1M	\N
district	DC39	2016	Bray Kagisano-Molopo	Under 1.5K	\N
district	DC39	2016	Bray Kagisano-Molopo	1,501-3K	\N
district	DC39	2016	Bray Kagisano-Molopo	3,001-5K	10752
district	DC39	2016	Bray Kagisano-Molopo	5,001-10K	4467
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
district	DC3	2016	Bredasdorp Cape Aqulhas	3,001-5K	629
district	DC3	2016	Bredasdorp Cape Aqulhas	5,001-10K	146
district	DC3	2016	Bredasdorp Cape Aqulhas	10,001-20K	754
district	DC3	2016	Bredasdorp Cape Aqulhas	20,001-30K	37
district	DC3	2016	Bredasdorp Cape Aqulhas	30,001-40K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	40,001-50K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	50,001-100K	736
district	DC3	2016	Bredasdorp Cape Aqulhas	100,001-150K	138
district	DC3	2016	Bredasdorp Cape Aqulhas	150,001-200K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	200,001-300K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	300,001-500K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	500,001-800K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	800,001-1M	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	Above 1M	10
district	DC7	2016	Britstown	Under 1.5K	25207
district	DC7	2016	Britstown	1,501-3K	40869
district	DC7	2016	Britstown	3,001-5K	829
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
district	DC18	2016	Bultfontein Tswelopele	3,001-5K	1055
district	DC18	2016	Bultfontein Tswelopele	5,001-10K	959
district	DC18	2016	Bultfontein Tswelopele	10,001-20K	236
district	DC18	2016	Bultfontein Tswelopele	20,001-30K	202
district	DC18	2016	Bultfontein Tswelopele	30,001-40K	\N
district	DC18	2016	Bultfontein Tswelopele	40,001-50K	368
district	DC18	2016	Bultfontein Tswelopele	50,001-100K	137
district	DC18	2016	Bultfontein Tswelopele	100,001-150K	\N
district	DC18	2016	Bultfontein Tswelopele	150,001-200K	\N
district	DC18	2016	Bultfontein Tswelopele	200,001-300K	\N
district	DC18	2016	Bultfontein Tswelopele	300,001-500K	\N
district	DC18	2016	Bultfontein Tswelopele	500,001-800K	\N
district	DC18	2016	Bultfontein Tswelopele	800,001-1M	\N
district	DC18	2016	Bultfontein Tswelopele	Above 1M	\N
district	DC47	2016	Burgersfort Thubatse	Under 1.5K	4006
district	DC47	2016	Burgersfort Thubatse	1,501-3K	831
district	DC47	2016	Burgersfort Thubatse	3,001-5K	1716
district	DC47	2016	Burgersfort Thubatse	5,001-10K	1708
district	DC47	2016	Burgersfort Thubatse	10,001-20K	3177
district	DC47	2016	Burgersfort Thubatse	20,001-30K	1179
district	DC47	2016	Burgersfort Thubatse	30,001-40K	132
district	DC47	2016	Burgersfort Thubatse	40,001-50K	\N
district	DC47	2016	Burgersfort Thubatse	50,001-100K	783
district	DC47	2016	Burgersfort Thubatse	100,001-150K	232
district	DC47	2016	Burgersfort Thubatse	150,001-200K	464
district	DC47	2016	Burgersfort Thubatse	200,001-300K	149
district	DC47	2016	Burgersfort Thubatse	300,001-500K	41
district	DC47	2016	Burgersfort Thubatse	500,001-800K	374
district	DC47	2016	Burgersfort Thubatse	800,001-1M	58
district	DC47	2016	Burgersfort Thubatse	Above 1M	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Under 1.5K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	1,501-3K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	3,001-5K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	5,001-10K	12
district	DC3	2016	Caledon (Overberg) Theewaterskloof	10,001-20K	287
district	DC3	2016	Caledon (Overberg) Theewaterskloof	20,001-30K	1082
district	DC3	2016	Caledon (Overberg) Theewaterskloof	30,001-40K	173
district	DC3	2016	Caledon (Overberg) Theewaterskloof	40,001-50K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	50,001-100K	2842
district	DC3	2016	Caledon (Overberg) Theewaterskloof	100,001-150K	333
district	DC3	2016	Caledon (Overberg) Theewaterskloof	150,001-200K	133
district	DC3	2016	Caledon (Overberg) Theewaterskloof	200,001-300K	22
district	DC3	2016	Caledon (Overberg) Theewaterskloof	300,001-500K	58
district	DC3	2016	Caledon (Overberg) Theewaterskloof	500,001-800K	116
district	DC3	2016	Caledon (Overberg) Theewaterskloof	800,001-1M	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Above 1M	\N
district	DC4	2016	Calitzdorp Kannaland	Under 1.5K	757
district	DC4	2016	Calitzdorp Kannaland	1,501-3K	\N
district	DC4	2016	Calitzdorp Kannaland	3,001-5K	\N
district	DC4	2016	Calitzdorp Kannaland	5,001-10K	1599
district	DC4	2016	Calitzdorp Kannaland	10,001-20K	43
district	DC4	2016	Calitzdorp Kannaland	20,001-30K	480
district	DC4	2016	Calitzdorp Kannaland	30,001-40K	\N
district	DC4	2016	Calitzdorp Kannaland	40,001-50K	289
district	DC4	2016	Calitzdorp Kannaland	50,001-100K	61
district	DC4	2016	Calitzdorp Kannaland	100,001-150K	57
district	DC4	2016	Calitzdorp Kannaland	150,001-200K	\N
district	DC4	2016	Calitzdorp Kannaland	200,001-300K	\N
district	DC4	2016	Calitzdorp Kannaland	300,001-500K	\N
district	DC4	2016	Calitzdorp Kannaland	500,001-800K	\N
district	DC4	2016	Calitzdorp Kannaland	800,001-1M	\N
district	DC4	2016	Calitzdorp Kannaland	Above 1M	\N
district	DC6	2016	Calvinia Hantam	Under 1.5K	29400
district	DC6	2016	Calvinia Hantam	1,501-3K	12700
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
municipality	CPT	2016	Cape Town	3,001-5K	351
municipality	CPT	2016	Cape Town	5,001-10K	2328
municipality	CPT	2016	Cape Town	10,001-20K	\N
municipality	CPT	2016	Cape Town	20,001-30K	383
municipality	CPT	2016	Cape Town	30,001-40K	\N
municipality	CPT	2016	Cape Town	40,001-50K	\N
municipality	CPT	2016	Cape Town	50,001-100K	89
municipality	CPT	2016	Cape Town	100,001-150K	\N
municipality	CPT	2016	Cape Town	150,001-200K	21
municipality	CPT	2016	Cape Town	200,001-300K	\N
municipality	CPT	2016	Cape Town	300,001-500K	\N
municipality	CPT	2016	Cape Town	500,001-800K	\N
municipality	CPT	2016	Cape Town	800,001-1M	\N
municipality	CPT	2016	Cape Town	Above 1M	\N
district	DC48	2016	Carletonville Merafong	Under 1.5K	211
district	DC48	2016	Carletonville Merafong	1,501-3K	27
district	DC48	2016	Carletonville Merafong	3,001-5K	293
district	DC10	2016	Aberdeen	3,001-5K	\N
district	DC48	2016	Carletonville Merafong	5,001-10K	7862
district	DC48	2016	Carletonville Merafong	10,001-20K	5149
district	DC48	2016	Carletonville Merafong	20,001-30K	627
district	DC48	2016	Carletonville Merafong	30,001-40K	913
district	DC48	2016	Carletonville Merafong	40,001-50K	1314
district	DC48	2016	Carletonville Merafong	50,001-100K	1042
district	DC48	2016	Carletonville Merafong	100,001-150K	136
district	DC48	2016	Carletonville Merafong	150,001-200K	40
district	DC48	2016	Carletonville Merafong	200,001-300K	160
district	DC48	2016	Carletonville Merafong	300,001-500K	83
district	DC48	2016	Carletonville Merafong	500,001-800K	12
district	DC48	2016	Carletonville Merafong	800,001-1M	20
district	DC48	2016	Carletonville Merafong	Above 1M	49
district	DC7	2016	Carnavon Kareeberg	Under 1.5K	2030
district	DC7	2016	Carnavon Kareeberg	1,501-3K	36575
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
district	DC12	2016	Cathcart Amahlathi	3,001-5K	641
district	DC12	2016	Cathcart Amahlathi	5,001-10K	2390
district	DC12	2016	Cathcart Amahlathi	10,001-20K	\N
district	DC12	2016	Cathcart Amahlathi	20,001-30K	\N
district	DC12	2016	Cathcart Amahlathi	30,001-40K	\N
district	DC12	2016	Cathcart Amahlathi	40,001-50K	\N
district	DC12	2016	Cathcart Amahlathi	50,001-100K	22
district	DC12	2016	Cathcart Amahlathi	100,001-150K	\N
district	DC12	2016	Cathcart Amahlathi	150,001-200K	\N
district	DC12	2016	Cathcart Amahlathi	200,001-300K	\N
district	DC12	2016	Cathcart Amahlathi	300,001-500K	\N
district	DC12	2016	Cathcart Amahlathi	500,001-800K	\N
district	DC12	2016	Cathcart Amahlathi	800,001-1M	\N
district	DC12	2016	Cathcart Amahlathi	Above 1M	\N
district	DC2	2016	Ceres Witzenberg	Under 1.5K	17911
district	DC2	2016	Ceres Witzenberg	1,501-3K	14438
district	DC2	2016	Ceres Witzenberg	3,001-5K	1212
district	DC2	2016	Ceres Witzenberg	5,001-10K	3658
district	DC2	2016	Ceres Witzenberg	10,001-20K	\N
district	DC2	2016	Ceres Witzenberg	20,001-30K	353
district	DC2	2016	Ceres Witzenberg	30,001-40K	\N
district	DC2	2016	Ceres Witzenberg	40,001-50K	229
district	DC2	2016	Ceres Witzenberg	50,001-100K	\N
district	DC2	2016	Ceres Witzenberg	100,001-150K	120
district	DC2	2016	Ceres Witzenberg	150,001-200K	140
district	DC2	2016	Ceres Witzenberg	200,001-300K	\N
district	DC2	2016	Ceres Witzenberg	300,001-500K	\N
district	DC2	2016	Ceres Witzenberg	500,001-800K	\N
district	DC2	2016	Ceres Witzenberg	800,001-1M	\N
district	DC2	2016	Ceres Witzenberg	Above 1M	\N
district	DC1	2016	Clanwilliam Cederberg	Under 1.5K	2271
district	DC1	2016	Clanwilliam Cederberg	1,501-3K	7460
district	DC1	2016	Clanwilliam Cederberg	3,001-5K	1799
district	DC1	2016	Clanwilliam Cederberg	5,001-10K	1548
district	DC1	2016	Clanwilliam Cederberg	10,001-20K	1113
district	DC4	2016	George	Above 1M	\N
district	DC1	2016	Clanwilliam Cederberg	20,001-30K	1576
district	DC1	2016	Clanwilliam Cederberg	30,001-40K	\N
district	DC1	2016	Clanwilliam Cederberg	40,001-50K	\N
district	DC1	2016	Clanwilliam Cederberg	50,001-100K	242
district	DC1	2016	Clanwilliam Cederberg	100,001-150K	53
district	DC1	2016	Clanwilliam Cederberg	150,001-200K	\N
district	DC1	2016	Clanwilliam Cederberg	200,001-300K	\N
district	DC1	2016	Clanwilliam Cederberg	300,001-500K	\N
district	DC1	2016	Clanwilliam Cederberg	500,001-800K	\N
district	DC1	2016	Clanwilliam Cederberg	800,001-1M	\N
district	DC1	2016	Clanwilliam Cederberg	Above 1M	\N
district	DC19	2016	Clocolan Setso	Under 1.5K	\N
district	DC19	2016	Clocolan Setso	1,501-3K	518
district	DC19	2016	Clocolan Setso	3,001-5K	183
district	DC19	2016	Clocolan Setso	5,001-10K	696
district	DC19	2016	Clocolan Setso	10,001-20K	1772
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
district	DC7	2016	Colesberg Umsombomvu	Under 1.5K	7734
district	DC7	2016	Colesberg Umsombomvu	1,501-3K	16558
district	DC7	2016	Colesberg Umsombomvu	3,001-5K	\N
district	DC7	2016	Colesberg Umsombomvu	5,001-10K	3275
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
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	1,501-3K	277
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	3,001-5K	2224
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	5,001-10K	6818
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	10,001-20K	6046
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	20,001-30K	3310
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	30,001-40K	145
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	40,001-50K	82
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	50,001-100K	71
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	100,001-150K	27
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	150,001-200K	33
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	200,001-300K	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	300,001-500K	23
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	500,001-800K	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	800,001-1M	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	Above 1M	\N
district	DC13	2016	Cradock Inxuba Yethemba	Under 1.5K	\N
district	DC13	2016	Cradock Inxuba Yethemba	1,501-3K	3897
district	DC13	2016	Cradock Inxuba Yethemba	3,001-5K	10428
district	DC13	2016	Cradock Inxuba Yethemba	5,001-10K	5977
district	DC13	2016	Cradock Inxuba Yethemba	10,001-20K	\N
district	DC13	2016	Cradock Inxuba Yethemba	20,001-30K	\N
district	DC13	2016	Cradock Inxuba Yethemba	30,001-40K	\N
district	DC13	2016	Cradock Inxuba Yethemba	40,001-50K	559
district	DC13	2016	Cradock Inxuba Yethemba	50,001-100K	508
district	DC13	2016	Cradock Inxuba Yethemba	100,001-150K	\N
district	DC13	2016	Cradock Inxuba Yethemba	150,001-200K	141
district	DC13	2016	Cradock Inxuba Yethemba	200,001-300K	\N
district	DC13	2016	Cradock Inxuba Yethemba	300,001-500K	\N
district	DC13	2016	Cradock Inxuba Yethemba	500,001-800K	\N
district	DC13	2016	Cradock Inxuba Yethemba	800,001-1M	\N
district	DC13	2016	Cradock Inxuba Yethemba	Above 1M	\N
district	DC38	2016	Delareyville Tswaing	Under 1.5K	\N
district	DC38	2016	Delareyville Tswaing	1,501-3K	514
district	DC38	2016	Delareyville Tswaing	3,001-5K	371
district	DC38	2016	Delareyville Tswaing	5,001-10K	8247
district	DC38	2016	Delareyville Tswaing	10,001-20K	11029
district	DC38	2016	Delareyville Tswaing	20,001-30K	694
district	DC38	2016	Delareyville Tswaing	30,001-40K	43
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
district	DC34	2016	Dendron Makhado (Louis Trichardt)	3,001-5K	1329
district	DC34	2016	Dendron Makhado (Louis Trichardt)	5,001-10K	11435
district	DC34	2016	Dendron Makhado (Louis Trichardt)	10,001-20K	3378
district	DC34	2016	Dendron Makhado (Louis Trichardt)	20,001-30K	513
district	DC34	2016	Dendron Makhado (Louis Trichardt)	30,001-40K	385
district	DC34	2016	Dendron Makhado (Louis Trichardt)	40,001-50K	97
district	DC34	2016	Dendron Makhado (Louis Trichardt)	50,001-100K	604
district	DC34	2016	Dendron Makhado (Louis Trichardt)	100,001-150K	267
district	DC34	2016	Dendron Makhado (Louis Trichardt)	150,001-200K	80
district	DC34	2016	Dendron Makhado (Louis Trichardt)	200,001-300K	31
district	DC34	2016	Dendron Makhado (Louis Trichardt)	300,001-500K	22
district	DC34	2016	Dendron Makhado (Louis Trichardt)	500,001-800K	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	800,001-1M	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	Above 1M	\N
district	DC38	2016	Derdepoort	Under 1.5K	\N
district	DC38	2016	Derdepoort	1,501-3K	\N
district	DC38	2016	Derdepoort	3,001-5K	\N
district	DC38	2016	Derdepoort	5,001-10K	5257
district	DC38	2016	Derdepoort	10,001-20K	2710
district	DC38	2016	Derdepoort	20,001-30K	\N
district	DC38	2016	Derdepoort	30,001-40K	\N
district	DC38	2016	Derdepoort	40,001-50K	\N
district	DC38	2016	Derdepoort	50,001-100K	168
district	DC38	2016	Derdepoort	100,001-150K	\N
district	DC38	2016	Derdepoort	150,001-200K	\N
district	DC38	2016	Derdepoort	200,001-300K	\N
district	DC38	2016	Derdepoort	300,001-500K	\N
district	DC38	2016	Derdepoort	500,001-800K	\N
district	DC38	2016	Derdepoort	800,001-1M	\N
district	DC38	2016	Derdepoort	Above 1M	\N
district	DC16	2016	Dewetsdorp Naledi	Under 1.5K	\N
district	DC16	2016	Dewetsdorp Naledi	1,501-3K	\N
district	DC16	2016	Dewetsdorp Naledi	3,001-5K	3306
district	DC16	2016	Dewetsdorp Naledi	5,001-10K	149
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
district	DC7	2016	Douglas Siyancuma	3,001-5K	707
district	DC7	2016	Douglas Siyancuma	5,001-10K	\N
district	DC7	2016	Douglas Siyancuma	10,001-20K	\N
district	DC7	2016	Douglas Siyancuma	20,001-30K	\N
district	DC7	2016	Douglas Siyancuma	30,001-40K	\N
district	DC7	2016	Douglas Siyancuma	40,001-50K	\N
district	DC7	2016	Douglas Siyancuma	50,001-100K	\N
district	DC7	2016	Douglas Siyancuma	100,001-150K	57
district	DC7	2016	Douglas Siyancuma	150,001-200K	139
district	DC7	2016	Douglas Siyancuma	200,001-300K	39
district	DC7	2016	Douglas Siyancuma	300,001-500K	\N
district	DC7	2016	Douglas Siyancuma	500,001-800K	\N
district	DC7	2016	Douglas Siyancuma	800,001-1M	\N
district	DC7	2016	Douglas Siyancuma	Above 1M	\N
district	DC16	2016	Edenburg Kopanong	Under 1.5K	\N
district	DC16	2016	Edenburg Kopanong	1,501-3K	1937
district	DC16	2016	Edenburg Kopanong	3,001-5K	453
district	DC16	2016	Edenburg Kopanong	5,001-10K	855
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
district	DC14	2016	Elliot Sakhiszwe	1,501-3K	136
district	DC14	2016	Elliot Sakhiszwe	3,001-5K	1422
district	DC14	2016	Elliot Sakhiszwe	5,001-10K	1167
district	DC14	2016	Elliot Sakhiszwe	10,001-20K	\N
district	DC14	2016	Elliot Sakhiszwe	20,001-30K	531
district	DC14	2016	Elliot Sakhiszwe	30,001-40K	\N
district	DC14	2016	Elliot Sakhiszwe	40,001-50K	37
district	DC14	2016	Elliot Sakhiszwe	50,001-100K	12
district	DC14	2016	Elliot Sakhiszwe	100,001-150K	\N
district	DC14	2016	Elliot Sakhiszwe	150,001-200K	\N
district	DC14	2016	Elliot Sakhiszwe	200,001-300K	\N
district	DC14	2016	Elliot Sakhiszwe	300,001-500K	\N
district	DC14	2016	Elliot Sakhiszwe	500,001-800K	\N
district	DC14	2016	Elliot Sakhiszwe	800,001-1M	\N
district	DC14	2016	Elliot Sakhiszwe	Above 1M	\N
district	DC36	2016	Ellisras Lephalale	Under 1.5K	\N
district	DC36	2016	Ellisras Lephalale	1,501-3K	1087
district	DC36	2016	Ellisras Lephalale	3,001-5K	1185
district	DC36	2016	Ellisras Lephalale	5,001-10K	8789
district	DC36	2016	Ellisras Lephalale	10,001-20K	5859
district	DC36	2016	Ellisras Lephalale	20,001-30K	\N
district	DC36	2016	Ellisras Lephalale	30,001-40K	338
district	DC36	2016	Ellisras Lephalale	40,001-50K	23
district	DC36	2016	Ellisras Lephalale	50,001-100K	67
district	DC36	2016	Ellisras Lephalale	100,001-150K	\N
district	DC36	2016	Ellisras Lephalale	150,001-200K	\N
district	DC36	2016	Ellisras Lephalale	200,001-300K	\N
district	DC36	2016	Ellisras Lephalale	300,001-500K	22
district	DC36	2016	Ellisras Lephalale	500,001-800K	\N
district	DC36	2016	Ellisras Lephalale	800,001-1M	\N
district	DC36	2016	Ellisras Lephalale	Above 1M	\N
municipality	DC40	2016	Ewbank	Under 1.5K	\N
municipality	DC40	2016	Ewbank	1,501-3K	\N
municipality	DC40	2016	Ewbank	3,001-5K	2730
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
district	DC16	2016	Fauresmith Kopanong	1,501-3K	776
district	DC16	2016	Fauresmith Kopanong	3,001-5K	6247
district	DC16	2016	Fauresmith Kopanong	5,001-10K	4618
district	DC16	2016	Fauresmith Kopanong	10,001-20K	343
district	DC16	2016	Fauresmith Kopanong	20,001-30K	\N
district	DC16	2016	Fauresmith Kopanong	30,001-40K	\N
district	DC10	2016	Aberdeen	5,001-10K	\N
district	DC16	2016	Fauresmith Kopanong	40,001-50K	\N
district	DC16	2016	Fauresmith Kopanong	50,001-100K	117
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
district	DC19	2016	Ficksburg Setso	5,001-10K	2356
district	DC19	2016	Ficksburg Setso	10,001-20K	1405
district	DC19	2016	Ficksburg Setso	20,001-30K	\N
district	DC19	2016	Ficksburg Setso	30,001-40K	\N
district	DC19	2016	Ficksburg Setso	40,001-50K	80
district	DC19	2016	Ficksburg Setso	50,001-100K	\N
district	DC19	2016	Ficksburg Setso	100,001-150K	\N
district	DC19	2016	Ficksburg Setso	150,001-200K	\N
district	DC19	2016	Ficksburg Setso	200,001-300K	\N
district	DC19	2016	Ficksburg Setso	300,001-500K	\N
district	DC19	2016	Ficksburg Setso	500,001-800K	\N
district	DC19	2016	Ficksburg Setso	800,001-1M	\N
district	DC19	2016	Ficksburg Setso	Above 1M	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	Under 1.5K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	1,501-3K	702
district	DC12	2016	Fort Beaufort Raymond Mhlaba	3,001-5K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	5,001-10K	723
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
district	DC19	2016	Fouriesburg Dikabeng	5,001-10K	405
district	DC19	2016	Fouriesburg Dikabeng	10,001-20K	643
district	DC19	2016	Fouriesburg Dikabeng	20,001-30K	550
district	DC19	2016	Fouriesburg Dikabeng	30,001-40K	\N
district	DC19	2016	Fouriesburg Dikabeng	40,001-50K	\N
district	DC19	2016	Fouriesburg Dikabeng	50,001-100K	\N
district	DC19	2016	Fouriesburg Dikabeng	100,001-150K	\N
district	DC19	2016	Fouriesburg Dikabeng	150,001-200K	\N
district	DC19	2016	Fouriesburg Dikabeng	200,001-300K	88
district	DC19	2016	Fouriesburg Dikabeng	300,001-500K	\N
district	DC19	2016	Fouriesburg Dikabeng	500,001-800K	\N
district	DC19	2016	Fouriesburg Dikabeng	800,001-1M	\N
district	DC19	2016	Fouriesburg Dikabeng	Above 1M	\N
district	DC20	2016	Frankfort Mafube	Under 1.5K	\N
district	DC20	2016	Frankfort Mafube	1,501-3K	\N
district	DC20	2016	Frankfort Mafube	3,001-5K	\N
district	DC20	2016	Frankfort Mafube	5,001-10K	519
district	DC20	2016	Frankfort Mafube	10,001-20K	5380
district	DC20	2016	Frankfort Mafube	20,001-30K	1612
district	DC20	2016	Frankfort Mafube	30,001-40K	517
district	DC20	2016	Frankfort Mafube	40,001-50K	\N
district	DC20	2016	Frankfort Mafube	50,001-100K	\N
district	DC20	2016	Frankfort Mafube	100,001-150K	\N
district	DC20	2016	Frankfort Mafube	150,001-200K	\N
district	DC20	2016	Frankfort Mafube	200,001-300K	\N
district	DC20	2016	Frankfort Mafube	300,001-500K	\N
district	DC20	2016	Frankfort Mafube	500,001-800K	\N
district	DC20	2016	Frankfort Mafube	800,001-1M	\N
district	DC20	2016	Frankfort Mafube	Above 1M	\N
district	DC6	2016	Fraserburg Karoo Hoogland	Under 1.5K	19598
district	DC6	2016	Fraserburg Karoo Hoogland	1,501-3K	6461
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
district	DC4	2016	George	Under 1.5K	694
district	DC4	2016	George	1,501-3K	\N
district	DC4	2016	George	3,001-5K	61
district	DC4	2016	George	5,001-10K	295
district	DC4	2016	George	10,001-20K	520
district	DC4	2016	George	20,001-30K	216
district	DC4	2016	George	30,001-40K	99
district	DC4	2016	George	40,001-50K	454
district	DC4	2016	George	50,001-100K	567
district	DC4	2016	George	100,001-150K	158
district	DC4	2016	George	150,001-200K	142
district	DC4	2016	George	200,001-300K	24
district	DC4	2016	George	300,001-500K	35
district	DC4	2016	George	500,001-800K	\N
district	DC4	2016	George	800,001-1M	\N
district	DC4	2016	George	Above 1M	\N
district	DC6	2016	Gordonia	Under 1.5K	33314
district	DC6	2016	Gordonia	1,501-3K	64579
district	DC6	2016	Gordonia	3,001-5K	13469
district	DC6	2016	Gordonia	5,001-10K	359
district	DC6	2016	Gordonia	10,001-20K	23
district	DC6	2016	Gordonia	20,001-30K	\N
district	DC6	2016	Gordonia	30,001-40K	\N
district	DC6	2016	Gordonia	40,001-50K	\N
district	DC6	2016	Gordonia	50,001-100K	14
district	DC6	2016	Gordonia	100,001-150K	22
district	DC6	2016	Gordonia	150,001-200K	16
district	DC6	2016	Gordonia	200,001-300K	\N
district	DC6	2016	Gordonia	300,001-500K	\N
district	DC6	2016	Gordonia	500,001-800K	\N
district	DC6	2016	Gordonia	800,001-1M	\N
district	DC6	2016	Gordonia	Above 1M	\N
district	DC10	2016	Graaff-Reinet Camdeboo	Under 1.5K	1937
district	DC10	2016	Graaff-Reinet Camdeboo	1,501-3K	1937
district	DC10	2016	Graaff-Reinet Camdeboo	3,001-5K	5804
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
district	DC7	2016	Hanover Emthanjeni	1,501-3K	5401
district	DC7	2016	Hanover Emthanjeni	3,001-5K	857
district	DC7	2016	Hanover Emthanjeni	5,001-10K	2218
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
district	DC19	2016	Harrismith Maluti-A-Phofung	3,001-5K	428
district	DC19	2016	Harrismith Maluti-A-Phofung	5,001-10K	4895
district	DC19	2016	Harrismith Maluti-A-Phofung	10,001-20K	5877
district	DC19	2016	Harrismith Maluti-A-Phofung	20,001-30K	534
district	DC19	2016	Harrismith Maluti-A-Phofung	30,001-40K	2277
district	DC19	2016	Harrismith Maluti-A-Phofung	40,001-50K	19
district	DC19	2016	Harrismith Maluti-A-Phofung	50,001-100K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	100,001-150K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	150,001-200K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	200,001-300K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	300,001-500K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	500,001-800K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	800,001-1M	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	Above 1M	\N
district	DC20	2016	Heilbron Ngwathe	Under 1.5K	\N
district	DC20	2016	Heilbron Ngwathe	1,501-3K	349
district	DC20	2016	Heilbron Ngwathe	3,001-5K	\N
district	DC20	2016	Heilbron Ngwathe	5,001-10K	2052
district	DC20	2016	Heilbron Ngwathe	10,001-20K	4093
district	DC20	2016	Heilbron Ngwathe	20,001-30K	2043
district	DC20	2016	Heilbron Ngwathe	30,001-40K	85
district	DC20	2016	Heilbron Ngwathe	40,001-50K	\N
district	DC20	2016	Heilbron Ngwathe	50,001-100K	25
district	DC20	2016	Heilbron Ngwathe	100,001-150K	\N
district	DC20	2016	Heilbron Ngwathe	150,001-200K	\N
district	DC20	2016	Heilbron Ngwathe	200,001-300K	\N
district	DC20	2016	Heilbron Ngwathe	300,001-500K	\N
district	DC20	2016	Heilbron Ngwathe	500,001-800K	\N
district	DC20	2016	Heilbron Ngwathe	800,001-1M	\N
district	DC20	2016	Heilbron Ngwathe	Above 1M	\N
district	DC24	2016	Helpmekaar uMzinyathi	Under 1.5K	\N
district	DC24	2016	Helpmekaar uMzinyathi	1,501-3K	\N
district	DC24	2016	Helpmekaar uMzinyathi	3,001-5K	116
district	DC24	2016	Helpmekaar uMzinyathi	5,001-10K	2112
district	DC24	2016	Helpmekaar uMzinyathi	10,001-20K	824
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
district	DC18	2016	Hoopstad Tswelopele	10,001-20K	726
district	DC18	2016	Hoopstad Tswelopele	20,001-30K	733
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
district	DC7	2016	Hopetown Thembelihle	1,501-3K	9105
district	DC7	2016	Hopetown Thembelihle	3,001-5K	\N
district	DC7	2016	Hopetown Thembelihle	5,001-10K	491
district	DC7	2016	Hopetown Thembelihle	10,001-20K	\N
district	DC7	2016	Hopetown Thembelihle	20,001-30K	491
district	DC7	2016	Hopetown Thembelihle	30,001-40K	\N
district	DC7	2016	Hopetown Thembelihle	40,001-50K	\N
district	DC7	2016	Hopetown Thembelihle	50,001-100K	\N
district	DC7	2016	Hopetown Thembelihle	100,001-150K	423
district	DC7	2016	Hopetown Thembelihle	150,001-200K	892
district	DC7	2016	Hopetown Thembelihle	200,001-300K	278
district	DC7	2016	Hopetown Thembelihle	300,001-500K	\N
district	DC7	2016	Hopetown Thembelihle	500,001-800K	\N
district	DC7	2016	Hopetown Thembelihle	800,001-1M	\N
district	DC7	2016	Hopetown Thembelihle	Above 1M	\N
district	DC10	2016	Humansdorp Kouga	Under 1.5K	2184
district	DC10	2016	Humansdorp Kouga	1,501-3K	1287
district	DC10	2016	Humansdorp Kouga	3,001-5K	\N
district	DC10	2016	Humansdorp Kouga	5,001-10K	152
district	DC10	2016	Humansdorp Kouga	10,001-20K	2254
district	DC10	2016	Humansdorp Kouga	20,001-30K	124
district	DC10	2016	Humansdorp Kouga	30,001-40K	592
district	DC10	2016	Humansdorp Kouga	40,001-50K	190
district	DC10	2016	Humansdorp Kouga	50,001-100K	828
district	DC10	2016	Humansdorp Kouga	100,001-150K	21
district	DC10	2016	Humansdorp Kouga	150,001-200K	\N
district	DC10	2016	Humansdorp Kouga	200,001-300K	21
district	DC10	2016	Humansdorp Kouga	300,001-500K	40
district	DC10	2016	Humansdorp Kouga	500,001-800K	47
district	DC10	2016	Humansdorp Kouga	800,001-1M	\N
district	DC10	2016	Humansdorp Kouga	Above 1M	12
district	DC16	2016	Jacobsdal Letsemeng	Under 1.5K	\N
district	DC16	2016	Jacobsdal Letsemeng	1,501-3K	705
district	DC16	2016	Jacobsdal Letsemeng	3,001-5K	3382
district	DC16	2016	Jacobsdal Letsemeng	5,001-10K	2501
district	DC16	2016	Jacobsdal Letsemeng	10,001-20K	467
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
district	DC10	2016	Jansenville Ikwezi	1,501-3K	3927
district	DC10	2016	Jansenville Ikwezi	3,001-5K	2288
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
district	DC10	2016	Joubertina Kou-Kamma	Under 1.5K	499
district	DC10	2016	Joubertina Kou-Kamma	1,501-3K	296
district	DC10	2016	Joubertina Kou-Kamma	3,001-5K	\N
district	DC10	2016	Joubertina Kou-Kamma	5,001-10K	89
district	DC10	2016	Joubertina Kou-Kamma	10,001-20K	150
district	DC10	2016	Joubertina Kou-Kamma	20,001-30K	\N
district	DC10	2016	Joubertina Kou-Kamma	30,001-40K	36
district	DC10	2016	Joubertina Kou-Kamma	40,001-50K	32
district	DC10	2016	Joubertina Kou-Kamma	50,001-100K	12
district	DC10	2016	Joubertina Kou-Kamma	100,001-150K	\N
district	DC10	2016	Joubertina Kou-Kamma	150,001-200K	\N
district	DC10	2016	Joubertina Kou-Kamma	200,001-300K	\N
district	DC10	2016	Joubertina Kou-Kamma	300,001-500K	95
district	DC10	2016	Joubertina Kou-Kamma	500,001-800K	\N
district	DC10	2016	Joubertina Kou-Kamma	800,001-1M	\N
district	DC10	2016	Joubertina Kou-Kamma	Above 1M	\N
district	DC27	2016	Jozini Mkuze	Under 1.5K	\N
district	DC27	2016	Jozini Mkuze	1,501-3K	\N
district	DC27	2016	Jozini Mkuze	3,001-5K	\N
district	DC27	2016	Jozini Mkuze	5,001-10K	\N
district	DC27	2016	Jozini Mkuze	10,001-20K	21
district	DC27	2016	Jozini Mkuze	20,001-30K	\N
district	DC27	2016	Jozini Mkuze	30,001-40K	14
district	DC27	2016	Jozini Mkuze	40,001-50K	451
district	DC27	2016	Jozini Mkuze	50,001-100K	20
district	DC27	2016	Jozini Mkuze	100,001-150K	\N
district	DC27	2016	Jozini Mkuze	150,001-200K	\N
district	DC27	2016	Jozini Mkuze	200,001-300K	\N
district	DC27	2016	Jozini Mkuze	300,001-500K	\N
district	DC27	2016	Jozini Mkuze	500,001-800K	\N
district	DC27	2016	Jozini Mkuze	800,001-1M	\N
district	DC27	2016	Jozini Mkuze	Above 1M	\N
district	DC8	2016	Kenhardt Kai !Garib	Under 1.5K	97346
district	DC8	2016	Kenhardt Kai !Garib	1,501-3K	8154
district	DC8	2016	Kenhardt Kai !Garib	3,001-5K	\N
district	DC8	2016	Kenhardt Kai !Garib	5,001-10K	852
district	DC8	2016	Kenhardt Kai !Garib	10,001-20K	44
district	DC8	2016	Kenhardt Kai !Garib	20,001-30K	10
district	DC8	2016	Kenhardt Kai !Garib	30,001-40K	\N
district	DC8	2016	Kenhardt Kai !Garib	40,001-50K	\N
district	DC8	2016	Kenhardt Kai !Garib	50,001-100K	12
district	DC8	2016	Kenhardt Kai !Garib	100,001-150K	27
district	DC8	2016	Kenhardt Kai !Garib	150,001-200K	\N
district	DC8	2016	Kenhardt Kai !Garib	200,001-300K	45
district	DC8	2016	Kenhardt Kai !Garib	300,001-500K	12
district	DC8	2016	Kenhardt Kai !Garib	500,001-800K	\N
district	DC8	2016	Kenhardt Kai !Garib	800,001-1M	\N
district	DC8	2016	Kenhardt Kai !Garib	Above 1M	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Under 1.5K	4323
district	DC9	2016	Kimberley / HAY Frances Baard	1,501-3K	25692
district	DC9	2016	Kimberley / HAY Frances Baard	3,001-5K	30246
district	DC9	2016	Kimberley / HAY Frances Baard	5,001-10K	2886
district	DC9	2016	Kimberley / HAY Frances Baard	10,001-20K	917
district	DC4	2016	Knysna	1,501-3K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	20,001-30K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	30,001-40K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	40,001-50K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	50,001-100K	477
district	DC9	2016	Kimberley / HAY Frances Baard	100,001-150K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	150,001-200K	29
district	DC9	2016	Kimberley / HAY Frances Baard	200,001-300K	86
district	DC9	2016	Kimberley / HAY Frances Baard	300,001-500K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	500,001-800K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	800,001-1M	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Above 1M	46
municipality	BUF	2016	King Williams Town Baffalo City	Under 1.5K	508
municipality	BUF	2016	King Williams Town Baffalo City	1,501-3K	2560
municipality	BUF	2016	King Williams Town Baffalo City	3,001-5K	\N
municipality	BUF	2016	King Williams Town Baffalo City	5,001-10K	2547
municipality	BUF	2016	King Williams Town Baffalo City	10,001-20K	400
municipality	BUF	2016	King Williams Town Baffalo City	20,001-30K	\N
municipality	BUF	2016	King Williams Town Baffalo City	30,001-40K	\N
municipality	BUF	2016	King Williams Town Baffalo City	40,001-50K	\N
municipality	BUF	2016	King Williams Town Baffalo City	50,001-100K	\N
municipality	BUF	2016	King Williams Town Baffalo City	100,001-150K	\N
municipality	BUF	2016	King Williams Town Baffalo City	150,001-200K	\N
municipality	BUF	2016	King Williams Town Baffalo City	200,001-300K	\N
municipality	BUF	2016	King Williams Town Baffalo City	300,001-500K	183
municipality	BUF	2016	King Williams Town Baffalo City	500,001-800K	\N
municipality	BUF	2016	King Williams Town Baffalo City	800,001-1M	\N
municipality	BUF	2016	King Williams Town Baffalo City	Above 1M	\N
district	DC4	2016	Knysna	Under 1.5K	\N
district	DC4	2016	Knysna	1,501-3K	\N
district	DC4	2016	Knysna	3,001-5K	\N
district	DC4	2016	Knysna	5,001-10K	276
district	DC4	2016	Knysna	10,001-20K	2106
district	DC4	2016	Knysna	20,001-30K	\N
district	DC4	2016	Knysna	30,001-40K	\N
district	DC4	2016	Knysna	40,001-50K	223
district	DC4	2016	Knysna	50,001-100K	678
district	DC4	2016	Knysna	100,001-150K	144
district	DC4	2016	Knysna	150,001-200K	55
district	DC4	2016	Knysna	200,001-300K	25
district	DC4	2016	Knysna	300,001-500K	21
district	DC4	2016	Knysna	500,001-800K	11
district	DC4	2016	Knysna	800,001-1M	\N
district	DC4	2016	Knysna	Above 1M	\N
district	DC43	2016	Kokstad	Under 1.5K	\N
district	DC43	2016	Kokstad	1,501-3K	\N
district	DC43	2016	Kokstad	3,001-5K	646
district	DC43	2016	Kokstad	5,001-10K	490
district	DC43	2016	Kokstad	10,001-20K	7026
district	DC43	2016	Kokstad	20,001-30K	1545
district	DC43	2016	Kokstad	30,001-40K	76
district	DC43	2016	Kokstad	40,001-50K	\N
district	DC43	2016	Kokstad	50,001-100K	227
district	DC43	2016	Kokstad	100,001-150K	18
district	DC43	2016	Kokstad	150,001-200K	\N
district	DC43	2016	Kokstad	200,001-300K	10
district	DC43	2016	Kokstad	300,001-500K	\N
district	DC43	2016	Kokstad	500,001-800K	\N
district	DC43	2016	Kokstad	800,001-1M	\N
district	DC43	2016	Kokstad	Above 1M	\N
district	DC32	2016	Komatipoort Nkomazi	Under 1.5K	\N
district	DC32	2016	Komatipoort Nkomazi	1,501-3K	291
district	DC32	2016	Komatipoort Nkomazi	3,001-5K	\N
district	DC32	2016	Komatipoort Nkomazi	5,001-10K	975
district	DC32	2016	Komatipoort Nkomazi	10,001-20K	1048
district	DC32	2016	Komatipoort Nkomazi	20,001-30K	184
district	DC32	2016	Komatipoort Nkomazi	30,001-40K	157
district	DC32	2016	Komatipoort Nkomazi	40,001-50K	\N
district	DC32	2016	Komatipoort Nkomazi	50,001-100K	4690
district	DC32	2016	Komatipoort Nkomazi	100,001-150K	473
district	DC32	2016	Komatipoort Nkomazi	150,001-200K	366
district	DC32	2016	Komatipoort Nkomazi	200,001-300K	57
district	DC32	2016	Komatipoort Nkomazi	300,001-500K	103
district	DC32	2016	Komatipoort Nkomazi	500,001-800K	\N
district	DC32	2016	Komatipoort Nkomazi	800,001-1M	\N
district	DC32	2016	Komatipoort Nkomazi	Above 1M	\N
district	DC12	2016	Komga Great Kei	Under 1.5K	\N
district	DC12	2016	Komga Great Kei	1,501-3K	243
district	DC12	2016	Komga Great Kei	3,001-5K	\N
district	DC12	2016	Komga Great Kei	5,001-10K	2819
district	DC12	2016	Komga Great Kei	10,001-20K	\N
district	DC12	2016	Komga Great Kei	20,001-30K	87
district	DC12	2016	Komga Great Kei	30,001-40K	419
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
district	DC20	2016	Koppies Ngwathe	5,001-10K	2247
district	DC20	2016	Koppies Ngwathe	10,001-20K	1166
district	DC20	2016	Koppies Ngwathe	20,001-30K	174
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
district	DC20	2016	Kroonstad Moqhaka	5,001-10K	4381
district	DC20	2016	Kroonstad Moqhaka	10,001-20K	3537
district	DC20	2016	Kroonstad Moqhaka	20,001-30K	519
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
district	DC45	2016	Kuruman Ga-Segonyana	Under 1.5K	2250
district	DC45	2016	Kuruman Ga-Segonyana	1,501-3K	31409
district	DC45	2016	Kuruman Ga-Segonyana	3,001-5K	12386
district	DC45	2016	Kuruman Ga-Segonyana	5,001-10K	8637
district	DC45	2016	Kuruman Ga-Segonyana	10,001-20K	712
district	DC45	2016	Kuruman Ga-Segonyana	20,001-30K	\N
district	DC45	2016	Kuruman Ga-Segonyana	30,001-40K	\N
district	DC45	2016	Kuruman Ga-Segonyana	40,001-50K	\N
district	DC45	2016	Kuruman Ga-Segonyana	50,001-100K	60
district	DC45	2016	Kuruman Ga-Segonyana	100,001-150K	\N
district	DC45	2016	Kuruman Ga-Segonyana	150,001-200K	\N
district	DC45	2016	Kuruman Ga-Segonyana	200,001-300K	300
district	DC45	2016	Kuruman Ga-Segonyana	300,001-500K	\N
district	DC45	2016	Kuruman Ga-Segonyana	500,001-800K	\N
district	DC45	2016	Kuruman Ga-Segonyana	800,001-1M	\N
district	DC45	2016	Kuruman Ga-Segonyana	Above 1M	\N
district	DC4	2016	Ladismith Kannaland	Under 1.5K	4236
district	DC4	2016	Ladismith Kannaland	1,501-3K	2703
district	DC4	2016	Ladismith Kannaland	3,001-5K	230
district	DC4	2016	Ladismith Kannaland	5,001-10K	777
district	DC4	2016	Ladismith Kannaland	10,001-20K	236
district	DC4	2016	Ladismith Kannaland	20,001-30K	69
district	DC4	2016	Ladismith Kannaland	30,001-40K	58
district	DC4	2016	Ladismith Kannaland	40,001-50K	\N
district	DC4	2016	Ladismith Kannaland	50,001-100K	32
district	DC4	2016	Ladismith Kannaland	100,001-150K	\N
district	DC4	2016	Ladismith Kannaland	150,001-200K	18
district	DC4	2016	Ladismith Kannaland	200,001-300K	\N
district	DC4	2016	Ladismith Kannaland	300,001-500K	\N
district	DC4	2016	Ladismith Kannaland	500,001-800K	\N
district	DC4	2016	Ladismith Kannaland	800,001-1M	\N
district	DC4	2016	Ladismith Kannaland	Above 1M	\N
district	DC19	2016	Ladybrand Mantsopa	Under 1.5K	714
district	DC19	2016	Ladybrand Mantsopa	1,501-3K	\N
district	DC19	2016	Ladybrand Mantsopa	3,001-5K	1430
district	DC19	2016	Ladybrand Mantsopa	5,001-10K	678
district	DC19	2016	Ladybrand Mantsopa	10,001-20K	1775
district	DC19	2016	Ladybrand Mantsopa	20,001-30K	223
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
district	DC23	2016	Ladysmith Emnambithi	3,001-5K	1243
district	DC23	2016	Ladysmith Emnambithi	5,001-10K	7065
district	DC23	2016	Ladysmith Emnambithi	10,001-20K	3075
district	DC23	2016	Ladysmith Emnambithi	20,001-30K	122
district	DC23	2016	Ladysmith Emnambithi	30,001-40K	\N
district	DC23	2016	Ladysmith Emnambithi	40,001-50K	133
district	DC23	2016	Ladysmith Emnambithi	50,001-100K	87
district	DC23	2016	Ladysmith Emnambithi	100,001-150K	\N
district	DC23	2016	Ladysmith Emnambithi	150,001-200K	\N
district	DC23	2016	Ladysmith Emnambithi	200,001-300K	20
district	DC23	2016	Ladysmith Emnambithi	300,001-500K	\N
district	DC23	2016	Ladysmith Emnambithi	500,001-800K	\N
district	DC23	2016	Ladysmith Emnambithi	800,001-1M	\N
district	DC23	2016	Ladysmith Emnambithi	Above 1M	\N
district	DC5	2016	Laingsburg	Under 1.5K	1679
district	DC5	2016	Laingsburg	1,501-3K	1858
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
district	DC30	2016	Leandra Gonovan Mbeki	Under 1.5K	253
district	DC30	2016	Leandra Gonovan Mbeki	1,501-3K	\N
district	DC30	2016	Leandra Gonovan Mbeki	3,001-5K	\N
district	DC30	2016	Leandra Gonovan Mbeki	5,001-10K	382
district	DC30	2016	Leandra Gonovan Mbeki	10,001-20K	6908
district	DC30	2016	Leandra Gonovan Mbeki	20,001-30K	1351
district	DC30	2016	Leandra Gonovan Mbeki	30,001-40K	1160
district	DC30	2016	Leandra Gonovan Mbeki	40,001-50K	648
district	DC30	2016	Leandra Gonovan Mbeki	50,001-100K	139
district	DC30	2016	Leandra Gonovan Mbeki	100,001-150K	158
district	DC30	2016	Leandra Gonovan Mbeki	150,001-200K	\N
district	DC30	2016	Leandra Gonovan Mbeki	200,001-300K	20
district	DC30	2016	Leandra Gonovan Mbeki	300,001-500K	\N
district	DC30	2016	Leandra Gonovan Mbeki	500,001-800K	\N
district	DC30	2016	Leandra Gonovan Mbeki	800,001-1M	\N
district	DC30	2016	Leandra Gonovan Mbeki	Above 1M	\N
district	DC19	2016	Lindley Nketoana	Under 1.5K	\N
district	DC19	2016	Lindley Nketoana	1,501-3K	\N
district	DC19	2016	Lindley Nketoana	3,001-5K	\N
district	DC19	2016	Lindley Nketoana	5,001-10K	7316
district	DC19	2016	Lindley Nketoana	10,001-20K	4742
district	DC19	2016	Lindley Nketoana	20,001-30K	1004
district	DC19	2016	Lindley Nketoana	30,001-40K	23
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
district	DC26	2016	Louwsburg Abaqulusi	1,501-3K	1836
district	DC26	2016	Louwsburg Abaqulusi	3,001-5K	\N
district	DC26	2016	Louwsburg Abaqulusi	5,001-10K	1885
district	DC26	2016	Louwsburg Abaqulusi	10,001-20K	2642
district	DC26	2016	Louwsburg Abaqulusi	20,001-30K	5900
district	DC26	2016	Louwsburg Abaqulusi	30,001-40K	\N
district	DC26	2016	Louwsburg Abaqulusi	40,001-50K	\N
district	DC26	2016	Louwsburg Abaqulusi	50,001-100K	\N
district	DC26	2016	Louwsburg Abaqulusi	100,001-150K	389
district	DC26	2016	Louwsburg Abaqulusi	150,001-200K	\N
district	DC26	2016	Louwsburg Abaqulusi	200,001-300K	\N
district	DC26	2016	Louwsburg Abaqulusi	300,001-500K	\N
district	DC26	2016	Louwsburg Abaqulusi	500,001-800K	\N
district	DC26	2016	Louwsburg Abaqulusi	800,001-1M	\N
district	DC26	2016	Louwsburg Abaqulusi	Above 1M	\N
district	DC14	2016	Maclear Elundini	Under 1.5K	\N
district	DC14	2016	Maclear Elundini	1,501-3K	3622
district	DC14	2016	Maclear Elundini	3,001-5K	755
district	DC14	2016	Maclear Elundini	5,001-10K	767
district	DC14	2016	Maclear Elundini	10,001-20K	1764
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
district	DC38	2016	Mahikeng	Under 1.5K	1486
district	DC38	2016	Mahikeng	1,501-3K	428
district	DC38	2016	Mahikeng	3,001-5K	2182
district	DC38	2016	Mahikeng	5,001-10K	3443
district	DC38	2016	Mahikeng	10,001-20K	1510
district	DC38	2016	Mahikeng	20,001-30K	\N
district	DC38	2016	Mahikeng	30,001-40K	18
district	DC38	2016	Mahikeng	40,001-50K	11
district	DC38	2016	Mahikeng	50,001-100K	17
district	DC38	2016	Mahikeng	100,001-150K	\N
district	DC38	2016	Mahikeng	150,001-200K	\N
district	DC38	2016	Mahikeng	200,001-300K	\N
district	DC38	2016	Mahikeng	300,001-500K	\N
district	DC38	2016	Mahikeng	500,001-800K	\N
district	DC38	2016	Mahikeng	800,001-1M	\N
district	DC38	2016	Mahikeng	Above 1M	\N
district	DC1	2016	Malmesbury Swartland	Under 1.5K	171
district	DC1	2016	Malmesbury Swartland	1,501-3K	3340
district	DC1	2016	Malmesbury Swartland	3,001-5K	\N
district	DC1	2016	Malmesbury Swartland	5,001-10K	1174
district	DC1	2016	Malmesbury Swartland	10,001-20K	3280
district	DC1	2016	Malmesbury Swartland	20,001-30K	1459
district	DC1	2016	Malmesbury Swartland	30,001-40K	1026
district	DC1	2016	Malmesbury Swartland	40,001-50K	1177
district	DC1	2016	Malmesbury Swartland	50,001-100K	1544
district	DC1	2016	Malmesbury Swartland	100,001-150K	235
district	DC1	2016	Malmesbury Swartland	150,001-200K	629
district	DC1	2016	Malmesbury Swartland	200,001-300K	139
district	DC1	2016	Malmesbury Swartland	300,001-500K	10
district	DC1	2016	Malmesbury Swartland	500,001-800K	\N
district	DC1	2016	Malmesbury Swartland	800,001-1M	\N
district	DC1	2016	Malmesbury Swartland	Above 1M	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	Under 1.5K	46
district	DC37	2016	Marikana (Rustenburg) Bonjala	1,501-3K	198
district	DC37	2016	Marikana (Rustenburg) Bonjala	3,001-5K	3155
district	DC37	2016	Marikana (Rustenburg) Bonjala	5,001-10K	1861
district	DC37	2016	Marikana (Rustenburg) Bonjala	10,001-20K	3816
district	DC37	2016	Marikana (Rustenburg) Bonjala	20,001-30K	1788
district	DC37	2016	Marikana (Rustenburg) Bonjala	30,001-40K	2030
district	DC37	2016	Marikana (Rustenburg) Bonjala	40,001-50K	1641
district	DC37	2016	Marikana (Rustenburg) Bonjala	50,001-100K	3329
district	DC37	2016	Marikana (Rustenburg) Bonjala	100,001-150K	746
district	DC37	2016	Marikana (Rustenburg) Bonjala	150,001-200K	181
district	DC37	2016	Marikana (Rustenburg) Bonjala	200,001-300K	108
district	DC37	2016	Marikana (Rustenburg) Bonjala	300,001-500K	172
district	DC37	2016	Marikana (Rustenburg) Bonjala	500,001-800K	86
district	DC37	2016	Marikana (Rustenburg) Bonjala	800,001-1M	60
district	DC37	2016	Marikana (Rustenburg) Bonjala	Above 1M	\N
district	DC36	2016	Marken	Under 1.5K	\N
district	DC36	2016	Marken	1,501-3K	446
district	DC36	2016	Marken	3,001-5K	1279
district	DC36	2016	Marken	5,001-10K	10801
district	DC36	2016	Marken	10,001-20K	2485
district	DC36	2016	Marken	20,001-30K	2859
district	DC36	2016	Marken	30,001-40K	\N
district	DC36	2016	Marken	40,001-50K	\N
district	DC36	2016	Marken	50,001-100K	93
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
district	DC19	2016	Marquard Setso	5,001-10K	3448
district	DC19	2016	Marquard Setso	10,001-20K	1379
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
district	DC13	2016	Middelburg EC Inxuba Yethemba	1,501-3K	8815
district	DC13	2016	Middelburg EC Inxuba Yethemba	3,001-5K	12282
district	DC13	2016	Middelburg EC Inxuba Yethemba	5,001-10K	1487
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
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Under 1.5K	706
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	1,501-3K	614
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	3,001-5K	1808
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	5,001-10K	10042
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	10,001-20K	4768
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	20,001-30K	9937
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	30,001-40K	1308
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	40,001-50K	805
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	50,001-100K	1791
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	100,001-150K	1609
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	150,001-200K	204
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	200,001-300K	443
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	300,001-500K	316
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	500,001-800K	11
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	800,001-1M	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Above 1M	\N
district	DC39	2016	Moloporivier Bophirima	Under 1.5K	\N
district	DC39	2016	Moloporivier Bophirima	1,501-3K	\N
district	DC39	2016	Moloporivier Bophirima	3,001-5K	\N
district	DC39	2016	Moloporivier Bophirima	5,001-10K	7191
district	DC39	2016	Moloporivier Bophirima	10,001-20K	1545
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
district	DC13	2016	Molteno Inkwanca	1,501-3K	369
district	DC13	2016	Molteno Inkwanca	3,001-5K	2573
district	DC13	2016	Molteno Inkwanca	5,001-10K	375
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
district	DC2	2016	Montagu Langeberg	Under 1.5K	662
district	DC2	2016	Montagu Langeberg	1,501-3K	472
district	DC2	2016	Montagu Langeberg	3,001-5K	651
district	DC2	2016	Montagu Langeberg	5,001-10K	3766
district	DC2	2016	Montagu Langeberg	10,001-20K	1361
district	DC2	2016	Montagu Langeberg	20,001-30K	231
district	DC2	2016	Montagu Langeberg	30,001-40K	40
district	DC2	2016	Montagu Langeberg	40,001-50K	50
district	DC2	2016	Montagu Langeberg	50,001-100K	125
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
district	DC4	2016	Mosselbaai	5,001-10K	193
district	DC4	2016	Mosselbaai	10,001-20K	276
district	DC4	2016	Mosselbaai	20,001-30K	714
district	DC4	2016	Mosselbaai	30,001-40K	\N
district	DC4	2016	Mosselbaai	40,001-50K	867
district	DC4	2016	Mosselbaai	50,001-100K	191
district	DC4	2016	Mosselbaai	100,001-150K	112
district	DC4	2016	Mosselbaai	150,001-200K	74
district	DC4	2016	Mosselbaai	200,001-300K	\N
district	DC4	2016	Mosselbaai	300,001-500K	\N
district	DC4	2016	Mosselbaai	500,001-800K	\N
district	DC4	2016	Mosselbaai	800,001-1M	\N
district	DC4	2016	Mosselbaai	Above 1M	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	Under 1.5K	1265
district	DC15	2016	Mthatha King Sabata Dalindyebo	1,501-3K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	3,001-5K	1046
district	DC15	2016	Mthatha King Sabata Dalindyebo	5,001-10K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	10,001-20K	1013
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
district	DC5	2016	Murraysburg	1,501-3K	3919
district	DC5	2016	Murraysburg	3,001-5K	\N
district	DC5	2016	Murraysburg	5,001-10K	\N
district	DC5	2016	Murraysburg	10,001-20K	\N
district	DC5	2016	Murraysburg	20,001-30K	509
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
district	DC34	2016	Musina	Under 1.5K	56
district	DC34	2016	Musina	1,501-3K	\N
district	DC34	2016	Musina	3,001-5K	264
district	DC34	2016	Musina	5,001-10K	21
district	DC34	2016	Musina	10,001-20K	\N
district	DC34	2016	Musina	20,001-30K	\N
district	DC34	2016	Musina	30,001-40K	258
district	DC34	2016	Musina	40,001-50K	73
district	DC34	2016	Musina	50,001-100K	100
district	DC34	2016	Musina	100,001-150K	\N
district	DC34	2016	Musina	150,001-200K	\N
district	DC34	2016	Musina	200,001-300K	\N
district	DC34	2016	Musina	300,001-500K	\N
district	DC34	2016	Musina	500,001-800K	\N
district	DC34	2016	Musina	800,001-1M	\N
district	DC34	2016	Musina	Above 1M	157
district	DC6	2016	Namakwa	Under 1.5K	46362
district	DC6	2016	Namakwa	1,501-3K	12989
district	DC6	2016	Namakwa	3,001-5K	322
district	DC6	2016	Namakwa	5,001-10K	\N
district	DC6	2016	Namakwa	10,001-20K	38
district	DC6	2016	Namakwa	20,001-30K	39
district	DC6	2016	Namakwa	30,001-40K	\N
district	DC6	2016	Namakwa	40,001-50K	\N
district	DC6	2016	Namakwa	50,001-100K	24
district	DC6	2016	Namakwa	100,001-150K	\N
district	DC6	2016	Namakwa	150,001-200K	\N
district	DC6	2016	Namakwa	200,001-300K	\N
district	DC6	2016	Namakwa	300,001-500K	\N
district	DC6	2016	Namakwa	500,001-800K	\N
district	DC6	2016	Namakwa	800,001-1M	\N
district	DC6	2016	Namakwa	Above 1M	\N
district	DC32	2016	Nelspruit Mbombela	Under 1.5K	1000
district	DC32	2016	Nelspruit Mbombela	1,501-3K	502
district	DC32	2016	Nelspruit Mbombela	3,001-5K	\N
district	DC32	2016	Nelspruit Mbombela	5,001-10K	9908
district	DC32	2016	Nelspruit Mbombela	10,001-20K	5289
district	DC32	2016	Nelspruit Mbombela	20,001-30K	817
district	DC32	2016	Nelspruit Mbombela	30,001-40K	618
district	DC32	2016	Nelspruit Mbombela	40,001-50K	889
district	DC32	2016	Nelspruit Mbombela	50,001-100K	508
district	DC32	2016	Nelspruit Mbombela	100,001-150K	133
district	DC32	2016	Nelspruit Mbombela	150,001-200K	142
district	DC32	2016	Nelspruit Mbombela	200,001-300K	76
district	DC32	2016	Nelspruit Mbombela	300,001-500K	177
district	DC32	2016	Nelspruit Mbombela	500,001-800K	34
district	DC32	2016	Nelspruit Mbombela	800,001-1M	\N
district	DC32	2016	Nelspruit Mbombela	Above 1M	\N
district	DC25	2016	Newcastle	Under 1.5K	2035
district	DC25	2016	Newcastle	1,501-3K	60
district	DC25	2016	Newcastle	3,001-5K	\N
district	DC25	2016	Newcastle	5,001-10K	2734
district	DC25	2016	Newcastle	10,001-20K	1745
district	DC25	2016	Newcastle	20,001-30K	587
district	DC25	2016	Newcastle	30,001-40K	13
district	DC25	2016	Newcastle	40,001-50K	63
district	DC25	2016	Newcastle	50,001-100K	\N
district	DC25	2016	Newcastle	100,001-150K	33
district	DC25	2016	Newcastle	150,001-200K	\N
district	DC25	2016	Newcastle	200,001-300K	\N
district	DC25	2016	Newcastle	300,001-500K	\N
district	DC25	2016	Newcastle	500,001-800K	\N
district	DC25	2016	Newcastle	800,001-1M	\N
district	DC25	2016	Newcastle	Above 1M	\N
municipality	EKU	2016	Nigel Ekurhuleni	Under 1.5K	47
municipality	EKU	2016	Nigel Ekurhuleni	1,501-3K	\N
municipality	EKU	2016	Nigel Ekurhuleni	3,001-5K	15
municipality	EKU	2016	Nigel Ekurhuleni	5,001-10K	620
municipality	EKU	2016	Nigel Ekurhuleni	10,001-20K	2285
municipality	EKU	2016	Nigel Ekurhuleni	20,001-30K	990
municipality	EKU	2016	Nigel Ekurhuleni	30,001-40K	359
municipality	EKU	2016	Nigel Ekurhuleni	40,001-50K	517
municipality	EKU	2016	Nigel Ekurhuleni	50,001-100K	446
municipality	EKU	2016	Nigel Ekurhuleni	100,001-150K	87
municipality	EKU	2016	Nigel Ekurhuleni	150,001-200K	35
municipality	EKU	2016	Nigel Ekurhuleni	200,001-300K	127
municipality	EKU	2016	Nigel Ekurhuleni	300,001-500K	\N
municipality	EKU	2016	Nigel Ekurhuleni	500,001-800K	12
municipality	EKU	2016	Nigel Ekurhuleni	800,001-1M	\N
municipality	EKU	2016	Nigel Ekurhuleni	Above 1M	75
district	DC36	2016	Nylstroom Modimolle	Under 1.5K	418
district	DC36	2016	Nylstroom Modimolle	1,501-3K	2104
district	DC36	2016	Nylstroom Modimolle	3,001-5K	418
district	DC36	2016	Nylstroom Modimolle	5,001-10K	7802
district	DC36	2016	Nylstroom Modimolle	10,001-20K	9044
district	DC36	2016	Nylstroom Modimolle	20,001-30K	6799
district	DC36	2016	Nylstroom Modimolle	30,001-40K	1178
district	DC36	2016	Nylstroom Modimolle	40,001-50K	470
district	DC36	2016	Nylstroom Modimolle	50,001-100K	682
district	DC36	2016	Nylstroom Modimolle	100,001-150K	118
district	DC36	2016	Nylstroom Modimolle	150,001-200K	11
district	DC36	2016	Nylstroom Modimolle	200,001-300K	\N
district	DC36	2016	Nylstroom Modimolle	300,001-500K	17
district	DC36	2016	Nylstroom Modimolle	500,001-800K	\N
district	DC36	2016	Nylstroom Modimolle	800,001-1M	\N
district	DC36	2016	Nylstroom Modimolle	Above 1M	\N
district	DC18	2016	Odendaalsrus Matjhabeng	Under 1.5K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	1,501-3K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	3,001-5K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	5,001-10K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	10,001-20K	257
district	DC18	2016	Odendaalsrus Matjhabeng	20,001-30K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	30,001-40K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	40,001-50K	38
district	DC18	2016	Odendaalsrus Matjhabeng	50,001-100K	38
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
municipality	BUF	2016	Oos-Londen Baffalo City	5,001-10K	269
municipality	BUF	2016	Oos-Londen Baffalo City	10,001-20K	467
municipality	BUF	2016	Oos-Londen Baffalo City	20,001-30K	229
municipality	BUF	2016	Oos-Londen Baffalo City	30,001-40K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	40,001-50K	87
municipality	BUF	2016	Oos-Londen Baffalo City	50,001-100K	307
municipality	BUF	2016	Oos-Londen Baffalo City	100,001-150K	90
municipality	BUF	2016	Oos-Londen Baffalo City	150,001-200K	123
municipality	BUF	2016	Oos-Londen Baffalo City	200,001-300K	48
municipality	BUF	2016	Oos-Londen Baffalo City	300,001-500K	43
municipality	BUF	2016	Oos-Londen Baffalo City	500,001-800K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	800,001-1M	15
municipality	BUF	2016	Oos-Londen Baffalo City	Above 1M	\N
district	DC4	2016	Oudtshoorn	Under 1.5K	10794
district	DC4	2016	Oudtshoorn	1,501-3K	258
district	DC4	2016	Oudtshoorn	3,001-5K	119
district	DC4	2016	Oudtshoorn	5,001-10K	953
district	DC4	2016	Oudtshoorn	10,001-20K	2702
district	DC4	2016	Oudtshoorn	20,001-30K	986
district	DC4	2016	Oudtshoorn	30,001-40K	276
district	DC4	2016	Oudtshoorn	40,001-50K	\N
district	DC4	2016	Oudtshoorn	50,001-100K	295
district	DC4	2016	Oudtshoorn	100,001-150K	142
district	DC4	2016	Oudtshoorn	150,001-200K	\N
district	DC4	2016	Oudtshoorn	200,001-300K	\N
district	DC4	2016	Oudtshoorn	300,001-500K	67
district	DC4	2016	Oudtshoorn	500,001-800K	\N
district	DC4	2016	Oudtshoorn	800,001-1M	\N
district	DC4	2016	Oudtshoorn	Above 1M	\N
district	DC2	2016	Paarl/Wel Drakenstein	Under 1.5K	\N
district	DC2	2016	Paarl/Wel Drakenstein	1,501-3K	\N
district	DC2	2016	Paarl/Wel Drakenstein	3,001-5K	\N
district	DC2	2016	Paarl/Wel Drakenstein	5,001-10K	\N
district	DC2	2016	Paarl/Wel Drakenstein	10,001-20K	60
district	DC2	2016	Paarl/Wel Drakenstein	20,001-30K	\N
district	DC2	2016	Paarl/Wel Drakenstein	30,001-40K	74
district	DC2	2016	Paarl/Wel Drakenstein	40,001-50K	70
district	DC2	2016	Paarl/Wel Drakenstein	50,001-100K	349
district	DC2	2016	Paarl/Wel Drakenstein	100,001-150K	45
district	DC2	2016	Paarl/Wel Drakenstein	150,001-200K	134
district	DC2	2016	Paarl/Wel Drakenstein	200,001-300K	742
district	DC2	2016	Paarl/Wel Drakenstein	300,001-500K	225
district	DC2	2016	Paarl/Wel Drakenstein	500,001-800K	85
district	DC2	2016	Paarl/Wel Drakenstein	800,001-1M	\N
district	DC2	2016	Paarl/Wel Drakenstein	Above 1M	23
district	DC20	2016	Parys Ngwathe	Under 1.5K	115
district	DC20	2016	Parys Ngwathe	1,501-3K	10
district	DC20	2016	Parys Ngwathe	3,001-5K	\N
district	DC20	2016	Parys Ngwathe	5,001-10K	\N
district	DC20	2016	Parys Ngwathe	10,001-20K	1743
district	DC20	2016	Parys Ngwathe	20,001-30K	72
district	DC20	2016	Parys Ngwathe	30,001-40K	\N
district	DC20	2016	Parys Ngwathe	40,001-50K	79
district	DC20	2016	Parys Ngwathe	50,001-100K	97
district	DC20	2016	Parys Ngwathe	100,001-150K	\N
district	DC20	2016	Parys Ngwathe	150,001-200K	\N
district	DC20	2016	Parys Ngwathe	200,001-300K	\N
district	DC20	2016	Parys Ngwathe	300,001-500K	28
district	DC20	2016	Parys Ngwathe	500,001-800K	\N
district	DC20	2016	Parys Ngwathe	800,001-1M	\N
district	DC20	2016	Parys Ngwathe	Above 1M	\N
district	DC10	2016	Pearston Blue Crane	Under 1.5K	\N
district	DC10	2016	Pearston Blue Crane	1,501-3K	\N
district	DC10	2016	Pearston Blue Crane	3,001-5K	\N
district	DC10	2016	Pearston Blue Crane	5,001-10K	8955
district	DC10	2016	Pearston Blue Crane	10,001-20K	483
district	DC10	2016	Pearston Blue Crane	20,001-30K	\N
district	DC10	2016	Pearston Blue Crane	30,001-40K	\N
district	DC10	2016	Pearston Blue Crane	40,001-50K	\N
district	DC10	2016	Pearston Blue Crane	50,001-100K	103
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
district	DC33	2016	Phalaborwa Ba-Phalaborwa	20,001-30K	21
district	DC33	2016	Phalaborwa Ba-Phalaborwa	30,001-40K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	40,001-50K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	50,001-100K	63
district	DC33	2016	Phalaborwa Ba-Phalaborwa	100,001-150K	21
district	DC33	2016	Phalaborwa Ba-Phalaborwa	150,001-200K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	200,001-300K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	300,001-500K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	500,001-800K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	800,001-1M	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	Above 1M	\N
district	DC16	2016	Philipolis Kopanong	Under 1.5K	\N
district	DC16	2016	Philipolis Kopanong	1,501-3K	\N
district	DC16	2016	Philipolis Kopanong	3,001-5K	2971
district	DC16	2016	Philipolis Kopanong	5,001-10K	857
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
district	DC7	2016	Phillipstown Renosterberg	Under 1.5K	7676
district	DC7	2016	Phillipstown Renosterberg	1,501-3K	3431
district	DC7	2016	Phillipstown Renosterberg	3,001-5K	\N
district	DC7	2016	Phillipstown Renosterberg	5,001-10K	\N
district	DC7	2016	Phillipstown Renosterberg	10,001-20K	1251
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
district	DC22	2016	Pietermaritzburg Msunduzi	Under 1.5K	844
district	DC22	2016	Pietermaritzburg Msunduzi	1,501-3K	253
district	DC22	2016	Pietermaritzburg Msunduzi	3,001-5K	206
district	DC22	2016	Pietermaritzburg Msunduzi	5,001-10K	2171
district	DC22	2016	Pietermaritzburg Msunduzi	10,001-20K	2207
district	DC22	2016	Pietermaritzburg Msunduzi	20,001-30K	1317
district	DC22	2016	Pietermaritzburg Msunduzi	30,001-40K	1800
district	DC22	2016	Pietermaritzburg Msunduzi	40,001-50K	725
district	DC22	2016	Pietermaritzburg Msunduzi	50,001-100K	8407
district	DC22	2016	Pietermaritzburg Msunduzi	100,001-150K	505
district	DC22	2016	Pietermaritzburg Msunduzi	150,001-200K	257
district	DC22	2016	Pietermaritzburg Msunduzi	200,001-300K	286
district	DC22	2016	Pietermaritzburg Msunduzi	300,001-500K	217
district	DC22	2016	Pietermaritzburg Msunduzi	500,001-800K	12
district	DC22	2016	Pietermaritzburg Msunduzi	800,001-1M	19
district	DC22	2016	Pietermaritzburg Msunduzi	Above 1M	24
district	DC1	2016	Piketberg Bergriver	Under 1.5K	39
district	DC1	2016	Piketberg Bergriver	1,501-3K	661
district	DC1	2016	Piketberg Bergriver	3,001-5K	2134
district	DC1	2016	Piketberg Bergriver	5,001-10K	7636
district	DC1	2016	Piketberg Bergriver	10,001-20K	4590
district	DC1	2016	Piketberg Bergriver	20,001-30K	1079
district	DC1	2016	Piketberg Bergriver	30,001-40K	81
district	DC1	2016	Piketberg Bergriver	40,001-50K	121
district	DC1	2016	Piketberg Bergriver	50,001-100K	144
district	DC1	2016	Piketberg Bergriver	100,001-150K	67
district	DC1	2016	Piketberg Bergriver	150,001-200K	\N
district	DC1	2016	Piketberg Bergriver	200,001-300K	\N
district	DC1	2016	Piketberg Bergriver	300,001-500K	\N
district	DC1	2016	Piketberg Bergriver	500,001-800K	\N
district	DC1	2016	Piketberg Bergriver	800,001-1M	\N
district	DC1	2016	Piketberg Bergriver	Above 1M	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Under 1.5K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	1,501-3K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	3,001-5K	172
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	5,001-10K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	10,001-20K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	20,001-30K	34
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	30,001-40K	32
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	40,001-50K	43
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	50,001-100K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	100,001-150K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	150,001-200K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	200,001-300K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	300,001-500K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	500,001-800K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	800,001-1M	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Above 1M	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	Under 1.5K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	1,501-3K	545
district	DC21	2016	Port Shepstone Ray Nkonyeni	3,001-5K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	5,001-10K	1059
district	DC21	2016	Port Shepstone Ray Nkonyeni	10,001-20K	248
district	DC21	2016	Port Shepstone Ray Nkonyeni	20,001-30K	1238
district	DC21	2016	Port Shepstone Ray Nkonyeni	30,001-40K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	40,001-50K	142
district	DC21	2016	Port Shepstone Ray Nkonyeni	50,001-100K	243
district	DC21	2016	Port Shepstone Ray Nkonyeni	100,001-150K	99
district	DC21	2016	Port Shepstone Ray Nkonyeni	150,001-200K	23
district	DC21	2016	Port Shepstone Ray Nkonyeni	200,001-300K	15
district	DC21	2016	Port Shepstone Ray Nkonyeni	300,001-500K	31
district	DC21	2016	Port Shepstone Ray Nkonyeni	500,001-800K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	800,001-1M	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	Above 1M	\N
municipality	TSH	2016	Pretoria Tshwane	Under 1.5K	\N
municipality	TSH	2016	Pretoria Tshwane	1,501-3K	\N
municipality	TSH	2016	Pretoria Tshwane	3,001-5K	\N
municipality	TSH	2016	Pretoria Tshwane	5,001-10K	1680
municipality	TSH	2016	Pretoria Tshwane	10,001-20K	1858
municipality	TSH	2016	Pretoria Tshwane	20,001-30K	1936
municipality	TSH	2016	Pretoria Tshwane	30,001-40K	1230
municipality	TSH	2016	Pretoria Tshwane	40,001-50K	814
municipality	TSH	2016	Pretoria Tshwane	50,001-100K	1385
municipality	TSH	2016	Pretoria Tshwane	100,001-150K	266
municipality	TSH	2016	Pretoria Tshwane	150,001-200K	212
municipality	TSH	2016	Pretoria Tshwane	200,001-300K	311
municipality	TSH	2016	Pretoria Tshwane	300,001-500K	287
municipality	TSH	2016	Pretoria Tshwane	500,001-800K	95
municipality	TSH	2016	Pretoria Tshwane	800,001-1M	\N
municipality	TSH	2016	Pretoria Tshwane	Above 1M	174
district	DC7	2016	Prieska Siyathemba	Under 1.5K	1875
district	DC7	2016	Prieska Siyathemba	1,501-3K	16382
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
district	DC5	2016	Prins Albert	Under 1.5K	11304
district	DC5	2016	Prins Albert	1,501-3K	12092
district	DC5	2016	Prins Albert	3,001-5K	\N
district	DC5	2016	Prins Albert	5,001-10K	51
district	DC5	2016	Prins Albert	10,001-20K	131
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
district	DC13	2016	Queenstown Lukanji	1,501-3K	1631
district	DC13	2016	Queenstown Lukanji	3,001-5K	\N
district	DC13	2016	Queenstown Lukanji	5,001-10K	754
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
district	DC16	2016	Reddersburg Kopanong	3,001-5K	1831
district	DC16	2016	Reddersburg Kopanong	5,001-10K	2246
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
district	DC19	2016	Reitz Nketoana	Under 1.5K	505
district	DC19	2016	Reitz Nketoana	1,501-3K	\N
district	DC19	2016	Reitz Nketoana	3,001-5K	183
district	DC19	2016	Reitz Nketoana	5,001-10K	1460
district	DC19	2016	Reitz Nketoana	10,001-20K	5154
district	DC19	2016	Reitz Nketoana	20,001-30K	844
district	DC19	2016	Reitz Nketoana	30,001-40K	96
district	DC19	2016	Reitz Nketoana	40,001-50K	219
district	DC19	2016	Reitz Nketoana	50,001-100K	\N
district	DC19	2016	Reitz Nketoana	100,001-150K	\N
district	DC19	2016	Reitz Nketoana	150,001-200K	\N
district	DC19	2016	Reitz Nketoana	200,001-300K	69
district	DC19	2016	Reitz Nketoana	300,001-500K	\N
district	DC19	2016	Reitz Nketoana	500,001-800K	\N
district	DC19	2016	Reitz Nketoana	800,001-1M	\N
district	DC19	2016	Reitz Nketoana	Above 1M	\N
district	DC39	2016	Reivilo Thaung	Under 1.5K	\N
district	DC39	2016	Reivilo Thaung	1,501-3K	\N
district	DC39	2016	Reivilo Thaung	3,001-5K	3992
district	DC39	2016	Reivilo Thaung	5,001-10K	10295
district	DC39	2016	Reivilo Thaung	10,001-20K	428
district	DC39	2016	Reivilo Thaung	20,001-30K	449
district	DC39	2016	Reivilo Thaung	30,001-40K	\N
district	DC39	2016	Reivilo Thaung	40,001-50K	\N
district	DC39	2016	Reivilo Thaung	50,001-100K	\N
district	DC39	2016	Reivilo Thaung	100,001-150K	38
district	DC39	2016	Reivilo Thaung	150,001-200K	\N
district	DC39	2016	Reivilo Thaung	200,001-300K	\N
district	DC39	2016	Reivilo Thaung	300,001-500K	\N
district	DC39	2016	Reivilo Thaung	500,001-800K	33
district	DC39	2016	Reivilo Thaung	800,001-1M	\N
district	DC39	2016	Reivilo Thaung	Above 1M	\N
district	DC7	2016	Richmond	Under 1.5K	\N
district	DC7	2016	Richmond	1,501-3K	\N
district	DC7	2016	Richmond	3,001-5K	175
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
district	DC4	2016	Riversdal Hessequa	Under 1.5K	1004
district	DC4	2016	Riversdal Hessequa	1,501-3K	2262
district	DC4	2016	Riversdal Hessequa	3,001-5K	\N
district	DC4	2016	Riversdal Hessequa	5,001-10K	4587
district	DC4	2016	Riversdal Hessequa	10,001-20K	3206
district	DC4	2016	Riversdal Hessequa	20,001-30K	573
district	DC4	2016	Riversdal Hessequa	30,001-40K	1410
district	DC4	2016	Riversdal Hessequa	40,001-50K	697
district	DC4	2016	Riversdal Hessequa	50,001-100K	77
district	DC4	2016	Riversdal Hessequa	100,001-150K	15
district	DC4	2016	Riversdal Hessequa	150,001-200K	\N
district	DC4	2016	Riversdal Hessequa	200,001-300K	32
district	DC4	2016	Riversdal Hessequa	300,001-500K	19
district	DC4	2016	Riversdal Hessequa	500,001-800K	\N
district	DC4	2016	Riversdal Hessequa	800,001-1M	\N
district	DC4	2016	Riversdal Hessequa	Above 1M	\N
district	DC2	2016	Robertson Breede /Winelands	Under 1.5K	\N
district	DC2	2016	Robertson Breede /Winelands	1,501-3K	\N
district	DC2	2016	Robertson Breede /Winelands	3,001-5K	\N
district	DC2	2016	Robertson Breede /Winelands	5,001-10K	535
district	DC2	2016	Robertson Breede /Winelands	10,001-20K	160
district	DC2	2016	Robertson Breede /Winelands	20,001-30K	\N
district	DC2	2016	Robertson Breede /Winelands	30,001-40K	89
district	DC2	2016	Robertson Breede /Winelands	40,001-50K	383
district	DC2	2016	Robertson Breede /Winelands	50,001-100K	24
district	DC2	2016	Robertson Breede /Winelands	100,001-150K	20
district	DC2	2016	Robertson Breede /Winelands	150,001-200K	13
district	DC2	2016	Robertson Breede /Winelands	200,001-300K	90
district	DC2	2016	Robertson Breede /Winelands	300,001-500K	43
district	DC2	2016	Robertson Breede /Winelands	500,001-800K	\N
district	DC2	2016	Robertson Breede /Winelands	800,001-1M	\N
district	DC2	2016	Robertson Breede /Winelands	Above 1M	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Under 1.5K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	1,501-3K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	3,001-5K	1632
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	5,001-10K	1861
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	10,001-20K	4285
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	20,001-30K	886
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	30,001-40K	182
district	DC10	2016	Aberdeen	10,001-20K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	40,001-50K	42
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	50,001-100K	80
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	100,001-150K	335
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	150,001-200K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	200,001-300K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	300,001-500K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	500,001-800K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	800,001-1M	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Above 1M	\N
district	DC16	2016	Rouxville Mohokare	Under 1.5K	\N
district	DC16	2016	Rouxville Mohokare	1,501-3K	\N
district	DC16	2016	Rouxville Mohokare	3,001-5K	1646
district	DC16	2016	Rouxville Mohokare	5,001-10K	4494
district	DC16	2016	Rouxville Mohokare	10,001-20K	821
district	DC16	2016	Rouxville Mohokare	20,001-30K	1112
district	DC16	2016	Rouxville Mohokare	30,001-40K	\N
district	DC16	2016	Rouxville Mohokare	40,001-50K	\N
district	DC16	2016	Rouxville Mohokare	50,001-100K	\N
district	DC16	2016	Rouxville Mohokare	100,001-150K	26
district	DC16	2016	Rouxville Mohokare	150,001-200K	\N
district	DC16	2016	Rouxville Mohokare	200,001-300K	\N
district	DC16	2016	Rouxville Mohokare	300,001-500K	\N
district	DC16	2016	Rouxville Mohokare	500,001-800K	\N
district	DC16	2016	Rouxville Mohokare	800,001-1M	\N
district	DC16	2016	Rouxville Mohokare	Above 1M	\N
district	DC19	2016	Senekal Setsoto	Under 1.5K	\N
district	DC19	2016	Senekal Setsoto	1,501-3K	\N
district	DC19	2016	Senekal Setsoto	3,001-5K	\N
district	DC19	2016	Senekal Setsoto	5,001-10K	6322
district	DC19	2016	Senekal Setsoto	10,001-20K	2681
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
district	DC16	2016	Smithfield Mohkare	Under 1.5K	373
district	DC16	2016	Smithfield Mohkare	1,501-3K	\N
district	DC16	2016	Smithfield Mohkare	3,001-5K	\N
district	DC16	2016	Smithfield Mohkare	5,001-10K	419
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
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Under 1.5K	322
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	1,501-3K	74
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	3,001-5K	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	5,001-10K	592
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	10,001-20K	1396
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	20,001-30K	1517
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	30,001-40K	51
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	40,001-50K	105
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	50,001-100K	842
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	100,001-150K	72
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	150,001-200K	80
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	200,001-300K	78
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	300,001-500K	39
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	500,001-800K	13
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	800,001-1M	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Above 1M	\N
district	DC10	2016	Somerset-Oos Blue Crane	Under 1.5K	\N
district	DC10	2016	Somerset-Oos Blue Crane	1,501-3K	3961
district	DC10	2016	Somerset-Oos Blue Crane	3,001-5K	2805
district	DC10	2016	Somerset-Oos Blue Crane	5,001-10K	3210
district	DC10	2016	Somerset-Oos Blue Crane	10,001-20K	1558
district	DC10	2016	Somerset-Oos Blue Crane	20,001-30K	728
district	DC10	2016	Somerset-Oos Blue Crane	30,001-40K	\N
district	DC10	2016	Somerset-Oos Blue Crane	40,001-50K	\N
district	DC10	2016	Somerset-Oos Blue Crane	50,001-100K	43
district	DC10	2016	Somerset-Oos Blue Crane	100,001-150K	119
district	DC10	2016	Somerset-Oos Blue Crane	150,001-200K	\N
district	DC10	2016	Somerset-Oos Blue Crane	200,001-300K	43
district	DC10	2016	Somerset-Oos Blue Crane	300,001-500K	\N
district	DC10	2016	Somerset-Oos Blue Crane	500,001-800K	\N
district	DC10	2016	Somerset-Oos Blue Crane	800,001-1M	\N
district	DC10	2016	Somerset-Oos Blue Crane	Above 1M	\N
district	DC27	2016	St Lucia Mtubatuba	Under 1.5K	64
district	DC27	2016	St Lucia Mtubatuba	1,501-3K	\N
district	DC27	2016	St Lucia Mtubatuba	3,001-5K	\N
district	DC27	2016	St Lucia Mtubatuba	5,001-10K	\N
district	DC27	2016	St Lucia Mtubatuba	10,001-20K	\N
district	DC27	2016	St Lucia Mtubatuba	20,001-30K	\N
district	DC10	2016	Aberdeen	20,001-30K	\N
district	DC27	2016	St Lucia Mtubatuba	30,001-40K	81
district	DC27	2016	St Lucia Mtubatuba	40,001-50K	\N
district	DC27	2016	St Lucia Mtubatuba	50,001-100K	194
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
district	DC2	2016	Stellenbosch	50,001-100K	32
district	DC2	2016	Stellenbosch	100,001-150K	30
district	DC2	2016	Stellenbosch	150,001-200K	621
district	DC2	2016	Stellenbosch	200,001-300K	160
district	DC2	2016	Stellenbosch	300,001-500K	474
district	DC2	2016	Stellenbosch	500,001-800K	333
district	DC2	2016	Stellenbosch	800,001-1M	39
district	DC2	2016	Stellenbosch	Above 1M	82
district	DC14	2016	Steynsburg Gariep	Under 1.5K	\N
district	DC14	2016	Steynsburg Gariep	1,501-3K	2659
district	DC14	2016	Steynsburg Gariep	3,001-5K	2465
district	DC14	2016	Steynsburg Gariep	5,001-10K	396
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
district	DC10	2016	Steytlerville Dr Beyers Naude	3,001-5K	2690
district	DC10	2016	Steytlerville Dr Beyers Naude	5,001-10K	4600
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
district	DC12	2016	Stutterheim Amahlathi	5,001-10K	1127
district	DC12	2016	Stutterheim Amahlathi	10,001-20K	706
district	DC12	2016	Stutterheim Amahlathi	20,001-30K	89
district	DC12	2016	Stutterheim Amahlathi	30,001-40K	\N
district	DC12	2016	Stutterheim Amahlathi	40,001-50K	16
district	DC12	2016	Stutterheim Amahlathi	50,001-100K	\N
district	DC12	2016	Stutterheim Amahlathi	100,001-150K	\N
district	DC12	2016	Stutterheim Amahlathi	150,001-200K	\N
district	DC12	2016	Stutterheim Amahlathi	200,001-300K	\N
district	DC12	2016	Stutterheim Amahlathi	300,001-500K	\N
district	DC12	2016	Stutterheim Amahlathi	500,001-800K	\N
district	DC12	2016	Stutterheim Amahlathi	800,001-1M	\N
district	DC12	2016	Stutterheim Amahlathi	Above 1M	\N
district	DC6	2016	Sutherland	Under 1.5K	19901
district	DC6	2016	Sutherland	1,501-3K	4178
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
district	DC3	2016	Swellendam	3,001-5K	1564
district	DC3	2016	Swellendam	5,001-10K	4845
district	DC3	2016	Swellendam	10,001-20K	347
district	DC3	2016	Swellendam	20,001-30K	831
district	DC3	2016	Swellendam	30,001-40K	313
district	DC3	2016	Swellendam	40,001-50K	373
district	DC3	2016	Swellendam	50,001-100K	1677
district	DC3	2016	Swellendam	100,001-150K	93
district	DC3	2016	Swellendam	150,001-200K	147
district	DC3	2016	Swellendam	200,001-300K	79
district	DC3	2016	Swellendam	300,001-500K	66
district	DC3	2016	Swellendam	500,001-800K	\N
district	DC3	2016	Swellendam	800,001-1M	\N
district	DC3	2016	Swellendam	Above 1M	\N
district	DC13	2016	Tarkastad Tsolwana	Under 1.5K	\N
district	DC13	2016	Tarkastad Tsolwana	1,501-3K	1394
district	DC13	2016	Tarkastad Tsolwana	3,001-5K	5413
district	DC13	2016	Tarkastad Tsolwana	5,001-10K	6994
district	DC13	2016	Tarkastad Tsolwana	10,001-20K	16
district	DC13	2016	Tarkastad Tsolwana	20,001-30K	20
district	DC13	2016	Tarkastad Tsolwana	30,001-40K	\N
district	DC13	2016	Tarkastad Tsolwana	40,001-50K	\N
district	DC13	2016	Tarkastad Tsolwana	50,001-100K	107
district	DC13	2016	Tarkastad Tsolwana	100,001-150K	\N
district	DC13	2016	Tarkastad Tsolwana	150,001-200K	\N
district	DC13	2016	Tarkastad Tsolwana	200,001-300K	\N
district	DC13	2016	Tarkastad Tsolwana	300,001-500K	\N
district	DC13	2016	Tarkastad Tsolwana	500,001-800K	\N
district	DC13	2016	Tarkastad Tsolwana	800,001-1M	\N
district	DC13	2016	Tarkastad Tsolwana	Above 1M	\N
municipality	MAN	2016	Thaba Nchu	Under 1.5K	\N
municipality	MAN	2016	Thaba Nchu	1,501-3K	1754
municipality	MAN	2016	Thaba Nchu	3,001-5K	1116
municipality	MAN	2016	Thaba Nchu	5,001-10K	371
municipality	MAN	2016	Thaba Nchu	10,001-20K	557
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
district	DC36	2016	Thabazimbi	Under 1.5K	2078
district	DC36	2016	Thabazimbi	1,501-3K	\N
district	DC36	2016	Thabazimbi	3,001-5K	16
district	DC36	2016	Thabazimbi	5,001-10K	6816
district	DC36	2016	Thabazimbi	10,001-20K	11718
district	DC36	2016	Thabazimbi	20,001-30K	440
district	DC36	2016	Thabazimbi	30,001-40K	1023
district	DC36	2016	Thabazimbi	40,001-50K	140
district	DC36	2016	Thabazimbi	50,001-100K	1533
district	DC36	2016	Thabazimbi	100,001-150K	11
district	DC36	2016	Thabazimbi	150,001-200K	\N
district	DC36	2016	Thabazimbi	200,001-300K	\N
district	DC36	2016	Thabazimbi	300,001-500K	\N
district	DC36	2016	Thabazimbi	500,001-800K	22
district	DC36	2016	Thabazimbi	800,001-1M	\N
district	DC36	2016	Thabazimbi	Above 1M	\N
district	DC18	2016	Theunissen Masilonyana	Under 1.5K	787
district	DC18	2016	Theunissen Masilonyana	1,501-3K	171
district	DC18	2016	Theunissen Masilonyana	3,001-5K	292
district	DC18	2016	Theunissen Masilonyana	5,001-10K	345
district	DC18	2016	Theunissen Masilonyana	10,001-20K	2091
district	DC18	2016	Theunissen Masilonyana	20,001-30K	389
district	DC18	2016	Theunissen Masilonyana	30,001-40K	\N
district	DC18	2016	Theunissen Masilonyana	40,001-50K	527
district	DC18	2016	Theunissen Masilonyana	50,001-100K	349
district	DC18	2016	Theunissen Masilonyana	100,001-150K	65
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
district	DC2	2016	Tulbagh	10,001-20K	291
district	DC2	2016	Tulbagh	20,001-30K	\N
district	DC2	2016	Tulbagh	30,001-40K	\N
district	DC2	2016	Tulbagh	40,001-50K	93
district	DC2	2016	Tulbagh	50,001-100K	69
district	DC2	2016	Tulbagh	100,001-150K	34
district	DC2	2016	Tulbagh	150,001-200K	\N
district	DC2	2016	Tulbagh	200,001-300K	14
district	DC2	2016	Tulbagh	300,001-500K	\N
district	DC2	2016	Tulbagh	500,001-800K	\N
district	DC2	2016	Tulbagh	800,001-1M	\N
district	DC2	2016	Tulbagh	Above 1M	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Under 1.5K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	1,501-3K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	3,001-5K	970
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	5,001-10K	1777
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	10,001-20K	1956
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	20,001-30K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	30,001-40K	118
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	40,001-50K	199
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	50,001-100K	129
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	100,001-150K	59
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	150,001-200K	34
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	200,001-300K	16
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	300,001-500K	160
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	500,001-800K	97
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	800,001-1M	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Above 1M	\N
district	DC26	2016	Ulundi	Under 1.5K	10287
district	DC26	2016	Ulundi	1,501-3K	\N
district	DC26	2016	Ulundi	3,001-5K	\N
district	DC26	2016	Ulundi	5,001-10K	122
district	DC26	2016	Ulundi	10,001-20K	4918
district	DC26	2016	Ulundi	20,001-30K	22
district	DC26	2016	Ulundi	30,001-40K	111
district	DC26	2016	Ulundi	40,001-50K	73
district	DC26	2016	Ulundi	50,001-100K	461
district	DC26	2016	Ulundi	100,001-150K	127
district	DC26	2016	Ulundi	150,001-200K	\N
district	DC26	2016	Ulundi	200,001-300K	\N
district	DC26	2016	Ulundi	300,001-500K	\N
district	DC26	2016	Ulundi	500,001-800K	\N
district	DC26	2016	Ulundi	800,001-1M	\N
district	DC26	2016	Ulundi	Above 1M	\N
district	DC43	2016	Underberg KwaSani	Under 1.5K	\N
district	DC43	2016	Underberg KwaSani	1,501-3K	\N
district	DC43	2016	Underberg KwaSani	3,001-5K	410
district	DC43	2016	Underberg KwaSani	5,001-10K	3833
district	DC43	2016	Underberg KwaSani	10,001-20K	2186
district	DC43	2016	Underberg KwaSani	20,001-30K	1118
district	DC43	2016	Underberg KwaSani	30,001-40K	1006
district	DC43	2016	Underberg KwaSani	40,001-50K	983
district	DC43	2016	Underberg KwaSani	50,001-100K	5134
district	DC43	2016	Underberg KwaSani	100,001-150K	297
district	DC43	2016	Underberg KwaSani	150,001-200K	21
district	DC43	2016	Underberg KwaSani	200,001-300K	25
district	DC43	2016	Underberg KwaSani	300,001-500K	\N
district	DC43	2016	Underberg KwaSani	500,001-800K	\N
district	DC43	2016	Underberg KwaSani	800,001-1M	\N
district	DC43	2016	Underberg KwaSani	Above 1M	\N
district	DC44	2016	Uniondale	Under 1.5K	1492
district	DC44	2016	Uniondale	1,501-3K	2252
district	DC44	2016	Uniondale	3,001-5K	120
district	DC44	2016	Uniondale	5,001-10K	3688
district	DC44	2016	Uniondale	10,001-20K	\N
district	DC44	2016	Uniondale	20,001-30K	1272
district	DC44	2016	Uniondale	30,001-40K	\N
district	DC44	2016	Uniondale	40,001-50K	81
district	DC44	2016	Uniondale	50,001-100K	\N
district	DC44	2016	Uniondale	100,001-150K	\N
district	DC44	2016	Uniondale	150,001-200K	161
district	DC44	2016	Uniondale	200,001-300K	\N
district	DC44	2016	Uniondale	300,001-500K	\N
district	DC44	2016	Uniondale	500,001-800K	\N
district	DC44	2016	Uniondale	800,001-1M	\N
district	DC44	2016	Uniondale	Above 1M	\N
district	DC35	2016	Usutu	Under 1.5K	\N
district	DC35	2016	Usutu	1,501-3K	\N
district	DC35	2016	Usutu	3,001-5K	2028
district	DC35	2016	Usutu	5,001-10K	1820
district	DC35	2016	Usutu	10,001-20K	141
district	DC35	2016	Usutu	20,001-30K	949
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
district	DC25	2016	Utrecht eMadlangeni	Under 1.5K	389
district	DC25	2016	Utrecht eMadlangeni	1,501-3K	22
district	DC25	2016	Utrecht eMadlangeni	3,001-5K	3675
district	DC25	2016	Utrecht eMadlangeni	5,001-10K	6003
district	DC25	2016	Utrecht eMadlangeni	10,001-20K	7689
district	DC25	2016	Utrecht eMadlangeni	20,001-30K	1905
district	DC25	2016	Utrecht eMadlangeni	30,001-40K	225
district	DC25	2016	Utrecht eMadlangeni	40,001-50K	\N
district	DC25	2016	Utrecht eMadlangeni	50,001-100K	46
district	DC25	2016	Utrecht eMadlangeni	100,001-150K	20
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
district	DC9	2016	Vaalharts Phokwane	50,001-100K	266
district	DC9	2016	Vaalharts Phokwane	100,001-150K	135
district	DC9	2016	Vaalharts Phokwane	150,001-200K	78
district	DC9	2016	Vaalharts Phokwane	200,001-300K	337
district	DC9	2016	Vaalharts Phokwane	300,001-500K	405
district	DC9	2016	Vaalharts Phokwane	500,001-800K	39
district	DC9	2016	Vaalharts Phokwane	800,001-1M	33
district	DC9	2016	Vaalharts Phokwane	Above 1M	\N
district	DC1	2016	Vanrynsdorp Matzikama	Under 1.5K	18222
district	DC1	2016	Vanrynsdorp Matzikama	1,501-3K	822
district	DC1	2016	Vanrynsdorp Matzikama	3,001-5K	\N
district	DC1	2016	Vanrynsdorp Matzikama	5,001-10K	431
district	DC1	2016	Vanrynsdorp Matzikama	10,001-20K	1213
district	DC1	2016	Vanrynsdorp Matzikama	20,001-30K	247
district	DC1	2016	Vanrynsdorp Matzikama	30,001-40K	\N
district	DC1	2016	Vanrynsdorp Matzikama	40,001-50K	\N
district	DC10	2016	Aberdeen	30,001-40K	\N
district	DC1	2016	Vanrynsdorp Matzikama	50,001-100K	118
district	DC1	2016	Vanrynsdorp Matzikama	100,001-150K	\N
district	DC1	2016	Vanrynsdorp Matzikama	150,001-200K	37
district	DC1	2016	Vanrynsdorp Matzikama	200,001-300K	50
district	DC1	2016	Vanrynsdorp Matzikama	300,001-500K	48
district	DC1	2016	Vanrynsdorp Matzikama	500,001-800K	\N
district	DC1	2016	Vanrynsdorp Matzikama	800,001-1M	\N
district	DC1	2016	Vanrynsdorp Matzikama	Above 1M	\N
district	DC18	2016	Ventersburg Matjhabeng	Under 1.5K	\N
district	DC18	2016	Ventersburg Matjhabeng	1,501-3K	684
district	DC18	2016	Ventersburg Matjhabeng	3,001-5K	494
district	DC18	2016	Ventersburg Matjhabeng	5,001-10K	1319
district	DC18	2016	Ventersburg Matjhabeng	10,001-20K	1997
district	DC18	2016	Ventersburg Matjhabeng	20,001-30K	10
district	DC18	2016	Ventersburg Matjhabeng	30,001-40K	\N
district	DC18	2016	Ventersburg Matjhabeng	40,001-50K	\N
district	DC18	2016	Ventersburg Matjhabeng	50,001-100K	\N
district	DC18	2016	Ventersburg Matjhabeng	100,001-150K	25
district	DC18	2016	Ventersburg Matjhabeng	150,001-200K	\N
district	DC18	2016	Ventersburg Matjhabeng	200,001-300K	\N
district	DC18	2016	Ventersburg Matjhabeng	300,001-500K	\N
district	DC18	2016	Ventersburg Matjhabeng	500,001-800K	\N
district	DC18	2016	Ventersburg Matjhabeng	800,001-1M	\N
district	DC18	2016	Ventersburg Matjhabeng	Above 1M	\N
district	DC7	2016	Victoria-Wes Umbuntu	Under 1.5K	\N
district	DC7	2016	Victoria-Wes Umbuntu	1,501-3K	9951
district	DC7	2016	Victoria-Wes Umbuntu	3,001-5K	\N
district	DC7	2016	Victoria-Wes Umbuntu	5,001-10K	2034
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
district	DC20	2016	Viljoenskroon Moqhaka	5,001-10K	298
district	DC20	2016	Viljoenskroon Moqhaka	10,001-20K	1343
district	DC20	2016	Viljoenskroon Moqhaka	20,001-30K	\N
district	DC20	2016	Viljoenskroon Moqhaka	30,001-40K	\N
district	DC20	2016	Viljoenskroon Moqhaka	40,001-50K	\N
district	DC20	2016	Viljoenskroon Moqhaka	50,001-100K	16
district	DC20	2016	Viljoenskroon Moqhaka	100,001-150K	\N
district	DC20	2016	Viljoenskroon Moqhaka	150,001-200K	3803
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
municipality	DC40	2016	Vostershoop	10,001-20K	302
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
district	DC19	2016	Vrede Phumelela	Under 1.5K	472
district	DC19	2016	Vrede Phumelela	1,501-3K	184
district	DC19	2016	Vrede Phumelela	3,001-5K	866
district	DC19	2016	Vrede Phumelela	5,001-10K	4561
district	DC19	2016	Vrede Phumelela	10,001-20K	4574
district	DC19	2016	Vrede Phumelela	20,001-30K	4386
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
district	DC20	2016	Vredefort Ngwathe	5,001-10K	534
district	DC20	2016	Vredefort Ngwathe	10,001-20K	2145
district	DC20	2016	Vredefort Ngwathe	20,001-30K	31
district	DC20	2016	Vredefort Ngwathe	30,001-40K	258
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
district	DC39	2016	Vryburg Naledi	1,501-3K	1740
district	DC39	2016	Vryburg Naledi	3,001-5K	3967
district	DC39	2016	Vryburg Naledi	5,001-10K	17567
district	DC39	2016	Vryburg Naledi	10,001-20K	1430
district	DC39	2016	Vryburg Naledi	20,001-30K	366
district	DC39	2016	Vryburg Naledi	30,001-40K	21
district	DC39	2016	Vryburg Naledi	40,001-50K	\N
district	DC39	2016	Vryburg Naledi	50,001-100K	\N
district	DC39	2016	Vryburg Naledi	100,001-150K	16
district	DC39	2016	Vryburg Naledi	150,001-200K	\N
district	DC39	2016	Vryburg Naledi	200,001-300K	\N
district	DC39	2016	Vryburg Naledi	300,001-500K	\N
district	DC39	2016	Vryburg Naledi	500,001-800K	\N
district	DC39	2016	Vryburg Naledi	800,001-1M	\N
district	DC39	2016	Vryburg Naledi	Above 1M	\N
district	DC26	2016	Vryheid Abaqulusi	Under 1.5K	\N
district	DC26	2016	Vryheid Abaqulusi	1,501-3K	\N
district	DC26	2016	Vryheid Abaqulusi	3,001-5K	\N
district	DC26	2016	Vryheid Abaqulusi	5,001-10K	1041
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
district	DC18	2016	Welkom Matjhabeng	20,001-30K	381
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
municipality	MAN	2016	Wepener Naledi	1,501-3K	1047
municipality	MAN	2016	Wepener Naledi	3,001-5K	3089
municipality	MAN	2016	Wepener Naledi	5,001-10K	460
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
district	DC18	2016	Wesselsbron Nala	5,001-10K	439
district	DC18	2016	Wesselsbron Nala	10,001-20K	698
district	DC18	2016	Wesselsbron Nala	20,001-30K	693
district	DC18	2016	Wesselsbron Nala	30,001-40K	\N
district	DC18	2016	Wesselsbron Nala	40,001-50K	\N
district	DC18	2016	Wesselsbron Nala	50,001-100K	257
district	DC18	2016	Wesselsbron Nala	100,001-150K	\N
district	DC18	2016	Wesselsbron Nala	150,001-200K	\N
district	DC18	2016	Wesselsbron Nala	200,001-300K	\N
district	DC18	2016	Wesselsbron Nala	300,001-500K	\N
district	DC18	2016	Wesselsbron Nala	500,001-800K	\N
district	DC18	2016	Wesselsbron Nala	800,001-1M	\N
district	DC18	2016	Wesselsbron Nala	Above 1M	\N
district	DC10	2016	Willomore Baviaans	Under 1.5K	2110
district	DC10	2016	Willomore Baviaans	1,501-3K	7817
district	DC10	2016	Willomore Baviaans	3,001-5K	4226
district	DC10	2016	Willomore Baviaans	5,001-10K	4029
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
district	DC18	2016	Winburg Masilonyana	5,001-10K	3735
district	DC18	2016	Winburg Masilonyana	10,001-20K	1603
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
district	DC14	2016	Wodehouse	Under 1.5K	17987
district	DC14	2016	Wodehouse	1,501-3K	342
district	DC14	2016	Wodehouse	3,001-5K	3684
district	DC14	2016	Wodehouse	5,001-10K	4390
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
district	DC40	2016	Wolmaransstad Maquassi	3,001-5K	546
district	DC40	2016	Wolmaransstad Maquassi	5,001-10K	3006
district	DC40	2016	Wolmaransstad Maquassi	10,001-20K	1305
district	DC40	2016	Wolmaransstad Maquassi	20,001-30K	543
district	DC40	2016	Wolmaransstad Maquassi	30,001-40K	370
district	DC40	2016	Wolmaransstad Maquassi	40,001-50K	139
district	DC40	2016	Wolmaransstad Maquassi	50,001-100K	\N
district	DC40	2016	Wolmaransstad Maquassi	100,001-150K	\N
district	DC40	2016	Wolmaransstad Maquassi	150,001-200K	\N
district	DC40	2016	Wolmaransstad Maquassi	200,001-300K	\N
district	DC40	2016	Wolmaransstad Maquassi	300,001-500K	\N
district	DC40	2016	Wolmaransstad Maquassi	500,001-800K	\N
district	DC40	2016	Wolmaransstad Maquassi	800,001-1M	\N
district	DC40	2016	Wolmaransstad Maquassi	Above 1M	\N
district	DC2	2016	Worcester Breede Valley	Under 1.5K	7209
district	DC2	2016	Worcester Breede Valley	1,501-3K	2431
district	DC2	2016	Worcester Breede Valley	3,001-5K	\N
district	DC2	2016	Worcester Breede Valley	5,001-10K	5325
district	DC2	2016	Worcester Breede Valley	10,001-20K	1154
district	DC2	2016	Worcester Breede Valley	20,001-30K	7000
district	DC2	2016	Worcester Breede Valley	30,001-40K	\N
district	DC2	2016	Worcester Breede Valley	40,001-50K	333
district	DC2	2016	Worcester Breede Valley	50,001-100K	100
district	DC2	2016	Worcester Breede Valley	100,001-150K	535
district	DC2	2016	Worcester Breede Valley	150,001-200K	65
district	DC2	2016	Worcester Breede Valley	200,001-300K	113
district	DC2	2016	Worcester Breede Valley	300,001-500K	\N
district	DC2	2016	Worcester Breede Valley	500,001-800K	11
district	DC2	2016	Worcester Breede Valley	800,001-1M	\N
district	DC2	2016	Worcester Breede Valley	Above 1M	\N
district	DC16	2016	Zastron Mohokare	Under 1.5K	\N
district	DC16	2016	Zastron Mohokare	1,501-3K	1245
district	DC16	2016	Zastron Mohokare	3,001-5K	1688
district	DC16	2016	Zastron Mohokare	5,001-10K	969
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
district	DC38	2016	Zeerust Ramotshere	Under 1.5K	2194
district	DC38	2016	Zeerust Ramotshere	1,501-3K	1958
district	DC38	2016	Zeerust Ramotshere	3,001-5K	786
district	DC38	2016	Zeerust Ramotshere	5,001-10K	11426
district	DC38	2016	Zeerust Ramotshere	10,001-20K	8941
district	DC38	2016	Zeerust Ramotshere	20,001-30K	3996
district	DC38	2016	Zeerust Ramotshere	30,001-40K	326
district	DC38	2016	Zeerust Ramotshere	40,001-50K	\N
district	DC38	2016	Zeerust Ramotshere	50,001-100K	184
district	DC38	2016	Zeerust Ramotshere	100,001-150K	53
district	DC38	2016	Zeerust Ramotshere	150,001-200K	\N
district	DC38	2016	Zeerust Ramotshere	200,001-300K	\N
district	DC38	2016	Zeerust Ramotshere	300,001-500K	\N
district	DC38	2016	Zeerust Ramotshere	500,001-800K	\N
district	DC38	2016	Zeerust Ramotshere	800,001-1M	\N
district	DC38	2016	Zeerust Ramotshere	Above 1M	\N
district	DC10	2016	Aberdeen	Under 1.5K	\N
district	DC10	2016	Aberdeen	1,501-3K	2046
district	DC10	2016	Aberdeen	50,001-100K	\N
district	DC10	2016	Aberdeen	100,001-150K	\N
district	DC10	2016	Aberdeen	150,001-200K	\N
district	DC10	2016	Aberdeen	200,001-300K	\N
district	DC10	2016	Aberdeen	300,001-500K	\N
district	DC10	2016	Aberdeen	500,001-800K	\N
district	DC10	2016	Aberdeen	800,001-1M	\N
district	DC10	2016	Aberdeen	Above 1M	\N
district	DC10	2016	Albany	Under 1.5K	\N
district	DC10	2016	Albany	1,501-3K	3077
district	DC10	2016	Albany	3,001-5K	3145
district	DC10	2016	Albany	5,001-10K	3253
district	DC10	2016	Albany	10,001-20K	677
district	DC10	2016	Albany	20,001-30K	768
district	DC10	2016	Albany	30,001-40K	\N
district	DC10	2016	Albany	40,001-50K	\N
district	DC10	2016	Albany	50,001-100K	11
district	DC10	2016	Albany	100,001-150K	\N
district	DC10	2016	Albany	150,001-200K	14
district	DC10	2016	Albany	200,001-300K	\N
district	DC10	2016	Albany	300,001-500K	\N
district	DC10	2016	Albany	500,001-800K	\N
district	DC10	2016	Albany	800,001-1M	\N
district	DC10	2016	Albany	Above 1M	\N
district	DC10	2016	Alexandria Ndlambe	Under 1.5K	\N
district	DC10	2016	Alexandria Ndlambe	1,501-3K	\N
district	DC10	2016	Alexandria Ndlambe	3,001-5K	970
district	DC10	2016	Alexandria Ndlambe	5,001-10K	2204
district	DC10	2016	Alexandria Ndlambe	10,001-20K	555
district	DC10	2016	Alexandria Ndlambe	20,001-30K	892
district	DC10	2016	Alexandria Ndlambe	30,001-40K	110
district	DC10	2016	Alexandria Ndlambe	40,001-50K	604
district	DC10	2016	Alexandria Ndlambe	50,001-100K	\N
district	DC10	2016	Alexandria Ndlambe	100,001-150K	\N
district	DC10	2016	Alexandria Ndlambe	150,001-200K	\N
district	DC10	2016	Alexandria Ndlambe	200,001-300K	\N
district	DC10	2016	Alexandria Ndlambe	300,001-500K	25
district	DC10	2016	Alexandria Ndlambe	500,001-800K	\N
district	DC10	2016	Alexandria Ndlambe	800,001-1M	\N
district	DC10	2016	Alexandria Ndlambe	Above 1M	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	Under 1.5K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	1,501-3K	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	3,001-5K	779
district	DC14	2016	Aliwal-Noord Maletsiwai	5,001-10K	2045
district	DC14	2016	Aliwal-Noord Maletsiwai	10,001-20K	1041
district	DC14	2016	Aliwal-Noord Maletsiwai	20,001-30K	407
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
district	DC14	2016	Barkly-Oos Senqu	1,501-3K	1348
district	DC14	2016	Barkly-Oos Senqu	3,001-5K	508
district	DC14	2016	Barkly-Oos Senqu	5,001-10K	4281
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
district	DC10	2016	Bathurst Ndlambe	5,001-10K	1129
district	DC10	2016	Bathurst Ndlambe	10,001-20K	2221
district	DC10	2016	Bathurst Ndlambe	20,001-30K	\N
district	DC10	2016	Bathurst Ndlambe	30,001-40K	\N
district	DC10	2016	Bathurst Ndlambe	40,001-50K	104
district	DC10	2016	Bathurst Ndlambe	50,001-100K	28
district	DC10	2016	Bathurst Ndlambe	100,001-150K	55
district	DC10	2016	Bathurst Ndlambe	150,001-200K	\N
district	DC10	2016	Bathurst Ndlambe	200,001-300K	\N
district	DC10	2016	Bathurst Ndlambe	300,001-500K	\N
district	DC10	2016	Bathurst Ndlambe	500,001-800K	\N
district	DC10	2016	Bathurst Ndlambe	800,001-1M	\N
district	DC10	2016	Bathurst Ndlambe	Above 1M	\N
district	DC12	2016	Bedford Amathole	Under 1.5K	\N
district	DC12	2016	Bedford Amathole	1,501-3K	\N
district	DC12	2016	Bedford Amathole	3,001-5K	\N
district	DC12	2016	Bedford Amathole	5,001-10K	3591
district	DC12	2016	Bedford Amathole	10,001-20K	\N
district	DC12	2016	Bedford Amathole	20,001-30K	2707
district	DC12	2016	Bedford Amathole	30,001-40K	\N
district	DC12	2016	Bedford Amathole	40,001-50K	\N
district	DC12	2016	Bedford Amathole	50,001-100K	\N
district	DC12	2016	Bedford Amathole	100,001-150K	\N
district	DC12	2016	Bedford Amathole	150,001-200K	\N
district	DC12	2016	Bedford Amathole	200,001-300K	52
district	DC12	2016	Bedford Amathole	300,001-500K	\N
district	DC12	2016	Bedford Amathole	500,001-800K	\N
district	DC12	2016	Bedford Amathole	800,001-1M	\N
district	DC12	2016	Bedford Amathole	Above 1M	\N
district	DC12	2016	Cathcart Amahlathi	Under 1.5K	\N
district	DC12	2016	Cathcart Amahlathi	1,501-3K	\N
district	DC12	2016	Cathcart Amahlathi	3,001-5K	641
district	DC12	2016	Cathcart Amahlathi	5,001-10K	2390
district	DC12	2016	Cathcart Amahlathi	10,001-20K	\N
district	DC12	2016	Cathcart Amahlathi	20,001-30K	\N
district	DC12	2016	Cathcart Amahlathi	30,001-40K	\N
district	DC12	2016	Cathcart Amahlathi	40,001-50K	\N
district	DC12	2016	Cathcart Amahlathi	50,001-100K	22
district	DC12	2016	Cathcart Amahlathi	100,001-150K	\N
district	DC12	2016	Cathcart Amahlathi	150,001-200K	\N
district	DC12	2016	Cathcart Amahlathi	200,001-300K	\N
district	DC12	2016	Cathcart Amahlathi	300,001-500K	\N
district	DC12	2016	Cathcart Amahlathi	500,001-800K	\N
district	DC12	2016	Cathcart Amahlathi	800,001-1M	\N
district	DC12	2016	Cathcart Amahlathi	Above 1M	\N
district	DC13	2016	Cradock Inxuba Yethemba	Under 1.5K	\N
district	DC13	2016	Cradock Inxuba Yethemba	1,501-3K	3897
district	DC13	2016	Cradock Inxuba Yethemba	3,001-5K	10428
district	DC13	2016	Cradock Inxuba Yethemba	5,001-10K	5977
district	DC13	2016	Cradock Inxuba Yethemba	10,001-20K	\N
district	DC13	2016	Cradock Inxuba Yethemba	20,001-30K	\N
district	DC13	2016	Cradock Inxuba Yethemba	30,001-40K	\N
district	DC13	2016	Cradock Inxuba Yethemba	40,001-50K	559
district	DC13	2016	Cradock Inxuba Yethemba	50,001-100K	508
district	DC13	2016	Cradock Inxuba Yethemba	100,001-150K	\N
district	DC13	2016	Cradock Inxuba Yethemba	150,001-200K	141
district	DC13	2016	Cradock Inxuba Yethemba	200,001-300K	\N
district	DC13	2016	Cradock Inxuba Yethemba	300,001-500K	\N
district	DC13	2016	Cradock Inxuba Yethemba	500,001-800K	\N
district	DC13	2016	Cradock Inxuba Yethemba	800,001-1M	\N
district	DC13	2016	Cradock Inxuba Yethemba	Above 1M	\N
district	DC14	2016	Elliot Sakhiszwe	Under 1.5K	\N
district	DC14	2016	Elliot Sakhiszwe	1,501-3K	136
district	DC14	2016	Elliot Sakhiszwe	3,001-5K	1422
district	DC14	2016	Elliot Sakhiszwe	5,001-10K	1167
district	DC14	2016	Elliot Sakhiszwe	10,001-20K	\N
district	DC14	2016	Elliot Sakhiszwe	20,001-30K	531
district	DC14	2016	Elliot Sakhiszwe	30,001-40K	\N
district	DC14	2016	Elliot Sakhiszwe	40,001-50K	37
district	DC14	2016	Elliot Sakhiszwe	50,001-100K	12
district	DC14	2016	Elliot Sakhiszwe	100,001-150K	\N
district	DC14	2016	Elliot Sakhiszwe	150,001-200K	\N
district	DC14	2016	Elliot Sakhiszwe	200,001-300K	\N
district	DC14	2016	Elliot Sakhiszwe	300,001-500K	\N
district	DC14	2016	Elliot Sakhiszwe	500,001-800K	\N
district	DC14	2016	Elliot Sakhiszwe	800,001-1M	\N
district	DC14	2016	Elliot Sakhiszwe	Above 1M	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	Under 1.5K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	1,501-3K	702
district	DC12	2016	Fort Beaufort Raymond Mhlaba	3,001-5K	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	5,001-10K	723
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
district	DC10	2016	Graaff-Reinet Camdeboo	Under 1.5K	1937
district	DC10	2016	Graaff-Reinet Camdeboo	1,501-3K	1937
district	DC10	2016	Graaff-Reinet Camdeboo	3,001-5K	5804
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
district	DC10	2016	Humansdorp Kouga	Under 1.5K	2184
district	DC10	2016	Humansdorp Kouga	1,501-3K	1287
district	DC10	2016	Humansdorp Kouga	3,001-5K	\N
district	DC10	2016	Humansdorp Kouga	5,001-10K	152
district	DC10	2016	Humansdorp Kouga	10,001-20K	2254
district	DC10	2016	Humansdorp Kouga	20,001-30K	124
district	DC10	2016	Humansdorp Kouga	30,001-40K	592
district	DC10	2016	Humansdorp Kouga	40,001-50K	190
district	DC10	2016	Humansdorp Kouga	50,001-100K	828
district	DC10	2016	Humansdorp Kouga	100,001-150K	21
district	DC10	2016	Humansdorp Kouga	150,001-200K	\N
district	DC10	2016	Humansdorp Kouga	200,001-300K	21
district	DC10	2016	Humansdorp Kouga	300,001-500K	40
district	DC10	2016	Humansdorp Kouga	500,001-800K	47
district	DC10	2016	Humansdorp Kouga	800,001-1M	\N
district	DC10	2016	Humansdorp Kouga	Above 1M	12
district	DC10	2016	Jansenville Ikwezi	Under 1.5K	\N
district	DC10	2016	Jansenville Ikwezi	1,501-3K	3927
district	DC10	2016	Jansenville Ikwezi	3,001-5K	2288
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
district	DC10	2016	Joubertina Kou-Kamma	Under 1.5K	499
district	DC10	2016	Joubertina Kou-Kamma	1,501-3K	296
district	DC10	2016	Joubertina Kou-Kamma	3,001-5K	\N
district	DC10	2016	Joubertina Kou-Kamma	5,001-10K	89
district	DC10	2016	Joubertina Kou-Kamma	10,001-20K	150
district	DC10	2016	Joubertina Kou-Kamma	20,001-30K	\N
district	DC10	2016	Joubertina Kou-Kamma	30,001-40K	36
district	DC10	2016	Joubertina Kou-Kamma	40,001-50K	32
district	DC10	2016	Joubertina Kou-Kamma	50,001-100K	12
district	DC10	2016	Joubertina Kou-Kamma	100,001-150K	\N
district	DC10	2016	Joubertina Kou-Kamma	150,001-200K	\N
district	DC10	2016	Joubertina Kou-Kamma	200,001-300K	\N
district	DC10	2016	Joubertina Kou-Kamma	300,001-500K	95
district	DC10	2016	Joubertina Kou-Kamma	500,001-800K	\N
district	DC10	2016	Joubertina Kou-Kamma	800,001-1M	\N
district	DC10	2016	Joubertina Kou-Kamma	Above 1M	\N
municipality	BUF	2016	King Williams Town Baffalo City	Under 1.5K	508
municipality	BUF	2016	King Williams Town Baffalo City	1,501-3K	2560
municipality	BUF	2016	King Williams Town Baffalo City	3,001-5K	\N
municipality	BUF	2016	King Williams Town Baffalo City	5,001-10K	2547
municipality	BUF	2016	King Williams Town Baffalo City	10,001-20K	400
municipality	BUF	2016	King Williams Town Baffalo City	20,001-30K	\N
municipality	BUF	2016	King Williams Town Baffalo City	30,001-40K	\N
municipality	BUF	2016	King Williams Town Baffalo City	40,001-50K	\N
municipality	BUF	2016	King Williams Town Baffalo City	50,001-100K	\N
municipality	BUF	2016	King Williams Town Baffalo City	100,001-150K	\N
municipality	BUF	2016	King Williams Town Baffalo City	150,001-200K	\N
municipality	BUF	2016	King Williams Town Baffalo City	200,001-300K	\N
municipality	BUF	2016	King Williams Town Baffalo City	300,001-500K	183
municipality	BUF	2016	King Williams Town Baffalo City	500,001-800K	\N
municipality	BUF	2016	King Williams Town Baffalo City	800,001-1M	\N
municipality	BUF	2016	King Williams Town Baffalo City	Above 1M	\N
district	DC12	2016	Komga Great Kei	Under 1.5K	\N
district	DC12	2016	Komga Great Kei	1,501-3K	243
district	DC12	2016	Komga Great Kei	3,001-5K	\N
district	DC12	2016	Komga Great Kei	5,001-10K	2819
district	DC12	2016	Komga Great Kei	10,001-20K	\N
district	DC12	2016	Komga Great Kei	20,001-30K	87
district	DC12	2016	Komga Great Kei	30,001-40K	419
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
district	DC14	2016	Maclear Elundini	1,501-3K	3622
district	DC14	2016	Maclear Elundini	3,001-5K	755
district	DC14	2016	Maclear Elundini	5,001-10K	767
district	DC14	2016	Maclear Elundini	10,001-20K	1764
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
district	DC13	2016	Middelburg EC Inxuba Yethemba	1,501-3K	8815
district	DC13	2016	Middelburg EC Inxuba Yethemba	3,001-5K	12282
district	DC13	2016	Middelburg EC Inxuba Yethemba	5,001-10K	1487
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
district	DC13	2016	Molteno Inkwanca	1,501-3K	369
district	DC13	2016	Molteno Inkwanca	3,001-5K	2573
district	DC13	2016	Molteno Inkwanca	5,001-10K	375
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
district	DC15	2016	Mthatha King Sabata Dalindyebo	Under 1.5K	1265
district	DC15	2016	Mthatha King Sabata Dalindyebo	1,501-3K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	3,001-5K	1046
district	DC15	2016	Mthatha King Sabata Dalindyebo	5,001-10K	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	10,001-20K	1013
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
municipality	BUF	2016	Oos-Londen Baffalo City	5,001-10K	269
municipality	BUF	2016	Oos-Londen Baffalo City	10,001-20K	467
municipality	BUF	2016	Oos-Londen Baffalo City	20,001-30K	229
municipality	BUF	2016	Oos-Londen Baffalo City	30,001-40K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	40,001-50K	87
municipality	BUF	2016	Oos-Londen Baffalo City	50,001-100K	307
municipality	BUF	2016	Oos-Londen Baffalo City	100,001-150K	90
municipality	BUF	2016	Oos-Londen Baffalo City	150,001-200K	123
municipality	BUF	2016	Oos-Londen Baffalo City	200,001-300K	48
municipality	BUF	2016	Oos-Londen Baffalo City	300,001-500K	43
municipality	BUF	2016	Oos-Londen Baffalo City	500,001-800K	\N
municipality	BUF	2016	Oos-Londen Baffalo City	800,001-1M	15
municipality	BUF	2016	Oos-Londen Baffalo City	Above 1M	\N
district	DC10	2016	Pearston Blue Crane	Under 1.5K	\N
district	DC10	2016	Pearston Blue Crane	1,501-3K	\N
district	DC10	2016	Pearston Blue Crane	3,001-5K	\N
district	DC10	2016	Pearston Blue Crane	5,001-10K	8955
district	DC10	2016	Pearston Blue Crane	10,001-20K	483
district	DC10	2016	Pearston Blue Crane	20,001-30K	\N
district	DC10	2016	Pearston Blue Crane	30,001-40K	\N
district	DC10	2016	Pearston Blue Crane	40,001-50K	\N
district	DC10	2016	Pearston Blue Crane	50,001-100K	103
district	DC10	2016	Pearston Blue Crane	100,001-150K	\N
district	DC10	2016	Pearston Blue Crane	150,001-200K	\N
district	DC10	2016	Pearston Blue Crane	200,001-300K	\N
district	DC10	2016	Pearston Blue Crane	300,001-500K	\N
district	DC10	2016	Pearston Blue Crane	500,001-800K	\N
district	DC10	2016	Pearston Blue Crane	800,001-1M	\N
district	DC10	2016	Pearston Blue Crane	Above 1M	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Under 1.5K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	1,501-3K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	3,001-5K	172
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	5,001-10K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	10,001-20K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	20,001-30K	34
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	30,001-40K	32
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	40,001-50K	43
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	50,001-100K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	100,001-150K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	150,001-200K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	200,001-300K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	300,001-500K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	500,001-800K	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	800,001-1M	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Above 1M	\N
district	DC13	2016	Queenstown Lukanji	Under 1.5K	\N
district	DC13	2016	Queenstown Lukanji	1,501-3K	1631
district	DC13	2016	Queenstown Lukanji	3,001-5K	\N
district	DC13	2016	Queenstown Lukanji	5,001-10K	754
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
district	DC10	2016	Somerset-Oos Blue Crane	1,501-3K	3961
district	DC10	2016	Somerset-Oos Blue Crane	3,001-5K	2805
district	DC10	2016	Somerset-Oos Blue Crane	5,001-10K	3210
district	DC10	2016	Somerset-Oos Blue Crane	10,001-20K	1558
district	DC10	2016	Somerset-Oos Blue Crane	20,001-30K	728
district	DC10	2016	Somerset-Oos Blue Crane	30,001-40K	\N
district	DC10	2016	Somerset-Oos Blue Crane	40,001-50K	\N
district	DC10	2016	Somerset-Oos Blue Crane	50,001-100K	43
district	DC10	2016	Somerset-Oos Blue Crane	100,001-150K	119
district	DC10	2016	Somerset-Oos Blue Crane	150,001-200K	\N
district	DC10	2016	Somerset-Oos Blue Crane	200,001-300K	43
district	DC10	2016	Somerset-Oos Blue Crane	300,001-500K	\N
district	DC10	2016	Somerset-Oos Blue Crane	500,001-800K	\N
district	DC10	2016	Somerset-Oos Blue Crane	800,001-1M	\N
district	DC10	2016	Somerset-Oos Blue Crane	Above 1M	\N
district	DC14	2016	Steynsburg Gariep	Under 1.5K	\N
district	DC14	2016	Steynsburg Gariep	1,501-3K	2659
district	DC14	2016	Steynsburg Gariep	3,001-5K	2465
district	DC14	2016	Steynsburg Gariep	5,001-10K	396
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
district	DC10	2016	Steytlerville Dr Beyers Naude	3,001-5K	2690
district	DC10	2016	Steytlerville Dr Beyers Naude	5,001-10K	4600
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
district	DC12	2016	Stutterheim Amahlathi	5,001-10K	1127
district	DC12	2016	Stutterheim Amahlathi	10,001-20K	706
district	DC12	2016	Stutterheim Amahlathi	20,001-30K	89
district	DC12	2016	Stutterheim Amahlathi	30,001-40K	\N
district	DC12	2016	Stutterheim Amahlathi	40,001-50K	16
district	DC12	2016	Stutterheim Amahlathi	50,001-100K	\N
district	DC12	2016	Stutterheim Amahlathi	100,001-150K	\N
district	DC12	2016	Stutterheim Amahlathi	150,001-200K	\N
district	DC12	2016	Stutterheim Amahlathi	200,001-300K	\N
district	DC12	2016	Stutterheim Amahlathi	300,001-500K	\N
district	DC12	2016	Stutterheim Amahlathi	500,001-800K	\N
district	DC12	2016	Stutterheim Amahlathi	800,001-1M	\N
district	DC12	2016	Stutterheim Amahlathi	Above 1M	\N
district	DC13	2016	Tarkastad Tsolwana	Under 1.5K	\N
district	DC13	2016	Tarkastad Tsolwana	1,501-3K	1394
district	DC13	2016	Tarkastad Tsolwana	3,001-5K	5413
district	DC13	2016	Tarkastad Tsolwana	5,001-10K	6994
district	DC13	2016	Tarkastad Tsolwana	10,001-20K	16
district	DC13	2016	Tarkastad Tsolwana	20,001-30K	20
district	DC13	2016	Tarkastad Tsolwana	30,001-40K	\N
district	DC13	2016	Tarkastad Tsolwana	40,001-50K	\N
district	DC13	2016	Tarkastad Tsolwana	50,001-100K	107
district	DC13	2016	Tarkastad Tsolwana	100,001-150K	\N
district	DC13	2016	Tarkastad Tsolwana	150,001-200K	\N
district	DC13	2016	Tarkastad Tsolwana	200,001-300K	\N
district	DC13	2016	Tarkastad Tsolwana	300,001-500K	\N
district	DC13	2016	Tarkastad Tsolwana	500,001-800K	\N
district	DC13	2016	Tarkastad Tsolwana	800,001-1M	\N
district	DC13	2016	Tarkastad Tsolwana	Above 1M	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Under 1.5K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	1,501-3K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	3,001-5K	970
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	5,001-10K	1777
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	10,001-20K	1956
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	20,001-30K	\N
district	DC36	2016	Marken	300,001-500K	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	30,001-40K	118
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	40,001-50K	199
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	50,001-100K	129
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	100,001-150K	59
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	150,001-200K	34
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	200,001-300K	16
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	300,001-500K	160
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	500,001-800K	97
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	800,001-1M	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Above 1M	\N
district	DC44	2016	Uniondale	Under 1.5K	1492
district	DC44	2016	Uniondale	1,501-3K	2252
district	DC44	2016	Uniondale	3,001-5K	120
district	DC44	2016	Uniondale	5,001-10K	3688
district	DC44	2016	Uniondale	10,001-20K	\N
district	DC44	2016	Uniondale	20,001-30K	1272
district	DC44	2016	Uniondale	30,001-40K	\N
district	DC44	2016	Uniondale	40,001-50K	81
district	DC44	2016	Uniondale	50,001-100K	\N
district	DC44	2016	Uniondale	100,001-150K	\N
district	DC44	2016	Uniondale	150,001-200K	161
district	DC44	2016	Uniondale	200,001-300K	\N
district	DC44	2016	Uniondale	300,001-500K	\N
district	DC44	2016	Uniondale	500,001-800K	\N
district	DC44	2016	Uniondale	800,001-1M	\N
district	DC44	2016	Uniondale	Above 1M	\N
district	DC10	2016	Willomore Baviaans	Under 1.5K	2110
district	DC10	2016	Willomore Baviaans	1,501-3K	7817
district	DC10	2016	Willomore Baviaans	3,001-5K	4226
district	DC10	2016	Willomore Baviaans	5,001-10K	4029
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
district	DC14	2016	Wodehouse	Under 1.5K	17987
district	DC14	2016	Wodehouse	1,501-3K	342
district	DC14	2016	Wodehouse	3,001-5K	3684
district	DC14	2016	Wodehouse	5,001-10K	4390
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
district	DC19	2016	Bethlehem Dihlabeng	Under 1.5K	737
district	DC19	2016	Bethlehem Dihlabeng	1,501-3K	\N
district	DC19	2016	Bethlehem Dihlabeng	3,001-5K	\N
district	DC19	2016	Bethlehem Dihlabeng	5,001-10K	256
district	DC19	2016	Bethlehem Dihlabeng	10,001-20K	1876
district	DC19	2016	Bethlehem Dihlabeng	20,001-30K	3525
district	DC19	2016	Bethlehem Dihlabeng	30,001-40K	1375
district	DC19	2016	Bethlehem Dihlabeng	40,001-50K	335
district	DC19	2016	Bethlehem Dihlabeng	50,001-100K	\N
district	DC19	2016	Bethlehem Dihlabeng	100,001-150K	\N
district	DC19	2016	Bethlehem Dihlabeng	150,001-200K	\N
district	DC19	2016	Bethlehem Dihlabeng	200,001-300K	\N
district	DC19	2016	Bethlehem Dihlabeng	300,001-500K	\N
district	DC19	2016	Bethlehem Dihlabeng	500,001-800K	12
district	DC19	2016	Bethlehem Dihlabeng	800,001-1M	\N
district	DC19	2016	Bethlehem Dihlabeng	Above 1M	\N
district	DC16	2016	Bethulie	Under 1.5K	\N
district	DC16	2016	Bethulie	1,501-3K	\N
district	DC16	2016	Bethulie	3,001-5K	\N
district	DC16	2016	Bethulie	5,001-10K	2880
district	DC16	2016	Bethulie	10,001-20K	357
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
municipality	MAN	2016	Bloemfontein Mangaung	1,501-3K	306
municipality	MAN	2016	Bloemfontein Mangaung	3,001-5K	5514
municipality	MAN	2016	Bloemfontein Mangaung	5,001-10K	5653
municipality	MAN	2016	Bloemfontein Mangaung	10,001-20K	6544
municipality	MAN	2016	Bloemfontein Mangaung	20,001-30K	1294
municipality	MAN	2016	Bloemfontein Mangaung	30,001-40K	274
municipality	MAN	2016	Bloemfontein Mangaung	40,001-50K	115
municipality	MAN	2016	Bloemfontein Mangaung	50,001-100K	287
municipality	MAN	2016	Bloemfontein Mangaung	100,001-150K	143
municipality	MAN	2016	Bloemfontein Mangaung	150,001-200K	37
municipality	MAN	2016	Bloemfontein Mangaung	200,001-300K	83
municipality	MAN	2016	Bloemfontein Mangaung	300,001-500K	12
municipality	MAN	2016	Bloemfontein Mangaung	500,001-800K	\N
municipality	MAN	2016	Bloemfontein Mangaung	800,001-1M	\N
municipality	MAN	2016	Bloemfontein Mangaung	Above 1M	\N
district	DC18	2016	Boshof Tokologo	Under 1.5K	563
district	DC18	2016	Boshof Tokologo	1,501-3K	3806
district	DC18	2016	Boshof Tokologo	3,001-5K	7614
district	DC18	2016	Boshof Tokologo	5,001-10K	6814
district	DC18	2016	Boshof Tokologo	10,001-20K	499
district	DC18	2016	Boshof Tokologo	20,001-30K	2399
district	DC18	2016	Boshof Tokologo	30,001-40K	\N
district	DC18	2016	Boshof Tokologo	40,001-50K	\N
district	DC18	2016	Boshof Tokologo	50,001-100K	21
district	DC18	2016	Boshof Tokologo	100,001-150K	\N
district	DC18	2016	Boshof Tokologo	150,001-200K	\N
district	DC18	2016	Boshof Tokologo	200,001-300K	\N
district	DC18	2016	Boshof Tokologo	300,001-500K	\N
district	DC18	2016	Boshof Tokologo	500,001-800K	\N
district	DC18	2016	Boshof Tokologo	800,001-1M	\N
district	DC18	2016	Boshof Tokologo	Above 1M	\N
district	DC18	2016	Bothaville Nala	Under 1.5K	\N
district	DC18	2016	Bothaville Nala	1,501-3K	\N
district	DC18	2016	Bothaville Nala	3,001-5K	602
district	DC18	2016	Bothaville Nala	5,001-10K	2673
district	DC18	2016	Bothaville Nala	10,001-20K	3404
district	DC18	2016	Bothaville Nala	20,001-30K	640
district	DC18	2016	Bothaville Nala	30,001-40K	\N
district	DC18	2016	Bothaville Nala	40,001-50K	739
district	DC18	2016	Bothaville Nala	50,001-100K	1360
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
district	DC18	2016	Brandfort Masilonyana	5,001-10K	2803
district	DC18	2016	Brandfort Masilonyana	10,001-20K	1030
district	DC18	2016	Brandfort Masilonyana	20,001-30K	\N
district	DC18	2016	Brandfort Masilonyana	30,001-40K	\N
district	DC18	2016	Brandfort Masilonyana	40,001-50K	21
district	DC18	2016	Brandfort Masilonyana	50,001-100K	49
district	DC18	2016	Brandfort Masilonyana	100,001-150K	\N
district	DC18	2016	Brandfort Masilonyana	150,001-200K	\N
district	DC18	2016	Brandfort Masilonyana	200,001-300K	\N
district	DC18	2016	Brandfort Masilonyana	300,001-500K	\N
district	DC18	2016	Brandfort Masilonyana	500,001-800K	\N
district	DC18	2016	Brandfort Masilonyana	800,001-1M	\N
district	DC18	2016	Brandfort Masilonyana	Above 1M	\N
district	DC18	2016	Bultfontein Tswelopele	Under 1.5K	\N
district	DC18	2016	Bultfontein Tswelopele	1,501-3K	\N
district	DC18	2016	Bultfontein Tswelopele	3,001-5K	1055
district	DC18	2016	Bultfontein Tswelopele	5,001-10K	959
district	DC18	2016	Bultfontein Tswelopele	10,001-20K	236
district	DC18	2016	Bultfontein Tswelopele	20,001-30K	202
district	DC18	2016	Bultfontein Tswelopele	30,001-40K	\N
district	DC18	2016	Bultfontein Tswelopele	40,001-50K	368
district	DC18	2016	Bultfontein Tswelopele	50,001-100K	137
district	DC18	2016	Bultfontein Tswelopele	100,001-150K	\N
district	DC18	2016	Bultfontein Tswelopele	150,001-200K	\N
district	DC18	2016	Bultfontein Tswelopele	200,001-300K	\N
district	DC18	2016	Bultfontein Tswelopele	300,001-500K	\N
district	DC18	2016	Bultfontein Tswelopele	500,001-800K	\N
district	DC18	2016	Bultfontein Tswelopele	800,001-1M	\N
district	DC18	2016	Bultfontein Tswelopele	Above 1M	\N
district	DC19	2016	Clocolan Setso	Under 1.5K	\N
district	DC19	2016	Clocolan Setso	1,501-3K	518
district	DC19	2016	Clocolan Setso	3,001-5K	183
district	DC19	2016	Clocolan Setso	5,001-10K	696
district	DC19	2016	Clocolan Setso	10,001-20K	1772
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
district	DC16	2016	Dewetsdorp Naledi	3,001-5K	3306
district	DC16	2016	Dewetsdorp Naledi	5,001-10K	149
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
district	DC16	2016	Edenburg Kopanong	1,501-3K	1937
district	DC16	2016	Edenburg Kopanong	3,001-5K	453
district	DC16	2016	Edenburg Kopanong	5,001-10K	855
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
district	DC16	2016	Fauresmith Kopanong	1,501-3K	776
district	DC16	2016	Fauresmith Kopanong	3,001-5K	6247
district	DC16	2016	Fauresmith Kopanong	5,001-10K	4618
district	DC16	2016	Fauresmith Kopanong	10,001-20K	343
district	DC16	2016	Fauresmith Kopanong	20,001-30K	\N
district	DC16	2016	Fauresmith Kopanong	30,001-40K	\N
district	DC16	2016	Fauresmith Kopanong	40,001-50K	\N
district	DC16	2016	Fauresmith Kopanong	50,001-100K	117
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
district	DC19	2016	Ficksburg Setso	5,001-10K	2356
district	DC19	2016	Ficksburg Setso	10,001-20K	1405
district	DC19	2016	Ficksburg Setso	20,001-30K	\N
district	DC19	2016	Ficksburg Setso	30,001-40K	\N
district	DC19	2016	Ficksburg Setso	40,001-50K	80
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
district	DC19	2016	Fouriesburg Dikabeng	5,001-10K	405
district	DC19	2016	Fouriesburg Dikabeng	10,001-20K	643
district	DC19	2016	Fouriesburg Dikabeng	20,001-30K	550
district	DC19	2016	Fouriesburg Dikabeng	30,001-40K	\N
district	DC19	2016	Fouriesburg Dikabeng	40,001-50K	\N
district	DC19	2016	Fouriesburg Dikabeng	50,001-100K	\N
district	DC19	2016	Fouriesburg Dikabeng	100,001-150K	\N
district	DC19	2016	Fouriesburg Dikabeng	150,001-200K	\N
district	DC19	2016	Fouriesburg Dikabeng	200,001-300K	88
district	DC19	2016	Fouriesburg Dikabeng	300,001-500K	\N
district	DC19	2016	Fouriesburg Dikabeng	500,001-800K	\N
district	DC19	2016	Fouriesburg Dikabeng	800,001-1M	\N
district	DC19	2016	Fouriesburg Dikabeng	Above 1M	\N
district	DC20	2016	Frankfort Mafube	Under 1.5K	\N
district	DC20	2016	Frankfort Mafube	1,501-3K	\N
district	DC20	2016	Frankfort Mafube	3,001-5K	\N
district	DC20	2016	Frankfort Mafube	5,001-10K	519
district	DC20	2016	Frankfort Mafube	10,001-20K	5380
district	DC20	2016	Frankfort Mafube	20,001-30K	1612
district	DC20	2016	Frankfort Mafube	30,001-40K	517
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
district	DC19	2016	Harrismith Maluti-A-Phofung	3,001-5K	428
district	DC19	2016	Harrismith Maluti-A-Phofung	5,001-10K	4895
district	DC19	2016	Harrismith Maluti-A-Phofung	10,001-20K	5877
district	DC19	2016	Harrismith Maluti-A-Phofung	20,001-30K	534
district	DC19	2016	Harrismith Maluti-A-Phofung	30,001-40K	2277
district	DC19	2016	Harrismith Maluti-A-Phofung	40,001-50K	19
district	DC19	2016	Harrismith Maluti-A-Phofung	50,001-100K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	100,001-150K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	150,001-200K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	200,001-300K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	300,001-500K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	500,001-800K	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	800,001-1M	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	Above 1M	\N
district	DC20	2016	Heilbron Ngwathe	Under 1.5K	\N
district	DC20	2016	Heilbron Ngwathe	1,501-3K	349
district	DC20	2016	Heilbron Ngwathe	3,001-5K	\N
district	DC20	2016	Heilbron Ngwathe	5,001-10K	2052
district	DC20	2016	Heilbron Ngwathe	10,001-20K	4093
district	DC20	2016	Heilbron Ngwathe	20,001-30K	2043
district	DC20	2016	Heilbron Ngwathe	30,001-40K	85
district	DC20	2016	Heilbron Ngwathe	40,001-50K	\N
district	DC20	2016	Heilbron Ngwathe	50,001-100K	25
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
district	DC18	2016	Hoopstad Tswelopele	10,001-20K	726
district	DC18	2016	Hoopstad Tswelopele	20,001-30K	733
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
district	DC16	2016	Jacobsdal Letsemeng	1,501-3K	705
district	DC16	2016	Jacobsdal Letsemeng	3,001-5K	3382
district	DC16	2016	Jacobsdal Letsemeng	5,001-10K	2501
district	DC16	2016	Jacobsdal Letsemeng	10,001-20K	467
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
district	DC20	2016	Koppies Ngwathe	5,001-10K	2247
district	DC20	2016	Koppies Ngwathe	10,001-20K	1166
district	DC20	2016	Koppies Ngwathe	20,001-30K	174
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
district	DC20	2016	Kroonstad Moqhaka	5,001-10K	4381
district	DC20	2016	Kroonstad Moqhaka	10,001-20K	3537
district	DC20	2016	Kroonstad Moqhaka	20,001-30K	519
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
district	DC19	2016	Ladybrand Mantsopa	Under 1.5K	714
district	DC19	2016	Ladybrand Mantsopa	1,501-3K	\N
district	DC19	2016	Ladybrand Mantsopa	3,001-5K	1430
district	DC19	2016	Ladybrand Mantsopa	5,001-10K	678
district	DC19	2016	Ladybrand Mantsopa	10,001-20K	1775
district	DC19	2016	Ladybrand Mantsopa	20,001-30K	223
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
district	DC19	2016	Lindley Nketoana	5,001-10K	7316
district	DC19	2016	Lindley Nketoana	10,001-20K	4742
district	DC19	2016	Lindley Nketoana	20,001-30K	1004
district	DC19	2016	Lindley Nketoana	30,001-40K	23
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
district	DC19	2016	Marquard Setso	5,001-10K	3448
district	DC19	2016	Marquard Setso	10,001-20K	1379
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
district	DC18	2016	Odendaalsrus Matjhabeng	10,001-20K	257
district	DC18	2016	Odendaalsrus Matjhabeng	20,001-30K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	30,001-40K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	40,001-50K	38
district	DC18	2016	Odendaalsrus Matjhabeng	50,001-100K	38
district	DC18	2016	Odendaalsrus Matjhabeng	100,001-150K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	150,001-200K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	200,001-300K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	300,001-500K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	500,001-800K	\N
district	DC18	2016	Odendaalsrus Matjhabeng	800,001-1M	\N
district	DC18	2016	Odendaalsrus Matjhabeng	Above 1M	\N
district	DC20	2016	Parys Ngwathe	Under 1.5K	115
district	DC20	2016	Parys Ngwathe	1,501-3K	10
district	DC20	2016	Parys Ngwathe	3,001-5K	\N
district	DC20	2016	Parys Ngwathe	5,001-10K	\N
district	DC20	2016	Parys Ngwathe	10,001-20K	1743
district	DC20	2016	Parys Ngwathe	20,001-30K	72
district	DC20	2016	Parys Ngwathe	30,001-40K	\N
district	DC20	2016	Parys Ngwathe	40,001-50K	79
district	DC20	2016	Parys Ngwathe	50,001-100K	97
district	DC20	2016	Parys Ngwathe	100,001-150K	\N
district	DC20	2016	Parys Ngwathe	150,001-200K	\N
district	DC20	2016	Parys Ngwathe	200,001-300K	\N
district	DC20	2016	Parys Ngwathe	300,001-500K	28
district	DC20	2016	Parys Ngwathe	500,001-800K	\N
district	DC20	2016	Parys Ngwathe	800,001-1M	\N
district	DC20	2016	Parys Ngwathe	Above 1M	\N
district	DC16	2016	Philipolis Kopanong	Under 1.5K	\N
district	DC16	2016	Philipolis Kopanong	1,501-3K	\N
district	DC16	2016	Philipolis Kopanong	3,001-5K	2971
district	DC16	2016	Philipolis Kopanong	5,001-10K	857
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
district	DC16	2016	Reddersburg Kopanong	3,001-5K	1831
district	DC16	2016	Reddersburg Kopanong	5,001-10K	2246
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
district	DC19	2016	Reitz Nketoana	Under 1.5K	505
district	DC19	2016	Reitz Nketoana	1,501-3K	\N
district	DC19	2016	Reitz Nketoana	3,001-5K	183
district	DC19	2016	Reitz Nketoana	5,001-10K	1460
district	DC19	2016	Reitz Nketoana	10,001-20K	5154
district	DC19	2016	Reitz Nketoana	20,001-30K	844
district	DC19	2016	Reitz Nketoana	30,001-40K	96
district	DC19	2016	Reitz Nketoana	40,001-50K	219
district	DC19	2016	Reitz Nketoana	50,001-100K	\N
district	DC19	2016	Reitz Nketoana	100,001-150K	\N
district	DC19	2016	Reitz Nketoana	150,001-200K	\N
district	DC19	2016	Reitz Nketoana	200,001-300K	69
district	DC19	2016	Reitz Nketoana	300,001-500K	\N
district	DC19	2016	Reitz Nketoana	500,001-800K	\N
district	DC19	2016	Reitz Nketoana	800,001-1M	\N
district	DC19	2016	Reitz Nketoana	Above 1M	\N
district	DC16	2016	Rouxville Mohokare	Under 1.5K	\N
district	DC16	2016	Rouxville Mohokare	1,501-3K	\N
district	DC16	2016	Rouxville Mohokare	3,001-5K	1646
district	DC16	2016	Rouxville Mohokare	5,001-10K	4494
district	DC16	2016	Rouxville Mohokare	10,001-20K	821
district	DC16	2016	Rouxville Mohokare	20,001-30K	1112
district	DC16	2016	Rouxville Mohokare	30,001-40K	\N
district	DC16	2016	Rouxville Mohokare	40,001-50K	\N
district	DC16	2016	Rouxville Mohokare	50,001-100K	\N
district	DC16	2016	Rouxville Mohokare	100,001-150K	26
district	DC16	2016	Rouxville Mohokare	150,001-200K	\N
district	DC16	2016	Rouxville Mohokare	200,001-300K	\N
district	DC16	2016	Rouxville Mohokare	300,001-500K	\N
district	DC16	2016	Rouxville Mohokare	500,001-800K	\N
district	DC16	2016	Rouxville Mohokare	800,001-1M	\N
district	DC16	2016	Rouxville Mohokare	Above 1M	\N
district	DC19	2016	Senekal Setsoto	Under 1.5K	\N
district	DC19	2016	Senekal Setsoto	1,501-3K	\N
district	DC19	2016	Senekal Setsoto	3,001-5K	\N
district	DC19	2016	Senekal Setsoto	5,001-10K	6322
district	DC19	2016	Senekal Setsoto	10,001-20K	2681
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
district	DC16	2016	Smithfield Mohkare	Under 1.5K	373
district	DC16	2016	Smithfield Mohkare	1,501-3K	\N
district	DC16	2016	Smithfield Mohkare	3,001-5K	\N
district	DC16	2016	Smithfield Mohkare	5,001-10K	419
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
municipality	MAN	2016	Thaba Nchu	1,501-3K	1754
municipality	MAN	2016	Thaba Nchu	3,001-5K	1116
municipality	MAN	2016	Thaba Nchu	5,001-10K	371
municipality	MAN	2016	Thaba Nchu	10,001-20K	557
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
district	DC18	2016	Theunissen Masilonyana	Under 1.5K	787
district	DC18	2016	Theunissen Masilonyana	1,501-3K	171
district	DC18	2016	Theunissen Masilonyana	3,001-5K	292
district	DC18	2016	Theunissen Masilonyana	5,001-10K	345
district	DC18	2016	Theunissen Masilonyana	10,001-20K	2091
district	DC18	2016	Theunissen Masilonyana	20,001-30K	389
district	DC18	2016	Theunissen Masilonyana	30,001-40K	\N
district	DC18	2016	Theunissen Masilonyana	40,001-50K	527
district	DC18	2016	Theunissen Masilonyana	50,001-100K	349
district	DC18	2016	Theunissen Masilonyana	100,001-150K	65
district	DC18	2016	Theunissen Masilonyana	150,001-200K	\N
district	DC18	2016	Theunissen Masilonyana	200,001-300K	\N
district	DC18	2016	Theunissen Masilonyana	300,001-500K	\N
district	DC18	2016	Theunissen Masilonyana	500,001-800K	\N
district	DC18	2016	Theunissen Masilonyana	800,001-1M	\N
district	DC18	2016	Theunissen Masilonyana	Above 1M	\N
district	DC18	2016	Ventersburg Matjhabeng	Under 1.5K	\N
district	DC18	2016	Ventersburg Matjhabeng	1,501-3K	684
district	DC18	2016	Ventersburg Matjhabeng	3,001-5K	494
district	DC18	2016	Ventersburg Matjhabeng	5,001-10K	1319
district	DC18	2016	Ventersburg Matjhabeng	10,001-20K	1997
district	DC18	2016	Ventersburg Matjhabeng	20,001-30K	10
district	DC18	2016	Ventersburg Matjhabeng	30,001-40K	\N
district	DC18	2016	Ventersburg Matjhabeng	40,001-50K	\N
district	DC18	2016	Ventersburg Matjhabeng	50,001-100K	\N
district	DC18	2016	Ventersburg Matjhabeng	100,001-150K	25
district	DC18	2016	Ventersburg Matjhabeng	150,001-200K	\N
district	DC18	2016	Ventersburg Matjhabeng	200,001-300K	\N
district	DC18	2016	Ventersburg Matjhabeng	300,001-500K	\N
district	DC18	2016	Ventersburg Matjhabeng	500,001-800K	\N
district	DC18	2016	Ventersburg Matjhabeng	800,001-1M	\N
district	DC18	2016	Ventersburg Matjhabeng	Above 1M	\N
district	DC20	2016	Viljoenskroon Moqhaka	Under 1.5K	\N
district	DC20	2016	Viljoenskroon Moqhaka	1,501-3K	\N
district	DC20	2016	Viljoenskroon Moqhaka	3,001-5K	\N
district	DC20	2016	Viljoenskroon Moqhaka	5,001-10K	298
district	DC20	2016	Viljoenskroon Moqhaka	10,001-20K	1343
district	DC20	2016	Viljoenskroon Moqhaka	20,001-30K	\N
district	DC20	2016	Viljoenskroon Moqhaka	30,001-40K	\N
district	DC20	2016	Viljoenskroon Moqhaka	40,001-50K	\N
district	DC20	2016	Viljoenskroon Moqhaka	50,001-100K	16
district	DC20	2016	Viljoenskroon Moqhaka	100,001-150K	\N
district	DC20	2016	Viljoenskroon Moqhaka	150,001-200K	3803
district	DC20	2016	Viljoenskroon Moqhaka	200,001-300K	\N
district	DC20	2016	Viljoenskroon Moqhaka	300,001-500K	\N
district	DC20	2016	Viljoenskroon Moqhaka	500,001-800K	\N
district	DC20	2016	Viljoenskroon Moqhaka	800,001-1M	\N
district	DC20	2016	Viljoenskroon Moqhaka	Above 1M	\N
district	DC19	2016	Vrede Phumelela	Under 1.5K	472
district	DC19	2016	Vrede Phumelela	1,501-3K	184
district	DC19	2016	Vrede Phumelela	3,001-5K	866
district	DC19	2016	Vrede Phumelela	5,001-10K	4561
district	DC19	2016	Vrede Phumelela	10,001-20K	4574
district	DC19	2016	Vrede Phumelela	20,001-30K	4386
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
district	DC20	2016	Vredefort Ngwathe	5,001-10K	534
district	DC20	2016	Vredefort Ngwathe	10,001-20K	2145
district	DC20	2016	Vredefort Ngwathe	20,001-30K	31
district	DC20	2016	Vredefort Ngwathe	30,001-40K	258
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
district	DC18	2016	Welkom Matjhabeng	20,001-30K	381
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
municipality	MAN	2016	Wepener Naledi	1,501-3K	1047
municipality	MAN	2016	Wepener Naledi	3,001-5K	3089
municipality	MAN	2016	Wepener Naledi	5,001-10K	460
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
district	DC18	2016	Wesselsbron Nala	5,001-10K	439
district	DC18	2016	Wesselsbron Nala	10,001-20K	698
district	DC18	2016	Wesselsbron Nala	20,001-30K	693
district	DC18	2016	Wesselsbron Nala	30,001-40K	\N
district	DC18	2016	Wesselsbron Nala	40,001-50K	\N
district	DC18	2016	Wesselsbron Nala	50,001-100K	257
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
district	DC18	2016	Winburg Masilonyana	5,001-10K	3735
district	DC18	2016	Winburg Masilonyana	10,001-20K	1603
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
district	DC16	2016	Zastron Mohokare	1,501-3K	1245
district	DC16	2016	Zastron Mohokare	3,001-5K	1688
district	DC16	2016	Zastron Mohokare	5,001-10K	969
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
district	DC48	2016	Carletonville Merafong	Under 1.5K	211
district	DC48	2016	Carletonville Merafong	1,501-3K	27
district	DC48	2016	Carletonville Merafong	3,001-5K	293
district	DC48	2016	Carletonville Merafong	5,001-10K	7862
district	DC48	2016	Carletonville Merafong	10,001-20K	5149
district	DC48	2016	Carletonville Merafong	20,001-30K	627
district	DC48	2016	Carletonville Merafong	30,001-40K	913
district	DC48	2016	Carletonville Merafong	40,001-50K	1314
district	DC48	2016	Carletonville Merafong	50,001-100K	1042
district	DC48	2016	Carletonville Merafong	100,001-150K	136
district	DC48	2016	Carletonville Merafong	150,001-200K	40
district	DC48	2016	Carletonville Merafong	200,001-300K	160
district	DC48	2016	Carletonville Merafong	300,001-500K	83
district	DC48	2016	Carletonville Merafong	500,001-800K	12
district	DC48	2016	Carletonville Merafong	800,001-1M	20
district	DC48	2016	Carletonville Merafong	Above 1M	49
district	DC30	2016	Leandra Gonovan Mbeki	Under 1.5K	253
district	DC30	2016	Leandra Gonovan Mbeki	1,501-3K	\N
district	DC30	2016	Leandra Gonovan Mbeki	3,001-5K	\N
district	DC30	2016	Leandra Gonovan Mbeki	5,001-10K	382
district	DC30	2016	Leandra Gonovan Mbeki	10,001-20K	6908
district	DC30	2016	Leandra Gonovan Mbeki	20,001-30K	1351
district	DC30	2016	Leandra Gonovan Mbeki	30,001-40K	1160
district	DC30	2016	Leandra Gonovan Mbeki	40,001-50K	648
district	DC30	2016	Leandra Gonovan Mbeki	50,001-100K	139
district	DC30	2016	Leandra Gonovan Mbeki	100,001-150K	158
district	DC30	2016	Leandra Gonovan Mbeki	150,001-200K	\N
district	DC30	2016	Leandra Gonovan Mbeki	200,001-300K	20
district	DC30	2016	Leandra Gonovan Mbeki	300,001-500K	\N
district	DC30	2016	Leandra Gonovan Mbeki	500,001-800K	\N
district	DC30	2016	Leandra Gonovan Mbeki	800,001-1M	\N
district	DC30	2016	Leandra Gonovan Mbeki	Above 1M	\N
municipality	EKU	2016	Nigel Ekurhuleni	Under 1.5K	47
municipality	EKU	2016	Nigel Ekurhuleni	1,501-3K	\N
municipality	EKU	2016	Nigel Ekurhuleni	3,001-5K	15
municipality	EKU	2016	Nigel Ekurhuleni	5,001-10K	620
municipality	EKU	2016	Nigel Ekurhuleni	10,001-20K	2285
municipality	EKU	2016	Nigel Ekurhuleni	20,001-30K	990
municipality	EKU	2016	Nigel Ekurhuleni	30,001-40K	359
municipality	EKU	2016	Nigel Ekurhuleni	40,001-50K	517
municipality	EKU	2016	Nigel Ekurhuleni	50,001-100K	446
municipality	EKU	2016	Nigel Ekurhuleni	100,001-150K	87
municipality	EKU	2016	Nigel Ekurhuleni	150,001-200K	35
municipality	EKU	2016	Nigel Ekurhuleni	200,001-300K	127
municipality	EKU	2016	Nigel Ekurhuleni	300,001-500K	\N
municipality	EKU	2016	Nigel Ekurhuleni	500,001-800K	12
municipality	EKU	2016	Nigel Ekurhuleni	800,001-1M	\N
municipality	EKU	2016	Nigel Ekurhuleni	Above 1M	75
municipality	TSH	2016	Pretoria Tshwane	Under 1.5K	\N
municipality	TSH	2016	Pretoria Tshwane	1,501-3K	\N
municipality	TSH	2016	Pretoria Tshwane	3,001-5K	\N
municipality	TSH	2016	Pretoria Tshwane	5,001-10K	1680
municipality	TSH	2016	Pretoria Tshwane	10,001-20K	1858
municipality	TSH	2016	Pretoria Tshwane	20,001-30K	1936
municipality	TSH	2016	Pretoria Tshwane	30,001-40K	1230
municipality	TSH	2016	Pretoria Tshwane	40,001-50K	814
municipality	TSH	2016	Pretoria Tshwane	50,001-100K	1385
municipality	TSH	2016	Pretoria Tshwane	100,001-150K	266
municipality	TSH	2016	Pretoria Tshwane	150,001-200K	212
municipality	TSH	2016	Pretoria Tshwane	200,001-300K	311
municipality	TSH	2016	Pretoria Tshwane	300,001-500K	287
municipality	TSH	2016	Pretoria Tshwane	500,001-800K	95
municipality	TSH	2016	Pretoria Tshwane	800,001-1M	\N
municipality	TSH	2016	Pretoria Tshwane	Above 1M	174
district	DC29	2016	Ballito KwaDukuza	Under 1.5K	\N
district	DC29	2016	Ballito KwaDukuza	1,501-3K	\N
district	DC29	2016	Ballito KwaDukuza	3,001-5K	379
district	DC29	2016	Ballito KwaDukuza	5,001-10K	56
district	DC29	2016	Ballito KwaDukuza	10,001-20K	220
district	DC29	2016	Ballito KwaDukuza	20,001-30K	752
district	DC29	2016	Ballito KwaDukuza	30,001-40K	180
district	DC29	2016	Ballito KwaDukuza	40,001-50K	659
district	DC29	2016	Ballito KwaDukuza	50,001-100K	740
district	DC29	2016	Ballito KwaDukuza	100,001-150K	622
district	DC29	2016	Ballito KwaDukuza	150,001-200K	43
district	DC29	2016	Ballito KwaDukuza	200,001-300K	\N
district	DC29	2016	Ballito KwaDukuza	300,001-500K	13
district	DC29	2016	Ballito KwaDukuza	500,001-800K	294
district	DC29	2016	Ballito KwaDukuza	800,001-1M	\N
district	DC29	2016	Ballito KwaDukuza	Above 1M	34
district	DC24	2016	Helpmekaar uMzinyathi	Under 1.5K	\N
district	DC24	2016	Helpmekaar uMzinyathi	1,501-3K	\N
district	DC24	2016	Helpmekaar uMzinyathi	3,001-5K	116
district	DC24	2016	Helpmekaar uMzinyathi	5,001-10K	2112
district	DC24	2016	Helpmekaar uMzinyathi	10,001-20K	824
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
district	DC27	2016	Jozini Mkuze	10,001-20K	21
district	DC27	2016	Jozini Mkuze	20,001-30K	\N
district	DC27	2016	Jozini Mkuze	30,001-40K	14
district	DC27	2016	Jozini Mkuze	40,001-50K	451
district	DC27	2016	Jozini Mkuze	50,001-100K	20
district	DC27	2016	Jozini Mkuze	100,001-150K	\N
district	DC27	2016	Jozini Mkuze	150,001-200K	\N
district	DC27	2016	Jozini Mkuze	200,001-300K	\N
district	DC27	2016	Jozini Mkuze	300,001-500K	\N
district	DC27	2016	Jozini Mkuze	500,001-800K	\N
district	DC27	2016	Jozini Mkuze	800,001-1M	\N
district	DC27	2016	Jozini Mkuze	Above 1M	\N
district	DC43	2016	Kokstad	Under 1.5K	\N
district	DC43	2016	Kokstad	1,501-3K	\N
district	DC43	2016	Kokstad	3,001-5K	646
district	DC43	2016	Kokstad	5,001-10K	490
district	DC43	2016	Kokstad	10,001-20K	7026
district	DC43	2016	Kokstad	20,001-30K	1545
district	DC43	2016	Kokstad	30,001-40K	76
district	DC43	2016	Kokstad	40,001-50K	\N
district	DC43	2016	Kokstad	50,001-100K	227
district	DC43	2016	Kokstad	100,001-150K	18
district	DC43	2016	Kokstad	150,001-200K	\N
district	DC43	2016	Kokstad	200,001-300K	10
district	DC43	2016	Kokstad	300,001-500K	\N
district	DC43	2016	Kokstad	500,001-800K	\N
district	DC43	2016	Kokstad	800,001-1M	\N
district	DC43	2016	Kokstad	Above 1M	\N
district	DC23	2016	Ladysmith Emnambithi	Under 1.5K	\N
district	DC23	2016	Ladysmith Emnambithi	1,501-3K	\N
district	DC23	2016	Ladysmith Emnambithi	3,001-5K	1243
district	DC23	2016	Ladysmith Emnambithi	5,001-10K	7065
district	DC23	2016	Ladysmith Emnambithi	10,001-20K	3075
district	DC23	2016	Ladysmith Emnambithi	20,001-30K	122
district	DC23	2016	Ladysmith Emnambithi	30,001-40K	\N
district	DC23	2016	Ladysmith Emnambithi	40,001-50K	133
district	DC23	2016	Ladysmith Emnambithi	50,001-100K	87
district	DC23	2016	Ladysmith Emnambithi	100,001-150K	\N
district	DC23	2016	Ladysmith Emnambithi	150,001-200K	\N
district	DC23	2016	Ladysmith Emnambithi	200,001-300K	20
district	DC23	2016	Ladysmith Emnambithi	300,001-500K	\N
district	DC23	2016	Ladysmith Emnambithi	500,001-800K	\N
district	DC23	2016	Ladysmith Emnambithi	800,001-1M	\N
district	DC23	2016	Ladysmith Emnambithi	Above 1M	\N
district	DC26	2016	Louwsburg Abaqulusi	Under 1.5K	\N
district	DC26	2016	Louwsburg Abaqulusi	1,501-3K	1836
district	DC26	2016	Louwsburg Abaqulusi	3,001-5K	\N
district	DC26	2016	Louwsburg Abaqulusi	5,001-10K	1885
district	DC26	2016	Louwsburg Abaqulusi	10,001-20K	2642
district	DC26	2016	Louwsburg Abaqulusi	20,001-30K	5900
district	DC26	2016	Louwsburg Abaqulusi	30,001-40K	\N
district	DC26	2016	Louwsburg Abaqulusi	40,001-50K	\N
district	DC26	2016	Louwsburg Abaqulusi	50,001-100K	\N
district	DC26	2016	Louwsburg Abaqulusi	100,001-150K	389
district	DC26	2016	Louwsburg Abaqulusi	150,001-200K	\N
district	DC26	2016	Louwsburg Abaqulusi	200,001-300K	\N
district	DC26	2016	Louwsburg Abaqulusi	300,001-500K	\N
district	DC26	2016	Louwsburg Abaqulusi	500,001-800K	\N
district	DC26	2016	Louwsburg Abaqulusi	800,001-1M	\N
district	DC26	2016	Louwsburg Abaqulusi	Above 1M	\N
district	DC25	2016	Newcastle	Under 1.5K	2035
district	DC25	2016	Newcastle	1,501-3K	60
district	DC25	2016	Newcastle	3,001-5K	\N
district	DC25	2016	Newcastle	5,001-10K	2734
district	DC25	2016	Newcastle	10,001-20K	1745
district	DC25	2016	Newcastle	20,001-30K	587
district	DC25	2016	Newcastle	30,001-40K	13
district	DC25	2016	Newcastle	40,001-50K	63
district	DC25	2016	Newcastle	50,001-100K	\N
district	DC25	2016	Newcastle	100,001-150K	33
district	DC25	2016	Newcastle	150,001-200K	\N
district	DC25	2016	Newcastle	200,001-300K	\N
district	DC25	2016	Newcastle	300,001-500K	\N
district	DC25	2016	Newcastle	500,001-800K	\N
district	DC25	2016	Newcastle	800,001-1M	\N
district	DC25	2016	Newcastle	Above 1M	\N
district	DC22	2016	Pietermaritzburg Msunduzi	Under 1.5K	844
district	DC22	2016	Pietermaritzburg Msunduzi	1,501-3K	253
district	DC22	2016	Pietermaritzburg Msunduzi	3,001-5K	206
district	DC22	2016	Pietermaritzburg Msunduzi	5,001-10K	2171
district	DC22	2016	Pietermaritzburg Msunduzi	10,001-20K	2207
district	DC22	2016	Pietermaritzburg Msunduzi	20,001-30K	1317
district	DC22	2016	Pietermaritzburg Msunduzi	30,001-40K	1800
district	DC22	2016	Pietermaritzburg Msunduzi	40,001-50K	725
district	DC22	2016	Pietermaritzburg Msunduzi	50,001-100K	8407
district	DC22	2016	Pietermaritzburg Msunduzi	100,001-150K	505
district	DC22	2016	Pietermaritzburg Msunduzi	150,001-200K	257
district	DC22	2016	Pietermaritzburg Msunduzi	200,001-300K	286
district	DC22	2016	Pietermaritzburg Msunduzi	300,001-500K	217
district	DC22	2016	Pietermaritzburg Msunduzi	500,001-800K	12
district	DC22	2016	Pietermaritzburg Msunduzi	800,001-1M	19
district	DC22	2016	Pietermaritzburg Msunduzi	Above 1M	24
district	DC21	2016	Port Shepstone Ray Nkonyeni	Under 1.5K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	1,501-3K	545
district	DC21	2016	Port Shepstone Ray Nkonyeni	3,001-5K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	5,001-10K	1059
district	DC21	2016	Port Shepstone Ray Nkonyeni	10,001-20K	248
district	DC21	2016	Port Shepstone Ray Nkonyeni	20,001-30K	1238
district	DC21	2016	Port Shepstone Ray Nkonyeni	30,001-40K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	40,001-50K	142
district	DC21	2016	Port Shepstone Ray Nkonyeni	50,001-100K	243
district	DC21	2016	Port Shepstone Ray Nkonyeni	100,001-150K	99
district	DC21	2016	Port Shepstone Ray Nkonyeni	150,001-200K	23
district	DC21	2016	Port Shepstone Ray Nkonyeni	200,001-300K	15
district	DC21	2016	Port Shepstone Ray Nkonyeni	300,001-500K	31
district	DC21	2016	Port Shepstone Ray Nkonyeni	500,001-800K	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	800,001-1M	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	Above 1M	\N
district	DC27	2016	St Lucia Mtubatuba	Under 1.5K	64
district	DC27	2016	St Lucia Mtubatuba	1,501-3K	\N
district	DC27	2016	St Lucia Mtubatuba	3,001-5K	\N
district	DC27	2016	St Lucia Mtubatuba	5,001-10K	\N
district	DC27	2016	St Lucia Mtubatuba	10,001-20K	\N
district	DC27	2016	St Lucia Mtubatuba	20,001-30K	\N
district	DC27	2016	St Lucia Mtubatuba	30,001-40K	81
district	DC27	2016	St Lucia Mtubatuba	40,001-50K	\N
district	DC27	2016	St Lucia Mtubatuba	50,001-100K	194
district	DC27	2016	St Lucia Mtubatuba	100,001-150K	\N
district	DC27	2016	St Lucia Mtubatuba	150,001-200K	\N
district	DC27	2016	St Lucia Mtubatuba	200,001-300K	\N
district	DC27	2016	St Lucia Mtubatuba	300,001-500K	\N
district	DC27	2016	St Lucia Mtubatuba	500,001-800K	\N
district	DC27	2016	St Lucia Mtubatuba	800,001-1M	\N
district	DC27	2016	St Lucia Mtubatuba	Above 1M	\N
district	DC26	2016	Ulundi	Under 1.5K	10287
district	DC26	2016	Ulundi	1,501-3K	\N
district	DC26	2016	Ulundi	3,001-5K	\N
district	DC26	2016	Ulundi	5,001-10K	122
district	DC26	2016	Ulundi	10,001-20K	4918
district	DC26	2016	Ulundi	20,001-30K	22
district	DC26	2016	Ulundi	30,001-40K	111
district	DC26	2016	Ulundi	40,001-50K	73
district	DC26	2016	Ulundi	50,001-100K	461
district	DC26	2016	Ulundi	100,001-150K	127
district	DC26	2016	Ulundi	150,001-200K	\N
district	DC26	2016	Ulundi	200,001-300K	\N
district	DC26	2016	Ulundi	300,001-500K	\N
district	DC26	2016	Ulundi	500,001-800K	\N
district	DC26	2016	Ulundi	800,001-1M	\N
district	DC26	2016	Ulundi	Above 1M	\N
district	DC43	2016	Underberg KwaSani	Under 1.5K	\N
district	DC43	2016	Underberg KwaSani	1,501-3K	\N
district	DC43	2016	Underberg KwaSani	3,001-5K	410
district	DC43	2016	Underberg KwaSani	5,001-10K	3833
district	DC43	2016	Underberg KwaSani	10,001-20K	2186
district	DC43	2016	Underberg KwaSani	20,001-30K	1118
district	DC43	2016	Underberg KwaSani	30,001-40K	1006
district	DC43	2016	Underberg KwaSani	40,001-50K	983
district	DC43	2016	Underberg KwaSani	50,001-100K	5134
district	DC43	2016	Underberg KwaSani	100,001-150K	297
district	DC43	2016	Underberg KwaSani	150,001-200K	21
district	DC43	2016	Underberg KwaSani	200,001-300K	25
district	DC43	2016	Underberg KwaSani	300,001-500K	\N
district	DC43	2016	Underberg KwaSani	500,001-800K	\N
district	DC43	2016	Underberg KwaSani	800,001-1M	\N
district	DC43	2016	Underberg KwaSani	Above 1M	\N
district	DC25	2016	Utrecht eMadlangeni	Under 1.5K	389
district	DC25	2016	Utrecht eMadlangeni	1,501-3K	22
district	DC25	2016	Utrecht eMadlangeni	3,001-5K	3675
district	DC25	2016	Utrecht eMadlangeni	5,001-10K	6003
district	DC25	2016	Utrecht eMadlangeni	10,001-20K	7689
district	DC25	2016	Utrecht eMadlangeni	20,001-30K	1905
district	DC25	2016	Utrecht eMadlangeni	30,001-40K	225
district	DC25	2016	Utrecht eMadlangeni	40,001-50K	\N
district	DC25	2016	Utrecht eMadlangeni	50,001-100K	46
district	DC25	2016	Utrecht eMadlangeni	100,001-150K	20
district	DC25	2016	Utrecht eMadlangeni	150,001-200K	\N
district	DC25	2016	Utrecht eMadlangeni	200,001-300K	\N
district	DC25	2016	Utrecht eMadlangeni	300,001-500K	\N
district	DC25	2016	Utrecht eMadlangeni	500,001-800K	\N
district	DC25	2016	Utrecht eMadlangeni	800,001-1M	\N
district	DC25	2016	Utrecht eMadlangeni	Above 1M	\N
district	DC26	2016	Vryheid Abaqulusi	Under 1.5K	\N
district	DC26	2016	Vryheid Abaqulusi	1,501-3K	\N
district	DC26	2016	Vryheid Abaqulusi	3,001-5K	\N
district	DC26	2016	Vryheid Abaqulusi	5,001-10K	1041
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
district	DC35	2016	Alldays Blouberg	1,501-3K	1548
district	DC35	2016	Alldays Blouberg	3,001-5K	9230
district	DC35	2016	Alldays Blouberg	5,001-10K	4652
district	DC35	2016	Alldays Blouberg	10,001-20K	1479
district	DC35	2016	Alldays Blouberg	20,001-30K	816
district	DC35	2016	Alldays Blouberg	30,001-40K	\N
district	DC35	2016	Alldays Blouberg	40,001-50K	86
district	DC35	2016	Alldays Blouberg	50,001-100K	59
district	DC35	2016	Alldays Blouberg	100,001-150K	\N
district	DC35	2016	Alldays Blouberg	150,001-200K	\N
district	DC35	2016	Alldays Blouberg	200,001-300K	\N
district	DC35	2016	Alldays Blouberg	300,001-500K	\N
district	DC35	2016	Alldays Blouberg	500,001-800K	\N
district	DC35	2016	Alldays Blouberg	800,001-1M	\N
district	DC35	2016	Alldays Blouberg	Above 1M	\N
district	DC47	2016	Burgersfort Thubatse	Under 1.5K	4006
district	DC47	2016	Burgersfort Thubatse	1,501-3K	831
district	DC47	2016	Burgersfort Thubatse	3,001-5K	1716
district	DC47	2016	Burgersfort Thubatse	5,001-10K	1708
district	DC47	2016	Burgersfort Thubatse	10,001-20K	3177
district	DC47	2016	Burgersfort Thubatse	20,001-30K	1179
district	DC47	2016	Burgersfort Thubatse	30,001-40K	132
district	DC47	2016	Burgersfort Thubatse	40,001-50K	\N
district	DC47	2016	Burgersfort Thubatse	50,001-100K	783
district	DC47	2016	Burgersfort Thubatse	100,001-150K	232
district	DC47	2016	Burgersfort Thubatse	150,001-200K	464
district	DC47	2016	Burgersfort Thubatse	200,001-300K	149
district	DC47	2016	Burgersfort Thubatse	300,001-500K	41
district	DC47	2016	Burgersfort Thubatse	500,001-800K	374
district	DC47	2016	Burgersfort Thubatse	800,001-1M	58
district	DC47	2016	Burgersfort Thubatse	Above 1M	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	Under 1.5K	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	1,501-3K	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	3,001-5K	1329
district	DC34	2016	Dendron Makhado (Louis Trichardt)	5,001-10K	11435
district	DC34	2016	Dendron Makhado (Louis Trichardt)	10,001-20K	3378
district	DC34	2016	Dendron Makhado (Louis Trichardt)	20,001-30K	513
district	DC34	2016	Dendron Makhado (Louis Trichardt)	30,001-40K	385
district	DC34	2016	Dendron Makhado (Louis Trichardt)	40,001-50K	97
district	DC34	2016	Dendron Makhado (Louis Trichardt)	50,001-100K	604
district	DC34	2016	Dendron Makhado (Louis Trichardt)	100,001-150K	267
district	DC34	2016	Dendron Makhado (Louis Trichardt)	150,001-200K	80
district	DC34	2016	Dendron Makhado (Louis Trichardt)	200,001-300K	31
district	DC34	2016	Dendron Makhado (Louis Trichardt)	300,001-500K	22
district	DC34	2016	Dendron Makhado (Louis Trichardt)	500,001-800K	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	800,001-1M	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	Above 1M	\N
district	DC36	2016	Ellisras Lephalale	Under 1.5K	\N
district	DC36	2016	Ellisras Lephalale	1,501-3K	1087
district	DC36	2016	Ellisras Lephalale	3,001-5K	1185
district	DC36	2016	Ellisras Lephalale	5,001-10K	8789
district	DC36	2016	Ellisras Lephalale	10,001-20K	5859
district	DC36	2016	Ellisras Lephalale	20,001-30K	\N
district	DC36	2016	Ellisras Lephalale	30,001-40K	338
district	DC36	2016	Ellisras Lephalale	40,001-50K	23
district	DC36	2016	Ellisras Lephalale	50,001-100K	67
district	DC36	2016	Ellisras Lephalale	100,001-150K	\N
district	DC36	2016	Ellisras Lephalale	150,001-200K	\N
district	DC36	2016	Ellisras Lephalale	200,001-300K	\N
district	DC36	2016	Ellisras Lephalale	300,001-500K	22
district	DC36	2016	Ellisras Lephalale	500,001-800K	\N
district	DC36	2016	Ellisras Lephalale	800,001-1M	\N
district	DC36	2016	Ellisras Lephalale	Above 1M	\N
district	DC36	2016	Marken	Under 1.5K	\N
district	DC36	2016	Marken	1,501-3K	446
district	DC36	2016	Marken	3,001-5K	1279
district	DC36	2016	Marken	5,001-10K	10801
district	DC36	2016	Marken	10,001-20K	2485
district	DC36	2016	Marken	20,001-30K	2859
district	DC36	2016	Marken	30,001-40K	\N
district	DC36	2016	Marken	40,001-50K	\N
district	DC36	2016	Marken	50,001-100K	93
district	DC36	2016	Marken	100,001-150K	\N
district	DC36	2016	Marken	150,001-200K	\N
district	DC36	2016	Marken	200,001-300K	\N
district	DC36	2016	Marken	500,001-800K	\N
district	DC36	2016	Marken	800,001-1M	\N
district	DC36	2016	Marken	Above 1M	\N
district	DC34	2016	Musina	Under 1.5K	56
district	DC34	2016	Musina	1,501-3K	\N
district	DC34	2016	Musina	3,001-5K	264
district	DC34	2016	Musina	5,001-10K	21
district	DC34	2016	Musina	10,001-20K	\N
district	DC34	2016	Musina	20,001-30K	\N
district	DC34	2016	Musina	30,001-40K	258
district	DC34	2016	Musina	40,001-50K	73
district	DC34	2016	Musina	50,001-100K	100
district	DC34	2016	Musina	100,001-150K	\N
district	DC34	2016	Musina	150,001-200K	\N
district	DC34	2016	Musina	200,001-300K	\N
district	DC34	2016	Musina	300,001-500K	\N
district	DC34	2016	Musina	500,001-800K	\N
district	DC34	2016	Musina	800,001-1M	\N
district	DC34	2016	Musina	Above 1M	157
district	DC36	2016	Nylstroom Modimolle	Under 1.5K	418
district	DC36	2016	Nylstroom Modimolle	1,501-3K	2104
district	DC36	2016	Nylstroom Modimolle	3,001-5K	418
district	DC36	2016	Nylstroom Modimolle	5,001-10K	7802
district	DC36	2016	Nylstroom Modimolle	10,001-20K	9044
district	DC36	2016	Nylstroom Modimolle	20,001-30K	6799
district	DC36	2016	Nylstroom Modimolle	30,001-40K	1178
district	DC36	2016	Nylstroom Modimolle	40,001-50K	470
district	DC36	2016	Nylstroom Modimolle	50,001-100K	682
district	DC36	2016	Nylstroom Modimolle	100,001-150K	118
district	DC36	2016	Nylstroom Modimolle	150,001-200K	11
district	DC36	2016	Nylstroom Modimolle	200,001-300K	\N
district	DC36	2016	Nylstroom Modimolle	300,001-500K	17
district	DC36	2016	Nylstroom Modimolle	500,001-800K	\N
district	DC36	2016	Nylstroom Modimolle	800,001-1M	\N
district	DC36	2016	Nylstroom Modimolle	Above 1M	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	Under 1.5K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	1,501-3K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	3,001-5K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	5,001-10K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	10,001-20K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	20,001-30K	21
district	DC33	2016	Phalaborwa Ba-Phalaborwa	30,001-40K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	40,001-50K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	50,001-100K	63
district	DC33	2016	Phalaborwa Ba-Phalaborwa	100,001-150K	21
district	DC33	2016	Phalaborwa Ba-Phalaborwa	150,001-200K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	200,001-300K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	300,001-500K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	500,001-800K	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	800,001-1M	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	Above 1M	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Under 1.5K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	1,501-3K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	3,001-5K	1632
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	5,001-10K	1861
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	10,001-20K	4285
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	20,001-30K	886
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	30,001-40K	182
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	40,001-50K	42
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	50,001-100K	80
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	100,001-150K	335
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	150,001-200K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	200,001-300K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	300,001-500K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	500,001-800K	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	800,001-1M	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Above 1M	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Under 1.5K	322
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	1,501-3K	74
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	3,001-5K	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	5,001-10K	592
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	10,001-20K	1396
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	20,001-30K	1517
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	30,001-40K	51
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	40,001-50K	105
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	50,001-100K	842
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	100,001-150K	72
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	150,001-200K	80
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	200,001-300K	78
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	300,001-500K	39
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	500,001-800K	13
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	800,001-1M	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Above 1M	\N
district	DC36	2016	Thabazimbi	Under 1.5K	2078
district	DC36	2016	Thabazimbi	1,501-3K	\N
district	DC36	2016	Thabazimbi	3,001-5K	16
district	DC36	2016	Thabazimbi	5,001-10K	6816
district	DC36	2016	Thabazimbi	10,001-20K	11718
district	DC36	2016	Thabazimbi	20,001-30K	440
district	DC36	2016	Thabazimbi	30,001-40K	1023
district	DC36	2016	Thabazimbi	40,001-50K	140
district	DC36	2016	Thabazimbi	50,001-100K	1533
district	DC36	2016	Thabazimbi	100,001-150K	11
district	DC36	2016	Thabazimbi	150,001-200K	\N
district	DC36	2016	Thabazimbi	200,001-300K	\N
district	DC36	2016	Thabazimbi	300,001-500K	\N
district	DC36	2016	Thabazimbi	500,001-800K	22
district	DC36	2016	Thabazimbi	800,001-1M	\N
district	DC36	2016	Thabazimbi	Above 1M	\N
district	DC35	2016	Usutu	Under 1.5K	\N
district	DC35	2016	Usutu	1,501-3K	\N
district	DC35	2016	Usutu	3,001-5K	2028
district	DC35	2016	Usutu	5,001-10K	1820
district	DC35	2016	Usutu	10,001-20K	141
district	DC35	2016	Usutu	20,001-30K	949
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
district	DC32	2016	Acornhoek Bushbuckridge	50,001-100K	475
district	DC32	2016	Acornhoek Bushbuckridge	100,001-150K	\N
district	DC32	2016	Acornhoek Bushbuckridge	150,001-200K	\N
district	DC32	2016	Acornhoek Bushbuckridge	200,001-300K	\N
district	DC32	2016	Acornhoek Bushbuckridge	300,001-500K	\N
district	DC32	2016	Acornhoek Bushbuckridge	500,001-800K	\N
district	DC32	2016	Acornhoek Bushbuckridge	800,001-1M	\N
district	DC32	2016	Acornhoek Bushbuckridge	Above 1M	\N
district	DC30	2016	Amsterdam Mkhondo	Under 1.5K	99
district	DC30	2016	Amsterdam Mkhondo	1,501-3K	\N
district	DC30	2016	Amsterdam Mkhondo	3,001-5K	\N
district	DC30	2016	Amsterdam Mkhondo	5,001-10K	1604
district	DC30	2016	Amsterdam Mkhondo	10,001-20K	7571
district	DC30	2016	Amsterdam Mkhondo	20,001-30K	2838
district	DC30	2016	Amsterdam Mkhondo	30,001-40K	1700
district	DC30	2016	Amsterdam Mkhondo	40,001-50K	81
district	DC30	2016	Amsterdam Mkhondo	50,001-100K	66
district	DC30	2016	Amsterdam Mkhondo	100,001-150K	382
district	DC30	2016	Amsterdam Mkhondo	150,001-200K	44
district	DC30	2016	Amsterdam Mkhondo	200,001-300K	51
district	DC30	2016	Amsterdam Mkhondo	300,001-500K	25
district	DC30	2016	Amsterdam Mkhondo	500,001-800K	\N
district	DC30	2016	Amsterdam Mkhondo	800,001-1M	\N
district	DC30	2016	Amsterdam Mkhondo	Above 1M	\N
district	DC30	2016	Bethal Gonovan Mbeki	Under 1.5K	\N
district	DC30	2016	Bethal Gonovan Mbeki	1,501-3K	396
district	DC30	2016	Bethal Gonovan Mbeki	3,001-5K	840
district	DC30	2016	Bethal Gonovan Mbeki	5,001-10K	2935
district	DC30	2016	Bethal Gonovan Mbeki	10,001-20K	8216
district	DC30	2016	Bethal Gonovan Mbeki	20,001-30K	3390
district	DC30	2016	Bethal Gonovan Mbeki	30,001-40K	3790
district	DC30	2016	Bethal Gonovan Mbeki	40,001-50K	2397
district	DC30	2016	Bethal Gonovan Mbeki	50,001-100K	98
district	DC30	2016	Bethal Gonovan Mbeki	100,001-150K	201
district	DC30	2016	Bethal Gonovan Mbeki	150,001-200K	\N
district	DC30	2016	Bethal Gonovan Mbeki	200,001-300K	\N
district	DC30	2016	Bethal Gonovan Mbeki	300,001-500K	23
district	DC30	2016	Bethal Gonovan Mbeki	500,001-800K	\N
district	DC30	2016	Bethal Gonovan Mbeki	800,001-1M	\N
district	DC30	2016	Bethal Gonovan Mbeki	Above 1M	\N
district	DC32	2016	Komatipoort Nkomazi	Under 1.5K	\N
district	DC32	2016	Komatipoort Nkomazi	1,501-3K	291
district	DC32	2016	Komatipoort Nkomazi	3,001-5K	\N
district	DC32	2016	Komatipoort Nkomazi	5,001-10K	975
district	DC32	2016	Komatipoort Nkomazi	10,001-20K	1048
district	DC32	2016	Komatipoort Nkomazi	20,001-30K	184
district	DC32	2016	Komatipoort Nkomazi	30,001-40K	157
district	DC32	2016	Komatipoort Nkomazi	40,001-50K	\N
district	DC32	2016	Komatipoort Nkomazi	50,001-100K	4690
district	DC32	2016	Komatipoort Nkomazi	100,001-150K	473
district	DC32	2016	Komatipoort Nkomazi	150,001-200K	366
district	DC32	2016	Komatipoort Nkomazi	200,001-300K	57
district	DC32	2016	Komatipoort Nkomazi	300,001-500K	103
district	DC32	2016	Komatipoort Nkomazi	500,001-800K	\N
district	DC32	2016	Komatipoort Nkomazi	800,001-1M	\N
district	DC32	2016	Komatipoort Nkomazi	Above 1M	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Under 1.5K	706
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	1,501-3K	614
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	3,001-5K	1808
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	5,001-10K	10042
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	10,001-20K	4768
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	20,001-30K	9937
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	30,001-40K	1308
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	40,001-50K	805
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	50,001-100K	1791
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	100,001-150K	1609
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	150,001-200K	204
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	200,001-300K	443
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	300,001-500K	316
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	500,001-800K	11
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	800,001-1M	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Above 1M	\N
district	DC4	2016	George	500,001-800K	\N
district	DC32	2016	Nelspruit Mbombela	Under 1.5K	1000
district	DC32	2016	Nelspruit Mbombela	1,501-3K	502
district	DC32	2016	Nelspruit Mbombela	3,001-5K	\N
district	DC32	2016	Nelspruit Mbombela	5,001-10K	9908
district	DC32	2016	Nelspruit Mbombela	10,001-20K	5289
district	DC32	2016	Nelspruit Mbombela	20,001-30K	817
district	DC32	2016	Nelspruit Mbombela	30,001-40K	618
district	DC32	2016	Nelspruit Mbombela	40,001-50K	889
district	DC32	2016	Nelspruit Mbombela	50,001-100K	508
district	DC32	2016	Nelspruit Mbombela	100,001-150K	133
district	DC32	2016	Nelspruit Mbombela	150,001-200K	142
district	DC32	2016	Nelspruit Mbombela	200,001-300K	76
district	DC32	2016	Nelspruit Mbombela	300,001-500K	177
district	DC32	2016	Nelspruit Mbombela	500,001-800K	34
district	DC32	2016	Nelspruit Mbombela	800,001-1M	\N
district	DC32	2016	Nelspruit Mbombela	Above 1M	\N
district	DC9	2016	Barkley-Wes Dikgatlong	Under 1.5K	2017
district	DC9	2016	Barkley-Wes Dikgatlong	1,501-3K	1822
district	DC9	2016	Barkley-Wes Dikgatlong	3,001-5K	4205
district	DC9	2016	Barkley-Wes Dikgatlong	5,001-10K	7520
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
district	DC7	2016	Britstown	Under 1.5K	25207
district	DC7	2016	Britstown	1,501-3K	40869
district	DC7	2016	Britstown	3,001-5K	829
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
district	DC6	2016	Calvinia Hantam	Under 1.5K	29400
district	DC6	2016	Calvinia Hantam	1,501-3K	12700
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
district	DC7	2016	Carnavon Kareeberg	Under 1.5K	2030
district	DC7	2016	Carnavon Kareeberg	1,501-3K	36575
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
district	DC7	2016	Colesberg Umsombomvu	Under 1.5K	7734
district	DC7	2016	Colesberg Umsombomvu	1,501-3K	16558
district	DC7	2016	Colesberg Umsombomvu	3,001-5K	\N
district	DC7	2016	Colesberg Umsombomvu	5,001-10K	3275
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
district	DC7	2016	Douglas Siyancuma	3,001-5K	707
district	DC7	2016	Douglas Siyancuma	5,001-10K	\N
district	DC7	2016	Douglas Siyancuma	10,001-20K	\N
district	DC7	2016	Douglas Siyancuma	20,001-30K	\N
district	DC7	2016	Douglas Siyancuma	30,001-40K	\N
district	DC7	2016	Douglas Siyancuma	40,001-50K	\N
district	DC7	2016	Douglas Siyancuma	50,001-100K	\N
district	DC7	2016	Douglas Siyancuma	100,001-150K	57
district	DC7	2016	Douglas Siyancuma	150,001-200K	139
district	DC7	2016	Douglas Siyancuma	200,001-300K	39
district	DC7	2016	Douglas Siyancuma	300,001-500K	\N
district	DC7	2016	Douglas Siyancuma	500,001-800K	\N
district	DC7	2016	Douglas Siyancuma	800,001-1M	\N
district	DC7	2016	Douglas Siyancuma	Above 1M	\N
district	DC6	2016	Fraserburg Karoo Hoogland	Under 1.5K	19598
district	DC6	2016	Fraserburg Karoo Hoogland	1,501-3K	6461
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
district	DC6	2016	Gordonia	Under 1.5K	33314
district	DC6	2016	Gordonia	1,501-3K	64579
district	DC6	2016	Gordonia	3,001-5K	13469
district	DC6	2016	Gordonia	5,001-10K	359
district	DC6	2016	Gordonia	10,001-20K	23
district	DC6	2016	Gordonia	20,001-30K	\N
district	DC6	2016	Gordonia	30,001-40K	\N
district	DC6	2016	Gordonia	40,001-50K	\N
district	DC6	2016	Gordonia	50,001-100K	14
district	DC6	2016	Gordonia	100,001-150K	22
district	DC6	2016	Gordonia	150,001-200K	16
district	DC6	2016	Gordonia	200,001-300K	\N
district	DC6	2016	Gordonia	300,001-500K	\N
district	DC6	2016	Gordonia	500,001-800K	\N
district	DC6	2016	Gordonia	800,001-1M	\N
district	DC6	2016	Gordonia	Above 1M	\N
district	DC7	2016	Hanover Emthanjeni	Under 1.5K	\N
district	DC7	2016	Hanover Emthanjeni	1,501-3K	5401
district	DC7	2016	Hanover Emthanjeni	3,001-5K	857
district	DC7	2016	Hanover Emthanjeni	5,001-10K	2218
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
district	DC7	2016	Hopetown Thembelihle	1,501-3K	9105
district	DC7	2016	Hopetown Thembelihle	3,001-5K	\N
district	DC7	2016	Hopetown Thembelihle	5,001-10K	491
district	DC7	2016	Hopetown Thembelihle	10,001-20K	\N
district	DC7	2016	Hopetown Thembelihle	20,001-30K	491
district	DC7	2016	Hopetown Thembelihle	30,001-40K	\N
district	DC7	2016	Hopetown Thembelihle	40,001-50K	\N
district	DC7	2016	Hopetown Thembelihle	50,001-100K	\N
district	DC7	2016	Hopetown Thembelihle	100,001-150K	423
district	DC7	2016	Hopetown Thembelihle	150,001-200K	892
district	DC7	2016	Hopetown Thembelihle	200,001-300K	278
district	DC7	2016	Hopetown Thembelihle	300,001-500K	\N
district	DC7	2016	Hopetown Thembelihle	500,001-800K	\N
district	DC7	2016	Hopetown Thembelihle	800,001-1M	\N
district	DC7	2016	Hopetown Thembelihle	Above 1M	\N
district	DC8	2016	Kenhardt Kai !Garib	Under 1.5K	97346
district	DC8	2016	Kenhardt Kai !Garib	1,501-3K	8154
district	DC8	2016	Kenhardt Kai !Garib	3,001-5K	\N
district	DC8	2016	Kenhardt Kai !Garib	5,001-10K	852
district	DC8	2016	Kenhardt Kai !Garib	10,001-20K	44
district	DC8	2016	Kenhardt Kai !Garib	20,001-30K	10
district	DC8	2016	Kenhardt Kai !Garib	30,001-40K	\N
district	DC8	2016	Kenhardt Kai !Garib	40,001-50K	\N
district	DC8	2016	Kenhardt Kai !Garib	50,001-100K	12
district	DC8	2016	Kenhardt Kai !Garib	100,001-150K	27
district	DC8	2016	Kenhardt Kai !Garib	150,001-200K	\N
district	DC8	2016	Kenhardt Kai !Garib	200,001-300K	45
district	DC8	2016	Kenhardt Kai !Garib	300,001-500K	12
district	DC8	2016	Kenhardt Kai !Garib	500,001-800K	\N
district	DC8	2016	Kenhardt Kai !Garib	800,001-1M	\N
district	DC8	2016	Kenhardt Kai !Garib	Above 1M	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Under 1.5K	4323
district	DC9	2016	Kimberley / HAY Frances Baard	1,501-3K	25692
district	DC9	2016	Kimberley / HAY Frances Baard	3,001-5K	30246
district	DC9	2016	Kimberley / HAY Frances Baard	5,001-10K	2886
district	DC9	2016	Kimberley / HAY Frances Baard	10,001-20K	917
district	DC9	2016	Kimberley / HAY Frances Baard	20,001-30K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	30,001-40K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	40,001-50K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	50,001-100K	477
district	DC9	2016	Kimberley / HAY Frances Baard	100,001-150K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	150,001-200K	29
district	DC9	2016	Kimberley / HAY Frances Baard	200,001-300K	86
district	DC9	2016	Kimberley / HAY Frances Baard	300,001-500K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	500,001-800K	\N
district	DC9	2016	Kimberley / HAY Frances Baard	800,001-1M	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Above 1M	46
district	DC45	2016	Kuruman Ga-Segonyana	Under 1.5K	2250
district	DC45	2016	Kuruman Ga-Segonyana	1,501-3K	31409
district	DC45	2016	Kuruman Ga-Segonyana	3,001-5K	12386
district	DC45	2016	Kuruman Ga-Segonyana	5,001-10K	8637
district	DC45	2016	Kuruman Ga-Segonyana	10,001-20K	712
district	DC45	2016	Kuruman Ga-Segonyana	20,001-30K	\N
district	DC45	2016	Kuruman Ga-Segonyana	30,001-40K	\N
district	DC45	2016	Kuruman Ga-Segonyana	40,001-50K	\N
district	DC45	2016	Kuruman Ga-Segonyana	50,001-100K	60
district	DC45	2016	Kuruman Ga-Segonyana	100,001-150K	\N
district	DC45	2016	Kuruman Ga-Segonyana	150,001-200K	\N
district	DC45	2016	Kuruman Ga-Segonyana	200,001-300K	300
district	DC45	2016	Kuruman Ga-Segonyana	300,001-500K	\N
district	DC45	2016	Kuruman Ga-Segonyana	500,001-800K	\N
district	DC45	2016	Kuruman Ga-Segonyana	800,001-1M	\N
district	DC45	2016	Kuruman Ga-Segonyana	Above 1M	\N
district	DC6	2016	Namakwa	Under 1.5K	46362
district	DC6	2016	Namakwa	1,501-3K	12989
district	DC6	2016	Namakwa	3,001-5K	322
district	DC6	2016	Namakwa	5,001-10K	\N
district	DC6	2016	Namakwa	10,001-20K	38
district	DC6	2016	Namakwa	20,001-30K	39
district	DC6	2016	Namakwa	30,001-40K	\N
district	DC6	2016	Namakwa	40,001-50K	\N
district	DC6	2016	Namakwa	50,001-100K	24
district	DC6	2016	Namakwa	100,001-150K	\N
district	DC6	2016	Namakwa	150,001-200K	\N
district	DC6	2016	Namakwa	200,001-300K	\N
district	DC6	2016	Namakwa	300,001-500K	\N
district	DC6	2016	Namakwa	500,001-800K	\N
district	DC6	2016	Namakwa	800,001-1M	\N
district	DC6	2016	Namakwa	Above 1M	\N
district	DC7	2016	Phillipstown Renosterberg	Under 1.5K	7676
district	DC7	2016	Phillipstown Renosterberg	1,501-3K	3431
district	DC7	2016	Phillipstown Renosterberg	3,001-5K	\N
district	DC7	2016	Phillipstown Renosterberg	5,001-10K	\N
district	DC7	2016	Phillipstown Renosterberg	10,001-20K	1251
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
district	DC7	2016	Prieska Siyathemba	Under 1.5K	1875
district	DC7	2016	Prieska Siyathemba	1,501-3K	16382
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
district	DC7	2016	Richmond	3,001-5K	175
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
district	DC6	2016	Sutherland	Under 1.5K	19901
district	DC6	2016	Sutherland	1,501-3K	4178
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
district	DC9	2016	Vaalharts Phokwane	50,001-100K	266
district	DC9	2016	Vaalharts Phokwane	100,001-150K	135
district	DC9	2016	Vaalharts Phokwane	150,001-200K	78
district	DC9	2016	Vaalharts Phokwane	200,001-300K	337
district	DC9	2016	Vaalharts Phokwane	300,001-500K	405
district	DC9	2016	Vaalharts Phokwane	500,001-800K	39
district	DC9	2016	Vaalharts Phokwane	800,001-1M	33
district	DC9	2016	Vaalharts Phokwane	Above 1M	\N
district	DC7	2016	Victoria-Wes Umbuntu	Under 1.5K	\N
district	DC7	2016	Victoria-Wes Umbuntu	1,501-3K	9951
district	DC7	2016	Victoria-Wes Umbuntu	3,001-5K	\N
district	DC7	2016	Victoria-Wes Umbuntu	5,001-10K	2034
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
district	DC39	2016	Bloemhof Lekwa-Tecma	1,501-3K	675
district	DC39	2016	Bloemhof Lekwa-Tecma	3,001-5K	2589
district	DC39	2016	Bloemhof Lekwa-Tecma	5,001-10K	7342
district	DC39	2016	Bloemhof Lekwa-Tecma	10,001-20K	3352
district	DC39	2016	Bloemhof Lekwa-Tecma	20,001-30K	88
district	DC39	2016	Bloemhof Lekwa-Tecma	30,001-40K	85
district	DC39	2016	Bloemhof Lekwa-Tecma	40,001-50K	37
district	DC39	2016	Bloemhof Lekwa-Tecma	50,001-100K	116
district	DC39	2016	Bloemhof Lekwa-Tecma	100,001-150K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	150,001-200K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	200,001-300K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	300,001-500K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	500,001-800K	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	800,001-1M	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	Above 1M	\N
district	DC39	2016	Bray Kagisano-Molopo	Under 1.5K	\N
district	DC39	2016	Bray Kagisano-Molopo	1,501-3K	\N
district	DC39	2016	Bray Kagisano-Molopo	3,001-5K	10752
district	DC39	2016	Bray Kagisano-Molopo	5,001-10K	4467
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
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	1,501-3K	277
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	3,001-5K	2224
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	5,001-10K	6818
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	10,001-20K	6046
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	20,001-30K	3310
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	30,001-40K	145
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	40,001-50K	82
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	50,001-100K	71
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	100,001-150K	27
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	150,001-200K	33
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	200,001-300K	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	300,001-500K	23
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	500,001-800K	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	800,001-1M	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	Above 1M	\N
district	DC38	2016	Delareyville Tswaing	Under 1.5K	\N
district	DC38	2016	Delareyville Tswaing	1,501-3K	514
district	DC38	2016	Delareyville Tswaing	3,001-5K	371
district	DC38	2016	Delareyville Tswaing	5,001-10K	8247
district	DC38	2016	Delareyville Tswaing	10,001-20K	11029
district	DC38	2016	Delareyville Tswaing	20,001-30K	694
district	DC38	2016	Delareyville Tswaing	30,001-40K	43
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
district	DC38	2016	Derdepoort	5,001-10K	5257
district	DC38	2016	Derdepoort	10,001-20K	2710
district	DC38	2016	Derdepoort	20,001-30K	\N
district	DC38	2016	Derdepoort	30,001-40K	\N
district	DC38	2016	Derdepoort	40,001-50K	\N
district	DC38	2016	Derdepoort	50,001-100K	168
district	DC38	2016	Derdepoort	100,001-150K	\N
district	DC38	2016	Derdepoort	150,001-200K	\N
district	DC38	2016	Derdepoort	200,001-300K	\N
district	DC38	2016	Derdepoort	300,001-500K	\N
district	DC38	2016	Derdepoort	500,001-800K	\N
district	DC38	2016	Derdepoort	800,001-1M	\N
district	DC38	2016	Derdepoort	Above 1M	\N
municipality	DC40	2016	Ewbank	Under 1.5K	\N
municipality	DC40	2016	Ewbank	1,501-3K	\N
municipality	DC40	2016	Ewbank	3,001-5K	2730
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
district	DC38	2016	Mahikeng	Under 1.5K	1486
district	DC38	2016	Mahikeng	1,501-3K	428
district	DC38	2016	Mahikeng	3,001-5K	2182
district	DC38	2016	Mahikeng	5,001-10K	3443
district	DC38	2016	Mahikeng	10,001-20K	1510
district	DC38	2016	Mahikeng	20,001-30K	\N
district	DC38	2016	Mahikeng	30,001-40K	18
district	DC38	2016	Mahikeng	40,001-50K	11
district	DC38	2016	Mahikeng	50,001-100K	17
district	DC38	2016	Mahikeng	100,001-150K	\N
district	DC38	2016	Mahikeng	150,001-200K	\N
district	DC38	2016	Mahikeng	200,001-300K	\N
district	DC38	2016	Mahikeng	300,001-500K	\N
district	DC38	2016	Mahikeng	500,001-800K	\N
district	DC38	2016	Mahikeng	800,001-1M	\N
district	DC38	2016	Mahikeng	Above 1M	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	Under 1.5K	46
district	DC37	2016	Marikana (Rustenburg) Bonjala	1,501-3K	198
district	DC37	2016	Marikana (Rustenburg) Bonjala	3,001-5K	3155
district	DC37	2016	Marikana (Rustenburg) Bonjala	5,001-10K	1861
district	DC37	2016	Marikana (Rustenburg) Bonjala	10,001-20K	3816
district	DC37	2016	Marikana (Rustenburg) Bonjala	20,001-30K	1788
district	DC37	2016	Marikana (Rustenburg) Bonjala	30,001-40K	2030
district	DC37	2016	Marikana (Rustenburg) Bonjala	40,001-50K	1641
district	DC37	2016	Marikana (Rustenburg) Bonjala	50,001-100K	3329
district	DC37	2016	Marikana (Rustenburg) Bonjala	100,001-150K	746
district	DC37	2016	Marikana (Rustenburg) Bonjala	150,001-200K	181
district	DC37	2016	Marikana (Rustenburg) Bonjala	200,001-300K	108
district	DC37	2016	Marikana (Rustenburg) Bonjala	300,001-500K	172
district	DC37	2016	Marikana (Rustenburg) Bonjala	500,001-800K	86
district	DC37	2016	Marikana (Rustenburg) Bonjala	800,001-1M	60
district	DC37	2016	Marikana (Rustenburg) Bonjala	Above 1M	\N
district	DC39	2016	Moloporivier Bophirima	Under 1.5K	\N
district	DC39	2016	Moloporivier Bophirima	1,501-3K	\N
district	DC39	2016	Moloporivier Bophirima	3,001-5K	\N
district	DC39	2016	Moloporivier Bophirima	5,001-10K	7191
district	DC39	2016	Moloporivier Bophirima	10,001-20K	1545
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
district	DC39	2016	Reivilo Thaung	3,001-5K	3992
district	DC39	2016	Reivilo Thaung	5,001-10K	10295
district	DC39	2016	Reivilo Thaung	10,001-20K	428
district	DC39	2016	Reivilo Thaung	20,001-30K	449
district	DC39	2016	Reivilo Thaung	30,001-40K	\N
district	DC39	2016	Reivilo Thaung	40,001-50K	\N
district	DC39	2016	Reivilo Thaung	50,001-100K	\N
district	DC39	2016	Reivilo Thaung	100,001-150K	38
district	DC39	2016	Reivilo Thaung	150,001-200K	\N
district	DC39	2016	Reivilo Thaung	200,001-300K	\N
district	DC39	2016	Reivilo Thaung	300,001-500K	\N
district	DC39	2016	Reivilo Thaung	500,001-800K	33
district	DC39	2016	Reivilo Thaung	800,001-1M	\N
district	DC39	2016	Reivilo Thaung	Above 1M	\N
municipality	DC40	2016	Vostershoop	Under 1.5K	\N
municipality	DC40	2016	Vostershoop	1,501-3K	\N
municipality	DC40	2016	Vostershoop	3,001-5K	\N
municipality	DC40	2016	Vostershoop	5,001-10K	\N
municipality	DC40	2016	Vostershoop	10,001-20K	302
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
district	DC39	2016	Vryburg Naledi	1,501-3K	1740
district	DC39	2016	Vryburg Naledi	3,001-5K	3967
district	DC39	2016	Vryburg Naledi	5,001-10K	17567
district	DC39	2016	Vryburg Naledi	10,001-20K	1430
district	DC39	2016	Vryburg Naledi	20,001-30K	366
district	DC39	2016	Vryburg Naledi	30,001-40K	21
district	DC39	2016	Vryburg Naledi	40,001-50K	\N
district	DC39	2016	Vryburg Naledi	50,001-100K	\N
district	DC39	2016	Vryburg Naledi	100,001-150K	16
district	DC39	2016	Vryburg Naledi	150,001-200K	\N
district	DC39	2016	Vryburg Naledi	200,001-300K	\N
district	DC39	2016	Vryburg Naledi	300,001-500K	\N
district	DC39	2016	Vryburg Naledi	500,001-800K	\N
district	DC39	2016	Vryburg Naledi	800,001-1M	\N
district	DC39	2016	Vryburg Naledi	Above 1M	\N
district	DC40	2016	Wolmaransstad Maquassi	Under 1.5K	\N
district	DC40	2016	Wolmaransstad Maquassi	1,501-3K	\N
district	DC40	2016	Wolmaransstad Maquassi	3,001-5K	546
district	DC40	2016	Wolmaransstad Maquassi	5,001-10K	3006
district	DC40	2016	Wolmaransstad Maquassi	10,001-20K	1305
district	DC40	2016	Wolmaransstad Maquassi	20,001-30K	543
district	DC40	2016	Wolmaransstad Maquassi	30,001-40K	370
district	DC40	2016	Wolmaransstad Maquassi	40,001-50K	139
district	DC40	2016	Wolmaransstad Maquassi	50,001-100K	\N
district	DC40	2016	Wolmaransstad Maquassi	100,001-150K	\N
district	DC40	2016	Wolmaransstad Maquassi	150,001-200K	\N
district	DC40	2016	Wolmaransstad Maquassi	200,001-300K	\N
district	DC40	2016	Wolmaransstad Maquassi	300,001-500K	\N
district	DC40	2016	Wolmaransstad Maquassi	500,001-800K	\N
district	DC40	2016	Wolmaransstad Maquassi	800,001-1M	\N
district	DC40	2016	Wolmaransstad Maquassi	Above 1M	\N
district	DC38	2016	Zeerust Ramotshere	Under 1.5K	2194
district	DC38	2016	Zeerust Ramotshere	1,501-3K	1958
district	DC38	2016	Zeerust Ramotshere	3,001-5K	786
district	DC38	2016	Zeerust Ramotshere	5,001-10K	11426
district	DC38	2016	Zeerust Ramotshere	10,001-20K	8941
district	DC38	2016	Zeerust Ramotshere	20,001-30K	3996
district	DC38	2016	Zeerust Ramotshere	30,001-40K	326
district	DC38	2016	Zeerust Ramotshere	40,001-50K	\N
district	DC38	2016	Zeerust Ramotshere	50,001-100K	184
district	DC38	2016	Zeerust Ramotshere	100,001-150K	53
district	DC38	2016	Zeerust Ramotshere	150,001-200K	\N
district	DC38	2016	Zeerust Ramotshere	200,001-300K	\N
district	DC38	2016	Zeerust Ramotshere	300,001-500K	\N
district	DC38	2016	Zeerust Ramotshere	500,001-800K	\N
district	DC38	2016	Zeerust Ramotshere	800,001-1M	\N
district	DC38	2016	Zeerust Ramotshere	Above 1M	\N
district	DC4	2016	Albertinia HesseQua	Under 1.5K	\N
district	DC4	2016	Albertinia HesseQua	1,501-3K	545
district	DC4	2016	Albertinia HesseQua	3,001-5K	2333
district	DC4	2016	Albertinia HesseQua	5,001-10K	384
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
district	DC5	2016	Beaufort-Wes	Under 1.5K	4080
district	DC5	2016	Beaufort-Wes	1,501-3K	11222
district	DC5	2016	Beaufort-Wes	3,001-5K	9919
district	DC5	2016	Beaufort-Wes	5,001-10K	269
district	DC5	2016	Beaufort-Wes	10,001-20K	478
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
district	DC3	2016	Bredasdorp Cape Aqulhas	3,001-5K	629
district	DC3	2016	Bredasdorp Cape Aqulhas	5,001-10K	146
district	DC3	2016	Bredasdorp Cape Aqulhas	10,001-20K	754
district	DC3	2016	Bredasdorp Cape Aqulhas	20,001-30K	37
district	DC3	2016	Bredasdorp Cape Aqulhas	30,001-40K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	40,001-50K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	50,001-100K	736
district	DC3	2016	Bredasdorp Cape Aqulhas	100,001-150K	138
district	DC3	2016	Bredasdorp Cape Aqulhas	150,001-200K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	200,001-300K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	300,001-500K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	500,001-800K	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	800,001-1M	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	Above 1M	10
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Under 1.5K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	1,501-3K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	3,001-5K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	5,001-10K	12
district	DC3	2016	Caledon (Overberg) Theewaterskloof	10,001-20K	287
district	DC3	2016	Caledon (Overberg) Theewaterskloof	20,001-30K	1082
district	DC3	2016	Caledon (Overberg) Theewaterskloof	30,001-40K	173
district	DC3	2016	Caledon (Overberg) Theewaterskloof	40,001-50K	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	50,001-100K	2842
district	DC3	2016	Caledon (Overberg) Theewaterskloof	100,001-150K	333
district	DC3	2016	Caledon (Overberg) Theewaterskloof	150,001-200K	133
district	DC3	2016	Caledon (Overberg) Theewaterskloof	200,001-300K	22
district	DC3	2016	Caledon (Overberg) Theewaterskloof	300,001-500K	58
district	DC3	2016	Caledon (Overberg) Theewaterskloof	500,001-800K	116
district	DC3	2016	Caledon (Overberg) Theewaterskloof	800,001-1M	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Above 1M	\N
district	DC4	2016	Calitzdorp Kannaland	Under 1.5K	757
district	DC4	2016	Calitzdorp Kannaland	1,501-3K	\N
district	DC4	2016	Calitzdorp Kannaland	3,001-5K	\N
district	DC4	2016	Calitzdorp Kannaland	5,001-10K	1599
district	DC4	2016	Calitzdorp Kannaland	10,001-20K	43
district	DC4	2016	Calitzdorp Kannaland	20,001-30K	480
district	DC4	2016	Calitzdorp Kannaland	30,001-40K	\N
district	DC4	2016	Calitzdorp Kannaland	40,001-50K	289
district	DC4	2016	Calitzdorp Kannaland	50,001-100K	61
district	DC4	2016	Calitzdorp Kannaland	100,001-150K	57
district	DC4	2016	Calitzdorp Kannaland	150,001-200K	\N
district	DC4	2016	Calitzdorp Kannaland	200,001-300K	\N
district	DC4	2016	Calitzdorp Kannaland	300,001-500K	\N
district	DC4	2016	Calitzdorp Kannaland	500,001-800K	\N
district	DC4	2016	Calitzdorp Kannaland	800,001-1M	\N
district	DC4	2016	Calitzdorp Kannaland	Above 1M	\N
municipality	CPT	2016	Cape Town	Under 1.5K	\N
municipality	CPT	2016	Cape Town	1,501-3K	\N
municipality	CPT	2016	Cape Town	3,001-5K	351
municipality	CPT	2016	Cape Town	5,001-10K	2328
municipality	CPT	2016	Cape Town	10,001-20K	\N
municipality	CPT	2016	Cape Town	20,001-30K	383
municipality	CPT	2016	Cape Town	30,001-40K	\N
municipality	CPT	2016	Cape Town	40,001-50K	\N
municipality	CPT	2016	Cape Town	50,001-100K	89
municipality	CPT	2016	Cape Town	100,001-150K	\N
municipality	CPT	2016	Cape Town	150,001-200K	21
municipality	CPT	2016	Cape Town	200,001-300K	\N
municipality	CPT	2016	Cape Town	300,001-500K	\N
municipality	CPT	2016	Cape Town	500,001-800K	\N
municipality	CPT	2016	Cape Town	800,001-1M	\N
municipality	CPT	2016	Cape Town	Above 1M	\N
district	DC2	2016	Ceres Witzenberg	Under 1.5K	17911
district	DC2	2016	Ceres Witzenberg	1,501-3K	14438
district	DC2	2016	Ceres Witzenberg	3,001-5K	1212
district	DC2	2016	Ceres Witzenberg	5,001-10K	3658
district	DC2	2016	Ceres Witzenberg	10,001-20K	\N
district	DC2	2016	Ceres Witzenberg	20,001-30K	353
district	DC2	2016	Ceres Witzenberg	30,001-40K	\N
district	DC2	2016	Ceres Witzenberg	40,001-50K	229
district	DC2	2016	Ceres Witzenberg	50,001-100K	\N
district	DC2	2016	Ceres Witzenberg	100,001-150K	120
district	DC2	2016	Ceres Witzenberg	150,001-200K	140
district	DC2	2016	Ceres Witzenberg	200,001-300K	\N
district	DC2	2016	Ceres Witzenberg	300,001-500K	\N
district	DC2	2016	Ceres Witzenberg	500,001-800K	\N
district	DC2	2016	Ceres Witzenberg	800,001-1M	\N
district	DC2	2016	Ceres Witzenberg	Above 1M	\N
district	DC1	2016	Clanwilliam Cederberg	Under 1.5K	2271
district	DC1	2016	Clanwilliam Cederberg	1,501-3K	7460
district	DC1	2016	Clanwilliam Cederberg	3,001-5K	1799
district	DC1	2016	Clanwilliam Cederberg	5,001-10K	1548
district	DC1	2016	Clanwilliam Cederberg	10,001-20K	1113
district	DC1	2016	Clanwilliam Cederberg	20,001-30K	1576
district	DC1	2016	Clanwilliam Cederberg	30,001-40K	\N
district	DC1	2016	Clanwilliam Cederberg	40,001-50K	\N
district	DC1	2016	Clanwilliam Cederberg	50,001-100K	242
district	DC1	2016	Clanwilliam Cederberg	100,001-150K	53
district	DC1	2016	Clanwilliam Cederberg	150,001-200K	\N
district	DC1	2016	Clanwilliam Cederberg	200,001-300K	\N
district	DC1	2016	Clanwilliam Cederberg	300,001-500K	\N
district	DC1	2016	Clanwilliam Cederberg	500,001-800K	\N
district	DC1	2016	Clanwilliam Cederberg	800,001-1M	\N
district	DC1	2016	Clanwilliam Cederberg	Above 1M	\N
district	DC4	2016	George	Under 1.5K	694
district	DC4	2016	George	1,501-3K	\N
district	DC4	2016	George	3,001-5K	61
district	DC4	2016	George	5,001-10K	295
district	DC4	2016	George	10,001-20K	520
district	DC4	2016	George	20,001-30K	216
district	DC4	2016	George	30,001-40K	99
district	DC4	2016	George	40,001-50K	454
district	DC4	2016	George	50,001-100K	567
district	DC4	2016	George	100,001-150K	158
district	DC4	2016	George	150,001-200K	142
district	DC4	2016	George	200,001-300K	24
district	DC4	2016	George	300,001-500K	35
district	DC4	2016	George	800,001-1M	\N
district	DC4	2016	Knysna	5,001-10K	276
district	DC4	2016	Knysna	10,001-20K	2106
district	DC4	2016	Knysna	20,001-30K	\N
district	DC4	2016	Knysna	30,001-40K	\N
district	DC4	2016	Knysna	40,001-50K	223
district	DC4	2016	Knysna	50,001-100K	678
district	DC4	2016	Knysna	100,001-150K	144
district	DC4	2016	Knysna	150,001-200K	55
district	DC4	2016	Knysna	200,001-300K	25
district	DC4	2016	Knysna	300,001-500K	21
district	DC4	2016	Knysna	500,001-800K	11
district	DC4	2016	Knysna	800,001-1M	\N
district	DC4	2016	Knysna	Above 1M	\N
district	DC4	2016	Ladismith Kannaland	Under 1.5K	4236
district	DC4	2016	Ladismith Kannaland	1,501-3K	2703
district	DC4	2016	Ladismith Kannaland	3,001-5K	230
district	DC4	2016	Ladismith Kannaland	5,001-10K	777
district	DC4	2016	Ladismith Kannaland	10,001-20K	236
district	DC4	2016	Ladismith Kannaland	20,001-30K	69
district	DC4	2016	Ladismith Kannaland	30,001-40K	58
district	DC4	2016	Ladismith Kannaland	40,001-50K	\N
district	DC4	2016	Ladismith Kannaland	50,001-100K	32
district	DC4	2016	Ladismith Kannaland	100,001-150K	\N
district	DC4	2016	Ladismith Kannaland	150,001-200K	18
district	DC4	2016	Ladismith Kannaland	200,001-300K	\N
district	DC4	2016	Ladismith Kannaland	300,001-500K	\N
district	DC4	2016	Ladismith Kannaland	500,001-800K	\N
district	DC4	2016	Ladismith Kannaland	800,001-1M	\N
district	DC4	2016	Ladismith Kannaland	Above 1M	\N
district	DC5	2016	Laingsburg	Under 1.5K	1679
district	DC5	2016	Laingsburg	1,501-3K	1858
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
district	DC1	2016	Malmesbury Swartland	Under 1.5K	171
district	DC1	2016	Malmesbury Swartland	1,501-3K	3340
district	DC1	2016	Malmesbury Swartland	3,001-5K	\N
district	DC1	2016	Malmesbury Swartland	5,001-10K	1174
district	DC1	2016	Malmesbury Swartland	10,001-20K	3280
district	DC1	2016	Malmesbury Swartland	20,001-30K	1459
district	DC1	2016	Malmesbury Swartland	30,001-40K	1026
district	DC1	2016	Malmesbury Swartland	40,001-50K	1177
district	DC1	2016	Malmesbury Swartland	50,001-100K	1544
district	DC1	2016	Malmesbury Swartland	100,001-150K	235
district	DC1	2016	Malmesbury Swartland	150,001-200K	629
district	DC1	2016	Malmesbury Swartland	200,001-300K	139
district	DC1	2016	Malmesbury Swartland	300,001-500K	10
district	DC1	2016	Malmesbury Swartland	500,001-800K	\N
district	DC1	2016	Malmesbury Swartland	800,001-1M	\N
district	DC1	2016	Malmesbury Swartland	Above 1M	\N
district	DC2	2016	Montagu Langeberg	Under 1.5K	662
district	DC2	2016	Montagu Langeberg	1,501-3K	472
district	DC2	2016	Montagu Langeberg	3,001-5K	651
district	DC2	2016	Montagu Langeberg	5,001-10K	3766
district	DC2	2016	Montagu Langeberg	10,001-20K	1361
district	DC2	2016	Montagu Langeberg	20,001-30K	231
district	DC2	2016	Montagu Langeberg	30,001-40K	40
district	DC2	2016	Montagu Langeberg	40,001-50K	50
district	DC2	2016	Montagu Langeberg	50,001-100K	125
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
district	DC4	2016	Mosselbaai	5,001-10K	193
district	DC4	2016	Mosselbaai	10,001-20K	276
district	DC4	2016	Mosselbaai	20,001-30K	714
district	DC4	2016	Mosselbaai	30,001-40K	\N
district	DC4	2016	Mosselbaai	40,001-50K	867
district	DC4	2016	Mosselbaai	50,001-100K	191
district	DC4	2016	Mosselbaai	100,001-150K	112
district	DC4	2016	Mosselbaai	150,001-200K	74
district	DC4	2016	Mosselbaai	200,001-300K	\N
district	DC4	2016	Mosselbaai	300,001-500K	\N
district	DC4	2016	Mosselbaai	500,001-800K	\N
district	DC4	2016	Mosselbaai	800,001-1M	\N
district	DC4	2016	Mosselbaai	Above 1M	\N
district	DC5	2016	Murraysburg	Under 1.5K	\N
district	DC5	2016	Murraysburg	1,501-3K	3919
district	DC5	2016	Murraysburg	3,001-5K	\N
district	DC5	2016	Murraysburg	5,001-10K	\N
district	DC5	2016	Murraysburg	10,001-20K	\N
district	DC5	2016	Murraysburg	20,001-30K	509
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
district	DC4	2016	Oudtshoorn	Under 1.5K	10794
district	DC4	2016	Oudtshoorn	1,501-3K	258
district	DC4	2016	Oudtshoorn	3,001-5K	119
district	DC4	2016	Oudtshoorn	5,001-10K	953
district	DC4	2016	Oudtshoorn	10,001-20K	2702
district	DC4	2016	Oudtshoorn	20,001-30K	986
district	DC4	2016	Oudtshoorn	30,001-40K	276
district	DC4	2016	Oudtshoorn	40,001-50K	\N
district	DC4	2016	Oudtshoorn	50,001-100K	295
district	DC4	2016	Oudtshoorn	100,001-150K	142
district	DC4	2016	Oudtshoorn	150,001-200K	\N
district	DC4	2016	Oudtshoorn	200,001-300K	\N
district	DC4	2016	Oudtshoorn	300,001-500K	67
district	DC4	2016	Oudtshoorn	500,001-800K	\N
district	DC4	2016	Oudtshoorn	800,001-1M	\N
district	DC4	2016	Oudtshoorn	Above 1M	\N
district	DC2	2016	Paarl/Wel Drakenstein	Under 1.5K	\N
district	DC2	2016	Paarl/Wel Drakenstein	1,501-3K	\N
district	DC2	2016	Paarl/Wel Drakenstein	3,001-5K	\N
district	DC2	2016	Paarl/Wel Drakenstein	5,001-10K	\N
district	DC2	2016	Paarl/Wel Drakenstein	10,001-20K	60
district	DC2	2016	Paarl/Wel Drakenstein	20,001-30K	\N
district	DC2	2016	Paarl/Wel Drakenstein	30,001-40K	74
district	DC2	2016	Paarl/Wel Drakenstein	40,001-50K	70
district	DC2	2016	Paarl/Wel Drakenstein	50,001-100K	349
district	DC2	2016	Paarl/Wel Drakenstein	100,001-150K	45
district	DC2	2016	Paarl/Wel Drakenstein	150,001-200K	134
district	DC2	2016	Paarl/Wel Drakenstein	200,001-300K	742
district	DC2	2016	Paarl/Wel Drakenstein	300,001-500K	225
district	DC2	2016	Paarl/Wel Drakenstein	500,001-800K	85
district	DC2	2016	Paarl/Wel Drakenstein	800,001-1M	\N
district	DC2	2016	Paarl/Wel Drakenstein	Above 1M	23
district	DC1	2016	Piketberg Bergriver	Under 1.5K	39
district	DC1	2016	Piketberg Bergriver	1,501-3K	661
district	DC1	2016	Piketberg Bergriver	3,001-5K	2134
district	DC1	2016	Piketberg Bergriver	5,001-10K	7636
district	DC1	2016	Piketberg Bergriver	10,001-20K	4590
district	DC1	2016	Piketberg Bergriver	20,001-30K	1079
district	DC1	2016	Piketberg Bergriver	30,001-40K	81
district	DC1	2016	Piketberg Bergriver	40,001-50K	121
district	DC1	2016	Piketberg Bergriver	50,001-100K	144
district	DC1	2016	Piketberg Bergriver	100,001-150K	67
district	DC1	2016	Piketberg Bergriver	150,001-200K	\N
district	DC1	2016	Piketberg Bergriver	200,001-300K	\N
district	DC1	2016	Piketberg Bergriver	300,001-500K	\N
district	DC1	2016	Piketberg Bergriver	500,001-800K	\N
district	DC1	2016	Piketberg Bergriver	800,001-1M	\N
district	DC1	2016	Piketberg Bergriver	Above 1M	\N
district	DC5	2016	Prins Albert	Under 1.5K	11304
district	DC5	2016	Prins Albert	1,501-3K	12092
district	DC5	2016	Prins Albert	3,001-5K	\N
district	DC5	2016	Prins Albert	5,001-10K	51
district	DC5	2016	Prins Albert	10,001-20K	131
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
district	DC4	2016	Riversdal Hessequa	Under 1.5K	1004
district	DC4	2016	Riversdal Hessequa	1,501-3K	2262
district	DC4	2016	Riversdal Hessequa	3,001-5K	\N
district	DC4	2016	Riversdal Hessequa	5,001-10K	4587
district	DC4	2016	Riversdal Hessequa	10,001-20K	3206
district	DC4	2016	Riversdal Hessequa	20,001-30K	573
district	DC4	2016	Riversdal Hessequa	30,001-40K	1410
district	DC4	2016	Riversdal Hessequa	40,001-50K	697
district	DC4	2016	Riversdal Hessequa	50,001-100K	77
district	DC4	2016	Riversdal Hessequa	100,001-150K	15
district	DC4	2016	Riversdal Hessequa	150,001-200K	\N
district	DC4	2016	Riversdal Hessequa	200,001-300K	32
district	DC4	2016	Riversdal Hessequa	300,001-500K	19
district	DC4	2016	Riversdal Hessequa	500,001-800K	\N
district	DC4	2016	Riversdal Hessequa	800,001-1M	\N
district	DC4	2016	Riversdal Hessequa	Above 1M	\N
district	DC2	2016	Robertson Breede /Winelands	Under 1.5K	\N
district	DC2	2016	Robertson Breede /Winelands	1,501-3K	\N
district	DC2	2016	Robertson Breede /Winelands	3,001-5K	\N
district	DC2	2016	Robertson Breede /Winelands	5,001-10K	535
district	DC2	2016	Robertson Breede /Winelands	10,001-20K	160
district	DC2	2016	Robertson Breede /Winelands	20,001-30K	\N
district	DC2	2016	Robertson Breede /Winelands	30,001-40K	89
district	DC2	2016	Robertson Breede /Winelands	40,001-50K	383
district	DC2	2016	Robertson Breede /Winelands	50,001-100K	24
district	DC2	2016	Robertson Breede /Winelands	100,001-150K	20
district	DC2	2016	Robertson Breede /Winelands	150,001-200K	13
district	DC2	2016	Robertson Breede /Winelands	200,001-300K	90
district	DC2	2016	Robertson Breede /Winelands	300,001-500K	43
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
district	DC2	2016	Stellenbosch	50,001-100K	32
district	DC2	2016	Stellenbosch	100,001-150K	30
district	DC2	2016	Stellenbosch	150,001-200K	621
district	DC2	2016	Stellenbosch	200,001-300K	160
district	DC2	2016	Stellenbosch	300,001-500K	474
district	DC2	2016	Stellenbosch	500,001-800K	333
district	DC2	2016	Stellenbosch	800,001-1M	39
district	DC2	2016	Stellenbosch	Above 1M	82
district	DC3	2016	Swellendam	Under 1.5K	\N
district	DC3	2016	Swellendam	1,501-3K	\N
district	DC3	2016	Swellendam	3,001-5K	1564
district	DC3	2016	Swellendam	5,001-10K	4845
district	DC3	2016	Swellendam	10,001-20K	347
district	DC3	2016	Swellendam	20,001-30K	831
district	DC3	2016	Swellendam	30,001-40K	313
district	DC3	2016	Swellendam	40,001-50K	373
district	DC3	2016	Swellendam	50,001-100K	1677
district	DC3	2016	Swellendam	100,001-150K	93
district	DC3	2016	Swellendam	150,001-200K	147
district	DC3	2016	Swellendam	200,001-300K	79
district	DC3	2016	Swellendam	300,001-500K	66
district	DC3	2016	Swellendam	500,001-800K	\N
district	DC3	2016	Swellendam	800,001-1M	\N
district	DC3	2016	Swellendam	Above 1M	\N
district	DC2	2016	Tulbagh	Under 1.5K	\N
district	DC2	2016	Tulbagh	1,501-3K	\N
district	DC2	2016	Tulbagh	3,001-5K	\N
district	DC2	2016	Tulbagh	5,001-10K	\N
district	DC2	2016	Tulbagh	10,001-20K	291
district	DC2	2016	Tulbagh	20,001-30K	\N
district	DC2	2016	Tulbagh	30,001-40K	\N
district	DC2	2016	Tulbagh	40,001-50K	93
district	DC2	2016	Tulbagh	50,001-100K	69
district	DC2	2016	Tulbagh	100,001-150K	34
district	DC2	2016	Tulbagh	150,001-200K	\N
district	DC2	2016	Tulbagh	200,001-300K	14
district	DC2	2016	Tulbagh	300,001-500K	\N
district	DC2	2016	Tulbagh	500,001-800K	\N
district	DC2	2016	Tulbagh	800,001-1M	\N
district	DC2	2016	Tulbagh	Above 1M	\N
district	DC1	2016	Vanrynsdorp Matzikama	Under 1.5K	18222
district	DC1	2016	Vanrynsdorp Matzikama	1,501-3K	822
district	DC1	2016	Vanrynsdorp Matzikama	3,001-5K	\N
district	DC1	2016	Vanrynsdorp Matzikama	5,001-10K	431
district	DC1	2016	Vanrynsdorp Matzikama	10,001-20K	1213
district	DC1	2016	Vanrynsdorp Matzikama	20,001-30K	247
district	DC1	2016	Vanrynsdorp Matzikama	30,001-40K	\N
district	DC1	2016	Vanrynsdorp Matzikama	40,001-50K	\N
district	DC1	2016	Vanrynsdorp Matzikama	50,001-100K	118
district	DC1	2016	Vanrynsdorp Matzikama	100,001-150K	\N
district	DC1	2016	Vanrynsdorp Matzikama	150,001-200K	37
district	DC1	2016	Vanrynsdorp Matzikama	200,001-300K	50
district	DC1	2016	Vanrynsdorp Matzikama	300,001-500K	48
district	DC1	2016	Vanrynsdorp Matzikama	500,001-800K	\N
district	DC1	2016	Vanrynsdorp Matzikama	800,001-1M	\N
district	DC1	2016	Vanrynsdorp Matzikama	Above 1M	\N
district	DC2	2016	Worcester Breede Valley	Under 1.5K	7209
district	DC2	2016	Worcester Breede Valley	1,501-3K	2431
district	DC2	2016	Worcester Breede Valley	3,001-5K	\N
district	DC2	2016	Worcester Breede Valley	5,001-10K	5325
district	DC2	2016	Worcester Breede Valley	10,001-20K	1154
district	DC2	2016	Worcester Breede Valley	20,001-30K	7000
district	DC2	2016	Worcester Breede Valley	30,001-40K	\N
district	DC2	2016	Worcester Breede Valley	40,001-50K	333
district	DC2	2016	Worcester Breede Valley	50,001-100K	100
district	DC2	2016	Worcester Breede Valley	100,001-150K	535
district	DC2	2016	Worcester Breede Valley	150,001-200K	65
district	DC2	2016	Worcester Breede Valley	200,001-300K	113
district	DC2	2016	Worcester Breede Valley	300,001-500K	\N
district	DC2	2016	Worcester Breede Valley	500,001-800K	11
district	DC2	2016	Worcester Breede Valley	800,001-1M	\N
district	DC2	2016	Worcester Breede Valley	Above 1M	\N
\.


--
-- PostgreSQL database dump complete
--

