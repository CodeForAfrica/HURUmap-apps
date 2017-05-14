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

ALTER TABLE IF EXISTS ONLY public.livestock_products DROP CONSTRAINT IF EXISTS livestock_products_pkey;
DROP TABLE IF EXISTS public.livestock_products;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: livestock_products; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE livestock_products (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "livestock_products" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: livestock_products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY livestock_products (geo_level, geo_code, "livestock_products", total) FROM stdin;
county	26	mik (kg)	106000.0
county	26	beef (kg)	1780.0
county	26	wool (kg)	0
county	26	chevon (kg)	100.0
county	26	mutton (kg)	400.0
county	26	pork (kg)	3.5
county	26	rabbit meat (kg)	1.9
county	26	poultry meat (kg)	98.0
county	26	camel meat (kg)	0
county	26	honey (kg)	90.0
county	26	wax (kg)	0
county	26	eggs (tray)	16686.2
county	26	hides (no)	0
county	26	skin (no)	0
county	24	mik (kg)	8596.8
county	24	beef (kg)	5475.0
county	24	wool (kg)	88.2
county	24	chevon (kg)	243.0
county	24	mutton (kg)	207.9
county	24	pork (kg)	0.6
county	24	rabbit meat (kg)	0.9
county	24	poultry meat (kg)	128.2
county	24	camel meat (kg)	7.7
county	24	honey (kg)	162.8
county	24	wax (kg)	16.3
county	24	eggs (tray)	2878.0
county	24	hides (no)	66.7
county	24	skin (no)	17.2
county	31	mik (kg)	40920.0
county	31	beef (kg)	3115.3
county	31	wool (kg)	7.0
county	31	chevon (kg)	666.0
county	31	mutton (kg)	702.0
county	31	pork (kg)	76.7
county	31	rabbit meat (kg)	9.2
county	31	poultry meat (kg)	299.1
county	31	camel meat (kg)	162.0
county	31	honey (kg)	261.3
county	31	wax (kg)	87.1
county	31	eggs (tray)	448.7
county	31	hides (no)	0
county	31	skin (no)	0
county	34	mik (kg)	16166.7
county	34	beef (kg)	2450.7
county	34	wool (kg)	0
county	34	chevon (kg)	439.7
county	34	mutton (kg)	327.9
county	34	pork (kg)	34.5
county	34	rabbit meat (kg)	9.3
county	34	poultry meat (kg)	1003.6
county	34	camel meat (kg)	2.4
county	34	honey (kg)	31.5
county	34	wax (kg)	0.7
county	34	eggs (tray)	65.7
county	34	hides (no)	0
county	34	skin (no)	0
county	15	mik (kg)	17804.7
county	15	beef (kg)	5804.4
county	15	wool (kg)	0
county	15	chevon (kg)	2448.9
county	15	mutton (kg)	132.4
county	15	pork (kg)	21.3
county	15	rabbit meat (kg)	0.8
county	15	poultry meat (kg)	4450.7
county	15	camel meat (kg)	0
county	15	honey (kg)	867.7
county	15	wax (kg)	114.8
county	15	eggs (tray)	513.4
county	15	hides (no)	6.9
county	15	skin (no)	239.7
county	16	mik (kg)	50208.8
county	16	beef (kg)	8122.7
county	16	wool (kg)	0
county	16	chevon (kg)	1078.2
county	16	mutton (kg)	268.7
county	16	pork (kg)	379.0
county	16	rabbit meat (kg)	28.2
county	16	poultry meat (kg)	1774.7
county	16	camel meat (kg)	0
county	16	honey (kg)	170.5
county	16	wax (kg)	304.0
county	16	eggs (tray)	8210.3
county	16	hides (no)	99.0
county	16	skin (no)	10.5
county	17	mik (kg)	32735.4
county	17	beef (kg)	2395.7
county	17	wool (kg)	0
county	17	chevon (kg)	316.3
county	17	mutton (kg)	28.5
county	17	pork (kg)	3.5
county	17	rabbit meat (kg)	3.4
county	17	poultry meat (kg)	315.5
county	17	camel meat (kg)	1.3
county	17	honey (kg)	167.1
county	17	wax (kg)	16.7
county	17	eggs (tray)	424.3
county	17	hides (no)	14.4
county	17	skin (no)	44.2
county	7	mik (kg)	13755.8
county	7	beef (kg)	2565.2
county	7	wool (kg)	0
county	7	chevon (kg)	1083.9
county	7	mutton (kg)	141.2
county	7	pork (kg)	0
county	7	rabbit meat (kg)	0
county	7	poultry meat (kg)	127.8
county	7	camel meat (kg)	4903.3
county	7	honey (kg)	9.1
county	7	wax (kg)	0.0
county	7	eggs (tray)	565.1
county	7	hides (no)	0
county	7	skin (no)	0
county	5	mik (kg)	1850.0
county	5	beef (kg)	31.0
county	5	wool (kg)	0
county	5	chevon (kg)	83.5
county	5	mutton (kg)	122.1
county	5	pork (kg)	0
county	5	rabbit meat (kg)	0.2
county	5	poultry meat (kg)	7.7
county	5	camel meat (kg)	0
county	5	honey (kg)	26.5
county	5	wax (kg)	2.0
county	5	eggs (tray)	21.8
county	5	hides (no)	0
county	5	skin (no)	0
county	4	mik (kg)	57973.1
county	4	beef (kg)	569.8
county	4	wool (kg)	0
county	4	chevon (kg)	382.7
county	4	mutton (kg)	150.8
county	4	pork (kg)	0
county	4	rabbit meat (kg)	0.7
county	4	poultry meat (kg)	35.6
county	4	camel meat (kg)	159.8
county	4	honey (kg)	25.2
county	4	wax (kg)	2.6
county	4	eggs (tray)	418.7
county	4	hides (no)	0
county	4	skin (no)	0
county	8	mik (kg)	83330.3
county	8	beef (kg)	487.4
county	8	wool (kg)	0
county	8	chevon (kg)	1537.6
county	8	mutton (kg)	1317.9
county	8	pork (kg)	0
county	8	rabbit meat (kg)	0
county	8	poultry meat (kg)	38.4
county	8	camel meat (kg)	1988.8
county	8	honey (kg)	3.4
county	8	wax (kg)	0.1
county	8	eggs (tray)	2947.1
county	8	hides (no)	0
county	8	skin (no)	0
county	1	mik (kg)	1195.1
county	1	beef (kg)	229.4
county	1	wool (kg)	0
county	1	chevon (kg)	2.2
county	1	mutton (kg)	2.0
county	1	pork (kg)	3.4
county	1	rabbit meat (kg)	0.4
county	1	poultry meat (kg)	545.3
county	1	camel meat (kg)	0
county	1	honey (kg)	0.5
county	1	wax (kg)	0.0
county	1	eggs (tray)	2612.2
county	1	hides (no)	2.3
county	1	skin (no)	3.8
county	6	mik (kg)	17230.4
county	6	beef (kg)	1075.0
county	6	wool (kg)	0
county	6	chevon (kg)	159.0
county	6	mutton (kg)	31.1
county	6	pork (kg)	6.8
county	6	rabbit meat (kg)	0.7
county	6	poultry meat (kg)	251.9
county	6	camel meat (kg)	4.3
county	6	honey (kg)	21.2
county	6	wax (kg)	1.9
county	6	eggs (tray)	261.2
county	6	hides (no)	0
county	6	skin (no)	0
county	2	mik (kg)	3142.7
county	2	beef (kg)	2009.1
county	2	wool (kg)	0
county	2	chevon (kg)	230.6
county	2	mutton (kg)	60.9
county	2	pork (kg)	2.0
county	2	rabbit meat (kg)	0.3
county	2	poultry meat (kg)	207.5
county	2	camel meat (kg)	1.5
county	2	honey (kg)	1.0
county	2	wax (kg)	0.3
county	2	eggs (tray)	70.2
county	2	hides (no)	96.1
county	2	skin (no)	71.2
county	3	mik (kg)	44969.2
county	3	beef (kg)	2196.8
county	3	wool (kg)	0
county	3	chevon (kg)	731.0
county	3	mutton (kg)	82.1
county	3	pork (kg)	0.3
county	3	rabbit meat (kg)	0.1
county	3	poultry meat (kg)	228.0
county	3	camel meat (kg)	0.2
county	3	honey (kg)	36.8
county	3	wax (kg)	0.7
county	3	eggs (tray)	1174.9
county	3	hides (no)	0
county	3	skin (no)	0
county	21	mik (kg)	167609.7
county	21	beef (kg)	2692.3
county	21	wool (kg)	0
county	21	chevon (kg)	168.4
county	21	mutton (kg)	33.8
county	21	pork (kg)	34.0
county	21	rabbit meat (kg)	0
county	21	poultry meat (kg)	1617.6
county	21	camel meat (kg)	0
county	21	honey (kg)	93.7
county	21	wax (kg)	9.3
county	21	eggs (tray)	1952.7
county	21	hides (no)	0
county	21	skin (no)	0
county	14	mik (kg)	34859.0
county	14	beef (kg)	979.5
county	14	wool (kg)	0
county	14	chevon (kg)	263.4
county	14	mutton (kg)	76.2
county	14	pork (kg)	146.2
county	14	rabbit meat (kg)	2.2
county	14	poultry meat (kg)	209.7
county	14	camel meat (kg)	0
county	14	honey (kg)	458.3
county	14	wax (kg)	17.8
county	14	eggs (tray)	17685.8
county	14	hides (no)	0
county	14	skin (no)	0
county	20	mik (kg)	77122.3
county	20	beef (kg)	1070.1
county	20	wool (kg)	0
county	20	chevon (kg)	65.2
county	20	mutton (kg)	9.5
county	20	pork (kg)	24.8
county	20	rabbit meat (kg)	13.0
county	20	poultry meat (kg)	2684.0
county	20	camel meat (kg)	0
county	20	honey (kg)	29.1
county	20	wax (kg)	0
county	20	eggs (tray)	676.1
county	20	hides (no)	0
county	20	skin (no)	0
county	19	mik (kg)	175747.9
county	19	beef (kg)	2599.0
county	19	wool (kg)	0
county	19	chevon (kg)	395.4
county	19	mutton (kg)	714.6
county	19	pork (kg)	265.6
county	19	rabbit meat (kg)	0
county	19	poultry meat (kg)	250.5
county	19	camel meat (kg)	0
county	19	honey (kg)	17.2
county	19	wax (kg)	0
county	19	eggs (tray)	9345.3
county	19	hides (no)	41.9
county	19	skin (no)	14.4
county	27	mik (kg)	196083.1
county	27	beef (kg)	487.0
county	27	wool (kg)	0
county	27	chevon (kg)	17.1
county	27	mutton (kg)	49.8
county	27	pork (kg)	53.5
county	27	rabbit meat (kg)	3.2
county	27	poultry meat (kg)	14.1
county	27	camel meat (kg)	0
county	27	honey (kg)	187.8
county	27	wax (kg)	15.9
county	27	eggs (tray)	5390.2
county	27	hides (no)	89.3
county	27	skin (no)	38.8
county	13	mik (kg)	34246.6
county	13	beef (kg)	819.0
county	13	wool (kg)	0
county	13	chevon (kg)	113.8
county	13	mutton (kg)	93.1
county	13	pork (kg)	16.5
county	13	rabbit meat (kg)	25.8
county	13	poultry meat (kg)	269.0
county	13	camel meat (kg)	0
county	13	honey (kg)	1382.0
county	13	wax (kg)	0
county	13	eggs (tray)	589.5
county	13	hides (no)	29.5
county	13	skin (no)	14.7
county	12	mik (kg)	120200.0
county	12	beef (kg)	4000.0
county	12	wool (kg)	19.8
county	12	chevon (kg)	1425.0
county	12	mutton (kg)	681.0
county	12	pork (kg)	83.5
county	12	rabbit meat (kg)	6.2
county	12	poultry meat (kg)	103.7
county	12	camel meat (kg)	0
county	12	honey (kg)	191.6
county	12	wax (kg)	0
county	12	eggs (tray)	985.0
county	12	hides (no)	0
county	12	skin (no)	0
county	11	mik (kg)	3811.4
county	11	beef (kg)	540.0
county	11	wool (kg)	0
county	11	chevon (kg)	214.0
county	11	mutton (kg)	233.0
county	11	pork (kg)	0
county	11	rabbit meat (kg)	0
county	11	poultry meat (kg)	20.0
county	11	camel meat (kg)	0
county	11	honey (kg)	32.0
county	11	wax (kg)	0
county	11	eggs (tray)	900.0
county	11	hides (no)	2.2
county	11	skin (no)	0.0
county	10	mik (kg)	4131.0
county	10	beef (kg)	7036.5
county	10	wool (kg)	0
county	10	chevon (kg)	5752.7
county	10	mutton (kg)	4395.6
county	10	pork (kg)	0
county	10	rabbit meat (kg)	0
county	10	poultry meat (kg)	26.5
county	10	camel meat (kg)	3415.3
county	10	honey (kg)	34.7
county	10	wax (kg)	0.1
county	10	eggs (tray)	773.9
county	10	hides (no)	61.2
county	10	skin (no)	9.2
county	33	mik (kg)	16854.3
county	33	beef (kg)	2402.0
county	33	wool (kg)	649.0
county	33	chevon (kg)	835.8
county	33	mutton (kg)	2289.8
county	33	pork (kg)	0.0
county	33	rabbit meat (kg)	1.6
county	33	poultry meat (kg)	1395.9
county	33	camel meat (kg)	0
county	33	honey (kg)	231.7
county	33	wax (kg)	9.1
county	33	eggs (tray)	1074.6
county	33	hides (no)	58.0
county	33	skin (no)	5.6
county	36	mik (kg)	72488.9
county	36	beef (kg)	1292.9
county	36	wool (kg)	0
county	36	chevon (kg)	32.3
county	36	mutton (kg)	30.6
county	36	pork (kg)	0
county	36	rabbit meat (kg)	2.2
county	36	poultry meat (kg)	375.8
county	36	camel meat (kg)	0
county	36	honey (kg)	95.4
county	36	wax (kg)	14.2
county	36	eggs (tray)	2049.1
county	36	hides (no)	0
county	36	skin (no)	0
county	46	mik (kg)	9810.1
county	46	beef (kg)	447.0
county	46	wool (kg)	0
county	46	chevon (kg)	267.8
county	46	mutton (kg)	36.9
county	46	pork (kg)	152.1
county	46	rabbit meat (kg)	41.6
county	46	poultry meat (kg)	518.9
county	46	camel meat (kg)	0
county	46	honey (kg)	289.6
county	46	wax (kg)	20.1
county	46	eggs (tray)	8609.7
county	46	hides (no)	20.0
county	46	skin (no)	10.5
county	45	mik (kg)	182819.8
county	45	beef (kg)	1674.0
county	45	wool (kg)	0
county	45	chevon (kg)	426.4
county	45	mutton (kg)	64.6
county	45	pork (kg)	5.2
county	45	rabbit meat (kg)	0
county	45	poultry meat (kg)	1648.6
county	45	camel meat (kg)	0
county	45	honey (kg)	66.1
county	45	wax (kg)	21.8
county	45	eggs (tray)	1682.4
county	45	hides (no)	46.0
county	45	skin (no)	18.1
county	42	mik (kg)	24730.0
county	42	beef (kg)	2768.1
county	42	wool (kg)	0
county	42	chevon (kg)	12603.0
county	42	mutton (kg)	13241.0
county	42	pork (kg)	19579.0
county	42	rabbit meat (kg)	0.2
county	42	poultry meat (kg)	33354.0
county	42	camel meat (kg)	0
county	42	honey (kg)	34.7
county	42	wax (kg)	2.8
county	42	eggs (tray)	723.9
county	42	hides (no)	0
county	42	skin (no)	0
county	44	mik (kg)	43574.6
county	44	beef (kg)	6536.1
county	44	wool (kg)	0
county	44	chevon (kg)	815.9
county	44	mutton (kg)	1331.5
county	44	pork (kg)	96.3
county	44	rabbit meat (kg)	0
county	44	poultry meat (kg)	1728.1
county	44	camel meat (kg)	0
county	44	honey (kg)	67.2
county	44	wax (kg)	11.5
county	44	eggs (tray)	2548.0
county	44	hides (no)	76.7
county	44	skin (no)	74.7
county	43	mik (kg)	38051.8
county	43	beef (kg)	4655.4
county	43	wool (kg)	0
county	43	chevon (kg)	893.6
county	43	mutton (kg)	2455.5
county	43	pork (kg)	37.1
county	43	rabbit meat (kg)	10.4
county	43	poultry meat (kg)	924.1
county	43	camel meat (kg)	0
county	43	honey (kg)	133.2
county	43	wax (kg)	0.1
county	43	eggs (tray)	573.4
county	43	hides (no)	0
county	43	skin (no)	0
county	25	mik (kg)	7124.0
county	25	beef (kg)	270.3
county	25	wool (kg)	0
county	25	chevon (kg)	141.3
county	25	mutton (kg)	76.0
county	25	pork (kg)	0
county	25	rabbit meat (kg)	0
county	25	poultry meat (kg)	6.3
county	25	camel meat (kg)	306.8
county	25	honey (kg)	159.9
county	25	wax (kg)	11.6
county	25	eggs (tray)	19.1
county	25	hides (no)	161.6
county	25	skin (no)	12.8
county	18	mik (kg)	225827.6
county	18	beef (kg)	1797.8
county	18	wool (kg)	164.4
county	18	chevon (kg)	13102.0
county	18	mutton (kg)	37930.3
county	18	pork (kg)	16303.0
county	18	rabbit meat (kg)	10.0
county	18	poultry meat (kg)	18740.9
county	18	camel meat (kg)	0
county	18	honey (kg)	11449.5
county	18	wax (kg)	0
county	18	eggs (tray)	31829.9
county	18	hides (no)	32.3
county	18	skin (no)	55.5
county	22	mik (kg)	334000.3
county	22	beef (kg)	2206.9
county	22	wool (kg)	24.8
county	22	chevon (kg)	15828.7
county	22	mutton (kg)	19798.4
county	22	pork (kg)	2340.1
county	22	rabbit meat (kg)	107.8
county	22	poultry meat (kg)	2731.2
county	22	camel meat (kg)	0
county	22	honey (kg)	76.7
county	22	wax (kg)	3.4
county	22	eggs (tray)	10056.5
county	22	hides (no)	35.1
county	22	skin (no)	36.0
county	41	mik (kg)	24308.5
county	41	beef (kg)	2688.1
county	41	wool (kg)	0
county	41	chevon (kg)	639.7
county	41	mutton (kg)	312.5
county	41	pork (kg)	132.5
county	41	rabbit meat (kg)	60.5
county	41	poultry meat (kg)	1609.4
county	41	camel meat (kg)	0
county	41	honey (kg)	436.6
county	41	wax (kg)	8.1
county	41	eggs (tray)	630.5
county	41	hides (no)	0
county	41	skin (no)	0
county	39	mik (kg)	225855.8
county	39	beef (kg)	3903.1
county	39	wool (kg)	0
county	39	chevon (kg)	32.9
county	39	mutton (kg)	59.6
county	39	pork (kg)	31.2
county	39	rabbit meat (kg)	0
county	39	poultry meat (kg)	725.7
county	39	camel meat (kg)	0
county	39	honey (kg)	184.4
county	39	wax (kg)	7.5
county	39	eggs (tray)	4398.5
county	39	hides (no)	24.4
county	39	skin (no)	134.2
county	37	mik (kg)	101984.6
county	37	beef (kg)	5892.2
county	37	wool (kg)	0
county	37	chevon (kg)	115.1
county	37	mutton (kg)	259.5
county	37	pork (kg)	494.9
county	37	rabbit meat (kg)	0
county	37	poultry meat (kg)	362.6
county	37	camel meat (kg)	0
county	37	honey (kg)	112.8
county	37	wax (kg)	3.2
county	37	eggs (tray)	1399.3
county	37	hides (no)	0
county	37	skin (no)	63.7
county	38	mik (kg)	27060.8
county	38	beef (kg)	35.4
county	38	wool (kg)	0
county	38	chevon (kg)	34.2
county	38	mutton (kg)	6.8
county	38	pork (kg)	32.2
county	38	rabbit meat (kg)	4.2
county	38	poultry meat (kg)	14.9
county	38	camel meat (kg)	0
county	38	honey (kg)	66.0
county	38	wax (kg)	1.6
county	38	eggs (tray)	620.8
county	38	hides (no)	5.6
county	38	skin (no)	30.8
county	29	mik (kg)	142375.9
county	29	beef (kg)	839.3
county	29	wool (kg)	0
county	29	chevon (kg)	25.2
county	29	mutton (kg)	117.5
county	29	pork (kg)	0
county	29	rabbit meat (kg)	0
county	29	poultry meat (kg)	0
county	29	camel meat (kg)	0
county	29	honey (kg)	189.1
county	29	wax (kg)	1.9
county	29	eggs (tray)	6962.4
county	29	hides (no)	14.9
county	29	skin (no)	6.1
county	30	mik (kg)	24454.9
county	30	beef (kg)	1823.7
county	30	wool (kg)	0.5
county	30	chevon (kg)	1073.1
county	30	mutton (kg)	250.6
county	30	pork (kg)	4.7
county	30	rabbit meat (kg)	0
county	30	poultry meat (kg)	452.6
county	30	camel meat (kg)	27.3
county	30	honey (kg)	567.5
county	30	wax (kg)	0.8
county	30	eggs (tray)	997.7
county	30	hides (no)	0
county	30	skin (no)	0
county	32	mik (kg)	296398.7
county	32	beef (kg)	3355.2
county	32	wool (kg)	82.8
county	32	chevon (kg)	116.4
county	32	mutton (kg)	249.2
county	32	pork (kg)	21.2
county	32	rabbit meat (kg)	0
county	32	poultry meat (kg)	0
county	32	camel meat (kg)	0
county	32	honey (kg)	313.2
county	32	wax (kg)	18.3
county	32	eggs (tray)	5144.5
county	32	hides (no)	0
county	32	skin (no)	0
county	35	mik (kg)	155000.0
county	35	beef (kg)	1711.8
county	35	wool (kg)	0
county	35	chevon (kg)	128.9
county	35	mutton (kg)	121.0
county	35	pork (kg)	5.0
county	35	rabbit meat (kg)	0
county	35	poultry meat (kg)	0
county	35	camel meat (kg)	0
county	35	honey (kg)	61.1
county	35	wax (kg)	0.7
county	35	eggs (tray)	1253.3
county	35	hides (no)	0
county	35	skin (no)	0
county	28	mik (kg)	46512.5
county	28	beef (kg)	532.9
county	28	wool (kg)	224.7
county	28	chevon (kg)	201.5
county	28	mutton (kg)	215.0
county	28	pork (kg)	0.1
county	28	rabbit meat (kg)	0
county	28	poultry meat (kg)	26.9
county	28	camel meat (kg)	0
county	28	honey (kg)	186.8
county	28	wax (kg)	3.1
county	28	eggs (tray)	8600.0
county	28	hides (no)	0
county	28	skin (no)	0
county	47	mik (kg)	38762.2
county	47	beef (kg)	2421.5
county	47	wool (kg)	0
county	47	chevon (kg)	382.1
county	47	mutton (kg)	1286.5
county	47	pork (kg)	1423.9
county	47	rabbit meat (kg)	0
county	47	poultry meat (kg)	910.0
county	47	camel meat (kg)	0
county	47	honey (kg)	53.9
county	47	wax (kg)	5.8
county	47	eggs (tray)	1626.0
county	47	hides (no)	139.9
county	47	skin (no)	7.7
county	23	mik (kg)	52601.3
county	23	beef (kg)	313.2
county	23	wool (kg)	0
county	23	chevon (kg)	1073.3
county	23	mutton (kg)	456.8
county	23	pork (kg)	3.0
county	23	rabbit meat (kg)	0
county	23	poultry meat (kg)	0.9
county	23	camel meat (kg)	240.0
county	23	honey (kg)	103.1
county	23	wax (kg)	0
county	23	eggs (tray)	244.1
county	23	hides (no)	264.2
county	23	skin (no)	4.0
county	9	mik (kg)	15769.2
county	9	beef (kg)	717.6
county	9	wool (kg)	0
county	9	chevon (kg)	1251.8
county	9	mutton (kg)	517.6
county	9	pork (kg)	0
county	9	rabbit meat (kg)	0
county	9	poultry meat (kg)	17.4
county	9	camel meat (kg)	1076.8
county	9	honey (kg)	5.5
county	9	wax (kg)	0.1
county	9	eggs (tray)	155.0
county	9	hides (no)	0
county	9	skin (no)	0
county	40	mik (kg)	13813.0
county	40	beef (kg)	6635.0
county	40	wool (kg)	0
county	40	chevon (kg)	252.0
county	40	mutton (kg)	220.0
county	40	pork (kg)	987.0
county	40	rabbit meat (kg)	3.3
county	40	poultry meat (kg)	791.2
county	40	camel meat (kg)	0
county	40	honey (kg)	350.0
county	40	wax (kg)	0
county	40	eggs (tray)	4389.0
county	40	hides (no)	0
county	40	skin (no)	0
country	KE	mik (kg)	3429868.7
country	KE	beef (kg)	113450.3
country	KE	wool (kg)	1261.2
country	KE	chevon (kg)	68190.6
country	KE	mutton (kg)	91589.6
country	KE	pork (kg)	42804.3
country	KE	rabbit meat (kg)	348.4
country	KE	poultry meat (kg)	81042.7
country	KE	camel meat (kg)	12297.5
country	KE	honey (kg)	19534.8
country	KE	wax (kg)	736.3
country	KE	eggs (tray)	171183.9
country	KE	hides (no)	1388.1
country	KE	skin (no)	923.5
\.
--
-- Name: livestock_products_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY livestock_products
    ADD CONSTRAINT livestock_products_pkey PRIMARY KEY (geo_level, geo_code, "livestock_products");


--
-- PostgreSQL database dump complete
--


