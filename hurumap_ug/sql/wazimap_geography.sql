--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wazimap_geography; Type: TABLE; Schema: public; Owner: hurumap_ug
--

CREATE TABLE wazimap_geography (
    id integer NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    name character varying(100) NOT NULL,
    version integer,
    square_kms double precision,
    parent_level character varying(15),
    parent_code character varying(10),
    long_name character varying(100)
);


ALTER TABLE wazimap_geography OWNER TO hurumap_ug;

--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ug
--

CREATE SEQUENCE wazimap_geography_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wazimap_geography_id_seq OWNER TO hurumap_ug;

--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ug
--

ALTER SEQUENCE wazimap_geography_id_seq OWNED BY wazimap_geography.id;


--
-- Name: wazimap_geography id; Type: DEFAULT; Schema: public; Owner: hurumap_ug
--

ALTER TABLE ONLY wazimap_geography ALTER COLUMN id SET DEFAULT nextval('wazimap_geography_id_seq'::regclass);


--
-- Data for Name: wazimap_geography; Type: TABLE DATA; Schema: public; Owner: hurumap_ug
--

COPY wazimap_geography (id, geo_level, geo_code, name, version, square_kms, parent_level, parent_code, long_name) FROM stdin;
2	district	35	Kaberamaido	2014	\N	region	115	\N
3	district	105	Maracha	2014	\N	region	116	\N
5	district	2	Ibanda	2014	\N	region	115	\N
6	district	112	Budaka	2014	\N	region	115	\N
21	district	86	Kumi	2014	\N	region	116	\N
27	district	15	Lamwo	2014	\N	region	116	\N
29	district	13	Kole	2014	\N	region	116	\N
30	district	99	Sheema	2014	\N	region	117	\N
31	district	92	Bulambuli	2014	\N	region	115	\N
33	district	5	Otuke	2014	\N	region	116	\N
34	district	36	Amuria	2014	\N	region	116	\N
43	district	106	Ntoroko	2014	\N	region	117	\N
46	district	71	Luuka	2014	\N	region	115	\N
25	district	44	Adjumani	2014	2962	region	116	\N
76	district	10	Agago	2014	3503	region	116	\N
18	district	50	Amolatar	2014	1157	region	116	\N
79	district	110	Amudat	2014	1626	region	116	\N
72	district	9	Amuru	2014	3588	region	116	\N
15	district	12	Apac	2014	2947	region	116	\N
67	district	37	Bududa	2014	316	region	115	\N
38	district	80	Buikwe	2014	1206	region	114	\N
92	district	38	Bukedea	2014	1032	region	115	\N
4	district	39	Bukwo	2014	524	region	115	\N
96	district	107	Bundibugyo	2014	848	region	117	\N
55	district	103	Bushenyi	2014	844	region	117	\N
86	district	83	Busia	2014	734	region	115	\N
87	district	40	Butaleja	2014	653	region	115	\N
83	district	67	Butambala	2014	403	region	114	\N
80	district	78	Buyende	2014	1379	region	115	\N
73	district	51	Dokolo	2014	1004	region	116	\N
16	district	19	Gomba	2014	1664	region	114	\N
14	district	55	Hoima	2014	3671	region	117	\N
101	district	3	Isingiro	2014	2613	region	117	\N
8	district	31	Jinja	2014	677	region	115	\N
10	district	52	Kaabong	2014	7298	region	116	\N
9	district	57	Kabarole	2014	1810	region	117	\N
51	district	1	Kalangala	2014	451	region	114	\N
82	district	41	Kaliro	2014	778	region	115	\N
61	district	20	Kampala	2014	188	region	114	\N
84	district	77	Kamuli	2014	1514	region	115	\N
93	district	65	Kanungu	2014	1271	region	117	\N
88	district	90	Kapchorwa	2014	352	region	115	\N
7	district	32	Katakwi	2014	2306	region	115	\N
104	district	26	Kayunga	2014	1592	region	114	\N
71	district	109	Kiboga	2014	1592	region	114	\N
50	district	4	Kiruhura	2014	4555	region	117	\N
42	district	98	Kiryandongo	2014	3595	region	117	\N
48	district	60	Kisoro	2014	699	region	117	\N
75	district	53	Koboko	2014	760	region	116	\N
74	district	46	Kotido	2014	3620	region	116	\N
95	district	91	Kween	2014	850	region	116	\N
102	district	108	Kyankwanzi	2014	2466	region	114	\N
90	district	69	Kyenjojo	2014	2357	region	117	\N
22	district	6	Lira	2014	1327	region	116	\N
12	district	21	Luwero	2014	2216	region	114	\N
23	district	17	Lwengo	2014	1024	region	114	\N
39	district	28	Lyantonde	2014	883	region	114	\N
19	district	18	Masaka	2014	1158	region	114	\N
24	district	97	Masindi	2014	3932	region	117	\N
105	district	73	Mayuge	2014	1073	region	115	\N
94	district	33	Mbale	2014	517	region	115	\N
62	district	102	Mitooma	2014	542	region	117	\N
64	district	29	Mityana	2014	1524	region	114	\N
54	district	93	Moroto	2014	3564	region	116	\N
70	district	47	Moyo	2014	1902	region	116	\N
77	district	22	Mubende	2014	4591	region	114	\N
35	district	79	Mukono	2014	1829	region	114	\N
45	district	111	Nakapiripirit	2014	4233	region	116	\N
52	district	30	Nakaseke	2014	3461	region	114	\N
44	district	43	Namutumba	2014	810	region	115	\N
26	district	94	Napak	2014	4901	region	116	\N
32	district	95	Nebbi	2014	1915	region	116	\N
81	district	84	Ngora	2014	637	region	115	\N
59	district	8	Nwoya	2014	4601	region	116	\N
99	district	54	Oyam	2014	2190	region	116	\N
41	district	11	Pader	2014	3294	region	116	\N
100	district	76	Pallisa	2014	1030	region	116	\N
66	district	101	Rubirizi	2014	1092	region	117	\N
97	district	63	Rukungiri	2014	1435	region	117	\N
56	district	25	Sembabule	2014	2315	region	114	\N
63	district	87	Serere	2014	1495	region	115	\N
91	district	89	Sironko	2014	401	region	115	\N
13	district	27	Wakiso	2014	1882	region	114	\N
40	district	48	Yumbe	2014	2318	region	116	\N
37	district	96	Zombo	2014	940	region	116	\N
1	country	UG	Uganda	2014	241551	\N	\N	\N
1680	subcounty	900	Kakooge	2014	\N	district	23	\N
1681	subcounty	901	Kalungi	2014	\N	district	23	\N
1682	subcounty	902	Lwabiyata	2014	\N	district	23	\N
1683	subcounty	903	Lwampanga	2014	\N	district	23	\N
1684	subcounty	904	Nabisweera	2014	\N	district	23	\N
1685	subcounty	905	Nakitoma	2014	\N	district	23	\N
1686	subcounty	906	Wabinyonyi	2014	\N	district	23	\N
1687	subcounty	907	Nakasongola town council	2014	\N	district	23	\N
1688	subcounty	908	Banda	2014	\N	district	82	\N
1689	subcounty	909	Buhemba	2014	\N	district	82	\N
1690	subcounty	910	Buswale	2014	\N	district	82	\N
1691	subcounty	911	Buyinja	2014	\N	district	82	\N
1692	subcounty	912	Mutumba	2014	\N	district	82	\N
1693	subcounty	913	Namayingo town council	2014	\N	district	82	\N
1694	subcounty	914	Lolwe	2014	\N	district	82	\N
1695	subcounty	915	Bulange	2014	\N	district	43	\N
1696	subcounty	916	Ivukula	2014	\N	district	43	\N
1697	subcounty	917	Kibale	2014	\N	district	43	\N
1698	subcounty	918	Magada	2014	\N	district	43	\N
1699	subcounty	919	Namutumba	2014	\N	district	43	\N
1700	subcounty	920	Namutumba town council	2014	\N	district	43	\N
1701	subcounty	921	Nsinze	2014	\N	district	43	\N
1702	subcounty	922	Iriiri	2014	\N	district	94	\N
1703	subcounty	923	Lopeei	2014	\N	district	94	\N
1704	subcounty	924	Lorengecora	2014	\N	district	94	\N
1705	subcounty	925	Lotome	2014	\N	district	94	\N
1706	subcounty	926	Matany	2014	\N	district	94	\N
1707	subcounty	927	Napak town council	2014	\N	district	94	\N
1708	subcounty	928	Ngoleriet	2014	\N	district	94	\N
1709	subcounty	929	Panyango	2014	\N	district	95	\N
1710	subcounty	930	Atego	2014	\N	district	95	\N
1711	subcounty	931	Nyaravur	2014	\N	district	95	\N
1712	subcounty	932	Nebbi town council	2014	\N	district	95	\N
1713	subcounty	933	Pakwach	2014	\N	district	95	\N
1714	subcounty	934	Pakwach town council	2014	\N	district	95	\N
1715	subcounty	935	Parombo	2014	\N	district	95	\N
1716	subcounty	936	Wadelai	2014	\N	district	95	\N
1717	subcounty	937	Kucwiny	2014	\N	district	95	\N
1718	subcounty	938	Alwi	2014	\N	district	95	\N
1719	subcounty	939	Erussi	2014	\N	district	95	\N
1720	subcounty	940	Panyimur	2014	\N	district	95	\N
1721	subcounty	941	Ndhew	2014	\N	district	95	\N
1722	subcounty	942	Nebbi	2014	\N	district	95	\N
1723	subcounty	943	Kapir	2014	\N	district	84	\N
1724	subcounty	944	Kobwin	2014	\N	district	84	\N
1725	subcounty	945	Mukura	2014	\N	district	84	\N
1726	subcounty	946	Ngora	2014	\N	district	84	\N
1727	subcounty	947	Ngora town council	2014	\N	district	84	\N
1728	subcounty	948	Butungama	2014	\N	district	106	\N
1729	subcounty	949	Bweramule	2014	\N	district	106	\N
1730	subcounty	950	Kanara	2014	\N	district	106	\N
1731	subcounty	951	Kanara town council	2014	\N	district	106	\N
1732	subcounty	952	Nombe	2014	\N	district	106	\N
1733	subcounty	953	Rwebisengo town council	2014	\N	district	106	\N
1734	subcounty	954	Karugutu town council	2014	\N	district	106	\N
1735	subcounty	955	Bwongyera	2014	\N	district	62	\N
1736	subcounty	956	Ihunga	2014	\N	district	62	\N
1737	subcounty	957	Kibatsi	2014	\N	district	62	\N
1738	subcounty	958	Nyabihoko	2014	\N	district	62	\N
1739	subcounty	959	Rwashamaire town council	2014	\N	district	62	\N
1740	subcounty	960	Central division	2014	\N	district	62	\N
1741	subcounty	961	Eastern division	2014	\N	district	62	\N
1742	subcounty	962	Itojo	2014	\N	district	62	\N
1743	subcounty	963	Kitwe town council	2014	\N	district	62	\N
1744	subcounty	964	Ntungamo	2014	\N	district	62	\N
1745	subcounty	965	Nyakyera	2014	\N	district	62	\N
1746	subcounty	966	Ruhaama	2014	\N	district	62	\N
1747	subcounty	967	Rukoni east	2014	\N	district	62	\N
1748	subcounty	968	Rukoni west	2014	\N	district	62	\N
1749	subcounty	969	Rweikiniro	2014	\N	district	62	\N
1750	subcounty	970	Western division	2014	\N	district	62	\N
1751	subcounty	971	Kayonza	2014	\N	district	62	\N
1752	subcounty	972	Ngoma	2014	\N	district	62	\N
1753	subcounty	973	Rubaare	2014	\N	district	62	\N
1754	subcounty	974	Rubaare town council	2014	\N	district	62	\N
1755	subcounty	975	Rugarama	2014	\N	district	62	\N
1756	subcounty	976	Anaka (payira)	2014	\N	district	8	\N
1757	subcounty	977	Anaka town council	2014	\N	district	8	\N
1758	subcounty	978	Purongo	2014	\N	district	8	\N
1759	subcounty	979	Koch-goma	2014	\N	district	8	\N
1760	subcounty	980	Alero	2014	\N	district	8	\N
1761	subcounty	981	Adwari	2014	\N	district	5	\N
1762	subcounty	982	Alango	2014	\N	district	5	\N
112	district	16	Bukomansimbi	2014	599	region	114	\N
107	district	45	Gulu	2014	3433	region	116	\N
110	district	85	Kalungu	2014	812	region	114	\N
47	district	58	Kasese	2014	2943	region	117	\N
109	district	75	Kibuku	2014	481	region	115	\N
108	district	34	Tororo	2014	1192	region	115	\N
115	region	114	Central Uganda	2014	61403	country	UG	\N
114	region	115	Eastern Uganda	2014	39479	country	UG	\N
116	region	116	Northern Uganda	2014	85392	country	UG	\N
1763	subcounty	983	Ogur	2014	\N	district	5	\N
1764	subcounty	984	Ogwette	2014	\N	district	5	\N
1765	subcounty	985	Okwang	2014	\N	district	5	\N
1766	subcounty	986	Olilim	2014	\N	district	5	\N
1767	subcounty	987	Orum	2014	\N	district	5	\N
1768	subcounty	988	Otuke town council	2014	\N	district	5	\N
1769	subcounty	989	Aber	2014	\N	district	54	\N
1770	subcounty	990	Kamdini	2014	\N	district	54	\N
1771	subcounty	991	Minakulu	2014	\N	district	54	\N
1772	subcounty	992	Iceme	2014	\N	district	54	\N
1773	subcounty	993	Ngai	2014	\N	district	54	\N
1774	subcounty	994	Acaba	2014	\N	district	54	\N
1775	subcounty	995	Loro	2014	\N	district	54	\N
1776	subcounty	996	Myene	2014	\N	district	54	\N
1777	subcounty	997	Aleka	2014	\N	district	54	\N
1778	subcounty	998	Oyam town council	2014	\N	district	54	\N
1779	subcounty	999	Abok	2014	\N	district	54	\N
1780	subcounty	1000	Otwal	2014	\N	district	54	\N
1781	subcounty	1001	Angangura	2014	\N	district	11	\N
1782	subcounty	1002	Atanga	2014	\N	district	11	\N
1783	subcounty	1003	Lapul	2014	\N	district	11	\N
1784	subcounty	1004	Ogom	2014	\N	district	11	\N
1785	subcounty	1005	Pader town council	2014	\N	district	11	\N
1786	subcounty	1006	Pajule	2014	\N	district	11	\N
1787	subcounty	1007	Awere	2014	\N	district	11	\N
1788	subcounty	1008	Puranga	2014	\N	district	11	\N
1789	subcounty	1009	Laguti	2014	\N	district	11	\N
1790	subcounty	1010	Acholi bur	2014	\N	district	11	\N
1791	subcounty	1011	Pader	2014	\N	district	11	\N
1792	subcounty	1012	Latanya	2014	\N	district	11	\N
1793	subcounty	1013	Butebo	2014	\N	district	76	\N
1794	subcounty	1014	Kabwangasi	2014	\N	district	76	\N
1795	subcounty	1015	Kakoro	2014	\N	district	76	\N
1796	subcounty	1016	Kanginima	2014	\N	district	76	\N
1797	subcounty	1017	Kibale	2014	\N	district	76	\N
1798	subcounty	1018	Opwateta	2014	\N	district	76	\N
1799	subcounty	1019	Agule	2014	\N	district	76	\N
1800	subcounty	1020	Akisim	2014	\N	district	76	\N
1801	subcounty	1021	Apopong	2014	\N	district	76	\N
1802	subcounty	1022	Chelekura	2014	\N	district	76	\N
1803	subcounty	1023	Gogonyo	2014	\N	district	76	\N
1804	subcounty	1024	Kameke	2014	\N	district	76	\N
1805	subcounty	1025	Kamuge	2014	\N	district	76	\N
1806	subcounty	1026	Kasodo	2014	\N	district	76	\N
1807	subcounty	1027	Olok	2014	\N	district	76	\N
1808	subcounty	1028	Pallisa	2014	\N	district	76	\N
1809	subcounty	1029	Pallisa town council	2014	\N	district	76	\N
1810	subcounty	1030	Puti-puti	2014	\N	district	76	\N
1811	subcounty	1031	Petete	2014	\N	district	76	\N
1812	subcounty	1032	Kakuuto	2014	\N	district	24	\N
1813	subcounty	1033	Kasasa	2014	\N	district	24	\N
1814	subcounty	1034	Kibanda	2014	\N	district	24	\N
1815	subcounty	1035	Kifamba	2014	\N	district	24	\N
1816	subcounty	1036	Kyebe	2014	\N	district	24	\N
1817	subcounty	1037	Byakabanda	2014	\N	district	24	\N
1818	subcounty	1038	Ddwaniro	2014	\N	district	24	\N
1819	subcounty	1039	Kacheera	2014	\N	district	24	\N
1820	subcounty	1040	Kagamba	2014	\N	district	24	\N
1821	subcounty	1041	Kiziba	2014	\N	district	24	\N
1822	subcounty	1042	Kyalulangira	2014	\N	district	24	\N
1823	subcounty	1043	Lwamagwa	2014	\N	district	24	\N
1824	subcounty	1044	Lwanda	2014	\N	district	24	\N
1825	subcounty	1045	Rakai town council	2014	\N	district	24	\N
1826	subcounty	1046	Kabira	2014	\N	district	24	\N
1827	subcounty	1047	Kalisizo	2014	\N	district	24	\N
1828	subcounty	1048	Kalisizo town council	2014	\N	district	24	\N
1829	subcounty	1049	Kirumba	2014	\N	district	24	\N
1830	subcounty	1050	Kyotera town council	2014	\N	district	24	\N
1831	subcounty	1051	Lwankoni	2014	\N	district	24	\N
1832	subcounty	1052	Nabigasa	2014	\N	district	24	\N
1833	subcounty	1053	Ryeru	2014	\N	district	101	\N
1834	subcounty	1054	Katunguru	2014	\N	district	101	\N
1835	subcounty	1055	Rutoto	2014	\N	district	101	\N
1836	subcounty	1056	Katerera town council	2014	\N	district	101	\N
1837	subcounty	1057	Kirugu	2014	\N	district	101	\N
1838	subcounty	1058	Kyabakara	2014	\N	district	101	\N
1839	subcounty	1059	Rubirizi town council	2014	\N	district	101	\N
1840	subcounty	1060	Kicwamba	2014	\N	district	101	\N
1841	subcounty	1061	Magambo	2014	\N	district	101	\N
1842	subcounty	1062	Katanda	2014	\N	district	101	\N
1843	subcounty	1063	Katerera	2014	\N	district	101	\N
1844	subcounty	1064	Bugangari	2014	\N	district	63	\N
1845	subcounty	1065	Ruhinda	2014	\N	district	63	\N
1846	subcounty	1066	Buyanja	2014	\N	district	63	\N
1847	subcounty	1067	Kebisoni	2014	\N	district	63	\N
1848	subcounty	1068	Eastern division	2014	\N	district	63	\N
1849	subcounty	1069	Southern division	2014	\N	district	63	\N
1850	subcounty	1070	Western division	2014	\N	district	63	\N
1851	subcounty	1071	Nyakagyeme	2014	\N	district	63	\N
1852	subcounty	1072	Buhunga	2014	\N	district	63	\N
1853	subcounty	1073	Nyarushanje	2014	\N	district	63	\N
1854	subcounty	1074	Nyakishenyi	2014	\N	district	63	\N
1855	subcounty	1075	Lwemiyaga	2014	\N	district	25	\N
1856	subcounty	1076	Mateete	2014	\N	district	25	\N
1857	subcounty	1077	Mateete town council	2014	\N	district	25	\N
1858	subcounty	1078	Mijwala	2014	\N	district	25	\N
1859	subcounty	1079	Ssembabule town council	2014	\N	district	25	\N
1860	subcounty	1080	Lugusulu	2014	\N	district	25	\N
1861	subcounty	1081	Ntusi	2014	\N	district	25	\N
1862	subcounty	1082	Lwebitakuli	2014	\N	district	25	\N
1863	subcounty	1083	Kasilo town council	2014	\N	district	87	\N
1864	subcounty	1084	Labori	2014	\N	district	87	\N
1865	subcounty	1085	Pingire	2014	\N	district	87	\N
1866	subcounty	1086	Atiira	2014	\N	district	87	\N
1867	subcounty	1087	Kadungulu	2014	\N	district	87	\N
1868	subcounty	1088	Kateta	2014	\N	district	87	\N
1869	subcounty	1089	Kyere	2014	\N	district	87	\N
1870	subcounty	1090	Bugondo	2014	\N	district	87	\N
1871	subcounty	1091	Kyangyenyi	2014	\N	district	99	\N
1872	subcounty	1092	Masheruka	2014	\N	district	99	\N
1873	subcounty	1093	Rugarama	2014	\N	district	99	\N
1874	subcounty	1094	Sheema town council	2014	\N	district	99	\N
1875	subcounty	1095	Bugitimwa	2014	\N	district	89	\N
1876	subcounty	1096	Bukhulo	2014	\N	district	89	\N
1877	subcounty	1097	Bukiise	2014	\N	district	89	\N
1878	subcounty	1098	Bumalimba	2014	\N	district	89	\N
1879	subcounty	1099	Bumasifwa	2014	\N	district	89	\N
1880	subcounty	1100	Bunyafa	2014	\N	district	89	\N
1881	subcounty	1101	Busulani	2014	\N	district	89	\N
1882	subcounty	1102	Buteza	2014	\N	district	89	\N
1883	subcounty	1103	Buwalasi	2014	\N	district	89	\N
1884	subcounty	1104	Buwasa	2014	\N	district	89	\N
1885	subcounty	1105	Buyobo	2014	\N	district	89	\N
1886	subcounty	1106	Masaba	2014	\N	district	89	\N
1887	subcounty	1107	Nalusala	2014	\N	district	89	\N
1888	subcounty	1108	Zesui	2014	\N	district	89	\N
1889	subcounty	1109	Olio	2014	\N	district	87	\N
1890	subcounty	1110	Serere town council	2014	\N	district	87	\N
1891	subcounty	1111	Kagango	2014	\N	district	99	\N
1892	subcounty	1112	Kasaana	2014	\N	district	99	\N
1893	subcounty	1113	Kigarama	2014	\N	district	99	\N
1894	subcounty	1114	Kitagata	2014	\N	district	99	\N
1895	subcounty	1115	Arapai	2014	\N	district	88	\N
1896	subcounty	1116	Asuret	2014	\N	district	88	\N
1897	subcounty	1117	Gweri	2014	\N	district	88	\N
1898	subcounty	1118	Kamuda	2014	\N	district	88	\N
1899	subcounty	1119	Katine	2014	\N	district	88	\N
1900	subcounty	1120	Soroti	2014	\N	district	88	\N
1901	subcounty	1121	Tubur	2014	\N	district	88	\N
1902	subcounty	1122	Eastern division	2014	\N	district	88	\N
1903	subcounty	1123	Northern division	2014	\N	district	88	\N
1904	subcounty	1124	Western division	2014	\N	district	88	\N
1905	subcounty	1125	Kwapa	2014	\N	district	34	\N
1906	subcounty	1126	Malaba town council	2014	\N	district	34	\N
1907	subcounty	1127	Mella	2014	\N	district	34	\N
1908	subcounty	1128	Merikit	2014	\N	district	34	\N
1909	subcounty	1129	Molo	2014	\N	district	34	\N
1910	subcounty	1130	Mukuju	2014	\N	district	34	\N
1911	subcounty	1131	Osukuru	2014	\N	district	34	\N
1912	subcounty	1132	Eastern division	2014	\N	district	34	\N
1913	subcounty	1133	Western division	2014	\N	district	34	\N
1914	subcounty	1134	Iyolwa	2014	\N	district	34	\N
1915	subcounty	1135	Kirewa	2014	\N	district	34	\N
1916	subcounty	1136	Kisoko	2014	\N	district	34	\N
1917	subcounty	1137	Magola	2014	\N	district	34	\N
1918	subcounty	1138	Mulanda	2014	\N	district	34	\N
1919	subcounty	1139	Nagongera	2014	\N	district	34	\N
1920	subcounty	1140	Nagongera town council	2014	\N	district	34	\N
1921	subcounty	1141	Paya	2014	\N	district	34	\N
1922	subcounty	1142	Rubongi	2014	\N	district	34	\N
1923	subcounty	1143	Sop-sop	2014	\N	district	34	\N
1924	subcounty	1144	Nabuyoga	2014	\N	district	34	\N
1925	subcounty	1145	Petta	2014	\N	district	34	\N
1926	subcounty	1146	Bussi	2014	\N	district	27	\N
1927	subcounty	1147	Kakiri	2014	\N	district	27	\N
1928	subcounty	1148	Kakiri town council	2014	\N	district	27	\N
1929	subcounty	1149	Kasanje	2014	\N	district	27	\N
1930	subcounty	1150	Katabi	2014	\N	district	27	\N
1931	subcounty	1151	Masulita	2014	\N	district	27	\N
1932	subcounty	1152	Masulita town council	2014	\N	district	27	\N
1933	subcounty	1153	Mende	2014	\N	district	27	\N
1934	subcounty	1154	Namayumba	2014	\N	district	27	\N
1935	subcounty	1155	Namayumba town council	2014	\N	district	27	\N
1936	subcounty	1156	Nsangi	2014	\N	district	27	\N
1937	subcounty	1157	Ssisa	2014	\N	district	27	\N
1938	subcounty	1158	Wakiso	2014	\N	district	27	\N
1939	subcounty	1159	Wakiso town council	2014	\N	district	27	\N
1940	subcounty	1160	Division a	2014	\N	district	27	\N
1941	subcounty	1161	Division b	2014	\N	district	27	\N
1942	subcounty	1162	Busukuma	2014	\N	district	27	\N
1943	subcounty	1163	Gombe	2014	\N	district	27	\N
1944	subcounty	1164	Kira town council	2014	\N	district	27	\N
1945	subcounty	1165	Nabweru	2014	\N	district	27	\N
1946	subcounty	1166	Nangabo	2014	\N	district	27	\N
1947	subcounty	1167	Nansana town council	2014	\N	district	27	\N
1948	subcounty	1168	Makidye-ssabagabo	2014	\N	district	27	\N
1949	subcounty	1169	Apo	2014	\N	district	48	\N
1950	subcounty	1170	Ariwa	2014	\N	district	48	\N
1951	subcounty	1171	Drajini	2014	\N	district	48	\N
1952	subcounty	1172	Kei	2014	\N	district	48	\N
1953	subcounty	1173	Kerwa	2014	\N	district	48	\N
1954	subcounty	1174	Kuru	2014	\N	district	48	\N
1955	subcounty	1175	Lodonga	2014	\N	district	48	\N
1956	subcounty	1176	Midigo	2014	\N	district	48	\N
1957	subcounty	1177	Odravu	2014	\N	district	48	\N
1958	subcounty	1178	Yumbe town council	2014	\N	district	48	\N
1959	subcounty	1179	Atyak	2014	\N	district	96	\N
1960	subcounty	1180	Kango	2014	\N	district	96	\N
1961	subcounty	1181	Paidha town council	2014	\N	district	96	\N
1962	subcounty	1182	Zeu	2014	\N	district	96	\N
1963	subcounty	1183	Jangokoro	2014	\N	district	96	\N
1964	subcounty	1184	Nyapea	2014	\N	district	96	\N
1965	subcounty	1185	Zombo town council	2014	\N	district	96	\N
1966	subcounty	1186	Abanga	2014	\N	district	96	\N
1967	subcounty	1187	Paidha	2014	\N	district	96	\N
1968	subcounty	1188	Warr	2014	\N	district	96	\N
1969	subcounty	1189	Bala	2014	\N	district	13	\N
1970	subcounty	1190	Abongomola	2014	\N	district	12	\N
1971	subcounty	1191	Amach	2014	\N	district	6	\N
1972	subcounty	1192	Adilang	2014	\N	district	10	\N
1973	subcounty	1193	Kyesiiga	2014	\N	district	18	\N
1974	subcounty	1194	Nyakwae	2014	\N	district	49	\N
1975	subcounty	1195	Namasale	2014	\N	district	50	\N
1976	subcounty	1196	Namasale town council	2014	\N	district	50	\N
1977	subcounty	1197	Kapelebyong	2014	\N	district	36	\N
1978	subcounty	1198	Buikwe	2014	\N	district	80	\N
1979	subcounty	1199	Bulambuli town council	2014	\N	district	92	\N
1980	subcounty	1200	Bulegeni town council	2014	\N	district	92	\N
1981	subcounty	1201	Kamu	2014	\N	district	92	\N
1982	subcounty	1202	Muyembe	2014	\N	district	92	\N
1983	subcounty	1203	Simu	2014	\N	district	92	\N
1984	subcounty	1204	Bulegeni	2014	\N	district	92	\N
1985	subcounty	1205	Ishaka division	2014	\N	district	103	\N
1986	subcounty	1206	Busolwe	2014	\N	district	40	\N
1987	subcounty	1207	Buyengo	2014	\N	district	31	\N
1988	subcounty	1208	Kiko town council	2014	\N	district	57	\N
1989	subcounty	1209	Bihanga	2014	\N	district	64	\N
1990	subcounty	1210	Nkoma	2014	\N	district	64	\N
1991	subcounty	1211	Palam	2014	\N	district	32	\N
1992	subcounty	1212	Lokopo	2014	\N	district	94	\N
1993	subcounty	1213	Buremba	2014	\N	district	4	\N
1994	subcounty	1214	Midia	2014	\N	district	53	\N
1995	subcounty	1215	Paloga	2014	\N	district	15	\N
1996	subcounty	1216	Bubyangu	2014	\N	district	33	\N
1997	subcounty	1217	Rupa	2014	\N	district	93	\N
1998	subcounty	1218	Laropi	2014	\N	district	47	\N
1999	subcounty	1219	Moruita	2014	\N	district	111	\N
2000	subcounty	1220	Kalongo	2014	\N	district	23	\N
2001	subcounty	1221	Kakooge town council	2014	\N	district	23	\N
2002	subcounty	1222	Kakooge	2014	\N	district	23	\N
2003	subcounty	1223	Bugana	2014	\N	district	82	\N
2004	subcounty	1224	Sigulu islands	2014	\N	district	82	\N
2005	subcounty	1225	Akworo	2014	\N	district	95	\N
2006	subcounty	1226	Karugutu	2014	\N	district	106	\N
2007	subcounty	1227	Rwebisengo	2014	\N	district	106	\N
2008	subcounty	1228	Kasaali	2014	\N	district	24	\N
2009	subcounty	1229	Kabwohe-itendero town council	2014	\N	district	99	\N
2010	subcounty	1230	Shuuku	2014	\N	district	99	\N
2011	subcounty	1231	Bugongi town council	2014	\N	district	99	\N
2012	subcounty	1232	Kashozi	2014	\N	district	99	\N
2013	subcounty	1233	Ssi bukunja	2014	\N	district	80	\N
2014	subcounty	1234	Ngogwe	2014	\N	district	80	\N
2015	subcounty	1235	Najja	2014	\N	district	80	\N
2016	subcounty	1236	Nyenga	2014	\N	district	80	\N
2017	subcounty	1237	Chesower	2014	\N	district	39	\N
2018	subcounty	1238	Sironko town council	2014	\N	district	89	\N
2019	subcounty	1239	Budadiri town council	2014	\N	district	89	\N
2020	subcounty	1240	Bukiyi	2014	\N	district	89	\N
2021	subcounty	1241	Bukyambi	2014	\N	district	89	\N
2022	subcounty	1242	Bukyabo	2014	\N	district	89	\N
2023	subcounty	1243	Buhugu	2014	\N	district	89	\N
2024	subcounty	1244	Ciforo	2014	\N	district	44	\N
2025	subcounty	1245	Pacara	2014	\N	district	44	\N
2026	subcounty	1246	Tara	2014	\N	district	105	\N
2027	subcounty	1247	Kijomoro	2014	\N	district	105	\N
2028	subcounty	1248	Oluvu	2014	\N	district	105	\N
2029	subcounty	1249	Rigbo	2014	\N	district	104	\N
2030	subcounty	1250	Kululu	2014	\N	district	48	\N
2031	subcounty	1251	Romogi	2014	\N	district	48	\N
2032	subcounty	1252	Kochi	2014	\N	district	48	\N
2033	subcounty	1253	Lamogi	2014	\N	district	9	\N
2034	subcounty	1254	Buwaaya	2014	\N	district	73	\N
2035	subcounty	1255	Budhaya	2014	\N	district	81	\N
2036	subcounty	1256	Central division	2014	\N	district	58	\N
2037	subcounty	1257	Akokoro	2014	\N	district	12	\N
2038	subcounty	1258	Namanyonyi	2014	\N	district	33	\N
2039	subcounty	1259	Busoba	2014	\N	district	33	\N
2040	subcounty	1260	Bumasikye	2014	\N	district	33	\N
2041	subcounty	1261	Lukhonge	2014	\N	district	33	\N
2042	subcounty	1262	Lubya	2014	\N	district	74	\N
2043	subcounty	1263	Buwooya	2014	\N	district	74	\N
2044	subcounty	1264	Bukonzo	2014	\N	district	107	\N
2045	subcounty	1265	Harugale	2014	\N	district	107	\N
2046	subcounty	1266	Ndugutu	2014	\N	district	107	\N
2047	subcounty	1267	Budwale	2014	\N	district	33	\N
2048	subcounty	1268	Busano	2014	\N	district	33	\N
2049	subcounty	1269	Mutunda	2014	\N	district	98	\N
2050	subcounty	1270	Kiryandongo	2014	\N	district	98	\N
2051	subcounty	1271	Bwambara	2014	\N	district	63	\N
2052	subcounty	1272	Pajulu	2014	\N	district	104	\N
2053	subcounty	1273	Alwa	2014	\N	district	35	\N
2054	subcounty	1274	Anyara	2014	\N	district	35	\N
2055	subcounty	1275	Abako	2014	\N	district	7	\N
2056	subcounty	1276	Butandiga	2014	\N	district	89	\N
2057	subcounty	1277	Bwanswa	2014	\N	district	59	\N
2058	subcounty	1278	Butoloogo	2014	\N	district	22	\N
2059	subcounty	1279	Nyakayojo division	2014	\N	district	61	\N
2060	subcounty	1280	Kakule	2014	\N	district	112	\N
2061	subcounty	1281	Kigumba	2014	\N	district	98	\N
2062	subcounty	1282	Namwendwa	2014	\N	district	77	\N
2063	subcounty	1283	Kamuli town council	2014	\N	district	77	\N
2064	subcounty	1284	Mbulamuti	2014	\N	district	77	\N
2065	subcounty	1285	Bugulumbya	2014	\N	district	77	\N
2066	subcounty	1286	Namasagali	2014	\N	district	77	\N
2067	subcounty	1287	Nabwigulu	2014	\N	district	77	\N
2068	subcounty	1288	Kisozi	2014	\N	district	77	\N
2069	subcounty	1289	Balawoli	2014	\N	district	77	\N
2070	subcounty	1290	Wankole	2014	\N	district	77	\N
2071	subcounty	1291	Butansi	2014	\N	district	77	\N
2072	subcounty	1292	Kitayunjwa	2014	\N	district	77	\N
2073	subcounty	1293	Bulopa	2014	\N	district	77	\N
2074	subcounty	1294	Nawanyago	2014	\N	district	77	\N
2075	subcounty	1295	Dranya	2014	\N	district	53	\N
2076	subcounty	1296	Ludara	2014	\N	district	53	\N
2077	subcounty	1297	Abuku	2014	\N	district	53	\N
2078	subcounty	1298	Koboko town council	2014	\N	district	53	\N
2079	subcounty	1299	Kuluba	2014	\N	district	53	\N
2080	subcounty	1300	Lobule	2014	\N	district	53	\N
2081	subcounty	1301	Ayer	2014	\N	district	13	\N
2082	subcounty	1302	Akalo	2014	\N	district	13	\N
2083	subcounty	1303	Okwerodot	2014	\N	district	13	\N
2084	subcounty	1304	Alito	2014	\N	district	13	\N
2085	subcounty	1305	Kole town council	2014	\N	district	13	\N
2086	subcounty	1306	Aboke	2014	\N	district	13	\N
2087	subcounty	1307	Bukakata	2014	\N	district	18	\N
2088	subcounty	1308	Buwunga	2014	\N	district	18	\N
2089	subcounty	1309	Kabonera	2014	\N	district	18	\N
2090	subcounty	1310	Kyannamukaaka	2014	\N	district	18	\N
2091	subcounty	1311	Mukungwe	2014	\N	district	18	\N
2092	subcounty	1312	Katwe/butego	2014	\N	district	18	\N
2093	subcounty	1313	Kimaanya/kyabakuza	2014	\N	district	18	\N
2094	subcounty	1314	Nyendo/ssenyange	2014	\N	district	18	\N
2095	subcounty	1315	Budondo	2014	\N	district	97	\N
2096	subcounty	1316	Pakanyi	2014	\N	district	97	\N
2097	subcounty	1317	Central division	2014	\N	district	97	\N
2098	subcounty	1318	Kigulya division	2014	\N	district	97	\N
2099	subcounty	1319	Nyangahya division	2014	\N	district	97	\N
2100	subcounty	1320	Bwijanga	2014	\N	district	97	\N
2101	subcounty	1321	Kimengo	2014	\N	district	97	\N
2102	subcounty	1322	Miirya	2014	\N	district	97	\N
2103	subcounty	1323	Karujubu division	2014	\N	district	97	\N
2104	subcounty	1324	Baitambogwe	2014	\N	district	73	\N
2105	subcounty	1325	Bukabooli	2014	\N	district	73	\N
2106	subcounty	1326	Bukatube	2014	\N	district	73	\N
2107	subcounty	1327	Busakira	2014	\N	district	73	\N
2108	subcounty	1328	Imanyiro	2014	\N	district	73	\N
2109	subcounty	1329	Jaguzi	2014	\N	district	73	\N
2110	subcounty	1330	Kigandalo	2014	\N	district	73	\N
2111	subcounty	1331	Kityerera	2014	\N	district	73	\N
2112	subcounty	1332	Malongo	2014	\N	district	73	\N
2113	subcounty	1333	Mayuge town council	2014	\N	district	73	\N
2114	subcounty	1334	Mpungwe	2014	\N	district	73	\N
2115	subcounty	1335	Wairasa	2014	\N	district	73	\N
2116	subcounty	1336	Nawaikoke	2014	\N	district	41	\N
2117	subcounty	1337	Kaliro town council	2014	\N	district	41	\N
2118	subcounty	1338	Gadumire	2014	\N	district	41	\N
2119	subcounty	1339	Namwiwa	2014	\N	district	41	\N
2120	subcounty	1340	Namugongo	2014	\N	district	41	\N
2121	subcounty	1341	Bumanya	2014	\N	district	41	\N
2122	subcounty	1342	Kalungu	2014	\N	district	85	\N
2123	subcounty	1343	Kalungu town council	2014	\N	district	85	\N
2124	subcounty	1344	Kyamulibwa	2014	\N	district	85	\N
2125	subcounty	1345	Lukaya town council	2014	\N	district	85	\N
2126	subcounty	1346	Lwabenge	2014	\N	district	85	\N
2127	subcounty	1347	Bukulula	2014	\N	district	85	\N
2128	subcounty	1348	Kawempe division	2014	\N	district	20	\N
2129	subcounty	1349	Nakawa division	2014	\N	district	20	\N
2130	subcounty	1350	Makindye division	2014	\N	district	20	\N
2131	subcounty	1351	Central division	2014	\N	district	20	\N
2132	subcounty	1352	Lubaga division	2014	\N	district	20	\N
2133	subcounty	1353	Busiriba	2014	\N	district	64	\N
2134	subcounty	1354	Bwizi	2014	\N	district	64	\N
2135	subcounty	1355	Kabambiro	2014	\N	district	64	\N
2136	subcounty	1356	Kahunge	2014	\N	district	64	\N
2137	subcounty	1357	Kamwenge	2014	\N	district	64	\N
2138	subcounty	1358	Kamwenge town council	2014	\N	district	64	\N
2139	subcounty	1359	Buhanda	2014	\N	district	64	\N
2140	subcounty	1360	Kanara	2014	\N	district	64	\N
2141	subcounty	1361	Kicheche	2014	\N	district	64	\N
2142	subcounty	1362	Mahyoro	2014	\N	district	64	\N
2143	subcounty	1363	Ntara	2014	\N	district	64	\N
2144	subcounty	1364	Nyabbani	2014	\N	district	64	\N
2145	subcounty	1365	Nkoma	2014	\N	district	64	\N
2146	subcounty	1366	Biguli	2014	\N	district	64	\N
2147	subcounty	1367	Kihiihi	2014	\N	district	65	\N
2148	subcounty	1368	Nyanga	2014	\N	district	65	\N
2149	subcounty	1369	Kihiihi town council	2014	\N	district	65	\N
2150	subcounty	1370	Nyakinoni	2014	\N	district	65	\N
2151	subcounty	1371	Nyamirama	2014	\N	district	65	\N
2152	subcounty	1372	Katete	2014	\N	district	65	\N
2153	subcounty	1373	Kambuga town council	2014	\N	district	65	\N
2154	subcounty	1374	Kambuga	2014	\N	district	65	\N
2155	subcounty	1375	Kanyantorogo	2014	\N	district	65	\N
2156	subcounty	1376	Kirima	2014	\N	district	65	\N
2157	subcounty	1377	Butogota town council	2014	\N	district	65	\N
2158	subcounty	1378	Kayonza	2014	\N	district	65	\N
2159	subcounty	1379	Mpungu	2014	\N	district	65	\N
2160	subcounty	1380	Kinaaba	2014	\N	district	65	\N
2161	subcounty	1381	Kanungu town council	2014	\N	district	65	\N
2162	subcounty	1382	Rugyeyo	2014	\N	district	65	\N
2163	subcounty	1383	Rutenga	2014	\N	district	65	\N
2164	subcounty	1384	Amukol	2014	\N	district	90	\N
2165	subcounty	1385	Chema	2014	\N	district	90	\N
2166	subcounty	1386	Chepteret	2014	\N	district	90	\N
2167	subcounty	1387	Gamogo	2014	\N	district	90	\N
2168	subcounty	1388	Kabeywa	2014	\N	district	90	\N
2169	subcounty	1389	Kapchesombe	2014	\N	district	90	\N
2170	subcounty	1390	Kapsinda	2014	\N	district	90	\N
2171	subcounty	1391	Kaptanya	2014	\N	district	90	\N
2172	subcounty	1392	Kapteret	2014	\N	district	90	\N
2173	subcounty	1393	Kaserem	2014	\N	district	90	\N
2174	subcounty	1394	Kawowo	2014	\N	district	90	\N
2175	subcounty	1395	Munarya	2014	\N	district	90	\N
2176	subcounty	1396	Sipi	2014	\N	district	90	\N
2177	subcounty	1397	Tegeres	2014	\N	district	90	\N
2178	subcounty	1398	Kapchorwa town council	2014	\N	district	90	\N
2179	subcounty	1399	Bwera	2014	\N	district	58	\N
2180	subcounty	1400	Hima town council	2014	\N	district	58	\N
2181	subcounty	1401	Ihandiro	2014	\N	district	58	\N
2182	subcounty	1402	Isango	2014	\N	district	58	\N
2183	subcounty	1403	Karambi	2014	\N	district	58	\N
2184	subcounty	1404	Kisinga	2014	\N	district	58	\N
2185	subcounty	1405	Kitholhu	2014	\N	district	58	\N
2186	subcounty	1406	Kyondo	2014	\N	district	58	\N
2187	subcounty	1407	Mpondwe/lhubiriha town council	2014	\N	district	58	\N
2188	subcounty	1408	Mukunyu	2014	\N	district	58	\N
2189	subcounty	1409	Nyakatonzi	2014	\N	district	58	\N
2190	subcounty	1410	Nyakiyumbu	2014	\N	district	58	\N
2191	subcounty	1411	Bugoye	2014	\N	district	58	\N
2192	subcounty	1412	Buhuhira	2014	\N	district	58	\N
2193	subcounty	1413	Bwesumbu	2014	\N	district	58	\N
2194	subcounty	1414	Karusandara	2014	\N	district	58	\N
2195	subcounty	1415	Katwe-kabatoro town council	2014	\N	district	58	\N
2196	subcounty	1416	Kilembe	2014	\N	district	58	\N
2197	subcounty	1417	Kitswamba	2014	\N	district	58	\N
2198	subcounty	1418	Kyabarungira	2014	\N	district	58	\N
2199	subcounty	1419	Lake katwe	2014	\N	district	58	\N
2200	subcounty	1420	Mahango	2014	\N	district	58	\N
2201	subcounty	1421	Maliba	2014	\N	district	58	\N
2202	subcounty	1422	Muhokya	2014	\N	district	58	\N
2203	subcounty	1423	Rukoki	2014	\N	district	58	\N
2204	subcounty	1424	Nyamwamba division	2014	\N	district	58	\N
2205	subcounty	1425	Kyarumba	2014	\N	district	58	\N
2206	subcounty	1426	Bulembia division	2014	\N	district	58	\N
2207	subcounty	1427	Toroma	2014	\N	district	32	\N
2208	subcounty	1428	Katakwi town council	2014	\N	district	32	\N
2209	subcounty	1429	Ngariam	2014	\N	district	32	\N
2210	subcounty	1430	Ongongoja	2014	\N	district	32	\N
2211	subcounty	1431	Usuk	2014	\N	district	32	\N
2212	subcounty	1432	Magoro	2014	\N	district	32	\N
2213	subcounty	1433	Katakwi	2014	\N	district	32	\N
2214	subcounty	1434	Omodoi	2014	\N	district	32	\N
2215	subcounty	1435	Kapujan	2014	\N	district	32	\N
2216	subcounty	1436	Bbaale	2014	\N	district	26	\N
2217	subcounty	1437	Galiraaya	2014	\N	district	26	\N
2218	subcounty	1438	Kayonza	2014	\N	district	26	\N
2219	subcounty	1439	Kitimbwa	2014	\N	district	26	\N
2220	subcounty	1440	Busana	2014	\N	district	26	\N
2221	subcounty	1441	Kangulumira	2014	\N	district	26	\N
2222	subcounty	1442	Kayunga	2014	\N	district	26	\N
2223	subcounty	1443	Kayunga town council	2014	\N	district	26	\N
2224	subcounty	1444	Nazigo	2014	\N	district	26	\N
2225	subcounty	1445	Nkooko	2014	\N	district	59	\N
2226	subcounty	1446	Kagadi	2014	\N	district	59	\N
2227	subcounty	1447	Kakindo	2014	\N	district	59	\N
2228	subcounty	1448	Rugashari	2014	\N	district	59	\N
2229	subcounty	1449	Ndaiga	2014	\N	district	59	\N
2230	subcounty	1450	Kyakabadiima	2014	\N	district	59	\N
2231	subcounty	1451	Kabamba	2014	\N	district	59	\N
2232	subcounty	1452	Mpasaana	2014	\N	district	59	\N
2233	subcounty	1453	Kakumiro town council	2014	\N	district	59	\N
2234	subcounty	1454	Birembo	2014	\N	district	59	\N
2235	subcounty	1455	Kasiita	2014	\N	district	59	\N
2236	subcounty	1456	Nalweyo	2014	\N	district	59	\N
2237	subcounty	1457	Kasambya	2014	\N	district	59	\N
2238	subcounty	1458	Bwikara	2014	\N	district	59	\N
2239	subcounty	1459	Kyaterekera	2014	\N	district	59	\N
2240	subcounty	1460	Mpeefu	2014	\N	district	59	\N
2241	subcounty	1461	Kiryanga	2014	\N	district	59	\N
2242	subcounty	1462	Mabaale	2014	\N	district	59	\N
2243	subcounty	1463	Kyenzige	2014	\N	district	59	\N
2244	subcounty	1464	Paacwa	2014	\N	district	59	\N
2245	subcounty	1465	Burora	2014	\N	district	59	\N
2246	subcounty	1466	Ruteete	2014	\N	district	59	\N
2247	subcounty	1467	Kyanaisoke	2014	\N	district	59	\N
2248	subcounty	1468	Kagadi town council	2014	\N	district	59	\N
2249	subcounty	1469	Muhorro	2014	\N	district	59	\N
2250	subcounty	1470	Muhorro town council	2014	\N	district	59	\N
2251	subcounty	1471	Nyamarwa	2014	\N	district	59	\N
2252	subcounty	1472	Kyebando	2014	\N	district	59	\N
2253	subcounty	1473	Kibaale town council	2014	\N	district	59	\N
2254	subcounty	1474	Bwamiramira	2014	\N	district	59	\N
2255	subcounty	1475	Bubango	2014	\N	district	59	\N
2256	subcounty	1476	Mugarama	2014	\N	district	59	\N
2257	subcounty	1477	Matale	2014	\N	district	59	\N
2258	subcounty	1478	Nyamarunda	2014	\N	district	59	\N
2259	subcounty	1479	Bukomero	2014	\N	district	109	\N
2260	subcounty	1480	Bukomero town council	2014	\N	district	109	\N
2261	subcounty	1481	Ddwaniro	2014	\N	district	109	\N
2262	subcounty	1482	Kapeke	2014	\N	district	109	\N
2263	subcounty	1483	Kibiga	2014	\N	district	109	\N
2264	subcounty	1484	Kiboga town council	2014	\N	district	109	\N
2265	subcounty	1485	Lwamata	2014	\N	district	109	\N
2266	subcounty	1486	Muwanga	2014	\N	district	109	\N
2267	subcounty	1487	Bulangira	2014	\N	district	75	\N
2268	subcounty	1488	Buseta	2014	\N	district	75	\N
2269	subcounty	1489	Kabweri	2014	\N	district	75	\N
2270	subcounty	1490	Kadama	2014	\N	district	75	\N
2271	subcounty	1491	Kagumu	2014	\N	district	75	\N
2272	subcounty	1492	Kasasira	2014	\N	district	75	\N
2273	subcounty	1493	Kibuku	2014	\N	district	75	\N
2274	subcounty	1494	Kibuku town council	2014	\N	district	75	\N
2275	subcounty	1495	Kirika	2014	\N	district	75	\N
2276	subcounty	1496	Tirinyi	2014	\N	district	75	\N
2277	subcounty	1497	Nkungu	2014	\N	district	4	\N
2278	subcounty	1498	Burunga	2014	\N	district	4	\N
2279	subcounty	1499	Engari	2014	\N	district	4	\N
2280	subcounty	1500	Kanoni	2014	\N	district	4	\N
2281	subcounty	1501	Kazo town council	2014	\N	district	4	\N
2282	subcounty	1502	Rwemikoma	2014	\N	district	4	\N
2283	subcounty	1503	Kanyaryeru	2014	\N	district	4	\N
2284	subcounty	1504	Kashongi	2014	\N	district	4	\N
2285	subcounty	1505	Kenshunga	2014	\N	district	4	\N
2286	subcounty	1506	Kinoni	2014	\N	district	4	\N
2287	subcounty	1507	Kiruhura town council	2014	\N	district	4	\N
2288	subcounty	1508	Nyakashashara	2014	\N	district	4	\N
2289	subcounty	1509	Sanga	2014	\N	district	4	\N
2290	subcounty	1510	Sanga town council	2014	\N	district	4	\N
2291	subcounty	1511	Kikaatsi	2014	\N	district	4	\N
2292	subcounty	1512	Kitura	2014	\N	district	4	\N
2293	subcounty	1513	Kazo	2014	\N	district	4	\N
2294	subcounty	1514	Kigumba town council	2014	\N	district	98	\N
2295	subcounty	1515	Kiryandongo refugee settlement	2014	\N	district	98	\N
2296	subcounty	1516	Kiryandongo town council	2014	\N	district	98	\N
2297	subcounty	1517	Masindi port	2014	\N	district	98	\N
2298	subcounty	1518	Bweyale town council	2014	\N	district	98	\N
2299	subcounty	1519	Kisoro town council	2014	\N	district	60	\N
2300	subcounty	1520	Nyabwishenya	2014	\N	district	60	\N
2301	subcounty	1521	Busanza	2014	\N	district	60	\N
2302	subcounty	1522	Kirundo	2014	\N	district	60	\N
2303	subcounty	1523	Nyarubuye	2014	\N	district	60	\N
2304	subcounty	1524	Nyundo	2014	\N	district	60	\N
2305	subcounty	1525	Bukimbiri	2014	\N	district	60	\N
2306	subcounty	1526	Kanaba	2014	\N	district	60	\N
2307	subcounty	1527	Nyakabande	2014	\N	district	60	\N
2308	subcounty	1528	Nyakinama	2014	\N	district	60	\N
2309	subcounty	1529	Chahi	2014	\N	district	60	\N
2310	subcounty	1530	Muramba	2014	\N	district	60	\N
2311	subcounty	1531	Nyarusiza	2014	\N	district	60	\N
2312	subcounty	1532	Murora	2014	\N	district	60	\N
2313	subcounty	1533	Kitgum matidi	2014	\N	district	14	\N
2314	subcounty	1534	Labongo akwang	2014	\N	district	14	\N
2315	subcounty	1535	Labongo amida	2014	\N	district	14	\N
2316	subcounty	1536	Labongo layamo	2014	\N	district	14	\N
2317	subcounty	1537	Lagoro	2014	\N	district	14	\N
2318	subcounty	1538	Mucwini	2014	\N	district	14	\N
2319	subcounty	1539	Namokora	2014	\N	district	14	\N
2320	subcounty	1540	Omiya anyima	2014	\N	district	14	\N
2321	subcounty	1541	Orom	2014	\N	district	14	\N
2322	subcounty	1542	Mucwini	2014	\N	district	14	\N
2323	subcounty	1543	Kitgum town council	2014	\N	district	14	\N
2324	subcounty	1544	Kacheri	2014	\N	district	46	\N
2325	subcounty	1545	Kotido	2014	\N	district	46	\N
2326	subcounty	1546	Kotido town council	2014	\N	district	46	\N
2327	subcounty	1547	Nakaperimoru	2014	\N	district	46	\N
2328	subcounty	1548	Panyangara	2014	\N	district	46	\N
2329	subcounty	1549	Rengen	2014	\N	district	46	\N
2330	subcounty	1550	Atutur	2014	\N	district	86	\N
2331	subcounty	1551	Kanyum	2014	\N	district	86	\N
2332	subcounty	1552	Kumi	2014	\N	district	86	\N
2333	subcounty	1553	Kumi town council	2014	\N	district	86	\N
2334	subcounty	1554	Mukongoro	2014	\N	district	86	\N
2335	subcounty	1555	Nyero	2014	\N	district	86	\N
2336	subcounty	1556	Ongino	2014	\N	district	86	\N
2337	subcounty	1557	Benet	2014	\N	district	91	\N
2338	subcounty	1558	Binyiny	2014	\N	district	91	\N
2339	subcounty	1559	Binyiny town council	2014	\N	district	91	\N
2340	subcounty	1560	Kaproron	2014	\N	district	91	\N
2341	subcounty	1561	Kaptoyoy	2014	\N	district	91	\N
2342	subcounty	1562	Kaptum	2014	\N	district	91	\N
2343	subcounty	1563	Kiriki	2014	\N	district	91	\N
2344	subcounty	1564	Kitawoi	2014	\N	district	91	\N
2345	subcounty	1565	Kwanyiy	2014	\N	district	91	\N
2346	subcounty	1566	Kwosir	2014	\N	district	91	\N
2347	subcounty	1567	Moyok	2014	\N	district	91	\N
2348	subcounty	1568	Ngenge	2014	\N	district	91	\N
2349	subcounty	1569	Bananywa	2014	\N	district	108	\N
2350	subcounty	1570	Butemba	2014	\N	district	108	\N
2351	subcounty	1571	Butemba town council	2014	\N	district	108	\N
2352	subcounty	1572	Gayaza	2014	\N	district	108	\N
2353	subcounty	1573	Kyankwanzi	2014	\N	district	108	\N
2354	subcounty	1574	Mulagi	2014	\N	district	108	\N
2355	subcounty	1575	Nkandwa	2014	\N	district	108	\N
2356	subcounty	1576	Nsambya	2014	\N	district	108	\N
2357	subcounty	1577	Ntwetwe	2014	\N	district	108	\N
2358	subcounty	1578	Ntwetwe town council	2014	\N	district	108	\N
2359	subcounty	1579	Wattuba	2014	\N	district	108	\N
2360	subcounty	1580	Ruyonza	2014	\N	district	70	\N
2361	subcounty	1581	Kabweeza-kyegegwa	2014	\N	district	70	\N
2362	subcounty	1582	Hapuuyo	2014	\N	district	70	\N
2363	subcounty	1583	Mpara	2014	\N	district	70	\N
2364	subcounty	1584	Kyaka	2014	\N	district	70	\N
2365	subcounty	1585	Kakabara	2014	\N	district	70	\N
2366	subcounty	1586	Kyegegwa town council	2014	\N	district	70	\N
2367	subcounty	1587	Kasule	2014	\N	district	70	\N
2368	subcounty	1588	Rwentuha	2014	\N	district	70	\N
2369	subcounty	1589	Bufunjo	2014	\N	district	69	\N
2370	subcounty	1590	Bugaaki	2014	\N	district	69	\N
2371	subcounty	1591	Butiiti	2014	\N	district	69	\N
2372	subcounty	1592	Butunduzi	2014	\N	district	69	\N
2373	subcounty	1593	Katooke town council	2014	\N	district	69	\N
2374	subcounty	1594	Kihuura	2014	\N	district	69	\N
2375	subcounty	1595	Kisojo	2014	\N	district	69	\N
2376	subcounty	1596	Kyarusozi town council	2014	\N	district	69	\N
2377	subcounty	1597	Kyenjojo town council	2014	\N	district	69	\N
2378	subcounty	1598	Nyabuharwa	2014	\N	district	69	\N
2379	subcounty	1599	Nyankwanzi	2014	\N	district	69	\N
2380	subcounty	1600	Kyarusozi	2014	\N	district	69	\N
2381	subcounty	1601	Nyantungo	2014	\N	district	69	\N
2382	subcounty	1602	Kigaraale	2014	\N	district	69	\N
2383	subcounty	1603	Butunduzi town council	2014	\N	district	69	\N
2384	subcounty	1604	Katooke	2014	\N	district	69	\N
2385	subcounty	1605	Agoro	2014	\N	district	15	\N
2386	subcounty	1606	Lamwo town council	2014	\N	district	15	\N
2387	subcounty	1607	Lokung	2014	\N	district	15	\N
2388	subcounty	1608	Madi opei	2014	\N	district	15	\N
2389	subcounty	1609	Padibe east	2014	\N	district	15	\N
2390	subcounty	1610	Padibe town council	2014	\N	district	15	\N
2391	subcounty	1611	Padibe west	2014	\N	district	15	\N
2392	subcounty	1612	Palabek-gem	2014	\N	district	15	\N
2393	subcounty	1613	Palabek-ogili	2014	\N	district	15	\N
2394	subcounty	1614	Palabek kal	2014	\N	district	15	\N
2395	subcounty	1615	Adekokwok	2014	\N	district	6	\N
2396	subcounty	1616	Agali	2014	\N	district	6	\N
2397	subcounty	1617	Agweng	2014	\N	district	6	\N
2398	subcounty	1618	Aromo	2014	\N	district	6	\N
2399	subcounty	1619	Barr	2014	\N	district	6	\N
2400	subcounty	1620	Lira	2014	\N	district	6	\N
2401	subcounty	1621	Ngetta	2014	\N	district	6	\N
2402	subcounty	1622	Ogur	2014	\N	district	6	\N
2403	subcounty	1623	Adyel division	2014	\N	district	6	\N
2404	subcounty	1624	Central division	2014	\N	district	6	\N
2405	subcounty	1625	Railway division	2014	\N	district	6	\N
2406	subcounty	1626	Ojwina division	2014	\N	district	6	\N
2407	subcounty	1627	Bukooma	2014	\N	district	71	\N
2408	subcounty	1628	Bulongo	2014	\N	district	71	\N
2409	subcounty	1629	Ikumbya	2014	\N	district	71	\N
2410	subcounty	1630	Irongo	2014	\N	district	71	\N
2411	subcounty	1631	Luuka town council	2014	\N	district	71	\N
2412	subcounty	1632	Nawampiti	2014	\N	district	71	\N
2413	subcounty	1633	Bukanga	2014	\N	district	71	\N
2414	subcounty	1634	Waibuga	2014	\N	district	71	\N
2415	subcounty	1635	Makulubita	2014	\N	district	21	\N
2416	subcounty	1636	Luwero	2014	\N	district	21	\N
2417	subcounty	1637	Kikyusa	2014	\N	district	21	\N
2418	subcounty	1638	Zirobwe	2014	\N	district	21	\N
2419	subcounty	1639	Luwero town council	2014	\N	district	21	\N
2420	subcounty	1640	Katikamu	2014	\N	district	21	\N
2421	subcounty	1641	Wobulenzi town council	2014	\N	district	21	\N
2422	subcounty	1642	Bamunanika	2014	\N	district	21	\N
2423	subcounty	1643	Nyimbwa	2014	\N	district	21	\N
2424	subcounty	1644	Kalagala	2014	\N	district	21	\N
2425	subcounty	1645	Bombo town council	2014	\N	district	21	\N
2426	subcounty	1646	Butuntumula	2014	\N	district	21	\N
2427	subcounty	1647	Kamira	2014	\N	district	21	\N
2428	subcounty	1648	Kisekka	2014	\N	district	17	\N
2429	subcounty	1649	Kkingo	2014	\N	district	17	\N
2430	subcounty	1650	Kyazanga	2014	\N	district	17	\N
2431	subcounty	1651	Lwengo	2014	\N	district	17	\N
2432	subcounty	1652	Lwengo town council	2014	\N	district	17	\N
2433	subcounty	1653	Malongo	2014	\N	district	17	\N
2434	subcounty	1654	Ndagwe	2014	\N	district	17	\N
2435	subcounty	1655	Lyantonde	2014	\N	district	28	\N
2436	subcounty	1656	Kaliiro	2014	\N	district	28	\N
2437	subcounty	1657	Mpumudde	2014	\N	district	28	\N
2438	subcounty	1658	Lyantonde town council	2014	\N	district	28	\N
2439	subcounty	1659	Kasagama	2014	\N	district	28	\N
2440	subcounty	1660	Kinuuka	2014	\N	district	28	\N
2441	subcounty	1661	Bubutu	2014	\N	district	42	\N
2442	subcounty	1662	Bugobero	2014	\N	district	42	\N
2443	subcounty	1663	Bukhabusi	2014	\N	district	42	\N
2444	subcounty	1664	Bukhaweka	2014	\N	district	42	\N
2445	subcounty	1665	Bukhofu	2014	\N	district	42	\N
2446	subcounty	1666	Bukiabi	2014	\N	district	42	\N
2447	subcounty	1667	Bukokho	2014	\N	district	42	\N
2448	subcounty	1668	Bukusu	2014	\N	district	42	\N
2449	subcounty	1669	Bumbo	2014	\N	district	42	\N
2450	subcounty	1670	Bumwoni	2014	\N	district	42	\N
2451	subcounty	1671	Bunabwana	2014	\N	district	42	\N
2452	subcounty	1672	Bupoto	2014	\N	district	42	\N
2453	subcounty	1673	Busukuya	2014	\N	district	42	\N
2454	subcounty	1674	Butiru	2014	\N	district	42	\N
2455	subcounty	1675	Butta	2014	\N	district	42	\N
2456	subcounty	1676	Buwabwala	2014	\N	district	42	\N
2457	subcounty	1677	Buwagogo	2014	\N	district	42	\N
2458	subcounty	1678	Kaato	2014	\N	district	42	\N
2459	subcounty	1679	Khabutoola	2014	\N	district	42	\N
2460	subcounty	1680	Lwakhakha town council	2014	\N	district	42	\N
2461	subcounty	1681	Magale	2014	\N	district	42	\N
2462	subcounty	1682	Manafwa town council	2014	\N	district	42	\N
2463	subcounty	1683	Mukhoto	2014	\N	district	42	\N
2464	subcounty	1684	Nalondo	2014	\N	district	42	\N
2465	subcounty	1685	Namabya	2014	\N	district	42	\N
2466	subcounty	1686	Namboko	2014	\N	district	42	\N
2467	subcounty	1687	Sibanga	2014	\N	district	42	\N
2468	subcounty	1688	Sisuni	2014	\N	district	42	\N
2469	subcounty	1689	Tsekululu	2014	\N	district	42	\N
2470	subcounty	1690	Weswa	2014	\N	district	42	\N
2471	subcounty	1691	Maracha town council	2014	\N	district	105	\N
2472	subcounty	1692	Nyadri	2014	\N	district	105	\N
2473	subcounty	1693	Oleba	2014	\N	district	105	\N
2474	subcounty	1694	Olufee	2014	\N	district	105	\N
2475	subcounty	1695	Yivu	2014	\N	district	105	\N
2476	subcounty	1696	Kasitu	2014	\N	district	107	\N
2477	subcounty	1697	Ngamba	2014	\N	district	107	\N
2478	subcounty	1698	Ntotoro	2014	\N	district	107	\N
2479	subcounty	1699	Sindila	2014	\N	district	107	\N
2480	subcounty	1700	Bubandi	2014	\N	district	107	\N
2481	subcounty	1701	Bubukwanga	2014	\N	district	107	\N
2482	subcounty	1702	Bundibugyo town council	2014	\N	district	107	\N
2483	subcounty	1703	Mirambi	2014	\N	district	107	\N
2484	subcounty	1704	Nyahuka town council	2014	\N	district	107	\N
2485	subcounty	1705	Kisuba	2014	\N	district	107	\N
2486	subcounty	1706	Busaru	2014	\N	district	107	\N
2487	subcounty	1707	Kirumya	2014	\N	district	107	\N
2488	subcounty	1708	Nyakabirizi division	2014	\N	district	103	\N
2489	subcounty	1709	Bitooma	2014	\N	district	103	\N
2490	subcounty	1710	Bumbaire	2014	\N	district	103	\N
2491	subcounty	1711	Ibaare	2014	\N	district	103	\N
2492	subcounty	1712	Kakanju	2014	\N	district	103	\N
2493	subcounty	1713	Kyabugimbi	2014	\N	district	103	\N
2494	subcounty	1714	Kyamuhunga	2014	\N	district	103	\N
2495	subcounty	1715	Kyeizooba	2014	\N	district	103	\N
2496	subcounty	1716	Nyabubaare	2014	\N	district	103	\N
2497	subcounty	1717	Ruhumuro	2014	\N	district	103	\N
2498	subcounty	1718	Central division	2014	\N	district	103	\N
2499	subcounty	1719	Eastern division	2014	\N	district	83	\N
2500	subcounty	1720	Buhehe	2014	\N	district	83	\N
2501	subcounty	1721	Bulumbi	2014	\N	district	83	\N
2502	subcounty	1722	Busitema	2014	\N	district	83	\N
2503	subcounty	1723	Buteba	2014	\N	district	83	\N
2504	subcounty	1724	Buyanga	2014	\N	district	83	\N
2505	subcounty	1725	Dabani	2014	\N	district	83	\N
2506	subcounty	1726	Lumino	2014	\N	district	83	\N
2507	subcounty	1727	Majanji	2014	\N	district	83	\N
2508	subcounty	1728	Masaba	2014	\N	district	83	\N
2509	subcounty	1729	Masafu	2014	\N	district	83	\N
2510	subcounty	1730	Masinya	2014	\N	district	83	\N
2511	subcounty	1731	Sikuda	2014	\N	district	83	\N
2512	subcounty	1732	Lunyo	2014	\N	district	83	\N
2513	subcounty	1733	Busime	2014	\N	district	83	\N
2514	subcounty	1734	Western division	2014	\N	district	83	\N
2515	subcounty	1735	Budumba	2014	\N	district	40	\N
2516	subcounty	1736	Busaba	2014	\N	district	40	\N
2517	subcounty	1737	Busabi	2014	\N	district	40	\N
2518	subcounty	1738	Busolwe town council	2014	\N	district	40	\N
2519	subcounty	1739	Butaleja	2014	\N	district	40	\N
2520	subcounty	1740	Butaleja town council	2014	\N	district	40	\N
2521	subcounty	1741	Himutu	2014	\N	district	40	\N
2522	subcounty	1742	Kachonga	2014	\N	district	40	\N
2523	subcounty	1743	Mazimasa	2014	\N	district	40	\N
2524	subcounty	1744	Nawanjofu	2014	\N	district	40	\N
2525	subcounty	1745	Naweyo	2014	\N	district	40	\N
2526	subcounty	1746	Budde	2014	\N	district	67	\N
2527	subcounty	1747	Bulo	2014	\N	district	67	\N
2528	subcounty	1748	Gombe town council	2014	\N	district	67	\N
2529	subcounty	1749	Kalamba	2014	\N	district	67	\N
2530	subcounty	1750	Kibibi	2014	\N	district	67	\N
2531	subcounty	1751	Ngando	2014	\N	district	67	\N
2532	subcounty	1752	Bugaya	2014	\N	district	74	\N
2533	subcounty	1753	Busamuzi	2014	\N	district	74	\N
2534	subcounty	1754	Buvuma town council	2014	\N	district	74	\N
2535	subcounty	1755	Bweema	2014	\N	district	74	\N
2536	subcounty	1756	Lwajje	2014	\N	district	74	\N
2537	subcounty	1757	Lyabaana	2014	\N	district	74	\N
2538	subcounty	1758	Nairambi	2014	\N	district	74	\N
2539	subcounty	1759	Bugaya	2014	\N	district	78	\N
2540	subcounty	1760	Buyende	2014	\N	district	78	\N
2541	subcounty	1761	Buyende town council	2014	\N	district	78	\N
2542	subcounty	1762	Kagulu	2014	\N	district	78	\N
2543	subcounty	1763	Kidera	2014	\N	district	78	\N
2544	subcounty	1764	Nkondo	2014	\N	district	78	\N
2545	subcounty	1765	Adok	2014	\N	district	51	\N
2546	subcounty	1766	Agwata	2014	\N	district	51	\N
2547	subcounty	1767	Amwoma	2014	\N	district	51	\N
2548	subcounty	1768	Batta	2014	\N	district	51	\N
2549	subcounty	1769	Dokolo	2014	\N	district	51	\N
2550	subcounty	1770	Dokolo town council	2014	\N	district	51	\N
2551	subcounty	1771	Kangai	2014	\N	district	51	\N
2552	subcounty	1772	Kwera	2014	\N	district	51	\N
2553	subcounty	1773	Okwalongwen	2014	\N	district	51	\N
2554	subcounty	1774	Okwongodul	2014	\N	district	51	\N
2555	subcounty	1775	Adeknino	2014	\N	district	51	\N
2556	subcounty	1776	Kabulasoke	2014	\N	district	19	\N
2557	subcounty	1777	Kanoni town council	2014	\N	district	19	\N
2558	subcounty	1778	Kyegonza	2014	\N	district	19	\N
2559	subcounty	1779	Maddu	2014	\N	district	19	\N
2560	subcounty	1780	Mpenja	2014	\N	district	19	\N
2561	subcounty	1781	Palaro	2014	\N	district	45	\N
2562	subcounty	1782	Patiko	2014	\N	district	45	\N
2563	subcounty	1783	Bungatira	2014	\N	district	45	\N
2564	subcounty	1784	Unyama	2014	\N	district	45	\N
2565	subcounty	1785	Lakwana	2014	\N	district	45	\N
2566	subcounty	1786	Odek	2014	\N	district	45	\N
2567	subcounty	1787	Lalogi	2014	\N	district	45	\N
2568	subcounty	1788	Koro	2014	\N	district	45	\N
2569	subcounty	1789	Paicho	2014	\N	district	45	\N
2570	subcounty	1790	Awach	2014	\N	district	45	\N
2571	subcounty	1791	Bobi	2014	\N	district	45	\N
2572	subcounty	1792	Ongako	2014	\N	district	45	\N
2573	subcounty	1793	Pece division	2014	\N	district	45	\N
2574	subcounty	1794	Layibi division	2014	\N	district	45	\N
2575	subcounty	1795	Bar dege division	2014	\N	district	45	\N
2576	subcounty	1796	Laroo division	2014	\N	district	45	\N
2577	subcounty	1797	Kitoba	2014	\N	district	55	\N
2578	subcounty	1798	Kiziranfumbi	2014	\N	district	55	\N
2579	subcounty	1799	Kabwoya	2014	\N	district	55	\N
2580	subcounty	1800	Buhimba	2014	\N	district	55	\N
2581	subcounty	1801	Bugambe	2014	\N	district	55	\N
2582	subcounty	1802	Busiisi division	2014	\N	district	55	\N
2583	subcounty	1803	Mparo division	2014	\N	district	55	\N
2584	subcounty	1804	Kyangwali	2014	\N	district	55	\N
2585	subcounty	1805	Kahoora division	2014	\N	district	55	\N
2586	subcounty	1806	Buhanika	2014	\N	district	55	\N
2587	subcounty	1807	Buseruka	2014	\N	district	55	\N
2588	subcounty	1808	Kigorobya	2014	\N	district	55	\N
2589	subcounty	1809	Kigorobya town council	2014	\N	district	55	\N
2590	subcounty	1810	Bujumbura division	2014	\N	district	55	\N
2591	subcounty	1811	Kyabigambire	2014	\N	district	55	\N
2592	subcounty	1812	Ibanda town council	2014	\N	district	2	\N
2593	subcounty	1813	Igorora town council	2014	\N	district	2	\N
2594	subcounty	1814	Ishongororo	2014	\N	district	2	\N
2595	subcounty	1815	Ishongororo town council	2014	\N	district	2	\N
2596	subcounty	1816	Kashangura	2014	\N	district	2	\N
2597	subcounty	1817	Keihangara	2014	\N	district	2	\N
2598	subcounty	1818	Kicuzi	2014	\N	district	2	\N
2599	subcounty	1819	Kijongo	2014	\N	district	2	\N
2600	subcounty	1820	Kikyenkye	2014	\N	district	2	\N
2601	subcounty	1821	Nsasi	2014	\N	district	2	\N
2602	subcounty	1822	Nyabuhikye	2014	\N	district	2	\N
2603	subcounty	1823	Nyamarebe	2014	\N	district	2	\N
2604	subcounty	1824	Rukiri	2014	\N	district	2	\N
2605	subcounty	1825	Rushango town council	2014	\N	district	2	\N
2606	subcounty	1826	Bisheshe	2014	\N	district	2	\N
2607	subcounty	1827	Busembatia town council	2014	\N	district	72	\N
2608	subcounty	1828	Buyanga	2014	\N	district	72	\N
2609	subcounty	1829	Ibulanku	2014	\N	district	72	\N
2610	subcounty	1830	Igombe	2014	\N	district	72	\N
2611	subcounty	1831	Makuutu	2014	\N	district	72	\N
2612	subcounty	1832	Namalemba	2014	\N	district	72	\N
2613	subcounty	1833	Central division	2014	\N	district	72	\N
2614	subcounty	1834	Northern division	2014	\N	district	72	\N
2615	subcounty	1835	Bulamogi	2014	\N	district	72	\N
2616	subcounty	1836	Nabitende	2014	\N	district	72	\N
2617	subcounty	1837	Nakalama	2014	\N	district	72	\N
2618	subcounty	1838	Nakigo	2014	\N	district	72	\N
2619	subcounty	1839	Nambale	2014	\N	district	72	\N
2620	subcounty	1840	Namungalwe	2014	\N	district	72	\N
2621	subcounty	1841	Nawandala	2014	\N	district	72	\N
2622	subcounty	1842	Nawanyingi	2014	\N	district	72	\N
2623	subcounty	1843	Rushasha	2014	\N	district	3	\N
2624	subcounty	1844	Endiinzi	2014	\N	district	3	\N
2625	subcounty	1845	Rugaaga	2014	\N	district	3	\N
2626	subcounty	1846	Mbaare	2014	\N	district	3	\N
2627	subcounty	1847	Kashumba	2014	\N	district	3	\N
2628	subcounty	1848	Ngarama	2014	\N	district	3	\N
2629	subcounty	1849	Kabingo	2014	\N	district	3	\N
2630	subcounty	1850	Masha	2014	\N	district	3	\N
2631	subcounty	1851	Kabarebere town council	2014	\N	district	3	\N
2632	subcounty	1852	Bireere	2014	\N	district	3	\N
2633	subcounty	1853	Nyamuyanja	2014	\N	district	3	\N
2634	subcounty	1854	Kabingo	2014	\N	district	3	\N
2635	subcounty	1855	Nyakitunda	2014	\N	district	3	\N
2636	subcounty	1856	Isingiro town council	2014	\N	district	3	\N
2637	subcounty	1857	Kikagate	2014	\N	district	3	\N
2638	subcounty	1858	Kabuyanda	2014	\N	district	3	\N
2639	subcounty	1859	Kabuyanda town council	2014	\N	district	3	\N
2640	subcounty	1860	Ruborogota	2014	\N	district	3	\N
2641	subcounty	1861	Bugembe town council	2014	\N	district	31	\N
2642	subcounty	1862	Busedde	2014	\N	district	31	\N
2643	subcounty	1863	Kakira town council	2014	\N	district	31	\N
2644	subcounty	1864	Mafubira	2014	\N	district	31	\N
2645	subcounty	1865	Jinja central division	2014	\N	district	31	\N
2646	subcounty	1866	Budondo	2014	\N	district	31	\N
2647	subcounty	1867	Butagaya	2014	\N	district	31	\N
2648	subcounty	1868	Buwenge	2014	\N	district	31	\N
2649	subcounty	1869	Buwenge town council	2014	\N	district	31	\N
2650	subcounty	1870	Kimaka/mpumudde/ nalufenya division	2014	\N	district	31	\N
2651	subcounty	1871	Masese/walukuba division	2014	\N	district	31	\N
2652	subcounty	1872	Kaabong  east	2014	\N	district	52	\N
2653	subcounty	1873	Kaabong town council	2014	\N	district	52	\N
2654	subcounty	1874	Kaabong west	2014	\N	district	52	\N
2655	subcounty	1875	Kalapata	2014	\N	district	52	\N
2656	subcounty	1876	Kamion	2014	\N	district	52	\N
2657	subcounty	1877	Kapedo	2014	\N	district	52	\N
2658	subcounty	1878	Kathile	2014	\N	district	52	\N
2659	subcounty	1879	Kawalakol	2014	\N	district	52	\N
2660	subcounty	1880	Lobalangit	2014	\N	district	52	\N
2661	subcounty	1881	Lodiko	2014	\N	district	52	\N
2662	subcounty	1882	Lolelia	2014	\N	district	52	\N
2663	subcounty	1883	Loyoro	2014	\N	district	52	\N
2664	subcounty	1884	Napore (karenga)	2014	\N	district	52	\N
2665	subcounty	1885	Sidok	2014	\N	district	52	\N
2666	subcounty	1886	Central division	2014	\N	district	56	\N
2667	subcounty	1887	Kashambya	2014	\N	district	56	\N
2668	subcounty	1888	Hamurwa	2014	\N	district	56	\N
2669	subcounty	1889	Ruhija	2014	\N	district	56	\N
2670	subcounty	1890	Ikumba	2014	\N	district	56	\N
2671	subcounty	1891	Muko	2014	\N	district	56	\N
2672	subcounty	1892	Hamurwa town council	2014	\N	district	56	\N
2673	subcounty	1893	Kamwezi	2014	\N	district	56	\N
2674	subcounty	1894	Bukinda	2014	\N	district	56	\N
2675	subcounty	1895	Muhanga town council	2014	\N	district	56	\N
2676	subcounty	1896	Rwamucucu	2014	\N	district	56	\N
2677	subcounty	1897	Kaharo	2014	\N	district	56	\N
2678	subcounty	1898	Maziba	2014	\N	district	56	\N
2679	subcounty	1899	Nyamweru	2014	\N	district	56	\N
2680	subcounty	1900	Bubaare	2014	\N	district	56	\N
2681	subcounty	1901	Northern division	2014	\N	district	56	\N
2682	subcounty	1902	Southern division	2014	\N	district	56	\N
2683	subcounty	1903	Kitumba	2014	\N	district	56	\N
2684	subcounty	1904	Bufundi	2014	\N	district	56	\N
2685	subcounty	1905	Butanda	2014	\N	district	56	\N
2686	subcounty	1906	Rubaya	2014	\N	district	56	\N
2687	subcounty	1907	Katuna town council	2014	\N	district	56	\N
2688	subcounty	1908	Buhara	2014	\N	district	56	\N
2689	subcounty	1909	Kamuganguzi	2014	\N	district	56	\N
2690	subcounty	1910	Kyanamira	2014	\N	district	56	\N
2691	subcounty	1911	Karangura	2014	\N	district	57	\N
2692	subcounty	1912	Hakibale	2014	\N	district	57	\N
2693	subcounty	1913	Busoro	2014	\N	district	57	\N
2694	subcounty	1914	Karago town council	2014	\N	district	57	\N
2695	subcounty	1915	Bukuuku	2014	\N	district	57	\N
2696	subcounty	1916	Mugusu	2014	\N	district	57	\N
2697	subcounty	1917	Karambi	2014	\N	district	57	\N
2698	subcounty	1918	Southern division	2014	\N	district	57	\N
2699	subcounty	1919	Ruteete	2014	\N	district	57	\N
2700	subcounty	1920	Kasenda	2014	\N	district	57	\N
2701	subcounty	1921	Buheesi	2014	\N	district	57	\N
2702	subcounty	1922	Rubona town council	2014	\N	district	57	\N
2703	subcounty	1923	Kateebwa	2014	\N	district	57	\N
2704	subcounty	1924	Kisomoro	2014	\N	district	57	\N
2705	subcounty	1925	Kibiito town council	2014	\N	district	57	\N
2706	subcounty	1926	Kibiito	2014	\N	district	57	\N
2707	subcounty	1927	Rwimi	2014	\N	district	57	\N
2708	subcounty	1928	Rwimi town council	2014	\N	district	57	\N
2709	subcounty	1929	Kabonero	2014	\N	district	57	\N
2710	subcounty	1930	Kyaitamba town council	2014	\N	district	57	\N
2711	subcounty	1931	Eastern division	2014	\N	district	57	\N
2712	subcounty	1932	Western division	2014	\N	district	57	\N
2713	subcounty	1933	Kicwamba	2014	\N	district	57	\N
2714	subcounty	1934	Aperikira	2014	\N	district	35	\N
2715	subcounty	1935	Kaberamaido	2014	\N	district	35	\N
2716	subcounty	1936	Kaberamaido town council	2014	\N	district	35	\N
2717	subcounty	1937	Kobulubulu	2014	\N	district	35	\N
2718	subcounty	1938	Ochero	2014	\N	district	35	\N
2719	subcounty	1939	Apapai	2014	\N	district	35	\N
2720	subcounty	1940	Bululu	2014	\N	district	35	\N
2721	subcounty	1941	Kakure	2014	\N	district	35	\N
2722	subcounty	1942	Kalaki	2014	\N	district	35	\N
2723	subcounty	1943	Otuboi	2014	\N	district	35	\N
2724	subcounty	1944	Bujumba	2014	\N	district	1	\N
2725	subcounty	1945	Kalangala town council	2014	\N	district	1	\N
2726	subcounty	1946	Mugoye	2014	\N	district	1	\N
2727	subcounty	1947	Bubeke	2014	\N	district	1	\N
2728	subcounty	1948	Bufumira	2014	\N	district	1	\N
2729	subcounty	1949	Kyamuswa	2014	\N	district	1	\N
2730	subcounty	1950	Mazinga	2014	\N	district	1	\N
2731	subcounty	1951	Bukhalu	2014	\N	district	92	\N
2732	subcounty	1952	Bulaago	2014	\N	district	92	\N
2733	subcounty	1953	Namisuni	2014	\N	district	92	\N
2734	subcounty	1954	Buluganya	2014	\N	district	92	\N
2735	subcounty	1955	Bumasobo	2014	\N	district	92	\N
2736	subcounty	1956	Bunambutye	2014	\N	district	92	\N
2737	subcounty	1957	Bwikhonge	2014	\N	district	92	\N
2738	subcounty	1958	Lusha	2014	\N	district	92	\N
2739	subcounty	1959	Masiira	2014	\N	district	92	\N
2740	subcounty	1960	Nabongo	2014	\N	district	92	\N
2741	subcounty	1961	Sisiyi	2014	\N	district	92	\N
2742	subcounty	1962	Bumugibole	2014	\N	district	92	\N
2743	subcounty	1963	Buginyanya	2014	\N	district	92	\N
2744	subcounty	1964	Lyama	2014	\N	district	112	\N
2745	subcounty	1965	Nansanga	2014	\N	district	112	\N
2746	subcounty	1966	Budaka town council	2014	\N	district	112	\N
2747	subcounty	1967	Budaka	2014	\N	district	112	\N
2748	subcounty	1968	Naboa	2014	\N	district	112	\N
2749	subcounty	1969	Kaderuna	2014	\N	district	112	\N
2750	subcounty	1970	Iki-iki	2014	\N	district	112	\N
2751	subcounty	1971	Kameruka	2014	\N	district	112	\N
2752	subcounty	1972	Kachomo	2014	\N	district	112	\N
2753	subcounty	1973	Kamonkoli	2014	\N	district	112	\N
2754	subcounty	1974	Mugiti	2014	\N	district	112	\N
2755	subcounty	1975	Katiira	2014	\N	district	112	\N
2756	subcounty	1976	Bukalasi	2014	\N	district	37	\N
2757	subcounty	1977	Bukibokolo	2014	\N	district	37	\N
2758	subcounty	1978	Bukigai	2014	\N	district	37	\N
2759	subcounty	1979	Bulukecheke	2014	\N	district	37	\N
2760	subcounty	1980	Bumasheti	2014	\N	district	37	\N
2761	subcounty	1981	Bumayoka	2014	\N	district	37	\N
2762	subcounty	1982	Bushika	2014	\N	district	37	\N
2763	subcounty	1983	Bushiyi	2014	\N	district	37	\N
2764	subcounty	1984	Bushiribo	2014	\N	district	37	\N
2765	subcounty	1985	Buwali	2014	\N	district	37	\N
2766	subcounty	1986	Nabweya	2014	\N	district	37	\N
2767	subcounty	1987	Nakatsi	2014	\N	district	37	\N
2768	subcounty	1988	Nalwanza	2014	\N	district	37	\N
2769	subcounty	1989	Bududa	2014	\N	district	37	\N
2770	subcounty	1990	Bududa town council	2014	\N	district	37	\N
2771	subcounty	1991	Bubiita	2014	\N	district	37	\N
2772	subcounty	1992	Buluguyi	2014	\N	district	81	\N
2773	subcounty	1993	Muterere	2014	\N	district	81	\N
2774	subcounty	1994	Nabukalu	2014	\N	district	81	\N
2775	subcounty	1995	Nankoma	2014	\N	district	81	\N
2776	subcounty	1996	Bulidha	2014	\N	district	81	\N
2777	subcounty	1997	Bulesa	2014	\N	district	81	\N
2778	subcounty	1998	Kapyanga	2014	\N	district	81	\N
2779	subcounty	1999	Buwunga	2014	\N	district	81	\N
2780	subcounty	2000	Bugiri town council	2014	\N	district	81	\N
2781	subcounty	2001	Iwemba	2014	\N	district	81	\N
2782	subcounty	2002	Burere	2014	\N	district	100	\N
2783	subcounty	2003	Engaju	2014	\N	district	100	\N
2784	subcounty	2004	Karungu	2014	\N	district	100	\N
2785	subcounty	2005	Nyakishana	2014	\N	district	100	\N
2786	subcounty	2006	Nsiika town council	2014	\N	district	100	\N
2787	subcounty	2007	Bitsya	2014	\N	district	100	\N
2788	subcounty	2008	Bihanga	2014	\N	district	100	\N
2789	subcounty	2009	Rwengwe	2014	\N	district	100	\N
2790	subcounty	2010	Buikwe town council	2014	\N	district	80	\N
2791	subcounty	2011	Kawolo	2014	\N	district	80	\N
2792	subcounty	2012	Lugazi town council	2014	\N	district	80	\N
2793	subcounty	2013	Najjembe	2014	\N	district	80	\N
2794	subcounty	2014	Njeru town council	2014	\N	district	80	\N
2795	subcounty	2015	Nkokonjeru town council	2014	\N	district	80	\N
2796	subcounty	2016	Wakisi	2014	\N	district	80	\N
2797	subcounty	2017	Bukedea	2014	\N	district	38	\N
2798	subcounty	2018	Bukedea town council	2014	\N	district	38	\N
2799	subcounty	2019	Kachumbala	2014	\N	district	38	\N
2800	subcounty	2020	Kidongole	2014	\N	district	38	\N
2801	subcounty	2021	Kolir	2014	\N	district	38	\N
2802	subcounty	2022	Malera	2014	\N	district	38	\N
2803	subcounty	2023	Bigasa	2014	\N	district	16	\N
2804	subcounty	2024	Bukomasimbi town council	2014	\N	district	16	\N
2805	subcounty	2025	Butenga	2014	\N	district	16	\N
2806	subcounty	2026	Kibinge	2014	\N	district	16	\N
2807	subcounty	2027	Kitanda	2014	\N	district	16	\N
2808	subcounty	2028	Bukwo	2014	\N	district	39	\N
2809	subcounty	2029	Bukwo town council	2014	\N	district	39	\N
2810	subcounty	2030	Chepkwasta	2014	\N	district	39	\N
2811	subcounty	2031	Kaptererwo	2014	\N	district	39	\N
2812	subcounty	2032	Kortek	2014	\N	district	39	\N
2813	subcounty	2033	Riwo	2014	\N	district	39	\N
2814	subcounty	2034	Senendet	2014	\N	district	39	\N
2815	subcounty	2035	Tulel	2014	\N	district	39	\N
2816	subcounty	2036	Kamet	2014	\N	district	39	\N
2817	subcounty	2037	Kabei	2014	\N	district	39	\N
2818	subcounty	2038	Suam	2014	\N	district	39	\N
2819	subcounty	2039	Biiso	2014	\N	district	66	\N
2820	subcounty	2040	Buliisa	2014	\N	district	66	\N
2821	subcounty	2041	Buliisa town council	2014	\N	district	66	\N
2822	subcounty	2042	Butiaba	2014	\N	district	66	\N
2823	subcounty	2043	Kigwera	2014	\N	district	66	\N
2824	subcounty	2044	Kihungya	2014	\N	district	66	\N
2825	subcounty	2045	Ngwedo	2014	\N	district	66	\N
2826	subcounty	2046	Abim	2014	\N	district	49	\N
2827	subcounty	2047	Abim town council	2014	\N	district	49	\N
2828	subcounty	2048	Alerek	2014	\N	district	49	\N
2829	subcounty	2049	Lotukei	2014	\N	district	49	\N
2830	subcounty	2050	Morulem	2014	\N	district	49	\N
2831	subcounty	2051	Arinyapi	2014	\N	district	44	\N
2832	subcounty	2052	Okusijoni	2014	\N	district	44	\N
2833	subcounty	2053	Dzaipi	2014	\N	district	44	\N
2834	subcounty	2054	Adropi	2014	\N	district	44	\N
2835	subcounty	2055	Adjumani town council	2014	\N	district	44	\N
2836	subcounty	2056	Itirikwa	2014	\N	district	44	\N
2837	subcounty	2057	Pakele	2014	\N	district	44	\N
2838	subcounty	2058	Ofua	2014	\N	district	44	\N
2839	subcounty	2059	Agago town council	2014	\N	district	10	\N
2840	subcounty	2060	Arum	2014	\N	district	10	\N
2841	subcounty	2061	Kalongo town council	2014	\N	district	10	\N
2842	subcounty	2062	Kotomol	2014	\N	district	10	\N
2843	subcounty	2063	Lamiyo	2014	\N	district	10	\N
2844	subcounty	2064	Lapono	2014	\N	district	10	\N
2845	subcounty	2065	Lira palwo	2014	\N	district	10	\N
2846	subcounty	2066	Lokole	2014	\N	district	10	\N
2847	subcounty	2067	Omiya pacwa	2014	\N	district	10	\N
2848	subcounty	2068	Omot	2014	\N	district	10	\N
2849	subcounty	2069	Paimol	2014	\N	district	10	\N
2850	subcounty	2070	Parabong	2014	\N	district	10	\N
2851	subcounty	2071	Patongo	2014	\N	district	10	\N
2852	subcounty	2072	Patongo town council	2014	\N	district	10	\N
2853	subcounty	2073	Wol	2014	\N	district	10	\N
2854	subcounty	2074	Abia	2014	\N	district	7	\N
2855	subcounty	2075	Akura	2014	\N	district	7	\N
2856	subcounty	2076	Alebtong town council	2014	\N	district	7	\N
2857	subcounty	2077	Aloi	2014	\N	district	7	\N
2858	subcounty	2078	Amugu	2014	\N	district	7	\N
2859	subcounty	2079	Apala	2014	\N	district	7	\N
2860	subcounty	2080	Awei	2014	\N	district	7	\N
2861	subcounty	2081	Omoro	2014	\N	district	7	\N
2862	subcounty	2082	Agwingiri	2014	\N	district	50	\N
2863	subcounty	2083	Amolatar town council	2014	\N	district	50	\N
2864	subcounty	2084	Arwotcek	2014	\N	district	50	\N
2865	subcounty	2085	Awelo	2014	\N	district	50	\N
2866	subcounty	2086	Etam	2014	\N	district	50	\N
2867	subcounty	2087	Muntu	2014	\N	district	50	\N
2868	subcounty	2088	Akwon	2014	\N	district	50	\N
2869	subcounty	2089	Agikdak	2014	\N	district	50	\N
2870	subcounty	2090	Aputi	2014	\N	district	50	\N
2871	subcounty	2091	Karita	2014	\N	district	110	\N
2872	subcounty	2092	Loroo	2014	\N	district	110	\N
2873	subcounty	2093	Amudat	2014	\N	district	110	\N
2874	subcounty	2094	Amudat town council	2014	\N	district	110	\N
2875	subcounty	2095	Abarilela	2014	\N	district	36	\N
2876	subcounty	2096	Akeriau	2014	\N	district	36	\N
2877	subcounty	2097	Apeduru	2014	\N	district	36	\N
2878	subcounty	2098	Asamuk	2014	\N	district	36	\N
2879	subcounty	2099	Kuju	2014	\N	district	36	\N
2880	subcounty	2100	Morungatuny	2014	\N	district	36	\N
2881	subcounty	2101	Ogolai	2014	\N	district	36	\N
2882	subcounty	2102	Orungo	2014	\N	district	36	\N
2883	subcounty	2103	Wera	2014	\N	district	36	\N
2884	subcounty	2104	Willa	2014	\N	district	36	\N
2885	subcounty	2105	Acowa	2014	\N	district	36	\N
2886	subcounty	2106	Akoromit	2014	\N	district	36	\N
2887	subcounty	2107	Obalanga	2014	\N	district	36	\N
2888	subcounty	2108	Okungur	2014	\N	district	36	\N
2889	subcounty	2109	Amuria town council	2014	\N	district	36	\N
2890	subcounty	2110	Amuru	2014	\N	district	9	\N
2891	subcounty	2111	Amuru town council	2014	\N	district	9	\N
2892	subcounty	2112	Atiak	2014	\N	district	9	\N
2893	subcounty	2113	Pabo	2014	\N	district	9	\N
2894	subcounty	2114	Chawente	2014	\N	district	12	\N
2895	subcounty	2115	Inomo	2014	\N	district	12	\N
2896	subcounty	2116	Chegere	2014	\N	district	12	\N
2897	subcounty	2117	Aduku	2014	\N	district	12	\N
2898	subcounty	2118	Aduku town council	2014	\N	district	12	\N
2899	subcounty	2119	Ibuje	2014	\N	district	12	\N
2900	subcounty	2120	Nambeiso	2014	\N	district	12	\N
2901	subcounty	2121	Apac	2014	\N	district	12	\N
2902	subcounty	2122	Apac town council	2014	\N	district	12	\N
2903	subcounty	2123	Arua hill	2014	\N	district	104	\N
2904	subcounty	2124	River oli	2014	\N	district	104	\N
2905	subcounty	2125	Adumi	2014	\N	district	104	\N
2906	subcounty	2126	Aroi	2014	\N	district	104	\N
2907	subcounty	2127	Ayivuni	2014	\N	district	104	\N
2908	subcounty	2128	Dadamu	2014	\N	district	104	\N
2909	subcounty	2129	Manibe	2014	\N	district	104	\N
2910	subcounty	2130	Oluko	2014	\N	district	104	\N
2911	subcounty	2131	Anyiribu	2014	\N	district	104	\N
2912	subcounty	2132	Logiri	2014	\N	district	104	\N
2913	subcounty	2133	Offaka	2014	\N	district	104	\N
2914	subcounty	2134	Ogoko	2014	\N	district	104	\N
2915	subcounty	2135	Okollo	2014	\N	district	104	\N
2916	subcounty	2136	Pawor	2014	\N	district	104	\N
2917	subcounty	2137	Rhino camp	2014	\N	district	104	\N
2918	subcounty	2138	Uleppi	2014	\N	district	104	\N
2919	subcounty	2139	Bileafe	2014	\N	district	104	\N
2920	subcounty	2140	Omugo	2014	\N	district	104	\N
2921	subcounty	2141	Udupi	2014	\N	district	104	\N
2922	subcounty	2142	Ajia	2014	\N	district	104	\N
2923	subcounty	2143	Arivu	2014	\N	district	104	\N
2924	subcounty	2144	Logiri	2014	\N	district	104	\N
2925	subcounty	2145	Vurra	2014	\N	district	104	\N
2926	subcounty	2146	Katrini	2014	\N	district	104	\N
2927	subcounty	2147	Uriama	2014	\N	district	104	\N
2928	subcounty	2148	Aii-vu	2014	\N	district	104	\N
2929	subcounty	2149	Bufumbo	2014	\N	district	33	\N
2930	subcounty	2150	Bukasakya	2014	\N	district	33	\N
2931	subcounty	2151	Bukhiende	2014	\N	district	33	\N
2932	subcounty	2152	Bukonde	2014	\N	district	33	\N
2933	subcounty	2153	Bumbobi	2014	\N	district	33	\N
2934	subcounty	2154	Bungokho	2014	\N	district	33	\N
2935	subcounty	2155	Bungokho mutoto	2014	\N	district	33	\N
2936	subcounty	2156	Busiu	2014	\N	district	33	\N
2937	subcounty	2157	Nakaloke	2014	\N	district	33	\N
2938	subcounty	2158	Nakaloke town council	2014	\N	district	33	\N
2939	subcounty	2159	Nyondo	2014	\N	district	33	\N
2940	subcounty	2160	Industrial division	2014	\N	district	33	\N
2941	subcounty	2161	Wanale division	2014	\N	district	33	\N
2942	subcounty	2162	Lwasso	2014	\N	district	33	\N
2943	subcounty	2163	Wanale	2014	\N	district	33	\N
2944	subcounty	2164	Northern division	2014	\N	district	33	\N
2945	subcounty	2165	Bukiro	2014	\N	district	61	\N
2946	subcounty	2166	Kagongi	2014	\N	district	61	\N
2947	subcounty	2167	Kakiika division	2014	\N	district	61	\N
2948	subcounty	2168	Kashare	2014	\N	district	61	\N
2949	subcounty	2169	Rubaya	2014	\N	district	61	\N
2950	subcounty	2170	Rubindi	2014	\N	district	61	\N
2951	subcounty	2171	Rwanyamahembe	2014	\N	district	61	\N
2952	subcounty	2172	Kakoba division	2014	\N	district	61	\N
2953	subcounty	2173	Kamukuzi division	2014	\N	district	61	\N
2954	subcounty	2174	Nyamitanga division	2014	\N	district	61	\N
2955	subcounty	2175	Bugamba	2014	\N	district	61	\N
2956	subcounty	2176	Mwizi	2014	\N	district	61	\N
2957	subcounty	2177	Ndeija	2014	\N	district	61	\N
2958	subcounty	2178	Rugando	2014	\N	district	61	\N
2959	subcounty	2179	Bubaare	2014	\N	district	61	\N
2960	subcounty	2180	Biharwe division	2014	\N	district	61	\N
2961	subcounty	2181	Rwanyamahembe	2014	\N	district	61	\N
2962	subcounty	2182	Bitereko	2014	\N	district	102	\N
2963	subcounty	2183	Kabira	2014	\N	district	102	\N
2964	subcounty	2184	Kanyabwanga	2014	\N	district	102	\N
2965	subcounty	2185	Kashenshero	2014	\N	district	102	\N
2966	subcounty	2186	Kashenshero town council	2014	\N	district	102	\N
2967	subcounty	2187	Katenga	2014	\N	district	102	\N
2968	subcounty	2188	Kiyanga	2014	\N	district	102	\N
2969	subcounty	2189	Mayanga	2014	\N	district	102	\N
2970	subcounty	2190	Mitooma	2014	\N	district	102	\N
2971	subcounty	2191	Mitooma town council	2014	\N	district	102	\N
2972	subcounty	2192	Mutara	2014	\N	district	102	\N
2973	subcounty	2193	Rurehe	2014	\N	district	102	\N
2974	subcounty	2194	Ssekanyonyi	2014	\N	district	29	\N
2975	subcounty	2195	Busimbi	2014	\N	district	29	\N
2976	subcounty	2196	Bulera	2014	\N	district	29	\N
2977	subcounty	2197	Malangala	2014	\N	district	29	\N
2978	subcounty	2198	Maanyi	2014	\N	district	29	\N
2979	subcounty	2199	Banda	2014	\N	district	29	\N
2980	subcounty	2200	Kakindu	2014	\N	district	29	\N
2981	subcounty	2201	Butayunja	2014	\N	district	29	\N
2982	subcounty	2202	Namungo	2014	\N	district	29	\N
2983	subcounty	2203	Mityana town council	2014	\N	district	29	\N
2984	subcounty	2204	Kalangalo	2014	\N	district	29	\N
2985	subcounty	2205	Kikandwa	2014	\N	district	29	\N
2986	subcounty	2206	Katikekile	2014	\N	district	93	\N
2987	subcounty	2207	Nadunget	2014	\N	district	93	\N
2988	subcounty	2208	Tapac	2014	\N	district	93	\N
2989	subcounty	2209	Northern division	2014	\N	district	93	\N
2990	subcounty	2210	Southern division	2014	\N	district	93	\N
2991	subcounty	2211	Aliba	2014	\N	district	47	\N
2992	subcounty	2212	Gimara	2014	\N	district	47	\N
2993	subcounty	2213	Itula	2014	\N	district	47	\N
2994	subcounty	2214	Difule	2014	\N	district	47	\N
2995	subcounty	2215	Lefori	2014	\N	district	47	\N
2996	subcounty	2216	Metu	2014	\N	district	47	\N
2997	subcounty	2217	Moyo	2014	\N	district	47	\N
2998	subcounty	2218	Moyo town council	2014	\N	district	47	\N
2999	subcounty	2219	Buwama	2014	\N	district	68	\N
3000	subcounty	2220	Kammengo	2014	\N	district	68	\N
3001	subcounty	2221	Kiringente	2014	\N	district	68	\N
3002	subcounty	2222	Kituntu	2014	\N	district	68	\N
3003	subcounty	2223	Mpigi town council	2014	\N	district	68	\N
3004	subcounty	2224	Muduuma	2014	\N	district	68	\N
3005	subcounty	2225	Nkozi	2014	\N	district	68	\N
3006	subcounty	2226	Kitenga	2014	\N	district	22	\N
3007	subcounty	2227	Kiyuni	2014	\N	district	22	\N
3008	subcounty	2228	Madudu	2014	\N	district	22	\N
3009	subcounty	2229	Mubende town council	2014	\N	district	22	\N
3010	subcounty	2230	Bagezza	2014	\N	district	22	\N
3011	subcounty	2231	Kasambya	2014	\N	district	22	\N
3012	subcounty	2232	Kibalinga	2014	\N	district	22	\N
3013	subcounty	2233	Kigando	2014	\N	district	22	\N
3014	subcounty	2234	Nabingoola	2014	\N	district	22	\N
3015	subcounty	2235	Bukuya	2014	\N	district	22	\N
3016	subcounty	2236	Kalwana	2014	\N	district	22	\N
3017	subcounty	2237	Kassanda	2014	\N	district	22	\N
3018	subcounty	2238	Kiganda	2014	\N	district	22	\N
3019	subcounty	2239	Kitumbi	2014	\N	district	22	\N
3020	subcounty	2240	Makokoto	2014	\N	district	22	\N
3021	subcounty	2241	Manyogaseka	2014	\N	district	22	\N
3022	subcounty	2242	Myanzi	2014	\N	district	22	\N
3023	subcounty	2243	Nalutuntu	2014	\N	district	22	\N
3024	subcounty	2244	Koome	2014	\N	district	79	\N
3025	subcounty	2245	Kyampisi	2014	\N	district	79	\N
3026	subcounty	2246	Mpatta	2014	\N	district	79	\N
3027	subcounty	2247	Mpunge	2014	\N	district	79	\N
3028	subcounty	2248	Nakisunga	2014	\N	district	79	\N
3029	subcounty	2249	Nama	2014	\N	district	79	\N
3030	subcounty	2250	Ntenjeru	2014	\N	district	79	\N
3031	subcounty	2251	Central division	2014	\N	district	79	\N
3032	subcounty	2252	Kasawo	2014	\N	district	79	\N
3033	subcounty	2253	Kimenyedde	2014	\N	district	79	\N
3034	subcounty	2254	Nabbaale	2014	\N	district	79	\N
3035	subcounty	2255	Nagojje	2014	\N	district	79	\N
3036	subcounty	2256	Ntunda	2014	\N	district	79	\N
3037	subcounty	2257	Seeta-namuganga	2014	\N	district	79	\N
3038	subcounty	2258	Goma division	2014	\N	district	79	\N
3039	subcounty	2259	Loregae	2014	\N	district	111	\N
3040	subcounty	2260	Nakapiripirit town council	2014	\N	district	111	\N
3041	subcounty	2261	Namalu	2014	\N	district	111	\N
3042	subcounty	2262	Kakomongole	2014	\N	district	111	\N
3043	subcounty	2263	Lolachat	2014	\N	district	111	\N
3044	subcounty	2264	Lorengedwat	2014	\N	district	111	\N
3045	subcounty	2265	Nabilatuk	2014	\N	district	111	\N
3046	subcounty	2266	Butalangu town council	2014	\N	district	30	\N
3047	subcounty	2267	Kapeeka	2014	\N	district	30	\N
3048	subcounty	2268	Kasangombe	2014	\N	district	30	\N
3049	subcounty	2269	Kikamulo	2014	\N	district	30	\N
3050	subcounty	2270	Kinoni	2014	\N	district	30	\N
3051	subcounty	2271	Kinyogoga	2014	\N	district	30	\N
3052	subcounty	2272	Kito	2014	\N	district	30	\N
3053	subcounty	2273	Kiwoko town council	2014	\N	district	30	\N
3054	subcounty	2274	Nakaseke	2014	\N	district	30	\N
3055	subcounty	2275	Nakaseke town council	2014	\N	district	30	\N
3056	subcounty	2276	Ngoma	2014	\N	district	30	\N
3057	subcounty	2277	Ngoma town council	2014	\N	district	30	\N
3058	subcounty	2278	Semuto	2014	\N	district	30	\N
3059	subcounty	2279	Semuto town council	2014	\N	district	30	\N
3060	subcounty	2280	Wakyato	2014	\N	district	30	\N
3061	subcounty	2281	Migeera town council	2014	\N	district	23	\N
65	district	49	Abim	2014	2346	region	116	\N
69	district	7	Alebtong	2014	1535	region	116	\N
57	district	104	Arua	2014	4343	region	116	\N
113	district	81	Bugiri	2014	1038	region	115	\N
106	district	100	Buhweju	2014	748	region	117	\N
60	district	66	Buliisa	2014	1108	region	117	\N
20	district	74	Buvuma	2014	293	region	114	\N
49	district	72	Iganga	2014	1017	region	115	\N
85	district	56	Kabale	2014	1680	region	117	\N
17	district	64	Kamwenge	2014	2340	region	117	\N
58	district	59	Kibaale	2014	4242	region	117	\N
68	district	14	Kitgum	2014	3998	region	116	\N
36	district	70	Kyegegwa	2014	1747	region	117	\N
89	district	42	Manafwa	2014	533	region	115	\N
78	district	61	Mbarara	2014	1781	region	117	\N
53	district	68	Mpigi	2014	1202	region	114	\N
111	district	23	Nakasongola	2014	3303	region	114	\N
11	district	82	Namayingo	2014	585	region	115	\N
28	district	62	Ntungamo	2014	2048	region	117	\N
103	district	24	Rakai	2014	3245	region	114	\N
98	district	88	Soroti	2014	1366	region	115	\N
117	region	117	Western Uganda	2014	55277	country	UG	\N
\.


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ug
--

SELECT pg_catalog.setval('wazimap_geography_id_seq', 3895, true);


--
-- Name: wazimap_geography wazimap_geography_geo_level_9a5128d2_uniq; Type: CONSTRAINT; Schema: public; Owner: hurumap_ug
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_9a5128d2_uniq UNIQUE (geo_level, geo_code);


--
-- Name: wazimap_geography wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ug
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);


--
-- Name: wazimap_geography_2fc6351a; Type: INDEX; Schema: public; Owner: hurumap_ug
--

CREATE INDEX wazimap_geography_2fc6351a ON wazimap_geography USING btree (long_name);


--
-- Name: wazimap_geography_84cdc76c; Type: INDEX; Schema: public; Owner: hurumap_ug
--

CREATE INDEX wazimap_geography_84cdc76c ON wazimap_geography USING btree (version);


--
-- Name: wazimap_geography_b068931c; Type: INDEX; Schema: public; Owner: hurumap_ug
--

CREATE INDEX wazimap_geography_b068931c ON wazimap_geography USING btree (name);


--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: hurumap_ug
--

CREATE INDEX wazimap_geography_name_36b79089_like ON wazimap_geography USING btree (name varchar_pattern_ops);


--
-- PostgreSQL database dump complete
--

