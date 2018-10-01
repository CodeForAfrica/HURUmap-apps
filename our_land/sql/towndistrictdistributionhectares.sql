--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: towndistrictdistributionhectares; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.towndistrictdistributionhectares (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    town_name character varying(128) NOT NULL,
    class character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.towndistrictdistributionhectares OWNER TO our_land;

--
-- Data for Name: towndistrictdistributionhectares; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.towndistrictdistributionhectares (geo_level, geo_code, geo_version, town_name, class, total) FROM stdin;
district	DC10	2016	Aberdeen	< 1 500	\N
district	DC10	2016	Aberdeen	1 501 - 3 000	2046
district	DC10	2016	Aberdeen	3 001 - 5 000	\N
district	DC10	2016	Aberdeen	5 001 - 10 000	\N
district	DC10	2016	Aberdeen	10 001 - 20 000	\N
district	DC10	2016	Aberdeen	20 001 - 30 000	\N
district	DC10	2016	Aberdeen	30 001 - 40 000	\N
district	DC10	2016	Aberdeen	40 001 - 50 000	\N
district	DC10	2016	Aberdeen	50 001 - 100 000	\N
district	DC10	2016	Aberdeen	100 001 - 150 000	\N
district	DC10	2016	Aberdeen	150 001 - 200 000	\N
district	DC10	2016	Aberdeen	200 001 - 300 000	\N
district	DC10	2016	Aberdeen	300 001 - 500 000	\N
district	DC10	2016	Aberdeen	500 001 - 800 000	\N
district	DC10	2016	Aberdeen	800 001 - 1 000 000	\N
district	DC10	2016	Aberdeen	> 1 000 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	< 1 500	\N
district	DC32	2016	Acornhoek Bushbuckridge	1 501 - 3 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	3 001 - 5 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	5 001 - 10 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	10 001 - 20 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	20 001 - 30 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	30 001 - 40 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	40 001 - 50 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	50 001 - 100 000	475
district	DC32	2016	Acornhoek Bushbuckridge	100 001 - 150 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	150 001 - 200 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	200 001 - 300 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	300 001 - 500 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	500 001 - 800 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	800 001 - 1 000 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	> 1 000 000	\N
district	DC10	2016	Albany	< 1 500	\N
district	DC10	2016	Albany	1 501 - 3 000	3077
district	DC10	2016	Albany	3 001 - 5 000	3145
district	DC10	2016	Albany	5 001 - 10 000	3253
district	DC10	2016	Albany	10 001 - 20 000	677
district	DC10	2016	Albany	20 001 - 30 000	768
district	DC10	2016	Albany	30 001 - 40 000	\N
district	DC10	2016	Albany	40 001 - 50 000	\N
district	DC10	2016	Albany	50 001 - 100 000	11
district	DC10	2016	Albany	100 001 - 150 000	\N
district	DC10	2016	Albany	150 001 - 200 000	14
district	DC10	2016	Albany	200 001 - 300 000	\N
district	DC10	2016	Albany	300 001 - 500 000	\N
district	DC10	2016	Albany	500 001 - 800 000	\N
district	DC10	2016	Albany	800 001 - 1 000 000	\N
district	DC10	2016	Albany	> 1 000 000	\N
district	DC4	2016	Albertinia HesseQua	< 1 500	\N
district	DC4	2016	Albertinia HesseQua	1 501 - 3 000	545
district	DC4	2016	Albertinia HesseQua	3 001 - 5 000	2333
district	DC4	2016	Albertinia HesseQua	5 001 - 10 000	384
district	DC4	2016	Albertinia HesseQua	10 001 - 20 000	\N
district	DC4	2016	Albertinia HesseQua	20 001 - 30 000	\N
district	DC4	2016	Albertinia HesseQua	30 001 - 40 000	\N
district	DC4	2016	Albertinia HesseQua	40 001 - 50 000	\N
district	DC4	2016	Albertinia HesseQua	50 001 - 100 000	\N
district	DC4	2016	Albertinia HesseQua	100 001 - 150 000	\N
district	DC4	2016	Albertinia HesseQua	150 001 - 200 000	\N
district	DC4	2016	Albertinia HesseQua	200 001 - 300 000	\N
district	DC4	2016	Albertinia HesseQua	300 001 - 500 000	\N
district	DC4	2016	Albertinia HesseQua	500 001 - 800 000	\N
district	DC4	2016	Albertinia HesseQua	800 001 - 1 000 000	\N
district	DC4	2016	Albertinia HesseQua	> 1 000 000	\N
district	DC10	2016	Alexandria Ndlambe	< 1 500	\N
district	DC10	2016	Alexandria Ndlambe	1 501 - 3 000	\N
district	DC10	2016	Alexandria Ndlambe	3 001 - 5 000	970
district	DC10	2016	Alexandria Ndlambe	5 001 - 10 000	2204
district	DC10	2016	Alexandria Ndlambe	10 001 - 20 000	555
district	DC10	2016	Alexandria Ndlambe	20 001 - 30 000	892
district	DC10	2016	Alexandria Ndlambe	30 001 - 40 000	110
district	DC10	2016	Alexandria Ndlambe	40 001 - 50 000	604
district	DC10	2016	Alexandria Ndlambe	50 001 - 100 000	\N
district	DC10	2016	Alexandria Ndlambe	100 001 - 150 000	\N
district	DC10	2016	Alexandria Ndlambe	150 001 - 200 000	\N
district	DC10	2016	Alexandria Ndlambe	200 001 - 300 000	\N
district	DC10	2016	Alexandria Ndlambe	300 001 - 500 000	25
district	DC10	2016	Alexandria Ndlambe	500 001 - 800 000	\N
district	DC10	2016	Alexandria Ndlambe	800 001 - 1 000 000	\N
district	DC10	2016	Alexandria Ndlambe	> 1 000 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	< 1 500	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	1 501 - 3 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	3 001 - 5 000	779
district	DC14	2016	Aliwal-Noord Maletsiwai	5 001 - 10 000	2045
district	DC14	2016	Aliwal-Noord Maletsiwai	10 001 - 20 000	1041
district	DC14	2016	Aliwal-Noord Maletsiwai	20 001 - 30 000	407
district	DC14	2016	Aliwal-Noord Maletsiwai	30 001 - 40 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	40 001 - 50 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	50 001 - 100 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	100 001 - 150 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	150 001 - 200 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	200 001 - 300 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	300 001 - 500 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	500 001 - 800 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	800 001 - 1 000 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	> 1 000 000	\N
district	DC35	2016	Alldays Blouberg	< 1 500	117
district	DC35	2016	Alldays Blouberg	1 501 - 3 000	1548
district	DC35	2016	Alldays Blouberg	3 001 - 5 000	9230
district	DC35	2016	Alldays Blouberg	5 001 - 10 000	4652
district	DC35	2016	Alldays Blouberg	10 001 - 20 000	1479
district	DC35	2016	Alldays Blouberg	20 001 - 30 000	816
district	DC35	2016	Alldays Blouberg	30 001 - 40 000	\N
district	DC35	2016	Alldays Blouberg	40 001 - 50 000	86
district	DC35	2016	Alldays Blouberg	50 001 - 100 000	59
district	DC35	2016	Alldays Blouberg	100 001 - 150 000	\N
district	DC35	2016	Alldays Blouberg	150 001 - 200 000	\N
district	DC35	2016	Alldays Blouberg	200 001 - 300 000	\N
district	DC35	2016	Alldays Blouberg	300 001 - 500 000	\N
district	DC35	2016	Alldays Blouberg	500 001 - 800 000	\N
district	DC35	2016	Alldays Blouberg	800 001 - 1 000 000	\N
district	DC35	2016	Alldays Blouberg	> 1 000 000	\N
district	DC30	2016	Amsterdam Mkhondo	< 1 500	99
district	DC30	2016	Amsterdam Mkhondo	1 501 - 3 000	\N
district	DC30	2016	Amsterdam Mkhondo	3 001 - 5 000	\N
district	DC30	2016	Amsterdam Mkhondo	5 001 - 10 000	1604
district	DC30	2016	Amsterdam Mkhondo	10 001 - 20 000	7571
district	DC30	2016	Amsterdam Mkhondo	20 001 - 30 000	2838
district	DC30	2016	Amsterdam Mkhondo	30 001 - 40 000	1700
district	DC30	2016	Amsterdam Mkhondo	40 001 - 50 000	81
district	DC30	2016	Amsterdam Mkhondo	50 001 - 100 000	66
district	DC30	2016	Amsterdam Mkhondo	100 001 - 150 000	382
district	DC30	2016	Amsterdam Mkhondo	150 001 - 200 000	44
district	DC30	2016	Amsterdam Mkhondo	200 001 - 300 000	51
district	DC30	2016	Amsterdam Mkhondo	300 001 - 500 000	25
district	DC30	2016	Amsterdam Mkhondo	500 001 - 800 000	\N
district	DC30	2016	Amsterdam Mkhondo	800 001 - 1 000 000	\N
district	DC30	2016	Amsterdam Mkhondo	> 1 000 000	\N
district	DC29	2016	Ballito KwaDukuza	< 1 500	\N
district	DC29	2016	Ballito KwaDukuza	1 501 - 3 000	\N
district	DC29	2016	Ballito KwaDukuza	3 001 - 5 000	379
district	DC29	2016	Ballito KwaDukuza	5 001 - 10 000	56
district	DC29	2016	Ballito KwaDukuza	10 001 - 20 000	220
district	DC29	2016	Ballito KwaDukuza	20 001 - 30 000	752
district	DC29	2016	Ballito KwaDukuza	30 001 - 40 000	180
district	DC29	2016	Ballito KwaDukuza	40 001 - 50 000	659
district	DC29	2016	Ballito KwaDukuza	50 001 - 100 000	740
district	DC29	2016	Ballito KwaDukuza	100 001 - 150 000	622
district	DC29	2016	Ballito KwaDukuza	150 001 - 200 000	43
district	DC29	2016	Ballito KwaDukuza	200 001 - 300 000	\N
district	DC29	2016	Ballito KwaDukuza	300 001 - 500 000	13
district	DC29	2016	Ballito KwaDukuza	500 001 - 800 000	294
district	DC29	2016	Ballito KwaDukuza	800 001 - 1 000 000	\N
district	DC29	2016	Ballito KwaDukuza	> 1 000 000	34
district	DC9	2016	Barkley-Wes Dikgatlong	< 1 500	2017
district	DC9	2016	Barkley-Wes Dikgatlong	1 501 - 3 000	1822
district	DC9	2016	Barkley-Wes Dikgatlong	3 001 - 5 000	4205
district	DC9	2016	Barkley-Wes Dikgatlong	5 001 - 10 000	7520
district	DC9	2016	Barkley-Wes Dikgatlong	10 001 - 20 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	20 001 - 30 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	30 001 - 40 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	40 001 - 50 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	50 001 - 100 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	100 001 - 150 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	150 001 - 200 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	200 001 - 300 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	300 001 - 500 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	500 001 - 800 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	800 001 - 1 000 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	> 1 000 000	\N
district	DC14	2016	Barkly-Oos Senqu	< 1 500	\N
district	DC14	2016	Barkly-Oos Senqu	1 501 - 3 000	1348
district	DC14	2016	Barkly-Oos Senqu	3 001 - 5 000	508
district	DC14	2016	Barkly-Oos Senqu	5 001 - 10 000	4281
district	DC14	2016	Barkly-Oos Senqu	10 001 - 20 000	\N
district	DC14	2016	Barkly-Oos Senqu	20 001 - 30 000	\N
district	DC14	2016	Barkly-Oos Senqu	30 001 - 40 000	\N
district	DC14	2016	Barkly-Oos Senqu	40 001 - 50 000	\N
district	DC14	2016	Barkly-Oos Senqu	50 001 - 100 000	\N
district	DC14	2016	Barkly-Oos Senqu	100 001 - 150 000	\N
district	DC14	2016	Barkly-Oos Senqu	150 001 - 200 000	\N
district	DC14	2016	Barkly-Oos Senqu	200 001 - 300 000	\N
district	DC14	2016	Barkly-Oos Senqu	300 001 - 500 000	\N
district	DC14	2016	Barkly-Oos Senqu	500 001 - 800 000	\N
district	DC14	2016	Barkly-Oos Senqu	800 001 - 1 000 000	\N
district	DC14	2016	Barkly-Oos Senqu	> 1 000 000	\N
district	DC10	2016	Bathurst Ndlambe	< 1 500	\N
district	DC10	2016	Bathurst Ndlambe	1 501 - 3 000	\N
district	DC10	2016	Bathurst Ndlambe	3 001 - 5 000	\N
district	DC10	2016	Bathurst Ndlambe	5 001 - 10 000	1129
district	DC10	2016	Bathurst Ndlambe	10 001 - 20 000	2221
district	DC10	2016	Bathurst Ndlambe	20 001 - 30 000	\N
district	DC10	2016	Bathurst Ndlambe	30 001 - 40 000	\N
district	DC10	2016	Bathurst Ndlambe	40 001 - 50 000	104
district	DC10	2016	Bathurst Ndlambe	50 001 - 100 000	28
district	DC10	2016	Bathurst Ndlambe	100 001 - 150 000	55
district	DC10	2016	Bathurst Ndlambe	150 001 - 200 000	\N
district	DC10	2016	Bathurst Ndlambe	200 001 - 300 000	\N
district	DC10	2016	Bathurst Ndlambe	300 001 - 500 000	\N
district	DC10	2016	Bathurst Ndlambe	500 001 - 800 000	\N
district	DC10	2016	Bathurst Ndlambe	800 001 - 1 000 000	\N
district	DC10	2016	Bathurst Ndlambe	> 1 000 000	\N
district	DC5	2016	Beaufort-Wes	< 1 500	4080
district	DC5	2016	Beaufort-Wes	1 501 - 3 000	11222
district	DC5	2016	Beaufort-Wes	3 001 - 5 000	9919
district	DC5	2016	Beaufort-Wes	5 001 - 10 000	269
district	DC5	2016	Beaufort-Wes	10 001 - 20 000	478
district	DC5	2016	Beaufort-Wes	20 001 - 30 000	\N
district	DC5	2016	Beaufort-Wes	30 001 - 40 000	\N
district	DC5	2016	Beaufort-Wes	40 001 - 50 000	\N
district	DC5	2016	Beaufort-Wes	50 001 - 100 000	\N
district	DC5	2016	Beaufort-Wes	100 001 - 150 000	\N
district	DC5	2016	Beaufort-Wes	150 001 - 200 000	\N
district	DC5	2016	Beaufort-Wes	200 001 - 300 000	\N
district	DC5	2016	Beaufort-Wes	300 001 - 500 000	\N
district	DC5	2016	Beaufort-Wes	500 001 - 800 000	\N
district	DC5	2016	Beaufort-Wes	800 001 - 1 000 000	\N
district	DC5	2016	Beaufort-Wes	> 1 000 000	\N
district	DC12	2016	Bedford Amathole	< 1 500	\N
district	DC12	2016	Bedford Amathole	1 501 - 3 000	\N
district	DC12	2016	Bedford Amathole	3 001 - 5 000	\N
district	DC12	2016	Bedford Amathole	5 001 - 10 000	3591
district	DC12	2016	Bedford Amathole	10 001 - 20 000	\N
district	DC12	2016	Bedford Amathole	20 001 - 30 000	2707
district	DC12	2016	Bedford Amathole	30 001 - 40 000	\N
district	DC12	2016	Bedford Amathole	40 001 - 50 000	\N
district	DC12	2016	Bedford Amathole	50 001 - 100 000	\N
district	DC12	2016	Bedford Amathole	100 001 - 150 000	\N
district	DC12	2016	Bedford Amathole	150 001 - 200 000	\N
district	DC12	2016	Bedford Amathole	200 001 - 300 000	52
district	DC12	2016	Bedford Amathole	300 001 - 500 000	\N
district	DC12	2016	Bedford Amathole	500 001 - 800 000	\N
district	DC12	2016	Bedford Amathole	800 001 - 1 000 000	\N
district	DC12	2016	Bedford Amathole	> 1 000 000	\N
district	DC30	2016	Bethal Gonovan Mbeki	< 1 500	\N
district	DC30	2016	Bethal Gonovan Mbeki	1 501 - 3 000	396
district	DC30	2016	Bethal Gonovan Mbeki	3 001 - 5 000	840
district	DC30	2016	Bethal Gonovan Mbeki	5 001 - 10 000	2935
district	DC30	2016	Bethal Gonovan Mbeki	10 001 - 20 000	8216
district	DC30	2016	Bethal Gonovan Mbeki	20 001 - 30 000	3390
district	DC30	2016	Bethal Gonovan Mbeki	30 001 - 40 000	3790
district	DC30	2016	Bethal Gonovan Mbeki	40 001 - 50 000	2397
district	DC30	2016	Bethal Gonovan Mbeki	50 001 - 100 000	98
district	DC30	2016	Bethal Gonovan Mbeki	100 001 - 150 000	201
district	DC30	2016	Bethal Gonovan Mbeki	150 001 - 200 000	\N
district	DC30	2016	Bethal Gonovan Mbeki	200 001 - 300 000	\N
district	DC30	2016	Bethal Gonovan Mbeki	300 001 - 500 000	23
district	DC30	2016	Bethal Gonovan Mbeki	500 001 - 800 000	\N
district	DC30	2016	Bethal Gonovan Mbeki	800 001 - 1 000 000	\N
district	DC30	2016	Bethal Gonovan Mbeki	> 1 000 000	\N
district	DC19	2016	Bethlehem Dihlabeng	< 1 500	737
district	DC19	2016	Bethlehem Dihlabeng	1 501 - 3 000	\N
district	DC19	2016	Bethlehem Dihlabeng	3 001 - 5 000	\N
district	DC19	2016	Bethlehem Dihlabeng	5 001 - 10 000	256
district	DC19	2016	Bethlehem Dihlabeng	10 001 - 20 000	1876
district	DC19	2016	Bethlehem Dihlabeng	20 001 - 30 000	3525
district	DC19	2016	Bethlehem Dihlabeng	30 001 - 40 000	1375
district	DC19	2016	Bethlehem Dihlabeng	40 001 - 50 000	335
district	DC19	2016	Bethlehem Dihlabeng	50 001 - 100 000	\N
district	DC19	2016	Bethlehem Dihlabeng	100 001 - 150 000	\N
district	DC19	2016	Bethlehem Dihlabeng	150 001 - 200 000	\N
district	DC19	2016	Bethlehem Dihlabeng	200 001 - 300 000	\N
district	DC19	2016	Bethlehem Dihlabeng	300 001 - 500 000	\N
district	DC19	2016	Bethlehem Dihlabeng	500 001 - 800 000	12
district	DC19	2016	Bethlehem Dihlabeng	800 001 - 1 000 000	\N
district	DC19	2016	Bethlehem Dihlabeng	> 1 000 000	\N
district	DC16	2016	Bethulie	< 1 500	\N
district	DC16	2016	Bethulie	1 501 - 3 000	\N
district	DC16	2016	Bethulie	3 001 - 5 000	\N
district	DC16	2016	Bethulie	5 001 - 10 000	2880
district	DC16	2016	Bethulie	10 001 - 20 000	357
district	DC16	2016	Bethulie	20 001 - 30 000	\N
district	DC16	2016	Bethulie	30 001 - 40 000	\N
district	DC16	2016	Bethulie	40 001 - 50 000	\N
district	DC16	2016	Bethulie	50 001 - 100 000	\N
district	DC16	2016	Bethulie	100 001 - 150 000	\N
district	DC16	2016	Bethulie	150 001 - 200 000	\N
district	DC16	2016	Bethulie	200 001 - 300 000	\N
district	DC16	2016	Bethulie	300 001 - 500 000	\N
district	DC16	2016	Bethulie	500 001 - 800 000	\N
district	DC16	2016	Bethulie	800 001 - 1 000 000	\N
district	DC16	2016	Bethulie	> 1 000 000	\N
municipality	MAN	2016	Bloemfontein Mangaung	< 1 500	\N
municipality	MAN	2016	Bloemfontein Mangaung	1 501 - 3 000	306
municipality	MAN	2016	Bloemfontein Mangaung	3 001 - 5 000	5514
municipality	MAN	2016	Bloemfontein Mangaung	5 001 - 10 000	5653
municipality	MAN	2016	Bloemfontein Mangaung	10 001 - 20 000	6544
municipality	MAN	2016	Bloemfontein Mangaung	20 001 - 30 000	1294
municipality	MAN	2016	Bloemfontein Mangaung	30 001 - 40 000	274
municipality	MAN	2016	Bloemfontein Mangaung	40 001 - 50 000	115
municipality	MAN	2016	Bloemfontein Mangaung	50 001 - 100 000	287
municipality	MAN	2016	Bloemfontein Mangaung	100 001 - 150 000	143
municipality	MAN	2016	Bloemfontein Mangaung	150 001 - 200 000	37
municipality	MAN	2016	Bloemfontein Mangaung	200 001 - 300 000	83
municipality	MAN	2016	Bloemfontein Mangaung	300 001 - 500 000	12
municipality	MAN	2016	Bloemfontein Mangaung	500 001 - 800 000	\N
municipality	MAN	2016	Bloemfontein Mangaung	800 001 - 1 000 000	\N
municipality	MAN	2016	Bloemfontein Mangaung	> 1 000 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	< 1 500	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	1 501 - 3 000	675
district	DC39	2016	Bloemhof Lekwa-Tecma	3 001 - 5 000	2589
district	DC39	2016	Bloemhof Lekwa-Tecma	5 001 - 10 000	7342
district	DC39	2016	Bloemhof Lekwa-Tecma	10 001 - 20 000	3352
district	DC39	2016	Bloemhof Lekwa-Tecma	20 001 - 30 000	88
district	DC39	2016	Bloemhof Lekwa-Tecma	30 001 - 40 000	85
district	DC39	2016	Bloemhof Lekwa-Tecma	40 001 - 50 000	37
district	DC39	2016	Bloemhof Lekwa-Tecma	50 001 - 100 000	116
district	DC39	2016	Bloemhof Lekwa-Tecma	100 001 - 150 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	150 001 - 200 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	200 001 - 300 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	300 001 - 500 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	500 001 - 800 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	800 001 - 1 000 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	> 1 000 000	\N
district	DC18	2016	Boshof Tokologo	< 1 500	563
district	DC18	2016	Boshof Tokologo	1 501 - 3 000	3806
district	DC18	2016	Boshof Tokologo	3 001 - 5 000	7614
district	DC18	2016	Boshof Tokologo	5 001 - 10 000	6814
district	DC18	2016	Boshof Tokologo	10 001 - 20 000	499
district	DC18	2016	Boshof Tokologo	20 001 - 30 000	2399
district	DC18	2016	Boshof Tokologo	30 001 - 40 000	\N
district	DC18	2016	Boshof Tokologo	40 001 - 50 000	\N
district	DC18	2016	Boshof Tokologo	50 001 - 100 000	21
district	DC18	2016	Boshof Tokologo	100 001 - 150 000	\N
district	DC18	2016	Boshof Tokologo	150 001 - 200 000	\N
district	DC18	2016	Boshof Tokologo	200 001 - 300 000	\N
district	DC18	2016	Boshof Tokologo	300 001 - 500 000	\N
district	DC18	2016	Boshof Tokologo	500 001 - 800 000	\N
district	DC18	2016	Boshof Tokologo	800 001 - 1 000 000	\N
district	DC18	2016	Boshof Tokologo	> 1 000 000	\N
district	DC18	2016	Bothaville Nala	< 1 500	\N
district	DC18	2016	Bothaville Nala	1 501 - 3 000	\N
district	DC18	2016	Bothaville Nala	3 001 - 5 000	602
district	DC18	2016	Bothaville Nala	5 001 - 10 000	2673
district	DC18	2016	Bothaville Nala	10 001 - 20 000	3404
district	DC18	2016	Bothaville Nala	20 001 - 30 000	640
district	DC18	2016	Bothaville Nala	30 001 - 40 000	\N
district	DC18	2016	Bothaville Nala	40 001 - 50 000	739
district	DC18	2016	Bothaville Nala	50 001 - 100 000	1360
district	DC18	2016	Bothaville Nala	100 001 - 150 000	\N
district	DC18	2016	Bothaville Nala	150 001 - 200 000	\N
district	DC18	2016	Bothaville Nala	200 001 - 300 000	\N
district	DC18	2016	Bothaville Nala	300 001 - 500 000	\N
district	DC18	2016	Bothaville Nala	500 001 - 800 000	\N
district	DC18	2016	Bothaville Nala	800 001 - 1 000 000	\N
district	DC18	2016	Bothaville Nala	> 1 000 000	\N
district	DC18	2016	Brandfort Masilonyana	< 1 500	\N
district	DC18	2016	Brandfort Masilonyana	1 501 - 3 000	\N
district	DC18	2016	Brandfort Masilonyana	3 001 - 5 000	\N
district	DC18	2016	Brandfort Masilonyana	5 001 - 10 000	2803
district	DC18	2016	Brandfort Masilonyana	10 001 - 20 000	1030
district	DC18	2016	Brandfort Masilonyana	20 001 - 30 000	\N
district	DC18	2016	Brandfort Masilonyana	30 001 - 40 000	\N
district	DC18	2016	Brandfort Masilonyana	40 001 - 50 000	21
district	DC18	2016	Brandfort Masilonyana	50 001 - 100 000	49
district	DC18	2016	Brandfort Masilonyana	100 001 - 150 000	\N
district	DC18	2016	Brandfort Masilonyana	150 001 - 200 000	\N
district	DC18	2016	Brandfort Masilonyana	200 001 - 300 000	\N
district	DC18	2016	Brandfort Masilonyana	300 001 - 500 000	\N
district	DC18	2016	Brandfort Masilonyana	500 001 - 800 000	\N
district	DC18	2016	Brandfort Masilonyana	800 001 - 1 000 000	\N
district	DC18	2016	Brandfort Masilonyana	> 1 000 000	\N
district	DC39	2016	Bray Kagisano-Molopo	< 1 500	\N
district	DC39	2016	Bray Kagisano-Molopo	1 501 - 3 000	\N
district	DC39	2016	Bray Kagisano-Molopo	3 001 - 5 000	10752
district	DC39	2016	Bray Kagisano-Molopo	5 001 - 10 000	4467
district	DC39	2016	Bray Kagisano-Molopo	10 001 - 20 000	\N
district	DC39	2016	Bray Kagisano-Molopo	20 001 - 30 000	\N
district	DC39	2016	Bray Kagisano-Molopo	30 001 - 40 000	\N
district	DC39	2016	Bray Kagisano-Molopo	40 001 - 50 000	\N
district	DC39	2016	Bray Kagisano-Molopo	50 001 - 100 000	\N
district	DC39	2016	Bray Kagisano-Molopo	100 001 - 150 000	\N
district	DC39	2016	Bray Kagisano-Molopo	150 001 - 200 000	\N
district	DC39	2016	Bray Kagisano-Molopo	200 001 - 300 000	\N
district	DC39	2016	Bray Kagisano-Molopo	300 001 - 500 000	\N
district	DC39	2016	Bray Kagisano-Molopo	500 001 - 800 000	\N
district	DC39	2016	Bray Kagisano-Molopo	800 001 - 1 000 000	\N
district	DC39	2016	Bray Kagisano-Molopo	> 1 000 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	< 1 500	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	1 501 - 3 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	3 001 - 5 000	629
district	DC3	2016	Bredasdorp Cape Aqulhas	5 001 - 10 000	146
district	DC3	2016	Bredasdorp Cape Aqulhas	10 001 - 20 000	754
district	DC3	2016	Bredasdorp Cape Aqulhas	20 001 - 30 000	37
district	DC3	2016	Bredasdorp Cape Aqulhas	30 001 - 40 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	40 001 - 50 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	50 001 - 100 000	736
district	DC3	2016	Bredasdorp Cape Aqulhas	100 001 - 150 000	138
district	DC3	2016	Bredasdorp Cape Aqulhas	150 001 - 200 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	200 001 - 300 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	300 001 - 500 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	500 001 - 800 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	800 001 - 1 000 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	> 1 000 000	10
district	DC7	2016	Britstown	< 1 500	25207
district	DC7	2016	Britstown	1 501 - 3 000	40869
district	DC7	2016	Britstown	3 001 - 5 000	829
district	DC7	2016	Britstown	5 001 - 10 000	\N
district	DC7	2016	Britstown	10 001 - 20 000	\N
district	DC7	2016	Britstown	20 001 - 30 000	\N
district	DC7	2016	Britstown	30 001 - 40 000	\N
district	DC7	2016	Britstown	40 001 - 50 000	\N
district	DC7	2016	Britstown	50 001 - 100 000	\N
district	DC7	2016	Britstown	100 001 - 150 000	\N
district	DC7	2016	Britstown	150 001 - 200 000	\N
district	DC7	2016	Britstown	200 001 - 300 000	\N
district	DC7	2016	Britstown	300 001 - 500 000	\N
district	DC7	2016	Britstown	500 001 - 800 000	\N
district	DC7	2016	Britstown	800 001 - 1 000 000	\N
district	DC7	2016	Britstown	> 1 000 000	\N
district	DC18	2016	Bultfontein Tswelopele	< 1 500	\N
district	DC18	2016	Bultfontein Tswelopele	1 501 - 3 000	\N
district	DC18	2016	Bultfontein Tswelopele	3 001 - 5 000	1055
district	DC18	2016	Bultfontein Tswelopele	5 001 - 10 000	959
district	DC18	2016	Bultfontein Tswelopele	10 001 - 20 000	236
district	DC18	2016	Bultfontein Tswelopele	20 001 - 30 000	202
district	DC18	2016	Bultfontein Tswelopele	30 001 - 40 000	\N
district	DC18	2016	Bultfontein Tswelopele	40 001 - 50 000	368
district	DC18	2016	Bultfontein Tswelopele	50 001 - 100 000	137
district	DC18	2016	Bultfontein Tswelopele	100 001 - 150 000	\N
district	DC18	2016	Bultfontein Tswelopele	150 001 - 200 000	\N
district	DC18	2016	Bultfontein Tswelopele	200 001 - 300 000	\N
district	DC18	2016	Bultfontein Tswelopele	300 001 - 500 000	\N
district	DC18	2016	Bultfontein Tswelopele	500 001 - 800 000	\N
district	DC18	2016	Bultfontein Tswelopele	800 001 - 1 000 000	\N
district	DC18	2016	Bultfontein Tswelopele	> 1 000 000	\N
district	DC47	2016	Burgersfort Thubatse	< 1 500	4006
district	DC47	2016	Burgersfort Thubatse	1 501 - 3 000	831
district	DC47	2016	Burgersfort Thubatse	3 001 - 5 000	1716
district	DC47	2016	Burgersfort Thubatse	5 001 - 10 000	1708
district	DC47	2016	Burgersfort Thubatse	10 001 - 20 000	3177
district	DC47	2016	Burgersfort Thubatse	20 001 - 30 000	1179
district	DC47	2016	Burgersfort Thubatse	30 001 - 40 000	132
district	DC47	2016	Burgersfort Thubatse	40 001 - 50 000	\N
district	DC47	2016	Burgersfort Thubatse	50 001 - 100 000	783
district	DC47	2016	Burgersfort Thubatse	100 001 - 150 000	232
district	DC47	2016	Burgersfort Thubatse	150 001 - 200 000	464
district	DC47	2016	Burgersfort Thubatse	200 001 - 300 000	149
district	DC47	2016	Burgersfort Thubatse	300 001 - 500 000	41
district	DC47	2016	Burgersfort Thubatse	500 001 - 800 000	374
district	DC47	2016	Burgersfort Thubatse	800 001 - 1 000 000	58
district	DC47	2016	Burgersfort Thubatse	> 1 000 000	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	< 1 500	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	1 501 - 3 000	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	3 001 - 5 000	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	5 001 - 10 000	12
district	DC3	2016	Caledon (Overberg) Theewaterskloof	10 001 - 20 000	287
district	DC3	2016	Caledon (Overberg) Theewaterskloof	20 001 - 30 000	1082
district	DC3	2016	Caledon (Overberg) Theewaterskloof	30 001 - 40 000	173
district	DC3	2016	Caledon (Overberg) Theewaterskloof	40 001 - 50 000	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	50 001 - 100 000	2842
district	DC3	2016	Caledon (Overberg) Theewaterskloof	100 001 - 150 000	333
district	DC3	2016	Caledon (Overberg) Theewaterskloof	150 001 - 200 000	133
district	DC3	2016	Caledon (Overberg) Theewaterskloof	200 001 - 300 000	22
district	DC3	2016	Caledon (Overberg) Theewaterskloof	300 001 - 500 000	58
district	DC3	2016	Caledon (Overberg) Theewaterskloof	500 001 - 800 000	116
district	DC3	2016	Caledon (Overberg) Theewaterskloof	800 001 - 1 000 000	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	> 1 000 000	\N
district	DC4	2016	Calitzdorp Kannaland	< 1 500	757
district	DC4	2016	Calitzdorp Kannaland	1 501 - 3 000	\N
district	DC4	2016	Calitzdorp Kannaland	3 001 - 5 000	\N
district	DC4	2016	Calitzdorp Kannaland	5 001 - 10 000	1599
district	DC4	2016	Calitzdorp Kannaland	10 001 - 20 000	43
district	DC4	2016	Calitzdorp Kannaland	20 001 - 30 000	480
district	DC4	2016	Calitzdorp Kannaland	30 001 - 40 000	\N
district	DC4	2016	Calitzdorp Kannaland	40 001 - 50 000	289
district	DC4	2016	Calitzdorp Kannaland	50 001 - 100 000	61
district	DC4	2016	Calitzdorp Kannaland	100 001 - 150 000	57
district	DC4	2016	Calitzdorp Kannaland	150 001 - 200 000	\N
district	DC4	2016	Calitzdorp Kannaland	200 001 - 300 000	\N
district	DC4	2016	Calitzdorp Kannaland	300 001 - 500 000	\N
district	DC4	2016	Calitzdorp Kannaland	500 001 - 800 000	\N
district	DC4	2016	Calitzdorp Kannaland	800 001 - 1 000 000	\N
district	DC4	2016	Calitzdorp Kannaland	> 1 000 000	\N
district	DC6	2016	Calvinia Hantam	< 1 500	29400
district	DC6	2016	Calvinia Hantam	1 501 - 3 000	12700
district	DC6	2016	Calvinia Hantam	3 001 - 5 000	\N
district	DC6	2016	Calvinia Hantam	5 001 - 10 000	\N
district	DC6	2016	Calvinia Hantam	10 001 - 20 000	\N
district	DC6	2016	Calvinia Hantam	20 001 - 30 000	\N
district	DC6	2016	Calvinia Hantam	30 001 - 40 000	\N
district	DC6	2016	Calvinia Hantam	40 001 - 50 000	\N
district	DC6	2016	Calvinia Hantam	50 001 - 100 000	\N
district	DC6	2016	Calvinia Hantam	100 001 - 150 000	\N
district	DC6	2016	Calvinia Hantam	150 001 - 200 000	\N
district	DC6	2016	Calvinia Hantam	200 001 - 300 000	\N
district	DC6	2016	Calvinia Hantam	300 001 - 500 000	\N
district	DC6	2016	Calvinia Hantam	500 001 - 800 000	\N
district	DC6	2016	Calvinia Hantam	800 001 - 1 000 000	\N
district	DC6	2016	Calvinia Hantam	> 1 000 000	\N
municipality	CPT	2016	Cape Town	< 1 500	\N
municipality	CPT	2016	Cape Town	1 501 - 3 000	\N
municipality	CPT	2016	Cape Town	3 001 - 5 000	351
municipality	CPT	2016	Cape Town	5 001 - 10 000	2328
municipality	CPT	2016	Cape Town	10 001 - 20 000	\N
municipality	CPT	2016	Cape Town	20 001 - 30 000	383
municipality	CPT	2016	Cape Town	30 001 - 40 000	\N
municipality	CPT	2016	Cape Town	40 001 - 50 000	\N
municipality	CPT	2016	Cape Town	50 001 - 100 000	89
municipality	CPT	2016	Cape Town	100 001 - 150 000	\N
municipality	CPT	2016	Cape Town	150 001 - 200 000	21
municipality	CPT	2016	Cape Town	200 001 - 300 000	\N
municipality	CPT	2016	Cape Town	300 001 - 500 000	\N
municipality	CPT	2016	Cape Town	500 001 - 800 000	\N
municipality	CPT	2016	Cape Town	800 001 - 1 000 000	\N
municipality	CPT	2016	Cape Town	> 1 000 000	\N
district	DC48	2016	Carletonville Merafong	< 1 500	211
district	DC48	2016	Carletonville Merafong	1 501 - 3 000	27
district	DC48	2016	Carletonville Merafong	3 001 - 5 000	293
district	DC48	2016	Carletonville Merafong	5 001 - 10 000	7862
district	DC48	2016	Carletonville Merafong	10 001 - 20 000	5149
district	DC48	2016	Carletonville Merafong	20 001 - 30 000	627
district	DC48	2016	Carletonville Merafong	30 001 - 40 000	913
district	DC48	2016	Carletonville Merafong	40 001 - 50 000	1314
district	DC48	2016	Carletonville Merafong	50 001 - 100 000	1042
district	DC48	2016	Carletonville Merafong	100 001 - 150 000	136
district	DC48	2016	Carletonville Merafong	150 001 - 200 000	40
district	DC48	2016	Carletonville Merafong	200 001 - 300 000	160
district	DC48	2016	Carletonville Merafong	300 001 - 500 000	83
district	DC48	2016	Carletonville Merafong	500 001 - 800 000	12
district	DC48	2016	Carletonville Merafong	800 001 - 1 000 000	20
district	DC48	2016	Carletonville Merafong	> 1 000 000	49
district	DC7	2016	Carnavon Kareeberg	< 1 500	2030
district	DC7	2016	Carnavon Kareeberg	1 501 - 3 000	36575
district	DC7	2016	Carnavon Kareeberg	3 001 - 5 000	\N
district	DC7	2016	Carnavon Kareeberg	5 001 - 10 000	\N
district	DC7	2016	Carnavon Kareeberg	10 001 - 20 000	\N
district	DC7	2016	Carnavon Kareeberg	20 001 - 30 000	\N
district	DC7	2016	Carnavon Kareeberg	30 001 - 40 000	\N
district	DC7	2016	Carnavon Kareeberg	40 001 - 50 000	\N
district	DC7	2016	Carnavon Kareeberg	50 001 - 100 000	\N
district	DC7	2016	Carnavon Kareeberg	100 001 - 150 000	\N
district	DC7	2016	Carnavon Kareeberg	150 001 - 200 000	\N
district	DC7	2016	Carnavon Kareeberg	200 001 - 300 000	\N
district	DC7	2016	Carnavon Kareeberg	300 001 - 500 000	\N
district	DC7	2016	Carnavon Kareeberg	500 001 - 800 000	\N
district	DC7	2016	Carnavon Kareeberg	800 001 - 1 000 000	\N
district	DC7	2016	Carnavon Kareeberg	> 1 000 000	\N
district	DC12	2016	Cathcart Amahlathi	< 1 500	\N
district	DC12	2016	Cathcart Amahlathi	1 501 - 3 000	\N
district	DC12	2016	Cathcart Amahlathi	3 001 - 5 000	641
district	DC12	2016	Cathcart Amahlathi	5 001 - 10 000	2390
district	DC12	2016	Cathcart Amahlathi	10 001 - 20 000	\N
district	DC12	2016	Cathcart Amahlathi	20 001 - 30 000	\N
district	DC12	2016	Cathcart Amahlathi	30 001 - 40 000	\N
district	DC12	2016	Cathcart Amahlathi	40 001 - 50 000	\N
district	DC12	2016	Cathcart Amahlathi	50 001 - 100 000	22
district	DC12	2016	Cathcart Amahlathi	100 001 - 150 000	\N
district	DC12	2016	Cathcart Amahlathi	150 001 - 200 000	\N
district	DC12	2016	Cathcart Amahlathi	200 001 - 300 000	\N
district	DC12	2016	Cathcart Amahlathi	300 001 - 500 000	\N
district	DC12	2016	Cathcart Amahlathi	500 001 - 800 000	\N
district	DC12	2016	Cathcart Amahlathi	800 001 - 1 000 000	\N
district	DC12	2016	Cathcart Amahlathi	> 1 000 000	\N
district	DC2	2016	Ceres Witzenberg	< 1 500	17911
district	DC2	2016	Ceres Witzenberg	1 501 - 3 000	14438
district	DC2	2016	Ceres Witzenberg	3 001 - 5 000	1212
district	DC2	2016	Ceres Witzenberg	5 001 - 10 000	3658
district	DC2	2016	Ceres Witzenberg	10 001 - 20 000	\N
district	DC2	2016	Ceres Witzenberg	20 001 - 30 000	353
district	DC2	2016	Ceres Witzenberg	30 001 - 40 000	\N
district	DC2	2016	Ceres Witzenberg	40 001 - 50 000	229
district	DC2	2016	Ceres Witzenberg	50 001 - 100 000	\N
district	DC2	2016	Ceres Witzenberg	100 001 - 150 000	120
district	DC2	2016	Ceres Witzenberg	150 001 - 200 000	140
district	DC2	2016	Ceres Witzenberg	200 001 - 300 000	\N
district	DC2	2016	Ceres Witzenberg	300 001 - 500 000	\N
district	DC2	2016	Ceres Witzenberg	500 001 - 800 000	\N
district	DC2	2016	Ceres Witzenberg	800 001 - 1 000 000	\N
district	DC2	2016	Ceres Witzenberg	> 1 000 000	\N
district	DC1	2016	Clanwilliam Cederberg	< 1 500	2271
district	DC1	2016	Clanwilliam Cederberg	1 501 - 3 000	7460
district	DC1	2016	Clanwilliam Cederberg	3 001 - 5 000	1799
district	DC1	2016	Clanwilliam Cederberg	5 001 - 10 000	1548
district	DC1	2016	Clanwilliam Cederberg	10 001 - 20 000	1113
district	DC4	2016	George	> 1 000 000	\N
district	DC1	2016	Clanwilliam Cederberg	20 001 - 30 000	1576
district	DC1	2016	Clanwilliam Cederberg	30 001 - 40 000	\N
district	DC1	2016	Clanwilliam Cederberg	40 001 - 50 000	\N
district	DC1	2016	Clanwilliam Cederberg	50 001 - 100 000	242
district	DC1	2016	Clanwilliam Cederberg	100 001 - 150 000	53
district	DC1	2016	Clanwilliam Cederberg	150 001 - 200 000	\N
district	DC1	2016	Clanwilliam Cederberg	200 001 - 300 000	\N
district	DC1	2016	Clanwilliam Cederberg	300 001 - 500 000	\N
district	DC1	2016	Clanwilliam Cederberg	500 001 - 800 000	\N
district	DC1	2016	Clanwilliam Cederberg	800 001 - 1 000 000	\N
district	DC1	2016	Clanwilliam Cederberg	> 1 000 000	\N
district	DC19	2016	Clocolan Setso	< 1 500	\N
district	DC19	2016	Clocolan Setso	1 501 - 3 000	518
district	DC19	2016	Clocolan Setso	3 001 - 5 000	183
district	DC19	2016	Clocolan Setso	5 001 - 10 000	696
district	DC19	2016	Clocolan Setso	10 001 - 20 000	1772
district	DC19	2016	Clocolan Setso	20 001 - 30 000	\N
district	DC19	2016	Clocolan Setso	30 001 - 40 000	\N
district	DC19	2016	Clocolan Setso	40 001 - 50 000	\N
district	DC19	2016	Clocolan Setso	50 001 - 100 000	\N
district	DC19	2016	Clocolan Setso	100 001 - 150 000	\N
district	DC19	2016	Clocolan Setso	150 001 - 200 000	\N
district	DC19	2016	Clocolan Setso	200 001 - 300 000	\N
district	DC19	2016	Clocolan Setso	300 001 - 500 000	\N
district	DC19	2016	Clocolan Setso	500 001 - 800 000	\N
district	DC19	2016	Clocolan Setso	800 001 - 1 000 000	\N
district	DC19	2016	Clocolan Setso	> 1 000 000	\N
district	DC7	2016	Colesberg Umsombomvu	< 1 500	7734
district	DC7	2016	Colesberg Umsombomvu	1 501 - 3 000	16558
district	DC7	2016	Colesberg Umsombomvu	3 001 - 5 000	\N
district	DC7	2016	Colesberg Umsombomvu	5 001 - 10 000	3275
district	DC7	2016	Colesberg Umsombomvu	10 001 - 20 000	\N
district	DC7	2016	Colesberg Umsombomvu	20 001 - 30 000	\N
district	DC7	2016	Colesberg Umsombomvu	30 001 - 40 000	\N
district	DC7	2016	Colesberg Umsombomvu	40 001 - 50 000	\N
district	DC7	2016	Colesberg Umsombomvu	50 001 - 100 000	\N
district	DC7	2016	Colesberg Umsombomvu	100 001 - 150 000	\N
district	DC7	2016	Colesberg Umsombomvu	150 001 - 200 000	\N
district	DC7	2016	Colesberg Umsombomvu	200 001 - 300 000	\N
district	DC7	2016	Colesberg Umsombomvu	300 001 - 500 000	\N
district	DC7	2016	Colesberg Umsombomvu	500 001 - 800 000	\N
district	DC7	2016	Colesberg Umsombomvu	800 001 - 1 000 000	\N
district	DC7	2016	Colesberg Umsombomvu	> 1 000 000	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	< 1 500	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	1 501 - 3 000	277
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	3 001 - 5 000	2224
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	5 001 - 10 000	6818
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	10 001 - 20 000	6046
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	20 001 - 30 000	3310
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	30 001 - 40 000	145
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	40 001 - 50 000	82
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	50 001 - 100 000	71
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	100 001 - 150 000	27
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	150 001 - 200 000	33
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	200 001 - 300 000	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	300 001 - 500 000	23
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	500 001 - 800 000	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	800 001 - 1 000 000	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	> 1 000 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	< 1 500	\N
district	DC13	2016	Cradock Inxuba Yethemba	1 501 - 3 000	3897
district	DC13	2016	Cradock Inxuba Yethemba	3 001 - 5 000	10428
district	DC13	2016	Cradock Inxuba Yethemba	5 001 - 10 000	5977
district	DC13	2016	Cradock Inxuba Yethemba	10 001 - 20 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	20 001 - 30 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	30 001 - 40 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	40 001 - 50 000	559
district	DC13	2016	Cradock Inxuba Yethemba	50 001 - 100 000	508
district	DC13	2016	Cradock Inxuba Yethemba	100 001 - 150 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	150 001 - 200 000	141
district	DC13	2016	Cradock Inxuba Yethemba	200 001 - 300 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	300 001 - 500 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	500 001 - 800 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	800 001 - 1 000 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	> 1 000 000	\N
district	DC38	2016	Delareyville Tswaing	< 1 500	\N
district	DC38	2016	Delareyville Tswaing	1 501 - 3 000	514
district	DC38	2016	Delareyville Tswaing	3 001 - 5 000	371
district	DC38	2016	Delareyville Tswaing	5 001 - 10 000	8247
district	DC38	2016	Delareyville Tswaing	10 001 - 20 000	11029
district	DC38	2016	Delareyville Tswaing	20 001 - 30 000	694
district	DC38	2016	Delareyville Tswaing	30 001 - 40 000	43
district	DC38	2016	Delareyville Tswaing	40 001 - 50 000	\N
district	DC38	2016	Delareyville Tswaing	50 001 - 100 000	\N
district	DC38	2016	Delareyville Tswaing	100 001 - 150 000	\N
district	DC38	2016	Delareyville Tswaing	150 001 - 200 000	\N
district	DC38	2016	Delareyville Tswaing	200 001 - 300 000	\N
district	DC38	2016	Delareyville Tswaing	300 001 - 500 000	\N
district	DC38	2016	Delareyville Tswaing	500 001 - 800 000	\N
district	DC38	2016	Delareyville Tswaing	800 001 - 1 000 000	\N
district	DC38	2016	Delareyville Tswaing	> 1 000 000	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	< 1 500	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	1 501 - 3 000	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	3 001 - 5 000	1329
district	DC34	2016	Dendron Makhado (Louis Trichardt)	5 001 - 10 000	11435
district	DC34	2016	Dendron Makhado (Louis Trichardt)	10 001 - 20 000	3378
district	DC34	2016	Dendron Makhado (Louis Trichardt)	20 001 - 30 000	513
district	DC34	2016	Dendron Makhado (Louis Trichardt)	30 001 - 40 000	385
district	DC34	2016	Dendron Makhado (Louis Trichardt)	40 001 - 50 000	97
district	DC34	2016	Dendron Makhado (Louis Trichardt)	50 001 - 100 000	604
district	DC34	2016	Dendron Makhado (Louis Trichardt)	100 001 - 150 000	267
district	DC34	2016	Dendron Makhado (Louis Trichardt)	150 001 - 200 000	80
district	DC34	2016	Dendron Makhado (Louis Trichardt)	200 001 - 300 000	31
district	DC34	2016	Dendron Makhado (Louis Trichardt)	300 001 - 500 000	22
district	DC34	2016	Dendron Makhado (Louis Trichardt)	500 001 - 800 000	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	800 001 - 1 000 000	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	> 1 000 000	\N
district	DC38	2016	Derdepoort	< 1 500	\N
district	DC38	2016	Derdepoort	1 501 - 3 000	\N
district	DC38	2016	Derdepoort	3 001 - 5 000	\N
district	DC38	2016	Derdepoort	5 001 - 10 000	5257
district	DC38	2016	Derdepoort	10 001 - 20 000	2710
district	DC38	2016	Derdepoort	20 001 - 30 000	\N
district	DC38	2016	Derdepoort	30 001 - 40 000	\N
district	DC38	2016	Derdepoort	40 001 - 50 000	\N
district	DC38	2016	Derdepoort	50 001 - 100 000	168
district	DC38	2016	Derdepoort	100 001 - 150 000	\N
district	DC38	2016	Derdepoort	150 001 - 200 000	\N
district	DC38	2016	Derdepoort	200 001 - 300 000	\N
district	DC38	2016	Derdepoort	300 001 - 500 000	\N
district	DC38	2016	Derdepoort	500 001 - 800 000	\N
district	DC38	2016	Derdepoort	800 001 - 1 000 000	\N
district	DC38	2016	Derdepoort	> 1 000 000	\N
district	DC16	2016	Dewetsdorp Naledi	< 1 500	\N
district	DC16	2016	Dewetsdorp Naledi	1 501 - 3 000	\N
district	DC16	2016	Dewetsdorp Naledi	3 001 - 5 000	3306
district	DC16	2016	Dewetsdorp Naledi	5 001 - 10 000	149
district	DC16	2016	Dewetsdorp Naledi	10 001 - 20 000	\N
district	DC16	2016	Dewetsdorp Naledi	20 001 - 30 000	\N
district	DC16	2016	Dewetsdorp Naledi	30 001 - 40 000	\N
district	DC16	2016	Dewetsdorp Naledi	40 001 - 50 000	\N
district	DC16	2016	Dewetsdorp Naledi	50 001 - 100 000	\N
district	DC16	2016	Dewetsdorp Naledi	100 001 - 150 000	\N
district	DC16	2016	Dewetsdorp Naledi	150 001 - 200 000	\N
district	DC16	2016	Dewetsdorp Naledi	200 001 - 300 000	\N
district	DC16	2016	Dewetsdorp Naledi	300 001 - 500 000	\N
district	DC16	2016	Dewetsdorp Naledi	500 001 - 800 000	\N
district	DC16	2016	Dewetsdorp Naledi	800 001 - 1 000 000	\N
district	DC16	2016	Dewetsdorp Naledi	> 1 000 000	\N
district	DC7	2016	Douglas Siyancuma	< 1 500	\N
district	DC7	2016	Douglas Siyancuma	1 501 - 3 000	\N
district	DC7	2016	Douglas Siyancuma	3 001 - 5 000	707
district	DC7	2016	Douglas Siyancuma	5 001 - 10 000	\N
district	DC7	2016	Douglas Siyancuma	10 001 - 20 000	\N
district	DC7	2016	Douglas Siyancuma	20 001 - 30 000	\N
district	DC7	2016	Douglas Siyancuma	30 001 - 40 000	\N
district	DC7	2016	Douglas Siyancuma	40 001 - 50 000	\N
district	DC7	2016	Douglas Siyancuma	50 001 - 100 000	\N
district	DC7	2016	Douglas Siyancuma	100 001 - 150 000	57
district	DC7	2016	Douglas Siyancuma	150 001 - 200 000	139
district	DC7	2016	Douglas Siyancuma	200 001 - 300 000	39
district	DC7	2016	Douglas Siyancuma	300 001 - 500 000	\N
district	DC7	2016	Douglas Siyancuma	500 001 - 800 000	\N
district	DC7	2016	Douglas Siyancuma	800 001 - 1 000 000	\N
district	DC7	2016	Douglas Siyancuma	> 1 000 000	\N
district	DC16	2016	Edenburg Kopanong	< 1 500	\N
district	DC16	2016	Edenburg Kopanong	1 501 - 3 000	1937
district	DC16	2016	Edenburg Kopanong	3 001 - 5 000	453
district	DC16	2016	Edenburg Kopanong	5 001 - 10 000	855
district	DC16	2016	Edenburg Kopanong	10 001 - 20 000	\N
district	DC16	2016	Edenburg Kopanong	20 001 - 30 000	\N
district	DC16	2016	Edenburg Kopanong	30 001 - 40 000	\N
district	DC16	2016	Edenburg Kopanong	40 001 - 50 000	\N
district	DC16	2016	Edenburg Kopanong	50 001 - 100 000	\N
district	DC16	2016	Edenburg Kopanong	100 001 - 150 000	\N
district	DC16	2016	Edenburg Kopanong	150 001 - 200 000	\N
district	DC16	2016	Edenburg Kopanong	200 001 - 300 000	\N
district	DC16	2016	Edenburg Kopanong	300 001 - 500 000	\N
district	DC16	2016	Edenburg Kopanong	500 001 - 800 000	\N
district	DC16	2016	Edenburg Kopanong	800 001 - 1 000 000	\N
district	DC16	2016	Edenburg Kopanong	> 1 000 000	\N
district	DC14	2016	Elliot Sakhiszwe	< 1 500	\N
district	DC14	2016	Elliot Sakhiszwe	1 501 - 3 000	136
district	DC14	2016	Elliot Sakhiszwe	3 001 - 5 000	1422
district	DC14	2016	Elliot Sakhiszwe	5 001 - 10 000	1167
district	DC14	2016	Elliot Sakhiszwe	10 001 - 20 000	\N
district	DC14	2016	Elliot Sakhiszwe	20 001 - 30 000	531
district	DC14	2016	Elliot Sakhiszwe	30 001 - 40 000	\N
district	DC14	2016	Elliot Sakhiszwe	40 001 - 50 000	37
district	DC14	2016	Elliot Sakhiszwe	50 001 - 100 000	12
district	DC14	2016	Elliot Sakhiszwe	100 001 - 150 000	\N
district	DC14	2016	Elliot Sakhiszwe	150 001 - 200 000	\N
district	DC14	2016	Elliot Sakhiszwe	200 001 - 300 000	\N
district	DC14	2016	Elliot Sakhiszwe	300 001 - 500 000	\N
district	DC14	2016	Elliot Sakhiszwe	500 001 - 800 000	\N
district	DC14	2016	Elliot Sakhiszwe	800 001 - 1 000 000	\N
district	DC14	2016	Elliot Sakhiszwe	> 1 000 000	\N
district	DC36	2016	Ellisras Lephalale	< 1 500	\N
district	DC36	2016	Ellisras Lephalale	1 501 - 3 000	1087
district	DC36	2016	Ellisras Lephalale	3 001 - 5 000	1185
district	DC36	2016	Ellisras Lephalale	5 001 - 10 000	8789
district	DC36	2016	Ellisras Lephalale	10 001 - 20 000	5859
district	DC36	2016	Ellisras Lephalale	20 001 - 30 000	\N
district	DC36	2016	Ellisras Lephalale	30 001 - 40 000	338
district	DC36	2016	Ellisras Lephalale	40 001 - 50 000	23
district	DC36	2016	Ellisras Lephalale	50 001 - 100 000	67
district	DC36	2016	Ellisras Lephalale	100 001 - 150 000	\N
district	DC36	2016	Ellisras Lephalale	150 001 - 200 000	\N
district	DC36	2016	Ellisras Lephalale	200 001 - 300 000	\N
district	DC36	2016	Ellisras Lephalale	300 001 - 500 000	22
district	DC36	2016	Ellisras Lephalale	500 001 - 800 000	\N
district	DC36	2016	Ellisras Lephalale	800 001 - 1 000 000	\N
district	DC36	2016	Ellisras Lephalale	> 1 000 000	\N
municipality	DC40	2016	Ewbank	< 1 500	\N
municipality	DC40	2016	Ewbank	1 501 - 3 000	\N
municipality	DC40	2016	Ewbank	3 001 - 5 000	2730
municipality	DC40	2016	Ewbank	5 001 - 10 000	\N
municipality	DC40	2016	Ewbank	10 001 - 20 000	\N
municipality	DC40	2016	Ewbank	20 001 - 30 000	\N
municipality	DC40	2016	Ewbank	30 001 - 40 000	\N
municipality	DC40	2016	Ewbank	40 001 - 50 000	\N
municipality	DC40	2016	Ewbank	50 001 - 100 000	\N
municipality	DC40	2016	Ewbank	100 001 - 150 000	\N
municipality	DC40	2016	Ewbank	150 001 - 200 000	\N
municipality	DC40	2016	Ewbank	200 001 - 300 000	\N
municipality	DC40	2016	Ewbank	300 001 - 500 000	\N
municipality	DC40	2016	Ewbank	500 001 - 800 000	\N
municipality	DC40	2016	Ewbank	800 001 - 1 000 000	\N
municipality	DC40	2016	Ewbank	> 1 000 000	\N
district	DC16	2016	Fauresmith Kopanong	< 1 500	\N
district	DC16	2016	Fauresmith Kopanong	1 501 - 3 000	776
district	DC16	2016	Fauresmith Kopanong	3 001 - 5 000	6247
district	DC16	2016	Fauresmith Kopanong	5 001 - 10 000	4618
district	DC16	2016	Fauresmith Kopanong	10 001 - 20 000	343
district	DC16	2016	Fauresmith Kopanong	20 001 - 30 000	\N
district	DC16	2016	Fauresmith Kopanong	30 001 - 40 000	\N
district	DC16	2016	Fauresmith Kopanong	40 001 - 50 000	\N
district	DC16	2016	Fauresmith Kopanong	50 001 - 100 000	117
district	DC16	2016	Fauresmith Kopanong	100 001 - 150 000	\N
district	DC16	2016	Fauresmith Kopanong	150 001 - 200 000	\N
district	DC16	2016	Fauresmith Kopanong	200 001 - 300 000	\N
district	DC16	2016	Fauresmith Kopanong	300 001 - 500 000	\N
district	DC16	2016	Fauresmith Kopanong	500 001 - 800 000	\N
district	DC16	2016	Fauresmith Kopanong	800 001 - 1 000 000	\N
district	DC16	2016	Fauresmith Kopanong	> 1 000 000	\N
district	DC19	2016	Ficksburg Setso	< 1 500	\N
district	DC19	2016	Ficksburg Setso	1 501 - 3 000	\N
district	DC19	2016	Ficksburg Setso	3 001 - 5 000	\N
district	DC19	2016	Ficksburg Setso	5 001 - 10 000	2356
district	DC19	2016	Ficksburg Setso	10 001 - 20 000	1405
district	DC19	2016	Ficksburg Setso	20 001 - 30 000	\N
district	DC19	2016	Ficksburg Setso	30 001 - 40 000	\N
district	DC19	2016	Ficksburg Setso	40 001 - 50 000	80
district	DC19	2016	Ficksburg Setso	50 001 - 100 000	\N
district	DC19	2016	Ficksburg Setso	100 001 - 150 000	\N
district	DC19	2016	Ficksburg Setso	150 001 - 200 000	\N
district	DC19	2016	Ficksburg Setso	200 001 - 300 000	\N
district	DC19	2016	Ficksburg Setso	300 001 - 500 000	\N
district	DC19	2016	Ficksburg Setso	500 001 - 800 000	\N
district	DC19	2016	Ficksburg Setso	800 001 - 1 000 000	\N
district	DC19	2016	Ficksburg Setso	> 1 000 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	< 1 500	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	1 501 - 3 000	702
district	DC12	2016	Fort Beaufort Raymond Mhlaba	3 001 - 5 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	5 001 - 10 000	723
district	DC12	2016	Fort Beaufort Raymond Mhlaba	10 001 - 20 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	20 001 - 30 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	30 001 - 40 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	40 001 - 50 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	50 001 - 100 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	100 001 - 150 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	150 001 - 200 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	200 001 - 300 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	300 001 - 500 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	500 001 - 800 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	800 001 - 1 000 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	> 1 000 000	\N
district	DC19	2016	Fouriesburg Dikabeng	< 1 500	\N
district	DC19	2016	Fouriesburg Dikabeng	1 501 - 3 000	\N
district	DC19	2016	Fouriesburg Dikabeng	3 001 - 5 000	\N
district	DC19	2016	Fouriesburg Dikabeng	5 001 - 10 000	405
district	DC19	2016	Fouriesburg Dikabeng	10 001 - 20 000	643
district	DC19	2016	Fouriesburg Dikabeng	20 001 - 30 000	550
district	DC19	2016	Fouriesburg Dikabeng	30 001 - 40 000	\N
district	DC19	2016	Fouriesburg Dikabeng	40 001 - 50 000	\N
district	DC19	2016	Fouriesburg Dikabeng	50 001 - 100 000	\N
district	DC19	2016	Fouriesburg Dikabeng	100 001 - 150 000	\N
district	DC19	2016	Fouriesburg Dikabeng	150 001 - 200 000	\N
district	DC19	2016	Fouriesburg Dikabeng	200 001 - 300 000	88
district	DC19	2016	Fouriesburg Dikabeng	300 001 - 500 000	\N
district	DC19	2016	Fouriesburg Dikabeng	500 001 - 800 000	\N
district	DC19	2016	Fouriesburg Dikabeng	800 001 - 1 000 000	\N
district	DC19	2016	Fouriesburg Dikabeng	> 1 000 000	\N
district	DC20	2016	Frankfort Mafube	< 1 500	\N
district	DC20	2016	Frankfort Mafube	1 501 - 3 000	\N
district	DC20	2016	Frankfort Mafube	3 001 - 5 000	\N
district	DC20	2016	Frankfort Mafube	5 001 - 10 000	519
district	DC20	2016	Frankfort Mafube	10 001 - 20 000	5380
district	DC20	2016	Frankfort Mafube	20 001 - 30 000	1612
district	DC20	2016	Frankfort Mafube	30 001 - 40 000	517
district	DC20	2016	Frankfort Mafube	40 001 - 50 000	\N
district	DC20	2016	Frankfort Mafube	50 001 - 100 000	\N
district	DC20	2016	Frankfort Mafube	100 001 - 150 000	\N
district	DC20	2016	Frankfort Mafube	150 001 - 200 000	\N
district	DC20	2016	Frankfort Mafube	200 001 - 300 000	\N
district	DC20	2016	Frankfort Mafube	300 001 - 500 000	\N
district	DC20	2016	Frankfort Mafube	500 001 - 800 000	\N
district	DC20	2016	Frankfort Mafube	800 001 - 1 000 000	\N
district	DC20	2016	Frankfort Mafube	> 1 000 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	< 1 500	19598
district	DC6	2016	Fraserburg Karoo Hoogland	1 501 - 3 000	6461
district	DC6	2016	Fraserburg Karoo Hoogland	3 001 - 5 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	5 001 - 10 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	10 001 - 20 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	20 001 - 30 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	30 001 - 40 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	40 001 - 50 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	50 001 - 100 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	100 001 - 150 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	150 001 - 200 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	200 001 - 300 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	300 001 - 500 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	500 001 - 800 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	800 001 - 1 000 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	> 1 000 000	\N
district	DC4	2016	George	< 1 500	694
district	DC4	2016	George	1 501 - 3 000	\N
district	DC4	2016	George	3 001 - 5 000	61
district	DC4	2016	George	5 001 - 10 000	295
district	DC4	2016	George	10 001 - 20 000	520
district	DC4	2016	George	20 001 - 30 000	216
district	DC4	2016	George	30 001 - 40 000	99
district	DC4	2016	George	40 001 - 50 000	454
district	DC4	2016	George	50 001 - 100 000	567
district	DC4	2016	George	100 001 - 150 000	158
district	DC4	2016	George	150 001 - 200 000	142
district	DC4	2016	George	200 001 - 300 000	24
district	DC4	2016	George	300 001 - 500 000	35
district	DC4	2016	George	500 001 - 800 000	\N
district	DC4	2016	George	800 001 - 1 000 000	\N
district	DC4	2016	George	> 1 000 000	\N
district	DC6	2016	Gordonia	< 1 500	33314
district	DC6	2016	Gordonia	1 501 - 3 000	64579
district	DC6	2016	Gordonia	3 001 - 5 000	13469
district	DC6	2016	Gordonia	5 001 - 10 000	359
district	DC6	2016	Gordonia	10 001 - 20 000	23
district	DC6	2016	Gordonia	20 001 - 30 000	\N
district	DC6	2016	Gordonia	30 001 - 40 000	\N
district	DC6	2016	Gordonia	40 001 - 50 000	\N
district	DC6	2016	Gordonia	50 001 - 100 000	14
district	DC6	2016	Gordonia	100 001 - 150 000	22
district	DC6	2016	Gordonia	150 001 - 200 000	16
district	DC6	2016	Gordonia	200 001 - 300 000	\N
district	DC6	2016	Gordonia	300 001 - 500 000	\N
district	DC6	2016	Gordonia	500 001 - 800 000	\N
district	DC6	2016	Gordonia	800 001 - 1 000 000	\N
district	DC6	2016	Gordonia	> 1 000 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	< 1 500	1937
district	DC10	2016	Graaff-Reinet Camdeboo	1 501 - 3 000	1937
district	DC10	2016	Graaff-Reinet Camdeboo	3 001 - 5 000	5804
district	DC10	2016	Graaff-Reinet Camdeboo	5 001 - 10 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	10 001 - 20 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	20 001 - 30 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	30 001 - 40 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	40 001 - 50 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	50 001 - 100 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	100 001 - 150 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	150 001 - 200 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	200 001 - 300 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	300 001 - 500 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	500 001 - 800 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	800 001 - 1 000 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	> 1 000 000	\N
district	DC7	2016	Hanover Emthanjeni	< 1 500	\N
district	DC7	2016	Hanover Emthanjeni	1 501 - 3 000	5401
district	DC7	2016	Hanover Emthanjeni	3 001 - 5 000	857
district	DC7	2016	Hanover Emthanjeni	5 001 - 10 000	2218
district	DC7	2016	Hanover Emthanjeni	10 001 - 20 000	\N
district	DC7	2016	Hanover Emthanjeni	20 001 - 30 000	\N
district	DC7	2016	Hanover Emthanjeni	30 001 - 40 000	\N
district	DC7	2016	Hanover Emthanjeni	40 001 - 50 000	\N
district	DC7	2016	Hanover Emthanjeni	50 001 - 100 000	\N
district	DC7	2016	Hanover Emthanjeni	100 001 - 150 000	\N
district	DC7	2016	Hanover Emthanjeni	150 001 - 200 000	\N
district	DC7	2016	Hanover Emthanjeni	200 001 - 300 000	\N
district	DC4	2016	Knysna	< 1 500	\N
district	DC7	2016	Hanover Emthanjeni	300 001 - 500 000	\N
district	DC7	2016	Hanover Emthanjeni	500 001 - 800 000	\N
district	DC7	2016	Hanover Emthanjeni	800 001 - 1 000 000	\N
district	DC7	2016	Hanover Emthanjeni	> 1 000 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	< 1 500	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	1 501 - 3 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	3 001 - 5 000	428
district	DC19	2016	Harrismith Maluti-A-Phofung	5 001 - 10 000	4895
district	DC19	2016	Harrismith Maluti-A-Phofung	10 001 - 20 000	5877
district	DC19	2016	Harrismith Maluti-A-Phofung	20 001 - 30 000	534
district	DC19	2016	Harrismith Maluti-A-Phofung	30 001 - 40 000	2277
district	DC19	2016	Harrismith Maluti-A-Phofung	40 001 - 50 000	19
district	DC19	2016	Harrismith Maluti-A-Phofung	50 001 - 100 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	100 001 - 150 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	150 001 - 200 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	200 001 - 300 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	300 001 - 500 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	500 001 - 800 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	800 001 - 1 000 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	> 1 000 000	\N
district	DC20	2016	Heilbron Ngwathe	< 1 500	\N
district	DC20	2016	Heilbron Ngwathe	1 501 - 3 000	349
district	DC20	2016	Heilbron Ngwathe	3 001 - 5 000	\N
district	DC20	2016	Heilbron Ngwathe	5 001 - 10 000	2052
district	DC20	2016	Heilbron Ngwathe	10 001 - 20 000	4093
district	DC20	2016	Heilbron Ngwathe	20 001 - 30 000	2043
district	DC20	2016	Heilbron Ngwathe	30 001 - 40 000	85
district	DC20	2016	Heilbron Ngwathe	40 001 - 50 000	\N
district	DC20	2016	Heilbron Ngwathe	50 001 - 100 000	25
district	DC20	2016	Heilbron Ngwathe	100 001 - 150 000	\N
district	DC20	2016	Heilbron Ngwathe	150 001 - 200 000	\N
district	DC20	2016	Heilbron Ngwathe	200 001 - 300 000	\N
district	DC20	2016	Heilbron Ngwathe	300 001 - 500 000	\N
district	DC20	2016	Heilbron Ngwathe	500 001 - 800 000	\N
district	DC20	2016	Heilbron Ngwathe	800 001 - 1 000 000	\N
district	DC20	2016	Heilbron Ngwathe	> 1 000 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	< 1 500	\N
district	DC24	2016	Helpmekaar uMzinyathi	1 501 - 3 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	3 001 - 5 000	116
district	DC24	2016	Helpmekaar uMzinyathi	5 001 - 10 000	2112
district	DC24	2016	Helpmekaar uMzinyathi	10 001 - 20 000	824
district	DC24	2016	Helpmekaar uMzinyathi	20 001 - 30 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	30 001 - 40 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	40 001 - 50 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	50 001 - 100 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	100 001 - 150 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	150 001 - 200 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	200 001 - 300 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	300 001 - 500 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	500 001 - 800 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	800 001 - 1 000 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	> 1 000 000	\N
district	DC18	2016	Hoopstad Tswelopele	< 1 500	\N
district	DC18	2016	Hoopstad Tswelopele	1 501 - 3 000	\N
district	DC18	2016	Hoopstad Tswelopele	3 001 - 5 000	\N
district	DC18	2016	Hoopstad Tswelopele	5 001 - 10 000	\N
district	DC18	2016	Hoopstad Tswelopele	10 001 - 20 000	726
district	DC18	2016	Hoopstad Tswelopele	20 001 - 30 000	733
district	DC18	2016	Hoopstad Tswelopele	30 001 - 40 000	\N
district	DC18	2016	Hoopstad Tswelopele	40 001 - 50 000	\N
district	DC18	2016	Hoopstad Tswelopele	50 001 - 100 000	\N
district	DC18	2016	Hoopstad Tswelopele	100 001 - 150 000	\N
district	DC18	2016	Hoopstad Tswelopele	150 001 - 200 000	\N
district	DC18	2016	Hoopstad Tswelopele	200 001 - 300 000	\N
district	DC18	2016	Hoopstad Tswelopele	300 001 - 500 000	\N
district	DC18	2016	Hoopstad Tswelopele	500 001 - 800 000	\N
district	DC18	2016	Hoopstad Tswelopele	800 001 - 1 000 000	\N
district	DC18	2016	Hoopstad Tswelopele	> 1 000 000	\N
district	DC7	2016	Hopetown Thembelihle	< 1 500	\N
district	DC7	2016	Hopetown Thembelihle	1 501 - 3 000	9105
district	DC7	2016	Hopetown Thembelihle	3 001 - 5 000	\N
district	DC7	2016	Hopetown Thembelihle	5 001 - 10 000	491
district	DC7	2016	Hopetown Thembelihle	10 001 - 20 000	\N
district	DC7	2016	Hopetown Thembelihle	20 001 - 30 000	491
district	DC7	2016	Hopetown Thembelihle	30 001 - 40 000	\N
district	DC7	2016	Hopetown Thembelihle	40 001 - 50 000	\N
district	DC7	2016	Hopetown Thembelihle	50 001 - 100 000	\N
district	DC7	2016	Hopetown Thembelihle	100 001 - 150 000	423
district	DC7	2016	Hopetown Thembelihle	150 001 - 200 000	892
district	DC7	2016	Hopetown Thembelihle	200 001 - 300 000	278
district	DC7	2016	Hopetown Thembelihle	300 001 - 500 000	\N
district	DC7	2016	Hopetown Thembelihle	500 001 - 800 000	\N
district	DC7	2016	Hopetown Thembelihle	800 001 - 1 000 000	\N
district	DC7	2016	Hopetown Thembelihle	> 1 000 000	\N
district	DC10	2016	Humansdorp Kouga	< 1 500	2184
district	DC10	2016	Humansdorp Kouga	1 501 - 3 000	1287
district	DC10	2016	Humansdorp Kouga	3 001 - 5 000	\N
district	DC10	2016	Humansdorp Kouga	5 001 - 10 000	152
district	DC10	2016	Humansdorp Kouga	10 001 - 20 000	2254
district	DC10	2016	Humansdorp Kouga	20 001 - 30 000	124
district	DC10	2016	Humansdorp Kouga	30 001 - 40 000	592
district	DC10	2016	Humansdorp Kouga	40 001 - 50 000	190
district	DC10	2016	Humansdorp Kouga	50 001 - 100 000	828
district	DC10	2016	Humansdorp Kouga	100 001 - 150 000	21
district	DC10	2016	Humansdorp Kouga	150 001 - 200 000	\N
district	DC10	2016	Humansdorp Kouga	200 001 - 300 000	21
district	DC10	2016	Humansdorp Kouga	300 001 - 500 000	40
district	DC10	2016	Humansdorp Kouga	500 001 - 800 000	47
district	DC10	2016	Humansdorp Kouga	800 001 - 1 000 000	\N
district	DC10	2016	Humansdorp Kouga	> 1 000 000	12
district	DC16	2016	Jacobsdal Letsemeng	< 1 500	\N
district	DC16	2016	Jacobsdal Letsemeng	1 501 - 3 000	705
district	DC16	2016	Jacobsdal Letsemeng	3 001 - 5 000	3382
district	DC16	2016	Jacobsdal Letsemeng	5 001 - 10 000	2501
district	DC16	2016	Jacobsdal Letsemeng	10 001 - 20 000	467
district	DC16	2016	Jacobsdal Letsemeng	20 001 - 30 000	\N
district	DC16	2016	Jacobsdal Letsemeng	30 001 - 40 000	\N
district	DC16	2016	Jacobsdal Letsemeng	40 001 - 50 000	\N
district	DC16	2016	Jacobsdal Letsemeng	50 001 - 100 000	\N
district	DC16	2016	Jacobsdal Letsemeng	100 001 - 150 000	\N
district	DC16	2016	Jacobsdal Letsemeng	150 001 - 200 000	\N
district	DC16	2016	Jacobsdal Letsemeng	200 001 - 300 000	\N
district	DC16	2016	Jacobsdal Letsemeng	300 001 - 500 000	\N
district	DC16	2016	Jacobsdal Letsemeng	500 001 - 800 000	\N
district	DC16	2016	Jacobsdal Letsemeng	800 001 - 1 000 000	\N
district	DC16	2016	Jacobsdal Letsemeng	> 1 000 000	\N
district	DC10	2016	Jansenville Ikwezi	< 1 500	\N
district	DC10	2016	Jansenville Ikwezi	1 501 - 3 000	3927
district	DC10	2016	Jansenville Ikwezi	3 001 - 5 000	2288
district	DC10	2016	Jansenville Ikwezi	5 001 - 10 000	\N
district	DC10	2016	Jansenville Ikwezi	10 001 - 20 000	\N
district	DC10	2016	Jansenville Ikwezi	20 001 - 30 000	\N
district	DC10	2016	Jansenville Ikwezi	30 001 - 40 000	\N
district	DC10	2016	Jansenville Ikwezi	40 001 - 50 000	\N
district	DC10	2016	Jansenville Ikwezi	50 001 - 100 000	\N
district	DC10	2016	Jansenville Ikwezi	100 001 - 150 000	\N
district	DC10	2016	Jansenville Ikwezi	150 001 - 200 000	\N
district	DC10	2016	Jansenville Ikwezi	200 001 - 300 000	\N
district	DC10	2016	Jansenville Ikwezi	300 001 - 500 000	\N
district	DC10	2016	Jansenville Ikwezi	500 001 - 800 000	\N
district	DC10	2016	Jansenville Ikwezi	800 001 - 1 000 000	\N
district	DC10	2016	Jansenville Ikwezi	> 1 000 000	\N
district	DC10	2016	Joubertina Kou-Kamma	< 1 500	499
district	DC10	2016	Joubertina Kou-Kamma	1 501 - 3 000	296
district	DC10	2016	Joubertina Kou-Kamma	3 001 - 5 000	\N
district	DC10	2016	Joubertina Kou-Kamma	5 001 - 10 000	89
district	DC10	2016	Joubertina Kou-Kamma	10 001 - 20 000	150
district	DC10	2016	Joubertina Kou-Kamma	20 001 - 30 000	\N
district	DC10	2016	Joubertina Kou-Kamma	30 001 - 40 000	36
district	DC10	2016	Joubertina Kou-Kamma	40 001 - 50 000	32
district	DC10	2016	Joubertina Kou-Kamma	50 001 - 100 000	12
district	DC10	2016	Joubertina Kou-Kamma	100 001 - 150 000	\N
district	DC10	2016	Joubertina Kou-Kamma	150 001 - 200 000	\N
district	DC10	2016	Joubertina Kou-Kamma	200 001 - 300 000	\N
district	DC10	2016	Joubertina Kou-Kamma	300 001 - 500 000	95
district	DC10	2016	Joubertina Kou-Kamma	500 001 - 800 000	\N
district	DC10	2016	Joubertina Kou-Kamma	800 001 - 1 000 000	\N
district	DC10	2016	Joubertina Kou-Kamma	> 1 000 000	\N
district	DC27	2016	Jozini Mkuze	< 1 500	\N
district	DC27	2016	Jozini Mkuze	1 501 - 3 000	\N
district	DC27	2016	Jozini Mkuze	3 001 - 5 000	\N
district	DC27	2016	Jozini Mkuze	5 001 - 10 000	\N
district	DC27	2016	Jozini Mkuze	10 001 - 20 000	21
district	DC27	2016	Jozini Mkuze	20 001 - 30 000	\N
district	DC27	2016	Jozini Mkuze	30 001 - 40 000	14
district	DC27	2016	Jozini Mkuze	40 001 - 50 000	451
district	DC27	2016	Jozini Mkuze	50 001 - 100 000	20
district	DC27	2016	Jozini Mkuze	100 001 - 150 000	\N
district	DC27	2016	Jozini Mkuze	150 001 - 200 000	\N
district	DC27	2016	Jozini Mkuze	200 001 - 300 000	\N
district	DC27	2016	Jozini Mkuze	300 001 - 500 000	\N
district	DC27	2016	Jozini Mkuze	500 001 - 800 000	\N
district	DC27	2016	Jozini Mkuze	800 001 - 1 000 000	\N
district	DC27	2016	Jozini Mkuze	> 1 000 000	\N
district	DC8	2016	Kenhardt Kai !Garib	< 1 500	97346
district	DC8	2016	Kenhardt Kai !Garib	1 501 - 3 000	8154
district	DC8	2016	Kenhardt Kai !Garib	3 001 - 5 000	\N
district	DC8	2016	Kenhardt Kai !Garib	5 001 - 10 000	852
district	DC8	2016	Kenhardt Kai !Garib	10 001 - 20 000	44
district	DC8	2016	Kenhardt Kai !Garib	20 001 - 30 000	10
district	DC8	2016	Kenhardt Kai !Garib	30 001 - 40 000	\N
district	DC8	2016	Kenhardt Kai !Garib	40 001 - 50 000	\N
district	DC8	2016	Kenhardt Kai !Garib	50 001 - 100 000	12
district	DC8	2016	Kenhardt Kai !Garib	100 001 - 150 000	27
district	DC8	2016	Kenhardt Kai !Garib	150 001 - 200 000	\N
district	DC8	2016	Kenhardt Kai !Garib	200 001 - 300 000	45
district	DC8	2016	Kenhardt Kai !Garib	300 001 - 500 000	12
district	DC8	2016	Kenhardt Kai !Garib	500 001 - 800 000	\N
district	DC8	2016	Kenhardt Kai !Garib	800 001 - 1 000 000	\N
district	DC8	2016	Kenhardt Kai !Garib	> 1 000 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	< 1 500	4323
district	DC9	2016	Kimberley / HAY Frances Baard	1 501 - 3 000	25692
district	DC9	2016	Kimberley / HAY Frances Baard	3 001 - 5 000	30246
district	DC9	2016	Kimberley / HAY Frances Baard	5 001 - 10 000	2886
district	DC9	2016	Kimberley / HAY Frances Baard	10 001 - 20 000	917
district	DC4	2016	Knysna	1 501 - 3 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	20 001 - 30 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	30 001 - 40 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	40 001 - 50 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	50 001 - 100 000	477
district	DC9	2016	Kimberley / HAY Frances Baard	100 001 - 150 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	150 001 - 200 000	29
district	DC9	2016	Kimberley / HAY Frances Baard	200 001 - 300 000	86
district	DC9	2016	Kimberley / HAY Frances Baard	300 001 - 500 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	500 001 - 800 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	800 001 - 1 000 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	> 1 000 000	46
municipality	BUF	2016	King Williams Town Baffalo City	< 1 500	508
municipality	BUF	2016	King Williams Town Baffalo City	1 501 - 3 000	2560
municipality	BUF	2016	King Williams Town Baffalo City	3 001 - 5 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	5 001 - 10 000	2547
municipality	BUF	2016	King Williams Town Baffalo City	10 001 - 20 000	400
municipality	BUF	2016	King Williams Town Baffalo City	20 001 - 30 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	30 001 - 40 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	40 001 - 50 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	50 001 - 100 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	100 001 - 150 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	150 001 - 200 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	200 001 - 300 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	300 001 - 500 000	183
municipality	BUF	2016	King Williams Town Baffalo City	500 001 - 800 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	800 001 - 1 000 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	> 1 000 000	\N
district	DC4	2016	Knysna	< 1 500	\N
district	DC4	2016	Knysna	1 501 - 3 000	\N
district	DC4	2016	Knysna	3 001 - 5 000	\N
district	DC4	2016	Knysna	5 001 - 10 000	276
district	DC4	2016	Knysna	10 001 - 20 000	2106
district	DC4	2016	Knysna	20 001 - 30 000	\N
district	DC4	2016	Knysna	30 001 - 40 000	\N
district	DC4	2016	Knysna	40 001 - 50 000	223
district	DC4	2016	Knysna	50 001 - 100 000	678
district	DC4	2016	Knysna	100 001 - 150 000	144
district	DC4	2016	Knysna	150 001 - 200 000	55
district	DC4	2016	Knysna	200 001 - 300 000	25
district	DC4	2016	Knysna	300 001 - 500 000	21
district	DC4	2016	Knysna	500 001 - 800 000	11
district	DC4	2016	Knysna	800 001 - 1 000 000	\N
district	DC4	2016	Knysna	> 1 000 000	\N
district	DC43	2016	Kokstad	< 1 500	\N
district	DC43	2016	Kokstad	1 501 - 3 000	\N
district	DC43	2016	Kokstad	3 001 - 5 000	646
district	DC43	2016	Kokstad	5 001 - 10 000	490
district	DC43	2016	Kokstad	10 001 - 20 000	7026
district	DC43	2016	Kokstad	20 001 - 30 000	1545
district	DC43	2016	Kokstad	30 001 - 40 000	76
district	DC43	2016	Kokstad	40 001 - 50 000	\N
district	DC43	2016	Kokstad	50 001 - 100 000	227
district	DC43	2016	Kokstad	100 001 - 150 000	18
district	DC43	2016	Kokstad	150 001 - 200 000	\N
district	DC43	2016	Kokstad	200 001 - 300 000	10
district	DC43	2016	Kokstad	300 001 - 500 000	\N
district	DC43	2016	Kokstad	500 001 - 800 000	\N
district	DC43	2016	Kokstad	800 001 - 1 000 000	\N
district	DC43	2016	Kokstad	> 1 000 000	\N
district	DC32	2016	Komatipoort Nkomazi	< 1 500	\N
district	DC32	2016	Komatipoort Nkomazi	1 501 - 3 000	291
district	DC32	2016	Komatipoort Nkomazi	3 001 - 5 000	\N
district	DC32	2016	Komatipoort Nkomazi	5 001 - 10 000	975
district	DC32	2016	Komatipoort Nkomazi	10 001 - 20 000	1048
district	DC32	2016	Komatipoort Nkomazi	20 001 - 30 000	184
district	DC32	2016	Komatipoort Nkomazi	30 001 - 40 000	157
district	DC32	2016	Komatipoort Nkomazi	40 001 - 50 000	\N
district	DC32	2016	Komatipoort Nkomazi	50 001 - 100 000	4690
district	DC32	2016	Komatipoort Nkomazi	100 001 - 150 000	473
district	DC32	2016	Komatipoort Nkomazi	150 001 - 200 000	366
district	DC32	2016	Komatipoort Nkomazi	200 001 - 300 000	57
district	DC32	2016	Komatipoort Nkomazi	300 001 - 500 000	103
district	DC32	2016	Komatipoort Nkomazi	500 001 - 800 000	\N
district	DC32	2016	Komatipoort Nkomazi	800 001 - 1 000 000	\N
district	DC32	2016	Komatipoort Nkomazi	> 1 000 000	\N
district	DC12	2016	Komga Great Kei	< 1 500	\N
district	DC12	2016	Komga Great Kei	1 501 - 3 000	243
district	DC12	2016	Komga Great Kei	3 001 - 5 000	\N
district	DC12	2016	Komga Great Kei	5 001 - 10 000	2819
district	DC12	2016	Komga Great Kei	10 001 - 20 000	\N
district	DC12	2016	Komga Great Kei	20 001 - 30 000	87
district	DC12	2016	Komga Great Kei	30 001 - 40 000	419
district	DC12	2016	Komga Great Kei	40 001 - 50 000	\N
district	DC12	2016	Komga Great Kei	50 001 - 100 000	\N
district	DC12	2016	Komga Great Kei	100 001 - 150 000	\N
district	DC12	2016	Komga Great Kei	150 001 - 200 000	\N
district	DC12	2016	Komga Great Kei	200 001 - 300 000	\N
district	DC12	2016	Komga Great Kei	300 001 - 500 000	\N
district	DC12	2016	Komga Great Kei	500 001 - 800 000	\N
district	DC12	2016	Komga Great Kei	800 001 - 1 000 000	\N
district	DC12	2016	Komga Great Kei	> 1 000 000	\N
district	DC20	2016	Koppies Ngwathe	< 1 500	\N
district	DC20	2016	Koppies Ngwathe	1 501 - 3 000	\N
district	DC20	2016	Koppies Ngwathe	3 001 - 5 000	\N
district	DC20	2016	Koppies Ngwathe	5 001 - 10 000	2247
district	DC20	2016	Koppies Ngwathe	10 001 - 20 000	1166
district	DC20	2016	Koppies Ngwathe	20 001 - 30 000	174
district	DC20	2016	Koppies Ngwathe	30 001 - 40 000	\N
district	DC20	2016	Koppies Ngwathe	40 001 - 50 000	\N
district	DC20	2016	Koppies Ngwathe	50 001 - 100 000	\N
district	DC20	2016	Koppies Ngwathe	100 001 - 150 000	\N
district	DC20	2016	Koppies Ngwathe	150 001 - 200 000	\N
district	DC20	2016	Koppies Ngwathe	200 001 - 300 000	\N
district	DC20	2016	Koppies Ngwathe	300 001 - 500 000	\N
district	DC20	2016	Koppies Ngwathe	500 001 - 800 000	\N
district	DC20	2016	Koppies Ngwathe	800 001 - 1 000 000	\N
district	DC20	2016	Koppies Ngwathe	> 1 000 000	\N
district	DC20	2016	Kroonstad Moqhaka	< 1 500	\N
district	DC20	2016	Kroonstad Moqhaka	1 501 - 3 000	\N
district	DC20	2016	Kroonstad Moqhaka	3 001 - 5 000	\N
district	DC20	2016	Kroonstad Moqhaka	5 001 - 10 000	4381
district	DC20	2016	Kroonstad Moqhaka	10 001 - 20 000	3537
district	DC20	2016	Kroonstad Moqhaka	20 001 - 30 000	519
district	DC20	2016	Kroonstad Moqhaka	30 001 - 40 000	\N
district	DC20	2016	Kroonstad Moqhaka	40 001 - 50 000	\N
district	DC20	2016	Kroonstad Moqhaka	50 001 - 100 000	\N
district	DC20	2016	Kroonstad Moqhaka	100 001 - 150 000	\N
district	DC20	2016	Kroonstad Moqhaka	150 001 - 200 000	\N
district	DC20	2016	Kroonstad Moqhaka	200 001 - 300 000	\N
district	DC20	2016	Kroonstad Moqhaka	300 001 - 500 000	\N
district	DC20	2016	Kroonstad Moqhaka	500 001 - 800 000	\N
district	DC20	2016	Kroonstad Moqhaka	800 001 - 1 000 000	\N
district	DC20	2016	Kroonstad Moqhaka	> 1 000 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	< 1 500	2250
district	DC45	2016	Kuruman Ga-Segonyana	1 501 - 3 000	31409
district	DC45	2016	Kuruman Ga-Segonyana	3 001 - 5 000	12386
district	DC45	2016	Kuruman Ga-Segonyana	5 001 - 10 000	8637
district	DC45	2016	Kuruman Ga-Segonyana	10 001 - 20 000	712
district	DC45	2016	Kuruman Ga-Segonyana	20 001 - 30 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	30 001 - 40 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	40 001 - 50 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	50 001 - 100 000	60
district	DC45	2016	Kuruman Ga-Segonyana	100 001 - 150 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	150 001 - 200 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	200 001 - 300 000	300
district	DC45	2016	Kuruman Ga-Segonyana	300 001 - 500 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	500 001 - 800 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	800 001 - 1 000 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	> 1 000 000	\N
district	DC4	2016	Ladismith Kannaland	< 1 500	4236
district	DC4	2016	Ladismith Kannaland	1 501 - 3 000	2703
district	DC4	2016	Ladismith Kannaland	3 001 - 5 000	230
district	DC4	2016	Ladismith Kannaland	5 001 - 10 000	777
district	DC4	2016	Ladismith Kannaland	10 001 - 20 000	236
district	DC4	2016	Ladismith Kannaland	20 001 - 30 000	69
district	DC4	2016	Ladismith Kannaland	30 001 - 40 000	58
district	DC4	2016	Ladismith Kannaland	40 001 - 50 000	\N
district	DC4	2016	Ladismith Kannaland	50 001 - 100 000	32
district	DC4	2016	Ladismith Kannaland	100 001 - 150 000	\N
district	DC4	2016	Ladismith Kannaland	150 001 - 200 000	18
district	DC4	2016	Ladismith Kannaland	200 001 - 300 000	\N
district	DC4	2016	Ladismith Kannaland	300 001 - 500 000	\N
district	DC4	2016	Ladismith Kannaland	500 001 - 800 000	\N
district	DC4	2016	Ladismith Kannaland	800 001 - 1 000 000	\N
district	DC4	2016	Ladismith Kannaland	> 1 000 000	\N
district	DC19	2016	Ladybrand Mantsopa	< 1 500	714
district	DC19	2016	Ladybrand Mantsopa	1 501 - 3 000	\N
district	DC19	2016	Ladybrand Mantsopa	3 001 - 5 000	1430
district	DC19	2016	Ladybrand Mantsopa	5 001 - 10 000	678
district	DC19	2016	Ladybrand Mantsopa	10 001 - 20 000	1775
district	DC19	2016	Ladybrand Mantsopa	20 001 - 30 000	223
district	DC19	2016	Ladybrand Mantsopa	30 001 - 40 000	\N
district	DC19	2016	Ladybrand Mantsopa	40 001 - 50 000	\N
district	DC19	2016	Ladybrand Mantsopa	50 001 - 100 000	\N
district	DC19	2016	Ladybrand Mantsopa	100 001 - 150 000	\N
district	DC19	2016	Ladybrand Mantsopa	150 001 - 200 000	\N
district	DC19	2016	Ladybrand Mantsopa	200 001 - 300 000	\N
district	DC19	2016	Ladybrand Mantsopa	300 001 - 500 000	\N
district	DC19	2016	Ladybrand Mantsopa	500 001 - 800 000	\N
district	DC19	2016	Ladybrand Mantsopa	800 001 - 1 000 000	\N
district	DC19	2016	Ladybrand Mantsopa	> 1 000 000	\N
district	DC23	2016	Ladysmith Emnambithi	< 1 500	\N
district	DC23	2016	Ladysmith Emnambithi	1 501 - 3 000	\N
district	DC23	2016	Ladysmith Emnambithi	3 001 - 5 000	1243
district	DC23	2016	Ladysmith Emnambithi	5 001 - 10 000	7065
district	DC23	2016	Ladysmith Emnambithi	10 001 - 20 000	3075
district	DC23	2016	Ladysmith Emnambithi	20 001 - 30 000	122
district	DC23	2016	Ladysmith Emnambithi	30 001 - 40 000	\N
district	DC23	2016	Ladysmith Emnambithi	40 001 - 50 000	133
district	DC23	2016	Ladysmith Emnambithi	50 001 - 100 000	87
district	DC23	2016	Ladysmith Emnambithi	100 001 - 150 000	\N
district	DC23	2016	Ladysmith Emnambithi	150 001 - 200 000	\N
district	DC23	2016	Ladysmith Emnambithi	200 001 - 300 000	20
district	DC23	2016	Ladysmith Emnambithi	300 001 - 500 000	\N
district	DC23	2016	Ladysmith Emnambithi	500 001 - 800 000	\N
district	DC23	2016	Ladysmith Emnambithi	800 001 - 1 000 000	\N
district	DC23	2016	Ladysmith Emnambithi	> 1 000 000	\N
district	DC5	2016	Laingsburg	< 1 500	1679
district	DC5	2016	Laingsburg	1 501 - 3 000	1858
district	DC5	2016	Laingsburg	3 001 - 5 000	\N
district	DC5	2016	Laingsburg	5 001 - 10 000	\N
district	DC5	2016	Laingsburg	10 001 - 20 000	\N
district	DC5	2016	Laingsburg	20 001 - 30 000	\N
district	DC5	2016	Laingsburg	30 001 - 40 000	\N
district	DC5	2016	Laingsburg	40 001 - 50 000	\N
district	DC5	2016	Laingsburg	50 001 - 100 000	\N
district	DC5	2016	Laingsburg	100 001 - 150 000	\N
district	DC5	2016	Laingsburg	150 001 - 200 000	\N
district	DC5	2016	Laingsburg	200 001 - 300 000	\N
district	DC5	2016	Laingsburg	300 001 - 500 000	\N
district	DC5	2016	Laingsburg	500 001 - 800 000	\N
district	DC5	2016	Laingsburg	800 001 - 1 000 000	\N
district	DC5	2016	Laingsburg	> 1 000 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	< 1 500	253
district	DC30	2016	Leandra Gonovan Mbeki	1 501 - 3 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	3 001 - 5 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	5 001 - 10 000	382
district	DC30	2016	Leandra Gonovan Mbeki	10 001 - 20 000	6908
district	DC30	2016	Leandra Gonovan Mbeki	20 001 - 30 000	1351
district	DC30	2016	Leandra Gonovan Mbeki	30 001 - 40 000	1160
district	DC30	2016	Leandra Gonovan Mbeki	40 001 - 50 000	648
district	DC30	2016	Leandra Gonovan Mbeki	50 001 - 100 000	139
district	DC30	2016	Leandra Gonovan Mbeki	100 001 - 150 000	158
district	DC30	2016	Leandra Gonovan Mbeki	150 001 - 200 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	200 001 - 300 000	20
district	DC30	2016	Leandra Gonovan Mbeki	300 001 - 500 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	500 001 - 800 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	800 001 - 1 000 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	> 1 000 000	\N
district	DC19	2016	Lindley Nketoana	< 1 500	\N
district	DC19	2016	Lindley Nketoana	1 501 - 3 000	\N
district	DC19	2016	Lindley Nketoana	3 001 - 5 000	\N
district	DC19	2016	Lindley Nketoana	5 001 - 10 000	7316
district	DC19	2016	Lindley Nketoana	10 001 - 20 000	4742
district	DC19	2016	Lindley Nketoana	20 001 - 30 000	1004
district	DC19	2016	Lindley Nketoana	30 001 - 40 000	23
district	DC19	2016	Lindley Nketoana	40 001 - 50 000	\N
district	DC19	2016	Lindley Nketoana	50 001 - 100 000	\N
district	DC19	2016	Lindley Nketoana	100 001 - 150 000	\N
district	DC19	2016	Lindley Nketoana	150 001 - 200 000	\N
district	DC19	2016	Lindley Nketoana	200 001 - 300 000	\N
district	DC19	2016	Lindley Nketoana	300 001 - 500 000	\N
district	DC19	2016	Lindley Nketoana	500 001 - 800 000	\N
district	DC19	2016	Lindley Nketoana	800 001 - 1 000 000	\N
district	DC19	2016	Lindley Nketoana	> 1 000 000	\N
district	DC26	2016	Louwsburg Abaqulusi	< 1 500	\N
district	DC26	2016	Louwsburg Abaqulusi	1 501 - 3 000	1836
district	DC26	2016	Louwsburg Abaqulusi	3 001 - 5 000	\N
district	DC26	2016	Louwsburg Abaqulusi	5 001 - 10 000	1885
district	DC26	2016	Louwsburg Abaqulusi	10 001 - 20 000	2642
district	DC26	2016	Louwsburg Abaqulusi	20 001 - 30 000	5900
district	DC26	2016	Louwsburg Abaqulusi	30 001 - 40 000	\N
district	DC26	2016	Louwsburg Abaqulusi	40 001 - 50 000	\N
district	DC26	2016	Louwsburg Abaqulusi	50 001 - 100 000	\N
district	DC26	2016	Louwsburg Abaqulusi	100 001 - 150 000	389
district	DC26	2016	Louwsburg Abaqulusi	150 001 - 200 000	\N
district	DC26	2016	Louwsburg Abaqulusi	200 001 - 300 000	\N
district	DC26	2016	Louwsburg Abaqulusi	300 001 - 500 000	\N
district	DC26	2016	Louwsburg Abaqulusi	500 001 - 800 000	\N
district	DC26	2016	Louwsburg Abaqulusi	800 001 - 1 000 000	\N
district	DC26	2016	Louwsburg Abaqulusi	> 1 000 000	\N
district	DC14	2016	Maclear Elundini	< 1 500	\N
district	DC14	2016	Maclear Elundini	1 501 - 3 000	3622
district	DC14	2016	Maclear Elundini	3 001 - 5 000	755
district	DC14	2016	Maclear Elundini	5 001 - 10 000	767
district	DC14	2016	Maclear Elundini	10 001 - 20 000	1764
district	DC14	2016	Maclear Elundini	20 001 - 30 000	\N
district	DC14	2016	Maclear Elundini	30 001 - 40 000	\N
district	DC14	2016	Maclear Elundini	40 001 - 50 000	\N
district	DC14	2016	Maclear Elundini	50 001 - 100 000	\N
district	DC14	2016	Maclear Elundini	100 001 - 150 000	\N
district	DC14	2016	Maclear Elundini	150 001 - 200 000	\N
district	DC14	2016	Maclear Elundini	200 001 - 300 000	\N
district	DC14	2016	Maclear Elundini	300 001 - 500 000	\N
district	DC14	2016	Maclear Elundini	500 001 - 800 000	\N
district	DC14	2016	Maclear Elundini	800 001 - 1 000 000	\N
district	DC14	2016	Maclear Elundini	> 1 000 000	\N
district	DC38	2016	Mahikeng	< 1 500	1486
district	DC38	2016	Mahikeng	1 501 - 3 000	428
district	DC38	2016	Mahikeng	3 001 - 5 000	2182
district	DC38	2016	Mahikeng	5 001 - 10 000	3443
district	DC38	2016	Mahikeng	10 001 - 20 000	1510
district	DC38	2016	Mahikeng	20 001 - 30 000	\N
district	DC38	2016	Mahikeng	30 001 - 40 000	18
district	DC38	2016	Mahikeng	40 001 - 50 000	11
district	DC38	2016	Mahikeng	50 001 - 100 000	17
district	DC38	2016	Mahikeng	100 001 - 150 000	\N
district	DC38	2016	Mahikeng	150 001 - 200 000	\N
district	DC38	2016	Mahikeng	200 001 - 300 000	\N
district	DC38	2016	Mahikeng	300 001 - 500 000	\N
district	DC38	2016	Mahikeng	500 001 - 800 000	\N
district	DC38	2016	Mahikeng	800 001 - 1 000 000	\N
district	DC38	2016	Mahikeng	> 1 000 000	\N
district	DC1	2016	Malmesbury Swartland	< 1 500	171
district	DC1	2016	Malmesbury Swartland	1 501 - 3 000	3340
district	DC1	2016	Malmesbury Swartland	3 001 - 5 000	\N
district	DC1	2016	Malmesbury Swartland	5 001 - 10 000	1174
district	DC1	2016	Malmesbury Swartland	10 001 - 20 000	3280
district	DC1	2016	Malmesbury Swartland	20 001 - 30 000	1459
district	DC1	2016	Malmesbury Swartland	30 001 - 40 000	1026
district	DC1	2016	Malmesbury Swartland	40 001 - 50 000	1177
district	DC1	2016	Malmesbury Swartland	50 001 - 100 000	1544
district	DC1	2016	Malmesbury Swartland	100 001 - 150 000	235
district	DC1	2016	Malmesbury Swartland	150 001 - 200 000	629
district	DC1	2016	Malmesbury Swartland	200 001 - 300 000	139
district	DC1	2016	Malmesbury Swartland	300 001 - 500 000	10
district	DC1	2016	Malmesbury Swartland	500 001 - 800 000	\N
district	DC1	2016	Malmesbury Swartland	800 001 - 1 000 000	\N
district	DC1	2016	Malmesbury Swartland	> 1 000 000	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	< 1 500	46
district	DC37	2016	Marikana (Rustenburg) Bonjala	1 501 - 3 000	198
district	DC37	2016	Marikana (Rustenburg) Bonjala	3 001 - 5 000	3155
district	DC37	2016	Marikana (Rustenburg) Bonjala	5 001 - 10 000	1861
district	DC37	2016	Marikana (Rustenburg) Bonjala	10 001 - 20 000	3816
district	DC37	2016	Marikana (Rustenburg) Bonjala	20 001 - 30 000	1788
district	DC37	2016	Marikana (Rustenburg) Bonjala	30 001 - 40 000	2030
district	DC37	2016	Marikana (Rustenburg) Bonjala	40 001 - 50 000	1641
district	DC37	2016	Marikana (Rustenburg) Bonjala	50 001 - 100 000	3329
district	DC37	2016	Marikana (Rustenburg) Bonjala	100 001 - 150 000	746
district	DC37	2016	Marikana (Rustenburg) Bonjala	150 001 - 200 000	181
district	DC37	2016	Marikana (Rustenburg) Bonjala	200 001 - 300 000	108
district	DC37	2016	Marikana (Rustenburg) Bonjala	300 001 - 500 000	172
district	DC37	2016	Marikana (Rustenburg) Bonjala	500 001 - 800 000	86
district	DC37	2016	Marikana (Rustenburg) Bonjala	800 001 - 1 000 000	60
district	DC37	2016	Marikana (Rustenburg) Bonjala	> 1 000 000	\N
district	DC36	2016	Marken	< 1 500	\N
district	DC36	2016	Marken	1 501 - 3 000	446
district	DC36	2016	Marken	3 001 - 5 000	1279
district	DC36	2016	Marken	5 001 - 10 000	10801
district	DC36	2016	Marken	10 001 - 20 000	2485
district	DC36	2016	Marken	20 001 - 30 000	2859
district	DC36	2016	Marken	30 001 - 40 000	\N
district	DC36	2016	Marken	40 001 - 50 000	\N
district	DC36	2016	Marken	50 001 - 100 000	93
district	DC36	2016	Marken	100 001 - 150 000	\N
district	DC36	2016	Marken	150 001 - 200 000	\N
district	DC36	2016	Marken	200 001 - 300 000	\N
district	DC36	2016	Marken	300 001 - 500 000	\N
district	DC36	2016	Marken	500 001 - 800 000	\N
district	DC36	2016	Marken	800 001 - 1 000 000	\N
district	DC36	2016	Marken	> 1 000 000	\N
district	DC19	2016	Marquard Setso	< 1 500	\N
district	DC19	2016	Marquard Setso	1 501 - 3 000	\N
district	DC19	2016	Marquard Setso	3 001 - 5 000	\N
district	DC19	2016	Marquard Setso	5 001 - 10 000	3448
district	DC19	2016	Marquard Setso	10 001 - 20 000	1379
district	DC19	2016	Marquard Setso	20 001 - 30 000	\N
district	DC19	2016	Marquard Setso	30 001 - 40 000	\N
district	DC19	2016	Marquard Setso	40 001 - 50 000	\N
district	DC19	2016	Marquard Setso	50 001 - 100 000	\N
district	DC19	2016	Marquard Setso	100 001 - 150 000	\N
district	DC19	2016	Marquard Setso	150 001 - 200 000	\N
district	DC19	2016	Marquard Setso	200 001 - 300 000	\N
district	DC19	2016	Marquard Setso	300 001 - 500 000	\N
district	DC19	2016	Marquard Setso	500 001 - 800 000	\N
district	DC19	2016	Marquard Setso	800 001 - 1 000 000	\N
district	DC19	2016	Marquard Setso	> 1 000 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	< 1 500	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	1 501 - 3 000	8815
district	DC13	2016	Middelburg EC Inxuba Yethemba	3 001 - 5 000	12282
district	DC13	2016	Middelburg EC Inxuba Yethemba	5 001 - 10 000	1487
district	DC13	2016	Middelburg EC Inxuba Yethemba	10 001 - 20 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	20 001 - 30 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	30 001 - 40 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	40 001 - 50 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	50 001 - 100 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	100 001 - 150 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	150 001 - 200 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	200 001 - 300 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	300 001 - 500 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	500 001 - 800 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	800 001 - 1 000 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	> 1 000 000	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	< 1 500	706
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	1 501 - 3 000	614
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	3 001 - 5 000	1808
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	5 001 - 10 000	10042
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	10 001 - 20 000	4768
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	20 001 - 30 000	9937
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	30 001 - 40 000	1308
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	40 001 - 50 000	805
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	50 001 - 100 000	1791
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	100 001 - 150 000	1609
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	150 001 - 200 000	204
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	200 001 - 300 000	443
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	300 001 - 500 000	316
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	500 001 - 800 000	11
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	800 001 - 1 000 000	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	> 1 000 000	\N
district	DC39	2016	Moloporivier Bophirima	< 1 500	\N
district	DC39	2016	Moloporivier Bophirima	1 501 - 3 000	\N
district	DC39	2016	Moloporivier Bophirima	3 001 - 5 000	\N
district	DC39	2016	Moloporivier Bophirima	5 001 - 10 000	7191
district	DC39	2016	Moloporivier Bophirima	10 001 - 20 000	1545
district	DC39	2016	Moloporivier Bophirima	20 001 - 30 000	\N
district	DC39	2016	Moloporivier Bophirima	30 001 - 40 000	\N
district	DC39	2016	Moloporivier Bophirima	40 001 - 50 000	\N
district	DC39	2016	Moloporivier Bophirima	50 001 - 100 000	\N
district	DC39	2016	Moloporivier Bophirima	100 001 - 150 000	\N
district	DC39	2016	Moloporivier Bophirima	150 001 - 200 000	\N
district	DC39	2016	Moloporivier Bophirima	200 001 - 300 000	\N
district	DC39	2016	Moloporivier Bophirima	300 001 - 500 000	\N
district	DC39	2016	Moloporivier Bophirima	500 001 - 800 000	\N
district	DC39	2016	Moloporivier Bophirima	800 001 - 1 000 000	\N
district	DC39	2016	Moloporivier Bophirima	> 1 000 000	\N
district	DC13	2016	Molteno Inkwanca	< 1 500	\N
district	DC13	2016	Molteno Inkwanca	1 501 - 3 000	369
district	DC13	2016	Molteno Inkwanca	3 001 - 5 000	2573
district	DC13	2016	Molteno Inkwanca	5 001 - 10 000	375
district	DC13	2016	Molteno Inkwanca	10 001 - 20 000	\N
district	DC13	2016	Molteno Inkwanca	20 001 - 30 000	\N
district	DC13	2016	Molteno Inkwanca	30 001 - 40 000	\N
district	DC13	2016	Molteno Inkwanca	40 001 - 50 000	\N
district	DC13	2016	Molteno Inkwanca	50 001 - 100 000	\N
district	DC13	2016	Molteno Inkwanca	100 001 - 150 000	\N
district	DC13	2016	Molteno Inkwanca	150 001 - 200 000	\N
district	DC13	2016	Molteno Inkwanca	200 001 - 300 000	\N
district	DC13	2016	Molteno Inkwanca	300 001 - 500 000	\N
district	DC13	2016	Molteno Inkwanca	500 001 - 800 000	\N
district	DC13	2016	Molteno Inkwanca	800 001 - 1 000 000	\N
district	DC13	2016	Molteno Inkwanca	> 1 000 000	\N
district	DC2	2016	Montagu Langeberg	< 1 500	662
district	DC2	2016	Montagu Langeberg	1 501 - 3 000	472
district	DC2	2016	Montagu Langeberg	3 001 - 5 000	651
district	DC2	2016	Montagu Langeberg	5 001 - 10 000	3766
district	DC2	2016	Montagu Langeberg	10 001 - 20 000	1361
district	DC2	2016	Montagu Langeberg	20 001 - 30 000	231
district	DC2	2016	Montagu Langeberg	30 001 - 40 000	40
district	DC2	2016	Montagu Langeberg	40 001 - 50 000	50
district	DC2	2016	Montagu Langeberg	50 001 - 100 000	125
district	DC2	2016	Montagu Langeberg	100 001 - 150 000	\N
district	DC2	2016	Montagu Langeberg	150 001 - 200 000	\N
district	DC2	2016	Montagu Langeberg	200 001 - 300 000	\N
district	DC2	2016	Montagu Langeberg	300 001 - 500 000	\N
district	DC2	2016	Montagu Langeberg	500 001 - 800 000	\N
district	DC2	2016	Montagu Langeberg	800 001 - 1 000 000	\N
district	DC2	2016	Montagu Langeberg	> 1 000 000	\N
district	DC4	2016	Mosselbaai	< 1 500	\N
district	DC4	2016	Mosselbaai	1 501 - 3 000	\N
district	DC4	2016	Mosselbaai	3 001 - 5 000	\N
district	DC4	2016	Mosselbaai	5 001 - 10 000	193
district	DC4	2016	Mosselbaai	10 001 - 20 000	276
district	DC4	2016	Mosselbaai	20 001 - 30 000	714
district	DC4	2016	Mosselbaai	30 001 - 40 000	\N
district	DC4	2016	Mosselbaai	40 001 - 50 000	867
district	DC4	2016	Mosselbaai	50 001 - 100 000	191
district	DC4	2016	Mosselbaai	100 001 - 150 000	112
district	DC4	2016	Mosselbaai	150 001 - 200 000	74
district	DC4	2016	Mosselbaai	200 001 - 300 000	\N
district	DC4	2016	Mosselbaai	300 001 - 500 000	\N
district	DC4	2016	Mosselbaai	500 001 - 800 000	\N
district	DC4	2016	Mosselbaai	800 001 - 1 000 000	\N
district	DC4	2016	Mosselbaai	> 1 000 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	< 1 500	1265
district	DC15	2016	Mthatha King Sabata Dalindyebo	1 501 - 3 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	3 001 - 5 000	1046
district	DC15	2016	Mthatha King Sabata Dalindyebo	5 001 - 10 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	10 001 - 20 000	1013
district	DC15	2016	Mthatha King Sabata Dalindyebo	20 001 - 30 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	30 001 - 40 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	40 001 - 50 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	50 001 - 100 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	100 001 - 150 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	150 001 - 200 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	200 001 - 300 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	300 001 - 500 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	500 001 - 800 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	800 001 - 1 000 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	> 1 000 000	\N
district	DC5	2016	Murraysburg	< 1 500	\N
district	DC5	2016	Murraysburg	1 501 - 3 000	3919
district	DC5	2016	Murraysburg	3 001 - 5 000	\N
district	DC5	2016	Murraysburg	5 001 - 10 000	\N
district	DC5	2016	Murraysburg	10 001 - 20 000	\N
district	DC5	2016	Murraysburg	20 001 - 30 000	509
district	DC5	2016	Murraysburg	30 001 - 40 000	\N
district	DC5	2016	Murraysburg	40 001 - 50 000	\N
district	DC5	2016	Murraysburg	50 001 - 100 000	\N
district	DC5	2016	Murraysburg	100 001 - 150 000	\N
district	DC5	2016	Murraysburg	150 001 - 200 000	\N
district	DC5	2016	Murraysburg	200 001 - 300 000	\N
district	DC5	2016	Murraysburg	300 001 - 500 000	\N
district	DC5	2016	Murraysburg	500 001 - 800 000	\N
district	DC5	2016	Murraysburg	800 001 - 1 000 000	\N
district	DC5	2016	Murraysburg	> 1 000 000	\N
district	DC34	2016	Musina	< 1 500	56
district	DC34	2016	Musina	1 501 - 3 000	\N
district	DC34	2016	Musina	3 001 - 5 000	264
district	DC34	2016	Musina	5 001 - 10 000	21
district	DC34	2016	Musina	10 001 - 20 000	\N
district	DC34	2016	Musina	20 001 - 30 000	\N
district	DC34	2016	Musina	30 001 - 40 000	258
district	DC34	2016	Musina	40 001 - 50 000	73
district	DC34	2016	Musina	50 001 - 100 000	100
district	DC34	2016	Musina	100 001 - 150 000	\N
district	DC34	2016	Musina	150 001 - 200 000	\N
district	DC34	2016	Musina	200 001 - 300 000	\N
district	DC34	2016	Musina	300 001 - 500 000	\N
district	DC34	2016	Musina	500 001 - 800 000	\N
district	DC34	2016	Musina	800 001 - 1 000 000	\N
district	DC34	2016	Musina	> 1 000 000	157
district	DC6	2016	Namakwa	< 1 500	46362
district	DC6	2016	Namakwa	1 501 - 3 000	12989
district	DC6	2016	Namakwa	3 001 - 5 000	322
district	DC6	2016	Namakwa	5 001 - 10 000	\N
district	DC6	2016	Namakwa	10 001 - 20 000	38
district	DC6	2016	Namakwa	20 001 - 30 000	39
district	DC6	2016	Namakwa	30 001 - 40 000	\N
district	DC6	2016	Namakwa	40 001 - 50 000	\N
district	DC6	2016	Namakwa	50 001 - 100 000	24
district	DC6	2016	Namakwa	100 001 - 150 000	\N
district	DC6	2016	Namakwa	150 001 - 200 000	\N
district	DC6	2016	Namakwa	200 001 - 300 000	\N
district	DC6	2016	Namakwa	300 001 - 500 000	\N
district	DC6	2016	Namakwa	500 001 - 800 000	\N
district	DC6	2016	Namakwa	800 001 - 1 000 000	\N
district	DC6	2016	Namakwa	> 1 000 000	\N
district	DC32	2016	Nelspruit Mbombela	< 1 500	1000
district	DC32	2016	Nelspruit Mbombela	1 501 - 3 000	502
district	DC32	2016	Nelspruit Mbombela	3 001 - 5 000	\N
district	DC32	2016	Nelspruit Mbombela	5 001 - 10 000	9908
district	DC32	2016	Nelspruit Mbombela	10 001 - 20 000	5289
district	DC32	2016	Nelspruit Mbombela	20 001 - 30 000	817
district	DC32	2016	Nelspruit Mbombela	30 001 - 40 000	618
district	DC32	2016	Nelspruit Mbombela	40 001 - 50 000	889
district	DC32	2016	Nelspruit Mbombela	50 001 - 100 000	508
district	DC32	2016	Nelspruit Mbombela	100 001 - 150 000	133
district	DC32	2016	Nelspruit Mbombela	150 001 - 200 000	142
district	DC32	2016	Nelspruit Mbombela	200 001 - 300 000	76
district	DC32	2016	Nelspruit Mbombela	300 001 - 500 000	177
district	DC32	2016	Nelspruit Mbombela	500 001 - 800 000	34
district	DC32	2016	Nelspruit Mbombela	800 001 - 1 000 000	\N
district	DC32	2016	Nelspruit Mbombela	> 1 000 000	\N
district	DC25	2016	Newcastle	< 1 500	2035
district	DC25	2016	Newcastle	1 501 - 3 000	60
district	DC25	2016	Newcastle	3 001 - 5 000	\N
district	DC25	2016	Newcastle	5 001 - 10 000	2734
district	DC25	2016	Newcastle	10 001 - 20 000	1745
district	DC25	2016	Newcastle	20 001 - 30 000	587
district	DC25	2016	Newcastle	30 001 - 40 000	13
district	DC25	2016	Newcastle	40 001 - 50 000	63
district	DC25	2016	Newcastle	50 001 - 100 000	\N
district	DC25	2016	Newcastle	100 001 - 150 000	33
district	DC25	2016	Newcastle	150 001 - 200 000	\N
district	DC25	2016	Newcastle	200 001 - 300 000	\N
district	DC25	2016	Newcastle	300 001 - 500 000	\N
district	DC25	2016	Newcastle	500 001 - 800 000	\N
district	DC25	2016	Newcastle	800 001 - 1 000 000	\N
district	DC25	2016	Newcastle	> 1 000 000	\N
municipality	EKU	2016	Nigel Ekurhuleni	< 1 500	47
municipality	EKU	2016	Nigel Ekurhuleni	1 501 - 3 000	\N
municipality	EKU	2016	Nigel Ekurhuleni	3 001 - 5 000	15
municipality	EKU	2016	Nigel Ekurhuleni	5 001 - 10 000	620
municipality	EKU	2016	Nigel Ekurhuleni	10 001 - 20 000	2285
municipality	EKU	2016	Nigel Ekurhuleni	20 001 - 30 000	990
municipality	EKU	2016	Nigel Ekurhuleni	30 001 - 40 000	359
municipality	EKU	2016	Nigel Ekurhuleni	40 001 - 50 000	517
municipality	EKU	2016	Nigel Ekurhuleni	50 001 - 100 000	446
municipality	EKU	2016	Nigel Ekurhuleni	100 001 - 150 000	87
municipality	EKU	2016	Nigel Ekurhuleni	150 001 - 200 000	35
municipality	EKU	2016	Nigel Ekurhuleni	200 001 - 300 000	127
municipality	EKU	2016	Nigel Ekurhuleni	300 001 - 500 000	\N
municipality	EKU	2016	Nigel Ekurhuleni	500 001 - 800 000	12
municipality	EKU	2016	Nigel Ekurhuleni	800 001 - 1 000 000	\N
municipality	EKU	2016	Nigel Ekurhuleni	> 1 000 000	75
district	DC36	2016	Nylstroom Modimolle	< 1 500	418
district	DC36	2016	Nylstroom Modimolle	1 501 - 3 000	2104
district	DC36	2016	Nylstroom Modimolle	3 001 - 5 000	418
district	DC36	2016	Nylstroom Modimolle	5 001 - 10 000	7802
district	DC36	2016	Nylstroom Modimolle	10 001 - 20 000	9044
district	DC36	2016	Nylstroom Modimolle	20 001 - 30 000	6799
district	DC36	2016	Nylstroom Modimolle	30 001 - 40 000	1178
district	DC36	2016	Nylstroom Modimolle	40 001 - 50 000	470
district	DC36	2016	Nylstroom Modimolle	50 001 - 100 000	682
district	DC36	2016	Nylstroom Modimolle	100 001 - 150 000	118
district	DC36	2016	Nylstroom Modimolle	150 001 - 200 000	11
district	DC36	2016	Nylstroom Modimolle	200 001 - 300 000	\N
district	DC36	2016	Nylstroom Modimolle	300 001 - 500 000	17
district	DC36	2016	Nylstroom Modimolle	500 001 - 800 000	\N
district	DC36	2016	Nylstroom Modimolle	800 001 - 1 000 000	\N
district	DC36	2016	Nylstroom Modimolle	> 1 000 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	< 1 500	\N
district	DC18	2016	Odendaalsrus Matjhabeng	1 501 - 3 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	3 001 - 5 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	5 001 - 10 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	10 001 - 20 000	257
district	DC18	2016	Odendaalsrus Matjhabeng	20 001 - 30 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	30 001 - 40 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	40 001 - 50 000	38
district	DC18	2016	Odendaalsrus Matjhabeng	50 001 - 100 000	38
district	DC18	2016	Odendaalsrus Matjhabeng	100 001 - 150 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	150 001 - 200 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	200 001 - 300 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	300 001 - 500 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	500 001 - 800 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	800 001 - 1 000 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	> 1 000 000	\N
municipality	BUF	2016	Oos-Londen Baffalo City	< 1 500	\N
municipality	BUF	2016	Oos-Londen Baffalo City	1 501 - 3 000	\N
municipality	BUF	2016	Oos-Londen Baffalo City	3 001 - 5 000	\N
municipality	BUF	2016	Oos-Londen Baffalo City	5 001 - 10 000	269
municipality	BUF	2016	Oos-Londen Baffalo City	10 001 - 20 000	467
municipality	BUF	2016	Oos-Londen Baffalo City	20 001 - 30 000	229
municipality	BUF	2016	Oos-Londen Baffalo City	30 001 - 40 000	\N
municipality	BUF	2016	Oos-Londen Baffalo City	40 001 - 50 000	87
municipality	BUF	2016	Oos-Londen Baffalo City	50 001 - 100 000	307
municipality	BUF	2016	Oos-Londen Baffalo City	100 001 - 150 000	90
municipality	BUF	2016	Oos-Londen Baffalo City	150 001 - 200 000	123
municipality	BUF	2016	Oos-Londen Baffalo City	200 001 - 300 000	48
municipality	BUF	2016	Oos-Londen Baffalo City	300 001 - 500 000	43
municipality	BUF	2016	Oos-Londen Baffalo City	500 001 - 800 000	\N
municipality	BUF	2016	Oos-Londen Baffalo City	800 001 - 1 000 000	15
municipality	BUF	2016	Oos-Londen Baffalo City	> 1 000 000	\N
district	DC4	2016	Oudtshoorn	< 1 500	10794
district	DC4	2016	Oudtshoorn	1 501 - 3 000	258
district	DC4	2016	Oudtshoorn	3 001 - 5 000	119
district	DC4	2016	Oudtshoorn	5 001 - 10 000	953
district	DC4	2016	Oudtshoorn	10 001 - 20 000	2702
district	DC4	2016	Oudtshoorn	20 001 - 30 000	986
district	DC4	2016	Oudtshoorn	30 001 - 40 000	276
district	DC4	2016	Oudtshoorn	40 001 - 50 000	\N
district	DC4	2016	Oudtshoorn	50 001 - 100 000	295
district	DC4	2016	Oudtshoorn	100 001 - 150 000	142
district	DC4	2016	Oudtshoorn	150 001 - 200 000	\N
district	DC4	2016	Oudtshoorn	200 001 - 300 000	\N
district	DC4	2016	Oudtshoorn	300 001 - 500 000	67
district	DC4	2016	Oudtshoorn	500 001 - 800 000	\N
district	DC4	2016	Oudtshoorn	800 001 - 1 000 000	\N
district	DC4	2016	Oudtshoorn	> 1 000 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	< 1 500	\N
district	DC2	2016	Paarl/Wel Drakenstein	1 501 - 3 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	3 001 - 5 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	5 001 - 10 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	10 001 - 20 000	60
district	DC2	2016	Paarl/Wel Drakenstein	20 001 - 30 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	30 001 - 40 000	74
district	DC2	2016	Paarl/Wel Drakenstein	40 001 - 50 000	70
district	DC2	2016	Paarl/Wel Drakenstein	50 001 - 100 000	349
district	DC2	2016	Paarl/Wel Drakenstein	100 001 - 150 000	45
district	DC2	2016	Paarl/Wel Drakenstein	150 001 - 200 000	134
district	DC2	2016	Paarl/Wel Drakenstein	200 001 - 300 000	742
district	DC2	2016	Paarl/Wel Drakenstein	300 001 - 500 000	225
district	DC2	2016	Paarl/Wel Drakenstein	500 001 - 800 000	85
district	DC2	2016	Paarl/Wel Drakenstein	800 001 - 1 000 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	> 1 000 000	23
district	DC20	2016	Parys Ngwathe	< 1 500	115
district	DC20	2016	Parys Ngwathe	1 501 - 3 000	10
district	DC20	2016	Parys Ngwathe	3 001 - 5 000	\N
district	DC20	2016	Parys Ngwathe	5 001 - 10 000	\N
district	DC20	2016	Parys Ngwathe	10 001 - 20 000	1743
district	DC20	2016	Parys Ngwathe	20 001 - 30 000	72
district	DC20	2016	Parys Ngwathe	30 001 - 40 000	\N
district	DC20	2016	Parys Ngwathe	40 001 - 50 000	79
district	DC20	2016	Parys Ngwathe	50 001 - 100 000	97
district	DC20	2016	Parys Ngwathe	100 001 - 150 000	\N
district	DC20	2016	Parys Ngwathe	150 001 - 200 000	\N
district	DC20	2016	Parys Ngwathe	200 001 - 300 000	\N
district	DC20	2016	Parys Ngwathe	300 001 - 500 000	28
district	DC20	2016	Parys Ngwathe	500 001 - 800 000	\N
district	DC20	2016	Parys Ngwathe	800 001 - 1 000 000	\N
district	DC20	2016	Parys Ngwathe	> 1 000 000	\N
district	DC10	2016	Pearston Blue Crane	< 1 500	\N
district	DC10	2016	Pearston Blue Crane	1 501 - 3 000	\N
district	DC10	2016	Pearston Blue Crane	3 001 - 5 000	\N
district	DC10	2016	Pearston Blue Crane	5 001 - 10 000	8955
district	DC10	2016	Pearston Blue Crane	10 001 - 20 000	483
district	DC10	2016	Pearston Blue Crane	20 001 - 30 000	\N
district	DC10	2016	Pearston Blue Crane	30 001 - 40 000	\N
district	DC10	2016	Pearston Blue Crane	40 001 - 50 000	\N
district	DC10	2016	Pearston Blue Crane	50 001 - 100 000	103
district	DC10	2016	Pearston Blue Crane	100 001 - 150 000	\N
district	DC10	2016	Pearston Blue Crane	150 001 - 200 000	\N
district	DC10	2016	Pearston Blue Crane	200 001 - 300 000	\N
district	DC10	2016	Pearston Blue Crane	300 001 - 500 000	\N
district	DC10	2016	Pearston Blue Crane	500 001 - 800 000	\N
district	DC10	2016	Pearston Blue Crane	800 001 - 1 000 000	\N
district	DC10	2016	Pearston Blue Crane	> 1 000 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	< 1 500	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	1 501 - 3 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	3 001 - 5 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	5 001 - 10 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	10 001 - 20 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	20 001 - 30 000	21
district	DC33	2016	Phalaborwa Ba-Phalaborwa	30 001 - 40 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	40 001 - 50 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	50 001 - 100 000	63
district	DC33	2016	Phalaborwa Ba-Phalaborwa	100 001 - 150 000	21
district	DC33	2016	Phalaborwa Ba-Phalaborwa	150 001 - 200 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	200 001 - 300 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	300 001 - 500 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	500 001 - 800 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	800 001 - 1 000 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	> 1 000 000	\N
district	DC16	2016	Philipolis Kopanong	< 1 500	\N
district	DC16	2016	Philipolis Kopanong	1 501 - 3 000	\N
district	DC16	2016	Philipolis Kopanong	3 001 - 5 000	2971
district	DC16	2016	Philipolis Kopanong	5 001 - 10 000	857
district	DC16	2016	Philipolis Kopanong	10 001 - 20 000	\N
district	DC16	2016	Philipolis Kopanong	20 001 - 30 000	\N
district	DC16	2016	Philipolis Kopanong	30 001 - 40 000	\N
district	DC16	2016	Philipolis Kopanong	40 001 - 50 000	\N
district	DC16	2016	Philipolis Kopanong	50 001 - 100 000	\N
district	DC16	2016	Philipolis Kopanong	100 001 - 150 000	\N
district	DC16	2016	Philipolis Kopanong	150 001 - 200 000	\N
district	DC16	2016	Philipolis Kopanong	200 001 - 300 000	\N
district	DC16	2016	Philipolis Kopanong	300 001 - 500 000	\N
district	DC16	2016	Philipolis Kopanong	500 001 - 800 000	\N
district	DC16	2016	Philipolis Kopanong	800 001 - 1 000 000	\N
district	DC16	2016	Philipolis Kopanong	> 1 000 000	\N
district	DC7	2016	Phillipstown Renosterberg	< 1 500	7676
district	DC7	2016	Phillipstown Renosterberg	1 501 - 3 000	3431
district	DC7	2016	Phillipstown Renosterberg	3 001 - 5 000	\N
district	DC7	2016	Phillipstown Renosterberg	5 001 - 10 000	\N
district	DC7	2016	Phillipstown Renosterberg	10 001 - 20 000	1251
district	DC7	2016	Phillipstown Renosterberg	20 001 - 30 000	\N
district	DC7	2016	Phillipstown Renosterberg	30 001 - 40 000	\N
district	DC7	2016	Phillipstown Renosterberg	40 001 - 50 000	\N
district	DC7	2016	Phillipstown Renosterberg	50 001 - 100 000	\N
district	DC7	2016	Phillipstown Renosterberg	100 001 - 150 000	\N
district	DC7	2016	Phillipstown Renosterberg	150 001 - 200 000	\N
district	DC7	2016	Phillipstown Renosterberg	200 001 - 300 000	\N
district	DC7	2016	Phillipstown Renosterberg	300 001 - 500 000	\N
district	DC7	2016	Phillipstown Renosterberg	500 001 - 800 000	\N
district	DC7	2016	Phillipstown Renosterberg	800 001 - 1 000 000	\N
district	DC7	2016	Phillipstown Renosterberg	> 1 000 000	\N
district	DC22	2016	Pietermaritzburg Msunduzi	< 1 500	844
district	DC22	2016	Pietermaritzburg Msunduzi	1 501 - 3 000	253
district	DC22	2016	Pietermaritzburg Msunduzi	3 001 - 5 000	206
district	DC22	2016	Pietermaritzburg Msunduzi	5 001 - 10 000	2171
district	DC22	2016	Pietermaritzburg Msunduzi	10 001 - 20 000	2207
district	DC22	2016	Pietermaritzburg Msunduzi	20 001 - 30 000	1317
district	DC22	2016	Pietermaritzburg Msunduzi	30 001 - 40 000	1800
district	DC22	2016	Pietermaritzburg Msunduzi	40 001 - 50 000	725
district	DC22	2016	Pietermaritzburg Msunduzi	50 001 - 100 000	8407
district	DC22	2016	Pietermaritzburg Msunduzi	100 001 - 150 000	505
district	DC22	2016	Pietermaritzburg Msunduzi	150 001 - 200 000	257
district	DC22	2016	Pietermaritzburg Msunduzi	200 001 - 300 000	286
district	DC22	2016	Pietermaritzburg Msunduzi	300 001 - 500 000	217
district	DC22	2016	Pietermaritzburg Msunduzi	500 001 - 800 000	12
district	DC22	2016	Pietermaritzburg Msunduzi	800 001 - 1 000 000	19
district	DC22	2016	Pietermaritzburg Msunduzi	> 1 000 000	24
district	DC1	2016	Piketberg Bergriver	< 1 500	39
district	DC1	2016	Piketberg Bergriver	1 501 - 3 000	661
district	DC1	2016	Piketberg Bergriver	3 001 - 5 000	2134
district	DC1	2016	Piketberg Bergriver	5 001 - 10 000	7636
district	DC1	2016	Piketberg Bergriver	10 001 - 20 000	4590
district	DC1	2016	Piketberg Bergriver	20 001 - 30 000	1079
district	DC1	2016	Piketberg Bergriver	30 001 - 40 000	81
district	DC1	2016	Piketberg Bergriver	40 001 - 50 000	121
district	DC1	2016	Piketberg Bergriver	50 001 - 100 000	144
district	DC1	2016	Piketberg Bergriver	100 001 - 150 000	67
district	DC1	2016	Piketberg Bergriver	150 001 - 200 000	\N
district	DC1	2016	Piketberg Bergriver	200 001 - 300 000	\N
district	DC1	2016	Piketberg Bergriver	300 001 - 500 000	\N
district	DC1	2016	Piketberg Bergriver	500 001 - 800 000	\N
district	DC1	2016	Piketberg Bergriver	800 001 - 1 000 000	\N
district	DC1	2016	Piketberg Bergriver	> 1 000 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	< 1 500	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	1 501 - 3 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	3 001 - 5 000	172
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	5 001 - 10 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	10 001 - 20 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	20 001 - 30 000	34
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	30 001 - 40 000	32
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	40 001 - 50 000	43
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	50 001 - 100 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	100 001 - 150 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	150 001 - 200 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	200 001 - 300 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	300 001 - 500 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	500 001 - 800 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	800 001 - 1 000 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	> 1 000 000	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	< 1 500	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	1 501 - 3 000	545
district	DC21	2016	Port Shepstone Ray Nkonyeni	3 001 - 5 000	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	5 001 - 10 000	1059
district	DC21	2016	Port Shepstone Ray Nkonyeni	10 001 - 20 000	248
district	DC21	2016	Port Shepstone Ray Nkonyeni	20 001 - 30 000	1238
district	DC21	2016	Port Shepstone Ray Nkonyeni	30 001 - 40 000	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	40 001 - 50 000	142
district	DC21	2016	Port Shepstone Ray Nkonyeni	50 001 - 100 000	243
district	DC21	2016	Port Shepstone Ray Nkonyeni	100 001 - 150 000	99
district	DC21	2016	Port Shepstone Ray Nkonyeni	150 001 - 200 000	23
district	DC21	2016	Port Shepstone Ray Nkonyeni	200 001 - 300 000	15
district	DC21	2016	Port Shepstone Ray Nkonyeni	300 001 - 500 000	31
district	DC21	2016	Port Shepstone Ray Nkonyeni	500 001 - 800 000	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	800 001 - 1 000 000	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	> 1 000 000	\N
municipality	TSH	2016	Pretoria Tshwane	< 1 500	\N
municipality	TSH	2016	Pretoria Tshwane	1 501 - 3 000	\N
municipality	TSH	2016	Pretoria Tshwane	3 001 - 5 000	\N
municipality	TSH	2016	Pretoria Tshwane	5 001 - 10 000	1680
municipality	TSH	2016	Pretoria Tshwane	10 001 - 20 000	1858
municipality	TSH	2016	Pretoria Tshwane	20 001 - 30 000	1936
municipality	TSH	2016	Pretoria Tshwane	30 001 - 40 000	1230
municipality	TSH	2016	Pretoria Tshwane	40 001 - 50 000	814
municipality	TSH	2016	Pretoria Tshwane	50 001 - 100 000	1385
municipality	TSH	2016	Pretoria Tshwane	100 001 - 150 000	266
municipality	TSH	2016	Pretoria Tshwane	150 001 - 200 000	212
municipality	TSH	2016	Pretoria Tshwane	200 001 - 300 000	311
municipality	TSH	2016	Pretoria Tshwane	300 001 - 500 000	287
municipality	TSH	2016	Pretoria Tshwane	500 001 - 800 000	95
municipality	TSH	2016	Pretoria Tshwane	800 001 - 1 000 000	\N
municipality	TSH	2016	Pretoria Tshwane	> 1 000 000	174
district	DC7	2016	Prieska Siyathemba	< 1 500	1875
district	DC7	2016	Prieska Siyathemba	1 501 - 3 000	16382
district	DC7	2016	Prieska Siyathemba	3 001 - 5 000	\N
district	DC7	2016	Prieska Siyathemba	5 001 - 10 000	\N
district	DC7	2016	Prieska Siyathemba	10 001 - 20 000	\N
district	DC7	2016	Prieska Siyathemba	20 001 - 30 000	\N
district	DC7	2016	Prieska Siyathemba	30 001 - 40 000	\N
district	DC7	2016	Prieska Siyathemba	40 001 - 50 000	\N
district	DC7	2016	Prieska Siyathemba	50 001 - 100 000	\N
district	DC7	2016	Prieska Siyathemba	100 001 - 150 000	\N
district	DC7	2016	Prieska Siyathemba	150 001 - 200 000	\N
district	DC7	2016	Prieska Siyathemba	200 001 - 300 000	\N
district	DC7	2016	Prieska Siyathemba	300 001 - 500 000	\N
district	DC7	2016	Prieska Siyathemba	500 001 - 800 000	\N
district	DC7	2016	Prieska Siyathemba	800 001 - 1 000 000	\N
district	DC7	2016	Prieska Siyathemba	> 1 000 000	\N
district	DC5	2016	Prins Albert	< 1 500	11304
district	DC5	2016	Prins Albert	1 501 - 3 000	12092
district	DC5	2016	Prins Albert	3 001 - 5 000	\N
district	DC5	2016	Prins Albert	5 001 - 10 000	51
district	DC5	2016	Prins Albert	10 001 - 20 000	131
district	DC5	2016	Prins Albert	20 001 - 30 000	\N
district	DC5	2016	Prins Albert	30 001 - 40 000	\N
district	DC5	2016	Prins Albert	40 001 - 50 000	\N
district	DC5	2016	Prins Albert	50 001 - 100 000	\N
district	DC5	2016	Prins Albert	100 001 - 150 000	\N
district	DC5	2016	Prins Albert	150 001 - 200 000	\N
district	DC5	2016	Prins Albert	200 001 - 300 000	\N
district	DC5	2016	Prins Albert	300 001 - 500 000	\N
district	DC5	2016	Prins Albert	500 001 - 800 000	\N
district	DC5	2016	Prins Albert	800 001 - 1 000 000	\N
district	DC5	2016	Prins Albert	> 1 000 000	\N
district	DC13	2016	Queenstown Lukanji	< 1 500	\N
district	DC13	2016	Queenstown Lukanji	1 501 - 3 000	1631
district	DC13	2016	Queenstown Lukanji	3 001 - 5 000	\N
district	DC13	2016	Queenstown Lukanji	5 001 - 10 000	754
district	DC13	2016	Queenstown Lukanji	10 001 - 20 000	\N
district	DC13	2016	Queenstown Lukanji	20 001 - 30 000	\N
district	DC13	2016	Queenstown Lukanji	30 001 - 40 000	\N
district	DC13	2016	Queenstown Lukanji	40 001 - 50 000	\N
district	DC13	2016	Queenstown Lukanji	50 001 - 100 000	\N
district	DC13	2016	Queenstown Lukanji	100 001 - 150 000	\N
district	DC13	2016	Queenstown Lukanji	150 001 - 200 000	\N
district	DC13	2016	Queenstown Lukanji	200 001 - 300 000	\N
district	DC13	2016	Queenstown Lukanji	300 001 - 500 000	\N
district	DC13	2016	Queenstown Lukanji	500 001 - 800 000	\N
district	DC13	2016	Queenstown Lukanji	800 001 - 1 000 000	\N
district	DC13	2016	Queenstown Lukanji	> 1 000 000	\N
district	DC16	2016	Reddersburg Kopanong	< 1 500	\N
district	DC16	2016	Reddersburg Kopanong	1 501 - 3 000	\N
district	DC16	2016	Reddersburg Kopanong	3 001 - 5 000	1831
district	DC16	2016	Reddersburg Kopanong	5 001 - 10 000	2246
district	DC16	2016	Reddersburg Kopanong	10 001 - 20 000	\N
district	DC16	2016	Reddersburg Kopanong	20 001 - 30 000	\N
district	DC16	2016	Reddersburg Kopanong	30 001 - 40 000	\N
district	DC16	2016	Reddersburg Kopanong	40 001 - 50 000	\N
district	DC16	2016	Reddersburg Kopanong	50 001 - 100 000	\N
district	DC16	2016	Reddersburg Kopanong	100 001 - 150 000	\N
district	DC16	2016	Reddersburg Kopanong	150 001 - 200 000	\N
district	DC16	2016	Reddersburg Kopanong	200 001 - 300 000	\N
district	DC16	2016	Reddersburg Kopanong	300 001 - 500 000	\N
district	DC16	2016	Reddersburg Kopanong	500 001 - 800 000	\N
district	DC16	2016	Reddersburg Kopanong	800 001 - 1 000 000	\N
district	DC16	2016	Reddersburg Kopanong	> 1 000 000	\N
district	DC19	2016	Reitz Nketoana	< 1 500	505
district	DC19	2016	Reitz Nketoana	1 501 - 3 000	\N
district	DC19	2016	Reitz Nketoana	3 001 - 5 000	183
district	DC19	2016	Reitz Nketoana	5 001 - 10 000	1460
district	DC19	2016	Reitz Nketoana	10 001 - 20 000	5154
district	DC19	2016	Reitz Nketoana	20 001 - 30 000	844
district	DC19	2016	Reitz Nketoana	30 001 - 40 000	96
district	DC19	2016	Reitz Nketoana	40 001 - 50 000	219
district	DC19	2016	Reitz Nketoana	50 001 - 100 000	\N
district	DC19	2016	Reitz Nketoana	100 001 - 150 000	\N
district	DC19	2016	Reitz Nketoana	150 001 - 200 000	\N
district	DC19	2016	Reitz Nketoana	200 001 - 300 000	69
district	DC19	2016	Reitz Nketoana	300 001 - 500 000	\N
district	DC19	2016	Reitz Nketoana	500 001 - 800 000	\N
district	DC19	2016	Reitz Nketoana	800 001 - 1 000 000	\N
district	DC19	2016	Reitz Nketoana	> 1 000 000	\N
district	DC39	2016	Reivilo Thaung	< 1 500	\N
district	DC39	2016	Reivilo Thaung	1 501 - 3 000	\N
district	DC39	2016	Reivilo Thaung	3 001 - 5 000	3992
district	DC39	2016	Reivilo Thaung	5 001 - 10 000	10295
district	DC39	2016	Reivilo Thaung	10 001 - 20 000	428
district	DC39	2016	Reivilo Thaung	20 001 - 30 000	449
district	DC39	2016	Reivilo Thaung	30 001 - 40 000	\N
district	DC39	2016	Reivilo Thaung	40 001 - 50 000	\N
district	DC39	2016	Reivilo Thaung	50 001 - 100 000	\N
district	DC39	2016	Reivilo Thaung	100 001 - 150 000	38
district	DC39	2016	Reivilo Thaung	150 001 - 200 000	\N
district	DC39	2016	Reivilo Thaung	200 001 - 300 000	\N
district	DC39	2016	Reivilo Thaung	300 001 - 500 000	\N
district	DC39	2016	Reivilo Thaung	500 001 - 800 000	33
district	DC39	2016	Reivilo Thaung	800 001 - 1 000 000	\N
district	DC39	2016	Reivilo Thaung	> 1 000 000	\N
district	DC7	2016	Richmond	< 1 500	\N
district	DC7	2016	Richmond	1 501 - 3 000	\N
district	DC7	2016	Richmond	3 001 - 5 000	175
district	DC7	2016	Richmond	5 001 - 10 000	\N
district	DC7	2016	Richmond	10 001 - 20 000	\N
district	DC7	2016	Richmond	20 001 - 30 000	\N
district	DC7	2016	Richmond	30 001 - 40 000	\N
district	DC7	2016	Richmond	40 001 - 50 000	\N
district	DC7	2016	Richmond	50 001 - 100 000	\N
district	DC7	2016	Richmond	100 001 - 150 000	\N
district	DC7	2016	Richmond	150 001 - 200 000	\N
district	DC7	2016	Richmond	200 001 - 300 000	\N
district	DC7	2016	Richmond	300 001 - 500 000	\N
district	DC7	2016	Richmond	500 001 - 800 000	\N
district	DC7	2016	Richmond	800 001 - 1 000 000	\N
district	DC7	2016	Richmond	> 1 000 000	\N
district	DC4	2016	Riversdal Hessequa	< 1 500	1004
district	DC4	2016	Riversdal Hessequa	1 501 - 3 000	2262
district	DC4	2016	Riversdal Hessequa	3 001 - 5 000	\N
district	DC4	2016	Riversdal Hessequa	5 001 - 10 000	4587
district	DC4	2016	Riversdal Hessequa	10 001 - 20 000	3206
district	DC4	2016	Riversdal Hessequa	20 001 - 30 000	573
district	DC4	2016	Riversdal Hessequa	30 001 - 40 000	1410
district	DC4	2016	Riversdal Hessequa	40 001 - 50 000	697
district	DC4	2016	Riversdal Hessequa	50 001 - 100 000	77
district	DC4	2016	Riversdal Hessequa	100 001 - 150 000	15
district	DC4	2016	Riversdal Hessequa	150 001 - 200 000	\N
district	DC4	2016	Riversdal Hessequa	200 001 - 300 000	32
district	DC4	2016	Riversdal Hessequa	300 001 - 500 000	19
district	DC4	2016	Riversdal Hessequa	500 001 - 800 000	\N
district	DC4	2016	Riversdal Hessequa	800 001 - 1 000 000	\N
district	DC4	2016	Riversdal Hessequa	> 1 000 000	\N
district	DC2	2016	Robertson Breede /Winelands	< 1 500	\N
district	DC2	2016	Robertson Breede /Winelands	1 501 - 3 000	\N
district	DC2	2016	Robertson Breede /Winelands	3 001 - 5 000	\N
district	DC2	2016	Robertson Breede /Winelands	5 001 - 10 000	535
district	DC2	2016	Robertson Breede /Winelands	10 001 - 20 000	160
district	DC2	2016	Robertson Breede /Winelands	20 001 - 30 000	\N
district	DC2	2016	Robertson Breede /Winelands	30 001 - 40 000	89
district	DC2	2016	Robertson Breede /Winelands	40 001 - 50 000	383
district	DC2	2016	Robertson Breede /Winelands	50 001 - 100 000	24
district	DC2	2016	Robertson Breede /Winelands	100 001 - 150 000	20
district	DC2	2016	Robertson Breede /Winelands	150 001 - 200 000	13
district	DC2	2016	Robertson Breede /Winelands	200 001 - 300 000	90
district	DC2	2016	Robertson Breede /Winelands	300 001 - 500 000	43
district	DC2	2016	Robertson Breede /Winelands	500 001 - 800 000	\N
district	DC2	2016	Robertson Breede /Winelands	800 001 - 1 000 000	\N
district	DC2	2016	Robertson Breede /Winelands	> 1 000 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	< 1 500	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	1 501 - 3 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	3 001 - 5 000	1632
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	5 001 - 10 000	1861
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	10 001 - 20 000	4285
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	20 001 - 30 000	886
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	30 001 - 40 000	182
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	40 001 - 50 000	42
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	50 001 - 100 000	80
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	100 001 - 150 000	335
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	150 001 - 200 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	200 001 - 300 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	300 001 - 500 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	500 001 - 800 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	800 001 - 1 000 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	> 1 000 000	\N
district	DC16	2016	Rouxville Mohokare	< 1 500	\N
district	DC16	2016	Rouxville Mohokare	1 501 - 3 000	\N
district	DC16	2016	Rouxville Mohokare	3 001 - 5 000	1646
district	DC16	2016	Rouxville Mohokare	5 001 - 10 000	4494
district	DC16	2016	Rouxville Mohokare	10 001 - 20 000	821
district	DC16	2016	Rouxville Mohokare	20 001 - 30 000	1112
district	DC16	2016	Rouxville Mohokare	30 001 - 40 000	\N
district	DC16	2016	Rouxville Mohokare	40 001 - 50 000	\N
district	DC16	2016	Rouxville Mohokare	50 001 - 100 000	\N
district	DC16	2016	Rouxville Mohokare	100 001 - 150 000	26
district	DC16	2016	Rouxville Mohokare	150 001 - 200 000	\N
district	DC16	2016	Rouxville Mohokare	200 001 - 300 000	\N
district	DC16	2016	Rouxville Mohokare	300 001 - 500 000	\N
district	DC16	2016	Rouxville Mohokare	500 001 - 800 000	\N
district	DC16	2016	Rouxville Mohokare	800 001 - 1 000 000	\N
district	DC16	2016	Rouxville Mohokare	> 1 000 000	\N
district	DC19	2016	Senekal Setsoto	< 1 500	\N
district	DC19	2016	Senekal Setsoto	1 501 - 3 000	\N
district	DC19	2016	Senekal Setsoto	3 001 - 5 000	\N
district	DC19	2016	Senekal Setsoto	5 001 - 10 000	6322
district	DC19	2016	Senekal Setsoto	10 001 - 20 000	2681
district	DC19	2016	Senekal Setsoto	20 001 - 30 000	\N
district	DC19	2016	Senekal Setsoto	30 001 - 40 000	\N
district	DC19	2016	Senekal Setsoto	40 001 - 50 000	\N
district	DC19	2016	Senekal Setsoto	50 001 - 100 000	\N
district	DC19	2016	Senekal Setsoto	100 001 - 150 000	\N
district	DC19	2016	Senekal Setsoto	150 001 - 200 000	\N
district	DC19	2016	Senekal Setsoto	200 001 - 300 000	\N
district	DC19	2016	Senekal Setsoto	300 001 - 500 000	\N
district	DC19	2016	Senekal Setsoto	500 001 - 800 000	\N
district	DC19	2016	Senekal Setsoto	800 001 - 1 000 000	\N
district	DC19	2016	Senekal Setsoto	> 1 000 000	\N
district	DC16	2016	Smithfield Mohkare	< 1 500	373
district	DC16	2016	Smithfield Mohkare	1 501 - 3 000	\N
district	DC16	2016	Smithfield Mohkare	3 001 - 5 000	\N
district	DC16	2016	Smithfield Mohkare	5 001 - 10 000	419
district	DC16	2016	Smithfield Mohkare	10 001 - 20 000	\N
district	DC16	2016	Smithfield Mohkare	20 001 - 30 000	\N
district	DC16	2016	Smithfield Mohkare	30 001 - 40 000	\N
district	DC16	2016	Smithfield Mohkare	40 001 - 50 000	\N
district	DC16	2016	Smithfield Mohkare	50 001 - 100 000	\N
district	DC16	2016	Smithfield Mohkare	100 001 - 150 000	\N
district	DC16	2016	Smithfield Mohkare	150 001 - 200 000	\N
district	DC16	2016	Smithfield Mohkare	200 001 - 300 000	\N
district	DC16	2016	Smithfield Mohkare	300 001 - 500 000	\N
district	DC16	2016	Smithfield Mohkare	500 001 - 800 000	\N
district	DC16	2016	Smithfield Mohkare	800 001 - 1 000 000	\N
district	DC16	2016	Smithfield Mohkare	> 1 000 000	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	< 1 500	322
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	1 501 - 3 000	74
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	3 001 - 5 000	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	5 001 - 10 000	592
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	10 001 - 20 000	1396
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	20 001 - 30 000	1517
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	30 001 - 40 000	51
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	40 001 - 50 000	105
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	50 001 - 100 000	842
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	100 001 - 150 000	72
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	150 001 - 200 000	80
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	200 001 - 300 000	78
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	300 001 - 500 000	39
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	500 001 - 800 000	13
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	800 001 - 1 000 000	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	> 1 000 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	< 1 500	\N
district	DC10	2016	Somerset-Oos Blue Crane	1 501 - 3 000	3961
district	DC10	2016	Somerset-Oos Blue Crane	3 001 - 5 000	2805
district	DC10	2016	Somerset-Oos Blue Crane	5 001 - 10 000	3210
district	DC10	2016	Somerset-Oos Blue Crane	10 001 - 20 000	1558
district	DC10	2016	Somerset-Oos Blue Crane	20 001 - 30 000	728
district	DC10	2016	Somerset-Oos Blue Crane	30 001 - 40 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	40 001 - 50 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	50 001 - 100 000	43
district	DC10	2016	Somerset-Oos Blue Crane	100 001 - 150 000	119
district	DC10	2016	Somerset-Oos Blue Crane	150 001 - 200 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	200 001 - 300 000	43
district	DC10	2016	Somerset-Oos Blue Crane	300 001 - 500 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	500 001 - 800 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	800 001 - 1 000 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	> 1 000 000	\N
district	DC27	2016	St Lucia Mtubatuba	< 1 500	64
district	DC27	2016	St Lucia Mtubatuba	1 501 - 3 000	\N
district	DC27	2016	St Lucia Mtubatuba	3 001 - 5 000	\N
district	DC27	2016	St Lucia Mtubatuba	5 001 - 10 000	\N
district	DC27	2016	St Lucia Mtubatuba	10 001 - 20 000	\N
district	DC27	2016	St Lucia Mtubatuba	20 001 - 30 000	\N
district	DC27	2016	St Lucia Mtubatuba	30 001 - 40 000	81
district	DC27	2016	St Lucia Mtubatuba	40 001 - 50 000	\N
district	DC27	2016	St Lucia Mtubatuba	50 001 - 100 000	194
district	DC27	2016	St Lucia Mtubatuba	100 001 - 150 000	\N
district	DC27	2016	St Lucia Mtubatuba	150 001 - 200 000	\N
district	DC27	2016	St Lucia Mtubatuba	200 001 - 300 000	\N
district	DC27	2016	St Lucia Mtubatuba	300 001 - 500 000	\N
district	DC27	2016	St Lucia Mtubatuba	500 001 - 800 000	\N
district	DC27	2016	St Lucia Mtubatuba	800 001 - 1 000 000	\N
district	DC27	2016	St Lucia Mtubatuba	> 1 000 000	\N
district	DC2	2016	Stellenbosch	< 1 500	\N
district	DC2	2016	Stellenbosch	1 501 - 3 000	\N
district	DC2	2016	Stellenbosch	3 001 - 5 000	\N
district	DC2	2016	Stellenbosch	5 001 - 10 000	\N
district	DC2	2016	Stellenbosch	10 001 - 20 000	\N
district	DC2	2016	Stellenbosch	20 001 - 30 000	\N
district	DC2	2016	Stellenbosch	30 001 - 40 000	\N
district	DC2	2016	Stellenbosch	40 001 - 50 000	\N
district	DC2	2016	Stellenbosch	50 001 - 100 000	32
district	DC2	2016	Stellenbosch	100 001 - 150 000	30
district	DC2	2016	Stellenbosch	150 001 - 200 000	621
district	DC2	2016	Stellenbosch	200 001 - 300 000	160
district	DC2	2016	Stellenbosch	300 001 - 500 000	474
district	DC2	2016	Stellenbosch	500 001 - 800 000	333
district	DC2	2016	Stellenbosch	800 001 - 1 000 000	39
district	DC2	2016	Stellenbosch	> 1 000 000	82
district	DC14	2016	Steynsburg Gariep	< 1 500	\N
district	DC14	2016	Steynsburg Gariep	1 501 - 3 000	2659
district	DC14	2016	Steynsburg Gariep	3 001 - 5 000	2465
district	DC14	2016	Steynsburg Gariep	5 001 - 10 000	396
district	DC14	2016	Steynsburg Gariep	10 001 - 20 000	\N
district	DC14	2016	Steynsburg Gariep	20 001 - 30 000	\N
district	DC14	2016	Steynsburg Gariep	30 001 - 40 000	\N
district	DC14	2016	Steynsburg Gariep	40 001 - 50 000	\N
district	DC14	2016	Steynsburg Gariep	50 001 - 100 000	\N
district	DC14	2016	Steynsburg Gariep	100 001 - 150 000	\N
district	DC14	2016	Steynsburg Gariep	150 001 - 200 000	\N
district	DC14	2016	Steynsburg Gariep	200 001 - 300 000	\N
district	DC14	2016	Steynsburg Gariep	300 001 - 500 000	\N
district	DC14	2016	Steynsburg Gariep	500 001 - 800 000	\N
district	DC14	2016	Steynsburg Gariep	800 001 - 1 000 000	\N
district	DC14	2016	Steynsburg Gariep	> 1 000 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	< 1 500	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	1 501 - 3 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	3 001 - 5 000	2690
district	DC10	2016	Steytlerville Dr Beyers Naude	5 001 - 10 000	4600
district	DC10	2016	Steytlerville Dr Beyers Naude	10 001 - 20 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	20 001 - 30 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	30 001 - 40 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	40 001 - 50 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	50 001 - 100 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	100 001 - 150 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	150 001 - 200 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	200 001 - 300 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	300 001 - 500 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	500 001 - 800 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	800 001 - 1 000 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	> 1 000 000	\N
district	DC12	2016	Stutterheim Amahlathi	< 1 500	\N
district	DC12	2016	Stutterheim Amahlathi	1 501 - 3 000	\N
district	DC12	2016	Stutterheim Amahlathi	3 001 - 5 000	\N
district	DC12	2016	Stutterheim Amahlathi	5 001 - 10 000	1127
district	DC12	2016	Stutterheim Amahlathi	10 001 - 20 000	706
district	DC12	2016	Stutterheim Amahlathi	20 001 - 30 000	89
district	DC12	2016	Stutterheim Amahlathi	30 001 - 40 000	\N
district	DC12	2016	Stutterheim Amahlathi	40 001 - 50 000	16
district	DC12	2016	Stutterheim Amahlathi	50 001 - 100 000	\N
district	DC12	2016	Stutterheim Amahlathi	100 001 - 150 000	\N
district	DC12	2016	Stutterheim Amahlathi	150 001 - 200 000	\N
district	DC12	2016	Stutterheim Amahlathi	200 001 - 300 000	\N
district	DC12	2016	Stutterheim Amahlathi	300 001 - 500 000	\N
district	DC12	2016	Stutterheim Amahlathi	500 001 - 800 000	\N
district	DC12	2016	Stutterheim Amahlathi	800 001 - 1 000 000	\N
district	DC12	2016	Stutterheim Amahlathi	> 1 000 000	\N
district	DC6	2016	Sutherland	< 1 500	19901
district	DC6	2016	Sutherland	1 501 - 3 000	4178
district	DC6	2016	Sutherland	3 001 - 5 000	\N
district	DC6	2016	Sutherland	5 001 - 10 000	\N
district	DC6	2016	Sutherland	10 001 - 20 000	\N
district	DC6	2016	Sutherland	20 001 - 30 000	\N
district	DC6	2016	Sutherland	30 001 - 40 000	\N
district	DC6	2016	Sutherland	40 001 - 50 000	\N
district	DC6	2016	Sutherland	50 001 - 100 000	\N
district	DC6	2016	Sutherland	100 001 - 150 000	\N
district	DC6	2016	Sutherland	150 001 - 200 000	\N
district	DC6	2016	Sutherland	200 001 - 300 000	\N
district	DC6	2016	Sutherland	300 001 - 500 000	\N
district	DC6	2016	Sutherland	500 001 - 800 000	\N
district	DC6	2016	Sutherland	800 001 - 1 000 000	\N
district	DC6	2016	Sutherland	> 1 000 000	\N
district	DC3	2016	Swellendam	< 1 500	\N
district	DC3	2016	Swellendam	1 501 - 3 000	\N
district	DC3	2016	Swellendam	3 001 - 5 000	1564
district	DC3	2016	Swellendam	5 001 - 10 000	4845
district	DC3	2016	Swellendam	10 001 - 20 000	347
district	DC3	2016	Swellendam	20 001 - 30 000	831
district	DC3	2016	Swellendam	30 001 - 40 000	313
district	DC3	2016	Swellendam	40 001 - 50 000	373
district	DC3	2016	Swellendam	50 001 - 100 000	1677
district	DC3	2016	Swellendam	100 001 - 150 000	93
district	DC3	2016	Swellendam	150 001 - 200 000	147
district	DC3	2016	Swellendam	200 001 - 300 000	79
district	DC3	2016	Swellendam	300 001 - 500 000	66
district	DC3	2016	Swellendam	500 001 - 800 000	\N
district	DC3	2016	Swellendam	800 001 - 1 000 000	\N
district	DC3	2016	Swellendam	> 1 000 000	\N
district	DC13	2016	Tarkastad Tsolwana	< 1 500	\N
district	DC13	2016	Tarkastad Tsolwana	1 501 - 3 000	1394
district	DC13	2016	Tarkastad Tsolwana	3 001 - 5 000	5413
district	DC13	2016	Tarkastad Tsolwana	5 001 - 10 000	6994
district	DC13	2016	Tarkastad Tsolwana	10 001 - 20 000	16
district	DC13	2016	Tarkastad Tsolwana	20 001 - 30 000	20
district	DC13	2016	Tarkastad Tsolwana	30 001 - 40 000	\N
district	DC13	2016	Tarkastad Tsolwana	40 001 - 50 000	\N
district	DC13	2016	Tarkastad Tsolwana	50 001 - 100 000	107
district	DC13	2016	Tarkastad Tsolwana	100 001 - 150 000	\N
district	DC13	2016	Tarkastad Tsolwana	150 001 - 200 000	\N
district	DC13	2016	Tarkastad Tsolwana	200 001 - 300 000	\N
district	DC13	2016	Tarkastad Tsolwana	300 001 - 500 000	\N
district	DC13	2016	Tarkastad Tsolwana	500 001 - 800 000	\N
district	DC13	2016	Tarkastad Tsolwana	800 001 - 1 000 000	\N
district	DC13	2016	Tarkastad Tsolwana	> 1 000 000	\N
municipality	MAN	2016	Thaba Nchu	< 1 500	\N
municipality	MAN	2016	Thaba Nchu	1 501 - 3 000	1754
municipality	MAN	2016	Thaba Nchu	3 001 - 5 000	1116
municipality	MAN	2016	Thaba Nchu	5 001 - 10 000	371
municipality	MAN	2016	Thaba Nchu	10 001 - 20 000	557
municipality	MAN	2016	Thaba Nchu	20 001 - 30 000	\N
municipality	MAN	2016	Thaba Nchu	30 001 - 40 000	\N
municipality	MAN	2016	Thaba Nchu	40 001 - 50 000	\N
municipality	MAN	2016	Thaba Nchu	50 001 - 100 000	\N
municipality	MAN	2016	Thaba Nchu	100 001 - 150 000	\N
municipality	MAN	2016	Thaba Nchu	150 001 - 200 000	\N
municipality	MAN	2016	Thaba Nchu	200 001 - 300 000	\N
municipality	MAN	2016	Thaba Nchu	300 001 - 500 000	\N
municipality	MAN	2016	Thaba Nchu	500 001 - 800 000	\N
municipality	MAN	2016	Thaba Nchu	800 001 - 1 000 000	\N
municipality	MAN	2016	Thaba Nchu	> 1 000 000	\N
district	DC36	2016	Thabazimbi	< 1 500	2078
district	DC36	2016	Thabazimbi	1 501 - 3 000	\N
district	DC36	2016	Thabazimbi	3 001 - 5 000	16
district	DC36	2016	Thabazimbi	5 001 - 10 000	6816
district	DC36	2016	Thabazimbi	10 001 - 20 000	11718
district	DC36	2016	Thabazimbi	20 001 - 30 000	440
district	DC36	2016	Thabazimbi	30 001 - 40 000	1023
district	DC36	2016	Thabazimbi	40 001 - 50 000	140
district	DC36	2016	Thabazimbi	50 001 - 100 000	1533
district	DC36	2016	Thabazimbi	100 001 - 150 000	11
district	DC36	2016	Thabazimbi	150 001 - 200 000	\N
district	DC36	2016	Thabazimbi	200 001 - 300 000	\N
district	DC36	2016	Thabazimbi	300 001 - 500 000	\N
district	DC36	2016	Thabazimbi	500 001 - 800 000	22
district	DC36	2016	Thabazimbi	800 001 - 1 000 000	\N
district	DC36	2016	Thabazimbi	> 1 000 000	\N
district	DC18	2016	Theunissen Masilonyana	< 1 500	787
district	DC18	2016	Theunissen Masilonyana	1 501 - 3 000	171
district	DC18	2016	Theunissen Masilonyana	3 001 - 5 000	292
district	DC18	2016	Theunissen Masilonyana	5 001 - 10 000	345
district	DC18	2016	Theunissen Masilonyana	10 001 - 20 000	2091
district	DC18	2016	Theunissen Masilonyana	20 001 - 30 000	389
district	DC18	2016	Theunissen Masilonyana	30 001 - 40 000	\N
district	DC18	2016	Theunissen Masilonyana	40 001 - 50 000	527
district	DC18	2016	Theunissen Masilonyana	50 001 - 100 000	349
district	DC18	2016	Theunissen Masilonyana	100 001 - 150 000	65
district	DC18	2016	Theunissen Masilonyana	150 001 - 200 000	\N
district	DC18	2016	Theunissen Masilonyana	200 001 - 300 000	\N
district	DC18	2016	Theunissen Masilonyana	300 001 - 500 000	\N
district	DC18	2016	Theunissen Masilonyana	500 001 - 800 000	\N
district	DC18	2016	Theunissen Masilonyana	800 001 - 1 000 000	\N
district	DC18	2016	Theunissen Masilonyana	> 1 000 000	\N
district	DC2	2016	Tulbagh	< 1 500	\N
district	DC2	2016	Tulbagh	1 501 - 3 000	\N
district	DC2	2016	Tulbagh	3 001 - 5 000	\N
district	DC2	2016	Tulbagh	5 001 - 10 000	\N
district	DC2	2016	Tulbagh	10 001 - 20 000	291
district	DC2	2016	Tulbagh	20 001 - 30 000	\N
district	DC2	2016	Tulbagh	30 001 - 40 000	\N
district	DC2	2016	Tulbagh	40 001 - 50 000	93
district	DC2	2016	Tulbagh	50 001 - 100 000	69
district	DC2	2016	Tulbagh	100 001 - 150 000	34
district	DC2	2016	Tulbagh	150 001 - 200 000	\N
district	DC2	2016	Tulbagh	200 001 - 300 000	14
district	DC2	2016	Tulbagh	300 001 - 500 000	\N
district	DC2	2016	Tulbagh	500 001 - 800 000	\N
district	DC2	2016	Tulbagh	800 001 - 1 000 000	\N
district	DC2	2016	Tulbagh	> 1 000 000	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	< 1 500	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	1 501 - 3 000	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	3 001 - 5 000	970
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	5 001 - 10 000	1777
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	10 001 - 20 000	1956
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	20 001 - 30 000	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	30 001 - 40 000	118
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	40 001 - 50 000	199
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	50 001 - 100 000	129
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	100 001 - 150 000	59
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	150 001 - 200 000	34
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	200 001 - 300 000	16
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	300 001 - 500 000	160
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	500 001 - 800 000	97
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	800 001 - 1 000 000	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	> 1 000 000	\N
district	DC26	2016	Ulundi	< 1 500	10287
district	DC26	2016	Ulundi	1 501 - 3 000	\N
district	DC26	2016	Ulundi	3 001 - 5 000	\N
district	DC26	2016	Ulundi	5 001 - 10 000	122
district	DC26	2016	Ulundi	10 001 - 20 000	4918
district	DC26	2016	Ulundi	20 001 - 30 000	22
district	DC26	2016	Ulundi	30 001 - 40 000	111
district	DC26	2016	Ulundi	40 001 - 50 000	73
district	DC26	2016	Ulundi	50 001 - 100 000	461
district	DC26	2016	Ulundi	100 001 - 150 000	127
district	DC26	2016	Ulundi	150 001 - 200 000	\N
district	DC26	2016	Ulundi	200 001 - 300 000	\N
district	DC26	2016	Ulundi	300 001 - 500 000	\N
district	DC26	2016	Ulundi	500 001 - 800 000	\N
district	DC26	2016	Ulundi	800 001 - 1 000 000	\N
district	DC26	2016	Ulundi	> 1 000 000	\N
district	DC43	2016	Underberg KwaSani	< 1 500	\N
district	DC43	2016	Underberg KwaSani	1 501 - 3 000	\N
district	DC43	2016	Underberg KwaSani	3 001 - 5 000	410
district	DC43	2016	Underberg KwaSani	5 001 - 10 000	3833
district	DC43	2016	Underberg KwaSani	10 001 - 20 000	2186
district	DC43	2016	Underberg KwaSani	20 001 - 30 000	1118
district	DC43	2016	Underberg KwaSani	30 001 - 40 000	1006
district	DC43	2016	Underberg KwaSani	40 001 - 50 000	983
district	DC43	2016	Underberg KwaSani	50 001 - 100 000	5134
district	DC43	2016	Underberg KwaSani	100 001 - 150 000	297
district	DC43	2016	Underberg KwaSani	150 001 - 200 000	21
district	DC43	2016	Underberg KwaSani	200 001 - 300 000	25
district	DC43	2016	Underberg KwaSani	300 001 - 500 000	\N
district	DC43	2016	Underberg KwaSani	500 001 - 800 000	\N
district	DC43	2016	Underberg KwaSani	800 001 - 1 000 000	\N
district	DC43	2016	Underberg KwaSani	> 1 000 000	\N
district	DC44	2016	Uniondale	< 1 500	1492
district	DC44	2016	Uniondale	1 501 - 3 000	2252
district	DC44	2016	Uniondale	3 001 - 5 000	120
district	DC44	2016	Uniondale	5 001 - 10 000	3688
district	DC44	2016	Uniondale	10 001 - 20 000	\N
district	DC44	2016	Uniondale	20 001 - 30 000	1272
district	DC44	2016	Uniondale	30 001 - 40 000	\N
district	DC44	2016	Uniondale	40 001 - 50 000	81
district	DC44	2016	Uniondale	50 001 - 100 000	\N
district	DC44	2016	Uniondale	100 001 - 150 000	\N
district	DC44	2016	Uniondale	150 001 - 200 000	161
district	DC44	2016	Uniondale	200 001 - 300 000	\N
district	DC44	2016	Uniondale	300 001 - 500 000	\N
district	DC44	2016	Uniondale	500 001 - 800 000	\N
district	DC44	2016	Uniondale	800 001 - 1 000 000	\N
district	DC44	2016	Uniondale	> 1 000 000	\N
district	DC35	2016	Usutu	< 1 500	\N
district	DC35	2016	Usutu	1 501 - 3 000	\N
district	DC35	2016	Usutu	3 001 - 5 000	2028
district	DC35	2016	Usutu	5 001 - 10 000	1820
district	DC35	2016	Usutu	10 001 - 20 000	141
district	DC35	2016	Usutu	20 001 - 30 000	949
district	DC35	2016	Usutu	30 001 - 40 000	\N
district	DC35	2016	Usutu	40 001 - 50 000	\N
district	DC35	2016	Usutu	50 001 - 100 000	\N
district	DC35	2016	Usutu	100 001 - 150 000	\N
district	DC35	2016	Usutu	150 001 - 200 000	\N
district	DC35	2016	Usutu	200 001 - 300 000	\N
district	DC35	2016	Usutu	300 001 - 500 000	\N
district	DC35	2016	Usutu	500 001 - 800 000	\N
district	DC35	2016	Usutu	800 001 - 1 000 000	\N
district	DC35	2016	Usutu	> 1 000 000	\N
district	DC25	2016	Utrecht eMadlangeni	< 1 500	389
district	DC25	2016	Utrecht eMadlangeni	1 501 - 3 000	22
district	DC25	2016	Utrecht eMadlangeni	3 001 - 5 000	3675
district	DC25	2016	Utrecht eMadlangeni	5 001 - 10 000	6003
district	DC25	2016	Utrecht eMadlangeni	10 001 - 20 000	7689
district	DC25	2016	Utrecht eMadlangeni	20 001 - 30 000	1905
district	DC25	2016	Utrecht eMadlangeni	30 001 - 40 000	225
district	DC25	2016	Utrecht eMadlangeni	40 001 - 50 000	\N
district	DC25	2016	Utrecht eMadlangeni	50 001 - 100 000	46
district	DC25	2016	Utrecht eMadlangeni	100 001 - 150 000	20
district	DC25	2016	Utrecht eMadlangeni	150 001 - 200 000	\N
district	DC25	2016	Utrecht eMadlangeni	200 001 - 300 000	\N
district	DC25	2016	Utrecht eMadlangeni	300 001 - 500 000	\N
district	DC25	2016	Utrecht eMadlangeni	500 001 - 800 000	\N
district	DC25	2016	Utrecht eMadlangeni	800 001 - 1 000 000	\N
district	DC25	2016	Utrecht eMadlangeni	> 1 000 000	\N
district	DC9	2016	Vaalharts Phokwane	< 1 500	\N
district	DC9	2016	Vaalharts Phokwane	1 501 - 3 000	\N
district	DC9	2016	Vaalharts Phokwane	3 001 - 5 000	\N
district	DC9	2016	Vaalharts Phokwane	5 001 - 10 000	\N
district	DC9	2016	Vaalharts Phokwane	10 001 - 20 000	\N
district	DC9	2016	Vaalharts Phokwane	20 001 - 30 000	\N
district	DC9	2016	Vaalharts Phokwane	30 001 - 40 000	\N
district	DC9	2016	Vaalharts Phokwane	40 001 - 50 000	\N
district	DC9	2016	Vaalharts Phokwane	50 001 - 100 000	266
district	DC9	2016	Vaalharts Phokwane	100 001 - 150 000	135
district	DC9	2016	Vaalharts Phokwane	150 001 - 200 000	78
district	DC9	2016	Vaalharts Phokwane	200 001 - 300 000	337
district	DC9	2016	Vaalharts Phokwane	300 001 - 500 000	405
district	DC9	2016	Vaalharts Phokwane	500 001 - 800 000	39
district	DC9	2016	Vaalharts Phokwane	800 001 - 1 000 000	33
district	DC9	2016	Vaalharts Phokwane	> 1 000 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	< 1 500	18222
district	DC1	2016	Vanrynsdorp Matzikama	1 501 - 3 000	822
district	DC1	2016	Vanrynsdorp Matzikama	3 001 - 5 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	5 001 - 10 000	431
district	DC1	2016	Vanrynsdorp Matzikama	10 001 - 20 000	1213
district	DC1	2016	Vanrynsdorp Matzikama	20 001 - 30 000	247
district	DC1	2016	Vanrynsdorp Matzikama	30 001 - 40 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	40 001 - 50 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	50 001 - 100 000	118
district	DC1	2016	Vanrynsdorp Matzikama	100 001 - 150 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	150 001 - 200 000	37
district	DC1	2016	Vanrynsdorp Matzikama	200 001 - 300 000	50
district	DC1	2016	Vanrynsdorp Matzikama	300 001 - 500 000	48
district	DC1	2016	Vanrynsdorp Matzikama	500 001 - 800 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	800 001 - 1 000 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	> 1 000 000	\N
district	DC18	2016	Ventersburg Matjhabeng	< 1 500	\N
district	DC18	2016	Ventersburg Matjhabeng	1 501 - 3 000	684
district	DC18	2016	Ventersburg Matjhabeng	3 001 - 5 000	494
district	DC18	2016	Ventersburg Matjhabeng	5 001 - 10 000	1319
district	DC18	2016	Ventersburg Matjhabeng	10 001 - 20 000	1997
district	DC18	2016	Ventersburg Matjhabeng	20 001 - 30 000	10
district	DC18	2016	Ventersburg Matjhabeng	30 001 - 40 000	\N
district	DC18	2016	Ventersburg Matjhabeng	40 001 - 50 000	\N
district	DC18	2016	Ventersburg Matjhabeng	50 001 - 100 000	\N
district	DC18	2016	Ventersburg Matjhabeng	100 001 - 150 000	25
district	DC18	2016	Ventersburg Matjhabeng	150 001 - 200 000	\N
district	DC18	2016	Ventersburg Matjhabeng	200 001 - 300 000	\N
district	DC18	2016	Ventersburg Matjhabeng	300 001 - 500 000	\N
district	DC18	2016	Ventersburg Matjhabeng	500 001 - 800 000	\N
district	DC18	2016	Ventersburg Matjhabeng	800 001 - 1 000 000	\N
district	DC18	2016	Ventersburg Matjhabeng	> 1 000 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	< 1 500	\N
district	DC7	2016	Victoria-Wes Umbuntu	1 501 - 3 000	9951
district	DC7	2016	Victoria-Wes Umbuntu	3 001 - 5 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	5 001 - 10 000	2034
district	DC7	2016	Victoria-Wes Umbuntu	10 001 - 20 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	20 001 - 30 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	30 001 - 40 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	40 001 - 50 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	50 001 - 100 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	100 001 - 150 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	150 001 - 200 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	200 001 - 300 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	300 001 - 500 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	500 001 - 800 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	800 001 - 1 000 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	> 1 000 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	< 1 500	\N
district	DC20	2016	Viljoenskroon Moqhaka	1 501 - 3 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	3 001 - 5 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	5 001 - 10 000	298
district	DC20	2016	Viljoenskroon Moqhaka	10 001 - 20 000	1343
district	DC20	2016	Viljoenskroon Moqhaka	20 001 - 30 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	30 001 - 40 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	40 001 - 50 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	50 001 - 100 000	16
district	DC20	2016	Viljoenskroon Moqhaka	100 001 - 150 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	150 001 - 200 000	3803
district	DC20	2016	Viljoenskroon Moqhaka	200 001 - 300 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	300 001 - 500 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	500 001 - 800 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	800 001 - 1 000 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	> 1 000 000	\N
municipality	DC40	2016	Vostershoop	< 1 500	\N
municipality	DC40	2016	Vostershoop	1 501 - 3 000	\N
district	DC4	2016	Knysna	3 001 - 5 000	\N
municipality	DC40	2016	Vostershoop	3 001 - 5 000	\N
municipality	DC40	2016	Vostershoop	5 001 - 10 000	\N
municipality	DC40	2016	Vostershoop	10 001 - 20 000	302
municipality	DC40	2016	Vostershoop	20 001 - 30 000	\N
municipality	DC40	2016	Vostershoop	30 001 - 40 000	\N
municipality	DC40	2016	Vostershoop	40 001 - 50 000	\N
municipality	DC40	2016	Vostershoop	50 001 - 100 000	\N
municipality	DC40	2016	Vostershoop	100 001 - 150 000	\N
municipality	DC40	2016	Vostershoop	150 001 - 200 000	\N
municipality	DC40	2016	Vostershoop	200 001 - 300 000	\N
municipality	DC40	2016	Vostershoop	300 001 - 500 000	\N
municipality	DC40	2016	Vostershoop	500 001 - 800 000	\N
municipality	DC40	2016	Vostershoop	800 001 - 1 000 000	\N
municipality	DC40	2016	Vostershoop	> 1 000 000	\N
district	DC19	2016	Vrede Phumelela	< 1 500	472
district	DC19	2016	Vrede Phumelela	1 501 - 3 000	184
district	DC19	2016	Vrede Phumelela	3 001 - 5 000	866
district	DC19	2016	Vrede Phumelela	5 001 - 10 000	4561
district	DC19	2016	Vrede Phumelela	10 001 - 20 000	4574
district	DC19	2016	Vrede Phumelela	20 001 - 30 000	4386
district	DC19	2016	Vrede Phumelela	30 001 - 40 000	\N
district	DC19	2016	Vrede Phumelela	40 001 - 50 000	\N
district	DC19	2016	Vrede Phumelela	50 001 - 100 000	\N
district	DC19	2016	Vrede Phumelela	100 001 - 150 000	\N
district	DC19	2016	Vrede Phumelela	150 001 - 200 000	\N
district	DC19	2016	Vrede Phumelela	200 001 - 300 000	\N
district	DC19	2016	Vrede Phumelela	300 001 - 500 000	\N
district	DC19	2016	Vrede Phumelela	500 001 - 800 000	\N
district	DC19	2016	Vrede Phumelela	800 001 - 1 000 000	\N
district	DC19	2016	Vrede Phumelela	> 1 000 000	\N
district	DC20	2016	Vredefort Ngwathe	< 1 500	\N
district	DC20	2016	Vredefort Ngwathe	1 501 - 3 000	\N
district	DC20	2016	Vredefort Ngwathe	3 001 - 5 000	\N
district	DC20	2016	Vredefort Ngwathe	5 001 - 10 000	534
district	DC20	2016	Vredefort Ngwathe	10 001 - 20 000	2145
district	DC20	2016	Vredefort Ngwathe	20 001 - 30 000	31
district	DC20	2016	Vredefort Ngwathe	30 001 - 40 000	258
district	DC20	2016	Vredefort Ngwathe	40 001 - 50 000	\N
district	DC20	2016	Vredefort Ngwathe	50 001 - 100 000	\N
district	DC20	2016	Vredefort Ngwathe	100 001 - 150 000	\N
district	DC20	2016	Vredefort Ngwathe	150 001 - 200 000	\N
district	DC20	2016	Vredefort Ngwathe	200 001 - 300 000	\N
district	DC20	2016	Vredefort Ngwathe	300 001 - 500 000	\N
district	DC20	2016	Vredefort Ngwathe	500 001 - 800 000	\N
district	DC20	2016	Vredefort Ngwathe	800 001 - 1 000 000	\N
district	DC20	2016	Vredefort Ngwathe	> 1 000 000	\N
district	DC39	2016	Vryburg Naledi	< 1 500	\N
district	DC39	2016	Vryburg Naledi	1 501 - 3 000	1740
district	DC39	2016	Vryburg Naledi	3 001 - 5 000	3967
district	DC39	2016	Vryburg Naledi	5 001 - 10 000	17567
district	DC39	2016	Vryburg Naledi	10 001 - 20 000	1430
district	DC39	2016	Vryburg Naledi	20 001 - 30 000	366
district	DC39	2016	Vryburg Naledi	30 001 - 40 000	21
district	DC39	2016	Vryburg Naledi	40 001 - 50 000	\N
district	DC39	2016	Vryburg Naledi	50 001 - 100 000	\N
district	DC39	2016	Vryburg Naledi	100 001 - 150 000	16
district	DC39	2016	Vryburg Naledi	150 001 - 200 000	\N
district	DC39	2016	Vryburg Naledi	200 001 - 300 000	\N
district	DC39	2016	Vryburg Naledi	300 001 - 500 000	\N
district	DC39	2016	Vryburg Naledi	500 001 - 800 000	\N
district	DC39	2016	Vryburg Naledi	800 001 - 1 000 000	\N
district	DC39	2016	Vryburg Naledi	> 1 000 000	\N
district	DC26	2016	Vryheid Abaqulusi	< 1 500	\N
district	DC26	2016	Vryheid Abaqulusi	1 501 - 3 000	\N
district	DC26	2016	Vryheid Abaqulusi	3 001 - 5 000	\N
district	DC26	2016	Vryheid Abaqulusi	5 001 - 10 000	1041
district	DC26	2016	Vryheid Abaqulusi	10 001 - 20 000	\N
district	DC26	2016	Vryheid Abaqulusi	20 001 - 30 000	\N
district	DC26	2016	Vryheid Abaqulusi	30 001 - 40 000	\N
district	DC26	2016	Vryheid Abaqulusi	40 001 - 50 000	\N
district	DC26	2016	Vryheid Abaqulusi	50 001 - 100 000	\N
district	DC26	2016	Vryheid Abaqulusi	100 001 - 150 000	\N
district	DC26	2016	Vryheid Abaqulusi	150 001 - 200 000	\N
district	DC26	2016	Vryheid Abaqulusi	200 001 - 300 000	\N
district	DC26	2016	Vryheid Abaqulusi	300 001 - 500 000	\N
district	DC26	2016	Vryheid Abaqulusi	500 001 - 800 000	\N
district	DC26	2016	Vryheid Abaqulusi	800 001 - 1 000 000	\N
district	DC26	2016	Vryheid Abaqulusi	> 1 000 000	\N
district	DC18	2016	Welkom Matjhabeng	< 1 500	\N
district	DC18	2016	Welkom Matjhabeng	1 501 - 3 000	\N
district	DC18	2016	Welkom Matjhabeng	3 001 - 5 000	\N
district	DC18	2016	Welkom Matjhabeng	5 001 - 10 000	\N
district	DC18	2016	Welkom Matjhabeng	10 001 - 20 000	\N
district	DC18	2016	Welkom Matjhabeng	20 001 - 30 000	381
district	DC18	2016	Welkom Matjhabeng	30 001 - 40 000	\N
district	DC18	2016	Welkom Matjhabeng	40 001 - 50 000	\N
district	DC18	2016	Welkom Matjhabeng	50 001 - 100 000	\N
district	DC18	2016	Welkom Matjhabeng	100 001 - 150 000	\N
district	DC18	2016	Welkom Matjhabeng	150 001 - 200 000	\N
district	DC18	2016	Welkom Matjhabeng	200 001 - 300 000	\N
district	DC18	2016	Welkom Matjhabeng	300 001 - 500 000	\N
district	DC18	2016	Welkom Matjhabeng	500 001 - 800 000	\N
district	DC18	2016	Welkom Matjhabeng	800 001 - 1 000 000	\N
district	DC18	2016	Welkom Matjhabeng	> 1 000 000	\N
municipality	MAN	2016	Wepener Naledi	< 1 500	\N
municipality	MAN	2016	Wepener Naledi	1 501 - 3 000	1047
municipality	MAN	2016	Wepener Naledi	3 001 - 5 000	3089
municipality	MAN	2016	Wepener Naledi	5 001 - 10 000	460
municipality	MAN	2016	Wepener Naledi	10 001 - 20 000	\N
municipality	MAN	2016	Wepener Naledi	20 001 - 30 000	\N
municipality	MAN	2016	Wepener Naledi	30 001 - 40 000	\N
municipality	MAN	2016	Wepener Naledi	40 001 - 50 000	\N
municipality	MAN	2016	Wepener Naledi	50 001 - 100 000	\N
municipality	MAN	2016	Wepener Naledi	100 001 - 150 000	\N
municipality	MAN	2016	Wepener Naledi	150 001 - 200 000	\N
municipality	MAN	2016	Wepener Naledi	200 001 - 300 000	\N
municipality	MAN	2016	Wepener Naledi	300 001 - 500 000	\N
municipality	MAN	2016	Wepener Naledi	500 001 - 800 000	\N
municipality	MAN	2016	Wepener Naledi	800 001 - 1 000 000	\N
municipality	MAN	2016	Wepener Naledi	> 1 000 000	\N
district	DC18	2016	Wesselsbron Nala	< 1 500	\N
district	DC18	2016	Wesselsbron Nala	1 501 - 3 000	\N
district	DC18	2016	Wesselsbron Nala	3 001 - 5 000	\N
district	DC18	2016	Wesselsbron Nala	5 001 - 10 000	439
district	DC18	2016	Wesselsbron Nala	10 001 - 20 000	698
district	DC18	2016	Wesselsbron Nala	20 001 - 30 000	693
district	DC18	2016	Wesselsbron Nala	30 001 - 40 000	\N
district	DC18	2016	Wesselsbron Nala	40 001 - 50 000	\N
district	DC18	2016	Wesselsbron Nala	50 001 - 100 000	257
district	DC18	2016	Wesselsbron Nala	100 001 - 150 000	\N
district	DC18	2016	Wesselsbron Nala	150 001 - 200 000	\N
district	DC18	2016	Wesselsbron Nala	200 001 - 300 000	\N
district	DC18	2016	Wesselsbron Nala	300 001 - 500 000	\N
district	DC18	2016	Wesselsbron Nala	500 001 - 800 000	\N
district	DC18	2016	Wesselsbron Nala	800 001 - 1 000 000	\N
district	DC18	2016	Wesselsbron Nala	> 1 000 000	\N
district	DC10	2016	Willomore Baviaans	< 1 500	2110
district	DC10	2016	Willomore Baviaans	1 501 - 3 000	7817
district	DC10	2016	Willomore Baviaans	3 001 - 5 000	4226
district	DC10	2016	Willomore Baviaans	5 001 - 10 000	4029
district	DC10	2016	Willomore Baviaans	10 001 - 20 000	\N
district	DC10	2016	Willomore Baviaans	20 001 - 30 000	\N
district	DC10	2016	Willomore Baviaans	30 001 - 40 000	\N
district	DC10	2016	Willomore Baviaans	40 001 - 50 000	\N
district	DC10	2016	Willomore Baviaans	50 001 - 100 000	\N
district	DC10	2016	Willomore Baviaans	100 001 - 150 000	\N
district	DC10	2016	Willomore Baviaans	150 001 - 200 000	\N
district	DC10	2016	Willomore Baviaans	200 001 - 300 000	\N
district	DC10	2016	Willomore Baviaans	300 001 - 500 000	\N
district	DC10	2016	Willomore Baviaans	500 001 - 800 000	\N
district	DC10	2016	Willomore Baviaans	800 001 - 1 000 000	\N
district	DC10	2016	Willomore Baviaans	> 1 000 000	\N
district	DC18	2016	Winburg Masilonyana	< 1 500	\N
district	DC18	2016	Winburg Masilonyana	1 501 - 3 000	\N
district	DC18	2016	Winburg Masilonyana	3 001 - 5 000	\N
district	DC18	2016	Winburg Masilonyana	5 001 - 10 000	3735
district	DC18	2016	Winburg Masilonyana	10 001 - 20 000	1603
district	DC18	2016	Winburg Masilonyana	20 001 - 30 000	\N
district	DC18	2016	Winburg Masilonyana	30 001 - 40 000	\N
district	DC18	2016	Winburg Masilonyana	40 001 - 50 000	\N
district	DC18	2016	Winburg Masilonyana	50 001 - 100 000	\N
district	DC18	2016	Winburg Masilonyana	100 001 - 150 000	\N
district	DC18	2016	Winburg Masilonyana	150 001 - 200 000	\N
district	DC18	2016	Winburg Masilonyana	200 001 - 300 000	\N
district	DC18	2016	Winburg Masilonyana	300 001 - 500 000	\N
district	DC18	2016	Winburg Masilonyana	500 001 - 800 000	\N
district	DC18	2016	Winburg Masilonyana	800 001 - 1 000 000	\N
district	DC18	2016	Winburg Masilonyana	> 1 000 000	\N
district	DC14	2016	Wodehouse	< 1 500	17987
district	DC14	2016	Wodehouse	1 501 - 3 000	342
district	DC14	2016	Wodehouse	3 001 - 5 000	3684
district	DC14	2016	Wodehouse	5 001 - 10 000	4390
district	DC14	2016	Wodehouse	10 001 - 20 000	\N
district	DC14	2016	Wodehouse	20 001 - 30 000	\N
district	DC14	2016	Wodehouse	30 001 - 40 000	\N
district	DC14	2016	Wodehouse	40 001 - 50 000	\N
district	DC14	2016	Wodehouse	50 001 - 100 000	\N
district	DC14	2016	Wodehouse	100 001 - 150 000	\N
district	DC14	2016	Wodehouse	150 001 - 200 000	\N
district	DC14	2016	Wodehouse	200 001 - 300 000	\N
district	DC14	2016	Wodehouse	300 001 - 500 000	\N
district	DC14	2016	Wodehouse	500 001 - 800 000	\N
district	DC14	2016	Wodehouse	800 001 - 1 000 000	\N
district	DC14	2016	Wodehouse	> 1 000 000	\N
district	DC40	2016	Wolmaransstad Maquassi	< 1 500	\N
district	DC40	2016	Wolmaransstad Maquassi	1 501 - 3 000	\N
district	DC40	2016	Wolmaransstad Maquassi	3 001 - 5 000	546
district	DC40	2016	Wolmaransstad Maquassi	5 001 - 10 000	3006
district	DC40	2016	Wolmaransstad Maquassi	10 001 - 20 000	1305
district	DC40	2016	Wolmaransstad Maquassi	20 001 - 30 000	543
district	DC40	2016	Wolmaransstad Maquassi	30 001 - 40 000	370
district	DC40	2016	Wolmaransstad Maquassi	40 001 - 50 000	139
district	DC40	2016	Wolmaransstad Maquassi	50 001 - 100 000	\N
district	DC40	2016	Wolmaransstad Maquassi	100 001 - 150 000	\N
district	DC40	2016	Wolmaransstad Maquassi	150 001 - 200 000	\N
district	DC40	2016	Wolmaransstad Maquassi	200 001 - 300 000	\N
district	DC40	2016	Wolmaransstad Maquassi	300 001 - 500 000	\N
district	DC40	2016	Wolmaransstad Maquassi	500 001 - 800 000	\N
district	DC40	2016	Wolmaransstad Maquassi	800 001 - 1 000 000	\N
district	DC40	2016	Wolmaransstad Maquassi	> 1 000 000	\N
district	DC2	2016	Worcester Breede Valley	< 1 500	7209
district	DC2	2016	Worcester Breede Valley	1 501 - 3 000	2431
district	DC2	2016	Worcester Breede Valley	3 001 - 5 000	\N
district	DC2	2016	Worcester Breede Valley	5 001 - 10 000	5325
district	DC2	2016	Worcester Breede Valley	10 001 - 20 000	1154
district	DC2	2016	Worcester Breede Valley	20 001 - 30 000	7000
district	DC2	2016	Worcester Breede Valley	30 001 - 40 000	\N
district	DC2	2016	Worcester Breede Valley	40 001 - 50 000	333
district	DC2	2016	Worcester Breede Valley	50 001 - 100 000	100
district	DC2	2016	Worcester Breede Valley	100 001 - 150 000	535
district	DC2	2016	Worcester Breede Valley	150 001 - 200 000	65
district	DC2	2016	Worcester Breede Valley	200 001 - 300 000	113
district	DC2	2016	Worcester Breede Valley	300 001 - 500 000	\N
district	DC2	2016	Worcester Breede Valley	500 001 - 800 000	11
district	DC2	2016	Worcester Breede Valley	800 001 - 1 000 000	\N
district	DC2	2016	Worcester Breede Valley	> 1 000 000	\N
district	DC16	2016	Zastron Mohokare	< 1 500	\N
district	DC16	2016	Zastron Mohokare	1 501 - 3 000	1245
district	DC16	2016	Zastron Mohokare	3 001 - 5 000	1688
district	DC16	2016	Zastron Mohokare	5 001 - 10 000	969
district	DC16	2016	Zastron Mohokare	10 001 - 20 000	\N
district	DC16	2016	Zastron Mohokare	20 001 - 30 000	\N
district	DC16	2016	Zastron Mohokare	30 001 - 40 000	\N
district	DC16	2016	Zastron Mohokare	40 001 - 50 000	\N
district	DC16	2016	Zastron Mohokare	50 001 - 100 000	\N
district	DC16	2016	Zastron Mohokare	100 001 - 150 000	\N
district	DC16	2016	Zastron Mohokare	150 001 - 200 000	\N
district	DC16	2016	Zastron Mohokare	200 001 - 300 000	\N
district	DC16	2016	Zastron Mohokare	300 001 - 500 000	\N
district	DC16	2016	Zastron Mohokare	500 001 - 800 000	\N
district	DC16	2016	Zastron Mohokare	800 001 - 1 000 000	\N
district	DC16	2016	Zastron Mohokare	> 1 000 000	\N
district	DC38	2016	Zeerust Ramotshere	< 1 500	2194
district	DC38	2016	Zeerust Ramotshere	1 501 - 3 000	1958
district	DC38	2016	Zeerust Ramotshere	3 001 - 5 000	786
district	DC38	2016	Zeerust Ramotshere	5 001 - 10 000	11426
district	DC38	2016	Zeerust Ramotshere	10 001 - 20 000	8941
district	DC38	2016	Zeerust Ramotshere	20 001 - 30 000	3996
district	DC38	2016	Zeerust Ramotshere	30 001 - 40 000	326
district	DC38	2016	Zeerust Ramotshere	40 001 - 50 000	\N
district	DC38	2016	Zeerust Ramotshere	50 001 - 100 000	184
district	DC38	2016	Zeerust Ramotshere	100 001 - 150 000	53
district	DC38	2016	Zeerust Ramotshere	150 001 - 200 000	\N
district	DC38	2016	Zeerust Ramotshere	200 001 - 300 000	\N
district	DC38	2016	Zeerust Ramotshere	300 001 - 500 000	\N
district	DC38	2016	Zeerust Ramotshere	500 001 - 800 000	\N
district	DC38	2016	Zeerust Ramotshere	800 001 - 1 000 000	\N
district	DC38	2016	Zeerust Ramotshere	> 1 000 000	\N
district	DC10	2016	Aberdeen	< 1 500	\N
district	DC10	2016	Aberdeen	1 501 - 3 000	2046
district	DC10	2016	Aberdeen	3 001 - 5 000	\N
district	DC10	2016	Aberdeen	5 001 - 10 000	\N
district	DC10	2016	Aberdeen	10 001 - 20 000	\N
district	DC10	2016	Aberdeen	20 001 - 30 000	\N
district	DC10	2016	Aberdeen	30 001 - 40 000	\N
district	DC10	2016	Aberdeen	40 001 - 50 000	\N
district	DC10	2016	Aberdeen	50 001 - 100 000	\N
district	DC10	2016	Aberdeen	100 001 - 150 000	\N
district	DC10	2016	Aberdeen	150 001 - 200 000	\N
district	DC10	2016	Aberdeen	200 001 - 300 000	\N
district	DC10	2016	Aberdeen	300 001 - 500 000	\N
district	DC10	2016	Aberdeen	500 001 - 800 000	\N
district	DC10	2016	Aberdeen	800 001 - 1 000 000	\N
district	DC10	2016	Aberdeen	> 1 000 000	\N
district	DC10	2016	Albany	< 1 500	\N
district	DC10	2016	Albany	1 501 - 3 000	3077
district	DC10	2016	Albany	3 001 - 5 000	3145
district	DC10	2016	Albany	5 001 - 10 000	3253
district	DC10	2016	Albany	10 001 - 20 000	677
district	DC10	2016	Albany	20 001 - 30 000	768
district	DC10	2016	Albany	30 001 - 40 000	\N
district	DC10	2016	Albany	40 001 - 50 000	\N
district	DC10	2016	Albany	50 001 - 100 000	11
district	DC10	2016	Albany	100 001 - 150 000	\N
district	DC10	2016	Albany	150 001 - 200 000	14
district	DC10	2016	Albany	200 001 - 300 000	\N
district	DC10	2016	Albany	300 001 - 500 000	\N
district	DC10	2016	Albany	500 001 - 800 000	\N
district	DC10	2016	Albany	800 001 - 1 000 000	\N
district	DC10	2016	Albany	> 1 000 000	\N
district	DC10	2016	Alexandria Ndlambe	< 1 500	\N
district	DC10	2016	Alexandria Ndlambe	1 501 - 3 000	\N
district	DC10	2016	Alexandria Ndlambe	3 001 - 5 000	970
district	DC10	2016	Alexandria Ndlambe	5 001 - 10 000	2204
district	DC10	2016	Alexandria Ndlambe	10 001 - 20 000	555
district	DC10	2016	Alexandria Ndlambe	20 001 - 30 000	892
district	DC10	2016	Alexandria Ndlambe	30 001 - 40 000	110
district	DC10	2016	Alexandria Ndlambe	40 001 - 50 000	604
district	DC10	2016	Alexandria Ndlambe	50 001 - 100 000	\N
district	DC10	2016	Alexandria Ndlambe	100 001 - 150 000	\N
district	DC10	2016	Alexandria Ndlambe	150 001 - 200 000	\N
district	DC10	2016	Alexandria Ndlambe	200 001 - 300 000	\N
district	DC10	2016	Alexandria Ndlambe	300 001 - 500 000	25
district	DC10	2016	Alexandria Ndlambe	500 001 - 800 000	\N
district	DC10	2016	Alexandria Ndlambe	800 001 - 1 000 000	\N
district	DC10	2016	Alexandria Ndlambe	> 1 000 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	< 1 500	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	1 501 - 3 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	3 001 - 5 000	779
district	DC14	2016	Aliwal-Noord Maletsiwai	5 001 - 10 000	2045
district	DC14	2016	Aliwal-Noord Maletsiwai	10 001 - 20 000	1041
district	DC14	2016	Aliwal-Noord Maletsiwai	20 001 - 30 000	407
district	DC14	2016	Aliwal-Noord Maletsiwai	30 001 - 40 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	40 001 - 50 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	50 001 - 100 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	100 001 - 150 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	150 001 - 200 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	200 001 - 300 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	300 001 - 500 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	500 001 - 800 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	800 001 - 1 000 000	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	> 1 000 000	\N
district	DC14	2016	Barkly-Oos Senqu	< 1 500	\N
district	DC14	2016	Barkly-Oos Senqu	1 501 - 3 000	1348
district	DC14	2016	Barkly-Oos Senqu	3 001 - 5 000	508
district	DC14	2016	Barkly-Oos Senqu	5 001 - 10 000	4281
district	DC14	2016	Barkly-Oos Senqu	10 001 - 20 000	\N
district	DC14	2016	Barkly-Oos Senqu	20 001 - 30 000	\N
district	DC14	2016	Barkly-Oos Senqu	30 001 - 40 000	\N
district	DC14	2016	Barkly-Oos Senqu	40 001 - 50 000	\N
district	DC14	2016	Barkly-Oos Senqu	50 001 - 100 000	\N
district	DC14	2016	Barkly-Oos Senqu	100 001 - 150 000	\N
district	DC14	2016	Barkly-Oos Senqu	150 001 - 200 000	\N
district	DC14	2016	Barkly-Oos Senqu	200 001 - 300 000	\N
district	DC14	2016	Barkly-Oos Senqu	300 001 - 500 000	\N
district	DC14	2016	Barkly-Oos Senqu	500 001 - 800 000	\N
district	DC14	2016	Barkly-Oos Senqu	800 001 - 1 000 000	\N
district	DC14	2016	Barkly-Oos Senqu	> 1 000 000	\N
district	DC10	2016	Bathurst Ndlambe	< 1 500	\N
district	DC10	2016	Bathurst Ndlambe	1 501 - 3 000	\N
district	DC10	2016	Bathurst Ndlambe	3 001 - 5 000	\N
district	DC10	2016	Bathurst Ndlambe	5 001 - 10 000	1129
district	DC10	2016	Bathurst Ndlambe	10 001 - 20 000	2221
district	DC10	2016	Bathurst Ndlambe	20 001 - 30 000	\N
district	DC10	2016	Bathurst Ndlambe	30 001 - 40 000	\N
district	DC10	2016	Bathurst Ndlambe	40 001 - 50 000	104
district	DC10	2016	Bathurst Ndlambe	50 001 - 100 000	28
district	DC10	2016	Bathurst Ndlambe	100 001 - 150 000	55
district	DC10	2016	Bathurst Ndlambe	150 001 - 200 000	\N
district	DC10	2016	Bathurst Ndlambe	200 001 - 300 000	\N
district	DC10	2016	Bathurst Ndlambe	300 001 - 500 000	\N
district	DC10	2016	Bathurst Ndlambe	500 001 - 800 000	\N
district	DC10	2016	Bathurst Ndlambe	800 001 - 1 000 000	\N
district	DC10	2016	Bathurst Ndlambe	> 1 000 000	\N
district	DC12	2016	Bedford Amathole	< 1 500	\N
district	DC12	2016	Bedford Amathole	1 501 - 3 000	\N
district	DC12	2016	Bedford Amathole	3 001 - 5 000	\N
district	DC12	2016	Bedford Amathole	5 001 - 10 000	3591
district	DC12	2016	Bedford Amathole	10 001 - 20 000	\N
district	DC12	2016	Bedford Amathole	20 001 - 30 000	2707
district	DC12	2016	Bedford Amathole	30 001 - 40 000	\N
district	DC12	2016	Bedford Amathole	40 001 - 50 000	\N
district	DC12	2016	Bedford Amathole	50 001 - 100 000	\N
district	DC12	2016	Bedford Amathole	100 001 - 150 000	\N
district	DC12	2016	Bedford Amathole	150 001 - 200 000	\N
district	DC12	2016	Bedford Amathole	200 001 - 300 000	52
district	DC12	2016	Bedford Amathole	300 001 - 500 000	\N
district	DC12	2016	Bedford Amathole	500 001 - 800 000	\N
district	DC12	2016	Bedford Amathole	800 001 - 1 000 000	\N
district	DC12	2016	Bedford Amathole	> 1 000 000	\N
district	DC12	2016	Cathcart Amahlathi	< 1 500	\N
district	DC12	2016	Cathcart Amahlathi	1 501 - 3 000	\N
district	DC12	2016	Cathcart Amahlathi	3 001 - 5 000	641
district	DC12	2016	Cathcart Amahlathi	5 001 - 10 000	2390
district	DC12	2016	Cathcart Amahlathi	10 001 - 20 000	\N
district	DC12	2016	Cathcart Amahlathi	20 001 - 30 000	\N
district	DC12	2016	Cathcart Amahlathi	30 001 - 40 000	\N
district	DC12	2016	Cathcart Amahlathi	40 001 - 50 000	\N
district	DC12	2016	Cathcart Amahlathi	50 001 - 100 000	22
district	DC12	2016	Cathcart Amahlathi	100 001 - 150 000	\N
district	DC12	2016	Cathcart Amahlathi	150 001 - 200 000	\N
district	DC12	2016	Cathcart Amahlathi	200 001 - 300 000	\N
district	DC12	2016	Cathcart Amahlathi	300 001 - 500 000	\N
district	DC12	2016	Cathcart Amahlathi	500 001 - 800 000	\N
district	DC12	2016	Cathcart Amahlathi	800 001 - 1 000 000	\N
district	DC12	2016	Cathcart Amahlathi	> 1 000 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	< 1 500	\N
district	DC13	2016	Cradock Inxuba Yethemba	1 501 - 3 000	3897
district	DC13	2016	Cradock Inxuba Yethemba	3 001 - 5 000	10428
district	DC13	2016	Cradock Inxuba Yethemba	5 001 - 10 000	5977
district	DC13	2016	Cradock Inxuba Yethemba	10 001 - 20 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	20 001 - 30 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	30 001 - 40 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	40 001 - 50 000	559
district	DC13	2016	Cradock Inxuba Yethemba	50 001 - 100 000	508
district	DC13	2016	Cradock Inxuba Yethemba	100 001 - 150 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	150 001 - 200 000	141
district	DC13	2016	Cradock Inxuba Yethemba	200 001 - 300 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	300 001 - 500 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	500 001 - 800 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	800 001 - 1 000 000	\N
district	DC13	2016	Cradock Inxuba Yethemba	> 1 000 000	\N
district	DC14	2016	Elliot Sakhiszwe	< 1 500	\N
district	DC14	2016	Elliot Sakhiszwe	1 501 - 3 000	136
district	DC14	2016	Elliot Sakhiszwe	3 001 - 5 000	1422
district	DC14	2016	Elliot Sakhiszwe	5 001 - 10 000	1167
district	DC14	2016	Elliot Sakhiszwe	10 001 - 20 000	\N
district	DC14	2016	Elliot Sakhiszwe	20 001 - 30 000	531
district	DC14	2016	Elliot Sakhiszwe	30 001 - 40 000	\N
district	DC14	2016	Elliot Sakhiszwe	40 001 - 50 000	37
district	DC14	2016	Elliot Sakhiszwe	50 001 - 100 000	12
district	DC14	2016	Elliot Sakhiszwe	100 001 - 150 000	\N
district	DC14	2016	Elliot Sakhiszwe	150 001 - 200 000	\N
district	DC14	2016	Elliot Sakhiszwe	200 001 - 300 000	\N
district	DC14	2016	Elliot Sakhiszwe	300 001 - 500 000	\N
district	DC14	2016	Elliot Sakhiszwe	500 001 - 800 000	\N
district	DC14	2016	Elliot Sakhiszwe	800 001 - 1 000 000	\N
district	DC14	2016	Elliot Sakhiszwe	> 1 000 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	< 1 500	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	1 501 - 3 000	702
district	DC12	2016	Fort Beaufort Raymond Mhlaba	3 001 - 5 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	5 001 - 10 000	723
district	DC12	2016	Fort Beaufort Raymond Mhlaba	10 001 - 20 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	20 001 - 30 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	30 001 - 40 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	40 001 - 50 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	50 001 - 100 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	100 001 - 150 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	150 001 - 200 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	200 001 - 300 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	300 001 - 500 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	500 001 - 800 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	800 001 - 1 000 000	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	> 1 000 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	< 1 500	1937
district	DC10	2016	Graaff-Reinet Camdeboo	1 501 - 3 000	1937
district	DC10	2016	Graaff-Reinet Camdeboo	3 001 - 5 000	5804
district	DC10	2016	Graaff-Reinet Camdeboo	5 001 - 10 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	10 001 - 20 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	20 001 - 30 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	30 001 - 40 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	40 001 - 50 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	50 001 - 100 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	100 001 - 150 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	150 001 - 200 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	200 001 - 300 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	300 001 - 500 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	500 001 - 800 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	800 001 - 1 000 000	\N
district	DC10	2016	Graaff-Reinet Camdeboo	> 1 000 000	\N
district	DC10	2016	Humansdorp Kouga	< 1 500	2184
district	DC10	2016	Humansdorp Kouga	1 501 - 3 000	1287
district	DC10	2016	Humansdorp Kouga	3 001 - 5 000	\N
district	DC10	2016	Humansdorp Kouga	5 001 - 10 000	152
district	DC10	2016	Humansdorp Kouga	10 001 - 20 000	2254
district	DC10	2016	Humansdorp Kouga	20 001 - 30 000	124
district	DC10	2016	Humansdorp Kouga	30 001 - 40 000	592
district	DC10	2016	Humansdorp Kouga	40 001 - 50 000	190
district	DC10	2016	Humansdorp Kouga	50 001 - 100 000	828
district	DC10	2016	Humansdorp Kouga	100 001 - 150 000	21
district	DC10	2016	Humansdorp Kouga	150 001 - 200 000	\N
district	DC10	2016	Humansdorp Kouga	200 001 - 300 000	21
district	DC10	2016	Humansdorp Kouga	300 001 - 500 000	40
district	DC10	2016	Humansdorp Kouga	500 001 - 800 000	47
district	DC10	2016	Humansdorp Kouga	800 001 - 1 000 000	\N
district	DC10	2016	Humansdorp Kouga	> 1 000 000	12
district	DC10	2016	Jansenville Ikwezi	< 1 500	\N
district	DC10	2016	Jansenville Ikwezi	1 501 - 3 000	3927
district	DC10	2016	Jansenville Ikwezi	3 001 - 5 000	2288
district	DC10	2016	Jansenville Ikwezi	5 001 - 10 000	\N
district	DC10	2016	Jansenville Ikwezi	10 001 - 20 000	\N
district	DC10	2016	Jansenville Ikwezi	20 001 - 30 000	\N
district	DC10	2016	Jansenville Ikwezi	30 001 - 40 000	\N
district	DC10	2016	Jansenville Ikwezi	40 001 - 50 000	\N
district	DC10	2016	Jansenville Ikwezi	50 001 - 100 000	\N
district	DC10	2016	Jansenville Ikwezi	100 001 - 150 000	\N
district	DC10	2016	Jansenville Ikwezi	150 001 - 200 000	\N
district	DC10	2016	Jansenville Ikwezi	200 001 - 300 000	\N
district	DC10	2016	Jansenville Ikwezi	300 001 - 500 000	\N
district	DC10	2016	Jansenville Ikwezi	500 001 - 800 000	\N
district	DC10	2016	Jansenville Ikwezi	800 001 - 1 000 000	\N
district	DC10	2016	Jansenville Ikwezi	> 1 000 000	\N
district	DC10	2016	Joubertina Kou-Kamma	< 1 500	499
district	DC10	2016	Joubertina Kou-Kamma	1 501 - 3 000	296
district	DC10	2016	Joubertina Kou-Kamma	3 001 - 5 000	\N
district	DC10	2016	Joubertina Kou-Kamma	5 001 - 10 000	89
district	DC10	2016	Joubertina Kou-Kamma	10 001 - 20 000	150
district	DC10	2016	Joubertina Kou-Kamma	20 001 - 30 000	\N
district	DC10	2016	Joubertina Kou-Kamma	30 001 - 40 000	36
district	DC10	2016	Joubertina Kou-Kamma	40 001 - 50 000	32
district	DC10	2016	Joubertina Kou-Kamma	50 001 - 100 000	12
district	DC10	2016	Joubertina Kou-Kamma	100 001 - 150 000	\N
district	DC10	2016	Joubertina Kou-Kamma	150 001 - 200 000	\N
district	DC10	2016	Joubertina Kou-Kamma	200 001 - 300 000	\N
district	DC10	2016	Joubertina Kou-Kamma	300 001 - 500 000	95
district	DC10	2016	Joubertina Kou-Kamma	500 001 - 800 000	\N
district	DC10	2016	Joubertina Kou-Kamma	800 001 - 1 000 000	\N
district	DC10	2016	Joubertina Kou-Kamma	> 1 000 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	< 1 500	508
municipality	BUF	2016	King Williams Town Baffalo City	1 501 - 3 000	2560
municipality	BUF	2016	King Williams Town Baffalo City	3 001 - 5 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	5 001 - 10 000	2547
municipality	BUF	2016	King Williams Town Baffalo City	10 001 - 20 000	400
municipality	BUF	2016	King Williams Town Baffalo City	20 001 - 30 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	30 001 - 40 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	40 001 - 50 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	50 001 - 100 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	100 001 - 150 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	150 001 - 200 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	200 001 - 300 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	300 001 - 500 000	183
municipality	BUF	2016	King Williams Town Baffalo City	500 001 - 800 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	800 001 - 1 000 000	\N
municipality	BUF	2016	King Williams Town Baffalo City	> 1 000 000	\N
district	DC12	2016	Komga Great Kei	< 1 500	\N
district	DC12	2016	Komga Great Kei	1 501 - 3 000	243
district	DC12	2016	Komga Great Kei	3 001 - 5 000	\N
district	DC12	2016	Komga Great Kei	5 001 - 10 000	2819
district	DC12	2016	Komga Great Kei	10 001 - 20 000	\N
district	DC12	2016	Komga Great Kei	20 001 - 30 000	87
district	DC12	2016	Komga Great Kei	30 001 - 40 000	419
district	DC12	2016	Komga Great Kei	40 001 - 50 000	\N
district	DC12	2016	Komga Great Kei	50 001 - 100 000	\N
district	DC12	2016	Komga Great Kei	100 001 - 150 000	\N
district	DC12	2016	Komga Great Kei	150 001 - 200 000	\N
district	DC12	2016	Komga Great Kei	200 001 - 300 000	\N
district	DC12	2016	Komga Great Kei	300 001 - 500 000	\N
district	DC12	2016	Komga Great Kei	500 001 - 800 000	\N
district	DC12	2016	Komga Great Kei	800 001 - 1 000 000	\N
district	DC12	2016	Komga Great Kei	> 1 000 000	\N
district	DC14	2016	Maclear Elundini	< 1 500	\N
district	DC14	2016	Maclear Elundini	1 501 - 3 000	3622
district	DC14	2016	Maclear Elundini	3 001 - 5 000	755
district	DC14	2016	Maclear Elundini	5 001 - 10 000	767
district	DC14	2016	Maclear Elundini	10 001 - 20 000	1764
district	DC14	2016	Maclear Elundini	20 001 - 30 000	\N
district	DC14	2016	Maclear Elundini	30 001 - 40 000	\N
district	DC14	2016	Maclear Elundini	40 001 - 50 000	\N
district	DC14	2016	Maclear Elundini	50 001 - 100 000	\N
district	DC14	2016	Maclear Elundini	100 001 - 150 000	\N
district	DC14	2016	Maclear Elundini	150 001 - 200 000	\N
district	DC14	2016	Maclear Elundini	200 001 - 300 000	\N
district	DC14	2016	Maclear Elundini	300 001 - 500 000	\N
district	DC14	2016	Maclear Elundini	500 001 - 800 000	\N
district	DC14	2016	Maclear Elundini	800 001 - 1 000 000	\N
district	DC14	2016	Maclear Elundini	> 1 000 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	< 1 500	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	1 501 - 3 000	8815
district	DC13	2016	Middelburg EC Inxuba Yethemba	3 001 - 5 000	12282
district	DC13	2016	Middelburg EC Inxuba Yethemba	5 001 - 10 000	1487
district	DC13	2016	Middelburg EC Inxuba Yethemba	10 001 - 20 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	20 001 - 30 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	30 001 - 40 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	40 001 - 50 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	50 001 - 100 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	100 001 - 150 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	150 001 - 200 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	200 001 - 300 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	300 001 - 500 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	500 001 - 800 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	800 001 - 1 000 000	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	> 1 000 000	\N
district	DC13	2016	Molteno Inkwanca	< 1 500	\N
district	DC13	2016	Molteno Inkwanca	1 501 - 3 000	369
district	DC13	2016	Molteno Inkwanca	3 001 - 5 000	2573
district	DC13	2016	Molteno Inkwanca	5 001 - 10 000	375
district	DC13	2016	Molteno Inkwanca	10 001 - 20 000	\N
district	DC13	2016	Molteno Inkwanca	20 001 - 30 000	\N
district	DC13	2016	Molteno Inkwanca	30 001 - 40 000	\N
district	DC13	2016	Molteno Inkwanca	40 001 - 50 000	\N
district	DC13	2016	Molteno Inkwanca	50 001 - 100 000	\N
district	DC13	2016	Molteno Inkwanca	100 001 - 150 000	\N
district	DC13	2016	Molteno Inkwanca	150 001 - 200 000	\N
district	DC13	2016	Molteno Inkwanca	200 001 - 300 000	\N
district	DC13	2016	Molteno Inkwanca	300 001 - 500 000	\N
district	DC13	2016	Molteno Inkwanca	500 001 - 800 000	\N
district	DC13	2016	Molteno Inkwanca	800 001 - 1 000 000	\N
district	DC13	2016	Molteno Inkwanca	> 1 000 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	< 1 500	1265
district	DC15	2016	Mthatha King Sabata Dalindyebo	1 501 - 3 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	3 001 - 5 000	1046
district	DC15	2016	Mthatha King Sabata Dalindyebo	5 001 - 10 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	10 001 - 20 000	1013
district	DC15	2016	Mthatha King Sabata Dalindyebo	20 001 - 30 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	30 001 - 40 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	40 001 - 50 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	50 001 - 100 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	100 001 - 150 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	150 001 - 200 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	200 001 - 300 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	300 001 - 500 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	500 001 - 800 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	800 001 - 1 000 000	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	> 1 000 000	\N
municipality	BUF	2016	Oos-Londen Baffalo City	< 1 500	\N
municipality	BUF	2016	Oos-Londen Baffalo City	1 501 - 3 000	\N
municipality	BUF	2016	Oos-Londen Baffalo City	3 001 - 5 000	\N
municipality	BUF	2016	Oos-Londen Baffalo City	5 001 - 10 000	269
municipality	BUF	2016	Oos-Londen Baffalo City	10 001 - 20 000	467
municipality	BUF	2016	Oos-Londen Baffalo City	20 001 - 30 000	229
municipality	BUF	2016	Oos-Londen Baffalo City	30 001 - 40 000	\N
municipality	BUF	2016	Oos-Londen Baffalo City	40 001 - 50 000	87
municipality	BUF	2016	Oos-Londen Baffalo City	50 001 - 100 000	307
municipality	BUF	2016	Oos-Londen Baffalo City	100 001 - 150 000	90
municipality	BUF	2016	Oos-Londen Baffalo City	150 001 - 200 000	123
municipality	BUF	2016	Oos-Londen Baffalo City	200 001 - 300 000	48
municipality	BUF	2016	Oos-Londen Baffalo City	300 001 - 500 000	43
municipality	BUF	2016	Oos-Londen Baffalo City	500 001 - 800 000	\N
municipality	BUF	2016	Oos-Londen Baffalo City	800 001 - 1 000 000	15
municipality	BUF	2016	Oos-Londen Baffalo City	> 1 000 000	\N
district	DC10	2016	Pearston Blue Crane	< 1 500	\N
district	DC10	2016	Pearston Blue Crane	1 501 - 3 000	\N
district	DC10	2016	Pearston Blue Crane	3 001 - 5 000	\N
district	DC10	2016	Pearston Blue Crane	5 001 - 10 000	8955
district	DC10	2016	Pearston Blue Crane	10 001 - 20 000	483
district	DC10	2016	Pearston Blue Crane	20 001 - 30 000	\N
district	DC10	2016	Pearston Blue Crane	30 001 - 40 000	\N
district	DC10	2016	Pearston Blue Crane	40 001 - 50 000	\N
district	DC10	2016	Pearston Blue Crane	50 001 - 100 000	103
district	DC10	2016	Pearston Blue Crane	100 001 - 150 000	\N
district	DC10	2016	Pearston Blue Crane	150 001 - 200 000	\N
district	DC10	2016	Pearston Blue Crane	200 001 - 300 000	\N
district	DC10	2016	Pearston Blue Crane	300 001 - 500 000	\N
district	DC10	2016	Pearston Blue Crane	500 001 - 800 000	\N
district	DC10	2016	Pearston Blue Crane	800 001 - 1 000 000	\N
district	DC10	2016	Pearston Blue Crane	> 1 000 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	< 1 500	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	1 501 - 3 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	3 001 - 5 000	172
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	5 001 - 10 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	10 001 - 20 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	20 001 - 30 000	34
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	30 001 - 40 000	32
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	40 001 - 50 000	43
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	50 001 - 100 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	100 001 - 150 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	150 001 - 200 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	200 001 - 300 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	300 001 - 500 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	500 001 - 800 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	800 001 - 1 000 000	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	> 1 000 000	\N
district	DC13	2016	Queenstown Lukanji	< 1 500	\N
district	DC13	2016	Queenstown Lukanji	1 501 - 3 000	1631
district	DC13	2016	Queenstown Lukanji	3 001 - 5 000	\N
district	DC13	2016	Queenstown Lukanji	5 001 - 10 000	754
district	DC13	2016	Queenstown Lukanji	10 001 - 20 000	\N
district	DC13	2016	Queenstown Lukanji	20 001 - 30 000	\N
district	DC13	2016	Queenstown Lukanji	30 001 - 40 000	\N
district	DC13	2016	Queenstown Lukanji	40 001 - 50 000	\N
district	DC13	2016	Queenstown Lukanji	50 001 - 100 000	\N
district	DC13	2016	Queenstown Lukanji	100 001 - 150 000	\N
district	DC13	2016	Queenstown Lukanji	150 001 - 200 000	\N
district	DC13	2016	Queenstown Lukanji	200 001 - 300 000	\N
district	DC13	2016	Queenstown Lukanji	300 001 - 500 000	\N
district	DC13	2016	Queenstown Lukanji	500 001 - 800 000	\N
district	DC13	2016	Queenstown Lukanji	800 001 - 1 000 000	\N
district	DC13	2016	Queenstown Lukanji	> 1 000 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	< 1 500	\N
district	DC10	2016	Somerset-Oos Blue Crane	1 501 - 3 000	3961
district	DC10	2016	Somerset-Oos Blue Crane	3 001 - 5 000	2805
district	DC10	2016	Somerset-Oos Blue Crane	5 001 - 10 000	3210
district	DC10	2016	Somerset-Oos Blue Crane	10 001 - 20 000	1558
district	DC10	2016	Somerset-Oos Blue Crane	20 001 - 30 000	728
district	DC10	2016	Somerset-Oos Blue Crane	30 001 - 40 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	40 001 - 50 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	50 001 - 100 000	43
district	DC10	2016	Somerset-Oos Blue Crane	100 001 - 150 000	119
district	DC10	2016	Somerset-Oos Blue Crane	150 001 - 200 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	200 001 - 300 000	43
district	DC10	2016	Somerset-Oos Blue Crane	300 001 - 500 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	500 001 - 800 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	800 001 - 1 000 000	\N
district	DC10	2016	Somerset-Oos Blue Crane	> 1 000 000	\N
district	DC14	2016	Steynsburg Gariep	< 1 500	\N
district	DC14	2016	Steynsburg Gariep	1 501 - 3 000	2659
district	DC14	2016	Steynsburg Gariep	3 001 - 5 000	2465
district	DC14	2016	Steynsburg Gariep	5 001 - 10 000	396
district	DC14	2016	Steynsburg Gariep	10 001 - 20 000	\N
district	DC14	2016	Steynsburg Gariep	20 001 - 30 000	\N
district	DC14	2016	Steynsburg Gariep	30 001 - 40 000	\N
district	DC14	2016	Steynsburg Gariep	40 001 - 50 000	\N
district	DC14	2016	Steynsburg Gariep	50 001 - 100 000	\N
district	DC14	2016	Steynsburg Gariep	100 001 - 150 000	\N
district	DC14	2016	Steynsburg Gariep	150 001 - 200 000	\N
district	DC14	2016	Steynsburg Gariep	200 001 - 300 000	\N
district	DC14	2016	Steynsburg Gariep	300 001 - 500 000	\N
district	DC14	2016	Steynsburg Gariep	500 001 - 800 000	\N
district	DC14	2016	Steynsburg Gariep	800 001 - 1 000 000	\N
district	DC14	2016	Steynsburg Gariep	> 1 000 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	< 1 500	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	1 501 - 3 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	3 001 - 5 000	2690
district	DC10	2016	Steytlerville Dr Beyers Naude	5 001 - 10 000	4600
district	DC10	2016	Steytlerville Dr Beyers Naude	10 001 - 20 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	20 001 - 30 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	30 001 - 40 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	40 001 - 50 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	50 001 - 100 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	100 001 - 150 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	150 001 - 200 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	200 001 - 300 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	300 001 - 500 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	500 001 - 800 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	800 001 - 1 000 000	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	> 1 000 000	\N
district	DC12	2016	Stutterheim Amahlathi	< 1 500	\N
district	DC12	2016	Stutterheim Amahlathi	1 501 - 3 000	\N
district	DC12	2016	Stutterheim Amahlathi	3 001 - 5 000	\N
district	DC12	2016	Stutterheim Amahlathi	5 001 - 10 000	1127
district	DC12	2016	Stutterheim Amahlathi	10 001 - 20 000	706
district	DC12	2016	Stutterheim Amahlathi	20 001 - 30 000	89
district	DC12	2016	Stutterheim Amahlathi	30 001 - 40 000	\N
district	DC12	2016	Stutterheim Amahlathi	40 001 - 50 000	16
district	DC12	2016	Stutterheim Amahlathi	50 001 - 100 000	\N
district	DC12	2016	Stutterheim Amahlathi	100 001 - 150 000	\N
district	DC12	2016	Stutterheim Amahlathi	150 001 - 200 000	\N
district	DC12	2016	Stutterheim Amahlathi	200 001 - 300 000	\N
district	DC12	2016	Stutterheim Amahlathi	300 001 - 500 000	\N
district	DC12	2016	Stutterheim Amahlathi	500 001 - 800 000	\N
district	DC12	2016	Stutterheim Amahlathi	800 001 - 1 000 000	\N
district	DC12	2016	Stutterheim Amahlathi	> 1 000 000	\N
district	DC13	2016	Tarkastad Tsolwana	< 1 500	\N
district	DC13	2016	Tarkastad Tsolwana	1 501 - 3 000	1394
district	DC13	2016	Tarkastad Tsolwana	3 001 - 5 000	5413
district	DC13	2016	Tarkastad Tsolwana	5 001 - 10 000	6994
district	DC13	2016	Tarkastad Tsolwana	10 001 - 20 000	16
district	DC13	2016	Tarkastad Tsolwana	20 001 - 30 000	20
district	DC13	2016	Tarkastad Tsolwana	30 001 - 40 000	\N
district	DC13	2016	Tarkastad Tsolwana	40 001 - 50 000	\N
district	DC13	2016	Tarkastad Tsolwana	50 001 - 100 000	107
district	DC13	2016	Tarkastad Tsolwana	100 001 - 150 000	\N
district	DC13	2016	Tarkastad Tsolwana	150 001 - 200 000	\N
district	DC13	2016	Tarkastad Tsolwana	200 001 - 300 000	\N
district	DC13	2016	Tarkastad Tsolwana	300 001 - 500 000	\N
district	DC13	2016	Tarkastad Tsolwana	500 001 - 800 000	\N
district	DC13	2016	Tarkastad Tsolwana	800 001 - 1 000 000	\N
district	DC13	2016	Tarkastad Tsolwana	> 1 000 000	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	< 1 500	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	1 501 - 3 000	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	3 001 - 5 000	970
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	5 001 - 10 000	1777
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	10 001 - 20 000	1956
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	20 001 - 30 000	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	30 001 - 40 000	118
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	40 001 - 50 000	199
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	50 001 - 100 000	129
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	100 001 - 150 000	59
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	150 001 - 200 000	34
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	200 001 - 300 000	16
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	300 001 - 500 000	160
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	500 001 - 800 000	97
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	800 001 - 1 000 000	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	> 1 000 000	\N
district	DC44	2016	Uniondale	< 1 500	1492
district	DC44	2016	Uniondale	1 501 - 3 000	2252
district	DC44	2016	Uniondale	3 001 - 5 000	120
district	DC44	2016	Uniondale	5 001 - 10 000	3688
district	DC44	2016	Uniondale	10 001 - 20 000	\N
district	DC44	2016	Uniondale	20 001 - 30 000	1272
district	DC44	2016	Uniondale	30 001 - 40 000	\N
district	DC44	2016	Uniondale	40 001 - 50 000	81
district	DC44	2016	Uniondale	50 001 - 100 000	\N
district	DC44	2016	Uniondale	100 001 - 150 000	\N
district	DC44	2016	Uniondale	150 001 - 200 000	161
district	DC44	2016	Uniondale	200 001 - 300 000	\N
district	DC44	2016	Uniondale	300 001 - 500 000	\N
district	DC44	2016	Uniondale	500 001 - 800 000	\N
district	DC44	2016	Uniondale	800 001 - 1 000 000	\N
district	DC44	2016	Uniondale	> 1 000 000	\N
district	DC10	2016	Willomore Baviaans	< 1 500	2110
district	DC10	2016	Willomore Baviaans	1 501 - 3 000	7817
district	DC10	2016	Willomore Baviaans	3 001 - 5 000	4226
district	DC10	2016	Willomore Baviaans	5 001 - 10 000	4029
district	DC10	2016	Willomore Baviaans	10 001 - 20 000	\N
district	DC10	2016	Willomore Baviaans	20 001 - 30 000	\N
district	DC10	2016	Willomore Baviaans	30 001 - 40 000	\N
district	DC10	2016	Willomore Baviaans	40 001 - 50 000	\N
district	DC10	2016	Willomore Baviaans	50 001 - 100 000	\N
district	DC10	2016	Willomore Baviaans	100 001 - 150 000	\N
district	DC10	2016	Willomore Baviaans	150 001 - 200 000	\N
district	DC10	2016	Willomore Baviaans	200 001 - 300 000	\N
district	DC10	2016	Willomore Baviaans	300 001 - 500 000	\N
district	DC10	2016	Willomore Baviaans	500 001 - 800 000	\N
district	DC10	2016	Willomore Baviaans	800 001 - 1 000 000	\N
district	DC10	2016	Willomore Baviaans	> 1 000 000	\N
district	DC14	2016	Wodehouse	< 1 500	17987
district	DC14	2016	Wodehouse	1 501 - 3 000	342
district	DC14	2016	Wodehouse	3 001 - 5 000	3684
district	DC14	2016	Wodehouse	5 001 - 10 000	4390
district	DC14	2016	Wodehouse	10 001 - 20 000	\N
district	DC14	2016	Wodehouse	20 001 - 30 000	\N
district	DC14	2016	Wodehouse	30 001 - 40 000	\N
district	DC14	2016	Wodehouse	40 001 - 50 000	\N
district	DC14	2016	Wodehouse	50 001 - 100 000	\N
district	DC14	2016	Wodehouse	100 001 - 150 000	\N
district	DC14	2016	Wodehouse	150 001 - 200 000	\N
district	DC14	2016	Wodehouse	200 001 - 300 000	\N
district	DC14	2016	Wodehouse	300 001 - 500 000	\N
district	DC14	2016	Wodehouse	500 001 - 800 000	\N
district	DC14	2016	Wodehouse	800 001 - 1 000 000	\N
district	DC14	2016	Wodehouse	> 1 000 000	\N
district	DC19	2016	Bethlehem Dihlabeng	< 1 500	737
district	DC19	2016	Bethlehem Dihlabeng	1 501 - 3 000	\N
district	DC19	2016	Bethlehem Dihlabeng	3 001 - 5 000	\N
district	DC19	2016	Bethlehem Dihlabeng	5 001 - 10 000	256
district	DC19	2016	Bethlehem Dihlabeng	10 001 - 20 000	1876
district	DC19	2016	Bethlehem Dihlabeng	20 001 - 30 000	3525
district	DC19	2016	Bethlehem Dihlabeng	30 001 - 40 000	1375
district	DC19	2016	Bethlehem Dihlabeng	40 001 - 50 000	335
district	DC19	2016	Bethlehem Dihlabeng	50 001 - 100 000	\N
district	DC19	2016	Bethlehem Dihlabeng	100 001 - 150 000	\N
district	DC19	2016	Bethlehem Dihlabeng	150 001 - 200 000	\N
district	DC19	2016	Bethlehem Dihlabeng	200 001 - 300 000	\N
district	DC19	2016	Bethlehem Dihlabeng	300 001 - 500 000	\N
district	DC19	2016	Bethlehem Dihlabeng	500 001 - 800 000	12
district	DC19	2016	Bethlehem Dihlabeng	800 001 - 1 000 000	\N
district	DC19	2016	Bethlehem Dihlabeng	> 1 000 000	\N
district	DC16	2016	Bethulie	< 1 500	\N
district	DC16	2016	Bethulie	1 501 - 3 000	\N
district	DC16	2016	Bethulie	3 001 - 5 000	\N
district	DC16	2016	Bethulie	5 001 - 10 000	2880
district	DC16	2016	Bethulie	10 001 - 20 000	357
district	DC16	2016	Bethulie	20 001 - 30 000	\N
district	DC16	2016	Bethulie	30 001 - 40 000	\N
district	DC16	2016	Bethulie	40 001 - 50 000	\N
district	DC16	2016	Bethulie	50 001 - 100 000	\N
district	DC16	2016	Bethulie	100 001 - 150 000	\N
district	DC16	2016	Bethulie	150 001 - 200 000	\N
district	DC16	2016	Bethulie	200 001 - 300 000	\N
district	DC16	2016	Bethulie	300 001 - 500 000	\N
district	DC16	2016	Bethulie	500 001 - 800 000	\N
district	DC16	2016	Bethulie	800 001 - 1 000 000	\N
district	DC16	2016	Bethulie	> 1 000 000	\N
municipality	MAN	2016	Bloemfontein Mangaung	< 1 500	\N
municipality	MAN	2016	Bloemfontein Mangaung	1 501 - 3 000	306
municipality	MAN	2016	Bloemfontein Mangaung	3 001 - 5 000	5514
municipality	MAN	2016	Bloemfontein Mangaung	5 001 - 10 000	5653
municipality	MAN	2016	Bloemfontein Mangaung	10 001 - 20 000	6544
municipality	MAN	2016	Bloemfontein Mangaung	20 001 - 30 000	1294
municipality	MAN	2016	Bloemfontein Mangaung	30 001 - 40 000	274
municipality	MAN	2016	Bloemfontein Mangaung	40 001 - 50 000	115
municipality	MAN	2016	Bloemfontein Mangaung	50 001 - 100 000	287
municipality	MAN	2016	Bloemfontein Mangaung	100 001 - 150 000	143
municipality	MAN	2016	Bloemfontein Mangaung	150 001 - 200 000	37
municipality	MAN	2016	Bloemfontein Mangaung	200 001 - 300 000	83
municipality	MAN	2016	Bloemfontein Mangaung	300 001 - 500 000	12
municipality	MAN	2016	Bloemfontein Mangaung	500 001 - 800 000	\N
municipality	MAN	2016	Bloemfontein Mangaung	800 001 - 1 000 000	\N
municipality	MAN	2016	Bloemfontein Mangaung	> 1 000 000	\N
district	DC18	2016	Boshof Tokologo	< 1 500	563
district	DC18	2016	Boshof Tokologo	1 501 - 3 000	3806
district	DC18	2016	Boshof Tokologo	3 001 - 5 000	7614
district	DC18	2016	Boshof Tokologo	5 001 - 10 000	6814
district	DC18	2016	Boshof Tokologo	10 001 - 20 000	499
district	DC18	2016	Boshof Tokologo	20 001 - 30 000	2399
district	DC18	2016	Boshof Tokologo	30 001 - 40 000	\N
district	DC18	2016	Boshof Tokologo	40 001 - 50 000	\N
district	DC18	2016	Boshof Tokologo	50 001 - 100 000	21
district	DC18	2016	Boshof Tokologo	100 001 - 150 000	\N
district	DC18	2016	Boshof Tokologo	150 001 - 200 000	\N
district	DC18	2016	Boshof Tokologo	200 001 - 300 000	\N
district	DC18	2016	Boshof Tokologo	300 001 - 500 000	\N
district	DC18	2016	Boshof Tokologo	500 001 - 800 000	\N
district	DC18	2016	Boshof Tokologo	800 001 - 1 000 000	\N
district	DC18	2016	Boshof Tokologo	> 1 000 000	\N
district	DC18	2016	Bothaville Nala	< 1 500	\N
district	DC18	2016	Bothaville Nala	1 501 - 3 000	\N
district	DC18	2016	Bothaville Nala	3 001 - 5 000	602
district	DC18	2016	Bothaville Nala	5 001 - 10 000	2673
district	DC18	2016	Bothaville Nala	10 001 - 20 000	3404
district	DC18	2016	Bothaville Nala	20 001 - 30 000	640
district	DC18	2016	Bothaville Nala	30 001 - 40 000	\N
district	DC18	2016	Bothaville Nala	40 001 - 50 000	739
district	DC18	2016	Bothaville Nala	50 001 - 100 000	1360
district	DC18	2016	Bothaville Nala	100 001 - 150 000	\N
district	DC18	2016	Bothaville Nala	150 001 - 200 000	\N
district	DC18	2016	Bothaville Nala	200 001 - 300 000	\N
district	DC18	2016	Bothaville Nala	300 001 - 500 000	\N
district	DC18	2016	Bothaville Nala	500 001 - 800 000	\N
district	DC18	2016	Bothaville Nala	800 001 - 1 000 000	\N
district	DC18	2016	Bothaville Nala	> 1 000 000	\N
district	DC18	2016	Brandfort Masilonyana	< 1 500	\N
district	DC18	2016	Brandfort Masilonyana	1 501 - 3 000	\N
district	DC18	2016	Brandfort Masilonyana	3 001 - 5 000	\N
district	DC18	2016	Brandfort Masilonyana	5 001 - 10 000	2803
district	DC18	2016	Brandfort Masilonyana	10 001 - 20 000	1030
district	DC18	2016	Brandfort Masilonyana	20 001 - 30 000	\N
district	DC18	2016	Brandfort Masilonyana	30 001 - 40 000	\N
district	DC18	2016	Brandfort Masilonyana	40 001 - 50 000	21
district	DC18	2016	Brandfort Masilonyana	50 001 - 100 000	49
district	DC18	2016	Brandfort Masilonyana	100 001 - 150 000	\N
district	DC18	2016	Brandfort Masilonyana	150 001 - 200 000	\N
district	DC18	2016	Brandfort Masilonyana	200 001 - 300 000	\N
district	DC18	2016	Brandfort Masilonyana	300 001 - 500 000	\N
district	DC18	2016	Brandfort Masilonyana	500 001 - 800 000	\N
district	DC18	2016	Brandfort Masilonyana	800 001 - 1 000 000	\N
district	DC18	2016	Brandfort Masilonyana	> 1 000 000	\N
district	DC18	2016	Bultfontein Tswelopele	< 1 500	\N
district	DC18	2016	Bultfontein Tswelopele	1 501 - 3 000	\N
district	DC18	2016	Bultfontein Tswelopele	3 001 - 5 000	1055
district	DC18	2016	Bultfontein Tswelopele	5 001 - 10 000	959
district	DC18	2016	Bultfontein Tswelopele	10 001 - 20 000	236
district	DC18	2016	Bultfontein Tswelopele	20 001 - 30 000	202
district	DC18	2016	Bultfontein Tswelopele	30 001 - 40 000	\N
district	DC18	2016	Bultfontein Tswelopele	40 001 - 50 000	368
district	DC18	2016	Bultfontein Tswelopele	50 001 - 100 000	137
district	DC18	2016	Bultfontein Tswelopele	100 001 - 150 000	\N
district	DC18	2016	Bultfontein Tswelopele	150 001 - 200 000	\N
district	DC18	2016	Bultfontein Tswelopele	200 001 - 300 000	\N
district	DC18	2016	Bultfontein Tswelopele	300 001 - 500 000	\N
district	DC18	2016	Bultfontein Tswelopele	500 001 - 800 000	\N
district	DC18	2016	Bultfontein Tswelopele	800 001 - 1 000 000	\N
district	DC18	2016	Bultfontein Tswelopele	> 1 000 000	\N
district	DC19	2016	Clocolan Setso	< 1 500	\N
district	DC19	2016	Clocolan Setso	1 501 - 3 000	518
district	DC19	2016	Clocolan Setso	3 001 - 5 000	183
district	DC19	2016	Clocolan Setso	5 001 - 10 000	696
district	DC19	2016	Clocolan Setso	10 001 - 20 000	1772
district	DC19	2016	Clocolan Setso	20 001 - 30 000	\N
district	DC19	2016	Clocolan Setso	30 001 - 40 000	\N
district	DC19	2016	Clocolan Setso	40 001 - 50 000	\N
district	DC19	2016	Clocolan Setso	50 001 - 100 000	\N
district	DC19	2016	Clocolan Setso	100 001 - 150 000	\N
district	DC19	2016	Clocolan Setso	150 001 - 200 000	\N
district	DC19	2016	Clocolan Setso	200 001 - 300 000	\N
district	DC19	2016	Clocolan Setso	300 001 - 500 000	\N
district	DC19	2016	Clocolan Setso	500 001 - 800 000	\N
district	DC19	2016	Clocolan Setso	800 001 - 1 000 000	\N
district	DC19	2016	Clocolan Setso	> 1 000 000	\N
district	DC16	2016	Dewetsdorp Naledi	< 1 500	\N
district	DC16	2016	Dewetsdorp Naledi	1 501 - 3 000	\N
district	DC16	2016	Dewetsdorp Naledi	3 001 - 5 000	3306
district	DC16	2016	Dewetsdorp Naledi	5 001 - 10 000	149
district	DC16	2016	Dewetsdorp Naledi	10 001 - 20 000	\N
district	DC16	2016	Dewetsdorp Naledi	20 001 - 30 000	\N
district	DC16	2016	Dewetsdorp Naledi	30 001 - 40 000	\N
district	DC16	2016	Dewetsdorp Naledi	40 001 - 50 000	\N
district	DC16	2016	Dewetsdorp Naledi	50 001 - 100 000	\N
district	DC16	2016	Dewetsdorp Naledi	100 001 - 150 000	\N
district	DC16	2016	Dewetsdorp Naledi	150 001 - 200 000	\N
district	DC16	2016	Dewetsdorp Naledi	200 001 - 300 000	\N
district	DC16	2016	Dewetsdorp Naledi	300 001 - 500 000	\N
district	DC16	2016	Dewetsdorp Naledi	500 001 - 800 000	\N
district	DC16	2016	Dewetsdorp Naledi	800 001 - 1 000 000	\N
district	DC16	2016	Dewetsdorp Naledi	> 1 000 000	\N
district	DC16	2016	Edenburg Kopanong	< 1 500	\N
district	DC16	2016	Edenburg Kopanong	1 501 - 3 000	1937
district	DC16	2016	Edenburg Kopanong	3 001 - 5 000	453
district	DC16	2016	Edenburg Kopanong	5 001 - 10 000	855
district	DC16	2016	Edenburg Kopanong	10 001 - 20 000	\N
district	DC16	2016	Edenburg Kopanong	20 001 - 30 000	\N
district	DC16	2016	Edenburg Kopanong	30 001 - 40 000	\N
district	DC16	2016	Edenburg Kopanong	40 001 - 50 000	\N
district	DC16	2016	Edenburg Kopanong	50 001 - 100 000	\N
district	DC16	2016	Edenburg Kopanong	100 001 - 150 000	\N
district	DC16	2016	Edenburg Kopanong	150 001 - 200 000	\N
district	DC16	2016	Edenburg Kopanong	200 001 - 300 000	\N
district	DC16	2016	Edenburg Kopanong	300 001 - 500 000	\N
district	DC16	2016	Edenburg Kopanong	500 001 - 800 000	\N
district	DC16	2016	Edenburg Kopanong	800 001 - 1 000 000	\N
district	DC16	2016	Edenburg Kopanong	> 1 000 000	\N
district	DC16	2016	Fauresmith Kopanong	< 1 500	\N
district	DC16	2016	Fauresmith Kopanong	1 501 - 3 000	776
district	DC16	2016	Fauresmith Kopanong	3 001 - 5 000	6247
district	DC16	2016	Fauresmith Kopanong	5 001 - 10 000	4618
district	DC16	2016	Fauresmith Kopanong	10 001 - 20 000	343
district	DC16	2016	Fauresmith Kopanong	20 001 - 30 000	\N
district	DC16	2016	Fauresmith Kopanong	30 001 - 40 000	\N
district	DC16	2016	Fauresmith Kopanong	40 001 - 50 000	\N
district	DC16	2016	Fauresmith Kopanong	50 001 - 100 000	117
district	DC16	2016	Fauresmith Kopanong	100 001 - 150 000	\N
district	DC16	2016	Fauresmith Kopanong	150 001 - 200 000	\N
district	DC16	2016	Fauresmith Kopanong	200 001 - 300 000	\N
district	DC16	2016	Fauresmith Kopanong	300 001 - 500 000	\N
district	DC16	2016	Fauresmith Kopanong	500 001 - 800 000	\N
district	DC16	2016	Fauresmith Kopanong	800 001 - 1 000 000	\N
district	DC16	2016	Fauresmith Kopanong	> 1 000 000	\N
district	DC19	2016	Ficksburg Setso	< 1 500	\N
district	DC19	2016	Ficksburg Setso	1 501 - 3 000	\N
district	DC19	2016	Ficksburg Setso	3 001 - 5 000	\N
district	DC19	2016	Ficksburg Setso	5 001 - 10 000	2356
district	DC19	2016	Ficksburg Setso	10 001 - 20 000	1405
district	DC19	2016	Ficksburg Setso	20 001 - 30 000	\N
district	DC19	2016	Ficksburg Setso	30 001 - 40 000	\N
district	DC19	2016	Ficksburg Setso	40 001 - 50 000	80
district	DC19	2016	Ficksburg Setso	50 001 - 100 000	\N
district	DC19	2016	Ficksburg Setso	100 001 - 150 000	\N
district	DC19	2016	Ficksburg Setso	150 001 - 200 000	\N
district	DC19	2016	Ficksburg Setso	200 001 - 300 000	\N
district	DC19	2016	Ficksburg Setso	300 001 - 500 000	\N
district	DC19	2016	Ficksburg Setso	500 001 - 800 000	\N
district	DC19	2016	Ficksburg Setso	800 001 - 1 000 000	\N
district	DC19	2016	Ficksburg Setso	> 1 000 000	\N
district	DC19	2016	Fouriesburg Dikabeng	< 1 500	\N
district	DC19	2016	Fouriesburg Dikabeng	1 501 - 3 000	\N
district	DC19	2016	Fouriesburg Dikabeng	3 001 - 5 000	\N
district	DC19	2016	Fouriesburg Dikabeng	5 001 - 10 000	405
district	DC19	2016	Fouriesburg Dikabeng	10 001 - 20 000	643
district	DC19	2016	Fouriesburg Dikabeng	20 001 - 30 000	550
district	DC19	2016	Fouriesburg Dikabeng	30 001 - 40 000	\N
district	DC19	2016	Fouriesburg Dikabeng	40 001 - 50 000	\N
district	DC19	2016	Fouriesburg Dikabeng	50 001 - 100 000	\N
district	DC19	2016	Fouriesburg Dikabeng	100 001 - 150 000	\N
district	DC19	2016	Fouriesburg Dikabeng	150 001 - 200 000	\N
district	DC19	2016	Fouriesburg Dikabeng	200 001 - 300 000	88
district	DC19	2016	Fouriesburg Dikabeng	300 001 - 500 000	\N
district	DC19	2016	Fouriesburg Dikabeng	500 001 - 800 000	\N
district	DC19	2016	Fouriesburg Dikabeng	800 001 - 1 000 000	\N
district	DC19	2016	Fouriesburg Dikabeng	> 1 000 000	\N
district	DC20	2016	Frankfort Mafube	< 1 500	\N
district	DC20	2016	Frankfort Mafube	1 501 - 3 000	\N
district	DC20	2016	Frankfort Mafube	3 001 - 5 000	\N
district	DC20	2016	Frankfort Mafube	5 001 - 10 000	519
district	DC20	2016	Frankfort Mafube	10 001 - 20 000	5380
district	DC20	2016	Frankfort Mafube	20 001 - 30 000	1612
district	DC20	2016	Frankfort Mafube	30 001 - 40 000	517
district	DC20	2016	Frankfort Mafube	40 001 - 50 000	\N
district	DC20	2016	Frankfort Mafube	50 001 - 100 000	\N
district	DC20	2016	Frankfort Mafube	100 001 - 150 000	\N
district	DC20	2016	Frankfort Mafube	150 001 - 200 000	\N
district	DC20	2016	Frankfort Mafube	200 001 - 300 000	\N
district	DC20	2016	Frankfort Mafube	300 001 - 500 000	\N
district	DC20	2016	Frankfort Mafube	500 001 - 800 000	\N
district	DC20	2016	Frankfort Mafube	800 001 - 1 000 000	\N
district	DC20	2016	Frankfort Mafube	> 1 000 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	< 1 500	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	1 501 - 3 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	3 001 - 5 000	428
district	DC19	2016	Harrismith Maluti-A-Phofung	5 001 - 10 000	4895
district	DC19	2016	Harrismith Maluti-A-Phofung	10 001 - 20 000	5877
district	DC19	2016	Harrismith Maluti-A-Phofung	20 001 - 30 000	534
district	DC19	2016	Harrismith Maluti-A-Phofung	30 001 - 40 000	2277
district	DC19	2016	Harrismith Maluti-A-Phofung	40 001 - 50 000	19
district	DC19	2016	Harrismith Maluti-A-Phofung	50 001 - 100 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	100 001 - 150 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	150 001 - 200 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	200 001 - 300 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	300 001 - 500 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	500 001 - 800 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	800 001 - 1 000 000	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	> 1 000 000	\N
district	DC20	2016	Heilbron Ngwathe	< 1 500	\N
district	DC20	2016	Heilbron Ngwathe	1 501 - 3 000	349
district	DC20	2016	Heilbron Ngwathe	3 001 - 5 000	\N
district	DC20	2016	Heilbron Ngwathe	5 001 - 10 000	2052
district	DC20	2016	Heilbron Ngwathe	10 001 - 20 000	4093
district	DC20	2016	Heilbron Ngwathe	20 001 - 30 000	2043
district	DC20	2016	Heilbron Ngwathe	30 001 - 40 000	85
district	DC20	2016	Heilbron Ngwathe	40 001 - 50 000	\N
district	DC20	2016	Heilbron Ngwathe	50 001 - 100 000	25
district	DC20	2016	Heilbron Ngwathe	100 001 - 150 000	\N
district	DC20	2016	Heilbron Ngwathe	150 001 - 200 000	\N
district	DC20	2016	Heilbron Ngwathe	200 001 - 300 000	\N
district	DC20	2016	Heilbron Ngwathe	300 001 - 500 000	\N
district	DC20	2016	Heilbron Ngwathe	500 001 - 800 000	\N
district	DC20	2016	Heilbron Ngwathe	800 001 - 1 000 000	\N
district	DC20	2016	Heilbron Ngwathe	> 1 000 000	\N
district	DC18	2016	Hoopstad Tswelopele	< 1 500	\N
district	DC18	2016	Hoopstad Tswelopele	1 501 - 3 000	\N
district	DC18	2016	Hoopstad Tswelopele	3 001 - 5 000	\N
district	DC18	2016	Hoopstad Tswelopele	5 001 - 10 000	\N
district	DC18	2016	Hoopstad Tswelopele	10 001 - 20 000	726
district	DC18	2016	Hoopstad Tswelopele	20 001 - 30 000	733
district	DC18	2016	Hoopstad Tswelopele	30 001 - 40 000	\N
district	DC18	2016	Hoopstad Tswelopele	40 001 - 50 000	\N
district	DC18	2016	Hoopstad Tswelopele	50 001 - 100 000	\N
district	DC18	2016	Hoopstad Tswelopele	100 001 - 150 000	\N
district	DC18	2016	Hoopstad Tswelopele	150 001 - 200 000	\N
district	DC18	2016	Hoopstad Tswelopele	200 001 - 300 000	\N
district	DC18	2016	Hoopstad Tswelopele	300 001 - 500 000	\N
district	DC18	2016	Hoopstad Tswelopele	500 001 - 800 000	\N
district	DC18	2016	Hoopstad Tswelopele	800 001 - 1 000 000	\N
district	DC18	2016	Hoopstad Tswelopele	> 1 000 000	\N
district	DC16	2016	Jacobsdal Letsemeng	< 1 500	\N
district	DC16	2016	Jacobsdal Letsemeng	1 501 - 3 000	705
district	DC16	2016	Jacobsdal Letsemeng	3 001 - 5 000	3382
district	DC16	2016	Jacobsdal Letsemeng	5 001 - 10 000	2501
district	DC16	2016	Jacobsdal Letsemeng	10 001 - 20 000	467
district	DC16	2016	Jacobsdal Letsemeng	20 001 - 30 000	\N
district	DC16	2016	Jacobsdal Letsemeng	30 001 - 40 000	\N
district	DC16	2016	Jacobsdal Letsemeng	40 001 - 50 000	\N
district	DC16	2016	Jacobsdal Letsemeng	50 001 - 100 000	\N
district	DC16	2016	Jacobsdal Letsemeng	100 001 - 150 000	\N
district	DC16	2016	Jacobsdal Letsemeng	150 001 - 200 000	\N
district	DC16	2016	Jacobsdal Letsemeng	200 001 - 300 000	\N
district	DC16	2016	Jacobsdal Letsemeng	300 001 - 500 000	\N
district	DC16	2016	Jacobsdal Letsemeng	500 001 - 800 000	\N
district	DC16	2016	Jacobsdal Letsemeng	800 001 - 1 000 000	\N
district	DC16	2016	Jacobsdal Letsemeng	> 1 000 000	\N
district	DC20	2016	Koppies Ngwathe	< 1 500	\N
district	DC20	2016	Koppies Ngwathe	1 501 - 3 000	\N
district	DC20	2016	Koppies Ngwathe	3 001 - 5 000	\N
district	DC20	2016	Koppies Ngwathe	5 001 - 10 000	2247
district	DC20	2016	Koppies Ngwathe	10 001 - 20 000	1166
district	DC20	2016	Koppies Ngwathe	20 001 - 30 000	174
district	DC20	2016	Koppies Ngwathe	30 001 - 40 000	\N
district	DC20	2016	Koppies Ngwathe	40 001 - 50 000	\N
district	DC20	2016	Koppies Ngwathe	50 001 - 100 000	\N
district	DC20	2016	Koppies Ngwathe	100 001 - 150 000	\N
district	DC20	2016	Koppies Ngwathe	150 001 - 200 000	\N
district	DC20	2016	Koppies Ngwathe	200 001 - 300 000	\N
district	DC20	2016	Koppies Ngwathe	300 001 - 500 000	\N
district	DC20	2016	Koppies Ngwathe	500 001 - 800 000	\N
district	DC20	2016	Koppies Ngwathe	800 001 - 1 000 000	\N
district	DC20	2016	Koppies Ngwathe	> 1 000 000	\N
district	DC20	2016	Kroonstad Moqhaka	< 1 500	\N
district	DC20	2016	Kroonstad Moqhaka	1 501 - 3 000	\N
district	DC20	2016	Kroonstad Moqhaka	3 001 - 5 000	\N
district	DC20	2016	Kroonstad Moqhaka	5 001 - 10 000	4381
district	DC20	2016	Kroonstad Moqhaka	10 001 - 20 000	3537
district	DC20	2016	Kroonstad Moqhaka	20 001 - 30 000	519
district	DC20	2016	Kroonstad Moqhaka	30 001 - 40 000	\N
district	DC20	2016	Kroonstad Moqhaka	40 001 - 50 000	\N
district	DC20	2016	Kroonstad Moqhaka	50 001 - 100 000	\N
district	DC20	2016	Kroonstad Moqhaka	100 001 - 150 000	\N
district	DC20	2016	Kroonstad Moqhaka	150 001 - 200 000	\N
district	DC20	2016	Kroonstad Moqhaka	200 001 - 300 000	\N
district	DC20	2016	Kroonstad Moqhaka	300 001 - 500 000	\N
district	DC20	2016	Kroonstad Moqhaka	500 001 - 800 000	\N
district	DC20	2016	Kroonstad Moqhaka	800 001 - 1 000 000	\N
district	DC20	2016	Kroonstad Moqhaka	> 1 000 000	\N
district	DC19	2016	Ladybrand Mantsopa	< 1 500	714
district	DC19	2016	Ladybrand Mantsopa	1 501 - 3 000	\N
district	DC19	2016	Ladybrand Mantsopa	3 001 - 5 000	1430
district	DC19	2016	Ladybrand Mantsopa	5 001 - 10 000	678
district	DC19	2016	Ladybrand Mantsopa	10 001 - 20 000	1775
district	DC19	2016	Ladybrand Mantsopa	20 001 - 30 000	223
district	DC19	2016	Ladybrand Mantsopa	30 001 - 40 000	\N
district	DC19	2016	Ladybrand Mantsopa	40 001 - 50 000	\N
district	DC19	2016	Ladybrand Mantsopa	50 001 - 100 000	\N
district	DC19	2016	Ladybrand Mantsopa	100 001 - 150 000	\N
district	DC19	2016	Ladybrand Mantsopa	150 001 - 200 000	\N
district	DC19	2016	Ladybrand Mantsopa	200 001 - 300 000	\N
district	DC19	2016	Ladybrand Mantsopa	300 001 - 500 000	\N
district	DC19	2016	Ladybrand Mantsopa	500 001 - 800 000	\N
district	DC19	2016	Ladybrand Mantsopa	800 001 - 1 000 000	\N
district	DC19	2016	Ladybrand Mantsopa	> 1 000 000	\N
district	DC19	2016	Lindley Nketoana	< 1 500	\N
district	DC19	2016	Lindley Nketoana	1 501 - 3 000	\N
district	DC19	2016	Lindley Nketoana	3 001 - 5 000	\N
district	DC19	2016	Lindley Nketoana	5 001 - 10 000	7316
district	DC19	2016	Lindley Nketoana	10 001 - 20 000	4742
district	DC19	2016	Lindley Nketoana	20 001 - 30 000	1004
district	DC19	2016	Lindley Nketoana	30 001 - 40 000	23
district	DC19	2016	Lindley Nketoana	40 001 - 50 000	\N
district	DC19	2016	Lindley Nketoana	50 001 - 100 000	\N
district	DC19	2016	Lindley Nketoana	100 001 - 150 000	\N
district	DC19	2016	Lindley Nketoana	150 001 - 200 000	\N
district	DC19	2016	Lindley Nketoana	200 001 - 300 000	\N
district	DC19	2016	Lindley Nketoana	300 001 - 500 000	\N
district	DC19	2016	Lindley Nketoana	500 001 - 800 000	\N
district	DC19	2016	Lindley Nketoana	800 001 - 1 000 000	\N
district	DC19	2016	Lindley Nketoana	> 1 000 000	\N
district	DC19	2016	Marquard Setso	< 1 500	\N
district	DC19	2016	Marquard Setso	1 501 - 3 000	\N
district	DC19	2016	Marquard Setso	3 001 - 5 000	\N
district	DC19	2016	Marquard Setso	5 001 - 10 000	3448
district	DC19	2016	Marquard Setso	10 001 - 20 000	1379
district	DC19	2016	Marquard Setso	20 001 - 30 000	\N
district	DC19	2016	Marquard Setso	30 001 - 40 000	\N
district	DC19	2016	Marquard Setso	40 001 - 50 000	\N
district	DC19	2016	Marquard Setso	50 001 - 100 000	\N
district	DC19	2016	Marquard Setso	100 001 - 150 000	\N
district	DC19	2016	Marquard Setso	150 001 - 200 000	\N
district	DC19	2016	Marquard Setso	200 001 - 300 000	\N
district	DC19	2016	Marquard Setso	300 001 - 500 000	\N
district	DC19	2016	Marquard Setso	500 001 - 800 000	\N
district	DC19	2016	Marquard Setso	800 001 - 1 000 000	\N
district	DC19	2016	Marquard Setso	> 1 000 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	< 1 500	\N
district	DC18	2016	Odendaalsrus Matjhabeng	1 501 - 3 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	3 001 - 5 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	5 001 - 10 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	10 001 - 20 000	257
district	DC18	2016	Odendaalsrus Matjhabeng	20 001 - 30 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	30 001 - 40 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	40 001 - 50 000	38
district	DC18	2016	Odendaalsrus Matjhabeng	50 001 - 100 000	38
district	DC18	2016	Odendaalsrus Matjhabeng	100 001 - 150 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	150 001 - 200 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	200 001 - 300 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	300 001 - 500 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	500 001 - 800 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	800 001 - 1 000 000	\N
district	DC18	2016	Odendaalsrus Matjhabeng	> 1 000 000	\N
district	DC20	2016	Parys Ngwathe	< 1 500	115
district	DC20	2016	Parys Ngwathe	1 501 - 3 000	10
district	DC20	2016	Parys Ngwathe	3 001 - 5 000	\N
district	DC20	2016	Parys Ngwathe	5 001 - 10 000	\N
district	DC20	2016	Parys Ngwathe	10 001 - 20 000	1743
district	DC20	2016	Parys Ngwathe	20 001 - 30 000	72
district	DC20	2016	Parys Ngwathe	30 001 - 40 000	\N
district	DC20	2016	Parys Ngwathe	40 001 - 50 000	79
district	DC20	2016	Parys Ngwathe	50 001 - 100 000	97
district	DC20	2016	Parys Ngwathe	100 001 - 150 000	\N
district	DC20	2016	Parys Ngwathe	150 001 - 200 000	\N
district	DC20	2016	Parys Ngwathe	200 001 - 300 000	\N
district	DC20	2016	Parys Ngwathe	300 001 - 500 000	28
district	DC20	2016	Parys Ngwathe	500 001 - 800 000	\N
district	DC20	2016	Parys Ngwathe	800 001 - 1 000 000	\N
district	DC20	2016	Parys Ngwathe	> 1 000 000	\N
district	DC16	2016	Philipolis Kopanong	< 1 500	\N
district	DC16	2016	Philipolis Kopanong	1 501 - 3 000	\N
district	DC16	2016	Philipolis Kopanong	3 001 - 5 000	2971
district	DC16	2016	Philipolis Kopanong	5 001 - 10 000	857
district	DC16	2016	Philipolis Kopanong	10 001 - 20 000	\N
district	DC16	2016	Philipolis Kopanong	20 001 - 30 000	\N
district	DC16	2016	Philipolis Kopanong	30 001 - 40 000	\N
district	DC16	2016	Philipolis Kopanong	40 001 - 50 000	\N
district	DC16	2016	Philipolis Kopanong	50 001 - 100 000	\N
district	DC16	2016	Philipolis Kopanong	100 001 - 150 000	\N
district	DC16	2016	Philipolis Kopanong	150 001 - 200 000	\N
district	DC16	2016	Philipolis Kopanong	200 001 - 300 000	\N
district	DC16	2016	Philipolis Kopanong	300 001 - 500 000	\N
district	DC16	2016	Philipolis Kopanong	500 001 - 800 000	\N
district	DC16	2016	Philipolis Kopanong	800 001 - 1 000 000	\N
district	DC16	2016	Philipolis Kopanong	> 1 000 000	\N
district	DC16	2016	Reddersburg Kopanong	< 1 500	\N
district	DC16	2016	Reddersburg Kopanong	1 501 - 3 000	\N
district	DC16	2016	Reddersburg Kopanong	3 001 - 5 000	1831
district	DC16	2016	Reddersburg Kopanong	5 001 - 10 000	2246
district	DC16	2016	Reddersburg Kopanong	10 001 - 20 000	\N
district	DC16	2016	Reddersburg Kopanong	20 001 - 30 000	\N
district	DC16	2016	Reddersburg Kopanong	30 001 - 40 000	\N
district	DC16	2016	Reddersburg Kopanong	40 001 - 50 000	\N
district	DC16	2016	Reddersburg Kopanong	50 001 - 100 000	\N
district	DC16	2016	Reddersburg Kopanong	100 001 - 150 000	\N
district	DC16	2016	Reddersburg Kopanong	150 001 - 200 000	\N
district	DC16	2016	Reddersburg Kopanong	200 001 - 300 000	\N
district	DC16	2016	Reddersburg Kopanong	300 001 - 500 000	\N
district	DC16	2016	Reddersburg Kopanong	500 001 - 800 000	\N
district	DC16	2016	Reddersburg Kopanong	800 001 - 1 000 000	\N
district	DC16	2016	Reddersburg Kopanong	> 1 000 000	\N
district	DC19	2016	Reitz Nketoana	< 1 500	505
district	DC19	2016	Reitz Nketoana	1 501 - 3 000	\N
district	DC19	2016	Reitz Nketoana	3 001 - 5 000	183
district	DC19	2016	Reitz Nketoana	5 001 - 10 000	1460
district	DC19	2016	Reitz Nketoana	10 001 - 20 000	5154
district	DC19	2016	Reitz Nketoana	20 001 - 30 000	844
district	DC19	2016	Reitz Nketoana	30 001 - 40 000	96
district	DC19	2016	Reitz Nketoana	40 001 - 50 000	219
district	DC19	2016	Reitz Nketoana	50 001 - 100 000	\N
district	DC19	2016	Reitz Nketoana	100 001 - 150 000	\N
district	DC19	2016	Reitz Nketoana	150 001 - 200 000	\N
district	DC19	2016	Reitz Nketoana	200 001 - 300 000	69
district	DC19	2016	Reitz Nketoana	300 001 - 500 000	\N
district	DC19	2016	Reitz Nketoana	500 001 - 800 000	\N
district	DC19	2016	Reitz Nketoana	800 001 - 1 000 000	\N
district	DC19	2016	Reitz Nketoana	> 1 000 000	\N
district	DC16	2016	Rouxville Mohokare	< 1 500	\N
district	DC16	2016	Rouxville Mohokare	1 501 - 3 000	\N
district	DC16	2016	Rouxville Mohokare	3 001 - 5 000	1646
district	DC16	2016	Rouxville Mohokare	5 001 - 10 000	4494
district	DC16	2016	Rouxville Mohokare	10 001 - 20 000	821
district	DC16	2016	Rouxville Mohokare	20 001 - 30 000	1112
district	DC16	2016	Rouxville Mohokare	30 001 - 40 000	\N
district	DC16	2016	Rouxville Mohokare	40 001 - 50 000	\N
district	DC16	2016	Rouxville Mohokare	50 001 - 100 000	\N
district	DC16	2016	Rouxville Mohokare	100 001 - 150 000	26
district	DC16	2016	Rouxville Mohokare	150 001 - 200 000	\N
district	DC16	2016	Rouxville Mohokare	200 001 - 300 000	\N
district	DC16	2016	Rouxville Mohokare	300 001 - 500 000	\N
district	DC16	2016	Rouxville Mohokare	500 001 - 800 000	\N
district	DC16	2016	Rouxville Mohokare	800 001 - 1 000 000	\N
district	DC16	2016	Rouxville Mohokare	> 1 000 000	\N
district	DC19	2016	Senekal Setsoto	< 1 500	\N
district	DC19	2016	Senekal Setsoto	1 501 - 3 000	\N
district	DC19	2016	Senekal Setsoto	3 001 - 5 000	\N
district	DC19	2016	Senekal Setsoto	5 001 - 10 000	6322
district	DC19	2016	Senekal Setsoto	10 001 - 20 000	2681
district	DC19	2016	Senekal Setsoto	20 001 - 30 000	\N
district	DC19	2016	Senekal Setsoto	30 001 - 40 000	\N
district	DC19	2016	Senekal Setsoto	40 001 - 50 000	\N
district	DC19	2016	Senekal Setsoto	50 001 - 100 000	\N
district	DC19	2016	Senekal Setsoto	100 001 - 150 000	\N
district	DC19	2016	Senekal Setsoto	150 001 - 200 000	\N
district	DC19	2016	Senekal Setsoto	200 001 - 300 000	\N
district	DC19	2016	Senekal Setsoto	300 001 - 500 000	\N
district	DC19	2016	Senekal Setsoto	500 001 - 800 000	\N
district	DC19	2016	Senekal Setsoto	800 001 - 1 000 000	\N
district	DC19	2016	Senekal Setsoto	> 1 000 000	\N
district	DC16	2016	Smithfield Mohkare	< 1 500	373
district	DC16	2016	Smithfield Mohkare	1 501 - 3 000	\N
district	DC16	2016	Smithfield Mohkare	3 001 - 5 000	\N
district	DC16	2016	Smithfield Mohkare	5 001 - 10 000	419
district	DC16	2016	Smithfield Mohkare	10 001 - 20 000	\N
district	DC16	2016	Smithfield Mohkare	20 001 - 30 000	\N
district	DC16	2016	Smithfield Mohkare	30 001 - 40 000	\N
district	DC16	2016	Smithfield Mohkare	40 001 - 50 000	\N
district	DC16	2016	Smithfield Mohkare	50 001 - 100 000	\N
district	DC16	2016	Smithfield Mohkare	100 001 - 150 000	\N
district	DC16	2016	Smithfield Mohkare	150 001 - 200 000	\N
district	DC16	2016	Smithfield Mohkare	200 001 - 300 000	\N
district	DC16	2016	Smithfield Mohkare	300 001 - 500 000	\N
district	DC16	2016	Smithfield Mohkare	500 001 - 800 000	\N
district	DC16	2016	Smithfield Mohkare	800 001 - 1 000 000	\N
district	DC16	2016	Smithfield Mohkare	> 1 000 000	\N
municipality	MAN	2016	Thaba Nchu	< 1 500	\N
municipality	MAN	2016	Thaba Nchu	1 501 - 3 000	1754
municipality	MAN	2016	Thaba Nchu	3 001 - 5 000	1116
municipality	MAN	2016	Thaba Nchu	5 001 - 10 000	371
municipality	MAN	2016	Thaba Nchu	10 001 - 20 000	557
municipality	MAN	2016	Thaba Nchu	20 001 - 30 000	\N
municipality	MAN	2016	Thaba Nchu	30 001 - 40 000	\N
municipality	MAN	2016	Thaba Nchu	40 001 - 50 000	\N
municipality	MAN	2016	Thaba Nchu	50 001 - 100 000	\N
municipality	MAN	2016	Thaba Nchu	100 001 - 150 000	\N
municipality	MAN	2016	Thaba Nchu	150 001 - 200 000	\N
municipality	MAN	2016	Thaba Nchu	200 001 - 300 000	\N
municipality	MAN	2016	Thaba Nchu	300 001 - 500 000	\N
municipality	MAN	2016	Thaba Nchu	500 001 - 800 000	\N
municipality	MAN	2016	Thaba Nchu	800 001 - 1 000 000	\N
municipality	MAN	2016	Thaba Nchu	> 1 000 000	\N
district	DC18	2016	Theunissen Masilonyana	< 1 500	787
district	DC18	2016	Theunissen Masilonyana	1 501 - 3 000	171
district	DC18	2016	Theunissen Masilonyana	3 001 - 5 000	292
district	DC18	2016	Theunissen Masilonyana	5 001 - 10 000	345
district	DC18	2016	Theunissen Masilonyana	10 001 - 20 000	2091
district	DC18	2016	Theunissen Masilonyana	20 001 - 30 000	389
district	DC18	2016	Theunissen Masilonyana	30 001 - 40 000	\N
district	DC18	2016	Theunissen Masilonyana	40 001 - 50 000	527
district	DC18	2016	Theunissen Masilonyana	50 001 - 100 000	349
district	DC18	2016	Theunissen Masilonyana	100 001 - 150 000	65
district	DC18	2016	Theunissen Masilonyana	150 001 - 200 000	\N
district	DC18	2016	Theunissen Masilonyana	200 001 - 300 000	\N
district	DC18	2016	Theunissen Masilonyana	300 001 - 500 000	\N
district	DC18	2016	Theunissen Masilonyana	500 001 - 800 000	\N
district	DC18	2016	Theunissen Masilonyana	800 001 - 1 000 000	\N
district	DC18	2016	Theunissen Masilonyana	> 1 000 000	\N
district	DC18	2016	Ventersburg Matjhabeng	< 1 500	\N
district	DC18	2016	Ventersburg Matjhabeng	1 501 - 3 000	684
district	DC18	2016	Ventersburg Matjhabeng	3 001 - 5 000	494
district	DC18	2016	Ventersburg Matjhabeng	5 001 - 10 000	1319
district	DC18	2016	Ventersburg Matjhabeng	10 001 - 20 000	1997
district	DC18	2016	Ventersburg Matjhabeng	20 001 - 30 000	10
district	DC18	2016	Ventersburg Matjhabeng	30 001 - 40 000	\N
district	DC18	2016	Ventersburg Matjhabeng	40 001 - 50 000	\N
district	DC18	2016	Ventersburg Matjhabeng	50 001 - 100 000	\N
district	DC18	2016	Ventersburg Matjhabeng	100 001 - 150 000	25
district	DC18	2016	Ventersburg Matjhabeng	150 001 - 200 000	\N
district	DC18	2016	Ventersburg Matjhabeng	200 001 - 300 000	\N
district	DC18	2016	Ventersburg Matjhabeng	300 001 - 500 000	\N
district	DC18	2016	Ventersburg Matjhabeng	500 001 - 800 000	\N
district	DC18	2016	Ventersburg Matjhabeng	800 001 - 1 000 000	\N
district	DC18	2016	Ventersburg Matjhabeng	> 1 000 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	< 1 500	\N
district	DC20	2016	Viljoenskroon Moqhaka	1 501 - 3 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	3 001 - 5 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	5 001 - 10 000	298
district	DC20	2016	Viljoenskroon Moqhaka	10 001 - 20 000	1343
district	DC20	2016	Viljoenskroon Moqhaka	20 001 - 30 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	30 001 - 40 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	40 001 - 50 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	50 001 - 100 000	16
district	DC20	2016	Viljoenskroon Moqhaka	100 001 - 150 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	150 001 - 200 000	3803
district	DC20	2016	Viljoenskroon Moqhaka	200 001 - 300 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	300 001 - 500 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	500 001 - 800 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	800 001 - 1 000 000	\N
district	DC20	2016	Viljoenskroon Moqhaka	> 1 000 000	\N
district	DC19	2016	Vrede Phumelela	< 1 500	472
district	DC19	2016	Vrede Phumelela	1 501 - 3 000	184
district	DC19	2016	Vrede Phumelela	3 001 - 5 000	866
district	DC19	2016	Vrede Phumelela	5 001 - 10 000	4561
district	DC19	2016	Vrede Phumelela	10 001 - 20 000	4574
district	DC19	2016	Vrede Phumelela	20 001 - 30 000	4386
district	DC19	2016	Vrede Phumelela	30 001 - 40 000	\N
district	DC19	2016	Vrede Phumelela	40 001 - 50 000	\N
district	DC19	2016	Vrede Phumelela	50 001 - 100 000	\N
district	DC19	2016	Vrede Phumelela	100 001 - 150 000	\N
district	DC19	2016	Vrede Phumelela	150 001 - 200 000	\N
district	DC19	2016	Vrede Phumelela	200 001 - 300 000	\N
district	DC19	2016	Vrede Phumelela	300 001 - 500 000	\N
district	DC19	2016	Vrede Phumelela	500 001 - 800 000	\N
district	DC19	2016	Vrede Phumelela	800 001 - 1 000 000	\N
district	DC19	2016	Vrede Phumelela	> 1 000 000	\N
district	DC20	2016	Vredefort Ngwathe	< 1 500	\N
district	DC20	2016	Vredefort Ngwathe	1 501 - 3 000	\N
district	DC20	2016	Vredefort Ngwathe	3 001 - 5 000	\N
district	DC20	2016	Vredefort Ngwathe	5 001 - 10 000	534
district	DC20	2016	Vredefort Ngwathe	10 001 - 20 000	2145
district	DC20	2016	Vredefort Ngwathe	20 001 - 30 000	31
district	DC20	2016	Vredefort Ngwathe	30 001 - 40 000	258
district	DC20	2016	Vredefort Ngwathe	40 001 - 50 000	\N
district	DC20	2016	Vredefort Ngwathe	50 001 - 100 000	\N
district	DC20	2016	Vredefort Ngwathe	100 001 - 150 000	\N
district	DC20	2016	Vredefort Ngwathe	150 001 - 200 000	\N
district	DC20	2016	Vredefort Ngwathe	200 001 - 300 000	\N
district	DC20	2016	Vredefort Ngwathe	300 001 - 500 000	\N
district	DC20	2016	Vredefort Ngwathe	500 001 - 800 000	\N
district	DC20	2016	Vredefort Ngwathe	800 001 - 1 000 000	\N
district	DC20	2016	Vredefort Ngwathe	> 1 000 000	\N
district	DC18	2016	Welkom Matjhabeng	< 1 500	\N
district	DC18	2016	Welkom Matjhabeng	1 501 - 3 000	\N
district	DC18	2016	Welkom Matjhabeng	3 001 - 5 000	\N
district	DC18	2016	Welkom Matjhabeng	5 001 - 10 000	\N
district	DC18	2016	Welkom Matjhabeng	10 001 - 20 000	\N
district	DC18	2016	Welkom Matjhabeng	20 001 - 30 000	381
district	DC18	2016	Welkom Matjhabeng	30 001 - 40 000	\N
district	DC18	2016	Welkom Matjhabeng	40 001 - 50 000	\N
district	DC18	2016	Welkom Matjhabeng	50 001 - 100 000	\N
district	DC18	2016	Welkom Matjhabeng	100 001 - 150 000	\N
district	DC18	2016	Welkom Matjhabeng	150 001 - 200 000	\N
district	DC18	2016	Welkom Matjhabeng	200 001 - 300 000	\N
district	DC18	2016	Welkom Matjhabeng	300 001 - 500 000	\N
district	DC18	2016	Welkom Matjhabeng	500 001 - 800 000	\N
district	DC18	2016	Welkom Matjhabeng	800 001 - 1 000 000	\N
district	DC18	2016	Welkom Matjhabeng	> 1 000 000	\N
municipality	MAN	2016	Wepener Naledi	< 1 500	\N
municipality	MAN	2016	Wepener Naledi	1 501 - 3 000	1047
municipality	MAN	2016	Wepener Naledi	3 001 - 5 000	3089
municipality	MAN	2016	Wepener Naledi	5 001 - 10 000	460
municipality	MAN	2016	Wepener Naledi	10 001 - 20 000	\N
municipality	MAN	2016	Wepener Naledi	20 001 - 30 000	\N
municipality	MAN	2016	Wepener Naledi	30 001 - 40 000	\N
municipality	MAN	2016	Wepener Naledi	40 001 - 50 000	\N
municipality	MAN	2016	Wepener Naledi	50 001 - 100 000	\N
municipality	MAN	2016	Wepener Naledi	100 001 - 150 000	\N
municipality	MAN	2016	Wepener Naledi	150 001 - 200 000	\N
municipality	MAN	2016	Wepener Naledi	200 001 - 300 000	\N
municipality	MAN	2016	Wepener Naledi	300 001 - 500 000	\N
municipality	MAN	2016	Wepener Naledi	500 001 - 800 000	\N
municipality	MAN	2016	Wepener Naledi	800 001 - 1 000 000	\N
municipality	MAN	2016	Wepener Naledi	> 1 000 000	\N
district	DC18	2016	Wesselsbron Nala	< 1 500	\N
district	DC18	2016	Wesselsbron Nala	1 501 - 3 000	\N
district	DC18	2016	Wesselsbron Nala	3 001 - 5 000	\N
district	DC18	2016	Wesselsbron Nala	5 001 - 10 000	439
district	DC18	2016	Wesselsbron Nala	10 001 - 20 000	698
district	DC18	2016	Wesselsbron Nala	20 001 - 30 000	693
district	DC18	2016	Wesselsbron Nala	30 001 - 40 000	\N
district	DC18	2016	Wesselsbron Nala	40 001 - 50 000	\N
district	DC18	2016	Wesselsbron Nala	50 001 - 100 000	257
district	DC18	2016	Wesselsbron Nala	100 001 - 150 000	\N
district	DC18	2016	Wesselsbron Nala	150 001 - 200 000	\N
district	DC18	2016	Wesselsbron Nala	200 001 - 300 000	\N
district	DC18	2016	Wesselsbron Nala	300 001 - 500 000	\N
district	DC18	2016	Wesselsbron Nala	500 001 - 800 000	\N
district	DC18	2016	Wesselsbron Nala	800 001 - 1 000 000	\N
district	DC18	2016	Wesselsbron Nala	> 1 000 000	\N
district	DC18	2016	Winburg Masilonyana	< 1 500	\N
district	DC18	2016	Winburg Masilonyana	1 501 - 3 000	\N
district	DC18	2016	Winburg Masilonyana	3 001 - 5 000	\N
district	DC18	2016	Winburg Masilonyana	5 001 - 10 000	3735
district	DC18	2016	Winburg Masilonyana	10 001 - 20 000	1603
district	DC18	2016	Winburg Masilonyana	20 001 - 30 000	\N
district	DC18	2016	Winburg Masilonyana	30 001 - 40 000	\N
district	DC18	2016	Winburg Masilonyana	40 001 - 50 000	\N
district	DC18	2016	Winburg Masilonyana	50 001 - 100 000	\N
district	DC18	2016	Winburg Masilonyana	100 001 - 150 000	\N
district	DC18	2016	Winburg Masilonyana	150 001 - 200 000	\N
district	DC18	2016	Winburg Masilonyana	200 001 - 300 000	\N
district	DC18	2016	Winburg Masilonyana	300 001 - 500 000	\N
district	DC18	2016	Winburg Masilonyana	500 001 - 800 000	\N
district	DC18	2016	Winburg Masilonyana	800 001 - 1 000 000	\N
district	DC18	2016	Winburg Masilonyana	> 1 000 000	\N
district	DC16	2016	Zastron Mohokare	< 1 500	\N
district	DC16	2016	Zastron Mohokare	1 501 - 3 000	1245
district	DC16	2016	Zastron Mohokare	3 001 - 5 000	1688
district	DC16	2016	Zastron Mohokare	5 001 - 10 000	969
district	DC16	2016	Zastron Mohokare	10 001 - 20 000	\N
district	DC16	2016	Zastron Mohokare	20 001 - 30 000	\N
district	DC16	2016	Zastron Mohokare	30 001 - 40 000	\N
district	DC16	2016	Zastron Mohokare	40 001 - 50 000	\N
district	DC16	2016	Zastron Mohokare	50 001 - 100 000	\N
district	DC16	2016	Zastron Mohokare	100 001 - 150 000	\N
district	DC16	2016	Zastron Mohokare	150 001 - 200 000	\N
district	DC16	2016	Zastron Mohokare	200 001 - 300 000	\N
district	DC16	2016	Zastron Mohokare	300 001 - 500 000	\N
district	DC16	2016	Zastron Mohokare	500 001 - 800 000	\N
district	DC16	2016	Zastron Mohokare	800 001 - 1 000 000	\N
district	DC16	2016	Zastron Mohokare	> 1 000 000	\N
district	DC48	2016	Carletonville Merafong	< 1 500	211
district	DC48	2016	Carletonville Merafong	1 501 - 3 000	27
district	DC48	2016	Carletonville Merafong	3 001 - 5 000	293
district	DC48	2016	Carletonville Merafong	5 001 - 10 000	7862
district	DC48	2016	Carletonville Merafong	10 001 - 20 000	5149
district	DC48	2016	Carletonville Merafong	20 001 - 30 000	627
district	DC48	2016	Carletonville Merafong	30 001 - 40 000	913
district	DC48	2016	Carletonville Merafong	40 001 - 50 000	1314
district	DC48	2016	Carletonville Merafong	50 001 - 100 000	1042
district	DC48	2016	Carletonville Merafong	100 001 - 150 000	136
district	DC48	2016	Carletonville Merafong	150 001 - 200 000	40
district	DC48	2016	Carletonville Merafong	200 001 - 300 000	160
district	DC48	2016	Carletonville Merafong	300 001 - 500 000	83
district	DC48	2016	Carletonville Merafong	500 001 - 800 000	12
district	DC48	2016	Carletonville Merafong	800 001 - 1 000 000	20
district	DC48	2016	Carletonville Merafong	> 1 000 000	49
district	DC30	2016	Leandra Gonovan Mbeki	< 1 500	253
district	DC30	2016	Leandra Gonovan Mbeki	1 501 - 3 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	3 001 - 5 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	5 001 - 10 000	382
district	DC30	2016	Leandra Gonovan Mbeki	10 001 - 20 000	6908
district	DC30	2016	Leandra Gonovan Mbeki	20 001 - 30 000	1351
district	DC30	2016	Leandra Gonovan Mbeki	30 001 - 40 000	1160
district	DC30	2016	Leandra Gonovan Mbeki	40 001 - 50 000	648
district	DC30	2016	Leandra Gonovan Mbeki	50 001 - 100 000	139
district	DC30	2016	Leandra Gonovan Mbeki	100 001 - 150 000	158
district	DC30	2016	Leandra Gonovan Mbeki	150 001 - 200 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	200 001 - 300 000	20
district	DC30	2016	Leandra Gonovan Mbeki	300 001 - 500 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	500 001 - 800 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	800 001 - 1 000 000	\N
district	DC30	2016	Leandra Gonovan Mbeki	> 1 000 000	\N
municipality	EKU	2016	Nigel Ekurhuleni	< 1 500	47
municipality	EKU	2016	Nigel Ekurhuleni	1 501 - 3 000	\N
municipality	EKU	2016	Nigel Ekurhuleni	3 001 - 5 000	15
municipality	EKU	2016	Nigel Ekurhuleni	5 001 - 10 000	620
municipality	EKU	2016	Nigel Ekurhuleni	10 001 - 20 000	2285
municipality	EKU	2016	Nigel Ekurhuleni	20 001 - 30 000	990
municipality	EKU	2016	Nigel Ekurhuleni	30 001 - 40 000	359
municipality	EKU	2016	Nigel Ekurhuleni	40 001 - 50 000	517
municipality	EKU	2016	Nigel Ekurhuleni	50 001 - 100 000	446
municipality	EKU	2016	Nigel Ekurhuleni	100 001 - 150 000	87
municipality	EKU	2016	Nigel Ekurhuleni	150 001 - 200 000	35
municipality	EKU	2016	Nigel Ekurhuleni	200 001 - 300 000	127
municipality	EKU	2016	Nigel Ekurhuleni	300 001 - 500 000	\N
municipality	EKU	2016	Nigel Ekurhuleni	500 001 - 800 000	12
municipality	EKU	2016	Nigel Ekurhuleni	800 001 - 1 000 000	\N
municipality	EKU	2016	Nigel Ekurhuleni	> 1 000 000	75
municipality	TSH	2016	Pretoria Tshwane	< 1 500	\N
municipality	TSH	2016	Pretoria Tshwane	1 501 - 3 000	\N
municipality	TSH	2016	Pretoria Tshwane	3 001 - 5 000	\N
municipality	TSH	2016	Pretoria Tshwane	5 001 - 10 000	1680
municipality	TSH	2016	Pretoria Tshwane	10 001 - 20 000	1858
municipality	TSH	2016	Pretoria Tshwane	20 001 - 30 000	1936
municipality	TSH	2016	Pretoria Tshwane	30 001 - 40 000	1230
municipality	TSH	2016	Pretoria Tshwane	40 001 - 50 000	814
municipality	TSH	2016	Pretoria Tshwane	50 001 - 100 000	1385
municipality	TSH	2016	Pretoria Tshwane	100 001 - 150 000	266
municipality	TSH	2016	Pretoria Tshwane	150 001 - 200 000	212
municipality	TSH	2016	Pretoria Tshwane	200 001 - 300 000	311
municipality	TSH	2016	Pretoria Tshwane	300 001 - 500 000	287
municipality	TSH	2016	Pretoria Tshwane	500 001 - 800 000	95
municipality	TSH	2016	Pretoria Tshwane	800 001 - 1 000 000	\N
municipality	TSH	2016	Pretoria Tshwane	> 1 000 000	174
district	DC29	2016	Ballito KwaDukuza	< 1 500	\N
district	DC29	2016	Ballito KwaDukuza	1 501 - 3 000	\N
district	DC29	2016	Ballito KwaDukuza	3 001 - 5 000	379
district	DC29	2016	Ballito KwaDukuza	5 001 - 10 000	56
district	DC29	2016	Ballito KwaDukuza	10 001 - 20 000	220
district	DC29	2016	Ballito KwaDukuza	20 001 - 30 000	752
district	DC29	2016	Ballito KwaDukuza	30 001 - 40 000	180
district	DC29	2016	Ballito KwaDukuza	40 001 - 50 000	659
district	DC29	2016	Ballito KwaDukuza	50 001 - 100 000	740
district	DC29	2016	Ballito KwaDukuza	100 001 - 150 000	622
district	DC29	2016	Ballito KwaDukuza	150 001 - 200 000	43
district	DC29	2016	Ballito KwaDukuza	200 001 - 300 000	\N
district	DC29	2016	Ballito KwaDukuza	300 001 - 500 000	13
district	DC29	2016	Ballito KwaDukuza	500 001 - 800 000	294
district	DC29	2016	Ballito KwaDukuza	800 001 - 1 000 000	\N
district	DC29	2016	Ballito KwaDukuza	> 1 000 000	34
district	DC24	2016	Helpmekaar uMzinyathi	< 1 500	\N
district	DC24	2016	Helpmekaar uMzinyathi	1 501 - 3 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	3 001 - 5 000	116
district	DC24	2016	Helpmekaar uMzinyathi	5 001 - 10 000	2112
district	DC24	2016	Helpmekaar uMzinyathi	10 001 - 20 000	824
district	DC24	2016	Helpmekaar uMzinyathi	20 001 - 30 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	30 001 - 40 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	40 001 - 50 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	50 001 - 100 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	100 001 - 150 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	150 001 - 200 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	200 001 - 300 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	300 001 - 500 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	500 001 - 800 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	800 001 - 1 000 000	\N
district	DC24	2016	Helpmekaar uMzinyathi	> 1 000 000	\N
district	DC27	2016	Jozini Mkuze	< 1 500	\N
district	DC27	2016	Jozini Mkuze	1 501 - 3 000	\N
district	DC27	2016	Jozini Mkuze	3 001 - 5 000	\N
district	DC27	2016	Jozini Mkuze	5 001 - 10 000	\N
district	DC27	2016	Jozini Mkuze	10 001 - 20 000	21
district	DC27	2016	Jozini Mkuze	20 001 - 30 000	\N
district	DC27	2016	Jozini Mkuze	30 001 - 40 000	14
district	DC27	2016	Jozini Mkuze	40 001 - 50 000	451
district	DC27	2016	Jozini Mkuze	50 001 - 100 000	20
district	DC27	2016	Jozini Mkuze	100 001 - 150 000	\N
district	DC27	2016	Jozini Mkuze	150 001 - 200 000	\N
district	DC27	2016	Jozini Mkuze	200 001 - 300 000	\N
district	DC27	2016	Jozini Mkuze	300 001 - 500 000	\N
district	DC27	2016	Jozini Mkuze	500 001 - 800 000	\N
district	DC27	2016	Jozini Mkuze	800 001 - 1 000 000	\N
district	DC27	2016	Jozini Mkuze	> 1 000 000	\N
district	DC43	2016	Kokstad	< 1 500	\N
district	DC43	2016	Kokstad	1 501 - 3 000	\N
district	DC43	2016	Kokstad	3 001 - 5 000	646
district	DC43	2016	Kokstad	5 001 - 10 000	490
district	DC43	2016	Kokstad	10 001 - 20 000	7026
district	DC43	2016	Kokstad	20 001 - 30 000	1545
district	DC43	2016	Kokstad	30 001 - 40 000	76
district	DC43	2016	Kokstad	40 001 - 50 000	\N
district	DC43	2016	Kokstad	50 001 - 100 000	227
district	DC43	2016	Kokstad	100 001 - 150 000	18
district	DC43	2016	Kokstad	150 001 - 200 000	\N
district	DC43	2016	Kokstad	200 001 - 300 000	10
district	DC43	2016	Kokstad	300 001 - 500 000	\N
district	DC43	2016	Kokstad	500 001 - 800 000	\N
district	DC43	2016	Kokstad	800 001 - 1 000 000	\N
district	DC43	2016	Kokstad	> 1 000 000	\N
district	DC23	2016	Ladysmith Emnambithi	< 1 500	\N
district	DC23	2016	Ladysmith Emnambithi	1 501 - 3 000	\N
district	DC23	2016	Ladysmith Emnambithi	3 001 - 5 000	1243
district	DC23	2016	Ladysmith Emnambithi	5 001 - 10 000	7065
district	DC23	2016	Ladysmith Emnambithi	10 001 - 20 000	3075
district	DC23	2016	Ladysmith Emnambithi	20 001 - 30 000	122
district	DC23	2016	Ladysmith Emnambithi	30 001 - 40 000	\N
district	DC23	2016	Ladysmith Emnambithi	40 001 - 50 000	133
district	DC23	2016	Ladysmith Emnambithi	50 001 - 100 000	87
district	DC23	2016	Ladysmith Emnambithi	100 001 - 150 000	\N
district	DC23	2016	Ladysmith Emnambithi	150 001 - 200 000	\N
district	DC23	2016	Ladysmith Emnambithi	200 001 - 300 000	20
district	DC23	2016	Ladysmith Emnambithi	300 001 - 500 000	\N
district	DC23	2016	Ladysmith Emnambithi	500 001 - 800 000	\N
district	DC23	2016	Ladysmith Emnambithi	800 001 - 1 000 000	\N
district	DC23	2016	Ladysmith Emnambithi	> 1 000 000	\N
district	DC26	2016	Louwsburg Abaqulusi	< 1 500	\N
district	DC26	2016	Louwsburg Abaqulusi	1 501 - 3 000	1836
district	DC26	2016	Louwsburg Abaqulusi	3 001 - 5 000	\N
district	DC26	2016	Louwsburg Abaqulusi	5 001 - 10 000	1885
district	DC26	2016	Louwsburg Abaqulusi	10 001 - 20 000	2642
district	DC26	2016	Louwsburg Abaqulusi	20 001 - 30 000	5900
district	DC26	2016	Louwsburg Abaqulusi	30 001 - 40 000	\N
district	DC26	2016	Louwsburg Abaqulusi	40 001 - 50 000	\N
district	DC26	2016	Louwsburg Abaqulusi	50 001 - 100 000	\N
district	DC26	2016	Louwsburg Abaqulusi	100 001 - 150 000	389
district	DC26	2016	Louwsburg Abaqulusi	150 001 - 200 000	\N
district	DC26	2016	Louwsburg Abaqulusi	200 001 - 300 000	\N
district	DC26	2016	Louwsburg Abaqulusi	300 001 - 500 000	\N
district	DC26	2016	Louwsburg Abaqulusi	500 001 - 800 000	\N
district	DC26	2016	Louwsburg Abaqulusi	800 001 - 1 000 000	\N
district	DC26	2016	Louwsburg Abaqulusi	> 1 000 000	\N
district	DC25	2016	Newcastle	< 1 500	2035
district	DC25	2016	Newcastle	1 501 - 3 000	60
district	DC25	2016	Newcastle	3 001 - 5 000	\N
district	DC25	2016	Newcastle	5 001 - 10 000	2734
district	DC25	2016	Newcastle	10 001 - 20 000	1745
district	DC25	2016	Newcastle	20 001 - 30 000	587
district	DC25	2016	Newcastle	30 001 - 40 000	13
district	DC25	2016	Newcastle	40 001 - 50 000	63
district	DC25	2016	Newcastle	50 001 - 100 000	\N
district	DC25	2016	Newcastle	100 001 - 150 000	33
district	DC25	2016	Newcastle	150 001 - 200 000	\N
district	DC25	2016	Newcastle	200 001 - 300 000	\N
district	DC25	2016	Newcastle	300 001 - 500 000	\N
district	DC25	2016	Newcastle	500 001 - 800 000	\N
district	DC25	2016	Newcastle	800 001 - 1 000 000	\N
district	DC25	2016	Newcastle	> 1 000 000	\N
district	DC22	2016	Pietermaritzburg Msunduzi	< 1 500	844
district	DC22	2016	Pietermaritzburg Msunduzi	1 501 - 3 000	253
district	DC22	2016	Pietermaritzburg Msunduzi	3 001 - 5 000	206
district	DC22	2016	Pietermaritzburg Msunduzi	5 001 - 10 000	2171
district	DC22	2016	Pietermaritzburg Msunduzi	10 001 - 20 000	2207
district	DC22	2016	Pietermaritzburg Msunduzi	20 001 - 30 000	1317
district	DC22	2016	Pietermaritzburg Msunduzi	30 001 - 40 000	1800
district	DC22	2016	Pietermaritzburg Msunduzi	40 001 - 50 000	725
district	DC22	2016	Pietermaritzburg Msunduzi	50 001 - 100 000	8407
district	DC22	2016	Pietermaritzburg Msunduzi	100 001 - 150 000	505
district	DC22	2016	Pietermaritzburg Msunduzi	150 001 - 200 000	257
district	DC22	2016	Pietermaritzburg Msunduzi	200 001 - 300 000	286
district	DC22	2016	Pietermaritzburg Msunduzi	300 001 - 500 000	217
district	DC22	2016	Pietermaritzburg Msunduzi	500 001 - 800 000	12
district	DC22	2016	Pietermaritzburg Msunduzi	800 001 - 1 000 000	19
district	DC22	2016	Pietermaritzburg Msunduzi	> 1 000 000	24
district	DC21	2016	Port Shepstone Ray Nkonyeni	< 1 500	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	1 501 - 3 000	545
district	DC21	2016	Port Shepstone Ray Nkonyeni	3 001 - 5 000	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	5 001 - 10 000	1059
district	DC21	2016	Port Shepstone Ray Nkonyeni	10 001 - 20 000	248
district	DC21	2016	Port Shepstone Ray Nkonyeni	20 001 - 30 000	1238
district	DC21	2016	Port Shepstone Ray Nkonyeni	30 001 - 40 000	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	40 001 - 50 000	142
district	DC21	2016	Port Shepstone Ray Nkonyeni	50 001 - 100 000	243
district	DC21	2016	Port Shepstone Ray Nkonyeni	100 001 - 150 000	99
district	DC21	2016	Port Shepstone Ray Nkonyeni	150 001 - 200 000	23
district	DC21	2016	Port Shepstone Ray Nkonyeni	200 001 - 300 000	15
district	DC21	2016	Port Shepstone Ray Nkonyeni	300 001 - 500 000	31
district	DC21	2016	Port Shepstone Ray Nkonyeni	500 001 - 800 000	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	800 001 - 1 000 000	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	> 1 000 000	\N
district	DC27	2016	St Lucia Mtubatuba	< 1 500	64
district	DC27	2016	St Lucia Mtubatuba	1 501 - 3 000	\N
district	DC27	2016	St Lucia Mtubatuba	3 001 - 5 000	\N
district	DC27	2016	St Lucia Mtubatuba	5 001 - 10 000	\N
district	DC27	2016	St Lucia Mtubatuba	10 001 - 20 000	\N
district	DC27	2016	St Lucia Mtubatuba	20 001 - 30 000	\N
district	DC27	2016	St Lucia Mtubatuba	30 001 - 40 000	81
district	DC27	2016	St Lucia Mtubatuba	40 001 - 50 000	\N
district	DC27	2016	St Lucia Mtubatuba	50 001 - 100 000	194
district	DC27	2016	St Lucia Mtubatuba	100 001 - 150 000	\N
district	DC27	2016	St Lucia Mtubatuba	150 001 - 200 000	\N
district	DC27	2016	St Lucia Mtubatuba	200 001 - 300 000	\N
district	DC27	2016	St Lucia Mtubatuba	300 001 - 500 000	\N
district	DC27	2016	St Lucia Mtubatuba	500 001 - 800 000	\N
district	DC27	2016	St Lucia Mtubatuba	800 001 - 1 000 000	\N
district	DC27	2016	St Lucia Mtubatuba	> 1 000 000	\N
district	DC26	2016	Ulundi	< 1 500	10287
district	DC26	2016	Ulundi	1 501 - 3 000	\N
district	DC26	2016	Ulundi	3 001 - 5 000	\N
district	DC26	2016	Ulundi	5 001 - 10 000	122
district	DC26	2016	Ulundi	10 001 - 20 000	4918
district	DC26	2016	Ulundi	20 001 - 30 000	22
district	DC26	2016	Ulundi	30 001 - 40 000	111
district	DC26	2016	Ulundi	40 001 - 50 000	73
district	DC26	2016	Ulundi	50 001 - 100 000	461
district	DC26	2016	Ulundi	100 001 - 150 000	127
district	DC26	2016	Ulundi	150 001 - 200 000	\N
district	DC26	2016	Ulundi	200 001 - 300 000	\N
district	DC26	2016	Ulundi	300 001 - 500 000	\N
district	DC26	2016	Ulundi	500 001 - 800 000	\N
district	DC26	2016	Ulundi	800 001 - 1 000 000	\N
district	DC26	2016	Ulundi	> 1 000 000	\N
district	DC43	2016	Underberg KwaSani	< 1 500	\N
district	DC43	2016	Underberg KwaSani	1 501 - 3 000	\N
district	DC43	2016	Underberg KwaSani	3 001 - 5 000	410
district	DC43	2016	Underberg KwaSani	5 001 - 10 000	3833
district	DC43	2016	Underberg KwaSani	10 001 - 20 000	2186
district	DC43	2016	Underberg KwaSani	20 001 - 30 000	1118
district	DC43	2016	Underberg KwaSani	30 001 - 40 000	1006
district	DC43	2016	Underberg KwaSani	40 001 - 50 000	983
district	DC43	2016	Underberg KwaSani	50 001 - 100 000	5134
district	DC43	2016	Underberg KwaSani	100 001 - 150 000	297
district	DC43	2016	Underberg KwaSani	150 001 - 200 000	21
district	DC43	2016	Underberg KwaSani	200 001 - 300 000	25
district	DC43	2016	Underberg KwaSani	300 001 - 500 000	\N
district	DC43	2016	Underberg KwaSani	500 001 - 800 000	\N
district	DC43	2016	Underberg KwaSani	800 001 - 1 000 000	\N
district	DC43	2016	Underberg KwaSani	> 1 000 000	\N
district	DC25	2016	Utrecht eMadlangeni	< 1 500	389
district	DC25	2016	Utrecht eMadlangeni	1 501 - 3 000	22
district	DC25	2016	Utrecht eMadlangeni	3 001 - 5 000	3675
district	DC25	2016	Utrecht eMadlangeni	5 001 - 10 000	6003
district	DC25	2016	Utrecht eMadlangeni	10 001 - 20 000	7689
district	DC25	2016	Utrecht eMadlangeni	20 001 - 30 000	1905
district	DC25	2016	Utrecht eMadlangeni	30 001 - 40 000	225
district	DC25	2016	Utrecht eMadlangeni	40 001 - 50 000	\N
district	DC25	2016	Utrecht eMadlangeni	50 001 - 100 000	46
district	DC25	2016	Utrecht eMadlangeni	100 001 - 150 000	20
district	DC25	2016	Utrecht eMadlangeni	150 001 - 200 000	\N
district	DC25	2016	Utrecht eMadlangeni	200 001 - 300 000	\N
district	DC25	2016	Utrecht eMadlangeni	300 001 - 500 000	\N
district	DC25	2016	Utrecht eMadlangeni	500 001 - 800 000	\N
district	DC25	2016	Utrecht eMadlangeni	800 001 - 1 000 000	\N
district	DC25	2016	Utrecht eMadlangeni	> 1 000 000	\N
district	DC26	2016	Vryheid Abaqulusi	< 1 500	\N
district	DC26	2016	Vryheid Abaqulusi	1 501 - 3 000	\N
district	DC26	2016	Vryheid Abaqulusi	3 001 - 5 000	\N
district	DC26	2016	Vryheid Abaqulusi	5 001 - 10 000	1041
district	DC26	2016	Vryheid Abaqulusi	10 001 - 20 000	\N
district	DC26	2016	Vryheid Abaqulusi	20 001 - 30 000	\N
district	DC26	2016	Vryheid Abaqulusi	30 001 - 40 000	\N
district	DC26	2016	Vryheid Abaqulusi	40 001 - 50 000	\N
district	DC26	2016	Vryheid Abaqulusi	50 001 - 100 000	\N
district	DC26	2016	Vryheid Abaqulusi	100 001 - 150 000	\N
district	DC26	2016	Vryheid Abaqulusi	150 001 - 200 000	\N
district	DC26	2016	Vryheid Abaqulusi	200 001 - 300 000	\N
district	DC26	2016	Vryheid Abaqulusi	300 001 - 500 000	\N
district	DC26	2016	Vryheid Abaqulusi	500 001 - 800 000	\N
district	DC26	2016	Vryheid Abaqulusi	800 001 - 1 000 000	\N
district	DC26	2016	Vryheid Abaqulusi	> 1 000 000	\N
district	DC35	2016	Alldays Blouberg	< 1 500	117
district	DC35	2016	Alldays Blouberg	1 501 - 3 000	1548
district	DC35	2016	Alldays Blouberg	3 001 - 5 000	9230
district	DC35	2016	Alldays Blouberg	5 001 - 10 000	4652
district	DC35	2016	Alldays Blouberg	10 001 - 20 000	1479
district	DC35	2016	Alldays Blouberg	20 001 - 30 000	816
district	DC35	2016	Alldays Blouberg	30 001 - 40 000	\N
district	DC35	2016	Alldays Blouberg	40 001 - 50 000	86
district	DC35	2016	Alldays Blouberg	50 001 - 100 000	59
district	DC35	2016	Alldays Blouberg	100 001 - 150 000	\N
district	DC35	2016	Alldays Blouberg	150 001 - 200 000	\N
district	DC35	2016	Alldays Blouberg	200 001 - 300 000	\N
district	DC35	2016	Alldays Blouberg	300 001 - 500 000	\N
district	DC35	2016	Alldays Blouberg	500 001 - 800 000	\N
district	DC35	2016	Alldays Blouberg	800 001 - 1 000 000	\N
district	DC35	2016	Alldays Blouberg	> 1 000 000	\N
district	DC47	2016	Burgersfort Thubatse	< 1 500	4006
district	DC47	2016	Burgersfort Thubatse	1 501 - 3 000	831
district	DC47	2016	Burgersfort Thubatse	3 001 - 5 000	1716
district	DC47	2016	Burgersfort Thubatse	5 001 - 10 000	1708
district	DC47	2016	Burgersfort Thubatse	10 001 - 20 000	3177
district	DC47	2016	Burgersfort Thubatse	20 001 - 30 000	1179
district	DC47	2016	Burgersfort Thubatse	30 001 - 40 000	132
district	DC47	2016	Burgersfort Thubatse	40 001 - 50 000	\N
district	DC47	2016	Burgersfort Thubatse	50 001 - 100 000	783
district	DC47	2016	Burgersfort Thubatse	100 001 - 150 000	232
district	DC47	2016	Burgersfort Thubatse	150 001 - 200 000	464
district	DC47	2016	Burgersfort Thubatse	200 001 - 300 000	149
district	DC47	2016	Burgersfort Thubatse	300 001 - 500 000	41
district	DC47	2016	Burgersfort Thubatse	500 001 - 800 000	374
district	DC47	2016	Burgersfort Thubatse	800 001 - 1 000 000	58
district	DC47	2016	Burgersfort Thubatse	> 1 000 000	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	< 1 500	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	1 501 - 3 000	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	3 001 - 5 000	1329
district	DC34	2016	Dendron Makhado (Louis Trichardt)	5 001 - 10 000	11435
district	DC34	2016	Dendron Makhado (Louis Trichardt)	10 001 - 20 000	3378
district	DC34	2016	Dendron Makhado (Louis Trichardt)	20 001 - 30 000	513
district	DC34	2016	Dendron Makhado (Louis Trichardt)	30 001 - 40 000	385
district	DC34	2016	Dendron Makhado (Louis Trichardt)	40 001 - 50 000	97
district	DC34	2016	Dendron Makhado (Louis Trichardt)	50 001 - 100 000	604
district	DC34	2016	Dendron Makhado (Louis Trichardt)	100 001 - 150 000	267
district	DC34	2016	Dendron Makhado (Louis Trichardt)	150 001 - 200 000	80
district	DC34	2016	Dendron Makhado (Louis Trichardt)	200 001 - 300 000	31
district	DC34	2016	Dendron Makhado (Louis Trichardt)	300 001 - 500 000	22
district	DC34	2016	Dendron Makhado (Louis Trichardt)	500 001 - 800 000	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	800 001 - 1 000 000	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	> 1 000 000	\N
district	DC36	2016	Ellisras Lephalale	< 1 500	\N
district	DC36	2016	Ellisras Lephalale	1 501 - 3 000	1087
district	DC36	2016	Ellisras Lephalale	3 001 - 5 000	1185
district	DC36	2016	Ellisras Lephalale	5 001 - 10 000	8789
district	DC36	2016	Ellisras Lephalale	10 001 - 20 000	5859
district	DC36	2016	Ellisras Lephalale	20 001 - 30 000	\N
district	DC36	2016	Ellisras Lephalale	30 001 - 40 000	338
district	DC36	2016	Ellisras Lephalale	40 001 - 50 000	23
district	DC36	2016	Ellisras Lephalale	50 001 - 100 000	67
district	DC36	2016	Ellisras Lephalale	100 001 - 150 000	\N
district	DC36	2016	Ellisras Lephalale	150 001 - 200 000	\N
district	DC36	2016	Ellisras Lephalale	200 001 - 300 000	\N
district	DC36	2016	Ellisras Lephalale	300 001 - 500 000	22
district	DC36	2016	Ellisras Lephalale	500 001 - 800 000	\N
district	DC36	2016	Ellisras Lephalale	800 001 - 1 000 000	\N
district	DC36	2016	Ellisras Lephalale	> 1 000 000	\N
district	DC36	2016	Marken	< 1 500	\N
district	DC36	2016	Marken	1 501 - 3 000	446
district	DC36	2016	Marken	3 001 - 5 000	1279
district	DC36	2016	Marken	5 001 - 10 000	10801
district	DC36	2016	Marken	10 001 - 20 000	2485
district	DC36	2016	Marken	20 001 - 30 000	2859
district	DC36	2016	Marken	30 001 - 40 000	\N
district	DC36	2016	Marken	40 001 - 50 000	\N
district	DC36	2016	Marken	50 001 - 100 000	93
district	DC36	2016	Marken	100 001 - 150 000	\N
district	DC36	2016	Marken	150 001 - 200 000	\N
district	DC36	2016	Marken	200 001 - 300 000	\N
district	DC36	2016	Marken	300 001 - 500 000	\N
district	DC36	2016	Marken	500 001 - 800 000	\N
district	DC36	2016	Marken	800 001 - 1 000 000	\N
district	DC36	2016	Marken	> 1 000 000	\N
district	DC34	2016	Musina	< 1 500	56
district	DC34	2016	Musina	1 501 - 3 000	\N
district	DC34	2016	Musina	3 001 - 5 000	264
district	DC34	2016	Musina	5 001 - 10 000	21
district	DC34	2016	Musina	10 001 - 20 000	\N
district	DC34	2016	Musina	20 001 - 30 000	\N
district	DC34	2016	Musina	30 001 - 40 000	258
district	DC34	2016	Musina	40 001 - 50 000	73
district	DC34	2016	Musina	50 001 - 100 000	100
district	DC34	2016	Musina	100 001 - 150 000	\N
district	DC34	2016	Musina	150 001 - 200 000	\N
district	DC34	2016	Musina	200 001 - 300 000	\N
district	DC34	2016	Musina	300 001 - 500 000	\N
district	DC34	2016	Musina	500 001 - 800 000	\N
district	DC34	2016	Musina	800 001 - 1 000 000	\N
district	DC34	2016	Musina	> 1 000 000	157
district	DC36	2016	Nylstroom Modimolle	< 1 500	418
district	DC36	2016	Nylstroom Modimolle	1 501 - 3 000	2104
district	DC36	2016	Nylstroom Modimolle	3 001 - 5 000	418
district	DC36	2016	Nylstroom Modimolle	5 001 - 10 000	7802
district	DC36	2016	Nylstroom Modimolle	10 001 - 20 000	9044
district	DC36	2016	Nylstroom Modimolle	20 001 - 30 000	6799
district	DC36	2016	Nylstroom Modimolle	30 001 - 40 000	1178
district	DC36	2016	Nylstroom Modimolle	40 001 - 50 000	470
district	DC36	2016	Nylstroom Modimolle	50 001 - 100 000	682
district	DC36	2016	Nylstroom Modimolle	100 001 - 150 000	118
district	DC36	2016	Nylstroom Modimolle	150 001 - 200 000	11
district	DC36	2016	Nylstroom Modimolle	200 001 - 300 000	\N
district	DC36	2016	Nylstroom Modimolle	300 001 - 500 000	17
district	DC36	2016	Nylstroom Modimolle	500 001 - 800 000	\N
district	DC36	2016	Nylstroom Modimolle	800 001 - 1 000 000	\N
district	DC36	2016	Nylstroom Modimolle	> 1 000 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	< 1 500	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	1 501 - 3 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	3 001 - 5 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	5 001 - 10 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	10 001 - 20 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	20 001 - 30 000	21
district	DC33	2016	Phalaborwa Ba-Phalaborwa	30 001 - 40 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	40 001 - 50 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	50 001 - 100 000	63
district	DC33	2016	Phalaborwa Ba-Phalaborwa	100 001 - 150 000	21
district	DC33	2016	Phalaborwa Ba-Phalaborwa	150 001 - 200 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	200 001 - 300 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	300 001 - 500 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	500 001 - 800 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	800 001 - 1 000 000	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	> 1 000 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	< 1 500	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	1 501 - 3 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	3 001 - 5 000	1632
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	5 001 - 10 000	1861
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	10 001 - 20 000	4285
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	20 001 - 30 000	886
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	30 001 - 40 000	182
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	40 001 - 50 000	42
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	50 001 - 100 000	80
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	100 001 - 150 000	335
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	150 001 - 200 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	200 001 - 300 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	300 001 - 500 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	500 001 - 800 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	800 001 - 1 000 000	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	> 1 000 000	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	< 1 500	322
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	1 501 - 3 000	74
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	3 001 - 5 000	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	5 001 - 10 000	592
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	10 001 - 20 000	1396
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	20 001 - 30 000	1517
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	30 001 - 40 000	51
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	40 001 - 50 000	105
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	50 001 - 100 000	842
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	100 001 - 150 000	72
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	150 001 - 200 000	80
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	200 001 - 300 000	78
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	300 001 - 500 000	39
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	500 001 - 800 000	13
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	800 001 - 1 000 000	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	> 1 000 000	\N
district	DC36	2016	Thabazimbi	< 1 500	2078
district	DC36	2016	Thabazimbi	1 501 - 3 000	\N
district	DC36	2016	Thabazimbi	3 001 - 5 000	16
district	DC36	2016	Thabazimbi	5 001 - 10 000	6816
district	DC36	2016	Thabazimbi	10 001 - 20 000	11718
district	DC36	2016	Thabazimbi	20 001 - 30 000	440
district	DC36	2016	Thabazimbi	30 001 - 40 000	1023
district	DC36	2016	Thabazimbi	40 001 - 50 000	140
district	DC36	2016	Thabazimbi	50 001 - 100 000	1533
district	DC36	2016	Thabazimbi	100 001 - 150 000	11
district	DC36	2016	Thabazimbi	150 001 - 200 000	\N
district	DC36	2016	Thabazimbi	200 001 - 300 000	\N
district	DC36	2016	Thabazimbi	300 001 - 500 000	\N
district	DC36	2016	Thabazimbi	500 001 - 800 000	22
district	DC36	2016	Thabazimbi	800 001 - 1 000 000	\N
district	DC36	2016	Thabazimbi	> 1 000 000	\N
district	DC35	2016	Usutu	< 1 500	\N
district	DC35	2016	Usutu	1 501 - 3 000	\N
district	DC35	2016	Usutu	3 001 - 5 000	2028
district	DC35	2016	Usutu	5 001 - 10 000	1820
district	DC35	2016	Usutu	10 001 - 20 000	141
district	DC35	2016	Usutu	20 001 - 30 000	949
district	DC35	2016	Usutu	30 001 - 40 000	\N
district	DC35	2016	Usutu	40 001 - 50 000	\N
district	DC35	2016	Usutu	50 001 - 100 000	\N
district	DC35	2016	Usutu	100 001 - 150 000	\N
district	DC35	2016	Usutu	150 001 - 200 000	\N
district	DC35	2016	Usutu	200 001 - 300 000	\N
district	DC35	2016	Usutu	300 001 - 500 000	\N
district	DC35	2016	Usutu	500 001 - 800 000	\N
district	DC35	2016	Usutu	800 001 - 1 000 000	\N
district	DC35	2016	Usutu	> 1 000 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	< 1 500	\N
district	DC32	2016	Acornhoek Bushbuckridge	1 501 - 3 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	3 001 - 5 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	5 001 - 10 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	10 001 - 20 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	20 001 - 30 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	30 001 - 40 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	40 001 - 50 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	50 001 - 100 000	475
district	DC32	2016	Acornhoek Bushbuckridge	100 001 - 150 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	150 001 - 200 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	200 001 - 300 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	300 001 - 500 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	500 001 - 800 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	800 001 - 1 000 000	\N
district	DC32	2016	Acornhoek Bushbuckridge	> 1 000 000	\N
district	DC30	2016	Amsterdam Mkhondo	< 1 500	99
district	DC30	2016	Amsterdam Mkhondo	1 501 - 3 000	\N
district	DC30	2016	Amsterdam Mkhondo	3 001 - 5 000	\N
district	DC30	2016	Amsterdam Mkhondo	5 001 - 10 000	1604
district	DC30	2016	Amsterdam Mkhondo	10 001 - 20 000	7571
district	DC30	2016	Amsterdam Mkhondo	20 001 - 30 000	2838
district	DC30	2016	Amsterdam Mkhondo	30 001 - 40 000	1700
district	DC30	2016	Amsterdam Mkhondo	40 001 - 50 000	81
district	DC30	2016	Amsterdam Mkhondo	50 001 - 100 000	66
district	DC30	2016	Amsterdam Mkhondo	100 001 - 150 000	382
district	DC30	2016	Amsterdam Mkhondo	150 001 - 200 000	44
district	DC30	2016	Amsterdam Mkhondo	200 001 - 300 000	51
district	DC30	2016	Amsterdam Mkhondo	300 001 - 500 000	25
district	DC30	2016	Amsterdam Mkhondo	500 001 - 800 000	\N
district	DC30	2016	Amsterdam Mkhondo	800 001 - 1 000 000	\N
district	DC30	2016	Amsterdam Mkhondo	> 1 000 000	\N
district	DC30	2016	Bethal Gonovan Mbeki	< 1 500	\N
district	DC30	2016	Bethal Gonovan Mbeki	1 501 - 3 000	396
district	DC30	2016	Bethal Gonovan Mbeki	3 001 - 5 000	840
district	DC30	2016	Bethal Gonovan Mbeki	5 001 - 10 000	2935
district	DC30	2016	Bethal Gonovan Mbeki	10 001 - 20 000	8216
district	DC30	2016	Bethal Gonovan Mbeki	20 001 - 30 000	3390
district	DC30	2016	Bethal Gonovan Mbeki	30 001 - 40 000	3790
district	DC30	2016	Bethal Gonovan Mbeki	40 001 - 50 000	2397
district	DC30	2016	Bethal Gonovan Mbeki	50 001 - 100 000	98
district	DC30	2016	Bethal Gonovan Mbeki	100 001 - 150 000	201
district	DC30	2016	Bethal Gonovan Mbeki	150 001 - 200 000	\N
district	DC30	2016	Bethal Gonovan Mbeki	200 001 - 300 000	\N
district	DC30	2016	Bethal Gonovan Mbeki	300 001 - 500 000	23
district	DC30	2016	Bethal Gonovan Mbeki	500 001 - 800 000	\N
district	DC30	2016	Bethal Gonovan Mbeki	800 001 - 1 000 000	\N
district	DC30	2016	Bethal Gonovan Mbeki	> 1 000 000	\N
district	DC32	2016	Komatipoort Nkomazi	< 1 500	\N
district	DC32	2016	Komatipoort Nkomazi	1 501 - 3 000	291
district	DC32	2016	Komatipoort Nkomazi	3 001 - 5 000	\N
district	DC32	2016	Komatipoort Nkomazi	5 001 - 10 000	975
district	DC32	2016	Komatipoort Nkomazi	10 001 - 20 000	1048
district	DC32	2016	Komatipoort Nkomazi	20 001 - 30 000	184
district	DC32	2016	Komatipoort Nkomazi	30 001 - 40 000	157
district	DC32	2016	Komatipoort Nkomazi	40 001 - 50 000	\N
district	DC32	2016	Komatipoort Nkomazi	50 001 - 100 000	4690
district	DC32	2016	Komatipoort Nkomazi	100 001 - 150 000	473
district	DC32	2016	Komatipoort Nkomazi	150 001 - 200 000	366
district	DC32	2016	Komatipoort Nkomazi	200 001 - 300 000	57
district	DC32	2016	Komatipoort Nkomazi	300 001 - 500 000	103
district	DC32	2016	Komatipoort Nkomazi	500 001 - 800 000	\N
district	DC32	2016	Komatipoort Nkomazi	800 001 - 1 000 000	\N
district	DC32	2016	Komatipoort Nkomazi	> 1 000 000	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	< 1 500	706
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	1 501 - 3 000	614
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	3 001 - 5 000	1808
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	5 001 - 10 000	10042
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	10 001 - 20 000	4768
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	20 001 - 30 000	9937
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	30 001 - 40 000	1308
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	40 001 - 50 000	805
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	50 001 - 100 000	1791
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	100 001 - 150 000	1609
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	150 001 - 200 000	204
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	200 001 - 300 000	443
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	300 001 - 500 000	316
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	500 001 - 800 000	11
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	800 001 - 1 000 000	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	> 1 000 000	\N
district	DC32	2016	Nelspruit Mbombela	< 1 500	1000
district	DC32	2016	Nelspruit Mbombela	1 501 - 3 000	502
district	DC32	2016	Nelspruit Mbombela	3 001 - 5 000	\N
district	DC32	2016	Nelspruit Mbombela	5 001 - 10 000	9908
district	DC32	2016	Nelspruit Mbombela	10 001 - 20 000	5289
district	DC32	2016	Nelspruit Mbombela	20 001 - 30 000	817
district	DC32	2016	Nelspruit Mbombela	30 001 - 40 000	618
district	DC32	2016	Nelspruit Mbombela	40 001 - 50 000	889
district	DC32	2016	Nelspruit Mbombela	50 001 - 100 000	508
district	DC32	2016	Nelspruit Mbombela	100 001 - 150 000	133
district	DC32	2016	Nelspruit Mbombela	150 001 - 200 000	142
district	DC32	2016	Nelspruit Mbombela	200 001 - 300 000	76
district	DC32	2016	Nelspruit Mbombela	300 001 - 500 000	177
district	DC32	2016	Nelspruit Mbombela	500 001 - 800 000	34
district	DC32	2016	Nelspruit Mbombela	800 001 - 1 000 000	\N
district	DC32	2016	Nelspruit Mbombela	> 1 000 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	< 1 500	2017
district	DC9	2016	Barkley-Wes Dikgatlong	1 501 - 3 000	1822
district	DC9	2016	Barkley-Wes Dikgatlong	3 001 - 5 000	4205
district	DC9	2016	Barkley-Wes Dikgatlong	5 001 - 10 000	7520
district	DC9	2016	Barkley-Wes Dikgatlong	10 001 - 20 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	20 001 - 30 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	30 001 - 40 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	40 001 - 50 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	50 001 - 100 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	100 001 - 150 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	150 001 - 200 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	200 001 - 300 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	300 001 - 500 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	500 001 - 800 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	800 001 - 1 000 000	\N
district	DC9	2016	Barkley-Wes Dikgatlong	> 1 000 000	\N
district	DC7	2016	Britstown	< 1 500	25207
district	DC7	2016	Britstown	1 501 - 3 000	40869
district	DC7	2016	Britstown	3 001 - 5 000	829
district	DC7	2016	Britstown	5 001 - 10 000	\N
district	DC7	2016	Britstown	10 001 - 20 000	\N
district	DC7	2016	Britstown	20 001 - 30 000	\N
district	DC7	2016	Britstown	30 001 - 40 000	\N
district	DC7	2016	Britstown	40 001 - 50 000	\N
district	DC7	2016	Britstown	50 001 - 100 000	\N
district	DC7	2016	Britstown	100 001 - 150 000	\N
district	DC7	2016	Britstown	150 001 - 200 000	\N
district	DC7	2016	Britstown	200 001 - 300 000	\N
district	DC7	2016	Britstown	300 001 - 500 000	\N
district	DC7	2016	Britstown	500 001 - 800 000	\N
district	DC7	2016	Britstown	800 001 - 1 000 000	\N
district	DC7	2016	Britstown	> 1 000 000	\N
district	DC6	2016	Calvinia Hantam	< 1 500	29400
district	DC6	2016	Calvinia Hantam	1 501 - 3 000	12700
district	DC6	2016	Calvinia Hantam	3 001 - 5 000	\N
district	DC6	2016	Calvinia Hantam	5 001 - 10 000	\N
district	DC6	2016	Calvinia Hantam	10 001 - 20 000	\N
district	DC6	2016	Calvinia Hantam	20 001 - 30 000	\N
district	DC6	2016	Calvinia Hantam	30 001 - 40 000	\N
district	DC6	2016	Calvinia Hantam	40 001 - 50 000	\N
district	DC6	2016	Calvinia Hantam	50 001 - 100 000	\N
district	DC6	2016	Calvinia Hantam	100 001 - 150 000	\N
district	DC6	2016	Calvinia Hantam	150 001 - 200 000	\N
district	DC6	2016	Calvinia Hantam	200 001 - 300 000	\N
district	DC6	2016	Calvinia Hantam	300 001 - 500 000	\N
district	DC6	2016	Calvinia Hantam	500 001 - 800 000	\N
district	DC6	2016	Calvinia Hantam	800 001 - 1 000 000	\N
district	DC6	2016	Calvinia Hantam	> 1 000 000	\N
district	DC7	2016	Carnavon Kareeberg	< 1 500	2030
district	DC7	2016	Carnavon Kareeberg	1 501 - 3 000	36575
district	DC7	2016	Carnavon Kareeberg	3 001 - 5 000	\N
district	DC7	2016	Carnavon Kareeberg	5 001 - 10 000	\N
district	DC7	2016	Carnavon Kareeberg	10 001 - 20 000	\N
district	DC7	2016	Carnavon Kareeberg	20 001 - 30 000	\N
district	DC7	2016	Carnavon Kareeberg	30 001 - 40 000	\N
district	DC7	2016	Carnavon Kareeberg	40 001 - 50 000	\N
district	DC7	2016	Carnavon Kareeberg	50 001 - 100 000	\N
district	DC7	2016	Carnavon Kareeberg	100 001 - 150 000	\N
district	DC7	2016	Carnavon Kareeberg	150 001 - 200 000	\N
district	DC7	2016	Carnavon Kareeberg	200 001 - 300 000	\N
district	DC7	2016	Carnavon Kareeberg	300 001 - 500 000	\N
district	DC7	2016	Carnavon Kareeberg	500 001 - 800 000	\N
district	DC7	2016	Carnavon Kareeberg	800 001 - 1 000 000	\N
district	DC7	2016	Carnavon Kareeberg	> 1 000 000	\N
district	DC7	2016	Colesberg Umsombomvu	< 1 500	7734
district	DC7	2016	Colesberg Umsombomvu	1 501 - 3 000	16558
district	DC7	2016	Colesberg Umsombomvu	3 001 - 5 000	\N
district	DC7	2016	Colesberg Umsombomvu	5 001 - 10 000	3275
district	DC7	2016	Colesberg Umsombomvu	10 001 - 20 000	\N
district	DC7	2016	Colesberg Umsombomvu	20 001 - 30 000	\N
district	DC7	2016	Colesberg Umsombomvu	30 001 - 40 000	\N
district	DC7	2016	Colesberg Umsombomvu	40 001 - 50 000	\N
district	DC7	2016	Colesberg Umsombomvu	50 001 - 100 000	\N
district	DC7	2016	Colesberg Umsombomvu	100 001 - 150 000	\N
district	DC7	2016	Colesberg Umsombomvu	150 001 - 200 000	\N
district	DC7	2016	Colesberg Umsombomvu	200 001 - 300 000	\N
district	DC7	2016	Colesberg Umsombomvu	300 001 - 500 000	\N
district	DC7	2016	Colesberg Umsombomvu	500 001 - 800 000	\N
district	DC7	2016	Colesberg Umsombomvu	800 001 - 1 000 000	\N
district	DC7	2016	Colesberg Umsombomvu	> 1 000 000	\N
district	DC7	2016	Douglas Siyancuma	< 1 500	\N
district	DC7	2016	Douglas Siyancuma	1 501 - 3 000	\N
district	DC7	2016	Douglas Siyancuma	3 001 - 5 000	707
district	DC7	2016	Douglas Siyancuma	5 001 - 10 000	\N
district	DC7	2016	Douglas Siyancuma	10 001 - 20 000	\N
district	DC7	2016	Douglas Siyancuma	20 001 - 30 000	\N
district	DC7	2016	Douglas Siyancuma	30 001 - 40 000	\N
district	DC7	2016	Douglas Siyancuma	40 001 - 50 000	\N
district	DC7	2016	Douglas Siyancuma	50 001 - 100 000	\N
district	DC7	2016	Douglas Siyancuma	100 001 - 150 000	57
district	DC7	2016	Douglas Siyancuma	150 001 - 200 000	139
district	DC7	2016	Douglas Siyancuma	200 001 - 300 000	39
district	DC7	2016	Douglas Siyancuma	300 001 - 500 000	\N
district	DC7	2016	Douglas Siyancuma	500 001 - 800 000	\N
district	DC7	2016	Douglas Siyancuma	800 001 - 1 000 000	\N
district	DC7	2016	Douglas Siyancuma	> 1 000 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	< 1 500	19598
district	DC6	2016	Fraserburg Karoo Hoogland	1 501 - 3 000	6461
district	DC6	2016	Fraserburg Karoo Hoogland	3 001 - 5 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	5 001 - 10 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	10 001 - 20 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	20 001 - 30 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	30 001 - 40 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	40 001 - 50 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	50 001 - 100 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	100 001 - 150 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	150 001 - 200 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	200 001 - 300 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	300 001 - 500 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	500 001 - 800 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	800 001 - 1 000 000	\N
district	DC6	2016	Fraserburg Karoo Hoogland	> 1 000 000	\N
district	DC6	2016	Gordonia	< 1 500	33314
district	DC6	2016	Gordonia	1 501 - 3 000	64579
district	DC6	2016	Gordonia	3 001 - 5 000	13469
district	DC6	2016	Gordonia	5 001 - 10 000	359
district	DC6	2016	Gordonia	10 001 - 20 000	23
district	DC6	2016	Gordonia	20 001 - 30 000	\N
district	DC6	2016	Gordonia	30 001 - 40 000	\N
district	DC6	2016	Gordonia	40 001 - 50 000	\N
district	DC6	2016	Gordonia	50 001 - 100 000	14
district	DC6	2016	Gordonia	100 001 - 150 000	22
district	DC6	2016	Gordonia	150 001 - 200 000	16
district	DC6	2016	Gordonia	200 001 - 300 000	\N
district	DC6	2016	Gordonia	300 001 - 500 000	\N
district	DC6	2016	Gordonia	500 001 - 800 000	\N
district	DC6	2016	Gordonia	800 001 - 1 000 000	\N
district	DC6	2016	Gordonia	> 1 000 000	\N
district	DC7	2016	Hanover Emthanjeni	< 1 500	\N
district	DC7	2016	Hanover Emthanjeni	1 501 - 3 000	5401
district	DC7	2016	Hanover Emthanjeni	3 001 - 5 000	857
district	DC7	2016	Hanover Emthanjeni	5 001 - 10 000	2218
district	DC7	2016	Hanover Emthanjeni	10 001 - 20 000	\N
district	DC7	2016	Hanover Emthanjeni	20 001 - 30 000	\N
district	DC7	2016	Hanover Emthanjeni	30 001 - 40 000	\N
district	DC7	2016	Hanover Emthanjeni	40 001 - 50 000	\N
district	DC7	2016	Hanover Emthanjeni	50 001 - 100 000	\N
district	DC7	2016	Hanover Emthanjeni	100 001 - 150 000	\N
district	DC7	2016	Hanover Emthanjeni	150 001 - 200 000	\N
district	DC7	2016	Hanover Emthanjeni	200 001 - 300 000	\N
district	DC7	2016	Hanover Emthanjeni	300 001 - 500 000	\N
district	DC7	2016	Hanover Emthanjeni	500 001 - 800 000	\N
district	DC7	2016	Hanover Emthanjeni	800 001 - 1 000 000	\N
district	DC7	2016	Hanover Emthanjeni	> 1 000 000	\N
district	DC7	2016	Hopetown Thembelihle	< 1 500	\N
district	DC7	2016	Hopetown Thembelihle	1 501 - 3 000	9105
district	DC7	2016	Hopetown Thembelihle	3 001 - 5 000	\N
district	DC7	2016	Hopetown Thembelihle	5 001 - 10 000	491
district	DC7	2016	Hopetown Thembelihle	10 001 - 20 000	\N
district	DC7	2016	Hopetown Thembelihle	20 001 - 30 000	491
district	DC7	2016	Hopetown Thembelihle	30 001 - 40 000	\N
district	DC7	2016	Hopetown Thembelihle	40 001 - 50 000	\N
district	DC7	2016	Hopetown Thembelihle	50 001 - 100 000	\N
district	DC7	2016	Hopetown Thembelihle	100 001 - 150 000	423
district	DC7	2016	Hopetown Thembelihle	150 001 - 200 000	892
district	DC7	2016	Hopetown Thembelihle	200 001 - 300 000	278
district	DC7	2016	Hopetown Thembelihle	300 001 - 500 000	\N
district	DC7	2016	Hopetown Thembelihle	500 001 - 800 000	\N
district	DC7	2016	Hopetown Thembelihle	800 001 - 1 000 000	\N
district	DC7	2016	Hopetown Thembelihle	> 1 000 000	\N
district	DC8	2016	Kenhardt Kai !Garib	< 1 500	97346
district	DC8	2016	Kenhardt Kai !Garib	1 501 - 3 000	8154
district	DC8	2016	Kenhardt Kai !Garib	3 001 - 5 000	\N
district	DC8	2016	Kenhardt Kai !Garib	5 001 - 10 000	852
district	DC8	2016	Kenhardt Kai !Garib	10 001 - 20 000	44
district	DC8	2016	Kenhardt Kai !Garib	20 001 - 30 000	10
district	DC8	2016	Kenhardt Kai !Garib	30 001 - 40 000	\N
district	DC8	2016	Kenhardt Kai !Garib	40 001 - 50 000	\N
district	DC8	2016	Kenhardt Kai !Garib	50 001 - 100 000	12
district	DC8	2016	Kenhardt Kai !Garib	100 001 - 150 000	27
district	DC8	2016	Kenhardt Kai !Garib	150 001 - 200 000	\N
district	DC8	2016	Kenhardt Kai !Garib	200 001 - 300 000	45
district	DC8	2016	Kenhardt Kai !Garib	300 001 - 500 000	12
district	DC8	2016	Kenhardt Kai !Garib	500 001 - 800 000	\N
district	DC8	2016	Kenhardt Kai !Garib	800 001 - 1 000 000	\N
district	DC8	2016	Kenhardt Kai !Garib	> 1 000 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	< 1 500	4323
district	DC9	2016	Kimberley / HAY Frances Baard	1 501 - 3 000	25692
district	DC9	2016	Kimberley / HAY Frances Baard	3 001 - 5 000	30246
district	DC9	2016	Kimberley / HAY Frances Baard	5 001 - 10 000	2886
district	DC9	2016	Kimberley / HAY Frances Baard	10 001 - 20 000	917
district	DC9	2016	Kimberley / HAY Frances Baard	20 001 - 30 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	30 001 - 40 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	40 001 - 50 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	50 001 - 100 000	477
district	DC9	2016	Kimberley / HAY Frances Baard	100 001 - 150 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	150 001 - 200 000	29
district	DC9	2016	Kimberley / HAY Frances Baard	200 001 - 300 000	86
district	DC9	2016	Kimberley / HAY Frances Baard	300 001 - 500 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	500 001 - 800 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	800 001 - 1 000 000	\N
district	DC9	2016	Kimberley / HAY Frances Baard	> 1 000 000	46
district	DC45	2016	Kuruman Ga-Segonyana	< 1 500	2250
district	DC45	2016	Kuruman Ga-Segonyana	1 501 - 3 000	31409
district	DC45	2016	Kuruman Ga-Segonyana	3 001 - 5 000	12386
district	DC45	2016	Kuruman Ga-Segonyana	5 001 - 10 000	8637
district	DC45	2016	Kuruman Ga-Segonyana	10 001 - 20 000	712
district	DC45	2016	Kuruman Ga-Segonyana	20 001 - 30 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	30 001 - 40 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	40 001 - 50 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	50 001 - 100 000	60
district	DC45	2016	Kuruman Ga-Segonyana	100 001 - 150 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	150 001 - 200 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	200 001 - 300 000	300
district	DC45	2016	Kuruman Ga-Segonyana	300 001 - 500 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	500 001 - 800 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	800 001 - 1 000 000	\N
district	DC45	2016	Kuruman Ga-Segonyana	> 1 000 000	\N
district	DC6	2016	Namakwa	< 1 500	46362
district	DC6	2016	Namakwa	1 501 - 3 000	12989
district	DC6	2016	Namakwa	3 001 - 5 000	322
district	DC6	2016	Namakwa	5 001 - 10 000	\N
district	DC6	2016	Namakwa	10 001 - 20 000	38
district	DC6	2016	Namakwa	20 001 - 30 000	39
district	DC6	2016	Namakwa	30 001 - 40 000	\N
district	DC6	2016	Namakwa	40 001 - 50 000	\N
district	DC6	2016	Namakwa	50 001 - 100 000	24
district	DC6	2016	Namakwa	100 001 - 150 000	\N
district	DC6	2016	Namakwa	150 001 - 200 000	\N
district	DC6	2016	Namakwa	200 001 - 300 000	\N
district	DC6	2016	Namakwa	300 001 - 500 000	\N
district	DC6	2016	Namakwa	500 001 - 800 000	\N
district	DC6	2016	Namakwa	800 001 - 1 000 000	\N
district	DC6	2016	Namakwa	> 1 000 000	\N
district	DC7	2016	Phillipstown Renosterberg	< 1 500	7676
district	DC7	2016	Phillipstown Renosterberg	1 501 - 3 000	3431
district	DC7	2016	Phillipstown Renosterberg	3 001 - 5 000	\N
district	DC7	2016	Phillipstown Renosterberg	5 001 - 10 000	\N
district	DC7	2016	Phillipstown Renosterberg	10 001 - 20 000	1251
district	DC7	2016	Phillipstown Renosterberg	20 001 - 30 000	\N
district	DC7	2016	Phillipstown Renosterberg	30 001 - 40 000	\N
district	DC7	2016	Phillipstown Renosterberg	40 001 - 50 000	\N
district	DC7	2016	Phillipstown Renosterberg	50 001 - 100 000	\N
district	DC7	2016	Phillipstown Renosterberg	100 001 - 150 000	\N
district	DC7	2016	Phillipstown Renosterberg	150 001 - 200 000	\N
district	DC7	2016	Phillipstown Renosterberg	200 001 - 300 000	\N
district	DC7	2016	Phillipstown Renosterberg	300 001 - 500 000	\N
district	DC7	2016	Phillipstown Renosterberg	500 001 - 800 000	\N
district	DC7	2016	Phillipstown Renosterberg	800 001 - 1 000 000	\N
district	DC7	2016	Phillipstown Renosterberg	> 1 000 000	\N
district	DC7	2016	Prieska Siyathemba	< 1 500	1875
district	DC7	2016	Prieska Siyathemba	1 501 - 3 000	16382
district	DC7	2016	Prieska Siyathemba	3 001 - 5 000	\N
district	DC7	2016	Prieska Siyathemba	5 001 - 10 000	\N
district	DC7	2016	Prieska Siyathemba	10 001 - 20 000	\N
district	DC7	2016	Prieska Siyathemba	20 001 - 30 000	\N
district	DC7	2016	Prieska Siyathemba	30 001 - 40 000	\N
district	DC7	2016	Prieska Siyathemba	40 001 - 50 000	\N
district	DC7	2016	Prieska Siyathemba	50 001 - 100 000	\N
district	DC7	2016	Prieska Siyathemba	100 001 - 150 000	\N
district	DC7	2016	Prieska Siyathemba	150 001 - 200 000	\N
district	DC7	2016	Prieska Siyathemba	200 001 - 300 000	\N
district	DC7	2016	Prieska Siyathemba	300 001 - 500 000	\N
district	DC7	2016	Prieska Siyathemba	500 001 - 800 000	\N
district	DC7	2016	Prieska Siyathemba	800 001 - 1 000 000	\N
district	DC7	2016	Prieska Siyathemba	> 1 000 000	\N
district	DC7	2016	Richmond	< 1 500	\N
district	DC7	2016	Richmond	1 501 - 3 000	\N
district	DC7	2016	Richmond	3 001 - 5 000	175
district	DC7	2016	Richmond	5 001 - 10 000	\N
district	DC7	2016	Richmond	10 001 - 20 000	\N
district	DC7	2016	Richmond	20 001 - 30 000	\N
district	DC7	2016	Richmond	30 001 - 40 000	\N
district	DC7	2016	Richmond	40 001 - 50 000	\N
district	DC7	2016	Richmond	50 001 - 100 000	\N
district	DC7	2016	Richmond	100 001 - 150 000	\N
district	DC7	2016	Richmond	150 001 - 200 000	\N
district	DC7	2016	Richmond	200 001 - 300 000	\N
district	DC7	2016	Richmond	300 001 - 500 000	\N
district	DC7	2016	Richmond	500 001 - 800 000	\N
district	DC7	2016	Richmond	800 001 - 1 000 000	\N
district	DC7	2016	Richmond	> 1 000 000	\N
district	DC6	2016	Sutherland	< 1 500	19901
district	DC6	2016	Sutherland	1 501 - 3 000	4178
district	DC6	2016	Sutherland	3 001 - 5 000	\N
district	DC6	2016	Sutherland	5 001 - 10 000	\N
district	DC6	2016	Sutherland	10 001 - 20 000	\N
district	DC6	2016	Sutherland	20 001 - 30 000	\N
district	DC6	2016	Sutherland	30 001 - 40 000	\N
district	DC6	2016	Sutherland	40 001 - 50 000	\N
district	DC6	2016	Sutherland	50 001 - 100 000	\N
district	DC6	2016	Sutherland	100 001 - 150 000	\N
district	DC6	2016	Sutherland	150 001 - 200 000	\N
district	DC6	2016	Sutherland	200 001 - 300 000	\N
district	DC6	2016	Sutherland	300 001 - 500 000	\N
district	DC6	2016	Sutherland	500 001 - 800 000	\N
district	DC6	2016	Sutherland	800 001 - 1 000 000	\N
district	DC6	2016	Sutherland	> 1 000 000	\N
district	DC9	2016	Vaalharts Phokwane	< 1 500	\N
district	DC9	2016	Vaalharts Phokwane	1 501 - 3 000	\N
district	DC9	2016	Vaalharts Phokwane	3 001 - 5 000	\N
district	DC9	2016	Vaalharts Phokwane	5 001 - 10 000	\N
district	DC9	2016	Vaalharts Phokwane	10 001 - 20 000	\N
district	DC9	2016	Vaalharts Phokwane	20 001 - 30 000	\N
district	DC9	2016	Vaalharts Phokwane	30 001 - 40 000	\N
district	DC9	2016	Vaalharts Phokwane	40 001 - 50 000	\N
district	DC9	2016	Vaalharts Phokwane	50 001 - 100 000	266
district	DC9	2016	Vaalharts Phokwane	100 001 - 150 000	135
district	DC9	2016	Vaalharts Phokwane	150 001 - 200 000	78
district	DC9	2016	Vaalharts Phokwane	200 001 - 300 000	337
district	DC9	2016	Vaalharts Phokwane	300 001 - 500 000	405
district	DC9	2016	Vaalharts Phokwane	500 001 - 800 000	39
district	DC9	2016	Vaalharts Phokwane	800 001 - 1 000 000	33
district	DC9	2016	Vaalharts Phokwane	> 1 000 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	< 1 500	\N
district	DC7	2016	Victoria-Wes Umbuntu	1 501 - 3 000	9951
district	DC7	2016	Victoria-Wes Umbuntu	3 001 - 5 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	5 001 - 10 000	2034
district	DC7	2016	Victoria-Wes Umbuntu	10 001 - 20 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	20 001 - 30 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	30 001 - 40 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	40 001 - 50 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	50 001 - 100 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	100 001 - 150 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	150 001 - 200 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	200 001 - 300 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	300 001 - 500 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	500 001 - 800 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	800 001 - 1 000 000	\N
district	DC7	2016	Victoria-Wes Umbuntu	> 1 000 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	< 1 500	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	1 501 - 3 000	675
district	DC39	2016	Bloemhof Lekwa-Tecma	3 001 - 5 000	2589
district	DC39	2016	Bloemhof Lekwa-Tecma	5 001 - 10 000	7342
district	DC39	2016	Bloemhof Lekwa-Tecma	10 001 - 20 000	3352
district	DC39	2016	Bloemhof Lekwa-Tecma	20 001 - 30 000	88
district	DC39	2016	Bloemhof Lekwa-Tecma	30 001 - 40 000	85
district	DC39	2016	Bloemhof Lekwa-Tecma	40 001 - 50 000	37
district	DC39	2016	Bloemhof Lekwa-Tecma	50 001 - 100 000	116
district	DC39	2016	Bloemhof Lekwa-Tecma	100 001 - 150 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	150 001 - 200 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	200 001 - 300 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	300 001 - 500 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	500 001 - 800 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	800 001 - 1 000 000	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	> 1 000 000	\N
district	DC39	2016	Bray Kagisano-Molopo	< 1 500	\N
district	DC39	2016	Bray Kagisano-Molopo	1 501 - 3 000	\N
district	DC39	2016	Bray Kagisano-Molopo	3 001 - 5 000	10752
district	DC39	2016	Bray Kagisano-Molopo	5 001 - 10 000	4467
district	DC39	2016	Bray Kagisano-Molopo	10 001 - 20 000	\N
district	DC39	2016	Bray Kagisano-Molopo	20 001 - 30 000	\N
district	DC39	2016	Bray Kagisano-Molopo	30 001 - 40 000	\N
district	DC39	2016	Bray Kagisano-Molopo	40 001 - 50 000	\N
district	DC39	2016	Bray Kagisano-Molopo	50 001 - 100 000	\N
district	DC39	2016	Bray Kagisano-Molopo	100 001 - 150 000	\N
district	DC39	2016	Bray Kagisano-Molopo	150 001 - 200 000	\N
district	DC39	2016	Bray Kagisano-Molopo	200 001 - 300 000	\N
district	DC39	2016	Bray Kagisano-Molopo	300 001 - 500 000	\N
district	DC39	2016	Bray Kagisano-Molopo	500 001 - 800 000	\N
district	DC39	2016	Bray Kagisano-Molopo	800 001 - 1 000 000	\N
district	DC39	2016	Bray Kagisano-Molopo	> 1 000 000	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	< 1 500	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	1 501 - 3 000	277
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	3 001 - 5 000	2224
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	5 001 - 10 000	6818
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	10 001 - 20 000	6046
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	20 001 - 30 000	3310
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	30 001 - 40 000	145
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	40 001 - 50 000	82
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	50 001 - 100 000	71
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	100 001 - 150 000	27
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	150 001 - 200 000	33
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	200 001 - 300 000	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	300 001 - 500 000	23
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	500 001 - 800 000	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	800 001 - 1 000 000	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	> 1 000 000	\N
district	DC38	2016	Delareyville Tswaing	< 1 500	\N
district	DC38	2016	Delareyville Tswaing	1 501 - 3 000	514
district	DC38	2016	Delareyville Tswaing	3 001 - 5 000	371
district	DC38	2016	Delareyville Tswaing	5 001 - 10 000	8247
district	DC38	2016	Delareyville Tswaing	10 001 - 20 000	11029
district	DC38	2016	Delareyville Tswaing	20 001 - 30 000	694
district	DC38	2016	Delareyville Tswaing	30 001 - 40 000	43
district	DC38	2016	Delareyville Tswaing	40 001 - 50 000	\N
district	DC38	2016	Delareyville Tswaing	50 001 - 100 000	\N
district	DC38	2016	Delareyville Tswaing	100 001 - 150 000	\N
district	DC38	2016	Delareyville Tswaing	150 001 - 200 000	\N
district	DC38	2016	Delareyville Tswaing	200 001 - 300 000	\N
district	DC38	2016	Delareyville Tswaing	300 001 - 500 000	\N
district	DC38	2016	Delareyville Tswaing	500 001 - 800 000	\N
district	DC38	2016	Delareyville Tswaing	800 001 - 1 000 000	\N
district	DC38	2016	Delareyville Tswaing	> 1 000 000	\N
district	DC38	2016	Derdepoort	< 1 500	\N
district	DC38	2016	Derdepoort	1 501 - 3 000	\N
district	DC38	2016	Derdepoort	3 001 - 5 000	\N
district	DC38	2016	Derdepoort	5 001 - 10 000	5257
district	DC38	2016	Derdepoort	10 001 - 20 000	2710
district	DC38	2016	Derdepoort	20 001 - 30 000	\N
district	DC38	2016	Derdepoort	30 001 - 40 000	\N
district	DC38	2016	Derdepoort	40 001 - 50 000	\N
district	DC38	2016	Derdepoort	50 001 - 100 000	168
district	DC38	2016	Derdepoort	100 001 - 150 000	\N
district	DC38	2016	Derdepoort	150 001 - 200 000	\N
district	DC38	2016	Derdepoort	200 001 - 300 000	\N
district	DC38	2016	Derdepoort	300 001 - 500 000	\N
district	DC38	2016	Derdepoort	500 001 - 800 000	\N
district	DC38	2016	Derdepoort	800 001 - 1 000 000	\N
district	DC38	2016	Derdepoort	> 1 000 000	\N
municipality	DC40	2016	Ewbank	< 1 500	\N
municipality	DC40	2016	Ewbank	1 501 - 3 000	\N
municipality	DC40	2016	Ewbank	3 001 - 5 000	2730
municipality	DC40	2016	Ewbank	5 001 - 10 000	\N
municipality	DC40	2016	Ewbank	10 001 - 20 000	\N
municipality	DC40	2016	Ewbank	20 001 - 30 000	\N
municipality	DC40	2016	Ewbank	30 001 - 40 000	\N
municipality	DC40	2016	Ewbank	40 001 - 50 000	\N
municipality	DC40	2016	Ewbank	50 001 - 100 000	\N
municipality	DC40	2016	Ewbank	100 001 - 150 000	\N
municipality	DC40	2016	Ewbank	150 001 - 200 000	\N
municipality	DC40	2016	Ewbank	200 001 - 300 000	\N
municipality	DC40	2016	Ewbank	300 001 - 500 000	\N
municipality	DC40	2016	Ewbank	500 001 - 800 000	\N
municipality	DC40	2016	Ewbank	800 001 - 1 000 000	\N
municipality	DC40	2016	Ewbank	> 1 000 000	\N
district	DC38	2016	Mahikeng	< 1 500	1486
district	DC38	2016	Mahikeng	1 501 - 3 000	428
district	DC38	2016	Mahikeng	3 001 - 5 000	2182
district	DC38	2016	Mahikeng	5 001 - 10 000	3443
district	DC38	2016	Mahikeng	10 001 - 20 000	1510
district	DC38	2016	Mahikeng	20 001 - 30 000	\N
district	DC38	2016	Mahikeng	30 001 - 40 000	18
district	DC38	2016	Mahikeng	40 001 - 50 000	11
district	DC38	2016	Mahikeng	50 001 - 100 000	17
district	DC38	2016	Mahikeng	100 001 - 150 000	\N
district	DC38	2016	Mahikeng	150 001 - 200 000	\N
district	DC38	2016	Mahikeng	200 001 - 300 000	\N
district	DC38	2016	Mahikeng	300 001 - 500 000	\N
district	DC38	2016	Mahikeng	500 001 - 800 000	\N
district	DC38	2016	Mahikeng	800 001 - 1 000 000	\N
district	DC38	2016	Mahikeng	> 1 000 000	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	< 1 500	46
district	DC37	2016	Marikana (Rustenburg) Bonjala	1 501 - 3 000	198
district	DC37	2016	Marikana (Rustenburg) Bonjala	3 001 - 5 000	3155
district	DC37	2016	Marikana (Rustenburg) Bonjala	5 001 - 10 000	1861
district	DC37	2016	Marikana (Rustenburg) Bonjala	10 001 - 20 000	3816
district	DC37	2016	Marikana (Rustenburg) Bonjala	20 001 - 30 000	1788
district	DC37	2016	Marikana (Rustenburg) Bonjala	30 001 - 40 000	2030
district	DC37	2016	Marikana (Rustenburg) Bonjala	40 001 - 50 000	1641
district	DC37	2016	Marikana (Rustenburg) Bonjala	50 001 - 100 000	3329
district	DC37	2016	Marikana (Rustenburg) Bonjala	100 001 - 150 000	746
district	DC37	2016	Marikana (Rustenburg) Bonjala	150 001 - 200 000	181
district	DC37	2016	Marikana (Rustenburg) Bonjala	200 001 - 300 000	108
district	DC37	2016	Marikana (Rustenburg) Bonjala	300 001 - 500 000	172
district	DC37	2016	Marikana (Rustenburg) Bonjala	500 001 - 800 000	86
district	DC37	2016	Marikana (Rustenburg) Bonjala	800 001 - 1 000 000	60
district	DC37	2016	Marikana (Rustenburg) Bonjala	> 1 000 000	\N
district	DC39	2016	Moloporivier Bophirima	< 1 500	\N
district	DC39	2016	Moloporivier Bophirima	1 501 - 3 000	\N
district	DC39	2016	Moloporivier Bophirima	3 001 - 5 000	\N
district	DC39	2016	Moloporivier Bophirima	5 001 - 10 000	7191
district	DC39	2016	Moloporivier Bophirima	10 001 - 20 000	1545
district	DC39	2016	Moloporivier Bophirima	20 001 - 30 000	\N
district	DC39	2016	Moloporivier Bophirima	30 001 - 40 000	\N
district	DC39	2016	Moloporivier Bophirima	40 001 - 50 000	\N
district	DC39	2016	Moloporivier Bophirima	50 001 - 100 000	\N
district	DC39	2016	Moloporivier Bophirima	100 001 - 150 000	\N
district	DC39	2016	Moloporivier Bophirima	150 001 - 200 000	\N
district	DC39	2016	Moloporivier Bophirima	200 001 - 300 000	\N
district	DC39	2016	Moloporivier Bophirima	300 001 - 500 000	\N
district	DC39	2016	Moloporivier Bophirima	500 001 - 800 000	\N
district	DC39	2016	Moloporivier Bophirima	800 001 - 1 000 000	\N
district	DC39	2016	Moloporivier Bophirima	> 1 000 000	\N
district	DC39	2016	Reivilo Thaung	< 1 500	\N
district	DC39	2016	Reivilo Thaung	1 501 - 3 000	\N
district	DC39	2016	Reivilo Thaung	3 001 - 5 000	3992
district	DC39	2016	Reivilo Thaung	5 001 - 10 000	10295
district	DC39	2016	Reivilo Thaung	10 001 - 20 000	428
district	DC39	2016	Reivilo Thaung	20 001 - 30 000	449
district	DC39	2016	Reivilo Thaung	30 001 - 40 000	\N
district	DC39	2016	Reivilo Thaung	40 001 - 50 000	\N
district	DC39	2016	Reivilo Thaung	50 001 - 100 000	\N
district	DC39	2016	Reivilo Thaung	100 001 - 150 000	38
district	DC39	2016	Reivilo Thaung	150 001 - 200 000	\N
district	DC39	2016	Reivilo Thaung	200 001 - 300 000	\N
district	DC39	2016	Reivilo Thaung	300 001 - 500 000	\N
district	DC39	2016	Reivilo Thaung	500 001 - 800 000	33
district	DC39	2016	Reivilo Thaung	800 001 - 1 000 000	\N
district	DC39	2016	Reivilo Thaung	> 1 000 000	\N
municipality	DC40	2016	Vostershoop	< 1 500	\N
municipality	DC40	2016	Vostershoop	1 501 - 3 000	\N
municipality	DC40	2016	Vostershoop	3 001 - 5 000	\N
municipality	DC40	2016	Vostershoop	5 001 - 10 000	\N
municipality	DC40	2016	Vostershoop	10 001 - 20 000	302
municipality	DC40	2016	Vostershoop	20 001 - 30 000	\N
municipality	DC40	2016	Vostershoop	30 001 - 40 000	\N
municipality	DC40	2016	Vostershoop	40 001 - 50 000	\N
municipality	DC40	2016	Vostershoop	50 001 - 100 000	\N
municipality	DC40	2016	Vostershoop	100 001 - 150 000	\N
municipality	DC40	2016	Vostershoop	150 001 - 200 000	\N
municipality	DC40	2016	Vostershoop	200 001 - 300 000	\N
municipality	DC40	2016	Vostershoop	300 001 - 500 000	\N
municipality	DC40	2016	Vostershoop	500 001 - 800 000	\N
municipality	DC40	2016	Vostershoop	800 001 - 1 000 000	\N
municipality	DC40	2016	Vostershoop	> 1 000 000	\N
district	DC39	2016	Vryburg Naledi	< 1 500	\N
district	DC39	2016	Vryburg Naledi	1 501 - 3 000	1740
district	DC39	2016	Vryburg Naledi	3 001 - 5 000	3967
district	DC39	2016	Vryburg Naledi	5 001 - 10 000	17567
district	DC39	2016	Vryburg Naledi	10 001 - 20 000	1430
district	DC39	2016	Vryburg Naledi	20 001 - 30 000	366
district	DC39	2016	Vryburg Naledi	30 001 - 40 000	21
district	DC39	2016	Vryburg Naledi	40 001 - 50 000	\N
district	DC39	2016	Vryburg Naledi	50 001 - 100 000	\N
district	DC39	2016	Vryburg Naledi	100 001 - 150 000	16
district	DC39	2016	Vryburg Naledi	150 001 - 200 000	\N
district	DC39	2016	Vryburg Naledi	200 001 - 300 000	\N
district	DC39	2016	Vryburg Naledi	300 001 - 500 000	\N
district	DC39	2016	Vryburg Naledi	500 001 - 800 000	\N
district	DC39	2016	Vryburg Naledi	800 001 - 1 000 000	\N
district	DC39	2016	Vryburg Naledi	> 1 000 000	\N
district	DC40	2016	Wolmaransstad Maquassi	< 1 500	\N
district	DC40	2016	Wolmaransstad Maquassi	1 501 - 3 000	\N
district	DC40	2016	Wolmaransstad Maquassi	3 001 - 5 000	546
district	DC40	2016	Wolmaransstad Maquassi	5 001 - 10 000	3006
district	DC40	2016	Wolmaransstad Maquassi	10 001 - 20 000	1305
district	DC40	2016	Wolmaransstad Maquassi	20 001 - 30 000	543
district	DC40	2016	Wolmaransstad Maquassi	30 001 - 40 000	370
district	DC40	2016	Wolmaransstad Maquassi	40 001 - 50 000	139
district	DC40	2016	Wolmaransstad Maquassi	50 001 - 100 000	\N
district	DC40	2016	Wolmaransstad Maquassi	100 001 - 150 000	\N
district	DC40	2016	Wolmaransstad Maquassi	150 001 - 200 000	\N
district	DC40	2016	Wolmaransstad Maquassi	200 001 - 300 000	\N
district	DC40	2016	Wolmaransstad Maquassi	300 001 - 500 000	\N
district	DC40	2016	Wolmaransstad Maquassi	500 001 - 800 000	\N
district	DC40	2016	Wolmaransstad Maquassi	800 001 - 1 000 000	\N
district	DC40	2016	Wolmaransstad Maquassi	> 1 000 000	\N
district	DC38	2016	Zeerust Ramotshere	< 1 500	2194
district	DC38	2016	Zeerust Ramotshere	1 501 - 3 000	1958
district	DC38	2016	Zeerust Ramotshere	3 001 - 5 000	786
district	DC38	2016	Zeerust Ramotshere	5 001 - 10 000	11426
district	DC38	2016	Zeerust Ramotshere	10 001 - 20 000	8941
district	DC38	2016	Zeerust Ramotshere	20 001 - 30 000	3996
district	DC38	2016	Zeerust Ramotshere	30 001 - 40 000	326
district	DC38	2016	Zeerust Ramotshere	40 001 - 50 000	\N
district	DC38	2016	Zeerust Ramotshere	50 001 - 100 000	184
district	DC38	2016	Zeerust Ramotshere	100 001 - 150 000	53
district	DC38	2016	Zeerust Ramotshere	150 001 - 200 000	\N
district	DC38	2016	Zeerust Ramotshere	200 001 - 300 000	\N
district	DC38	2016	Zeerust Ramotshere	300 001 - 500 000	\N
district	DC38	2016	Zeerust Ramotshere	500 001 - 800 000	\N
district	DC38	2016	Zeerust Ramotshere	800 001 - 1 000 000	\N
district	DC38	2016	Zeerust Ramotshere	> 1 000 000	\N
district	DC4	2016	Albertinia HesseQua	< 1 500	\N
district	DC4	2016	Albertinia HesseQua	1 501 - 3 000	545
district	DC4	2016	Albertinia HesseQua	3 001 - 5 000	2333
district	DC4	2016	Albertinia HesseQua	5 001 - 10 000	384
district	DC4	2016	Albertinia HesseQua	10 001 - 20 000	\N
district	DC4	2016	Albertinia HesseQua	20 001 - 30 000	\N
district	DC4	2016	Albertinia HesseQua	30 001 - 40 000	\N
district	DC4	2016	Albertinia HesseQua	40 001 - 50 000	\N
district	DC4	2016	Albertinia HesseQua	50 001 - 100 000	\N
district	DC4	2016	Albertinia HesseQua	100 001 - 150 000	\N
district	DC4	2016	Albertinia HesseQua	150 001 - 200 000	\N
district	DC4	2016	Albertinia HesseQua	200 001 - 300 000	\N
district	DC4	2016	Albertinia HesseQua	300 001 - 500 000	\N
district	DC4	2016	Albertinia HesseQua	500 001 - 800 000	\N
district	DC4	2016	Albertinia HesseQua	800 001 - 1 000 000	\N
district	DC4	2016	Albertinia HesseQua	> 1 000 000	\N
district	DC5	2016	Beaufort-Wes	< 1 500	4080
district	DC5	2016	Beaufort-Wes	1 501 - 3 000	11222
district	DC5	2016	Beaufort-Wes	3 001 - 5 000	9919
district	DC5	2016	Beaufort-Wes	5 001 - 10 000	269
district	DC5	2016	Beaufort-Wes	10 001 - 20 000	478
district	DC5	2016	Beaufort-Wes	20 001 - 30 000	\N
district	DC5	2016	Beaufort-Wes	30 001 - 40 000	\N
district	DC5	2016	Beaufort-Wes	40 001 - 50 000	\N
district	DC5	2016	Beaufort-Wes	50 001 - 100 000	\N
district	DC5	2016	Beaufort-Wes	100 001 - 150 000	\N
district	DC5	2016	Beaufort-Wes	150 001 - 200 000	\N
district	DC5	2016	Beaufort-Wes	200 001 - 300 000	\N
district	DC5	2016	Beaufort-Wes	300 001 - 500 000	\N
district	DC5	2016	Beaufort-Wes	500 001 - 800 000	\N
district	DC5	2016	Beaufort-Wes	800 001 - 1 000 000	\N
district	DC5	2016	Beaufort-Wes	> 1 000 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	< 1 500	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	1 501 - 3 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	3 001 - 5 000	629
district	DC3	2016	Bredasdorp Cape Aqulhas	5 001 - 10 000	146
district	DC3	2016	Bredasdorp Cape Aqulhas	10 001 - 20 000	754
district	DC3	2016	Bredasdorp Cape Aqulhas	20 001 - 30 000	37
district	DC3	2016	Bredasdorp Cape Aqulhas	30 001 - 40 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	40 001 - 50 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	50 001 - 100 000	736
district	DC3	2016	Bredasdorp Cape Aqulhas	100 001 - 150 000	138
district	DC3	2016	Bredasdorp Cape Aqulhas	150 001 - 200 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	200 001 - 300 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	300 001 - 500 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	500 001 - 800 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	800 001 - 1 000 000	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	> 1 000 000	10
district	DC3	2016	Caledon (Overberg) Theewaterskloof	< 1 500	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	1 501 - 3 000	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	3 001 - 5 000	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	5 001 - 10 000	12
district	DC3	2016	Caledon (Overberg) Theewaterskloof	10 001 - 20 000	287
district	DC3	2016	Caledon (Overberg) Theewaterskloof	20 001 - 30 000	1082
district	DC3	2016	Caledon (Overberg) Theewaterskloof	30 001 - 40 000	173
district	DC3	2016	Caledon (Overberg) Theewaterskloof	40 001 - 50 000	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	50 001 - 100 000	2842
district	DC3	2016	Caledon (Overberg) Theewaterskloof	100 001 - 150 000	333
district	DC3	2016	Caledon (Overberg) Theewaterskloof	150 001 - 200 000	133
district	DC3	2016	Caledon (Overberg) Theewaterskloof	200 001 - 300 000	22
district	DC3	2016	Caledon (Overberg) Theewaterskloof	300 001 - 500 000	58
district	DC3	2016	Caledon (Overberg) Theewaterskloof	500 001 - 800 000	116
district	DC3	2016	Caledon (Overberg) Theewaterskloof	800 001 - 1 000 000	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	> 1 000 000	\N
district	DC4	2016	Calitzdorp Kannaland	< 1 500	757
district	DC4	2016	Calitzdorp Kannaland	1 501 - 3 000	\N
district	DC4	2016	Calitzdorp Kannaland	3 001 - 5 000	\N
district	DC4	2016	Calitzdorp Kannaland	5 001 - 10 000	1599
district	DC4	2016	Calitzdorp Kannaland	10 001 - 20 000	43
district	DC4	2016	Calitzdorp Kannaland	20 001 - 30 000	480
district	DC4	2016	Calitzdorp Kannaland	30 001 - 40 000	\N
district	DC4	2016	Calitzdorp Kannaland	40 001 - 50 000	289
district	DC4	2016	Calitzdorp Kannaland	50 001 - 100 000	61
district	DC4	2016	Calitzdorp Kannaland	100 001 - 150 000	57
district	DC4	2016	Calitzdorp Kannaland	150 001 - 200 000	\N
district	DC4	2016	Calitzdorp Kannaland	200 001 - 300 000	\N
district	DC4	2016	Calitzdorp Kannaland	300 001 - 500 000	\N
district	DC4	2016	Calitzdorp Kannaland	500 001 - 800 000	\N
district	DC4	2016	Calitzdorp Kannaland	800 001 - 1 000 000	\N
district	DC4	2016	Calitzdorp Kannaland	> 1 000 000	\N
municipality	CPT	2016	Cape Town	< 1 500	\N
municipality	CPT	2016	Cape Town	1 501 - 3 000	\N
municipality	CPT	2016	Cape Town	3 001 - 5 000	351
municipality	CPT	2016	Cape Town	5 001 - 10 000	2328
municipality	CPT	2016	Cape Town	10 001 - 20 000	\N
municipality	CPT	2016	Cape Town	20 001 - 30 000	383
municipality	CPT	2016	Cape Town	30 001 - 40 000	\N
municipality	CPT	2016	Cape Town	40 001 - 50 000	\N
municipality	CPT	2016	Cape Town	50 001 - 100 000	89
municipality	CPT	2016	Cape Town	100 001 - 150 000	\N
municipality	CPT	2016	Cape Town	150 001 - 200 000	21
municipality	CPT	2016	Cape Town	200 001 - 300 000	\N
municipality	CPT	2016	Cape Town	300 001 - 500 000	\N
municipality	CPT	2016	Cape Town	500 001 - 800 000	\N
municipality	CPT	2016	Cape Town	800 001 - 1 000 000	\N
municipality	CPT	2016	Cape Town	> 1 000 000	\N
district	DC2	2016	Ceres Witzenberg	< 1 500	17911
district	DC2	2016	Ceres Witzenberg	1 501 - 3 000	14438
district	DC2	2016	Ceres Witzenberg	3 001 - 5 000	1212
district	DC2	2016	Ceres Witzenberg	5 001 - 10 000	3658
district	DC2	2016	Ceres Witzenberg	10 001 - 20 000	\N
district	DC2	2016	Ceres Witzenberg	20 001 - 30 000	353
district	DC2	2016	Ceres Witzenberg	30 001 - 40 000	\N
district	DC2	2016	Ceres Witzenberg	40 001 - 50 000	229
district	DC2	2016	Ceres Witzenberg	50 001 - 100 000	\N
district	DC2	2016	Ceres Witzenberg	100 001 - 150 000	120
district	DC2	2016	Ceres Witzenberg	150 001 - 200 000	140
district	DC2	2016	Ceres Witzenberg	200 001 - 300 000	\N
district	DC2	2016	Ceres Witzenberg	300 001 - 500 000	\N
district	DC2	2016	Ceres Witzenberg	500 001 - 800 000	\N
district	DC2	2016	Ceres Witzenberg	800 001 - 1 000 000	\N
district	DC2	2016	Ceres Witzenberg	> 1 000 000	\N
district	DC1	2016	Clanwilliam Cederberg	< 1 500	2271
district	DC1	2016	Clanwilliam Cederberg	1 501 - 3 000	7460
district	DC1	2016	Clanwilliam Cederberg	3 001 - 5 000	1799
district	DC1	2016	Clanwilliam Cederberg	5 001 - 10 000	1548
district	DC1	2016	Clanwilliam Cederberg	10 001 - 20 000	1113
district	DC1	2016	Clanwilliam Cederberg	20 001 - 30 000	1576
district	DC1	2016	Clanwilliam Cederberg	30 001 - 40 000	\N
district	DC1	2016	Clanwilliam Cederberg	40 001 - 50 000	\N
district	DC1	2016	Clanwilliam Cederberg	50 001 - 100 000	242
district	DC1	2016	Clanwilliam Cederberg	100 001 - 150 000	53
district	DC1	2016	Clanwilliam Cederberg	150 001 - 200 000	\N
district	DC1	2016	Clanwilliam Cederberg	200 001 - 300 000	\N
district	DC1	2016	Clanwilliam Cederberg	300 001 - 500 000	\N
district	DC1	2016	Clanwilliam Cederberg	500 001 - 800 000	\N
district	DC1	2016	Clanwilliam Cederberg	800 001 - 1 000 000	\N
district	DC1	2016	Clanwilliam Cederberg	> 1 000 000	\N
district	DC4	2016	George	< 1 500	694
district	DC4	2016	George	1 501 - 3 000	\N
district	DC4	2016	George	3 001 - 5 000	61
district	DC4	2016	George	5 001 - 10 000	295
district	DC4	2016	George	10 001 - 20 000	520
district	DC4	2016	George	20 001 - 30 000	216
district	DC4	2016	George	30 001 - 40 000	99
district	DC4	2016	George	40 001 - 50 000	454
district	DC4	2016	George	50 001 - 100 000	567
district	DC4	2016	George	100 001 - 150 000	158
district	DC4	2016	George	150 001 - 200 000	142
district	DC4	2016	George	200 001 - 300 000	24
district	DC4	2016	George	300 001 - 500 000	35
district	DC4	2016	George	500 001 - 800 000	\N
district	DC4	2016	George	800 001 - 1 000 000	\N
district	DC4	2016	Knysna	5 001 - 10 000	276
district	DC4	2016	Knysna	10 001 - 20 000	2106
district	DC4	2016	Knysna	20 001 - 30 000	\N
district	DC4	2016	Knysna	30 001 - 40 000	\N
district	DC4	2016	Knysna	40 001 - 50 000	223
district	DC4	2016	Knysna	50 001 - 100 000	678
district	DC4	2016	Knysna	100 001 - 150 000	144
district	DC4	2016	Knysna	150 001 - 200 000	55
district	DC4	2016	Knysna	200 001 - 300 000	25
district	DC4	2016	Knysna	300 001 - 500 000	21
district	DC4	2016	Knysna	500 001 - 800 000	11
district	DC4	2016	Knysna	800 001 - 1 000 000	\N
district	DC4	2016	Knysna	> 1 000 000	\N
district	DC4	2016	Ladismith Kannaland	< 1 500	4236
district	DC4	2016	Ladismith Kannaland	1 501 - 3 000	2703
district	DC4	2016	Ladismith Kannaland	3 001 - 5 000	230
district	DC4	2016	Ladismith Kannaland	5 001 - 10 000	777
district	DC4	2016	Ladismith Kannaland	10 001 - 20 000	236
district	DC4	2016	Ladismith Kannaland	20 001 - 30 000	69
district	DC4	2016	Ladismith Kannaland	30 001 - 40 000	58
district	DC4	2016	Ladismith Kannaland	40 001 - 50 000	\N
district	DC4	2016	Ladismith Kannaland	50 001 - 100 000	32
district	DC4	2016	Ladismith Kannaland	100 001 - 150 000	\N
district	DC4	2016	Ladismith Kannaland	150 001 - 200 000	18
district	DC4	2016	Ladismith Kannaland	200 001 - 300 000	\N
district	DC4	2016	Ladismith Kannaland	300 001 - 500 000	\N
district	DC4	2016	Ladismith Kannaland	500 001 - 800 000	\N
district	DC4	2016	Ladismith Kannaland	800 001 - 1 000 000	\N
district	DC4	2016	Ladismith Kannaland	> 1 000 000	\N
district	DC5	2016	Laingsburg	< 1 500	1679
district	DC5	2016	Laingsburg	1 501 - 3 000	1858
district	DC5	2016	Laingsburg	3 001 - 5 000	\N
district	DC5	2016	Laingsburg	5 001 - 10 000	\N
district	DC5	2016	Laingsburg	10 001 - 20 000	\N
district	DC5	2016	Laingsburg	20 001 - 30 000	\N
district	DC5	2016	Laingsburg	30 001 - 40 000	\N
district	DC5	2016	Laingsburg	40 001 - 50 000	\N
district	DC5	2016	Laingsburg	50 001 - 100 000	\N
district	DC5	2016	Laingsburg	100 001 - 150 000	\N
district	DC5	2016	Laingsburg	150 001 - 200 000	\N
district	DC5	2016	Laingsburg	200 001 - 300 000	\N
district	DC5	2016	Laingsburg	300 001 - 500 000	\N
district	DC5	2016	Laingsburg	500 001 - 800 000	\N
district	DC5	2016	Laingsburg	800 001 - 1 000 000	\N
district	DC5	2016	Laingsburg	> 1 000 000	\N
district	DC1	2016	Malmesbury Swartland	< 1 500	171
district	DC1	2016	Malmesbury Swartland	1 501 - 3 000	3340
district	DC1	2016	Malmesbury Swartland	3 001 - 5 000	\N
district	DC1	2016	Malmesbury Swartland	5 001 - 10 000	1174
district	DC1	2016	Malmesbury Swartland	10 001 - 20 000	3280
district	DC1	2016	Malmesbury Swartland	20 001 - 30 000	1459
district	DC1	2016	Malmesbury Swartland	30 001 - 40 000	1026
district	DC1	2016	Malmesbury Swartland	40 001 - 50 000	1177
district	DC1	2016	Malmesbury Swartland	50 001 - 100 000	1544
district	DC1	2016	Malmesbury Swartland	100 001 - 150 000	235
district	DC1	2016	Malmesbury Swartland	150 001 - 200 000	629
district	DC1	2016	Malmesbury Swartland	200 001 - 300 000	139
district	DC1	2016	Malmesbury Swartland	300 001 - 500 000	10
district	DC1	2016	Malmesbury Swartland	500 001 - 800 000	\N
district	DC1	2016	Malmesbury Swartland	800 001 - 1 000 000	\N
district	DC1	2016	Malmesbury Swartland	> 1 000 000	\N
district	DC2	2016	Montagu Langeberg	< 1 500	662
district	DC2	2016	Montagu Langeberg	1 501 - 3 000	472
district	DC2	2016	Montagu Langeberg	3 001 - 5 000	651
district	DC2	2016	Montagu Langeberg	5 001 - 10 000	3766
district	DC2	2016	Montagu Langeberg	10 001 - 20 000	1361
district	DC2	2016	Montagu Langeberg	20 001 - 30 000	231
district	DC2	2016	Montagu Langeberg	30 001 - 40 000	40
district	DC2	2016	Montagu Langeberg	40 001 - 50 000	50
district	DC2	2016	Montagu Langeberg	50 001 - 100 000	125
district	DC2	2016	Montagu Langeberg	100 001 - 150 000	\N
district	DC2	2016	Montagu Langeberg	150 001 - 200 000	\N
district	DC2	2016	Montagu Langeberg	200 001 - 300 000	\N
district	DC2	2016	Montagu Langeberg	300 001 - 500 000	\N
district	DC2	2016	Montagu Langeberg	500 001 - 800 000	\N
district	DC2	2016	Montagu Langeberg	800 001 - 1 000 000	\N
district	DC2	2016	Montagu Langeberg	> 1 000 000	\N
district	DC4	2016	Mosselbaai	< 1 500	\N
district	DC4	2016	Mosselbaai	1 501 - 3 000	\N
district	DC4	2016	Mosselbaai	3 001 - 5 000	\N
district	DC4	2016	Mosselbaai	5 001 - 10 000	193
district	DC4	2016	Mosselbaai	10 001 - 20 000	276
district	DC4	2016	Mosselbaai	20 001 - 30 000	714
district	DC4	2016	Mosselbaai	30 001 - 40 000	\N
district	DC4	2016	Mosselbaai	40 001 - 50 000	867
district	DC4	2016	Mosselbaai	50 001 - 100 000	191
district	DC4	2016	Mosselbaai	100 001 - 150 000	112
district	DC4	2016	Mosselbaai	150 001 - 200 000	74
district	DC4	2016	Mosselbaai	200 001 - 300 000	\N
district	DC4	2016	Mosselbaai	300 001 - 500 000	\N
district	DC4	2016	Mosselbaai	500 001 - 800 000	\N
district	DC4	2016	Mosselbaai	800 001 - 1 000 000	\N
district	DC4	2016	Mosselbaai	> 1 000 000	\N
district	DC5	2016	Murraysburg	< 1 500	\N
district	DC5	2016	Murraysburg	1 501 - 3 000	3919
district	DC5	2016	Murraysburg	3 001 - 5 000	\N
district	DC5	2016	Murraysburg	5 001 - 10 000	\N
district	DC5	2016	Murraysburg	10 001 - 20 000	\N
district	DC5	2016	Murraysburg	20 001 - 30 000	509
district	DC5	2016	Murraysburg	30 001 - 40 000	\N
district	DC5	2016	Murraysburg	40 001 - 50 000	\N
district	DC5	2016	Murraysburg	50 001 - 100 000	\N
district	DC5	2016	Murraysburg	100 001 - 150 000	\N
district	DC5	2016	Murraysburg	150 001 - 200 000	\N
district	DC5	2016	Murraysburg	200 001 - 300 000	\N
district	DC5	2016	Murraysburg	300 001 - 500 000	\N
district	DC5	2016	Murraysburg	500 001 - 800 000	\N
district	DC5	2016	Murraysburg	800 001 - 1 000 000	\N
district	DC5	2016	Murraysburg	> 1 000 000	\N
district	DC4	2016	Oudtshoorn	< 1 500	10794
district	DC4	2016	Oudtshoorn	1 501 - 3 000	258
district	DC4	2016	Oudtshoorn	3 001 - 5 000	119
district	DC4	2016	Oudtshoorn	5 001 - 10 000	953
district	DC4	2016	Oudtshoorn	10 001 - 20 000	2702
district	DC4	2016	Oudtshoorn	20 001 - 30 000	986
district	DC4	2016	Oudtshoorn	30 001 - 40 000	276
district	DC4	2016	Oudtshoorn	40 001 - 50 000	\N
district	DC4	2016	Oudtshoorn	50 001 - 100 000	295
district	DC4	2016	Oudtshoorn	100 001 - 150 000	142
district	DC4	2016	Oudtshoorn	150 001 - 200 000	\N
district	DC4	2016	Oudtshoorn	200 001 - 300 000	\N
district	DC4	2016	Oudtshoorn	300 001 - 500 000	67
district	DC4	2016	Oudtshoorn	500 001 - 800 000	\N
district	DC4	2016	Oudtshoorn	800 001 - 1 000 000	\N
district	DC4	2016	Oudtshoorn	> 1 000 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	< 1 500	\N
district	DC2	2016	Paarl/Wel Drakenstein	1 501 - 3 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	3 001 - 5 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	5 001 - 10 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	10 001 - 20 000	60
district	DC2	2016	Paarl/Wel Drakenstein	20 001 - 30 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	30 001 - 40 000	74
district	DC2	2016	Paarl/Wel Drakenstein	40 001 - 50 000	70
district	DC2	2016	Paarl/Wel Drakenstein	50 001 - 100 000	349
district	DC2	2016	Paarl/Wel Drakenstein	100 001 - 150 000	45
district	DC2	2016	Paarl/Wel Drakenstein	150 001 - 200 000	134
district	DC2	2016	Paarl/Wel Drakenstein	200 001 - 300 000	742
district	DC2	2016	Paarl/Wel Drakenstein	300 001 - 500 000	225
district	DC2	2016	Paarl/Wel Drakenstein	500 001 - 800 000	85
district	DC2	2016	Paarl/Wel Drakenstein	800 001 - 1 000 000	\N
district	DC2	2016	Paarl/Wel Drakenstein	> 1 000 000	23
district	DC1	2016	Piketberg Bergriver	< 1 500	39
district	DC1	2016	Piketberg Bergriver	1 501 - 3 000	661
district	DC1	2016	Piketberg Bergriver	3 001 - 5 000	2134
district	DC1	2016	Piketberg Bergriver	5 001 - 10 000	7636
district	DC1	2016	Piketberg Bergriver	10 001 - 20 000	4590
district	DC1	2016	Piketberg Bergriver	20 001 - 30 000	1079
district	DC1	2016	Piketberg Bergriver	30 001 - 40 000	81
district	DC1	2016	Piketberg Bergriver	40 001 - 50 000	121
district	DC1	2016	Piketberg Bergriver	50 001 - 100 000	144
district	DC1	2016	Piketberg Bergriver	100 001 - 150 000	67
district	DC1	2016	Piketberg Bergriver	150 001 - 200 000	\N
district	DC1	2016	Piketberg Bergriver	200 001 - 300 000	\N
district	DC1	2016	Piketberg Bergriver	300 001 - 500 000	\N
district	DC1	2016	Piketberg Bergriver	500 001 - 800 000	\N
district	DC1	2016	Piketberg Bergriver	800 001 - 1 000 000	\N
district	DC1	2016	Piketberg Bergriver	> 1 000 000	\N
district	DC5	2016	Prins Albert	< 1 500	11304
district	DC5	2016	Prins Albert	1 501 - 3 000	12092
district	DC5	2016	Prins Albert	3 001 - 5 000	\N
district	DC5	2016	Prins Albert	5 001 - 10 000	51
district	DC5	2016	Prins Albert	10 001 - 20 000	131
district	DC5	2016	Prins Albert	20 001 - 30 000	\N
district	DC5	2016	Prins Albert	30 001 - 40 000	\N
district	DC5	2016	Prins Albert	40 001 - 50 000	\N
district	DC5	2016	Prins Albert	50 001 - 100 000	\N
district	DC5	2016	Prins Albert	100 001 - 150 000	\N
district	DC5	2016	Prins Albert	150 001 - 200 000	\N
district	DC5	2016	Prins Albert	200 001 - 300 000	\N
district	DC5	2016	Prins Albert	300 001 - 500 000	\N
district	DC5	2016	Prins Albert	500 001 - 800 000	\N
district	DC5	2016	Prins Albert	800 001 - 1 000 000	\N
district	DC5	2016	Prins Albert	> 1 000 000	\N
district	DC4	2016	Riversdal Hessequa	< 1 500	1004
district	DC4	2016	Riversdal Hessequa	1 501 - 3 000	2262
district	DC4	2016	Riversdal Hessequa	3 001 - 5 000	\N
district	DC4	2016	Riversdal Hessequa	5 001 - 10 000	4587
district	DC4	2016	Riversdal Hessequa	10 001 - 20 000	3206
district	DC4	2016	Riversdal Hessequa	20 001 - 30 000	573
district	DC4	2016	Riversdal Hessequa	30 001 - 40 000	1410
district	DC4	2016	Riversdal Hessequa	40 001 - 50 000	697
district	DC4	2016	Riversdal Hessequa	50 001 - 100 000	77
district	DC4	2016	Riversdal Hessequa	100 001 - 150 000	15
district	DC4	2016	Riversdal Hessequa	150 001 - 200 000	\N
district	DC4	2016	Riversdal Hessequa	200 001 - 300 000	32
district	DC4	2016	Riversdal Hessequa	300 001 - 500 000	19
district	DC4	2016	Riversdal Hessequa	500 001 - 800 000	\N
district	DC4	2016	Riversdal Hessequa	800 001 - 1 000 000	\N
district	DC4	2016	Riversdal Hessequa	> 1 000 000	\N
district	DC2	2016	Robertson Breede /Winelands	< 1 500	\N
district	DC2	2016	Robertson Breede /Winelands	1 501 - 3 000	\N
district	DC2	2016	Robertson Breede /Winelands	3 001 - 5 000	\N
district	DC2	2016	Robertson Breede /Winelands	5 001 - 10 000	535
district	DC2	2016	Robertson Breede /Winelands	10 001 - 20 000	160
district	DC2	2016	Robertson Breede /Winelands	20 001 - 30 000	\N
district	DC2	2016	Robertson Breede /Winelands	30 001 - 40 000	89
district	DC2	2016	Robertson Breede /Winelands	40 001 - 50 000	383
district	DC2	2016	Robertson Breede /Winelands	50 001 - 100 000	24
district	DC2	2016	Robertson Breede /Winelands	100 001 - 150 000	20
district	DC2	2016	Robertson Breede /Winelands	150 001 - 200 000	13
district	DC2	2016	Robertson Breede /Winelands	200 001 - 300 000	90
district	DC2	2016	Robertson Breede /Winelands	300 001 - 500 000	43
district	DC2	2016	Robertson Breede /Winelands	500 001 - 800 000	\N
district	DC2	2016	Robertson Breede /Winelands	800 001 - 1 000 000	\N
district	DC2	2016	Robertson Breede /Winelands	> 1 000 000	\N
district	DC2	2016	Stellenbosch	< 1 500	\N
district	DC2	2016	Stellenbosch	1 501 - 3 000	\N
district	DC2	2016	Stellenbosch	3 001 - 5 000	\N
district	DC2	2016	Stellenbosch	5 001 - 10 000	\N
district	DC2	2016	Stellenbosch	10 001 - 20 000	\N
district	DC2	2016	Stellenbosch	20 001 - 30 000	\N
district	DC2	2016	Stellenbosch	30 001 - 40 000	\N
district	DC2	2016	Stellenbosch	40 001 - 50 000	\N
district	DC2	2016	Stellenbosch	50 001 - 100 000	32
district	DC2	2016	Stellenbosch	100 001 - 150 000	30
district	DC2	2016	Stellenbosch	150 001 - 200 000	621
district	DC2	2016	Stellenbosch	200 001 - 300 000	160
district	DC2	2016	Stellenbosch	300 001 - 500 000	474
district	DC2	2016	Stellenbosch	500 001 - 800 000	333
district	DC2	2016	Stellenbosch	800 001 - 1 000 000	39
district	DC2	2016	Stellenbosch	> 1 000 000	82
district	DC3	2016	Swellendam	< 1 500	\N
district	DC3	2016	Swellendam	1 501 - 3 000	\N
district	DC3	2016	Swellendam	3 001 - 5 000	1564
district	DC3	2016	Swellendam	5 001 - 10 000	4845
district	DC3	2016	Swellendam	10 001 - 20 000	347
district	DC3	2016	Swellendam	20 001 - 30 000	831
district	DC3	2016	Swellendam	30 001 - 40 000	313
district	DC3	2016	Swellendam	40 001 - 50 000	373
district	DC3	2016	Swellendam	50 001 - 100 000	1677
district	DC3	2016	Swellendam	100 001 - 150 000	93
district	DC3	2016	Swellendam	150 001 - 200 000	147
district	DC3	2016	Swellendam	200 001 - 300 000	79
district	DC3	2016	Swellendam	300 001 - 500 000	66
district	DC3	2016	Swellendam	500 001 - 800 000	\N
district	DC3	2016	Swellendam	800 001 - 1 000 000	\N
district	DC3	2016	Swellendam	> 1 000 000	\N
district	DC2	2016	Tulbagh	< 1 500	\N
district	DC2	2016	Tulbagh	1 501 - 3 000	\N
district	DC2	2016	Tulbagh	3 001 - 5 000	\N
district	DC2	2016	Tulbagh	5 001 - 10 000	\N
district	DC2	2016	Tulbagh	10 001 - 20 000	291
district	DC2	2016	Tulbagh	20 001 - 30 000	\N
district	DC2	2016	Tulbagh	30 001 - 40 000	\N
district	DC2	2016	Tulbagh	40 001 - 50 000	93
district	DC2	2016	Tulbagh	50 001 - 100 000	69
district	DC2	2016	Tulbagh	100 001 - 150 000	34
district	DC2	2016	Tulbagh	150 001 - 200 000	\N
district	DC2	2016	Tulbagh	200 001 - 300 000	14
district	DC2	2016	Tulbagh	300 001 - 500 000	\N
district	DC2	2016	Tulbagh	500 001 - 800 000	\N
district	DC2	2016	Tulbagh	800 001 - 1 000 000	\N
district	DC2	2016	Tulbagh	> 1 000 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	< 1 500	18222
district	DC1	2016	Vanrynsdorp Matzikama	1 501 - 3 000	822
district	DC1	2016	Vanrynsdorp Matzikama	3 001 - 5 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	5 001 - 10 000	431
district	DC1	2016	Vanrynsdorp Matzikama	10 001 - 20 000	1213
district	DC1	2016	Vanrynsdorp Matzikama	20 001 - 30 000	247
district	DC1	2016	Vanrynsdorp Matzikama	30 001 - 40 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	40 001 - 50 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	50 001 - 100 000	118
district	DC1	2016	Vanrynsdorp Matzikama	100 001 - 150 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	150 001 - 200 000	37
district	DC1	2016	Vanrynsdorp Matzikama	200 001 - 300 000	50
district	DC1	2016	Vanrynsdorp Matzikama	300 001 - 500 000	48
district	DC1	2016	Vanrynsdorp Matzikama	500 001 - 800 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	800 001 - 1 000 000	\N
district	DC1	2016	Vanrynsdorp Matzikama	> 1 000 000	\N
district	DC2	2016	Worcester Breede Valley	< 1 500	7209
district	DC2	2016	Worcester Breede Valley	1 501 - 3 000	2431
district	DC2	2016	Worcester Breede Valley	3 001 - 5 000	\N
district	DC2	2016	Worcester Breede Valley	5 001 - 10 000	5325
district	DC2	2016	Worcester Breede Valley	10 001 - 20 000	1154
district	DC2	2016	Worcester Breede Valley	20 001 - 30 000	7000
district	DC2	2016	Worcester Breede Valley	30 001 - 40 000	\N
district	DC2	2016	Worcester Breede Valley	40 001 - 50 000	333
district	DC2	2016	Worcester Breede Valley	50 001 - 100 000	100
district	DC2	2016	Worcester Breede Valley	100 001 - 150 000	535
district	DC2	2016	Worcester Breede Valley	150 001 - 200 000	65
district	DC2	2016	Worcester Breede Valley	200 001 - 300 000	113
district	DC2	2016	Worcester Breede Valley	300 001 - 500 000	\N
district	DC2	2016	Worcester Breede Valley	500 001 - 800 000	11
district	DC2	2016	Worcester Breede Valley	800 001 - 1 000 000	\N
district	DC2	2016	Worcester Breede Valley	> 1 000 000	\N
\.


--
-- PostgreSQL database dump complete
--

