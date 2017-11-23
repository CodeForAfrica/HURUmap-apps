--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.8
-- Dumped by pg_dump version 9.5.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS public.wazimap_geography_version_01953818_like;
DROP INDEX IF EXISTS public.wazimap_geography_name_36b79089_like;
DROP INDEX IF EXISTS public.wazimap_geography_long_name_9b8409f5_like;
DROP INDEX IF EXISTS public.wazimap_geography_b068931c;
DROP INDEX IF EXISTS public.wazimap_geography_2fc6351a;
DROP INDEX IF EXISTS public.wazimap_geography_2af72f10;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_pkey;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_bbe3c9fc_uniq;
ALTER TABLE IF EXISTS public.wazimap_geography ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.wazimap_geography_id_seq;
DROP TABLE IF EXISTS public.wazimap_geography;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wazimap_geography; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wazimap_geography (
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

CREATE SEQUENCE wazimap_geography_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wazimap_geography_id_seq OWNED BY wazimap_geography.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wazimap_geography ALTER COLUMN id SET DEFAULT nextval('wazimap_geography_id_seq'::regclass);


--
-- Data for Name: wazimap_geography; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wazimap_geography (id, geo_level, geo_code, name, square_kms, parent_level, parent_code, long_name, version) FROM stdin;
1	region	1	Arusha	34516	country	TZ	Arusha	2009
2	region	2	Dar es salaam	1393	country	TZ	Dar es salaam	2009
3	region	3	Dodoma	41311	country	TZ	Dodoma	2009
4	region	4	Geita	20054	country	TZ	Geita	2009
5	region	5	Iringa	58936	country	TZ	Iringa	2009
6	region	6	Kagera	39627	country	TZ	Kagera	2009
7	region	7	Kaskazini pemba	574	country	TZ	Kaskazini pemba	2009
8	region	8	Kaskazini unguja	470	country	TZ	Kaskazini unguja	2009
9	region	9	Katavi	45843	country	TZ	Katavi	2009
10	region	10	Kigoma	45066	country	TZ	Kigoma	2009
11	region	11	Kilimanjaro	13209	country	TZ	Kilimanjaro	2009
12	region	12	Kusini pemba	332	country	TZ	Kusini pemba	2009
13	region	13	Kusini unguja	854	country	TZ	Kusini unguja	2009
14	region	14	Lindi	67000	country	TZ	Lindi	2009
15	region	15	Manyara	47913	country	TZ	Manyara	2009
16	region	16	Mara	31150	country	TZ	Mara	2009
17	region	17	Mbeya	62420	country	TZ	Mbeya	2009
18	region	18	Morogoro	73139	country	TZ	Morogoro	2009
19	region	19	Mtwara	16707	country	TZ	Mtwara	2009
20	region	20	Mwanza	35187	country	TZ	Mwanza	2009
21	region	21	Njombe	21347	country	TZ	Njombe	2009
22	region	22	Pwani	32407	country	TZ	Pwani	2009
23	region	23	Rukwa	75240	country	TZ	Rukwa	2009
24	region	24	Ruvuma	66477	country	TZ	Ruvuma	2009
25	region	25	Shinyanga	40781	country	TZ	Shinyanga	2009
26	region	26	Simiyu	2380	country	TZ	Simiyu	2009
27	region	27	Singida	49437	country	TZ	Singida	2009
28	region	28	Tanga	27348	country	TZ	Tanga	2009
29	region	29	Tabora	76151	country	TZ	Tabora	2009
30	region	30	Mjini magharibi	230	country	TZ	Mjini magharibi	2009
31	district	22	Lushoto	3500	region	28	Lushoto	2009
32	district	23	Korogwe	3756	region	28	Korogwe	2009
33	district	24	Muheza	4818	region	28	Muheza	2009
34	district	25	Tanga	474	region	28	Tanga	2009
35	district	26	Pangani	1019	region	28	Pangani	2009
36	district	27	Handeni	6112	region	28	Handeni	2009
37	district	28	Kilindi	7091	region	28	Kilindi	2009
38	district	29	Mkinga	2711	region	28	Mkinga	2009
39	district	30	Korogwe urban	1323	region	28	Korogwe urban	2009
40	district	31	Handeni urban	7366	region	28	Handeni urban	2009
41	district	89	Nzega	6961	region	29	Nzega	2009
42	district	90	Igunga	6788	region	29	Igunga	2009
43	district	91	Uyui	0	region	29	Uyui	2009
44	district	92	Urambo	21299	region	29	Urambo	2009
45	district	93	Sikonge	21000	region	29	Sikonge	2009
46	district	94	Tabora urban	20104	region	29	Tabora urban	2009
47	district	95	Kaliua	0	region	29	Kaliua	2009
48	district	167	Chake chake	332	region	12	Chake chake	2009
49	district	168	Mkoani	0	region	12	Mkoani	2009
50	district	128	Tarime	3885	region	16	Tarime	2009
51	district	129	Serengeti	10942	region	16	Serengeti	2009
52	district	130	Musoma	1929	region	16	Musoma	2009
53	district	131	Bunda	2782	region	16	Bunda	2009
54	district	132	Rorya	0	region	16	Rorya	2009
55	district	133	Butiama	0	region	16	Butiama	2009
56	district	169	Musoma urban	28	region	16	Musoma urban	2009
57	district	134	Babati	4969	region	15	Babati	2009
58	district	135	Hanang	2918	region	15	Hanang	2009
59	district	136	Mbulu	3316	region	15	Mbulu	2009
60	district	137	Simanjiro	18851	region	15	Simanjiro	2009
61	district	138	Kiteto	16305	region	15	Kiteto	2009
62	district	139	Babati urban	0	region	15	Babati urban	2009
63	district	161	Kati	854	region	13	Kati	2009
64	district	162	Kusini	0	region	13	Kusini	2009
65	district	49	Kilwa	13920	region	14	Kilwa	2009
66	district	50	Lindi rural	0	region	14	Lindi rural	2009
67	district	51	Nachingwea	7070	region	14	Nachingwea	2009
68	district	52	Liwale	36084	region	14	Liwale	2009
69	district	53	Ruangwa	2080	region	14	Ruangwa	2009
70	district	54	Lindi urban	7846	region	14	Lindi urban	2009
71	district	96	Kalambo	0	region	23	Kalambo	2009
72	district	97	Sumbawanga rural	12836	region	23	Sumbawanga rural	2009
73	district	98	Nkasi	9375	region	23	Nkasi	2009
74	district	99	Sumbawanga urban	581	region	23	Sumbawanga urban	2009
75	district	55	Mtwara rural	3597	region	19	Mtwara rural	2009
76	district	56	Newala	2126	region	19	Newala	2009
77	district	57	Masasi	8940	region	19	Masasi	2009
78	district	58	Tandahimba	1894	region	19	Tandahimba	2009
79	district	59	Mtwara urban	163	region	19	Mtwara urban	2009
80	district	60	Nanyumbu	0	region	19	Nanyumbu	2009
81	district	61	Masasi urban	0	region	19	Masasi urban	2009
82	district	46	Kinondoni	527	region	2	Kinondoni	2009
83	district	47	Ilala	210	region	2	Ilala	2009
84	district	48	Temeke	656	region	2	Temeke	2009
85	district	163	Magharibi	0	region	30	Magharibi	2009
86	district	164	Mjini	230	region	30	Mjini	2009
87	district	108	Shinyanga urban	548	region	25	Shinyanga urban	2009
88	district	109	Kishapu	4334	region	25	Kishapu	2009
89	district	110	Shinyanga rural	4212	region	25	Shinyanga rural	2009
90	district	111	Kahama	9461	region	25	Kahama	2009
91	district	112	Kahama urban	0	region	25	Kahama urban	2009
92	district	15	Rombo	1482	region	11	Rombo	2009
93	district	16	Mwanga	2170	region	11	Mwanga	2009
94	district	17	Same	5730	region	11	Same	2009
95	district	18	Moshi	1500	region	11	Moshi	2009
96	district	19	Hai	2369	region	11	Hai	2009
97	district	20	Moshi urban	58	region	11	Moshi urban	2009
98	district	21	Siha	0	region	11	Siha	2009
99	district	100	Kibondo	15722	region	10	Kibondo	2009
100	district	101	Kasulu	9128	region	10	Kasulu	2009
101	district	102	Kigoma rural	11545	region	10	Kigoma rural	2009
102	district	103	Kigoma urban	128	region	10	Kigoma urban	2009
103	district	104	Uvinza	0	region	10	Uvinza	2009
104	district	105	Buhigwe	0	region	10	Buhigwe	2009
105	district	106	Kakonko	0	region	10	Kakonko	2009
106	district	107	Kasulu urban	0	region	10	Kasulu urban	2009
107	district	1	Kondoa	13210	region	3	Kondoa	2009
108	district	2	Mpwapwa	7479	region	3	Mpwapwa	2009
109	district	3	Kongwa	4041	region	3	Kongwa	2009
110	district	4	Chamwino	0	region	3	Chamwino	2009
111	district	5	Dodoma urban	2576	region	3	Dodoma urban	2009
112	district	6	Bahi	0	region	3	Bahi	2009
113	district	7	Chemba	0	region	3	Chemba	2009
114	district	39	Bagamoyo	9842	region	22	Bagamoyo	2009
115	district	40	Kibaha	1812	region	22	Kibaha	2009
116	district	41	Kisarawe	4464	region	22	Kisarawe	2009
117	district	42	Mkuranga	2432	region	22	Mkuranga	2009
118	district	43	Rufiji	0	region	22	Rufiji	2009
119	district	44	Mafia	518	region	22	Mafia	2009
120	district	45	Kibaha urban	0	region	22	Kibaha urban	2009
121	district	32	Kilosa	14245	region	18	Kilosa	2009
122	district	33	Morogoro	11711	region	18	Morogoro	2009
123	district	34	Kilombero	13577	region	18	Kilombero	2009
124	district	35	Ulanga	23681	region	18	Ulanga	2009
125	district	36	Morogoro urban	260	region	18	Morogoro urban	2009
126	district	37	Mvomero	7325	region	18	Mvomero	2009
127	district	38	Gairo	0	region	18	Gairo	2009
128	district	159	Kaskazini a	470	region	8	Kaskazini a	2009
129	district	160	Kaskazini b	0	region	8	Kaskazini b	2009
130	district	165	Wete	574	region	7	Wete	2009
131	district	166	Micheweni	0	region	7	Micheweni	2009
132	district	83	Iramba	7900	region	27	Iramba	2009
133	district	84	Singida	12164	region	27	Singida	2009
134	district	85	Manyoni	28620	region	27	Manyoni	2009
135	district	86	Singida urban	657	region	27	Singida urban	2009
136	district	87	Ikungi	0	region	27	Ikungi	2009
137	district	88	Mkalama	0	region	27	Mkalama	2009
138	district	149	Bariadi	9777	region	26	Bariadi	2009
139	district	150	Itilima	0	region	26	Itilima	2009
140	district	151	Meatu	8871	region	26	Meatu	2009
141	district	152	Maswa	2736	region	26	Maswa	2009
142	district	153	Busega	0	region	26	Busega	2009
143	district	140	Njombe urban	0	region	21	Njombe urban	2009
144	district	141	Wanging'ombe	0	region	21	Wanging'ombe	2009
145	district	142	Makete	3178	region	21	Makete	2009
146	district	143	Njombe rural	9868	region	21	Njombe rural	2009
147	district	144	Ludewa	5597	region	21	Ludewa	2009
148	district	145	Makambako urban	0	region	21	Makambako urban	2009
149	district	121	Ukerewe	640	region	20	Ukerewe	2009
150	district	122	Magu	3070	region	20	Magu	2009
151	district	123	Nyamagana	425	region	20	Nyamagana	2009
152	district	124	Kwimba	3599	region	20	Kwimba	2009
153	district	125	Sengerema	3335	region	20	Sengerema	2009
154	district	126	Ilemela	895	region	20	Ilemela	2009
155	district	127	Misungwi	1947	region	20	Misungwi	2009
156	district	113	Karagwe	5450	region	6	Karagwe	2009
157	district	114	Bukoba rural	6993	region	6	Bukoba rural	2009
158	district	115	Muleba	2499	region	6	Muleba	2009
159	district	116	Biharamulo	8938	region	6	Biharamulo	2009
160	district	117	Ngara	4428	region	6	Ngara	2009
161	district	118	Bukoba urban	80	region	6	Bukoba urban	2009
162	district	119	Missenyi	0	region	6	Missenyi	2009
163	district	120	Kyerwa	0	region	6	Kyerwa	2009
164	district	8	Monduli	14070	region	1	Monduli	2009
165	district	9	Meru	6936	region	1	Meru	2009
166	district	10	Arusha urban	83	region	1	Arusha urban	2009
167	district	11	Karatu	3300	region	1	Karatu	2009
168	district	12	Ngorongoro	13460	region	1	Ngorongoro	2009
169	district	13	Arusha	0	region	1	Arusha	2009
170	district	14	Longido	0	region	1	Longido	2009
171	district	68	Iringa rural	19898	region	5	Iringa rural	2009
172	district	69	Mufindi	0	region	5	Mufindi	2009
173	district	70	Iringa urban	160	region	5	Iringa urban	2009
174	district	71	Kilolo	6804	region	5	Kilolo	2009
175	district	72	Mafinga urban	6177	region	5	Mafinga urban	2009
176	district	146	Mpanda urban	0	region	9	Mpanda urban	2009
177	district	147	Mpanda rural	45843	region	9	Mpanda rural	2009
178	district	148	Mlele	0	region	9	Mlele	2009
179	district	73	Chunya	27065	region	17	Chunya	2009
180	district	74	Mbeya rural	2334	region	17	Mbeya rural	2009
181	district	75	Kyela	791	region	17	Kyela	2009
182	district	76	Rungwe	0	region	17	Rungwe	2009
183	district	77	Ileje	0	region	17	Ileje	2009
184	district	78	Mbozi	9586	region	17	Mbozi	2009
185	district	79	Mbarali	16000	region	17	Mbarali	2009
186	district	80	Mbeya urban	185	region	17	Mbeya urban	2009
187	district	81	Momba	0	region	17	Momba	2009
188	district	82	Tunduma	0	region	17	Tunduma	2009
189	district	62	Tunduru	18778	region	24	Tunduru	2009
190	district	63	Songea rural	12164	region	24	Songea rural	2009
191	district	64	Mbinga	11396	region	24	Mbinga	2009
192	district	65	Songea urban	657	region	24	Songea urban	2009
193	district	66	Namtumbo	0	region	24	Namtumbo	2009
194	district	67	Nyasa	0	region	24	Nyasa	2009
195	district	154	Geita	5880	region	4	Geita	2009
196	district	155	Nyang'hwale	0	region	4	Nsyang'hwale	2009
197	district	156	Mbogwe	0	region	4	Mbogwe	2009
198	district	157	Bukombe	10842	region	4	Bukombe	2009
199	district	158	Chato	0	region	4	Chato	2009
200	country	TZ	Tanzania	945087	\N	\N	Tanzania	2009
201	ward	1	Bumbuta	190	district	1	Bumbuta	2009
202	ward	2	Pahi	110	district	1	Pahi	2009
203	ward	3	Haubi	150	district	1	Haubi	2009
204	ward	4	Kalamba	287	district	1	Kalamba	2009
205	ward	5	Kwadelo	313	district	1	Kwadelo	2009
206	ward	6	Masange	52	district	1	Masange	2009
207	ward	7	Kikilo	91	district	1	Kikilo	2009
208	ward	8	Bereko	65	district	1	Bereko	2009
209	ward	9	Kisese	207	district	1	Kisese	2009
210	ward	10	Kikore	168	district	1	Kikore	2009
211	ward	11	Serya	579	district	1	Serya	2009
212	ward	12	Kilimani	61	district	1	Kilimani	2009
213	ward	13	Chemchem	17	district	1	Chemchem	2009
214	ward	14	Hondo Mairo	197	district	1	Hondo Mairo	2009
215	ward	15	Bolisa	36	district	1	Bolisa	2009
216	ward	16	Kinyasi	125	district	1	Kinyasi	2009
217	ward	17	Salanka	70	district	1	Salanka	2009
218	ward	18	Itololo	93	district	1	Itololo	2009
219	ward	19	Itaswi	794	district	1	Itaswi	2009
220	ward	20	Suruke	74	district	1	Suruke	2009
221	ward	21	Kingale	534	district	1	Kingale	2009
222	ward	22	Kondoa Mjini	24	district	1	Kondoa Mjini	2009
223	ward	23	Kolo	103	district	1	Kolo	2009
224	ward	24	Changaa	252	district	1	Changaa	2009
225	ward	25	Thawi	198	district	1	Thawi	2009
226	ward	26	Mnenia	106	district	1	Mnenia	2009
227	ward	27	Soera	125	district	1	Soera	2009
228	ward	28	Mazae	123	district	2	Mazae	2009
229	ward	29	Vingh'Awe	84	district	2	Vingh'Awe	2009
230	ward	30	Matomondo	243	district	2	Matomondo	2009
231	ward	31	Kimagai	171	district	2	Kimagai	2009
232	ward	32	Kibakwe	156	district	2	Kibakwe	2009
233	ward	33	Lumuma	149	district	2	Lumuma	2009
234	ward	34	Luhundwa	244	district	2	Luhundwa	2009
235	ward	35	Massa	334	district	2	Massa	2009
236	ward	36	Ipera	422	district	2	Ipera	2009
237	ward	37	Rudi	746	district	2	Rudi	2009
238	ward	38	Mlunduzi	335	district	2	Mlunduzi	2009
239	ward	39	Wotta	332	district	2	Wotta	2009
240	ward	40	Mima	300	district	2	Mima	2009
241	ward	41	Berege	230	district	2	Berege	2009
242	ward	42	Chunyu	334	district	2	Chunyu	2009
243	ward	43	Mbuga	147	district	2	Mbuga	2009
244	ward	44	Godegode	279	district	2	Godegode	2009
245	ward	45	Mpwapwa	137	district	2	Mpwapwa	2009
246	ward	46	Lupeta	101	district	2	Lupeta	2009
247	ward	47	Gulwe	192	district	2	Gulwe	2009
248	ward	48	Nghambi	139	district	2	Nghambi	2009
249	ward	49	Chitemo	262	district	2	Chitemo	2009
250	ward	50	Iwondo	163	district	2	Iwondo	2009
251	ward	51	Kingiti	163	district	2	Kingiti	2009
252	ward	52	Lufu	163	district	2	Lufu	2009
253	ward	53	Pwaga	273	district	2	Pwaga	2009
254	ward	54	Galigali	186	district	2	Galigali	2009
255	ward	55	Mtera	557	district	2	Mtera	2009
256	ward	56	Chipogoro	271	district	2	Chipogoro	2009
257	ward	57	Malolo	323	district	2	Malolo	2009
258	ward	58	Kongwa	79	district	3	Kongwa	2009
259	ward	59	Sejeli	279	district	3	Sejeli	2009
260	ward	60	Hogoro	215	district	3	Hogoro	2009
261	ward	61	Zoissa	105	district	3	Zoissa	2009
262	ward	62	Mkoka	105	district	3	Mkoka	2009
263	ward	63	Njoge	156	district	3	Njoge	2009
264	ward	64	Mtanana	501	district	3	Mtanana	2009
265	ward	65	Pandambili	87	district	3	Pandambili	2009
266	ward	66	Mlali	121	district	3	Mlali	2009
267	ward	67	Iduo	82	district	3	Iduo	2009
268	ward	68	Sagara	249	district	3	Sagara	2009
269	ward	69	Kibaigwa	113	district	3	Kibaigwa	2009
270	ward	70	Ugogoni	166	district	3	Ugogoni	2009
271	ward	71	Chamkoroma	166	district	3	Chamkoroma	2009
272	ward	72	Makawa	165	district	3	Makawa	2009
273	ward	73	Chitego	300	district	3	Chitego	2009
274	ward	74	Matongoro	105	district	3	Matongoro	2009
275	ward	75	Ngomai	198	district	3	Ngomai	2009
276	ward	76	Songambele	176	district	3	Songambele	2009
277	ward	77	Chiwe	206	district	3	Chiwe	2009
278	ward	78	Lenjulu	272	district	3	Lenjulu	2009
279	ward	79	Nghumbi	157	district	3	Nghumbi	2009
280	ward	80	Haneti	703	district	4	Haneti	2009
281	ward	81	Segala	391	district	4	Segala	2009
282	ward	82	Itiso	557	district	4	Itiso	2009
283	ward	83	Dabalo	566	district	4	Dabalo	2009
284	ward	84	Membe	322	district	4	Membe	2009
285	ward	85	Msanga	158	district	4	Msanga	2009
286	ward	86	Chilonwa	115	district	4	Chilonwa	2009
287	ward	87	Buigiri	170	district	4	Buigiri	2009
288	ward	88	Majeleko	168	district	4	Majeleko	2009
289	ward	89	Manchali	92	district	4	Manchali	2009
290	ward	90	Ikowa	141	district	4	Ikowa	2009
291	ward	91	Msamalo	162	district	4	Msamalo	2009
292	ward	92	Igandu	237	district	4	Igandu	2009
293	ward	93	Muungano	107	district	4	Muungano	2009
294	ward	94	Mvumi Makulu	82	district	4	Mvumi Makulu	2009
295	ward	95	Handali	140	district	4	Handali	2009
296	ward	96	Mvumi Mission	83	district	4	Mvumi Mission	2009
297	ward	97	Idifu	157	district	4	Idifu	2009
298	ward	98	Makang'Wa	227	district	4	Makang'Wa	2009
299	ward	99	Iringamvumi	126	district	4	Iringamvumi	2009
300	ward	100	Manzase	330	district	4	Manzase	2009
301	ward	101	Fufu	234	district	4	Fufu	2009
302	ward	102	Mlowa Bwawani	212	district	4	Mlowa Bwawani	2009
303	ward	103	Mpwayungu	499	district	4	Mpwayungu	2009
304	ward	104	Nghambaku	693	district	4	Nghambaku	2009
305	ward	105	Chinugulu	449	district	4	Chinugulu	2009
306	ward	106	Manda	781	district	4	Manda	2009
307	ward	107	Huzi	346	district	4	Huzi	2009
308	ward	108	Loje	227	district	4	Loje	2009
309	ward	109	Chiboli	288	district	4	Chiboli	2009
310	ward	110	Nhinhi	137	district	4	Nhinhi	2009
311	ward	111	Zajilwa	345	district	4	Zajilwa	2009
312	ward	112	Viwandani	1	district	5	Viwandani	2009
313	ward	113	Uhuru	0	district	5	Uhuru	2009
314	ward	114	Chamwino	3	district	5	Chamwino	2009
315	ward	115	Kiwanja Cha Ndege	2	district	5	Kiwanja Cha Ndege	2009
316	ward	116	Makole	4	district	5	Makole	2009
317	ward	117	Miyuji	27	district	5	Miyuji	2009
318	ward	118	Msalato	65	district	5	Msalato	2009
319	ward	119	Makutupora	208	district	5	Makutupora	2009
320	ward	120	Chihanga	164	district	5	Chihanga	2009
321	ward	121	Hombolo	304	district	5	Hombolo	2009
322	ward	122	Ipala	84	district	5	Ipala	2009
323	ward	123	Nzuguni	146	district	5	Nzuguni	2009
324	ward	124	Dom-Makulu	31	district	5	Dom-Makulu	2009
325	ward	125	Mtumba	139	district	5	Mtumba	2009
326	ward	126	Kikombo	123	district	5	Kikombo	2009
327	ward	127	Ngh'Ongh'Onha	132	district	5	Ngh'Ongh'Onha	2009
328	ward	128	Mpunguzi	190	district	5	Mpunguzi	2009
329	ward	129	Tambukareli	4	district	5	Tambukareli	2009
330	ward	130	Kilimani	61	district	5	Kilimani	2009
331	ward	131	Kikuyu Kusini	3	district	5	Kikuyu Kusini	2009
332	ward	132	Kikuyu Kaskazini	5	district	5	Kikuyu Kaskazini	2009
333	ward	133	Mkonze	82	district	5	Mkonze	2009
334	ward	134	Mbabala	165	district	5	Mbabala	2009
335	ward	135	Zuzu	131	district	5	Zuzu	2009
336	ward	136	Hazina	9	district	5	Hazina	2009
337	ward	137	Madukani	0	district	5	Madukani	2009
338	ward	138	Majengo	1	district	5	Majengo	2009
339	ward	139	Kizota	51	district	5	Kizota	2009
340	ward	140	Nala	113	district	5	Nala	2009
341	ward	141	Mbalawala	134	district	5	Mbalawala	2009
342	ward	142	Ntyuka	47	district	5	Ntyuka	2009
343	ward	143	Chigongwe	122	district	5	Chigongwe	2009
344	ward	144	Chang'Ombe	3	district	5	Chang'Ombe	2009
345	ward	145	Iyumbu	38	district	5	Iyumbu	2009
346	ward	146	Chahwa	59	district	5	Chahwa	2009
347	ward	147	Mnadani	30	district	5	Mnadani	2009
348	ward	148	Ipagala	15	district	5	Ipagala	2009
349	ward	149	Makanda	305	district	6	Makanda	2009
350	ward	150	Lamaiti	327	district	6	Lamaiti	2009
351	ward	151	Babayu	292	district	6	Babayu	2009
352	ward	152	Zanka	334	district	6	Zanka	2009
353	ward	153	Msisi	300	district	6	Msisi	2009
354	ward	154	Mundemu	131	district	6	Mundemu	2009
355	ward	155	Bahi	246	district	6	Bahi	2009
356	ward	156	Mpamantwa	310	district	6	Mpamantwa	2009
357	ward	157	Ibihwa	211	district	6	Ibihwa	2009
358	ward	158	Ilindi	197	district	6	Ilindi	2009
359	ward	159	Kigwe	164	district	6	Kigwe	2009
360	ward	160	Chikola	366	district	6	Chikola	2009
361	ward	161	Chipanga	199	district	6	Chipanga	2009
362	ward	162	Chali	295	district	6	Chali	2009
363	ward	163	Nondwa	1015	district	6	Nondwa	2009
364	ward	164	Mpalanga	171	district	6	Mpalanga	2009
365	ward	165	Ibugule	218	district	6	Ibugule	2009
366	ward	166	Chibelela	117	district	6	Chibelela	2009
367	ward	167	Mwitikira	312	district	6	Mwitikira	2009
368	ward	168	Mtitaa	186	district	6	Mtitaa	2009
369	ward	169	Makorongo	414	district	7	Makorongo	2009
370	ward	170	Ovada	594	district	7	Ovada	2009
371	ward	171	Msaada	169	district	7	Msaada	2009
372	ward	172	Kimaha	227	district	7	Kimaha	2009
373	ward	173	Churuku	125	district	7	Churuku	2009
374	ward	174	Songoro	203	district	7	Songoro	2009
375	ward	175	Mondo	136	district	7	Mondo	2009
376	ward	176	Dalai	177	district	7	Dalai	2009
377	ward	177	Mrijo	175	district	7	Mrijo	2009
378	ward	178	Chandama	230	district	7	Chandama	2009
379	ward	179	Goima	291	district	7	Goima	2009
380	ward	180	Chemba	573	district	7	Chemba	2009
381	ward	181	Paranga	296	district	7	Paranga	2009
382	ward	182	Gwandi	666	district	7	Gwandi	2009
383	ward	183	Farkwa	575	district	7	Farkwa	2009
384	ward	184	Mpendo	368	district	7	Mpendo	2009
385	ward	185	Sanzawa	671	district	7	Sanzawa	2009
386	ward	186	Kwamtoro	515	district	7	Kwamtoro	2009
387	ward	187	Lalta	760	district	7	Lalta	2009
388	ward	188	Engaruka	659	district	8	Engaruka	2009
389	ward	189	Monduli Juu	975	district	8	Monduli Juu	2009
390	ward	190	Engutoto	32	district	8	Engutoto	2009
391	ward	191	Monduli Mjini	3	district	8	Monduli Mjini	2009
392	ward	192	Moita	259	district	8	Moita	2009
393	ward	193	Sepeko	587	district	8	Sepeko	2009
394	ward	194	Lolkisale	1127	district	8	Lolkisale	2009
395	ward	195	Makuyuni	409	district	8	Makuyuni	2009
396	ward	196	Esilalei	498	district	8	Esilalei	2009
397	ward	197	Mto Wa Mbu	25	district	8	Mto Wa Mbu	2009
398	ward	198	Lepurko	248	district	8	Lepurko	2009
399	ward	199	Meserani	653	district	8	Meserani	2009
400	ward	200	Mswakini	321	district	8	Mswakini	2009
401	ward	201	Majengo	1	district	8	Majengo	2009
402	ward	202	Ngarenanyuki	271	district	9	Ngarenanyuki	2009
403	ward	203	Leguruki	78	district	9	Leguruki	2009
404	ward	204	King'Ori	173	district	9	King'Ori	2009
405	ward	205	Maji Ya Chai	85	district	9	Maji Ya Chai	2009
406	ward	206	Kikatiti	59	district	9	Kikatiti	2009
407	ward	207	Maroroni	118	district	9	Maroroni	2009
408	ward	208	Makiba	115	district	9	Makiba	2009
409	ward	209	Mbuguni	59	district	9	Mbuguni	2009
410	ward	210	Kikwe	77	district	9	Kikwe	2009
411	ward	211	Usariver	28	district	9	Usariver	2009
412	ward	212	Nkoaranga	30	district	9	Nkoaranga	2009
413	ward	213	Poli	14	district	9	Poli	2009
414	ward	214	Seela Sing'Isi	12	district	9	Seela Sing'Isi	2009
415	ward	215	Akheri	18	district	9	Akheri	2009
416	ward	216	Nkoanrua	11	district	9	Nkoanrua	2009
417	ward	217	Songoro	203	district	9	Songoro	2009
418	ward	218	Nkoarisambu	8	district	9	Nkoarisambu	2009
419	ward	219	Kati	1	district	10	Kati	2009
420	ward	220	Kaloleni	1	district	10	Kaloleni	2009
421	ward	221	Sekei	3	district	10	Sekei	2009
422	ward	222	Kimandolu	5	district	10	Kimandolu	2009
423	ward	223	Baraa	5	district	10	Baraa	2009
424	ward	224	Oloirieni	3	district	10	Oloirieni	2009
425	ward	225	Themi	6	district	10	Themi	2009
426	ward	226	Lemara	7	district	10	Lemara	2009
427	ward	227	Terrat	107	district	10	Terrat	2009
428	ward	228	Sokoni I	18	district	10	Sokoni I	2009
429	ward	229	Daraja Mbili	1	district	10	Daraja Mbili	2009
430	ward	230	Unga Ltd	1	district	10	Unga Ltd	2009
431	ward	231	Sombetini	5	district	10	Sombetini	2009
432	ward	232	Ngarenaro	1	district	10	Ngarenaro	2009
433	ward	233	Levolosi	1	district	10	Levolosi	2009
434	ward	234	Engutoto	32	district	10	Engutoto	2009
435	ward	235	Elerai	4	district	10	Elerai	2009
436	ward	236	Olasiti	66	district	10	Olasiti	2009
437	ward	237	Moshono	25	district	10	Moshono	2009
438	ward	238	Karatu	51	district	11	Karatu	2009
439	ward	239	Endamarariek	246	district	11	Endamarariek	2009
440	ward	240	Buger	211	district	11	Buger	2009
441	ward	241	Endabash	281	district	11	Endabash	2009
442	ward	242	Kansay	207	district	11	Kansay	2009
443	ward	243	Baray	1152	district	11	Baray	2009
444	ward	244	Mang'Ola	128	district	11	Mang'Ola	2009
445	ward	245	Daa	226	district	11	Daa	2009
446	ward	246	Oldean	71	district	11	Oldean	2009
447	ward	247	Qurus	101	district	11	Qurus	2009
448	ward	248	Ganako	66	district	11	Ganako	2009
449	ward	249	Rhotia	205	district	11	Rhotia	2009
450	ward	250	Mbulumbulu	211	district	11	Mbulumbulu	2009
451	ward	251	Endamaghang	94	district	11	Endamaghang	2009
452	ward	252	Orgosorok	325	district	12	Orgosorok	2009
453	ward	253	Digodigo	276	district	12	Digodigo	2009
454	ward	254	Oldonyo Sambu	178	district	12	Oldonyo Sambu	2009
455	ward	255	Pinyinyi	2123	district	12	Pinyinyi	2009
456	ward	256	Sale	119	district	12	Sale	2009
457	ward	257	Malambo	2388	district	12	Malambo	2009
458	ward	258	Naiyobi	194	district	12	Naiyobi	2009
459	ward	259	Nainokanoka	1035	district	12	Nainokanoka	2009
460	ward	260	Olbalbal	1139	district	12	Olbalbal	2009
461	ward	261	Ngorongoro	1077	district	12	Ngorongoro	2009
462	ward	262	Endulen	1758	district	12	Endulen	2009
463	ward	263	Kakesio	1127	district	12	Kakesio	2009
464	ward	264	Arash	1102	district	12	Arash	2009
465	ward	265	Soitsambu	587	district	12	Soitsambu	2009
466	ward	266	Engusero Sambu	68	district	12	Engusero Sambu	2009
467	ward	267	Oloirien	262	district	12	Oloirien	2009
468	ward	268	Samunge	147	district	12	Samunge	2009
469	ward	269	Alailelai	367	district	12	Alailelai	2009
470	ward	270	Maalon	644	district	12	Maalon	2009
471	ward	271	Ololosokwan	403	district	12	Ololosokwan	2009
472	ward	272	Oloipiri	622	district	12	Oloipiri	2009
473	ward	273	Olkokola	94	district	13	Olkokola	2009
474	ward	274	Ilkiding'A	57	district	13	Ilkiding'A	2009
475	ward	275	Bangata	15	district	13	Bangata	2009
476	ward	276	Sokon Ii	14	district	13	Sokon Ii	2009
477	ward	277	Oltoroto	12	district	13	Oltoroto	2009
478	ward	278	Moivo	5	district	13	Moivo	2009
479	ward	279	Kiranyi	5	district	13	Kiranyi	2009
480	ward	280	Kimnyaki	3	district	13	Kimnyaki	2009
481	ward	281	Oltrumet	37	district	13	Oltrumet	2009
482	ward	282	Mwandeti	62	district	13	Mwandeti	2009
483	ward	283	Mussa	72	district	13	Mussa	2009
484	ward	284	Kisongo	57	district	13	Kisongo	2009
485	ward	285	Mateves	105	district	13	Mateves	2009
486	ward	286	Oljoro	65	district	13	Oljoro	2009
487	ward	287	Bwawani	176	district	13	Bwawani	2009
488	ward	288	Nduruma	63	district	13	Nduruma	2009
489	ward	289	Mlangarini	76	district	13	Mlangarini	2009
490	ward	290	Sambasha	72	district	13	Sambasha	2009
491	ward	291	Olorieni	25	district	13	Olorieni	2009
492	ward	292	Olmotonyi	12	district	13	Olmotonyi	2009
493	ward	293	Kitumbeine	547	district	14	Kitumbeine	2009
494	ward	294	Engikaret	916	district	14	Engikaret	2009
495	ward	295	Eleng'Ata Dapash	452	district	14	Eleng'Ata Dapash	2009
496	ward	296	Ilorienito	140	district	14	Ilorienito	2009
497	ward	297	Gelai Meirugoi	830	district	14	Gelai Meirugoi	2009
498	ward	298	Gelai Lumbwa	885	district	14	Gelai Lumbwa	2009
499	ward	299	Matale	687	district	14	Matale	2009
500	ward	300	Engarenaibor	430	district	14	Engarenaibor	2009
501	ward	301	Mundarara	616	district	14	Mundarara	2009
502	ward	302	Kimokouwa	412	district	14	Kimokouwa	2009
503	ward	303	Namanga	4	district	14	Namanga	2009
504	ward	304	Orbomba	632	district	14	Orbomba	2009
505	ward	305	Longido	22	district	14	Longido	2009
506	ward	306	Tingatinga	1115	district	14	Tingatinga	2009
507	ward	307	Olmolog	340	district	14	Olmolog	2009
508	ward	308	Kamwanga	53	district	14	Kamwanga	2009
509	ward	309	Mamsera	45	district	15	Mamsera	2009
510	ward	310	Mahida	21	district	15	Mahida	2009
511	ward	311	Mengwe	4	district	15	Mengwe	2009
512	ward	312	Keni Mengeni	38	district	15	Keni Mengeni	2009
513	ward	313	Aleni	43	district	15	Aleni	2009
514	ward	314	Shimbi	36	district	15	Shimbi	2009
515	ward	315	Makiidi	21	district	15	Makiidi	2009
516	ward	316	Kelamfua Mokala	50	district	15	Kelamfua Mokala	2009
517	ward	317	Ushiri Ikuini	70	district	15	Ushiri Ikuini	2009
518	ward	318	Mrao Keryo	20	district	15	Mrao Keryo	2009
519	ward	319	Kirwa Keni	46	district	15	Kirwa Keni	2009
520	ward	320	Katangara Mrere	70	district	15	Katangara Mrere	2009
521	ward	321	Kisale Msaranga	22	district	15	Kisale Msaranga	2009
522	ward	322	Olele	17	district	15	Olele	2009
523	ward	323	Kirongo Samanga	44	district	15	Kirongo Samanga	2009
524	ward	324	Kitirima Kingachi	42	district	15	Kitirima Kingachi	2009
525	ward	325	Ubetu Kahe	51	district	15	Ubetu Kahe	2009
526	ward	326	Nanjara Reha	133	district	15	Nanjara Reha	2009
527	ward	327	Tarakea Motamburu	128	district	15	Tarakea Motamburu	2009
528	ward	328	Motamburu Kitendeni	479	district	15	Motamburu Kitendeni	2009
529	ward	329	Marangu Kitowo	18	district	15	Marangu Kitowo	2009
530	ward	330	Ngoyoni	33	district	15	Ngoyoni	2009
531	ward	331	Manda	781	district	15	Manda	2009
532	ward	332	Holili	37	district	15	Holili	2009
533	ward	333	Kileo	118	district	16	Kileo	2009
534	ward	334	Mwanga	159	district	16	Mwanga	2009
535	ward	335	Msangeni	40	district	16	Msangeni	2009
536	ward	336	Kifula	23	district	16	Kifula	2009
537	ward	337	Kighare	12	district	16	Kighare	2009
538	ward	338	Kirongwe	14	district	16	Kirongwe	2009
539	ward	339	Kwakoa	106	district	16	Kwakoa	2009
540	ward	340	Lembeni	97	district	16	Lembeni	2009
541	ward	341	Jipe	104	district	16	Jipe	2009
542	ward	342	Mwaniko	34	district	16	Mwaniko	2009
543	ward	343	Chomvu	26	district	16	Chomvu	2009
544	ward	344	Ngujini	22	district	16	Ngujini	2009
545	ward	345	Kirya	218	district	16	Kirya	2009
546	ward	346	Kilomeni	28	district	16	Kilomeni	2009
547	ward	347	Shighatini	34	district	16	Shighatini	2009
548	ward	348	Lang'Ata	167	district	16	Lang'Ata	2009
549	ward	349	Mgagao	356	district	16	Mgagao	2009
550	ward	350	Toloha	266	district	16	Toloha	2009
551	ward	351	Kigoningoni	71	district	16	Kigoningoni	2009
552	ward	352	Kivisini	82	district	16	Kivisini	2009
553	ward	353	Same	36	district	17	Same	2009
554	ward	354	Ruvu	1046	district	17	Ruvu	2009
555	ward	355	Njoro	81	district	17	Njoro	2009
556	ward	356	Kisiwani	1546	district	17	Kisiwani	2009
557	ward	357	Msindo	60	district	17	Msindo	2009
558	ward	358	Mshewa	35	district	17	Mshewa	2009
559	ward	359	Mhezi	23	district	17	Mhezi	2009
560	ward	360	Mwembe	336	district	17	Mwembe	2009
561	ward	361	Vudee	42	district	17	Vudee	2009
562	ward	362	Vuje	33	district	17	Vuje	2009
563	ward	363	Bombo	22	district	17	Bombo	2009
564	ward	364	Mtii	21	district	17	Mtii	2009
565	ward	365	Maore	351	district	17	Maore	2009
566	ward	366	Ndungu	38	district	17	Ndungu	2009
567	ward	367	Kihurio	36	district	17	Kihurio	2009
568	ward	368	Bendera	119	district	17	Bendera	2009
569	ward	369	Myamba	54	district	17	Myamba	2009
570	ward	370	Mpinji	37	district	17	Mpinji	2009
571	ward	371	Bwambo	54	district	17	Bwambo	2009
572	ward	372	Vunta	131	district	17	Vunta	2009
573	ward	373	Chome	74	district	17	Chome	2009
574	ward	374	Suji	60	district	17	Suji	2009
575	ward	375	Makanya	446	district	17	Makanya	2009
576	ward	376	Hedaru	168	district	17	Hedaru	2009
577	ward	377	Kirangare	32	district	17	Kirangare	2009
578	ward	378	Kisima	20	district	17	Kisima	2009
579	ward	379	Stesheni	179	district	17	Stesheni	2009
580	ward	380	Vumari	472	district	17	Vumari	2009
581	ward	381	Mabilioni	315	district	17	Mabilioni	2009
582	ward	382	Kalemawe	349	district	17	Kalemawe	2009
583	ward	383	Lugulu	35	district	17	Lugulu	2009
584	ward	384	Mwika Kusini	56	district	18	Mwika Kusini	2009
585	ward	385	Mwikakaskazini	18	district	18	Mwikakaskazini	2009
586	ward	386	Mamba Kaskazini	10	district	18	Mamba Kaskazini	2009
587	ward	387	Mamba Kusini	12	district	18	Mamba Kusini	2009
588	ward	388	Marangu Mashariki	27	district	18	Marangu Mashariki	2009
589	ward	389	Marangu Magharibi	20	district	18	Marangu Magharibi	2009
590	ward	390	Makuyuni	409	district	18	Makuyuni	2009
591	ward	391	Kilema Kaskazini	10	district	18	Kilema Kaskazini	2009
592	ward	392	Kilema Kusini	52	district	18	Kilema Kusini	2009
593	ward	393	Kiruavunjo Mashariki	23	district	18	Kiruavunjo Mashariki	2009
594	ward	394	Kiruavunjo Magharibi	34	district	18	Kiruavunjo Magharibi	2009
595	ward	395	Kahe	192	district	18	Kahe	2009
596	ward	396	Kahe Mashariki	78	district	18	Kahe Mashariki	2009
597	ward	397	Old Moshi Mashariki	14	district	18	Old Moshi Mashariki	2009
598	ward	398	Old Moshi Magharibi	33	district	18	Old Moshi Magharibi	2009
599	ward	399	Mbokomu	26	district	18	Mbokomu	2009
600	ward	400	Uru Mashariki	27	district	18	Uru Mashariki	2009
601	ward	401	Uru Shimbwe	21	district	18	Uru Shimbwe	2009
602	ward	402	Uru Kusini	24	district	18	Uru Kusini	2009
603	ward	403	Uru Kaskazini	44	district	18	Uru Kaskazini	2009
604	ward	404	Mabogini	69	district	18	Mabogini	2009
605	ward	405	Arusha Chini	174	district	18	Arusha Chini	2009
606	ward	406	Kibosho Mashariki	57	district	18	Kibosho Mashariki	2009
607	ward	407	Kibosho Kati	27	district	18	Kibosho Kati	2009
608	ward	408	Kibosho Magharibi	37	district	18	Kibosho Magharibi	2009
609	ward	409	Kindi	32	district	18	Kindi	2009
610	ward	410	Kiruavunjo Kusini	94	district	18	Kiruavunjo Kusini	2009
611	ward	411	Kirima	12	district	18	Kirima	2009
612	ward	412	Okaoni	37	district	18	Okaoni	2009
613	ward	413	Kimochi	31	district	18	Kimochi	2009
614	ward	414	Kilema Kati	6	district	18	Kilema Kati	2009
615	ward	415	Machame Mashariki	85	district	19	Machame Mashariki	2009
616	ward	416	Machame Kusini	81	district	19	Machame Kusini	2009
617	ward	417	Machame Kaskazini	58	district	19	Machame Kaskazini	2009
618	ward	418	Machame Magharibi	99	district	19	Machame Magharibi	2009
619	ward	419	Machame Uroki	13	district	19	Machame Uroki	2009
620	ward	420	Masama Mashariki	83	district	19	Masama Mashariki	2009
621	ward	421	Masama Magharibi	38	district	19	Masama Magharibi	2009
622	ward	422	Masama Kusini	65	district	19	Masama Kusini	2009
623	ward	423	Masama Rundugai	107	district	19	Masama Rundugai	2009
624	ward	424	Hai Mjini	54	district	19	Hai Mjini	2009
625	ward	425	Masama Kati	24	district	19	Masama Kati	2009
626	ward	426	Machame Weruweru	45	district	19	Machame Weruweru	2009
627	ward	427	Kia	141	district	19	Kia	2009
628	ward	428	Machame Narumu	11	district	19	Machame Narumu	2009
629	ward	429	Kilimanjaro	5	district	20	Kilimanjaro	2009
630	ward	430	Njoro	81	district	20	Njoro	2009
631	ward	431	Mji Mpya	1	district	20	Mji Mpya	2009
632	ward	432	Majengo	1	district	20	Majengo	2009
633	ward	433	Mawenzi	1	district	20	Mawenzi	2009
634	ward	434	Rau	4	district	20	Rau	2009
635	ward	435	Korongoni	3	district	20	Korongoni	2009
636	ward	436	Kiusa	1	district	20	Kiusa	2009
637	ward	437	Bondeni	0	district	20	Bondeni	2009
638	ward	438	Pasua	2	district	20	Pasua	2009
639	ward	439	Kaloleni	1	district	20	Kaloleni	2009
640	ward	440	Kiboriloni	6	district	20	Kiboriloni	2009
641	ward	441	Msaranga	7	district	20	Msaranga	2009
642	ward	442	Karanga	8	district	20	Karanga	2009
643	ward	443	Longuo B	5	district	20	Longuo B	2009
644	ward	444	Miembeni	2	district	20	Miembeni	2009
645	ward	445	Mfumuni	2	district	20	Mfumuni	2009
646	ward	446	Soweto	3	district	20	Soweto	2009
647	ward	447	Boma Mbuzi	1	district	20	Boma Mbuzi	2009
648	ward	448	Ng'Ambo	4	district	20	Ng'Ambo	2009
649	ward	449	Shirimatunda	3	district	20	Shirimatunda	2009
650	ward	450	Ndumeti	561	district	21	Ndumeti	2009
651	ward	451	Ngarenairobi	173	district	21	Ngarenairobi	2009
652	ward	452	Gararagua	123	district	21	Gararagua	2009
653	ward	453	Sanya Juu	21	district	21	Sanya Juu	2009
654	ward	454	Biriri	39	district	21	Biriri	2009
655	ward	455	Makiwaru	38	district	21	Makiwaru	2009
656	ward	456	Nasai	11	district	21	Nasai	2009
657	ward	457	Livishi	56	district	21	Livishi	2009
658	ward	458	Ivaeny	26	district	21	Ivaeny	2009
659	ward	459	Kashisha	28	district	21	Kashisha	2009
660	ward	460	Karansi	59	district	21	Karansi	2009
661	ward	461	Olkolili	85	district	21	Olkolili	2009
662	ward	462	Lushoto	82	district	22	Lushoto	2009
663	ward	463	Gare	33	district	22	Gare	2009
664	ward	464	Kwai	39	district	22	Kwai	2009
665	ward	465	Ubiri	21	district	22	Ubiri	2009
666	ward	466	Soni	36	district	22	Soni	2009
667	ward	467	Vuga	50	district	22	Vuga	2009
668	ward	468	Mponde	46	district	22	Mponde	2009
669	ward	469	Mamba	40	district	22	Mamba	2009
670	ward	470	Mbuzii	20	district	22	Mbuzii	2009
671	ward	471	Tamota	26	district	22	Tamota	2009
672	ward	472	Bumbuli	28	district	22	Bumbuli	2009
673	ward	473	Funta	31	district	22	Funta	2009
674	ward	474	Mayo	54	district	22	Mayo	2009
675	ward	475	Baga	44	district	22	Baga	2009
676	ward	476	Milingano	176	district	22	Milingano	2009
677	ward	477	Mgwashi	65	district	22	Mgwashi	2009
678	ward	478	Mtae	116	district	22	Mtae	2009
679	ward	479	Sunga	63	district	22	Sunga	2009
680	ward	480	Rangwi	45	district	22	Rangwi	2009
681	ward	481	Mnazi	345	district	22	Mnazi	2009
682	ward	482	Lunguza	1404	district	22	Lunguza	2009
683	ward	483	Mbaramo	75	district	22	Mbaramo	2009
684	ward	484	Mng'Aro	353	district	22	Mng'Aro	2009
685	ward	485	Mlalo	22	district	22	Mlalo	2009
686	ward	486	Mwangoi	20	district	22	Mwangoi	2009
687	ward	487	Shume	50	district	22	Shume	2009
688	ward	488	Malindi	40	district	22	Malindi	2009
689	ward	489	Hemtoye	20	district	22	Hemtoye	2009
690	ward	490	Malibwi	58	district	22	Malibwi	2009
691	ward	491	Mlola	33	district	22	Mlola	2009
692	ward	492	Makanya	446	district	22	Makanya	2009
693	ward	493	Ngwelo	19	district	22	Ngwelo	2009
694	ward	494	Kilole	17	district	22	Kilole	2009
695	ward	495	Kwekanga	43	district	22	Kwekanga	2009
696	ward	496	Lukozi	47	district	22	Lukozi	2009
697	ward	497	Manolo	146	district	22	Manolo	2009
698	ward	498	Dule 'M'	33	district	22	Dule 'M'	2009
699	ward	499	Kwemshasha	23	district	22	Kwemshasha	2009
700	ward	500	Nkongoi	79	district	22	Nkongoi	2009
701	ward	501	Dule 'B'	28	district	22	Dule 'B'	2009
702	ward	502	Maheza Ngulu	46	district	22	Maheza Ngulu	2009
703	ward	503	Usambara	29	district	22	Usambara	2009
704	ward	504	Ngulwi	17	district	22	Ngulwi	2009
705	ward	505	Kwemashai	15	district	22	Kwemashai	2009
706	ward	506	Mashewa	362	district	23	Mashewa	2009
707	ward	507	Kizara	118	district	23	Kizara	2009
708	ward	508	Magoma	86	district	23	Magoma	2009
709	ward	509	Kerenge	135	district	23	Kerenge	2009
710	ward	510	Kwagunda	100	district	23	Kwagunda	2009
711	ward	511	Mnyuzi	104	district	23	Mnyuzi	2009
712	ward	512	Vugiri	50	district	23	Vugiri	2009
713	ward	513	Dindira	40	district	23	Dindira	2009
714	ward	514	Bungu	47	district	23	Bungu	2009
715	ward	515	Lutindi	37	district	23	Lutindi	2009
716	ward	516	Makuyuni	409	district	23	Makuyuni	2009
717	ward	517	Chekelei	77	district	23	Chekelei	2009
718	ward	518	Mombo	75	district	23	Mombo	2009
719	ward	519	Mkalamo	721	district	23	Mkalamo	2009
720	ward	520	Mkomazi	291	district	23	Mkomazi	2009
721	ward	521	Kwashemshi	58	district	23	Kwashemshi	2009
722	ward	522	Mpale	32	district	23	Mpale	2009
723	ward	523	Mswaha	316	district	23	Mswaha	2009
724	ward	524	Magamba Kwalukonge	234	district	23	Magamba Kwalukonge	2009
725	ward	525	Misozwe	83	district	24	Misozwe	2009
726	ward	526	Pande Darajani	52	district	24	Pande Darajani	2009
727	ward	527	Ngomeni	106	district	24	Ngomeni	2009
728	ward	528	Kigombe	112	district	24	Kigombe	2009
729	ward	529	Lusanga	41	district	24	Lusanga	2009
730	ward	530	Kicheba	31	district	24	Kicheba	2009
731	ward	531	Magoroto	39	district	24	Magoroto	2009
732	ward	532	Magila	26	district	24	Magila	2009
733	ward	533	Mbaramo	75	district	24	Mbaramo	2009
734	ward	534	Majengo	1	district	24	Majengo	2009
735	ward	535	Masuguru	0	district	24	Masuguru	2009
736	ward	536	Tingeni	11	district	24	Tingeni	2009
737	ward	537	Kilulu	40	district	24	Kilulu	2009
738	ward	538	Mkuzi	40	district	24	Mkuzi	2009
739	ward	539	Mtindiro	83	district	24	Mtindiro	2009
740	ward	540	Kwafungo	111	district	24	Kwafungo	2009
741	ward	541	Songa	50	district	24	Songa	2009
742	ward	542	Bwembwera	42	district	24	Bwembwera	2009
743	ward	543	Potwe	46	district	24	Potwe	2009
744	ward	544	Nkumba	29	district	24	Nkumba	2009
745	ward	545	Kisiwani	1546	district	24	Kisiwani	2009
746	ward	546	Misalai	47	district	24	Misalai	2009
747	ward	547	Zirai	65	district	24	Zirai	2009
748	ward	548	Mbomole	27	district	24	Mbomole	2009
749	ward	549	Amani	92	district	24	Amani	2009
750	ward	550	Tongwe	38	district	24	Tongwe	2009
751	ward	551	Mhamba	76	district	24	Mhamba	2009
752	ward	552	Kwakifua	21	district	24	Kwakifua	2009
753	ward	553	Kwemkabala	3	district	24	Kwemkabala	2009
754	ward	554	Genge	5	district	24	Genge	2009
755	ward	555	Tanganyika	6	district	24	Tanganyika	2009
756	ward	556	Mpapayu	51	district	24	Mpapayu	2009
757	ward	557	Mlingano	58	district	24	Mlingano	2009
758	ward	558	Central	4	district	25	Central	2009
759	ward	559	Majengo	1	district	25	Majengo	2009
760	ward	560	Nguvumali	6	district	25	Nguvumali	2009
761	ward	561	Chumbageni	3	district	25	Chumbageni	2009
762	ward	562	Ngamiani Kaskazini	0	district	25	Ngamiani Kaskazini	2009
763	ward	563	Ngamiani Kati	0	district	25	Ngamiani Kati	2009
764	ward	564	Ngamiani Kusini	0	district	25	Ngamiani Kusini	2009
765	ward	565	Usagara	1	district	25	Usagara	2009
766	ward	566	Makorora	1	district	25	Makorora	2009
767	ward	567	Mzingani	8	district	25	Mzingani	2009
768	ward	568	Msambweni	1	district	25	Msambweni	2009
769	ward	569	Mwanzange	8	district	25	Mwanzange	2009
770	ward	570	Tangasisi	39	district	25	Tangasisi	2009
771	ward	571	Mabawa	5	district	25	Mabawa	2009
772	ward	572	Tongoni	45	district	25	Tongoni	2009
773	ward	573	Marungu	43	district	25	Marungu	2009
774	ward	574	Pongwe	78	district	25	Pongwe	2009
775	ward	575	Maweni	73	district	25	Maweni	2009
776	ward	576	Duga	2	district	25	Duga	2009
777	ward	577	Mzizima	57	district	25	Mzizima	2009
778	ward	578	Mabokweni	48	district	25	Mabokweni	2009
779	ward	579	Kirare	56	district	25	Kirare	2009
780	ward	580	Kiomoni	84	district	25	Kiomoni	2009
781	ward	581	Chongoleani	37	district	25	Chongoleani	2009
782	ward	582	Pangani Mashariki	5	district	26	Pangani Mashariki	2009
783	ward	583	Pangani Magharibi	13	district	26	Pangani Magharibi	2009
784	ward	584	Bweni	21	district	26	Bweni	2009
785	ward	585	Madanga	27	district	26	Madanga	2009
786	ward	586	Kimang'A	30	district	26	Kimang'A	2009
787	ward	587	Bushiri	251	district	26	Bushiri	2009
788	ward	588	Mwera	42	district	26	Mwera	2009
789	ward	589	Tungamaa	134	district	26	Tungamaa	2009
790	ward	590	Kipumbwi	237	district	26	Kipumbwi	2009
791	ward	591	Mikunguni	155	district	26	Mikunguni	2009
792	ward	592	Ubangaa	201	district	26	Ubangaa	2009
793	ward	593	Mkwaja	412	district	26	Mkwaja	2009
794	ward	594	Mkalamo	721	district	26	Mkalamo	2009
795	ward	595	Segera	205	district	27	Segera	2009
796	ward	596	Ndolwa	297	district	27	Ndolwa	2009
797	ward	597	Mazingara	505	district	27	Mazingara	2009
798	ward	598	Kwamsisi	512	district	27	Kwamsisi	2009
799	ward	599	Kwasunga	296	district	27	Kwasunga	2009
800	ward	600	Kwaluguru	166	district	27	Kwaluguru	2009
801	ward	601	Kang'Ata	618	district	27	Kang'Ata	2009
802	ward	602	Kwamkonje	165	district	27	Kwamkonje	2009
803	ward	603	Kwachaga	168	district	27	Kwachaga	2009
804	ward	604	Sindeni	385	district	27	Sindeni	2009
805	ward	605	Misima	887	district	27	Misima	2009
806	ward	606	Kiva	159	district	27	Kiva	2009
807	ward	607	Kabuku	91	district	27	Kabuku	2009
808	ward	608	Kwamatuku	328	district	27	Kwamatuku	2009
809	ward	609	Kwedizinga	147	district	27	Kwedizinga	2009
810	ward	610	Mgambo	515	district	27	Mgambo	2009
811	ward	611	Komkonga	135	district	27	Komkonga	2009
812	ward	612	Mkata	728	district	27	Mkata	2009
813	ward	613	Kabuku Ndani	163	district	27	Kabuku Ndani	2009
814	ward	614	Kwamgwe	122	district	27	Kwamgwe	2009
815	ward	615	Lwande	222	district	28	Lwande	2009
816	ward	616	Kikunde	99	district	28	Kikunde	2009
817	ward	617	Songe	91	district	28	Songe	2009
818	ward	618	Pagwi	351	district	28	Pagwi	2009
819	ward	619	Masagalu	191	district	28	Masagalu	2009
820	ward	620	Kimbe	469	district	28	Kimbe	2009
821	ward	621	Kilindi	379	district	28	Kilindi	2009
822	ward	622	Negero	401	district	28	Negero	2009
823	ward	623	Mkindi	518	district	28	Mkindi	2009
824	ward	624	Mvungwe	335	district	28	Mvungwe	2009
825	ward	625	Kwediboma	207	district	28	Kwediboma	2009
826	ward	626	Saunyi	902	district	28	Saunyi	2009
827	ward	627	Jaila	159	district	28	Jaila	2009
828	ward	628	Msanja	414	district	28	Msanja	2009
829	ward	629	Kisangasa	508	district	28	Kisangasa	2009
830	ward	630	Mabalanga	150	district	28	Mabalanga	2009
831	ward	631	Kibirashi	433	district	28	Kibirashi	2009
832	ward	632	Kilwa	155	district	28	Kilwa	2009
833	ward	633	Tunguli	161	district	28	Tunguli	2009
834	ward	634	Kwekivu	350	district	28	Kwekivu	2009
835	ward	635	Mwakijembe	768	district	29	Mwakijembe	2009
836	ward	636	Mkinga	26	district	29	Mkinga	2009
837	ward	637	Duga	2	district	29	Duga	2009
838	ward	638	Moa	26	district	29	Moa	2009
839	ward	639	Manza	38	district	29	Manza	2009
840	ward	640	Kwale	16	district	29	Kwale	2009
841	ward	641	Mtimbwani	53	district	29	Mtimbwani	2009
842	ward	642	Gombero	197	district	29	Gombero	2009
843	ward	643	Mhinduro	135	district	29	Mhinduro	2009
844	ward	644	Maramba	58	district	29	Maramba	2009
845	ward	645	Kigongoi	66	district	29	Kigongoi	2009
846	ward	646	Daluni	102	district	29	Daluni	2009
847	ward	647	Bosha	79	district	29	Bosha	2009
848	ward	648	Mapatano	48	district	29	Mapatano	2009
849	ward	649	Bwiti	273	district	29	Bwiti	2009
850	ward	650	Mnyenzani	115	district	29	Mnyenzani	2009
851	ward	651	Doda	204	district	29	Doda	2009
852	ward	652	Boma	42	district	29	Boma	2009
853	ward	653	Parungu Kasera	203	district	29	Parungu Kasera	2009
854	ward	654	Mayomboni	33	district	29	Mayomboni	2009
855	ward	655	Sigaya	80	district	29	Sigaya	2009
856	ward	656	Ngombezi	34	district	30	Ngombezi	2009
857	ward	657	Mtonga	15	district	30	Mtonga	2009
858	ward	658	Magunga	9	district	30	Magunga	2009
859	ward	659	Kwamndolwa	44	district	30	Kwamndolwa	2009
860	ward	660	Old Korogwe	27	district	30	Old Korogwe	2009
861	ward	661	Manundu	5	district	30	Manundu	2009
862	ward	662	Kilole	17	district	30	Kilole	2009
863	ward	663	Kwamsisi	512	district	30	Kwamsisi	2009
864	ward	664	Malezi	56	district	31	Malezi	2009
865	ward	665	Kwenjugo	85	district	31	Kwenjugo	2009
866	ward	666	Mabanda	83	district	31	Mabanda	2009
867	ward	667	Konje	47	district	31	Konje	2009
868	ward	668	Mlimani	50	district	31	Mlimani	2009
869	ward	669	Msasa	27	district	31	Msasa	2009
870	ward	670	Kideleko	59	district	31	Kideleko	2009
871	ward	671	Kwamagome	382	district	31	Kwamagome	2009
872	ward	672	Vibaoni	16	district	31	Vibaoni	2009
873	ward	673	Chanika	4	district	31	Chanika	2009
874	ward	674	Mdoe	5	district	31	Mdoe	2009
875	ward	675	Kwediyamba	31	district	31	Kwediyamba	2009
876	ward	676	Mabula	129	district	32	Mabula	2009
877	ward	677	Maguha	200	district	32	Maguha	2009
878	ward	678	Berega	138	district	32	Berega	2009
879	ward	679	Magubike	161	district	32	Magubike	2009
880	ward	680	Mamboya	461	district	32	Mamboya	2009
881	ward	681	Dumila	179	district	32	Dumila	2009
882	ward	682	Magole	211	district	32	Magole	2009
883	ward	683	Msowero	633	district	32	Msowero	2009
884	ward	684	Rudewa	781	district	32	Rudewa	2009
885	ward	685	Chanzulu	181	district	32	Chanzulu	2009
886	ward	686	Kimamba 'A'	20	district	32	Kimamba 'A'	2009
887	ward	687	Kimamba ' B '	9	district	32	Kimamba ' B '	2009
888	ward	688	Mbumi	1	district	32	Mbumi	2009
889	ward	689	Mkwatani	30	district	32	Mkwatani	2009
890	ward	690	Magomeni	133	district	32	Magomeni	2009
891	ward	691	Kasiki	6	district	32	Kasiki	2009
892	ward	692	Mabwerebwere	49	district	32	Mabwerebwere	2009
893	ward	693	Kilangali	519	district	32	Kilangali	2009
894	ward	694	Mikumi	1515	district	32	Mikumi	2009
895	ward	695	Ruhembe	701	district	32	Ruhembe	2009
896	ward	696	Kidodi	342	district	32	Kidodi	2009
897	ward	697	Vidunda	274	district	32	Vidunda	2009
898	ward	698	Malolo	323	district	32	Malolo	2009
899	ward	699	Kisanga	539	district	32	Kisanga	2009
900	ward	700	Uleling'Ombe	223	district	32	Uleling'Ombe	2009
901	ward	701	Ulaya	962	district	32	Ulaya	2009
902	ward	702	Zombo	425	district	32	Zombo	2009
903	ward	703	Lumuma	149	district	32	Lumuma	2009
904	ward	704	Masanze	419	district	32	Masanze	2009
905	ward	705	Lumbiji	283	district	32	Lumbiji	2009
906	ward	706	Kitete	230	district	32	Kitete	2009
907	ward	707	Madoto	37	district	32	Madoto	2009
908	ward	708	Tindiga	438	district	32	Tindiga	2009
909	ward	709	Ruaha	41	district	32	Ruaha	2009
910	ward	710	Kasanga	35	district	33	Kasanga	2009
911	ward	711	Kolero	129	district	33	Kolero	2009
912	ward	712	Mvuha	366	district	33	Mvuha	2009
913	ward	713	Selembala	618	district	33	Selembala	2009
914	ward	714	Bwaki La Chini	289	district	33	Bwaki La Chini	2009
915	ward	715	Bwakila Juu	107	district	33	Bwakila Juu	2009
916	ward	716	Kisaki	5095	district	33	Kisaki	2009
917	ward	717	Mngazi	256	district	33	Mngazi	2009
918	ward	718	Singisa	297	district	33	Singisa	2009
919	ward	719	Mkambarani	325	district	33	Mkambarani	2009
920	ward	720	Mikese	245	district	33	Mikese	2009
921	ward	721	Kidugalo	698	district	33	Kidugalo	2009
922	ward	722	Mkulazi	348	district	33	Mkulazi	2009
923	ward	723	Ngerengere	542	district	33	Ngerengere	2009
924	ward	724	Tununguo	343	district	33	Tununguo	2009
925	ward	725	Kiroka	205	district	33	Kiroka	2009
926	ward	726	Mkuyuni	99	district	33	Mkuyuni	2009
927	ward	727	Tegetero	89	district	33	Tegetero	2009
928	ward	728	Kibogwa	82	district	33	Kibogwa	2009
929	ward	729	Kibungo Juu	114	district	33	Kibungo Juu	2009
930	ward	730	Kisemu	39	district	33	Kisemu	2009
931	ward	731	Lundi	125	district	33	Lundi	2009
932	ward	732	Mtombozi	97	district	33	Mtombozi	2009
933	ward	733	Tawa	43	district	33	Tawa	2009
934	ward	734	Matuli	393	district	33	Matuli	2009
935	ward	735	Gwata	1472	district	33	Gwata	2009
936	ward	736	Konde	34	district	33	Konde	2009
937	ward	737	Bungu	47	district	33	Bungu	2009
938	ward	738	Kidatu	482	district	34	Kidatu	2009
939	ward	739	Sanje	107	district	34	Sanje	2009
940	ward	740	Mkula	96	district	34	Mkula	2009
941	ward	741	Mang'Ula	1563	district	34	Mang'Ula	2009
942	ward	742	Kisawasawa	4085	district	34	Kisawasawa	2009
943	ward	743	Kiberege	467	district	34	Kiberege	2009
944	ward	744	Kibaoni	189	district	34	Kibaoni	2009
945	ward	745	Ifakara	60	district	34	Ifakara	2009
946	ward	746	Lumemo	299	district	34	Lumemo	2009
947	ward	747	Idete	721	district	34	Idete	2009
948	ward	748	Mbingu	185	district	34	Mbingu	2009
949	ward	749	Mofu	329	district	34	Mofu	2009
950	ward	750	Mchombe	512	district	34	Mchombe	2009
951	ward	751	Chisano	414	district	34	Chisano	2009
952	ward	752	Mlimba	540	district	34	Mlimba	2009
953	ward	753	Utengule	360	district	34	Utengule	2009
954	ward	754	Masagati	1714	district	34	Masagati	2009
955	ward	755	Uchindile	1014	district	34	Uchindile	2009
956	ward	756	Minepa	999	district	35	Minepa	2009
957	ward	757	Lupiro	522	district	35	Lupiro	2009
958	ward	758	Kichangani	1036	district	35	Kichangani	2009
959	ward	759	Msogezi	322	district	35	Msogezi	2009
960	ward	760	Vigoi	275	district	35	Vigoi	2009
961	ward	761	Mahenge	5	district	35	Mahenge	2009
962	ward	762	Isongo	116	district	35	Isongo	2009
963	ward	763	Ruaha	41	district	35	Ruaha	2009
964	ward	764	Chirombola	69	district	35	Chirombola	2009
965	ward	765	Sali	272	district	35	Sali	2009
966	ward	766	Euga	52	district	35	Euga	2009
967	ward	767	Mwaya	95	district	35	Mwaya	2009
968	ward	768	Lukande	2300	district	35	Lukande	2009
969	ward	769	Mbuga	147	district	35	Mbuga	2009
970	ward	770	Ilonga	3937	district	35	Ilonga	2009
971	ward	771	Kilosa Kwa Mpepo	4299	district	35	Kilosa Kwa Mpepo	2009
972	ward	772	Ngoheranga	393	district	35	Ngoheranga	2009
973	ward	773	Biro	313	district	35	Biro	2009
974	ward	774	Malinyi	452	district	35	Malinyi	2009
975	ward	775	Sofi	983	district	35	Sofi	2009
976	ward	776	Usangule	472	district	35	Usangule	2009
977	ward	777	Mtimbira	309	district	35	Mtimbira	2009
978	ward	778	Itete	689	district	35	Itete	2009
979	ward	779	Iragua	723	district	35	Iragua	2009
980	ward	780	Sabasaba	0	district	36	Sabasaba	2009
981	ward	781	Uwanja Wa Taifa	1	district	36	Uwanja Wa Taifa	2009
982	ward	782	Kiwanja Cha Ndege	2	district	36	Kiwanja Cha Ndege	2009
983	ward	783	Mji Mpya	1	district	36	Mji Mpya	2009
984	ward	784	Kingo	1	district	36	Kingo	2009
985	ward	785	Mji Mkuu	0	district	36	Mji Mkuu	2009
986	ward	786	Sultan Area	0	district	36	Sultan Area	2009
987	ward	787	Mafiga	2	district	36	Mafiga	2009
988	ward	788	Mazimbu	41	district	36	Mazimbu	2009
989	ward	789	Mwembesongo	12	district	36	Mwembesongo	2009
990	ward	790	Kichangani	1036	district	36	Kichangani	2009
991	ward	791	Kilakala	8	district	36	Kilakala	2009
992	ward	792	Boma	42	district	36	Boma	2009
993	ward	793	Mlimani	50	district	36	Mlimani	2009
994	ward	794	Mbuyuni	15	district	36	Mbuyuni	2009
995	ward	795	Kingolwira	36	district	36	Kingolwira	2009
996	ward	796	Bigwa	13	district	36	Bigwa	2009
997	ward	797	Mzinga	12	district	36	Mzinga	2009
998	ward	798	Kihonda	123	district	36	Kihonda	2009
999	ward	799	Mvomero	1148	district	37	Mvomero	2009
1000	ward	800	Hembeti	488	district	37	Hembeti	2009
1001	ward	801	Maskati	279	district	37	Maskati	2009
1002	ward	802	Kibati	554	district	37	Kibati	2009
1003	ward	803	Sungaji	106	district	37	Sungaji	2009
1004	ward	804	Mhonda	76	district	37	Mhonda	2009
1005	ward	805	Diongoya	141	district	37	Diongoya	2009
1006	ward	806	Mtibwa	617	district	37	Mtibwa	2009
1007	ward	807	Kanga	549	district	37	Kanga	2009
1008	ward	808	Bunduki	65	district	37	Bunduki	2009
1009	ward	809	Kikeo	343	district	37	Kikeo	2009
1010	ward	810	Langali	59	district	37	Langali	2009
1011	ward	811	Tchenzema	77	district	37	Tchenzema	2009
1012	ward	812	Mzumbe	729	district	37	Mzumbe	2009
1013	ward	813	Mlali	121	district	37	Mlali	2009
1014	ward	814	Doma	646	district	37	Doma	2009
1015	ward	815	Melela	553	district	37	Melela	2009
1016	ward	816	Chakwale	141	district	38	Chakwale	2009
1017	ward	817	Iyogwe	482	district	38	Iyogwe	2009
1018	ward	818	Idibo	222	district	38	Idibo	2009
1019	ward	819	Kibedya	169	district	38	Kibedya	2009
1020	ward	820	Msingisi	61	district	38	Msingisi	2009
1021	ward	821	Gairo	108	district	38	Gairo	2009
1022	ward	822	Rubeho	158	district	38	Rubeho	2009
1023	ward	823	Mandege	65	district	38	Mandege	2009
1024	ward	824	Chagongwe	142	district	38	Chagongwe	2009
1025	ward	825	Chanjale	298	district	38	Chanjale	2009
1026	ward	826	Nongwe	149	district	38	Nongwe	2009
1027	ward	827	Kiwangwa	354	district	39	Kiwangwa	2009
1028	ward	828	Msata	767	district	39	Msata	2009
1029	ward	829	Miono	483	district	39	Miono	2009
1030	ward	830	Mkange	950	district	39	Mkange	2009
1031	ward	831	Magomeni	133	district	39	Magomeni	2009
1032	ward	832	Dunda	21	district	39	Dunda	2009
1033	ward	833	Kiromo	83	district	39	Kiromo	2009
1034	ward	834	Zinga	99	district	39	Zinga	2009
1035	ward	835	Yombo	103	district	39	Yombo	2009
1036	ward	836	Vigwaza	430	district	39	Vigwaza	2009
1037	ward	837	Talawanda	363	district	39	Talawanda	2009
1038	ward	838	Bwilingu	268	district	39	Bwilingu	2009
1039	ward	839	Lugoba	259	district	39	Lugoba	2009
1040	ward	840	Ubenazomozi	736	district	39	Ubenazomozi	2009
1041	ward	841	Mbwewe	520	district	39	Mbwewe	2009
1042	ward	842	Kibindu	910	district	39	Kibindu	2009
1043	ward	843	Fukayose	501	district	39	Fukayose	2009
1044	ward	844	Kerege	89	district	39	Kerege	2009
1045	ward	845	Pera	302	district	39	Pera	2009
1046	ward	846	Msoga	181	district	39	Msoga	2009
1047	ward	847	Kimange	427	district	39	Kimange	2009
1048	ward	848	Mandera	167	district	39	Mandera	2009
1049	ward	849	Gwata	1472	district	40	Gwata	2009
1050	ward	850	Dutumi	319	district	40	Dutumi	2009
1051	ward	851	Magindu	264	district	40	Magindu	2009
1052	ward	852	Soga	124	district	40	Soga	2009
1053	ward	853	Kikongo	92	district	40	Kikongo	2009
1054	ward	854	Ruvu	1046	district	40	Ruvu	2009
1055	ward	855	Mlandizi	85	district	40	Mlandizi	2009
1056	ward	856	Kwala	229	district	40	Kwala	2009
1057	ward	857	Kilangalanga	34	district	40	Kilangalanga	2009
1058	ward	858	Janga	40	district	40	Janga	2009
1059	ward	859	Bokomnemela	110	district	40	Bokomnemela	2009
1060	ward	860	Kisarawe	236	district	41	Kisarawe	2009
1061	ward	861	Msimbu	155	district	41	Msimbu	2009
1062	ward	862	Masaki	124	district	41	Masaki	2009
1063	ward	863	Kibuta	266	district	41	Kibuta	2009
1064	ward	864	Marumbo	318	district	41	Marumbo	2009
1065	ward	865	Maneromango	144	district	41	Maneromango	2009
1066	ward	866	Msanga	158	district	41	Msanga	2009
1067	ward	867	Marui	579	district	41	Marui	2009
1068	ward	868	Cholesamvula	652	district	41	Cholesamvula	2009
1069	ward	869	Vikumbulu	1020	district	41	Vikumbulu	2009
1070	ward	870	Mafizi	903	district	41	Mafizi	2009
1071	ward	871	Kurui	166	district	41	Kurui	2009
1072	ward	872	Mzenga	212	district	41	Mzenga	2009
1073	ward	873	Vihingo	154	district	41	Vihingo	2009
1074	ward	874	Kiluvya	90	district	41	Kiluvya	2009
1075	ward	875	Mkuranga	147	district	42	Mkuranga	2009
1076	ward	876	Tambani	140	district	42	Tambani	2009
1077	ward	877	Vikindu	130	district	42	Vikindu	2009
1078	ward	878	Mbezi	183	district	42	Mbezi	2009
1079	ward	879	Shungubweni	160	district	42	Shungubweni	2009
1080	ward	880	Kisiju	271	district	42	Kisiju	2009
1081	ward	881	Magawa	141	district	42	Magawa	2009
1082	ward	882	Kitomondo	48	district	42	Kitomondo	2009
1083	ward	883	Lukanga	139	district	42	Lukanga	2009
1084	ward	884	Nyamato	240	district	42	Nyamato	2009
1085	ward	885	Kimanzichana	85	district	42	Kimanzichana	2009
1086	ward	886	Mkamba	235	district	42	Mkamba	2009
1087	ward	887	Panzuo	310	district	42	Panzuo	2009
1088	ward	888	Bupu	197	district	42	Bupu	2009
1089	ward	889	Mwarusembe	93	district	42	Mwarusembe	2009
1090	ward	890	Vianzi	130	district	42	Vianzi	2009
1091	ward	891	Njia Nne	142	district	42	Njia Nne	2009
1092	ward	892	Kiparang'Anda	81	district	42	Kiparang'Anda	2009
1093	ward	893	Ikwiriri	103	district	43	Ikwiriri	2009
1094	ward	894	Mgomba	103	district	43	Mgomba	2009
1095	ward	895	Umwe	36	district	43	Umwe	2009
1096	ward	896	Utete	426	district	43	Utete	2009
1097	ward	897	Mkongo	387	district	43	Mkongo	2009
1098	ward	898	Ngorongo	1393	district	43	Ngorongo	2009
1099	ward	899	Mwaseni	3892	district	43	Mwaseni	2009
1100	ward	900	Kibiti	128	district	43	Kibiti	2009
1101	ward	901	Bungu	47	district	43	Bungu	2009
1102	ward	902	Mahege	134	district	43	Mahege	2009
1103	ward	903	Mchukwi	276	district	43	Mchukwi	2009
1104	ward	904	Chumbi	564	district	43	Chumbi	2009
1105	ward	905	Mbwara	1091	district	43	Mbwara	2009
1106	ward	906	Mtunda	513	district	43	Mtunda	2009
1107	ward	907	Ruaruke	227	district	43	Ruaruke	2009
1108	ward	908	Salale	49	district	43	Salale	2009
1109	ward	909	Mbuchi	75	district	43	Mbuchi	2009
1110	ward	910	Kiongoroni	50	district	43	Kiongoroni	2009
1111	ward	911	Maparoni	52	district	43	Maparoni	2009
1112	ward	912	Chemchem	17	district	43	Chemchem	2009
1113	ward	913	Ngarambe	1223	district	43	Ngarambe	2009
1114	ward	914	Dimani	550	district	43	Dimani	2009
1115	ward	915	Mtawanya	195	district	43	Mtawanya	2009
1116	ward	916	Mjawa	89	district	43	Mjawa	2009
1117	ward	917	Mlanzi	69	district	43	Mlanzi	2009
1118	ward	918	Mwambao	225	district	43	Mwambao	2009
1119	ward	919	Kanga	549	district	44	Kanga	2009
1120	ward	920	Kirongwe	14	district	44	Kirongwe	2009
1121	ward	921	Baleni	70	district	44	Baleni	2009
1122	ward	922	Ndagoni	93	district	44	Ndagoni	2009
1123	ward	923	Kilindoni	50	district	44	Kilindoni	2009
1124	ward	924	Miburani	91	district	44	Miburani	2009
1125	ward	925	Kiegeani	69	district	44	Kiegeani	2009
1126	ward	926	Jibondo	89	district	44	Jibondo	2009
1127	ward	927	Pangani	123	district	45	Pangani	2009
1128	ward	928	Mailimoja	21	district	45	Mailimoja	2009
1129	ward	929	Tumbi	29	district	45	Tumbi	2009
1130	ward	930	Picha Ya Ndege	32	district	45	Picha Ya Ndege	2009
1131	ward	931	Mkuza	22	district	45	Mkuza	2009
1132	ward	932	Kibaha	18	district	45	Kibaha	2009
1133	ward	933	Msangani	183	district	45	Msangani	2009
1134	ward	934	Kongowe	94	district	45	Kongowe	2009
1135	ward	935	Misugusugu	77	district	45	Misugusugu	2009
1136	ward	936	Visiga	62	district	45	Visiga	2009
1137	ward	937	Mbwawa	55	district	45	Mbwawa	2009
1138	ward	938	Magomeni	133	district	46	Magomeni	2009
1139	ward	939	Makurumla	2	district	46	Makurumla	2009
1140	ward	940	Ndugumbi	1	district	46	Ndugumbi	2009
1141	ward	941	Tandale	1	district	46	Tandale	2009
1142	ward	942	Mwananyamala	3	district	46	Mwananyamala	2009
1143	ward	943	Msasani	11	district	46	Msasani	2009
1144	ward	944	Kinondoni	2	district	46	Kinondoni	2009
1145	ward	945	Mzimuni	1	district	46	Mzimuni	2009
1146	ward	946	Kigogo	2	district	46	Kigogo	2009
1147	ward	947	Mabibo	4	district	46	Mabibo	2009
1148	ward	948	Manzese	2	district	46	Manzese	2009
1149	ward	949	Ubungo	10	district	46	Ubungo	2009
1150	ward	950	Kibamba	20	district	46	Kibamba	2009
1151	ward	951	Goba	48	district	46	Goba	2009
1152	ward	952	Kawe	16	district	46	Kawe	2009
1153	ward	953	Kunduchi	27	district	46	Kunduchi	2009
1154	ward	954	Mbweni	23	district	46	Mbweni	2009
1155	ward	955	Bunju	35	district	46	Bunju	2009
1156	ward	956	Makuburi	8	district	46	Makuburi	2009
1157	ward	957	Mburahati	1	district	46	Mburahati	2009
1158	ward	958	Makumbusho	2	district	46	Makumbusho	2009
1159	ward	959	Sinza	3	district	46	Sinza	2009
1160	ward	960	Kijitonyama	4	district	46	Kijitonyama	2009
1161	ward	961	Kimara	14	district	46	Kimara	2009
1162	ward	962	Mikocheni	8	district	46	Mikocheni	2009
1163	ward	963	Mbezi	183	district	46	Mbezi	2009
1164	ward	964	Hananasifu	2	district	46	Hananasifu	2009
1165	ward	965	Saranga	26	district	46	Saranga	2009
1166	ward	966	Kwembe	61	district	46	Kwembe	2009
1167	ward	967	Msigani	15	district	46	Msigani	2009
1168	ward	968	Mbezi Juu	9	district	46	Mbezi Juu	2009
1169	ward	969	Makongo	18	district	46	Makongo	2009
1170	ward	970	Mabwepande	53	district	46	Mabwepande	2009
1171	ward	971	Wazo	54	district	46	Wazo	2009
1172	ward	972	Ukonga	10	district	47	Ukonga	2009
1173	ward	973	Pugu	31	district	47	Pugu	2009
1174	ward	974	Msongola	66	district	47	Msongola	2009
1175	ward	975	Tabata	5	district	47	Tabata	2009
1176	ward	976	Kinyerezi	22	district	47	Kinyerezi	2009
1177	ward	977	Ilala	2	district	47	Ilala	2009
1178	ward	978	Mchikichini	2	district	47	Mchikichini	2009
1179	ward	979	Vingunguti	5	district	47	Vingunguti	2009
1180	ward	980	Kipawa	16	district	47	Kipawa	2009
1181	ward	981	Buguruni	4	district	47	Buguruni	2009
1182	ward	982	Kariakoo	0	district	47	Kariakoo	2009
1183	ward	983	Jangwani	1	district	47	Jangwani	2009
1184	ward	984	Gerezani	1	district	47	Gerezani	2009
1185	ward	985	Kisutu	0	district	47	Kisutu	2009
1186	ward	986	Mchafukoge	1	district	47	Mchafukoge	2009
1187	ward	987	Upanga Mashariki	1	district	47	Upanga Mashariki	2009
1188	ward	988	Upanga Magharibi	2	district	47	Upanga Magharibi	2009
1189	ward	989	Kivukoni	2	district	47	Kivukoni	2009
1190	ward	990	Kiwalani	4	district	47	Kiwalani	2009
1191	ward	991	Segerea	10	district	47	Segerea	2009
1192	ward	992	Kitunda	20	district	47	Kitunda	2009
1193	ward	993	Chanika	4	district	47	Chanika	2009
1194	ward	994	Kivule	25	district	47	Kivule	2009
1195	ward	995	Gongolamboto	13	district	47	Gongolamboto	2009
1196	ward	996	Majohe	59	district	47	Majohe	2009
1197	ward	997	Kimanga	9	district	47	Kimanga	2009
1198	ward	998	Kigamboni	5	district	48	Kigamboni	2009
1199	ward	999	Vijibweni	12	district	48	Vijibweni	2009
1200	ward	1000	Kibada	17	district	48	Kibada	2009
1201	ward	1001	Kisarawe Ii	142	district	48	Kisarawe Ii	2009
1202	ward	1002	Somangila	108	district	48	Somangila	2009
1203	ward	1003	Kimbiji	60	district	48	Kimbiji	2009
1204	ward	1004	Mbagala	3	district	48	Mbagala	2009
1205	ward	1005	Chamazi	28	district	48	Chamazi	2009
1206	ward	1006	Yombo Vituka	6	district	48	Yombo Vituka	2009
1207	ward	1007	Charambe	7	district	48	Charambe	2009
1208	ward	1008	Toangoma	38	district	48	Toangoma	2009
1209	ward	1009	Miburani	91	district	48	Miburani	2009
1210	ward	1010	Temeke	3	district	48	Temeke	2009
1211	ward	1011	Mtoni	4	district	48	Mtoni	2009
1212	ward	1012	Keko	1	district	48	Keko	2009
1213	ward	1013	Kurasini	6	district	48	Kurasini	2009
1214	ward	1014	Azimio	2	district	48	Azimio	2009
1215	ward	1015	Tandika	2	district	48	Tandika	2009
1216	ward	1016	Sandali	3	district	48	Sandali	2009
1217	ward	1017	Chang'Ombe	3	district	48	Chang'Ombe	2009
1218	ward	1018	Mbagala Kuu	7	district	48	Mbagala Kuu	2009
1219	ward	1019	Makangarawe	2	district	48	Makangarawe	2009
1220	ward	1020	Pemba Mnazi	213	district	48	Pemba Mnazi	2009
1221	ward	1021	Mjimwema	24	district	48	Mjimwema	2009
1222	ward	1022	Tungi	6	district	48	Tungi	2009
1223	ward	1023	Kijichi	12	district	48	Kijichi	2009
1224	ward	1024	Mianzini	10	district	48	Mianzini	2009
1225	ward	1025	Kiburugwa	4	district	48	Kiburugwa	2009
1226	ward	1026	Buza	6	district	48	Buza	2009
1227	ward	1027	Kilakala	8	district	48	Kilakala	2009
1228	ward	1028	Tingi	106	district	49	Tingi	2009
1229	ward	1029	Miteja	246	district	49	Miteja	2009
1230	ward	1030	Mingumbi	264	district	49	Mingumbi	2009
1231	ward	1031	Kinjumbi	486	district	49	Kinjumbi	2009
1232	ward	1032	Chumo	277	district	49	Chumo	2009
1233	ward	1033	Kipatimu	379	district	49	Kipatimu	2009
1234	ward	1034	Kandawale	795	district	49	Kandawale	2009
1235	ward	1035	Njinjo	424	district	49	Njinjo	2009
1236	ward	1036	Mitole	443	district	49	Mitole	2009
1237	ward	1037	Miguruwe	1885	district	49	Miguruwe	2009
1238	ward	1038	Likawage	1723	district	49	Likawage	2009
1239	ward	1039	Nanjirinji	3839	district	49	Nanjirinji	2009
1240	ward	1040	Kirnjernje	703	district	49	Kirnjernje	2009
1241	ward	1041	Mandawa	1641	district	49	Mandawa	2009
1242	ward	1042	Lihimalyao	370	district	49	Lihimalyao	2009
1243	ward	1043	Pande	207	district	49	Pande	2009
1244	ward	1044	Kikole	827	district	49	Kikole	2009
1245	ward	1045	Kivinjesingino	413	district	49	Kivinjesingino	2009
1246	ward	1046	Songosongo	9	district	49	Songosongo	2009
1247	ward	1047	Masoko	205	district	49	Masoko	2009
1248	ward	1048	Kibata	143	district	49	Kibata	2009
1249	ward	1049	Mipingo	825	district	50	Mipingo	2009
1250	ward	1050	Kitomanga	183	district	50	Kitomanga	2009
1251	ward	1051	Mchinga	141	district	50	Mchinga	2009
1252	ward	1052	Kilolambwani	299	district	50	Kilolambwani	2009
1253	ward	1053	Kilangala	176	district	50	Kilangala	2009
1254	ward	1054	Kiwalala	431	district	50	Kiwalala	2009
1255	ward	1055	Navanga	197	district	50	Navanga	2009
1256	ward	1056	Mnolela	247	district	50	Mnolela	2009
1257	ward	1057	Sudi	137	district	50	Sudi	2009
1258	ward	1058	Nachunyu	98	district	50	Nachunyu	2009
1259	ward	1059	Mtama	38	district	50	Mtama	2009
1260	ward	1060	Nyangao	86	district	50	Nyangao	2009
1261	ward	1061	Namupa	450	district	50	Namupa	2009
1262	ward	1062	Nyengedi	36	district	50	Nyengedi	2009
1263	ward	1063	Mtua	20	district	50	Mtua	2009
1264	ward	1064	Nahukahuka	148	district	50	Nahukahuka	2009
1265	ward	1065	Nyangamara	221	district	50	Nyangamara	2009
1266	ward	1066	Mandwanga	220	district	50	Mandwanga	2009
1267	ward	1067	Mnara	427	district	50	Mnara	2009
1268	ward	1068	Chiponda	264	district	50	Chiponda	2009
1269	ward	1069	Pangatena	118	district	50	Pangatena	2009
1270	ward	1070	Longa	57	district	50	Longa	2009
1271	ward	1071	Rutamba	188	district	50	Rutamba	2009
1272	ward	1072	Milola	341	district	50	Milola	2009
1273	ward	1073	Kiwawa	207	district	50	Kiwawa	2009
1274	ward	1074	Mtumbya	129	district	50	Mtumbya	2009
1275	ward	1075	Matimba	107	district	50	Matimba	2009
1276	ward	1076	Nangaru	212	district	50	Nangaru	2009
1277	ward	1077	Majengo	1	district	50	Majengo	2009
1278	ward	1078	Namangale	79	district	50	Namangale	2009
1279	ward	1079	Nambambo	7	district	51	Nambambo	2009
1280	ward	1080	Kilimanihewa	37	district	51	Kilimanihewa	2009
1281	ward	1081	Ruponda	106	district	51	Ruponda	2009
1282	ward	1082	Minero Miembeni	186	district	51	Minero Miembeni	2009
1283	ward	1083	Namapwia	233	district	51	Namapwia	2009
1284	ward	1084	Kipara Mnero	116	district	51	Kipara Mnero	2009
1285	ward	1085	Lionja	341	district	51	Lionja	2009
1286	ward	1086	Namikango	41	district	51	Namikango	2009
1287	ward	1087	Nditi	131	district	51	Nditi	2009
1288	ward	1088	Kilima Rondo	579	district	51	Kilima Rondo	2009
1289	ward	1089	Mbondo	1166	district	51	Mbondo	2009
1290	ward	1090	Kiegei	688	district	51	Kiegei	2009
1291	ward	1091	Mkoka	105	district	51	Mkoka	2009
1292	ward	1092	Chiola	69	district	51	Chiola	2009
1293	ward	1093	Mpiruka	76	district	51	Mpiruka	2009
1294	ward	1094	Nangowe	85	district	51	Nangowe	2009
1295	ward	1095	Mkotokuyana	94	district	51	Mkotokuyana	2009
1296	ward	1096	Naipanga	89	district	51	Naipanga	2009
1297	ward	1097	Stesheni	179	district	51	Stesheni	2009
1298	ward	1098	Naipingo	300	district	51	Naipingo	2009
1299	ward	1099	Mtua	20	district	51	Mtua	2009
1300	ward	1100	Minerongongo	63	district	51	Minerongongo	2009
1301	ward	1101	Matekwe	497	district	51	Matekwe	2009
1302	ward	1102	Marambo	117	district	51	Marambo	2009
1303	ward	1103	Namatula	28	district	51	Namatula	2009
1304	ward	1104	Ndomoni	65	district	51	Ndomoni	2009
1305	ward	1105	Liwale Mjini	94	district	52	Liwale Mjini	2009
1306	ward	1106	Mihumo	414	district	52	Mihumo	2009
1307	ward	1107	Ngongowele	1182	district	52	Ngongowele	2009
1308	ward	1108	Mlembwe	1928	district	52	Mlembwe	2009
1309	ward	1109	Makata	524	district	52	Makata	2009
1310	ward	1110	Barikiwa	1791	district	52	Barikiwa	2009
1311	ward	1111	Mkutano	11507	district	52	Mkutano	2009
1312	ward	1112	Mbaya	334	district	52	Mbaya	2009
1313	ward	1113	Kimambi	7761	district	52	Kimambi	2009
1314	ward	1114	Kiangara	759	district	52	Kiangara	2009
1315	ward	1115	Kibutuka	542	district	52	Kibutuka	2009
1316	ward	1116	Nangano	473	district	52	Nangano	2009
1317	ward	1117	Mpigamiti	2992	district	52	Mpigamiti	2009
1318	ward	1118	Mirui	725	district	52	Mirui	2009
1319	ward	1119	Liwale 'B'	587	district	52	Liwale 'B'	2009
1320	ward	1120	Mangirikiti	290	district	52	Mangirikiti	2009
1321	ward	1121	Nangando	43	district	52	Nangando	2009
1322	ward	1122	Likongowele	21	district	52	Likongowele	2009
1323	ward	1123	Kichonda	122	district	52	Kichonda	2009
1324	ward	1124	Lilombe	3151	district	52	Lilombe	2009
1325	ward	1125	Ruangwa	53	district	53	Ruangwa	2009
1326	ward	1126	Mbekenyera	112	district	53	Mbekenyera	2009
1327	ward	1127	Nkowe	42	district	53	Nkowe	2009
1328	ward	1128	Malolo	323	district	53	Malolo	2009
1329	ward	1129	Luchelegwa	100	district	53	Luchelegwa	2009
1330	ward	1130	Chienjele	117	district	53	Chienjele	2009
1331	ward	1131	Namichiga	45	district	53	Namichiga	2009
1332	ward	1132	Narung'Ombe	252	district	53	Narung'Ombe	2009
1333	ward	1133	Makanjiro	57	district	53	Makanjiro	2009
1334	ward	1134	Likunja	99	district	53	Likunja	2009
1335	ward	1135	Mnacho	143	district	53	Mnacho	2009
1336	ward	1136	Mandawa	1641	district	53	Mandawa	2009
1337	ward	1137	Nambilanje	422	district	53	Nambilanje	2009
1338	ward	1138	Chunyu	334	district	53	Chunyu	2009
1339	ward	1139	Mandarawe	146	district	53	Mandarawe	2009
1340	ward	1140	Nachingwea	21	district	53	Nachingwea	2009
1341	ward	1141	Matambarale	144	district	53	Matambarale	2009
1342	ward	1142	Chibula	183	district	53	Chibula	2009
1343	ward	1143	Nandagala	45	district	53	Nandagala	2009
1344	ward	1144	Nanganga	89	district	53	Nanganga	2009
1345	ward	1145	Chinongwe	68	district	53	Chinongwe	2009
1346	ward	1146	Ndoro	0	district	54	Ndoro	2009
1347	ward	1147	Makonde	0	district	54	Makonde	2009
1348	ward	1148	Mikumbi	0	district	54	Mikumbi	2009
1349	ward	1149	Mitandi	0	district	54	Mitandi	2009
1350	ward	1150	Rahaleo	1	district	54	Rahaleo	2009
1351	ward	1151	Mwenge	1	district	54	Mwenge	2009
1352	ward	1152	Matopeni	1	district	54	Matopeni	2009
1353	ward	1153	Wailes	1	district	54	Wailes	2009
1354	ward	1154	Nachingwea	21	district	54	Nachingwea	2009
1355	ward	1155	Rasbura	66	district	54	Rasbura	2009
1356	ward	1156	Mtanda	36	district	54	Mtanda	2009
1357	ward	1157	Jamhuri	67	district	54	Jamhuri	2009
1358	ward	1158	Msinjahili	129	district	54	Msinjahili	2009
1359	ward	1159	Mingoyo	95	district	54	Mingoyo	2009
1360	ward	1160	Ng'Apa	94	district	54	Ng'Apa	2009
1361	ward	1161	Tandangongoro	170	district	54	Tandangongoro	2009
1362	ward	1162	Chikonji	214	district	54	Chikonji	2009
1363	ward	1163	Mbanja	219	district	54	Mbanja	2009
1364	ward	1164	Madimba	182	district	55	Madimba	2009
1365	ward	1165	Ziwani	123	district	55	Ziwani	2009
1366	ward	1166	Nanguruwe	105	district	55	Nanguruwe	2009
1367	ward	1167	Mahurunga	154	district	55	Mahurunga	2009
1368	ward	1168	Kitaya	202	district	55	Kitaya	2009
1369	ward	1169	Kiromba	87	district	55	Kiromba	2009
1370	ward	1170	Njengwa	205	district	55	Njengwa	2009
1371	ward	1171	Nitekela	139	district	55	Nitekela	2009
1372	ward	1172	Nanyamba	54	district	55	Nanyamba	2009
1373	ward	1173	Mtiniko	173	district	55	Mtiniko	2009
1374	ward	1174	Dihimba	287	district	55	Dihimba	2009
1375	ward	1175	Mnima	291	district	55	Mnima	2009
1376	ward	1176	Kitere	177	district	55	Kitere	2009
1377	ward	1177	Ndumbwe	80	district	55	Ndumbwe	2009
1378	ward	1178	Mayanga	192	district	55	Mayanga	2009
1379	ward	1179	Naumbu	132	district	55	Naumbu	2009
1380	ward	1180	Chawi	217	district	55	Chawi	2009
1381	ward	1181	Namtumbuka	145	district	55	Namtumbuka	2009
1382	ward	1182	Libobe	66	district	55	Libobe	2009
1383	ward	1183	Mpapura	79	district	55	Mpapura	2009
1384	ward	1184	Muungano	107	district	55	Muungano	2009
1385	ward	1185	Mbawala	161	district	55	Mbawala	2009
1386	ward	1186	Msanga Mkuu	84	district	55	Msanga Mkuu	2009
1387	ward	1187	Tangazo	84	district	55	Tangazo	2009
1388	ward	1188	Kiyanga	75	district	55	Kiyanga	2009
1389	ward	1189	Milango Minne	55	district	55	Milango Minne	2009
1390	ward	1190	Mbembaleo	71	district	55	Mbembaleo	2009
1391	ward	1191	Mtimbwilimbwi	124	district	55	Mtimbwilimbwi	2009
1392	ward	1192	Luchindu	59	district	56	Luchindu	2009
1393	ward	1193	Makote	41	district	56	Makote	2009
1394	ward	1194	Nanguruwe	105	district	56	Nanguruwe	2009
1395	ward	1195	Mkunya	41	district	56	Mkunya	2009
1396	ward	1196	Mcholi I	95	district	56	Mcholi I	2009
1397	ward	1197	Namiyonga	41	district	56	Namiyonga	2009
1398	ward	1198	Mnekachi	63	district	56	Mnekachi	2009
1399	ward	1199	Chitekete	49	district	56	Chitekete	2009
1400	ward	1200	Mnyambe	130	district	56	Mnyambe	2009
1401	ward	1201	Chilangala	256	district	56	Chilangala	2009
1402	ward	1202	Mkoma Ii	111	district	56	Mkoma Ii	2009
1403	ward	1203	Kitangari	67	district	56	Kitangari	2009
1404	ward	1204	Malatu	75	district	56	Malatu	2009
1405	ward	1205	Mchemo	86	district	56	Mchemo	2009
1406	ward	1206	Mtopwa	60	district	56	Mtopwa	2009
1407	ward	1207	Chiwonga	64	district	56	Chiwonga	2009
1408	ward	1208	Maputi	91	district	56	Maputi	2009
1409	ward	1209	Makukwe	45	district	56	Makukwe	2009
1410	ward	1210	Mkwedu	50	district	56	Mkwedu	2009
1411	ward	1211	Mcholi Ii	44	district	56	Mcholi Ii	2009
1412	ward	1212	Mtonya	42	district	56	Mtonya	2009
1413	ward	1213	Makonga	54	district	56	Makonga	2009
1414	ward	1214	Nakahako	71	district	56	Nakahako	2009
1415	ward	1215	Chihangu	67	district	56	Chihangu	2009
1416	ward	1216	Nambali	84	district	56	Nambali	2009
1417	ward	1217	Nandwahi	70	district	56	Nandwahi	2009
1418	ward	1218	Mtunguru	63	district	56	Mtunguru	2009
1419	ward	1219	Mdimba Mpelempele	37	district	56	Mdimba Mpelempele	2009
1420	ward	1220	Namatutwe	660	district	57	Namatutwe	2009
1421	ward	1221	Namajani	111	district	57	Namajani	2009
1422	ward	1222	Mlingula	97	district	57	Mlingula	2009
1423	ward	1223	Chiwale	190	district	57	Chiwale	2009
1424	ward	1224	Lukuledi	166	district	57	Lukuledi	2009
1425	ward	1225	Mpanyani	107	district	57	Mpanyani	2009
1426	ward	1226	Chigugu	149	district	57	Chigugu	2009
1427	ward	1227	Mwena	134	district	57	Mwena	2009
1428	ward	1228	Nanganga	89	district	57	Nanganga	2009
1429	ward	1229	Chiwata	85	district	57	Chiwata	2009
1430	ward	1230	Mkundi	84	district	57	Mkundi	2009
1431	ward	1231	Mkululu	85	district	57	Mkululu	2009
1432	ward	1232	Nanjota	106	district	57	Nanjota	2009
1433	ward	1233	Chiungutwa	172	district	57	Chiungutwa	2009
1434	ward	1234	Mbuyuni	15	district	57	Mbuyuni	2009
1435	ward	1235	Lipumburu	566	district	57	Lipumburu	2009
1436	ward	1236	Sindano	240	district	57	Sindano	2009
1437	ward	1237	Namalenga	90	district	57	Namalenga	2009
1438	ward	1238	Mchauru	287	district	57	Mchauru	2009
1439	ward	1239	Mnavira	210	district	57	Mnavira	2009
1440	ward	1240	Chikolopola	85	district	57	Chikolopola	2009
1441	ward	1241	Lulindi	57	district	57	Lulindi	2009
1442	ward	1242	Tandahimba	118	district	58	Tandahimba	2009
1443	ward	1243	Kitama	90	district	58	Kitama	2009
1444	ward	1244	Michenjele	100	district	58	Michenjele	2009
1445	ward	1245	Mihambwe	98	district	58	Mihambwe	2009
1446	ward	1246	Mkoreha	76	district	58	Mkoreha	2009
1447	ward	1247	Maundo	99	district	58	Maundo	2009
1448	ward	1248	Naputa	50	district	58	Naputa	2009
1449	ward	1249	Namikupa	48	district	58	Namikupa	2009
1450	ward	1250	Mnyawa	36	district	58	Mnyawa	2009
1451	ward	1251	Mkundi	84	district	58	Mkundi	2009
1452	ward	1252	Lukokoda	42	district	58	Lukokoda	2009
1453	ward	1253	Mahuta	27	district	58	Mahuta	2009
1454	ward	1254	Nanhyanga	65	district	58	Nanhyanga	2009
1455	ward	1255	Chingungwe	51	district	58	Chingungwe	2009
1456	ward	1256	Mdimba Mnyoma	55	district	58	Mdimba Mnyoma	2009
1457	ward	1257	Milongodi	42	district	58	Milongodi	2009
1458	ward	1258	Lyenje	36	district	58	Lyenje	2009
1459	ward	1259	Chaume	117	district	58	Chaume	2009
1460	ward	1260	Mkonjowano	97	district	58	Mkonjowano	2009
1461	ward	1261	Luagala	85	district	58	Luagala	2009
1462	ward	1262	Ngunja	147	district	58	Ngunja	2009
1463	ward	1263	Mkwiti	122	district	58	Mkwiti	2009
1464	ward	1264	Litehu	90	district	58	Litehu	2009
1465	ward	1265	Nambahu	104	district	58	Nambahu	2009
1466	ward	1266	Miuta	28	district	58	Miuta	2009
1467	ward	1267	Kwanyama	42	district	58	Kwanyama	2009
1468	ward	1268	Mchichira	62	district	58	Mchichira	2009
1469	ward	1269	Chikongola	32	district	58	Chikongola	2009
1470	ward	1270	Dinduma	34	district	58	Dinduma	2009
1471	ward	1271	Mdumbwe	53	district	58	Mdumbwe	2009
1472	ward	1272	Majengo	1	district	59	Majengo	2009
1473	ward	1273	Chikongola	32	district	59	Chikongola	2009
1474	ward	1274	Likombe	41	district	59	Likombe	2009
1475	ward	1275	Railway	2	district	59	Railway	2009
1476	ward	1276	Shangani	6	district	59	Shangani	2009
1477	ward	1277	Vigaeni	1	district	59	Vigaeni	2009
1478	ward	1278	Chuno	3	district	59	Chuno	2009
1479	ward	1279	Jangwani	1	district	59	Jangwani	2009
1480	ward	1280	Kisungule	4	district	59	Kisungule	2009
1481	ward	1281	Mitengo	11	district	59	Mitengo	2009
1482	ward	1282	Mtonya	42	district	59	Mtonya	2009
1483	ward	1283	Ufukoni	18	district	59	Ufukoni	2009
1484	ward	1284	Magengeni	14	district	59	Magengeni	2009
1485	ward	1285	Rahaleo	1	district	59	Rahaleo	2009
1486	ward	1286	Naliendele	45	district	59	Naliendele	2009
1487	ward	1287	Mangaka	167	district	60	Mangaka	2009
1488	ward	1288	Nangomba	284	district	60	Nangomba	2009
1489	ward	1289	Lumesule	373	district	60	Lumesule	2009
1490	ward	1290	Likokona	493	district	60	Likokona	2009
1491	ward	1291	Sengenya	393	district	60	Sengenya	2009
1492	ward	1292	Mnanje	132	district	60	Mnanje	2009
1493	ward	1293	Mikangaula	232	district	60	Mikangaula	2009
1494	ward	1294	Maratani	188	district	60	Maratani	2009
1495	ward	1295	Nandete	247	district	60	Nandete	2009
1496	ward	1296	Mkonona	688	district	60	Mkonona	2009
1497	ward	1297	Nanyumbu	578	district	60	Nanyumbu	2009
1498	ward	1298	Masuguru	0	district	60	Masuguru	2009
1499	ward	1299	Chipuputa	269	district	60	Chipuputa	2009
1500	ward	1300	Napacho	897	district	60	Napacho	2009
1501	ward	1301	Mwenge Mtapika	48	district	61	Mwenge Mtapika	2009
1502	ward	1302	Temeke	3	district	61	Temeke	2009
1503	ward	1303	Mkuti	3	district	61	Mkuti	2009
1504	ward	1304	Mpindimbi	243	district	61	Mpindimbi	2009
1505	ward	1305	Nyasa	23	district	61	Nyasa	2009
1506	ward	1306	Marika	154	district	61	Marika	2009
1507	ward	1307	Mkomaindo	6	district	61	Mkomaindo	2009
1508	ward	1308	Mtandi	48	district	61	Mtandi	2009
1509	ward	1309	Jida	5	district	61	Jida	2009
1510	ward	1310	Migongo	10	district	61	Migongo	2009
1511	ward	1311	Mwenge	1	district	61	Mwenge	2009
1512	ward	1312	Sululu	55	district	61	Sululu	2009
1513	ward	1313	Kalulu	2291	district	62	Kalulu	2009
1514	ward	1314	Ligunga	698	district	62	Ligunga	2009
1515	ward	1315	Mlingoti  Mashariki	1	district	62	Mlingoti  Mashariki	2009
1516	ward	1316	Mindu	555	district	62	Mindu	2009
1517	ward	1317	Ngapa	455	district	62	Ngapa	2009
1518	ward	1318	Nakapanya	1280	district	62	Nakapanya	2009
1519	ward	1319	Muhuwesi	1721	district	62	Muhuwesi	2009
1520	ward	1320	Tuwemacho	222	district	62	Tuwemacho	2009
1521	ward	1321	Ligoma	327	district	62	Ligoma	2009
1522	ward	1322	Misechela	1095	district	62	Misechela	2009
1523	ward	1323	Namasakata	268	district	62	Namasakata	2009
1524	ward	1324	Mtina	362	district	62	Mtina	2009
1525	ward	1325	Mchesi	576	district	62	Mchesi	2009
1526	ward	1326	Lukumbule	1477	district	62	Lukumbule	2009
1527	ward	1327	Nalasi-Magharibi	145	district	62	Nalasi-Magharibi	2009
1528	ward	1328	Mchoteka	343	district	62	Mchoteka	2009
1529	ward	1329	Marumba	306	district	62	Marumba	2009
1530	ward	1330	Mbesa	791	district	62	Mbesa	2009
1531	ward	1331	Mlingoti  Magharibi	143	district	62	Mlingoti  Magharibi	2009
1532	ward	1332	Kidodoma	291	district	62	Kidodoma	2009
1533	ward	1333	Nandembo	213	district	62	Nandembo	2009
1534	ward	1334	Nampungu	1547	district	62	Nampungu	2009
1535	ward	1335	Matemanga	185	district	62	Matemanga	2009
1536	ward	1336	Namwinyu	948	district	62	Namwinyu	2009
1537	ward	1337	Mbati	210	district	62	Mbati	2009
1538	ward	1338	Nalasi Mashariki	413	district	62	Nalasi Mashariki	2009
1539	ward	1339	Mchuluka	68	district	62	Mchuluka	2009
1540	ward	1340	Namiungo	298	district	62	Namiungo	2009
1541	ward	1341	Jakika	655	district	62	Jakika	2009
1542	ward	1342	Masonya	955	district	62	Masonya	2009
1543	ward	1343	Sisikwasisi	151	district	62	Sisikwasisi	2009
1544	ward	1344	Mchangani	49	district	62	Mchangani	2009
1545	ward	1345	Majengo	1	district	62	Majengo	2009
1546	ward	1346	Nanjoka	21	district	62	Nanjoka	2009
1547	ward	1347	Nakayaya	29	district	62	Nakayaya	2009
1548	ward	1348	Wino	735	district	63	Wino	2009
1549	ward	1349	Ndongosi	2218	district	63	Ndongosi	2009
1550	ward	1350	Matumbi	2310	district	63	Matumbi	2009
1551	ward	1351	Mpandangino	191	district	63	Mpandangino	2009
1552	ward	1352	Gumbiro	1041	district	63	Gumbiro	2009
1553	ward	1353	Mpitimbi	373	district	63	Mpitimbi	2009
1554	ward	1354	Muhuruku	1636	district	63	Muhuruku	2009
1555	ward	1355	Magagura	583	district	63	Magagura	2009
1556	ward	1356	Litisha	390	district	63	Litisha	2009
1557	ward	1357	Kilagano	838	district	63	Kilagano	2009
1558	ward	1358	Maposeni	377	district	63	Maposeni	2009
1559	ward	1359	Peramiho	66	district	63	Peramiho	2009
1560	ward	1360	Mahanje	1340	district	63	Mahanje	2009
1561	ward	1361	Matimira	621	district	63	Matimira	2009
1562	ward	1362	Mtyangimbole	200	district	63	Mtyangimbole	2009
1563	ward	1363	Mkongotema	1366	district	63	Mkongotema	2009
1564	ward	1364	Mbinga Mhalule	236	district	63	Mbinga Mhalule	2009
1565	ward	1365	Ruanda	513	district	64	Ruanda	2009
1566	ward	1366	Litumbandyosi	759	district	64	Litumbandyosi	2009
1567	ward	1367	Kigonsera	152	district	64	Kigonsera	2009
1568	ward	1368	Kihangi Mahuka	155	district	64	Kihangi Mahuka	2009
1569	ward	1369	Utiri	68	district	64	Utiri	2009
1570	ward	1370	Mbinga Mjini	66	district	64	Mbinga Mjini	2009
1571	ward	1371	Kilimani	61	district	64	Kilimani	2009
1572	ward	1372	Mbangamao	172	district	64	Mbangamao	2009
1573	ward	1373	Kihungu	108	district	64	Kihungu	2009
1574	ward	1374	Kikolo	66	district	64	Kikolo	2009
1575	ward	1375	Kambarage	45	district	64	Kambarage	2009
1576	ward	1376	Mapera	39	district	64	Mapera	2009
1577	ward	1377	Kipapa	22	district	64	Kipapa	2009
1578	ward	1378	Kipololo	30	district	64	Kipololo	2009
1579	ward	1379	Nyoni	89	district	64	Nyoni	2009
1580	ward	1380	Luwaita	38	district	64	Luwaita	2009
1581	ward	1381	Maguu	62	district	64	Maguu	2009
1582	ward	1382	Kitumbalomo	188	district	64	Kitumbalomo	2009
1583	ward	1383	Mkako	295	district	64	Mkako	2009
1584	ward	1384	Mikalanga	86	district	64	Mikalanga	2009
1585	ward	1385	Langiro	77	district	64	Langiro	2009
1586	ward	1386	Mbuji	77	district	64	Mbuji	2009
1587	ward	1387	Litembo	50	district	64	Litembo	2009
1588	ward	1388	Ngima	47	district	64	Ngima	2009
1589	ward	1389	Myangayanga	78	district	64	Myangayanga	2009
1590	ward	1390	Mkumbi	72	district	64	Mkumbi	2009
1591	ward	1391	Linda	103	district	64	Linda	2009
1592	ward	1392	Matiri	222	district	64	Matiri	2009
1593	ward	1393	Ukata	95	district	64	Ukata	2009
1594	ward	1394	Kitanda	213	district	64	Kitanda	2009
1595	ward	1395	Kitura	42	district	64	Kitura	2009
1596	ward	1396	Namswea	392	district	64	Namswea	2009
1597	ward	1397	Mpepai	371	district	64	Mpepai	2009
1598	ward	1398	Mpapa	107	district	64	Mpapa	2009
1599	ward	1399	Mjini	4	district	65	Mjini	2009
1600	ward	1400	Majengo	1	district	65	Majengo	2009
1601	ward	1401	Misufini	1	district	65	Misufini	2009
1602	ward	1402	Mfaranyaki	1	district	65	Mfaranyaki	2009
1603	ward	1403	Lizaboni	5	district	65	Lizaboni	2009
1604	ward	1404	Matarawe	1	district	65	Matarawe	2009
1605	ward	1405	Bombambili	5	district	65	Bombambili	2009
1606	ward	1406	Matogoro	45	district	65	Matogoro	2009
1607	ward	1407	Ruvuma	6	district	65	Ruvuma	2009
1608	ward	1408	Subira	76	district	65	Subira	2009
1609	ward	1409	Ruhuwiko	19	district	65	Ruhuwiko	2009
1610	ward	1410	Mshangano	46	district	65	Mshangano	2009
1611	ward	1411	Mletele	51	district	65	Mletele	2009
1612	ward	1412	Seedfarm	7	district	65	Seedfarm	2009
1613	ward	1413	Tanga	117	district	65	Tanga	2009
1614	ward	1414	Msamala	21	district	65	Msamala	2009
1615	ward	1415	Mwengemshindo	26	district	65	Mwengemshindo	2009
1616	ward	1416	Mjimwema	24	district	65	Mjimwema	2009
1617	ward	1417	Mateka	7	district	65	Mateka	2009
1618	ward	1418	Ndilimalitembo	27	district	65	Ndilimalitembo	2009
1619	ward	1419	Rwinga	257	district	66	Rwinga	2009
1620	ward	1420	Mkongo	387	district	66	Mkongo	2009
1621	ward	1421	Ligera	1303	district	66	Ligera	2009
1622	ward	1422	Lusewa	3983	district	66	Lusewa	2009
1623	ward	1423	Magazini	3274	district	66	Magazini	2009
1624	ward	1424	Msindo	60	district	66	Msindo	2009
1625	ward	1425	Luchili	316	district	66	Luchili	2009
1626	ward	1426	Namabengo	164	district	66	Namabengo	2009
1627	ward	1427	Kitanda	213	district	66	Kitanda	2009
1628	ward	1428	Luegu	96	district	66	Luegu	2009
1629	ward	1429	Namtumbo	472	district	66	Namtumbo	2009
1630	ward	1430	Mgombasi	1628	district	66	Mgombasi	2009
1631	ward	1431	Litola	300	district	66	Litola	2009
1632	ward	1432	Likuyuseka	6104	district	66	Likuyuseka	2009
1633	ward	1433	Mputa	241	district	66	Mputa	2009
1634	ward	1434	Hanga	307	district	66	Hanga	2009
1635	ward	1435	Limamu	493	district	66	Limamu	2009
1636	ward	1436	Mchomoro	2380	district	66	Mchomoro	2009
1637	ward	1437	Liparamba	1188	district	67	Liparamba	2009
1638	ward	1438	Tingi	106	district	67	Tingi	2009
1639	ward	1439	Chiwanda	127	district	67	Chiwanda	2009
1640	ward	1440	Mtipwili	117	district	67	Mtipwili	2009
1641	ward	1441	Kingerikiti	132	district	67	Kingerikiti	2009
1642	ward	1442	Luhangarasi	53	district	67	Luhangarasi	2009
1643	ward	1443	Kilosa	58	district	67	Kilosa	2009
1644	ward	1444	Mbambabay	89	district	67	Mbambabay	2009
1645	ward	1445	Lipingo	125	district	67	Lipingo	2009
1646	ward	1446	Liuli	116	district	67	Liuli	2009
1647	ward	1447	Kihagara	76	district	67	Kihagara	2009
1648	ward	1448	Ngumbo	117	district	67	Ngumbo	2009
1649	ward	1449	Liwundi	100	district	67	Liwundi	2009
1650	ward	1450	Mbaha	75	district	67	Mbaha	2009
1651	ward	1451	Lituhi	188	district	67	Lituhi	2009
1652	ward	1452	Kalenga	44	district	68	Kalenga	2009
1653	ward	1453	Kiwere	298	district	68	Kiwere	2009
1654	ward	1454	Nzihi	222	district	68	Nzihi	2009
1655	ward	1455	Ulanda	194	district	68	Ulanda	2009
1656	ward	1456	Mseke	242	district	68	Mseke	2009
1657	ward	1457	Maguliwa	143	district	68	Maguliwa	2009
1658	ward	1458	Mgama	217	district	68	Mgama	2009
1659	ward	1459	Ifunda	334	district	68	Ifunda	2009
1660	ward	1460	Lumuli	224	district	68	Lumuli	2009
1661	ward	1461	Maboga	639	district	68	Maboga	2009
1662	ward	1462	Wasa	458	district	68	Wasa	2009
1663	ward	1463	Mahuninga	909	district	68	Mahuninga	2009
1664	ward	1464	Idodi	8408	district	68	Idodi	2009
1665	ward	1465	Mlowa	982	district	68	Mlowa	2009
1666	ward	1466	Itunundu	692	district	68	Itunundu	2009
1667	ward	1467	Ilolo Mpya	223	district	68	Ilolo Mpya	2009
1668	ward	1468	Nduli	258	district	68	Nduli	2009
1669	ward	1469	Kihorogota	198	district	68	Kihorogota	2009
1670	ward	1470	Izazi	377	district	68	Izazi	2009
1671	ward	1471	Malenga Makali	658	district	68	Malenga Makali	2009
1672	ward	1472	Nyang'Oro	470	district	68	Nyang'Oro	2009
1673	ward	1473	Luhota	170	district	68	Luhota	2009
1674	ward	1474	Lyamgungwe	144	district	68	Lyamgungwe	2009
1675	ward	1475	Mlenge	1853	district	68	Mlenge	2009
1676	ward	1476	Migoli	753	district	68	Migoli	2009
1677	ward	1477	Kiyowela	806	district	69	Kiyowela	2009
1678	ward	1478	Makungu	368	district	69	Makungu	2009
1679	ward	1479	Mninga	207	district	69	Mninga	2009
1680	ward	1480	Kasanga	35	district	69	Kasanga	2009
1681	ward	1481	Igowole	256	district	69	Igowole	2009
1682	ward	1482	Mtambula	155	district	69	Mtambula	2009
1683	ward	1483	Itandula	198	district	69	Itandula	2009
1684	ward	1484	Mbalamaziwa	188	district	69	Mbalamaziwa	2009
1685	ward	1485	Idunda	146	district	69	Idunda	2009
1686	ward	1486	Malangali	140	district	69	Malangali	2009
1687	ward	1487	Nyololo	421	district	69	Nyololo	2009
1688	ward	1488	Ihowanza	299	district	69	Ihowanza	2009
1689	ward	1489	Ikweha	367	district	69	Ikweha	2009
1690	ward	1490	Sadani	329	district	69	Sadani	2009
1691	ward	1491	Igombavanu	219	district	69	Igombavanu	2009
1692	ward	1492	Bumilayinga	210	district	69	Bumilayinga	2009
1693	ward	1493	Mtwango	162	district	69	Mtwango	2009
1694	ward	1494	Isalavanu	162	district	69	Isalavanu	2009
1695	ward	1495	Rungemba	218	district	69	Rungemba	2009
1696	ward	1496	Ifwagi	338	district	69	Ifwagi	2009
1697	ward	1497	Mdabulo	201	district	69	Mdabulo	2009
1698	ward	1498	Ihalimba	339	district	69	Ihalimba	2009
1699	ward	1499	Kibengu	578	district	69	Kibengu	2009
1700	ward	1500	Mapanda	516	district	69	Mapanda	2009
1701	ward	1501	Mpanga	132	district	69	Mpanga	2009
1702	ward	1502	Ihanu	294	district	69	Ihanu	2009
1703	ward	1503	Luhanga	304	district	69	Luhanga	2009
1704	ward	1504	Kihesa	4	district	70	Kihesa	2009
1705	ward	1505	Mtwivila	36	district	70	Mtwivila	2009
1706	ward	1506	Gangilonga	6	district	70	Gangilonga	2009
1707	ward	1507	Kitanzini	1	district	70	Kitanzini	2009
1708	ward	1508	Ruaha	41	district	70	Ruaha	2009
1709	ward	1509	Mshindo	0	district	70	Mshindo	2009
1710	ward	1510	Mivinjeni	0	district	70	Mivinjeni	2009
1711	ward	1511	Mlandege	1	district	70	Mlandege	2009
1712	ward	1512	Mwangata	9	district	70	Mwangata	2009
1713	ward	1513	Kwakilosa	1	district	70	Kwakilosa	2009
1714	ward	1514	Makorongoni	1	district	70	Makorongoni	2009
1715	ward	1515	Ilala	2	district	70	Ilala	2009
1716	ward	1516	Mkwawa	28	district	70	Mkwawa	2009
1717	ward	1517	Kitwiru	32	district	70	Kitwiru	2009
1718	ward	1518	Isakalilo	44	district	70	Isakalilo	2009
1719	ward	1519	Nduli	258	district	70	Nduli	2009
1720	ward	1520	Image	174	district	71	Image	2009
1721	ward	1521	Irole	430	district	71	Irole	2009
1722	ward	1522	Ilula	111	district	71	Ilula	2009
1723	ward	1523	Uhambingeto	297	district	71	Uhambingeto	2009
1724	ward	1524	Udekwa	2432	district	71	Udekwa	2009
1725	ward	1525	Mahenge	5	district	71	Mahenge	2009
1726	ward	1526	Mtitu	129	district	71	Mtitu	2009
1727	ward	1527	Dabaga	271	district	71	Dabaga	2009
1728	ward	1528	Ukumbi	215	district	71	Ukumbi	2009
1729	ward	1529	Ukwega	804	district	71	Ukwega	2009
1730	ward	1530	Boma La Ng'Ombe	154	district	71	Boma La Ng'Ombe	2009
1731	ward	1531	Idete	721	district	71	Idete	2009
1732	ward	1532	Masisiwe	244	district	71	Masisiwe	2009
1733	ward	1533	Ng'Uruhe	247	district	71	Ng'Uruhe	2009
1734	ward	1534	Ng'Ang'Ange	96	district	71	Ng'Ang'Ange	2009
1735	ward	1535	Ihimbo	147	district	71	Ihimbo	2009
1736	ward	1536	Lugalo	176	district	71	Lugalo	2009
1737	ward	1537	Nyalumbu	47	district	71	Nyalumbu	2009
1738	ward	1538	Mlafu	224	district	71	Mlafu	2009
1739	ward	1539	Ibumu	477	district	71	Ibumu	2009
1740	ward	1540	Ruaha Mbuyuni	986	district	71	Ruaha Mbuyuni	2009
1741	ward	1541	Kimala	622	district	71	Kimala	2009
1742	ward	1542	Sao Hill	472	district	72	Sao Hill	2009
1743	ward	1543	Boma	42	district	72	Boma	2009
1744	ward	1544	Kinyanambo	100	district	72	Kinyanambo	2009
1745	ward	1545	Kambikatoto	4347	district	73	Kambikatoto	2009
1746	ward	1546	Mafyeko	4222	district	73	Mafyeko	2009
1747	ward	1547	Matwiga	1134	district	73	Matwiga	2009
1748	ward	1548	Mtanila	684	district	73	Mtanila	2009
1749	ward	1549	Lupatingatinga	607	district	73	Lupatingatinga	2009
1750	ward	1550	Luwalaje	2912	district	73	Luwalaje	2009
1751	ward	1551	Sangambi	581	district	73	Sangambi	2009
1752	ward	1552	Itewe	104	district	73	Itewe	2009
1753	ward	1553	Chokaa	736	district	73	Chokaa	2009
1754	ward	1554	Mbugani	214	district	73	Mbugani	2009
1755	ward	1555	Chalangwa	186	district	73	Chalangwa	2009
1756	ward	1556	Ifumbo	213	district	73	Ifumbo	2009
1757	ward	1557	Kanga	549	district	73	Kanga	2009
1758	ward	1558	Galula	94	district	73	Galula	2009
1759	ward	1559	Mbuyuni	15	district	73	Mbuyuni	2009
1760	ward	1560	Totowe	263	district	73	Totowe	2009
1761	ward	1561	Namkukwe	352	district	73	Namkukwe	2009
1762	ward	1562	Mkwajuni	41	district	73	Mkwajuni	2009
1763	ward	1563	Mbangala	495	district	73	Mbangala	2009
1764	ward	1564	Kapalala	1419	district	73	Kapalala	2009
1765	ward	1565	Gua	4402	district	73	Gua	2009
1766	ward	1566	Ngwala	3464	district	73	Ngwala	2009
1767	ward	1567	Mamba	40	district	73	Mamba	2009
1768	ward	1568	Ifyenkenya	84	district	73	Ifyenkenya	2009
1769	ward	1569	Magamba	182	district	73	Magamba	2009
1770	ward	1570	Saza	272	district	73	Saza	2009
1771	ward	1571	Mwambani	105	district	73	Mwambani	2009
1772	ward	1572	Mkola	149	district	73	Mkola	2009
1773	ward	1573	Makongorosi	342	district	73	Makongorosi	2009
1774	ward	1574	Matundasi	425	district	73	Matundasi	2009
1775	ward	1575	Ihango	171	district	74	Ihango	2009
1776	ward	1576	Ulenje	100	district	74	Ulenje	2009
1777	ward	1577	Tembela	35	district	74	Tembela	2009
1778	ward	1578	Ijombe	80	district	74	Ijombe	2009
1779	ward	1579	Santilya	106	district	74	Santilya	2009
1780	ward	1580	Ilembo	140	district	74	Ilembo	2009
1781	ward	1581	Iwiji	155	district	74	Iwiji	2009
1782	ward	1582	Isuto	127	district	74	Isuto	2009
1783	ward	1583	Igale	61	district	74	Igale	2009
1784	ward	1584	Iwindi	115	district	74	Iwindi	2009
1785	ward	1585	Utengule Usongwe	92	district	74	Utengule Usongwe	2009
1786	ward	1586	Mshewe	466	district	74	Mshewe	2009
1787	ward	1587	Ikukwa	66	district	74	Ikukwa	2009
1788	ward	1588	Iyunga Mapinduzi	46	district	74	Iyunga Mapinduzi	2009
1789	ward	1589	Bonde La Songwe	106	district	74	Bonde La Songwe	2009
1790	ward	1590	Inyala	105	district	74	Inyala	2009
1791	ward	1591	Ilungu	247	district	74	Ilungu	2009
1792	ward	1592	Maendeleo	36	district	74	Maendeleo	2009
1793	ward	1593	Swaya	54	district	74	Swaya	2009
1794	ward	1594	Masoko	205	district	74	Masoko	2009
1795	ward	1595	Itawa	112	district	74	Itawa	2009
1796	ward	1596	Nsalala	16	district	74	Nsalala	2009
1797	ward	1597	Lwanjiro	331	district	74	Lwanjiro	2009
1798	ward	1598	Itewe	104	district	74	Itewe	2009
1799	ward	1599	Igoma	42	district	74	Igoma	2009
1800	ward	1600	Lusungo	25	district	75	Lusungo	2009
1801	ward	1601	Makwale	31	district	75	Makwale	2009
1802	ward	1602	Matema	107	district	75	Matema	2009
1803	ward	1603	Mwaya	95	district	75	Mwaya	2009
1804	ward	1604	Ndobo	30	district	75	Ndobo	2009
1805	ward	1605	Kajunjumele	30	district	75	Kajunjumele	2009
1806	ward	1606	Bujonde	27	district	75	Bujonde	2009
1807	ward	1607	Ikolo	18	district	75	Ikolo	2009
1808	ward	1608	Katumbasongwe	43	district	75	Katumbasongwe	2009
1809	ward	1609	Ngana	67	district	75	Ngana	2009
1810	ward	1610	Busale	53	district	75	Busale	2009
1811	ward	1611	Ipande	60	district	75	Ipande	2009
1812	ward	1612	Ikama	16	district	75	Ikama	2009
1813	ward	1613	Ipinda	42	district	75	Ipinda	2009
1814	ward	1614	Ngonga	25	district	75	Ngonga	2009
1815	ward	1615	Ikimba	29	district	75	Ikimba	2009
1816	ward	1616	Itope	37	district	75	Itope	2009
1817	ward	1617	Muungano	107	district	75	Muungano	2009
1818	ward	1618	Talatala	39	district	75	Talatala	2009
1819	ward	1619	Kyela	25	district	75	Kyela	2009
1820	ward	1620	Swaya	54	district	76	Swaya	2009
1821	ward	1621	Masebe	42	district	76	Masebe	2009
1822	ward	1622	Suma	53	district	76	Suma	2009
1823	ward	1623	Kandete	77	district	76	Kandete	2009
1824	ward	1624	Luteba	110	district	76	Luteba	2009
1825	ward	1625	Mpombo	48	district	76	Mpombo	2009
1826	ward	1626	Isange	14	district	76	Isange	2009
1827	ward	1627	Kabula	80	district	76	Kabula	2009
1828	ward	1628	Lwangwa	53	district	76	Lwangwa	2009
1829	ward	1629	Lufilyo	66	district	76	Lufilyo	2009
1830	ward	1630	Itete	689	district	76	Itete	2009
1831	ward	1631	Kisegese	89	district	76	Kisegese	2009
1832	ward	1632	Lupata	56	district	76	Lupata	2009
1833	ward	1633	Kambasegela	55	district	76	Kambasegela	2009
1834	ward	1634	Masukulu	48	district	76	Masukulu	2009
1835	ward	1635	Kisiba	35	district	76	Kisiba	2009
1836	ward	1636	Masoko	205	district	76	Masoko	2009
1837	ward	1637	Bujela	36	district	76	Bujela	2009
1838	ward	1638	Ilima	62	district	76	Ilima	2009
1839	ward	1639	Kisondela	84	district	76	Kisondela	2009
1840	ward	1640	Ikuti	87	district	76	Ikuti	2009
1841	ward	1641	Malindo	30	district	76	Malindo	2009
1842	ward	1642	Mpuguso	20	district	76	Mpuguso	2009
1843	ward	1643	Kikole	827	district	76	Kikole	2009
1844	ward	1644	Lufingo	66	district	76	Lufingo	2009
1845	ward	1645	Nkunga	115	district	76	Nkunga	2009
1846	ward	1646	Kyimo	74	district	76	Kyimo	2009
1847	ward	1647	Kinyala	82	district	76	Kinyala	2009
1848	ward	1648	Kiwira	93	district	76	Kiwira	2009
1849	ward	1649	Isongole	239	district	76	Isongole	2009
1850	ward	1650	Ikama	16	district	76	Ikama	2009
1851	ward	1651	Ibighi	19	district	76	Ibighi	2009
1852	ward	1652	Bagamoyo	1	district	76	Bagamoyo	2009
1853	ward	1653	Kawetele	1	district	76	Kawetele	2009
1854	ward	1654	Bulyaga	4	district	76	Bulyaga	2009
1855	ward	1655	Msasani	11	district	76	Msasani	2009
1856	ward	1656	Makandana	17	district	76	Makandana	2009
1857	ward	1657	Itumba	104	district	77	Itumba	2009
1858	ward	1658	Itale	102	district	77	Itale	2009
1859	ward	1659	Ibaba	157	district	77	Ibaba	2009
1860	ward	1660	Ndola	131	district	77	Ndola	2009
1861	ward	1661	Luswisi	41	district	77	Luswisi	2009
1862	ward	1662	Ngulilo	62	district	77	Ngulilo	2009
1863	ward	1663	Lubanda	93	district	77	Lubanda	2009
1864	ward	1664	Ngulugulu	105	district	77	Ngulugulu	2009
1865	ward	1665	Sange	51	district	77	Sange	2009
1866	ward	1666	Ikinga	216	district	77	Ikinga	2009
1867	ward	1667	Kafule	100	district	77	Kafule	2009
1868	ward	1668	Malangali	140	district	77	Malangali	2009
1869	ward	1669	Bupigu	202	district	77	Bupigu	2009
1870	ward	1670	Isongole	239	district	77	Isongole	2009
1871	ward	1671	Chitete	115	district	77	Chitete	2009
1872	ward	1672	Mbebe	137	district	77	Mbebe	2009
1873	ward	1673	Mlale	104	district	77	Mlale	2009
1874	ward	1674	Kalembo	52	district	77	Kalembo	2009
1875	ward	1675	Ihanda	130	district	78	Ihanda	2009
1876	ward	1676	Bara	302	district	78	Bara	2009
1877	ward	1677	Nanyala	223	district	78	Nanyala	2009
1878	ward	1678	Nambinzo	575	district	78	Nambinzo	2009
1879	ward	1679	Itaka	161	district	78	Itaka	2009
1880	ward	1680	Isansa	555	district	78	Isansa	2009
1881	ward	1681	Ruanda	513	district	78	Ruanda	2009
1882	ward	1682	Iyula	271	district	78	Iyula	2009
1883	ward	1683	Nyambili	366	district	78	Nyambili	2009
1884	ward	1684	Mlangali	140	district	78	Mlangali	2009
1885	ward	1685	Myovizi	104	district	78	Myovizi	2009
1886	ward	1686	Igamba	181	district	78	Igamba	2009
1887	ward	1687	Halungu	169	district	78	Halungu	2009
1888	ward	1688	Msia	243	district	78	Msia	2009
1889	ward	1689	Mlowo	70	district	78	Mlowo	2009
1890	ward	1690	Ipunga	104	district	78	Ipunga	2009
1891	ward	1691	Isandula	158	district	78	Isandula	2009
1892	ward	1692	Vwawa	135	district	78	Vwawa	2009
1893	ward	1693	Luhanga	304	district	79	Luhanga	2009
1894	ward	1694	Madibira	1362	district	79	Madibira	2009
1895	ward	1695	Mawindi	211	district	79	Mawindi	2009
1896	ward	1696	Ihahi	61	district	79	Ihahi	2009
1897	ward	1697	Mapogoro	560	district	79	Mapogoro	2009
1898	ward	1698	Chimala	64	district	79	Chimala	2009
1899	ward	1699	Utengule Usangu	232	district	79	Utengule Usangu	2009
1900	ward	1700	Ruiwa	440	district	79	Ruiwa	2009
1901	ward	1701	Mahongole	74	district	79	Mahongole	2009
1902	ward	1702	Ubaruku	43	district	79	Ubaruku	2009
1903	ward	1703	Igurusi	96	district	79	Igurusi	2009
1904	ward	1704	Kongolo	88	district	79	Kongolo	2009
1905	ward	1705	Mwatenga	165	district	79	Mwatenga	2009
1906	ward	1706	Imalilosongwe	1376	district	79	Imalilosongwe	2009
1907	ward	1707	Igava	3650	district	79	Igava	2009
1908	ward	1708	Ipwani	311	district	79	Ipwani	2009
1909	ward	1709	Itambaleo	382	district	79	Itambaleo	2009
1910	ward	1710	Miyombweni	388	district	79	Miyombweni	2009
1911	ward	1711	Rujewa	187	district	79	Rujewa	2009
1912	ward	1712	Sisimba	4	district	80	Sisimba	2009
1913	ward	1713	Isanga	1	district	80	Isanga	2009
1914	ward	1714	Iganzo	6	district	80	Iganzo	2009
1915	ward	1715	Mwansekwa	15	district	80	Mwansekwa	2009
1916	ward	1716	Itagano	24	district	80	Itagano	2009
1917	ward	1717	Itezi	12	district	80	Itezi	2009
1918	ward	1718	Nsalaga	24	district	80	Nsalaga	2009
1919	ward	1719	Igawilo	5	district	80	Igawilo	2009
1920	ward	1720	Iganjo	6	district	80	Iganjo	2009
1921	ward	1721	Uyole	12	district	80	Uyole	2009
1922	ward	1722	Iduda	13	district	80	Iduda	2009
1923	ward	1723	Mwasanga	6	district	80	Mwasanga	2009
1924	ward	1724	Tembela	35	district	80	Tembela	2009
1925	ward	1725	Ilomba	13	district	80	Ilomba	2009
1926	ward	1726	Mwakibete	7	district	80	Mwakibete	2009
1927	ward	1727	Ilemi	8	district	80	Ilemi	2009
1928	ward	1728	Isyesye	12	district	80	Isyesye	2009
1929	ward	1729	Ruanda	513	district	80	Ruanda	2009
1930	ward	1730	Iyela	9	district	80	Iyela	2009
1931	ward	1731	Sinde	1	district	80	Sinde	2009
1932	ward	1732	Maanga	0	district	80	Maanga	2009
1933	ward	1733	Mbalizi Rd	1	district	80	Mbalizi Rd	2009
1934	ward	1734	Forest	1	district	80	Forest	2009
1935	ward	1735	Mabatini	1	district	80	Mabatini	2009
1936	ward	1736	Nzovwe	7	district	80	Nzovwe	2009
1937	ward	1737	Kalobe	6	district	80	Kalobe	2009
1938	ward	1738	Iyunga	12	district	80	Iyunga	2009
1939	ward	1739	Iwambi	11	district	80	Iwambi	2009
1940	ward	1740	Itende	13	district	80	Itende	2009
1941	ward	1741	Iziwa	17	district	80	Iziwa	2009
1942	ward	1742	Nsoho	3	district	80	Nsoho	2009
1943	ward	1743	Majengo	1	district	80	Majengo	2009
1944	ward	1744	Ghana	1	district	80	Ghana	2009
1945	ward	1745	Nonde	1	district	80	Nonde	2009
1946	ward	1746	Itiji	2	district	80	Itiji	2009
1947	ward	1747	Maendeleo	36	district	80	Maendeleo	2009
1948	ward	1748	Chilulumo	245	district	81	Chilulumo	2009
1949	ward	1749	Kamsamba	191	district	81	Kamsamba	2009
1950	ward	1750	Ivuna	682	district	81	Ivuna	2009
1951	ward	1751	Mpapa	107	district	81	Mpapa	2009
1952	ward	1752	Mkulwe	230	district	81	Mkulwe	2009
1953	ward	1753	Chitete	115	district	81	Chitete	2009
1954	ward	1754	Msangano	352	district	81	Msangano	2009
1955	ward	1755	Chiwezi	363	district	81	Chiwezi	2009
1956	ward	1756	Nkangamo	297	district	81	Nkangamo	2009
1957	ward	1757	Ndalembo	557	district	81	Ndalembo	2009
1958	ward	1758	Kapele	600	district	81	Kapele	2009
1959	ward	1759	Nzoka	347	district	81	Nzoka	2009
1960	ward	1760	Myunga	397	district	81	Myunga	2009
1961	ward	1761	Tunduma	90	district	82	Tunduma	2009
1962	ward	1762	Urughu	462	district	83	Urughu	2009
1963	ward	1763	Mtekente	454	district	83	Mtekente	2009
1964	ward	1764	Mtoa	364	district	83	Mtoa	2009
1965	ward	1765	Mgongo	227	district	83	Mgongo	2009
1966	ward	1766	Shelui	112	district	83	Shelui	2009
1967	ward	1767	Ntwike	414	district	83	Ntwike	2009
1968	ward	1768	Tulya	105	district	83	Tulya	2009
1969	ward	1769	Kidaru	273	district	83	Kidaru	2009
1970	ward	1770	Kisiriri	296	district	83	Kisiriri	2009
1971	ward	1771	Kiomboi	300	district	83	Kiomboi	2009
1972	ward	1772	Kinampanda	225	district	83	Kinampanda	2009
1973	ward	1773	Ulemo	261	district	83	Ulemo	2009
1974	ward	1774	Kyengege	124	district	83	Kyengege	2009
1975	ward	1775	Ndago	341	district	83	Ndago	2009
1976	ward	1776	Mbelekese	231	district	83	Mbelekese	2009
1977	ward	1777	Kaselya	140	district	83	Kaselya	2009
1978	ward	1778	Ndulungu	219	district	83	Ndulungu	2009
1979	ward	1779	Mudida	96	district	84	Mudida	2009
1980	ward	1780	Makuro	109	district	84	Makuro	2009
1981	ward	1781	Ikhanoda	83	district	84	Ikhanoda	2009
1982	ward	1782	Mwasauya	56	district	84	Mwasauya	2009
1983	ward	1783	Msange	81	district	84	Msange	2009
1984	ward	1784	Maghojoa	62	district	84	Maghojoa	2009
1985	ward	1785	Itaja	86	district	84	Itaja	2009
1986	ward	1786	Ngimu	215	district	84	Ngimu	2009
1987	ward	1787	Mughunga	569	district	84	Mughunga	2009
1988	ward	1788	Mgori	170	district	84	Mgori	2009
1989	ward	1789	Mughamo	61	district	84	Mughamo	2009
1990	ward	1790	Kinyagigi	73	district	84	Kinyagigi	2009
1991	ward	1791	Merya	62	district	84	Merya	2009
1992	ward	1792	Kinyeto	49	district	84	Kinyeto	2009
1993	ward	1793	Ntonge	72	district	84	Ntonge	2009
1994	ward	1794	Ilongero	59	district	84	Ilongero	2009
1995	ward	1795	Mrama	53	district	84	Mrama	2009
1996	ward	1796	Kijota	85	district	84	Kijota	2009
1997	ward	1797	Mtinko	121	district	84	Mtinko	2009
1998	ward	1798	Ughandi	143	district	84	Ughandi	2009
1999	ward	1799	Msisi	300	district	84	Msisi	2009
2000	ward	1800	Manyoni	165	district	85	Manyoni	2009
2001	ward	1801	Solya	134	district	85	Solya	2009
2002	ward	1802	Makuru	761	district	85	Makuru	2009
2003	ward	1803	Chikuyu	115	district	85	Chikuyu	2009
2004	ward	1804	Makanda	305	district	85	Makanda	2009
2005	ward	1805	Kintinku	96	district	85	Kintinku	2009
2006	ward	1806	Mvumi	382	district	85	Mvumi	2009
2007	ward	1807	Majiri	443	district	85	Majiri	2009
2008	ward	1808	Sasajila	200	district	85	Sasajila	2009
2009	ward	1809	Idodyandole	475	district	85	Idodyandole	2009
2010	ward	1810	Chikola	366	district	85	Chikola	2009
2011	ward	1811	Heka	447	district	85	Heka	2009
2012	ward	1812	Nkonko	1110	district	85	Nkonko	2009
2013	ward	1813	Sanza	273	district	85	Sanza	2009
2014	ward	1814	Isseke	2912	district	85	Isseke	2009
2015	ward	1815	Rungwa	5512	district	85	Rungwa	2009
2016	ward	1816	Mgandu	1436	district	85	Mgandu	2009
2017	ward	1817	Itigi Mjini	51	district	85	Itigi Mjini	2009
2018	ward	1818	Ipande	60	district	85	Ipande	2009
2019	ward	1819	Sanjaranda	451	district	85	Sanjaranda	2009
2020	ward	1820	Aghondi	302	district	85	Aghondi	2009
2021	ward	1821	Mkwese	328	district	85	Mkwese	2009
2022	ward	1822	Muhalala	111	district	85	Muhalala	2009
2023	ward	1823	Saranda	299	district	85	Saranda	2009
2024	ward	1824	Makutupora	208	district	85	Makutupora	2009
2025	ward	1825	Sasilo	507	district	85	Sasilo	2009
2026	ward	1826	Mwamagembe	8009	district	85	Mwamagembe	2009
2027	ward	1827	Mitundu	516	district	85	Mitundu	2009
2028	ward	1828	Kitaraka	2012	district	85	Kitaraka	2009
2029	ward	1829	Itigi Majengo	38	district	85	Itigi Majengo	2009
2030	ward	1830	Mtipa	107	district	86	Mtipa	2009
2031	ward	1831	Mughanga	0	district	86	Mughanga	2009
2032	ward	1832	Mitunduru	15	district	86	Mitunduru	2009
2033	ward	1833	Majengo	1	district	86	Majengo	2009
2034	ward	1834	Umyambwa	74	district	86	Umyambwa	2009
2035	ward	1835	Mungu Maji	25	district	86	Mungu Maji	2009
2036	ward	1836	Unyamikumbi	107	district	86	Unyamikumbi	2009
2037	ward	1837	Mtamaa	86	district	86	Mtamaa	2009
2038	ward	1838	Kindai	7	district	86	Kindai	2009
2039	ward	1839	Ipembe	0	district	86	Ipembe	2009
2040	ward	1840	Utemini	8	district	86	Utemini	2009
2041	ward	1841	Mwankoko	136	district	86	Mwankoko	2009
2042	ward	1842	Mandewa	67	district	86	Mandewa	2009
2043	ward	1843	Minga	5	district	86	Minga	2009
2044	ward	1844	Misuna	10	district	86	Misuna	2009
2045	ward	1845	Uhamaka	76	district	86	Uhamaka	2009
2046	ward	1846	Puma	66	district	87	Puma	2009
2047	ward	1847	Kituntu	105	district	87	Kituntu	2009
2048	ward	1848	Mungaa	159	district	87	Mungaa	2009
2049	ward	1849	Siuyu	80	district	87	Siuyu	2009
2050	ward	1850	Kikio	234	district	87	Kikio	2009
2051	ward	1851	Lighwa	112	district	87	Lighwa	2009
2052	ward	1852	Misughaa	191	district	87	Misughaa	2009
2053	ward	1853	Ntuntu	190	district	87	Ntuntu	2009
2054	ward	1854	Dung'Unyi	110	district	87	Dung'Unyi	2009
2055	ward	1855	Mang'Onyi	358	district	87	Mang'Onyi	2009
2056	ward	1856	Mkiwa	502	district	87	Mkiwa	2009
2057	ward	1857	Issuna	869	district	87	Issuna	2009
2058	ward	1858	Unyahati	240	district	87	Unyahati	2009
2059	ward	1859	Ikungi	168	district	87	Ikungi	2009
2060	ward	1860	Iglansoni	1132	district	87	Iglansoni	2009
2061	ward	1861	Iseke	133	district	87	Iseke	2009
2062	ward	1862	Ihanja	231	district	87	Ihanja	2009
2063	ward	1863	Minyughe	577	district	87	Minyughe	2009
2064	ward	1864	Muhintiri	254	district	87	Muhintiri	2009
2065	ward	1865	Iyumbu	38	district	87	Iyumbu	2009
2066	ward	1866	Mgungira	491	district	87	Mgungira	2009
2067	ward	1867	Mwaru	499	district	87	Mwaru	2009
2068	ward	1868	Ighombwe	1105	district	87	Ighombwe	2009
2069	ward	1869	Mtunduru	292	district	87	Mtunduru	2009
2070	ward	1870	Sepuka	131	district	87	Sepuka	2009
2071	ward	1871	Irisya	76	district	87	Irisya	2009
2072	ward	1872	Mpambala	228	district	88	Mpambala	2009
2073	ward	1873	Mwangeza	790	district	88	Mwangeza	2009
2074	ward	1874	Mwanga	159	district	88	Mwanga	2009
2075	ward	1875	Nkinto	151	district	88	Nkinto	2009
2076	ward	1876	Ibaga	228	district	88	Ibaga	2009
2077	ward	1877	Gumanga	271	district	88	Gumanga	2009
2078	ward	1878	Msingi	141	district	88	Msingi	2009
2079	ward	1879	Nduguti	96	district	88	Nduguti	2009
2080	ward	1880	Ilunda	213	district	88	Ilunda	2009
2081	ward	1881	Kinyangiri	228	district	88	Kinyangiri	2009
2082	ward	1882	Iguguno	215	district	88	Iguguno	2009
2083	ward	1883	Miganga	107	district	88	Miganga	2009
2084	ward	1884	Matongo	117	district	88	Matongo	2009
2085	ward	1885	Kikhonda	96	district	88	Kikhonda	2009
2086	ward	1886	Puge	158	district	89	Puge	2009
2087	ward	1887	Nkiniziwa	337	district	89	Nkiniziwa	2009
2088	ward	1888	Budushi	141	district	89	Budushi	2009
2089	ward	1889	Mwakashanhala	681	district	89	Mwakashanhala	2009
2090	ward	1890	Tongi	322	district	89	Tongi	2009
2091	ward	1891	Mizibaziba	238	district	89	Mizibaziba	2009
2092	ward	1892	Milambo Itobo	241	district	89	Milambo Itobo	2009
2093	ward	1893	Magengati	145	district	89	Magengati	2009
2094	ward	1894	Ndala	187	district	89	Ndala	2009
2095	ward	1895	Nzega Mjini	19	district	89	Nzega Mjini	2009
2096	ward	1896	Wela	101	district	89	Wela	2009
2097	ward	1897	Mbogwe	64	district	89	Mbogwe	2009
2098	ward	1898	Miguwa	214	district	89	Miguwa	2009
2099	ward	1899	Itilo	171	district	89	Itilo	2009
2100	ward	1900	Muhugi	330	district	89	Muhugi	2009
2101	ward	1901	Utwigu	369	district	89	Utwigu	2009
2102	ward	1902	Ijanija	108	district	89	Ijanija	2009
2103	ward	1903	Nzegandogo	118	district	89	Nzegandogo	2009
2104	ward	1904	Lusu	291	district	89	Lusu	2009
2105	ward	1905	Nata	118	district	89	Nata	2009
2106	ward	1906	Isanzu	180	district	89	Isanzu	2009
2107	ward	1907	Itobo	92	district	89	Itobo	2009
2108	ward	1908	Mwangoye	144	district	89	Mwangoye	2009
2109	ward	1909	Sigili	120	district	89	Sigili	2009
2110	ward	1910	Mwamala	206	district	89	Mwamala	2009
2111	ward	1911	Igusule	324	district	89	Igusule	2009
2112	ward	1912	Shigamba	63	district	89	Shigamba	2009
2113	ward	1913	Kasela	100	district	89	Kasela	2009
2114	ward	1914	Karitu	97	district	89	Karitu	2009
2115	ward	1915	Bukene	26	district	89	Bukene	2009
2116	ward	1916	Mogwa	275	district	89	Mogwa	2009
2117	ward	1917	Mambali	900	district	89	Mambali	2009
2118	ward	1918	Kahamanhalanga	235	district	89	Kahamanhalanga	2009
2119	ward	1919	Uduka	54	district	89	Uduka	2009
2120	ward	1920	Semembela	437	district	89	Semembela	2009
2121	ward	1921	Isagenhe	181	district	89	Isagenhe	2009
2122	ward	1922	Ikindwa	119	district	89	Ikindwa	2009
2123	ward	1923	Igunga	361	district	90	Igunga	2009
2124	ward	1924	Itumba	104	district	90	Itumba	2009
2125	ward	1925	Bukoko	276	district	90	Bukoko	2009
2126	ward	1926	Isakamaliwa	232	district	90	Isakamaliwa	2009
2127	ward	1927	Nyandekwa	106	district	90	Nyandekwa	2009
2128	ward	1928	Nanga	264	district	90	Nanga	2009
2129	ward	1929	Nguvumoja	261	district	90	Nguvumoja	2009
2130	ward	1930	Mbutu	409	district	90	Mbutu	2009
2131	ward	1931	Kining'Inila	213	district	90	Kining'Inila	2009
2132	ward	1932	Igurubi	280	district	90	Igurubi	2009
2133	ward	1933	Mwamashimba	226	district	90	Mwamashimba	2009
2134	ward	1934	Kinungu	251	district	90	Kinungu	2009
2135	ward	1935	Ntobo	194	district	90	Ntobo	2009
2136	ward	1936	Itunduru	219	district	90	Itunduru	2009
2137	ward	1937	Mwamashiga	190	district	90	Mwamashiga	2009
2138	ward	1938	Choma	186	district	90	Choma	2009
2139	ward	1939	Mwashiku	219	district	90	Mwashiku	2009
2140	ward	1940	Ziba	218	district	90	Ziba	2009
2141	ward	1941	Ndembezi	136	district	90	Ndembezi	2009
2142	ward	1942	Nkinga	253	district	90	Nkinga	2009
2143	ward	1943	Ngulu	128	district	90	Ngulu	2009
2144	ward	1944	Simbo	323	district	90	Simbo	2009
2145	ward	1945	Igowero	871	district	90	Igowero	2009
2146	ward	1946	Mwisi	168	district	90	Mwisi	2009
2147	ward	1947	Chabutwa	105	district	90	Chabutwa	2009
2148	ward	1948	Sungwizi	373	district	90	Sungwizi	2009
2149	ward	1949	Lutende	876	district	91	Lutende	2009
2150	ward	1950	Kizengi	1042	district	91	Kizengi	2009
2151	ward	1951	Goweko	293	district	91	Goweko	2009
2152	ward	1952	Igalula	559	district	91	Igalula	2009
2153	ward	1953	Ilolanguru	409	district	91	Ilolanguru	2009
2154	ward	1954	Mabama	494	district	91	Mabama	2009
2155	ward	1955	Ndono	236	district	91	Ndono	2009
2156	ward	1956	Ufuluma	448	district	91	Ufuluma	2009
2157	ward	1957	Usagari	147	district	91	Usagari	2009
2158	ward	1958	Ibiri	491	district	91	Ibiri	2009
2159	ward	1959	Bukumbi	527	district	91	Bukumbi	2009
2160	ward	1960	Ikongolo	160	district	91	Ikongolo	2009
2161	ward	1961	Upuge	137	district	91	Upuge	2009
2162	ward	1962	Magiri	246	district	91	Magiri	2009
2163	ward	1963	Isikizya	145	district	91	Isikizya	2009
2164	ward	1964	Shitage	216	district	91	Shitage	2009
2165	ward	1965	Loya	1230	district	91	Loya	2009
2166	ward	1966	Miswaki	492	district	91	Miswaki	2009
2167	ward	1967	Tura	1732	district	91	Tura	2009
2168	ward	1968	Nsololo	242	district	91	Nsololo	2009
2169	ward	1969	Kigwa	539	district	91	Kigwa	2009
2170	ward	1970	Miyenze	946	district	91	Miyenze	2009
2171	ward	1971	Nsimbo	196	district	91	Nsimbo	2009
2172	ward	1972	Ibelamilundi	260	district	91	Ibelamilundi	2009
2173	ward	1973	Kapilula	40	district	92	Kapilula	2009
2174	ward	1974	Urambo	56	district	92	Urambo	2009
2175	ward	1975	Vumilia	117	district	92	Vumilia	2009
2176	ward	1976	Muungano	107	district	92	Muungano	2009
2177	ward	1977	Songambele	176	district	92	Songambele	2009
2178	ward	1978	Uyogo	438	district	92	Uyogo	2009
2179	ward	1979	Kiloleni	118	district	92	Kiloleni	2009
2180	ward	1980	Ussoke	107	district	92	Ussoke	2009
2181	ward	1981	Uyumbu	846	district	92	Uyumbu	2009
2182	ward	1982	Ugalla	631	district	92	Ugalla	2009
2183	ward	1983	Usisya	170	district	92	Usisya	2009
2184	ward	1984	Utundu	64	district	92	Utundu	2009
2185	ward	1985	Kasisi	204	district	92	Kasisi	2009
2186	ward	1986	Imalamakoye	31	district	92	Imalamakoye	2009
2187	ward	1987	Nsenda	1098	district	92	Nsenda	2009
2188	ward	1988	Ukondamoyo	1090	district	92	Ukondamoyo	2009
2189	ward	1989	Tutuo	261	district	93	Tutuo	2009
2190	ward	1990	Chabutwa	105	district	93	Chabutwa	2009
2191	ward	1991	Kaloleli	1304	district	93	Kaloleli	2009
2192	ward	1992	Kipanga	1773	district	93	Kipanga	2009
2193	ward	1993	Sikonge	633	district	93	Sikonge	2009
2194	ward	1994	Kitunda	20	district	93	Kitunda	2009
2195	ward	1995	Kiloli	2184	district	93	Kiloli	2009
2196	ward	1996	Kipili	2577	district	93	Kipili	2009
2197	ward	1997	Pangale	259	district	93	Pangale	2009
2198	ward	1998	Ipole	429	district	93	Ipole	2009
2199	ward	1999	Ngoywa	2986	district	93	Ngoywa	2009
2200	ward	2000	Kisanga	539	district	93	Kisanga	2009
2201	ward	2001	Misheni	176	district	93	Misheni	2009
2202	ward	2002	Mole	233	district	93	Mole	2009
2203	ward	2003	Mpombwe	131	district	93	Mpombwe	2009
2204	ward	2004	Usunga	1789	district	93	Usunga	2009
2205	ward	2005	Kanyenye	2	district	94	Kanyenye	2009
2206	ward	2006	Gongoni	1	district	94	Gongoni	2009
2207	ward	2007	Mbugani	214	district	94	Mbugani	2009
2208	ward	2008	Chemchem	17	district	94	Chemchem	2009
2209	ward	2009	Tambukareli	4	district	94	Tambukareli	2009
2210	ward	2010	Kiloleni	118	district	94	Kiloleni	2009
2211	ward	2011	Mtendeni	28	district	94	Mtendeni	2009
2212	ward	2012	Isevya	3	district	94	Isevya	2009
2213	ward	2013	Ipuli	17	district	94	Ipuli	2009
2214	ward	2014	Cheyo	13	district	94	Cheyo	2009
2215	ward	2015	Kitete	230	district	94	Kitete	2009
2216	ward	2016	Ng`Ambo	7	district	94	Ng`Ambo	2009
2217	ward	2017	Malolo	323	district	94	Malolo	2009
2218	ward	2018	Kakola	65	district	94	Kakola	2009
2219	ward	2019	Uyui	105	district	94	Uyui	2009
2220	ward	2020	Itonjanda	52	district	94	Itonjanda	2009
2221	ward	2021	Ndevelwa	211	district	94	Ndevelwa	2009
2222	ward	2022	Itetemia	64	district	94	Itetemia	2009
2223	ward	2023	Tumbi	29	district	94	Tumbi	2009
2224	ward	2024	Kalunde	128	district	94	Kalunde	2009
2225	ward	2025	Misha	142	district	94	Misha	2009
2226	ward	2026	Kabila	124	district	94	Kabila	2009
2227	ward	2027	Ikomwa	101	district	94	Ikomwa	2009
2228	ward	2028	Ifucha	82	district	94	Ifucha	2009
2229	ward	2029	Ntalikwa	164	district	94	Ntalikwa	2009
2230	ward	2030	Ukumbi Siganga	3038	district	95	Ukumbi Siganga	2009
2231	ward	2031	Zugimlole	2052	district	95	Zugimlole	2009
2232	ward	2032	Ushokola	265	district	95	Ushokola	2009
2233	ward	2033	Ugunga	269	district	95	Ugunga	2009
2234	ward	2034	Kaliua	246	district	95	Kaliua	2009
2235	ward	2035	Usinge	1222	district	95	Usinge	2009
2236	ward	2036	Igagala	991	district	95	Igagala	2009
2237	ward	2037	Kamsekwa	328	district	95	Kamsekwa	2009
2238	ward	2038	Kazaroho	260	district	95	Kazaroho	2009
2239	ward	2039	Igwisi	885	district	95	Igwisi	2009
2240	ward	2040	Uyowa	332	district	95	Uyowa	2009
2241	ward	2041	Silambo	3077	district	95	Silambo	2009
2242	ward	2042	Kashishi	227	district	95	Kashishi	2009
2243	ward	2043	Sasu	445	district	95	Sasu	2009
2244	ward	2044	Seleli	262	district	95	Seleli	2009
2245	ward	2045	Ichemba	563	district	95	Ichemba	2009
2246	ward	2046	Mwongozo	147	district	95	Mwongozo	2009
2247	ward	2047	Kanoge	94	district	95	Kanoge	2009
2248	ward	2048	Kanindo	257	district	95	Kanindo	2009
2249	ward	2049	Milambo	237	district	95	Milambo	2009
2250	ward	2050	Igombe Mkulu	253	district	95	Igombe Mkulu	2009
2251	ward	2051	Kasanga	35	district	96	Kasanga	2009
2252	ward	2052	Mkowe	564	district	96	Mkowe	2009
2253	ward	2053	Msanzi	422	district	96	Msanzi	2009
2254	ward	2054	Matai	154	district	96	Matai	2009
2255	ward	2055	Sopa	462	district	96	Sopa	2009
2256	ward	2056	Mwazye	141	district	96	Mwazye	2009
2257	ward	2057	Katazi	477	district	96	Katazi	2009
2258	ward	2058	Mwimbi	310	district	96	Mwimbi	2009
2259	ward	2059	Mabwekenya	322	district	96	Mabwekenya	2009
2260	ward	2060	Mwembenkoswe	355	district	96	Mwembenkoswe	2009
2261	ward	2061	Legeza Mwendo	294	district	96	Legeza Mwendo	2009
2262	ward	2062	Ulumi	227	district	96	Ulumi	2009
2263	ward	2063	Mnamba	183	district	96	Mnamba	2009
2264	ward	2064	Katete	364	district	96	Katete	2009
2265	ward	2065	Kisumba	721	district	96	Kisumba	2009
2266	ward	2066	Mkali	199	district	96	Mkali	2009
2267	ward	2067	Kilesha	237	district	96	Kilesha	2009
2268	ward	2068	Mfinga	193	district	97	Mfinga	2009
2269	ward	2069	Laela	403	district	97	Laela	2009
2270	ward	2070	Muze	338	district	97	Muze	2009
2271	ward	2071	Mtowisa	425	district	97	Mtowisa	2009
2272	ward	2072	Milepa	342	district	97	Milepa	2009
2273	ward	2073	Sandulula	273	district	97	Sandulula	2009
2274	ward	2074	Kaengesa	405	district	97	Kaengesa	2009
2275	ward	2075	Mpui	213	district	97	Mpui	2009
2276	ward	2076	Msanda Muungano	187	district	97	Msanda Muungano	2009
2277	ward	2077	Ilemba	234	district	97	Ilemba	2009
2278	ward	2078	Kipeta	800	district	97	Kipeta	2009
2279	ward	2079	Kaoze	478	district	97	Kaoze	2009
2280	ward	2080	Miangalua	362	district	97	Miangalua	2009
2281	ward	2081	Kalambanzite	339	district	97	Kalambanzite	2009
2282	ward	2082	Lusaka	265	district	97	Lusaka	2009
2283	ward	2083	Korongwe	487	district	98	Korongwe	2009
2284	ward	2084	Mtenga	1641	district	98	Mtenga	2009
2285	ward	2085	Mkwamba	571	district	98	Mkwamba	2009
2286	ward	2086	Chala	213	district	98	Chala	2009
2287	ward	2087	Kipande	325	district	98	Kipande	2009
2288	ward	2088	Isale	586	district	98	Isale	2009
2289	ward	2089	Kate	706	district	98	Kate	2009
2290	ward	2090	Sintali	751	district	98	Sintali	2009
2291	ward	2091	Kala	427	district	98	Kala	2009
2292	ward	2092	Wampembe	713	district	98	Wampembe	2009
2293	ward	2093	Ninde	722	district	98	Ninde	2009
2294	ward	2094	Kirando	349	district	98	Kirando	2009
2295	ward	2095	Kabwe	830	district	98	Kabwe	2009
2296	ward	2096	Kipili	2577	district	98	Kipili	2009
2297	ward	2097	Nkandasi	377	district	98	Nkandasi	2009
2298	ward	2098	Namanyere	201	district	98	Namanyere	2009
2299	ward	2099	Nkomolo	773	district	98	Nkomolo	2009
2300	ward	2100	Malangali	140	district	99	Malangali	2009
2301	ward	2101	Mazwi	2	district	99	Mazwi	2009
2302	ward	2102	Izia	5	district	99	Izia	2009
2303	ward	2103	Katandala	4	district	99	Katandala	2009
2304	ward	2104	Old Sumbawanga	27	district	99	Old Sumbawanga	2009
2305	ward	2105	Kizwite	16	district	99	Kizwite	2009
2306	ward	2106	Ntendo	168	district	99	Ntendo	2009
2307	ward	2107	Senga	199	district	99	Senga	2009
2308	ward	2108	Mollo	208	district	99	Mollo	2009
2309	ward	2109	Pito	208	district	99	Pito	2009
2310	ward	2110	Milanzi	84	district	99	Milanzi	2009
2311	ward	2111	Matanga	146	district	99	Matanga	2009
2312	ward	2112	Kasense	134	district	99	Kasense	2009
2313	ward	2113	Majengo	1	district	99	Majengo	2009
2314	ward	2114	Chanji	37	district	99	Chanji	2009
2315	ward	2115	Misezero	162	district	100	Misezero	2009
2316	ward	2116	Bitare	50	district	100	Bitare	2009
2317	ward	2117	Kibondo	144	district	100	Kibondo	2009
2318	ward	2118	Murungu	358	district	100	Murungu	2009
2319	ward	2119	Busagara	11458	district	100	Busagara	2009
2320	ward	2120	Rugongwe	276	district	100	Rugongwe	2009
2321	ward	2121	Busunzu	199	district	100	Busunzu	2009
2322	ward	2122	Kumsenga	192	district	100	Kumsenga	2009
2323	ward	2123	Kizazi	137	district	100	Kizazi	2009
2324	ward	2124	Mabamba	96	district	100	Mabamba	2009
2325	ward	2125	Bunyambo	116	district	100	Bunyambo	2009
2326	ward	2126	Itaba	137	district	100	Itaba	2009
2327	ward	2127	Kitahana	153	district	100	Kitahana	2009
2328	ward	2128	Kitanga	337	district	101	Kitanga	2009
2410	ward	2210	Kakonko	306	district	106	Kakonko	2009
2329	ward	2129	Heru Shingo	788	district	101	Heru Shingo	2009
2330	ward	2130	Nyamidaho	893	district	101	Nyamidaho	2009
2331	ward	2131	Kitagata	457	district	101	Kitagata	2009
2332	ward	2132	Nyachenda	197	district	101	Nyachenda	2009
2333	ward	2133	Buhoro	253	district	101	Buhoro	2009
2334	ward	2134	Nyamnyusi	156	district	101	Nyamnyusi	2009
2335	ward	2135	Nyakitonto	229	district	101	Nyakitonto	2009
2336	ward	2136	Kagerankanda	2170	district	101	Kagerankanda	2009
2337	ward	2137	Kurugongo	364	district	101	Kurugongo	2009
2338	ward	2138	Rungwe Mpya	450	district	101	Rungwe Mpya	2009
2339	ward	2139	Asante Nyerere	98	district	101	Asante Nyerere	2009
2340	ward	2140	Titye	63	district	101	Titye	2009
2341	ward	2141	Shunguliba	110	district	101	Shunguliba	2009
2342	ward	2142	Muzye	47	district	101	Muzye	2009
2343	ward	2143	Bugaga	73	district	101	Bugaga	2009
2344	ward	2144	Kigembe	194	district	101	Kigembe	2009
2345	ward	2145	Rusesa	224	district	101	Rusesa	2009
2346	ward	2146	Kwaga	137	district	101	Kwaga	2009
2347	ward	2147	Kagunga	66	district	102	Kagunga	2009
2348	ward	2148	Mkigo	80	district	102	Mkigo	2009
2349	ward	2149	Mwamgongo	88	district	102	Mwamgongo	2009
2350	ward	2150	Kalinzi	102	district	102	Kalinzi	2009
2351	ward	2151	Bitale	49	district	102	Bitale	2009
2352	ward	2152	Mkongoro	78	district	102	Mkongoro	2009
2353	ward	2153	Mahembe	139	district	102	Mahembe	2009
2354	ward	2154	Matendo	177	district	102	Matendo	2009
2355	ward	2155	Mungonya	40	district	102	Mungonya	2009
2356	ward	2156	Kagongo	115	district	102	Kagongo	2009
2357	ward	2157	Mwandiga	41	district	102	Mwandiga	2009
2358	ward	2158	Gungu	5	district	103	Gungu	2009
2359	ward	2159	Kibirizi	13	district	103	Kibirizi	2009
2360	ward	2160	Buhanda	6	district	103	Buhanda	2009
2361	ward	2161	Businde	8	district	103	Businde	2009
2362	ward	2162	Machinjioni	1	district	103	Machinjioni	2009
2363	ward	2163	Kagera	24	district	103	Kagera	2009
2364	ward	2164	Kasimbu	2	district	103	Kasimbu	2009
2365	ward	2165	Rubuga	1	district	103	Rubuga	2009
2366	ward	2166	Kasingirima	0	district	103	Kasingirima	2009
2367	ward	2167	Majengo	1	district	103	Majengo	2009
2368	ward	2168	Kitongoni	1	district	103	Kitongoni	2009
2369	ward	2169	Kipampa	2	district	103	Kipampa	2009
2370	ward	2170	Rusimbi	1	district	103	Rusimbi	2009
2371	ward	2171	Buzebazeba	4	district	103	Buzebazeba	2009
2372	ward	2172	Mwanga Kusini	4	district	103	Mwanga Kusini	2009
2373	ward	2173	Kigoma	4	district	103	Kigoma	2009
2374	ward	2174	Bangwe	10	district	103	Bangwe	2009
2375	ward	2175	Mwanga Kaskazini	4	district	103	Mwanga Kaskazini	2009
2376	ward	2176	Katubuka	3	district	103	Katubuka	2009
2377	ward	2177	Kalya	541	district	104	Kalya	2009
2378	ward	2178	Buhingu	1677	district	104	Buhingu	2009
2379	ward	2179	Igalula	559	district	104	Igalula	2009
2380	ward	2180	Sigunga	778	district	104	Sigunga	2009
2381	ward	2181	Sunuka	806	district	104	Sunuka	2009
2382	ward	2182	Ilagala	575	district	104	Ilagala	2009
2383	ward	2183	Simbo	323	district	104	Simbo	2009
2384	ward	2184	Kandaga	170	district	104	Kandaga	2009
2385	ward	2185	Kazuramimba	676	district	104	Kazuramimba	2009
2386	ward	2186	Uvinza	1514	district	104	Uvinza	2009
2387	ward	2187	Mganza	1099	district	104	Mganza	2009
2388	ward	2188	Mtego Wa Noti	295	district	104	Mtego Wa Noti	2009
2389	ward	2189	Nguruka	139	district	104	Nguruka	2009
2390	ward	2190	Itebula	463	district	104	Itebula	2009
2391	ward	2191	Nyamugali	81	district	105	Nyamugali	2009
2392	ward	2192	Biharu	53	district	105	Biharu	2009
2393	ward	2193	Muyama	56	district	105	Muyama	2009
2394	ward	2194	Kajana	97	district	105	Kajana	2009
2395	ward	2195	Mugera	96	district	105	Mugera	2009
2396	ward	2196	Kilelema	133	district	105	Kilelema	2009
2397	ward	2197	Munyegera	161	district	105	Munyegera	2009
2398	ward	2198	Buhigwe	109	district	105	Buhigwe	2009
2399	ward	2199	Kibande	47	district	105	Kibande	2009
2400	ward	2200	Janda	191	district	105	Janda	2009
2401	ward	2201	Munzeze	138	district	105	Munzeze	2009
2402	ward	2202	Rusaba	96	district	105	Rusaba	2009
2403	ward	2203	Muhinda	75	district	105	Muhinda	2009
2404	ward	2204	Munanila	83	district	105	Munanila	2009
2405	ward	2205	Mwayaya	100	district	105	Mwayaya	2009
2406	ward	2206	Nyabibuye	86	district	106	Nyabibuye	2009
2407	ward	2207	Nyamtukuza	383	district	106	Nyamtukuza	2009
2408	ward	2208	Muhange	313	district	106	Muhange	2009
2409	ward	2209	Kasunga	152	district	106	Kasunga	2009
2411	ward	2211	Kiziguzigu	210	district	106	Kiziguzigu	2009
2412	ward	2212	Rugenge	95	district	106	Rugenge	2009
2413	ward	2213	Kasanda	284	district	106	Kasanda	2009
2414	ward	2214	Gwamumpu	220	district	106	Gwamumpu	2009
2415	ward	2215	Katanga	82	district	106	Katanga	2009
2416	ward	2216	Mugunzu	85	district	106	Mugunzu	2009
2417	ward	2217	Muganza	81	district	107	Muganza	2009
2418	ward	2218	Kigondo	73	district	107	Kigondo	2009
2419	ward	2219	Msambara	86	district	107	Msambara	2009
2420	ward	2220	Ruhita	80	district	107	Ruhita	2009
2421	ward	2221	Nyumbigwa	94	district	107	Nyumbigwa	2009
2422	ward	2222	Murufiti	76	district	107	Murufiti	2009
2423	ward	2223	Nyansha	49	district	107	Nyansha	2009
2424	ward	2224	Kasulu Mjini	32	district	107	Kasulu Mjini	2009
2425	ward	2225	Muhunga	347	district	107	Muhunga	2009
2426	ward	2226	Mwamalili	81	district	108	Mwamalili	2009
2427	ward	2227	Kolandoto	117	district	108	Kolandoto	2009
2428	ward	2228	Ngokolo	8	district	108	Ngokolo	2009
2429	ward	2229	Ibadakuli	70	district	108	Ibadakuli	2009
2430	ward	2230	Shinyanga Mjini	2	district	108	Shinyanga Mjini	2009
2431	ward	2231	Chamaguha	4	district	108	Chamaguha	2009
2432	ward	2232	Ibinzamata	2	district	108	Ibinzamata	2009
2433	ward	2233	Kitangili	7	district	108	Kitangili	2009
2434	ward	2234	Kizumbi	68	district	108	Kizumbi	2009
2435	ward	2235	Mwawaza	52	district	108	Mwawaza	2009
2436	ward	2236	Ndala	187	district	108	Ndala	2009
2437	ward	2237	Kambarage	45	district	108	Kambarage	2009
2438	ward	2238	Chibe	37	district	108	Chibe	2009
2439	ward	2239	Lubaga	12	district	108	Lubaga	2009
2440	ward	2240	Ndembezi	136	district	108	Ndembezi	2009
2441	ward	2241	Masekelo	5	district	108	Masekelo	2009
2442	ward	2242	Old Shinyanga	58	district	108	Old Shinyanga	2009
2443	ward	2243	Bunambiyu	204	district	109	Bunambiyu	2009
2444	ward	2244	Bubiki	188	district	109	Bubiki	2009
2445	ward	2245	Songwa	93	district	109	Songwa	2009
2446	ward	2246	Seke Bugoro	183	district	109	Seke Bugoro	2009
2447	ward	2247	Mondo	136	district	109	Mondo	2009
2448	ward	2248	Mwadui Lohumbo	259	district	109	Mwadui Lohumbo	2009
2449	ward	2249	Uchunga	233	district	109	Uchunga	2009
2450	ward	2250	Kishapu	261	district	109	Kishapu	2009
2451	ward	2251	Mwakipoya	220	district	109	Mwakipoya	2009
2452	ward	2252	Shagihilu	225	district	109	Shagihilu	2009
2453	ward	2253	Somagedi	134	district	109	Somagedi	2009
2454	ward	2254	Mwamalasa	272	district	109	Mwamalasa	2009
2455	ward	2255	Masanga	302	district	109	Masanga	2009
2456	ward	2256	Lagana	261	district	109	Lagana	2009
2457	ward	2257	Mwamashele	218	district	109	Mwamashele	2009
2458	ward	2258	Ngofila	214	district	109	Ngofila	2009
2459	ward	2259	Kiloleli	204	district	109	Kiloleli	2009
2460	ward	2260	Ukenyenge	224	district	109	Ukenyenge	2009
2461	ward	2261	Talaga	145	district	109	Talaga	2009
2462	ward	2262	Itilima	203	district	109	Itilima	2009
2463	ward	2263	Imesela	92	district	110	Imesela	2009
2464	ward	2264	Usule	62	district	110	Usule	2009
2465	ward	2265	Ilola	89	district	110	Ilola	2009
2466	ward	2266	Didia	93	district	110	Didia	2009
2467	ward	2267	Itwangi	33	district	110	Itwangi	2009
2468	ward	2268	Tinde	174	district	110	Tinde	2009
2469	ward	2269	Mwakitolyoo	207	district	110	Mwakitolyoo	2009
2470	ward	2270	Salawe	89	district	110	Salawe	2009
2471	ward	2271	Solwa	210	district	110	Solwa	2009
2472	ward	2272	Iselamagazi	162	district	110	Iselamagazi	2009
2473	ward	2273	Lyabukande	253	district	110	Lyabukande	2009
2474	ward	2274	Mwantini	65	district	110	Mwantini	2009
2475	ward	2275	Pandagichiza	122	district	110	Pandagichiza	2009
2476	ward	2276	Mwamala	206	district	110	Mwamala	2009
2477	ward	2277	Samuye	156	district	110	Samuye	2009
2478	ward	2278	Usanda	141	district	110	Usanda	2009
2479	ward	2279	Puni	91	district	110	Puni	2009
2480	ward	2280	Nyida	63	district	110	Nyida	2009
2481	ward	2281	Nsalala	16	district	110	Nsalala	2009
2482	ward	2282	Bukene	26	district	110	Bukene	2009
2483	ward	2283	Masengwa	157	district	110	Masengwa	2009
2484	ward	2284	Mwenge	1	district	110	Mwenge	2009
2485	ward	2285	Lyabusalu	364	district	110	Lyabusalu	2009
2486	ward	2286	Mwalukwa	84	district	110	Mwalukwa	2009
2487	ward	2287	Nyamalogo	243	district	110	Nyamalogo	2009
2488	ward	2288	Lyamidati	248	district	110	Lyamidati	2009
2489	ward	2289	Bulyanhulu	103	district	111	Bulyanhulu	2009
2490	ward	2290	Bugarama	109	district	111	Bugarama	2009
2491	ward	2291	Lunguya	281	district	111	Lunguya	2009
2492	ward	2292	Shilela	128	district	111	Shilela	2009
2493	ward	2293	Segese	70	district	111	Segese	2009
2494	ward	2294	Mega	130	district	111	Mega	2009
2495	ward	2295	Chela	320	district	111	Chela	2009
2496	ward	2296	Busangi	116	district	111	Busangi	2009
2497	ward	2297	Ntobo	194	district	111	Ntobo	2009
2498	ward	2298	Ngaya	166	district	111	Ngaya	2009
2499	ward	2299	Bulige	111	district	111	Bulige	2009
2500	ward	2300	Kashishi	227	district	111	Kashishi	2009
2501	ward	2301	Mwanase	233	district	111	Mwanase	2009
2502	ward	2302	Mwalugulu	198	district	111	Mwalugulu	2009
2503	ward	2303	Jana	205	district	111	Jana	2009
2504	ward	2304	Isaka	155	district	111	Isaka	2009
2505	ward	2305	Chona	214	district	111	Chona	2009
2506	ward	2306	Chambo	184	district	111	Chambo	2009
2507	ward	2307	Kisuke	107	district	111	Kisuke	2009
2508	ward	2308	Mapamba	116	district	111	Mapamba	2009
2509	ward	2309	Bukomela	78	district	111	Bukomela	2009
2510	ward	2310	Ukune	147	district	111	Ukune	2009
2511	ward	2311	Igunda	69	district	111	Igunda	2009
2512	ward	2312	Kinamapula	142	district	111	Kinamapula	2009
2513	ward	2313	Igwamanoni	168	district	111	Igwamanoni	2009
2514	ward	2314	Mpunze	107	district	111	Mpunze	2009
2515	ward	2315	Sabasabini	167	district	111	Sabasabini	2009
2516	ward	2316	Idahina	522	district	111	Idahina	2009
2517	ward	2317	Bulungwa	245	district	111	Bulungwa	2009
2518	ward	2318	Nyankende	343	district	111	Nyankende	2009
2519	ward	2319	Ulewe	507	district	111	Ulewe	2009
2520	ward	2320	Ushetu	255	district	111	Ushetu	2009
2521	ward	2321	Uyogo	438	district	111	Uyogo	2009
2522	ward	2322	Ulowa	186	district	111	Ulowa	2009
2523	ward	2323	Ubagwe	360	district	111	Ubagwe	2009
2524	ward	2324	Ngogwa	119	district	112	Ngogwa	2009
2525	ward	2325	Wendele	129	district	112	Wendele	2009
2526	ward	2326	Kinaga	155	district	112	Kinaga	2009
2527	ward	2327	Isagehe	78	district	112	Isagehe	2009
2528	ward	2328	Mondo	136	district	112	Mondo	2009
2529	ward	2329	Kagongwa	26	district	112	Kagongwa	2009
2530	ward	2330	Nyahanga	19	district	112	Nyahanga	2009
2531	ward	2331	Malunga	11	district	112	Malunga	2009
2532	ward	2332	Mhongolo	54	district	112	Mhongolo	2009
2533	ward	2333	Mwendakulima	97	district	112	Mwendakulima	2009
2534	ward	2334	Zongomera	103	district	112	Zongomera	2009
2535	ward	2335	Mhungula	9	district	112	Mhungula	2009
2536	ward	2336	Nyihogo	3	district	112	Nyihogo	2009
2537	ward	2337	Nyasubi	7	district	112	Nyasubi	2009
2538	ward	2338	Kahama Mjini	1	district	112	Kahama Mjini	2009
2539	ward	2339	Majengo	1	district	112	Majengo	2009
2540	ward	2340	Busoka	62	district	112	Busoka	2009
2541	ward	2341	Kilago	129	district	112	Kilago	2009
2542	ward	2342	Iyenze	103	district	112	Iyenze	2009
2543	ward	2343	Nyandekwa	106	district	112	Nyandekwa	2009
2544	ward	2344	Igurwa	81	district	113	Igurwa	2009
2545	ward	2345	Kanoni	131	district	113	Kanoni	2009
2546	ward	2346	Kihanga	600	district	113	Kihanga	2009
2547	ward	2347	Kituntu	105	district	113	Kituntu	2009
2548	ward	2348	Chanika	4	district	113	Chanika	2009
2549	ward	2349	Kayanga	36	district	113	Kayanga	2009
2550	ward	2350	Bugene	42	district	113	Bugene	2009
2551	ward	2351	Ndama	45	district	113	Ndama	2009
2552	ward	2352	Rugera	422	district	113	Rugera	2009
2553	ward	2353	Ihembe	98	district	113	Ihembe	2009
2554	ward	2354	Nyaishozi	123	district	113	Nyaishozi	2009
2555	ward	2355	Rugu	979	district	113	Rugu	2009
2556	ward	2356	Nyakasimbi	397	district	113	Nyakasimbi	2009
2557	ward	2357	Nyakakika	459	district	113	Nyakakika	2009
2558	ward	2358	Nyakabanga	409	district	113	Nyakabanga	2009
2559	ward	2359	Bweranyange	425	district	113	Bweranyange	2009
2560	ward	2360	Kibondo	144	district	113	Kibondo	2009
2561	ward	2361	Nyabiyonza	87	district	113	Nyabiyonza	2009
2562	ward	2362	Kiruruma	152	district	113	Kiruruma	2009
2563	ward	2363	Nyakahanga	165	district	113	Nyakahanga	2009
2564	ward	2364	Ihanda	130	district	113	Ihanda	2009
2565	ward	2365	Chonyonyo	87	district	113	Chonyonyo	2009
2566	ward	2366	Rubafu	39	district	114	Rubafu	2009
2567	ward	2367	Kishanje	48	district	114	Kishanje	2009
2568	ward	2368	Kaagya	51	district	114	Kaagya	2009
2569	ward	2369	Buhendangabo	36	district	114	Buhendangabo	2009
2570	ward	2370	Nyakato	55	district	114	Nyakato	2009
2571	ward	2371	Katoma	25	district	114	Katoma	2009
2572	ward	2372	Karabagaine	61	district	114	Karabagaine	2009
2573	ward	2373	Bujugo	69	district	114	Bujugo	2009
2574	ward	2374	Maruku	29	district	114	Maruku	2009
2575	ward	2375	Kanyangereko	30	district	114	Kanyangereko	2009
2576	ward	2376	Katerero	34	district	114	Katerero	2009
2577	ward	2377	Kemondo	37	district	114	Kemondo	2009
2578	ward	2378	Nyakibimbili	47	district	114	Nyakibimbili	2009
2579	ward	2379	Ibwera	54	district	114	Ibwera	2009
2580	ward	2380	Mikoni	46	district	114	Mikoni	2009
2581	ward	2381	Butelankuzi	52	district	114	Butelankuzi	2009
2582	ward	2382	Rubale	47	district	114	Rubale	2009
2583	ward	2383	Rukoma	92	district	114	Rukoma	2009
2584	ward	2384	Kikomero	33	district	114	Kikomero	2009
2585	ward	2385	Kibirizi	13	district	114	Kibirizi	2009
2586	ward	2386	Izimbya	51	district	114	Izimbya	2009
2587	ward	2387	Butulage	82	district	114	Butulage	2009
2588	ward	2388	Ruhunga	98	district	114	Ruhunga	2009
2589	ward	2389	Mugajwale	48	district	114	Mugajwale	2009
2590	ward	2390	Kyamulaile	105	district	114	Kyamulaile	2009
2591	ward	2391	Katoro	75	district	114	Katoro	2009
2592	ward	2392	Kaibanja	85	district	114	Kaibanja	2009
2593	ward	2393	Kasharu	61	district	114	Kasharu	2009
2594	ward	2394	Kishogo	44	district	114	Kishogo	2009
2595	ward	2395	Muhutwe	65	district	115	Muhutwe	2009
2596	ward	2396	Mayondwe	25	district	115	Mayondwe	2009
2597	ward	2397	Goziba	1	district	115	Goziba	2009
2598	ward	2398	Kerebe	6	district	115	Kerebe	2009
2599	ward	2399	Bumbire	66	district	115	Bumbire	2009
2600	ward	2400	Ikuza	25	district	115	Ikuza	2009
2601	ward	2401	Izigo	23	district	115	Izigo	2009
2602	ward	2402	Katoke	58	district	115	Katoke	2009
2603	ward	2403	Kagoma	41	district	115	Kagoma	2009
2604	ward	2404	Kikuku	40	district	115	Kikuku	2009
2605	ward	2405	Bureza	30	district	115	Bureza	2009
2606	ward	2406	Muleba	22	district	115	Muleba	2009
2607	ward	2407	Ikondo	21	district	115	Ikondo	2009
2608	ward	2408	Buhangaza	27	district	115	Buhangaza	2009
2609	ward	2409	Mazinga	22	district	115	Mazinga	2009
2610	ward	2410	Magata (Karutanga)	34	district	115	Magata (Karutanga)	2009
2611	ward	2411	Gwanseli	56	district	115	Gwanseli	2009
2612	ward	2412	Kibanga	36	district	115	Kibanga	2009
2613	ward	2413	Kasharunga	268	district	115	Kasharunga	2009
2614	ward	2414	Rulanda	50	district	115	Rulanda	2009
2615	ward	2415	Kimwani	149	district	115	Kimwani	2009
2616	ward	2416	Nyakabango	254	district	115	Nyakabango	2009
2617	ward	2417	Kyebitembe	333	district	115	Kyebitembe	2009
2618	ward	2418	Karambi	219	district	115	Karambi	2009
2619	ward	2419	Mubunda	124	district	115	Mubunda	2009
2620	ward	2420	Bisheke	94	district	115	Bisheke	2009
2621	ward	2421	Burungura	151	district	115	Burungura	2009
2622	ward	2422	Biirabo	55	district	115	Biirabo	2009
2623	ward	2423	Mushabago	53	district	115	Mushabago	2009
2624	ward	2424	Nyakatanga	51	district	115	Nyakatanga	2009
2625	ward	2425	Ngenge	208	district	115	Ngenge	2009
2626	ward	2426	Rutoro	493	district	115	Rutoro	2009
2627	ward	2427	Kabirizi	63	district	115	Kabirizi	2009
2628	ward	2428	Nshamba	41	district	115	Nshamba	2009
2629	ward	2429	Kashasha	28	district	115	Kashasha	2009
2630	ward	2430	Ijumbi	38	district	115	Ijumbi	2009
2631	ward	2431	Kishanda	42	district	115	Kishanda	2009
2632	ward	2432	Buganguzi	27	district	115	Buganguzi	2009
2633	ward	2433	Ibuga	36	district	115	Ibuga	2009
2634	ward	2434	Bulyakashaju	34	district	115	Bulyakashaju	2009
2635	ward	2435	Kamachumu	41	district	115	Kamachumu	2009
2636	ward	2436	Ruhanga	38	district	115	Ruhanga	2009
2637	ward	2437	Mafumbo	20	district	115	Mafumbo	2009
2638	ward	2438	Nyakahura	1458	district	116	Nyakahura	2009
2639	ward	2439	Ruziba	1378	district	116	Ruziba	2009
2640	ward	2440	Biharamulo Mjini	41	district	116	Biharamulo Mjini	2009
2641	ward	2441	Bisibo	357	district	116	Bisibo	2009
2642	ward	2442	Nyarubungo	1086	district	116	Nyarubungo	2009
2643	ward	2443	Nyamahanga	89	district	116	Nyamahanga	2009
2644	ward	2444	Runazi	102	district	116	Runazi	2009
2645	ward	2445	Kabindi	148	district	116	Kabindi	2009
2646	ward	2446	Nyamigogo	190	district	116	Nyamigogo	2009
2647	ward	2447	Nyabusozi	223	district	116	Nyabusozi	2009
2648	ward	2448	Nemba	411	district	116	Nemba	2009
2649	ward	2449	Lusahunga	604	district	116	Lusahunga	2009
2650	ward	2450	Kaniha	268	district	116	Kaniha	2009
2651	ward	2451	Nyantakara	543	district	116	Nyantakara	2009
2652	ward	2452	Kalenge	583	district	116	Kalenge	2009
2653	ward	2453	Rusumo	190	district	117	Rusumo	2009
2654	ward	2454	Nyakisasa	203	district	117	Nyakisasa	2009
2655	ward	2455	Rulenge	130	district	117	Rulenge	2009
2656	ward	2456	Keza	202	district	117	Keza	2009
2657	ward	2457	Murusagamba	416	district	117	Murusagamba	2009
2658	ward	2458	Muganza	81	district	117	Muganza	2009
2659	ward	2459	Bugarama	109	district	117	Bugarama	2009
2660	ward	2460	Bukiriro	143	district	117	Bukiriro	2009
2661	ward	2461	Kabanga	85	district	117	Kabanga	2009
2662	ward	2462	Mabawe	51	district	117	Mabawe	2009
2663	ward	2463	Kanazi	82	district	117	Kanazi	2009
2664	ward	2464	Mugoma	55	district	117	Mugoma	2009
2665	ward	2465	Kirushya	63	district	117	Kirushya	2009
2666	ward	2466	Ntobeye	121	district	117	Ntobeye	2009
2667	ward	2467	Nyamiyaga	49	district	117	Nyamiyaga	2009
2668	ward	2468	Ngara Mjini	25	district	117	Ngara Mjini	2009
2669	ward	2469	Kibimba	70	district	117	Kibimba	2009
2670	ward	2470	Mbuba	96	district	117	Mbuba	2009
2671	ward	2471	Murukulazo	116	district	117	Murukulazo	2009
2672	ward	2472	Kasulo	627	district	117	Kasulo	2009
2673	ward	2473	Hamugembe	1	district	118	Hamugembe	2009
2674	ward	2474	Nshambya	7	district	118	Nshambya	2009
2675	ward	2475	Buhemba	11	district	118	Buhemba	2009
2676	ward	2476	Kahororo	16	district	118	Kahororo	2009
2677	ward	2477	Kashai	4	district	118	Kashai	2009
2678	ward	2478	Miembeni	2	district	118	Miembeni	2009
2679	ward	2479	Bilele	1	district	118	Bilele	2009
2680	ward	2480	Bakoba	3	district	118	Bakoba	2009
2681	ward	2481	Ijuganyondo	8	district	118	Ijuganyondo	2009
2682	ward	2482	Kitendaguro	7	district	118	Kitendaguro	2009
2683	ward	2483	Kibeta	4	district	118	Kibeta	2009
2684	ward	2484	Kagondo	6	district	118	Kagondo	2009
2685	ward	2485	Nyanga	11	district	118	Nyanga	2009
2686	ward	2486	Rwamishenye	2	district	118	Rwamishenye	2009
2687	ward	2487	Kakunyu	744	district	119	Kakunyu	2009
2688	ward	2488	Nsunga	394	district	119	Nsunga	2009
2689	ward	2489	Mutukula	180	district	119	Mutukula	2009
2690	ward	2490	Kassambya	170	district	119	Kassambya	2009
2691	ward	2491	Minziro	237	district	119	Minziro	2009
2692	ward	2492	Ruzinga	95	district	119	Ruzinga	2009
2693	ward	2493	Kashenye	50	district	119	Kashenye	2009
2694	ward	2494	Kanyigo	75	district	119	Kanyigo	2009
2695	ward	2495	Ishunju	23	district	119	Ishunju	2009
2696	ward	2496	Buyango	101	district	119	Buyango	2009
2697	ward	2497	Bwanjai	55	district	119	Bwanjai	2009
2698	ward	2498	Ishozi	43	district	119	Ishozi	2009
2699	ward	2499	Gera	51	district	119	Gera	2009
2700	ward	2500	Bugandika	102	district	119	Bugandika	2009
2701	ward	2501	Kitobo	40	district	119	Kitobo	2009
2702	ward	2502	Bugorora	171	district	119	Bugorora	2009
2703	ward	2503	Kyaka	93	district	119	Kyaka	2009
2704	ward	2504	Mushasha	88	district	119	Mushasha	2009
2705	ward	2505	Kilimilil	76	district	119	Kilimilil	2009
2706	ward	2506	Mabale	38	district	119	Mabale	2009
2707	ward	2507	Isingiro	203	district	120	Isingiro	2009
2708	ward	2508	Kaisho	122	district	120	Kaisho	2009
2709	ward	2509	Rutunguru	146	district	120	Rutunguru	2009
2710	ward	2510	Kibingo	209	district	120	Kibingo	2009
2711	ward	2511	Murongo	228	district	120	Murongo	2009
2712	ward	2512	Bugomora	64	district	120	Bugomora	2009
2713	ward	2513	Kibale	209	district	120	Kibale	2009
2714	ward	2514	Mabira	89	district	120	Mabira	2009
2715	ward	2515	Businde	8	district	120	Businde	2009
2716	ward	2516	Kamuli	145	district	120	Kamuli	2009
2717	ward	2517	Nyakatuntu	118	district	120	Nyakatuntu	2009
2718	ward	2518	Kimuli	78	district	120	Kimuli	2009
2719	ward	2519	Kikukuru	76	district	120	Kikukuru	2009
2720	ward	2520	Rwabwere	97	district	120	Rwabwere	2009
2721	ward	2521	Nkwenda	69	district	120	Nkwenda	2009
2722	ward	2522	Rukuraijo	136	district	120	Rukuraijo	2009
2723	ward	2523	Songambele	176	district	120	Songambele	2009
2724	ward	2524	Kyerwa	122	district	120	Kyerwa	2009
2725	ward	2525	Nansio	1	district	121	Nansio	2009
2726	ward	2526	Kagera	24	district	121	Kagera	2009
2727	ward	2527	Nakatunguru	2	district	121	Nakatunguru	2009
2728	ward	2528	Kakerege	5	district	121	Kakerege	2009
2729	ward	2529	Bukongo	9	district	121	Bukongo	2009
2730	ward	2530	Nkilizya	12	district	121	Nkilizya	2009
2731	ward	2531	Bukanda	25	district	121	Bukanda	2009
2732	ward	2532	Mukituntu	38	district	121	Mukituntu	2009
2733	ward	2533	Igala	36	district	121	Igala	2009
2734	ward	2534	Bwiro	33	district	121	Bwiro	2009
2735	ward	2535	Muriti	60	district	121	Muriti	2009
2736	ward	2536	Ilangala	49	district	121	Ilangala	2009
2737	ward	2537	Namilembe	30	district	121	Namilembe	2009
2738	ward	2538	Nduruma	63	district	121	Nduruma	2009
2739	ward	2539	Murutunguru	41	district	121	Murutunguru	2009
2740	ward	2540	Kagunguli	43	district	121	Kagunguli	2009
2741	ward	2541	Bukindo	34	district	121	Bukindo	2009
2742	ward	2542	Namagondo	32	district	121	Namagondo	2009
2743	ward	2543	Ngoma	46	district	121	Ngoma	2009
2744	ward	2544	Bwisya	32	district	121	Bwisya	2009
2745	ward	2545	Bukungu	14	district	121	Bukungu	2009
2746	ward	2546	Nyamanga	19	district	121	Nyamanga	2009
2747	ward	2547	Bukiro	16	district	121	Bukiro	2009
2748	ward	2548	Irugwa	15	district	121	Irugwa	2009
2749	ward	2549	Kisesa	65	district	122	Kisesa	2009
2750	ward	2550	Bujashi	86	district	122	Bujashi	2009
2751	ward	2551	Lutale	40	district	122	Lutale	2009
2752	ward	2552	Kongolo	88	district	122	Kongolo	2009
2753	ward	2553	Nyanguge	53	district	122	Nyanguge	2009
2754	ward	2554	Kitongo Sim	56	district	122	Kitongo Sim	2009
2755	ward	2555	Mwamanga	112	district	122	Mwamanga	2009
2756	ward	2556	Kahangara	106	district	122	Kahangara	2009
2757	ward	2557	Nyigogo	94	district	122	Nyigogo	2009
2758	ward	2558	Mwamabanza	52	district	122	Mwamabanza	2009
2759	ward	2559	Sukuma	113	district	122	Sukuma	2009
2760	ward	2560	Lubugu	108	district	122	Lubugu	2009
2761	ward	2561	Ng'Haya	152	district	122	Ng'Haya	2009
2762	ward	2562	Nkungulu	145	district	122	Nkungulu	2009
2763	ward	2563	Jinjimili	83	district	122	Jinjimili	2009
2764	ward	2564	Shishani	110	district	122	Shishani	2009
2765	ward	2565	Magu Mjini	22	district	122	Magu Mjini	2009
2766	ward	2566	Bukandwe	60	district	122	Bukandwe	2009
2767	ward	2567	Mkuyuni	99	district	123	Mkuyuni	2009
2768	ward	2568	Igogo	2	district	123	Igogo	2009
2769	ward	2569	Pamba	2	district	123	Pamba	2009
2770	ward	2570	Nyamagana	3	district	123	Nyamagana	2009
2771	ward	2571	Mirongo	0	district	123	Mirongo	2009
2772	ward	2572	Isamilo	3	district	123	Isamilo	2009
2773	ward	2573	Mbugani	214	district	123	Mbugani	2009
2774	ward	2574	Mahina	21	district	123	Mahina	2009
2775	ward	2575	Igoma	42	district	123	Igoma	2009
2776	ward	2576	Buhongwa	47	district	123	Buhongwa	2009
2777	ward	2577	Mkolani	40	district	123	Mkolani	2009
2778	ward	2578	Butimba	19	district	123	Butimba	2009
2779	ward	2579	Walla	125	district	124	Walla	2009
2780	ward	2580	Bungulwa	70	district	124	Bungulwa	2009
2781	ward	2581	Sumve	92	district	124	Sumve	2009
2782	ward	2582	Mantare	66	district	124	Mantare	2009
2783	ward	2583	Ngulla	63	district	124	Ngulla	2009
2784	ward	2584	Mwabomba	69	district	124	Mwabomba	2009
2785	ward	2585	Mwagi	74	district	124	Mwagi	2009
2786	ward	2586	Iseni	74	district	124	Iseni	2009
2787	ward	2587	Nyambiti	95	district	124	Nyambiti	2009
2788	ward	2588	Maligisu	126	district	124	Maligisu	2009
2789	ward	2589	Mwandu	88	district	124	Mwandu	2009
2790	ward	2590	Malya	95	district	124	Malya	2009
2791	ward	2591	Lyoma	110	district	124	Lyoma	2009
2792	ward	2592	Mwang'Halanga	99	district	124	Mwang'Halanga	2009
2793	ward	2593	Nyamilama	73	district	124	Nyamilama	2009
2794	ward	2594	Mwakilambiti	144	district	124	Mwakilambiti	2009
2795	ward	2595	Hungumalwa	110	district	124	Hungumalwa	2009
2796	ward	2596	Mwamala	206	district	124	Mwamala	2009
2797	ward	2597	Kikubiji	242	district	124	Kikubiji	2009
2798	ward	2598	Mhande	183	district	124	Mhande	2009
2799	ward	2599	Bupamwa	175	district	124	Bupamwa	2009
2800	ward	2600	Fukalo	152	district	124	Fukalo	2009
2801	ward	2601	Ng'Hundi	94	district	124	Ng'Hundi	2009
2802	ward	2602	Igongwa	120	district	124	Igongwa	2009
2803	ward	2603	Ngudu	117	district	124	Ngudu	2009
2804	ward	2604	Bugando	33	district	124	Bugando	2009
2805	ward	2605	Nkalalo	39	district	124	Nkalalo	2009
2806	ward	2606	Mwankulwe	93	district	124	Mwankulwe	2009
2807	ward	2607	Ilula	111	district	124	Ilula	2009
2808	ward	2608	Shilembo	206	district	124	Shilembo	2009
2809	ward	2609	Ibisabageni	4	district	125	Ibisabageni	2009
2810	ward	2610	Nyamazugo	90	district	125	Nyamazugo	2009
2811	ward	2611	Chifumfu	59	district	125	Chifumfu	2009
2812	ward	2612	Katunguru	64	district	125	Katunguru	2009
2813	ward	2613	Kasungamile	105	district	125	Kasungamile	2009
2814	ward	2614	Nyamatongo	110	district	125	Nyamatongo	2009
2815	ward	2615	Tabaruka	85	district	125	Tabaruka	2009
2816	ward	2616	Busisi	118	district	125	Busisi	2009
2817	ward	2617	Buyagu	138	district	125	Buyagu	2009
2818	ward	2618	Igalula	559	district	125	Igalula	2009
2819	ward	2619	Kagunga	66	district	125	Kagunga	2009
2820	ward	2620	Sima	133	district	125	Sima	2009
2821	ward	2621	Nyakasunga	89	district	125	Nyakasunga	2009
2822	ward	2622	Kalebezo	105	district	125	Kalebezo	2009
2823	ward	2623	Nyehunge	151	district	125	Nyehunge	2009
2824	ward	2624	Kafunzo	65	district	125	Kafunzo	2009
2825	ward	2625	Bupandwa	129	district	125	Bupandwa	2009
2826	ward	2626	Katwe	61	district	125	Katwe	2009
2827	ward	2627	Maisome	122	district	125	Maisome	2009
2828	ward	2628	Kazunzu	83	district	125	Kazunzu	2009
2829	ward	2629	Lugata	58	district	125	Lugata	2009
2830	ward	2630	Nyakaliro	113	district	125	Nyakaliro	2009
2831	ward	2631	Nyakasasa	79	district	125	Nyakasasa	2009
2832	ward	2632	Buzilasoga	141	district	125	Buzilasoga	2009
2833	ward	2633	Nyanzenda	107	district	125	Nyanzenda	2009
2834	ward	2634	Bulyaheke	67	district	125	Bulyaheke	2009
2835	ward	2635	Irenza	82	district	125	Irenza	2009
2836	ward	2636	Kasenyi	68	district	125	Kasenyi	2009
2837	ward	2637	Mwambului	32	district	125	Mwambului	2009
2838	ward	2638	Nyatukala	25	district	125	Nyatukala	2009
2839	ward	2639	Nyampulukano	36	district	125	Nyampulukano	2009
2840	ward	2640	Nyampande	56	district	125	Nyampande	2009
2841	ward	2641	Kishinda	107	district	125	Kishinda	2009
2842	ward	2642	Igulumuki	78	district	125	Igulumuki	2009
2843	ward	2643	Buswelu	41	district	126	Buswelu	2009
2844	ward	2644	Nyakato	55	district	126	Nyakato	2009
2845	ward	2645	Nyamanoro	4	district	126	Nyamanoro	2009
2846	ward	2646	Kirumba	4	district	126	Kirumba	2009
2847	ward	2647	Kitangiri	4	district	126	Kitangiri	2009
2848	ward	2648	Pasiansi	8	district	126	Pasiansi	2009
2849	ward	2649	Ilemela	51	district	126	Ilemela	2009
2850	ward	2650	Bugogwa	73	district	126	Bugogwa	2009
2851	ward	2651	Sangabuye	55	district	126	Sangabuye	2009
2852	ward	2652	Bulemeji	53	district	127	Bulemeji	2009
2853	ward	2653	Idetemya	85	district	127	Idetemya	2009
2854	ward	2654	Usagara	1	district	127	Usagara	2009
2855	ward	2655	Ukiriguru	51	district	127	Ukiriguru	2009
2856	ward	2656	Kanyelele	100	district	127	Kanyelele	2009
2857	ward	2657	Koromije	87	district	127	Koromije	2009
2858	ward	2658	Igokelo	134	district	127	Igokelo	2009
2859	ward	2659	Mwaniko	34	district	127	Mwaniko	2009
2860	ward	2660	Misungwi	121	district	127	Misungwi	2009
2861	ward	2661	Masasi	115	district	127	Masasi	2009
2862	ward	2662	Kijima	126	district	127	Kijima	2009
2863	ward	2663	Shilalo	129	district	127	Shilalo	2009
2864	ward	2664	Buhingo	85	district	127	Buhingo	2009
2865	ward	2665	Busongo	73	district	127	Busongo	2009
2866	ward	2666	Nhundulu	181	district	127	Nhundulu	2009
2867	ward	2667	Lubili	66	district	127	Lubili	2009
2868	ward	2668	Ilujamate	119	district	127	Ilujamate	2009
2869	ward	2669	Mbarika	133	district	127	Mbarika	2009
2870	ward	2670	Sumbugu	124	district	127	Sumbugu	2009
2871	ward	2671	Kasololo	125	district	127	Kasololo	2009
2872	ward	2672	Ilalambogo	60	district	127	Ilalambogo	2009
2873	ward	2673	Isesa	65	district	127	Isesa	2009
2874	ward	2674	Gulumungu	86	district	127	Gulumungu	2009
2875	ward	2675	Mabuki	156	district	127	Mabuki	2009
2876	ward	2676	Mondo	136	district	127	Mondo	2009
2877	ward	2677	Mamaye	69	district	127	Mamaye	2009
2878	ward	2678	Fella	42	district	127	Fella	2009
2879	ward	2679	Susuni	59	district	128	Susuni	2009
2880	ward	2680	Mwema	53	district	128	Mwema	2009
2881	ward	2681	Sirari	7	district	128	Sirari	2009
2882	ward	2682	Pemba	35	district	128	Pemba	2009
2883	ward	2683	Nyakonga	23	district	128	Nyakonga	2009
2884	ward	2684	Nyarero	44	district	128	Nyarero	2009
2885	ward	2685	Nyamwaga	47	district	128	Nyamwaga	2009
2886	ward	2686	Muriba	31	district	128	Muriba	2009
2887	ward	2687	Nyanungu	30	district	128	Nyanungu	2009
2888	ward	2688	Gorong'A	77	district	128	Gorong'A	2009
2889	ward	2689	Nyarokoba	139	district	128	Nyarokoba	2009
2890	ward	2690	Kemambo	109	district	128	Kemambo	2009
2891	ward	2691	Kibasuka	145	district	128	Kibasuka	2009
2892	ward	2692	Binagi	28	district	128	Binagi	2009
2893	ward	2693	Turwa	76	district	128	Turwa	2009
2894	ward	2694	Bomani	4	district	128	Bomani	2009
2895	ward	2695	Nyandoto	49	district	128	Nyandoto	2009
2896	ward	2696	Matongo	117	district	128	Matongo	2009
2897	ward	2697	Manga	80	district	128	Manga	2009
2898	ward	2698	Bumera	97	district	128	Bumera	2009
2899	ward	2699	Komaswa	79	district	128	Komaswa	2009
2900	ward	2700	Kiore	86	district	128	Kiore	2009
2901	ward	2701	Sabasaba	0	district	128	Sabasaba	2009
2902	ward	2702	Nyamisangura	5	district	128	Nyamisangura	2009
2903	ward	2703	Kentare	28	district	128	Kentare	2009
2904	ward	2704	Nyamaranga	41	district	128	Nyamaranga	2009
2905	ward	2705	Mbogi	29	district	128	Mbogi	2009
2906	ward	2706	Genyange	24	district	128	Genyange	2009
2907	ward	2707	Nyansicha	15	district	128	Nyansicha	2009
2908	ward	2708	Itiryo	28	district	128	Itiryo	2009
2909	ward	2709	Kenyamonta	189	district	129	Kenyamonta	2009
2910	ward	2710	Busawe	105	district	129	Busawe	2009
2911	ward	2711	Kisaka	167	district	129	Kisaka	2009
2912	ward	2712	Kebanchabancha	94	district	129	Kebanchabancha	2009
2913	ward	2713	Ring'Wani	224	district	129	Ring'Wani	2009
2914	ward	2714	Rung'Abure	79	district	129	Rung'Abure	2009
2915	ward	2715	Machochwe	700	district	129	Machochwe	2009
2916	ward	2716	Kisangura	90	district	129	Kisangura	2009
2917	ward	2717	Mugumu	10	district	129	Mugumu	2009
2918	ward	2718	Ikoma	4467	district	129	Ikoma	2009
2919	ward	2719	Natta	701	district	129	Natta	2009
2920	ward	2720	Issenye	373	district	129	Issenye	2009
2921	ward	2721	Rigicha	85	district	129	Rigicha	2009
2922	ward	2722	Nyambureti	150	district	129	Nyambureti	2009
2923	ward	2723	Nyamoko	106	district	129	Nyamoko	2009
2924	ward	2724	Manchira	148	district	129	Manchira	2009
2925	ward	2725	Kyambahi	197	district	129	Kyambahi	2009
2926	ward	2726	Nyamatare	84	district	129	Nyamatare	2009
2927	ward	2727	Majimoto	137	district	129	Majimoto	2009
2928	ward	2728	Magange	113	district	129	Magange	2009
2929	ward	2729	Nyansurura	135	district	129	Nyansurura	2009
2930	ward	2730	Mosongo	203	district	129	Mosongo	2009
2931	ward	2731	Sedeco	1487	district	129	Sedeco	2009
2932	ward	2732	Mbalibali	991	district	129	Mbalibali	2009
2933	ward	2733	Stendi Kuu	12	district	129	Stendi Kuu	2009
2934	ward	2734	Geitasamo	40	district	129	Geitasamo	2009
2935	ward	2735	Morotonga	19	district	129	Morotonga	2009
2936	ward	2736	Uwanja Wa Ndege	64	district	129	Uwanja Wa Ndege	2009
2937	ward	2737	Bukumi	44	district	130	Bukumi	2009
2938	ward	2738	Makojo	31	district	130	Makojo	2009
2939	ward	2739	Bwasi	33	district	130	Bwasi	2009
2940	ward	2740	Bulinga	17	district	130	Bulinga	2009
2941	ward	2741	Bukima	50	district	130	Bukima	2009
2942	ward	2742	Murangi	97	district	130	Murangi	2009
2943	ward	2743	Bugwema	262	district	130	Bugwema	2009
2944	ward	2744	Nyamrandirira	89	district	130	Nyamrandirira	2009
2945	ward	2745	Nyambono	119	district	130	Nyambono	2009
2946	ward	2746	Suguti	92	district	130	Suguti	2009
2947	ward	2747	Tegeruka	92	district	130	Tegeruka	2009
2948	ward	2748	Kiriba	51	district	130	Kiriba	2009
2949	ward	2749	Busambara	43	district	130	Busambara	2009
2950	ward	2750	Mugango	52	district	130	Mugango	2009
2951	ward	2751	Nyamuswa	26	district	131	Nyamuswa	2009
2952	ward	2752	Salama	102	district	131	Salama	2009
2953	ward	2753	Mihingo	161	district	131	Mihingo	2009
2954	ward	2754	Mugeta	185	district	131	Mugeta	2009
2955	ward	2755	Hunyari	725	district	131	Hunyari	2009
2956	ward	2756	Mcharo	208	district	131	Mcharo	2009
2957	ward	2757	Sazira	77	district	131	Sazira	2009
2958	ward	2758	Kunzugu	238	district	131	Kunzugu	2009
2959	ward	2759	Bunda Mjini	4	district	131	Bunda Mjini	2009
2960	ward	2760	Guta	236	district	131	Guta	2009
2961	ward	2761	Butimba	19	district	131	Butimba	2009
2962	ward	2762	Neruma	81	district	131	Neruma	2009
2963	ward	2763	Kibara	8	district	131	Kibara	2009
2964	ward	2764	Nansimo	78	district	131	Nansimo	2009
2965	ward	2765	Kisorya	15	district	131	Kisorya	2009
2966	ward	2766	Igundu	83	district	131	Igundu	2009
2967	ward	2767	Iramba	51	district	131	Iramba	2009
2968	ward	2768	Namhula	127	district	131	Namhula	2009
2969	ward	2769	Wariku	80	district	131	Wariku	2009
2970	ward	2770	Kabasa	73	district	131	Kabasa	2009
2971	ward	2771	Nampindi	41	district	131	Nampindi	2009
2972	ward	2772	Chitengule	67	district	131	Chitengule	2009
2973	ward	2773	Kasuguti	90	district	131	Kasuguti	2009
2974	ward	2774	Balili	31	district	131	Balili	2009
2975	ward	2775	Bunda Stoo	48	district	131	Bunda Stoo	2009
2976	ward	2776	Nyasura	18	district	131	Nyasura	2009
3059	ward	2859	Ganana	6	district	135	Ganana	2009
2977	ward	2777	Nyamang'Uta	93	district	131	Nyamang'Uta	2009
2978	ward	2778	Ketare	78	district	131	Ketare	2009
2979	ward	2779	Kigunga	117	district	132	Kigunga	2009
2980	ward	2780	Kirogo	76	district	132	Kirogo	2009
2981	ward	2781	Nyamtinga	57	district	132	Nyamtinga	2009
2982	ward	2782	Nyamagaro	69	district	132	Nyamagaro	2009
2983	ward	2783	Nyahongo	104	district	132	Nyahongo	2009
2984	ward	2784	Mkoma	74	district	132	Mkoma	2009
2985	ward	2785	Tai	68	district	132	Tai	2009
2986	ward	2786	Bukura	107	district	132	Bukura	2009
2987	ward	2787	Roche	73	district	132	Roche	2009
2988	ward	2788	Kitembe	66	district	132	Kitembe	2009
2989	ward	2789	Mirare	109	district	132	Mirare	2009
2990	ward	2790	Goribe	75	district	132	Goribe	2009
2991	ward	2791	Ikoma	4467	district	132	Ikoma	2009
2992	ward	2792	Koryo	72	district	132	Koryo	2009
2993	ward	2793	Bukwe	54	district	132	Bukwe	2009
2994	ward	2794	Nyathorogo	144	district	132	Nyathorogo	2009
2995	ward	2795	Rabour	116	district	132	Rabour	2009
2996	ward	2796	Kisumwa	217	district	132	Kisumwa	2009
2997	ward	2797	Komuge	135	district	132	Komuge	2009
2998	ward	2798	Nyamunga	54	district	132	Nyamunga	2009
2999	ward	2799	Kyang'Ombe	149	district	132	Kyang'Ombe	2009
3000	ward	2800	Bwiregi	119	district	133	Bwiregi	2009
3001	ward	2801	Buswahili	306	district	133	Buswahili	2009
3002	ward	2802	Nyamimange	49	district	133	Nyamimange	2009
3003	ward	2803	Sirorisimba	91	district	133	Sirorisimba	2009
3004	ward	2804	Buhemba	11	district	133	Buhemba	2009
3005	ward	2805	Mirwa	86	district	133	Mirwa	2009
3006	ward	2806	Muriaza	110	district	133	Muriaza	2009
3007	ward	2807	Butiama	126	district	133	Butiama	2009
3008	ward	2808	Masaba	139	district	133	Masaba	2009
3009	ward	2809	Kyanyari	162	district	133	Kyanyari	2009
3010	ward	2810	Kukirango	129	district	133	Kukirango	2009
3011	ward	2811	Buruma	177	district	133	Buruma	2009
3012	ward	2812	Nyakatende	124	district	133	Nyakatende	2009
3013	ward	2813	Etaro	39	district	133	Etaro	2009
3014	ward	2814	Nyegina	44	district	133	Nyegina	2009
3015	ward	2815	Nyankanga	65	district	133	Nyankanga	2009
3016	ward	2816	Bisumwa	74	district	133	Bisumwa	2009
3017	ward	2817	Bukabwa	134	district	133	Bukabwa	2009
3018	ward	2818	Butuguri	61	district	133	Butuguri	2009
3019	ward	2819	Busegwe	47	district	133	Busegwe	2009
3020	ward	2820	Magara	209	district	134	Magara	2009
3021	ward	2821	Nkaiti	574	district	134	Nkaiti	2009
3022	ward	2822	Mwada	752	district	134	Mwada	2009
3023	ward	2823	Mamire	367	district	134	Mamire	2009
3024	ward	2824	Galapo	554	district	134	Galapo	2009
3025	ward	2825	Qashi	552	district	134	Qashi	2009
3026	ward	2826	Ayasanda	49	district	134	Ayasanda	2009
3027	ward	2827	Gidas	90	district	134	Gidas	2009
3028	ward	2828	Duru	104	district	134	Duru	2009
3029	ward	2829	Riroda	74	district	134	Riroda	2009
3030	ward	2830	Arri	110	district	134	Arri	2009
3031	ward	2831	Dareda	70	district	134	Dareda	2009
3032	ward	2832	Dabil	162	district	134	Dabil	2009
3033	ward	2833	Ufana	237	district	134	Ufana	2009
3034	ward	2834	Bashneti	70	district	134	Bashneti	2009
3035	ward	2835	Madunga	189	district	134	Madunga	2009
3036	ward	2836	Kiru	175	district	134	Kiru	2009
3037	ward	2837	Magugu	759	district	134	Magugu	2009
3038	ward	2838	Balagidalalu	317	district	135	Balagidalalu	2009
3039	ward	2839	Gehandu	258	district	135	Gehandu	2009
3040	ward	2840	Laghanga	246	district	135	Laghanga	2009
3041	ward	2841	Getanuwas	108	district	135	Getanuwas	2009
3042	ward	2842	Hirbadaw	104	district	135	Hirbadaw	2009
3043	ward	2843	Bassodesh	285	district	135	Bassodesh	2009
3044	ward	2844	Bassotu	364	district	135	Bassotu	2009
3045	ward	2845	Gendabi	120	district	135	Gendabi	2009
3046	ward	2846	Mogitu	268	district	135	Mogitu	2009
3047	ward	2847	Giting	88	district	135	Giting	2009
3048	ward	2848	Masakta	60	district	135	Masakta	2009
3049	ward	2849	Masqaroda	69	district	135	Masqaroda	2009
3050	ward	2850	Endasak	37	district	135	Endasak	2009
3051	ward	2851	Gidahababieg	65	district	135	Gidahababieg	2009
3052	ward	2852	Maskron	62	district	135	Maskron	2009
3053	ward	2853	Hidet	52	district	135	Hidet	2009
3054	ward	2854	Simbay	123	district	135	Simbay	2009
3055	ward	2855	Sirop	131	district	135	Sirop	2009
3056	ward	2856	Gisambalang	271	district	135	Gisambalang	2009
3057	ward	2857	Nangwa	104	district	135	Nangwa	2009
3058	ward	2858	Katesh	14	district	135	Katesh	2009
3060	ward	2860	Dirma	227	district	135	Dirma	2009
3061	ward	2861	Lalaji	291	district	135	Lalaji	2009
3062	ward	2862	Endasiwold	31	district	135	Endasiwold	2009
3063	ward	2863	Daudi	46	district	136	Daudi	2009
3064	ward	2864	Bargish	37	district	136	Bargish	2009
3065	ward	2865	Gehandu	258	district	136	Gehandu	2009
3066	ward	2866	Kainam	34	district	136	Kainam	2009
3067	ward	2867	Murray	122	district	136	Murray	2009
3068	ward	2868	Ayamaami	15	district	136	Ayamaami	2009
3069	ward	2869	Uhuru	0	district	136	Uhuru	2009
3070	ward	2870	Tlawi	93	district	136	Tlawi	2009
3071	ward	2871	Bashay	126	district	136	Bashay	2009
3072	ward	2872	Dongobesh	65	district	136	Dongobesh	2009
3073	ward	2873	Tumati	114	district	136	Tumati	2009
3074	ward	2874	Maretadu	140	district	136	Maretadu	2009
3075	ward	2875	Maghang	107	district	136	Maghang	2009
3076	ward	2876	Haydom	128	district	136	Haydom	2009
3077	ward	2877	Yaeda Chini	543	district	136	Yaeda Chini	2009
3078	ward	2878	Masieda	374	district	136	Masieda	2009
3079	ward	2879	Marang	70	district	136	Marang	2009
3080	ward	2880	Gunyoda	105	district	136	Gunyoda	2009
3081	ward	2881	Nahasey	107	district	136	Nahasey	2009
3082	ward	2882	Endamilay	153	district	136	Endamilay	2009
3083	ward	2883	Yaeda Ampa	118	district	136	Yaeda Ampa	2009
3084	ward	2884	Masqaroda	69	district	136	Masqaroda	2009
3085	ward	2885	Nambisi	58	district	136	Nambisi	2009
3086	ward	2886	Dinamu	91	district	136	Dinamu	2009
3087	ward	2887	Ayamohe	9	district	136	Ayamohe	2009
3088	ward	2888	Sanu Baray	9	district	136	Sanu Baray	2009
3089	ward	2889	Imboru	27	district	136	Imboru	2009
3090	ward	2890	Endagikot	18	district	136	Endagikot	2009
3091	ward	2891	Geterer	107	district	136	Geterer	2009
3092	ward	2892	Hayderer	125	district	136	Hayderer	2009
3093	ward	2893	Eshkesh	459	district	136	Eshkesh	2009
3094	ward	2894	Gidihim	109	district	136	Gidihim	2009
3095	ward	2895	Orkesmet	13	district	137	Orkesmet	2009
3096	ward	2896	Loiborsiret	2041	district	137	Loiborsiret	2009
3097	ward	2897	Emboreet	931	district	137	Emboreet	2009
3098	ward	2898	Terrat	107	district	137	Terrat	2009
3099	ward	2899	Oljoro  No. 5	466	district	137	Oljoro  No. 5	2009
3100	ward	2900	Shambarai	1093	district	137	Shambarai	2009
3101	ward	2901	Mererani	12	district	137	Mererani	2009
3102	ward	2902	Msitu Wa Tembo	369	district	137	Msitu Wa Tembo	2009
3103	ward	2903	Ngorika	726	district	137	Ngorika	2009
3104	ward	2904	Liborsoit	1041	district	137	Liborsoit	2009
3105	ward	2905	Ruvu Remiti	2646	district	137	Ruvu Remiti	2009
3106	ward	2906	Komolo	1301	district	137	Komolo	2009
3107	ward	2907	Naisinyai	913	district	137	Naisinyai	2009
3108	ward	2908	Endiantu	18	district	137	Endiantu	2009
3109	ward	2909	Kibaya	3	district	138	Kibaya	2009
3110	ward	2910	Partimbo	964	district	138	Partimbo	2009
3111	ward	2911	Makame	2612	district	138	Makame	2009
3112	ward	2912	Ndedo	2499	district	138	Ndedo	2009
3113	ward	2913	Kijungu	462	district	138	Kijungu	2009
3114	ward	2914	Lengatei	771	district	138	Lengatei	2009
3115	ward	2915	Sunya	1090	district	138	Sunya	2009
3116	ward	2916	Dongo	732	district	138	Dongo	2009
3117	ward	2917	Songambele	176	district	138	Songambele	2009
3118	ward	2918	Dosidosi	107	district	138	Dosidosi	2009
3119	ward	2919	Engusero	339	district	138	Engusero	2009
3120	ward	2920	Matui	54	district	138	Matui	2009
3121	ward	2921	Bwagamoyo	26	district	138	Bwagamoyo	2009
3122	ward	2922	Loolera	1458	district	138	Loolera	2009
3123	ward	2923	Magungu	147	district	138	Magungu	2009
3124	ward	2924	Namelock	656	district	138	Namelock	2009
3125	ward	2925	Babati	28	district	139	Babati	2009
3126	ward	2926	Mutuka	80	district	139	Mutuka	2009
3127	ward	2927	Nangara	41	district	139	Nangara	2009
3128	ward	2928	Singe	34	district	139	Singe	2009
3129	ward	2929	Bonga	42	district	139	Bonga	2009
3130	ward	2930	Bagara	48	district	139	Bagara	2009
3131	ward	2931	Sigino	96	district	139	Sigino	2009
3132	ward	2932	Maisaka	104	district	139	Maisaka	2009
3133	ward	2933	Njombe Mjini	11	district	140	Njombe Mjini	2009
3134	ward	2934	Mjimwema	24	district	140	Mjimwema	2009
3135	ward	2935	Ramadhani	234	district	140	Ramadhani	2009
3136	ward	2936	Yakobi	245	district	140	Yakobi	2009
3137	ward	2937	Kifanya	878	district	140	Kifanya	2009
3138	ward	2938	Ihanga	550	district	140	Ihanga	2009
3139	ward	2939	Iwungilo	351	district	140	Iwungilo	2009
3140	ward	2940	Luponde	298	district	140	Luponde	2009
3141	ward	2941	Matola	350	district	140	Matola	2009
3142	ward	2942	Makowo	198	district	140	Makowo	2009
3143	ward	2943	Lugenge	127	district	140	Lugenge	2009
3144	ward	2944	Uwemba	168	district	140	Uwemba	2009
3145	ward	2945	Utalingolo	131	district	140	Utalingolo	2009
3146	ward	2946	Saja	302	district	141	Saja	2009
3147	ward	2947	Kijombe	173	district	141	Kijombe	2009
3148	ward	2948	Wanging'Ombe	191	district	141	Wanging'Ombe	2009
3149	ward	2949	Ilembula	120	district	141	Ilembula	2009
3150	ward	2950	Uhambule	80	district	141	Uhambule	2009
3151	ward	2951	Usuka	70	district	141	Usuka	2009
3152	ward	2952	Igwachanya	164	district	141	Igwachanya	2009
3153	ward	2953	Mdandu	228	district	141	Mdandu	2009
3154	ward	2954	Igima	168	district	141	Igima	2009
3155	ward	2955	Imalinyi	186	district	141	Imalinyi	2009
3156	ward	2956	Ulembwe	152	district	141	Ulembwe	2009
3157	ward	2957	Makoga	122	district	141	Makoga	2009
3158	ward	2958	Kipengere	345	district	141	Kipengere	2009
3159	ward	2959	Igosi	128	district	141	Igosi	2009
3160	ward	2960	Wangama	136	district	141	Wangama	2009
3161	ward	2961	Kidugala	87	district	141	Kidugala	2009
3162	ward	2962	Luduga	872	district	141	Luduga	2009
3163	ward	2963	Lupalilo	126	district	142	Lupalilo	2009
3164	ward	2964	Mang'Oto	308	district	142	Mang'Oto	2009
3165	ward	2965	Iwawa	149	district	142	Iwawa	2009
3166	ward	2966	Lupila	275	district	142	Lupila	2009
3167	ward	2967	Ukwama	194	district	142	Ukwama	2009
3168	ward	2968	Bulongwa	39	district	142	Bulongwa	2009
3169	ward	2969	Kipagalo	137	district	142	Kipagalo	2009
3170	ward	2970	Iniho	91	district	142	Iniho	2009
3171	ward	2971	Ipelele	139	district	142	Ipelele	2009
3172	ward	2972	Kigulu	67	district	142	Kigulu	2009
3173	ward	2973	Matamba	232	district	142	Matamba	2009
3174	ward	2974	Mlondwe	126	district	142	Mlondwe	2009
3175	ward	2975	Kitulo	395	district	142	Kitulo	2009
3176	ward	2976	Ikuwo	195	district	142	Ikuwo	2009
3177	ward	2977	Mfumbi	674	district	142	Mfumbi	2009
3178	ward	2978	Ipepo	228	district	142	Ipepo	2009
3179	ward	2979	Mbalatse	205	district	142	Mbalatse	2009
3180	ward	2980	Tandala	95	district	142	Tandala	2009
3181	ward	2981	Luwumbu	124	district	142	Luwumbu	2009
3182	ward	2982	Isapulano	44	district	142	Isapulano	2009
3183	ward	2983	Kigala	184	district	142	Kigala	2009
3184	ward	2984	Itundu	72	district	142	Itundu	2009
3185	ward	2985	Mtwango	162	district	143	Mtwango	2009
3186	ward	2986	Igongolo	113	district	143	Igongolo	2009
3187	ward	2987	Kichiwa	196	district	143	Kichiwa	2009
3188	ward	2988	Ninga	267	district	143	Ninga	2009
3189	ward	2989	Ikuna	341	district	143	Ikuna	2009
3190	ward	2990	Kidegembye	284	district	143	Kidegembye	2009
3191	ward	2991	Matembwe	303	district	143	Matembwe	2009
3192	ward	2992	Lupembe	126	district	143	Lupembe	2009
3193	ward	2993	Ikondo	21	district	143	Ikondo	2009
3194	ward	2994	Mfriga	947	district	143	Mfriga	2009
3195	ward	2995	Idamba	242	district	143	Idamba	2009
3196	ward	2996	Lumbila	68	district	144	Lumbila	2009
3197	ward	2997	Kilondo	132	district	144	Kilondo	2009
3198	ward	2998	Mawengi	186	district	144	Mawengi	2009
3199	ward	2999	Lupanga	200	district	144	Lupanga	2009
3200	ward	3000	Mlangali	140	district	144	Mlangali	2009
3201	ward	3001	Milo	130	district	144	Milo	2009
3202	ward	3002	Lugarawa	168	district	144	Lugarawa	2009
3203	ward	3003	Madope	165	district	144	Madope	2009
3204	ward	3004	Madilu	318	district	144	Madilu	2009
3205	ward	3005	Mundindi	968	district	144	Mundindi	2009
3206	ward	3006	Mavanga	283	district	144	Mavanga	2009
3207	ward	3007	Ibumi	1092	district	144	Ibumi	2009
3208	ward	3008	Nkomang'Ombe	182	district	144	Nkomang'Ombe	2009
3209	ward	3009	Luilo	325	district	144	Luilo	2009
3210	ward	3010	Masasi	115	district	144	Masasi	2009
3211	ward	3011	Manda	781	district	144	Manda	2009
3212	ward	3012	Iwela	249	district	144	Iwela	2009
3213	ward	3013	Lupingu	189	district	144	Lupingu	2009
3214	ward	3014	Ludewa	266	district	144	Ludewa	2009
3215	ward	3015	Ludende	269	district	144	Ludende	2009
3216	ward	3016	Luana	164	district	144	Luana	2009
3217	ward	3017	Makonde	0	district	144	Makonde	2009
3218	ward	3018	Mkongobaki	83	district	144	Mkongobaki	2009
3219	ward	3019	Lifuma	58	district	144	Lifuma	2009
3220	ward	3020	Ruhuhu	32	district	144	Ruhuhu	2009
3221	ward	3021	Ubena	24	district	145	Ubena	2009
3222	ward	3022	Mjimwema	24	district	145	Mjimwema	2009
3223	ward	3023	Mlowa	982	district	145	Mlowa	2009
3224	ward	3024	Lyamkena	88	district	145	Lyamkena	2009
3225	ward	3025	Mwembetogwa	11	district	145	Mwembetogwa	2009
3226	ward	3026	Mahongole	74	district	145	Mahongole	2009
3227	ward	3027	Kitandililo	251	district	145	Kitandililo	2009
3228	ward	3028	Utengule	360	district	145	Utengule	2009
3229	ward	3029	Kakese	203	district	146	Kakese	2009
3230	ward	3030	Misunkumilo	26	district	146	Misunkumilo	2009
3231	ward	3031	Shanwe	10	district	146	Shanwe	2009
3232	ward	3032	Makanyagio	1	district	146	Makanyagio	2009
3233	ward	3033	Kashaulili	2	district	146	Kashaulili	2009
3234	ward	3034	Mpanda Hotel	3	district	146	Mpanda Hotel	2009
3235	ward	3035	Kawajense	24	district	146	Kawajense	2009
3236	ward	3036	Nsemulwa	18	district	146	Nsemulwa	2009
3237	ward	3037	Ilembo	140	district	146	Ilembo	2009
3238	ward	3038	Mishamo	7562	district	147	Mishamo	2009
3239	ward	3039	Mpanda Ndogo	2631	district	147	Mpanda Ndogo	2009
3240	ward	3040	Mwese	2417	district	147	Mwese	2009
3241	ward	3041	Katuma	745	district	147	Katuma	2009
3242	ward	3042	Kabungu	516	district	147	Kabungu	2009
3243	ward	3043	Sibwesa	1882	district	147	Sibwesa	2009
3244	ward	3044	Ikola	975	district	147	Ikola	2009
3245	ward	3045	Karema	74	district	147	Karema	2009
3246	ward	3046	Kapalamsenga	324	district	147	Kapalamsenga	2009
3247	ward	3047	Kasokola	83	district	148	Kasokola	2009
3248	ward	3048	Ugala	1616	district	148	Ugala	2009
3249	ward	3049	Litapunga	1726	district	148	Litapunga	2009
3250	ward	3050	Mtapenda	80	district	148	Mtapenda	2009
3251	ward	3051	Inyonga	2636	district	148	Inyonga	2009
3252	ward	3052	Ilunde	4439	district	148	Ilunde	2009
3253	ward	3053	Ilela	480	district	148	Ilela	2009
3254	ward	3054	Utende	8128	district	148	Utende	2009
3255	ward	3055	Mamba	40	district	148	Mamba	2009
3256	ward	3056	Mbede	139	district	148	Mbede	2009
3257	ward	3057	Urwira	1916	district	148	Urwira	2009
3258	ward	3058	Nsimbo	196	district	148	Nsimbo	2009
3259	ward	3059	Magamba	182	district	148	Magamba	2009
3260	ward	3060	Sitalike	1349	district	148	Sitalike	2009
3261	ward	3061	Usevya	132	district	148	Usevya	2009
3262	ward	3062	Kibaoni	189	district	148	Kibaoni	2009
3263	ward	3063	Machimboni	431	district	148	Machimboni	2009
3264	ward	3064	Kapalala	1419	district	148	Kapalala	2009
3265	ward	3065	Itenka	671	district	148	Itenka	2009
3266	ward	3066	Ikuba	98	district	148	Ikuba	2009
3267	ward	3067	Mwamapuli	185	district	148	Mwamapuli	2009
3268	ward	3068	Majimoto	137	district	148	Majimoto	2009
3269	ward	3069	Kasansa	45	district	148	Kasansa	2009
3270	ward	3070	Nsenkwa	60	district	148	Nsenkwa	2009
3271	ward	3071	Nkindwabiye	354	district	149	Nkindwabiye	2009
3272	ward	3072	Mwaubinge	109	district	149	Mwaubinge	2009
3273	ward	3073	Nkololo	138	district	149	Nkololo	2009
3274	ward	3074	Mwaumatondo	2225	district	149	Mwaumatondo	2009
3275	ward	3075	Madobana	182	district	149	Madobana	2009
3276	ward	3076	Nyangokolwa	156	district	149	Nyangokolwa	2009
3277	ward	3077	Somanda	88	district	149	Somanda	2009
3278	ward	3078	Bunamhala	166	district	149	Bunamhala	2009
3279	ward	3079	Sakwe	182	district	149	Sakwe	2009
3280	ward	3080	Ngulyati	73	district	149	Ngulyati	2009
3281	ward	3081	Mhango	71	district	149	Mhango	2009
3282	ward	3082	Kilalo	119	district	149	Kilalo	2009
3283	ward	3083	Kasoli	97	district	149	Kasoli	2009
3284	ward	3084	Gambosi	114	district	149	Gambosi	2009
3285	ward	3085	Guduwi	96	district	149	Guduwi	2009
3367	ward	3167	Nyalikungu	35	district	152	Nyalikungu	2009
3286	ward	3086	Ikungulyabashashi	78	district	149	Ikungulyabashashi	2009
3287	ward	3087	Nyakabindi	142	district	149	Nyakabindi	2009
3288	ward	3088	Dutwa	117	district	149	Dutwa	2009
3289	ward	3089	Sapiwi	142	district	149	Sapiwi	2009
3290	ward	3090	Matongo	117	district	149	Matongo	2009
3291	ward	3091	Gilya	296	district	149	Gilya	2009
3292	ward	3092	Isanga	1	district	149	Isanga	2009
3293	ward	3093	Bariadi	16	district	149	Bariadi	2009
3294	ward	3094	Malambo	2388	district	149	Malambo	2009
3295	ward	3095	Sima	133	district	149	Sima	2009
3296	ward	3096	Bumera	97	district	150	Bumera	2009
3297	ward	3097	Ikindiro	91	district	150	Ikindiro	2009
3298	ward	3098	Mwamtani	768	district	150	Mwamtani	2009
3299	ward	3099	Sagata	84	district	150	Sagata	2009
3300	ward	3100	Mwaswale	819	district	150	Mwaswale	2009
3301	ward	3101	Nkuyu	569	district	150	Nkuyu	2009
3302	ward	3102	Mhunze	64	district	150	Mhunze	2009
3303	ward	3103	Migato	912	district	150	Migato	2009
3304	ward	3104	Chinamili	93	district	150	Chinamili	2009
3305	ward	3105	Ndolelezi	88	district	150	Ndolelezi	2009
3306	ward	3106	Lagangabilili	87	district	150	Lagangabilili	2009
3307	ward	3107	Budalabujiga	63	district	150	Budalabujiga	2009
3308	ward	3108	Nkoma	148	district	150	Nkoma	2009
3309	ward	3109	Mwalushu	99	district	150	Mwalushu	2009
3310	ward	3110	Mwamapalala	104	district	150	Mwamapalala	2009
3311	ward	3111	Nyamalapa	82	district	150	Nyamalapa	2009
3312	ward	3112	Lugulu	35	district	150	Lugulu	2009
3313	ward	3113	Nhobora	81	district	150	Nhobora	2009
3314	ward	3114	Zagayu	115	district	150	Zagayu	2009
3315	ward	3115	Kinang'Weli	91	district	150	Kinang'Weli	2009
3316	ward	3116	Mbita	92	district	150	Mbita	2009
3317	ward	3117	Sawida	80	district	150	Sawida	2009
3318	ward	3118	Mwanhuzi	138	district	151	Mwanhuzi	2009
3319	ward	3119	Nkoma	148	district	151	Nkoma	2009
3320	ward	3120	Kimali	305	district	151	Kimali	2009
3321	ward	3121	Mwamishali	221	district	151	Mwamishali	2009
3322	ward	3122	Itinje	221	district	151	Itinje	2009
3323	ward	3123	Kisesa	65	district	151	Kisesa	2009
3324	ward	3124	Mwandoya	155	district	151	Mwandoya	2009
3325	ward	3125	Lingeka	65	district	151	Lingeka	2009
3326	ward	3126	Sakasaka	388	district	151	Sakasaka	2009
3327	ward	3127	Imalaseko	176	district	151	Imalaseko	2009
3328	ward	3128	Mwabuzo	418	district	151	Mwabuzo	2009
3329	ward	3129	Mwamalole	321	district	151	Mwamalole	2009
3330	ward	3130	Mwanjolo	1134	district	151	Mwanjolo	2009
3331	ward	3131	Mwabuma	117	district	151	Mwabuma	2009
3332	ward	3132	Mwabusalu	167	district	151	Mwabusalu	2009
3333	ward	3133	Lubiga	236	district	151	Lubiga	2009
3334	ward	3134	Mwamanongu	147	district	151	Mwamanongu	2009
3335	ward	3135	Nghoboko	224	district	151	Nghoboko	2009
3336	ward	3136	Bukundi	728	district	151	Bukundi	2009
3337	ward	3137	Mwasengela	1014	district	151	Mwasengela	2009
3338	ward	3138	Mwamanimba	147	district	151	Mwamanimba	2009
3339	ward	3139	Tindabuligi	209	district	151	Tindabuligi	2009
3340	ward	3140	Mwakisandu	122	district	151	Mwakisandu	2009
3341	ward	3141	Mwangundo	1741	district	151	Mwangundo	2009
3342	ward	3142	Mwanyahina	311	district	151	Mwanyahina	2009
3343	ward	3143	Ng'Wigwa	138	district	152	Ng'Wigwa	2009
3344	ward	3144	Nguliguli	68	district	152	Nguliguli	2009
3345	ward	3145	Ipililo	118	district	152	Ipililo	2009
3346	ward	3146	Senani	114	district	152	Senani	2009
3347	ward	3147	Mwamanenge	130	district	152	Mwamanenge	2009
3348	ward	3148	Sukuma	113	district	152	Sukuma	2009
3349	ward	3149	Mpindo	192	district	152	Mpindo	2009
3350	ward	3150	Dakama	211	district	152	Dakama	2009
3351	ward	3151	Lalago	297	district	152	Lalago	2009
3352	ward	3152	Budekwa	214	district	152	Budekwa	2009
3353	ward	3153	Busilili	218	district	152	Busilili	2009
3354	ward	3154	Sengwa	137	district	152	Sengwa	2009
3355	ward	3155	Masela	151	district	152	Masela	2009
3356	ward	3156	Isanga	1	district	152	Isanga	2009
3357	ward	3157	Zanzui	45	district	152	Zanzui	2009
3358	ward	3158	Mwamashimba	226	district	152	Mwamashimba	2009
3359	ward	3159	Buchambi	133	district	152	Buchambi	2009
3360	ward	3160	Kadoto	108	district	152	Kadoto	2009
3361	ward	3161	Shishiyu	219	district	152	Shishiyu	2009
3362	ward	3162	Nyabubinza	84	district	152	Nyabubinza	2009
3363	ward	3163	Mwang'Honoli	100	district	152	Mwang'Honoli	2009
3364	ward	3164	Kulimi	164	district	152	Kulimi	2009
3365	ward	3165	Malampaka	115	district	152	Malampaka	2009
3366	ward	3166	Badi	185	district	152	Badi	2009
3368	ward	3168	Binza	69	district	152	Binza	2009
3369	ward	3169	Shigala	73	district	153	Shigala	2009
3370	ward	3170	Badugu	120	district	153	Badugu	2009
3371	ward	3171	Nyaluhande	116	district	153	Nyaluhande	2009
3372	ward	3172	Kiloleli	204	district	153	Kiloleli	2009
3373	ward	3173	Mwamanyili	56	district	153	Mwamanyili	2009
3374	ward	3174	Kabita	52	district	153	Kabita	2009
3375	ward	3175	Kalemela	56	district	153	Kalemela	2009
3376	ward	3176	Lamadi	116	district	153	Lamadi	2009
3377	ward	3177	Lutubiga	122	district	153	Lutubiga	2009
3378	ward	3178	Mkula	96	district	153	Mkula	2009
3379	ward	3179	Ngasamo	168	district	153	Ngasamo	2009
3380	ward	3180	Malili	161	district	153	Malili	2009
3381	ward	3181	Igalukilo	102	district	153	Igalukilo	2009
3382	ward	3182	Kagu	141	district	154	Kagu	2009
3383	ward	3183	Bugulula	157	district	154	Bugulula	2009
3384	ward	3184	Senga	199	district	154	Senga	2009
3385	ward	3185	Kakubilo	74	district	154	Kakubilo	2009
3386	ward	3186	Nkome	226	district	154	Nkome	2009
3387	ward	3187	Katoma	25	district	154	Katoma	2009
3388	ward	3188	Nzera	80	district	154	Nzera	2009
3389	ward	3189	Lwezera	122	district	154	Lwezera	2009
3390	ward	3190	Kamhanga	162	district	154	Kamhanga	2009
3391	ward	3191	Bugalama	134	district	154	Bugalama	2009
3392	ward	3192	Lubanga	79	district	154	Lubanga	2009
3393	ward	3193	Isulwabutunde	95	district	154	Isulwabutunde	2009
3394	ward	3194	Kasamwa	171	district	154	Kasamwa	2009
3395	ward	3195	Bung'Wangoko	116	district	154	Bung'Wangoko	2009
3396	ward	3196	Bulela	146	district	154	Bulela	2009
3397	ward	3197	Ihanamilo	75	district	154	Ihanamilo	2009
3398	ward	3198	Nyanguku	91	district	154	Nyanguku	2009
3399	ward	3199	Kamena	156	district	154	Kamena	2009
3400	ward	3200	Nyamalimbe	132	district	154	Nyamalimbe	2009
3401	ward	3201	Bujula	83	district	154	Bujula	2009
3402	ward	3202	Bukoli	113	district	154	Bukoli	2009
3403	ward	3203	Butobela	74	district	154	Butobela	2009
3404	ward	3204	Nyarugusu	180	district	154	Nyarugusu	2009
3405	ward	3205	Nyakamwaga	171	district	154	Nyakamwaga	2009
3406	ward	3206	Lwamgasa	218	district	154	Lwamgasa	2009
3407	ward	3207	Kaseme	196	district	154	Kaseme	2009
3408	ward	3208	Busanda	137	district	154	Busanda	2009
3409	ward	3209	Katoro	75	district	154	Katoro	2009
3410	ward	3210	Nyamigota	166	district	154	Nyamigota	2009
3411	ward	3211	Nyakagomba	153	district	154	Nyakagomba	2009
3412	ward	3212	Nyachiluluma	118	district	154	Nyachiluluma	2009
3413	ward	3213	Bukondo	75	district	154	Bukondo	2009
3414	ward	3214	Chigunga	129	district	154	Chigunga	2009
3415	ward	3215	Mtakuja	237	district	154	Mtakuja	2009
3416	ward	3216	Kalangalala	203	district	154	Kalangalala	2009
3417	ward	3217	Shabaka	221	district	155	Shabaka	2009
3418	ward	3218	Busolwa	164	district	155	Busolwa	2009
3419	ward	3219	Kakura	167	district	155	Kakura	2009
3420	ward	3220	Nyugwa	158	district	155	Nyugwa	2009
3421	ward	3221	Bukwimba	228	district	155	Bukwimba	2009
3422	ward	3222	Kafita	127	district	155	Kafita	2009
3423	ward	3223	Kharumwa	104	district	155	Kharumwa	2009
3424	ward	3224	Izunya	69	district	155	Izunya	2009
3425	ward	3225	Mwingiro	86	district	155	Mwingiro	2009
3426	ward	3226	Nyabulanda	110	district	155	Nyabulanda	2009
3427	ward	3227	Nyang'Hwale	81	district	155	Nyang'Hwale	2009
3428	ward	3228	Nyijundu	96	district	155	Nyijundu	2009
3429	ward	3229	Nanda	104	district	156	Nanda	2009
3430	ward	3230	Ikobe	107	district	156	Ikobe	2009
3431	ward	3231	Lulembela	86	district	156	Lulembela	2009
3432	ward	3232	Ikunguigazi	82	district	156	Ikunguigazi	2009
3433	ward	3233	Isebya	166	district	156	Isebya	2009
3434	ward	3234	Ilolangulu	252	district	156	Ilolangulu	2009
3435	ward	3235	Mbogwe	64	district	156	Mbogwe	2009
3436	ward	3236	Mgemo	90	district	156	Mgemo	2009
3437	ward	3237	Ushirika	143	district	156	Ushirika	2009
3438	ward	3238	Nyasato	152	district	156	Nyasato	2009
3439	ward	3239	Lugunga	224	district	156	Lugunga	2009
3440	ward	3240	Nyakafulu	88	district	156	Nyakafulu	2009
3441	ward	3241	Bukandwe	60	district	156	Bukandwe	2009
3442	ward	3242	Ng'Homolwa	181	district	156	Ng'Homolwa	2009
3443	ward	3243	Masumbwe	130	district	156	Masumbwe	2009
3444	ward	3244	Iponya	166	district	156	Iponya	2009
3445	ward	3245	Runzewe Mashariki	651	district	157	Runzewe Mashariki	2009
3446	ward	3246	Runzewe Magharibi	1330	district	157	Runzewe Magharibi	2009
3447	ward	3247	Namonge	1506	district	157	Namonge	2009
3448	ward	3248	Uyovu	47	district	157	Uyovu	2009
3449	ward	3249	Busonzo	335	district	157	Busonzo	2009
3450	ward	3250	Ng'Anzo	326	district	157	Ng'Anzo	2009
3451	ward	3251	Butinzya	172	district	157	Butinzya	2009
3452	ward	3252	Ushirombo	163	district	157	Ushirombo	2009
3453	ward	3253	Lyambamgongo	93	district	157	Lyambamgongo	2009
3454	ward	3254	Bukombe	230	district	157	Bukombe	2009
3455	ward	3255	Bugelenga	80	district	157	Bugelenga	2009
3456	ward	3256	Iyogelo	2856	district	157	Iyogelo	2009
3457	ward	3257	Igulwa	300	district	157	Igulwa	2009
3458	ward	3258	Muganza	81	district	158	Muganza	2009
3459	ward	3259	Bwongera	128	district	158	Bwongera	2009
3460	ward	3260	Kigongo	91	district	158	Kigongo	2009
3461	ward	3261	Nyamirembe	129	district	158	Nyamirembe	2009
3462	ward	3262	Ichwankima	205	district	158	Ichwankima	2009
3463	ward	3263	Kachwamba	60	district	158	Kachwamba	2009
3464	ward	3264	Kasenga	203	district	158	Kasenga	2009
3465	ward	3265	Ilemela	51	district	158	Ilemela	2009
3466	ward	3266	Chato	7	district	158	Chato	2009
3467	ward	3267	Muungano	107	district	158	Muungano	2009
3468	ward	3268	Bwina	27	district	158	Bwina	2009
3469	ward	3269	Katende	54	district	158	Katende	2009
3470	ward	3270	Ilyamchele	70	district	158	Ilyamchele	2009
3471	ward	3271	Bukome	156	district	158	Bukome	2009
3472	ward	3272	Buziku	237	district	158	Buziku	2009
3473	ward	3273	Nyarutembo	256	district	158	Nyarutembo	2009
3474	ward	3274	Makurugusi	235	district	158	Makurugusi	2009
3475	ward	3275	Buseresere	84	district	158	Buseresere	2009
3476	ward	3276	Butengorumasa	107	district	158	Butengorumasa	2009
3477	ward	3277	Iparamasa	295	district	158	Iparamasa	2009
3478	ward	3278	Bwanga	219	district	158	Bwanga	2009
3479	ward	3279	Bwera	267	district	158	Bwera	2009
3480	ward	3280	Mkokotoni	4	district	159	Mkokotoni	2009
3481	ward	3281	Mto Wa Pwani	5	district	159	Mto Wa Pwani	2009
3482	ward	3282	Pale	9	district	159	Pale	2009
3483	ward	3283	Kivunge	1	district	159	Kivunge	2009
3484	ward	3284	Tumbatu Gomani	9	district	159	Tumbatu Gomani	2009
3485	ward	3285	Jongowe	5	district	159	Jongowe	2009
3486	ward	3286	Mkwajuni	41	district	159	Mkwajuni	2009
3487	ward	3287	Kibeni	2	district	159	Kibeni	2009
3488	ward	3288	Muwange	2	district	159	Muwange	2009
3489	ward	3289	Pitanazako	2	district	159	Pitanazako	2009
3490	ward	3290	Potowa	5	district	159	Potowa	2009
3491	ward	3291	Fukuchani	8	district	159	Fukuchani	2009
3492	ward	3292	Kidoti	13	district	159	Kidoti	2009
3493	ward	3293	Tazari	6	district	159	Tazari	2009
3494	ward	3294	Kigunda	3	district	159	Kigunda	2009
3495	ward	3295	Nungwi	7	district	159	Nungwi	2009
3496	ward	3296	Matemwe	25	district	159	Matemwe	2009
3497	ward	3297	Kijini	26	district	159	Kijini	2009
3498	ward	3298	Pwani Mchangani	7	district	159	Pwani Mchangani	2009
3499	ward	3299	Gamba	3	district	159	Gamba	2009
3500	ward	3300	Moga	3	district	159	Moga	2009
3501	ward	3301	Chaani Masingini	7	district	159	Chaani Masingini	2009
3502	ward	3302	Mcheza Shauri	1	district	159	Mcheza Shauri	2009
3503	ward	3303	Chaani Kubwa	4	district	159	Chaani Kubwa	2009
3504	ward	3304	Kikobweni	5	district	159	Kikobweni	2009
3505	ward	3305	Bandamaji	3	district	159	Bandamaji	2009
3506	ward	3306	Kinyasini	5	district	159	Kinyasini	2009
3507	ward	3307	Kandwi	17	district	159	Kandwi	2009
3508	ward	3308	Chutama	3	district	159	Chutama	2009
3509	ward	3309	Kisongoni	2	district	159	Kisongoni	2009
3510	ward	3310	Kilindi	379	district	159	Kilindi	2009
3511	ward	3311	Kilimani	61	district	159	Kilimani	2009
3512	ward	3312	Uvivini	4	district	159	Uvivini	2009
3513	ward	3313	Kidombo	3	district	159	Kidombo	2009
3514	ward	3314	Bwereu	3	district	159	Bwereu	2009
3515	ward	3315	Kigomani	8	district	159	Kigomani	2009
3516	ward	3316	Misufini	1	district	160	Misufini	2009
3517	ward	3317	Makoba	5	district	160	Makoba	2009
3518	ward	3318	Mangapwani	6	district	160	Mangapwani	2009
3519	ward	3319	Fujoni	5	district	160	Fujoni	2009
3520	ward	3320	Kiomba Mvua	4	district	160	Kiomba Mvua	2009
3521	ward	3321	Donge  Mchangani	10	district	160	Donge  Mchangani	2009
3522	ward	3322	Mkadini	2	district	160	Mkadini	2009
3523	ward	3323	Zingwe Zingwe	7	district	160	Zingwe Zingwe	2009
3524	ward	3324	Kitope	9	district	160	Kitope	2009
3525	ward	3325	Mahonda	4	district	160	Mahonda	2009
3526	ward	3326	Mnyimbi	6	district	160	Mnyimbi	2009
3527	ward	3327	Donge Mtambile	1	district	160	Donge Mtambile	2009
3528	ward	3328	Kinduni	6	district	160	Kinduni	2009
3529	ward	3329	Donge Karange	11	district	160	Donge Karange	2009
3530	ward	3330	Donge Mbiji	3	district	160	Donge Mbiji	2009
3531	ward	3331	Donge Kipange	7	district	160	Donge Kipange	2009
3532	ward	3332	Donge Vijibweni	7	district	160	Donge Vijibweni	2009
3533	ward	3333	Upenja	20	district	160	Upenja	2009
3534	ward	3334	Kiwengwa	24	district	160	Kiwengwa	2009
3535	ward	3335	Pangeni	7	district	160	Pangeni	2009
3536	ward	3336	Kilombero	16	district	160	Kilombero	2009
3537	ward	3337	Mgambo	515	district	160	Mgambo	2009
3538	ward	3338	Muwanda	6	district	160	Muwanda	2009
3539	ward	3339	Matetema	5	district	160	Matetema	2009
3540	ward	3340	Kidanzini	8	district	160	Kidanzini	2009
3541	ward	3341	Mbaleni	10	district	160	Mbaleni	2009
3542	ward	3342	Mafufuni	16	district	160	Mafufuni	2009
3543	ward	3343	Mkataleni	7	district	160	Mkataleni	2009
3544	ward	3344	Njia Ya Mtoni	5	district	160	Njia Ya Mtoni	2009
3545	ward	3345	Dunga Bweni	15	district	161	Dunga Bweni	2009
3546	ward	3346	Ubago	14	district	161	Ubago	2009
3547	ward	3347	Kidimni	8	district	161	Kidimni	2009
3548	ward	3348	Machui	4	district	161	Machui	2009
3549	ward	3349	Kiboje Muembeshauri	10	district	161	Kiboje Muembeshauri	2009
3550	ward	3350	Miwani	7	district	161	Miwani	2009
3551	ward	3351	Kiboje Mkwajuni	7	district	161	Kiboje Mkwajuni	2009
3552	ward	3352	Ghana	1	district	161	Ghana	2009
3553	ward	3353	Koani	7	district	161	Koani	2009
3554	ward	3354	Mgeni Haji	3	district	161	Mgeni Haji	2009
3555	ward	3355	Uzini	3	district	161	Uzini	2009
3556	ward	3356	Mitakawani	2	district	161	Mitakawani	2009
3557	ward	3357	Tunduni	3	district	161	Tunduni	2009
3558	ward	3358	Bambi	23	district	161	Bambi	2009
3559	ward	3359	Pagali	13	district	161	Pagali	2009
3560	ward	3360	Umbuji	30	district	161	Umbuji	2009
3561	ward	3361	Mchangani	49	district	161	Mchangani	2009
3562	ward	3362	Dunga Kiembeni	11	district	161	Dunga Kiembeni	2009
3563	ward	3363	Ndijani Mseweni	10	district	161	Ndijani Mseweni	2009
3564	ward	3364	Jendele	12	district	161	Jendele	2009
3565	ward	3365	Chwaka	13	district	161	Chwaka	2009
3566	ward	3366	Marumbi	12	district	161	Marumbi	2009
3567	ward	3367	Uroa	18	district	161	Uroa	2009
3568	ward	3368	Pongwe	78	district	161	Pongwe	2009
3569	ward	3369	Jumbi	17	district	161	Jumbi	2009
3570	ward	3370	Tunguu	17	district	161	Tunguu	2009
3571	ward	3371	Binguni	9	district	161	Binguni	2009
3572	ward	3372	Cheju	50	district	161	Cheju	2009
3573	ward	3373	Bungi	14	district	161	Bungi	2009
3574	ward	3374	Unguja Ukuu Kaepwani	4	district	161	Unguja Ukuu Kaepwani	2009
3575	ward	3375	Kikungwi	8	district	161	Kikungwi	2009
3576	ward	3376	Uzi	5	district	161	Uzi	2009
3577	ward	3377	Ng'Ambwa	13	district	161	Ng'Ambwa	2009
3578	ward	3378	Charawe	31	district	161	Charawe	2009
3579	ward	3379	Ukongoroni	35	district	161	Ukongoroni	2009
3580	ward	3380	Michamvi	14	district	161	Michamvi	2009
3581	ward	3381	Mpapa	107	district	161	Mpapa	2009
3582	ward	3382	Unguja Ukuu Kaebona	11	district	161	Unguja Ukuu Kaebona	2009
3583	ward	3383	Ndijani Muembe Punda	5	district	161	Ndijani Muembe Punda	2009
3584	ward	3384	Tindini	5	district	161	Tindini	2009
3585	ward	3385	Nganani	9	district	162	Nganani	2009
3586	ward	3386	Kijini	26	district	162	Kijini	2009
3587	ward	3387	Mzuri	4	district	162	Mzuri	2009
3588	ward	3388	Kajengwa	29	district	162	Kajengwa	2009
3589	ward	3389	Jambiani Kikadini	43	district	162	Jambiani Kikadini	2009
3590	ward	3390	Mtende	20	district	162	Mtende	2009
3591	ward	3391	Kibuteni	20	district	162	Kibuteni	2009
3592	ward	3392	Kizimkazi Dimbani	12	district	162	Kizimkazi Dimbani	2009
3593	ward	3393	Kizimkazi Mkunguni	12	district	162	Kizimkazi Mkunguni	2009
3594	ward	3394	Muyuni A	15	district	162	Muyuni A	2009
3595	ward	3395	Muyuni B	10	district	162	Muyuni B	2009
3596	ward	3396	Muyuni C	18	district	162	Muyuni C	2009
3597	ward	3397	Pete	26	district	162	Pete	2009
3598	ward	3398	Muungoni	23	district	162	Muungoni	2009
3599	ward	3399	Paje	35	district	162	Paje	2009
3600	ward	3400	Jambiani Kibigija	29	district	162	Jambiani Kibigija	2009
3601	ward	3401	Bwejuu	14	district	162	Bwejuu	2009
3602	ward	3402	Kitogani	17	district	162	Kitogani	2009
3603	ward	3403	Kiongoni	1	district	162	Kiongoni	2009
3604	ward	3404	Tasani	4	district	162	Tasani	2009
3605	ward	3405	Dongwe	32	district	162	Dongwe	2009
3606	ward	3406	Mwera	42	district	163	Mwera	2009
3607	ward	3407	Mtoni	4	district	163	Mtoni	2009
3608	ward	3408	Bububu	5	district	163	Bububu	2009
3609	ward	3409	Chuini	6	district	163	Chuini	2009
3610	ward	3410	Kama	5	district	163	Kama	2009
3611	ward	3411	Mfenesini	3	district	163	Mfenesini	2009
3612	ward	3412	Mwakaje	10	district	163	Mwakaje	2009
3613	ward	3413	Fuoni Kibondeni	24	district	163	Fuoni Kibondeni	2009
3614	ward	3414	Kianga	14	district	163	Kianga	2009
3615	ward	3415	Dole	9	district	163	Dole	2009
3616	ward	3416	Kizimbani	8	district	163	Kizimbani	2009
3617	ward	3417	Mbuzini	8	district	163	Mbuzini	2009
3618	ward	3418	Bumbwisudi	8	district	163	Bumbwisudi	2009
3619	ward	3419	Maungani	7	district	163	Maungani	2009
3620	ward	3420	Shakani	8	district	163	Shakani	2009
3621	ward	3421	Kiembesamaki	5	district	163	Kiembesamaki	2009
3622	ward	3422	Chukwani	7	district	163	Chukwani	2009
3623	ward	3423	Fumba	4	district	163	Fumba	2009
3624	ward	3424	Bweleo	10	district	163	Bweleo	2009
3625	ward	3425	Dimani	550	district	163	Dimani	2009
3626	ward	3426	Kombeni	13	district	163	Kombeni	2009
3627	ward	3427	Mwanakwerekwe	1	district	163	Mwanakwerekwe	2009
3628	ward	3428	Mtopepo	2	district	163	Mtopepo	2009
3629	ward	3429	Magogoni	3	district	163	Magogoni	2009
3630	ward	3430	Mtoni Kidatu	3	district	163	Mtoni Kidatu	2009
3631	ward	3431	Mwanyanya	2	district	163	Mwanyanya	2009
3632	ward	3432	Fuoni Kijito Upele	6	district	163	Fuoni Kijito Upele	2009
3633	ward	3433	Tomondo	3	district	163	Tomondo	2009
3634	ward	3434	Welezo	1	district	163	Welezo	2009
3635	ward	3435	Mtufaani	3	district	163	Mtufaani	2009
3636	ward	3436	Sharifumsa	1	district	163	Sharifumsa	2009
3637	ward	3437	Kibweni	1	district	163	Kibweni	2009
3638	ward	3438	Kihinani	3	district	163	Kihinani	2009
3639	ward	3439	Mombasa	2	district	163	Mombasa	2009
3640	ward	3440	Kisauni	5	district	163	Kisauni	2009
3641	ward	3441	Melinne	1	district	163	Melinne	2009
3642	ward	3442	Pangawe	4	district	163	Pangawe	2009
3643	ward	3443	Kinuni	1	district	163	Kinuni	2009
3644	ward	3444	Nyamanzi	2	district	163	Nyamanzi	2009
3645	ward	3445	Shangani	6	district	164	Shangani	2009
3646	ward	3446	Mkunazini	0	district	164	Mkunazini	2009
3647	ward	3447	Kiponda	0	district	164	Kiponda	2009
3648	ward	3448	Malindi	40	district	164	Malindi	2009
3649	ward	3449	Mchangani	49	district	164	Mchangani	2009
3650	ward	3450	Mlandege	1	district	164	Mlandege	2009
3651	ward	3451	Mwembeladu	0	district	164	Mwembeladu	2009
3652	ward	3452	Gulioni	0	district	164	Gulioni	2009
3653	ward	3453	Makadara	0	district	164	Makadara	2009
3654	ward	3454	Shaurimoyo	1	district	164	Shaurimoyo	2009
3655	ward	3455	Mwembe Makumbi	1	district	164	Mwembe Makumbi	2009
3656	ward	3456	Chumbuni	1	district	164	Chumbuni	2009
3657	ward	3457	Kwamtipura	0	district	164	Kwamtipura	2009
3658	ward	3458	Kilimahewa Juu	0	district	164	Kilimahewa Juu	2009
3659	ward	3459	Amani	92	district	164	Amani	2009
3660	ward	3460	Nyerere	0	district	164	Nyerere	2009
3661	ward	3461	Sebleni	0	district	164	Sebleni	2009
3662	ward	3462	Magomeni	133	district	164	Magomeni	2009
3663	ward	3463	Mpendae	1	district	164	Mpendae	2009
3664	ward	3464	Urusi	0	district	164	Urusi	2009
3665	ward	3465	Kilimani	61	district	164	Kilimani	2009
3666	ward	3466	Miembeni	2	district	164	Miembeni	2009
3667	ward	3467	Kikwajuni Juu	0	district	164	Kikwajuni Juu	2009
3668	ward	3468	Kikwajuni Bondeni	0	district	164	Kikwajuni Bondeni	2009
3669	ward	3469	Kisima Majongoo	0	district	164	Kisima Majongoo	2009
3670	ward	3470	Vikokotoni	0	district	164	Vikokotoni	2009
3671	ward	3471	Muembetanga	0	district	164	Muembetanga	2009
3672	ward	3472	Muembeshauri	0	district	164	Muembeshauri	2009
3673	ward	3473	Rahaleo	1	district	164	Rahaleo	2009
3674	ward	3474	Kwaalimsha	0	district	164	Kwaalimsha	2009
3675	ward	3475	Mikunguni	155	district	164	Mikunguni	2009
3676	ward	3476	Mkele	0	district	164	Mkele	2009
3677	ward	3477	Muungano	107	district	164	Muungano	2009
3678	ward	3478	Sogea	0	district	164	Sogea	2009
3679	ward	3479	Jang'Ombe	0	district	164	Jang'Ombe	2009
3680	ward	3480	Kidongo Chekundu	0	district	164	Kidongo Chekundu	2009
3681	ward	3481	Matarumbeta	0	district	164	Matarumbeta	2009
3682	ward	3482	Kwahani	0	district	164	Kwahani	2009
3683	ward	3483	Kwaalinatu	0	district	164	Kwaalinatu	2009
3684	ward	3484	Karakana	1	district	164	Karakana	2009
3685	ward	3485	Kilimahewa Bondeni	0	district	164	Kilimahewa Bondeni	2009
3686	ward	3486	Kwa Wazee	1	district	164	Kwa Wazee	2009
3687	ward	3487	Migombani	1	district	164	Migombani	2009
3688	ward	3488	Meya	0	district	164	Meya	2009
3689	ward	3489	Kisiwandui	0	district	164	Kisiwandui	2009
3690	ward	3490	Kipangani	1	district	165	Kipangani	2009
3691	ward	3491	Mtambwe Kaskazini	18	district	165	Mtambwe Kaskazini	2009
3692	ward	3492	Fundo	10	district	165	Fundo	2009
3693	ward	3493	Mchanga Mdogo	4	district	165	Mchanga Mdogo	2009
3694	ward	3494	Kambini	7	district	165	Kambini	2009
3695	ward	3495	Kojani	13	district	165	Kojani	2009
3696	ward	3496	Ole	13	district	165	Ole	2009
3697	ward	3497	Kangagani	22	district	165	Kangagani	2009
3698	ward	3498	Kiuyu Minungwini	4	district	165	Kiuyu Minungwini	2009
3699	ward	3499	Piki	22	district	165	Piki	2009
3700	ward	3500	Kisiwani	1546	district	165	Kisiwani	2009
3701	ward	3501	Gando	11	district	165	Gando	2009
3702	ward	3502	Ukunjwi	16	district	165	Ukunjwi	2009
3703	ward	3503	Pandani	14	district	165	Pandani	2009
3704	ward	3504	Shengejuu	8	district	165	Shengejuu	2009
3705	ward	3505	Bopwe	2	district	165	Bopwe	2009
3706	ward	3506	Utaani	0	district	165	Utaani	2009
3707	ward	3507	Mtambwe Kusini	34	district	165	Mtambwe Kusini	2009
3708	ward	3508	Selem	1	district	165	Selem	2009
3709	ward	3509	Kinyikani	7	district	165	Kinyikani	2009
3710	ward	3510	Chwale	5	district	165	Chwale	2009
3711	ward	3511	Maziwani	8	district	165	Maziwani	2009
3712	ward	3512	Mpambani	0	district	165	Mpambani	2009
3713	ward	3513	Mjini Ole	8	district	165	Mjini Ole	2009
3714	ward	3514	Kiuyu Kigongoni	3	district	165	Kiuyu Kigongoni	2009
3715	ward	3515	Mzambarauni Takao	6	district	165	Mzambarauni Takao	2009
3716	ward	3516	Junguni	10	district	165	Junguni	2009
3717	ward	3517	Kiungoni	8	district	165	Kiungoni	2009
3718	ward	3518	Pembeni	9	district	165	Pembeni	2009
3719	ward	3519	Kizimbani	8	district	165	Kizimbani	2009
3720	ward	3520	Limbani	11	district	165	Limbani	2009
3721	ward	3521	Jadida	2	district	165	Jadida	2009
3722	ward	3522	Micheweni	2	district	166	Micheweni	2009
3723	ward	3523	Msuka Mashariki	8	district	166	Msuka Mashariki	2009
3724	ward	3524	Kinowe	7	district	166	Kinowe	2009
3725	ward	3525	Tumbe Mashariki	3	district	166	Tumbe Mashariki	2009
3726	ward	3526	Mgogoni	6	district	166	Mgogoni	2009
3727	ward	3527	Shumba Viamboni	9	district	166	Shumba Viamboni	2009
3728	ward	3528	Finya	9	district	166	Finya	2009
3729	ward	3529	Konde	34	district	166	Konde	2009
3730	ward	3530	Wingwi Mapofu	11	district	166	Wingwi Mapofu	2009
3731	ward	3531	Kiuyu Mbuyuni	18	district	166	Kiuyu Mbuyuni	2009
3732	ward	3532	Makangale	13	district	166	Makangale	2009
3733	ward	3533	Wingwi Njuguni	2	district	166	Wingwi Njuguni	2009
3734	ward	3534	Shumba Mjini	11	district	166	Shumba Mjini	2009
3735	ward	3535	Majenzi	2	district	166	Majenzi	2009
3736	ward	3536	Mjini Wingwi	9	district	166	Mjini Wingwi	2009
3737	ward	3537	Msuka Magharibi	7	district	166	Msuka Magharibi	2009
3738	ward	3538	Chimba	9	district	166	Chimba	2009
3739	ward	3539	Tumbe Magharibi	6	district	166	Tumbe Magharibi	2009
3740	ward	3540	Sizini	9	district	166	Sizini	2009
3741	ward	3541	Kinyasini	5	district	166	Kinyasini	2009
3742	ward	3542	Mihogoni	10	district	166	Mihogoni	2009
3743	ward	3543	Kifundi	16	district	166	Kifundi	2009
3744	ward	3544	Maziwa Ng'Ombe	13	district	166	Maziwa Ng'Ombe	2009
3745	ward	3545	Tondooni	19	district	166	Tondooni	2009
3746	ward	3546	Mtemani	4	district	166	Mtemani	2009
3747	ward	3547	Wingwi Mjananza	2	district	166	Wingwi Mjananza	2009
3748	ward	3548	Mlindo	6	district	166	Mlindo	2009
3749	ward	3549	Chanjaani	4	district	167	Chanjaani	2009
3750	ward	3550	Wawi	9	district	167	Wawi	2009
3751	ward	3551	Pujini	12	district	167	Pujini	2009
3752	ward	3552	Ziwani	123	district	167	Ziwani	2009
3753	ward	3553	Ndagoni	93	district	167	Ndagoni	2009
3754	ward	3554	Kwale	16	district	167	Kwale	2009
3755	ward	3555	Vitongoji	12	district	167	Vitongoji	2009
3756	ward	3556	Ng'Ambwa	13	district	167	Ng'Ambwa	2009
3757	ward	3557	Shungi	11	district	167	Shungi	2009
3758	ward	3558	Chonga	16	district	167	Chonga	2009
3759	ward	3559	Mgelema	6	district	167	Mgelema	2009
3760	ward	3560	Kilindi	379	district	167	Kilindi	2009
3761	ward	3561	Tibirinzi	6	district	167	Tibirinzi	2009
3762	ward	3562	Chachani	0	district	167	Chachani	2009
3763	ward	3563	Wara	1	district	167	Wara	2009
3764	ward	3564	Mvumoni	9	district	167	Mvumoni	2009
3765	ward	3565	Matale	687	district	167	Matale	2009
3766	ward	3566	Wesha	10	district	167	Wesha	2009
3767	ward	3567	Uwandani	7	district	167	Uwandani	2009
3768	ward	3568	Madungu	2	district	167	Madungu	2009
3769	ward	3569	Mgogoni	6	district	167	Mgogoni	2009
3770	ward	3570	Dodo	14	district	167	Dodo	2009
3771	ward	3571	Mbuzini	8	district	167	Mbuzini	2009
3772	ward	3572	Michungwani	5	district	167	Michungwani	2009
3773	ward	3573	Kibokoni	7	district	167	Kibokoni	2009
3774	ward	3574	Kichungwani	2	district	167	Kichungwani	2009
3775	ward	3575	Msingini	0	district	167	Msingini	2009
3776	ward	3576	Mkoroshoni	2	district	167	Mkoroshoni	2009
3777	ward	3577	Mfikiwa	7	district	167	Mfikiwa	2009
3778	ward	3578	Ng'Ombeni	2	district	168	Ng'Ombeni	2009
3779	ward	3579	Makombeni	3	district	168	Makombeni	2009
3780	ward	3580	Makoongwe	3	district	168	Makoongwe	2009
3781	ward	3581	Shidi	4	district	168	Shidi	2009
3782	ward	3582	Mkanyageni	8	district	168	Mkanyageni	2009
3783	ward	3583	Michenzani	4	district	168	Michenzani	2009
3784	ward	3584	Chokocho	8	district	168	Chokocho	2009
3785	ward	3585	Kisiwa Panza	21	district	168	Kisiwa Panza	2009
3786	ward	3586	Kangani	7	district	168	Kangani	2009
3787	ward	3587	Kengeja	9	district	168	Kengeja	2009
3788	ward	3588	Muambe	6	district	168	Muambe	2009
3789	ward	3589	Kiwani	10	district	168	Kiwani	2009
3790	ward	3590	Mtambile	9	district	168	Mtambile	2009
3791	ward	3591	Mizingani	7	district	168	Mizingani	2009
3792	ward	3592	Ngwachani	7	district	168	Ngwachani	2009
3793	ward	3593	Chambani	22	district	168	Chambani	2009
3794	ward	3594	Wambaa	11	district	168	Wambaa	2009
3795	ward	3595	Mbuguani	7	district	168	Mbuguani	2009
3796	ward	3596	Uweleni	2	district	168	Uweleni	2009
3797	ward	3597	Mtangani	14	district	168	Mtangani	2009
3798	ward	3598	Ukutini	7	district	168	Ukutini	2009
3799	ward	3599	Chumbageni	3	district	168	Chumbageni	2009
3800	ward	3600	Mbuyuni	15	district	168	Mbuyuni	2009
3801	ward	3601	Stahabu	3	district	168	Stahabu	2009
3802	ward	3602	Kuukuu	4	district	168	Kuukuu	2009
3803	ward	3603	Mjimbini	9	district	168	Mjimbini	2009
3804	ward	3604	Shamiani	4	district	168	Shamiani	2009
3805	ward	3605	Jombwe	4	district	168	Jombwe	2009
3806	ward	3606	Kendwa	12	district	168	Kendwa	2009
3807	ward	3607	Minazini	9	district	168	Minazini	2009
3808	ward	3608	Mgagadu	9	district	168	Mgagadu	2009
3809	ward	3609	Mkungu	7	district	168	Mkungu	2009
3810	ward	3610	Changaweni	10	district	168	Changaweni	2009
3811	ward	3611	Lilambo	133	district	65	Lilambo	2009
3812	ward	3612	Selela	1185	district	8	Selela	2009
3813	ward	3613	Oldonyosambu	217	district	13	Oldonyosambu	2009
3814	ward	3614	Endonyongijape	1532	district	137	Endonyongijape	2009
3815	ward	3615	Kitwai	3683	district	137	Kitwai	2009
3816	ward	3616	Naberera	2860	district	137	Naberera	2009
3817	ward	3617	Busi	808	district	1	Busi	2009
3818	ward	3618	Jangalo	189	district	7	Jangalo	2009
3819	ward	3619	Njoro	81	district	138	Njoro	2009
3820	ward	3620	Olboroti	360	district	138	Olboroti	2009
3821	ward	3621	Chapakazi	280	district	138	Chapakazi	2009
3822	ward	3622	Kidete	409	district	32	Kidete	2009
3823	ward	3623	Kinole	120	district	33	Kinole	2009
3824	ward	3624	Igigwa	1445	district	93	Igigwa	2009
3825	ward	3625	Chita	702	district	34	Chita	2009
3826	ward	3626	Lugelele	239	district	79	Lugelele	2009
3827	ward	3627	Mbwewe	520	district	39	Mbwewe	2009
3828	ward	3628	Mazinde	284	district	23	Mazinde	2009
3829	ward	3629	Endokise	349	district	134	Endokise	2009
3830	ward	3630	Boay	85	district	134	Boay	2009
3831	ward	3631	Nar	66	district	134	Nar	2009
3832	ward	3632	Mukendo	1	district	169	Mukendo	2009
3833	ward	3633	Mwigobero	0	district	169	Mwigobero	2009
3834	ward	3634	Iringo	0	district	169	Iringo	2009
3835	ward	3635	Kitaji	1	district	169	Kitaji	2009
3836	ward	3636	Nyasho	1	district	169	Nyasho	2009
3837	ward	3637	Bweri	19	district	169	Bweri	2009
3838	ward	3638	Nyakato	55	district	169	Nyakato	2009
3839	ward	3639	Kigera	11	district	169	Kigera	2009
3840	ward	3640	Kamunyonge	1	district	169	Kamunyonge	2009
3841	ward	3641	Nyamatare	84	district	169	Nyamatare	2009
3842	ward	3642	Mwisenge	3	district	169	Mwisenge	2009
3843	ward	3643	Buhare	10	district	169	Buhare	2009
3844	ward	3644	Makoko	13	district	169	Makoko	2009
\.


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wazimap_geography_id_seq', 1, false);


--
-- Name: wazimap_geography_geo_level_bbe3c9fc_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_bbe3c9fc_uniq UNIQUE (geo_level, geo_code, version);


--
-- Name: wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);


--
-- Name: wazimap_geography_2af72f10; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_2af72f10 ON wazimap_geography USING btree (version);


--
-- Name: wazimap_geography_2fc6351a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_2fc6351a ON wazimap_geography USING btree (long_name);


--
-- Name: wazimap_geography_b068931c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_b068931c ON wazimap_geography USING btree (name);


--
-- Name: wazimap_geography_long_name_9b8409f5_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_long_name_9b8409f5_like ON wazimap_geography USING btree (long_name varchar_pattern_ops);


--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_name_36b79089_like ON wazimap_geography USING btree (name varchar_pattern_ops);


--
-- Name: wazimap_geography_version_01953818_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wazimap_geography_version_01953818_like ON wazimap_geography USING btree (version varchar_pattern_ops);


--
-- PostgreSQL database dump complete
--

