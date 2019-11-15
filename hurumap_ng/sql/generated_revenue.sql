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
state	1	2016	PAYE	5138.4848
state	1	2016	MDAs and Other Revenue	6877.4694
state	1	2016	Direct Assessment	750.9889
state	1	2016	Other Taxes	1745.0536
state	1	2016	Road Taxes	322.9077
state	2	2016	Road Taxes	106.6069
state	2	2016	Direct Assessment	90.5973
state	2	2016	MDAs and Other Revenue	1504.9900
state	2	2016	Other Taxes	572.7177
state	2	2016	PAYE	3929.9647
state	3	2016	Other Taxes	3906.5576
state	3	2016	Road Taxes	319.8776
state	3	2016	MDAs and Other Revenue	2129.6504
state	3	2016	Direct Assessment	207.7876
state	3	2016	PAYE	17646.9368
state	4	2016	Direct Assessment	822.7423
state	4	2016	Other Taxes	3929.6814
state	4	2016	PAYE	8894.8938
state	4	2016	Road Taxes	640.3307
state	4	2016	MDAs and Other Revenue	5017.6194
state	5	2016	MDAs and Other Revenue	1410.1763
state	5	2016	PAYE	7422.4476
state	5	2016	Direct Assessment	232.8275
state	5	2016	Road Taxes	257.8304
state	5	2016	Other Taxes	367.5503
state	6	2016	PAYE	11313.0206
state	6	2016	Direct Assessment	102.4854
state	6	2016	Other Taxes	1788.4965
state	6	2016	Road Taxes	39.1471
state	6	2016	MDAs and Other Revenue	393.3962
state	7	2016	Road Taxes	156.4863
state	7	2016	Direct Assessment	464.5486
state	7	2016	Other Taxes	156.1973
state	7	2016	PAYE	7964.7600
state	7	2016	MDAs and Other Revenue	2473.4906
state	8	2016	Direct Assessment	452.0663
state	8	2016	Other Taxes	611.5810
state	8	2016	PAYE	3822.3291
state	8	2016	MDAs and Other Revenue	1476.6273
state	8	2016	Road Taxes	161.6971
state	9	2016	Other Taxes	4317.2578
state	9	2016	PAYE	7969.8636
state	9	2016	MDAs and Other Revenue	4078.6669
state	9	2016	Road Taxes	1017.9124
state	9	2016	Direct Assessment	168.4123
state	10	2016	Road Taxes	536.2364
state	10	2016	Other Taxes	6555.7005
state	10	2016	MDAs and Other Revenue	8613.0220
state	10	2016	PAYE	42308.2084
state	10	2016	Direct Assessment	426.4314
state	11	2016	Direct Assessment	64.9710
state	11	2016	PAYE	3119.0848
state	11	2016	Road Taxes	322.5364
state	11	2016	MDAs and Other Revenue	866.6200
state	11	2016	Other Taxes	1771.3749
state	12	2016	PAYE	12518.5141
state	12	2016	Road Taxes	540.8086
state	12	2016	MDAs and Other Revenue	7526.7011
state	12	2016	Direct Assessment	1054.3407
state	12	2016	Other Taxes	6785.1324
state	13	2016	Road Taxes	123.9765
state	13	2016	PAYE	4149.1954
state	13	2016	MDAs and Other Revenue	515.5837
state	13	2016	Direct Assessment	163.5830
state	13	2016	Other Taxes	1513.0356
state	14	2016	Road Taxes	528.7126
state	14	2016	PAYE	9155.5309
state	14	2016	MDAs and Other Revenue	9614.8924
state	14	2016	Direct Assessment	188.6014
state	14	2016	Other Taxes	2658.2000
state	15	2016	Other Taxes	1787.1956
state	15	2016	Direct Assessment	3094.6489
state	15	2016	PAYE	60637.8192
state	16	2016	Direct Assessment	50.8539
state	16	2016	Other Taxes	948.6716
state	16	2016	Road Taxes	87.7683
state	16	2016	MDAs and Other Revenue	3246.8913
state	16	2016	PAYE	3009.3645
state	17	2016	Road Taxes	1470.8373
state	17	2016	Other Taxes	322.5342
state	17	2016	Direct Assessment	2450.1419
state	17	2016	PAYE	6837.6720
state	17	2016	MDAs and Other Revenue	3803.0864
state	18	2016	MDAs and Other Revenue	1911.9667
state	18	2016	Road Taxes	71.6955
state	18	2016	Direct Assessment	35.3014
state	18	2016	PAYE	3556.2754
state	18	2016	Other Taxes	3671.0118
state	19	2016	PAYE	14103.4311
state	19	2016	Other Taxes	1916.9717
state	19	2016	Direct Assessment	312.8327
state	19	2016	MDAs and Other Revenue	12708.0185
state	19	2016	Road Taxes	405.1328
state	20	2016	Other Taxes	14064.0323
state	20	2016	MDAs and Other Revenue	11834.4450
state	20	2016	PAYE	14903.2466
state	20	2016	Direct Assessment	1650.5412
state	20	2016	Road Taxes	1655.1103
state	21	2016	Other Taxes	405.9811
state	21	2016	MDAs and Other Revenue	860.4762
state	21	2016	Road Taxes	121.0371
state	21	2016	PAYE	5258.6467
state	21	2016	Direct Assessment	315.7293
state	22	2016	Other Taxes	178.8415
state	22	2016	Road Taxes	22.4022
state	22	2016	Direct Assessment	977.6457
state	22	2016	MDAs and Other Revenue	995.0729
state	22	2016	PAYE	2707.9987
state	23	2016	Other Taxes	1091.8944
state	23	2016	PAYE	7121.7167
state	23	2016	Direct Assessment	76.1404
state	23	2016	MDAs and Other Revenue	2481.6116
state	23	2016	Road Taxes	562.7507
state	24	2016	Direct Assessment	1529.2631
state	24	2016	Other Taxes	967.4126
state	24	2016	MDAs and Other Revenue	14162.4564
state	24	2016	Road Taxes	387.5103
state	24	2016	PAYE	6000.3018
state	25	2016	PAYE	239447.6628
state	25	2016	MDAs and Other Revenue	57554.5328
state	25	2016	Direct Assessment	16074.0656
state	25	2016	Other Taxes	59824.0467
state	25	2016	Road Taxes	9281.2407
state	26	2016	MDAs and Other Revenue	508.9125
state	26	2016	Direct Assessment	45.8820
state	26	2016	Road Taxes	166.3796
state	26	2016	Other Taxes	181.2729
state	26	2016	PAYE	6664.4737
state	27	2016	PAYE	8140.8825
state	27	2016	MDAs and Other Revenue	240.8984
state	27	2016	Direct Assessment	349.6035
state	27	2016	Road Taxes	179.0379
state	27	2016	Other Taxes	1521.7687
state	28	2016	PAYE	37873.7994
state	28	2016	Direct Assessment	5139.0665
state	28	2016	Road Taxes	1605.4934
state	28	2016	MDAs and Other Revenue	31624.1803
state	28	2016	Other Taxes	8311.6600
state	29	2016	Other Taxes	4833.5540
state	29	2016	Road Taxes	656.7269
state	29	2016	Direct Assessment	519.6114
state	29	2016	MDAs and Other Revenue	10004.9320
state	29	2016	PAYE	8773.2355
state	30	2016	Road Taxes	206.6163
state	30	2016	MDAs and Other Revenue	2778.1416
state	30	2016	Direct Assessment	787.9152
state	30	2016	Other Taxes	362.0540
state	30	2016	PAYE	6246.9366
state	31	2016	Direct Assessment	3586.3416
state	31	2016	PAYE	12529.7618
state	31	2016	MDAs and Other Revenue	4459.3194
state	31	2016	Road Taxes	572.9203
state	31	2016	Other Taxes	3486.7310
state	32	2016	Direct Assessment	95.8739
state	32	2016	Other Taxes	2333.6585
state	32	2016	MDAs and Other Revenue	3516.0402
state	32	2016	Road Taxes	364.4011
state	32	2016	PAYE	6416.5058
state	33	2016	Direct Assessment	551.6320
state	33	2016	MDAs and Other Revenue	41425.5379
state	33	2016	Other Taxes	13506.1960
state	33	2016	PAYE	57101.6242
state	33	2016	Road Taxes	195.3838
state	34	2016	Direct Assessment	546.1422
state	34	2016	Other Taxes	8057.1258
state	34	2016	PAYE	8594.9394
state	34	2016	MDAs and Other Revenue	1496.5921
state	34	2016	Road Taxes	67.2096
state	35	2016	Other Taxes	55.8462
state	35	2016	Direct Assessment	155.5383
state	35	2016	MDAs and Other Revenue	3151.8073
state	35	2016	PAYE	2537.6832
state	35	2016	Road Taxes	67.9346
state	36	2016	Other Taxes	277.0001
state	36	2016	MDAs and Other Revenue	1863.7643
state	36	2016	PAYE	2176.8890
state	36	2016	Road Taxes	61.2001
state	36	2016	Direct Assessment	3.4059
state	37	2016	Road Taxes	673.0960
state	37	2016	PAYE	3224.2620
state	37	2016	Other Taxes	926.2434
state	37	2016	MDAs and Other Revenue	2655.3778
state	37	2016	Direct Assessment	727.7164
\.


--
-- Name: generated_revenue generated_revenue_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.generated_revenue
    ADD CONSTRAINT generated_revenue_pkey PRIMARY KEY (geo_level, geo_code, geo_version, revenue_type);


--
-- PostgreSQL database dump complete
--
