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

ALTER TABLE IF EXISTS ONLY public.faac DROP CONSTRAINT IF EXISTS faac_pkey;
DROP TABLE IF EXISTS public.faac;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: faac; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.faac (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    allocation character varying(128) NOT NULL,
    month character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: faac; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.faac (geo_level, geo_code, geo_version, allocation, month, total) FROM stdin;
country	NG	2016	Gross Statutory Allocation	Apr	93714.66
country	NG	2016	Total Net Amount	Apr	125505.46
country	NG	2016	Gross Statutory Allocation	Jul	111746.36
country	NG	2016	Total Net Amount	Jul	142516.50
country	NG	2016	Gross Statutory Allocation	Jun	114693.91
country	NG	2016	Total Net Amount	Jun	142516.50
country	NG	2016	Gross Statutory Allocation	May	136054.62
country	NG	2016	Total Net Amount	May	199186.64
state	1	2016	Gross Statutory Allocation	Apr	1945.16
state	1	2016	Total Net Amount	Apr	2515.53
state	1	2016	Gross Statutory Allocation	Jul	2319.43
state	1	2016	Total Net Amount	Jul	2871.64
state	1	2016	Gross Statutory Allocation	Jun	2380.61
state	1	2016	Total Net Amount	Jun	2871.64
state	1	2016	Gross Statutory Allocation	May	3359.64
state	1	2016	Total Net Amount	May	4444.07
state	2	2016	Gross Statutory Allocation	Apr	2453.54
state	2	2016	Total Net Amount	Apr	3129.07
state	2	2016	Gross Statutory Allocation	Jul	2925.62
state	2	2016	Total Net Amount	Jul	3585.97
state	2	2016	Gross Statutory Allocation	Jun	3002.79
state	2	2016	Total Net Amount	Jun	3585.97
state	2	2016	Gross Statutory Allocation	May	3574.08
state	2	2016	Total Net Amount	May	4200.66
state	3	2016	Gross Statutory Allocation	Apr	3267.97
state	3	2016	Total Net Amount	Apr	4227.22
state	3	2016	Gross Statutory Allocation	Jul	3896.76
state	3	2016	Total Net Amount	Jul	4822.74
state	3	2016	Gross Statutory Allocation	Jun	3999.54
state	3	2016	Total Net Amount	Jun	4822.74
state	3	2016	Gross Statutory Allocation	May	3607.30
state	3	2016	Total Net Amount	May	13207.56
state	4	2016	Gross Statutory Allocation	Apr	2466.80
state	4	2016	Total Net Amount	Apr	3220.96
state	4	2016	Gross Statutory Allocation	Jul	2941.43
state	4	2016	Total Net Amount	Jul	3688.85
state	4	2016	Gross Statutory Allocation	Jun	3019.02
state	4	2016	Total Net Amount	Jun	3688.85
state	4	2016	Gross Statutory Allocation	May	3567.39
state	4	2016	Total Net Amount	May	4683.74
state	5	2016	Gross Statutory Allocation	Apr	2800.30
state	5	2016	Total Net Amount	Apr	3558.13
state	5	2016	Gross Statutory Allocation	Jul	3339.11
state	5	2016	Total Net Amount	Jul	4073.89
state	5	2016	Gross Statutory Allocation	Jun	3427.19
state	5	2016	Total Net Amount	Jun	4073.89
state	5	2016	Gross Statutory Allocation	May	4291.69
state	5	2016	Total Net Amount	May	4468.17
state	6	2016	Gross Statutory Allocation	Apr	1139.83
state	6	2016	Total Net Amount	Apr	1445.82
state	6	2016	Gross Statutory Allocation	Jul	1359.14
state	6	2016	Total Net Amount	Jul	1676.36
state	6	2016	Gross Statutory Allocation	Jun	1394.99
state	6	2016	Total Net Amount	Jun	1676.36
state	6	2016	Gross Statutory Allocation	May	3174.63
state	6	2016	Total Net Amount	May	10238.32
state	7	2016	Gross Statutory Allocation	Apr	3047.16
state	7	2016	Total Net Amount	Apr	3695.12
state	7	2016	Gross Statutory Allocation	Jul	3633.47
state	7	2016	Total Net Amount	Jul	4271.45
state	7	2016	Gross Statutory Allocation	Jun	3729.31
state	7	2016	Total Net Amount	Jun	4271.45
state	7	2016	Gross Statutory Allocation	May	4023.73
state	7	2016	Total Net Amount	May	4672.61
state	8	2016	Gross Statutory Allocation	Apr	3308.30
state	8	2016	Total Net Amount	Apr	4171.07
state	8	2016	Gross Statutory Allocation	Jul	3944.86
state	8	2016	Total Net Amount	Jul	4795.60
state	8	2016	Gross Statutory Allocation	Jun	4048.91
state	8	2016	Total Net Amount	Jun	4795.60
state	8	2016	Gross Statutory Allocation	May	4457.72
state	8	2016	Total Net Amount	May	5307.25
state	9	2016	Gross Statutory Allocation	Apr	2132.76
state	9	2016	Total Net Amount	Apr	2682.26
state	9	2016	Gross Statutory Allocation	Jul	2543.13
state	9	2016	Total Net Amount	Jul	3084.71
state	9	2016	Gross Statutory Allocation	Jun	2610.21
state	9	2016	Total Net Amount	Jun	3084.71
state	9	2016	Gross Statutory Allocation	May	3607.91
state	9	2016	Total Net Amount	May	3209.70
state	10	2016	Gross Statutory Allocation	Apr	2732.83
state	10	2016	Total Net Amount	Apr	3601.18
state	10	2016	Gross Statutory Allocation	Jul	3258.65
state	10	2016	Total Net Amount	Jul	4121.51
state	10	2016	Gross Statutory Allocation	Jun	3344.60
state	10	2016	Total Net Amount	Jun	4121.51
state	10	2016	Gross Statutory Allocation	May	3642.98
state	10	2016	Total Net Amount	May	15925.32
state	11	2016	Gross Statutory Allocation	Apr	1577.68
state	11	2016	Total Net Amount	Apr	1969.66
state	11	2016	Gross Statutory Allocation	Jul	1881.24
state	11	2016	Total Net Amount	Jul	2276.56
state	11	2016	Gross Statutory Allocation	Jun	1930.86
state	11	2016	Total Net Amount	Jun	2276.56
state	11	2016	Gross Statutory Allocation	May	3209.88
state	11	2016	Total Net Amount	May	3833.01
state	12	2016	Gross Statutory Allocation	Apr	2090.98
state	12	2016	Total Net Amount	Apr	2763.73
state	12	2016	Gross Statutory Allocation	Jul	2493.31
state	12	2016	Total Net Amount	Jul	3168.46
state	12	2016	Gross Statutory Allocation	Jun	2559.07
state	12	2016	Total Net Amount	Jun	3168.46
state	12	2016	Gross Statutory Allocation	May	3354.83
state	12	2016	Total Net Amount	May	5336.92
state	13	2016	Gross Statutory Allocation	Apr	1660.32
state	13	2016	Total Net Amount	Apr	2182.12
state	13	2016	Gross Statutory Allocation	Jul	1979.78
state	13	2016	Total Net Amount	Jul	2492.48
state	13	2016	Gross Statutory Allocation	Jun	2032.00
state	13	2016	Total Net Amount	Jun	2492.48
state	13	2016	Gross Statutory Allocation	May	3208.06
state	13	2016	Total Net Amount	May	3603.56
state	14	2016	Gross Statutory Allocation	Apr	2124.47
state	14	2016	Total Net Amount	Apr	2738.09
state	14	2016	Gross Statutory Allocation	Jul	2533.24
state	14	2016	Total Net Amount	Jul	3192.35
state	14	2016	Gross Statutory Allocation	Jun	2600.06
state	14	2016	Total Net Amount	Jun	3192.35
state	14	2016	Gross Statutory Allocation	May	3608.22
state	14	2016	Total Net Amount	May	4448.60
state	15	2016	Gross Statutory Allocation	Apr	851.50
state	15	2016	Total Net Amount	Apr	2391.77
state	15	2016	Gross Statutory Allocation	Jul	1015.34
state	15	2016	Total Net Amount	Jul	2639.56
state	15	2016	Gross Statutory Allocation	Jun	1042.12
state	15	2016	Total Net Amount	Jun	2639.56
state	16	2016	Gross Statutory Allocation	Apr	1455.69
state	16	2016	Total Net Amount	Apr	1805.52
state	16	2016	Gross Statutory Allocation	Jul	1735.78
state	16	2016	Total Net Amount	Jul	2079.94
state	16	2016	Gross Statutory Allocation	Jun	1781.56
state	16	2016	Total Net Amount	Jun	2079.94
state	16	2016	Gross Statutory Allocation	May	3379.50
state	16	2016	Total Net Amount	May	3562.35
state	17	2016	Gross Statutory Allocation	Apr	2847.26
state	17	2016	Total Net Amount	Apr	3762.42
state	17	2016	Gross Statutory Allocation	Jul	3395.10
state	17	2016	Total Net Amount	Jul	4224.89
state	17	2016	Gross Statutory Allocation	Jun	3484.66
state	17	2016	Total Net Amount	Jun	4224.89
state	17	2016	Gross Statutory Allocation	May	3730.37
state	17	2016	Total Net Amount	May	4729.23
state	18	2016	Gross Statutory Allocation	Apr	2991.31
state	18	2016	Total Net Amount	Apr	3884.92
state	18	2016	Gross Statutory Allocation	Jul	3566.88
state	18	2016	Total Net Amount	Jul	4441.95
state	18	2016	Gross Statutory Allocation	Jun	3660.96
state	18	2016	Total Net Amount	Jun	4441.95
state	18	2016	Gross Statutory Allocation	May	4012.36
state	18	2016	Total Net Amount	May	5082.35
state	19	2016	Gross Statutory Allocation	Apr	3364.02
state	19	2016	Total Net Amount	Apr	4312.39
state	19	2016	Gross Statutory Allocation	Jul	4011.29
state	19	2016	Total Net Amount	Jul	4975.73
state	19	2016	Gross Statutory Allocation	Jun	4117.10
state	19	2016	Total Net Amount	Jun	4975.73
state	19	2016	Gross Statutory Allocation	May	4700.95
state	19	2016	Total Net Amount	May	5765.07
state	20	2016	Gross Statutory Allocation	Apr	5355.80
state	20	2016	Total Net Amount	Apr	7025.92
state	20	2016	Gross Statutory Allocation	Jul	6386.32
state	20	2016	Total Net Amount	Jul	8016.84
state	20	2016	Gross Statutory Allocation	Jun	6554.77
state	20	2016	Total Net Amount	Jun	8016.84
state	20	2016	Gross Statutory Allocation	May	5691.02
state	20	2016	Total Net Amount	May	7040.50
state	21	2016	Gross Statutory Allocation	Apr	4077.46
state	21	2016	Total Net Amount	Apr	5201.85
state	21	2016	Gross Statutory Allocation	Jul	4862.01
state	21	2016	Total Net Amount	Jul	5981.36
state	21	2016	Gross Statutory Allocation	Jun	4990.26
state	21	2016	Total Net Amount	Jun	5981.36
state	21	2016	Gross Statutory Allocation	May	4410.38
state	21	2016	Total Net Amount	May	5474.78
state	22	2016	Gross Statutory Allocation	Apr	2573.32
state	22	2016	Total Net Amount	Apr	3253.83
state	22	2016	Gross Statutory Allocation	Jul	3068.45
state	22	2016	Total Net Amount	Jul	3728.29
state	22	2016	Gross Statutory Allocation	Jun	3149.39
state	22	2016	Total Net Amount	Jun	3728.29
state	22	2016	Gross Statutory Allocation	May	3788.54
state	22	2016	Total Net Amount	May	4555.43
state	23	2016	Gross Statutory Allocation	Apr	2659.71
state	23	2016	Total Net Amount	Apr	3244.38
state	23	2016	Gross Statutory Allocation	Jul	3171.47
state	23	2016	Total Net Amount	Jul	3472.99
state	23	2016	Gross Statutory Allocation	Jun	3255.12
state	23	2016	Total Net Amount	Jun	3472.99
state	23	2016	Gross Statutory Allocation	May	3965.45
state	23	2016	Total Net Amount	May	4478.50
state	24	2016	Gross Statutory Allocation	Apr	1882.02
state	24	2016	Total Net Amount	Apr	2388.69
state	24	2016	Gross Statutory Allocation	Jul	2244.15
state	24	2016	Total Net Amount	Jul	2747.72
state	24	2016	Gross Statutory Allocation	Jun	2303.34
state	24	2016	Total Net Amount	Jun	2747.72
state	24	2016	Gross Statutory Allocation	May	3193.76
state	24	2016	Total Net Amount	May	3706.18
state	25	2016	Gross Statutory Allocation	Apr	3206.02
state	25	2016	Total Net Amount	Apr	8394.32
state	25	2016	Gross Statutory Allocation	Jul	3822.90
state	25	2016	Total Net Amount	Jul	8655.74
state	25	2016	Gross Statutory Allocation	Jun	3923.73
state	25	2016	Total Net Amount	Jun	8655.74
state	25	2016	Gross Statutory Allocation	May	4806.43
state	25	2016	Total Net Amount	May	10487.39
state	26	2016	Gross Statutory Allocation	Apr	1679.09
state	26	2016	Total Net Amount	Apr	2049.10
state	26	2016	Gross Statutory Allocation	Jul	2002.17
state	26	2016	Total Net Amount	Jul	2361.96
state	26	2016	Gross Statutory Allocation	Jun	2054.98
state	26	2016	Total Net Amount	Jun	2361.96
state	26	2016	Gross Statutory Allocation	May	3308.74
state	26	2016	Total Net Amount	May	3917.27
state	27	2016	Gross Statutory Allocation	Apr	3107.87
state	27	2016	Total Net Amount	Apr	3938.65
state	27	2016	Gross Statutory Allocation	Jul	3705.85
state	27	2016	Total Net Amount	Jul	4503.85
state	27	2016	Gross Statutory Allocation	Jun	3803.60
state	27	2016	Total Net Amount	Jun	4503.85
state	27	2016	Gross Statutory Allocation	May	4249.93
state	27	2016	Total Net Amount	May	4826.44
state	28	2016	Gross Statutory Allocation	Apr	2217.14
state	28	2016	Total Net Amount	Apr	2833.00
state	28	2016	Gross Statutory Allocation	Jul	2643.74
state	28	2016	Total Net Amount	Jul	3233.15
state	28	2016	Gross Statutory Allocation	Jun	2713.48
state	28	2016	Total Net Amount	Jun	3233.15
state	28	2016	Gross Statutory Allocation	May	3333.32
state	28	2016	Total Net Amount	May	3411.08
state	29	2016	Gross Statutory Allocation	Apr	2117.51
state	29	2016	Total Net Amount	Apr	2697.41
state	29	2016	Gross Statutory Allocation	Jul	2524.94
state	29	2016	Total Net Amount	Jul	3105.70
state	29	2016	Gross Statutory Allocation	Jun	2591.54
state	29	2016	Total Net Amount	Jun	3105.70
state	29	2016	Gross Statutory Allocation	May	3339.92
state	29	2016	Total Net Amount	May	4640.58
state	30	2016	Gross Statutory Allocation	Apr	2868.22
state	30	2016	Total Net Amount	Apr	3662.65
state	30	2016	Gross Statutory Allocation	Jul	3420.10
state	30	2016	Total Net Amount	Jul	4194.08
state	30	2016	Gross Statutory Allocation	Jun	3510.31
state	30	2016	Total Net Amount	Jun	4194.08
state	30	2016	Gross Statutory Allocation	May	3272.21
state	30	2016	Total Net Amount	May	1963.03
state	31	2016	Gross Statutory Allocation	Apr	3618.04
state	31	2016	Total Net Amount	Apr	4804.19
state	31	2016	Gross Statutory Allocation	Jul	4314.19
state	31	2016	Total Net Amount	Jul	5453.20
state	31	2016	Gross Statutory Allocation	Jun	4427.98
state	31	2016	Total Net Amount	Jun	5453.20
state	31	2016	Gross Statutory Allocation	May	4024.18
state	31	2016	Total Net Amount	May	4858.46
state	32	2016	Gross Statutory Allocation	Apr	2268.02
state	32	2016	Total Net Amount	Apr	2857.45
state	32	2016	Gross Statutory Allocation	Jul	2704.42
state	32	2016	Total Net Amount	Jul	3283.47
state	32	2016	Gross Statutory Allocation	Jun	2775.75
state	32	2016	Total Net Amount	Jun	3283.47
state	32	2016	Gross Statutory Allocation	May	3746.64
state	32	2016	Total Net Amount	May	3897.28
state	33	2016	Gross Statutory Allocation	Apr	2811.34
state	33	2016	Total Net Amount	Apr	3791.46
state	33	2016	Gross Statutory Allocation	Jul	3352.27
state	33	2016	Total Net Amount	Jul	4309.91
state	33	2016	Gross Statutory Allocation	Jun	3440.70
state	33	2016	Total Net Amount	Jun	4309.91
state	33	2016	Gross Statutory Allocation	May	3869.39
state	33	2016	Total Net Amount	May	12344.75
state	34	2016	Gross Statutory Allocation	Apr	2831.46
state	34	2016	Total Net Amount	Apr	3547.01
state	34	2016	Gross Statutory Allocation	Jul	3376.26
state	34	2016	Total Net Amount	Jul	4072.32
state	34	2016	Gross Statutory Allocation	Jun	3465.31
state	34	2016	Total Net Amount	Jun	4072.32
state	34	2016	Gross Statutory Allocation	May	3954.17
state	34	2016	Total Net Amount	May	4782.12
state	35	2016	Gross Statutory Allocation	Apr	2122.19
state	35	2016	Total Net Amount	Apr	2627.55
state	35	2016	Gross Statutory Allocation	Jul	2530.52
state	35	2016	Total Net Amount	Jul	3030.57
state	35	2016	Gross Statutory Allocation	Jun	2597.27
state	35	2016	Total Net Amount	Jun	3030.57
state	35	2016	Gross Statutory Allocation	May	3456.11
state	35	2016	Total Net Amount	May	4024.57
state	36	2016	Gross Statutory Allocation	Apr	2133.67
state	36	2016	Total Net Amount	Apr	2675.67
state	36	2016	Gross Statutory Allocation	Jul	2544.21
state	36	2016	Total Net Amount	Jul	3068.41
state	36	2016	Gross Statutory Allocation	Jun	2611.32
state	36	2016	Total Net Amount	Jun	3068.41
state	36	2016	Gross Statutory Allocation	May	3562.80
state	36	2016	Total Net Amount	May	4441.12
state	37	2016	Gross Statutory Allocation	Apr	1927.92
state	37	2016	Total Net Amount	Apr	2455.36
state	37	2016	Gross Statutory Allocation	Jul	2298.87
state	37	2016	Total Net Amount	Jul	2812.31
state	37	2016	Gross Statutory Allocation	Jun	2359.50
state	37	2016	Total Net Amount	Jun	2812.31
state	37	2016	Gross Statutory Allocation	May	3570.39
state	37	2016	Total Net Amount	May	3618.65
state	1	2016	Gross Statutory Allocation	Jan	1890.00
state	2	2016	Gross Statutory Allocation	Jan	2380.00
state	3	2016	Gross Statutory Allocation	Jan	3170.00
state	4	2016	Gross Statutory Allocation	Jan	2400.00
state	5	2016	Gross Statutory Allocation	Jan	2720.00
state	6	2016	Gross Statutory Allocation	Jan	1110.00
state	7	2016	Gross Statutory Allocation	Jan	2960.00
state	8	2016	Gross Statutory Allocation	Jan	3210.00
state	9	2016	Gross Statutory Allocation	Jan	2070.00
state	10	2016	Gross Statutory Allocation	Jan	2650.00
state	11	2016	Gross Statutory Allocation	Jan	1530.00
state	12	2016	Gross Statutory Allocation	Jan	2030.00
state	13	2016	Gross Statutory Allocation	Jan	1610.00
state	14	2016	Gross Statutory Allocation	Jan	2060.00
state	15	2016	Gross Statutory Allocation	Jan	827.00
state	16	2016	Gross Statutory Allocation	Jan	1410.00
state	17	2016	Gross Statutory Allocation	Jan	2770.00
state	18	2016	Gross Statutory Allocation	Jan	2910.00
state	19	2016	Gross Statutory Allocation	Jan	3270.00
state	20	2016	Gross Statutory Allocation	Jan	5200.00
state	21	2016	Gross Statutory Allocation	Jan	3960.00
state	22	2016	Gross Statutory Allocation	Jan	2500.00
state	23	2016	Gross Statutory Allocation	Jan	2580.00
state	24	2016	Gross Statutory Allocation	Jan	1830.00
state	25	2016	Gross Statutory Allocation	Jan	3110.00
state	26	2016	Gross Statutory Allocation	Jan	1630.00
state	27	2016	Gross Statutory Allocation	Jan	3020.00
state	28	2016	Gross Statutory Allocation	Jan	2150.00
state	29	2016	Gross Statutory Allocation	Jan	2060.00
state	30	2016	Gross Statutory Allocation	Jan	2790.00
state	31	2016	Gross Statutory Allocation	Jan	3510.00
state	32	2016	Gross Statutory Allocation	Jan	2200.00
state	33	2016	Gross Statutory Allocation	Jan	2730.00
state	34	2016	Gross Statutory Allocation	Jan	2750.00
state	35	2016	Gross Statutory Allocation	Jan	2060.00
state	36	2016	Gross Statutory Allocation	Jan	2070.00
state	37	2016	Gross Statutory Allocation	Jan	1870.00
country	NG	2016	Gross Statutory Allocation	Jan	90997.00
state	1	2016	Total Net Amount	Jan	2730.00
state	2	2016	Total Net Amount	Jan	3400.00
state	3	2016	Total Net Amount	Jan	4550.00
state	4	2016	Total Net Amount	Jan	3490.00
state	5	2016	Total Net Amount	Jan	3850.00
state	6	2016	Total Net Amount	Jan	1560.00
state	7	2016	Total Net Amount	Jan	4020.00
state	8	2016	Total Net Amount	Jan	4520.00
state	9	2016	Total Net Amount	Jan	2910.00
state	10	2016	Total Net Amount	Jan	3900.00
state	11	2016	Total Net Amount	Jan	2140.00
state	12	2016	Total Net Amount	Jan	2970.00
state	13	2016	Total Net Amount	Jan	2360.00
state	14	2016	Total Net Amount	Jan	2970.00
state	15	2016	Total Net Amount	Jan	2760.00
state	16	2016	Total Net Amount	Jan	1960.00
state	17	2016	Total Net Amount	Jan	4010.00
state	18	2016	Total Net Amount	Jan	4240.00
state	19	2016	Total Net Amount	Jan	4700.00
state	20	2016	Total Net Amount	Jan	7630.00
state	21	2016	Total Net Amount	Jan	5650.00
state	22	2016	Total Net Amount	Jan	3520.00
state	23	2016	Total Net Amount	Jan	3540.00
state	24	2016	Total Net Amount	Jan	2590.00
state	25	2016	Total Net Amount	Jan	8870.00
state	26	2016	Total Net Amount	Jan	2240.00
state	27	2016	Total Net Amount	Jan	4260.00
state	28	2016	Total Net Amount	Jan	3080.00
state	29	2016	Total Net Amount	Jan	2940.00
state	30	2016	Total Net Amount	Jan	3980.00
state	31	2016	Total Net Amount	Jan	5270.00
state	32	2016	Total Net Amount	Jan	3100.00
state	33	2016	Total Net Amount	Jan	4130.00
state	34	2016	Total Net Amount	Jan	3860.00
state	35	2016	Total Net Amount	Jan	2840.00
state	36	2016	Total Net Amount	Jan	2890.00
state	37	2016	Total Net Amount	Jan	2670.00
country	NG	2016	Total Net Amount	Jan	136100.00
\.


--
-- Name: faac faac_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faac
    ADD CONSTRAINT faac_pkey PRIMARY KEY (geo_level, geo_code, geo_version, allocation, month);


--
-- PostgreSQL database dump complete
--
