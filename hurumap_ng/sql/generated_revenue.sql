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

ALTER TABLE IF EXISTS ONLY public.generated_revenue DROP CONSTRAINT IF EXISTS generated_revenue_pkey;
DROP TABLE IF EXISTS public.generated_revenue;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: generated_revenue; type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.generated_revenue (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    revenue_type character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: generated_revenue; type: TABLE DATA; Schema: public; Owner: -
--

COPY public.generated_revenue (geo_level, geo_code, geo_version, revenue_type, total) FROM stdin;
state	1	2016	PAYE	5138484832.97
state	1	2016	MDAs and Other Revenue	6877469396.01
state	1	2016	Direct Assessment	750988869.52
state	1	2016	Other Taxes	1745053623.99
state	1	2016	Road Taxes	322907725.00
state	2	2016	Road Taxes	106606887.70
state	2	2016	Direct Assessment	90597288.31
state	2	2016	MDAs and Other Revenue	1504990026.08
state	2	2016	Other Taxes	572717725.76
state	2	2016	PAYE	3929964737.77
state	3	2016	Other Taxes	3906557624.74
state	3	2016	Road Taxes	319877625.00
state	3	2016	MDAs and Other Revenue	2129650427.23
state	3	2016	Direct Assessment	207787643.51
state	3	2016	PAYE	17646936782.24
state	4	2016	Direct Assessment	822742344.01
state	4	2016	Other Taxes	3929681436.69
state	4	2016	PAYE	8894893799.97
state	4	2016	Road Taxes	640330700.00
state	4	2016	MDAs and Other Revenue	5017619366.27
state	5	2016	MDAs and Other Revenue	1410176323.10
state	5	2016	PAYE	7422447630.99
state	5	2016	Direct Assessment	232827524.31
state	5	2016	Road Taxes	257830350.76
state	5	2016	Other Taxes	367550348.42
state	6	2016	PAYE	11313020578.25
state	6	2016	Direct Assessment	102485376.88
state	6	2016	Other Taxes	1788496495.68
state	6	2016	Road Taxes	39147071.86
state	6	2016	MDAs and Other Revenue	393396194.11
state	7	2016	Road Taxes	156486250.05
state	7	2016	Direct Assessment	464548580.07
state	7	2016	Other Taxes	156197279.06
state	7	2016	PAYE	7964760000.70
state	7	2016	MDAs and Other Revenue	2473490615.28
state	8	2016	Direct Assessment	452066334.36
state	8	2016	Other Taxes	611581033.00
state	8	2016	PAYE	3822329089.08
state	8	2016	MDAs and Other Revenue	1476627333.62
state	8	2016	Road Taxes	161697114.00
state	9	2016	Other Taxes	4317257821.77
state	9	2016	PAYE	7969863557.78
state	9	2016	MDAs and Other Revenue	4078666862.90
state	9	2016	Road Taxes	1017912426.73
state	9	2016	Direct Assessment	168412267.91
state	10	2016	Road Taxes	536236377.99
state	10	2016	Other Taxes	6555700501.84
state	10	2016	MDAs and Other Revenue	8613021956.71
state	10	2016	PAYE	42308208426.19
state	10	2016	Direct Assessment	426431409.58
state	11	2016	Direct Assessment	64971032.59
state	11	2016	PAYE	3119084779.97
state	11	2016	Road Taxes	322536420.00
state	11	2016	MDAs and Other Revenue	866619966.41
state	11	2016	Other Taxes	1771374866.68
state	12	2016	PAYE	12518514074.62
state	12	2016	Road Taxes	540808577.68
state	12	2016	MDAs and Other Revenue	7526701113.59
state	12	2016	Direct Assessment	1054340725.26
state	12	2016	Other Taxes	6785132351.08
state	13	2016	Road Taxes	123976484.81
state	13	2016	PAYE	4149195425.69
state	13	2016	MDAs and Other Revenue	515583696.52
state	13	2016	Direct Assessment	163583025.97
state	13	2016	Other Taxes	1513035617.66
state	14	2016	Road Taxes	528712562.00
state	14	2016	PAYE	9155530851.00
state	14	2016	MDAs and Other Revenue	9614892350.00
state	14	2016	Direct Assessment	188601426.00
state	14	2016	Other Taxes	2658200027.00
state	15	2016	Other Taxes	1787195599.22
state	15	2016	Direct Assessment	3094648870.51
state	15	2016	PAYE	60637819185.09
state	16	2016	Direct Assessment	50853933.04
state	16	2016	Other Taxes	948671576.17
state	16	2016	Road Taxes	87768270.00
state	16	2016	MDAs and Other Revenue	3246891313.95
state	16	2016	PAYE	3009364528.37
state	17	2016	Road Taxes	1470837276.34
state	17	2016	Other Taxes	322534212.48
state	17	2016	Direct Assessment	2450141891.82
state	17	2016	PAYE	6837672013.26
state	17	2016	MDAs and Other Revenue	3803086416.41
state	18	2016	MDAs and Other Revenue	1911966743.33
state	18	2016	Road Taxes	71695535.99
state	18	2016	Direct Assessment	35301387.30
state	18	2016	PAYE	3556275400.00
state	18	2016	Other Taxes	3671011769.41
state	19	2016	PAYE	14103431098.91
state	19	2016	Other Taxes	1916971724.77
state	19	2016	Direct Assessment	312832728.24
state	19	2016	MDAs and Other Revenue	12708018536.67
state	19	2016	Road Taxes	405132836.15
state	20	2016	Other Taxes	14064032294.73
state	20	2016	MDAs and Other Revenue	11834444975.63
state	20	2016	PAYE	14903246555.59
state	20	2016	Direct Assessment	1650541182.61
state	20	2016	Road Taxes	1655110275.69
state	21	2016	Other Taxes	405981105.00
state	21	2016	MDAs and Other Revenue	860476202.00
state	21	2016	Road Taxes	121037115.00
state	21	2016	PAYE	5258646653.00
state	21	2016	Direct Assessment	315729254.00
state	22	2016	Other Taxes	178841487.55
state	22	2016	Road Taxes	22402179.50
state	22	2016	Direct Assessment	977645728.17
state	22	2016	MDAs and Other Revenue	995072901.86
state	22	2016	PAYE	2707998708.70
state	23	2016	Other Taxes	1091894412.64
state	23	2016	PAYE	7121716683.79
state	23	2016	Direct Assessment	76140354.65
state	23	2016	MDAs and Other Revenue	2481611553.53
state	23	2016	Road Taxes	562750738.94
state	24	2016	Direct Assessment	1529263091.13
state	24	2016	Other Taxes	967412641.60
state	24	2016	MDAs and Other Revenue	14162456419.65
state	24	2016	Road Taxes	387510328.13
state	24	2016	PAYE	6000301815.08
state	25	2016	PAYE	239447662835.80
state	25	2016	MDAs and Other Revenue	57554532774.32
state	25	2016	Direct Assessment	16074065564.05
state	25	2016	Other Taxes	59824046735.12
state	25	2016	Road Taxes	9281240717.84
state	26	2016	MDAs and Other Revenue	508912489.23
state	26	2016	Direct Assessment	45881953.80
state	26	2016	Road Taxes	166379623.25
state	26	2016	Other Taxes	181272885.03
state	26	2016	PAYE	6664473705.60
state	27	2016	PAYE	8140882536.90
state	27	2016	MDAs and Other Revenue	240898371.53
state	27	2016	Direct Assessment	349603451.17
state	27	2016	Road Taxes	179037878.01
state	27	2016	Other Taxes	1521768719.02
state	28	2016	PAYE	37873799416.99
state	28	2016	Direct Assessment	5139066487.40
state	28	2016	Road Taxes	1605493443.14
state	28	2016	MDAs and Other Revenue	31624180251.65
state	28	2016	Other Taxes	8311659994.50
state	29	2016	Other Taxes	4833554026.09
state	29	2016	Road Taxes	656726912.27
state	29	2016	Direct Assessment	519611358.75
state	29	2016	MDAs and Other Revenue	10004931962.43
state	29	2016	PAYE	8773235465.99
state	30	2016	Road Taxes	206616266.53
state	30	2016	MDAs and Other Revenue	2778141601.24
state	30	2016	Direct Assessment	787915222.58
state	30	2016	Other Taxes	362054008.10
state	30	2016	PAYE	6246936579.53
state	31	2016	Direct Assessment	3586341575.26
state	31	2016	PAYE	12529761756.92
state	31	2016	MDAs and Other Revenue	4459319435.43
state	31	2016	Road Taxes	572920338.41
state	31	2016	Other Taxes	3486730968.47
state	32	2016	Direct Assessment	95873914.03
state	32	2016	Other Taxes	2333658538.58
state	32	2016	MDAs and Other Revenue	3516040240.27
state	32	2016	Road Taxes	364401072.63
state	32	2016	PAYE	6416505782.90
state	33	2016	Direct Assessment	551631988.75
state	33	2016	MDAs and Other Revenue	41425537910.57
state	33	2016	Other Taxes	13506196037.16
state	33	2016	PAYE	57101624159.72
state	33	2016	Road Taxes	195383816.03
state	34	2016	Direct Assessment	546142152.32
state	34	2016	Other Taxes	8057125811.18
state	34	2016	PAYE	8594939362.95
state	34	2016	MDAs and Other Revenue	1496592053.60
state	34	2016	Road Taxes	67209640.00
state	35	2016	Other Taxes	55846191.12
state	35	2016	Direct Assessment	155538325.07
state	35	2016	MDAs and Other Revenue	3151807318.74
state	35	2016	PAYE	2537683154.04
state	35	2016	Road Taxes	67934594.14
state	36	2016	Other Taxes	277000063.67
state	36	2016	MDAs and Other Revenue	1863764281.87
state	36	2016	PAYE	2176889019.28
state	36	2016	Road Taxes	61200145.65
state	36	2016	Direct Assessment	3405945.58
state	37	2016	Road Taxes	673096046.00
state	37	2016	PAYE	3224262029.41
state	37	2016	Other Taxes	926243358.78
state	37	2016	MDAs and Other Revenue	2655377791.56
state	37	2016	Direct Assessment	727716366.39
\.


--
-- Name: generated_revenue generated_revenue_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.generated_revenue
    ADD CONSTRAINT generated_revenue_pkey PRIMARY KEY (geo_level, geo_code, geo_version, revenue_type);


--
-- PostgreSQL database dump complete
--
