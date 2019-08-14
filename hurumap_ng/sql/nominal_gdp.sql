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

ALTER TABLE IF EXISTS ONLY public.nominal_gdp DROP CONSTRAINT IF EXISTS nominal_gdp_pkey;
DROP TABLE IF EXISTS public.nominal_gdp;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: nominal_gdp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nominal_gdp (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    sector character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: nominal_gdp; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nominal_gdp (geo_level, geo_code, geo_version, year, sector, total) FROM stdin;
state	3	2016	2013	Agriculture	599808.07
state	3	2016	2013	Industry	2932583.00
state	3	2016	2013	Services	588899.30
state	3	2016	2014	Agriculture	566176.67
state	3	2016	2014	Industry	3217273.02
state	3	2016	2014	Services	650747.94
state	3	2016	2015	Agriculture	677282.58
state	3	2016	2015	Industry	1880450.13
state	3	2016	2015	Services	684303.56
state	3	2016	2016	Agriculture	721533.48
state	3	2016	2016	Industry	1719513.91
state	3	2016	2016	Services	748462.63
state	3	2016	2017	Agriculture	822947.13
state	3	2016	2017	Industry	3362877.68
state	3	2016	2017	Services	955243.34
state	4	2016	2013	Agriculture	457102.67
state	4	2016	2013	Industry	300811.93
state	4	2016	2013	Services	1030041.39
state	4	2016	2014	Agriculture	410260.57
state	4	2016	2014	Industry	440679.38
state	4	2016	2014	Services	1182963.34
state	4	2016	2015	Agriculture	449293.60
state	4	2016	2015	Industry	671421.51
state	4	2016	2015	Services	1488231.87
state	4	2016	2016	Agriculture	538948.94
state	4	2016	2016	Industry	691378.62
state	4	2016	2016	Services	1653619.16
state	4	2016	2017	Agriculture	603735.95
state	4	2016	2017	Industry	666391.32
state	4	2016	2017	Services	1809040.15
state	5	2016	2013	Agriculture	357811.58
state	5	2016	2013	Industry	163395.49
state	5	2016	2013	Services	572469.71
state	5	2016	2014	Agriculture	347521.49
state	5	2016	2014	Industry	238115.10
state	5	2016	2014	Services	654000.66
state	5	2016	2015	Agriculture	443374.74
state	5	2016	2015	Industry	238993.06
state	5	2016	2015	Services	810030.39
state	5	2016	2016	Agriculture	377289.25
state	5	2016	2016	Industry	249964.79
state	5	2016	2016	Services	895875.59
state	5	2016	2017	Agriculture	427257.79
state	5	2016	2017	Industry	311657.17
state	5	2016	2017	Services	902411.70
state	6	2016	2013	Agriculture	154259.47
state	6	2016	2013	Industry	2128646.61
state	6	2016	2013	Services	363481.88
state	6	2016	2014	Agriculture	169320.54
state	6	2016	2014	Industry	2160464.08
state	6	2016	2014	Services	437016.81
state	6	2016	2015	Agriculture	181587.35
state	6	2016	2015	Industry	1315873.32
state	6	2016	2015	Services	491698.81
state	6	2016	2016	Agriculture	200420.06
state	6	2016	2016	Industry	1217770.46
state	6	2016	2016	Services	523685.27
state	6	2016	2017	Agriculture	223285.17
state	6	2016	2017	Industry	2299507.23
state	6	2016	2017	Services	632986.69
state	9	2016	2013	Agriculture	257718.02
state	9	2016	2013	Industry	283224.06
state	9	2016	2013	Services	422377.79
state	9	2016	2014	Agriculture	911291.33
state	9	2016	2014	Industry	289808.67
state	9	2016	2014	Services	485311.72
state	9	2016	2015	Agriculture	820664.01
state	9	2016	2015	Industry	317994.97
state	9	2016	2015	Services	522118.87
state	9	2016	2016	Agriculture	985831.12
state	9	2016	2016	Industry	292904.56
state	9	2016	2016	Services	529896.48
state	9	2016	2017	Agriculture	1054304.17
state	9	2016	2017	Industry	648344.90
state	9	2016	2017	Services	612299.75
state	10	2016	2013	Agriculture	367783.21
state	10	2016	2013	Industry	2766931.85
state	10	2016	2013	Services	724111.31
state	10	2016	2014	Agriculture	422039.88
state	10	2016	2014	Industry	2137864.00
state	10	2016	2014	Services	806467.17
state	10	2016	2015	Agriculture	432271.05
state	10	2016	2015	Industry	1670000.62
state	10	2016	2015	Services	859431.08
state	10	2016	2016	Agriculture	520491.66
state	10	2016	2016	Industry	1424823.37
state	10	2016	2016	Services	950110.22
state	10	2016	2017	Agriculture	552855.81
state	10	2016	2017	Industry	2403152.77
state	10	2016	2017	Services	1101803.70
state	11	2016	2013	Agriculture	448239.50
state	11	2016	2013	Industry	134642.49
state	11	2016	2013	Services	373980.07
state	11	2016	2014	Agriculture	410505.00
state	11	2016	2014	Industry	198850.88
state	11	2016	2014	Services	424670.93
state	11	2016	2015	Agriculture	474765.89
state	11	2016	2015	Industry	170057.01
state	11	2016	2015	Services	512181.51
state	11	2016	2016	Agriculture	481225.29
state	11	2016	2016	Industry	162458.62
state	11	2016	2016	Services	541333.63
state	11	2016	2017	Agriculture	560014.48
state	11	2016	2017	Industry	157977.53
state	11	2016	2017	Services	609112.07
state	12	2016	2013	Agriculture	369658.69
state	12	2016	2013	Industry	400899.17
state	12	2016	2013	Services	712969.70
state	12	2016	2014	Agriculture	436260.14
state	12	2016	2014	Industry	520750.53
state	12	2016	2014	Services	838794.82
state	12	2016	2015	Agriculture	459316.36
state	12	2016	2015	Industry	461604.30
state	12	2016	2015	Services	974493.71
state	12	2016	2016	Agriculture	510815.31
state	12	2016	2016	Industry	425970.10
state	12	2016	2016	Services	1080010.17
state	12	2016	2017	Agriculture	584041.00
state	12	2016	2017	Industry	563592.71
state	12	2016	2017	Services	1195124.22
state	13	2016	2013	Agriculture	406418.94
state	13	2016	2013	Industry	121632.05
state	13	2016	2013	Services	351875.41
state	13	2016	2014	Agriculture	371138.75
state	13	2016	2014	Industry	166049.51
state	13	2016	2014	Services	399067.23
state	13	2016	2015	Agriculture	516672.67
state	13	2016	2015	Industry	207054.60
state	13	2016	2015	Services	501495.81
state	13	2016	2016	Agriculture	569100.33
state	13	2016	2016	Industry	192107.47
state	13	2016	2016	Services	608195.38
state	13	2016	2017	Agriculture	555057.93
state	13	2016	2017	Industry	192938.27
state	13	2016	2017	Services	642023.40
state	15	2016	2013	Agriculture	96266.99
state	15	2016	2013	Industry	1040989.60
state	15	2016	2013	Services	6300611.28
state	15	2016	2014	Agriculture	91736.52
state	15	2016	2014	Industry	1391312.20
state	15	2016	2014	Services	7211688.46
state	15	2016	2015	Agriculture	99248.47
state	15	2016	2015	Industry	1466113.97
state	15	2016	2015	Services	7816714.23
state	15	2016	2016	Agriculture	100867.69
state	15	2016	2016	Industry	1623422.59
state	15	2016	2016	Services	8762769.35
state	15	2016	2017	Agriculture	117986.47
state	15	2016	2017	Industry	1918883.73
state	15	2016	2017	Services	8590527.66
state	16	2016	2013	Agriculture	179954.42
state	16	2016	2013	Industry	132210.47
state	16	2016	2013	Services	400135.19
state	16	2016	2014	Agriculture	183182.00
state	16	2016	2014	Industry	187664.84
state	16	2016	2014	Services	470278.53
state	16	2016	2015	Agriculture	307149.63
state	16	2016	2015	Industry	231172.54
state	16	2016	2015	Services	587115.04
state	16	2016	2016	Agriculture	282549.08
state	16	2016	2016	Industry	210224.10
state	16	2016	2016	Services	643387.44
state	16	2016	2017	Agriculture	323810.11
state	16	2016	2017	Industry	227636.27
state	16	2016	2017	Services	687803.00
state	18	2016	2013	Agriculture	293678.12
state	18	2016	2013	Industry	104145.27
state	18	2016	2013	Services	538353.66
state	18	2016	2014	Agriculture	320487.35
state	18	2016	2014	Industry	151801.79
state	18	2016	2014	Services	609349.23
state	18	2016	2015	Agriculture	412445.37
state	18	2016	2015	Industry	181241.48
state	18	2016	2015	Services	706280.80
state	18	2016	2016	Agriculture	424044.31
state	18	2016	2016	Industry	166061.36
state	18	2016	2016	Services	781309.86
state	18	2016	2017	Agriculture	424700.27
state	18	2016	2017	Industry	169638.00
state	18	2016	2017	Services	837228.52
state	19	2016	2013	Agriculture	715021.18
state	19	2016	2013	Industry	333772.01
state	19	2016	2013	Services	972554.10
state	19	2016	2014	Agriculture	740956.02
state	19	2016	2014	Industry	280562.65
state	19	2016	2014	Services	1083261.00
state	19	2016	2015	Agriculture	831034.06
state	19	2016	2015	Industry	211040.60
state	19	2016	2015	Services	1083298.22
state	19	2016	2016	Agriculture	921172.91
state	19	2016	2016	Industry	235332.73
state	19	2016	2016	Services	1160427.51
state	19	2016	2017	Agriculture	1019502.87
state	19	2016	2017	Industry	301201.71
state	19	2016	2017	Services	1370741.36
state	20	2016	2013	Agriculture	377834.48
state	20	2016	2013	Industry	266267.41
state	20	2016	2013	Services	1238272.44
state	20	2016	2014	Agriculture	408009.28
state	20	2016	2014	Industry	232390.82
state	20	2016	2014	Services	1494647.49
state	20	2016	2015	Agriculture	447601.57
state	20	2016	2015	Industry	223391.01
state	20	2016	2015	Services	1544991.36
state	20	2016	2016	Agriculture	479559.91
state	20	2016	2016	Industry	205606.72
state	20	2016	2016	Services	1686459.81
state	20	2016	2017	Agriculture	533196.94
state	20	2016	2017	Industry	358841.93
state	20	2016	2017	Services	2082390.23
state	23	2016	2013	Agriculture	311670.73
state	23	2016	2013	Industry	223884.60
state	23	2016	2013	Services	521634.72
state	23	2016	2014	Agriculture	405191.80
state	23	2016	2014	Industry	340523.43
state	23	2016	2014	Services	584490.37
state	23	2016	2015	Agriculture	438875.58
state	23	2016	2015	Industry	471111.81
state	23	2016	2015	Services	677752.29
state	23	2016	2016	Agriculture	444670.75
state	23	2016	2016	Industry	443147.54
state	23	2016	2016	Services	747960.43
state	23	2016	2017	Agriculture	501132.11
state	23	2016	2017	Industry	503701.44
state	23	2016	2017	Services	812943.82
state	27	2016	2013	Agriculture	771241.66
state	27	2016	2013	Industry	272626.04
state	27	2016	2013	Services	688066.35
state	27	2016	2014	Agriculture	889248.01
state	27	2016	2014	Industry	300217.25
state	27	2016	2014	Services	785912.80
state	27	2016	2015	Agriculture	1061314.76
state	27	2016	2015	Industry	295293.48
state	27	2016	2015	Services	947535.98
state	27	2016	2016	Agriculture	1151737.11
state	27	2016	2016	Industry	314493.01
state	27	2016	2016	Services	1011596.65
state	27	2016	2017	Agriculture	1230025.33
state	27	2016	2017	Industry	334771.74
state	27	2016	2017	Services	1041388.89
country	NG	2016	2013	Agriculture	16816553.01
country	NG	2016	2013	Industry	20853845.33
country	NG	2016	2013	Services	42422165.04
country	NG	2016	2014	Agriculture	18018612.87
country	NG	2016	2014	Industry	19188576.66
country	NG	2016	2014	Services	56937770.92
country	NG	2016	2015	Agriculture	19636969.04
country	NG	2016	2015	Industry	19188576.66
country	NG	2016	2015	Services	93696568.07
country	NG	2016	2016	Agriculture	21523512.50
country	NG	2016	2016	Industry	18641165.84
country	NG	2016	2016	Services	61324813.87
country	NG	2016	2017	Agriculture	23952554.20
country	NG	2016	2017	Industry	25639902.28
country	NG	2016	2017	Services	64119178.13
state	28	2016	2013	Agriculture	540782.86
state	28	2016	2013	Industry	365094.92
state	28	2016	2013	Services	826666.47
state	28	2016	2014	Agriculture	582034.44
state	28	2016	2014	Industry	442014.51
state	28	2016	2014	Services	937392.94
state	28	2016	2015	Agriculture	627620.81
state	28	2016	2015	Industry	480709.67
state	28	2016	2015	Services	961405.94
state	28	2016	2016	Agriculture	666997.42
state	28	2016	2016	Industry	454911.64
state	28	2016	2016	Services	998445.00
state	28	2016	2017	Agriculture	754378.97
state	28	2016	2017	Industry	848407.22
state	28	2016	2017	Services	1207490.43
state	29	2016	2013	Agriculture	709795.97
state	29	2016	2013	Industry	550331.10
state	29	2016	2013	Services	656930.01
state	29	2016	2014	Agriculture	839492.83
state	29	2016	2014	Industry	672244.60
state	29	2016	2014	Services	798243.23
state	29	2016	2015	Agriculture	907461.41
state	29	2016	2015	Industry	534997.50
state	29	2016	2015	Services	942362.11
state	29	2016	2016	Agriculture	1169093.44
state	29	2016	2016	Industry	513285.13
state	29	2016	2016	Services	1061716.26
state	29	2016	2017	Agriculture	1251162.19
state	29	2016	2017	Industry	670889.32
state	29	2016	2017	Services	1011381.62
state	30	2016	2013	Agriculture	352229.30
state	30	2016	2013	Industry	115182.49
state	30	2016	2013	Services	518767.06
state	30	2016	2014	Agriculture	376128.65
state	30	2016	2014	Industry	104413.64
state	30	2016	2014	Services	567932.00
state	30	2016	2015	Agriculture	408614.07
state	30	2016	2015	Industry	120573.15
state	30	2016	2015	Services	599105.74
state	30	2016	2016	Agriculture	467361.15
state	30	2016	2016	Industry	102541.86
state	30	2016	2016	Services	663951.58
state	30	2016	2017	Agriculture	506997.30
state	30	2016	2017	Industry	140647.72
state	30	2016	2017	Services	822338.45
state	31	2016	2013	Agriculture	438692.64
state	31	2016	2013	Industry	196701.76
state	31	2016	2013	Services	898726.73
state	31	2016	2014	Agriculture	465249.64
state	31	2016	2014	Industry	180997.50
state	31	2016	2014	Services	1002333.38
state	31	2016	2015	Agriculture	512694.24
state	31	2016	2015	Industry	208333.18
state	31	2016	2015	Services	1006721.72
state	31	2016	2016	Agriculture	532658.70
state	31	2016	2016	Industry	213484.42
state	31	2016	2016	Services	1087680.45
state	31	2016	2017	Agriculture	606963.43
state	31	2016	2017	Industry	427577.56
state	31	2016	2017	Services	1472212.95
state	33	2016	2013	Agriculture	356368.61
state	33	2016	2013	Industry	2843772.61
state	33	2016	2013	Services	1009413.01
state	33	2016	2014	Agriculture	412960.70
state	33	2016	2014	Industry	2549535.06
state	33	2016	2014	Services	1100687.91
state	33	2016	2015	Agriculture	422105.96
state	33	2016	2015	Industry	1759790.16
state	33	2016	2015	Services	1164774.02
state	33	2016	2016	Agriculture	485190.26
state	33	2016	2016	Industry	1722844.83
state	33	2016	2016	Services	1282758.41
state	33	2016	2017	Agriculture	532936.39
state	33	2016	2017	Industry	2942581.53
state	33	2016	2017	Services	1635065.78
state	37	2016	2013	Agriculture	288693.62
state	37	2016	2013	Industry	116253.01
state	37	2016	2013	Services	296100.46
state	37	2016	2014	Agriculture	314800.48
state	37	2016	2014	Industry	114434.34
state	37	2016	2014	Services	348947.90
state	37	2016	2015	Agriculture	349372.45
state	37	2016	2015	Industry	122734.99
state	37	2016	2015	Services	367182.48
state	37	2016	2016	Agriculture	405751.18
state	37	2016	2016	Industry	121431.60
state	37	2016	2016	Services	401252.28
state	37	2016	2017	Agriculture	429613.99
state	37	2016	2017	Industry	163360.52
state	37	2016	2017	Services	507483.51
\.


--
-- Name: nominal_gdp nominal_gdp_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nominal_gdp
    ADD CONSTRAINT nominal_gdp_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, sector);


--
-- PostgreSQL database dump complete
--
