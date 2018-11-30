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

DROP INDEX IF EXISTS public.wazimap_geography_name_36b79089_like;
DROP INDEX IF EXISTS public.wazimap_geography_b068931c;
DROP INDEX IF EXISTS public.wazimap_geography_84cdc76c;
DROP INDEX IF EXISTS public.wazimap_geography_2fc6351a;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_pkey;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_9a5128d2_uniq;
ALTER TABLE IF EXISTS public.wazimap_geography ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.wazimap_geography_id_seq;
DROP TABLE IF EXISTS public.wazimap_geography;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wazimap_geography; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wazimap_geography (
    id integer NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    name character varying(100) NOT NULL,
    square_kms double precision,
    parent_level character varying(15),
    parent_code character varying(10),
    long_name character varying(100),
    version character varying(100) NOT NULL
);


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wazimap_geography_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wazimap_geography_id_seq OWNED BY public.wazimap_geography.id;


--
-- Name: wazimap_geography id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wazimap_geography ALTER COLUMN id SET DEFAULT nextval('public.wazimap_geography_id_seq'::regclass);


--
-- Data for Name: wazimap_geography; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wazimap_geography (id, geo_level, geo_code, name, square_kms, parent_level, parent_code, long_name, version) FROM stdin;
2	district	35	Kaberamaido	\N	region	115	\N	2014
3	district	105	Maracha	\N	region	116	\N	2014
5	district	2	Ibanda	\N	region	115	\N	2014
6	district	112	Budaka	\N	region	115	\N	2014
21	district	86	Kumi	\N	region	116	\N	2014
27	district	15	Lamwo	\N	region	116	\N	2014
29	district	13	Kole	\N	region	116	\N	2014
30	district	99	Sheema	\N	region	117	\N	2014
31	district	92	Bulambuli	\N	region	115	\N	2014
33	district	5	Otuke	\N	region	116	\N	2014
34	district	36	Amuria	\N	region	116	\N	2014
43	district	106	Ntoroko	\N	region	117	\N	2014
46	district	71	Luuka	\N	region	115	\N	2014
25	district	44	Adjumani	2962	region	116	\N	2014
76	district	10	Agago	3503	region	116	\N	2014
18	district	50	Amolatar	1157	region	116	\N	2014
79	district	110	Amudat	1626	region	116	\N	2014
72	district	9	Amuru	3588	region	116	\N	2014
15	district	12	Apac	2947	region	116	\N	2014
67	district	37	Bududa	316	region	115	\N	2014
38	district	80	Buikwe	1206	region	114	\N	2014
92	district	38	Bukedea	1032	region	115	\N	2014
4	district	39	Bukwo	524	region	115	\N	2014
96	district	107	Bundibugyo	848	region	117	\N	2014
55	district	103	Bushenyi	844	region	117	\N	2014
86	district	83	Busia	734	region	115	\N	2014
87	district	40	Butaleja	653	region	115	\N	2014
83	district	67	Butambala	403	region	114	\N	2014
80	district	78	Buyende	1379	region	115	\N	2014
73	district	51	Dokolo	1004	region	116	\N	2014
16	district	19	Gomba	1664	region	114	\N	2014
14	district	55	Hoima	3671	region	117	\N	2014
101	district	3	Isingiro	2613	region	117	\N	2014
8	district	31	Jinja	677	region	115	\N	2014
10	district	52	Kaabong	7298	region	116	\N	2014
9	district	57	Kabarole	1810	region	117	\N	2014
51	district	1	Kalangala	451	region	114	\N	2014
82	district	41	Kaliro	778	region	115	\N	2014
61	district	20	Kampala	188	region	114	\N	2014
84	district	77	Kamuli	1514	region	115	\N	2014
93	district	65	Kanungu	1271	region	117	\N	2014
88	district	90	Kapchorwa	352	region	115	\N	2014
7	district	32	Katakwi	2306	region	115	\N	2014
104	district	26	Kayunga	1592	region	114	\N	2014
71	district	109	Kiboga	1592	region	114	\N	2014
50	district	4	Kiruhura	4555	region	117	\N	2014
42	district	98	Kiryandongo	3595	region	117	\N	2014
48	district	60	Kisoro	699	region	117	\N	2014
75	district	53	Koboko	760	region	116	\N	2014
74	district	46	Kotido	3620	region	116	\N	2014
95	district	91	Kween	850	region	116	\N	2014
102	district	108	Kyankwanzi	2466	region	114	\N	2014
90	district	69	Kyenjojo	2357	region	117	\N	2014
22	district	6	Lira	1327	region	116	\N	2014
12	district	21	Luwero	2216	region	114	\N	2014
23	district	17	Lwengo	1024	region	114	\N	2014
39	district	28	Lyantonde	883	region	114	\N	2014
19	district	18	Masaka	1158	region	114	\N	2014
24	district	97	Masindi	3932	region	117	\N	2014
105	district	73	Mayuge	1073	region	115	\N	2014
94	district	33	Mbale	517	region	115	\N	2014
62	district	102	Mitooma	542	region	117	\N	2014
64	district	29	Mityana	1524	region	114	\N	2014
54	district	93	Moroto	3564	region	116	\N	2014
70	district	47	Moyo	1902	region	116	\N	2014
77	district	22	Mubende	4591	region	114	\N	2014
35	district	79	Mukono	1829	region	114	\N	2014
45	district	111	Nakapiripirit	4233	region	116	\N	2014
52	district	30	Nakaseke	3461	region	114	\N	2014
44	district	43	Namutumba	810	region	115	\N	2014
26	district	94	Napak	4901	region	116	\N	2014
32	district	95	Nebbi	1915	region	116	\N	2014
81	district	84	Ngora	637	region	115	\N	2014
59	district	8	Nwoya	4601	region	116	\N	2014
99	district	54	Oyam	2190	region	116	\N	2014
41	district	11	Pader	3294	region	116	\N	2014
100	district	76	Pallisa	1030	region	116	\N	2014
66	district	101	Rubirizi	1092	region	117	\N	2014
97	district	63	Rukungiri	1435	region	117	\N	2014
56	district	25	Sembabule	2315	region	114	\N	2014
63	district	87	Serere	1495	region	115	\N	2014
91	district	89	Sironko	401	region	115	\N	2014
13	district	27	Wakiso	1882	region	114	\N	2014
40	district	48	Yumbe	2318	region	116	\N	2014
37	district	96	Zombo	940	region	116	\N	2014
1	country	UG	Uganda	241551	\N	\N	\N	2014
1680	subcounty	900	Kakooge	\N	district	23	\N	2014
1681	subcounty	901	Kalungi	\N	district	23	\N	2014
1682	subcounty	902	Lwabiyata	\N	district	23	\N	2014
1683	subcounty	903	Lwampanga	\N	district	23	\N	2014
1684	subcounty	904	Nabisweera	\N	district	23	\N	2014
1685	subcounty	905	Nakitoma	\N	district	23	\N	2014
1686	subcounty	906	Wabinyonyi	\N	district	23	\N	2014
1687	subcounty	907	Nakasongola town council	\N	district	23	\N	2014
1688	subcounty	908	Banda	\N	district	82	\N	2014
1689	subcounty	909	Buhemba	\N	district	82	\N	2014
1690	subcounty	910	Buswale	\N	district	82	\N	2014
1691	subcounty	911	Buyinja	\N	district	82	\N	2014
1692	subcounty	912	Mutumba	\N	district	82	\N	2014
1693	subcounty	913	Namayingo town council	\N	district	82	\N	2014
1694	subcounty	914	Lolwe	\N	district	82	\N	2014
1695	subcounty	915	Bulange	\N	district	43	\N	2014
1696	subcounty	916	Ivukula	\N	district	43	\N	2014
1697	subcounty	917	Kibale	\N	district	43	\N	2014
1698	subcounty	918	Magada	\N	district	43	\N	2014
1699	subcounty	919	Namutumba	\N	district	43	\N	2014
1700	subcounty	920	Namutumba town council	\N	district	43	\N	2014
1701	subcounty	921	Nsinze	\N	district	43	\N	2014
1702	subcounty	922	Iriiri	\N	district	94	\N	2014
1703	subcounty	923	Lopeei	\N	district	94	\N	2014
1704	subcounty	924	Lorengecora	\N	district	94	\N	2014
1705	subcounty	925	Lotome	\N	district	94	\N	2014
1706	subcounty	926	Matany	\N	district	94	\N	2014
1707	subcounty	927	Napak town council	\N	district	94	\N	2014
1708	subcounty	928	Ngoleriet	\N	district	94	\N	2014
1709	subcounty	929	Panyango	\N	district	95	\N	2014
1710	subcounty	930	Atego	\N	district	95	\N	2014
1711	subcounty	931	Nyaravur	\N	district	95	\N	2014
1712	subcounty	932	Nebbi town council	\N	district	95	\N	2014
1713	subcounty	933	Pakwach	\N	district	95	\N	2014
1714	subcounty	934	Pakwach town council	\N	district	95	\N	2014
1715	subcounty	935	Parombo	\N	district	95	\N	2014
1716	subcounty	936	Wadelai	\N	district	95	\N	2014
1717	subcounty	937	Kucwiny	\N	district	95	\N	2014
1718	subcounty	938	Alwi	\N	district	95	\N	2014
1719	subcounty	939	Erussi	\N	district	95	\N	2014
1720	subcounty	940	Panyimur	\N	district	95	\N	2014
1721	subcounty	941	Ndhew	\N	district	95	\N	2014
1722	subcounty	942	Nebbi	\N	district	95	\N	2014
1723	subcounty	943	Kapir	\N	district	84	\N	2014
1724	subcounty	944	Kobwin	\N	district	84	\N	2014
1725	subcounty	945	Mukura	\N	district	84	\N	2014
1726	subcounty	946	Ngora	\N	district	84	\N	2014
1727	subcounty	947	Ngora town council	\N	district	84	\N	2014
1728	subcounty	948	Butungama	\N	district	106	\N	2014
1729	subcounty	949	Bweramule	\N	district	106	\N	2014
1730	subcounty	950	Kanara	\N	district	106	\N	2014
1731	subcounty	951	Kanara town council	\N	district	106	\N	2014
1732	subcounty	952	Nombe	\N	district	106	\N	2014
1733	subcounty	953	Rwebisengo town council	\N	district	106	\N	2014
1734	subcounty	954	Karugutu town council	\N	district	106	\N	2014
1735	subcounty	955	Bwongyera	\N	district	62	\N	2014
1736	subcounty	956	Ihunga	\N	district	62	\N	2014
1737	subcounty	957	Kibatsi	\N	district	62	\N	2014
1738	subcounty	958	Nyabihoko	\N	district	62	\N	2014
1739	subcounty	959	Rwashamaire town council	\N	district	62	\N	2014
1740	subcounty	960	Central division	\N	district	62	\N	2014
1741	subcounty	961	Eastern division	\N	district	62	\N	2014
1742	subcounty	962	Itojo	\N	district	62	\N	2014
1743	subcounty	963	Kitwe town council	\N	district	62	\N	2014
1744	subcounty	964	Ntungamo	\N	district	62	\N	2014
1745	subcounty	965	Nyakyera	\N	district	62	\N	2014
1746	subcounty	966	Ruhaama	\N	district	62	\N	2014
1747	subcounty	967	Rukoni east	\N	district	62	\N	2014
1748	subcounty	968	Rukoni west	\N	district	62	\N	2014
1749	subcounty	969	Rweikiniro	\N	district	62	\N	2014
1750	subcounty	970	Western division	\N	district	62	\N	2014
1751	subcounty	971	Kayonza	\N	district	62	\N	2014
1752	subcounty	972	Ngoma	\N	district	62	\N	2014
1753	subcounty	973	Rubaare	\N	district	62	\N	2014
1754	subcounty	974	Rubaare town council	\N	district	62	\N	2014
1755	subcounty	975	Rugarama	\N	district	62	\N	2014
1756	subcounty	976	Anaka (payira)	\N	district	8	\N	2014
1757	subcounty	977	Anaka town council	\N	district	8	\N	2014
1758	subcounty	978	Purongo	\N	district	8	\N	2014
1759	subcounty	979	Koch-goma	\N	district	8	\N	2014
1760	subcounty	980	Alero	\N	district	8	\N	2014
1761	subcounty	981	Adwari	\N	district	5	\N	2014
1762	subcounty	982	Alango	\N	district	5	\N	2014
112	district	16	Bukomansimbi	599	region	114	\N	2014
107	district	45	Gulu	3433	region	116	\N	2014
110	district	85	Kalungu	812	region	114	\N	2014
47	district	58	Kasese	2943	region	117	\N	2014
109	district	75	Kibuku	481	region	115	\N	2014
108	district	34	Tororo	1192	region	115	\N	2014
115	region	114	Central Uganda	61403	country	UG	\N	2014
114	region	115	Eastern Uganda	39479	country	UG	\N	2014
116	region	116	Northern Uganda	85392	country	UG	\N	2014
1763	subcounty	983	Ogur	\N	district	5	\N	2014
1764	subcounty	984	Ogwette	\N	district	5	\N	2014
1765	subcounty	985	Okwang	\N	district	5	\N	2014
1766	subcounty	986	Olilim	\N	district	5	\N	2014
1767	subcounty	987	Orum	\N	district	5	\N	2014
1768	subcounty	988	Otuke town council	\N	district	5	\N	2014
1769	subcounty	989	Aber	\N	district	54	\N	2014
1770	subcounty	990	Kamdini	\N	district	54	\N	2014
1771	subcounty	991	Minakulu	\N	district	54	\N	2014
1772	subcounty	992	Iceme	\N	district	54	\N	2014
1773	subcounty	993	Ngai	\N	district	54	\N	2014
1774	subcounty	994	Acaba	\N	district	54	\N	2014
1775	subcounty	995	Loro	\N	district	54	\N	2014
1776	subcounty	996	Myene	\N	district	54	\N	2014
1777	subcounty	997	Aleka	\N	district	54	\N	2014
1778	subcounty	998	Oyam town council	\N	district	54	\N	2014
1779	subcounty	999	Abok	\N	district	54	\N	2014
1780	subcounty	1000	Otwal	\N	district	54	\N	2014
1781	subcounty	1001	Angangura	\N	district	11	\N	2014
1782	subcounty	1002	Atanga	\N	district	11	\N	2014
1783	subcounty	1003	Lapul	\N	district	11	\N	2014
1784	subcounty	1004	Ogom	\N	district	11	\N	2014
1785	subcounty	1005	Pader town council	\N	district	11	\N	2014
1786	subcounty	1006	Pajule	\N	district	11	\N	2014
1787	subcounty	1007	Awere	\N	district	11	\N	2014
1788	subcounty	1008	Puranga	\N	district	11	\N	2014
1789	subcounty	1009	Laguti	\N	district	11	\N	2014
1790	subcounty	1010	Acholi bur	\N	district	11	\N	2014
1791	subcounty	1011	Pader	\N	district	11	\N	2014
1792	subcounty	1012	Latanya	\N	district	11	\N	2014
1793	subcounty	1013	Butebo	\N	district	76	\N	2014
1794	subcounty	1014	Kabwangasi	\N	district	76	\N	2014
1795	subcounty	1015	Kakoro	\N	district	76	\N	2014
1796	subcounty	1016	Kanginima	\N	district	76	\N	2014
1797	subcounty	1017	Kibale	\N	district	76	\N	2014
1798	subcounty	1018	Opwateta	\N	district	76	\N	2014
1799	subcounty	1019	Agule	\N	district	76	\N	2014
1800	subcounty	1020	Akisim	\N	district	76	\N	2014
1801	subcounty	1021	Apopong	\N	district	76	\N	2014
1802	subcounty	1022	Chelekura	\N	district	76	\N	2014
1803	subcounty	1023	Gogonyo	\N	district	76	\N	2014
1804	subcounty	1024	Kameke	\N	district	76	\N	2014
1805	subcounty	1025	Kamuge	\N	district	76	\N	2014
1806	subcounty	1026	Kasodo	\N	district	76	\N	2014
1807	subcounty	1027	Olok	\N	district	76	\N	2014
1808	subcounty	1028	Pallisa	\N	district	76	\N	2014
1809	subcounty	1029	Pallisa town council	\N	district	76	\N	2014
1810	subcounty	1030	Puti-puti	\N	district	76	\N	2014
1811	subcounty	1031	Petete	\N	district	76	\N	2014
1812	subcounty	1032	Kakuuto	\N	district	24	\N	2014
1813	subcounty	1033	Kasasa	\N	district	24	\N	2014
1814	subcounty	1034	Kibanda	\N	district	24	\N	2014
1815	subcounty	1035	Kifamba	\N	district	24	\N	2014
1816	subcounty	1036	Kyebe	\N	district	24	\N	2014
1817	subcounty	1037	Byakabanda	\N	district	24	\N	2014
1818	subcounty	1038	Ddwaniro	\N	district	24	\N	2014
1819	subcounty	1039	Kacheera	\N	district	24	\N	2014
1820	subcounty	1040	Kagamba	\N	district	24	\N	2014
1821	subcounty	1041	Kiziba	\N	district	24	\N	2014
1822	subcounty	1042	Kyalulangira	\N	district	24	\N	2014
1823	subcounty	1043	Lwamagwa	\N	district	24	\N	2014
1824	subcounty	1044	Lwanda	\N	district	24	\N	2014
1825	subcounty	1045	Rakai town council	\N	district	24	\N	2014
1826	subcounty	1046	Kabira	\N	district	24	\N	2014
1827	subcounty	1047	Kalisizo	\N	district	24	\N	2014
1828	subcounty	1048	Kalisizo town council	\N	district	24	\N	2014
1829	subcounty	1049	Kirumba	\N	district	24	\N	2014
1830	subcounty	1050	Kyotera town council	\N	district	24	\N	2014
1831	subcounty	1051	Lwankoni	\N	district	24	\N	2014
1832	subcounty	1052	Nabigasa	\N	district	24	\N	2014
1833	subcounty	1053	Ryeru	\N	district	101	\N	2014
1834	subcounty	1054	Katunguru	\N	district	101	\N	2014
1835	subcounty	1055	Rutoto	\N	district	101	\N	2014
1836	subcounty	1056	Katerera town council	\N	district	101	\N	2014
1837	subcounty	1057	Kirugu	\N	district	101	\N	2014
1838	subcounty	1058	Kyabakara	\N	district	101	\N	2014
1839	subcounty	1059	Rubirizi town council	\N	district	101	\N	2014
1840	subcounty	1060	Kicwamba	\N	district	101	\N	2014
1841	subcounty	1061	Magambo	\N	district	101	\N	2014
1842	subcounty	1062	Katanda	\N	district	101	\N	2014
1843	subcounty	1063	Katerera	\N	district	101	\N	2014
1844	subcounty	1064	Bugangari	\N	district	63	\N	2014
1845	subcounty	1065	Ruhinda	\N	district	63	\N	2014
1846	subcounty	1066	Buyanja	\N	district	63	\N	2014
1847	subcounty	1067	Kebisoni	\N	district	63	\N	2014
1848	subcounty	1068	Eastern division	\N	district	63	\N	2014
1849	subcounty	1069	Southern division	\N	district	63	\N	2014
1850	subcounty	1070	Western division	\N	district	63	\N	2014
1851	subcounty	1071	Nyakagyeme	\N	district	63	\N	2014
1852	subcounty	1072	Buhunga	\N	district	63	\N	2014
1853	subcounty	1073	Nyarushanje	\N	district	63	\N	2014
1854	subcounty	1074	Nyakishenyi	\N	district	63	\N	2014
1855	subcounty	1075	Lwemiyaga	\N	district	25	\N	2014
1856	subcounty	1076	Mateete	\N	district	25	\N	2014
1857	subcounty	1077	Mateete town council	\N	district	25	\N	2014
1858	subcounty	1078	Mijwala	\N	district	25	\N	2014
1859	subcounty	1079	Ssembabule town council	\N	district	25	\N	2014
1860	subcounty	1080	Lugusulu	\N	district	25	\N	2014
1861	subcounty	1081	Ntusi	\N	district	25	\N	2014
1862	subcounty	1082	Lwebitakuli	\N	district	25	\N	2014
1863	subcounty	1083	Kasilo town council	\N	district	87	\N	2014
1864	subcounty	1084	Labori	\N	district	87	\N	2014
1865	subcounty	1085	Pingire	\N	district	87	\N	2014
1866	subcounty	1086	Atiira	\N	district	87	\N	2014
1867	subcounty	1087	Kadungulu	\N	district	87	\N	2014
1868	subcounty	1088	Kateta	\N	district	87	\N	2014
1869	subcounty	1089	Kyere	\N	district	87	\N	2014
1870	subcounty	1090	Bugondo	\N	district	87	\N	2014
1871	subcounty	1091	Kyangyenyi	\N	district	99	\N	2014
1872	subcounty	1092	Masheruka	\N	district	99	\N	2014
1873	subcounty	1093	Rugarama	\N	district	99	\N	2014
1874	subcounty	1094	Sheema town council	\N	district	99	\N	2014
1875	subcounty	1095	Bugitimwa	\N	district	89	\N	2014
1876	subcounty	1096	Bukhulo	\N	district	89	\N	2014
1877	subcounty	1097	Bukiise	\N	district	89	\N	2014
1878	subcounty	1098	Bumalimba	\N	district	89	\N	2014
1879	subcounty	1099	Bumasifwa	\N	district	89	\N	2014
1880	subcounty	1100	Bunyafa	\N	district	89	\N	2014
1881	subcounty	1101	Busulani	\N	district	89	\N	2014
1882	subcounty	1102	Buteza	\N	district	89	\N	2014
1883	subcounty	1103	Buwalasi	\N	district	89	\N	2014
1884	subcounty	1104	Buwasa	\N	district	89	\N	2014
1885	subcounty	1105	Buyobo	\N	district	89	\N	2014
1886	subcounty	1106	Masaba	\N	district	89	\N	2014
1887	subcounty	1107	Nalusala	\N	district	89	\N	2014
1888	subcounty	1108	Zesui	\N	district	89	\N	2014
1889	subcounty	1109	Olio	\N	district	87	\N	2014
1890	subcounty	1110	Serere town council	\N	district	87	\N	2014
1891	subcounty	1111	Kagango	\N	district	99	\N	2014
1892	subcounty	1112	Kasaana	\N	district	99	\N	2014
1893	subcounty	1113	Kigarama	\N	district	99	\N	2014
1894	subcounty	1114	Kitagata	\N	district	99	\N	2014
1895	subcounty	1115	Arapai	\N	district	88	\N	2014
1896	subcounty	1116	Asuret	\N	district	88	\N	2014
1897	subcounty	1117	Gweri	\N	district	88	\N	2014
1898	subcounty	1118	Kamuda	\N	district	88	\N	2014
1899	subcounty	1119	Katine	\N	district	88	\N	2014
1900	subcounty	1120	Soroti	\N	district	88	\N	2014
1901	subcounty	1121	Tubur	\N	district	88	\N	2014
1902	subcounty	1122	Eastern division	\N	district	88	\N	2014
1903	subcounty	1123	Northern division	\N	district	88	\N	2014
1904	subcounty	1124	Western division	\N	district	88	\N	2014
1905	subcounty	1125	Kwapa	\N	district	34	\N	2014
1906	subcounty	1126	Malaba town council	\N	district	34	\N	2014
1907	subcounty	1127	Mella	\N	district	34	\N	2014
1908	subcounty	1128	Merikit	\N	district	34	\N	2014
1909	subcounty	1129	Molo	\N	district	34	\N	2014
1910	subcounty	1130	Mukuju	\N	district	34	\N	2014
1911	subcounty	1131	Osukuru	\N	district	34	\N	2014
1912	subcounty	1132	Eastern division	\N	district	34	\N	2014
1913	subcounty	1133	Western division	\N	district	34	\N	2014
1914	subcounty	1134	Iyolwa	\N	district	34	\N	2014
1915	subcounty	1135	Kirewa	\N	district	34	\N	2014
1916	subcounty	1136	Kisoko	\N	district	34	\N	2014
1917	subcounty	1137	Magola	\N	district	34	\N	2014
1918	subcounty	1138	Mulanda	\N	district	34	\N	2014
1919	subcounty	1139	Nagongera	\N	district	34	\N	2014
1920	subcounty	1140	Nagongera town council	\N	district	34	\N	2014
1921	subcounty	1141	Paya	\N	district	34	\N	2014
1922	subcounty	1142	Rubongi	\N	district	34	\N	2014
1923	subcounty	1143	Sop-sop	\N	district	34	\N	2014
1924	subcounty	1144	Nabuyoga	\N	district	34	\N	2014
1925	subcounty	1145	Petta	\N	district	34	\N	2014
1926	subcounty	1146	Bussi	\N	district	27	\N	2014
1927	subcounty	1147	Kakiri	\N	district	27	\N	2014
1928	subcounty	1148	Kakiri town council	\N	district	27	\N	2014
1929	subcounty	1149	Kasanje	\N	district	27	\N	2014
1930	subcounty	1150	Katabi	\N	district	27	\N	2014
1931	subcounty	1151	Masulita	\N	district	27	\N	2014
1932	subcounty	1152	Masulita town council	\N	district	27	\N	2014
1933	subcounty	1153	Mende	\N	district	27	\N	2014
1934	subcounty	1154	Namayumba	\N	district	27	\N	2014
1935	subcounty	1155	Namayumba town council	\N	district	27	\N	2014
1936	subcounty	1156	Nsangi	\N	district	27	\N	2014
1937	subcounty	1157	Ssisa	\N	district	27	\N	2014
1938	subcounty	1158	Wakiso	\N	district	27	\N	2014
1939	subcounty	1159	Wakiso town council	\N	district	27	\N	2014
1940	subcounty	1160	Division a	\N	district	27	\N	2014
1941	subcounty	1161	Division b	\N	district	27	\N	2014
1942	subcounty	1162	Busukuma	\N	district	27	\N	2014
1943	subcounty	1163	Gombe	\N	district	27	\N	2014
1944	subcounty	1164	Kira town council	\N	district	27	\N	2014
1945	subcounty	1165	Nabweru	\N	district	27	\N	2014
1946	subcounty	1166	Nangabo	\N	district	27	\N	2014
1947	subcounty	1167	Nansana town council	\N	district	27	\N	2014
1948	subcounty	1168	Makidye-ssabagabo	\N	district	27	\N	2014
1949	subcounty	1169	Apo	\N	district	48	\N	2014
1950	subcounty	1170	Ariwa	\N	district	48	\N	2014
1951	subcounty	1171	Drajini	\N	district	48	\N	2014
1952	subcounty	1172	Kei	\N	district	48	\N	2014
1953	subcounty	1173	Kerwa	\N	district	48	\N	2014
1954	subcounty	1174	Kuru	\N	district	48	\N	2014
1955	subcounty	1175	Lodonga	\N	district	48	\N	2014
1956	subcounty	1176	Midigo	\N	district	48	\N	2014
1957	subcounty	1177	Odravu	\N	district	48	\N	2014
1958	subcounty	1178	Yumbe town council	\N	district	48	\N	2014
1959	subcounty	1179	Atyak	\N	district	96	\N	2014
1960	subcounty	1180	Kango	\N	district	96	\N	2014
1961	subcounty	1181	Paidha town council	\N	district	96	\N	2014
1962	subcounty	1182	Zeu	\N	district	96	\N	2014
1963	subcounty	1183	Jangokoro	\N	district	96	\N	2014
1964	subcounty	1184	Nyapea	\N	district	96	\N	2014
1965	subcounty	1185	Zombo town council	\N	district	96	\N	2014
1966	subcounty	1186	Abanga	\N	district	96	\N	2014
1967	subcounty	1187	Paidha	\N	district	96	\N	2014
1968	subcounty	1188	Warr	\N	district	96	\N	2014
1969	subcounty	1189	Bala	\N	district	13	\N	2014
1970	subcounty	1190	Abongomola	\N	district	12	\N	2014
1971	subcounty	1191	Amach	\N	district	6	\N	2014
1972	subcounty	1192	Adilang	\N	district	10	\N	2014
1973	subcounty	1193	Kyesiiga	\N	district	18	\N	2014
1974	subcounty	1194	Nyakwae	\N	district	49	\N	2014
1975	subcounty	1195	Namasale	\N	district	50	\N	2014
1976	subcounty	1196	Namasale town council	\N	district	50	\N	2014
1977	subcounty	1197	Kapelebyong	\N	district	36	\N	2014
1978	subcounty	1198	Buikwe	\N	district	80	\N	2014
1979	subcounty	1199	Bulambuli town council	\N	district	92	\N	2014
1980	subcounty	1200	Bulegeni town council	\N	district	92	\N	2014
1981	subcounty	1201	Kamu	\N	district	92	\N	2014
1982	subcounty	1202	Muyembe	\N	district	92	\N	2014
1983	subcounty	1203	Simu	\N	district	92	\N	2014
1984	subcounty	1204	Bulegeni	\N	district	92	\N	2014
1985	subcounty	1205	Ishaka division	\N	district	103	\N	2014
1986	subcounty	1206	Busolwe	\N	district	40	\N	2014
1987	subcounty	1207	Buyengo	\N	district	31	\N	2014
1988	subcounty	1208	Kiko town council	\N	district	57	\N	2014
1989	subcounty	1209	Bihanga	\N	district	64	\N	2014
1990	subcounty	1210	Nkoma	\N	district	64	\N	2014
1991	subcounty	1211	Palam	\N	district	32	\N	2014
1992	subcounty	1212	Lokopo	\N	district	94	\N	2014
1993	subcounty	1213	Buremba	\N	district	4	\N	2014
1994	subcounty	1214	Midia	\N	district	53	\N	2014
1995	subcounty	1215	Paloga	\N	district	15	\N	2014
1996	subcounty	1216	Bubyangu	\N	district	33	\N	2014
1997	subcounty	1217	Rupa	\N	district	93	\N	2014
1998	subcounty	1218	Laropi	\N	district	47	\N	2014
1999	subcounty	1219	Moruita	\N	district	111	\N	2014
2000	subcounty	1220	Kalongo	\N	district	23	\N	2014
2001	subcounty	1221	Kakooge town council	\N	district	23	\N	2014
2002	subcounty	1222	Kakooge	\N	district	23	\N	2014
2003	subcounty	1223	Bugana	\N	district	82	\N	2014
2004	subcounty	1224	Sigulu islands	\N	district	82	\N	2014
2005	subcounty	1225	Akworo	\N	district	95	\N	2014
2006	subcounty	1226	Karugutu	\N	district	106	\N	2014
2007	subcounty	1227	Rwebisengo	\N	district	106	\N	2014
2008	subcounty	1228	Kasaali	\N	district	24	\N	2014
2009	subcounty	1229	Kabwohe-itendero town council	\N	district	99	\N	2014
2010	subcounty	1230	Shuuku	\N	district	99	\N	2014
2011	subcounty	1231	Bugongi town council	\N	district	99	\N	2014
2012	subcounty	1232	Kashozi	\N	district	99	\N	2014
2013	subcounty	1233	Ssi bukunja	\N	district	80	\N	2014
2014	subcounty	1234	Ngogwe	\N	district	80	\N	2014
2015	subcounty	1235	Najja	\N	district	80	\N	2014
2016	subcounty	1236	Nyenga	\N	district	80	\N	2014
2017	subcounty	1237	Chesower	\N	district	39	\N	2014
2018	subcounty	1238	Sironko town council	\N	district	89	\N	2014
2019	subcounty	1239	Budadiri town council	\N	district	89	\N	2014
2020	subcounty	1240	Bukiyi	\N	district	89	\N	2014
2021	subcounty	1241	Bukyambi	\N	district	89	\N	2014
2022	subcounty	1242	Bukyabo	\N	district	89	\N	2014
2023	subcounty	1243	Buhugu	\N	district	89	\N	2014
2024	subcounty	1244	Ciforo	\N	district	44	\N	2014
2025	subcounty	1245	Pacara	\N	district	44	\N	2014
2026	subcounty	1246	Tara	\N	district	105	\N	2014
2027	subcounty	1247	Kijomoro	\N	district	105	\N	2014
2028	subcounty	1248	Oluvu	\N	district	105	\N	2014
2029	subcounty	1249	Rigbo	\N	district	104	\N	2014
2030	subcounty	1250	Kululu	\N	district	48	\N	2014
2031	subcounty	1251	Romogi	\N	district	48	\N	2014
2032	subcounty	1252	Kochi	\N	district	48	\N	2014
2033	subcounty	1253	Lamogi	\N	district	9	\N	2014
2034	subcounty	1254	Buwaaya	\N	district	73	\N	2014
2035	subcounty	1255	Budhaya	\N	district	81	\N	2014
2036	subcounty	1256	Central division	\N	district	58	\N	2014
2037	subcounty	1257	Akokoro	\N	district	12	\N	2014
2038	subcounty	1258	Namanyonyi	\N	district	33	\N	2014
2039	subcounty	1259	Busoba	\N	district	33	\N	2014
2040	subcounty	1260	Bumasikye	\N	district	33	\N	2014
2041	subcounty	1261	Lukhonge	\N	district	33	\N	2014
2042	subcounty	1262	Lubya	\N	district	74	\N	2014
2043	subcounty	1263	Buwooya	\N	district	74	\N	2014
2044	subcounty	1264	Bukonzo	\N	district	107	\N	2014
2045	subcounty	1265	Harugale	\N	district	107	\N	2014
2046	subcounty	1266	Ndugutu	\N	district	107	\N	2014
2047	subcounty	1267	Budwale	\N	district	33	\N	2014
2048	subcounty	1268	Busano	\N	district	33	\N	2014
2049	subcounty	1269	Mutunda	\N	district	98	\N	2014
2050	subcounty	1270	Kiryandongo	\N	district	98	\N	2014
2051	subcounty	1271	Bwambara	\N	district	63	\N	2014
2052	subcounty	1272	Pajulu	\N	district	104	\N	2014
2053	subcounty	1273	Alwa	\N	district	35	\N	2014
2054	subcounty	1274	Anyara	\N	district	35	\N	2014
2055	subcounty	1275	Abako	\N	district	7	\N	2014
2056	subcounty	1276	Butandiga	\N	district	89	\N	2014
2057	subcounty	1277	Bwanswa	\N	district	59	\N	2014
2058	subcounty	1278	Butoloogo	\N	district	22	\N	2014
2059	subcounty	1279	Nyakayojo division	\N	district	61	\N	2014
2060	subcounty	1280	Kakule	\N	district	112	\N	2014
2061	subcounty	1281	Kigumba	\N	district	98	\N	2014
2062	subcounty	1282	Namwendwa	\N	district	77	\N	2014
2063	subcounty	1283	Kamuli town council	\N	district	77	\N	2014
2064	subcounty	1284	Mbulamuti	\N	district	77	\N	2014
2065	subcounty	1285	Bugulumbya	\N	district	77	\N	2014
2066	subcounty	1286	Namasagali	\N	district	77	\N	2014
2067	subcounty	1287	Nabwigulu	\N	district	77	\N	2014
2068	subcounty	1288	Kisozi	\N	district	77	\N	2014
2069	subcounty	1289	Balawoli	\N	district	77	\N	2014
2070	subcounty	1290	Wankole	\N	district	77	\N	2014
2071	subcounty	1291	Butansi	\N	district	77	\N	2014
2072	subcounty	1292	Kitayunjwa	\N	district	77	\N	2014
2073	subcounty	1293	Bulopa	\N	district	77	\N	2014
2074	subcounty	1294	Nawanyago	\N	district	77	\N	2014
2075	subcounty	1295	Dranya	\N	district	53	\N	2014
2076	subcounty	1296	Ludara	\N	district	53	\N	2014
2077	subcounty	1297	Abuku	\N	district	53	\N	2014
2078	subcounty	1298	Koboko town council	\N	district	53	\N	2014
2079	subcounty	1299	Kuluba	\N	district	53	\N	2014
2080	subcounty	1300	Lobule	\N	district	53	\N	2014
2081	subcounty	1301	Ayer	\N	district	13	\N	2014
2082	subcounty	1302	Akalo	\N	district	13	\N	2014
2083	subcounty	1303	Okwerodot	\N	district	13	\N	2014
2084	subcounty	1304	Alito	\N	district	13	\N	2014
2085	subcounty	1305	Kole town council	\N	district	13	\N	2014
2086	subcounty	1306	Aboke	\N	district	13	\N	2014
2087	subcounty	1307	Bukakata	\N	district	18	\N	2014
2088	subcounty	1308	Buwunga	\N	district	18	\N	2014
2089	subcounty	1309	Kabonera	\N	district	18	\N	2014
2090	subcounty	1310	Kyannamukaaka	\N	district	18	\N	2014
2091	subcounty	1311	Mukungwe	\N	district	18	\N	2014
2092	subcounty	1312	Katwe/butego	\N	district	18	\N	2014
2093	subcounty	1313	Kimaanya/kyabakuza	\N	district	18	\N	2014
2094	subcounty	1314	Nyendo/ssenyange	\N	district	18	\N	2014
2095	subcounty	1315	Budondo	\N	district	97	\N	2014
2096	subcounty	1316	Pakanyi	\N	district	97	\N	2014
2097	subcounty	1317	Central division	\N	district	97	\N	2014
2098	subcounty	1318	Kigulya division	\N	district	97	\N	2014
2099	subcounty	1319	Nyangahya division	\N	district	97	\N	2014
2100	subcounty	1320	Bwijanga	\N	district	97	\N	2014
2101	subcounty	1321	Kimengo	\N	district	97	\N	2014
2102	subcounty	1322	Miirya	\N	district	97	\N	2014
2103	subcounty	1323	Karujubu division	\N	district	97	\N	2014
2104	subcounty	1324	Baitambogwe	\N	district	73	\N	2014
2105	subcounty	1325	Bukabooli	\N	district	73	\N	2014
2106	subcounty	1326	Bukatube	\N	district	73	\N	2014
2107	subcounty	1327	Busakira	\N	district	73	\N	2014
2108	subcounty	1328	Imanyiro	\N	district	73	\N	2014
2109	subcounty	1329	Jaguzi	\N	district	73	\N	2014
2110	subcounty	1330	Kigandalo	\N	district	73	\N	2014
2111	subcounty	1331	Kityerera	\N	district	73	\N	2014
2112	subcounty	1332	Malongo	\N	district	73	\N	2014
2113	subcounty	1333	Mayuge town council	\N	district	73	\N	2014
2114	subcounty	1334	Mpungwe	\N	district	73	\N	2014
2115	subcounty	1335	Wairasa	\N	district	73	\N	2014
2116	subcounty	1336	Nawaikoke	\N	district	41	\N	2014
2117	subcounty	1337	Kaliro town council	\N	district	41	\N	2014
2118	subcounty	1338	Gadumire	\N	district	41	\N	2014
2119	subcounty	1339	Namwiwa	\N	district	41	\N	2014
2120	subcounty	1340	Namugongo	\N	district	41	\N	2014
2121	subcounty	1341	Bumanya	\N	district	41	\N	2014
2122	subcounty	1342	Kalungu	\N	district	85	\N	2014
2123	subcounty	1343	Kalungu town council	\N	district	85	\N	2014
2124	subcounty	1344	Kyamulibwa	\N	district	85	\N	2014
2125	subcounty	1345	Lukaya town council	\N	district	85	\N	2014
2126	subcounty	1346	Lwabenge	\N	district	85	\N	2014
2127	subcounty	1347	Bukulula	\N	district	85	\N	2014
2128	subcounty	1348	Kawempe division	\N	district	20	\N	2014
2129	subcounty	1349	Nakawa division	\N	district	20	\N	2014
2130	subcounty	1350	Makindye division	\N	district	20	\N	2014
2131	subcounty	1351	Central division	\N	district	20	\N	2014
2132	subcounty	1352	Lubaga division	\N	district	20	\N	2014
2133	subcounty	1353	Busiriba	\N	district	64	\N	2014
2134	subcounty	1354	Bwizi	\N	district	64	\N	2014
2135	subcounty	1355	Kabambiro	\N	district	64	\N	2014
2136	subcounty	1356	Kahunge	\N	district	64	\N	2014
2137	subcounty	1357	Kamwenge	\N	district	64	\N	2014
2138	subcounty	1358	Kamwenge town council	\N	district	64	\N	2014
2139	subcounty	1359	Buhanda	\N	district	64	\N	2014
2140	subcounty	1360	Kanara	\N	district	64	\N	2014
2141	subcounty	1361	Kicheche	\N	district	64	\N	2014
2142	subcounty	1362	Mahyoro	\N	district	64	\N	2014
2143	subcounty	1363	Ntara	\N	district	64	\N	2014
2144	subcounty	1364	Nyabbani	\N	district	64	\N	2014
2145	subcounty	1365	Nkoma	\N	district	64	\N	2014
2146	subcounty	1366	Biguli	\N	district	64	\N	2014
2147	subcounty	1367	Kihiihi	\N	district	65	\N	2014
2148	subcounty	1368	Nyanga	\N	district	65	\N	2014
2149	subcounty	1369	Kihiihi town council	\N	district	65	\N	2014
2150	subcounty	1370	Nyakinoni	\N	district	65	\N	2014
2151	subcounty	1371	Nyamirama	\N	district	65	\N	2014
2152	subcounty	1372	Katete	\N	district	65	\N	2014
2153	subcounty	1373	Kambuga town council	\N	district	65	\N	2014
2154	subcounty	1374	Kambuga	\N	district	65	\N	2014
2155	subcounty	1375	Kanyantorogo	\N	district	65	\N	2014
2156	subcounty	1376	Kirima	\N	district	65	\N	2014
2157	subcounty	1377	Butogota town council	\N	district	65	\N	2014
2158	subcounty	1378	Kayonza	\N	district	65	\N	2014
2159	subcounty	1379	Mpungu	\N	district	65	\N	2014
2160	subcounty	1380	Kinaaba	\N	district	65	\N	2014
2161	subcounty	1381	Kanungu town council	\N	district	65	\N	2014
2162	subcounty	1382	Rugyeyo	\N	district	65	\N	2014
2163	subcounty	1383	Rutenga	\N	district	65	\N	2014
2164	subcounty	1384	Amukol	\N	district	90	\N	2014
2165	subcounty	1385	Chema	\N	district	90	\N	2014
2166	subcounty	1386	Chepteret	\N	district	90	\N	2014
2167	subcounty	1387	Gamogo	\N	district	90	\N	2014
2168	subcounty	1388	Kabeywa	\N	district	90	\N	2014
2169	subcounty	1389	Kapchesombe	\N	district	90	\N	2014
2170	subcounty	1390	Kapsinda	\N	district	90	\N	2014
2171	subcounty	1391	Kaptanya	\N	district	90	\N	2014
2172	subcounty	1392	Kapteret	\N	district	90	\N	2014
2173	subcounty	1393	Kaserem	\N	district	90	\N	2014
2174	subcounty	1394	Kawowo	\N	district	90	\N	2014
2175	subcounty	1395	Munarya	\N	district	90	\N	2014
2176	subcounty	1396	Sipi	\N	district	90	\N	2014
2177	subcounty	1397	Tegeres	\N	district	90	\N	2014
2178	subcounty	1398	Kapchorwa town council	\N	district	90	\N	2014
2179	subcounty	1399	Bwera	\N	district	58	\N	2014
2180	subcounty	1400	Hima town council	\N	district	58	\N	2014
2181	subcounty	1401	Ihandiro	\N	district	58	\N	2014
2182	subcounty	1402	Isango	\N	district	58	\N	2014
2183	subcounty	1403	Karambi	\N	district	58	\N	2014
2184	subcounty	1404	Kisinga	\N	district	58	\N	2014
2185	subcounty	1405	Kitholhu	\N	district	58	\N	2014
2186	subcounty	1406	Kyondo	\N	district	58	\N	2014
2187	subcounty	1407	Mpondwe/lhubiriha town council	\N	district	58	\N	2014
2188	subcounty	1408	Mukunyu	\N	district	58	\N	2014
2189	subcounty	1409	Nyakatonzi	\N	district	58	\N	2014
2190	subcounty	1410	Nyakiyumbu	\N	district	58	\N	2014
2191	subcounty	1411	Bugoye	\N	district	58	\N	2014
2192	subcounty	1412	Buhuhira	\N	district	58	\N	2014
2193	subcounty	1413	Bwesumbu	\N	district	58	\N	2014
2194	subcounty	1414	Karusandara	\N	district	58	\N	2014
2195	subcounty	1415	Katwe-kabatoro town council	\N	district	58	\N	2014
2196	subcounty	1416	Kilembe	\N	district	58	\N	2014
2197	subcounty	1417	Kitswamba	\N	district	58	\N	2014
2198	subcounty	1418	Kyabarungira	\N	district	58	\N	2014
2199	subcounty	1419	Lake katwe	\N	district	58	\N	2014
2200	subcounty	1420	Mahango	\N	district	58	\N	2014
2201	subcounty	1421	Maliba	\N	district	58	\N	2014
2202	subcounty	1422	Muhokya	\N	district	58	\N	2014
2203	subcounty	1423	Rukoki	\N	district	58	\N	2014
2204	subcounty	1424	Nyamwamba division	\N	district	58	\N	2014
2205	subcounty	1425	Kyarumba	\N	district	58	\N	2014
2206	subcounty	1426	Bulembia division	\N	district	58	\N	2014
2207	subcounty	1427	Toroma	\N	district	32	\N	2014
2208	subcounty	1428	Katakwi town council	\N	district	32	\N	2014
2209	subcounty	1429	Ngariam	\N	district	32	\N	2014
2210	subcounty	1430	Ongongoja	\N	district	32	\N	2014
2211	subcounty	1431	Usuk	\N	district	32	\N	2014
2212	subcounty	1432	Magoro	\N	district	32	\N	2014
2213	subcounty	1433	Katakwi	\N	district	32	\N	2014
2214	subcounty	1434	Omodoi	\N	district	32	\N	2014
2215	subcounty	1435	Kapujan	\N	district	32	\N	2014
2216	subcounty	1436	Bbaale	\N	district	26	\N	2014
2217	subcounty	1437	Galiraaya	\N	district	26	\N	2014
2218	subcounty	1438	Kayonza	\N	district	26	\N	2014
2219	subcounty	1439	Kitimbwa	\N	district	26	\N	2014
2220	subcounty	1440	Busana	\N	district	26	\N	2014
2221	subcounty	1441	Kangulumira	\N	district	26	\N	2014
2222	subcounty	1442	Kayunga	\N	district	26	\N	2014
2223	subcounty	1443	Kayunga town council	\N	district	26	\N	2014
2224	subcounty	1444	Nazigo	\N	district	26	\N	2014
2225	subcounty	1445	Nkooko	\N	district	59	\N	2014
2226	subcounty	1446	Kagadi	\N	district	59	\N	2014
2227	subcounty	1447	Kakindo	\N	district	59	\N	2014
2228	subcounty	1448	Rugashari	\N	district	59	\N	2014
2229	subcounty	1449	Ndaiga	\N	district	59	\N	2014
2230	subcounty	1450	Kyakabadiima	\N	district	59	\N	2014
2231	subcounty	1451	Kabamba	\N	district	59	\N	2014
2232	subcounty	1452	Mpasaana	\N	district	59	\N	2014
2233	subcounty	1453	Kakumiro town council	\N	district	59	\N	2014
2234	subcounty	1454	Birembo	\N	district	59	\N	2014
2235	subcounty	1455	Kasiita	\N	district	59	\N	2014
2236	subcounty	1456	Nalweyo	\N	district	59	\N	2014
2237	subcounty	1457	Kasambya	\N	district	59	\N	2014
2238	subcounty	1458	Bwikara	\N	district	59	\N	2014
2239	subcounty	1459	Kyaterekera	\N	district	59	\N	2014
2240	subcounty	1460	Mpeefu	\N	district	59	\N	2014
2241	subcounty	1461	Kiryanga	\N	district	59	\N	2014
2242	subcounty	1462	Mabaale	\N	district	59	\N	2014
2243	subcounty	1463	Kyenzige	\N	district	59	\N	2014
2244	subcounty	1464	Paacwa	\N	district	59	\N	2014
2245	subcounty	1465	Burora	\N	district	59	\N	2014
2246	subcounty	1466	Ruteete	\N	district	59	\N	2014
2247	subcounty	1467	Kyanaisoke	\N	district	59	\N	2014
2248	subcounty	1468	Kagadi town council	\N	district	59	\N	2014
2249	subcounty	1469	Muhorro	\N	district	59	\N	2014
2250	subcounty	1470	Muhorro town council	\N	district	59	\N	2014
2251	subcounty	1471	Nyamarwa	\N	district	59	\N	2014
2252	subcounty	1472	Kyebando	\N	district	59	\N	2014
2253	subcounty	1473	Kibaale town council	\N	district	59	\N	2014
2254	subcounty	1474	Bwamiramira	\N	district	59	\N	2014
2255	subcounty	1475	Bubango	\N	district	59	\N	2014
2256	subcounty	1476	Mugarama	\N	district	59	\N	2014
2257	subcounty	1477	Matale	\N	district	59	\N	2014
2258	subcounty	1478	Nyamarunda	\N	district	59	\N	2014
2259	subcounty	1479	Bukomero	\N	district	109	\N	2014
2260	subcounty	1480	Bukomero town council	\N	district	109	\N	2014
2261	subcounty	1481	Ddwaniro	\N	district	109	\N	2014
2262	subcounty	1482	Kapeke	\N	district	109	\N	2014
2263	subcounty	1483	Kibiga	\N	district	109	\N	2014
2264	subcounty	1484	Kiboga town council	\N	district	109	\N	2014
2265	subcounty	1485	Lwamata	\N	district	109	\N	2014
2266	subcounty	1486	Muwanga	\N	district	109	\N	2014
2267	subcounty	1487	Bulangira	\N	district	75	\N	2014
2268	subcounty	1488	Buseta	\N	district	75	\N	2014
2269	subcounty	1489	Kabweri	\N	district	75	\N	2014
2270	subcounty	1490	Kadama	\N	district	75	\N	2014
2271	subcounty	1491	Kagumu	\N	district	75	\N	2014
2272	subcounty	1492	Kasasira	\N	district	75	\N	2014
2273	subcounty	1493	Kibuku	\N	district	75	\N	2014
2274	subcounty	1494	Kibuku town council	\N	district	75	\N	2014
2275	subcounty	1495	Kirika	\N	district	75	\N	2014
2276	subcounty	1496	Tirinyi	\N	district	75	\N	2014
2277	subcounty	1497	Nkungu	\N	district	4	\N	2014
2278	subcounty	1498	Burunga	\N	district	4	\N	2014
2279	subcounty	1499	Engari	\N	district	4	\N	2014
2280	subcounty	1500	Kanoni	\N	district	4	\N	2014
2281	subcounty	1501	Kazo town council	\N	district	4	\N	2014
2282	subcounty	1502	Rwemikoma	\N	district	4	\N	2014
2283	subcounty	1503	Kanyaryeru	\N	district	4	\N	2014
2284	subcounty	1504	Kashongi	\N	district	4	\N	2014
2285	subcounty	1505	Kenshunga	\N	district	4	\N	2014
2286	subcounty	1506	Kinoni	\N	district	4	\N	2014
2287	subcounty	1507	Kiruhura town council	\N	district	4	\N	2014
2288	subcounty	1508	Nyakashashara	\N	district	4	\N	2014
2289	subcounty	1509	Sanga	\N	district	4	\N	2014
2290	subcounty	1510	Sanga town council	\N	district	4	\N	2014
2291	subcounty	1511	Kikaatsi	\N	district	4	\N	2014
2292	subcounty	1512	Kitura	\N	district	4	\N	2014
2293	subcounty	1513	Kazo	\N	district	4	\N	2014
2294	subcounty	1514	Kigumba town council	\N	district	98	\N	2014
2295	subcounty	1515	Kiryandongo refugee settlement	\N	district	98	\N	2014
2296	subcounty	1516	Kiryandongo town council	\N	district	98	\N	2014
2297	subcounty	1517	Masindi port	\N	district	98	\N	2014
2298	subcounty	1518	Bweyale town council	\N	district	98	\N	2014
2299	subcounty	1519	Kisoro town council	\N	district	60	\N	2014
2300	subcounty	1520	Nyabwishenya	\N	district	60	\N	2014
2301	subcounty	1521	Busanza	\N	district	60	\N	2014
2302	subcounty	1522	Kirundo	\N	district	60	\N	2014
2303	subcounty	1523	Nyarubuye	\N	district	60	\N	2014
2304	subcounty	1524	Nyundo	\N	district	60	\N	2014
2305	subcounty	1525	Bukimbiri	\N	district	60	\N	2014
2306	subcounty	1526	Kanaba	\N	district	60	\N	2014
2307	subcounty	1527	Nyakabande	\N	district	60	\N	2014
2308	subcounty	1528	Nyakinama	\N	district	60	\N	2014
2309	subcounty	1529	Chahi	\N	district	60	\N	2014
2310	subcounty	1530	Muramba	\N	district	60	\N	2014
2311	subcounty	1531	Nyarusiza	\N	district	60	\N	2014
2312	subcounty	1532	Murora	\N	district	60	\N	2014
2313	subcounty	1533	Kitgum matidi	\N	district	14	\N	2014
2314	subcounty	1534	Labongo akwang	\N	district	14	\N	2014
2315	subcounty	1535	Labongo amida	\N	district	14	\N	2014
2316	subcounty	1536	Labongo layamo	\N	district	14	\N	2014
2317	subcounty	1537	Lagoro	\N	district	14	\N	2014
2318	subcounty	1538	Mucwini	\N	district	14	\N	2014
2319	subcounty	1539	Namokora	\N	district	14	\N	2014
2320	subcounty	1540	Omiya anyima	\N	district	14	\N	2014
2321	subcounty	1541	Orom	\N	district	14	\N	2014
2322	subcounty	1542	Mucwini	\N	district	14	\N	2014
2323	subcounty	1543	Kitgum town council	\N	district	14	\N	2014
2324	subcounty	1544	Kacheri	\N	district	46	\N	2014
2325	subcounty	1545	Kotido	\N	district	46	\N	2014
2326	subcounty	1546	Kotido town council	\N	district	46	\N	2014
2327	subcounty	1547	Nakaperimoru	\N	district	46	\N	2014
2328	subcounty	1548	Panyangara	\N	district	46	\N	2014
2329	subcounty	1549	Rengen	\N	district	46	\N	2014
2330	subcounty	1550	Atutur	\N	district	86	\N	2014
2331	subcounty	1551	Kanyum	\N	district	86	\N	2014
2332	subcounty	1552	Kumi	\N	district	86	\N	2014
2333	subcounty	1553	Kumi town council	\N	district	86	\N	2014
2334	subcounty	1554	Mukongoro	\N	district	86	\N	2014
2335	subcounty	1555	Nyero	\N	district	86	\N	2014
2336	subcounty	1556	Ongino	\N	district	86	\N	2014
2337	subcounty	1557	Benet	\N	district	91	\N	2014
2338	subcounty	1558	Binyiny	\N	district	91	\N	2014
2339	subcounty	1559	Binyiny town council	\N	district	91	\N	2014
2340	subcounty	1560	Kaproron	\N	district	91	\N	2014
2341	subcounty	1561	Kaptoyoy	\N	district	91	\N	2014
2342	subcounty	1562	Kaptum	\N	district	91	\N	2014
2343	subcounty	1563	Kiriki	\N	district	91	\N	2014
2344	subcounty	1564	Kitawoi	\N	district	91	\N	2014
2345	subcounty	1565	Kwanyiy	\N	district	91	\N	2014
2346	subcounty	1566	Kwosir	\N	district	91	\N	2014
2347	subcounty	1567	Moyok	\N	district	91	\N	2014
2348	subcounty	1568	Ngenge	\N	district	91	\N	2014
2349	subcounty	1569	Bananywa	\N	district	108	\N	2014
2350	subcounty	1570	Butemba	\N	district	108	\N	2014
2351	subcounty	1571	Butemba town council	\N	district	108	\N	2014
2352	subcounty	1572	Gayaza	\N	district	108	\N	2014
2353	subcounty	1573	Kyankwanzi	\N	district	108	\N	2014
2354	subcounty	1574	Mulagi	\N	district	108	\N	2014
2355	subcounty	1575	Nkandwa	\N	district	108	\N	2014
2356	subcounty	1576	Nsambya	\N	district	108	\N	2014
2357	subcounty	1577	Ntwetwe	\N	district	108	\N	2014
2358	subcounty	1578	Ntwetwe town council	\N	district	108	\N	2014
2359	subcounty	1579	Wattuba	\N	district	108	\N	2014
2360	subcounty	1580	Ruyonza	\N	district	70	\N	2014
2361	subcounty	1581	Kabweeza-kyegegwa	\N	district	70	\N	2014
2362	subcounty	1582	Hapuuyo	\N	district	70	\N	2014
2363	subcounty	1583	Mpara	\N	district	70	\N	2014
2364	subcounty	1584	Kyaka	\N	district	70	\N	2014
2365	subcounty	1585	Kakabara	\N	district	70	\N	2014
2366	subcounty	1586	Kyegegwa town council	\N	district	70	\N	2014
2367	subcounty	1587	Kasule	\N	district	70	\N	2014
2368	subcounty	1588	Rwentuha	\N	district	70	\N	2014
2369	subcounty	1589	Bufunjo	\N	district	69	\N	2014
2370	subcounty	1590	Bugaaki	\N	district	69	\N	2014
2371	subcounty	1591	Butiiti	\N	district	69	\N	2014
2372	subcounty	1592	Butunduzi	\N	district	69	\N	2014
2373	subcounty	1593	Katooke town council	\N	district	69	\N	2014
2374	subcounty	1594	Kihuura	\N	district	69	\N	2014
2375	subcounty	1595	Kisojo	\N	district	69	\N	2014
2376	subcounty	1596	Kyarusozi town council	\N	district	69	\N	2014
2377	subcounty	1597	Kyenjojo town council	\N	district	69	\N	2014
2378	subcounty	1598	Nyabuharwa	\N	district	69	\N	2014
2379	subcounty	1599	Nyankwanzi	\N	district	69	\N	2014
2380	subcounty	1600	Kyarusozi	\N	district	69	\N	2014
2381	subcounty	1601	Nyantungo	\N	district	69	\N	2014
2382	subcounty	1602	Kigaraale	\N	district	69	\N	2014
2383	subcounty	1603	Butunduzi town council	\N	district	69	\N	2014
2384	subcounty	1604	Katooke	\N	district	69	\N	2014
2385	subcounty	1605	Agoro	\N	district	15	\N	2014
2386	subcounty	1606	Lamwo town council	\N	district	15	\N	2014
2387	subcounty	1607	Lokung	\N	district	15	\N	2014
2388	subcounty	1608	Madi opei	\N	district	15	\N	2014
2389	subcounty	1609	Padibe east	\N	district	15	\N	2014
2390	subcounty	1610	Padibe town council	\N	district	15	\N	2014
2391	subcounty	1611	Padibe west	\N	district	15	\N	2014
2392	subcounty	1612	Palabek-gem	\N	district	15	\N	2014
2393	subcounty	1613	Palabek-ogili	\N	district	15	\N	2014
2394	subcounty	1614	Palabek kal	\N	district	15	\N	2014
2395	subcounty	1615	Adekokwok	\N	district	6	\N	2014
2396	subcounty	1616	Agali	\N	district	6	\N	2014
2397	subcounty	1617	Agweng	\N	district	6	\N	2014
2398	subcounty	1618	Aromo	\N	district	6	\N	2014
2399	subcounty	1619	Barr	\N	district	6	\N	2014
2400	subcounty	1620	Lira	\N	district	6	\N	2014
2401	subcounty	1621	Ngetta	\N	district	6	\N	2014
2402	subcounty	1622	Ogur	\N	district	6	\N	2014
2403	subcounty	1623	Adyel division	\N	district	6	\N	2014
2404	subcounty	1624	Central division	\N	district	6	\N	2014
2405	subcounty	1625	Railway division	\N	district	6	\N	2014
2406	subcounty	1626	Ojwina division	\N	district	6	\N	2014
2407	subcounty	1627	Bukooma	\N	district	71	\N	2014
2408	subcounty	1628	Bulongo	\N	district	71	\N	2014
2409	subcounty	1629	Ikumbya	\N	district	71	\N	2014
2410	subcounty	1630	Irongo	\N	district	71	\N	2014
2411	subcounty	1631	Luuka town council	\N	district	71	\N	2014
2412	subcounty	1632	Nawampiti	\N	district	71	\N	2014
2413	subcounty	1633	Bukanga	\N	district	71	\N	2014
2414	subcounty	1634	Waibuga	\N	district	71	\N	2014
2415	subcounty	1635	Makulubita	\N	district	21	\N	2014
2416	subcounty	1636	Luwero	\N	district	21	\N	2014
2417	subcounty	1637	Kikyusa	\N	district	21	\N	2014
2418	subcounty	1638	Zirobwe	\N	district	21	\N	2014
2419	subcounty	1639	Luwero town council	\N	district	21	\N	2014
2420	subcounty	1640	Katikamu	\N	district	21	\N	2014
2421	subcounty	1641	Wobulenzi town council	\N	district	21	\N	2014
2422	subcounty	1642	Bamunanika	\N	district	21	\N	2014
2423	subcounty	1643	Nyimbwa	\N	district	21	\N	2014
2424	subcounty	1644	Kalagala	\N	district	21	\N	2014
2425	subcounty	1645	Bombo town council	\N	district	21	\N	2014
2426	subcounty	1646	Butuntumula	\N	district	21	\N	2014
2427	subcounty	1647	Kamira	\N	district	21	\N	2014
2428	subcounty	1648	Kisekka	\N	district	17	\N	2014
2429	subcounty	1649	Kkingo	\N	district	17	\N	2014
2430	subcounty	1650	Kyazanga	\N	district	17	\N	2014
2431	subcounty	1651	Lwengo	\N	district	17	\N	2014
2432	subcounty	1652	Lwengo town council	\N	district	17	\N	2014
2433	subcounty	1653	Malongo	\N	district	17	\N	2014
2434	subcounty	1654	Ndagwe	\N	district	17	\N	2014
2435	subcounty	1655	Lyantonde	\N	district	28	\N	2014
2436	subcounty	1656	Kaliiro	\N	district	28	\N	2014
2437	subcounty	1657	Mpumudde	\N	district	28	\N	2014
2438	subcounty	1658	Lyantonde town council	\N	district	28	\N	2014
2439	subcounty	1659	Kasagama	\N	district	28	\N	2014
2440	subcounty	1660	Kinuuka	\N	district	28	\N	2014
2441	subcounty	1661	Bubutu	\N	district	42	\N	2014
2442	subcounty	1662	Bugobero	\N	district	42	\N	2014
2443	subcounty	1663	Bukhabusi	\N	district	42	\N	2014
2444	subcounty	1664	Bukhaweka	\N	district	42	\N	2014
2445	subcounty	1665	Bukhofu	\N	district	42	\N	2014
2446	subcounty	1666	Bukiabi	\N	district	42	\N	2014
2447	subcounty	1667	Bukokho	\N	district	42	\N	2014
2448	subcounty	1668	Bukusu	\N	district	42	\N	2014
2449	subcounty	1669	Bumbo	\N	district	42	\N	2014
2450	subcounty	1670	Bumwoni	\N	district	42	\N	2014
2451	subcounty	1671	Bunabwana	\N	district	42	\N	2014
2452	subcounty	1672	Bupoto	\N	district	42	\N	2014
2453	subcounty	1673	Busukuya	\N	district	42	\N	2014
2454	subcounty	1674	Butiru	\N	district	42	\N	2014
2455	subcounty	1675	Butta	\N	district	42	\N	2014
2456	subcounty	1676	Buwabwala	\N	district	42	\N	2014
2457	subcounty	1677	Buwagogo	\N	district	42	\N	2014
2458	subcounty	1678	Kaato	\N	district	42	\N	2014
2459	subcounty	1679	Khabutoola	\N	district	42	\N	2014
2460	subcounty	1680	Lwakhakha town council	\N	district	42	\N	2014
2461	subcounty	1681	Magale	\N	district	42	\N	2014
2462	subcounty	1682	Manafwa town council	\N	district	42	\N	2014
2463	subcounty	1683	Mukhoto	\N	district	42	\N	2014
2464	subcounty	1684	Nalondo	\N	district	42	\N	2014
2465	subcounty	1685	Namabya	\N	district	42	\N	2014
2466	subcounty	1686	Namboko	\N	district	42	\N	2014
2467	subcounty	1687	Sibanga	\N	district	42	\N	2014
2468	subcounty	1688	Sisuni	\N	district	42	\N	2014
2469	subcounty	1689	Tsekululu	\N	district	42	\N	2014
2470	subcounty	1690	Weswa	\N	district	42	\N	2014
2471	subcounty	1691	Maracha town council	\N	district	105	\N	2014
2472	subcounty	1692	Nyadri	\N	district	105	\N	2014
2473	subcounty	1693	Oleba	\N	district	105	\N	2014
2474	subcounty	1694	Olufee	\N	district	105	\N	2014
2475	subcounty	1695	Yivu	\N	district	105	\N	2014
2476	subcounty	1696	Kasitu	\N	district	107	\N	2014
2477	subcounty	1697	Ngamba	\N	district	107	\N	2014
2478	subcounty	1698	Ntotoro	\N	district	107	\N	2014
2479	subcounty	1699	Sindila	\N	district	107	\N	2014
2480	subcounty	1700	Bubandi	\N	district	107	\N	2014
2481	subcounty	1701	Bubukwanga	\N	district	107	\N	2014
2482	subcounty	1702	Bundibugyo town council	\N	district	107	\N	2014
2483	subcounty	1703	Mirambi	\N	district	107	\N	2014
2484	subcounty	1704	Nyahuka town council	\N	district	107	\N	2014
2485	subcounty	1705	Kisuba	\N	district	107	\N	2014
2486	subcounty	1706	Busaru	\N	district	107	\N	2014
2487	subcounty	1707	Kirumya	\N	district	107	\N	2014
2488	subcounty	1708	Nyakabirizi division	\N	district	103	\N	2014
2489	subcounty	1709	Bitooma	\N	district	103	\N	2014
2490	subcounty	1710	Bumbaire	\N	district	103	\N	2014
2491	subcounty	1711	Ibaare	\N	district	103	\N	2014
2492	subcounty	1712	Kakanju	\N	district	103	\N	2014
2493	subcounty	1713	Kyabugimbi	\N	district	103	\N	2014
2494	subcounty	1714	Kyamuhunga	\N	district	103	\N	2014
2495	subcounty	1715	Kyeizooba	\N	district	103	\N	2014
2496	subcounty	1716	Nyabubaare	\N	district	103	\N	2014
2497	subcounty	1717	Ruhumuro	\N	district	103	\N	2014
2498	subcounty	1718	Central division	\N	district	103	\N	2014
2499	subcounty	1719	Eastern division	\N	district	83	\N	2014
2500	subcounty	1720	Buhehe	\N	district	83	\N	2014
2501	subcounty	1721	Bulumbi	\N	district	83	\N	2014
2502	subcounty	1722	Busitema	\N	district	83	\N	2014
2503	subcounty	1723	Buteba	\N	district	83	\N	2014
2504	subcounty	1724	Buyanga	\N	district	83	\N	2014
2505	subcounty	1725	Dabani	\N	district	83	\N	2014
2506	subcounty	1726	Lumino	\N	district	83	\N	2014
2507	subcounty	1727	Majanji	\N	district	83	\N	2014
2508	subcounty	1728	Masaba	\N	district	83	\N	2014
2509	subcounty	1729	Masafu	\N	district	83	\N	2014
2510	subcounty	1730	Masinya	\N	district	83	\N	2014
2511	subcounty	1731	Sikuda	\N	district	83	\N	2014
2512	subcounty	1732	Lunyo	\N	district	83	\N	2014
2513	subcounty	1733	Busime	\N	district	83	\N	2014
2514	subcounty	1734	Western division	\N	district	83	\N	2014
2515	subcounty	1735	Budumba	\N	district	40	\N	2014
2516	subcounty	1736	Busaba	\N	district	40	\N	2014
2517	subcounty	1737	Busabi	\N	district	40	\N	2014
2518	subcounty	1738	Busolwe town council	\N	district	40	\N	2014
2519	subcounty	1739	Butaleja	\N	district	40	\N	2014
2520	subcounty	1740	Butaleja town council	\N	district	40	\N	2014
2521	subcounty	1741	Himutu	\N	district	40	\N	2014
2522	subcounty	1742	Kachonga	\N	district	40	\N	2014
2523	subcounty	1743	Mazimasa	\N	district	40	\N	2014
2524	subcounty	1744	Nawanjofu	\N	district	40	\N	2014
2525	subcounty	1745	Naweyo	\N	district	40	\N	2014
2526	subcounty	1746	Budde	\N	district	67	\N	2014
2527	subcounty	1747	Bulo	\N	district	67	\N	2014
2528	subcounty	1748	Gombe town council	\N	district	67	\N	2014
2529	subcounty	1749	Kalamba	\N	district	67	\N	2014
2530	subcounty	1750	Kibibi	\N	district	67	\N	2014
2531	subcounty	1751	Ngando	\N	district	67	\N	2014
2532	subcounty	1752	Bugaya	\N	district	74	\N	2014
2533	subcounty	1753	Busamuzi	\N	district	74	\N	2014
2534	subcounty	1754	Buvuma town council	\N	district	74	\N	2014
2535	subcounty	1755	Bweema	\N	district	74	\N	2014
2536	subcounty	1756	Lwajje	\N	district	74	\N	2014
2537	subcounty	1757	Lyabaana	\N	district	74	\N	2014
2538	subcounty	1758	Nairambi	\N	district	74	\N	2014
2539	subcounty	1759	Bugaya	\N	district	78	\N	2014
2540	subcounty	1760	Buyende	\N	district	78	\N	2014
2541	subcounty	1761	Buyende town council	\N	district	78	\N	2014
2542	subcounty	1762	Kagulu	\N	district	78	\N	2014
2543	subcounty	1763	Kidera	\N	district	78	\N	2014
2544	subcounty	1764	Nkondo	\N	district	78	\N	2014
2545	subcounty	1765	Adok	\N	district	51	\N	2014
2546	subcounty	1766	Agwata	\N	district	51	\N	2014
2547	subcounty	1767	Amwoma	\N	district	51	\N	2014
2548	subcounty	1768	Batta	\N	district	51	\N	2014
2549	subcounty	1769	Dokolo	\N	district	51	\N	2014
2550	subcounty	1770	Dokolo town council	\N	district	51	\N	2014
2551	subcounty	1771	Kangai	\N	district	51	\N	2014
2552	subcounty	1772	Kwera	\N	district	51	\N	2014
2553	subcounty	1773	Okwalongwen	\N	district	51	\N	2014
2554	subcounty	1774	Okwongodul	\N	district	51	\N	2014
2555	subcounty	1775	Adeknino	\N	district	51	\N	2014
2556	subcounty	1776	Kabulasoke	\N	district	19	\N	2014
2557	subcounty	1777	Kanoni town council	\N	district	19	\N	2014
2558	subcounty	1778	Kyegonza	\N	district	19	\N	2014
2559	subcounty	1779	Maddu	\N	district	19	\N	2014
2560	subcounty	1780	Mpenja	\N	district	19	\N	2014
2561	subcounty	1781	Palaro	\N	district	45	\N	2014
2562	subcounty	1782	Patiko	\N	district	45	\N	2014
2563	subcounty	1783	Bungatira	\N	district	45	\N	2014
2564	subcounty	1784	Unyama	\N	district	45	\N	2014
2565	subcounty	1785	Lakwana	\N	district	45	\N	2014
2566	subcounty	1786	Odek	\N	district	45	\N	2014
2567	subcounty	1787	Lalogi	\N	district	45	\N	2014
2568	subcounty	1788	Koro	\N	district	45	\N	2014
2569	subcounty	1789	Paicho	\N	district	45	\N	2014
2570	subcounty	1790	Awach	\N	district	45	\N	2014
2571	subcounty	1791	Bobi	\N	district	45	\N	2014
2572	subcounty	1792	Ongako	\N	district	45	\N	2014
2573	subcounty	1793	Pece division	\N	district	45	\N	2014
2574	subcounty	1794	Layibi division	\N	district	45	\N	2014
2575	subcounty	1795	Bar dege division	\N	district	45	\N	2014
2576	subcounty	1796	Laroo division	\N	district	45	\N	2014
2577	subcounty	1797	Kitoba	\N	district	55	\N	2014
2578	subcounty	1798	Kiziranfumbi	\N	district	55	\N	2014
2579	subcounty	1799	Kabwoya	\N	district	55	\N	2014
2580	subcounty	1800	Buhimba	\N	district	55	\N	2014
2581	subcounty	1801	Bugambe	\N	district	55	\N	2014
2582	subcounty	1802	Busiisi division	\N	district	55	\N	2014
2583	subcounty	1803	Mparo division	\N	district	55	\N	2014
2584	subcounty	1804	Kyangwali	\N	district	55	\N	2014
2585	subcounty	1805	Kahoora division	\N	district	55	\N	2014
2586	subcounty	1806	Buhanika	\N	district	55	\N	2014
2587	subcounty	1807	Buseruka	\N	district	55	\N	2014
2588	subcounty	1808	Kigorobya	\N	district	55	\N	2014
2589	subcounty	1809	Kigorobya town council	\N	district	55	\N	2014
2590	subcounty	1810	Bujumbura division	\N	district	55	\N	2014
2591	subcounty	1811	Kyabigambire	\N	district	55	\N	2014
2592	subcounty	1812	Ibanda town council	\N	district	2	\N	2014
2593	subcounty	1813	Igorora town council	\N	district	2	\N	2014
2594	subcounty	1814	Ishongororo	\N	district	2	\N	2014
2595	subcounty	1815	Ishongororo town council	\N	district	2	\N	2014
2596	subcounty	1816	Kashangura	\N	district	2	\N	2014
2597	subcounty	1817	Keihangara	\N	district	2	\N	2014
2598	subcounty	1818	Kicuzi	\N	district	2	\N	2014
2599	subcounty	1819	Kijongo	\N	district	2	\N	2014
2600	subcounty	1820	Kikyenkye	\N	district	2	\N	2014
2601	subcounty	1821	Nsasi	\N	district	2	\N	2014
2602	subcounty	1822	Nyabuhikye	\N	district	2	\N	2014
2603	subcounty	1823	Nyamarebe	\N	district	2	\N	2014
2604	subcounty	1824	Rukiri	\N	district	2	\N	2014
2605	subcounty	1825	Rushango town council	\N	district	2	\N	2014
2606	subcounty	1826	Bisheshe	\N	district	2	\N	2014
2607	subcounty	1827	Busembatia town council	\N	district	72	\N	2014
2608	subcounty	1828	Buyanga	\N	district	72	\N	2014
2609	subcounty	1829	Ibulanku	\N	district	72	\N	2014
2610	subcounty	1830	Igombe	\N	district	72	\N	2014
2611	subcounty	1831	Makuutu	\N	district	72	\N	2014
2612	subcounty	1832	Namalemba	\N	district	72	\N	2014
2613	subcounty	1833	Central division	\N	district	72	\N	2014
2614	subcounty	1834	Northern division	\N	district	72	\N	2014
2615	subcounty	1835	Bulamogi	\N	district	72	\N	2014
2616	subcounty	1836	Nabitende	\N	district	72	\N	2014
2617	subcounty	1837	Nakalama	\N	district	72	\N	2014
2618	subcounty	1838	Nakigo	\N	district	72	\N	2014
2619	subcounty	1839	Nambale	\N	district	72	\N	2014
2620	subcounty	1840	Namungalwe	\N	district	72	\N	2014
2621	subcounty	1841	Nawandala	\N	district	72	\N	2014
2622	subcounty	1842	Nawanyingi	\N	district	72	\N	2014
2623	subcounty	1843	Rushasha	\N	district	3	\N	2014
2624	subcounty	1844	Endiinzi	\N	district	3	\N	2014
2625	subcounty	1845	Rugaaga	\N	district	3	\N	2014
2626	subcounty	1846	Mbaare	\N	district	3	\N	2014
2627	subcounty	1847	Kashumba	\N	district	3	\N	2014
2628	subcounty	1848	Ngarama	\N	district	3	\N	2014
2629	subcounty	1849	Kabingo	\N	district	3	\N	2014
2630	subcounty	1850	Masha	\N	district	3	\N	2014
2631	subcounty	1851	Kabarebere town council	\N	district	3	\N	2014
2632	subcounty	1852	Bireere	\N	district	3	\N	2014
2633	subcounty	1853	Nyamuyanja	\N	district	3	\N	2014
2634	subcounty	1854	Kabingo	\N	district	3	\N	2014
2635	subcounty	1855	Nyakitunda	\N	district	3	\N	2014
2636	subcounty	1856	Isingiro town council	\N	district	3	\N	2014
2637	subcounty	1857	Kikagate	\N	district	3	\N	2014
2638	subcounty	1858	Kabuyanda	\N	district	3	\N	2014
2639	subcounty	1859	Kabuyanda town council	\N	district	3	\N	2014
2640	subcounty	1860	Ruborogota	\N	district	3	\N	2014
2641	subcounty	1861	Bugembe town council	\N	district	31	\N	2014
2642	subcounty	1862	Busedde	\N	district	31	\N	2014
2643	subcounty	1863	Kakira town council	\N	district	31	\N	2014
2644	subcounty	1864	Mafubira	\N	district	31	\N	2014
2645	subcounty	1865	Jinja central division	\N	district	31	\N	2014
2646	subcounty	1866	Budondo	\N	district	31	\N	2014
2647	subcounty	1867	Butagaya	\N	district	31	\N	2014
2648	subcounty	1868	Buwenge	\N	district	31	\N	2014
2649	subcounty	1869	Buwenge town council	\N	district	31	\N	2014
2650	subcounty	1870	Kimaka/mpumudde/ nalufenya division	\N	district	31	\N	2014
2651	subcounty	1871	Masese/walukuba division	\N	district	31	\N	2014
2652	subcounty	1872	Kaabong  east	\N	district	52	\N	2014
2653	subcounty	1873	Kaabong town council	\N	district	52	\N	2014
2654	subcounty	1874	Kaabong west	\N	district	52	\N	2014
2655	subcounty	1875	Kalapata	\N	district	52	\N	2014
2656	subcounty	1876	Kamion	\N	district	52	\N	2014
2657	subcounty	1877	Kapedo	\N	district	52	\N	2014
2658	subcounty	1878	Kathile	\N	district	52	\N	2014
2659	subcounty	1879	Kawalakol	\N	district	52	\N	2014
2660	subcounty	1880	Lobalangit	\N	district	52	\N	2014
2661	subcounty	1881	Lodiko	\N	district	52	\N	2014
2662	subcounty	1882	Lolelia	\N	district	52	\N	2014
2663	subcounty	1883	Loyoro	\N	district	52	\N	2014
2664	subcounty	1884	Napore (karenga)	\N	district	52	\N	2014
2665	subcounty	1885	Sidok	\N	district	52	\N	2014
2666	subcounty	1886	Central division	\N	district	56	\N	2014
2667	subcounty	1887	Kashambya	\N	district	56	\N	2014
2668	subcounty	1888	Hamurwa	\N	district	56	\N	2014
2669	subcounty	1889	Ruhija	\N	district	56	\N	2014
2670	subcounty	1890	Ikumba	\N	district	56	\N	2014
2671	subcounty	1891	Muko	\N	district	56	\N	2014
2672	subcounty	1892	Hamurwa town council	\N	district	56	\N	2014
2673	subcounty	1893	Kamwezi	\N	district	56	\N	2014
2674	subcounty	1894	Bukinda	\N	district	56	\N	2014
2675	subcounty	1895	Muhanga town council	\N	district	56	\N	2014
2676	subcounty	1896	Rwamucucu	\N	district	56	\N	2014
2677	subcounty	1897	Kaharo	\N	district	56	\N	2014
2678	subcounty	1898	Maziba	\N	district	56	\N	2014
2679	subcounty	1899	Nyamweru	\N	district	56	\N	2014
2680	subcounty	1900	Bubaare	\N	district	56	\N	2014
2681	subcounty	1901	Northern division	\N	district	56	\N	2014
2682	subcounty	1902	Southern division	\N	district	56	\N	2014
2683	subcounty	1903	Kitumba	\N	district	56	\N	2014
2684	subcounty	1904	Bufundi	\N	district	56	\N	2014
2685	subcounty	1905	Butanda	\N	district	56	\N	2014
2686	subcounty	1906	Rubaya	\N	district	56	\N	2014
2687	subcounty	1907	Katuna town council	\N	district	56	\N	2014
2688	subcounty	1908	Buhara	\N	district	56	\N	2014
2689	subcounty	1909	Kamuganguzi	\N	district	56	\N	2014
2690	subcounty	1910	Kyanamira	\N	district	56	\N	2014
2691	subcounty	1911	Karangura	\N	district	57	\N	2014
2692	subcounty	1912	Hakibale	\N	district	57	\N	2014
2693	subcounty	1913	Busoro	\N	district	57	\N	2014
2694	subcounty	1914	Karago town council	\N	district	57	\N	2014
2695	subcounty	1915	Bukuuku	\N	district	57	\N	2014
2696	subcounty	1916	Mugusu	\N	district	57	\N	2014
2697	subcounty	1917	Karambi	\N	district	57	\N	2014
2698	subcounty	1918	Southern division	\N	district	57	\N	2014
2699	subcounty	1919	Ruteete	\N	district	57	\N	2014
2700	subcounty	1920	Kasenda	\N	district	57	\N	2014
2701	subcounty	1921	Buheesi	\N	district	57	\N	2014
2702	subcounty	1922	Rubona town council	\N	district	57	\N	2014
2703	subcounty	1923	Kateebwa	\N	district	57	\N	2014
2704	subcounty	1924	Kisomoro	\N	district	57	\N	2014
2705	subcounty	1925	Kibiito town council	\N	district	57	\N	2014
2706	subcounty	1926	Kibiito	\N	district	57	\N	2014
2707	subcounty	1927	Rwimi	\N	district	57	\N	2014
2708	subcounty	1928	Rwimi town council	\N	district	57	\N	2014
2709	subcounty	1929	Kabonero	\N	district	57	\N	2014
2710	subcounty	1930	Kyaitamba town council	\N	district	57	\N	2014
2711	subcounty	1931	Eastern division	\N	district	57	\N	2014
2712	subcounty	1932	Western division	\N	district	57	\N	2014
2713	subcounty	1933	Kicwamba	\N	district	57	\N	2014
2714	subcounty	1934	Aperikira	\N	district	35	\N	2014
2715	subcounty	1935	Kaberamaido	\N	district	35	\N	2014
2716	subcounty	1936	Kaberamaido town council	\N	district	35	\N	2014
2717	subcounty	1937	Kobulubulu	\N	district	35	\N	2014
2718	subcounty	1938	Ochero	\N	district	35	\N	2014
2719	subcounty	1939	Apapai	\N	district	35	\N	2014
2720	subcounty	1940	Bululu	\N	district	35	\N	2014
2721	subcounty	1941	Kakure	\N	district	35	\N	2014
2722	subcounty	1942	Kalaki	\N	district	35	\N	2014
2723	subcounty	1943	Otuboi	\N	district	35	\N	2014
2724	subcounty	1944	Bujumba	\N	district	1	\N	2014
2725	subcounty	1945	Kalangala town council	\N	district	1	\N	2014
2726	subcounty	1946	Mugoye	\N	district	1	\N	2014
2727	subcounty	1947	Bubeke	\N	district	1	\N	2014
2728	subcounty	1948	Bufumira	\N	district	1	\N	2014
2729	subcounty	1949	Kyamuswa	\N	district	1	\N	2014
2730	subcounty	1950	Mazinga	\N	district	1	\N	2014
2731	subcounty	1951	Bukhalu	\N	district	92	\N	2014
2732	subcounty	1952	Bulaago	\N	district	92	\N	2014
2733	subcounty	1953	Namisuni	\N	district	92	\N	2014
2734	subcounty	1954	Buluganya	\N	district	92	\N	2014
2735	subcounty	1955	Bumasobo	\N	district	92	\N	2014
2736	subcounty	1956	Bunambutye	\N	district	92	\N	2014
2737	subcounty	1957	Bwikhonge	\N	district	92	\N	2014
2738	subcounty	1958	Lusha	\N	district	92	\N	2014
2739	subcounty	1959	Masiira	\N	district	92	\N	2014
2740	subcounty	1960	Nabongo	\N	district	92	\N	2014
2741	subcounty	1961	Sisiyi	\N	district	92	\N	2014
2742	subcounty	1962	Bumugibole	\N	district	92	\N	2014
2743	subcounty	1963	Buginyanya	\N	district	92	\N	2014
2744	subcounty	1964	Lyama	\N	district	112	\N	2014
2745	subcounty	1965	Nansanga	\N	district	112	\N	2014
2746	subcounty	1966	Budaka town council	\N	district	112	\N	2014
2747	subcounty	1967	Budaka	\N	district	112	\N	2014
2748	subcounty	1968	Naboa	\N	district	112	\N	2014
2749	subcounty	1969	Kaderuna	\N	district	112	\N	2014
2750	subcounty	1970	Iki-iki	\N	district	112	\N	2014
2751	subcounty	1971	Kameruka	\N	district	112	\N	2014
2752	subcounty	1972	Kachomo	\N	district	112	\N	2014
2753	subcounty	1973	Kamonkoli	\N	district	112	\N	2014
2754	subcounty	1974	Mugiti	\N	district	112	\N	2014
2755	subcounty	1975	Katiira	\N	district	112	\N	2014
2756	subcounty	1976	Bukalasi	\N	district	37	\N	2014
2757	subcounty	1977	Bukibokolo	\N	district	37	\N	2014
2758	subcounty	1978	Bukigai	\N	district	37	\N	2014
2759	subcounty	1979	Bulukecheke	\N	district	37	\N	2014
2760	subcounty	1980	Bumasheti	\N	district	37	\N	2014
2761	subcounty	1981	Bumayoka	\N	district	37	\N	2014
2762	subcounty	1982	Bushika	\N	district	37	\N	2014
2763	subcounty	1983	Bushiyi	\N	district	37	\N	2014
2764	subcounty	1984	Bushiribo	\N	district	37	\N	2014
2765	subcounty	1985	Buwali	\N	district	37	\N	2014
2766	subcounty	1986	Nabweya	\N	district	37	\N	2014
2767	subcounty	1987	Nakatsi	\N	district	37	\N	2014
2768	subcounty	1988	Nalwanza	\N	district	37	\N	2014
2769	subcounty	1989	Bududa	\N	district	37	\N	2014
2770	subcounty	1990	Bududa town council	\N	district	37	\N	2014
2771	subcounty	1991	Bubiita	\N	district	37	\N	2014
2772	subcounty	1992	Buluguyi	\N	district	81	\N	2014
2773	subcounty	1993	Muterere	\N	district	81	\N	2014
2774	subcounty	1994	Nabukalu	\N	district	81	\N	2014
2775	subcounty	1995	Nankoma	\N	district	81	\N	2014
2776	subcounty	1996	Bulidha	\N	district	81	\N	2014
2777	subcounty	1997	Bulesa	\N	district	81	\N	2014
2778	subcounty	1998	Kapyanga	\N	district	81	\N	2014
2779	subcounty	1999	Buwunga	\N	district	81	\N	2014
2780	subcounty	2000	Bugiri town council	\N	district	81	\N	2014
2781	subcounty	2001	Iwemba	\N	district	81	\N	2014
2782	subcounty	2002	Burere	\N	district	100	\N	2014
2783	subcounty	2003	Engaju	\N	district	100	\N	2014
2784	subcounty	2004	Karungu	\N	district	100	\N	2014
2785	subcounty	2005	Nyakishana	\N	district	100	\N	2014
2786	subcounty	2006	Nsiika town council	\N	district	100	\N	2014
2787	subcounty	2007	Bitsya	\N	district	100	\N	2014
2788	subcounty	2008	Bihanga	\N	district	100	\N	2014
2789	subcounty	2009	Rwengwe	\N	district	100	\N	2014
2790	subcounty	2010	Buikwe town council	\N	district	80	\N	2014
2791	subcounty	2011	Kawolo	\N	district	80	\N	2014
2792	subcounty	2012	Lugazi town council	\N	district	80	\N	2014
2793	subcounty	2013	Najjembe	\N	district	80	\N	2014
2794	subcounty	2014	Njeru town council	\N	district	80	\N	2014
2795	subcounty	2015	Nkokonjeru town council	\N	district	80	\N	2014
2796	subcounty	2016	Wakisi	\N	district	80	\N	2014
2797	subcounty	2017	Bukedea	\N	district	38	\N	2014
2798	subcounty	2018	Bukedea town council	\N	district	38	\N	2014
2799	subcounty	2019	Kachumbala	\N	district	38	\N	2014
2800	subcounty	2020	Kidongole	\N	district	38	\N	2014
2801	subcounty	2021	Kolir	\N	district	38	\N	2014
2802	subcounty	2022	Malera	\N	district	38	\N	2014
2803	subcounty	2023	Bigasa	\N	district	16	\N	2014
2804	subcounty	2024	Bukomasimbi town council	\N	district	16	\N	2014
2805	subcounty	2025	Butenga	\N	district	16	\N	2014
2806	subcounty	2026	Kibinge	\N	district	16	\N	2014
2807	subcounty	2027	Kitanda	\N	district	16	\N	2014
2808	subcounty	2028	Bukwo	\N	district	39	\N	2014
2809	subcounty	2029	Bukwo town council	\N	district	39	\N	2014
2810	subcounty	2030	Chepkwasta	\N	district	39	\N	2014
2811	subcounty	2031	Kaptererwo	\N	district	39	\N	2014
2812	subcounty	2032	Kortek	\N	district	39	\N	2014
2813	subcounty	2033	Riwo	\N	district	39	\N	2014
2814	subcounty	2034	Senendet	\N	district	39	\N	2014
2815	subcounty	2035	Tulel	\N	district	39	\N	2014
2816	subcounty	2036	Kamet	\N	district	39	\N	2014
2817	subcounty	2037	Kabei	\N	district	39	\N	2014
2818	subcounty	2038	Suam	\N	district	39	\N	2014
2819	subcounty	2039	Biiso	\N	district	66	\N	2014
2820	subcounty	2040	Buliisa	\N	district	66	\N	2014
2821	subcounty	2041	Buliisa town council	\N	district	66	\N	2014
2822	subcounty	2042	Butiaba	\N	district	66	\N	2014
2823	subcounty	2043	Kigwera	\N	district	66	\N	2014
2824	subcounty	2044	Kihungya	\N	district	66	\N	2014
2825	subcounty	2045	Ngwedo	\N	district	66	\N	2014
2826	subcounty	2046	Abim	\N	district	49	\N	2014
2827	subcounty	2047	Abim town council	\N	district	49	\N	2014
2828	subcounty	2048	Alerek	\N	district	49	\N	2014
2829	subcounty	2049	Lotukei	\N	district	49	\N	2014
2830	subcounty	2050	Morulem	\N	district	49	\N	2014
2831	subcounty	2051	Arinyapi	\N	district	44	\N	2014
2832	subcounty	2052	Okusijoni	\N	district	44	\N	2014
2833	subcounty	2053	Dzaipi	\N	district	44	\N	2014
2834	subcounty	2054	Adropi	\N	district	44	\N	2014
2835	subcounty	2055	Adjumani town council	\N	district	44	\N	2014
2836	subcounty	2056	Itirikwa	\N	district	44	\N	2014
2837	subcounty	2057	Pakele	\N	district	44	\N	2014
2838	subcounty	2058	Ofua	\N	district	44	\N	2014
2839	subcounty	2059	Agago town council	\N	district	10	\N	2014
2840	subcounty	2060	Arum	\N	district	10	\N	2014
2841	subcounty	2061	Kalongo town council	\N	district	10	\N	2014
2842	subcounty	2062	Kotomol	\N	district	10	\N	2014
2843	subcounty	2063	Lamiyo	\N	district	10	\N	2014
2844	subcounty	2064	Lapono	\N	district	10	\N	2014
2845	subcounty	2065	Lira palwo	\N	district	10	\N	2014
2846	subcounty	2066	Lokole	\N	district	10	\N	2014
2847	subcounty	2067	Omiya pacwa	\N	district	10	\N	2014
2848	subcounty	2068	Omot	\N	district	10	\N	2014
2849	subcounty	2069	Paimol	\N	district	10	\N	2014
2850	subcounty	2070	Parabong	\N	district	10	\N	2014
2851	subcounty	2071	Patongo	\N	district	10	\N	2014
2852	subcounty	2072	Patongo town council	\N	district	10	\N	2014
2853	subcounty	2073	Wol	\N	district	10	\N	2014
2854	subcounty	2074	Abia	\N	district	7	\N	2014
2855	subcounty	2075	Akura	\N	district	7	\N	2014
2856	subcounty	2076	Alebtong town council	\N	district	7	\N	2014
2857	subcounty	2077	Aloi	\N	district	7	\N	2014
2858	subcounty	2078	Amugu	\N	district	7	\N	2014
2859	subcounty	2079	Apala	\N	district	7	\N	2014
2860	subcounty	2080	Awei	\N	district	7	\N	2014
2861	subcounty	2081	Omoro	\N	district	7	\N	2014
2862	subcounty	2082	Agwingiri	\N	district	50	\N	2014
2863	subcounty	2083	Amolatar town council	\N	district	50	\N	2014
2864	subcounty	2084	Arwotcek	\N	district	50	\N	2014
2865	subcounty	2085	Awelo	\N	district	50	\N	2014
2866	subcounty	2086	Etam	\N	district	50	\N	2014
2867	subcounty	2087	Muntu	\N	district	50	\N	2014
2868	subcounty	2088	Akwon	\N	district	50	\N	2014
2869	subcounty	2089	Agikdak	\N	district	50	\N	2014
2870	subcounty	2090	Aputi	\N	district	50	\N	2014
2871	subcounty	2091	Karita	\N	district	110	\N	2014
2872	subcounty	2092	Loroo	\N	district	110	\N	2014
2873	subcounty	2093	Amudat	\N	district	110	\N	2014
2874	subcounty	2094	Amudat town council	\N	district	110	\N	2014
2875	subcounty	2095	Abarilela	\N	district	36	\N	2014
2876	subcounty	2096	Akeriau	\N	district	36	\N	2014
2877	subcounty	2097	Apeduru	\N	district	36	\N	2014
2878	subcounty	2098	Asamuk	\N	district	36	\N	2014
2879	subcounty	2099	Kuju	\N	district	36	\N	2014
2880	subcounty	2100	Morungatuny	\N	district	36	\N	2014
2881	subcounty	2101	Ogolai	\N	district	36	\N	2014
2882	subcounty	2102	Orungo	\N	district	36	\N	2014
2883	subcounty	2103	Wera	\N	district	36	\N	2014
2884	subcounty	2104	Willa	\N	district	36	\N	2014
2885	subcounty	2105	Acowa	\N	district	36	\N	2014
2886	subcounty	2106	Akoromit	\N	district	36	\N	2014
2887	subcounty	2107	Obalanga	\N	district	36	\N	2014
2888	subcounty	2108	Okungur	\N	district	36	\N	2014
2889	subcounty	2109	Amuria town council	\N	district	36	\N	2014
2890	subcounty	2110	Amuru	\N	district	9	\N	2014
2891	subcounty	2111	Amuru town council	\N	district	9	\N	2014
2892	subcounty	2112	Atiak	\N	district	9	\N	2014
2893	subcounty	2113	Pabo	\N	district	9	\N	2014
2894	subcounty	2114	Chawente	\N	district	12	\N	2014
2895	subcounty	2115	Inomo	\N	district	12	\N	2014
2896	subcounty	2116	Chegere	\N	district	12	\N	2014
2897	subcounty	2117	Aduku	\N	district	12	\N	2014
2898	subcounty	2118	Aduku town council	\N	district	12	\N	2014
2899	subcounty	2119	Ibuje	\N	district	12	\N	2014
2900	subcounty	2120	Nambeiso	\N	district	12	\N	2014
2901	subcounty	2121	Apac	\N	district	12	\N	2014
2902	subcounty	2122	Apac town council	\N	district	12	\N	2014
2903	subcounty	2123	Arua hill	\N	district	104	\N	2014
2904	subcounty	2124	River oli	\N	district	104	\N	2014
2905	subcounty	2125	Adumi	\N	district	104	\N	2014
2906	subcounty	2126	Aroi	\N	district	104	\N	2014
2907	subcounty	2127	Ayivuni	\N	district	104	\N	2014
2908	subcounty	2128	Dadamu	\N	district	104	\N	2014
2909	subcounty	2129	Manibe	\N	district	104	\N	2014
2910	subcounty	2130	Oluko	\N	district	104	\N	2014
2911	subcounty	2131	Anyiribu	\N	district	104	\N	2014
2912	subcounty	2132	Logiri	\N	district	104	\N	2014
2913	subcounty	2133	Offaka	\N	district	104	\N	2014
2914	subcounty	2134	Ogoko	\N	district	104	\N	2014
2915	subcounty	2135	Okollo	\N	district	104	\N	2014
2916	subcounty	2136	Pawor	\N	district	104	\N	2014
2917	subcounty	2137	Rhino camp	\N	district	104	\N	2014
2918	subcounty	2138	Uleppi	\N	district	104	\N	2014
2919	subcounty	2139	Bileafe	\N	district	104	\N	2014
2920	subcounty	2140	Omugo	\N	district	104	\N	2014
2921	subcounty	2141	Udupi	\N	district	104	\N	2014
2922	subcounty	2142	Ajia	\N	district	104	\N	2014
2923	subcounty	2143	Arivu	\N	district	104	\N	2014
2924	subcounty	2144	Logiri	\N	district	104	\N	2014
2925	subcounty	2145	Vurra	\N	district	104	\N	2014
2926	subcounty	2146	Katrini	\N	district	104	\N	2014
2927	subcounty	2147	Uriama	\N	district	104	\N	2014
2928	subcounty	2148	Aii-vu	\N	district	104	\N	2014
2929	subcounty	2149	Bufumbo	\N	district	33	\N	2014
2930	subcounty	2150	Bukasakya	\N	district	33	\N	2014
2931	subcounty	2151	Bukhiende	\N	district	33	\N	2014
2932	subcounty	2152	Bukonde	\N	district	33	\N	2014
2933	subcounty	2153	Bumbobi	\N	district	33	\N	2014
2934	subcounty	2154	Bungokho	\N	district	33	\N	2014
2935	subcounty	2155	Bungokho mutoto	\N	district	33	\N	2014
2936	subcounty	2156	Busiu	\N	district	33	\N	2014
2937	subcounty	2157	Nakaloke	\N	district	33	\N	2014
2938	subcounty	2158	Nakaloke town council	\N	district	33	\N	2014
2939	subcounty	2159	Nyondo	\N	district	33	\N	2014
2940	subcounty	2160	Industrial division	\N	district	33	\N	2014
2941	subcounty	2161	Wanale division	\N	district	33	\N	2014
2942	subcounty	2162	Lwasso	\N	district	33	\N	2014
2943	subcounty	2163	Wanale	\N	district	33	\N	2014
2944	subcounty	2164	Northern division	\N	district	33	\N	2014
2945	subcounty	2165	Bukiro	\N	district	61	\N	2014
2946	subcounty	2166	Kagongi	\N	district	61	\N	2014
2947	subcounty	2167	Kakiika division	\N	district	61	\N	2014
2948	subcounty	2168	Kashare	\N	district	61	\N	2014
2949	subcounty	2169	Rubaya	\N	district	61	\N	2014
2950	subcounty	2170	Rubindi	\N	district	61	\N	2014
2951	subcounty	2171	Rwanyamahembe	\N	district	61	\N	2014
2952	subcounty	2172	Kakoba division	\N	district	61	\N	2014
2953	subcounty	2173	Kamukuzi division	\N	district	61	\N	2014
2954	subcounty	2174	Nyamitanga division	\N	district	61	\N	2014
2955	subcounty	2175	Bugamba	\N	district	61	\N	2014
2956	subcounty	2176	Mwizi	\N	district	61	\N	2014
2957	subcounty	2177	Ndeija	\N	district	61	\N	2014
2958	subcounty	2178	Rugando	\N	district	61	\N	2014
2959	subcounty	2179	Bubaare	\N	district	61	\N	2014
2960	subcounty	2180	Biharwe division	\N	district	61	\N	2014
2961	subcounty	2181	Rwanyamahembe	\N	district	61	\N	2014
2962	subcounty	2182	Bitereko	\N	district	102	\N	2014
2963	subcounty	2183	Kabira	\N	district	102	\N	2014
2964	subcounty	2184	Kanyabwanga	\N	district	102	\N	2014
2965	subcounty	2185	Kashenshero	\N	district	102	\N	2014
2966	subcounty	2186	Kashenshero town council	\N	district	102	\N	2014
2967	subcounty	2187	Katenga	\N	district	102	\N	2014
2968	subcounty	2188	Kiyanga	\N	district	102	\N	2014
2969	subcounty	2189	Mayanga	\N	district	102	\N	2014
2970	subcounty	2190	Mitooma	\N	district	102	\N	2014
2971	subcounty	2191	Mitooma town council	\N	district	102	\N	2014
2972	subcounty	2192	Mutara	\N	district	102	\N	2014
2973	subcounty	2193	Rurehe	\N	district	102	\N	2014
2974	subcounty	2194	Ssekanyonyi	\N	district	29	\N	2014
2975	subcounty	2195	Busimbi	\N	district	29	\N	2014
2976	subcounty	2196	Bulera	\N	district	29	\N	2014
2977	subcounty	2197	Malangala	\N	district	29	\N	2014
2978	subcounty	2198	Maanyi	\N	district	29	\N	2014
2979	subcounty	2199	Banda	\N	district	29	\N	2014
2980	subcounty	2200	Kakindu	\N	district	29	\N	2014
2981	subcounty	2201	Butayunja	\N	district	29	\N	2014
2982	subcounty	2202	Namungo	\N	district	29	\N	2014
2983	subcounty	2203	Mityana town council	\N	district	29	\N	2014
2984	subcounty	2204	Kalangalo	\N	district	29	\N	2014
2985	subcounty	2205	Kikandwa	\N	district	29	\N	2014
2986	subcounty	2206	Katikekile	\N	district	93	\N	2014
2987	subcounty	2207	Nadunget	\N	district	93	\N	2014
2988	subcounty	2208	Tapac	\N	district	93	\N	2014
2989	subcounty	2209	Northern division	\N	district	93	\N	2014
2990	subcounty	2210	Southern division	\N	district	93	\N	2014
2991	subcounty	2211	Aliba	\N	district	47	\N	2014
2992	subcounty	2212	Gimara	\N	district	47	\N	2014
2993	subcounty	2213	Itula	\N	district	47	\N	2014
2994	subcounty	2214	Difule	\N	district	47	\N	2014
2995	subcounty	2215	Lefori	\N	district	47	\N	2014
2996	subcounty	2216	Metu	\N	district	47	\N	2014
2997	subcounty	2217	Moyo	\N	district	47	\N	2014
2998	subcounty	2218	Moyo town council	\N	district	47	\N	2014
2999	subcounty	2219	Buwama	\N	district	68	\N	2014
3000	subcounty	2220	Kammengo	\N	district	68	\N	2014
3001	subcounty	2221	Kiringente	\N	district	68	\N	2014
3002	subcounty	2222	Kituntu	\N	district	68	\N	2014
3003	subcounty	2223	Mpigi town council	\N	district	68	\N	2014
3004	subcounty	2224	Muduuma	\N	district	68	\N	2014
3005	subcounty	2225	Nkozi	\N	district	68	\N	2014
3006	subcounty	2226	Kitenga	\N	district	22	\N	2014
3007	subcounty	2227	Kiyuni	\N	district	22	\N	2014
3008	subcounty	2228	Madudu	\N	district	22	\N	2014
3009	subcounty	2229	Mubende town council	\N	district	22	\N	2014
3010	subcounty	2230	Bagezza	\N	district	22	\N	2014
3011	subcounty	2231	Kasambya	\N	district	22	\N	2014
3012	subcounty	2232	Kibalinga	\N	district	22	\N	2014
3013	subcounty	2233	Kigando	\N	district	22	\N	2014
3014	subcounty	2234	Nabingoola	\N	district	22	\N	2014
3015	subcounty	2235	Bukuya	\N	district	22	\N	2014
3016	subcounty	2236	Kalwana	\N	district	22	\N	2014
3017	subcounty	2237	Kassanda	\N	district	22	\N	2014
3018	subcounty	2238	Kiganda	\N	district	22	\N	2014
3019	subcounty	2239	Kitumbi	\N	district	22	\N	2014
3020	subcounty	2240	Makokoto	\N	district	22	\N	2014
3021	subcounty	2241	Manyogaseka	\N	district	22	\N	2014
3022	subcounty	2242	Myanzi	\N	district	22	\N	2014
3023	subcounty	2243	Nalutuntu	\N	district	22	\N	2014
3024	subcounty	2244	Koome	\N	district	79	\N	2014
3025	subcounty	2245	Kyampisi	\N	district	79	\N	2014
3026	subcounty	2246	Mpatta	\N	district	79	\N	2014
3027	subcounty	2247	Mpunge	\N	district	79	\N	2014
3028	subcounty	2248	Nakisunga	\N	district	79	\N	2014
3029	subcounty	2249	Nama	\N	district	79	\N	2014
3030	subcounty	2250	Ntenjeru	\N	district	79	\N	2014
3031	subcounty	2251	Central division	\N	district	79	\N	2014
3032	subcounty	2252	Kasawo	\N	district	79	\N	2014
3033	subcounty	2253	Kimenyedde	\N	district	79	\N	2014
3034	subcounty	2254	Nabbaale	\N	district	79	\N	2014
3035	subcounty	2255	Nagojje	\N	district	79	\N	2014
3036	subcounty	2256	Ntunda	\N	district	79	\N	2014
3037	subcounty	2257	Seeta-namuganga	\N	district	79	\N	2014
3038	subcounty	2258	Goma division	\N	district	79	\N	2014
3039	subcounty	2259	Loregae	\N	district	111	\N	2014
3040	subcounty	2260	Nakapiripirit town council	\N	district	111	\N	2014
3041	subcounty	2261	Namalu	\N	district	111	\N	2014
3042	subcounty	2262	Kakomongole	\N	district	111	\N	2014
3043	subcounty	2263	Lolachat	\N	district	111	\N	2014
3044	subcounty	2264	Lorengedwat	\N	district	111	\N	2014
3045	subcounty	2265	Nabilatuk	\N	district	111	\N	2014
3046	subcounty	2266	Butalangu town council	\N	district	30	\N	2014
3047	subcounty	2267	Kapeeka	\N	district	30	\N	2014
3048	subcounty	2268	Kasangombe	\N	district	30	\N	2014
3049	subcounty	2269	Kikamulo	\N	district	30	\N	2014
3050	subcounty	2270	Kinoni	\N	district	30	\N	2014
3051	subcounty	2271	Kinyogoga	\N	district	30	\N	2014
3052	subcounty	2272	Kito	\N	district	30	\N	2014
3053	subcounty	2273	Kiwoko town council	\N	district	30	\N	2014
3054	subcounty	2274	Nakaseke	\N	district	30	\N	2014
3055	subcounty	2275	Nakaseke town council	\N	district	30	\N	2014
3056	subcounty	2276	Ngoma	\N	district	30	\N	2014
3057	subcounty	2277	Ngoma town council	\N	district	30	\N	2014
3058	subcounty	2278	Semuto	\N	district	30	\N	2014
3059	subcounty	2279	Semuto town council	\N	district	30	\N	2014
3060	subcounty	2280	Wakyato	\N	district	30	\N	2014
3061	subcounty	2281	Migeera town council	\N	district	23	\N	2014
65	district	49	Abim	2346	region	116	\N	2014
69	district	7	Alebtong	1535	region	116	\N	2014
57	district	104	Arua	4343	region	116	\N	2014
113	district	81	Bugiri	1038	region	115	\N	2014
106	district	100	Buhweju	748	region	117	\N	2014
60	district	66	Buliisa	1108	region	117	\N	2014
20	district	74	Buvuma	293	region	114	\N	2014
49	district	72	Iganga	1017	region	115	\N	2014
85	district	56	Kabale	1680	region	117	\N	2014
17	district	64	Kamwenge	2340	region	117	\N	2014
58	district	59	Kibaale	4242	region	117	\N	2014
68	district	14	Kitgum	3998	region	116	\N	2014
36	district	70	Kyegegwa	1747	region	117	\N	2014
89	district	42	Manafwa	533	region	115	\N	2014
78	district	61	Mbarara	1781	region	117	\N	2014
53	district	68	Mpigi	1202	region	114	\N	2014
111	district	23	Nakasongola	3303	region	114	\N	2014
11	district	82	Namayingo	585	region	115	\N	2014
28	district	62	Ntungamo	2048	region	117	\N	2014
103	district	24	Rakai	3245	region	114	\N	2014
98	district	88	Soroti	1366	region	115	\N	2014
117	region	117	Western Uganda	55277	country	UG	\N	2014
\.


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wazimap_geography_id_seq', 3895, true);


--
-- Name: wazimap_geography wazimap_geography_geo_level_9a5128d2_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_9a5128d2_uniq UNIQUE (geo_level, geo_code);


--
-- Name: wazimap_geography wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);


--
-- Name: wazimap_geography_2fc6351a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_2fc6351a ON public.wazimap_geography USING btree (long_name);


--
-- Name: wazimap_geography_84cdc76c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_84cdc76c ON public.wazimap_geography USING btree (version);


--
-- Name: wazimap_geography_b068931c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_b068931c ON public.wazimap_geography USING btree (name);


--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_name_36b79089_like ON public.wazimap_geography USING btree (name varchar_pattern_ops);


--
-- PostgreSQL database dump complete
--

