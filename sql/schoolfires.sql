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

ALTER TABLE IF EXISTS ONLY public.schoolfires DROP CONSTRAINT IF EXISTS schoolfires_pkey;
DROP TABLE IF EXISTS public.schoolfires;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schoolfires; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE schoolfires (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    total integer NOT NULL,
    "schoolfires" text NOT NULL
);


--
-- Data for Name: schoolfires; Type: TABLE DATA; Schema: public; Owner: -
--

COPY schoolfires (geo_level, geo_code, total, "schoolfires") FROM stdin;
county	1	0	""
county	2	0	""
county	3	2	"Ganze Girls Secondary School,Malindi High"
county	4	1	"Madogo Secondary School"
county	5	1	"Mpeketoni Boys Secondary School"
county	6	0	""
county	7	0	""
county	8	0	""
county	9	0	""
county	10	1	"Marsabit High School"
county	11	2	"Merti Muslim Girls Secondary,Garba Tulla High School"
county	12	5	"Mikinduri Girls' High school,St Angelic Girls Secondary School,Ruiga Girls,Gikuma,St Pius X Seminary"
county	13	3	"Nturiri,Kanjianduthi,Iruma"
county	14	7	"St Philip Mochuneke,St Ngunyumu,Kirimari,Kiangungi,Karaba,Kanyambora,Embu High"
county	15	4	"St Luke Boys High High,Ndatani Girls,Mitamisyi Secondary,Kalimani"
county	16	5	"Mbukuni,Matungulu,Masii Boys High School,Kathangani,Mokowe Mixed Secondary"
county	17	2	"Mwaani Girls,Darajani Secondary School"
county	18	0	""
county	19	4	"Mwiyogo Girls,Wamagana Girls,Watuka High School,Giakabii High School (burnt twice in two weeks)"
county	20	1	"Wanguru Secondary"
county	21	3	"Rarakwa Girls Secondary,Kahithe,Igikiro"
county	22	6	"Muhoho High,Stephjoy (last year),Komothai Girls,Komothai Boys,Kamandura Girls,Kiamworia Girls Secondary School"
county	23	0	""
county	24	1	"Chewoyet High "
county	25	0	""
county	26	2	"St Theresa's Bikeke Girls,St Francis Suwerwa Secondary"
county	27	9	"Ngara Falls Girls,Tembelio,Sosiyu,99. Moiben,Kipkabus,Kimoning,Arnessens,AIC Torochmoi,Leseru High School"
county	28	2	"St Francis Kimuron Secondary,St Patrick's School Iten"
county	29	1	"Kilibwon High"
county	30	1	"Kabarnet High"
county	31	1	"Nyahururu High School"
county	32	9	"Kiambogo Secondary,Shiners Boys High,PCEA Kambala Girls,Michina,Mau Narok,Kirobon Girls,Kirobon Boys,Kambala Girls Secondary,ELCK Kongoi Girls"
county	33	5	"Ntulele Secondary,Maasai Mara Secondary,Ololunga Boys,Narok Boys,St Stephen Secondary"
county	34	0	""
county	35	8	"Chepsir,Kericho High,Lelu,Londiani,Tengecha Boys High,Longisa High School,Kabartegan Boys High School"
county	36	2	"Ndanai,Kaplong Boys Secondary"
county	37	0	""
county	38	1	"Kaimosi Boys"
county	39	3	"Kaptama High School,St Francis Kimuron Secondary,Kapsokwony Boys"
county	40	1	"Nambale High School"
county	41	0	""
county	42	0	""
county	43	3	"Adega Mixed Secondary,Wangapala High School,Atela Mixed Secondary"
county	44	5	"Isebania High,Awendo Excellent,Kodero Bara Boys,Mukuyu Mixed Secondary School,Uriri High School"
county	45	11	"Itibo Boys High School,St Mary’s Nyamagwa Girls High School,St Peter's Nyamesocho Secondary, St John's Nyamagwa Boys,Nyamagwa Catholic Girls Secondary,Nyamache Boys Secondary,Naikuru,Magena Boys Secondary,Machongo PAG,Itierio Girls School, Itierio Boys School"
county	46	11	"Omobera SDA Girls,Bosco Nyabiosi Secondary,St Charles Lwanga Nyansabakwa,St Andrews Kaggwa Boys Primary,Rigoma Girls,Mochenwa SDA Mixed,Matutu SDA Secondary (private),Matongo Nyamira,Makairo DEB Secondary,Geke Mixed Secondary School,Bonyunyu Secondary School"
county	47	3	"Ruthumitu Secondary School, Lang'ata High School,Sunshine Secondary School"
country	KE	126	""
\.

--
-- Name: schoolfires_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY schoolfires
    ADD CONSTRAINT schoolfires_pkey PRIMARY KEY (geo_level, geo_code, "schoolfires");


--
-- PostgreSQL database dump complete
--

