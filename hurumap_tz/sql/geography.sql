--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS public.wazimap_geography_name_36b79089_like;
DROP INDEX IF EXISTS public.wazimap_geography_d7d547e9;
DROP INDEX IF EXISTS public.wazimap_geography_b068931c;
DROP INDEX IF EXISTS public.wazimap_geography_84cdc76c;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_pkey;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_9a5128d2_uniq;
ALTER TABLE IF EXISTS public.wazimap_geography ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.wazimap_geography_id_seq;
DROP TABLE IF EXISTS public.wazimap_geography;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wazimap_geography; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wazimap_geography (
    id integer NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    name character varying(40) NOT NULL,
    parent_level character varying(15),
    parent_code character varying(10),
    long_name character varying(128) NOT NULL,
    year integer,
    square_kms double precision
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

COPY wazimap_geography (id, geo_level, geo_code, name, parent_level, parent_code, long_name, year, square_kms) FROM stdin;
1	region	1	Arusha	country	TZ	Arusha	2012	34516
2	region	2	Dar es salaam	country	TZ	Dar es salaam	2012	1393
3	region	3	Dodoma	country	TZ	Dodoma	2012	41311
4	region	4	Geita	country	TZ	Geita	2012	20054
5	region	5	Iringa	country	TZ	Iringa	2012	58936
6	region	6	Kagera	country	TZ	Kagera	2012	39627
7	region	7	Kaskazini pemba	country	TZ	Kaskazini pemba	2012	574
8	region	8	Kaskazini unguja	country	TZ	Kaskazini unguja	2012	470
9	region	9	Katavi	country	TZ	Katavi	2012	45843
10	region	10	Kigoma	country	TZ	Kigoma	2012	45066
11	region	11	Kilimanjaro	country	TZ	Kilimanjaro	2012	13209
12	region	12	Kusini pemba	country	TZ	Kusini pemba	2012	332
13	region	13	Kusini unguja	country	TZ	Kusini unguja	2012	854
14	region	14	Lindi	country	TZ	Lindi	2012	67000
15	region	15	Manyara	country	TZ	Manyara	2012	47913
16	region	16	Mara	country	TZ	Mara	2012	31150
17	region	17	Mbeya	country	TZ	Mbeya	2012	62420
18	region	18	Morogoro	country	TZ	Morogoro	2012	73139
19	region	19	Mtwara	country	TZ	Mtwara	2012	16707
20	region	20	Mwanza	country	TZ	Mwanza	2012	35187
21	region	21	Njombe	country	TZ	Njombe	2012	21347
22	region	22	Pwani	country	TZ	Pwani	2012	32407
23	region	23	Rukwa	country	TZ	Rukwa	2012	75240
24	region	24	Ruvuma	country	TZ	Ruvuma	2012	66477
25	region	25	Shinyanga	country	TZ	Shinyanga	2012	40781
26	region	26	Simiyu	country	TZ	Simiyu	2012	2380
27	region	27	Singida	country	TZ	Singida	2012	49437
28	region	28	Tanga	country	TZ	Tanga	2012	27348
29	region	29	Tabora	country	TZ	Tabora	2012	76151
30	region	30	Mjini magharibi	country	TZ	Mjini magharibi	2012	230
31	district	22	Lushoto	region	28	Lushoto	2012	3500
32	district	23	Korogwe	region	28	Korogwe	2012	3756
33	district	24	Muheza	region	28	Muheza	2012	4818
34	district	25	Tanga	region	28	Tanga	2012	474
35	district	26	Pangani	region	28	Pangani	2012	1019
36	district	27	Handeni	region	28	Handeni	2012	6112
37	district	28	Kilindi	region	28	Kilindi	2012	7091
38	district	29	Mkinga	region	28	Mkinga	2012	2711
39	district	30	Korogwe urban	region	28	Korogwe urban	2012	1323
40	district	31	Handeni urban	region	28	Handeni urban	2012	7366
41	district	89	Nzega	region	29	Nzega	2012	6961
42	district	90	Igunga	region	29	Igunga	2012	6788
43	district	91	Uyui	region	29	Uyui	2012	0
44	district	92	Urambo	region	29	Urambo	2012	21299
45	district	93	Sikonge	region	29	Sikonge	2012	21000
46	district	94	Tabora urban	region	29	Tabora urban	2012	20104
47	district	95	Kaliua	region	29	Kaliua	2012	0
48	district	167	Chake chake	region	12	Chake chake	2012	332
49	district	168	Mkoani	region	12	Mkoani	2012	0
50	district	128	Tarime	region	16	Tarime	2012	3885
51	district	129	Serengeti	region	16	Serengeti	2012	10942
52	district	130	Musoma	region	16	Musoma	2012	1929
53	district	131	Bunda	region	16	Bunda	2012	2782
54	district	132	Rorya	region	16	Rorya	2012	0
55	district	133	Butiama	region	16	Butiama	2012	0
56	district	169	Musoma urban	region	16	Musoma urban	2012	28
57	district	134	Babati	region	15	Babati	2012	4969
58	district	135	Hanang	region	15	Hanang	2012	2918
59	district	136	Mbulu	region	15	Mbulu	2012	3316
60	district	137	Simanjiro	region	15	Simanjiro	2012	18851
61	district	138	Kiteto	region	15	Kiteto	2012	16305
62	district	139	Babati urban	region	15	Babati urban	2012	0
63	district	161	Kati	region	13	Kati	2012	854
64	district	162	Kusini	region	13	Kusini	2012	0
65	district	49	Kilwa	region	14	Kilwa	2012	13920
66	district	50	Lindi rural	region	14	Lindi rural	2012	0
67	district	51	Nachingwea	region	14	Nachingwea	2012	7070
68	district	52	Liwale	region	14	Liwale	2012	36084
69	district	53	Ruangwa	region	14	Ruangwa	2012	2080
70	district	54	Lindi urban	region	14	Lindi urban	2012	7846
71	district	96	Kalambo	region	23	Kalambo	2012	0
72	district	97	Sumbawanga rural	region	23	Sumbawanga rural	2012	12836
73	district	98	Nkasi	region	23	Nkasi	2012	9375
74	district	99	Sumbawanga urban	region	23	Sumbawanga urban	2012	581
75	district	55	Mtwara rural	region	19	Mtwara rural	2012	3597
76	district	56	Newala	region	19	Newala	2012	2126
77	district	57	Masasi	region	19	Masasi	2012	8940
78	district	58	Tandahimba	region	19	Tandahimba	2012	1894
79	district	59	Mtwara urban	region	19	Mtwara urban	2012	163
80	district	60	Nanyumbu	region	19	Nanyumbu	2012	0
81	district	61	Masasi urban	region	19	Masasi urban	2012	0
82	district	46	Kinondoni	region	2	Kinondoni	2012	527
83	district	47	Ilala	region	2	Ilala	2012	210
84	district	48	Temeke	region	2	Temeke	2012	656
85	district	163	Magharibi	region	30	Magharibi	2012	0
86	district	164	Mjini	region	30	Mjini	2012	230
87	district	108	Shinyanga urban	region	25	Shinyanga urban	2012	548
88	district	109	Kishapu	region	25	Kishapu	2012	4334
89	district	110	Shinyanga rural	region	25	Shinyanga rural	2012	4212
90	district	111	Kahama	region	25	Kahama	2012	9461
91	district	112	Kahama urban	region	25	Kahama urban	2012	0
92	district	15	Rombo	region	11	Rombo	2012	1482
93	district	16	Mwanga	region	11	Mwanga	2012	2170
94	district	17	Same	region	11	Same	2012	5730
95	district	18	Moshi	region	11	Moshi	2012	1500
96	district	19	Hai	region	11	Hai	2012	2369
97	district	20	Moshi urban	region	11	Moshi urban	2012	58
98	district	21	Siha	region	11	Siha	2012	0
99	district	100	Kibondo	region	10	Kibondo	2012	15722
100	district	101	Kasulu	region	10	Kasulu	2012	9128
101	district	102	Kigoma rural	region	10	Kigoma rural	2012	11545
102	district	103	Kigoma urban	region	10	Kigoma urban	2012	128
103	district	104	Uvinza	region	10	Uvinza	2012	0
104	district	105	Buhigwe	region	10	Buhigwe	2012	0
105	district	106	Kakonko	region	10	Kakonko	2012	0
106	district	107	Kasulu urban	region	10	Kasulu urban	2012	0
107	district	1	Kondoa	region	3	Kondoa	2012	13210
108	district	2	Mpwapwa	region	3	Mpwapwa	2012	7479
109	district	3	Kongwa	region	3	Kongwa	2012	4041
110	district	4	Chamwino	region	3	Chamwino	2012	0
111	district	5	Dodoma urban	region	3	Dodoma urban	2012	2576
112	district	6	Bahi	region	3	Bahi	2012	0
113	district	7	Chemba	region	3	Chemba	2012	0
114	district	39	Bagamoyo	region	22	Bagamoyo	2012	9842
115	district	40	Kibaha	region	22	Kibaha	2012	1812
116	district	41	Kisarawe	region	22	Kisarawe	2012	4464
117	district	42	Mkuranga	region	22	Mkuranga	2012	2432
118	district	43	Rufiji	region	22	Rufiji	2012	0
119	district	44	Mafia	region	22	Mafia	2012	518
120	district	45	Kibaha urban	region	22	Kibaha urban	2012	0
121	district	32	Kilosa	region	18	Kilosa	2012	14245
122	district	33	Morogoro	region	18	Morogoro	2012	11711
123	district	34	Kilombero	region	18	Kilombero	2012	13577
124	district	35	Ulanga	region	18	Ulanga	2012	23681
125	district	36	Morogoro urban	region	18	Morogoro urban	2012	260
126	district	37	Mvomero	region	18	Mvomero	2012	7325
127	district	38	Gairo	region	18	Gairo	2012	0
128	district	159	Kaskazini a	region	8	Kaskazini a	2012	470
129	district	160	Kaskazini b	region	8	Kaskazini b	2012	0
130	district	165	Wete	region	7	Wete	2012	574
131	district	166	Micheweni	region	7	Micheweni	2012	0
132	district	83	Iramba	region	27	Iramba	2012	7900
133	district	84	Singida	region	27	Singida	2012	12164
134	district	85	Manyoni	region	27	Manyoni	2012	28620
135	district	86	Singida urban	region	27	Singida urban	2012	657
136	district	87	Ikungi	region	27	Ikungi	2012	0
137	district	88	Mkalama	region	27	Mkalama	2012	0
138	district	149	Bariadi	region	26	Bariadi	2012	9777
139	district	150	Itilima	region	26	Itilima	2012	0
140	district	151	Meatu	region	26	Meatu	2012	8871
141	district	152	Maswa	region	26	Maswa	2012	2736
142	district	153	Busega	region	26	Busega	2012	0
143	district	140	Njombe urban	region	21	Njombe urban	2012	0
144	district	141	Wanging'ombe	region	21	Wanging'ombe	2012	0
145	district	142	Makete	region	21	Makete	2012	3178
146	district	143	Njombe rural	region	21	Njombe rural	2012	9868
147	district	144	Ludewa	region	21	Ludewa	2012	5597
148	district	145	Makambako urban	region	21	Makambako urban	2012	0
149	district	121	Ukerewe	region	20	Ukerewe	2012	640
150	district	122	Magu	region	20	Magu	2012	3070
151	district	123	Nyamagana	region	20	Nyamagana	2012	425
152	district	124	Kwimba	region	20	Kwimba	2012	3599
153	district	125	Sengerema	region	20	Sengerema	2012	3335
154	district	126	Ilemela	region	20	Ilemela	2012	895
155	district	127	Misungwi	region	20	Misungwi	2012	1947
156	district	113	Karagwe	region	6	Karagwe	2012	5450
157	district	114	Bukoba rural	region	6	Bukoba rural	2012	6993
158	district	115	Muleba	region	6	Muleba	2012	2499
159	district	116	Biharamulo	region	6	Biharamulo	2012	8938
160	district	117	Ngara	region	6	Ngara	2012	4428
161	district	118	Bukoba urban	region	6	Bukoba urban	2012	80
162	district	119	Missenyi	region	6	Missenyi	2012	0
163	district	120	Kyerwa	region	6	Kyerwa	2012	0
164	district	8	Monduli	region	1	Monduli	2012	14070
165	district	9	Meru	region	1	Meru	2012	6936
166	district	10	Arusha urban	region	1	Arusha urban	2012	83
167	district	11	Karatu	region	1	Karatu	2012	3300
168	district	12	Ngorongoro	region	1	Ngorongoro	2012	13460
169	district	13	Arusha	region	1	Arusha	2012	0
170	district	14	Longido	region	1	Longido	2012	0
171	district	68	Iringa rural	region	5	Iringa rural	2012	19898
172	district	69	Mufindi	region	5	Mufindi	2012	0
173	district	70	Iringa urban	region	5	Iringa urban	2012	160
174	district	71	Kilolo	region	5	Kilolo	2012	6804
175	district	72	Mafinga urban	region	5	Mafinga urban	2012	6177
176	district	146	Mpanda urban	region	9	Mpanda urban	2012	0
177	district	147	Mpanda rural	region	9	Mpanda rural	2012	45843
178	district	148	Mlele	region	9	Mlele	2012	0
179	district	73	Chunya	region	17	Chunya	2012	27065
180	district	74	Mbeya rural	region	17	Mbeya rural	2012	2334
181	district	75	Kyela	region	17	Kyela	2012	791
182	district	76	Rungwe	region	17	Rungwe	2012	0
183	district	77	Ileje	region	17	Ileje	2012	0
184	district	78	Mbozi	region	17	Mbozi	2012	9586
185	district	79	Mbarali	region	17	Mbarali	2012	16000
186	district	80	Mbeya urban	region	17	Mbeya urban	2012	185
187	district	81	Momba	region	17	Momba	2012	0
188	district	82	Tunduma	region	17	Tunduma	2012	0
189	district	62	Tunduru	region	24	Tunduru	2012	18778
190	district	63	Songea rural	region	24	Songea rural	2012	12164
191	district	64	Mbinga	region	24	Mbinga	2012	11396
192	district	65	Songea urban	region	24	Songea urban	2012	657
193	district	66	Namtumbo	region	24	Namtumbo	2012	0
194	district	67	Nyasa	region	24	Nyasa	2012	0
195	district	154	Geita	region	4	Geita	2012	5880
196	district	155	Nyang'hwale	region	4	Nsyang'hwale	2012	0
197	district	156	Mbogwe	region	4	Mbogwe	2012	0
198	district	157	Bukombe	region	4	Bukombe	2012	10842
199	district	158	Chato	region	4	Chato	2012	0
200	country	TZ	Tanzania	\N	\N	Tanzania	2012	945087
201	ward	1	Bumbuta	district	1	Bumbuta	2012	190
202	ward	2	Pahi	district	1	Pahi	2012	110
203	ward	3	Haubi	district	1	Haubi	2012	150
204	ward	4	Kalamba	district	1	Kalamba	2012	287
205	ward	5	Kwadelo	district	1	Kwadelo	2012	313
206	ward	6	Masange	district	1	Masange	2012	52
207	ward	7	Kikilo	district	1	Kikilo	2012	91
208	ward	8	Bereko	district	1	Bereko	2012	65
209	ward	9	Kisese	district	1	Kisese	2012	207
210	ward	10	Kikore	district	1	Kikore	2012	168
211	ward	11	Serya	district	1	Serya	2012	579
212	ward	12	Kilimani	district	1	Kilimani	2012	61
213	ward	13	Chemchem	district	1	Chemchem	2012	17
214	ward	14	Hondo Mairo	district	1	Hondo Mairo	2012	197
215	ward	15	Bolisa	district	1	Bolisa	2012	36
216	ward	16	Kinyasi	district	1	Kinyasi	2012	125
217	ward	17	Salanka	district	1	Salanka	2012	70
218	ward	18	Itololo	district	1	Itololo	2012	93
219	ward	19	Itaswi	district	1	Itaswi	2012	794
220	ward	20	Suruke	district	1	Suruke	2012	74
221	ward	21	Kingale	district	1	Kingale	2012	534
222	ward	22	Kondoa Mjini	district	1	Kondoa Mjini	2012	24
223	ward	23	Kolo	district	1	Kolo	2012	103
224	ward	24	Changaa	district	1	Changaa	2012	252
225	ward	25	Thawi	district	1	Thawi	2012	198
226	ward	26	Mnenia	district	1	Mnenia	2012	106
227	ward	27	Soera	district	1	Soera	2012	125
228	ward	28	Mazae	district	2	Mazae	2012	123
229	ward	29	Vingh'Awe	district	2	Vingh'Awe	2012	84
230	ward	30	Matomondo	district	2	Matomondo	2012	243
231	ward	31	Kimagai	district	2	Kimagai	2012	171
232	ward	32	Kibakwe	district	2	Kibakwe	2012	156
233	ward	33	Lumuma	district	2	Lumuma	2012	149
234	ward	34	Luhundwa	district	2	Luhundwa	2012	244
235	ward	35	Massa	district	2	Massa	2012	334
236	ward	36	Ipera	district	2	Ipera	2012	422
237	ward	37	Rudi	district	2	Rudi	2012	746
238	ward	38	Mlunduzi	district	2	Mlunduzi	2012	335
239	ward	39	Wotta	district	2	Wotta	2012	332
240	ward	40	Mima	district	2	Mima	2012	300
241	ward	41	Berege	district	2	Berege	2012	230
242	ward	42	Chunyu	district	2	Chunyu	2012	334
243	ward	43	Mbuga	district	2	Mbuga	2012	147
244	ward	44	Godegode	district	2	Godegode	2012	279
245	ward	45	Mpwapwa	district	2	Mpwapwa	2012	137
246	ward	46	Lupeta	district	2	Lupeta	2012	101
247	ward	47	Gulwe	district	2	Gulwe	2012	192
248	ward	48	Nghambi	district	2	Nghambi	2012	139
249	ward	49	Chitemo	district	2	Chitemo	2012	262
250	ward	50	Iwondo	district	2	Iwondo	2012	163
251	ward	51	Kingiti	district	2	Kingiti	2012	163
252	ward	52	Lufu	district	2	Lufu	2012	163
253	ward	53	Pwaga	district	2	Pwaga	2012	273
254	ward	54	Galigali	district	2	Galigali	2012	186
255	ward	55	Mtera	district	2	Mtera	2012	557
256	ward	56	Chipogoro	district	2	Chipogoro	2012	271
257	ward	57	Malolo	district	2	Malolo	2012	323
258	ward	58	Kongwa	district	3	Kongwa	2012	79
259	ward	59	Sejeli	district	3	Sejeli	2012	279
260	ward	60	Hogoro	district	3	Hogoro	2012	215
261	ward	61	Zoissa	district	3	Zoissa	2012	105
262	ward	62	Mkoka	district	3	Mkoka	2012	105
263	ward	63	Njoge	district	3	Njoge	2012	156
264	ward	64	Mtanana	district	3	Mtanana	2012	501
265	ward	65	Pandambili	district	3	Pandambili	2012	87
266	ward	66	Mlali	district	3	Mlali	2012	121
267	ward	67	Iduo	district	3	Iduo	2012	82
268	ward	68	Sagara	district	3	Sagara	2012	249
269	ward	69	Kibaigwa	district	3	Kibaigwa	2012	113
270	ward	70	Ugogoni	district	3	Ugogoni	2012	166
271	ward	71	Chamkoroma	district	3	Chamkoroma	2012	166
272	ward	72	Makawa	district	3	Makawa	2012	165
273	ward	73	Chitego	district	3	Chitego	2012	300
274	ward	74	Matongoro	district	3	Matongoro	2012	105
275	ward	75	Ngomai	district	3	Ngomai	2012	198
276	ward	76	Songambele	district	3	Songambele	2012	176
277	ward	77	Chiwe	district	3	Chiwe	2012	206
278	ward	78	Lenjulu	district	3	Lenjulu	2012	272
279	ward	79	Nghumbi	district	3	Nghumbi	2012	157
280	ward	80	Haneti	district	4	Haneti	2012	703
281	ward	81	Segala	district	4	Segala	2012	391
282	ward	82	Itiso	district	4	Itiso	2012	557
283	ward	83	Dabalo	district	4	Dabalo	2012	566
284	ward	84	Membe	district	4	Membe	2012	322
285	ward	85	Msanga	district	4	Msanga	2012	158
286	ward	86	Chilonwa	district	4	Chilonwa	2012	115
287	ward	87	Buigiri	district	4	Buigiri	2012	170
288	ward	88	Majeleko	district	4	Majeleko	2012	168
289	ward	89	Manchali	district	4	Manchali	2012	92
290	ward	90	Ikowa	district	4	Ikowa	2012	141
291	ward	91	Msamalo	district	4	Msamalo	2012	162
292	ward	92	Igandu	district	4	Igandu	2012	237
293	ward	93	Muungano	district	4	Muungano	2012	107
294	ward	94	Mvumi Makulu	district	4	Mvumi Makulu	2012	82
295	ward	95	Handali	district	4	Handali	2012	140
296	ward	96	Mvumi Mission	district	4	Mvumi Mission	2012	83
297	ward	97	Idifu	district	4	Idifu	2012	157
298	ward	98	Makang'Wa	district	4	Makang'Wa	2012	227
299	ward	99	Iringamvumi	district	4	Iringamvumi	2012	126
300	ward	100	Manzase	district	4	Manzase	2012	330
301	ward	101	Fufu	district	4	Fufu	2012	234
302	ward	102	Mlowa Bwawani	district	4	Mlowa Bwawani	2012	212
303	ward	103	Mpwayungu	district	4	Mpwayungu	2012	499
304	ward	104	Nghambaku	district	4	Nghambaku	2012	693
305	ward	105	Chinugulu	district	4	Chinugulu	2012	449
306	ward	106	Manda	district	4	Manda	2012	781
307	ward	107	Huzi	district	4	Huzi	2012	346
308	ward	108	Loje	district	4	Loje	2012	227
309	ward	109	Chiboli	district	4	Chiboli	2012	288
310	ward	110	Nhinhi	district	4	Nhinhi	2012	137
311	ward	111	Zajilwa	district	4	Zajilwa	2012	345
312	ward	112	Viwandani	district	5	Viwandani	2012	1
313	ward	113	Uhuru	district	5	Uhuru	2012	0
314	ward	114	Chamwino	district	5	Chamwino	2012	3
315	ward	115	Kiwanja Cha Ndege	district	5	Kiwanja Cha Ndege	2012	2
316	ward	116	Makole	district	5	Makole	2012	4
317	ward	117	Miyuji	district	5	Miyuji	2012	27
318	ward	118	Msalato	district	5	Msalato	2012	65
319	ward	119	Makutupora	district	5	Makutupora	2012	208
320	ward	120	Chihanga	district	5	Chihanga	2012	164
321	ward	121	Hombolo	district	5	Hombolo	2012	304
322	ward	122	Ipala	district	5	Ipala	2012	84
323	ward	123	Nzuguni	district	5	Nzuguni	2012	146
324	ward	124	Dom-Makulu	district	5	Dom-Makulu	2012	31
325	ward	125	Mtumba	district	5	Mtumba	2012	139
326	ward	126	Kikombo	district	5	Kikombo	2012	123
327	ward	127	Ngh'Ongh'Onha	district	5	Ngh'Ongh'Onha	2012	132
328	ward	128	Mpunguzi	district	5	Mpunguzi	2012	190
329	ward	129	Tambukareli	district	5	Tambukareli	2012	4
330	ward	130	Kilimani	district	5	Kilimani	2012	61
331	ward	131	Kikuyu Kusini	district	5	Kikuyu Kusini	2012	3
332	ward	132	Kikuyu Kaskazini	district	5	Kikuyu Kaskazini	2012	5
333	ward	133	Mkonze	district	5	Mkonze	2012	82
334	ward	134	Mbabala	district	5	Mbabala	2012	165
335	ward	135	Zuzu	district	5	Zuzu	2012	131
336	ward	136	Hazina	district	5	Hazina	2012	9
337	ward	137	Madukani	district	5	Madukani	2012	0
338	ward	138	Majengo	district	5	Majengo	2012	1
339	ward	139	Kizota	district	5	Kizota	2012	51
340	ward	140	Nala	district	5	Nala	2012	113
341	ward	141	Mbalawala	district	5	Mbalawala	2012	134
342	ward	142	Ntyuka	district	5	Ntyuka	2012	47
343	ward	143	Chigongwe	district	5	Chigongwe	2012	122
344	ward	144	Chang'Ombe	district	5	Chang'Ombe	2012	3
345	ward	145	Iyumbu	district	5	Iyumbu	2012	38
346	ward	146	Chahwa	district	5	Chahwa	2012	59
347	ward	147	Mnadani	district	5	Mnadani	2012	30
348	ward	148	Ipagala	district	5	Ipagala	2012	15
349	ward	149	Makanda	district	6	Makanda	2012	305
350	ward	150	Lamaiti	district	6	Lamaiti	2012	327
351	ward	151	Babayu	district	6	Babayu	2012	292
352	ward	152	Zanka	district	6	Zanka	2012	334
353	ward	153	Msisi	district	6	Msisi	2012	300
354	ward	154	Mundemu	district	6	Mundemu	2012	131
355	ward	155	Bahi	district	6	Bahi	2012	246
356	ward	156	Mpamantwa	district	6	Mpamantwa	2012	310
357	ward	157	Ibihwa	district	6	Ibihwa	2012	211
358	ward	158	Ilindi	district	6	Ilindi	2012	197
359	ward	159	Kigwe	district	6	Kigwe	2012	164
360	ward	160	Chikola	district	6	Chikola	2012	366
361	ward	161	Chipanga	district	6	Chipanga	2012	199
362	ward	162	Chali	district	6	Chali	2012	295
363	ward	163	Nondwa	district	6	Nondwa	2012	1015
364	ward	164	Mpalanga	district	6	Mpalanga	2012	171
365	ward	165	Ibugule	district	6	Ibugule	2012	218
366	ward	166	Chibelela	district	6	Chibelela	2012	117
367	ward	167	Mwitikira	district	6	Mwitikira	2012	312
368	ward	168	Mtitaa	district	6	Mtitaa	2012	186
369	ward	169	Makorongo	district	7	Makorongo	2012	414
370	ward	170	Ovada	district	7	Ovada	2012	594
371	ward	171	Msaada	district	7	Msaada	2012	169
372	ward	172	Kimaha	district	7	Kimaha	2012	227
373	ward	173	Churuku	district	7	Churuku	2012	125
374	ward	174	Songoro	district	7	Songoro	2012	203
375	ward	175	Mondo	district	7	Mondo	2012	136
376	ward	176	Dalai	district	7	Dalai	2012	177
377	ward	177	Mrijo	district	7	Mrijo	2012	175
378	ward	178	Chandama	district	7	Chandama	2012	230
379	ward	179	Goima	district	7	Goima	2012	291
380	ward	180	Chemba	district	7	Chemba	2012	573
381	ward	181	Paranga	district	7	Paranga	2012	296
382	ward	182	Gwandi	district	7	Gwandi	2012	666
383	ward	183	Farkwa	district	7	Farkwa	2012	575
384	ward	184	Mpendo	district	7	Mpendo	2012	368
385	ward	185	Sanzawa	district	7	Sanzawa	2012	671
386	ward	186	Kwamtoro	district	7	Kwamtoro	2012	515
387	ward	187	Lalta	district	7	Lalta	2012	760
388	ward	188	Engaruka	district	8	Engaruka	2012	659
389	ward	189	Monduli Juu	district	8	Monduli Juu	2012	975
390	ward	190	Engutoto	district	8	Engutoto	2012	32
391	ward	191	Monduli Mjini	district	8	Monduli Mjini	2012	3
392	ward	192	Moita	district	8	Moita	2012	259
393	ward	193	Sepeko	district	8	Sepeko	2012	587
394	ward	194	Lolkisale	district	8	Lolkisale	2012	1127
395	ward	195	Makuyuni	district	8	Makuyuni	2012	409
396	ward	196	Esilalei	district	8	Esilalei	2012	498
397	ward	197	Mto Wa Mbu	district	8	Mto Wa Mbu	2012	25
398	ward	198	Lepurko	district	8	Lepurko	2012	248
399	ward	199	Meserani	district	8	Meserani	2012	653
400	ward	200	Mswakini	district	8	Mswakini	2012	321
401	ward	201	Majengo	district	8	Majengo	2012	1
402	ward	202	Ngarenanyuki	district	9	Ngarenanyuki	2012	271
403	ward	203	Leguruki	district	9	Leguruki	2012	78
404	ward	204	King'Ori	district	9	King'Ori	2012	173
405	ward	205	Maji Ya Chai	district	9	Maji Ya Chai	2012	85
406	ward	206	Kikatiti	district	9	Kikatiti	2012	59
407	ward	207	Maroroni	district	9	Maroroni	2012	118
408	ward	208	Makiba	district	9	Makiba	2012	115
409	ward	209	Mbuguni	district	9	Mbuguni	2012	59
410	ward	210	Kikwe	district	9	Kikwe	2012	77
411	ward	211	Usariver	district	9	Usariver	2012	28
412	ward	212	Nkoaranga	district	9	Nkoaranga	2012	30
413	ward	213	Poli	district	9	Poli	2012	14
414	ward	214	Seela Sing'Isi	district	9	Seela Sing'Isi	2012	12
415	ward	215	Akheri	district	9	Akheri	2012	18
416	ward	216	Nkoanrua	district	9	Nkoanrua	2012	11
417	ward	217	Songoro	district	9	Songoro	2012	203
418	ward	218	Nkoarisambu	district	9	Nkoarisambu	2012	8
419	ward	219	Kati	district	10	Kati	2012	1
420	ward	220	Kaloleni	district	10	Kaloleni	2012	1
421	ward	221	Sekei	district	10	Sekei	2012	3
422	ward	222	Kimandolu	district	10	Kimandolu	2012	5
423	ward	223	Baraa	district	10	Baraa	2012	5
424	ward	224	Oloirieni	district	10	Oloirieni	2012	3
425	ward	225	Themi	district	10	Themi	2012	6
426	ward	226	Lemara	district	10	Lemara	2012	7
427	ward	227	Terrat	district	10	Terrat	2012	107
428	ward	228	Sokoni I	district	10	Sokoni I	2012	18
429	ward	229	Daraja Mbili	district	10	Daraja Mbili	2012	1
430	ward	230	Unga Ltd	district	10	Unga Ltd	2012	1
431	ward	231	Sombetini	district	10	Sombetini	2012	5
432	ward	232	Ngarenaro	district	10	Ngarenaro	2012	1
433	ward	233	Levolosi	district	10	Levolosi	2012	1
434	ward	234	Engutoto	district	10	Engutoto	2012	32
435	ward	235	Elerai	district	10	Elerai	2012	4
436	ward	236	Olasiti	district	10	Olasiti	2012	66
437	ward	237	Moshono	district	10	Moshono	2012	25
438	ward	238	Karatu	district	11	Karatu	2012	51
439	ward	239	Endamarariek	district	11	Endamarariek	2012	246
440	ward	240	Buger	district	11	Buger	2012	211
441	ward	241	Endabash	district	11	Endabash	2012	281
442	ward	242	Kansay	district	11	Kansay	2012	207
443	ward	243	Baray	district	11	Baray	2012	1152
444	ward	244	Mang'Ola	district	11	Mang'Ola	2012	128
445	ward	245	Daa	district	11	Daa	2012	226
446	ward	246	Oldean	district	11	Oldean	2012	71
447	ward	247	Qurus	district	11	Qurus	2012	101
448	ward	248	Ganako	district	11	Ganako	2012	66
449	ward	249	Rhotia	district	11	Rhotia	2012	205
450	ward	250	Mbulumbulu	district	11	Mbulumbulu	2012	211
451	ward	251	Endamaghang	district	11	Endamaghang	2012	94
452	ward	252	Orgosorok	district	12	Orgosorok	2012	325
453	ward	253	Digodigo	district	12	Digodigo	2012	276
454	ward	254	Oldonyo Sambu	district	12	Oldonyo Sambu	2012	178
455	ward	255	Pinyinyi	district	12	Pinyinyi	2012	2123
456	ward	256	Sale	district	12	Sale	2012	119
457	ward	257	Malambo	district	12	Malambo	2012	2388
458	ward	258	Naiyobi	district	12	Naiyobi	2012	194
459	ward	259	Nainokanoka	district	12	Nainokanoka	2012	1035
460	ward	260	Olbalbal	district	12	Olbalbal	2012	1139
461	ward	261	Ngorongoro	district	12	Ngorongoro	2012	1077
462	ward	262	Endulen	district	12	Endulen	2012	1758
463	ward	263	Kakesio	district	12	Kakesio	2012	1127
464	ward	264	Arash	district	12	Arash	2012	1102
465	ward	265	Soitsambu	district	12	Soitsambu	2012	587
466	ward	266	Engusero Sambu	district	12	Engusero Sambu	2012	68
467	ward	267	Oloirien	district	12	Oloirien	2012	262
468	ward	268	Samunge	district	12	Samunge	2012	147
469	ward	269	Alailelai	district	12	Alailelai	2012	367
470	ward	270	Maalon	district	12	Maalon	2012	644
471	ward	271	Ololosokwan	district	12	Ololosokwan	2012	403
472	ward	272	Oloipiri	district	12	Oloipiri	2012	622
473	ward	273	Olkokola	district	13	Olkokola	2012	94
474	ward	274	Ilkiding'A	district	13	Ilkiding'A	2012	57
475	ward	275	Bangata	district	13	Bangata	2012	15
476	ward	276	Sokon Ii	district	13	Sokon Ii	2012	14
477	ward	277	Oltoroto	district	13	Oltoroto	2012	12
478	ward	278	Moivo	district	13	Moivo	2012	5
479	ward	279	Kiranyi	district	13	Kiranyi	2012	5
480	ward	280	Kimnyaki	district	13	Kimnyaki	2012	3
481	ward	281	Oltrumet	district	13	Oltrumet	2012	37
482	ward	282	Mwandeti	district	13	Mwandeti	2012	62
483	ward	283	Mussa	district	13	Mussa	2012	72
484	ward	284	Kisongo	district	13	Kisongo	2012	57
485	ward	285	Mateves	district	13	Mateves	2012	105
486	ward	286	Oljoro	district	13	Oljoro	2012	65
487	ward	287	Bwawani	district	13	Bwawani	2012	176
488	ward	288	Nduruma	district	13	Nduruma	2012	63
489	ward	289	Mlangarini	district	13	Mlangarini	2012	76
490	ward	290	Sambasha	district	13	Sambasha	2012	72
491	ward	291	Olorieni	district	13	Olorieni	2012	25
492	ward	292	Olmotonyi	district	13	Olmotonyi	2012	12
493	ward	293	Kitumbeine	district	14	Kitumbeine	2012	547
494	ward	294	Engikaret	district	14	Engikaret	2012	916
495	ward	295	Eleng'Ata Dapash	district	14	Eleng'Ata Dapash	2012	452
496	ward	296	Ilorienito	district	14	Ilorienito	2012	140
497	ward	297	Gelai Meirugoi	district	14	Gelai Meirugoi	2012	830
498	ward	298	Gelai Lumbwa	district	14	Gelai Lumbwa	2012	885
499	ward	299	Matale	district	14	Matale	2012	687
500	ward	300	Engarenaibor	district	14	Engarenaibor	2012	430
501	ward	301	Mundarara	district	14	Mundarara	2012	616
502	ward	302	Kimokouwa	district	14	Kimokouwa	2012	412
503	ward	303	Namanga	district	14	Namanga	2012	4
504	ward	304	Orbomba	district	14	Orbomba	2012	632
505	ward	305	Longido	district	14	Longido	2012	22
506	ward	306	Tingatinga	district	14	Tingatinga	2012	1115
507	ward	307	Olmolog	district	14	Olmolog	2012	340
508	ward	308	Kamwanga	district	14	Kamwanga	2012	53
509	ward	309	Mamsera	district	15	Mamsera	2012	45
510	ward	310	Mahida	district	15	Mahida	2012	21
511	ward	311	Mengwe	district	15	Mengwe	2012	4
512	ward	312	Keni Mengeni	district	15	Keni Mengeni	2012	38
513	ward	313	Aleni	district	15	Aleni	2012	43
514	ward	314	Shimbi	district	15	Shimbi	2012	36
515	ward	315	Makiidi	district	15	Makiidi	2012	21
516	ward	316	Kelamfua Mokala	district	15	Kelamfua Mokala	2012	50
517	ward	317	Ushiri Ikuini	district	15	Ushiri Ikuini	2012	70
518	ward	318	Mrao Keryo	district	15	Mrao Keryo	2012	20
519	ward	319	Kirwa Keni	district	15	Kirwa Keni	2012	46
520	ward	320	Katangara Mrere	district	15	Katangara Mrere	2012	70
521	ward	321	Kisale Msaranga	district	15	Kisale Msaranga	2012	22
522	ward	322	Olele	district	15	Olele	2012	17
523	ward	323	Kirongo Samanga	district	15	Kirongo Samanga	2012	44
524	ward	324	Kitirima Kingachi	district	15	Kitirima Kingachi	2012	42
525	ward	325	Ubetu Kahe	district	15	Ubetu Kahe	2012	51
526	ward	326	Nanjara Reha	district	15	Nanjara Reha	2012	133
527	ward	327	Tarakea Motamburu	district	15	Tarakea Motamburu	2012	128
528	ward	328	Motamburu Kitendeni	district	15	Motamburu Kitendeni	2012	479
529	ward	329	Marangu Kitowo	district	15	Marangu Kitowo	2012	18
530	ward	330	Ngoyoni	district	15	Ngoyoni	2012	33
531	ward	331	Manda	district	15	Manda	2012	781
532	ward	332	Holili	district	15	Holili	2012	37
533	ward	333	Kileo	district	16	Kileo	2012	118
534	ward	334	Mwanga	district	16	Mwanga	2012	159
535	ward	335	Msangeni	district	16	Msangeni	2012	40
536	ward	336	Kifula	district	16	Kifula	2012	23
537	ward	337	Kighare	district	16	Kighare	2012	12
538	ward	338	Kirongwe	district	16	Kirongwe	2012	14
539	ward	339	Kwakoa	district	16	Kwakoa	2012	106
540	ward	340	Lembeni	district	16	Lembeni	2012	97
541	ward	341	Jipe	district	16	Jipe	2012	104
542	ward	342	Mwaniko	district	16	Mwaniko	2012	34
543	ward	343	Chomvu	district	16	Chomvu	2012	26
544	ward	344	Ngujini	district	16	Ngujini	2012	22
545	ward	345	Kirya	district	16	Kirya	2012	218
546	ward	346	Kilomeni	district	16	Kilomeni	2012	28
547	ward	347	Shighatini	district	16	Shighatini	2012	34
548	ward	348	Lang'Ata	district	16	Lang'Ata	2012	167
549	ward	349	Mgagao	district	16	Mgagao	2012	356
550	ward	350	Toloha	district	16	Toloha	2012	266
551	ward	351	Kigoningoni	district	16	Kigoningoni	2012	71
552	ward	352	Kivisini	district	16	Kivisini	2012	82
553	ward	353	Same	district	17	Same	2012	36
554	ward	354	Ruvu	district	17	Ruvu	2012	1046
555	ward	355	Njoro	district	17	Njoro	2012	81
556	ward	356	Kisiwani	district	17	Kisiwani	2012	1546
557	ward	357	Msindo	district	17	Msindo	2012	60
558	ward	358	Mshewa	district	17	Mshewa	2012	35
559	ward	359	Mhezi	district	17	Mhezi	2012	23
560	ward	360	Mwembe	district	17	Mwembe	2012	336
561	ward	361	Vudee	district	17	Vudee	2012	42
562	ward	362	Vuje	district	17	Vuje	2012	33
563	ward	363	Bombo	district	17	Bombo	2012	22
564	ward	364	Mtii	district	17	Mtii	2012	21
565	ward	365	Maore	district	17	Maore	2012	351
566	ward	366	Ndungu	district	17	Ndungu	2012	38
567	ward	367	Kihurio	district	17	Kihurio	2012	36
568	ward	368	Bendera	district	17	Bendera	2012	119
569	ward	369	Myamba	district	17	Myamba	2012	54
570	ward	370	Mpinji	district	17	Mpinji	2012	37
571	ward	371	Bwambo	district	17	Bwambo	2012	54
572	ward	372	Vunta	district	17	Vunta	2012	131
573	ward	373	Chome	district	17	Chome	2012	74
574	ward	374	Suji	district	17	Suji	2012	60
575	ward	375	Makanya	district	17	Makanya	2012	446
576	ward	376	Hedaru	district	17	Hedaru	2012	168
577	ward	377	Kirangare	district	17	Kirangare	2012	32
578	ward	378	Kisima	district	17	Kisima	2012	20
579	ward	379	Stesheni	district	17	Stesheni	2012	179
580	ward	380	Vumari	district	17	Vumari	2012	472
581	ward	381	Mabilioni	district	17	Mabilioni	2012	315
582	ward	382	Kalemawe	district	17	Kalemawe	2012	349
583	ward	383	Lugulu	district	17	Lugulu	2012	35
584	ward	384	Mwika Kusini	district	18	Mwika Kusini	2012	56
585	ward	385	Mwikakaskazini	district	18	Mwikakaskazini	2012	18
586	ward	386	Mamba Kaskazini	district	18	Mamba Kaskazini	2012	10
587	ward	387	Mamba Kusini	district	18	Mamba Kusini	2012	12
588	ward	388	Marangu Mashariki	district	18	Marangu Mashariki	2012	27
589	ward	389	Marangu Magharibi	district	18	Marangu Magharibi	2012	20
590	ward	390	Makuyuni	district	18	Makuyuni	2012	409
591	ward	391	Kilema Kaskazini	district	18	Kilema Kaskazini	2012	10
592	ward	392	Kilema Kusini	district	18	Kilema Kusini	2012	52
593	ward	393	Kiruavunjo Mashariki	district	18	Kiruavunjo Mashariki	2012	23
594	ward	394	Kiruavunjo Magharibi	district	18	Kiruavunjo Magharibi	2012	34
595	ward	395	Kahe	district	18	Kahe	2012	192
596	ward	396	Kahe Mashariki	district	18	Kahe Mashariki	2012	78
597	ward	397	Old Moshi Mashariki	district	18	Old Moshi Mashariki	2012	14
598	ward	398	Old Moshi Magharibi	district	18	Old Moshi Magharibi	2012	33
599	ward	399	Mbokomu	district	18	Mbokomu	2012	26
600	ward	400	Uru Mashariki	district	18	Uru Mashariki	2012	27
601	ward	401	Uru Shimbwe	district	18	Uru Shimbwe	2012	21
602	ward	402	Uru Kusini	district	18	Uru Kusini	2012	24
603	ward	403	Uru Kaskazini	district	18	Uru Kaskazini	2012	44
604	ward	404	Mabogini	district	18	Mabogini	2012	69
605	ward	405	Arusha Chini	district	18	Arusha Chini	2012	174
606	ward	406	Kibosho Mashariki	district	18	Kibosho Mashariki	2012	57
607	ward	407	Kibosho Kati	district	18	Kibosho Kati	2012	27
608	ward	408	Kibosho Magharibi	district	18	Kibosho Magharibi	2012	37
609	ward	409	Kindi	district	18	Kindi	2012	32
610	ward	410	Kiruavunjo Kusini	district	18	Kiruavunjo Kusini	2012	94
611	ward	411	Kirima	district	18	Kirima	2012	12
612	ward	412	Okaoni	district	18	Okaoni	2012	37
613	ward	413	Kimochi	district	18	Kimochi	2012	31
614	ward	414	Kilema Kati	district	18	Kilema Kati	2012	6
615	ward	415	Machame Mashariki	district	19	Machame Mashariki	2012	85
616	ward	416	Machame Kusini	district	19	Machame Kusini	2012	81
617	ward	417	Machame Kaskazini	district	19	Machame Kaskazini	2012	58
618	ward	418	Machame Magharibi	district	19	Machame Magharibi	2012	99
619	ward	419	Machame Uroki	district	19	Machame Uroki	2012	13
620	ward	420	Masama Mashariki	district	19	Masama Mashariki	2012	83
621	ward	421	Masama Magharibi	district	19	Masama Magharibi	2012	38
622	ward	422	Masama Kusini	district	19	Masama Kusini	2012	65
623	ward	423	Masama Rundugai	district	19	Masama Rundugai	2012	107
624	ward	424	Hai Mjini	district	19	Hai Mjini	2012	54
625	ward	425	Masama Kati	district	19	Masama Kati	2012	24
626	ward	426	Machame Weruweru	district	19	Machame Weruweru	2012	45
627	ward	427	Kia	district	19	Kia	2012	141
628	ward	428	Machame Narumu	district	19	Machame Narumu	2012	11
629	ward	429	Kilimanjaro	district	20	Kilimanjaro	2012	5
630	ward	430	Njoro	district	20	Njoro	2012	81
631	ward	431	Mji Mpya	district	20	Mji Mpya	2012	1
632	ward	432	Majengo	district	20	Majengo	2012	1
633	ward	433	Mawenzi	district	20	Mawenzi	2012	1
634	ward	434	Rau	district	20	Rau	2012	4
635	ward	435	Korongoni	district	20	Korongoni	2012	3
636	ward	436	Kiusa	district	20	Kiusa	2012	1
637	ward	437	Bondeni	district	20	Bondeni	2012	0
638	ward	438	Pasua	district	20	Pasua	2012	2
639	ward	439	Kaloleni	district	20	Kaloleni	2012	1
640	ward	440	Kiboriloni	district	20	Kiboriloni	2012	6
641	ward	441	Msaranga	district	20	Msaranga	2012	7
642	ward	442	Karanga	district	20	Karanga	2012	8
643	ward	443	Longuo B	district	20	Longuo B	2012	5
644	ward	444	Miembeni	district	20	Miembeni	2012	2
645	ward	445	Mfumuni	district	20	Mfumuni	2012	2
646	ward	446	Soweto	district	20	Soweto	2012	3
647	ward	447	Boma Mbuzi	district	20	Boma Mbuzi	2012	1
648	ward	448	Ng'Ambo	district	20	Ng'Ambo	2012	4
649	ward	449	Shirimatunda	district	20	Shirimatunda	2012	3
650	ward	450	Ndumeti	district	21	Ndumeti	2012	561
651	ward	451	Ngarenairobi	district	21	Ngarenairobi	2012	173
652	ward	452	Gararagua	district	21	Gararagua	2012	123
653	ward	453	Sanya Juu	district	21	Sanya Juu	2012	21
654	ward	454	Biriri	district	21	Biriri	2012	39
655	ward	455	Makiwaru	district	21	Makiwaru	2012	38
656	ward	456	Nasai	district	21	Nasai	2012	11
657	ward	457	Livishi	district	21	Livishi	2012	56
658	ward	458	Ivaeny	district	21	Ivaeny	2012	26
659	ward	459	Kashisha	district	21	Kashisha	2012	28
660	ward	460	Karansi	district	21	Karansi	2012	59
661	ward	461	Olkolili	district	21	Olkolili	2012	85
662	ward	462	Lushoto	district	22	Lushoto	2012	82
663	ward	463	Gare	district	22	Gare	2012	33
664	ward	464	Kwai	district	22	Kwai	2012	39
665	ward	465	Ubiri	district	22	Ubiri	2012	21
666	ward	466	Soni	district	22	Soni	2012	36
667	ward	467	Vuga	district	22	Vuga	2012	50
668	ward	468	Mponde	district	22	Mponde	2012	46
669	ward	469	Mamba	district	22	Mamba	2012	40
670	ward	470	Mbuzii	district	22	Mbuzii	2012	20
671	ward	471	Tamota	district	22	Tamota	2012	26
672	ward	472	Bumbuli	district	22	Bumbuli	2012	28
673	ward	473	Funta	district	22	Funta	2012	31
674	ward	474	Mayo	district	22	Mayo	2012	54
675	ward	475	Baga	district	22	Baga	2012	44
676	ward	476	Milingano	district	22	Milingano	2012	176
677	ward	477	Mgwashi	district	22	Mgwashi	2012	65
678	ward	478	Mtae	district	22	Mtae	2012	116
679	ward	479	Sunga	district	22	Sunga	2012	63
680	ward	480	Rangwi	district	22	Rangwi	2012	45
681	ward	481	Mnazi	district	22	Mnazi	2012	345
682	ward	482	Lunguza	district	22	Lunguza	2012	1404
683	ward	483	Mbaramo	district	22	Mbaramo	2012	75
684	ward	484	Mng'Aro	district	22	Mng'Aro	2012	353
685	ward	485	Mlalo	district	22	Mlalo	2012	22
686	ward	486	Mwangoi	district	22	Mwangoi	2012	20
687	ward	487	Shume	district	22	Shume	2012	50
688	ward	488	Malindi	district	22	Malindi	2012	40
689	ward	489	Hemtoye	district	22	Hemtoye	2012	20
690	ward	490	Malibwi	district	22	Malibwi	2012	58
691	ward	491	Mlola	district	22	Mlola	2012	33
692	ward	492	Makanya	district	22	Makanya	2012	446
693	ward	493	Ngwelo	district	22	Ngwelo	2012	19
694	ward	494	Kilole	district	22	Kilole	2012	17
695	ward	495	Kwekanga	district	22	Kwekanga	2012	43
696	ward	496	Lukozi	district	22	Lukozi	2012	47
697	ward	497	Manolo	district	22	Manolo	2012	146
698	ward	498	Dule 'M'	district	22	Dule 'M'	2012	33
699	ward	499	Kwemshasha	district	22	Kwemshasha	2012	23
700	ward	500	Nkongoi	district	22	Nkongoi	2012	79
701	ward	501	Dule 'B'	district	22	Dule 'B'	2012	28
702	ward	502	Maheza Ngulu	district	22	Maheza Ngulu	2012	46
703	ward	503	Usambara	district	22	Usambara	2012	29
704	ward	504	Ngulwi	district	22	Ngulwi	2012	17
705	ward	505	Kwemashai	district	22	Kwemashai	2012	15
706	ward	506	Mashewa	district	23	Mashewa	2012	362
707	ward	507	Kizara	district	23	Kizara	2012	118
708	ward	508	Magoma	district	23	Magoma	2012	86
709	ward	509	Kerenge	district	23	Kerenge	2012	135
710	ward	510	Kwagunda	district	23	Kwagunda	2012	100
711	ward	511	Mnyuzi	district	23	Mnyuzi	2012	104
712	ward	512	Vugiri	district	23	Vugiri	2012	50
713	ward	513	Dindira	district	23	Dindira	2012	40
714	ward	514	Bungu	district	23	Bungu	2012	47
715	ward	515	Lutindi	district	23	Lutindi	2012	37
716	ward	516	Makuyuni	district	23	Makuyuni	2012	409
717	ward	517	Chekelei	district	23	Chekelei	2012	77
718	ward	518	Mombo	district	23	Mombo	2012	75
719	ward	519	Mkalamo	district	23	Mkalamo	2012	721
720	ward	520	Mkomazi	district	23	Mkomazi	2012	291
721	ward	521	Kwashemshi	district	23	Kwashemshi	2012	58
722	ward	522	Mpale	district	23	Mpale	2012	32
723	ward	523	Mswaha	district	23	Mswaha	2012	316
724	ward	524	Magamba Kwalukonge	district	23	Magamba Kwalukonge	2012	234
725	ward	525	Misozwe	district	24	Misozwe	2012	83
726	ward	526	Pande Darajani	district	24	Pande Darajani	2012	52
727	ward	527	Ngomeni	district	24	Ngomeni	2012	106
728	ward	528	Kigombe	district	24	Kigombe	2012	112
729	ward	529	Lusanga	district	24	Lusanga	2012	41
730	ward	530	Kicheba	district	24	Kicheba	2012	31
731	ward	531	Magoroto	district	24	Magoroto	2012	39
732	ward	532	Magila	district	24	Magila	2012	26
733	ward	533	Mbaramo	district	24	Mbaramo	2012	75
734	ward	534	Majengo	district	24	Majengo	2012	1
735	ward	535	Masuguru	district	24	Masuguru	2012	0
736	ward	536	Tingeni	district	24	Tingeni	2012	11
737	ward	537	Kilulu	district	24	Kilulu	2012	40
738	ward	538	Mkuzi	district	24	Mkuzi	2012	40
739	ward	539	Mtindiro	district	24	Mtindiro	2012	83
740	ward	540	Kwafungo	district	24	Kwafungo	2012	111
741	ward	541	Songa	district	24	Songa	2012	50
742	ward	542	Bwembwera	district	24	Bwembwera	2012	42
743	ward	543	Potwe	district	24	Potwe	2012	46
744	ward	544	Nkumba	district	24	Nkumba	2012	29
745	ward	545	Kisiwani	district	24	Kisiwani	2012	1546
746	ward	546	Misalai	district	24	Misalai	2012	47
747	ward	547	Zirai	district	24	Zirai	2012	65
748	ward	548	Mbomole	district	24	Mbomole	2012	27
749	ward	549	Amani	district	24	Amani	2012	92
750	ward	550	Tongwe	district	24	Tongwe	2012	38
751	ward	551	Mhamba	district	24	Mhamba	2012	76
752	ward	552	Kwakifua	district	24	Kwakifua	2012	21
753	ward	553	Kwemkabala	district	24	Kwemkabala	2012	3
754	ward	554	Genge	district	24	Genge	2012	5
755	ward	555	Tanganyika	district	24	Tanganyika	2012	6
756	ward	556	Mpapayu	district	24	Mpapayu	2012	51
757	ward	557	Mlingano	district	24	Mlingano	2012	58
758	ward	558	Central	district	25	Central	2012	4
759	ward	559	Majengo	district	25	Majengo	2012	1
760	ward	560	Nguvumali	district	25	Nguvumali	2012	6
761	ward	561	Chumbageni	district	25	Chumbageni	2012	3
762	ward	562	Ngamiani Kaskazini	district	25	Ngamiani Kaskazini	2012	0
763	ward	563	Ngamiani Kati	district	25	Ngamiani Kati	2012	0
764	ward	564	Ngamiani Kusini	district	25	Ngamiani Kusini	2012	0
765	ward	565	Usagara	district	25	Usagara	2012	1
766	ward	566	Makorora	district	25	Makorora	2012	1
767	ward	567	Mzingani	district	25	Mzingani	2012	8
768	ward	568	Msambweni	district	25	Msambweni	2012	1
769	ward	569	Mwanzange	district	25	Mwanzange	2012	8
770	ward	570	Tangasisi	district	25	Tangasisi	2012	39
771	ward	571	Mabawa	district	25	Mabawa	2012	5
772	ward	572	Tongoni	district	25	Tongoni	2012	45
773	ward	573	Marungu	district	25	Marungu	2012	43
774	ward	574	Pongwe	district	25	Pongwe	2012	78
775	ward	575	Maweni	district	25	Maweni	2012	73
776	ward	576	Duga	district	25	Duga	2012	2
777	ward	577	Mzizima	district	25	Mzizima	2012	57
778	ward	578	Mabokweni	district	25	Mabokweni	2012	48
779	ward	579	Kirare	district	25	Kirare	2012	56
780	ward	580	Kiomoni	district	25	Kiomoni	2012	84
781	ward	581	Chongoleani	district	25	Chongoleani	2012	37
782	ward	582	Pangani Mashariki	district	26	Pangani Mashariki	2012	5
783	ward	583	Pangani Magharibi	district	26	Pangani Magharibi	2012	13
784	ward	584	Bweni	district	26	Bweni	2012	21
785	ward	585	Madanga	district	26	Madanga	2012	27
786	ward	586	Kimang'A	district	26	Kimang'A	2012	30
787	ward	587	Bushiri	district	26	Bushiri	2012	251
788	ward	588	Mwera	district	26	Mwera	2012	42
789	ward	589	Tungamaa	district	26	Tungamaa	2012	134
790	ward	590	Kipumbwi	district	26	Kipumbwi	2012	237
791	ward	591	Mikunguni	district	26	Mikunguni	2012	155
792	ward	592	Ubangaa	district	26	Ubangaa	2012	201
793	ward	593	Mkwaja	district	26	Mkwaja	2012	412
794	ward	594	Mkalamo	district	26	Mkalamo	2012	721
795	ward	595	Segera	district	27	Segera	2012	205
796	ward	596	Ndolwa	district	27	Ndolwa	2012	297
797	ward	597	Mazingara	district	27	Mazingara	2012	505
798	ward	598	Kwamsisi	district	27	Kwamsisi	2012	512
799	ward	599	Kwasunga	district	27	Kwasunga	2012	296
800	ward	600	Kwaluguru	district	27	Kwaluguru	2012	166
801	ward	601	Kang'Ata	district	27	Kang'Ata	2012	618
802	ward	602	Kwamkonje	district	27	Kwamkonje	2012	165
803	ward	603	Kwachaga	district	27	Kwachaga	2012	168
804	ward	604	Sindeni	district	27	Sindeni	2012	385
805	ward	605	Misima	district	27	Misima	2012	887
806	ward	606	Kiva	district	27	Kiva	2012	159
807	ward	607	Kabuku	district	27	Kabuku	2012	91
808	ward	608	Kwamatuku	district	27	Kwamatuku	2012	328
809	ward	609	Kwedizinga	district	27	Kwedizinga	2012	147
810	ward	610	Mgambo	district	27	Mgambo	2012	515
811	ward	611	Komkonga	district	27	Komkonga	2012	135
812	ward	612	Mkata	district	27	Mkata	2012	728
813	ward	613	Kabuku Ndani	district	27	Kabuku Ndani	2012	163
814	ward	614	Kwamgwe	district	27	Kwamgwe	2012	122
815	ward	615	Lwande	district	28	Lwande	2012	222
816	ward	616	Kikunde	district	28	Kikunde	2012	99
817	ward	617	Songe	district	28	Songe	2012	91
818	ward	618	Pagwi	district	28	Pagwi	2012	351
819	ward	619	Masagalu	district	28	Masagalu	2012	191
820	ward	620	Kimbe	district	28	Kimbe	2012	469
821	ward	621	Kilindi	district	28	Kilindi	2012	379
822	ward	622	Negero	district	28	Negero	2012	401
823	ward	623	Mkindi	district	28	Mkindi	2012	518
824	ward	624	Mvungwe	district	28	Mvungwe	2012	335
825	ward	625	Kwediboma	district	28	Kwediboma	2012	207
826	ward	626	Saunyi	district	28	Saunyi	2012	902
827	ward	627	Jaila	district	28	Jaila	2012	159
828	ward	628	Msanja	district	28	Msanja	2012	414
829	ward	629	Kisangasa	district	28	Kisangasa	2012	508
830	ward	630	Mabalanga	district	28	Mabalanga	2012	150
831	ward	631	Kibirashi	district	28	Kibirashi	2012	433
832	ward	632	Kilwa	district	28	Kilwa	2012	155
833	ward	633	Tunguli	district	28	Tunguli	2012	161
834	ward	634	Kwekivu	district	28	Kwekivu	2012	350
835	ward	635	Mwakijembe	district	29	Mwakijembe	2012	768
836	ward	636	Mkinga	district	29	Mkinga	2012	26
837	ward	637	Duga	district	29	Duga	2012	2
838	ward	638	Moa	district	29	Moa	2012	26
839	ward	639	Manza	district	29	Manza	2012	38
840	ward	640	Kwale	district	29	Kwale	2012	16
841	ward	641	Mtimbwani	district	29	Mtimbwani	2012	53
842	ward	642	Gombero	district	29	Gombero	2012	197
843	ward	643	Mhinduro	district	29	Mhinduro	2012	135
844	ward	644	Maramba	district	29	Maramba	2012	58
845	ward	645	Kigongoi	district	29	Kigongoi	2012	66
846	ward	646	Daluni	district	29	Daluni	2012	102
847	ward	647	Bosha	district	29	Bosha	2012	79
848	ward	648	Mapatano	district	29	Mapatano	2012	48
849	ward	649	Bwiti	district	29	Bwiti	2012	273
850	ward	650	Mnyenzani	district	29	Mnyenzani	2012	115
851	ward	651	Doda	district	29	Doda	2012	204
852	ward	652	Boma	district	29	Boma	2012	42
853	ward	653	Parungu Kasera	district	29	Parungu Kasera	2012	203
854	ward	654	Mayomboni	district	29	Mayomboni	2012	33
855	ward	655	Sigaya	district	29	Sigaya	2012	80
856	ward	656	Ngombezi	district	30	Ngombezi	2012	34
857	ward	657	Mtonga	district	30	Mtonga	2012	15
858	ward	658	Magunga	district	30	Magunga	2012	9
859	ward	659	Kwamndolwa	district	30	Kwamndolwa	2012	44
860	ward	660	Old Korogwe	district	30	Old Korogwe	2012	27
861	ward	661	Manundu	district	30	Manundu	2012	5
862	ward	662	Kilole	district	30	Kilole	2012	17
863	ward	663	Kwamsisi	district	30	Kwamsisi	2012	512
864	ward	664	Malezi	district	31	Malezi	2012	56
865	ward	665	Kwenjugo	district	31	Kwenjugo	2012	85
866	ward	666	Mabanda	district	31	Mabanda	2012	83
867	ward	667	Konje	district	31	Konje	2012	47
868	ward	668	Mlimani	district	31	Mlimani	2012	50
869	ward	669	Msasa	district	31	Msasa	2012	27
870	ward	670	Kideleko	district	31	Kideleko	2012	59
871	ward	671	Kwamagome	district	31	Kwamagome	2012	382
872	ward	672	Vibaoni	district	31	Vibaoni	2012	16
873	ward	673	Chanika	district	31	Chanika	2012	4
874	ward	674	Mdoe	district	31	Mdoe	2012	5
875	ward	675	Kwediyamba	district	31	Kwediyamba	2012	31
876	ward	676	Mabula	district	32	Mabula	2012	129
877	ward	677	Maguha	district	32	Maguha	2012	200
878	ward	678	Berega	district	32	Berega	2012	138
879	ward	679	Magubike	district	32	Magubike	2012	161
880	ward	680	Mamboya	district	32	Mamboya	2012	461
881	ward	681	Dumila	district	32	Dumila	2012	179
882	ward	682	Magole	district	32	Magole	2012	211
883	ward	683	Msowero	district	32	Msowero	2012	633
884	ward	684	Rudewa	district	32	Rudewa	2012	781
885	ward	685	Chanzulu	district	32	Chanzulu	2012	181
886	ward	686	Kimamba 'A'	district	32	Kimamba 'A'	2012	20
887	ward	687	Kimamba ' B '	district	32	Kimamba ' B '	2012	9
888	ward	688	Mbumi	district	32	Mbumi	2012	1
889	ward	689	Mkwatani	district	32	Mkwatani	2012	30
890	ward	690	Magomeni	district	32	Magomeni	2012	133
891	ward	691	Kasiki	district	32	Kasiki	2012	6
892	ward	692	Mabwerebwere	district	32	Mabwerebwere	2012	49
893	ward	693	Kilangali	district	32	Kilangali	2012	519
894	ward	694	Mikumi	district	32	Mikumi	2012	1515
895	ward	695	Ruhembe	district	32	Ruhembe	2012	701
896	ward	696	Kidodi	district	32	Kidodi	2012	342
897	ward	697	Vidunda	district	32	Vidunda	2012	274
898	ward	698	Malolo	district	32	Malolo	2012	323
899	ward	699	Kisanga	district	32	Kisanga	2012	539
900	ward	700	Uleling'Ombe	district	32	Uleling'Ombe	2012	223
901	ward	701	Ulaya	district	32	Ulaya	2012	962
902	ward	702	Zombo	district	32	Zombo	2012	425
903	ward	703	Lumuma	district	32	Lumuma	2012	149
904	ward	704	Masanze	district	32	Masanze	2012	419
905	ward	705	Lumbiji	district	32	Lumbiji	2012	283
906	ward	706	Kitete	district	32	Kitete	2012	230
907	ward	707	Madoto	district	32	Madoto	2012	37
908	ward	708	Tindiga	district	32	Tindiga	2012	438
909	ward	709	Ruaha	district	32	Ruaha	2012	41
910	ward	710	Kasanga	district	33	Kasanga	2012	35
911	ward	711	Kolero	district	33	Kolero	2012	129
912	ward	712	Mvuha	district	33	Mvuha	2012	366
913	ward	713	Selembala	district	33	Selembala	2012	618
914	ward	714	Bwaki La Chini	district	33	Bwaki La Chini	2012	289
915	ward	715	Bwakila Juu	district	33	Bwakila Juu	2012	107
916	ward	716	Kisaki	district	33	Kisaki	2012	5095
917	ward	717	Mngazi	district	33	Mngazi	2012	256
918	ward	718	Singisa	district	33	Singisa	2012	297
919	ward	719	Mkambarani	district	33	Mkambarani	2012	325
920	ward	720	Mikese	district	33	Mikese	2012	245
921	ward	721	Kidugalo	district	33	Kidugalo	2012	698
922	ward	722	Mkulazi	district	33	Mkulazi	2012	348
923	ward	723	Ngerengere	district	33	Ngerengere	2012	542
924	ward	724	Tununguo	district	33	Tununguo	2012	343
925	ward	725	Kiroka	district	33	Kiroka	2012	205
926	ward	726	Mkuyuni	district	33	Mkuyuni	2012	99
927	ward	727	Tegetero	district	33	Tegetero	2012	89
928	ward	728	Kibogwa	district	33	Kibogwa	2012	82
929	ward	729	Kibungo Juu	district	33	Kibungo Juu	2012	114
930	ward	730	Kisemu	district	33	Kisemu	2012	39
931	ward	731	Lundi	district	33	Lundi	2012	125
932	ward	732	Mtombozi	district	33	Mtombozi	2012	97
933	ward	733	Tawa	district	33	Tawa	2012	43
934	ward	734	Matuli	district	33	Matuli	2012	393
935	ward	735	Gwata	district	33	Gwata	2012	1472
936	ward	736	Konde	district	33	Konde	2012	34
937	ward	737	Bungu	district	33	Bungu	2012	47
938	ward	738	Kidatu	district	34	Kidatu	2012	482
939	ward	739	Sanje	district	34	Sanje	2012	107
940	ward	740	Mkula	district	34	Mkula	2012	96
941	ward	741	Mang'Ula	district	34	Mang'Ula	2012	1563
942	ward	742	Kisawasawa	district	34	Kisawasawa	2012	4085
943	ward	743	Kiberege	district	34	Kiberege	2012	467
944	ward	744	Kibaoni	district	34	Kibaoni	2012	189
945	ward	745	Ifakara	district	34	Ifakara	2012	60
946	ward	746	Lumemo	district	34	Lumemo	2012	299
947	ward	747	Idete	district	34	Idete	2012	721
948	ward	748	Mbingu	district	34	Mbingu	2012	185
949	ward	749	Mofu	district	34	Mofu	2012	329
950	ward	750	Mchombe	district	34	Mchombe	2012	512
951	ward	751	Chisano	district	34	Chisano	2012	414
952	ward	752	Mlimba	district	34	Mlimba	2012	540
953	ward	753	Utengule	district	34	Utengule	2012	360
954	ward	754	Masagati	district	34	Masagati	2012	1714
955	ward	755	Uchindile	district	34	Uchindile	2012	1014
956	ward	756	Minepa	district	35	Minepa	2012	999
957	ward	757	Lupiro	district	35	Lupiro	2012	522
958	ward	758	Kichangani	district	35	Kichangani	2012	1036
959	ward	759	Msogezi	district	35	Msogezi	2012	322
960	ward	760	Vigoi	district	35	Vigoi	2012	275
961	ward	761	Mahenge	district	35	Mahenge	2012	5
962	ward	762	Isongo	district	35	Isongo	2012	116
963	ward	763	Ruaha	district	35	Ruaha	2012	41
964	ward	764	Chirombola	district	35	Chirombola	2012	69
965	ward	765	Sali	district	35	Sali	2012	272
966	ward	766	Euga	district	35	Euga	2012	52
967	ward	767	Mwaya	district	35	Mwaya	2012	95
968	ward	768	Lukande	district	35	Lukande	2012	2300
969	ward	769	Mbuga	district	35	Mbuga	2012	147
970	ward	770	Ilonga	district	35	Ilonga	2012	3937
971	ward	771	Kilosa Kwa Mpepo	district	35	Kilosa Kwa Mpepo	2012	4299
972	ward	772	Ngoheranga	district	35	Ngoheranga	2012	393
973	ward	773	Biro	district	35	Biro	2012	313
974	ward	774	Malinyi	district	35	Malinyi	2012	452
975	ward	775	Sofi	district	35	Sofi	2012	983
976	ward	776	Usangule	district	35	Usangule	2012	472
977	ward	777	Mtimbira	district	35	Mtimbira	2012	309
978	ward	778	Itete	district	35	Itete	2012	689
979	ward	779	Iragua	district	35	Iragua	2012	723
980	ward	780	Sabasaba	district	36	Sabasaba	2012	0
981	ward	781	Uwanja Wa Taifa	district	36	Uwanja Wa Taifa	2012	1
982	ward	782	Kiwanja Cha Ndege	district	36	Kiwanja Cha Ndege	2012	2
983	ward	783	Mji Mpya	district	36	Mji Mpya	2012	1
984	ward	784	Kingo	district	36	Kingo	2012	1
985	ward	785	Mji Mkuu	district	36	Mji Mkuu	2012	0
986	ward	786	Sultan Area	district	36	Sultan Area	2012	0
987	ward	787	Mafiga	district	36	Mafiga	2012	2
988	ward	788	Mazimbu	district	36	Mazimbu	2012	41
989	ward	789	Mwembesongo	district	36	Mwembesongo	2012	12
990	ward	790	Kichangani	district	36	Kichangani	2012	1036
991	ward	791	Kilakala	district	36	Kilakala	2012	8
992	ward	792	Boma	district	36	Boma	2012	42
993	ward	793	Mlimani	district	36	Mlimani	2012	50
994	ward	794	Mbuyuni	district	36	Mbuyuni	2012	15
995	ward	795	Kingolwira	district	36	Kingolwira	2012	36
996	ward	796	Bigwa	district	36	Bigwa	2012	13
997	ward	797	Mzinga	district	36	Mzinga	2012	12
998	ward	798	Kihonda	district	36	Kihonda	2012	123
999	ward	799	Mvomero	district	37	Mvomero	2012	1148
1000	ward	800	Hembeti	district	37	Hembeti	2012	488
1001	ward	801	Maskati	district	37	Maskati	2012	279
1002	ward	802	Kibati	district	37	Kibati	2012	554
1003	ward	803	Sungaji	district	37	Sungaji	2012	106
1004	ward	804	Mhonda	district	37	Mhonda	2012	76
1005	ward	805	Diongoya	district	37	Diongoya	2012	141
1006	ward	806	Mtibwa	district	37	Mtibwa	2012	617
1007	ward	807	Kanga	district	37	Kanga	2012	549
1008	ward	808	Bunduki	district	37	Bunduki	2012	65
1009	ward	809	Kikeo	district	37	Kikeo	2012	343
1010	ward	810	Langali	district	37	Langali	2012	59
1011	ward	811	Tchenzema	district	37	Tchenzema	2012	77
1012	ward	812	Mzumbe	district	37	Mzumbe	2012	729
1013	ward	813	Mlali	district	37	Mlali	2012	121
1014	ward	814	Doma	district	37	Doma	2012	646
1015	ward	815	Melela	district	37	Melela	2012	553
1016	ward	816	Chakwale	district	38	Chakwale	2012	141
1017	ward	817	Iyogwe	district	38	Iyogwe	2012	482
1018	ward	818	Idibo	district	38	Idibo	2012	222
1019	ward	819	Kibedya	district	38	Kibedya	2012	169
1020	ward	820	Msingisi	district	38	Msingisi	2012	61
1021	ward	821	Gairo	district	38	Gairo	2012	108
1022	ward	822	Rubeho	district	38	Rubeho	2012	158
1023	ward	823	Mandege	district	38	Mandege	2012	65
1024	ward	824	Chagongwe	district	38	Chagongwe	2012	142
1025	ward	825	Chanjale	district	38	Chanjale	2012	298
1026	ward	826	Nongwe	district	38	Nongwe	2012	149
1027	ward	827	Kiwangwa	district	39	Kiwangwa	2012	354
1028	ward	828	Msata	district	39	Msata	2012	767
1029	ward	829	Miono	district	39	Miono	2012	483
1030	ward	830	Mkange	district	39	Mkange	2012	950
1031	ward	831	Magomeni	district	39	Magomeni	2012	133
1032	ward	832	Dunda	district	39	Dunda	2012	21
1033	ward	833	Kiromo	district	39	Kiromo	2012	83
1034	ward	834	Zinga	district	39	Zinga	2012	99
1035	ward	835	Yombo	district	39	Yombo	2012	103
1036	ward	836	Vigwaza	district	39	Vigwaza	2012	430
1037	ward	837	Talawanda	district	39	Talawanda	2012	363
1038	ward	838	Bwilingu	district	39	Bwilingu	2012	268
1039	ward	839	Lugoba	district	39	Lugoba	2012	259
1040	ward	840	Ubenazomozi	district	39	Ubenazomozi	2012	736
1041	ward	841	Mbwewe	district	39	Mbwewe	2012	520
1042	ward	842	Kibindu	district	39	Kibindu	2012	910
1043	ward	843	Fukayose	district	39	Fukayose	2012	501
1044	ward	844	Kerege	district	39	Kerege	2012	89
1045	ward	845	Pera	district	39	Pera	2012	302
1046	ward	846	Msoga	district	39	Msoga	2012	181
1047	ward	847	Kimange	district	39	Kimange	2012	427
1048	ward	848	Mandera	district	39	Mandera	2012	167
1049	ward	849	Gwata	district	40	Gwata	2012	1472
1050	ward	850	Dutumi	district	40	Dutumi	2012	319
1051	ward	851	Magindu	district	40	Magindu	2012	264
1052	ward	852	Soga	district	40	Soga	2012	124
1053	ward	853	Kikongo	district	40	Kikongo	2012	92
1054	ward	854	Ruvu	district	40	Ruvu	2012	1046
1055	ward	855	Mlandizi	district	40	Mlandizi	2012	85
1056	ward	856	Kwala	district	40	Kwala	2012	229
1057	ward	857	Kilangalanga	district	40	Kilangalanga	2012	34
1058	ward	858	Janga	district	40	Janga	2012	40
1059	ward	859	Bokomnemela	district	40	Bokomnemela	2012	110
1060	ward	860	Kisarawe	district	41	Kisarawe	2012	236
1061	ward	861	Msimbu	district	41	Msimbu	2012	155
1062	ward	862	Masaki	district	41	Masaki	2012	124
1063	ward	863	Kibuta	district	41	Kibuta	2012	266
1064	ward	864	Marumbo	district	41	Marumbo	2012	318
1065	ward	865	Maneromango	district	41	Maneromango	2012	144
1066	ward	866	Msanga	district	41	Msanga	2012	158
1067	ward	867	Marui	district	41	Marui	2012	579
1068	ward	868	Cholesamvula	district	41	Cholesamvula	2012	652
1069	ward	869	Vikumbulu	district	41	Vikumbulu	2012	1020
1070	ward	870	Mafizi	district	41	Mafizi	2012	903
1071	ward	871	Kurui	district	41	Kurui	2012	166
1072	ward	872	Mzenga	district	41	Mzenga	2012	212
1073	ward	873	Vihingo	district	41	Vihingo	2012	154
1074	ward	874	Kiluvya	district	41	Kiluvya	2012	90
1075	ward	875	Mkuranga	district	42	Mkuranga	2012	147
1076	ward	876	Tambani	district	42	Tambani	2012	140
1077	ward	877	Vikindu	district	42	Vikindu	2012	130
1078	ward	878	Mbezi	district	42	Mbezi	2012	183
1079	ward	879	Shungubweni	district	42	Shungubweni	2012	160
1080	ward	880	Kisiju	district	42	Kisiju	2012	271
1081	ward	881	Magawa	district	42	Magawa	2012	141
1082	ward	882	Kitomondo	district	42	Kitomondo	2012	48
1083	ward	883	Lukanga	district	42	Lukanga	2012	139
1084	ward	884	Nyamato	district	42	Nyamato	2012	240
1085	ward	885	Kimanzichana	district	42	Kimanzichana	2012	85
1086	ward	886	Mkamba	district	42	Mkamba	2012	235
1087	ward	887	Panzuo	district	42	Panzuo	2012	310
1088	ward	888	Bupu	district	42	Bupu	2012	197
1089	ward	889	Mwarusembe	district	42	Mwarusembe	2012	93
1090	ward	890	Vianzi	district	42	Vianzi	2012	130
1091	ward	891	Njia Nne	district	42	Njia Nne	2012	142
1092	ward	892	Kiparang'Anda	district	42	Kiparang'Anda	2012	81
1093	ward	893	Ikwiriri	district	43	Ikwiriri	2012	103
1094	ward	894	Mgomba	district	43	Mgomba	2012	103
1095	ward	895	Umwe	district	43	Umwe	2012	36
1096	ward	896	Utete	district	43	Utete	2012	426
1097	ward	897	Mkongo	district	43	Mkongo	2012	387
1098	ward	898	Ngorongo	district	43	Ngorongo	2012	1393
1099	ward	899	Mwaseni	district	43	Mwaseni	2012	3892
1100	ward	900	Kibiti	district	43	Kibiti	2012	128
1101	ward	901	Bungu	district	43	Bungu	2012	47
1102	ward	902	Mahege	district	43	Mahege	2012	134
1103	ward	903	Mchukwi	district	43	Mchukwi	2012	276
1104	ward	904	Chumbi	district	43	Chumbi	2012	564
1105	ward	905	Mbwara	district	43	Mbwara	2012	1091
1106	ward	906	Mtunda	district	43	Mtunda	2012	513
1107	ward	907	Ruaruke	district	43	Ruaruke	2012	227
1108	ward	908	Salale	district	43	Salale	2012	49
1109	ward	909	Mbuchi	district	43	Mbuchi	2012	75
1110	ward	910	Kiongoroni	district	43	Kiongoroni	2012	50
1111	ward	911	Maparoni	district	43	Maparoni	2012	52
1112	ward	912	Chemchem	district	43	Chemchem	2012	17
1113	ward	913	Ngarambe	district	43	Ngarambe	2012	1223
1114	ward	914	Dimani	district	43	Dimani	2012	550
1115	ward	915	Mtawanya	district	43	Mtawanya	2012	195
1116	ward	916	Mjawa	district	43	Mjawa	2012	89
1117	ward	917	Mlanzi	district	43	Mlanzi	2012	69
1118	ward	918	Mwambao	district	43	Mwambao	2012	225
1119	ward	919	Kanga	district	44	Kanga	2012	549
1120	ward	920	Kirongwe	district	44	Kirongwe	2012	14
1121	ward	921	Baleni	district	44	Baleni	2012	70
1122	ward	922	Ndagoni	district	44	Ndagoni	2012	93
1123	ward	923	Kilindoni	district	44	Kilindoni	2012	50
1124	ward	924	Miburani	district	44	Miburani	2012	91
1125	ward	925	Kiegeani	district	44	Kiegeani	2012	69
1126	ward	926	Jibondo	district	44	Jibondo	2012	89
1127	ward	927	Pangani	district	45	Pangani	2012	123
1128	ward	928	Mailimoja	district	45	Mailimoja	2012	21
1129	ward	929	Tumbi	district	45	Tumbi	2012	29
1130	ward	930	Picha Ya Ndege	district	45	Picha Ya Ndege	2012	32
1131	ward	931	Mkuza	district	45	Mkuza	2012	22
1132	ward	932	Kibaha	district	45	Kibaha	2012	18
1133	ward	933	Msangani	district	45	Msangani	2012	183
1134	ward	934	Kongowe	district	45	Kongowe	2012	94
1135	ward	935	Misugusugu	district	45	Misugusugu	2012	77
1136	ward	936	Visiga	district	45	Visiga	2012	62
1137	ward	937	Mbwawa	district	45	Mbwawa	2012	55
1138	ward	938	Magomeni	district	46	Magomeni	2012	133
1139	ward	939	Makurumla	district	46	Makurumla	2012	2
1140	ward	940	Ndugumbi	district	46	Ndugumbi	2012	1
1141	ward	941	Tandale	district	46	Tandale	2012	1
1142	ward	942	Mwananyamala	district	46	Mwananyamala	2012	3
1143	ward	943	Msasani	district	46	Msasani	2012	11
1144	ward	944	Kinondoni	district	46	Kinondoni	2012	2
1145	ward	945	Mzimuni	district	46	Mzimuni	2012	1
1146	ward	946	Kigogo	district	46	Kigogo	2012	2
1147	ward	947	Mabibo	district	46	Mabibo	2012	4
1148	ward	948	Manzese	district	46	Manzese	2012	2
1149	ward	949	Ubungo	district	46	Ubungo	2012	10
1150	ward	950	Kibamba	district	46	Kibamba	2012	20
1151	ward	951	Goba	district	46	Goba	2012	48
1152	ward	952	Kawe	district	46	Kawe	2012	16
1153	ward	953	Kunduchi	district	46	Kunduchi	2012	27
1154	ward	954	Mbweni	district	46	Mbweni	2012	23
1155	ward	955	Bunju	district	46	Bunju	2012	35
1156	ward	956	Makuburi	district	46	Makuburi	2012	8
1157	ward	957	Mburahati	district	46	Mburahati	2012	1
1158	ward	958	Makumbusho	district	46	Makumbusho	2012	2
1159	ward	959	Sinza	district	46	Sinza	2012	3
1160	ward	960	Kijitonyama	district	46	Kijitonyama	2012	4
1161	ward	961	Kimara	district	46	Kimara	2012	14
1162	ward	962	Mikocheni	district	46	Mikocheni	2012	8
1163	ward	963	Mbezi	district	46	Mbezi	2012	183
1164	ward	964	Hananasifu	district	46	Hananasifu	2012	2
1165	ward	965	Saranga	district	46	Saranga	2012	26
1166	ward	966	Kwembe	district	46	Kwembe	2012	61
1167	ward	967	Msigani	district	46	Msigani	2012	15
1168	ward	968	Mbezi Juu	district	46	Mbezi Juu	2012	9
1169	ward	969	Makongo	district	46	Makongo	2012	18
1170	ward	970	Mabwepande	district	46	Mabwepande	2012	53
1171	ward	971	Wazo	district	46	Wazo	2012	54
1172	ward	972	Ukonga	district	47	Ukonga	2012	10
1173	ward	973	Pugu	district	47	Pugu	2012	31
1174	ward	974	Msongola	district	47	Msongola	2012	66
1175	ward	975	Tabata	district	47	Tabata	2012	5
1176	ward	976	Kinyerezi	district	47	Kinyerezi	2012	22
1177	ward	977	Ilala	district	47	Ilala	2012	2
1178	ward	978	Mchikichini	district	47	Mchikichini	2012	2
1179	ward	979	Vingunguti	district	47	Vingunguti	2012	5
1180	ward	980	Kipawa	district	47	Kipawa	2012	16
1181	ward	981	Buguruni	district	47	Buguruni	2012	4
1182	ward	982	Kariakoo	district	47	Kariakoo	2012	0
1183	ward	983	Jangwani	district	47	Jangwani	2012	1
1184	ward	984	Gerezani	district	47	Gerezani	2012	1
1185	ward	985	Kisutu	district	47	Kisutu	2012	0
1186	ward	986	Mchafukoge	district	47	Mchafukoge	2012	1
1187	ward	987	Upanga Mashariki	district	47	Upanga Mashariki	2012	1
1188	ward	988	Upanga Magharibi	district	47	Upanga Magharibi	2012	2
1189	ward	989	Kivukoni	district	47	Kivukoni	2012	2
1190	ward	990	Kiwalani	district	47	Kiwalani	2012	4
1191	ward	991	Segerea	district	47	Segerea	2012	10
1192	ward	992	Kitunda	district	47	Kitunda	2012	20
1193	ward	993	Chanika	district	47	Chanika	2012	4
1194	ward	994	Kivule	district	47	Kivule	2012	25
1195	ward	995	Gongolamboto	district	47	Gongolamboto	2012	13
1196	ward	996	Majohe	district	47	Majohe	2012	59
1197	ward	997	Kimanga	district	47	Kimanga	2012	9
1198	ward	998	Kigamboni	district	48	Kigamboni	2012	5
1199	ward	999	Vijibweni	district	48	Vijibweni	2012	12
1200	ward	1000	Kibada	district	48	Kibada	2012	17
1201	ward	1001	Kisarawe Ii	district	48	Kisarawe Ii	2012	142
1202	ward	1002	Somangila	district	48	Somangila	2012	108
1203	ward	1003	Kimbiji	district	48	Kimbiji	2012	60
1204	ward	1004	Mbagala	district	48	Mbagala	2012	3
1205	ward	1005	Chamazi	district	48	Chamazi	2012	28
1206	ward	1006	Yombo Vituka	district	48	Yombo Vituka	2012	6
1207	ward	1007	Charambe	district	48	Charambe	2012	7
1208	ward	1008	Toangoma	district	48	Toangoma	2012	38
1209	ward	1009	Miburani	district	48	Miburani	2012	91
1210	ward	1010	Temeke	district	48	Temeke	2012	3
1211	ward	1011	Mtoni	district	48	Mtoni	2012	4
1212	ward	1012	Keko	district	48	Keko	2012	1
1213	ward	1013	Kurasini	district	48	Kurasini	2012	6
1214	ward	1014	Azimio	district	48	Azimio	2012	2
1215	ward	1015	Tandika	district	48	Tandika	2012	2
1216	ward	1016	Sandali	district	48	Sandali	2012	3
1217	ward	1017	Chang'Ombe	district	48	Chang'Ombe	2012	3
1218	ward	1018	Mbagala Kuu	district	48	Mbagala Kuu	2012	7
1219	ward	1019	Makangarawe	district	48	Makangarawe	2012	2
1220	ward	1020	Pemba Mnazi	district	48	Pemba Mnazi	2012	213
1221	ward	1021	Mjimwema	district	48	Mjimwema	2012	24
1222	ward	1022	Tungi	district	48	Tungi	2012	6
1223	ward	1023	Kijichi	district	48	Kijichi	2012	12
1224	ward	1024	Mianzini	district	48	Mianzini	2012	10
1225	ward	1025	Kiburugwa	district	48	Kiburugwa	2012	4
1226	ward	1026	Buza	district	48	Buza	2012	6
1227	ward	1027	Kilakala	district	48	Kilakala	2012	8
1228	ward	1028	Tingi	district	49	Tingi	2012	106
1229	ward	1029	Miteja	district	49	Miteja	2012	246
1230	ward	1030	Mingumbi	district	49	Mingumbi	2012	264
1231	ward	1031	Kinjumbi	district	49	Kinjumbi	2012	486
1232	ward	1032	Chumo	district	49	Chumo	2012	277
1233	ward	1033	Kipatimu	district	49	Kipatimu	2012	379
1234	ward	1034	Kandawale	district	49	Kandawale	2012	795
1235	ward	1035	Njinjo	district	49	Njinjo	2012	424
1236	ward	1036	Mitole	district	49	Mitole	2012	443
1237	ward	1037	Miguruwe	district	49	Miguruwe	2012	1885
1238	ward	1038	Likawage	district	49	Likawage	2012	1723
1239	ward	1039	Nanjirinji	district	49	Nanjirinji	2012	3839
1240	ward	1040	Kirnjernje	district	49	Kirnjernje	2012	703
1241	ward	1041	Mandawa	district	49	Mandawa	2012	1641
1242	ward	1042	Lihimalyao	district	49	Lihimalyao	2012	370
1243	ward	1043	Pande	district	49	Pande	2012	207
1244	ward	1044	Kikole	district	49	Kikole	2012	827
1245	ward	1045	Kivinjesingino	district	49	Kivinjesingino	2012	413
1246	ward	1046	Songosongo	district	49	Songosongo	2012	9
1247	ward	1047	Masoko	district	49	Masoko	2012	205
1248	ward	1048	Kibata	district	49	Kibata	2012	143
1249	ward	1049	Mipingo	district	50	Mipingo	2012	825
1250	ward	1050	Kitomanga	district	50	Kitomanga	2012	183
1251	ward	1051	Mchinga	district	50	Mchinga	2012	141
1252	ward	1052	Kilolambwani	district	50	Kilolambwani	2012	299
1253	ward	1053	Kilangala	district	50	Kilangala	2012	176
1254	ward	1054	Kiwalala	district	50	Kiwalala	2012	431
1255	ward	1055	Navanga	district	50	Navanga	2012	197
1256	ward	1056	Mnolela	district	50	Mnolela	2012	247
1257	ward	1057	Sudi	district	50	Sudi	2012	137
1258	ward	1058	Nachunyu	district	50	Nachunyu	2012	98
1259	ward	1059	Mtama	district	50	Mtama	2012	38
1260	ward	1060	Nyangao	district	50	Nyangao	2012	86
1261	ward	1061	Namupa	district	50	Namupa	2012	450
1262	ward	1062	Nyengedi	district	50	Nyengedi	2012	36
1263	ward	1063	Mtua	district	50	Mtua	2012	20
1264	ward	1064	Nahukahuka	district	50	Nahukahuka	2012	148
1265	ward	1065	Nyangamara	district	50	Nyangamara	2012	221
1266	ward	1066	Mandwanga	district	50	Mandwanga	2012	220
1267	ward	1067	Mnara	district	50	Mnara	2012	427
1268	ward	1068	Chiponda	district	50	Chiponda	2012	264
1269	ward	1069	Pangatena	district	50	Pangatena	2012	118
1270	ward	1070	Longa	district	50	Longa	2012	57
1271	ward	1071	Rutamba	district	50	Rutamba	2012	188
1272	ward	1072	Milola	district	50	Milola	2012	341
1273	ward	1073	Kiwawa	district	50	Kiwawa	2012	207
1274	ward	1074	Mtumbya	district	50	Mtumbya	2012	129
1275	ward	1075	Matimba	district	50	Matimba	2012	107
1276	ward	1076	Nangaru	district	50	Nangaru	2012	212
1277	ward	1077	Majengo	district	50	Majengo	2012	1
1278	ward	1078	Namangale	district	50	Namangale	2012	79
1279	ward	1079	Nambambo	district	51	Nambambo	2012	7
1280	ward	1080	Kilimanihewa	district	51	Kilimanihewa	2012	37
1281	ward	1081	Ruponda	district	51	Ruponda	2012	106
1282	ward	1082	Minero Miembeni	district	51	Minero Miembeni	2012	186
1283	ward	1083	Namapwia	district	51	Namapwia	2012	233
1284	ward	1084	Kipara Mnero	district	51	Kipara Mnero	2012	116
1285	ward	1085	Lionja	district	51	Lionja	2012	341
1286	ward	1086	Namikango	district	51	Namikango	2012	41
1287	ward	1087	Nditi	district	51	Nditi	2012	131
1288	ward	1088	Kilima Rondo	district	51	Kilima Rondo	2012	579
1289	ward	1089	Mbondo	district	51	Mbondo	2012	1166
1290	ward	1090	Kiegei	district	51	Kiegei	2012	688
1291	ward	1091	Mkoka	district	51	Mkoka	2012	105
1292	ward	1092	Chiola	district	51	Chiola	2012	69
1293	ward	1093	Mpiruka	district	51	Mpiruka	2012	76
1294	ward	1094	Nangowe	district	51	Nangowe	2012	85
1295	ward	1095	Mkotokuyana	district	51	Mkotokuyana	2012	94
1296	ward	1096	Naipanga	district	51	Naipanga	2012	89
1297	ward	1097	Stesheni	district	51	Stesheni	2012	179
1298	ward	1098	Naipingo	district	51	Naipingo	2012	300
1299	ward	1099	Mtua	district	51	Mtua	2012	20
1300	ward	1100	Minerongongo	district	51	Minerongongo	2012	63
1301	ward	1101	Matekwe	district	51	Matekwe	2012	497
1302	ward	1102	Marambo	district	51	Marambo	2012	117
1303	ward	1103	Namatula	district	51	Namatula	2012	28
1304	ward	1104	Ndomoni	district	51	Ndomoni	2012	65
1305	ward	1105	Liwale Mjini	district	52	Liwale Mjini	2012	94
1306	ward	1106	Mihumo	district	52	Mihumo	2012	414
1307	ward	1107	Ngongowele	district	52	Ngongowele	2012	1182
1308	ward	1108	Mlembwe	district	52	Mlembwe	2012	1928
1309	ward	1109	Makata	district	52	Makata	2012	524
1310	ward	1110	Barikiwa	district	52	Barikiwa	2012	1791
1311	ward	1111	Mkutano	district	52	Mkutano	2012	11507
1312	ward	1112	Mbaya	district	52	Mbaya	2012	334
1313	ward	1113	Kimambi	district	52	Kimambi	2012	7761
1314	ward	1114	Kiangara	district	52	Kiangara	2012	759
1315	ward	1115	Kibutuka	district	52	Kibutuka	2012	542
1316	ward	1116	Nangano	district	52	Nangano	2012	473
1317	ward	1117	Mpigamiti	district	52	Mpigamiti	2012	2992
1318	ward	1118	Mirui	district	52	Mirui	2012	725
1319	ward	1119	Liwale 'B'	district	52	Liwale 'B'	2012	587
1320	ward	1120	Mangirikiti	district	52	Mangirikiti	2012	290
1321	ward	1121	Nangando	district	52	Nangando	2012	43
1322	ward	1122	Likongowele	district	52	Likongowele	2012	21
1323	ward	1123	Kichonda	district	52	Kichonda	2012	122
1324	ward	1124	Lilombe	district	52	Lilombe	2012	3151
1325	ward	1125	Ruangwa	district	53	Ruangwa	2012	53
1326	ward	1126	Mbekenyera	district	53	Mbekenyera	2012	112
1327	ward	1127	Nkowe	district	53	Nkowe	2012	42
1328	ward	1128	Malolo	district	53	Malolo	2012	323
1329	ward	1129	Luchelegwa	district	53	Luchelegwa	2012	100
1330	ward	1130	Chienjele	district	53	Chienjele	2012	117
1331	ward	1131	Namichiga	district	53	Namichiga	2012	45
1332	ward	1132	Narung'Ombe	district	53	Narung'Ombe	2012	252
1333	ward	1133	Makanjiro	district	53	Makanjiro	2012	57
1334	ward	1134	Likunja	district	53	Likunja	2012	99
1335	ward	1135	Mnacho	district	53	Mnacho	2012	143
1336	ward	1136	Mandawa	district	53	Mandawa	2012	1641
1337	ward	1137	Nambilanje	district	53	Nambilanje	2012	422
1338	ward	1138	Chunyu	district	53	Chunyu	2012	334
1339	ward	1139	Mandarawe	district	53	Mandarawe	2012	146
1340	ward	1140	Nachingwea	district	53	Nachingwea	2012	21
1341	ward	1141	Matambarale	district	53	Matambarale	2012	144
1342	ward	1142	Chibula	district	53	Chibula	2012	183
1343	ward	1143	Nandagala	district	53	Nandagala	2012	45
1344	ward	1144	Nanganga	district	53	Nanganga	2012	89
1345	ward	1145	Chinongwe	district	53	Chinongwe	2012	68
1346	ward	1146	Ndoro	district	54	Ndoro	2012	0
1347	ward	1147	Makonde	district	54	Makonde	2012	0
1348	ward	1148	Mikumbi	district	54	Mikumbi	2012	0
1349	ward	1149	Mitandi	district	54	Mitandi	2012	0
1350	ward	1150	Rahaleo	district	54	Rahaleo	2012	1
1351	ward	1151	Mwenge	district	54	Mwenge	2012	1
1352	ward	1152	Matopeni	district	54	Matopeni	2012	1
1353	ward	1153	Wailes	district	54	Wailes	2012	1
1354	ward	1154	Nachingwea	district	54	Nachingwea	2012	21
1355	ward	1155	Rasbura	district	54	Rasbura	2012	66
1356	ward	1156	Mtanda	district	54	Mtanda	2012	36
1357	ward	1157	Jamhuri	district	54	Jamhuri	2012	67
1358	ward	1158	Msinjahili	district	54	Msinjahili	2012	129
1359	ward	1159	Mingoyo	district	54	Mingoyo	2012	95
1360	ward	1160	Ng'Apa	district	54	Ng'Apa	2012	94
1361	ward	1161	Tandangongoro	district	54	Tandangongoro	2012	170
1362	ward	1162	Chikonji	district	54	Chikonji	2012	214
1363	ward	1163	Mbanja	district	54	Mbanja	2012	219
1364	ward	1164	Madimba	district	55	Madimba	2012	182
1365	ward	1165	Ziwani	district	55	Ziwani	2012	123
1366	ward	1166	Nanguruwe	district	55	Nanguruwe	2012	105
1367	ward	1167	Mahurunga	district	55	Mahurunga	2012	154
1368	ward	1168	Kitaya	district	55	Kitaya	2012	202
1369	ward	1169	Kiromba	district	55	Kiromba	2012	87
1370	ward	1170	Njengwa	district	55	Njengwa	2012	205
1371	ward	1171	Nitekela	district	55	Nitekela	2012	139
1372	ward	1172	Nanyamba	district	55	Nanyamba	2012	54
1373	ward	1173	Mtiniko	district	55	Mtiniko	2012	173
1374	ward	1174	Dihimba	district	55	Dihimba	2012	287
1375	ward	1175	Mnima	district	55	Mnima	2012	291
1376	ward	1176	Kitere	district	55	Kitere	2012	177
1377	ward	1177	Ndumbwe	district	55	Ndumbwe	2012	80
1378	ward	1178	Mayanga	district	55	Mayanga	2012	192
1379	ward	1179	Naumbu	district	55	Naumbu	2012	132
1380	ward	1180	Chawi	district	55	Chawi	2012	217
1381	ward	1181	Namtumbuka	district	55	Namtumbuka	2012	145
1382	ward	1182	Libobe	district	55	Libobe	2012	66
1383	ward	1183	Mpapura	district	55	Mpapura	2012	79
1384	ward	1184	Muungano	district	55	Muungano	2012	107
1385	ward	1185	Mbawala	district	55	Mbawala	2012	161
1386	ward	1186	Msanga Mkuu	district	55	Msanga Mkuu	2012	84
1387	ward	1187	Tangazo	district	55	Tangazo	2012	84
1388	ward	1188	Kiyanga	district	55	Kiyanga	2012	75
1389	ward	1189	Milango Minne	district	55	Milango Minne	2012	55
1390	ward	1190	Mbembaleo	district	55	Mbembaleo	2012	71
1391	ward	1191	Mtimbwilimbwi	district	55	Mtimbwilimbwi	2012	124
1392	ward	1192	Luchindu	district	56	Luchindu	2012	59
1393	ward	1193	Makote	district	56	Makote	2012	41
1394	ward	1194	Nanguruwe	district	56	Nanguruwe	2012	105
1395	ward	1195	Mkunya	district	56	Mkunya	2012	41
1396	ward	1196	Mcholi I	district	56	Mcholi I	2012	95
1397	ward	1197	Namiyonga	district	56	Namiyonga	2012	41
1398	ward	1198	Mnekachi	district	56	Mnekachi	2012	63
1399	ward	1199	Chitekete	district	56	Chitekete	2012	49
1400	ward	1200	Mnyambe	district	56	Mnyambe	2012	130
1401	ward	1201	Chilangala	district	56	Chilangala	2012	256
1402	ward	1202	Mkoma Ii	district	56	Mkoma Ii	2012	111
1403	ward	1203	Kitangari	district	56	Kitangari	2012	67
1404	ward	1204	Malatu	district	56	Malatu	2012	75
1405	ward	1205	Mchemo	district	56	Mchemo	2012	86
1406	ward	1206	Mtopwa	district	56	Mtopwa	2012	60
1407	ward	1207	Chiwonga	district	56	Chiwonga	2012	64
1408	ward	1208	Maputi	district	56	Maputi	2012	91
1409	ward	1209	Makukwe	district	56	Makukwe	2012	45
1410	ward	1210	Mkwedu	district	56	Mkwedu	2012	50
1411	ward	1211	Mcholi Ii	district	56	Mcholi Ii	2012	44
1412	ward	1212	Mtonya	district	56	Mtonya	2012	42
1413	ward	1213	Makonga	district	56	Makonga	2012	54
1414	ward	1214	Nakahako	district	56	Nakahako	2012	71
1415	ward	1215	Chihangu	district	56	Chihangu	2012	67
1416	ward	1216	Nambali	district	56	Nambali	2012	84
1417	ward	1217	Nandwahi	district	56	Nandwahi	2012	70
1418	ward	1218	Mtunguru	district	56	Mtunguru	2012	63
1419	ward	1219	Mdimba Mpelempele	district	56	Mdimba Mpelempele	2012	37
1420	ward	1220	Namatutwe	district	57	Namatutwe	2012	660
1421	ward	1221	Namajani	district	57	Namajani	2012	111
1422	ward	1222	Mlingula	district	57	Mlingula	2012	97
1423	ward	1223	Chiwale	district	57	Chiwale	2012	190
1424	ward	1224	Lukuledi	district	57	Lukuledi	2012	166
1425	ward	1225	Mpanyani	district	57	Mpanyani	2012	107
1426	ward	1226	Chigugu	district	57	Chigugu	2012	149
1427	ward	1227	Mwena	district	57	Mwena	2012	134
1428	ward	1228	Nanganga	district	57	Nanganga	2012	89
1429	ward	1229	Chiwata	district	57	Chiwata	2012	85
1430	ward	1230	Mkundi	district	57	Mkundi	2012	84
1431	ward	1231	Mkululu	district	57	Mkululu	2012	85
1432	ward	1232	Nanjota	district	57	Nanjota	2012	106
1433	ward	1233	Chiungutwa	district	57	Chiungutwa	2012	172
1434	ward	1234	Mbuyuni	district	57	Mbuyuni	2012	15
1435	ward	1235	Lipumburu	district	57	Lipumburu	2012	566
1436	ward	1236	Sindano	district	57	Sindano	2012	240
1437	ward	1237	Namalenga	district	57	Namalenga	2012	90
1438	ward	1238	Mchauru	district	57	Mchauru	2012	287
1439	ward	1239	Mnavira	district	57	Mnavira	2012	210
1440	ward	1240	Chikolopola	district	57	Chikolopola	2012	85
1441	ward	1241	Lulindi	district	57	Lulindi	2012	57
1442	ward	1242	Tandahimba	district	58	Tandahimba	2012	118
1443	ward	1243	Kitama	district	58	Kitama	2012	90
1444	ward	1244	Michenjele	district	58	Michenjele	2012	100
1445	ward	1245	Mihambwe	district	58	Mihambwe	2012	98
1446	ward	1246	Mkoreha	district	58	Mkoreha	2012	76
1447	ward	1247	Maundo	district	58	Maundo	2012	99
1448	ward	1248	Naputa	district	58	Naputa	2012	50
1449	ward	1249	Namikupa	district	58	Namikupa	2012	48
1450	ward	1250	Mnyawa	district	58	Mnyawa	2012	36
1451	ward	1251	Mkundi	district	58	Mkundi	2012	84
1452	ward	1252	Lukokoda	district	58	Lukokoda	2012	42
1453	ward	1253	Mahuta	district	58	Mahuta	2012	27
1454	ward	1254	Nanhyanga	district	58	Nanhyanga	2012	65
1455	ward	1255	Chingungwe	district	58	Chingungwe	2012	51
1456	ward	1256	Mdimba Mnyoma	district	58	Mdimba Mnyoma	2012	55
1457	ward	1257	Milongodi	district	58	Milongodi	2012	42
1458	ward	1258	Lyenje	district	58	Lyenje	2012	36
1459	ward	1259	Chaume	district	58	Chaume	2012	117
1460	ward	1260	Mkonjowano	district	58	Mkonjowano	2012	97
1461	ward	1261	Luagala	district	58	Luagala	2012	85
1462	ward	1262	Ngunja	district	58	Ngunja	2012	147
1463	ward	1263	Mkwiti	district	58	Mkwiti	2012	122
1464	ward	1264	Litehu	district	58	Litehu	2012	90
1465	ward	1265	Nambahu	district	58	Nambahu	2012	104
1466	ward	1266	Miuta	district	58	Miuta	2012	28
1467	ward	1267	Kwanyama	district	58	Kwanyama	2012	42
1468	ward	1268	Mchichira	district	58	Mchichira	2012	62
1469	ward	1269	Chikongola	district	58	Chikongola	2012	32
1470	ward	1270	Dinduma	district	58	Dinduma	2012	34
1471	ward	1271	Mdumbwe	district	58	Mdumbwe	2012	53
1472	ward	1272	Majengo	district	59	Majengo	2012	1
1473	ward	1273	Chikongola	district	59	Chikongola	2012	32
1474	ward	1274	Likombe	district	59	Likombe	2012	41
1475	ward	1275	Railway	district	59	Railway	2012	2
1476	ward	1276	Shangani	district	59	Shangani	2012	6
1477	ward	1277	Vigaeni	district	59	Vigaeni	2012	1
1478	ward	1278	Chuno	district	59	Chuno	2012	3
1479	ward	1279	Jangwani	district	59	Jangwani	2012	1
1480	ward	1280	Kisungule	district	59	Kisungule	2012	4
1481	ward	1281	Mitengo	district	59	Mitengo	2012	11
1482	ward	1282	Mtonya	district	59	Mtonya	2012	42
1483	ward	1283	Ufukoni	district	59	Ufukoni	2012	18
1484	ward	1284	Magengeni	district	59	Magengeni	2012	14
1485	ward	1285	Rahaleo	district	59	Rahaleo	2012	1
1486	ward	1286	Naliendele	district	59	Naliendele	2012	45
1487	ward	1287	Mangaka	district	60	Mangaka	2012	167
1488	ward	1288	Nangomba	district	60	Nangomba	2012	284
1489	ward	1289	Lumesule	district	60	Lumesule	2012	373
1490	ward	1290	Likokona	district	60	Likokona	2012	493
1491	ward	1291	Sengenya	district	60	Sengenya	2012	393
1492	ward	1292	Mnanje	district	60	Mnanje	2012	132
1493	ward	1293	Mikangaula	district	60	Mikangaula	2012	232
1494	ward	1294	Maratani	district	60	Maratani	2012	188
1495	ward	1295	Nandete	district	60	Nandete	2012	247
1496	ward	1296	Mkonona	district	60	Mkonona	2012	688
1497	ward	1297	Nanyumbu	district	60	Nanyumbu	2012	578
1498	ward	1298	Masuguru	district	60	Masuguru	2012	0
1499	ward	1299	Chipuputa	district	60	Chipuputa	2012	269
1500	ward	1300	Napacho	district	60	Napacho	2012	897
1501	ward	1301	Mwenge Mtapika	district	61	Mwenge Mtapika	2012	48
1502	ward	1302	Temeke	district	61	Temeke	2012	3
1503	ward	1303	Mkuti	district	61	Mkuti	2012	3
1504	ward	1304	Mpindimbi	district	61	Mpindimbi	2012	243
1505	ward	1305	Nyasa	district	61	Nyasa	2012	23
1506	ward	1306	Marika	district	61	Marika	2012	154
1507	ward	1307	Mkomaindo	district	61	Mkomaindo	2012	6
1508	ward	1308	Mtandi	district	61	Mtandi	2012	48
1509	ward	1309	Jida	district	61	Jida	2012	5
1510	ward	1310	Migongo	district	61	Migongo	2012	10
1511	ward	1311	Mwenge	district	61	Mwenge	2012	1
1512	ward	1312	Sululu	district	61	Sululu	2012	55
1513	ward	1313	Kalulu	district	62	Kalulu	2012	2291
1514	ward	1314	Ligunga	district	62	Ligunga	2012	698
1515	ward	1315	Mlingoti  Mashariki	district	62	Mlingoti  Mashariki	2012	1
1516	ward	1316	Mindu	district	62	Mindu	2012	555
1517	ward	1317	Ngapa	district	62	Ngapa	2012	455
1518	ward	1318	Nakapanya	district	62	Nakapanya	2012	1280
1519	ward	1319	Muhuwesi	district	62	Muhuwesi	2012	1721
1520	ward	1320	Tuwemacho	district	62	Tuwemacho	2012	222
1521	ward	1321	Ligoma	district	62	Ligoma	2012	327
1522	ward	1322	Misechela	district	62	Misechela	2012	1095
1523	ward	1323	Namasakata	district	62	Namasakata	2012	268
1524	ward	1324	Mtina	district	62	Mtina	2012	362
1525	ward	1325	Mchesi	district	62	Mchesi	2012	576
1526	ward	1326	Lukumbule	district	62	Lukumbule	2012	1477
1527	ward	1327	Nalasi-Magharibi	district	62	Nalasi-Magharibi	2012	145
1528	ward	1328	Mchoteka	district	62	Mchoteka	2012	343
1529	ward	1329	Marumba	district	62	Marumba	2012	306
1530	ward	1330	Mbesa	district	62	Mbesa	2012	791
1531	ward	1331	Mlingoti  Magharibi	district	62	Mlingoti  Magharibi	2012	143
1532	ward	1332	Kidodoma	district	62	Kidodoma	2012	291
1533	ward	1333	Nandembo	district	62	Nandembo	2012	213
1534	ward	1334	Nampungu	district	62	Nampungu	2012	1547
1535	ward	1335	Matemanga	district	62	Matemanga	2012	185
1536	ward	1336	Namwinyu	district	62	Namwinyu	2012	948
1537	ward	1337	Mbati	district	62	Mbati	2012	210
1538	ward	1338	Nalasi Mashariki	district	62	Nalasi Mashariki	2012	413
1539	ward	1339	Mchuluka	district	62	Mchuluka	2012	68
1540	ward	1340	Namiungo	district	62	Namiungo	2012	298
1541	ward	1341	Jakika	district	62	Jakika	2012	655
1542	ward	1342	Masonya	district	62	Masonya	2012	955
1543	ward	1343	Sisikwasisi	district	62	Sisikwasisi	2012	151
1544	ward	1344	Mchangani	district	62	Mchangani	2012	49
1545	ward	1345	Majengo	district	62	Majengo	2012	1
1546	ward	1346	Nanjoka	district	62	Nanjoka	2012	21
1547	ward	1347	Nakayaya	district	62	Nakayaya	2012	29
1548	ward	1348	Wino	district	63	Wino	2012	735
1549	ward	1349	Ndongosi	district	63	Ndongosi	2012	2218
1550	ward	1350	Matumbi	district	63	Matumbi	2012	2310
1551	ward	1351	Mpandangino	district	63	Mpandangino	2012	191
1552	ward	1352	Gumbiro	district	63	Gumbiro	2012	1041
1553	ward	1353	Mpitimbi	district	63	Mpitimbi	2012	373
1554	ward	1354	Muhuruku	district	63	Muhuruku	2012	1636
1555	ward	1355	Magagura	district	63	Magagura	2012	583
1556	ward	1356	Litisha	district	63	Litisha	2012	390
1557	ward	1357	Kilagano	district	63	Kilagano	2012	838
1558	ward	1358	Maposeni	district	63	Maposeni	2012	377
1559	ward	1359	Peramiho	district	63	Peramiho	2012	66
1560	ward	1360	Mahanje	district	63	Mahanje	2012	1340
1561	ward	1361	Matimira	district	63	Matimira	2012	621
1562	ward	1362	Mtyangimbole	district	63	Mtyangimbole	2012	200
1563	ward	1363	Mkongotema	district	63	Mkongotema	2012	1366
1564	ward	1364	Mbinga Mhalule	district	63	Mbinga Mhalule	2012	236
1565	ward	1365	Ruanda	district	64	Ruanda	2012	513
1566	ward	1366	Litumbandyosi	district	64	Litumbandyosi	2012	759
1567	ward	1367	Kigonsera	district	64	Kigonsera	2012	152
1568	ward	1368	Kihangi Mahuka	district	64	Kihangi Mahuka	2012	155
1569	ward	1369	Utiri	district	64	Utiri	2012	68
1570	ward	1370	Mbinga Mjini	district	64	Mbinga Mjini	2012	66
1571	ward	1371	Kilimani	district	64	Kilimani	2012	61
1572	ward	1372	Mbangamao	district	64	Mbangamao	2012	172
1573	ward	1373	Kihungu	district	64	Kihungu	2012	108
1574	ward	1374	Kikolo	district	64	Kikolo	2012	66
1575	ward	1375	Kambarage	district	64	Kambarage	2012	45
1576	ward	1376	Mapera	district	64	Mapera	2012	39
1577	ward	1377	Kipapa	district	64	Kipapa	2012	22
1578	ward	1378	Kipololo	district	64	Kipololo	2012	30
1579	ward	1379	Nyoni	district	64	Nyoni	2012	89
1580	ward	1380	Luwaita	district	64	Luwaita	2012	38
1581	ward	1381	Maguu	district	64	Maguu	2012	62
1582	ward	1382	Kitumbalomo	district	64	Kitumbalomo	2012	188
1583	ward	1383	Mkako	district	64	Mkako	2012	295
1584	ward	1384	Mikalanga	district	64	Mikalanga	2012	86
1585	ward	1385	Langiro	district	64	Langiro	2012	77
1586	ward	1386	Mbuji	district	64	Mbuji	2012	77
1587	ward	1387	Litembo	district	64	Litembo	2012	50
1588	ward	1388	Ngima	district	64	Ngima	2012	47
1589	ward	1389	Myangayanga	district	64	Myangayanga	2012	78
1590	ward	1390	Mkumbi	district	64	Mkumbi	2012	72
1591	ward	1391	Linda	district	64	Linda	2012	103
1592	ward	1392	Matiri	district	64	Matiri	2012	222
1593	ward	1393	Ukata	district	64	Ukata	2012	95
1594	ward	1394	Kitanda	district	64	Kitanda	2012	213
1595	ward	1395	Kitura	district	64	Kitura	2012	42
1596	ward	1396	Namswea	district	64	Namswea	2012	392
1597	ward	1397	Mpepai	district	64	Mpepai	2012	371
1598	ward	1398	Mpapa	district	64	Mpapa	2012	107
1599	ward	1399	Mjini	district	65	Mjini	2012	4
1600	ward	1400	Majengo	district	65	Majengo	2012	1
1601	ward	1401	Misufini	district	65	Misufini	2012	1
1602	ward	1402	Mfaranyaki	district	65	Mfaranyaki	2012	1
1603	ward	1403	Lizaboni	district	65	Lizaboni	2012	5
1604	ward	1404	Matarawe	district	65	Matarawe	2012	1
1605	ward	1405	Bombambili	district	65	Bombambili	2012	5
1606	ward	1406	Matogoro	district	65	Matogoro	2012	45
1607	ward	1407	Ruvuma	district	65	Ruvuma	2012	6
1608	ward	1408	Subira	district	65	Subira	2012	76
1609	ward	1409	Ruhuwiko	district	65	Ruhuwiko	2012	19
1610	ward	1410	Mshangano	district	65	Mshangano	2012	46
1611	ward	1411	Mletele	district	65	Mletele	2012	51
1612	ward	1412	Seedfarm	district	65	Seedfarm	2012	7
1613	ward	1413	Tanga	district	65	Tanga	2012	117
1614	ward	1414	Msamala	district	65	Msamala	2012	21
1615	ward	1415	Mwengemshindo	district	65	Mwengemshindo	2012	26
1616	ward	1416	Mjimwema	district	65	Mjimwema	2012	24
1617	ward	1417	Mateka	district	65	Mateka	2012	7
1618	ward	1418	Ndilimalitembo	district	65	Ndilimalitembo	2012	27
1619	ward	1419	Rwinga	district	66	Rwinga	2012	257
1620	ward	1420	Mkongo	district	66	Mkongo	2012	387
1621	ward	1421	Ligera	district	66	Ligera	2012	1303
1622	ward	1422	Lusewa	district	66	Lusewa	2012	3983
1623	ward	1423	Magazini	district	66	Magazini	2012	3274
1624	ward	1424	Msindo	district	66	Msindo	2012	60
1625	ward	1425	Luchili	district	66	Luchili	2012	316
1626	ward	1426	Namabengo	district	66	Namabengo	2012	164
1627	ward	1427	Kitanda	district	66	Kitanda	2012	213
1628	ward	1428	Luegu	district	66	Luegu	2012	96
1629	ward	1429	Namtumbo	district	66	Namtumbo	2012	472
1630	ward	1430	Mgombasi	district	66	Mgombasi	2012	1628
1631	ward	1431	Litola	district	66	Litola	2012	300
1632	ward	1432	Likuyuseka	district	66	Likuyuseka	2012	6104
1633	ward	1433	Mputa	district	66	Mputa	2012	241
1634	ward	1434	Hanga	district	66	Hanga	2012	307
1635	ward	1435	Limamu	district	66	Limamu	2012	493
1636	ward	1436	Mchomoro	district	66	Mchomoro	2012	2380
1637	ward	1437	Liparamba	district	67	Liparamba	2012	1188
1638	ward	1438	Tingi	district	67	Tingi	2012	106
1639	ward	1439	Chiwanda	district	67	Chiwanda	2012	127
1640	ward	1440	Mtipwili	district	67	Mtipwili	2012	117
1641	ward	1441	Kingerikiti	district	67	Kingerikiti	2012	132
1642	ward	1442	Luhangarasi	district	67	Luhangarasi	2012	53
1643	ward	1443	Kilosa	district	67	Kilosa	2012	58
1644	ward	1444	Mbambabay	district	67	Mbambabay	2012	89
1645	ward	1445	Lipingo	district	67	Lipingo	2012	125
1646	ward	1446	Liuli	district	67	Liuli	2012	116
1647	ward	1447	Kihagara	district	67	Kihagara	2012	76
1648	ward	1448	Ngumbo	district	67	Ngumbo	2012	117
1649	ward	1449	Liwundi	district	67	Liwundi	2012	100
1650	ward	1450	Mbaha	district	67	Mbaha	2012	75
1651	ward	1451	Lituhi	district	67	Lituhi	2012	188
1652	ward	1452	Kalenga	district	68	Kalenga	2012	44
1653	ward	1453	Kiwere	district	68	Kiwere	2012	298
1654	ward	1454	Nzihi	district	68	Nzihi	2012	222
1655	ward	1455	Ulanda	district	68	Ulanda	2012	194
1656	ward	1456	Mseke	district	68	Mseke	2012	242
1657	ward	1457	Maguliwa	district	68	Maguliwa	2012	143
1658	ward	1458	Mgama	district	68	Mgama	2012	217
1659	ward	1459	Ifunda	district	68	Ifunda	2012	334
1660	ward	1460	Lumuli	district	68	Lumuli	2012	224
1661	ward	1461	Maboga	district	68	Maboga	2012	639
1662	ward	1462	Wasa	district	68	Wasa	2012	458
1663	ward	1463	Mahuninga	district	68	Mahuninga	2012	909
1664	ward	1464	Idodi	district	68	Idodi	2012	8408
1665	ward	1465	Mlowa	district	68	Mlowa	2012	982
1666	ward	1466	Itunundu	district	68	Itunundu	2012	692
1667	ward	1467	Ilolo Mpya	district	68	Ilolo Mpya	2012	223
1668	ward	1468	Nduli	district	68	Nduli	2012	258
1669	ward	1469	Kihorogota	district	68	Kihorogota	2012	198
1670	ward	1470	Izazi	district	68	Izazi	2012	377
1671	ward	1471	Malenga Makali	district	68	Malenga Makali	2012	658
1672	ward	1472	Nyang'Oro	district	68	Nyang'Oro	2012	470
1673	ward	1473	Luhota	district	68	Luhota	2012	170
1674	ward	1474	Lyamgungwe	district	68	Lyamgungwe	2012	144
1675	ward	1475	Mlenge	district	68	Mlenge	2012	1853
1676	ward	1476	Migoli	district	68	Migoli	2012	753
1677	ward	1477	Kiyowela	district	69	Kiyowela	2012	806
1678	ward	1478	Makungu	district	69	Makungu	2012	368
1679	ward	1479	Mninga	district	69	Mninga	2012	207
1680	ward	1480	Kasanga	district	69	Kasanga	2012	35
1681	ward	1481	Igowole	district	69	Igowole	2012	256
1682	ward	1482	Mtambula	district	69	Mtambula	2012	155
1683	ward	1483	Itandula	district	69	Itandula	2012	198
1684	ward	1484	Mbalamaziwa	district	69	Mbalamaziwa	2012	188
1685	ward	1485	Idunda	district	69	Idunda	2012	146
1686	ward	1486	Malangali	district	69	Malangali	2012	140
1687	ward	1487	Nyololo	district	69	Nyololo	2012	421
1688	ward	1488	Ihowanza	district	69	Ihowanza	2012	299
1689	ward	1489	Ikweha	district	69	Ikweha	2012	367
1690	ward	1490	Sadani	district	69	Sadani	2012	329
1691	ward	1491	Igombavanu	district	69	Igombavanu	2012	219
1692	ward	1492	Bumilayinga	district	69	Bumilayinga	2012	210
1693	ward	1493	Mtwango	district	69	Mtwango	2012	162
1694	ward	1494	Isalavanu	district	69	Isalavanu	2012	162
1695	ward	1495	Rungemba	district	69	Rungemba	2012	218
1696	ward	1496	Ifwagi	district	69	Ifwagi	2012	338
1697	ward	1497	Mdabulo	district	69	Mdabulo	2012	201
1698	ward	1498	Ihalimba	district	69	Ihalimba	2012	339
1699	ward	1499	Kibengu	district	69	Kibengu	2012	578
1700	ward	1500	Mapanda	district	69	Mapanda	2012	516
1701	ward	1501	Mpanga	district	69	Mpanga	2012	132
1702	ward	1502	Ihanu	district	69	Ihanu	2012	294
1703	ward	1503	Luhanga	district	69	Luhanga	2012	304
1704	ward	1504	Kihesa	district	70	Kihesa	2012	4
1705	ward	1505	Mtwivila	district	70	Mtwivila	2012	36
1706	ward	1506	Gangilonga	district	70	Gangilonga	2012	6
1707	ward	1507	Kitanzini	district	70	Kitanzini	2012	1
1708	ward	1508	Ruaha	district	70	Ruaha	2012	41
1709	ward	1509	Mshindo	district	70	Mshindo	2012	0
1710	ward	1510	Mivinjeni	district	70	Mivinjeni	2012	0
1711	ward	1511	Mlandege	district	70	Mlandege	2012	1
1712	ward	1512	Mwangata	district	70	Mwangata	2012	9
1713	ward	1513	Kwakilosa	district	70	Kwakilosa	2012	1
1714	ward	1514	Makorongoni	district	70	Makorongoni	2012	1
1715	ward	1515	Ilala	district	70	Ilala	2012	2
1716	ward	1516	Mkwawa	district	70	Mkwawa	2012	28
1717	ward	1517	Kitwiru	district	70	Kitwiru	2012	32
1718	ward	1518	Isakalilo	district	70	Isakalilo	2012	44
1719	ward	1519	Nduli	district	70	Nduli	2012	258
1720	ward	1520	Image	district	71	Image	2012	174
1721	ward	1521	Irole	district	71	Irole	2012	430
1722	ward	1522	Ilula	district	71	Ilula	2012	111
1723	ward	1523	Uhambingeto	district	71	Uhambingeto	2012	297
1724	ward	1524	Udekwa	district	71	Udekwa	2012	2432
1725	ward	1525	Mahenge	district	71	Mahenge	2012	5
1726	ward	1526	Mtitu	district	71	Mtitu	2012	129
1727	ward	1527	Dabaga	district	71	Dabaga	2012	271
1728	ward	1528	Ukumbi	district	71	Ukumbi	2012	215
1729	ward	1529	Ukwega	district	71	Ukwega	2012	804
1730	ward	1530	Boma La Ng'Ombe	district	71	Boma La Ng'Ombe	2012	154
1731	ward	1531	Idete	district	71	Idete	2012	721
1732	ward	1532	Masisiwe	district	71	Masisiwe	2012	244
1733	ward	1533	Ng'Uruhe	district	71	Ng'Uruhe	2012	247
1734	ward	1534	Ng'Ang'Ange	district	71	Ng'Ang'Ange	2012	96
1735	ward	1535	Ihimbo	district	71	Ihimbo	2012	147
1736	ward	1536	Lugalo	district	71	Lugalo	2012	176
1737	ward	1537	Nyalumbu	district	71	Nyalumbu	2012	47
1738	ward	1538	Mlafu	district	71	Mlafu	2012	224
1739	ward	1539	Ibumu	district	71	Ibumu	2012	477
1740	ward	1540	Ruaha Mbuyuni	district	71	Ruaha Mbuyuni	2012	986
1741	ward	1541	Kimala	district	71	Kimala	2012	622
1742	ward	1542	Sao Hill	district	72	Sao Hill	2012	472
1743	ward	1543	Boma	district	72	Boma	2012	42
1744	ward	1544	Kinyanambo	district	72	Kinyanambo	2012	100
1745	ward	1545	Kambikatoto	district	73	Kambikatoto	2012	4347
1746	ward	1546	Mafyeko	district	73	Mafyeko	2012	4222
1747	ward	1547	Matwiga	district	73	Matwiga	2012	1134
1748	ward	1548	Mtanila	district	73	Mtanila	2012	684
1749	ward	1549	Lupatingatinga	district	73	Lupatingatinga	2012	607
1750	ward	1550	Luwalaje	district	73	Luwalaje	2012	2912
1751	ward	1551	Sangambi	district	73	Sangambi	2012	581
1752	ward	1552	Itewe	district	73	Itewe	2012	104
1753	ward	1553	Chokaa	district	73	Chokaa	2012	736
1754	ward	1554	Mbugani	district	73	Mbugani	2012	214
1755	ward	1555	Chalangwa	district	73	Chalangwa	2012	186
1756	ward	1556	Ifumbo	district	73	Ifumbo	2012	213
1757	ward	1557	Kanga	district	73	Kanga	2012	549
1758	ward	1558	Galula	district	73	Galula	2012	94
1759	ward	1559	Mbuyuni	district	73	Mbuyuni	2012	15
1760	ward	1560	Totowe	district	73	Totowe	2012	263
1761	ward	1561	Namkukwe	district	73	Namkukwe	2012	352
1762	ward	1562	Mkwajuni	district	73	Mkwajuni	2012	41
1763	ward	1563	Mbangala	district	73	Mbangala	2012	495
1764	ward	1564	Kapalala	district	73	Kapalala	2012	1419
1765	ward	1565	Gua	district	73	Gua	2012	4402
1766	ward	1566	Ngwala	district	73	Ngwala	2012	3464
1767	ward	1567	Mamba	district	73	Mamba	2012	40
1768	ward	1568	Ifyenkenya	district	73	Ifyenkenya	2012	84
1769	ward	1569	Magamba	district	73	Magamba	2012	182
1770	ward	1570	Saza	district	73	Saza	2012	272
1771	ward	1571	Mwambani	district	73	Mwambani	2012	105
1772	ward	1572	Mkola	district	73	Mkola	2012	149
1773	ward	1573	Makongorosi	district	73	Makongorosi	2012	342
1774	ward	1574	Matundasi	district	73	Matundasi	2012	425
1775	ward	1575	Ihango	district	74	Ihango	2012	171
1776	ward	1576	Ulenje	district	74	Ulenje	2012	100
1777	ward	1577	Tembela	district	74	Tembela	2012	35
1778	ward	1578	Ijombe	district	74	Ijombe	2012	80
1779	ward	1579	Santilya	district	74	Santilya	2012	106
1780	ward	1580	Ilembo	district	74	Ilembo	2012	140
1781	ward	1581	Iwiji	district	74	Iwiji	2012	155
1782	ward	1582	Isuto	district	74	Isuto	2012	127
1783	ward	1583	Igale	district	74	Igale	2012	61
1784	ward	1584	Iwindi	district	74	Iwindi	2012	115
1785	ward	1585	Utengule Usongwe	district	74	Utengule Usongwe	2012	92
1786	ward	1586	Mshewe	district	74	Mshewe	2012	466
1787	ward	1587	Ikukwa	district	74	Ikukwa	2012	66
1788	ward	1588	Iyunga Mapinduzi	district	74	Iyunga Mapinduzi	2012	46
1789	ward	1589	Bonde La Songwe	district	74	Bonde La Songwe	2012	106
1790	ward	1590	Inyala	district	74	Inyala	2012	105
1791	ward	1591	Ilungu	district	74	Ilungu	2012	247
1792	ward	1592	Maendeleo	district	74	Maendeleo	2012	36
1793	ward	1593	Swaya	district	74	Swaya	2012	54
1794	ward	1594	Masoko	district	74	Masoko	2012	205
1795	ward	1595	Itawa	district	74	Itawa	2012	112
1796	ward	1596	Nsalala	district	74	Nsalala	2012	16
1797	ward	1597	Lwanjiro	district	74	Lwanjiro	2012	331
1798	ward	1598	Itewe	district	74	Itewe	2012	104
1799	ward	1599	Igoma	district	74	Igoma	2012	42
1800	ward	1600	Lusungo	district	75	Lusungo	2012	25
1801	ward	1601	Makwale	district	75	Makwale	2012	31
1802	ward	1602	Matema	district	75	Matema	2012	107
1803	ward	1603	Mwaya	district	75	Mwaya	2012	95
1804	ward	1604	Ndobo	district	75	Ndobo	2012	30
1805	ward	1605	Kajunjumele	district	75	Kajunjumele	2012	30
1806	ward	1606	Bujonde	district	75	Bujonde	2012	27
1807	ward	1607	Ikolo	district	75	Ikolo	2012	18
1808	ward	1608	Katumbasongwe	district	75	Katumbasongwe	2012	43
1809	ward	1609	Ngana	district	75	Ngana	2012	67
1810	ward	1610	Busale	district	75	Busale	2012	53
1811	ward	1611	Ipande	district	75	Ipande	2012	60
1812	ward	1612	Ikama	district	75	Ikama	2012	16
1813	ward	1613	Ipinda	district	75	Ipinda	2012	42
1814	ward	1614	Ngonga	district	75	Ngonga	2012	25
1815	ward	1615	Ikimba	district	75	Ikimba	2012	29
1816	ward	1616	Itope	district	75	Itope	2012	37
1817	ward	1617	Muungano	district	75	Muungano	2012	107
1818	ward	1618	Talatala	district	75	Talatala	2012	39
1819	ward	1619	Kyela	district	75	Kyela	2012	25
1820	ward	1620	Swaya	district	76	Swaya	2012	54
1821	ward	1621	Masebe	district	76	Masebe	2012	42
1822	ward	1622	Suma	district	76	Suma	2012	53
1823	ward	1623	Kandete	district	76	Kandete	2012	77
1824	ward	1624	Luteba	district	76	Luteba	2012	110
1825	ward	1625	Mpombo	district	76	Mpombo	2012	48
1826	ward	1626	Isange	district	76	Isange	2012	14
1827	ward	1627	Kabula	district	76	Kabula	2012	80
1828	ward	1628	Lwangwa	district	76	Lwangwa	2012	53
1829	ward	1629	Lufilyo	district	76	Lufilyo	2012	66
1830	ward	1630	Itete	district	76	Itete	2012	689
1831	ward	1631	Kisegese	district	76	Kisegese	2012	89
1832	ward	1632	Lupata	district	76	Lupata	2012	56
1833	ward	1633	Kambasegela	district	76	Kambasegela	2012	55
1834	ward	1634	Masukulu	district	76	Masukulu	2012	48
1835	ward	1635	Kisiba	district	76	Kisiba	2012	35
1836	ward	1636	Masoko	district	76	Masoko	2012	205
1837	ward	1637	Bujela	district	76	Bujela	2012	36
1838	ward	1638	Ilima	district	76	Ilima	2012	62
1839	ward	1639	Kisondela	district	76	Kisondela	2012	84
1840	ward	1640	Ikuti	district	76	Ikuti	2012	87
1841	ward	1641	Malindo	district	76	Malindo	2012	30
1842	ward	1642	Mpuguso	district	76	Mpuguso	2012	20
1843	ward	1643	Kikole	district	76	Kikole	2012	827
1844	ward	1644	Lufingo	district	76	Lufingo	2012	66
1845	ward	1645	Nkunga	district	76	Nkunga	2012	115
1846	ward	1646	Kyimo	district	76	Kyimo	2012	74
1847	ward	1647	Kinyala	district	76	Kinyala	2012	82
1848	ward	1648	Kiwira	district	76	Kiwira	2012	93
1849	ward	1649	Isongole	district	76	Isongole	2012	239
1850	ward	1650	Ikama	district	76	Ikama	2012	16
1851	ward	1651	Ibighi	district	76	Ibighi	2012	19
1852	ward	1652	Bagamoyo	district	76	Bagamoyo	2012	1
1853	ward	1653	Kawetele	district	76	Kawetele	2012	1
1854	ward	1654	Bulyaga	district	76	Bulyaga	2012	4
1855	ward	1655	Msasani	district	76	Msasani	2012	11
1856	ward	1656	Makandana	district	76	Makandana	2012	17
1857	ward	1657	Itumba	district	77	Itumba	2012	104
1858	ward	1658	Itale	district	77	Itale	2012	102
1859	ward	1659	Ibaba	district	77	Ibaba	2012	157
1860	ward	1660	Ndola	district	77	Ndola	2012	131
1861	ward	1661	Luswisi	district	77	Luswisi	2012	41
1862	ward	1662	Ngulilo	district	77	Ngulilo	2012	62
1863	ward	1663	Lubanda	district	77	Lubanda	2012	93
1864	ward	1664	Ngulugulu	district	77	Ngulugulu	2012	105
1865	ward	1665	Sange	district	77	Sange	2012	51
1866	ward	1666	Ikinga	district	77	Ikinga	2012	216
1867	ward	1667	Kafule	district	77	Kafule	2012	100
1868	ward	1668	Malangali	district	77	Malangali	2012	140
1869	ward	1669	Bupigu	district	77	Bupigu	2012	202
1870	ward	1670	Isongole	district	77	Isongole	2012	239
1871	ward	1671	Chitete	district	77	Chitete	2012	115
1872	ward	1672	Mbebe	district	77	Mbebe	2012	137
1873	ward	1673	Mlale	district	77	Mlale	2012	104
1874	ward	1674	Kalembo	district	77	Kalembo	2012	52
1875	ward	1675	Ihanda	district	78	Ihanda	2012	130
1876	ward	1676	Bara	district	78	Bara	2012	302
1877	ward	1677	Nanyala	district	78	Nanyala	2012	223
1878	ward	1678	Nambinzo	district	78	Nambinzo	2012	575
1879	ward	1679	Itaka	district	78	Itaka	2012	161
1880	ward	1680	Isansa	district	78	Isansa	2012	555
1881	ward	1681	Ruanda	district	78	Ruanda	2012	513
1882	ward	1682	Iyula	district	78	Iyula	2012	271
1883	ward	1683	Nyambili	district	78	Nyambili	2012	366
1884	ward	1684	Mlangali	district	78	Mlangali	2012	140
1885	ward	1685	Myovizi	district	78	Myovizi	2012	104
1886	ward	1686	Igamba	district	78	Igamba	2012	181
1887	ward	1687	Halungu	district	78	Halungu	2012	169
1888	ward	1688	Msia	district	78	Msia	2012	243
1889	ward	1689	Mlowo	district	78	Mlowo	2012	70
1890	ward	1690	Ipunga	district	78	Ipunga	2012	104
1891	ward	1691	Isandula	district	78	Isandula	2012	158
1892	ward	1692	Vwawa	district	78	Vwawa	2012	135
1893	ward	1693	Luhanga	district	79	Luhanga	2012	304
1894	ward	1694	Madibira	district	79	Madibira	2012	1362
1895	ward	1695	Mawindi	district	79	Mawindi	2012	211
1896	ward	1696	Ihahi	district	79	Ihahi	2012	61
1897	ward	1697	Mapogoro	district	79	Mapogoro	2012	560
1898	ward	1698	Chimala	district	79	Chimala	2012	64
1899	ward	1699	Utengule Usangu	district	79	Utengule Usangu	2012	232
1900	ward	1700	Ruiwa	district	79	Ruiwa	2012	440
1901	ward	1701	Mahongole	district	79	Mahongole	2012	74
1902	ward	1702	Ubaruku	district	79	Ubaruku	2012	43
1903	ward	1703	Igurusi	district	79	Igurusi	2012	96
1904	ward	1704	Kongolo	district	79	Kongolo	2012	88
1905	ward	1705	Mwatenga	district	79	Mwatenga	2012	165
1906	ward	1706	Imalilosongwe	district	79	Imalilosongwe	2012	1376
1907	ward	1707	Igava	district	79	Igava	2012	3650
1908	ward	1708	Ipwani	district	79	Ipwani	2012	311
1909	ward	1709	Itambaleo	district	79	Itambaleo	2012	382
1910	ward	1710	Miyombweni	district	79	Miyombweni	2012	388
1911	ward	1711	Rujewa	district	79	Rujewa	2012	187
1912	ward	1712	Sisimba	district	80	Sisimba	2012	4
1913	ward	1713	Isanga	district	80	Isanga	2012	1
1914	ward	1714	Iganzo	district	80	Iganzo	2012	6
1915	ward	1715	Mwansekwa	district	80	Mwansekwa	2012	15
1916	ward	1716	Itagano	district	80	Itagano	2012	24
1917	ward	1717	Itezi	district	80	Itezi	2012	12
1918	ward	1718	Nsalaga	district	80	Nsalaga	2012	24
1919	ward	1719	Igawilo	district	80	Igawilo	2012	5
1920	ward	1720	Iganjo	district	80	Iganjo	2012	6
1921	ward	1721	Uyole	district	80	Uyole	2012	12
1922	ward	1722	Iduda	district	80	Iduda	2012	13
1923	ward	1723	Mwasanga	district	80	Mwasanga	2012	6
1924	ward	1724	Tembela	district	80	Tembela	2012	35
1925	ward	1725	Ilomba	district	80	Ilomba	2012	13
1926	ward	1726	Mwakibete	district	80	Mwakibete	2012	7
1927	ward	1727	Ilemi	district	80	Ilemi	2012	8
1928	ward	1728	Isyesye	district	80	Isyesye	2012	12
1929	ward	1729	Ruanda	district	80	Ruanda	2012	513
1930	ward	1730	Iyela	district	80	Iyela	2012	9
1931	ward	1731	Sinde	district	80	Sinde	2012	1
1932	ward	1732	Maanga	district	80	Maanga	2012	0
1933	ward	1733	Mbalizi Rd	district	80	Mbalizi Rd	2012	1
1934	ward	1734	Forest	district	80	Forest	2012	1
1935	ward	1735	Mabatini	district	80	Mabatini	2012	1
1936	ward	1736	Nzovwe	district	80	Nzovwe	2012	7
1937	ward	1737	Kalobe	district	80	Kalobe	2012	6
1938	ward	1738	Iyunga	district	80	Iyunga	2012	12
1939	ward	1739	Iwambi	district	80	Iwambi	2012	11
1940	ward	1740	Itende	district	80	Itende	2012	13
1941	ward	1741	Iziwa	district	80	Iziwa	2012	17
1942	ward	1742	Nsoho	district	80	Nsoho	2012	3
1943	ward	1743	Majengo	district	80	Majengo	2012	1
1944	ward	1744	Ghana	district	80	Ghana	2012	1
1945	ward	1745	Nonde	district	80	Nonde	2012	1
1946	ward	1746	Itiji	district	80	Itiji	2012	2
1947	ward	1747	Maendeleo	district	80	Maendeleo	2012	36
1948	ward	1748	Chilulumo	district	81	Chilulumo	2012	245
1949	ward	1749	Kamsamba	district	81	Kamsamba	2012	191
1950	ward	1750	Ivuna	district	81	Ivuna	2012	682
1951	ward	1751	Mpapa	district	81	Mpapa	2012	107
1952	ward	1752	Mkulwe	district	81	Mkulwe	2012	230
1953	ward	1753	Chitete	district	81	Chitete	2012	115
1954	ward	1754	Msangano	district	81	Msangano	2012	352
1955	ward	1755	Chiwezi	district	81	Chiwezi	2012	363
1956	ward	1756	Nkangamo	district	81	Nkangamo	2012	297
1957	ward	1757	Ndalembo	district	81	Ndalembo	2012	557
1958	ward	1758	Kapele	district	81	Kapele	2012	600
1959	ward	1759	Nzoka	district	81	Nzoka	2012	347
1960	ward	1760	Myunga	district	81	Myunga	2012	397
1961	ward	1761	Tunduma	district	82	Tunduma	2012	90
1962	ward	1762	Urughu	district	83	Urughu	2012	462
1963	ward	1763	Mtekente	district	83	Mtekente	2012	454
1964	ward	1764	Mtoa	district	83	Mtoa	2012	364
1965	ward	1765	Mgongo	district	83	Mgongo	2012	227
1966	ward	1766	Shelui	district	83	Shelui	2012	112
1967	ward	1767	Ntwike	district	83	Ntwike	2012	414
1968	ward	1768	Tulya	district	83	Tulya	2012	105
1969	ward	1769	Kidaru	district	83	Kidaru	2012	273
1970	ward	1770	Kisiriri	district	83	Kisiriri	2012	296
1971	ward	1771	Kiomboi	district	83	Kiomboi	2012	300
1972	ward	1772	Kinampanda	district	83	Kinampanda	2012	225
1973	ward	1773	Ulemo	district	83	Ulemo	2012	261
1974	ward	1774	Kyengege	district	83	Kyengege	2012	124
1975	ward	1775	Ndago	district	83	Ndago	2012	341
1976	ward	1776	Mbelekese	district	83	Mbelekese	2012	231
1977	ward	1777	Kaselya	district	83	Kaselya	2012	140
1978	ward	1778	Ndulungu	district	83	Ndulungu	2012	219
1979	ward	1779	Mudida	district	84	Mudida	2012	96
1980	ward	1780	Makuro	district	84	Makuro	2012	109
1981	ward	1781	Ikhanoda	district	84	Ikhanoda	2012	83
1982	ward	1782	Mwasauya	district	84	Mwasauya	2012	56
1983	ward	1783	Msange	district	84	Msange	2012	81
1984	ward	1784	Maghojoa	district	84	Maghojoa	2012	62
1985	ward	1785	Itaja	district	84	Itaja	2012	86
1986	ward	1786	Ngimu	district	84	Ngimu	2012	215
1987	ward	1787	Mughunga	district	84	Mughunga	2012	569
1988	ward	1788	Mgori	district	84	Mgori	2012	170
1989	ward	1789	Mughamo	district	84	Mughamo	2012	61
1990	ward	1790	Kinyagigi	district	84	Kinyagigi	2012	73
1991	ward	1791	Merya	district	84	Merya	2012	62
1992	ward	1792	Kinyeto	district	84	Kinyeto	2012	49
1993	ward	1793	Ntonge	district	84	Ntonge	2012	72
1994	ward	1794	Ilongero	district	84	Ilongero	2012	59
1995	ward	1795	Mrama	district	84	Mrama	2012	53
1996	ward	1796	Kijota	district	84	Kijota	2012	85
1997	ward	1797	Mtinko	district	84	Mtinko	2012	121
1998	ward	1798	Ughandi	district	84	Ughandi	2012	143
1999	ward	1799	Msisi	district	84	Msisi	2012	300
2000	ward	1800	Manyoni	district	85	Manyoni	2012	165
2001	ward	1801	Solya	district	85	Solya	2012	134
2002	ward	1802	Makuru	district	85	Makuru	2012	761
2003	ward	1803	Chikuyu	district	85	Chikuyu	2012	115
2004	ward	1804	Makanda	district	85	Makanda	2012	305
2005	ward	1805	Kintinku	district	85	Kintinku	2012	96
2006	ward	1806	Mvumi	district	85	Mvumi	2012	382
2007	ward	1807	Majiri	district	85	Majiri	2012	443
2008	ward	1808	Sasajila	district	85	Sasajila	2012	200
2009	ward	1809	Idodyandole	district	85	Idodyandole	2012	475
2010	ward	1810	Chikola	district	85	Chikola	2012	366
2011	ward	1811	Heka	district	85	Heka	2012	447
2012	ward	1812	Nkonko	district	85	Nkonko	2012	1110
2013	ward	1813	Sanza	district	85	Sanza	2012	273
2014	ward	1814	Isseke	district	85	Isseke	2012	2912
2015	ward	1815	Rungwa	district	85	Rungwa	2012	5512
2016	ward	1816	Mgandu	district	85	Mgandu	2012	1436
2017	ward	1817	Itigi Mjini	district	85	Itigi Mjini	2012	51
2018	ward	1818	Ipande	district	85	Ipande	2012	60
2019	ward	1819	Sanjaranda	district	85	Sanjaranda	2012	451
2020	ward	1820	Aghondi	district	85	Aghondi	2012	302
2021	ward	1821	Mkwese	district	85	Mkwese	2012	328
2022	ward	1822	Muhalala	district	85	Muhalala	2012	111
2023	ward	1823	Saranda	district	85	Saranda	2012	299
2024	ward	1824	Makutupora	district	85	Makutupora	2012	208
2025	ward	1825	Sasilo	district	85	Sasilo	2012	507
2026	ward	1826	Mwamagembe	district	85	Mwamagembe	2012	8009
2027	ward	1827	Mitundu	district	85	Mitundu	2012	516
2028	ward	1828	Kitaraka	district	85	Kitaraka	2012	2012
2029	ward	1829	Itigi Majengo	district	85	Itigi Majengo	2012	38
2030	ward	1830	Mtipa	district	86	Mtipa	2012	107
2031	ward	1831	Mughanga	district	86	Mughanga	2012	0
2032	ward	1832	Mitunduru	district	86	Mitunduru	2012	15
2033	ward	1833	Majengo	district	86	Majengo	2012	1
2034	ward	1834	Umyambwa	district	86	Umyambwa	2012	74
2035	ward	1835	Mungu Maji	district	86	Mungu Maji	2012	25
2036	ward	1836	Unyamikumbi	district	86	Unyamikumbi	2012	107
2037	ward	1837	Mtamaa	district	86	Mtamaa	2012	86
2038	ward	1838	Kindai	district	86	Kindai	2012	7
2039	ward	1839	Ipembe	district	86	Ipembe	2012	0
2040	ward	1840	Utemini	district	86	Utemini	2012	8
2041	ward	1841	Mwankoko	district	86	Mwankoko	2012	136
2042	ward	1842	Mandewa	district	86	Mandewa	2012	67
2043	ward	1843	Minga	district	86	Minga	2012	5
2044	ward	1844	Misuna	district	86	Misuna	2012	10
2045	ward	1845	Uhamaka	district	86	Uhamaka	2012	76
2046	ward	1846	Puma	district	87	Puma	2012	66
2047	ward	1847	Kituntu	district	87	Kituntu	2012	105
2048	ward	1848	Mungaa	district	87	Mungaa	2012	159
2049	ward	1849	Siuyu	district	87	Siuyu	2012	80
2050	ward	1850	Kikio	district	87	Kikio	2012	234
2051	ward	1851	Lighwa	district	87	Lighwa	2012	112
2052	ward	1852	Misughaa	district	87	Misughaa	2012	191
2053	ward	1853	Ntuntu	district	87	Ntuntu	2012	190
2054	ward	1854	Dung'Unyi	district	87	Dung'Unyi	2012	110
2055	ward	1855	Mang'Onyi	district	87	Mang'Onyi	2012	358
2056	ward	1856	Mkiwa	district	87	Mkiwa	2012	502
2057	ward	1857	Issuna	district	87	Issuna	2012	869
2058	ward	1858	Unyahati	district	87	Unyahati	2012	240
2059	ward	1859	Ikungi	district	87	Ikungi	2012	168
2060	ward	1860	Iglansoni	district	87	Iglansoni	2012	1132
2061	ward	1861	Iseke	district	87	Iseke	2012	133
2062	ward	1862	Ihanja	district	87	Ihanja	2012	231
2063	ward	1863	Minyughe	district	87	Minyughe	2012	577
2064	ward	1864	Muhintiri	district	87	Muhintiri	2012	254
2065	ward	1865	Iyumbu	district	87	Iyumbu	2012	38
2066	ward	1866	Mgungira	district	87	Mgungira	2012	491
2067	ward	1867	Mwaru	district	87	Mwaru	2012	499
2068	ward	1868	Ighombwe	district	87	Ighombwe	2012	1105
2069	ward	1869	Mtunduru	district	87	Mtunduru	2012	292
2070	ward	1870	Sepuka	district	87	Sepuka	2012	131
2071	ward	1871	Irisya	district	87	Irisya	2012	76
2072	ward	1872	Mpambala	district	88	Mpambala	2012	228
2073	ward	1873	Mwangeza	district	88	Mwangeza	2012	790
2074	ward	1874	Mwanga	district	88	Mwanga	2012	159
2075	ward	1875	Nkinto	district	88	Nkinto	2012	151
2076	ward	1876	Ibaga	district	88	Ibaga	2012	228
2077	ward	1877	Gumanga	district	88	Gumanga	2012	271
2078	ward	1878	Msingi	district	88	Msingi	2012	141
2079	ward	1879	Nduguti	district	88	Nduguti	2012	96
2080	ward	1880	Ilunda	district	88	Ilunda	2012	213
2081	ward	1881	Kinyangiri	district	88	Kinyangiri	2012	228
2082	ward	1882	Iguguno	district	88	Iguguno	2012	215
2083	ward	1883	Miganga	district	88	Miganga	2012	107
2084	ward	1884	Matongo	district	88	Matongo	2012	117
2085	ward	1885	Kikhonda	district	88	Kikhonda	2012	96
2086	ward	1886	Puge	district	89	Puge	2012	158
2087	ward	1887	Nkiniziwa	district	89	Nkiniziwa	2012	337
2088	ward	1888	Budushi	district	89	Budushi	2012	141
2089	ward	1889	Mwakashanhala	district	89	Mwakashanhala	2012	681
2090	ward	1890	Tongi	district	89	Tongi	2012	322
2091	ward	1891	Mizibaziba	district	89	Mizibaziba	2012	238
2092	ward	1892	Milambo Itobo	district	89	Milambo Itobo	2012	241
2093	ward	1893	Magengati	district	89	Magengati	2012	145
2094	ward	1894	Ndala	district	89	Ndala	2012	187
2095	ward	1895	Nzega Mjini	district	89	Nzega Mjini	2012	19
2096	ward	1896	Wela	district	89	Wela	2012	101
2097	ward	1897	Mbogwe	district	89	Mbogwe	2012	64
2098	ward	1898	Miguwa	district	89	Miguwa	2012	214
2099	ward	1899	Itilo	district	89	Itilo	2012	171
2100	ward	1900	Muhugi	district	89	Muhugi	2012	330
2101	ward	1901	Utwigu	district	89	Utwigu	2012	369
2102	ward	1902	Ijanija	district	89	Ijanija	2012	108
2103	ward	1903	Nzegandogo	district	89	Nzegandogo	2012	118
2104	ward	1904	Lusu	district	89	Lusu	2012	291
2105	ward	1905	Nata	district	89	Nata	2012	118
2106	ward	1906	Isanzu	district	89	Isanzu	2012	180
2107	ward	1907	Itobo	district	89	Itobo	2012	92
2108	ward	1908	Mwangoye	district	89	Mwangoye	2012	144
2109	ward	1909	Sigili	district	89	Sigili	2012	120
2110	ward	1910	Mwamala	district	89	Mwamala	2012	206
2111	ward	1911	Igusule	district	89	Igusule	2012	324
2112	ward	1912	Shigamba	district	89	Shigamba	2012	63
2113	ward	1913	Kasela	district	89	Kasela	2012	100
2114	ward	1914	Karitu	district	89	Karitu	2012	97
2115	ward	1915	Bukene	district	89	Bukene	2012	26
2116	ward	1916	Mogwa	district	89	Mogwa	2012	275
2117	ward	1917	Mambali	district	89	Mambali	2012	900
2118	ward	1918	Kahamanhalanga	district	89	Kahamanhalanga	2012	235
2119	ward	1919	Uduka	district	89	Uduka	2012	54
2120	ward	1920	Semembela	district	89	Semembela	2012	437
2121	ward	1921	Isagenhe	district	89	Isagenhe	2012	181
2122	ward	1922	Ikindwa	district	89	Ikindwa	2012	119
2123	ward	1923	Igunga	district	90	Igunga	2012	361
2124	ward	1924	Itumba	district	90	Itumba	2012	104
2125	ward	1925	Bukoko	district	90	Bukoko	2012	276
2126	ward	1926	Isakamaliwa	district	90	Isakamaliwa	2012	232
2127	ward	1927	Nyandekwa	district	90	Nyandekwa	2012	106
2128	ward	1928	Nanga	district	90	Nanga	2012	264
2129	ward	1929	Nguvumoja	district	90	Nguvumoja	2012	261
2130	ward	1930	Mbutu	district	90	Mbutu	2012	409
2131	ward	1931	Kining'Inila	district	90	Kining'Inila	2012	213
2132	ward	1932	Igurubi	district	90	Igurubi	2012	280
2133	ward	1933	Mwamashimba	district	90	Mwamashimba	2012	226
2134	ward	1934	Kinungu	district	90	Kinungu	2012	251
2135	ward	1935	Ntobo	district	90	Ntobo	2012	194
2136	ward	1936	Itunduru	district	90	Itunduru	2012	219
2137	ward	1937	Mwamashiga	district	90	Mwamashiga	2012	190
2138	ward	1938	Choma	district	90	Choma	2012	186
2139	ward	1939	Mwashiku	district	90	Mwashiku	2012	219
2140	ward	1940	Ziba	district	90	Ziba	2012	218
2141	ward	1941	Ndembezi	district	90	Ndembezi	2012	136
2142	ward	1942	Nkinga	district	90	Nkinga	2012	253
2143	ward	1943	Ngulu	district	90	Ngulu	2012	128
2144	ward	1944	Simbo	district	90	Simbo	2012	323
2145	ward	1945	Igowero	district	90	Igowero	2012	871
2146	ward	1946	Mwisi	district	90	Mwisi	2012	168
2147	ward	1947	Chabutwa	district	90	Chabutwa	2012	105
2148	ward	1948	Sungwizi	district	90	Sungwizi	2012	373
2149	ward	1949	Lutende	district	91	Lutende	2012	876
2150	ward	1950	Kizengi	district	91	Kizengi	2012	1042
2151	ward	1951	Goweko	district	91	Goweko	2012	293
2152	ward	1952	Igalula	district	91	Igalula	2012	559
2153	ward	1953	Ilolanguru	district	91	Ilolanguru	2012	409
2154	ward	1954	Mabama	district	91	Mabama	2012	494
2155	ward	1955	Ndono	district	91	Ndono	2012	236
2156	ward	1956	Ufuluma	district	91	Ufuluma	2012	448
2157	ward	1957	Usagari	district	91	Usagari	2012	147
2158	ward	1958	Ibiri	district	91	Ibiri	2012	491
2159	ward	1959	Bukumbi	district	91	Bukumbi	2012	527
2160	ward	1960	Ikongolo	district	91	Ikongolo	2012	160
2161	ward	1961	Upuge	district	91	Upuge	2012	137
2162	ward	1962	Magiri	district	91	Magiri	2012	246
2163	ward	1963	Isikizya	district	91	Isikizya	2012	145
2164	ward	1964	Shitage	district	91	Shitage	2012	216
2165	ward	1965	Loya	district	91	Loya	2012	1230
2166	ward	1966	Miswaki	district	91	Miswaki	2012	492
2167	ward	1967	Tura	district	91	Tura	2012	1732
2168	ward	1968	Nsololo	district	91	Nsololo	2012	242
2169	ward	1969	Kigwa	district	91	Kigwa	2012	539
2170	ward	1970	Miyenze	district	91	Miyenze	2012	946
2171	ward	1971	Nsimbo	district	91	Nsimbo	2012	196
2172	ward	1972	Ibelamilundi	district	91	Ibelamilundi	2012	260
2173	ward	1973	Kapilula	district	92	Kapilula	2012	40
2174	ward	1974	Urambo	district	92	Urambo	2012	56
2175	ward	1975	Vumilia	district	92	Vumilia	2012	117
2176	ward	1976	Muungano	district	92	Muungano	2012	107
2177	ward	1977	Songambele	district	92	Songambele	2012	176
2178	ward	1978	Uyogo	district	92	Uyogo	2012	438
2179	ward	1979	Kiloleni	district	92	Kiloleni	2012	118
2180	ward	1980	Ussoke	district	92	Ussoke	2012	107
2181	ward	1981	Uyumbu	district	92	Uyumbu	2012	846
2182	ward	1982	Ugalla	district	92	Ugalla	2012	631
2183	ward	1983	Usisya	district	92	Usisya	2012	170
2184	ward	1984	Utundu	district	92	Utundu	2012	64
2185	ward	1985	Kasisi	district	92	Kasisi	2012	204
2186	ward	1986	Imalamakoye	district	92	Imalamakoye	2012	31
2187	ward	1987	Nsenda	district	92	Nsenda	2012	1098
2188	ward	1988	Ukondamoyo	district	92	Ukondamoyo	2012	1090
2189	ward	1989	Tutuo	district	93	Tutuo	2012	261
2190	ward	1990	Chabutwa	district	93	Chabutwa	2012	105
2191	ward	1991	Kaloleli	district	93	Kaloleli	2012	1304
2192	ward	1992	Kipanga	district	93	Kipanga	2012	1773
2193	ward	1993	Sikonge	district	93	Sikonge	2012	633
2194	ward	1994	Kitunda	district	93	Kitunda	2012	20
2195	ward	1995	Kiloli	district	93	Kiloli	2012	2184
2196	ward	1996	Kipili	district	93	Kipili	2012	2577
2197	ward	1997	Pangale	district	93	Pangale	2012	259
2198	ward	1998	Ipole	district	93	Ipole	2012	429
2199	ward	1999	Ngoywa	district	93	Ngoywa	2012	2986
2200	ward	2000	Kisanga	district	93	Kisanga	2012	539
2201	ward	2001	Misheni	district	93	Misheni	2012	176
2202	ward	2002	Mole	district	93	Mole	2012	233
2203	ward	2003	Mpombwe	district	93	Mpombwe	2012	131
2204	ward	2004	Usunga	district	93	Usunga	2012	1789
2205	ward	2005	Kanyenye	district	94	Kanyenye	2012	2
2206	ward	2006	Gongoni	district	94	Gongoni	2012	1
2207	ward	2007	Mbugani	district	94	Mbugani	2012	214
2208	ward	2008	Chemchem	district	94	Chemchem	2012	17
2209	ward	2009	Tambukareli	district	94	Tambukareli	2012	4
2210	ward	2010	Kiloleni	district	94	Kiloleni	2012	118
2211	ward	2011	Mtendeni	district	94	Mtendeni	2012	28
2212	ward	2012	Isevya	district	94	Isevya	2012	3
2213	ward	2013	Ipuli	district	94	Ipuli	2012	17
2214	ward	2014	Cheyo	district	94	Cheyo	2012	13
2215	ward	2015	Kitete	district	94	Kitete	2012	230
2216	ward	2016	Ng`Ambo	district	94	Ng`Ambo	2012	7
2217	ward	2017	Malolo	district	94	Malolo	2012	323
2218	ward	2018	Kakola	district	94	Kakola	2012	65
2219	ward	2019	Uyui	district	94	Uyui	2012	105
2220	ward	2020	Itonjanda	district	94	Itonjanda	2012	52
2221	ward	2021	Ndevelwa	district	94	Ndevelwa	2012	211
2222	ward	2022	Itetemia	district	94	Itetemia	2012	64
2223	ward	2023	Tumbi	district	94	Tumbi	2012	29
2224	ward	2024	Kalunde	district	94	Kalunde	2012	128
2225	ward	2025	Misha	district	94	Misha	2012	142
2226	ward	2026	Kabila	district	94	Kabila	2012	124
2227	ward	2027	Ikomwa	district	94	Ikomwa	2012	101
2228	ward	2028	Ifucha	district	94	Ifucha	2012	82
2229	ward	2029	Ntalikwa	district	94	Ntalikwa	2012	164
2230	ward	2030	Ukumbi Siganga	district	95	Ukumbi Siganga	2012	3038
2231	ward	2031	Zugimlole	district	95	Zugimlole	2012	2052
2232	ward	2032	Ushokola	district	95	Ushokola	2012	265
2233	ward	2033	Ugunga	district	95	Ugunga	2012	269
2234	ward	2034	Kaliua	district	95	Kaliua	2012	246
2235	ward	2035	Usinge	district	95	Usinge	2012	1222
2236	ward	2036	Igagala	district	95	Igagala	2012	991
2237	ward	2037	Kamsekwa	district	95	Kamsekwa	2012	328
2238	ward	2038	Kazaroho	district	95	Kazaroho	2012	260
2239	ward	2039	Igwisi	district	95	Igwisi	2012	885
2240	ward	2040	Uyowa	district	95	Uyowa	2012	332
2241	ward	2041	Silambo	district	95	Silambo	2012	3077
2242	ward	2042	Kashishi	district	95	Kashishi	2012	227
2243	ward	2043	Sasu	district	95	Sasu	2012	445
2244	ward	2044	Seleli	district	95	Seleli	2012	262
2245	ward	2045	Ichemba	district	95	Ichemba	2012	563
2246	ward	2046	Mwongozo	district	95	Mwongozo	2012	147
2247	ward	2047	Kanoge	district	95	Kanoge	2012	94
2248	ward	2048	Kanindo	district	95	Kanindo	2012	257
2249	ward	2049	Milambo	district	95	Milambo	2012	237
2250	ward	2050	Igombe Mkulu	district	95	Igombe Mkulu	2012	253
2251	ward	2051	Kasanga	district	96	Kasanga	2012	35
2252	ward	2052	Mkowe	district	96	Mkowe	2012	564
2253	ward	2053	Msanzi	district	96	Msanzi	2012	422
2254	ward	2054	Matai	district	96	Matai	2012	154
2255	ward	2055	Sopa	district	96	Sopa	2012	462
2256	ward	2056	Mwazye	district	96	Mwazye	2012	141
2257	ward	2057	Katazi	district	96	Katazi	2012	477
2258	ward	2058	Mwimbi	district	96	Mwimbi	2012	310
2259	ward	2059	Mabwekenya	district	96	Mabwekenya	2012	322
2260	ward	2060	Mwembenkoswe	district	96	Mwembenkoswe	2012	355
2261	ward	2061	Legeza Mwendo	district	96	Legeza Mwendo	2012	294
2262	ward	2062	Ulumi	district	96	Ulumi	2012	227
2263	ward	2063	Mnamba	district	96	Mnamba	2012	183
2264	ward	2064	Katete	district	96	Katete	2012	364
2265	ward	2065	Kisumba	district	96	Kisumba	2012	721
2266	ward	2066	Mkali	district	96	Mkali	2012	199
2267	ward	2067	Kilesha	district	96	Kilesha	2012	237
2268	ward	2068	Mfinga	district	97	Mfinga	2012	193
2269	ward	2069	Laela	district	97	Laela	2012	403
2270	ward	2070	Muze	district	97	Muze	2012	338
2271	ward	2071	Mtowisa	district	97	Mtowisa	2012	425
2272	ward	2072	Milepa	district	97	Milepa	2012	342
2273	ward	2073	Sandulula	district	97	Sandulula	2012	273
2274	ward	2074	Kaengesa	district	97	Kaengesa	2012	405
2275	ward	2075	Mpui	district	97	Mpui	2012	213
2276	ward	2076	Msanda Muungano	district	97	Msanda Muungano	2012	187
2277	ward	2077	Ilemba	district	97	Ilemba	2012	234
2278	ward	2078	Kipeta	district	97	Kipeta	2012	800
2279	ward	2079	Kaoze	district	97	Kaoze	2012	478
2280	ward	2080	Miangalua	district	97	Miangalua	2012	362
2281	ward	2081	Kalambanzite	district	97	Kalambanzite	2012	339
2282	ward	2082	Lusaka	district	97	Lusaka	2012	265
2283	ward	2083	Korongwe	district	98	Korongwe	2012	487
2284	ward	2084	Mtenga	district	98	Mtenga	2012	1641
2285	ward	2085	Mkwamba	district	98	Mkwamba	2012	571
2286	ward	2086	Chala	district	98	Chala	2012	213
2287	ward	2087	Kipande	district	98	Kipande	2012	325
2288	ward	2088	Isale	district	98	Isale	2012	586
2289	ward	2089	Kate	district	98	Kate	2012	706
2290	ward	2090	Sintali	district	98	Sintali	2012	751
2291	ward	2091	Kala	district	98	Kala	2012	427
2292	ward	2092	Wampembe	district	98	Wampembe	2012	713
2293	ward	2093	Ninde	district	98	Ninde	2012	722
2294	ward	2094	Kirando	district	98	Kirando	2012	349
2295	ward	2095	Kabwe	district	98	Kabwe	2012	830
2296	ward	2096	Kipili	district	98	Kipili	2012	2577
2297	ward	2097	Nkandasi	district	98	Nkandasi	2012	377
2298	ward	2098	Namanyere	district	98	Namanyere	2012	201
2299	ward	2099	Nkomolo	district	98	Nkomolo	2012	773
2300	ward	2100	Malangali	district	99	Malangali	2012	140
2301	ward	2101	Mazwi	district	99	Mazwi	2012	2
2302	ward	2102	Izia	district	99	Izia	2012	5
2303	ward	2103	Katandala	district	99	Katandala	2012	4
2304	ward	2104	Old Sumbawanga	district	99	Old Sumbawanga	2012	27
2305	ward	2105	Kizwite	district	99	Kizwite	2012	16
2306	ward	2106	Ntendo	district	99	Ntendo	2012	168
2307	ward	2107	Senga	district	99	Senga	2012	199
2308	ward	2108	Mollo	district	99	Mollo	2012	208
2309	ward	2109	Pito	district	99	Pito	2012	208
2310	ward	2110	Milanzi	district	99	Milanzi	2012	84
2311	ward	2111	Matanga	district	99	Matanga	2012	146
2312	ward	2112	Kasense	district	99	Kasense	2012	134
2313	ward	2113	Majengo	district	99	Majengo	2012	1
2314	ward	2114	Chanji	district	99	Chanji	2012	37
2315	ward	2115	Misezero	district	100	Misezero	2012	162
2316	ward	2116	Bitare	district	100	Bitare	2012	50
2317	ward	2117	Kibondo	district	100	Kibondo	2012	144
2318	ward	2118	Murungu	district	100	Murungu	2012	358
2319	ward	2119	Busagara	district	100	Busagara	2012	11458
2320	ward	2120	Rugongwe	district	100	Rugongwe	2012	276
2321	ward	2121	Busunzu	district	100	Busunzu	2012	199
2322	ward	2122	Kumsenga	district	100	Kumsenga	2012	192
2323	ward	2123	Kizazi	district	100	Kizazi	2012	137
2324	ward	2124	Mabamba	district	100	Mabamba	2012	96
2325	ward	2125	Bunyambo	district	100	Bunyambo	2012	116
2326	ward	2126	Itaba	district	100	Itaba	2012	137
2327	ward	2127	Kitahana	district	100	Kitahana	2012	153
2328	ward	2128	Kitanga	district	101	Kitanga	2012	337
2329	ward	2129	Heru Shingo	district	101	Heru Shingo	2012	788
2330	ward	2130	Nyamidaho	district	101	Nyamidaho	2012	893
2331	ward	2131	Kitagata	district	101	Kitagata	2012	457
2332	ward	2132	Nyachenda	district	101	Nyachenda	2012	197
2333	ward	2133	Buhoro	district	101	Buhoro	2012	253
2334	ward	2134	Nyamnyusi	district	101	Nyamnyusi	2012	156
2335	ward	2135	Nyakitonto	district	101	Nyakitonto	2012	229
2336	ward	2136	Kagerankanda	district	101	Kagerankanda	2012	2170
2337	ward	2137	Kurugongo	district	101	Kurugongo	2012	364
2338	ward	2138	Rungwe Mpya	district	101	Rungwe Mpya	2012	450
2339	ward	2139	Asante Nyerere	district	101	Asante Nyerere	2012	98
2340	ward	2140	Titye	district	101	Titye	2012	63
2341	ward	2141	Shunguliba	district	101	Shunguliba	2012	110
2342	ward	2142	Muzye	district	101	Muzye	2012	47
2343	ward	2143	Bugaga	district	101	Bugaga	2012	73
2344	ward	2144	Kigembe	district	101	Kigembe	2012	194
2345	ward	2145	Rusesa	district	101	Rusesa	2012	224
2346	ward	2146	Kwaga	district	101	Kwaga	2012	137
2347	ward	2147	Kagunga	district	102	Kagunga	2012	66
2348	ward	2148	Mkigo	district	102	Mkigo	2012	80
2349	ward	2149	Mwamgongo	district	102	Mwamgongo	2012	88
2350	ward	2150	Kalinzi	district	102	Kalinzi	2012	102
2351	ward	2151	Bitale	district	102	Bitale	2012	49
2352	ward	2152	Mkongoro	district	102	Mkongoro	2012	78
2353	ward	2153	Mahembe	district	102	Mahembe	2012	139
2354	ward	2154	Matendo	district	102	Matendo	2012	177
2355	ward	2155	Mungonya	district	102	Mungonya	2012	40
2356	ward	2156	Kagongo	district	102	Kagongo	2012	115
2357	ward	2157	Mwandiga	district	102	Mwandiga	2012	41
2358	ward	2158	Gungu	district	103	Gungu	2012	5
2359	ward	2159	Kibirizi	district	103	Kibirizi	2012	13
2360	ward	2160	Buhanda	district	103	Buhanda	2012	6
2361	ward	2161	Businde	district	103	Businde	2012	8
2362	ward	2162	Machinjioni	district	103	Machinjioni	2012	1
2363	ward	2163	Kagera	district	103	Kagera	2012	24
2364	ward	2164	Kasimbu	district	103	Kasimbu	2012	2
2365	ward	2165	Rubuga	district	103	Rubuga	2012	1
2366	ward	2166	Kasingirima	district	103	Kasingirima	2012	0
2367	ward	2167	Majengo	district	103	Majengo	2012	1
2368	ward	2168	Kitongoni	district	103	Kitongoni	2012	1
2369	ward	2169	Kipampa	district	103	Kipampa	2012	2
2370	ward	2170	Rusimbi	district	103	Rusimbi	2012	1
2371	ward	2171	Buzebazeba	district	103	Buzebazeba	2012	4
2372	ward	2172	Mwanga Kusini	district	103	Mwanga Kusini	2012	4
2373	ward	2173	Kigoma	district	103	Kigoma	2012	4
2374	ward	2174	Bangwe	district	103	Bangwe	2012	10
2375	ward	2175	Mwanga Kaskazini	district	103	Mwanga Kaskazini	2012	4
2376	ward	2176	Katubuka	district	103	Katubuka	2012	3
2377	ward	2177	Kalya	district	104	Kalya	2012	541
2378	ward	2178	Buhingu	district	104	Buhingu	2012	1677
2379	ward	2179	Igalula	district	104	Igalula	2012	559
2380	ward	2180	Sigunga	district	104	Sigunga	2012	778
2381	ward	2181	Sunuka	district	104	Sunuka	2012	806
2382	ward	2182	Ilagala	district	104	Ilagala	2012	575
2383	ward	2183	Simbo	district	104	Simbo	2012	323
2384	ward	2184	Kandaga	district	104	Kandaga	2012	170
2385	ward	2185	Kazuramimba	district	104	Kazuramimba	2012	676
2386	ward	2186	Uvinza	district	104	Uvinza	2012	1514
2387	ward	2187	Mganza	district	104	Mganza	2012	1099
2388	ward	2188	Mtego Wa Noti	district	104	Mtego Wa Noti	2012	295
2389	ward	2189	Nguruka	district	104	Nguruka	2012	139
2390	ward	2190	Itebula	district	104	Itebula	2012	463
2391	ward	2191	Nyamugali	district	105	Nyamugali	2012	81
2392	ward	2192	Biharu	district	105	Biharu	2012	53
2393	ward	2193	Muyama	district	105	Muyama	2012	56
2394	ward	2194	Kajana	district	105	Kajana	2012	97
2395	ward	2195	Mugera	district	105	Mugera	2012	96
2396	ward	2196	Kilelema	district	105	Kilelema	2012	133
2397	ward	2197	Munyegera	district	105	Munyegera	2012	161
2398	ward	2198	Buhigwe	district	105	Buhigwe	2012	109
2399	ward	2199	Kibande	district	105	Kibande	2012	47
2400	ward	2200	Janda	district	105	Janda	2012	191
2401	ward	2201	Munzeze	district	105	Munzeze	2012	138
2402	ward	2202	Rusaba	district	105	Rusaba	2012	96
2403	ward	2203	Muhinda	district	105	Muhinda	2012	75
2404	ward	2204	Munanila	district	105	Munanila	2012	83
2405	ward	2205	Mwayaya	district	105	Mwayaya	2012	100
2406	ward	2206	Nyabibuye	district	106	Nyabibuye	2012	86
2407	ward	2207	Nyamtukuza	district	106	Nyamtukuza	2012	383
2408	ward	2208	Muhange	district	106	Muhange	2012	313
2409	ward	2209	Kasunga	district	106	Kasunga	2012	152
2410	ward	2210	Kakonko	district	106	Kakonko	2012	306
2411	ward	2211	Kiziguzigu	district	106	Kiziguzigu	2012	210
2412	ward	2212	Rugenge	district	106	Rugenge	2012	95
2413	ward	2213	Kasanda	district	106	Kasanda	2012	284
2414	ward	2214	Gwamumpu	district	106	Gwamumpu	2012	220
2415	ward	2215	Katanga	district	106	Katanga	2012	82
2416	ward	2216	Mugunzu	district	106	Mugunzu	2012	85
2417	ward	2217	Muganza	district	107	Muganza	2012	81
2418	ward	2218	Kigondo	district	107	Kigondo	2012	73
2419	ward	2219	Msambara	district	107	Msambara	2012	86
2420	ward	2220	Ruhita	district	107	Ruhita	2012	80
2421	ward	2221	Nyumbigwa	district	107	Nyumbigwa	2012	94
2422	ward	2222	Murufiti	district	107	Murufiti	2012	76
2423	ward	2223	Nyansha	district	107	Nyansha	2012	49
2424	ward	2224	Kasulu Mjini	district	107	Kasulu Mjini	2012	32
2425	ward	2225	Muhunga	district	107	Muhunga	2012	347
2426	ward	2226	Mwamalili	district	108	Mwamalili	2012	81
2427	ward	2227	Kolandoto	district	108	Kolandoto	2012	117
2428	ward	2228	Ngokolo	district	108	Ngokolo	2012	8
2429	ward	2229	Ibadakuli	district	108	Ibadakuli	2012	70
2430	ward	2230	Shinyanga Mjini	district	108	Shinyanga Mjini	2012	2
2431	ward	2231	Chamaguha	district	108	Chamaguha	2012	4
2432	ward	2232	Ibinzamata	district	108	Ibinzamata	2012	2
2433	ward	2233	Kitangili	district	108	Kitangili	2012	7
2434	ward	2234	Kizumbi	district	108	Kizumbi	2012	68
2435	ward	2235	Mwawaza	district	108	Mwawaza	2012	52
2436	ward	2236	Ndala	district	108	Ndala	2012	187
2437	ward	2237	Kambarage	district	108	Kambarage	2012	45
2438	ward	2238	Chibe	district	108	Chibe	2012	37
2439	ward	2239	Lubaga	district	108	Lubaga	2012	12
2440	ward	2240	Ndembezi	district	108	Ndembezi	2012	136
2441	ward	2241	Masekelo	district	108	Masekelo	2012	5
2442	ward	2242	Old Shinyanga	district	108	Old Shinyanga	2012	58
2443	ward	2243	Bunambiyu	district	109	Bunambiyu	2012	204
2444	ward	2244	Bubiki	district	109	Bubiki	2012	188
2445	ward	2245	Songwa	district	109	Songwa	2012	93
2446	ward	2246	Seke Bugoro	district	109	Seke Bugoro	2012	183
2447	ward	2247	Mondo	district	109	Mondo	2012	136
2448	ward	2248	Mwadui Lohumbo	district	109	Mwadui Lohumbo	2012	259
2449	ward	2249	Uchunga	district	109	Uchunga	2012	233
2450	ward	2250	Kishapu	district	109	Kishapu	2012	261
2451	ward	2251	Mwakipoya	district	109	Mwakipoya	2012	220
2452	ward	2252	Shagihilu	district	109	Shagihilu	2012	225
2453	ward	2253	Somagedi	district	109	Somagedi	2012	134
2454	ward	2254	Mwamalasa	district	109	Mwamalasa	2012	272
2455	ward	2255	Masanga	district	109	Masanga	2012	302
2456	ward	2256	Lagana	district	109	Lagana	2012	261
2457	ward	2257	Mwamashele	district	109	Mwamashele	2012	218
2458	ward	2258	Ngofila	district	109	Ngofila	2012	214
2459	ward	2259	Kiloleli	district	109	Kiloleli	2012	204
2460	ward	2260	Ukenyenge	district	109	Ukenyenge	2012	224
2461	ward	2261	Talaga	district	109	Talaga	2012	145
2462	ward	2262	Itilima	district	109	Itilima	2012	203
2463	ward	2263	Imesela	district	110	Imesela	2012	92
2464	ward	2264	Usule	district	110	Usule	2012	62
2465	ward	2265	Ilola	district	110	Ilola	2012	89
2466	ward	2266	Didia	district	110	Didia	2012	93
2467	ward	2267	Itwangi	district	110	Itwangi	2012	33
2468	ward	2268	Tinde	district	110	Tinde	2012	174
2469	ward	2269	Mwakitolyoo	district	110	Mwakitolyoo	2012	207
2470	ward	2270	Salawe	district	110	Salawe	2012	89
2471	ward	2271	Solwa	district	110	Solwa	2012	210
2472	ward	2272	Iselamagazi	district	110	Iselamagazi	2012	162
2473	ward	2273	Lyabukande	district	110	Lyabukande	2012	253
2474	ward	2274	Mwantini	district	110	Mwantini	2012	65
2475	ward	2275	Pandagichiza	district	110	Pandagichiza	2012	122
2476	ward	2276	Mwamala	district	110	Mwamala	2012	206
2477	ward	2277	Samuye	district	110	Samuye	2012	156
2478	ward	2278	Usanda	district	110	Usanda	2012	141
2479	ward	2279	Puni	district	110	Puni	2012	91
2480	ward	2280	Nyida	district	110	Nyida	2012	63
2481	ward	2281	Nsalala	district	110	Nsalala	2012	16
2482	ward	2282	Bukene	district	110	Bukene	2012	26
2483	ward	2283	Masengwa	district	110	Masengwa	2012	157
2484	ward	2284	Mwenge	district	110	Mwenge	2012	1
2485	ward	2285	Lyabusalu	district	110	Lyabusalu	2012	364
2486	ward	2286	Mwalukwa	district	110	Mwalukwa	2012	84
2487	ward	2287	Nyamalogo	district	110	Nyamalogo	2012	243
2488	ward	2288	Lyamidati	district	110	Lyamidati	2012	248
2489	ward	2289	Bulyanhulu	district	111	Bulyanhulu	2012	103
2490	ward	2290	Bugarama	district	111	Bugarama	2012	109
2491	ward	2291	Lunguya	district	111	Lunguya	2012	281
2492	ward	2292	Shilela	district	111	Shilela	2012	128
2493	ward	2293	Segese	district	111	Segese	2012	70
2494	ward	2294	Mega	district	111	Mega	2012	130
2495	ward	2295	Chela	district	111	Chela	2012	320
2496	ward	2296	Busangi	district	111	Busangi	2012	116
2497	ward	2297	Ntobo	district	111	Ntobo	2012	194
2498	ward	2298	Ngaya	district	111	Ngaya	2012	166
2499	ward	2299	Bulige	district	111	Bulige	2012	111
2500	ward	2300	Kashishi	district	111	Kashishi	2012	227
2501	ward	2301	Mwanase	district	111	Mwanase	2012	233
2502	ward	2302	Mwalugulu	district	111	Mwalugulu	2012	198
2503	ward	2303	Jana	district	111	Jana	2012	205
2504	ward	2304	Isaka	district	111	Isaka	2012	155
2505	ward	2305	Chona	district	111	Chona	2012	214
2506	ward	2306	Chambo	district	111	Chambo	2012	184
2507	ward	2307	Kisuke	district	111	Kisuke	2012	107
2508	ward	2308	Mapamba	district	111	Mapamba	2012	116
2509	ward	2309	Bukomela	district	111	Bukomela	2012	78
2510	ward	2310	Ukune	district	111	Ukune	2012	147
2511	ward	2311	Igunda	district	111	Igunda	2012	69
2512	ward	2312	Kinamapula	district	111	Kinamapula	2012	142
2513	ward	2313	Igwamanoni	district	111	Igwamanoni	2012	168
2514	ward	2314	Mpunze	district	111	Mpunze	2012	107
2515	ward	2315	Sabasabini	district	111	Sabasabini	2012	167
2516	ward	2316	Idahina	district	111	Idahina	2012	522
2517	ward	2317	Bulungwa	district	111	Bulungwa	2012	245
2518	ward	2318	Nyankende	district	111	Nyankende	2012	343
2519	ward	2319	Ulewe	district	111	Ulewe	2012	507
2520	ward	2320	Ushetu	district	111	Ushetu	2012	255
2521	ward	2321	Uyogo	district	111	Uyogo	2012	438
2522	ward	2322	Ulowa	district	111	Ulowa	2012	186
2523	ward	2323	Ubagwe	district	111	Ubagwe	2012	360
2524	ward	2324	Ngogwa	district	112	Ngogwa	2012	119
2525	ward	2325	Wendele	district	112	Wendele	2012	129
2526	ward	2326	Kinaga	district	112	Kinaga	2012	155
2527	ward	2327	Isagehe	district	112	Isagehe	2012	78
2528	ward	2328	Mondo	district	112	Mondo	2012	136
2529	ward	2329	Kagongwa	district	112	Kagongwa	2012	26
2530	ward	2330	Nyahanga	district	112	Nyahanga	2012	19
2531	ward	2331	Malunga	district	112	Malunga	2012	11
2532	ward	2332	Mhongolo	district	112	Mhongolo	2012	54
2533	ward	2333	Mwendakulima	district	112	Mwendakulima	2012	97
2534	ward	2334	Zongomera	district	112	Zongomera	2012	103
2535	ward	2335	Mhungula	district	112	Mhungula	2012	9
2536	ward	2336	Nyihogo	district	112	Nyihogo	2012	3
2537	ward	2337	Nyasubi	district	112	Nyasubi	2012	7
2538	ward	2338	Kahama Mjini	district	112	Kahama Mjini	2012	1
2539	ward	2339	Majengo	district	112	Majengo	2012	1
2540	ward	2340	Busoka	district	112	Busoka	2012	62
2541	ward	2341	Kilago	district	112	Kilago	2012	129
2542	ward	2342	Iyenze	district	112	Iyenze	2012	103
2543	ward	2343	Nyandekwa	district	112	Nyandekwa	2012	106
2544	ward	2344	Igurwa	district	113	Igurwa	2012	81
2545	ward	2345	Kanoni	district	113	Kanoni	2012	131
2546	ward	2346	Kihanga	district	113	Kihanga	2012	600
2547	ward	2347	Kituntu	district	113	Kituntu	2012	105
2548	ward	2348	Chanika	district	113	Chanika	2012	4
2549	ward	2349	Kayanga	district	113	Kayanga	2012	36
2550	ward	2350	Bugene	district	113	Bugene	2012	42
2551	ward	2351	Ndama	district	113	Ndama	2012	45
2552	ward	2352	Rugera	district	113	Rugera	2012	422
2553	ward	2353	Ihembe	district	113	Ihembe	2012	98
2554	ward	2354	Nyaishozi	district	113	Nyaishozi	2012	123
2555	ward	2355	Rugu	district	113	Rugu	2012	979
2556	ward	2356	Nyakasimbi	district	113	Nyakasimbi	2012	397
2557	ward	2357	Nyakakika	district	113	Nyakakika	2012	459
2558	ward	2358	Nyakabanga	district	113	Nyakabanga	2012	409
2559	ward	2359	Bweranyange	district	113	Bweranyange	2012	425
2560	ward	2360	Kibondo	district	113	Kibondo	2012	144
2561	ward	2361	Nyabiyonza	district	113	Nyabiyonza	2012	87
2562	ward	2362	Kiruruma	district	113	Kiruruma	2012	152
2563	ward	2363	Nyakahanga	district	113	Nyakahanga	2012	165
2564	ward	2364	Ihanda	district	113	Ihanda	2012	130
2565	ward	2365	Chonyonyo	district	113	Chonyonyo	2012	87
2566	ward	2366	Rubafu	district	114	Rubafu	2012	39
2567	ward	2367	Kishanje	district	114	Kishanje	2012	48
2568	ward	2368	Kaagya	district	114	Kaagya	2012	51
2569	ward	2369	Buhendangabo	district	114	Buhendangabo	2012	36
2570	ward	2370	Nyakato	district	114	Nyakato	2012	55
2571	ward	2371	Katoma	district	114	Katoma	2012	25
2572	ward	2372	Karabagaine	district	114	Karabagaine	2012	61
2573	ward	2373	Bujugo	district	114	Bujugo	2012	69
2574	ward	2374	Maruku	district	114	Maruku	2012	29
2575	ward	2375	Kanyangereko	district	114	Kanyangereko	2012	30
2576	ward	2376	Katerero	district	114	Katerero	2012	34
2577	ward	2377	Kemondo	district	114	Kemondo	2012	37
2578	ward	2378	Nyakibimbili	district	114	Nyakibimbili	2012	47
2579	ward	2379	Ibwera	district	114	Ibwera	2012	54
2580	ward	2380	Mikoni	district	114	Mikoni	2012	46
2581	ward	2381	Butelankuzi	district	114	Butelankuzi	2012	52
2582	ward	2382	Rubale	district	114	Rubale	2012	47
2583	ward	2383	Rukoma	district	114	Rukoma	2012	92
2584	ward	2384	Kikomero	district	114	Kikomero	2012	33
2585	ward	2385	Kibirizi	district	114	Kibirizi	2012	13
2586	ward	2386	Izimbya	district	114	Izimbya	2012	51
2587	ward	2387	Butulage	district	114	Butulage	2012	82
2588	ward	2388	Ruhunga	district	114	Ruhunga	2012	98
2589	ward	2389	Mugajwale	district	114	Mugajwale	2012	48
2590	ward	2390	Kyamulaile	district	114	Kyamulaile	2012	105
2591	ward	2391	Katoro	district	114	Katoro	2012	75
2592	ward	2392	Kaibanja	district	114	Kaibanja	2012	85
2593	ward	2393	Kasharu	district	114	Kasharu	2012	61
2594	ward	2394	Kishogo	district	114	Kishogo	2012	44
2595	ward	2395	Muhutwe	district	115	Muhutwe	2012	65
2596	ward	2396	Mayondwe	district	115	Mayondwe	2012	25
2597	ward	2397	Goziba	district	115	Goziba	2012	1
2598	ward	2398	Kerebe	district	115	Kerebe	2012	6
2599	ward	2399	Bumbire	district	115	Bumbire	2012	66
2600	ward	2400	Ikuza	district	115	Ikuza	2012	25
2601	ward	2401	Izigo	district	115	Izigo	2012	23
2602	ward	2402	Katoke	district	115	Katoke	2012	58
2603	ward	2403	Kagoma	district	115	Kagoma	2012	41
2604	ward	2404	Kikuku	district	115	Kikuku	2012	40
2605	ward	2405	Bureza	district	115	Bureza	2012	30
2606	ward	2406	Muleba	district	115	Muleba	2012	22
2607	ward	2407	Ikondo	district	115	Ikondo	2012	21
2608	ward	2408	Buhangaza	district	115	Buhangaza	2012	27
2609	ward	2409	Mazinga	district	115	Mazinga	2012	22
2610	ward	2410	Magata (Karutanga)	district	115	Magata (Karutanga)	2012	34
2611	ward	2411	Gwanseli	district	115	Gwanseli	2012	56
2612	ward	2412	Kibanga	district	115	Kibanga	2012	36
2613	ward	2413	Kasharunga	district	115	Kasharunga	2012	268
2614	ward	2414	Rulanda	district	115	Rulanda	2012	50
2615	ward	2415	Kimwani	district	115	Kimwani	2012	149
2616	ward	2416	Nyakabango	district	115	Nyakabango	2012	254
2617	ward	2417	Kyebitembe	district	115	Kyebitembe	2012	333
2618	ward	2418	Karambi	district	115	Karambi	2012	219
2619	ward	2419	Mubunda	district	115	Mubunda	2012	124
2620	ward	2420	Bisheke	district	115	Bisheke	2012	94
2621	ward	2421	Burungura	district	115	Burungura	2012	151
2622	ward	2422	Biirabo	district	115	Biirabo	2012	55
2623	ward	2423	Mushabago	district	115	Mushabago	2012	53
2624	ward	2424	Nyakatanga	district	115	Nyakatanga	2012	51
2625	ward	2425	Ngenge	district	115	Ngenge	2012	208
2626	ward	2426	Rutoro	district	115	Rutoro	2012	493
2627	ward	2427	Kabirizi	district	115	Kabirizi	2012	63
2628	ward	2428	Nshamba	district	115	Nshamba	2012	41
2629	ward	2429	Kashasha	district	115	Kashasha	2012	28
2630	ward	2430	Ijumbi	district	115	Ijumbi	2012	38
2631	ward	2431	Kishanda	district	115	Kishanda	2012	42
2632	ward	2432	Buganguzi	district	115	Buganguzi	2012	27
2633	ward	2433	Ibuga	district	115	Ibuga	2012	36
2634	ward	2434	Bulyakashaju	district	115	Bulyakashaju	2012	34
2635	ward	2435	Kamachumu	district	115	Kamachumu	2012	41
2636	ward	2436	Ruhanga	district	115	Ruhanga	2012	38
2637	ward	2437	Mafumbo	district	115	Mafumbo	2012	20
2638	ward	2438	Nyakahura	district	116	Nyakahura	2012	1458
2639	ward	2439	Ruziba	district	116	Ruziba	2012	1378
2640	ward	2440	Biharamulo Mjini	district	116	Biharamulo Mjini	2012	41
2641	ward	2441	Bisibo	district	116	Bisibo	2012	357
2642	ward	2442	Nyarubungo	district	116	Nyarubungo	2012	1086
2643	ward	2443	Nyamahanga	district	116	Nyamahanga	2012	89
2644	ward	2444	Runazi	district	116	Runazi	2012	102
2645	ward	2445	Kabindi	district	116	Kabindi	2012	148
2646	ward	2446	Nyamigogo	district	116	Nyamigogo	2012	190
2647	ward	2447	Nyabusozi	district	116	Nyabusozi	2012	223
2648	ward	2448	Nemba	district	116	Nemba	2012	411
2649	ward	2449	Lusahunga	district	116	Lusahunga	2012	604
2650	ward	2450	Kaniha	district	116	Kaniha	2012	268
2651	ward	2451	Nyantakara	district	116	Nyantakara	2012	543
2652	ward	2452	Kalenge	district	116	Kalenge	2012	583
2653	ward	2453	Rusumo	district	117	Rusumo	2012	190
2654	ward	2454	Nyakisasa	district	117	Nyakisasa	2012	203
2655	ward	2455	Rulenge	district	117	Rulenge	2012	130
2656	ward	2456	Keza	district	117	Keza	2012	202
2657	ward	2457	Murusagamba	district	117	Murusagamba	2012	416
2658	ward	2458	Muganza	district	117	Muganza	2012	81
2659	ward	2459	Bugarama	district	117	Bugarama	2012	109
2660	ward	2460	Bukiriro	district	117	Bukiriro	2012	143
2661	ward	2461	Kabanga	district	117	Kabanga	2012	85
2662	ward	2462	Mabawe	district	117	Mabawe	2012	51
2663	ward	2463	Kanazi	district	117	Kanazi	2012	82
2664	ward	2464	Mugoma	district	117	Mugoma	2012	55
2665	ward	2465	Kirushya	district	117	Kirushya	2012	63
2666	ward	2466	Ntobeye	district	117	Ntobeye	2012	121
2667	ward	2467	Nyamiyaga	district	117	Nyamiyaga	2012	49
2668	ward	2468	Ngara Mjini	district	117	Ngara Mjini	2012	25
2669	ward	2469	Kibimba	district	117	Kibimba	2012	70
2670	ward	2470	Mbuba	district	117	Mbuba	2012	96
2671	ward	2471	Murukulazo	district	117	Murukulazo	2012	116
2672	ward	2472	Kasulo	district	117	Kasulo	2012	627
2673	ward	2473	Hamugembe	district	118	Hamugembe	2012	1
2674	ward	2474	Nshambya	district	118	Nshambya	2012	7
2675	ward	2475	Buhemba	district	118	Buhemba	2012	11
2676	ward	2476	Kahororo	district	118	Kahororo	2012	16
2677	ward	2477	Kashai	district	118	Kashai	2012	4
2678	ward	2478	Miembeni	district	118	Miembeni	2012	2
2679	ward	2479	Bilele	district	118	Bilele	2012	1
2680	ward	2480	Bakoba	district	118	Bakoba	2012	3
2681	ward	2481	Ijuganyondo	district	118	Ijuganyondo	2012	8
2682	ward	2482	Kitendaguro	district	118	Kitendaguro	2012	7
2683	ward	2483	Kibeta	district	118	Kibeta	2012	4
2684	ward	2484	Kagondo	district	118	Kagondo	2012	6
2685	ward	2485	Nyanga	district	118	Nyanga	2012	11
2686	ward	2486	Rwamishenye	district	118	Rwamishenye	2012	2
2687	ward	2487	Kakunyu	district	119	Kakunyu	2012	744
2688	ward	2488	Nsunga	district	119	Nsunga	2012	394
2689	ward	2489	Mutukula	district	119	Mutukula	2012	180
2690	ward	2490	Kassambya	district	119	Kassambya	2012	170
2691	ward	2491	Minziro	district	119	Minziro	2012	237
2692	ward	2492	Ruzinga	district	119	Ruzinga	2012	95
2693	ward	2493	Kashenye	district	119	Kashenye	2012	50
2694	ward	2494	Kanyigo	district	119	Kanyigo	2012	75
2695	ward	2495	Ishunju	district	119	Ishunju	2012	23
2696	ward	2496	Buyango	district	119	Buyango	2012	101
2697	ward	2497	Bwanjai	district	119	Bwanjai	2012	55
2698	ward	2498	Ishozi	district	119	Ishozi	2012	43
2699	ward	2499	Gera	district	119	Gera	2012	51
2700	ward	2500	Bugandika	district	119	Bugandika	2012	102
2701	ward	2501	Kitobo	district	119	Kitobo	2012	40
2702	ward	2502	Bugorora	district	119	Bugorora	2012	171
2703	ward	2503	Kyaka	district	119	Kyaka	2012	93
2704	ward	2504	Mushasha	district	119	Mushasha	2012	88
2705	ward	2505	Kilimilil	district	119	Kilimilil	2012	76
2706	ward	2506	Mabale	district	119	Mabale	2012	38
2707	ward	2507	Isingiro	district	120	Isingiro	2012	203
2708	ward	2508	Kaisho	district	120	Kaisho	2012	122
2709	ward	2509	Rutunguru	district	120	Rutunguru	2012	146
2710	ward	2510	Kibingo	district	120	Kibingo	2012	209
2711	ward	2511	Murongo	district	120	Murongo	2012	228
2712	ward	2512	Bugomora	district	120	Bugomora	2012	64
2713	ward	2513	Kibale	district	120	Kibale	2012	209
2714	ward	2514	Mabira	district	120	Mabira	2012	89
2715	ward	2515	Businde	district	120	Businde	2012	8
2716	ward	2516	Kamuli	district	120	Kamuli	2012	145
2717	ward	2517	Nyakatuntu	district	120	Nyakatuntu	2012	118
2718	ward	2518	Kimuli	district	120	Kimuli	2012	78
2719	ward	2519	Kikukuru	district	120	Kikukuru	2012	76
2720	ward	2520	Rwabwere	district	120	Rwabwere	2012	97
2721	ward	2521	Nkwenda	district	120	Nkwenda	2012	69
2722	ward	2522	Rukuraijo	district	120	Rukuraijo	2012	136
2723	ward	2523	Songambele	district	120	Songambele	2012	176
2724	ward	2524	Kyerwa	district	120	Kyerwa	2012	122
2725	ward	2525	Nansio	district	121	Nansio	2012	1
2726	ward	2526	Kagera	district	121	Kagera	2012	24
2727	ward	2527	Nakatunguru	district	121	Nakatunguru	2012	2
2728	ward	2528	Kakerege	district	121	Kakerege	2012	5
2729	ward	2529	Bukongo	district	121	Bukongo	2012	9
2730	ward	2530	Nkilizya	district	121	Nkilizya	2012	12
2731	ward	2531	Bukanda	district	121	Bukanda	2012	25
2732	ward	2532	Mukituntu	district	121	Mukituntu	2012	38
2733	ward	2533	Igala	district	121	Igala	2012	36
2734	ward	2534	Bwiro	district	121	Bwiro	2012	33
2735	ward	2535	Muriti	district	121	Muriti	2012	60
2736	ward	2536	Ilangala	district	121	Ilangala	2012	49
2737	ward	2537	Namilembe	district	121	Namilembe	2012	30
2738	ward	2538	Nduruma	district	121	Nduruma	2012	63
2739	ward	2539	Murutunguru	district	121	Murutunguru	2012	41
2740	ward	2540	Kagunguli	district	121	Kagunguli	2012	43
2741	ward	2541	Bukindo	district	121	Bukindo	2012	34
2742	ward	2542	Namagondo	district	121	Namagondo	2012	32
2743	ward	2543	Ngoma	district	121	Ngoma	2012	46
2744	ward	2544	Bwisya	district	121	Bwisya	2012	32
2745	ward	2545	Bukungu	district	121	Bukungu	2012	14
2746	ward	2546	Nyamanga	district	121	Nyamanga	2012	19
2747	ward	2547	Bukiro	district	121	Bukiro	2012	16
2748	ward	2548	Irugwa	district	121	Irugwa	2012	15
2749	ward	2549	Kisesa	district	122	Kisesa	2012	65
2750	ward	2550	Bujashi	district	122	Bujashi	2012	86
2751	ward	2551	Lutale	district	122	Lutale	2012	40
2752	ward	2552	Kongolo	district	122	Kongolo	2012	88
2753	ward	2553	Nyanguge	district	122	Nyanguge	2012	53
2754	ward	2554	Kitongo Sim	district	122	Kitongo Sim	2012	56
2755	ward	2555	Mwamanga	district	122	Mwamanga	2012	112
2756	ward	2556	Kahangara	district	122	Kahangara	2012	106
2757	ward	2557	Nyigogo	district	122	Nyigogo	2012	94
2758	ward	2558	Mwamabanza	district	122	Mwamabanza	2012	52
2759	ward	2559	Sukuma	district	122	Sukuma	2012	113
2760	ward	2560	Lubugu	district	122	Lubugu	2012	108
2761	ward	2561	Ng'Haya	district	122	Ng'Haya	2012	152
2762	ward	2562	Nkungulu	district	122	Nkungulu	2012	145
2763	ward	2563	Jinjimili	district	122	Jinjimili	2012	83
2764	ward	2564	Shishani	district	122	Shishani	2012	110
2765	ward	2565	Magu Mjini	district	122	Magu Mjini	2012	22
2766	ward	2566	Bukandwe	district	122	Bukandwe	2012	60
2767	ward	2567	Mkuyuni	district	123	Mkuyuni	2012	99
2768	ward	2568	Igogo	district	123	Igogo	2012	2
2769	ward	2569	Pamba	district	123	Pamba	2012	2
2770	ward	2570	Nyamagana	district	123	Nyamagana	2012	3
2771	ward	2571	Mirongo	district	123	Mirongo	2012	0
2772	ward	2572	Isamilo	district	123	Isamilo	2012	3
2773	ward	2573	Mbugani	district	123	Mbugani	2012	214
2774	ward	2574	Mahina	district	123	Mahina	2012	21
2775	ward	2575	Igoma	district	123	Igoma	2012	42
2776	ward	2576	Buhongwa	district	123	Buhongwa	2012	47
2777	ward	2577	Mkolani	district	123	Mkolani	2012	40
2778	ward	2578	Butimba	district	123	Butimba	2012	19
2779	ward	2579	Walla	district	124	Walla	2012	125
2780	ward	2580	Bungulwa	district	124	Bungulwa	2012	70
2781	ward	2581	Sumve	district	124	Sumve	2012	92
2782	ward	2582	Mantare	district	124	Mantare	2012	66
2783	ward	2583	Ngulla	district	124	Ngulla	2012	63
2784	ward	2584	Mwabomba	district	124	Mwabomba	2012	69
2785	ward	2585	Mwagi	district	124	Mwagi	2012	74
2786	ward	2586	Iseni	district	124	Iseni	2012	74
2787	ward	2587	Nyambiti	district	124	Nyambiti	2012	95
2788	ward	2588	Maligisu	district	124	Maligisu	2012	126
2789	ward	2589	Mwandu	district	124	Mwandu	2012	88
2790	ward	2590	Malya	district	124	Malya	2012	95
2791	ward	2591	Lyoma	district	124	Lyoma	2012	110
2792	ward	2592	Mwang'Halanga	district	124	Mwang'Halanga	2012	99
2793	ward	2593	Nyamilama	district	124	Nyamilama	2012	73
2794	ward	2594	Mwakilambiti	district	124	Mwakilambiti	2012	144
2795	ward	2595	Hungumalwa	district	124	Hungumalwa	2012	110
2796	ward	2596	Mwamala	district	124	Mwamala	2012	206
2797	ward	2597	Kikubiji	district	124	Kikubiji	2012	242
2798	ward	2598	Mhande	district	124	Mhande	2012	183
2799	ward	2599	Bupamwa	district	124	Bupamwa	2012	175
2800	ward	2600	Fukalo	district	124	Fukalo	2012	152
2801	ward	2601	Ng'Hundi	district	124	Ng'Hundi	2012	94
2802	ward	2602	Igongwa	district	124	Igongwa	2012	120
2803	ward	2603	Ngudu	district	124	Ngudu	2012	117
2804	ward	2604	Bugando	district	124	Bugando	2012	33
2805	ward	2605	Nkalalo	district	124	Nkalalo	2012	39
2806	ward	2606	Mwankulwe	district	124	Mwankulwe	2012	93
2807	ward	2607	Ilula	district	124	Ilula	2012	111
2808	ward	2608	Shilembo	district	124	Shilembo	2012	206
2809	ward	2609	Ibisabageni	district	125	Ibisabageni	2012	4
2810	ward	2610	Nyamazugo	district	125	Nyamazugo	2012	90
2811	ward	2611	Chifumfu	district	125	Chifumfu	2012	59
2812	ward	2612	Katunguru	district	125	Katunguru	2012	64
2813	ward	2613	Kasungamile	district	125	Kasungamile	2012	105
2814	ward	2614	Nyamatongo	district	125	Nyamatongo	2012	110
2815	ward	2615	Tabaruka	district	125	Tabaruka	2012	85
2816	ward	2616	Busisi	district	125	Busisi	2012	118
2817	ward	2617	Buyagu	district	125	Buyagu	2012	138
2818	ward	2618	Igalula	district	125	Igalula	2012	559
2819	ward	2619	Kagunga	district	125	Kagunga	2012	66
2820	ward	2620	Sima	district	125	Sima	2012	133
2821	ward	2621	Nyakasunga	district	125	Nyakasunga	2012	89
2822	ward	2622	Kalebezo	district	125	Kalebezo	2012	105
2823	ward	2623	Nyehunge	district	125	Nyehunge	2012	151
2824	ward	2624	Kafunzo	district	125	Kafunzo	2012	65
2825	ward	2625	Bupandwa	district	125	Bupandwa	2012	129
2826	ward	2626	Katwe	district	125	Katwe	2012	61
2827	ward	2627	Maisome	district	125	Maisome	2012	122
2828	ward	2628	Kazunzu	district	125	Kazunzu	2012	83
2829	ward	2629	Lugata	district	125	Lugata	2012	58
2830	ward	2630	Nyakaliro	district	125	Nyakaliro	2012	113
2831	ward	2631	Nyakasasa	district	125	Nyakasasa	2012	79
2832	ward	2632	Buzilasoga	district	125	Buzilasoga	2012	141
2833	ward	2633	Nyanzenda	district	125	Nyanzenda	2012	107
2834	ward	2634	Bulyaheke	district	125	Bulyaheke	2012	67
2835	ward	2635	Irenza	district	125	Irenza	2012	82
2836	ward	2636	Kasenyi	district	125	Kasenyi	2012	68
2837	ward	2637	Mwambului	district	125	Mwambului	2012	32
2838	ward	2638	Nyatukala	district	125	Nyatukala	2012	25
2839	ward	2639	Nyampulukano	district	125	Nyampulukano	2012	36
2840	ward	2640	Nyampande	district	125	Nyampande	2012	56
2841	ward	2641	Kishinda	district	125	Kishinda	2012	107
2842	ward	2642	Igulumuki	district	125	Igulumuki	2012	78
2843	ward	2643	Buswelu	district	126	Buswelu	2012	41
2844	ward	2644	Nyakato	district	126	Nyakato	2012	55
2845	ward	2645	Nyamanoro	district	126	Nyamanoro	2012	4
2846	ward	2646	Kirumba	district	126	Kirumba	2012	4
2847	ward	2647	Kitangiri	district	126	Kitangiri	2012	4
2848	ward	2648	Pasiansi	district	126	Pasiansi	2012	8
2849	ward	2649	Ilemela	district	126	Ilemela	2012	51
2850	ward	2650	Bugogwa	district	126	Bugogwa	2012	73
2851	ward	2651	Sangabuye	district	126	Sangabuye	2012	55
2852	ward	2652	Bulemeji	district	127	Bulemeji	2012	53
2853	ward	2653	Idetemya	district	127	Idetemya	2012	85
2854	ward	2654	Usagara	district	127	Usagara	2012	1
2855	ward	2655	Ukiriguru	district	127	Ukiriguru	2012	51
2856	ward	2656	Kanyelele	district	127	Kanyelele	2012	100
2857	ward	2657	Koromije	district	127	Koromije	2012	87
2858	ward	2658	Igokelo	district	127	Igokelo	2012	134
2859	ward	2659	Mwaniko	district	127	Mwaniko	2012	34
2860	ward	2660	Misungwi	district	127	Misungwi	2012	121
2861	ward	2661	Masasi	district	127	Masasi	2012	115
2862	ward	2662	Kijima	district	127	Kijima	2012	126
2863	ward	2663	Shilalo	district	127	Shilalo	2012	129
2864	ward	2664	Buhingo	district	127	Buhingo	2012	85
2865	ward	2665	Busongo	district	127	Busongo	2012	73
2866	ward	2666	Nhundulu	district	127	Nhundulu	2012	181
2867	ward	2667	Lubili	district	127	Lubili	2012	66
2868	ward	2668	Ilujamate	district	127	Ilujamate	2012	119
2869	ward	2669	Mbarika	district	127	Mbarika	2012	133
2870	ward	2670	Sumbugu	district	127	Sumbugu	2012	124
2871	ward	2671	Kasololo	district	127	Kasololo	2012	125
2872	ward	2672	Ilalambogo	district	127	Ilalambogo	2012	60
2873	ward	2673	Isesa	district	127	Isesa	2012	65
2874	ward	2674	Gulumungu	district	127	Gulumungu	2012	86
2875	ward	2675	Mabuki	district	127	Mabuki	2012	156
2876	ward	2676	Mondo	district	127	Mondo	2012	136
2877	ward	2677	Mamaye	district	127	Mamaye	2012	69
2878	ward	2678	Fella	district	127	Fella	2012	42
2879	ward	2679	Susuni	district	128	Susuni	2012	59
2880	ward	2680	Mwema	district	128	Mwema	2012	53
2881	ward	2681	Sirari	district	128	Sirari	2012	7
2882	ward	2682	Pemba	district	128	Pemba	2012	35
2883	ward	2683	Nyakonga	district	128	Nyakonga	2012	23
2884	ward	2684	Nyarero	district	128	Nyarero	2012	44
2885	ward	2685	Nyamwaga	district	128	Nyamwaga	2012	47
2886	ward	2686	Muriba	district	128	Muriba	2012	31
2887	ward	2687	Nyanungu	district	128	Nyanungu	2012	30
2888	ward	2688	Gorong'A	district	128	Gorong'A	2012	77
2889	ward	2689	Nyarokoba	district	128	Nyarokoba	2012	139
2890	ward	2690	Kemambo	district	128	Kemambo	2012	109
2891	ward	2691	Kibasuka	district	128	Kibasuka	2012	145
2892	ward	2692	Binagi	district	128	Binagi	2012	28
2893	ward	2693	Turwa	district	128	Turwa	2012	76
2894	ward	2694	Bomani	district	128	Bomani	2012	4
2895	ward	2695	Nyandoto	district	128	Nyandoto	2012	49
2896	ward	2696	Matongo	district	128	Matongo	2012	117
2897	ward	2697	Manga	district	128	Manga	2012	80
2898	ward	2698	Bumera	district	128	Bumera	2012	97
2899	ward	2699	Komaswa	district	128	Komaswa	2012	79
2900	ward	2700	Kiore	district	128	Kiore	2012	86
2901	ward	2701	Sabasaba	district	128	Sabasaba	2012	0
2902	ward	2702	Nyamisangura	district	128	Nyamisangura	2012	5
2903	ward	2703	Kentare	district	128	Kentare	2012	28
2904	ward	2704	Nyamaranga	district	128	Nyamaranga	2012	41
2905	ward	2705	Mbogi	district	128	Mbogi	2012	29
2906	ward	2706	Genyange	district	128	Genyange	2012	24
2907	ward	2707	Nyansicha	district	128	Nyansicha	2012	15
2908	ward	2708	Itiryo	district	128	Itiryo	2012	28
2909	ward	2709	Kenyamonta	district	129	Kenyamonta	2012	189
2910	ward	2710	Busawe	district	129	Busawe	2012	105
2911	ward	2711	Kisaka	district	129	Kisaka	2012	167
2912	ward	2712	Kebanchabancha	district	129	Kebanchabancha	2012	94
2913	ward	2713	Ring'Wani	district	129	Ring'Wani	2012	224
2914	ward	2714	Rung'Abure	district	129	Rung'Abure	2012	79
2915	ward	2715	Machochwe	district	129	Machochwe	2012	700
2916	ward	2716	Kisangura	district	129	Kisangura	2012	90
2917	ward	2717	Mugumu	district	129	Mugumu	2012	10
2918	ward	2718	Ikoma	district	129	Ikoma	2012	4467
2919	ward	2719	Natta	district	129	Natta	2012	701
2920	ward	2720	Issenye	district	129	Issenye	2012	373
2921	ward	2721	Rigicha	district	129	Rigicha	2012	85
2922	ward	2722	Nyambureti	district	129	Nyambureti	2012	150
2923	ward	2723	Nyamoko	district	129	Nyamoko	2012	106
2924	ward	2724	Manchira	district	129	Manchira	2012	148
2925	ward	2725	Kyambahi	district	129	Kyambahi	2012	197
2926	ward	2726	Nyamatare	district	129	Nyamatare	2012	84
2927	ward	2727	Majimoto	district	129	Majimoto	2012	137
2928	ward	2728	Magange	district	129	Magange	2012	113
2929	ward	2729	Nyansurura	district	129	Nyansurura	2012	135
2930	ward	2730	Mosongo	district	129	Mosongo	2012	203
2931	ward	2731	Sedeco	district	129	Sedeco	2012	1487
2932	ward	2732	Mbalibali	district	129	Mbalibali	2012	991
2933	ward	2733	Stendi Kuu	district	129	Stendi Kuu	2012	12
2934	ward	2734	Geitasamo	district	129	Geitasamo	2012	40
2935	ward	2735	Morotonga	district	129	Morotonga	2012	19
2936	ward	2736	Uwanja Wa Ndege	district	129	Uwanja Wa Ndege	2012	64
2937	ward	2737	Bukumi	district	130	Bukumi	2012	44
2938	ward	2738	Makojo	district	130	Makojo	2012	31
2939	ward	2739	Bwasi	district	130	Bwasi	2012	33
2940	ward	2740	Bulinga	district	130	Bulinga	2012	17
2941	ward	2741	Bukima	district	130	Bukima	2012	50
2942	ward	2742	Murangi	district	130	Murangi	2012	97
2943	ward	2743	Bugwema	district	130	Bugwema	2012	262
2944	ward	2744	Nyamrandirira	district	130	Nyamrandirira	2012	89
2945	ward	2745	Nyambono	district	130	Nyambono	2012	119
2946	ward	2746	Suguti	district	130	Suguti	2012	92
2947	ward	2747	Tegeruka	district	130	Tegeruka	2012	92
2948	ward	2748	Kiriba	district	130	Kiriba	2012	51
2949	ward	2749	Busambara	district	130	Busambara	2012	43
2950	ward	2750	Mugango	district	130	Mugango	2012	52
2951	ward	2751	Nyamuswa	district	131	Nyamuswa	2012	26
2952	ward	2752	Salama	district	131	Salama	2012	102
2953	ward	2753	Mihingo	district	131	Mihingo	2012	161
2954	ward	2754	Mugeta	district	131	Mugeta	2012	185
2955	ward	2755	Hunyari	district	131	Hunyari	2012	725
2956	ward	2756	Mcharo	district	131	Mcharo	2012	208
2957	ward	2757	Sazira	district	131	Sazira	2012	77
2958	ward	2758	Kunzugu	district	131	Kunzugu	2012	238
2959	ward	2759	Bunda Mjini	district	131	Bunda Mjini	2012	4
2960	ward	2760	Guta	district	131	Guta	2012	236
2961	ward	2761	Butimba	district	131	Butimba	2012	19
2962	ward	2762	Neruma	district	131	Neruma	2012	81
2963	ward	2763	Kibara	district	131	Kibara	2012	8
2964	ward	2764	Nansimo	district	131	Nansimo	2012	78
2965	ward	2765	Kisorya	district	131	Kisorya	2012	15
2966	ward	2766	Igundu	district	131	Igundu	2012	83
2967	ward	2767	Iramba	district	131	Iramba	2012	51
2968	ward	2768	Namhula	district	131	Namhula	2012	127
2969	ward	2769	Wariku	district	131	Wariku	2012	80
2970	ward	2770	Kabasa	district	131	Kabasa	2012	73
2971	ward	2771	Nampindi	district	131	Nampindi	2012	41
2972	ward	2772	Chitengule	district	131	Chitengule	2012	67
2973	ward	2773	Kasuguti	district	131	Kasuguti	2012	90
2974	ward	2774	Balili	district	131	Balili	2012	31
2975	ward	2775	Bunda Stoo	district	131	Bunda Stoo	2012	48
2976	ward	2776	Nyasura	district	131	Nyasura	2012	18
2977	ward	2777	Nyamang'Uta	district	131	Nyamang'Uta	2012	93
2978	ward	2778	Ketare	district	131	Ketare	2012	78
2979	ward	2779	Kigunga	district	132	Kigunga	2012	117
2980	ward	2780	Kirogo	district	132	Kirogo	2012	76
2981	ward	2781	Nyamtinga	district	132	Nyamtinga	2012	57
2982	ward	2782	Nyamagaro	district	132	Nyamagaro	2012	69
2983	ward	2783	Nyahongo	district	132	Nyahongo	2012	104
2984	ward	2784	Mkoma	district	132	Mkoma	2012	74
2985	ward	2785	Tai	district	132	Tai	2012	68
2986	ward	2786	Bukura	district	132	Bukura	2012	107
2987	ward	2787	Roche	district	132	Roche	2012	73
2988	ward	2788	Kitembe	district	132	Kitembe	2012	66
2989	ward	2789	Mirare	district	132	Mirare	2012	109
2990	ward	2790	Goribe	district	132	Goribe	2012	75
2991	ward	2791	Ikoma	district	132	Ikoma	2012	4467
2992	ward	2792	Koryo	district	132	Koryo	2012	72
2993	ward	2793	Bukwe	district	132	Bukwe	2012	54
2994	ward	2794	Nyathorogo	district	132	Nyathorogo	2012	144
2995	ward	2795	Rabour	district	132	Rabour	2012	116
2996	ward	2796	Kisumwa	district	132	Kisumwa	2012	217
2997	ward	2797	Komuge	district	132	Komuge	2012	135
2998	ward	2798	Nyamunga	district	132	Nyamunga	2012	54
2999	ward	2799	Kyang'Ombe	district	132	Kyang'Ombe	2012	149
3000	ward	2800	Bwiregi	district	133	Bwiregi	2012	119
3001	ward	2801	Buswahili	district	133	Buswahili	2012	306
3002	ward	2802	Nyamimange	district	133	Nyamimange	2012	49
3003	ward	2803	Sirorisimba	district	133	Sirorisimba	2012	91
3004	ward	2804	Buhemba	district	133	Buhemba	2012	11
3005	ward	2805	Mirwa	district	133	Mirwa	2012	86
3006	ward	2806	Muriaza	district	133	Muriaza	2012	110
3007	ward	2807	Butiama	district	133	Butiama	2012	126
3008	ward	2808	Masaba	district	133	Masaba	2012	139
3009	ward	2809	Kyanyari	district	133	Kyanyari	2012	162
3010	ward	2810	Kukirango	district	133	Kukirango	2012	129
3011	ward	2811	Buruma	district	133	Buruma	2012	177
3012	ward	2812	Nyakatende	district	133	Nyakatende	2012	124
3013	ward	2813	Etaro	district	133	Etaro	2012	39
3014	ward	2814	Nyegina	district	133	Nyegina	2012	44
3015	ward	2815	Nyankanga	district	133	Nyankanga	2012	65
3016	ward	2816	Bisumwa	district	133	Bisumwa	2012	74
3017	ward	2817	Bukabwa	district	133	Bukabwa	2012	134
3018	ward	2818	Butuguri	district	133	Butuguri	2012	61
3019	ward	2819	Busegwe	district	133	Busegwe	2012	47
3020	ward	2820	Magara	district	134	Magara	2012	209
3021	ward	2821	Nkaiti	district	134	Nkaiti	2012	574
3022	ward	2822	Mwada	district	134	Mwada	2012	752
3023	ward	2823	Mamire	district	134	Mamire	2012	367
3024	ward	2824	Galapo	district	134	Galapo	2012	554
3025	ward	2825	Qashi	district	134	Qashi	2012	552
3026	ward	2826	Ayasanda	district	134	Ayasanda	2012	49
3027	ward	2827	Gidas	district	134	Gidas	2012	90
3028	ward	2828	Duru	district	134	Duru	2012	104
3029	ward	2829	Riroda	district	134	Riroda	2012	74
3030	ward	2830	Arri	district	134	Arri	2012	110
3031	ward	2831	Dareda	district	134	Dareda	2012	70
3032	ward	2832	Dabil	district	134	Dabil	2012	162
3033	ward	2833	Ufana	district	134	Ufana	2012	237
3034	ward	2834	Bashneti	district	134	Bashneti	2012	70
3035	ward	2835	Madunga	district	134	Madunga	2012	189
3036	ward	2836	Kiru	district	134	Kiru	2012	175
3037	ward	2837	Magugu	district	134	Magugu	2012	759
3038	ward	2838	Balagidalalu	district	135	Balagidalalu	2012	317
3039	ward	2839	Gehandu	district	135	Gehandu	2012	258
3040	ward	2840	Laghanga	district	135	Laghanga	2012	246
3041	ward	2841	Getanuwas	district	135	Getanuwas	2012	108
3042	ward	2842	Hirbadaw	district	135	Hirbadaw	2012	104
3043	ward	2843	Bassodesh	district	135	Bassodesh	2012	285
3044	ward	2844	Bassotu	district	135	Bassotu	2012	364
3045	ward	2845	Gendabi	district	135	Gendabi	2012	120
3046	ward	2846	Mogitu	district	135	Mogitu	2012	268
3047	ward	2847	Giting	district	135	Giting	2012	88
3048	ward	2848	Masakta	district	135	Masakta	2012	60
3049	ward	2849	Masqaroda	district	135	Masqaroda	2012	69
3050	ward	2850	Endasak	district	135	Endasak	2012	37
3051	ward	2851	Gidahababieg	district	135	Gidahababieg	2012	65
3052	ward	2852	Maskron	district	135	Maskron	2012	62
3053	ward	2853	Hidet	district	135	Hidet	2012	52
3054	ward	2854	Simbay	district	135	Simbay	2012	123
3055	ward	2855	Sirop	district	135	Sirop	2012	131
3056	ward	2856	Gisambalang	district	135	Gisambalang	2012	271
3057	ward	2857	Nangwa	district	135	Nangwa	2012	104
3058	ward	2858	Katesh	district	135	Katesh	2012	14
3059	ward	2859	Ganana	district	135	Ganana	2012	6
3060	ward	2860	Dirma	district	135	Dirma	2012	227
3061	ward	2861	Lalaji	district	135	Lalaji	2012	291
3062	ward	2862	Endasiwold	district	135	Endasiwold	2012	31
3063	ward	2863	Daudi	district	136	Daudi	2012	46
3064	ward	2864	Bargish	district	136	Bargish	2012	37
3065	ward	2865	Gehandu	district	136	Gehandu	2012	258
3066	ward	2866	Kainam	district	136	Kainam	2012	34
3067	ward	2867	Murray	district	136	Murray	2012	122
3068	ward	2868	Ayamaami	district	136	Ayamaami	2012	15
3069	ward	2869	Uhuru	district	136	Uhuru	2012	0
3070	ward	2870	Tlawi	district	136	Tlawi	2012	93
3071	ward	2871	Bashay	district	136	Bashay	2012	126
3072	ward	2872	Dongobesh	district	136	Dongobesh	2012	65
3073	ward	2873	Tumati	district	136	Tumati	2012	114
3074	ward	2874	Maretadu	district	136	Maretadu	2012	140
3075	ward	2875	Maghang	district	136	Maghang	2012	107
3076	ward	2876	Haydom	district	136	Haydom	2012	128
3077	ward	2877	Yaeda Chini	district	136	Yaeda Chini	2012	543
3078	ward	2878	Masieda	district	136	Masieda	2012	374
3079	ward	2879	Marang	district	136	Marang	2012	70
3080	ward	2880	Gunyoda	district	136	Gunyoda	2012	105
3081	ward	2881	Nahasey	district	136	Nahasey	2012	107
3082	ward	2882	Endamilay	district	136	Endamilay	2012	153
3083	ward	2883	Yaeda Ampa	district	136	Yaeda Ampa	2012	118
3084	ward	2884	Masqaroda	district	136	Masqaroda	2012	69
3085	ward	2885	Nambisi	district	136	Nambisi	2012	58
3086	ward	2886	Dinamu	district	136	Dinamu	2012	91
3087	ward	2887	Ayamohe	district	136	Ayamohe	2012	9
3088	ward	2888	Sanu Baray	district	136	Sanu Baray	2012	9
3089	ward	2889	Imboru	district	136	Imboru	2012	27
3090	ward	2890	Endagikot	district	136	Endagikot	2012	18
3091	ward	2891	Geterer	district	136	Geterer	2012	107
3092	ward	2892	Hayderer	district	136	Hayderer	2012	125
3093	ward	2893	Eshkesh	district	136	Eshkesh	2012	459
3094	ward	2894	Gidihim	district	136	Gidihim	2012	109
3095	ward	2895	Orkesmet	district	137	Orkesmet	2012	13
3096	ward	2896	Loiborsiret	district	137	Loiborsiret	2012	2041
3097	ward	2897	Emboreet	district	137	Emboreet	2012	931
3098	ward	2898	Terrat	district	137	Terrat	2012	107
3099	ward	2899	Oljoro  No. 5	district	137	Oljoro  No. 5	2012	466
3100	ward	2900	Shambarai	district	137	Shambarai	2012	1093
3101	ward	2901	Mererani	district	137	Mererani	2012	12
3102	ward	2902	Msitu Wa Tembo	district	137	Msitu Wa Tembo	2012	369
3103	ward	2903	Ngorika	district	137	Ngorika	2012	726
3104	ward	2904	Liborsoit	district	137	Liborsoit	2012	1041
3105	ward	2905	Ruvu Remiti	district	137	Ruvu Remiti	2012	2646
3106	ward	2906	Komolo	district	137	Komolo	2012	1301
3107	ward	2907	Naisinyai	district	137	Naisinyai	2012	913
3108	ward	2908	Endiantu	district	137	Endiantu	2012	18
3109	ward	2909	Kibaya	district	138	Kibaya	2012	3
3110	ward	2910	Partimbo	district	138	Partimbo	2012	964
3111	ward	2911	Makame	district	138	Makame	2012	2612
3112	ward	2912	Ndedo	district	138	Ndedo	2012	2499
3113	ward	2913	Kijungu	district	138	Kijungu	2012	462
3114	ward	2914	Lengatei	district	138	Lengatei	2012	771
3115	ward	2915	Sunya	district	138	Sunya	2012	1090
3116	ward	2916	Dongo	district	138	Dongo	2012	732
3117	ward	2917	Songambele	district	138	Songambele	2012	176
3118	ward	2918	Dosidosi	district	138	Dosidosi	2012	107
3119	ward	2919	Engusero	district	138	Engusero	2012	339
3120	ward	2920	Matui	district	138	Matui	2012	54
3121	ward	2921	Bwagamoyo	district	138	Bwagamoyo	2012	26
3122	ward	2922	Loolera	district	138	Loolera	2012	1458
3123	ward	2923	Magungu	district	138	Magungu	2012	147
3124	ward	2924	Namelock	district	138	Namelock	2012	656
3125	ward	2925	Babati	district	139	Babati	2012	28
3126	ward	2926	Mutuka	district	139	Mutuka	2012	80
3127	ward	2927	Nangara	district	139	Nangara	2012	41
3128	ward	2928	Singe	district	139	Singe	2012	34
3129	ward	2929	Bonga	district	139	Bonga	2012	42
3130	ward	2930	Bagara	district	139	Bagara	2012	48
3131	ward	2931	Sigino	district	139	Sigino	2012	96
3132	ward	2932	Maisaka	district	139	Maisaka	2012	104
3133	ward	2933	Njombe Mjini	district	140	Njombe Mjini	2012	11
3134	ward	2934	Mjimwema	district	140	Mjimwema	2012	24
3135	ward	2935	Ramadhani	district	140	Ramadhani	2012	234
3136	ward	2936	Yakobi	district	140	Yakobi	2012	245
3137	ward	2937	Kifanya	district	140	Kifanya	2012	878
3138	ward	2938	Ihanga	district	140	Ihanga	2012	550
3139	ward	2939	Iwungilo	district	140	Iwungilo	2012	351
3140	ward	2940	Luponde	district	140	Luponde	2012	298
3141	ward	2941	Matola	district	140	Matola	2012	350
3142	ward	2942	Makowo	district	140	Makowo	2012	198
3143	ward	2943	Lugenge	district	140	Lugenge	2012	127
3144	ward	2944	Uwemba	district	140	Uwemba	2012	168
3145	ward	2945	Utalingolo	district	140	Utalingolo	2012	131
3146	ward	2946	Saja	district	141	Saja	2012	302
3147	ward	2947	Kijombe	district	141	Kijombe	2012	173
3148	ward	2948	Wanging'Ombe	district	141	Wanging'Ombe	2012	191
3149	ward	2949	Ilembula	district	141	Ilembula	2012	120
3150	ward	2950	Uhambule	district	141	Uhambule	2012	80
3151	ward	2951	Usuka	district	141	Usuka	2012	70
3152	ward	2952	Igwachanya	district	141	Igwachanya	2012	164
3153	ward	2953	Mdandu	district	141	Mdandu	2012	228
3154	ward	2954	Igima	district	141	Igima	2012	168
3155	ward	2955	Imalinyi	district	141	Imalinyi	2012	186
3156	ward	2956	Ulembwe	district	141	Ulembwe	2012	152
3157	ward	2957	Makoga	district	141	Makoga	2012	122
3158	ward	2958	Kipengere	district	141	Kipengere	2012	345
3159	ward	2959	Igosi	district	141	Igosi	2012	128
3160	ward	2960	Wangama	district	141	Wangama	2012	136
3161	ward	2961	Kidugala	district	141	Kidugala	2012	87
3162	ward	2962	Luduga	district	141	Luduga	2012	872
3163	ward	2963	Lupalilo	district	142	Lupalilo	2012	126
3164	ward	2964	Mang'Oto	district	142	Mang'Oto	2012	308
3165	ward	2965	Iwawa	district	142	Iwawa	2012	149
3166	ward	2966	Lupila	district	142	Lupila	2012	275
3167	ward	2967	Ukwama	district	142	Ukwama	2012	194
3168	ward	2968	Bulongwa	district	142	Bulongwa	2012	39
3169	ward	2969	Kipagalo	district	142	Kipagalo	2012	137
3170	ward	2970	Iniho	district	142	Iniho	2012	91
3171	ward	2971	Ipelele	district	142	Ipelele	2012	139
3172	ward	2972	Kigulu	district	142	Kigulu	2012	67
3173	ward	2973	Matamba	district	142	Matamba	2012	232
3174	ward	2974	Mlondwe	district	142	Mlondwe	2012	126
3175	ward	2975	Kitulo	district	142	Kitulo	2012	395
3176	ward	2976	Ikuwo	district	142	Ikuwo	2012	195
3177	ward	2977	Mfumbi	district	142	Mfumbi	2012	674
3178	ward	2978	Ipepo	district	142	Ipepo	2012	228
3179	ward	2979	Mbalatse	district	142	Mbalatse	2012	205
3180	ward	2980	Tandala	district	142	Tandala	2012	95
3181	ward	2981	Luwumbu	district	142	Luwumbu	2012	124
3182	ward	2982	Isapulano	district	142	Isapulano	2012	44
3183	ward	2983	Kigala	district	142	Kigala	2012	184
3184	ward	2984	Itundu	district	142	Itundu	2012	72
3185	ward	2985	Mtwango	district	143	Mtwango	2012	162
3186	ward	2986	Igongolo	district	143	Igongolo	2012	113
3187	ward	2987	Kichiwa	district	143	Kichiwa	2012	196
3188	ward	2988	Ninga	district	143	Ninga	2012	267
3189	ward	2989	Ikuna	district	143	Ikuna	2012	341
3190	ward	2990	Kidegembye	district	143	Kidegembye	2012	284
3191	ward	2991	Matembwe	district	143	Matembwe	2012	303
3192	ward	2992	Lupembe	district	143	Lupembe	2012	126
3193	ward	2993	Ikondo	district	143	Ikondo	2012	21
3194	ward	2994	Mfriga	district	143	Mfriga	2012	947
3195	ward	2995	Idamba	district	143	Idamba	2012	242
3196	ward	2996	Lumbila	district	144	Lumbila	2012	68
3197	ward	2997	Kilondo	district	144	Kilondo	2012	132
3198	ward	2998	Mawengi	district	144	Mawengi	2012	186
3199	ward	2999	Lupanga	district	144	Lupanga	2012	200
3200	ward	3000	Mlangali	district	144	Mlangali	2012	140
3201	ward	3001	Milo	district	144	Milo	2012	130
3202	ward	3002	Lugarawa	district	144	Lugarawa	2012	168
3203	ward	3003	Madope	district	144	Madope	2012	165
3204	ward	3004	Madilu	district	144	Madilu	2012	318
3205	ward	3005	Mundindi	district	144	Mundindi	2012	968
3206	ward	3006	Mavanga	district	144	Mavanga	2012	283
3207	ward	3007	Ibumi	district	144	Ibumi	2012	1092
3208	ward	3008	Nkomang'Ombe	district	144	Nkomang'Ombe	2012	182
3209	ward	3009	Luilo	district	144	Luilo	2012	325
3210	ward	3010	Masasi	district	144	Masasi	2012	115
3211	ward	3011	Manda	district	144	Manda	2012	781
3212	ward	3012	Iwela	district	144	Iwela	2012	249
3213	ward	3013	Lupingu	district	144	Lupingu	2012	189
3214	ward	3014	Ludewa	district	144	Ludewa	2012	266
3215	ward	3015	Ludende	district	144	Ludende	2012	269
3216	ward	3016	Luana	district	144	Luana	2012	164
3217	ward	3017	Makonde	district	144	Makonde	2012	0
3218	ward	3018	Mkongobaki	district	144	Mkongobaki	2012	83
3219	ward	3019	Lifuma	district	144	Lifuma	2012	58
3220	ward	3020	Ruhuhu	district	144	Ruhuhu	2012	32
3221	ward	3021	Ubena	district	145	Ubena	2012	24
3222	ward	3022	Mjimwema	district	145	Mjimwema	2012	24
3223	ward	3023	Mlowa	district	145	Mlowa	2012	982
3224	ward	3024	Lyamkena	district	145	Lyamkena	2012	88
3225	ward	3025	Mwembetogwa	district	145	Mwembetogwa	2012	11
3226	ward	3026	Mahongole	district	145	Mahongole	2012	74
3227	ward	3027	Kitandililo	district	145	Kitandililo	2012	251
3228	ward	3028	Utengule	district	145	Utengule	2012	360
3229	ward	3029	Kakese	district	146	Kakese	2012	203
3230	ward	3030	Misunkumilo	district	146	Misunkumilo	2012	26
3231	ward	3031	Shanwe	district	146	Shanwe	2012	10
3232	ward	3032	Makanyagio	district	146	Makanyagio	2012	1
3233	ward	3033	Kashaulili	district	146	Kashaulili	2012	2
3234	ward	3034	Mpanda Hotel	district	146	Mpanda Hotel	2012	3
3235	ward	3035	Kawajense	district	146	Kawajense	2012	24
3236	ward	3036	Nsemulwa	district	146	Nsemulwa	2012	18
3237	ward	3037	Ilembo	district	146	Ilembo	2012	140
3238	ward	3038	Mishamo	district	147	Mishamo	2012	7562
3239	ward	3039	Mpanda Ndogo	district	147	Mpanda Ndogo	2012	2631
3240	ward	3040	Mwese	district	147	Mwese	2012	2417
3241	ward	3041	Katuma	district	147	Katuma	2012	745
3242	ward	3042	Kabungu	district	147	Kabungu	2012	516
3243	ward	3043	Sibwesa	district	147	Sibwesa	2012	1882
3244	ward	3044	Ikola	district	147	Ikola	2012	975
3245	ward	3045	Karema	district	147	Karema	2012	74
3246	ward	3046	Kapalamsenga	district	147	Kapalamsenga	2012	324
3247	ward	3047	Kasokola	district	148	Kasokola	2012	83
3248	ward	3048	Ugala	district	148	Ugala	2012	1616
3249	ward	3049	Litapunga	district	148	Litapunga	2012	1726
3250	ward	3050	Mtapenda	district	148	Mtapenda	2012	80
3251	ward	3051	Inyonga	district	148	Inyonga	2012	2636
3252	ward	3052	Ilunde	district	148	Ilunde	2012	4439
3253	ward	3053	Ilela	district	148	Ilela	2012	480
3254	ward	3054	Utende	district	148	Utende	2012	8128
3255	ward	3055	Mamba	district	148	Mamba	2012	40
3256	ward	3056	Mbede	district	148	Mbede	2012	139
3257	ward	3057	Urwira	district	148	Urwira	2012	1916
3258	ward	3058	Nsimbo	district	148	Nsimbo	2012	196
3259	ward	3059	Magamba	district	148	Magamba	2012	182
3260	ward	3060	Sitalike	district	148	Sitalike	2012	1349
3261	ward	3061	Usevya	district	148	Usevya	2012	132
3262	ward	3062	Kibaoni	district	148	Kibaoni	2012	189
3263	ward	3063	Machimboni	district	148	Machimboni	2012	431
3264	ward	3064	Kapalala	district	148	Kapalala	2012	1419
3265	ward	3065	Itenka	district	148	Itenka	2012	671
3266	ward	3066	Ikuba	district	148	Ikuba	2012	98
3267	ward	3067	Mwamapuli	district	148	Mwamapuli	2012	185
3268	ward	3068	Majimoto	district	148	Majimoto	2012	137
3269	ward	3069	Kasansa	district	148	Kasansa	2012	45
3270	ward	3070	Nsenkwa	district	148	Nsenkwa	2012	60
3271	ward	3071	Nkindwabiye	district	149	Nkindwabiye	2012	354
3272	ward	3072	Mwaubinge	district	149	Mwaubinge	2012	109
3273	ward	3073	Nkololo	district	149	Nkololo	2012	138
3274	ward	3074	Mwaumatondo	district	149	Mwaumatondo	2012	2225
3275	ward	3075	Madobana	district	149	Madobana	2012	182
3276	ward	3076	Nyangokolwa	district	149	Nyangokolwa	2012	156
3277	ward	3077	Somanda	district	149	Somanda	2012	88
3278	ward	3078	Bunamhala	district	149	Bunamhala	2012	166
3279	ward	3079	Sakwe	district	149	Sakwe	2012	182
3280	ward	3080	Ngulyati	district	149	Ngulyati	2012	73
3281	ward	3081	Mhango	district	149	Mhango	2012	71
3282	ward	3082	Kilalo	district	149	Kilalo	2012	119
3283	ward	3083	Kasoli	district	149	Kasoli	2012	97
3284	ward	3084	Gambosi	district	149	Gambosi	2012	114
3285	ward	3085	Guduwi	district	149	Guduwi	2012	96
3286	ward	3086	Ikungulyabashashi	district	149	Ikungulyabashashi	2012	78
3287	ward	3087	Nyakabindi	district	149	Nyakabindi	2012	142
3288	ward	3088	Dutwa	district	149	Dutwa	2012	117
3289	ward	3089	Sapiwi	district	149	Sapiwi	2012	142
3290	ward	3090	Matongo	district	149	Matongo	2012	117
3291	ward	3091	Gilya	district	149	Gilya	2012	296
3292	ward	3092	Isanga	district	149	Isanga	2012	1
3293	ward	3093	Bariadi	district	149	Bariadi	2012	16
3294	ward	3094	Malambo	district	149	Malambo	2012	2388
3295	ward	3095	Sima	district	149	Sima	2012	133
3296	ward	3096	Bumera	district	150	Bumera	2012	97
3297	ward	3097	Ikindiro	district	150	Ikindiro	2012	91
3298	ward	3098	Mwamtani	district	150	Mwamtani	2012	768
3299	ward	3099	Sagata	district	150	Sagata	2012	84
3300	ward	3100	Mwaswale	district	150	Mwaswale	2012	819
3301	ward	3101	Nkuyu	district	150	Nkuyu	2012	569
3302	ward	3102	Mhunze	district	150	Mhunze	2012	64
3303	ward	3103	Migato	district	150	Migato	2012	912
3304	ward	3104	Chinamili	district	150	Chinamili	2012	93
3305	ward	3105	Ndolelezi	district	150	Ndolelezi	2012	88
3306	ward	3106	Lagangabilili	district	150	Lagangabilili	2012	87
3307	ward	3107	Budalabujiga	district	150	Budalabujiga	2012	63
3308	ward	3108	Nkoma	district	150	Nkoma	2012	148
3309	ward	3109	Mwalushu	district	150	Mwalushu	2012	99
3310	ward	3110	Mwamapalala	district	150	Mwamapalala	2012	104
3311	ward	3111	Nyamalapa	district	150	Nyamalapa	2012	82
3312	ward	3112	Lugulu	district	150	Lugulu	2012	35
3313	ward	3113	Nhobora	district	150	Nhobora	2012	81
3314	ward	3114	Zagayu	district	150	Zagayu	2012	115
3315	ward	3115	Kinang'Weli	district	150	Kinang'Weli	2012	91
3316	ward	3116	Mbita	district	150	Mbita	2012	92
3317	ward	3117	Sawida	district	150	Sawida	2012	80
3318	ward	3118	Mwanhuzi	district	151	Mwanhuzi	2012	138
3319	ward	3119	Nkoma	district	151	Nkoma	2012	148
3320	ward	3120	Kimali	district	151	Kimali	2012	305
3321	ward	3121	Mwamishali	district	151	Mwamishali	2012	221
3322	ward	3122	Itinje	district	151	Itinje	2012	221
3323	ward	3123	Kisesa	district	151	Kisesa	2012	65
3324	ward	3124	Mwandoya	district	151	Mwandoya	2012	155
3325	ward	3125	Lingeka	district	151	Lingeka	2012	65
3326	ward	3126	Sakasaka	district	151	Sakasaka	2012	388
3327	ward	3127	Imalaseko	district	151	Imalaseko	2012	176
3328	ward	3128	Mwabuzo	district	151	Mwabuzo	2012	418
3329	ward	3129	Mwamalole	district	151	Mwamalole	2012	321
3330	ward	3130	Mwanjolo	district	151	Mwanjolo	2012	1134
3331	ward	3131	Mwabuma	district	151	Mwabuma	2012	117
3332	ward	3132	Mwabusalu	district	151	Mwabusalu	2012	167
3333	ward	3133	Lubiga	district	151	Lubiga	2012	236
3334	ward	3134	Mwamanongu	district	151	Mwamanongu	2012	147
3335	ward	3135	Nghoboko	district	151	Nghoboko	2012	224
3336	ward	3136	Bukundi	district	151	Bukundi	2012	728
3337	ward	3137	Mwasengela	district	151	Mwasengela	2012	1014
3338	ward	3138	Mwamanimba	district	151	Mwamanimba	2012	147
3339	ward	3139	Tindabuligi	district	151	Tindabuligi	2012	209
3340	ward	3140	Mwakisandu	district	151	Mwakisandu	2012	122
3341	ward	3141	Mwangundo	district	151	Mwangundo	2012	1741
3342	ward	3142	Mwanyahina	district	151	Mwanyahina	2012	311
3343	ward	3143	Ng'Wigwa	district	152	Ng'Wigwa	2012	138
3344	ward	3144	Nguliguli	district	152	Nguliguli	2012	68
3345	ward	3145	Ipililo	district	152	Ipililo	2012	118
3346	ward	3146	Senani	district	152	Senani	2012	114
3347	ward	3147	Mwamanenge	district	152	Mwamanenge	2012	130
3348	ward	3148	Sukuma	district	152	Sukuma	2012	113
3349	ward	3149	Mpindo	district	152	Mpindo	2012	192
3350	ward	3150	Dakama	district	152	Dakama	2012	211
3351	ward	3151	Lalago	district	152	Lalago	2012	297
3352	ward	3152	Budekwa	district	152	Budekwa	2012	214
3353	ward	3153	Busilili	district	152	Busilili	2012	218
3354	ward	3154	Sengwa	district	152	Sengwa	2012	137
3355	ward	3155	Masela	district	152	Masela	2012	151
3356	ward	3156	Isanga	district	152	Isanga	2012	1
3357	ward	3157	Zanzui	district	152	Zanzui	2012	45
3358	ward	3158	Mwamashimba	district	152	Mwamashimba	2012	226
3359	ward	3159	Buchambi	district	152	Buchambi	2012	133
3360	ward	3160	Kadoto	district	152	Kadoto	2012	108
3361	ward	3161	Shishiyu	district	152	Shishiyu	2012	219
3362	ward	3162	Nyabubinza	district	152	Nyabubinza	2012	84
3363	ward	3163	Mwang'Honoli	district	152	Mwang'Honoli	2012	100
3364	ward	3164	Kulimi	district	152	Kulimi	2012	164
3365	ward	3165	Malampaka	district	152	Malampaka	2012	115
3366	ward	3166	Badi	district	152	Badi	2012	185
3367	ward	3167	Nyalikungu	district	152	Nyalikungu	2012	35
3368	ward	3168	Binza	district	152	Binza	2012	69
3369	ward	3169	Shigala	district	153	Shigala	2012	73
3370	ward	3170	Badugu	district	153	Badugu	2012	120
3371	ward	3171	Nyaluhande	district	153	Nyaluhande	2012	116
3372	ward	3172	Kiloleli	district	153	Kiloleli	2012	204
3373	ward	3173	Mwamanyili	district	153	Mwamanyili	2012	56
3374	ward	3174	Kabita	district	153	Kabita	2012	52
3375	ward	3175	Kalemela	district	153	Kalemela	2012	56
3376	ward	3176	Lamadi	district	153	Lamadi	2012	116
3377	ward	3177	Lutubiga	district	153	Lutubiga	2012	122
3378	ward	3178	Mkula	district	153	Mkula	2012	96
3379	ward	3179	Ngasamo	district	153	Ngasamo	2012	168
3380	ward	3180	Malili	district	153	Malili	2012	161
3381	ward	3181	Igalukilo	district	153	Igalukilo	2012	102
3382	ward	3182	Kagu	district	154	Kagu	2012	141
3383	ward	3183	Bugulula	district	154	Bugulula	2012	157
3384	ward	3184	Senga	district	154	Senga	2012	199
3385	ward	3185	Kakubilo	district	154	Kakubilo	2012	74
3386	ward	3186	Nkome	district	154	Nkome	2012	226
3387	ward	3187	Katoma	district	154	Katoma	2012	25
3388	ward	3188	Nzera	district	154	Nzera	2012	80
3389	ward	3189	Lwezera	district	154	Lwezera	2012	122
3390	ward	3190	Kamhanga	district	154	Kamhanga	2012	162
3391	ward	3191	Bugalama	district	154	Bugalama	2012	134
3392	ward	3192	Lubanga	district	154	Lubanga	2012	79
3393	ward	3193	Isulwabutunde	district	154	Isulwabutunde	2012	95
3394	ward	3194	Kasamwa	district	154	Kasamwa	2012	171
3395	ward	3195	Bung'Wangoko	district	154	Bung'Wangoko	2012	116
3396	ward	3196	Bulela	district	154	Bulela	2012	146
3397	ward	3197	Ihanamilo	district	154	Ihanamilo	2012	75
3398	ward	3198	Nyanguku	district	154	Nyanguku	2012	91
3399	ward	3199	Kamena	district	154	Kamena	2012	156
3400	ward	3200	Nyamalimbe	district	154	Nyamalimbe	2012	132
3401	ward	3201	Bujula	district	154	Bujula	2012	83
3402	ward	3202	Bukoli	district	154	Bukoli	2012	113
3403	ward	3203	Butobela	district	154	Butobela	2012	74
3404	ward	3204	Nyarugusu	district	154	Nyarugusu	2012	180
3405	ward	3205	Nyakamwaga	district	154	Nyakamwaga	2012	171
3406	ward	3206	Lwamgasa	district	154	Lwamgasa	2012	218
3407	ward	3207	Kaseme	district	154	Kaseme	2012	196
3408	ward	3208	Busanda	district	154	Busanda	2012	137
3409	ward	3209	Katoro	district	154	Katoro	2012	75
3410	ward	3210	Nyamigota	district	154	Nyamigota	2012	166
3411	ward	3211	Nyakagomba	district	154	Nyakagomba	2012	153
3412	ward	3212	Nyachiluluma	district	154	Nyachiluluma	2012	118
3413	ward	3213	Bukondo	district	154	Bukondo	2012	75
3414	ward	3214	Chigunga	district	154	Chigunga	2012	129
3415	ward	3215	Mtakuja	district	154	Mtakuja	2012	237
3416	ward	3216	Kalangalala	district	154	Kalangalala	2012	203
3417	ward	3217	Shabaka	district	155	Shabaka	2012	221
3418	ward	3218	Busolwa	district	155	Busolwa	2012	164
3419	ward	3219	Kakura	district	155	Kakura	2012	167
3420	ward	3220	Nyugwa	district	155	Nyugwa	2012	158
3421	ward	3221	Bukwimba	district	155	Bukwimba	2012	228
3422	ward	3222	Kafita	district	155	Kafita	2012	127
3423	ward	3223	Kharumwa	district	155	Kharumwa	2012	104
3424	ward	3224	Izunya	district	155	Izunya	2012	69
3425	ward	3225	Mwingiro	district	155	Mwingiro	2012	86
3426	ward	3226	Nyabulanda	district	155	Nyabulanda	2012	110
3427	ward	3227	Nyang'Hwale	district	155	Nyang'Hwale	2012	81
3428	ward	3228	Nyijundu	district	155	Nyijundu	2012	96
3429	ward	3229	Nanda	district	156	Nanda	2012	104
3430	ward	3230	Ikobe	district	156	Ikobe	2012	107
3431	ward	3231	Lulembela	district	156	Lulembela	2012	86
3432	ward	3232	Ikunguigazi	district	156	Ikunguigazi	2012	82
3433	ward	3233	Isebya	district	156	Isebya	2012	166
3434	ward	3234	Ilolangulu	district	156	Ilolangulu	2012	252
3435	ward	3235	Mbogwe	district	156	Mbogwe	2012	64
3436	ward	3236	Mgemo	district	156	Mgemo	2012	90
3437	ward	3237	Ushirika	district	156	Ushirika	2012	143
3438	ward	3238	Nyasato	district	156	Nyasato	2012	152
3439	ward	3239	Lugunga	district	156	Lugunga	2012	224
3440	ward	3240	Nyakafulu	district	156	Nyakafulu	2012	88
3441	ward	3241	Bukandwe	district	156	Bukandwe	2012	60
3442	ward	3242	Ng'Homolwa	district	156	Ng'Homolwa	2012	181
3443	ward	3243	Masumbwe	district	156	Masumbwe	2012	130
3444	ward	3244	Iponya	district	156	Iponya	2012	166
3445	ward	3245	Runzewe Mashariki	district	157	Runzewe Mashariki	2012	651
3446	ward	3246	Runzewe Magharibi	district	157	Runzewe Magharibi	2012	1330
3447	ward	3247	Namonge	district	157	Namonge	2012	1506
3448	ward	3248	Uyovu	district	157	Uyovu	2012	47
3449	ward	3249	Busonzo	district	157	Busonzo	2012	335
3450	ward	3250	Ng'Anzo	district	157	Ng'Anzo	2012	326
3451	ward	3251	Butinzya	district	157	Butinzya	2012	172
3452	ward	3252	Ushirombo	district	157	Ushirombo	2012	163
3453	ward	3253	Lyambamgongo	district	157	Lyambamgongo	2012	93
3454	ward	3254	Bukombe	district	157	Bukombe	2012	230
3455	ward	3255	Bugelenga	district	157	Bugelenga	2012	80
3456	ward	3256	Iyogelo	district	157	Iyogelo	2012	2856
3457	ward	3257	Igulwa	district	157	Igulwa	2012	300
3458	ward	3258	Muganza	district	158	Muganza	2012	81
3459	ward	3259	Bwongera	district	158	Bwongera	2012	128
3460	ward	3260	Kigongo	district	158	Kigongo	2012	91
3461	ward	3261	Nyamirembe	district	158	Nyamirembe	2012	129
3462	ward	3262	Ichwankima	district	158	Ichwankima	2012	205
3463	ward	3263	Kachwamba	district	158	Kachwamba	2012	60
3464	ward	3264	Kasenga	district	158	Kasenga	2012	203
3465	ward	3265	Ilemela	district	158	Ilemela	2012	51
3466	ward	3266	Chato	district	158	Chato	2012	7
3467	ward	3267	Muungano	district	158	Muungano	2012	107
3468	ward	3268	Bwina	district	158	Bwina	2012	27
3469	ward	3269	Katende	district	158	Katende	2012	54
3470	ward	3270	Ilyamchele	district	158	Ilyamchele	2012	70
3471	ward	3271	Bukome	district	158	Bukome	2012	156
3472	ward	3272	Buziku	district	158	Buziku	2012	237
3473	ward	3273	Nyarutembo	district	158	Nyarutembo	2012	256
3474	ward	3274	Makurugusi	district	158	Makurugusi	2012	235
3475	ward	3275	Buseresere	district	158	Buseresere	2012	84
3476	ward	3276	Butengorumasa	district	158	Butengorumasa	2012	107
3477	ward	3277	Iparamasa	district	158	Iparamasa	2012	295
3478	ward	3278	Bwanga	district	158	Bwanga	2012	219
3479	ward	3279	Bwera	district	158	Bwera	2012	267
3480	ward	3280	Mkokotoni	district	159	Mkokotoni	2012	4
3481	ward	3281	Mto Wa Pwani	district	159	Mto Wa Pwani	2012	5
3482	ward	3282	Pale	district	159	Pale	2012	9
3483	ward	3283	Kivunge	district	159	Kivunge	2012	1
3484	ward	3284	Tumbatu Gomani	district	159	Tumbatu Gomani	2012	9
3485	ward	3285	Jongowe	district	159	Jongowe	2012	5
3486	ward	3286	Mkwajuni	district	159	Mkwajuni	2012	41
3487	ward	3287	Kibeni	district	159	Kibeni	2012	2
3488	ward	3288	Muwange	district	159	Muwange	2012	2
3489	ward	3289	Pitanazako	district	159	Pitanazako	2012	2
3490	ward	3290	Potowa	district	159	Potowa	2012	5
3491	ward	3291	Fukuchani	district	159	Fukuchani	2012	8
3492	ward	3292	Kidoti	district	159	Kidoti	2012	13
3493	ward	3293	Tazari	district	159	Tazari	2012	6
3494	ward	3294	Kigunda	district	159	Kigunda	2012	3
3495	ward	3295	Nungwi	district	159	Nungwi	2012	7
3496	ward	3296	Matemwe	district	159	Matemwe	2012	25
3497	ward	3297	Kijini	district	159	Kijini	2012	26
3498	ward	3298	Pwani Mchangani	district	159	Pwani Mchangani	2012	7
3499	ward	3299	Gamba	district	159	Gamba	2012	3
3500	ward	3300	Moga	district	159	Moga	2012	3
3501	ward	3301	Chaani Masingini	district	159	Chaani Masingini	2012	7
3502	ward	3302	Mcheza Shauri	district	159	Mcheza Shauri	2012	1
3503	ward	3303	Chaani Kubwa	district	159	Chaani Kubwa	2012	4
3504	ward	3304	Kikobweni	district	159	Kikobweni	2012	5
3505	ward	3305	Bandamaji	district	159	Bandamaji	2012	3
3506	ward	3306	Kinyasini	district	159	Kinyasini	2012	5
3507	ward	3307	Kandwi	district	159	Kandwi	2012	17
3508	ward	3308	Chutama	district	159	Chutama	2012	3
3509	ward	3309	Kisongoni	district	159	Kisongoni	2012	2
3510	ward	3310	Kilindi	district	159	Kilindi	2012	379
3511	ward	3311	Kilimani	district	159	Kilimani	2012	61
3512	ward	3312	Uvivini	district	159	Uvivini	2012	4
3513	ward	3313	Kidombo	district	159	Kidombo	2012	3
3514	ward	3314	Bwereu	district	159	Bwereu	2012	3
3515	ward	3315	Kigomani	district	159	Kigomani	2012	8
3516	ward	3316	Misufini	district	160	Misufini	2012	1
3517	ward	3317	Makoba	district	160	Makoba	2012	5
3518	ward	3318	Mangapwani	district	160	Mangapwani	2012	6
3519	ward	3319	Fujoni	district	160	Fujoni	2012	5
3520	ward	3320	Kiomba Mvua	district	160	Kiomba Mvua	2012	4
3521	ward	3321	Donge  Mchangani	district	160	Donge  Mchangani	2012	10
3522	ward	3322	Mkadini	district	160	Mkadini	2012	2
3523	ward	3323	Zingwe Zingwe	district	160	Zingwe Zingwe	2012	7
3524	ward	3324	Kitope	district	160	Kitope	2012	9
3525	ward	3325	Mahonda	district	160	Mahonda	2012	4
3526	ward	3326	Mnyimbi	district	160	Mnyimbi	2012	6
3527	ward	3327	Donge Mtambile	district	160	Donge Mtambile	2012	1
3528	ward	3328	Kinduni	district	160	Kinduni	2012	6
3529	ward	3329	Donge Karange	district	160	Donge Karange	2012	11
3530	ward	3330	Donge Mbiji	district	160	Donge Mbiji	2012	3
3531	ward	3331	Donge Kipange	district	160	Donge Kipange	2012	7
3532	ward	3332	Donge Vijibweni	district	160	Donge Vijibweni	2012	7
3533	ward	3333	Upenja	district	160	Upenja	2012	20
3534	ward	3334	Kiwengwa	district	160	Kiwengwa	2012	24
3535	ward	3335	Pangeni	district	160	Pangeni	2012	7
3536	ward	3336	Kilombero	district	160	Kilombero	2012	16
3537	ward	3337	Mgambo	district	160	Mgambo	2012	515
3538	ward	3338	Muwanda	district	160	Muwanda	2012	6
3539	ward	3339	Matetema	district	160	Matetema	2012	5
3540	ward	3340	Kidanzini	district	160	Kidanzini	2012	8
3541	ward	3341	Mbaleni	district	160	Mbaleni	2012	10
3542	ward	3342	Mafufuni	district	160	Mafufuni	2012	16
3543	ward	3343	Mkataleni	district	160	Mkataleni	2012	7
3544	ward	3344	Njia Ya Mtoni	district	160	Njia Ya Mtoni	2012	5
3545	ward	3345	Dunga Bweni	district	161	Dunga Bweni	2012	15
3546	ward	3346	Ubago	district	161	Ubago	2012	14
3547	ward	3347	Kidimni	district	161	Kidimni	2012	8
3548	ward	3348	Machui	district	161	Machui	2012	4
3549	ward	3349	Kiboje Muembeshauri	district	161	Kiboje Muembeshauri	2012	10
3550	ward	3350	Miwani	district	161	Miwani	2012	7
3551	ward	3351	Kiboje Mkwajuni	district	161	Kiboje Mkwajuni	2012	7
3552	ward	3352	Ghana	district	161	Ghana	2012	1
3553	ward	3353	Koani	district	161	Koani	2012	7
3554	ward	3354	Mgeni Haji	district	161	Mgeni Haji	2012	3
3555	ward	3355	Uzini	district	161	Uzini	2012	3
3556	ward	3356	Mitakawani	district	161	Mitakawani	2012	2
3557	ward	3357	Tunduni	district	161	Tunduni	2012	3
3558	ward	3358	Bambi	district	161	Bambi	2012	23
3559	ward	3359	Pagali	district	161	Pagali	2012	13
3560	ward	3360	Umbuji	district	161	Umbuji	2012	30
3561	ward	3361	Mchangani	district	161	Mchangani	2012	49
3562	ward	3362	Dunga Kiembeni	district	161	Dunga Kiembeni	2012	11
3563	ward	3363	Ndijani Mseweni	district	161	Ndijani Mseweni	2012	10
3564	ward	3364	Jendele	district	161	Jendele	2012	12
3565	ward	3365	Chwaka	district	161	Chwaka	2012	13
3566	ward	3366	Marumbi	district	161	Marumbi	2012	12
3567	ward	3367	Uroa	district	161	Uroa	2012	18
3568	ward	3368	Pongwe	district	161	Pongwe	2012	78
3569	ward	3369	Jumbi	district	161	Jumbi	2012	17
3570	ward	3370	Tunguu	district	161	Tunguu	2012	17
3571	ward	3371	Binguni	district	161	Binguni	2012	9
3572	ward	3372	Cheju	district	161	Cheju	2012	50
3573	ward	3373	Bungi	district	161	Bungi	2012	14
3574	ward	3374	Unguja Ukuu Kaepwani	district	161	Unguja Ukuu Kaepwani	2012	4
3575	ward	3375	Kikungwi	district	161	Kikungwi	2012	8
3576	ward	3376	Uzi	district	161	Uzi	2012	5
3577	ward	3377	Ng'Ambwa	district	161	Ng'Ambwa	2012	13
3578	ward	3378	Charawe	district	161	Charawe	2012	31
3579	ward	3379	Ukongoroni	district	161	Ukongoroni	2012	35
3580	ward	3380	Michamvi	district	161	Michamvi	2012	14
3581	ward	3381	Mpapa	district	161	Mpapa	2012	107
3582	ward	3382	Unguja Ukuu Kaebona	district	161	Unguja Ukuu Kaebona	2012	11
3583	ward	3383	Ndijani Muembe Punda	district	161	Ndijani Muembe Punda	2012	5
3584	ward	3384	Tindini	district	161	Tindini	2012	5
3585	ward	3385	Nganani	district	162	Nganani	2012	9
3586	ward	3386	Kijini	district	162	Kijini	2012	26
3587	ward	3387	Mzuri	district	162	Mzuri	2012	4
3588	ward	3388	Kajengwa	district	162	Kajengwa	2012	29
3589	ward	3389	Jambiani Kikadini	district	162	Jambiani Kikadini	2012	43
3590	ward	3390	Mtende	district	162	Mtende	2012	20
3591	ward	3391	Kibuteni	district	162	Kibuteni	2012	20
3592	ward	3392	Kizimkazi Dimbani	district	162	Kizimkazi Dimbani	2012	12
3593	ward	3393	Kizimkazi Mkunguni	district	162	Kizimkazi Mkunguni	2012	12
3594	ward	3394	Muyuni A	district	162	Muyuni A	2012	15
3595	ward	3395	Muyuni B	district	162	Muyuni B	2012	10
3596	ward	3396	Muyuni C	district	162	Muyuni C	2012	18
3597	ward	3397	Pete	district	162	Pete	2012	26
3598	ward	3398	Muungoni	district	162	Muungoni	2012	23
3599	ward	3399	Paje	district	162	Paje	2012	35
3600	ward	3400	Jambiani Kibigija	district	162	Jambiani Kibigija	2012	29
3601	ward	3401	Bwejuu	district	162	Bwejuu	2012	14
3602	ward	3402	Kitogani	district	162	Kitogani	2012	17
3603	ward	3403	Kiongoni	district	162	Kiongoni	2012	1
3604	ward	3404	Tasani	district	162	Tasani	2012	4
3605	ward	3405	Dongwe	district	162	Dongwe	2012	32
3606	ward	3406	Mwera	district	163	Mwera	2012	42
3607	ward	3407	Mtoni	district	163	Mtoni	2012	4
3608	ward	3408	Bububu	district	163	Bububu	2012	5
3609	ward	3409	Chuini	district	163	Chuini	2012	6
3610	ward	3410	Kama	district	163	Kama	2012	5
3611	ward	3411	Mfenesini	district	163	Mfenesini	2012	3
3612	ward	3412	Mwakaje	district	163	Mwakaje	2012	10
3613	ward	3413	Fuoni Kibondeni	district	163	Fuoni Kibondeni	2012	24
3614	ward	3414	Kianga	district	163	Kianga	2012	14
3615	ward	3415	Dole	district	163	Dole	2012	9
3616	ward	3416	Kizimbani	district	163	Kizimbani	2012	8
3617	ward	3417	Mbuzini	district	163	Mbuzini	2012	8
3618	ward	3418	Bumbwisudi	district	163	Bumbwisudi	2012	8
3619	ward	3419	Maungani	district	163	Maungani	2012	7
3620	ward	3420	Shakani	district	163	Shakani	2012	8
3621	ward	3421	Kiembesamaki	district	163	Kiembesamaki	2012	5
3622	ward	3422	Chukwani	district	163	Chukwani	2012	7
3623	ward	3423	Fumba	district	163	Fumba	2012	4
3624	ward	3424	Bweleo	district	163	Bweleo	2012	10
3625	ward	3425	Dimani	district	163	Dimani	2012	550
3626	ward	3426	Kombeni	district	163	Kombeni	2012	13
3627	ward	3427	Mwanakwerekwe	district	163	Mwanakwerekwe	2012	1
3628	ward	3428	Mtopepo	district	163	Mtopepo	2012	2
3629	ward	3429	Magogoni	district	163	Magogoni	2012	3
3630	ward	3430	Mtoni Kidatu	district	163	Mtoni Kidatu	2012	3
3631	ward	3431	Mwanyanya	district	163	Mwanyanya	2012	2
3632	ward	3432	Fuoni Kijito Upele	district	163	Fuoni Kijito Upele	2012	6
3633	ward	3433	Tomondo	district	163	Tomondo	2012	3
3634	ward	3434	Welezo	district	163	Welezo	2012	1
3635	ward	3435	Mtufaani	district	163	Mtufaani	2012	3
3636	ward	3436	Sharifumsa	district	163	Sharifumsa	2012	1
3637	ward	3437	Kibweni	district	163	Kibweni	2012	1
3638	ward	3438	Kihinani	district	163	Kihinani	2012	3
3639	ward	3439	Mombasa	district	163	Mombasa	2012	2
3640	ward	3440	Kisauni	district	163	Kisauni	2012	5
3641	ward	3441	Melinne	district	163	Melinne	2012	1
3642	ward	3442	Pangawe	district	163	Pangawe	2012	4
3643	ward	3443	Kinuni	district	163	Kinuni	2012	1
3644	ward	3444	Nyamanzi	district	163	Nyamanzi	2012	2
3645	ward	3445	Shangani	district	164	Shangani	2012	6
3646	ward	3446	Mkunazini	district	164	Mkunazini	2012	0
3647	ward	3447	Kiponda	district	164	Kiponda	2012	0
3648	ward	3448	Malindi	district	164	Malindi	2012	40
3649	ward	3449	Mchangani	district	164	Mchangani	2012	49
3650	ward	3450	Mlandege	district	164	Mlandege	2012	1
3651	ward	3451	Mwembeladu	district	164	Mwembeladu	2012	0
3652	ward	3452	Gulioni	district	164	Gulioni	2012	0
3653	ward	3453	Makadara	district	164	Makadara	2012	0
3654	ward	3454	Shaurimoyo	district	164	Shaurimoyo	2012	1
3655	ward	3455	Mwembe Makumbi	district	164	Mwembe Makumbi	2012	1
3656	ward	3456	Chumbuni	district	164	Chumbuni	2012	1
3657	ward	3457	Kwamtipura	district	164	Kwamtipura	2012	0
3658	ward	3458	Kilimahewa Juu	district	164	Kilimahewa Juu	2012	0
3659	ward	3459	Amani	district	164	Amani	2012	92
3660	ward	3460	Nyerere	district	164	Nyerere	2012	0
3661	ward	3461	Sebleni	district	164	Sebleni	2012	0
3662	ward	3462	Magomeni	district	164	Magomeni	2012	133
3663	ward	3463	Mpendae	district	164	Mpendae	2012	1
3664	ward	3464	Urusi	district	164	Urusi	2012	0
3665	ward	3465	Kilimani	district	164	Kilimani	2012	61
3666	ward	3466	Miembeni	district	164	Miembeni	2012	2
3667	ward	3467	Kikwajuni Juu	district	164	Kikwajuni Juu	2012	0
3668	ward	3468	Kikwajuni Bondeni	district	164	Kikwajuni Bondeni	2012	0
3669	ward	3469	Kisima Majongoo	district	164	Kisima Majongoo	2012	0
3670	ward	3470	Vikokotoni	district	164	Vikokotoni	2012	0
3671	ward	3471	Muembetanga	district	164	Muembetanga	2012	0
3672	ward	3472	Muembeshauri	district	164	Muembeshauri	2012	0
3673	ward	3473	Rahaleo	district	164	Rahaleo	2012	1
3674	ward	3474	Kwaalimsha	district	164	Kwaalimsha	2012	0
3675	ward	3475	Mikunguni	district	164	Mikunguni	2012	155
3676	ward	3476	Mkele	district	164	Mkele	2012	0
3677	ward	3477	Muungano	district	164	Muungano	2012	107
3678	ward	3478	Sogea	district	164	Sogea	2012	0
3679	ward	3479	Jang'Ombe	district	164	Jang'Ombe	2012	0
3680	ward	3480	Kidongo Chekundu	district	164	Kidongo Chekundu	2012	0
3681	ward	3481	Matarumbeta	district	164	Matarumbeta	2012	0
3682	ward	3482	Kwahani	district	164	Kwahani	2012	0
3683	ward	3483	Kwaalinatu	district	164	Kwaalinatu	2012	0
3684	ward	3484	Karakana	district	164	Karakana	2012	1
3685	ward	3485	Kilimahewa Bondeni	district	164	Kilimahewa Bondeni	2012	0
3686	ward	3486	Kwa Wazee	district	164	Kwa Wazee	2012	1
3687	ward	3487	Migombani	district	164	Migombani	2012	1
3688	ward	3488	Meya	district	164	Meya	2012	0
3689	ward	3489	Kisiwandui	district	164	Kisiwandui	2012	0
3690	ward	3490	Kipangani	district	165	Kipangani	2012	1
3691	ward	3491	Mtambwe Kaskazini	district	165	Mtambwe Kaskazini	2012	18
3692	ward	3492	Fundo	district	165	Fundo	2012	10
3693	ward	3493	Mchanga Mdogo	district	165	Mchanga Mdogo	2012	4
3694	ward	3494	Kambini	district	165	Kambini	2012	7
3695	ward	3495	Kojani	district	165	Kojani	2012	13
3696	ward	3496	Ole	district	165	Ole	2012	13
3697	ward	3497	Kangagani	district	165	Kangagani	2012	22
3698	ward	3498	Kiuyu Minungwini	district	165	Kiuyu Minungwini	2012	4
3699	ward	3499	Piki	district	165	Piki	2012	22
3700	ward	3500	Kisiwani	district	165	Kisiwani	2012	1546
3701	ward	3501	Gando	district	165	Gando	2012	11
3702	ward	3502	Ukunjwi	district	165	Ukunjwi	2012	16
3703	ward	3503	Pandani	district	165	Pandani	2012	14
3704	ward	3504	Shengejuu	district	165	Shengejuu	2012	8
3705	ward	3505	Bopwe	district	165	Bopwe	2012	2
3706	ward	3506	Utaani	district	165	Utaani	2012	0
3707	ward	3507	Mtambwe Kusini	district	165	Mtambwe Kusini	2012	34
3708	ward	3508	Selem	district	165	Selem	2012	1
3709	ward	3509	Kinyikani	district	165	Kinyikani	2012	7
3710	ward	3510	Chwale	district	165	Chwale	2012	5
3711	ward	3511	Maziwani	district	165	Maziwani	2012	8
3712	ward	3512	Mpambani	district	165	Mpambani	2012	0
3713	ward	3513	Mjini Ole	district	165	Mjini Ole	2012	8
3714	ward	3514	Kiuyu Kigongoni	district	165	Kiuyu Kigongoni	2012	3
3715	ward	3515	Mzambarauni Takao	district	165	Mzambarauni Takao	2012	6
3716	ward	3516	Junguni	district	165	Junguni	2012	10
3717	ward	3517	Kiungoni	district	165	Kiungoni	2012	8
3718	ward	3518	Pembeni	district	165	Pembeni	2012	9
3719	ward	3519	Kizimbani	district	165	Kizimbani	2012	8
3720	ward	3520	Limbani	district	165	Limbani	2012	11
3721	ward	3521	Jadida	district	165	Jadida	2012	2
3722	ward	3522	Micheweni	district	166	Micheweni	2012	2
3723	ward	3523	Msuka Mashariki	district	166	Msuka Mashariki	2012	8
3724	ward	3524	Kinowe	district	166	Kinowe	2012	7
3725	ward	3525	Tumbe Mashariki	district	166	Tumbe Mashariki	2012	3
3726	ward	3526	Mgogoni	district	166	Mgogoni	2012	6
3727	ward	3527	Shumba Viamboni	district	166	Shumba Viamboni	2012	9
3728	ward	3528	Finya	district	166	Finya	2012	9
3729	ward	3529	Konde	district	166	Konde	2012	34
3730	ward	3530	Wingwi Mapofu	district	166	Wingwi Mapofu	2012	11
3731	ward	3531	Kiuyu Mbuyuni	district	166	Kiuyu Mbuyuni	2012	18
3732	ward	3532	Makangale	district	166	Makangale	2012	13
3733	ward	3533	Wingwi Njuguni	district	166	Wingwi Njuguni	2012	2
3734	ward	3534	Shumba Mjini	district	166	Shumba Mjini	2012	11
3735	ward	3535	Majenzi	district	166	Majenzi	2012	2
3736	ward	3536	Mjini Wingwi	district	166	Mjini Wingwi	2012	9
3737	ward	3537	Msuka Magharibi	district	166	Msuka Magharibi	2012	7
3738	ward	3538	Chimba	district	166	Chimba	2012	9
3739	ward	3539	Tumbe Magharibi	district	166	Tumbe Magharibi	2012	6
3740	ward	3540	Sizini	district	166	Sizini	2012	9
3741	ward	3541	Kinyasini	district	166	Kinyasini	2012	5
3742	ward	3542	Mihogoni	district	166	Mihogoni	2012	10
3743	ward	3543	Kifundi	district	166	Kifundi	2012	16
3744	ward	3544	Maziwa Ng'Ombe	district	166	Maziwa Ng'Ombe	2012	13
3745	ward	3545	Tondooni	district	166	Tondooni	2012	19
3746	ward	3546	Mtemani	district	166	Mtemani	2012	4
3747	ward	3547	Wingwi Mjananza	district	166	Wingwi Mjananza	2012	2
3748	ward	3548	Mlindo	district	166	Mlindo	2012	6
3749	ward	3549	Chanjaani	district	167	Chanjaani	2012	4
3750	ward	3550	Wawi	district	167	Wawi	2012	9
3751	ward	3551	Pujini	district	167	Pujini	2012	12
3752	ward	3552	Ziwani	district	167	Ziwani	2012	123
3753	ward	3553	Ndagoni	district	167	Ndagoni	2012	93
3754	ward	3554	Kwale	district	167	Kwale	2012	16
3755	ward	3555	Vitongoji	district	167	Vitongoji	2012	12
3756	ward	3556	Ng'Ambwa	district	167	Ng'Ambwa	2012	13
3757	ward	3557	Shungi	district	167	Shungi	2012	11
3758	ward	3558	Chonga	district	167	Chonga	2012	16
3759	ward	3559	Mgelema	district	167	Mgelema	2012	6
3760	ward	3560	Kilindi	district	167	Kilindi	2012	379
3761	ward	3561	Tibirinzi	district	167	Tibirinzi	2012	6
3762	ward	3562	Chachani	district	167	Chachani	2012	0
3763	ward	3563	Wara	district	167	Wara	2012	1
3764	ward	3564	Mvumoni	district	167	Mvumoni	2012	9
3765	ward	3565	Matale	district	167	Matale	2012	687
3766	ward	3566	Wesha	district	167	Wesha	2012	10
3767	ward	3567	Uwandani	district	167	Uwandani	2012	7
3768	ward	3568	Madungu	district	167	Madungu	2012	2
3769	ward	3569	Mgogoni	district	167	Mgogoni	2012	6
3770	ward	3570	Dodo	district	167	Dodo	2012	14
3771	ward	3571	Mbuzini	district	167	Mbuzini	2012	8
3772	ward	3572	Michungwani	district	167	Michungwani	2012	5
3773	ward	3573	Kibokoni	district	167	Kibokoni	2012	7
3774	ward	3574	Kichungwani	district	167	Kichungwani	2012	2
3775	ward	3575	Msingini	district	167	Msingini	2012	0
3776	ward	3576	Mkoroshoni	district	167	Mkoroshoni	2012	2
3777	ward	3577	Mfikiwa	district	167	Mfikiwa	2012	7
3778	ward	3578	Ng'Ombeni	district	168	Ng'Ombeni	2012	2
3779	ward	3579	Makombeni	district	168	Makombeni	2012	3
3780	ward	3580	Makoongwe	district	168	Makoongwe	2012	3
3781	ward	3581	Shidi	district	168	Shidi	2012	4
3782	ward	3582	Mkanyageni	district	168	Mkanyageni	2012	8
3783	ward	3583	Michenzani	district	168	Michenzani	2012	4
3784	ward	3584	Chokocho	district	168	Chokocho	2012	8
3785	ward	3585	Kisiwa Panza	district	168	Kisiwa Panza	2012	21
3786	ward	3586	Kangani	district	168	Kangani	2012	7
3787	ward	3587	Kengeja	district	168	Kengeja	2012	9
3788	ward	3588	Muambe	district	168	Muambe	2012	6
3789	ward	3589	Kiwani	district	168	Kiwani	2012	10
3790	ward	3590	Mtambile	district	168	Mtambile	2012	9
3791	ward	3591	Mizingani	district	168	Mizingani	2012	7
3792	ward	3592	Ngwachani	district	168	Ngwachani	2012	7
3793	ward	3593	Chambani	district	168	Chambani	2012	22
3794	ward	3594	Wambaa	district	168	Wambaa	2012	11
3795	ward	3595	Mbuguani	district	168	Mbuguani	2012	7
3796	ward	3596	Uweleni	district	168	Uweleni	2012	2
3797	ward	3597	Mtangani	district	168	Mtangani	2012	14
3798	ward	3598	Ukutini	district	168	Ukutini	2012	7
3799	ward	3599	Chumbageni	district	168	Chumbageni	2012	3
3800	ward	3600	Mbuyuni	district	168	Mbuyuni	2012	15
3801	ward	3601	Stahabu	district	168	Stahabu	2012	3
3802	ward	3602	Kuukuu	district	168	Kuukuu	2012	4
3803	ward	3603	Mjimbini	district	168	Mjimbini	2012	9
3804	ward	3604	Shamiani	district	168	Shamiani	2012	4
3805	ward	3605	Jombwe	district	168	Jombwe	2012	4
3806	ward	3606	Kendwa	district	168	Kendwa	2012	12
3807	ward	3607	Minazini	district	168	Minazini	2012	9
3808	ward	3608	Mgagadu	district	168	Mgagadu	2012	9
3809	ward	3609	Mkungu	district	168	Mkungu	2012	7
3810	ward	3610	Changaweni	district	168	Changaweni	2012	10
3811	ward	3611	Lilambo	district	65	Lilambo	2012	133
3812	ward	3612	Selela	district	8	Selela	2012	1185
3813	ward	3613	Oldonyosambu	district	13	Oldonyosambu	2012	217
3814	ward	3614	Endonyongijape	district	137	Endonyongijape	2012	1532
3815	ward	3615	Kitwai	district	137	Kitwai	2012	3683
3816	ward	3616	Naberera	district	137	Naberera	2012	2860
3817	ward	3617	Busi	district	1	Busi	2012	808
3818	ward	3618	Jangalo	district	7	Jangalo	2012	189
3819	ward	3619	Njoro	district	138	Njoro	2012	81
3820	ward	3620	Olboroti	district	138	Olboroti	2012	360
3821	ward	3621	Chapakazi	district	138	Chapakazi	2012	280
3822	ward	3622	Kidete	district	32	Kidete	2012	409
3823	ward	3623	Kinole	district	33	Kinole	2012	120
3824	ward	3624	Igigwa	district	93	Igigwa	2012	1445
3825	ward	3625	Chita	district	34	Chita	2012	702
3826	ward	3626	Lugelele	district	79	Lugelele	2012	239
3827	ward	3627	Mbwewe	district	39	Mbwewe	2012	520
3828	ward	3628	Mazinde	district	23	Mazinde	2012	284
3829	ward	3629	Endokise	district	134	Endokise	2012	349
3830	ward	3630	Boay	district	134	Boay	2012	85
3831	ward	3631	Nar	district	134	Nar	2012	66
3832	ward	3632	Mukendo	district	169	Mukendo	2012	1
3833	ward	3633	Mwigobero	district	169	Mwigobero	2012	0
3834	ward	3634	Iringo	district	169	Iringo	2012	0
3835	ward	3635	Kitaji	district	169	Kitaji	2012	1
3836	ward	3636	Nyasho	district	169	Nyasho	2012	1
3837	ward	3637	Bweri	district	169	Bweri	2012	19
3838	ward	3638	Nyakato	district	169	Nyakato	2012	55
3839	ward	3639	Kigera	district	169	Kigera	2012	11
3840	ward	3640	Kamunyonge	district	169	Kamunyonge	2012	1
3841	ward	3641	Nyamatare	district	169	Nyamatare	2012	84
3842	ward	3642	Mwisenge	district	169	Mwisenge	2012	3
3843	ward	3643	Buhare	district	169	Buhare	2012	10
3844	ward	3644	Makoko	district	169	Makoko	2012	13
\.


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wazimap_geography_id_seq', 48, true);


--
-- Name: wazimap_geography_geo_level_9a5128d2_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_9a5128d2_uniq UNIQUE (geo_level, geo_code);


--
-- Name: wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);


--
-- Name: wazimap_geography_84cdc76c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_84cdc76c ON wazimap_geography USING btree (year);


--
-- Name: wazimap_geography_b068931c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_b068931c ON wazimap_geography USING btree (name);

--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_name_36b79089_like ON wazimap_geography USING btree (name varchar_pattern_ops);


--
-- PostgreSQL database dump complete
--

