--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: agegroup_gender; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE agegroup_gender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    gender character varying(128) NOT NULL,
    "age group" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE agegroup_gender OWNER TO hurumap_ke;

--
-- Name: ageincompletedyears_ruralorurban_sex; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE ageincompletedyears_ruralorurban_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "rural or urban" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    "age in completed years" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE ageincompletedyears_ruralorurban_sex OWNER TO hurumap_ke;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO hurumap_ke;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO hurumap_ke;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO hurumap_ke;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO hurumap_ke;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO hurumap_ke;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO hurumap_ke;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO hurumap_ke;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO hurumap_ke;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO hurumap_ke;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO hurumap_ke;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO hurumap_ke;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO hurumap_ke;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: contraceptive_method; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE contraceptive_method (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    contraceptive_method character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE contraceptive_method OWNER TO hurumap_ke;

--
-- Name: contraceptive_modern_method; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE contraceptive_modern_method (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    contraceptive_modern_method character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE contraceptive_modern_method OWNER TO hurumap_ke;

--
-- Name: contraceptive_traditional_method; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE contraceptive_traditional_method (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    contraceptive_traditional_method character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE contraceptive_traditional_method OWNER TO hurumap_ke;

--
-- Name: contraceptive_use; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE contraceptive_use (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    contraceptive_use character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE contraceptive_use OWNER TO hurumap_ke;

--
-- Name: crimereport; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE crimereport (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    crimereport character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE crimereport OWNER TO hurumap_ke;

--
-- Name: crop_production; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE crop_production (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    crop_production character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE crop_production OWNER TO hurumap_ke;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO hurumap_ke;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO hurumap_ke;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO hurumap_ke;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO hurumap_ke;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO hurumap_ke;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO hurumap_ke;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: employmentactivitystatus_sex; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE employmentactivitystatus_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "employment activity status" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE employmentactivitystatus_sex OWNER TO hurumap_ke;

--
-- Name: fertility; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE fertility (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    fertility character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE fertility OWNER TO hurumap_ke;

--
-- Name: gender_ruralorurban; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE gender_ruralorurban (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    gender character varying(128) NOT NULL,
    "rural or urban" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE gender_ruralorurban OWNER TO hurumap_ke;

--
-- Name: health_facilities_type; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE health_facilities_type (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    type character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE health_facilities_type OWNER TO hurumap_ke;

--
-- Name: healthratios; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE healthratios (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    healthratios character varying(30) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE healthratios OWNER TO hurumap_ke;

--
-- Name: heightforage; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE heightforage (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "height for age" character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE heightforage OWNER TO hurumap_ke;

--
-- Name: highesteducationlevelreached; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE highesteducationlevelreached (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "highest education level reached" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE highesteducationlevelreached OWNER TO hurumap_ke;

--
-- Name: household_itn_use_users; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE household_itn_use_users (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    household character varying(128) NOT NULL,
    users character varying(128) NOT NULL,
    itn_use character varying(128) NOT NULL,
    total double precision
);


ALTER TABLE household_itn_use_users OWNER TO hurumap_ke;

--
-- Name: householdpossessionofitn; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE householdpossessionofitn (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "household possession of itn" character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE householdpossessionofitn OWNER TO hurumap_ke;

--
-- Name: hurumap_geography; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE hurumap_geography (
    id integer NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    name character varying(20) NOT NULL,
    long_name character varying(128) NOT NULL,
    year integer,
    osm_area_id integer,
    square_kms double precision,
    parent_level character varying(15),
    parent_code character varying(10)
);


ALTER TABLE hurumap_geography OWNER TO hurumap_ke;

--
-- Name: hurumap_geography_id_seq; Type: SEQUENCE; Schema: public; Owner: hurumap_ke
--

CREATE SEQUENCE hurumap_geography_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hurumap_geography_id_seq OWNER TO hurumap_ke;

--
-- Name: hurumap_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hurumap_ke
--

ALTER SEQUENCE hurumap_geography_id_seq OWNED BY hurumap_geography.id;


--
-- Name: knowledgeofhivpreventionmethods_sex; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE knowledgeofhivpreventionmethods_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "knowledge of hiv prevention methods" character varying(128) NOT NULL,
    sex character varying(15) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE knowledgeofhivpreventionmethods_sex OWNER TO hurumap_ke;

--
-- Name: livestock_population; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE livestock_population (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    livestock_population character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE livestock_population OWNER TO hurumap_ke;

--
-- Name: livestock_products; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE livestock_products (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    livestock_products character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE livestock_products OWNER TO hurumap_ke;

--
-- Name: mainmodeofhumanwastedisposal; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE mainmodeofhumanwastedisposal (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main mode of human waste disposal" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE mainmodeofhumanwastedisposal OWNER TO hurumap_ke;

--
-- Name: mainsourceofwater; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE mainsourceofwater (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main source of water" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE mainsourceofwater OWNER TO hurumap_ke;

--
-- Name: maintypeoffloormaterial; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE maintypeoffloormaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of floor material" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE maintypeoffloormaterial OWNER TO hurumap_ke;

--
-- Name: maintypeoflightingfuel; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE maintypeoflightingfuel (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of lighting fuel" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE maintypeoflightingfuel OWNER TO hurumap_ke;

--
-- Name: maintypeofroofingmaterial; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE maintypeofroofingmaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of roofing material" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE maintypeofroofingmaterial OWNER TO hurumap_ke;

--
-- Name: maintypeofwallmaterial; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE maintypeofwallmaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of wall material" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE maintypeofwallmaterial OWNER TO hurumap_ke;

--
-- Name: maternalcareindicators; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE maternalcareindicators (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "maternal care indicators" character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE maternalcareindicators OWNER TO hurumap_ke;

--
-- Name: protests; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE protests (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    protests character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE protests OWNER TO hurumap_ke;

--
-- Name: schoolattendance_sex; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE schoolattendance_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "school attendance" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE schoolattendance_sex OWNER TO hurumap_ke;

--
-- Name: schoolfires; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE schoolfires (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    total integer NOT NULL,
    schoolfires text NOT NULL
);


ALTER TABLE schoolfires OWNER TO hurumap_ke;

--
-- Name: treatment_type; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE treatment_type (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    type character varying(128) NOT NULL,
    treatment character varying(128) NOT NULL,
    total double precision
);


ALTER TABLE treatment_type OWNER TO hurumap_ke;

--
-- Name: treatmentofchildrenwithfever; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE treatmentofchildrenwithfever (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "treatment of children with fever" character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE treatmentofchildrenwithfever OWNER TO hurumap_ke;

--
-- Name: typesofcrime; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE typesofcrime (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    typesofcrime character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE typesofcrime OWNER TO hurumap_ke;

--
-- Name: useofipt; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE useofipt (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "use of ipt" character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE useofipt OWNER TO hurumap_ke;

--
-- Name: vaccinations; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE vaccinations (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    vaccinations character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE vaccinations OWNER TO hurumap_ke;

--
-- Name: voterregistration; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE voterregistration (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    voterregistration character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE voterregistration OWNER TO hurumap_ke;

--
-- Name: weightforage; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE weightforage (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "weight for age" character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE weightforage OWNER TO hurumap_ke;

--
-- Name: weightforheight; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE weightforheight (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "weight for height" character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE weightforheight OWNER TO hurumap_ke;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: hurumap_geography id; Type: DEFAULT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY hurumap_geography ALTER COLUMN id SET DEFAULT nextval('hurumap_geography_id_seq'::regclass);


--
-- Data for Name: agegroup_gender; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY agegroup_gender (geo_level, geo_code, gender, "age group", total) FROM stdin;
\.


--
-- Data for Name: ageincompletedyears_ruralorurban_sex; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY ageincompletedyears_ruralorurban_sex (geo_level, geo_code, "rural or urban", sex, "age in completed years", total) FROM stdin;
country	KE	rural	female	0	412072
country	KE	rural	male	0	420982
country	KE	rural	female	1	363382
country	KE	rural	male	1	373409
country	KE	rural	female	10	436772
country	KE	rural	male	10	462383
country	KE	rural	female	11	308411
country	KE	rural	male	11	307303
country	KE	rural	female	12	391720
country	KE	rural	male	12	426985
country	KE	rural	female	13	342464
country	KE	rural	male	13	359022
country	KE	rural	female	14	327942
country	KE	rural	male	14	359182
country	KE	rural	female	15	313970
country	KE	rural	male	15	344713
country	KE	rural	female	16	296841
country	KE	rural	male	16	323323
country	KE	rural	female	17	269903
country	KE	rural	male	17	304443
country	KE	rural	female	18	285812
country	KE	rural	male	18	326738
country	KE	rural	female	19	222694
country	KE	rural	male	19	237052
country	KE	rural	female	2	440804
country	KE	rural	male	2	450684
country	KE	rural	female	20	317168
country	KE	rural	male	20	297818
country	KE	rural	female	21	195152
country	KE	rural	male	21	186052
country	KE	rural	female	22	234105
country	KE	rural	male	22	206249
country	KE	rural	female	23	209874
country	KE	rural	male	23	181942
country	KE	rural	female	24	201131
country	KE	rural	male	24	173586
country	KE	rural	female	25	265174
country	KE	rural	male	25	223914
country	KE	rural	female	26	175034
country	KE	rural	male	26	151790
country	KE	rural	female	27	172601
country	KE	rural	male	27	157997
country	KE	rural	female	28	182641
country	KE	rural	male	28	145992
country	KE	rural	female	29	149819
country	KE	rural	male	29	133466
country	KE	rural	female	3	424921
country	KE	rural	male	3	430001
country	KE	rural	female	30	265214
country	KE	rural	male	30	221892
country	KE	rural	female	31	120455
country	KE	rural	male	31	118055
country	KE	rural	female	32	158466
country	KE	rural	male	32	137012
country	KE	rural	female	33	111829
country	KE	rural	male	33	102432
country	KE	rural	female	34	118639
country	KE	rural	male	34	109029
country	KE	rural	female	35	205742
country	KE	rural	male	35	181860
country	KE	rural	female	36	116703
country	KE	rural	male	36	103602
country	KE	rural	female	37	108290
country	KE	rural	male	37	100269
country	KE	rural	female	38	119400
country	KE	rural	male	38	97888
country	KE	rural	female	39	99800
country	KE	rural	male	39	89688
country	KE	rural	female	4	434267
country	KE	rural	male	4	449533
country	KE	rural	female	40	196004
country	KE	rural	male	40	168010
country	KE	rural	female	41	77360
country	KE	rural	male	41	74465
country	KE	rural	female	42	87544
country	KE	rural	male	42	81642
country	KE	rural	female	43	70225
country	KE	rural	male	43	62185
country	KE	rural	female	44	65470
country	KE	rural	male	44	60090
country	KE	rural	female	45	133845
country	KE	rural	male	45	116230
country	KE	rural	female	46	81100
country	KE	rural	male	46	75171
country	KE	rural	female	47	77103
country	KE	rural	male	47	67691
country	KE	rural	female	48	83026
country	KE	rural	male	48	71498
country	KE	rural	female	49	74921
country	KE	rural	male	49	69219
country	KE	rural	female	5	420286
country	KE	rural	male	5	437634
country	KE	rural	female	50	136020
country	KE	rural	male	50	113685
country	KE	rural	female	51	56519
country	KE	rural	male	51	53984
country	KE	rural	female	52	59543
country	KE	rural	male	52	58636
country	KE	rural	female	53	49758
country	KE	rural	male	53	46299
country	KE	rural	female	54	49760
country	KE	rural	male	54	45928
country	KE	rural	female	55	75594
country	KE	rural	male	55	69209
country	KE	rural	female	56	49699
country	KE	rural	male	56	49438
country	KE	rural	female	57	59707
country	KE	rural	male	57	58654
country	KE	rural	female	58	36593
country	KE	rural	male	58	35702
country	KE	rural	female	59	46664
country	KE	rural	male	59	42900
country	KE	rural	female	6	425335
country	KE	rural	male	6	439149
country	KE	rural	female	60	96506
country	KE	rural	male	60	84676
country	KE	rural	female	61	38994
country	KE	rural	male	61	39187
country	KE	rural	female	62	31703
country	KE	rural	male	62	35068
country	KE	rural	female	63	30706
country	KE	rural	male	63	31453
country	KE	rural	female	64	35201
country	KE	rural	male	64	31013
country	KE	rural	female	65	49925
country	KE	rural	male	65	42490
country	KE	rural	female	66	28841
country	KE	rural	male	66	23247
country	KE	rural	female	67	30986
country	KE	rural	male	67	30507
country	KE	rural	female	68	23131
country	KE	rural	male	68	21372
country	KE	rural	female	69	32300
country	KE	rural	male	69	24236
country	KE	rural	female	7	384812
country	KE	rural	male	7	396641
country	KE	rural	female	70	64982
country	KE	rural	male	70	52388
country	KE	rural	female	71	19408
country	KE	rural	male	71	17436
country	KE	rural	female	72	19554
country	KE	rural	male	72	20652
country	KE	rural	female	73	18746
country	KE	rural	male	73	19422
country	KE	rural	female	74	20133
country	KE	rural	male	74	17712
country	KE	rural	female	75	27604
country	KE	rural	male	75	23287
country	KE	rural	female	76	14543
country	KE	rural	male	76	14199
country	KE	rural	female	77	15421
country	KE	rural	male	77	14624
country	KE	rural	female	78	15279
country	KE	rural	male	78	13240
country	KE	rural	female	79	22857
country	KE	rural	male	79	15207
country	KE	rural	female	8	410703
country	KE	rural	male	8	420732
country	KE	rural	female	80+	177908
country	KE	rural	male	80+	128790
country	KE	rural	female	9	382099
country	KE	rural	male	9	396040
country	KE	rural	female	unspecified	5445
country	KE	rural	male	unspecified	6323
country	KE	urban	female	0	193022
country	KE	urban	male	0	195861
country	KE	urban	female	1	159027
country	KE	urban	male	1	162260
country	KE	urban	female	10	149139
country	KE	urban	male	10	150328
country	KE	urban	female	11	115767
country	KE	urban	male	11	111109
country	KE	urban	female	12	141210
country	KE	urban	male	12	140686
country	KE	urban	female	13	133113
country	KE	urban	male	13	128686
country	KE	urban	female	14	123004
country	KE	urban	male	14	119629
country	KE	urban	female	15	122347
country	KE	urban	male	15	114804
country	KE	urban	female	16	124781
country	KE	urban	male	16	111453
country	KE	urban	female	17	130110
country	KE	urban	male	17	119172
country	KE	urban	female	18	145066
country	KE	urban	male	18	130077
country	KE	urban	female	19	134366
country	KE	urban	male	19	111878
country	KE	urban	female	2	174488
country	KE	urban	male	2	176812
country	KE	urban	female	20	200971
country	KE	urban	male	20	151212
country	KE	urban	female	21	143242
country	KE	urban	male	21	118423
country	KE	urban	female	22	181384
country	KE	urban	male	22	147558
country	KE	urban	female	23	172842
country	KE	urban	male	23	145561
country	KE	urban	female	24	165129
country	KE	urban	male	24	145704
country	KE	urban	female	25	195534
country	KE	urban	male	25	179774
country	KE	urban	female	26	143767
country	KE	urban	male	26	135838
country	KE	urban	female	27	134993
country	KE	urban	male	27	143152
country	KE	urban	female	28	143051
country	KE	urban	male	28	138405
country	KE	urban	female	29	109496
country	KE	urban	male	29	118788
country	KE	urban	female	3	171510
country	KE	urban	male	3	172259
country	KE	urban	female	30	171361
country	KE	urban	male	30	186875
country	KE	urban	female	31	72401
country	KE	urban	male	31	91769
country	KE	urban	female	32	104593
country	KE	urban	male	32	121933
country	KE	urban	female	33	67685
country	KE	urban	male	33	79731
country	KE	urban	female	34	71828
country	KE	urban	male	34	88307
country	KE	urban	female	35	111791
country	KE	urban	male	35	140270
country	KE	urban	female	36	63412
country	KE	urban	male	36	75495
country	KE	urban	female	37	58043
country	KE	urban	male	37	72701
country	KE	urban	female	38	68633
country	KE	urban	male	38	77061
country	KE	urban	female	39	52457
country	KE	urban	male	39	65527
country	KE	urban	female	4	165374
country	KE	urban	male	4	168638
country	KE	urban	female	40	91739
country	KE	urban	male	40	111493
country	KE	urban	female	41	34038
country	KE	urban	male	41	45931
country	KE	urban	female	42	45718
country	KE	urban	male	42	59524
country	KE	urban	female	43	34864
country	KE	urban	male	43	42704
country	KE	urban	female	44	29613
country	KE	urban	male	44	37550
country	KE	urban	female	45	58222
country	KE	urban	male	45	72071
country	KE	urban	female	46	35552
country	KE	urban	male	46	44717
country	KE	urban	female	47	31763
country	KE	urban	male	47	40754
country	KE	urban	female	48	33275
country	KE	urban	male	48	39241
country	KE	urban	female	49	28662
country	KE	urban	male	49	38684
country	KE	urban	female	5	158796
country	KE	urban	male	5	163080
country	KE	urban	female	50	49503
country	KE	urban	male	50	56785
country	KE	urban	female	51	19708
country	KE	urban	male	51	26661
country	KE	urban	female	52	22131
country	KE	urban	male	52	30634
country	KE	urban	female	53	17442
country	KE	urban	male	53	23077
country	KE	urban	female	54	17476
country	KE	urban	male	54	22657
country	KE	urban	female	55	25005
country	KE	urban	male	55	30338
country	KE	urban	female	56	16648
country	KE	urban	male	56	21114
country	KE	urban	female	57	17540
country	KE	urban	male	57	21678
country	KE	urban	female	58	12035
country	KE	urban	male	58	14840
country	KE	urban	female	59	13002
country	KE	urban	male	59	15593
country	KE	urban	female	6	151772
country	KE	urban	male	6	151161
country	KE	urban	female	60	28017
country	KE	urban	male	60	28235
country	KE	urban	female	61	10188
country	KE	urban	male	61	12736
country	KE	urban	female	62	9598
country	KE	urban	male	62	12388
country	KE	urban	female	63	8568
country	KE	urban	male	63	10580
country	KE	urban	female	64	9100
country	KE	urban	male	64	9861
country	KE	urban	female	65	13737
country	KE	urban	male	65	13513
country	KE	urban	female	66	7417
country	KE	urban	male	66	6798
country	KE	urban	female	67	7857
country	KE	urban	male	67	8634
country	KE	urban	female	68	6145
country	KE	urban	male	68	6061
country	KE	urban	female	69	7273
country	KE	urban	male	69	6293
country	KE	urban	female	7	143538
country	KE	urban	male	7	144729
country	KE	urban	female	70	17061
country	KE	urban	male	70	13390
country	KE	urban	female	71	4666
country	KE	urban	male	71	4592
country	KE	urban	female	72	5065
country	KE	urban	male	72	5428
country	KE	urban	female	73	4779
country	KE	urban	male	73	4985
country	KE	urban	female	74	4606
country	KE	urban	male	74	4296
country	KE	urban	female	75	7173
country	KE	urban	male	75	5900
country	KE	urban	female	76	3702
country	KE	urban	male	76	3541
country	KE	urban	female	77	3641
country	KE	urban	male	77	3415
country	KE	urban	female	78	3722
country	KE	urban	male	78	3183
country	KE	urban	female	79	4733
country	KE	urban	male	79	3237
country	KE	urban	female	8	143085
country	KE	urban	male	8	140388
country	KE	urban	female	80+	46668
country	KE	urban	male	80+	30335
country	KE	urban	female	9	144621
country	KE	urban	male	9	143115
country	KE	urban	female	unspecified	4163
country	KE	urban	male	unspecified	5155
county	36	rural	female	0	12778
county	36	rural	male	0	13674
county	36	rural	female	1	11207
county	36	rural	male	1	11767
county	36	rural	female	10	11359
county	36	rural	male	10	11652
county	36	rural	female	11	9392
county	36	rural	male	11	9268
county	36	rural	female	12	11228
county	36	rural	male	12	11142
county	36	rural	female	13	10635
county	36	rural	male	13	10325
county	36	rural	female	14	9638
county	36	rural	male	14	9760
county	39	rural	female	0	19942
county	39	rural	male	0	20214
county	39	rural	female	1	18595
county	39	rural	male	1	18668
county	39	rural	female	10	16912
county	39	rural	male	10	17140
county	39	rural	female	11	14200
county	39	rural	male	11	14160
county	39	rural	female	12	15567
county	39	rural	male	12	15632
county	39	rural	female	13	14961
county	39	rural	male	13	15103
county	39	rural	female	14	13422
county	39	rural	male	14	13662
county	39	rural	female	15	13420
county	39	rural	male	15	13446
county	39	rural	female	16	12240
county	39	rural	male	16	12455
county	39	rural	female	17	13163
county	39	rural	male	17	13588
county	39	rural	female	18	11510
county	39	rural	male	18	11877
county	39	rural	female	19	11129
county	39	rural	male	19	11228
county	39	rural	female	2	20553
county	39	rural	male	2	20560
county	39	rural	female	20	11673
county	39	rural	male	20	10376
county	39	rural	female	21	9859
county	21	rural	female	22	5845
county	21	rural	male	22	5648
county	21	rural	female	23	5699
county	21	rural	male	23	5056
county	21	rural	female	24	5323
county	21	rural	male	24	4724
county	21	rural	female	25	6676
county	21	rural	male	25	6055
county	21	rural	female	26	5404
county	21	rural	male	26	4539
county	21	rural	female	27	5155
county	21	rural	male	27	4658
county	21	rural	female	28	5333
county	21	rural	male	28	4344
county	21	rural	female	29	5138
county	21	rural	male	29	4414
county	21	rural	female	3	9073
county	21	rural	male	3	9414
county	21	rural	female	30	7430
county	21	rural	male	30	6281
county	21	rural	female	31	4339
county	21	rural	male	31	4044
county	21	rural	female	32	5048
county	21	rural	male	32	4268
county	21	rural	female	33	4016
county	21	rural	male	33	3561
county	21	rural	female	34	4395
county	21	rural	male	34	3972
county	21	rural	female	35	6555
county	21	rural	male	35	5539
county	21	rural	female	36	4241
county	21	rural	male	36	3639
county	21	rural	female	37	3891
county	21	rural	male	37	3613
county	21	rural	female	38	4223
county	21	rural	male	38	3483
county	21	rural	female	39	3782
county	21	rural	male	39	3331
county	21	rural	female	4	9449
county	21	rural	male	4	9758
county	21	rural	female	40	6144
county	21	rural	male	40	5051
county	21	rural	female	41	3088
county	21	rural	male	41	2794
county	21	rural	female	42	3599
county	21	rural	male	42	2955
county	21	rural	female	43	3152
county	21	rural	male	43	2583
county	21	rural	female	44	3143
county	21	rural	male	44	2547
county	21	rural	female	45	5630
county	21	rural	male	45	4201
county	21	rural	female	46	3652
county	21	rural	male	46	3232
county	21	rural	female	47	3245
county	21	rural	male	47	2633
county	21	rural	female	48	3089
county	21	rural	male	48	2377
county	21	rural	female	49	3175
county	21	rural	male	49	2661
county	21	rural	female	5	9622
county	21	rural	male	5	9886
county	21	rural	female	50	5283
county	21	rural	male	50	3606
county	21	rural	female	51	2441
county	21	rural	male	51	2177
county	21	rural	female	52	2521
county	21	rural	male	52	2169
county	21	rural	female	53	1896
county	21	rural	male	53	1703
county	21	rural	female	54	1951
county	21	rural	male	54	1683
county	21	rural	female	55	3337
county	21	rural	male	55	2625
county	21	rural	female	56	2287
county	21	rural	male	56	2028
county	21	rural	female	57	3043
county	21	rural	male	57	2742
county	21	rural	female	58	1693
county	21	rural	male	58	1489
county	21	rural	female	59	2201
county	21	rural	male	59	1965
county	21	rural	female	6	9157
county	21	rural	male	6	9460
county	21	rural	female	60	4408
county	21	rural	male	60	3408
county	21	rural	female	61	2000
county	21	rural	male	61	2023
county	21	rural	female	62	1656
county	21	rural	male	62	1927
county	21	rural	female	63	1500
county	21	rural	male	63	1716
county	21	rural	female	64	1762
county	21	rural	male	64	1611
county	21	rural	female	65	2563
county	21	rural	male	65	2044
county	21	rural	female	66	2495
county	21	rural	male	66	1627
county	21	rural	female	67	1529
county	21	rural	male	67	1484
county	21	rural	female	68	1102
county	21	rural	male	68	1010
county	21	rural	female	69	1605
county	21	rural	male	69	1246
county	21	rural	female	7	9227
county	21	rural	male	7	9404
county	21	rural	female	70	3045
county	21	rural	male	70	2108
county	21	rural	female	71	1033
county	21	rural	male	71	770
county	21	rural	female	72	983
county	21	rural	male	72	902
county	21	rural	female	73	1053
county	21	rural	male	73	993
county	21	rural	female	74	1245
county	21	rural	male	74	986
county	21	rural	female	75	1536
county	21	rural	male	75	1147
county	21	rural	female	76	846
county	21	rural	male	76	721
county	21	rural	female	77	833
county	21	rural	male	77	694
county	21	rural	female	78	780
county	21	rural	male	78	621
county	21	rural	female	79	1242
county	21	rural	male	79	686
county	21	rural	female	8	8768
county	21	rural	male	8	9157
county	21	rural	female	80+	9919
county	21	rural	male	80+	5783
county	21	rural	female	9	9867
county	21	rural	male	9	10355
county	21	rural	female	unspecified	166
county	21	rural	male	unspecified	200
county	21	urban	female	0	1857
county	21	urban	male	0	1822
county	21	urban	female	1	1613
county	21	urban	male	1	1628
county	21	urban	female	10	1786
county	21	urban	male	10	1904
county	21	urban	female	11	1575
county	21	urban	male	11	1557
county	21	urban	female	12	1812
county	21	urban	male	12	1826
county	21	urban	female	13	1898
county	21	urban	male	13	1915
county	21	urban	female	14	1622
county	21	urban	male	14	1625
county	21	urban	female	15	1504
county	21	urban	male	15	1509
county	21	urban	female	16	1380
county	21	urban	male	16	1354
county	21	urban	female	17	1475
county	21	urban	male	17	1543
county	21	urban	female	18	1421
county	21	urban	male	18	1452
county	21	urban	female	19	1290
county	21	urban	male	19	1383
county	21	urban	female	2	1713
county	21	urban	male	2	1747
county	21	urban	female	20	1623
county	21	urban	male	20	1411
county	21	urban	female	21	1259
county	21	urban	male	21	1187
county	21	urban	female	22	1490
county	21	urban	male	22	1271
county	21	urban	female	23	1411
county	21	urban	male	23	1201
county	21	urban	female	24	1438
county	21	urban	male	24	1140
county	21	urban	female	25	1712
county	21	urban	male	25	1495
county	21	urban	female	26	1327
county	21	urban	male	26	1095
county	21	urban	female	27	1310
county	21	urban	male	27	1124
county	21	urban	female	28	1347
county	21	urban	male	28	1185
county	21	urban	female	29	1170
county	21	urban	male	29	1007
county	21	urban	female	3	1720
county	21	urban	male	3	1728
county	21	urban	female	30	1684
county	21	urban	male	30	1618
county	21	urban	female	31	884
county	21	urban	male	31	865
county	21	urban	female	32	1134
county	21	urban	male	32	1133
county	21	urban	female	33	811
county	21	urban	male	33	729
county	21	urban	female	34	928
county	21	urban	male	34	845
county	21	urban	female	35	1407
county	21	urban	male	35	1351
county	21	urban	female	36	893
county	21	urban	male	36	762
county	21	urban	female	37	759
county	21	urban	male	37	808
county	21	urban	female	38	968
county	21	urban	male	38	847
county	21	urban	female	39	761
county	21	urban	male	39	683
county	21	urban	female	4	1751
county	21	urban	male	4	1867
county	21	urban	female	40	1245
county	21	urban	male	40	1212
county	21	urban	female	41	510
county	21	urban	male	41	571
county	21	urban	female	42	749
county	21	urban	male	42	706
county	21	urban	female	43	637
county	21	urban	male	43	542
county	21	urban	female	44	504
county	21	urban	male	44	526
county	21	urban	female	45	1073
county	21	urban	male	45	963
county	21	urban	female	46	641
county	21	urban	male	46	642
county	21	urban	female	47	555
county	21	urban	male	47	523
county	21	urban	female	48	551
county	21	urban	male	48	478
county	21	urban	female	49	518
county	21	urban	male	49	488
county	21	urban	female	5	1881
county	21	urban	male	5	1856
county	21	urban	female	50	910
county	21	urban	male	50	754
county	21	urban	female	51	348
county	21	urban	male	51	409
county	21	urban	female	52	381
county	21	urban	male	52	443
county	21	urban	female	53	299
county	21	urban	male	53	321
county	21	urban	female	54	310
county	21	urban	male	54	312
county	21	urban	female	55	538
county	21	urban	male	55	449
county	21	urban	female	56	343
county	21	urban	male	56	317
county	21	urban	female	57	443
county	21	urban	male	57	415
county	21	urban	female	58	257
county	21	urban	male	58	230
county	21	urban	female	59	300
county	21	urban	male	59	277
county	21	urban	female	6	1739
county	21	urban	male	6	1698
county	21	urban	female	60	637
county	21	urban	male	60	530
county	21	urban	female	61	276
county	21	urban	male	61	281
county	21	urban	female	62	259
county	21	urban	male	62	270
county	21	urban	female	63	237
county	21	urban	male	63	252
county	21	urban	female	64	216
county	21	urban	male	64	229
county	21	urban	female	65	347
county	21	urban	male	65	305
county	21	urban	female	66	299
county	21	urban	male	66	228
county	21	urban	female	67	171
county	21	urban	male	67	208
county	21	urban	female	68	170
county	21	urban	male	68	139
county	21	urban	female	69	163
county	21	urban	male	69	155
county	21	urban	female	7	1771
county	21	urban	male	7	1780
county	21	urban	female	70	409
county	21	urban	male	70	310
county	21	urban	female	71	123
county	21	urban	male	71	108
county	21	urban	female	72	116
county	21	urban	male	72	123
county	21	urban	female	73	137
county	21	urban	male	73	136
county	21	urban	female	74	133
county	21	urban	male	74	149
county	21	urban	female	75	176
county	21	urban	male	75	115
county	21	urban	female	76	118
county	21	urban	male	76	86
county	21	urban	female	77	83
county	21	urban	male	77	92
county	21	urban	female	78	93
county	21	urban	male	78	70
county	21	urban	female	79	138
county	21	urban	male	79	78
county	21	urban	female	8	1652
county	21	urban	male	8	1700
county	21	urban	female	80+	1330
county	21	urban	male	80+	752
county	21	urban	female	9	1910
county	21	urban	male	9	1852
county	21	urban	female	unspecified	31
county	21	urban	male	unspecified	45
county	22	rural	female	0	7972
county	22	rural	male	0	8096
county	22	rural	female	1	7503
county	22	rural	male	1	7724
county	22	rural	female	10	8543
county	22	rural	male	10	8712
county	22	rural	female	11	7526
county	22	rural	male	11	7432
county	22	rural	female	12	8546
county	22	rural	male	12	8689
county	22	rural	female	13	8592
county	22	rural	male	13	8685
county	22	rural	female	14	7255
county	22	rural	male	14	7600
county	22	rural	female	15	6739
county	22	rural	male	15	7125
county	22	rural	female	16	6626
county	22	rural	male	16	6802
county	22	rural	female	17	6487
county	22	rural	male	17	7084
county	22	rural	female	18	6088
county	22	rural	male	18	6653
county	22	rural	female	19	5324
county	22	rural	male	19	6160
county	22	rural	female	2	7912
county	22	rural	male	2	8106
county	22	rural	female	20	6213
county	22	rural	male	20	6437
county	22	rural	female	21	4844
county	22	rural	male	21	5182
county	22	rural	female	22	5630
county	22	rural	male	22	5386
county	22	rural	female	23	5429
county	22	rural	male	23	5100
county	22	rural	female	24	5153
county	22	rural	male	24	4794
county	22	rural	female	25	6515
county	22	rural	male	25	6009
county	22	rural	female	26	5110
county	22	rural	male	26	4503
county	22	rural	female	27	4987
county	22	rural	male	27	4893
county	22	rural	female	28	5220
county	22	rural	male	28	4351
county	22	rural	female	29	4959
county	22	rural	male	29	4485
county	22	rural	female	3	8443
county	22	rural	male	3	8522
county	22	rural	female	30	7040
county	22	rural	male	30	6253
county	22	rural	female	31	3916
county	22	rural	male	31	4020
county	22	rural	female	32	4860
county	22	rural	male	32	4417
county	22	rural	female	33	3755
county	22	rural	male	33	3636
county	22	rural	female	34	4023
county	22	rural	male	34	3967
county	22	rural	female	35	6054
county	22	rural	male	35	5727
county	22	rural	female	36	3755
county	22	rural	male	36	3694
county	22	rural	female	37	3577
county	22	rural	male	37	3612
county	22	rural	female	38	3931
county	22	rural	male	38	3389
county	22	rural	female	39	3524
county	22	rural	male	39	3213
county	22	rural	female	4	8652
county	22	rural	male	4	8893
county	22	rural	female	40	5446
county	22	rural	male	40	4897
county	22	rural	female	41	2790
county	22	rural	male	41	2702
county	22	rural	female	42	3173
county	22	rural	male	42	2985
county	22	rural	female	43	2836
county	22	rural	male	43	2446
county	22	rural	female	44	2492
county	22	rural	male	44	2395
county	22	rural	female	45	4389
county	22	rural	male	45	4119
county	22	rural	female	46	2903
county	22	rural	male	46	2961
county	22	rural	female	47	2542
county	22	rural	male	47	2423
county	22	rural	female	48	2438
county	22	rural	male	48	2147
county	22	rural	female	49	2450
county	22	rural	male	49	2277
county	22	rural	female	5	8805
county	22	rural	male	5	8992
county	22	rural	female	50	3821
county	22	rural	male	50	3147
county	22	rural	female	51	1890
county	22	rural	male	51	1874
county	22	rural	female	52	1919
county	22	rural	male	52	1901
county	22	rural	female	53	1535
county	22	rural	male	53	1441
county	22	rural	female	54	1548
county	22	rural	male	54	1447
county	22	rural	female	55	2401
county	22	rural	male	55	2125
county	22	rural	female	56	1696
county	22	rural	male	56	1644
county	22	rural	female	57	2091
county	22	rural	male	57	2095
county	22	rural	female	58	1168
county	22	rural	male	58	1135
county	22	rural	female	59	1437
county	22	rural	male	59	1412
county	22	rural	female	6	8282
county	22	rural	male	6	8386
county	22	rural	female	60	2870
county	22	rural	male	60	2376
county	22	rural	female	61	1283
county	22	rural	male	61	1330
county	22	rural	female	62	1192
county	22	rural	male	62	1312
county	22	rural	female	63	1104
county	22	rural	male	63	1123
county	22	rural	female	64	1200
county	22	rural	male	64	1101
county	22	rural	female	65	1765
county	22	rural	male	65	1486
county	22	rural	female	66	1749
county	22	rural	male	66	1071
county	22	rural	female	67	1130
county	22	rural	male	67	1058
county	22	rural	female	68	860
county	22	rural	male	68	682
county	22	rural	female	69	989
county	22	rural	male	69	796
county	22	rural	female	7	8296
county	22	rural	male	7	8391
county	22	rural	female	70	2098
county	22	rural	male	70	1435
county	22	rural	female	71	703
county	22	rural	male	71	602
county	22	rural	female	72	698
county	22	rural	male	72	663
county	22	rural	female	73	740
county	22	rural	male	73	689
county	22	rural	female	74	781
county	22	rural	male	74	678
county	22	rural	female	75	1057
county	22	rural	male	75	734
county	22	rural	female	76	653
county	22	rural	male	76	472
county	22	rural	female	77	537
county	22	rural	male	77	463
county	22	rural	female	78	519
county	22	rural	male	78	419
county	22	rural	female	79	677
county	22	rural	male	79	508
county	22	rural	female	8	8029
county	22	rural	male	8	8009
county	22	rural	female	80+	6694
county	22	rural	male	80+	3902
county	22	rural	female	9	8820
county	22	rural	male	9	9204
county	22	rural	female	unspecified	136
county	22	rural	male	unspecified	168
county	22	urban	female	0	14800
county	22	urban	male	0	14654
county	22	urban	female	1	12138
county	22	urban	male	1	12364
county	22	urban	female	10	10383
county	22	urban	male	10	10445
county	22	urban	female	11	8989
county	22	urban	male	11	8579
county	22	urban	female	12	10036
county	22	urban	male	12	9829
county	22	urban	female	13	9939
county	22	urban	male	13	9455
county	22	urban	female	14	8662
county	22	urban	male	14	8321
county	22	urban	female	15	8412
county	22	urban	male	15	7637
county	22	urban	female	16	9130
county	22	urban	male	16	7531
county	22	urban	female	17	9735
county	22	urban	male	17	8552
county	22	urban	female	18	10300
county	22	urban	male	18	8350
county	22	urban	female	19	10579
county	22	urban	male	19	8085
county	22	urban	female	2	12768
county	22	urban	male	2	12770
county	22	urban	female	20	14824
county	22	urban	male	20	10716
county	22	urban	female	21	12383
county	22	urban	male	21	9540
county	22	urban	female	22	15234
county	22	urban	male	22	11824
county	22	urban	female	23	15056
county	22	urban	male	23	12231
county	22	urban	female	24	14438
county	22	urban	male	24	12649
county	22	urban	female	25	16672
county	22	urban	male	25	14886
county	22	urban	female	26	13184
county	22	urban	male	26	11528
county	22	urban	female	27	12324
county	22	urban	male	27	12588
county	22	urban	female	28	12965
county	22	urban	male	28	12276
county	22	urban	female	29	10470
county	22	urban	male	29	10837
county	22	urban	female	3	12554
county	22	urban	male	3	12672
county	22	urban	female	30	15378
county	22	urban	male	30	16191
county	22	urban	female	31	7283
county	22	urban	male	31	8628
county	22	urban	female	32	9962
county	22	urban	male	32	10942
county	22	urban	female	33	6832
county	22	urban	male	33	7417
county	22	urban	female	34	7292
county	22	urban	male	34	8304
county	22	urban	female	35	10042
county	22	urban	male	35	12602
county	22	urban	female	36	6339
county	22	urban	male	36	6995
county	22	urban	female	37	5686
county	22	urban	male	37	6803
county	22	urban	female	38	6699
county	22	urban	male	38	7386
county	22	urban	female	39	5385
county	22	urban	male	39	6406
county	22	urban	female	4	12124
county	22	urban	male	4	12450
county	22	urban	female	40	8171
county	22	urban	male	40	9737
county	22	urban	female	41	3519
county	22	urban	male	41	4404
county	22	urban	female	42	4682
county	22	urban	male	42	5822
county	22	urban	female	43	3803
county	22	urban	male	43	4271
county	22	urban	female	44	3160
county	22	urban	male	44	3643
county	22	urban	female	45	5388
county	22	urban	male	45	6725
county	22	urban	female	46	3552
county	22	urban	male	46	4351
county	22	urban	female	47	3055
county	22	urban	male	47	3611
county	22	urban	female	48	3000
county	22	urban	male	48	3442
county	22	urban	female	49	2727
county	22	urban	male	49	3348
county	22	urban	female	5	11597
county	22	urban	male	5	12138
county	22	urban	female	50	4161
county	22	urban	male	50	4589
county	22	urban	female	51	1803
county	22	urban	male	51	2430
county	22	urban	female	52	1952
county	22	urban	male	52	2577
county	22	urban	female	53	1431
county	22	urban	male	53	1918
county	22	urban	female	54	1467
county	22	urban	male	54	1825
county	22	urban	female	55	2188
county	22	urban	male	55	2529
county	22	urban	female	56	1481
county	22	urban	male	56	1718
county	22	urban	female	57	1763
county	22	urban	male	57	2032
county	22	urban	female	58	1079
county	22	urban	male	58	1301
county	22	urban	female	59	1202
county	22	urban	male	59	1426
county	22	urban	female	6	11106
county	23	rural	female	0	7649
county	23	rural	male	0	7881
county	23	rural	female	1	5721
county	23	rural	male	1	6126
county	23	rural	female	10	17251
county	23	rural	male	10	19328
county	23	rural	female	11	8462
county	23	rural	male	11	8370
county	23	rural	female	12	13682
county	23	rural	male	12	16685
county	23	rural	female	13	8546
county	23	rural	male	13	10754
county	23	rural	female	14	10494
county	23	rural	male	14	13279
county	23	rural	female	15	10798
county	23	rural	male	15	13991
county	23	rural	female	16	10335
county	23	rural	male	16	12954
county	23	rural	female	17	7476
county	23	rural	male	17	10055
county	23	rural	female	18	10453
county	23	rural	male	18	13410
county	23	rural	female	19	5728
county	23	rural	male	19	7617
county	23	rural	female	2	10257
county	23	rural	male	2	10910
county	23	rural	female	20	10133
county	23	rural	male	20	12999
county	23	rural	female	21	4898
county	23	rural	male	21	5903
county	23	rural	female	22	5434
county	23	rural	male	22	6391
county	23	rural	female	23	4415
county	23	rural	male	23	5114
county	23	rural	female	24	5739
county	23	rural	male	24	6213
county	23	rural	female	25	6598
county	23	rural	male	25	6961
county	23	rural	female	26	4505
county	23	rural	male	26	4655
county	23	rural	female	27	3809
county	23	rural	male	27	4104
county	23	rural	female	28	5836
county	23	rural	male	28	5325
county	23	rural	female	29	4810
county	23	rural	male	29	4223
county	23	rural	female	3	10123
county	23	rural	male	3	10744
county	23	rural	female	30	7822
county	23	rural	male	30	7342
county	23	rural	female	31	2792
county	23	rural	male	31	2419
county	23	rural	female	32	4515
county	23	rural	male	32	3562
county	23	rural	female	33	2542
county	23	rural	male	33	2109
county	23	rural	female	34	2987
county	23	rural	male	34	2465
county	23	rural	female	35	4906
county	23	rural	male	35	4186
county	23	rural	female	36	4059
county	23	rural	male	36	3002
county	23	rural	female	37	2344
county	23	rural	male	37	1840
county	23	rural	female	38	3991
county	23	rural	male	38	2999
county	23	rural	female	39	3270
county	23	rural	male	39	2569
county	23	rural	female	4	10963
county	23	rural	male	4	11996
county	23	rural	female	40	5654
county	23	rural	male	40	5502
county	23	rural	female	41	1743
county	23	rural	male	41	1560
county	23	rural	female	42	2602
county	23	rural	male	42	2283
county	23	rural	female	43	1975
county	23	rural	male	43	1681
county	23	rural	female	44	1374
county	23	rural	male	44	1210
county	23	rural	female	45	3099
county	23	rural	male	45	3064
county	14	urban	male	4	887
county	14	urban	female	40	730
county	14	urban	male	40	811
county	14	urban	female	41	304
county	14	urban	male	41	355
county	14	urban	female	42	436
county	14	urban	male	42	450
county	14	urban	female	43	341
county	14	urban	male	43	356
county	14	urban	female	44	352
county	14	urban	male	44	316
county	14	urban	female	45	591
county	14	urban	male	45	587
county	14	urban	female	46	407
county	14	urban	male	46	401
county	14	urban	female	47	309
county	14	urban	male	47	314
county	14	urban	female	48	319
county	14	urban	male	48	301
county	14	urban	female	49	277
county	14	urban	male	49	322
county	14	urban	female	5	857
county	14	urban	male	5	858
county	14	urban	female	50	499
county	14	urban	male	50	528
county	14	urban	female	51	198
county	14	urban	male	51	233
county	14	urban	female	52	214
county	14	urban	male	52	262
county	14	urban	female	53	149
county	14	urban	male	53	161
county	14	urban	female	54	173
county	14	urban	male	54	176
county	14	urban	female	55	257
county	14	urban	male	55	264
county	14	urban	female	56	170
county	14	urban	male	56	192
county	14	urban	female	57	157
county	14	urban	male	57	193
county	14	urban	female	58	111
county	14	urban	male	58	118
county	14	urban	female	59	131
county	14	urban	male	59	162
county	14	urban	female	6	836
county	14	urban	male	6	851
county	14	urban	female	60	247
county	14	urban	male	60	281
county	14	urban	female	61	102
county	14	urban	male	61	102
county	14	urban	female	62	78
county	14	urban	male	62	98
county	14	urban	female	63	88
county	14	urban	male	63	86
county	14	urban	female	64	96
county	14	urban	male	64	91
county	14	urban	female	65	140
county	23	rural	female	46	1568
county	23	rural	male	46	1528
county	23	rural	female	47	1340
county	23	rural	male	47	1279
county	23	rural	female	48	2088
county	23	rural	male	48	2107
county	23	rural	female	49	2123
county	23	rural	male	49	2035
county	23	rural	female	5	10997
county	23	rural	male	5	11805
county	23	rural	female	50	3114
county	23	rural	male	50	3330
county	23	rural	female	51	1306
county	23	rural	male	51	1195
county	23	rural	female	52	1389
county	23	rural	male	52	1446
county	23	rural	female	53	977
county	23	rural	male	53	991
county	23	rural	female	54	1059
county	23	rural	male	54	1081
county	23	rural	female	55	1349
county	23	rural	male	55	1396
county	23	rural	female	56	1111
county	23	rural	male	56	1181
county	23	rural	female	57	1292
county	23	rural	male	57	1277
county	23	rural	female	58	1022
county	23	rural	male	58	1102
county	23	rural	female	59	1133
county	23	rural	male	59	1196
county	23	rural	female	6	12096
county	23	rural	male	6	13263
county	23	rural	female	60	2082
county	23	rural	male	60	2544
county	23	rural	female	61	671
county	23	rural	male	61	690
county	23	rural	female	62	651
county	23	rural	male	62	829
county	23	rural	female	63	581
county	23	rural	male	63	624
county	23	rural	female	64	699
county	23	rural	male	64	784
county	23	rural	female	65	663
county	23	rural	male	65	889
county	23	rural	female	66	298
county	23	rural	male	66	340
county	23	rural	female	67	367
county	23	rural	male	67	453
county	23	rural	female	68	580
county	23	rural	male	68	693
county	23	rural	female	69	756
county	23	rural	male	69	736
county	23	rural	female	7	10131
county	23	rural	male	7	11200
county	23	rural	female	70	878
county	23	rural	male	70	1249
county	23	rural	female	71	260
county	23	rural	male	71	278
county	23	rural	female	72	323
county	23	rural	male	72	400
county	23	rural	female	73	288
county	23	rural	male	73	317
county	23	rural	female	74	260
county	23	rural	male	74	257
county	23	rural	female	75	328
county	23	rural	male	75	418
county	23	rural	female	76	160
county	23	rural	male	76	173
county	23	rural	female	77	120
county	23	rural	male	77	131
county	23	rural	female	78	253
county	23	rural	male	78	253
county	23	rural	female	79	333
county	23	rural	male	79	354
county	23	rural	female	8	13604
county	23	rural	male	8	14760
county	23	rural	female	80+	2076
county	23	rural	male	80+	2386
county	23	rural	female	9	10652
county	23	rural	male	9	11899
county	23	rural	female	unspecified	103
county	23	rural	male	unspecified	159
county	23	urban	female	0	2095
county	23	urban	male	0	2323
county	23	urban	female	1	1462
county	23	urban	male	1	1484
county	23	urban	female	10	2041
county	23	urban	male	10	2229
county	23	urban	female	11	1188
county	23	urban	male	11	1254
county	23	urban	female	12	1795
county	23	urban	male	12	1982
county	23	urban	female	13	1420
county	23	urban	male	13	1609
county	23	urban	female	14	1526
county	23	urban	male	14	1666
county	23	urban	female	15	1695
county	23	urban	male	15	1883
county	23	urban	female	16	1555
county	23	urban	male	16	1804
county	23	urban	female	17	1375
county	23	urban	male	17	1709
county	23	urban	female	18	1630
county	23	urban	male	18	2021
county	23	urban	female	19	1262
county	23	urban	male	19	1437
county	23	urban	female	2	2017
county	23	urban	male	2	2054
county	23	urban	female	20	2083
county	23	urban	male	20	1952
county	23	urban	female	21	964
county	23	urban	male	21	1060
county	23	urban	female	22	1261
county	23	urban	male	22	1266
county	23	urban	female	23	1111
county	23	urban	male	23	1081
county	23	urban	female	24	1111
county	23	urban	male	24	1131
county	23	urban	female	25	1565
county	23	urban	male	25	1512
county	23	urban	female	26	931
county	23	urban	male	26	961
county	23	urban	female	27	854
county	23	urban	male	27	919
county	23	urban	female	28	1064
county	23	urban	male	28	1123
county	23	urban	female	29	878
county	23	urban	male	29	920
county	23	urban	female	3	1957
county	23	urban	male	3	2048
county	23	urban	female	30	1437
county	23	urban	male	30	1466
county	23	urban	female	31	523
county	23	urban	male	31	552
county	23	urban	female	32	729
county	23	urban	male	32	791
county	23	urban	female	33	430
county	23	urban	male	33	477
county	23	urban	female	34	457
county	23	urban	male	34	559
county	23	urban	female	35	921
county	23	urban	male	35	954
county	23	urban	female	36	622
county	23	urban	male	36	563
county	23	urban	female	37	401
county	23	urban	male	37	449
county	23	urban	female	38	516
county	23	urban	male	38	510
county	23	urban	female	39	393
county	23	urban	male	39	401
county	23	urban	female	4	1805
county	23	urban	male	4	1964
county	23	urban	female	40	823
county	23	urban	male	40	919
county	23	urban	female	41	198
county	23	urban	male	41	212
county	23	urban	female	42	321
county	23	urban	male	42	402
county	23	urban	female	43	267
county	23	urban	male	43	273
county	23	urban	female	44	173
county	23	urban	male	44	198
county	23	urban	female	45	502
county	23	urban	male	45	548
county	23	urban	female	46	225
county	23	urban	male	46	254
county	23	urban	female	47	177
county	23	urban	male	47	239
county	23	urban	female	48	249
county	23	urban	male	48	270
county	23	urban	female	49	273
county	23	urban	male	49	260
county	23	urban	female	5	1831
county	23	urban	male	5	1939
county	23	urban	female	50	542
county	23	urban	male	50	497
county	23	urban	female	51	210
county	23	urban	male	51	179
county	23	urban	female	52	189
county	23	urban	male	52	199
county	23	urban	female	53	179
county	23	urban	male	53	137
county	23	urban	female	54	172
county	23	urban	male	54	156
county	23	urban	female	55	244
county	23	urban	male	55	211
county	23	urban	female	56	170
county	23	urban	male	56	146
county	23	urban	female	57	193
county	23	urban	male	57	143
county	23	urban	female	58	131
county	23	urban	male	58	102
county	23	urban	female	59	178
county	23	urban	male	59	138
county	23	urban	female	6	1780
county	23	urban	male	6	1838
county	23	urban	female	60	312
county	23	urban	male	60	253
county	23	urban	female	61	102
county	23	urban	male	61	85
county	23	urban	female	62	112
county	23	urban	male	62	79
county	23	urban	female	63	98
county	23	urban	male	63	60
county	23	urban	female	64	128
county	23	urban	male	64	62
county	23	urban	female	65	135
county	23	urban	male	65	103
county	23	urban	female	66	43
county	23	urban	male	66	39
county	23	urban	female	67	66
county	23	urban	male	67	53
county	23	urban	female	68	87
county	23	urban	male	68	50
county	23	urban	female	69	134
county	23	urban	male	69	63
county	23	urban	female	7	1777
county	23	urban	male	7	1789
county	23	urban	female	70	152
county	23	urban	male	70	141
county	23	urban	female	71	51
county	23	urban	male	71	34
county	23	urban	female	72	57
county	23	urban	male	72	41
county	23	urban	female	73	37
county	23	urban	male	73	30
county	23	urban	female	74	43
county	23	urban	male	74	24
county	23	urban	female	75	63
county	23	urban	male	75	49
county	23	urban	female	76	14
county	23	urban	male	76	21
county	23	urban	female	77	28
county	23	urban	male	77	12
county	23	urban	female	78	29
county	23	urban	male	78	32
county	23	urban	female	79	62
county	23	urban	male	79	27
county	23	urban	female	8	1702
county	23	urban	male	8	1772
county	23	urban	female	80+	454
county	23	urban	male	80+	355
county	23	urban	female	9	1605
county	23	urban	male	9	1633
county	23	urban	female	unspecified	67
county	23	urban	male	unspecified	79
county	24	rural	female	37	1327
county	24	rural	male	37	1416
county	24	rural	female	38	1825
county	24	rural	male	38	1467
county	24	rural	female	39	1263
county	24	rural	male	39	1166
county	24	rural	female	4	9579
county	24	rural	male	4	9735
county	24	rural	female	40	3313
county	24	rural	male	40	3263
county	24	rural	female	41	824
county	24	rural	male	41	925
county	24	rural	female	42	1089
county	24	rural	male	42	1118
county	24	rural	female	43	755
county	24	rural	male	43	713
county	24	rural	female	44	883
county	24	rural	male	44	788
county	24	rural	female	45	2004
county	24	rural	male	45	1884
county	24	rural	female	46	898
county	24	rural	male	46	844
county	24	rural	female	47	699
county	24	rural	male	47	730
county	24	rural	female	48	1234
county	24	rural	male	48	1156
county	24	rural	female	49	820
county	24	rural	male	49	824
county	24	rural	female	5	8338
county	24	rural	male	5	9024
county	24	rural	female	50	2201
county	24	rural	male	50	1977
county	24	rural	female	51	500
county	24	rural	male	51	542
county	24	rural	female	52	687
county	24	rural	male	52	686
county	24	rural	female	53	516
county	24	rural	male	53	478
county	24	rural	female	54	624
county	24	rural	male	54	554
county	24	rural	female	55	1045
county	24	rural	male	55	1005
county	24	rural	female	56	641
county	24	rural	male	56	606
county	24	rural	female	57	465
county	24	rural	male	57	596
county	24	rural	female	58	457
county	24	rural	male	58	458
county	24	rural	female	59	591
county	24	rural	male	59	599
county	24	rural	female	6	9588
county	24	rural	male	6	9585
county	24	rural	female	60	1610
county	24	rural	male	60	1405
county	24	rural	female	61	308
county	24	rural	male	61	354
county	24	rural	female	62	330
county	24	rural	male	62	331
county	24	rural	female	63	319
county	24	rural	male	63	264
county	24	rural	female	64	370
county	24	rural	male	64	344
county	24	rural	female	65	811
county	24	rural	male	65	763
county	24	rural	female	66	235
county	24	rural	male	66	228
county	24	rural	female	67	183
county	24	rural	male	67	229
county	24	rural	female	68	316
county	24	rural	male	68	244
county	24	rural	female	69	381
county	24	rural	male	69	317
county	24	rural	female	7	7342
county	24	rural	male	7	7716
county	24	rural	female	70	932
county	24	rural	male	70	771
county	24	rural	female	71	142
county	24	rural	male	71	134
county	24	rural	female	72	171
county	24	rural	male	72	175
county	24	rural	female	73	141
county	24	rural	male	73	141
county	24	rural	female	74	146
county	24	rural	male	74	118
county	24	rural	female	75	365
county	24	rural	male	75	347
county	24	rural	female	76	133
county	24	rural	male	76	113
county	24	rural	female	77	75
county	24	rural	male	77	81
county	24	rural	female	78	182
county	24	rural	male	78	160
county	24	rural	female	79	227
county	24	rural	male	79	179
county	24	rural	female	8	9542
county	24	rural	male	8	9769
county	24	rural	female	80+	2447
county	24	rural	male	80+	1944
county	24	rural	female	9	6779
county	24	rural	male	9	7166
county	24	rural	female	unspecified	40
county	24	rural	male	unspecified	61
county	24	urban	female	0	753
county	24	urban	male	0	820
county	24	urban	female	1	681
county	24	urban	male	1	723
county	24	urban	female	10	709
county	24	urban	male	10	712
county	24	urban	female	11	510
county	24	urban	male	11	415
county	24	urban	female	12	645
county	24	urban	male	12	629
county	24	urban	female	13	553
county	24	urban	male	13	505
county	24	urban	female	14	534
county	24	urban	male	14	556
county	24	urban	female	15	539
county	24	urban	male	15	535
county	24	urban	female	16	532
county	24	urban	male	16	491
county	24	urban	female	17	461
county	24	urban	male	17	455
county	24	urban	female	18	489
county	24	urban	male	18	519
county	24	urban	female	19	390
county	24	urban	male	19	390
county	24	urban	female	2	797
county	24	urban	male	2	750
county	24	urban	female	20	710
county	24	urban	male	20	527
county	24	urban	female	21	394
county	24	urban	male	21	342
county	24	urban	female	22	492
county	24	urban	male	22	455
county	24	urban	female	23	451
county	24	urban	male	23	374
county	24	urban	female	24	426
county	24	urban	male	24	371
county	24	urban	female	25	570
county	24	urban	male	25	519
county	24	urban	female	26	302
county	24	urban	male	26	312
county	24	urban	female	27	353
county	24	urban	male	27	325
county	24	urban	female	28	370
county	24	urban	male	28	310
county	24	urban	female	29	233
county	24	urban	male	29	251
county	24	urban	female	3	758
county	24	urban	male	3	737
county	24	urban	female	30	481
county	24	urban	male	30	510
county	24	urban	female	31	175
county	24	urban	male	31	220
county	24	urban	female	32	275
county	24	urban	male	32	299
county	24	urban	female	33	164
county	24	urban	male	33	175
county	24	urban	female	34	203
county	24	urban	male	34	200
county	24	urban	female	35	320
county	24	urban	male	35	365
county	24	urban	female	36	183
county	24	urban	male	36	185
county	24	urban	female	37	179
county	24	urban	male	37	182
county	24	urban	female	38	180
county	24	urban	male	38	163
county	24	urban	female	39	147
county	24	urban	male	39	180
county	24	urban	female	4	708
county	24	urban	male	4	726
county	24	urban	female	40	255
county	24	urban	male	40	330
county	24	urban	female	41	90
county	24	urban	male	41	106
county	24	urban	female	42	106
county	24	urban	male	42	142
county	24	urban	female	43	80
county	24	urban	male	43	88
county	24	urban	female	44	91
county	24	urban	male	44	104
county	24	urban	female	45	185
county	24	urban	male	45	191
county	24	urban	female	46	89
county	24	urban	male	46	105
county	24	urban	female	47	83
county	24	urban	male	47	91
county	24	urban	female	48	107
county	24	urban	male	48	96
county	24	urban	female	49	61
county	24	urban	male	49	98
county	24	urban	female	5	711
county	24	urban	male	5	720
county	24	urban	female	50	162
county	24	urban	male	50	186
county	24	urban	female	51	52
county	24	urban	male	51	72
county	24	urban	female	52	67
county	24	urban	male	52	62
county	24	urban	female	53	62
county	24	urban	male	53	66
county	24	urban	female	54	58
county	24	urban	male	54	62
county	24	urban	female	55	83
county	24	urban	male	55	86
county	24	urban	female	56	50
county	24	urban	male	56	63
county	24	urban	female	57	51
county	24	urban	male	57	80
county	24	urban	female	58	34
county	24	urban	male	58	38
county	24	urban	female	59	41
county	24	urban	male	59	54
county	24	urban	female	6	708
county	24	urban	male	6	679
county	24	urban	female	60	118
county	24	urban	male	60	91
county	24	urban	female	61	34
county	24	urban	male	61	40
county	24	urban	female	62	20
county	24	urban	male	62	28
county	24	urban	female	63	24
county	24	urban	male	63	18
county	24	urban	female	64	31
county	24	urban	male	64	29
county	24	urban	female	65	56
county	24	urban	male	65	41
county	24	urban	female	66	18
county	24	urban	male	66	17
county	24	urban	female	67	19
county	24	urban	male	67	14
county	24	urban	female	68	18
county	24	urban	male	68	14
county	24	urban	female	69	35
county	24	urban	male	69	29
county	24	urban	female	7	668
county	24	urban	male	7	633
county	24	urban	female	70	68
county	24	urban	male	70	50
county	24	urban	female	71	19
county	24	urban	male	71	21
county	24	urban	female	72	14
county	24	urban	male	72	15
county	24	urban	female	73	13
county	24	urban	male	73	12
county	24	urban	female	74	15
county	24	urban	male	74	11
county	24	urban	female	75	18
county	24	urban	male	75	22
county	24	urban	female	76	3
county	24	urban	male	76	14
county	24	urban	female	77	4
county	24	urban	male	77	10
county	24	urban	female	78	3
county	24	urban	male	78	11
county	24	urban	female	79	9
county	24	urban	male	79	13
county	24	urban	female	8	665
county	24	urban	male	8	583
county	24	urban	female	80+	173
county	24	urban	male	80+	103
county	24	urban	female	9	567
county	24	urban	male	9	608
county	24	urban	female	unspecified	10
county	24	urban	male	unspecified	7
county	26	rural	male	15	8087
county	26	rural	female	16	7309
county	26	rural	male	16	7686
county	26	rural	female	17	7018
county	26	rural	male	17	7892
county	26	rural	female	18	6831
county	26	rural	male	18	7590
county	26	rural	female	19	6041
county	26	rural	male	19	6319
county	26	rural	female	2	11709
county	26	rural	male	2	11923
county	26	rural	female	20	7551
county	26	rural	male	20	6616
county	26	rural	female	21	5297
county	26	rural	male	21	5073
county	26	rural	female	22	6425
county	26	rural	male	22	5405
county	26	rural	female	23	5592
county	26	rural	male	23	5000
county	26	rural	female	24	5383
county	26	rural	male	24	4760
county	26	rural	female	25	6248
county	26	rural	male	25	5632
county	26	rural	female	26	4379
county	26	rural	male	26	4061
county	26	rural	female	27	4414
county	26	rural	male	27	4207
county	26	rural	female	28	4240
county	26	rural	male	28	3648
county	26	rural	female	29	3687
county	26	rural	male	29	3475
county	26	rural	female	3	11539
county	26	rural	male	3	11558
county	26	rural	female	30	5510
county	26	rural	male	30	4821
county	26	rural	female	31	3072
county	26	rural	male	31	3130
county	26	rural	female	32	4029
county	26	rural	male	32	3858
county	26	rural	female	33	2898
county	26	rural	male	33	2865
county	26	rural	female	34	2814
county	26	rural	male	34	2979
county	26	rural	female	35	4326
county	26	rural	male	35	4338
county	26	rural	female	36	2622
county	26	rural	male	36	2499
county	26	rural	female	37	2705
county	26	rural	male	37	2498
county	26	rural	female	38	2636
county	26	rural	male	38	2345
county	26	rural	female	39	2415
county	26	rural	male	39	2297
county	26	rural	female	4	11367
county	26	rural	male	4	11813
county	26	rural	female	40	3614
county	26	rural	male	40	3244
county	26	rural	female	41	1824
county	26	rural	male	41	1788
county	26	rural	female	42	2203
county	26	rural	male	42	2022
county	26	rural	female	43	1919
county	26	rural	male	43	1635
county	26	rural	female	44	1760
county	26	rural	male	44	1501
county	26	rural	female	45	2873
county	26	rural	male	45	2541
county	26	rural	female	46	1868
county	26	rural	male	46	1644
county	26	rural	female	47	1959
county	26	rural	male	47	1700
county	26	rural	female	48	1850
county	26	rural	male	48	1555
county	26	rural	female	49	1925
county	26	rural	male	49	1827
county	26	rural	female	5	11515
county	26	rural	male	5	11940
county	26	rural	female	50	2354
county	26	rural	male	50	2200
county	26	rural	female	51	1404
county	26	rural	male	51	1321
county	26	rural	female	52	1459
county	26	rural	male	52	1366
county	37	rural	female	0	25567
county	37	rural	male	0	25562
county	37	rural	female	1	23473
county	37	urban	male	74	76
county	37	urban	female	75	135
county	37	urban	male	75	107
county	37	urban	female	76	91
county	37	urban	male	76	83
county	37	urban	female	77	154
county	37	urban	male	77	97
county	37	urban	female	78	81
county	37	urban	male	78	75
county	37	urban	female	79	142
county	37	urban	male	79	68
county	37	urban	female	8	3314
county	37	urban	male	8	3112
county	37	urban	female	80+	826
county	37	urban	male	80+	602
county	37	urban	female	9	3434
county	37	urban	male	9	3415
county	37	urban	female	unspecified	87
county	37	urban	male	unspecified	112
county	35	urban	male	67	184
county	35	urban	female	68	114
county	35	urban	male	68	110
county	35	urban	female	69	229
county	35	urban	male	69	147
county	35	urban	female	7	3050
county	35	urban	male	7	3093
county	35	urban	female	70	322
county	35	urban	male	70	252
county	35	urban	female	71	100
county	35	urban	male	71	122
county	35	urban	female	72	109
county	35	urban	male	72	121
county	35	urban	female	73	108
county	35	urban	male	73	120
county	35	urban	female	74	108
county	35	urban	male	74	115
county	35	urban	female	75	147
county	35	urban	male	75	120
county	35	urban	female	76	79
county	35	urban	male	76	70
county	35	urban	female	77	66
county	35	urban	male	77	83
county	35	urban	female	78	79
county	35	urban	male	78	81
county	35	urban	female	79	142
county	35	urban	male	79	89
county	35	urban	female	8	2984
county	35	urban	male	8	3054
county	35	urban	female	80+	1019
county	35	urban	male	80+	754
county	35	urban	female	9	3224
county	35	urban	male	9	3300
county	35	urban	female	unspecified	25
county	35	urban	male	unspecified	36
county	22	urban	male	6	10934
county	22	urban	female	60	2314
county	22	urban	male	60	2155
county	22	urban	female	61	972
county	22	urban	male	61	1102
county	22	urban	female	62	973
county	22	urban	male	62	1167
county	22	urban	female	63	837
county	22	urban	male	63	983
county	22	urban	female	64	897
county	22	urban	male	64	920
county	22	urban	female	65	1268
county	22	urban	male	65	1159
county	22	urban	female	66	995
county	22	urban	male	66	727
county	22	urban	female	67	771
county	22	urban	male	67	722
county	22	urban	female	68	510
county	22	urban	male	68	497
county	22	urban	female	69	588
county	22	urban	male	69	514
county	22	urban	female	7	10497
county	22	urban	male	7	10386
county	22	urban	female	70	1344
county	22	urban	male	70	958
county	22	urban	female	71	367
county	22	urban	male	71	371
county	22	urban	female	72	438
county	22	urban	male	72	452
county	22	urban	female	73	454
county	22	urban	male	73	384
county	22	urban	female	74	444
county	22	urban	male	74	334
county	22	urban	female	75	727
county	22	urban	male	75	470
county	22	urban	female	76	368
county	22	urban	male	76	301
county	22	urban	female	77	304
county	22	urban	male	77	247
county	22	urban	female	78	336
county	22	urban	male	78	227
county	22	urban	female	79	388
county	22	urban	male	79	247
county	22	urban	female	8	10224
county	22	urban	male	8	9762
county	22	urban	female	80+	4224
county	22	urban	male	80+	2228
county	22	urban	female	9	10861
county	22	urban	male	9	10911
county	22	urban	female	unspecified	265
county	22	urban	male	unspecified	388
county	26	rural	female	53	1366
county	26	rural	male	53	1303
county	26	rural	female	54	1288
county	26	rural	male	54	1222
county	26	rural	female	55	1648
county	26	rural	male	55	1511
county	26	rural	female	56	1168
county	26	rural	male	56	1077
county	26	rural	female	57	1263
county	26	rural	male	57	1338
county	26	rural	female	58	785
county	26	rural	male	58	753
county	26	rural	female	59	982
county	26	rural	male	59	1101
county	26	rural	female	6	11101
county	26	rural	male	6	11033
county	26	rural	female	60	1402
county	26	rural	male	60	1394
county	26	rural	female	61	944
county	26	rural	male	61	930
county	26	rural	female	62	651
county	26	rural	male	62	752
county	26	rural	female	63	690
county	26	rural	male	63	750
county	26	rural	female	64	634
county	26	rural	male	64	679
county	26	rural	female	65	902
county	26	rural	male	65	867
county	26	rural	female	66	639
county	26	rural	male	66	528
county	26	rural	female	67	736
county	26	rural	male	67	648
county	26	rural	female	68	446
county	26	rural	male	68	435
county	26	rural	female	69	567
county	26	rural	male	69	443
county	26	rural	female	7	10710
county	26	rural	male	7	10928
county	26	rural	female	70	947
county	26	rural	male	70	812
county	26	rural	female	71	372
county	26	rural	male	71	373
county	26	rural	female	72	387
county	26	rural	male	72	455
county	26	rural	female	73	441
county	26	rural	male	73	508
county	26	rural	female	74	296
county	26	rural	male	74	294
county	26	rural	female	75	482
county	26	rural	male	75	429
county	26	rural	female	76	307
county	26	rural	male	76	305
county	26	rural	female	77	409
county	26	rural	male	77	373
county	26	rural	female	78	270
county	26	rural	male	78	264
county	26	rural	female	79	395
county	26	rural	male	79	320
county	26	rural	female	8	10455
county	26	rural	male	8	10138
county	26	rural	female	80+	2842
county	26	rural	male	80+	2326
county	26	rural	female	9	10350
county	26	rural	male	9	10693
county	26	rural	female	unspecified	80
county	26	rural	male	unspecified	88
county	26	urban	female	0	2951
county	26	urban	male	0	3082
county	26	urban	female	1	2299
county	26	urban	male	1	2370
county	26	urban	female	10	2215
county	26	urban	male	10	2192
county	26	urban	female	11	1693
county	26	urban	male	11	1662
county	26	urban	female	12	2150
county	26	urban	male	12	2028
county	26	urban	female	13	2054
county	26	urban	male	13	1897
county	26	urban	female	14	1918
county	26	urban	male	14	1811
county	26	urban	female	15	1862
county	26	urban	male	15	1671
county	26	urban	female	16	1905
county	26	urban	male	16	1724
county	26	urban	female	17	2100
county	26	urban	male	17	2007
county	26	urban	female	18	2076
county	26	urban	male	18	1972
county	26	urban	female	19	1831
county	26	urban	male	19	1604
county	26	urban	female	2	2651
county	26	urban	male	2	2707
county	26	urban	female	20	2498
county	26	urban	male	20	1974
county	26	urban	female	21	1743
county	26	urban	male	21	1390
county	26	urban	female	22	2286
county	26	urban	male	22	1956
county	26	urban	female	23	2036
county	26	urban	male	23	1788
county	26	urban	female	24	1919
county	26	urban	male	24	1784
county	26	urban	female	25	2303
county	26	urban	male	25	2155
county	26	urban	female	26	1650
county	26	urban	male	26	1667
county	26	urban	female	27	1564
county	26	urban	male	27	1724
county	26	urban	female	28	1626
county	26	urban	male	28	1626
county	26	urban	female	29	1270
county	26	urban	male	29	1436
county	26	urban	female	3	2663
county	26	urban	male	3	2668
county	26	urban	female	30	1901
county	26	urban	male	30	2075
county	26	urban	female	31	859
county	26	urban	male	31	1067
county	26	urban	female	32	1345
county	26	urban	male	32	1536
county	26	urban	female	33	834
county	26	urban	male	33	999
county	26	urban	female	34	853
county	26	urban	male	34	1065
county	26	urban	female	35	1337
county	26	urban	male	35	1705
county	26	urban	female	36	742
county	26	urban	male	36	877
county	26	urban	female	37	736
county	26	urban	male	37	846
county	26	urban	female	38	830
county	26	urban	male	38	950
county	26	urban	female	39	669
county	26	urban	male	39	787
county	26	urban	female	4	2561
county	26	urban	male	4	2648
county	26	urban	female	40	1044
county	26	urban	male	40	1228
county	26	urban	female	41	441
county	26	urban	male	41	561
county	26	urban	female	42	600
county	26	urban	male	42	730
county	26	urban	female	43	423
county	26	urban	male	43	468
county	26	urban	female	44	379
county	26	urban	male	44	465
county	26	urban	female	45	680
county	26	urban	male	45	811
county	26	urban	female	46	435
county	26	urban	male	46	504
county	26	urban	female	47	421
county	26	urban	male	47	465
county	26	urban	female	48	416
county	26	urban	male	48	501
county	26	urban	female	49	351
county	26	urban	male	49	471
county	26	urban	female	5	2531
county	26	urban	male	5	2645
county	26	urban	female	50	494
county	26	urban	male	50	611
county	26	urban	female	51	248
county	26	urban	male	51	331
county	26	urban	female	52	274
county	26	urban	male	52	366
county	26	urban	female	53	211
county	26	urban	male	53	298
county	26	urban	female	54	227
county	26	urban	male	54	300
county	26	urban	female	55	270
county	26	urban	male	55	311
county	26	urban	female	56	183
county	26	urban	male	56	232
county	26	urban	female	57	229
county	26	urban	male	57	236
county	26	urban	female	58	140
county	26	urban	male	58	153
county	26	urban	female	59	131
county	26	urban	male	59	190
county	26	urban	female	6	2295
county	26	urban	male	6	2305
county	26	urban	female	60	237
county	26	urban	male	60	296
county	26	urban	female	61	111
county	26	urban	male	61	153
county	26	urban	female	62	111
county	26	urban	male	62	153
county	26	urban	female	63	100
county	26	urban	male	63	119
county	26	urban	female	64	109
county	26	urban	male	64	85
county	26	urban	female	65	129
county	26	urban	male	65	145
county	26	urban	female	66	80
county	26	urban	male	66	78
county	26	urban	female	67	86
county	26	urban	male	67	107
county	26	urban	female	68	60
county	26	urban	male	68	71
county	26	urban	female	69	66
county	26	urban	male	69	59
county	27	rural	male	28	3171
county	27	rural	female	29	3405
county	27	rural	male	29	3194
county	27	rural	female	3	9064
county	27	rural	male	3	8999
county	27	rural	female	30	5067
county	27	rural	male	30	4549
county	27	rural	female	31	2592
county	27	rural	male	31	2844
county	27	rural	female	32	3854
county	27	rural	male	32	3590
county	27	rural	female	33	2472
county	27	rural	male	33	2514
county	27	rural	female	34	2627
county	27	rural	male	34	2639
county	27	rural	female	35	4209
county	27	rural	male	35	4215
county	27	rural	female	36	2496
county	27	rural	male	36	2415
county	27	rural	female	37	2411
county	27	rural	male	37	2491
county	27	rural	female	38	2400
county	27	rural	male	38	2125
county	27	rural	female	39	2119
county	27	rural	male	39	2211
county	27	rural	female	4	8628
county	27	rural	male	4	9087
county	27	rural	female	40	3190
county	27	rural	male	40	3107
county	27	rural	female	41	1516
county	27	rural	male	41	1641
county	27	rural	female	42	1847
county	27	rural	male	42	1804
county	27	rural	female	43	1541
county	27	rural	male	43	1395
county	27	rural	female	44	1276
county	27	rural	male	44	1299
county	27	rural	female	45	2294
county	27	rural	male	45	2221
county	27	rural	female	46	1481
county	27	rural	male	46	1483
county	27	rural	female	47	1454
county	27	rural	male	47	1393
county	27	rural	female	48	1894
county	27	rural	male	48	1511
county	27	rural	female	49	1298
county	27	rural	male	49	1468
county	27	rural	female	5	8509
county	27	rural	male	5	8914
county	27	rural	female	50	2104
county	27	rural	male	50	1884
county	27	rural	female	51	981
county	27	rural	male	51	1030
county	27	rural	female	52	1185
county	27	rural	male	52	1169
county	27	rural	female	53	925
county	27	rural	male	53	953
county	27	rural	female	54	940
county	27	rural	male	54	852
county	27	rural	female	55	1432
county	27	rural	male	55	1268
county	27	rural	female	56	901
county	27	rural	male	56	903
county	27	rural	female	57	1251
county	27	rural	male	57	1148
county	27	rural	female	58	718
county	27	rural	male	58	610
county	27	rural	female	59	757
county	27	rural	male	59	847
county	27	rural	female	6	8272
county	27	rural	male	6	8625
county	27	rural	female	60	1508
county	27	rural	male	60	1284
county	27	rural	female	61	680
county	27	rural	male	61	776
county	27	rural	female	62	560
county	27	rural	male	62	643
county	27	rural	female	63	534
county	27	rural	male	63	519
county	27	rural	female	64	578
county	27	rural	male	64	543
county	27	rural	female	65	926
county	27	rural	male	65	802
county	27	rural	female	66	606
county	27	rural	male	66	581
county	27	rural	female	67	557
county	27	rural	male	67	569
county	27	rural	female	68	370
county	27	rural	male	68	342
county	27	rural	female	69	506
county	27	rural	male	69	450
county	27	rural	female	7	8431
county	27	rural	male	7	8651
county	27	rural	female	70	1083
county	27	rural	male	70	887
county	27	rural	female	71	295
county	27	rural	male	71	310
county	27	rural	female	72	336
county	27	rural	male	72	395
county	20	rural	female	0	4949
county	20	rural	male	0	4949
county	20	rural	female	1	4368
county	20	rural	male	1	4463
county	20	rural	female	10	5124
county	20	rural	male	10	5173
county	20	rural	female	11	4124
county	20	rural	male	11	4096
county	20	rural	female	12	5087
county	20	rural	male	12	5097
county	20	rural	female	13	5098
county	20	rural	male	13	4887
county	20	rural	female	14	4081
county	20	rural	male	14	4328
county	20	rural	female	15	3913
county	20	rural	male	15	4381
county	20	rural	female	16	3662
county	20	rural	male	16	3805
county	20	rural	female	17	3631
county	20	rural	male	17	4137
county	20	rural	female	18	3649
county	20	rural	male	18	4275
county	20	rural	female	19	3381
county	20	rural	male	19	3716
county	20	rural	female	2	4793
county	20	rural	male	2	4882
county	20	rural	female	20	4519
county	20	rural	male	20	4552
county	20	rural	female	21	3451
county	20	rural	male	21	3416
county	20	rural	female	22	4207
county	20	rural	male	22	3992
county	20	rural	female	23	4183
county	20	rural	male	23	3996
county	20	rural	female	24	4017
county	20	rural	male	24	3657
county	20	rural	female	25	5360
county	20	rural	male	25	5084
county	20	rural	female	26	3941
county	20	rural	male	26	3682
county	20	rural	female	27	3903
county	20	rural	male	27	3984
county	20	rural	female	28	3996
county	20	rural	male	28	3615
county	20	rural	female	29	3791
county	20	rural	male	29	3793
county	20	rural	female	3	4812
county	20	rural	male	3	4992
county	20	rural	female	30	5926
county	20	rural	male	30	5568
county	20	rural	female	31	2839
county	20	rural	male	31	3254
county	20	rural	female	32	3488
county	20	rural	male	32	3421
county	20	rural	female	33	2733
county	20	rural	male	33	2818
county	20	rural	female	34	3044
county	20	rural	male	34	3152
county	20	rural	female	35	4914
county	20	rural	male	35	4714
county	20	rural	female	36	2660
county	20	rural	male	36	2698
county	27	rural	female	73	294
county	27	rural	male	73	348
county	27	rural	female	74	321
county	27	rural	male	74	335
county	27	rural	female	75	532
county	27	rural	male	75	443
county	27	rural	female	76	264
county	27	rural	male	76	267
county	27	rural	female	77	213
county	27	rural	male	77	266
county	27	rural	female	78	240
county	27	rural	male	78	241
county	27	rural	female	79	382
county	27	rural	male	79	249
county	27	rural	female	8	7782
county	27	rural	male	8	7799
county	27	rural	female	80+	3892
county	27	rural	male	80+	2962
county	27	rural	female	9	8369
county	27	rural	male	9	8674
county	27	rural	female	unspecified	131
county	27	rural	male	unspecified	190
county	27	urban	female	0	5669
county	27	urban	male	0	5813
county	27	urban	female	1	4473
county	27	urban	male	1	4510
county	27	urban	female	10	4115
county	27	urban	male	10	4011
county	27	urban	female	11	3156
county	27	urban	male	11	2881
county	27	urban	female	12	3685
county	27	urban	male	12	3585
county	27	urban	female	13	3471
county	27	urban	male	13	3264
county	27	urban	female	14	3163
county	27	urban	male	14	2941
county	27	urban	female	15	3240
county	27	urban	male	15	2757
county	27	urban	female	16	3313
county	27	urban	male	16	2817
county	27	urban	female	17	3677
county	27	urban	male	17	3181
county	27	urban	female	18	3981
county	27	urban	male	18	3433
county	27	urban	female	19	4220
county	27	urban	male	19	3329
county	27	urban	female	2	4926
county	27	urban	male	2	4977
county	27	urban	female	20	6318
county	27	urban	male	20	4772
county	27	urban	female	21	4783
county	27	urban	male	21	3931
county	27	urban	female	22	6079
county	27	urban	male	22	4850
county	27	urban	female	23	5302
county	27	urban	male	23	4722
county	27	urban	female	24	5134
county	27	urban	male	24	4793
county	27	urban	female	25	5770
county	27	urban	male	25	5394
county	27	urban	female	26	4185
county	27	urban	male	26	4008
county	27	urban	female	27	3716
county	27	urban	male	27	4209
county	27	urban	female	28	4186
county	27	urban	male	28	4024
county	27	urban	female	29	3047
county	27	urban	male	29	3386
county	27	urban	female	3	4886
county	27	urban	male	3	4755
county	27	urban	female	30	4709
county	27	urban	male	30	5255
county	27	urban	female	31	1913
county	27	urban	male	31	2442
county	27	urban	female	32	3012
county	27	urban	male	32	3649
county	27	urban	female	33	1747
county	27	urban	male	33	2186
county	27	urban	female	34	1939
county	27	urban	male	34	2460
county	27	urban	female	35	3064
county	27	urban	male	35	4089
county	27	urban	female	36	1691
county	27	urban	male	36	2044
county	27	urban	female	37	1570
county	27	urban	male	37	2020
county	27	urban	female	38	1834
county	27	urban	male	38	2172
county	27	urban	female	39	1440
county	27	urban	male	39	1732
county	27	urban	female	4	4553
county	27	urban	male	4	4725
county	27	urban	female	40	2281
county	27	urban	male	40	3069
county	27	urban	female	41	831
county	27	urban	male	41	1239
county	27	urban	female	42	1274
county	27	urban	male	42	1692
county	27	urban	female	43	893
county	27	urban	male	43	1140
county	27	urban	female	44	654
county	27	urban	male	44	980
county	27	urban	female	45	1404
county	27	urban	male	45	1979
county	27	urban	female	46	850
county	27	urban	male	46	1158
county	27	urban	female	47	822
county	27	urban	male	47	1196
county	27	urban	female	48	892
county	27	urban	male	48	1099
county	27	urban	female	49	640
county	27	urban	male	49	1046
county	27	urban	female	5	4361
county	27	urban	male	5	4561
county	27	urban	female	50	982
county	27	urban	male	50	1411
county	27	urban	female	51	385
county	27	urban	male	51	634
county	27	urban	female	52	481
county	27	urban	male	52	818
county	27	urban	female	53	370
county	27	urban	male	53	542
county	27	urban	female	54	349
county	27	urban	male	54	545
county	27	urban	female	55	476
county	27	urban	male	55	738
county	27	urban	female	56	333
county	27	urban	male	56	447
county	27	urban	female	57	320
county	27	urban	male	57	506
county	27	urban	female	58	226
county	27	urban	male	58	355
county	27	urban	female	59	203
county	27	urban	male	59	328
county	27	urban	female	6	4230
county	27	urban	male	6	4108
county	27	urban	female	60	466
county	27	urban	male	60	574
county	27	urban	female	61	141
county	27	urban	male	61	257
county	27	urban	female	62	154
county	27	urban	male	62	301
county	27	urban	female	63	147
county	27	urban	male	63	181
county	27	urban	female	64	156
county	27	urban	male	64	161
county	27	urban	female	65	253
county	27	urban	male	65	320
county	27	urban	female	66	133
county	27	urban	male	66	134
county	27	urban	female	67	133
county	27	urban	male	67	167
county	27	urban	female	68	122
county	27	urban	male	68	125
county	27	urban	female	69	104
county	27	urban	male	69	107
county	27	urban	female	7	4108
county	27	urban	male	7	4107
county	27	urban	female	70	256
county	27	urban	male	70	228
county	27	urban	female	71	66
county	27	urban	male	71	64
county	27	urban	female	72	79
county	27	urban	male	72	94
county	27	urban	female	73	76
county	27	urban	male	73	73
county	27	urban	female	74	62
county	27	urban	male	74	70
county	27	urban	female	75	120
county	27	urban	male	75	110
county	27	urban	female	76	63
county	27	urban	male	76	60
county	27	urban	female	77	53
county	27	urban	male	77	66
county	27	urban	female	78	58
county	27	urban	male	78	58
county	27	urban	female	79	64
county	27	urban	male	79	52
county	27	urban	female	8	3993
county	27	urban	male	8	3720
county	27	urban	female	80+	891
county	27	urban	male	80+	591
county	27	urban	female	9	4029
county	27	urban	male	9	4031
county	27	urban	female	unspecified	101
county	27	urban	male	unspecified	148
county	28	rural	female	0	5766
county	28	rural	male	0	5975
county	28	rural	female	1	4118
county	28	rural	male	1	4221
county	28	rural	female	10	5326
county	28	rural	male	10	5561
county	28	rural	female	11	3939
county	28	rural	male	11	3875
county	28	rural	female	12	4962
county	28	rural	male	12	5158
county	28	rural	female	13	4254
county	28	rural	male	13	4272
county	28	rural	female	14	4260
county	28	rural	male	14	4464
county	28	rural	female	15	4007
county	28	rural	male	15	4155
county	28	rural	female	16	3894
county	28	rural	male	16	3896
county	28	rural	female	17	3230
county	28	rural	male	17	3477
county	28	rural	female	18	3298
county	28	rural	male	18	3684
county	28	rural	female	19	2553
county	28	rural	male	19	2814
county	28	rural	female	2	5663
county	28	rural	male	2	5751
county	28	rural	female	20	3781
county	28	rural	male	20	3510
county	28	rural	female	21	2280
county	28	rural	male	21	2299
county	28	rural	female	22	3129
county	28	rural	male	22	2662
county	28	rural	female	23	2639
county	28	rural	male	23	2413
county	28	rural	female	24	2599
county	28	rural	male	24	2406
county	28	rural	female	25	3241
county	28	rural	male	25	3008
county	28	rural	female	26	2196
county	28	rural	male	26	1999
county	28	rural	female	27	1961
county	28	rural	male	27	2069
county	28	rural	female	28	2261
county	28	rural	male	28	1805
county	28	rural	female	29	1670
county	28	rural	male	29	1609
county	28	rural	female	3	5363
county	28	rural	male	3	5235
county	28	rural	female	30	2943
county	28	rural	male	30	2671
county	28	rural	female	31	1292
county	28	rural	male	31	1503
county	28	rural	female	32	1886
county	45	urban	male	38	1173
county	45	urban	female	39	902
county	45	urban	male	39	915
county	45	urban	female	4	4110
county	45	urban	male	4	4199
county	45	urban	female	40	2145
county	45	urban	male	40	1886
county	45	urban	female	41	651
county	45	urban	male	41	781
county	45	urban	female	42	761
county	45	urban	male	42	888
county	45	urban	female	43	558
county	45	urban	male	43	653
county	45	urban	female	44	543
county	45	urban	male	44	548
county	45	urban	female	45	1554
county	45	urban	male	45	1416
county	45	urban	female	46	863
county	45	urban	male	46	921
county	45	urban	female	47	845
county	45	urban	male	47	884
county	45	urban	female	48	890
county	45	urban	male	48	788
county	45	urban	female	49	700
county	45	urban	male	49	826
county	45	urban	female	5	3820
county	45	urban	male	5	4080
county	45	urban	female	50	1450
county	45	urban	male	50	1176
county	45	urban	female	51	502
county	45	urban	male	51	605
county	45	urban	female	52	531
county	45	urban	male	52	612
county	45	urban	female	53	433
county	45	urban	male	53	495
county	45	urban	female	54	438
county	45	urban	male	54	473
county	45	urban	female	55	751
county	45	urban	male	55	758
county	45	urban	female	56	379
county	45	urban	male	56	442
county	45	urban	female	57	410
county	45	urban	male	57	502
county	45	urban	female	58	319
county	45	urban	male	58	343
county	45	urban	female	59	352
county	45	urban	male	59	376
county	45	urban	female	6	3790
county	45	urban	male	6	3846
county	45	urban	female	60	848
county	45	urban	male	60	666
county	45	urban	female	61	241
county	45	urban	male	61	378
county	28	rural	male	32	1846
county	28	rural	female	33	1293
county	28	rural	male	33	1248
county	28	rural	female	34	1327
county	28	rural	male	34	1256
county	28	rural	female	35	2430
county	28	rural	male	35	2661
county	28	rural	female	36	1139
county	28	rural	male	36	1183
county	28	rural	female	37	1176
county	28	rural	male	37	1226
county	28	rural	female	38	1202
county	28	rural	male	38	958
county	28	rural	female	39	981
county	28	rural	male	39	887
county	28	rural	female	4	5404
county	28	rural	male	4	5460
county	28	rural	female	40	2006
county	28	rural	male	40	1919
county	28	rural	female	41	719
county	28	rural	male	41	730
county	28	rural	female	42	919
county	28	rural	male	42	912
county	28	rural	female	43	652
county	28	rural	male	43	626
county	28	rural	female	44	712
county	28	rural	male	44	742
county	28	rural	female	45	1517
county	28	rural	male	45	1326
county	28	rural	female	46	821
county	28	rural	male	46	786
county	28	rural	female	47	778
county	28	rural	male	47	759
county	28	rural	female	48	1263
county	28	rural	male	48	1087
county	28	rural	female	49	718
county	28	rural	male	49	801
county	28	rural	female	5	5169
county	28	rural	male	5	5444
county	28	rural	female	50	1525
county	28	rural	male	50	1419
county	28	rural	female	51	499
county	28	rural	male	51	655
county	28	rural	female	52	638
county	28	rural	male	52	663
county	28	rural	female	53	505
county	28	rural	male	53	527
county	28	rural	female	54	551
county	28	rural	male	54	524
county	28	rural	female	55	878
county	28	rural	male	55	845
county	28	rural	female	56	528
county	28	rural	male	56	535
county	28	rural	female	57	539
county	28	rural	male	57	717
county	28	rural	female	58	473
county	28	rural	male	58	437
county	28	rural	female	59	453
county	28	rural	male	59	498
county	28	rural	female	6	5119
county	28	rural	male	6	5272
county	28	rural	female	60	1273
county	28	rural	male	60	1065
county	28	rural	female	61	405
county	28	rural	male	61	464
county	28	rural	female	62	334
county	28	rural	male	62	401
county	28	rural	female	63	272
county	28	rural	male	63	340
county	28	rural	female	64	400
county	28	rural	male	64	351
county	28	rural	female	65	796
county	28	rural	male	65	588
county	28	rural	female	66	330
county	28	rural	male	66	336
county	28	rural	female	67	295
county	28	rural	male	67	346
county	28	rural	female	68	349
county	28	rural	male	68	273
county	28	rural	female	69	332
county	28	rural	male	69	278
county	28	rural	female	7	4741
county	28	rural	male	7	4938
county	28	rural	female	70	862
county	28	rural	male	70	723
county	28	rural	female	71	196
county	28	rural	male	71	146
county	28	rural	female	72	228
county	28	rural	male	72	223
county	28	rural	female	73	153
county	28	rural	male	73	176
county	28	rural	female	74	214
county	28	rural	male	74	211
county	28	rural	female	75	384
county	28	rural	male	75	282
county	28	rural	female	76	140
county	28	rural	male	76	157
county	28	rural	female	77	109
county	28	rural	male	77	127
county	28	rural	female	78	170
county	28	rural	male	78	187
county	28	rural	female	79	267
county	28	rural	male	79	198
county	28	rural	female	8	5143
county	28	rural	male	8	4930
county	28	rural	female	80+	2370
county	28	rural	male	80+	1664
county	28	rural	female	9	4775
county	28	rural	male	9	4901
county	28	rural	female	unspecified	44
county	28	rural	male	unspecified	39
county	28	urban	female	0	892
county	28	urban	male	0	956
county	28	urban	female	1	655
county	28	urban	male	1	741
county	28	urban	female	10	776
county	28	urban	male	10	760
county	28	urban	female	11	639
county	28	urban	male	11	577
county	28	urban	female	12	773
county	28	urban	male	12	714
county	28	urban	female	13	671
county	28	urban	male	13	629
county	28	urban	female	14	682
county	28	urban	male	14	633
county	28	urban	female	15	697
county	28	urban	male	15	631
county	28	urban	female	16	700
county	28	urban	male	16	603
county	28	urban	female	17	765
county	28	urban	male	17	621
county	28	urban	female	18	647
county	28	urban	male	18	610
county	28	urban	female	19	597
county	28	urban	male	19	589
county	28	urban	female	2	780
county	28	urban	male	2	756
county	28	urban	female	20	687
county	28	urban	male	20	620
county	28	urban	female	21	499
county	28	urban	male	21	413
county	28	urban	female	22	669
county	28	urban	male	22	528
county	28	urban	female	23	576
county	28	urban	male	23	473
county	28	urban	female	24	628
county	28	urban	male	24	504
county	28	urban	female	25	737
county	28	urban	male	25	639
county	28	urban	female	26	493
county	28	urban	male	26	414
county	28	urban	female	27	466
county	28	urban	male	27	446
county	28	urban	female	28	423
county	28	urban	male	28	434
county	28	urban	female	29	405
county	28	urban	male	29	342
county	28	urban	female	3	826
county	28	urban	male	3	841
county	28	urban	female	30	549
county	28	urban	male	30	530
county	28	urban	female	31	286
county	28	urban	male	31	291
county	28	urban	female	32	364
county	28	urban	male	32	387
county	28	urban	female	33	277
county	28	urban	male	33	261
county	28	urban	female	34	299
county	28	urban	male	34	284
county	28	urban	female	35	436
county	28	urban	male	35	481
county	28	urban	female	36	251
county	28	urban	male	36	255
county	28	urban	female	37	237
county	28	urban	male	37	288
county	28	urban	female	38	236
county	28	urban	male	38	233
county	28	urban	female	39	208
county	28	urban	male	39	205
county	28	urban	female	4	803
county	28	urban	male	4	791
county	28	urban	female	40	325
county	28	urban	male	40	328
county	28	urban	female	41	151
county	28	urban	male	41	172
county	28	urban	female	42	156
county	28	urban	male	42	187
county	28	urban	female	43	147
county	28	urban	male	43	126
county	28	urban	female	44	140
county	28	urban	male	44	133
county	28	urban	female	45	226
county	28	urban	male	45	216
county	28	urban	female	46	143
county	28	urban	male	46	127
county	28	urban	female	47	140
county	28	urban	male	47	149
county	28	urban	female	48	199
county	28	urban	male	48	168
county	28	urban	female	49	123
county	28	urban	male	49	154
county	28	urban	female	5	781
county	28	urban	male	5	760
county	28	urban	female	50	235
county	28	urban	male	50	198
county	28	urban	female	51	103
county	28	urban	male	51	123
county	28	urban	female	52	102
county	28	urban	male	52	115
county	28	urban	female	53	87
county	28	urban	male	53	89
county	28	urban	female	54	88
county	28	urban	male	54	100
county	28	urban	female	55	130
county	28	urban	male	55	135
county	28	urban	female	56	59
county	28	urban	male	56	88
county	28	urban	female	57	101
county	28	urban	male	57	122
county	28	urban	female	58	41
county	28	urban	male	58	46
county	28	urban	female	59	73
county	28	urban	male	59	83
county	28	urban	female	6	751
county	28	urban	male	6	737
county	28	urban	female	60	104
county	28	urban	male	60	121
county	28	urban	female	61	51
county	28	urban	male	61	63
county	28	urban	female	62	37
county	28	urban	male	62	47
county	28	urban	female	63	42
county	28	urban	male	63	37
county	28	urban	female	64	37
county	28	urban	male	64	44
county	28	urban	female	65	89
county	28	urban	male	65	59
county	28	urban	female	66	42
county	28	urban	male	66	45
county	28	urban	female	67	54
county	28	urban	male	67	31
county	28	urban	female	68	31
county	28	urban	male	68	27
county	28	urban	female	69	49
county	28	urban	male	69	24
county	28	urban	female	7	709
county	28	urban	male	7	713
county	28	urban	female	70	97
county	28	urban	male	70	64
county	28	urban	female	71	26
county	28	urban	male	71	29
county	28	urban	female	72	30
county	28	urban	male	72	18
county	28	urban	female	73	27
county	28	urban	male	73	23
county	28	urban	female	74	18
county	28	urban	male	74	19
county	28	urban	female	75	47
county	28	urban	male	75	28
county	28	urban	female	76	10
county	28	urban	male	76	22
county	28	urban	female	77	8
county	28	urban	male	77	6
county	28	urban	female	78	18
county	28	urban	male	78	27
county	28	urban	female	79	36
county	28	urban	male	79	25
county	28	urban	female	8	708
county	28	urban	male	8	726
county	28	urban	female	80+	311
county	28	urban	male	80+	184
county	28	urban	female	9	718
county	28	urban	male	9	726
county	28	urban	female	unspecified	4
county	28	urban	male	unspecified	9
county	29	rural	female	0	10601
county	29	rural	male	0	10966
county	29	rural	female	1	9976
county	29	rural	male	1	10168
county	29	rural	female	10	9989
county	29	rural	male	10	10037
county	29	rural	female	11	7745
county	29	rural	male	11	7805
county	29	rural	female	12	9294
county	29	rural	male	12	9348
county	29	rural	female	13	8995
county	29	rural	male	13	8593
county	29	rural	female	14	7833
county	29	rural	male	14	7691
county	29	rural	female	15	7368
county	29	rural	male	15	7549
county	29	rural	female	16	6992
county	29	rural	male	16	7022
county	29	rural	female	17	6905
county	29	rural	male	17	7508
county	29	rural	female	18	6538
county	29	rural	male	18	7474
county	29	rural	female	19	6240
county	29	rural	male	19	6531
county	29	rural	female	2	11135
county	29	rural	male	2	11481
county	29	rural	female	20	7618
county	29	rural	male	20	6820
county	29	rural	female	21	5654
county	29	rural	male	21	5270
county	29	rural	female	22	6706
county	29	rural	male	22	6059
county	29	rural	female	23	6314
county	29	rural	male	23	5497
county	29	rural	female	24	5793
county	29	rural	male	24	5235
county	29	rural	female	25	6588
county	29	rural	male	25	6046
county	29	rural	female	26	4570
county	29	rural	male	26	4623
county	29	rural	female	27	4866
county	29	rural	male	27	5015
county	29	rural	female	28	4203
county	29	rural	male	28	3918
county	29	rural	female	29	4136
county	29	rural	male	29	4208
county	29	rural	female	3	11081
county	29	rural	male	3	11238
county	29	rural	female	30	5390
county	29	rural	male	30	5174
county	29	rural	female	31	3391
county	29	rural	male	31	3821
county	29	rural	female	32	4006
county	15	urban	male	23	1287
county	15	urban	female	24	1254
county	15	urban	male	24	1031
county	15	urban	female	25	1555
county	15	urban	male	25	1321
county	15	urban	female	26	1204
county	15	urban	male	26	994
county	15	urban	female	27	1194
county	15	urban	male	27	1060
county	15	urban	female	28	1227
county	15	urban	male	28	989
county	15	urban	female	29	1169
county	15	urban	male	29	975
county	15	urban	female	3	1830
county	15	urban	male	3	1798
county	15	urban	female	30	1472
county	15	urban	male	30	1369
county	15	urban	female	31	864
county	15	urban	male	31	876
county	15	urban	female	32	994
county	15	urban	male	32	910
county	15	urban	female	33	751
county	15	urban	male	33	687
county	29	rural	male	32	4030
county	29	rural	female	33	3097
county	29	rural	male	33	3317
county	29	rural	female	34	3190
county	29	rural	male	34	3348
county	29	rural	female	35	4552
county	29	rural	male	35	4849
county	29	rural	female	36	2902
county	29	rural	male	36	2950
county	29	rural	female	37	2953
county	29	rural	male	37	3157
county	29	rural	female	38	2628
county	29	rural	male	38	2532
county	29	rural	female	39	2631
county	29	rural	male	39	2778
county	29	rural	female	4	10964
county	29	rural	male	4	11067
county	29	rural	female	40	3505
county	29	rural	male	40	3429
county	29	rural	female	41	1987
county	29	rural	male	41	2216
county	29	rural	female	42	2106
county	29	rural	male	42	2098
county	29	rural	female	43	1965
county	29	rural	male	43	1827
county	29	rural	female	44	1607
county	29	rural	male	44	1671
county	29	rural	female	45	2671
county	29	rural	male	45	2629
county	29	rural	female	46	1875
county	29	rural	male	46	1832
county	29	rural	female	47	1909
county	29	rural	male	47	1818
county	29	rural	female	48	2240
county	29	rural	male	48	1903
county	29	rural	female	49	1722
county	29	rural	male	49	1845
county	29	rural	female	5	10555
county	29	rural	male	5	11122
county	29	rural	female	50	2331
county	29	rural	male	50	2274
county	29	rural	female	51	1299
county	29	rural	male	51	1502
county	29	rural	female	52	1338
county	29	rural	male	52	1443
county	29	rural	female	53	1236
county	29	rural	male	53	1219
county	29	rural	female	54	1198
county	29	rural	male	54	1194
county	29	rural	female	55	1679
county	29	rural	male	55	1606
county	29	rural	female	56	1000
county	29	rural	male	56	1103
county	29	rural	female	57	1500
county	29	rural	male	57	1526
county	29	rural	female	58	718
county	29	rural	male	58	772
county	29	rural	female	59	1015
county	29	rural	male	59	1125
county	29	rural	female	6	10013
county	29	rural	male	6	10440
county	29	rural	female	60	1549
county	29	rural	male	60	1300
county	29	rural	female	61	913
county	29	rural	male	61	1040
county	29	rural	female	62	661
county	29	rural	male	62	783
county	29	rural	female	63	596
county	29	rural	male	63	735
county	29	rural	female	64	816
county	29	rural	male	64	687
county	29	rural	female	65	998
county	29	rural	male	65	850
county	29	rural	female	66	717
county	29	rural	male	66	657
county	29	rural	female	67	656
county	29	rural	male	67	802
county	29	rural	female	68	391
county	29	rural	male	68	428
county	29	rural	female	69	698
county	29	rural	male	69	575
county	29	rural	female	7	9775
county	29	rural	male	7	10197
county	29	rural	female	70	1053
county	29	rural	male	70	936
county	29	rural	female	71	376
county	29	rural	male	71	422
county	29	rural	female	72	373
county	29	rural	male	72	482
county	29	rural	female	73	386
county	29	rural	male	73	489
county	29	rural	female	74	416
county	29	rural	male	74	388
county	29	rural	female	75	551
county	29	rural	male	75	499
county	29	rural	female	76	351
county	29	rural	male	76	352
county	29	rural	female	77	314
county	29	rural	male	77	380
county	29	rural	female	78	287
county	29	rural	male	78	269
county	29	rural	female	79	610
county	29	rural	male	79	392
county	29	rural	female	8	9669
county	29	rural	male	8	9391
county	29	rural	female	80+	4553
county	29	rural	male	80+	3543
county	29	rural	female	9	9936
county	29	rural	male	9	10155
county	29	rural	female	unspecified	124
county	29	rural	male	unspecified	131
county	29	urban	female	0	1537
county	29	urban	male	0	1566
county	29	urban	female	1	1384
county	29	urban	male	1	1431
county	29	urban	female	10	1389
county	29	urban	male	10	1391
county	29	urban	female	11	1086
county	29	urban	male	11	1102
county	29	urban	female	12	1352
county	29	urban	male	12	1399
county	29	urban	female	13	1237
county	29	urban	male	13	1222
county	29	urban	female	14	1153
county	29	urban	male	14	1074
county	29	urban	female	15	1095
county	29	urban	male	15	1063
county	29	urban	female	16	1236
county	29	urban	male	16	978
county	29	urban	female	17	1425
county	29	urban	male	17	1113
county	29	urban	female	18	1237
county	29	urban	male	18	1034
county	29	urban	female	19	1122
county	29	urban	male	19	988
county	29	urban	female	2	1520
county	29	urban	male	2	1616
county	29	urban	female	20	1508
county	29	urban	male	20	1149
county	29	urban	female	21	1056
county	29	urban	male	21	912
county	29	urban	female	22	1341
county	29	urban	male	22	1076
county	29	urban	female	23	1185
county	29	urban	male	23	1026
county	29	urban	female	24	1196
county	29	urban	male	24	1102
county	29	urban	female	25	1315
county	29	urban	male	25	1230
county	29	urban	female	26	954
county	29	urban	male	26	960
county	29	urban	female	27	992
county	29	urban	male	27	1044
county	29	urban	female	28	892
county	29	urban	male	28	959
county	29	urban	female	29	708
county	29	urban	male	29	786
county	29	urban	female	3	1499
county	29	urban	male	3	1527
county	29	urban	female	30	1122
county	29	urban	male	30	1200
county	29	urban	female	31	530
county	29	urban	male	31	673
county	29	urban	female	32	758
county	29	urban	male	32	820
county	29	urban	female	33	546
county	29	urban	male	33	540
county	29	urban	female	34	552
county	29	urban	male	34	635
county	29	urban	female	35	804
county	29	urban	male	35	908
county	29	urban	female	36	524
county	29	urban	male	36	520
county	29	urban	female	37	489
county	29	urban	male	37	502
county	29	urban	female	38	489
county	29	urban	male	38	495
county	29	urban	female	39	417
county	29	urban	male	39	498
county	29	urban	female	4	1480
county	29	urban	male	4	1508
county	29	urban	female	40	683
county	29	urban	male	40	701
county	29	urban	female	41	326
county	29	urban	male	41	374
county	29	urban	female	42	350
county	29	urban	male	42	438
county	29	urban	female	43	270
county	29	urban	male	43	315
county	29	urban	female	44	262
county	29	urban	male	44	312
county	29	urban	female	45	444
county	29	urban	male	45	504
county	29	urban	female	46	304
county	29	urban	male	46	315
county	29	urban	female	47	273
county	29	urban	male	47	310
county	29	urban	female	48	297
county	29	urban	male	48	314
county	29	urban	female	49	253
county	29	urban	male	49	285
county	29	urban	female	5	1479
county	29	urban	male	5	1507
county	29	urban	female	50	378
county	29	urban	male	50	406
county	29	urban	female	51	165
county	29	urban	male	51	242
county	29	urban	female	52	188
county	29	urban	male	52	245
county	29	urban	female	53	146
county	29	urban	male	53	193
county	29	urban	female	54	141
county	29	urban	male	54	155
county	29	urban	female	55	227
county	29	urban	male	55	244
county	29	urban	female	56	120
county	29	urban	male	56	152
county	29	urban	female	57	166
county	29	urban	male	57	215
county	29	urban	female	58	74
county	29	urban	male	58	86
county	29	urban	female	59	117
county	29	urban	male	59	121
county	29	urban	female	6	1343
county	29	urban	male	6	1476
county	29	urban	female	60	196
county	29	urban	male	60	203
county	29	urban	female	61	104
county	29	urban	male	61	107
county	29	urban	female	62	65
county	29	urban	male	62	80
county	29	urban	female	63	67
county	29	urban	male	63	90
county	29	urban	female	64	85
county	29	urban	male	64	78
county	29	urban	female	65	135
county	29	urban	male	65	121
county	29	urban	female	66	97
county	29	urban	male	66	72
county	29	urban	female	67	74
county	29	urban	male	67	92
county	29	urban	female	68	56
county	29	urban	male	68	43
county	29	urban	female	69	93
county	29	urban	male	69	58
county	29	urban	female	7	1342
county	29	urban	male	7	1305
county	29	urban	female	70	149
county	29	urban	male	70	124
county	29	urban	female	71	39
county	29	urban	male	71	45
county	29	urban	female	72	44
county	29	urban	male	72	65
county	29	urban	female	73	32
county	29	urban	male	73	47
county	29	urban	female	74	51
county	29	urban	male	74	32
county	29	urban	female	75	61
county	29	urban	male	75	73
county	29	urban	female	76	30
county	29	urban	male	76	30
county	29	urban	female	77	36
county	29	urban	male	77	28
county	29	urban	female	78	33
county	29	urban	male	78	34
county	29	urban	female	79	51
county	29	urban	male	79	38
county	29	urban	female	8	1377
county	29	urban	male	8	1339
county	29	urban	female	80+	568
county	29	urban	male	80+	378
county	29	urban	female	9	1457
county	29	urban	male	9	1419
county	29	urban	female	unspecified	17
county	29	urban	male	unspecified	28
county	30	rural	female	0	8271
county	30	rural	male	0	8758
county	30	rural	female	1	6405
county	30	rural	male	1	6664
county	30	rural	female	10	9330
county	30	rural	male	10	10133
county	30	rural	female	11	6366
county	30	rural	male	11	6195
county	30	rural	female	12	8151
county	30	rural	male	12	9298
county	30	rural	female	13	6642
county	30	rural	male	13	7275
county	30	rural	female	14	7056
county	30	rural	male	14	7677
county	30	rural	female	15	6917
county	30	rural	male	15	7727
county	30	rural	female	16	6029
county	30	rural	male	16	6959
county	30	rural	female	17	4874
county	30	rural	male	17	5872
county	30	rural	female	18	5447
county	30	rural	male	18	6544
county	30	rural	female	19	3849
county	30	rural	male	19	4248
county	30	rural	female	2	8658
county	30	rural	male	2	9120
county	30	rural	female	20	5938
county	30	rural	male	20	6000
county	30	rural	female	21	3524
county	30	rural	male	21	3541
county	30	rural	female	22	4068
county	30	rural	male	22	3953
county	30	rural	female	23	3561
county	30	rural	male	23	3320
county	30	rural	female	24	3651
county	30	rural	male	24	3264
county	30	rural	female	25	5346
county	30	rural	male	25	4644
county	30	rural	female	26	3088
county	30	rural	male	26	2760
county	30	rural	female	27	2916
county	30	rural	male	27	2760
county	30	rural	female	28	3422
county	30	rural	male	28	2615
county	30	rural	female	29	2418
county	30	rural	male	29	2225
county	30	rural	female	3	8136
county	30	rural	male	3	8639
county	30	rural	female	30	4538
county	30	rural	male	30	3933
county	30	rural	female	31	1859
county	30	rural	male	31	2017
county	30	rural	female	32	2600
county	30	rural	male	32	2298
county	30	rural	female	33	1733
county	30	rural	male	33	1490
county	30	rural	female	34	1922
county	30	rural	male	34	1736
county	30	rural	female	35	3581
county	30	rural	male	35	3396
county	30	rural	female	36	1998
county	30	rural	male	36	1799
county	30	rural	female	37	1633
county	30	rural	male	37	1639
county	30	rural	female	38	1928
county	30	rural	male	38	1588
county	30	rural	female	39	1604
county	30	rural	male	39	1479
county	30	rural	female	4	8618
county	30	rural	male	4	9220
county	30	rural	female	40	3240
county	30	rural	male	40	2764
county	30	rural	female	41	1056
county	30	rural	male	41	1099
county	30	rural	female	42	1450
county	30	rural	male	42	1352
county	30	rural	female	43	964
county	30	rural	male	43	926
county	30	rural	female	44	1252
county	30	rural	male	44	1095
county	30	rural	female	45	2069
county	30	rural	male	45	1868
county	30	rural	female	46	1193
county	30	rural	male	46	1056
county	30	rural	female	47	1211
county	30	rural	male	47	1058
county	30	rural	female	48	1672
county	30	rural	male	48	1524
county	30	rural	female	49	1158
county	30	rural	male	49	1219
county	30	rural	female	5	8239
county	30	rural	male	5	8840
county	30	rural	female	50	2371
county	30	rural	male	50	2066
county	30	rural	female	51	734
county	30	rural	male	51	921
county	30	rural	female	52	958
county	30	rural	male	52	1040
county	30	rural	female	53	688
county	30	rural	male	53	766
county	30	rural	female	54	724
county	30	rural	male	54	776
county	30	rural	female	55	1273
county	30	rural	male	55	1177
county	30	rural	female	56	734
county	30	rural	male	56	803
county	30	rural	female	57	774
county	30	rural	male	57	979
county	30	rural	female	58	605
county	30	rural	male	58	608
county	30	rural	female	59	763
county	30	rural	male	59	811
county	30	rural	female	6	8563
county	30	rural	male	6	9142
county	30	rural	female	60	1728
county	30	rural	male	60	1583
county	30	rural	female	61	582
county	30	rural	male	61	742
county	30	rural	female	62	447
county	30	rural	male	62	608
county	30	rural	female	63	405
county	30	rural	male	63	448
county	30	rural	female	64	554
county	30	rural	male	64	559
county	30	rural	female	65	857
county	30	rural	male	65	802
county	30	rural	female	66	282
county	30	rural	male	66	286
county	30	rural	female	67	389
county	30	rural	male	67	450
county	30	rural	female	68	437
county	30	rural	male	68	339
county	30	rural	female	69	496
county	30	rural	male	69	434
county	30	rural	female	7	7804
county	30	rural	male	7	7991
county	30	rural	female	70	1103
county	30	rural	male	70	972
county	30	rural	female	71	320
county	30	rural	male	71	252
county	30	rural	female	72	329
county	30	rural	male	72	312
county	30	rural	female	73	260
county	30	rural	male	73	232
county	30	rural	female	74	319
county	30	rural	male	74	238
county	30	rural	female	75	509
county	30	rural	male	75	412
county	30	rural	female	76	186
county	30	rural	male	76	233
county	30	rural	female	77	146
county	30	rural	male	77	166
county	30	rural	female	78	263
county	30	rural	male	78	209
county	30	rural	female	79	385
county	30	rural	male	79	287
county	30	rural	female	8	8510
county	30	rural	male	8	8660
county	30	rural	female	80+	2987
county	30	rural	male	80+	2147
county	30	rural	female	9	7570
county	30	rural	male	9	8229
county	30	rural	female	unspecified	57
county	30	rural	male	unspecified	50
county	30	urban	female	0	1004
county	30	urban	male	0	1055
county	30	urban	female	1	820
county	30	urban	male	1	824
county	30	urban	female	10	861
county	30	urban	male	10	915
county	30	urban	female	11	676
county	30	urban	male	11	614
county	30	urban	female	12	817
county	30	urban	male	12	849
county	30	urban	female	13	811
county	30	urban	male	13	733
county	30	urban	female	14	794
county	30	urban	male	14	613
county	30	urban	female	15	778
county	30	urban	male	15	615
county	30	urban	female	16	764
county	30	urban	male	16	533
county	30	urban	female	17	682
county	30	urban	male	17	618
county	30	urban	female	18	705
county	30	urban	male	18	645
county	30	urban	female	19	596
county	30	urban	male	19	531
county	30	urban	female	2	908
county	30	urban	male	2	880
county	30	urban	female	20	979
county	30	urban	male	20	685
county	30	urban	female	21	616
county	30	urban	male	21	492
county	30	urban	female	22	856
county	30	urban	male	22	646
county	30	urban	female	23	808
county	30	urban	male	23	610
county	30	urban	female	24	817
county	30	urban	male	24	598
county	30	urban	female	25	1023
county	30	urban	male	25	751
county	30	urban	female	26	712
county	30	urban	male	26	615
county	30	urban	female	27	637
county	30	urban	male	27	605
county	30	urban	female	28	716
county	30	urban	male	28	563
county	30	urban	female	29	565
county	30	urban	male	29	468
county	30	urban	female	3	890
county	30	urban	male	3	911
county	30	urban	female	30	846
county	30	urban	male	30	766
county	30	urban	female	31	346
county	30	urban	male	31	378
county	30	urban	female	32	555
county	30	urban	male	32	529
county	30	urban	female	33	312
county	30	urban	male	33	314
county	30	urban	female	34	336
county	30	urban	male	34	336
county	30	urban	female	35	542
county	30	urban	male	35	566
county	30	urban	female	36	326
county	30	urban	male	36	339
county	30	urban	female	37	273
county	30	urban	male	37	299
county	30	urban	female	38	313
county	30	urban	male	38	271
county	30	urban	female	39	249
county	30	urban	male	39	279
county	30	urban	female	4	859
county	30	urban	male	4	879
county	30	urban	female	40	440
county	30	urban	male	40	442
county	30	urban	female	41	154
county	30	urban	male	41	190
county	30	urban	female	42	251
county	30	urban	male	42	221
county	30	urban	female	43	162
county	30	urban	male	43	205
county	30	urban	female	44	137
county	30	urban	male	44	163
county	30	urban	female	45	263
county	30	urban	male	45	301
county	30	urban	female	46	142
county	30	urban	male	46	164
county	30	urban	female	47	164
county	30	urban	male	47	184
county	30	urban	female	48	170
county	30	urban	male	48	201
county	30	urban	female	49	140
county	30	urban	male	49	219
county	30	urban	female	5	843
county	30	urban	male	5	944
county	30	urban	female	50	212
county	30	urban	male	50	232
county	30	urban	female	51	71
county	30	urban	male	51	105
county	30	urban	female	52	93
county	30	urban	male	52	137
county	30	urban	female	53	86
county	30	urban	male	53	102
county	30	urban	female	54	87
county	30	urban	male	54	80
county	30	urban	female	55	114
county	30	urban	male	55	133
county	30	urban	female	56	92
county	30	urban	male	56	91
county	30	urban	female	57	58
county	30	urban	male	57	100
county	30	urban	female	58	49
county	30	urban	male	58	61
county	30	urban	female	59	48
county	30	urban	male	59	66
county	30	urban	female	6	825
county	30	urban	male	6	830
county	30	urban	female	60	135
county	30	urban	male	60	125
county	30	urban	female	61	41
county	30	urban	male	61	62
county	30	urban	female	62	35
county	30	urban	male	62	43
county	30	urban	female	63	32
county	30	urban	male	63	44
county	30	urban	female	64	37
county	30	urban	male	64	43
county	30	urban	female	65	70
county	30	urban	male	65	68
county	30	urban	female	66	24
county	30	urban	male	66	23
county	30	urban	female	67	35
county	30	urban	male	67	39
county	30	urban	female	68	34
county	30	urban	male	68	34
county	30	urban	female	69	32
county	30	urban	male	69	33
county	30	urban	female	7	817
county	30	urban	male	7	803
county	30	urban	female	70	77
county	30	urban	male	70	65
county	30	urban	female	71	20
county	30	urban	male	71	14
county	30	urban	female	72	34
county	30	urban	male	72	25
county	30	urban	female	73	19
county	30	urban	male	73	21
county	30	urban	female	74	17
county	30	urban	male	74	14
county	30	urban	female	75	39
county	30	urban	male	75	26
county	30	urban	female	76	22
county	30	urban	male	76	13
county	30	urban	female	77	12
county	30	urban	male	77	14
county	30	urban	female	78	21
county	30	urban	male	78	7
county	30	urban	female	79	30
county	30	urban	male	79	26
county	30	urban	female	8	792
county	30	urban	male	8	769
county	30	urban	female	80+	228
county	30	urban	male	80+	143
county	30	urban	female	9	789
county	30	urban	male	9	803
county	30	urban	female	unspecified	2
county	30	urban	male	unspecified	11
county	31	rural	female	0	4523
county	31	rural	male	0	4697
county	31	rural	female	1	3872
county	31	rural	male	1	3965
county	31	rural	female	10	4761
county	31	rural	male	10	5123
county	31	rural	female	11	3532
county	31	rural	male	11	3422
county	31	rural	female	12	4409
county	31	rural	male	12	4797
county	31	rural	female	13	3857
county	31	rural	male	13	4071
county	31	rural	female	14	3605
county	31	rural	male	14	3868
county	31	rural	female	15	3425
county	31	rural	male	15	3679
county	31	rural	female	16	2978
county	31	rural	male	16	3329
county	31	rural	female	17	2701
county	31	rural	male	17	3255
county	31	rural	female	18	2773
county	31	rural	male	18	3287
county	31	rural	female	19	2274
county	31	rural	male	19	2559
county	31	rural	female	2	4672
county	31	rural	male	2	4725
county	31	rural	female	20	3168
county	31	rural	male	20	3087
county	31	rural	female	21	2042
county	31	rural	male	21	2043
county	31	rural	female	22	2452
county	31	rural	male	22	2280
county	31	rural	female	23	2234
county	31	rural	male	23	2022
county	31	rural	female	24	2131
county	31	rural	male	24	1937
county	31	rural	female	25	3198
county	31	rural	male	25	2718
county	31	rural	female	26	2052
county	31	rural	male	26	1753
county	31	rural	female	27	1910
county	31	rural	male	27	1935
county	31	rural	female	28	2215
county	31	rural	male	28	1722
county	31	rural	female	29	1628
county	31	rural	male	29	1586
county	31	rural	female	3	4772
county	31	rural	male	3	4853
county	31	rural	female	30	3228
county	31	rural	male	30	2758
county	31	rural	female	31	1352
county	31	rural	male	31	1440
county	31	rural	female	32	1999
county	31	rural	male	32	1778
county	31	rural	female	33	1228
county	31	rural	male	33	1272
county	31	rural	female	34	1397
county	31	rural	male	34	1378
county	31	rural	female	35	2588
county	31	rural	male	35	2492
county	31	rural	female	36	1417
county	31	rural	male	36	1353
county	31	rural	female	37	1336
county	31	rural	male	37	1149
county	31	rural	female	38	1578
county	31	rural	male	38	1337
county	31	rural	female	39	1225
county	31	rural	male	39	1106
county	31	rural	female	4	4777
county	31	rural	male	4	5009
county	31	rural	female	40	2545
county	31	rural	male	40	2302
county	31	rural	female	41	878
county	31	rural	male	41	932
county	31	rural	female	42	1238
county	31	rural	male	42	1094
county	31	rural	female	43	988
county	31	rural	male	43	882
county	31	rural	female	44	873
county	31	rural	male	44	765
county	31	rural	female	45	2002
county	31	rural	male	45	1724
county	31	rural	female	46	1059
county	31	rural	male	46	1025
county	31	rural	female	47	920
county	31	rural	male	47	861
county	31	rural	female	48	1080
county	31	rural	male	48	874
county	31	rural	female	49	932
county	31	rural	male	49	866
county	31	rural	female	5	4753
county	31	rural	male	5	4945
county	31	rural	female	50	1855
county	31	rural	male	50	1433
county	31	rural	female	51	628
county	31	rural	male	51	584
county	31	rural	female	52	784
county	31	rural	male	52	768
county	31	rural	female	53	494
county	31	rural	male	53	487
county	31	rural	female	54	571
county	31	rural	male	54	525
county	31	rural	female	55	1006
county	31	rural	male	55	865
county	31	rural	female	56	693
county	31	rural	male	56	626
county	31	rural	female	57	763
county	31	rural	male	57	725
county	31	rural	female	58	527
county	31	rural	male	58	488
county	31	rural	female	59	535
county	31	rural	male	59	525
county	31	rural	female	6	4457
county	31	rural	male	6	4689
county	31	rural	female	60	1396
county	31	rural	male	60	1237
county	31	rural	female	61	520
county	31	rural	male	61	493
county	31	rural	female	62	465
county	31	rural	male	62	535
county	31	rural	female	63	409
county	31	rural	male	63	454
county	31	rural	female	64	437
county	31	rural	male	64	428
county	31	rural	female	65	757
county	31	rural	male	65	658
county	31	rural	female	66	603
county	31	rural	male	66	392
county	31	rural	female	67	369
county	31	rural	male	67	425
county	31	rural	female	68	279
county	31	rural	male	68	305
county	31	rural	female	69	353
county	31	rural	male	69	371
county	31	rural	female	7	4412
county	31	rural	male	7	4669
county	31	rural	female	70	815
county	31	rural	male	70	714
county	31	rural	female	71	217
county	31	rural	male	71	230
county	16	rural	female	0	6901
county	16	rural	male	0	6981
county	16	rural	female	1	6916
county	16	rural	male	1	7017
county	16	rural	female	10	7726
county	16	rural	male	10	8325
county	16	rural	female	11	6571
county	16	rural	male	11	6676
county	16	rural	female	12	7543
county	16	rural	male	12	8001
county	16	rural	female	13	8031
county	16	rural	male	13	8317
county	16	rural	female	14	7053
county	16	rural	male	14	7634
county	16	rural	female	15	6902
county	16	rural	male	15	7455
county	16	rural	female	16	6216
county	16	rural	male	16	6648
county	16	rural	female	17	6150
county	16	rural	male	17	7196
county	16	rural	female	18	5416
county	31	rural	female	72	222
county	31	rural	male	72	253
county	31	rural	female	73	217
county	31	rural	male	73	246
county	31	rural	female	74	242
county	31	rural	male	74	237
county	31	rural	female	75	349
county	31	rural	male	75	340
county	31	rural	female	76	197
county	31	rural	male	76	162
county	31	rural	female	77	118
county	31	rural	male	77	151
county	31	rural	female	78	158
county	31	rural	male	78	155
county	31	rural	female	79	212
county	31	rural	male	79	186
county	31	rural	female	8	4423
county	31	rural	male	8	4491
county	31	rural	female	80+	2267
county	31	rural	male	80+	1686
county	31	rural	female	9	4418
county	31	rural	male	9	4592
county	31	rural	female	unspecified	83
county	31	rural	male	unspecified	102
county	31	urban	female	0	1466
county	31	urban	male	0	1480
county	31	urban	female	1	1121
county	31	urban	male	1	1123
county	31	urban	female	10	1248
county	31	urban	male	10	1179
county	31	urban	female	11	984
county	31	urban	male	11	905
county	31	urban	female	12	1130
county	31	urban	male	12	1199
county	31	urban	female	13	1170
county	31	urban	male	13	1106
county	31	urban	female	14	1000
county	31	urban	male	14	936
county	31	urban	female	15	983
county	31	urban	male	15	855
county	31	urban	female	16	1048
county	31	urban	male	16	872
county	31	urban	female	17	1048
county	31	urban	male	17	987
county	31	urban	female	18	1114
county	31	urban	male	18	916
county	31	urban	female	19	977
county	31	urban	male	19	837
county	31	urban	female	2	1271
county	31	urban	male	2	1230
county	31	urban	female	20	1409
county	31	urban	male	20	1021
county	31	urban	female	21	1064
county	31	urban	male	21	905
county	31	urban	female	22	1323
county	31	urban	male	22	1118
county	31	urban	female	23	1323
county	31	urban	male	23	1095
county	31	urban	female	24	1269
county	31	urban	male	24	1082
county	31	urban	female	25	1538
county	31	urban	male	25	1418
county	31	urban	female	26	1206
county	31	urban	male	26	1090
county	31	urban	female	27	1093
county	31	urban	male	27	1062
county	31	urban	female	28	1204
county	31	urban	male	28	1091
county	31	urban	female	29	941
county	31	urban	male	29	894
county	31	urban	female	3	1238
county	31	urban	male	3	1272
county	31	urban	female	30	1453
county	31	urban	male	30	1480
county	31	urban	female	31	587
county	31	urban	male	31	723
county	31	urban	female	32	930
county	31	urban	male	32	983
county	31	urban	female	33	599
county	31	urban	male	33	612
county	31	urban	female	34	633
county	31	urban	male	34	734
county	31	urban	female	35	1019
county	31	urban	male	35	1144
county	31	urban	female	36	597
county	31	urban	male	36	623
county	31	urban	female	37	508
county	31	urban	male	37	563
county	31	urban	female	38	627
county	31	urban	male	38	660
county	31	urban	female	39	480
county	31	urban	male	39	586
county	31	urban	female	4	1233
county	31	urban	male	4	1245
county	31	urban	female	40	915
county	31	urban	male	40	934
county	31	urban	female	41	289
county	31	urban	male	41	432
county	31	urban	female	42	444
county	31	urban	male	42	575
county	31	urban	female	43	353
county	31	urban	male	43	427
county	31	urban	female	44	274
county	31	urban	male	44	354
county	31	urban	female	45	584
county	31	urban	male	45	697
county	31	urban	female	46	329
county	31	urban	male	46	396
county	31	urban	female	47	298
county	31	urban	male	47	429
county	31	urban	female	48	317
county	31	urban	male	48	410
county	31	urban	female	49	255
county	31	urban	male	49	355
county	31	urban	female	5	1262
county	31	urban	male	5	1198
county	31	urban	female	50	429
county	31	urban	male	50	504
county	31	urban	female	51	128
county	31	urban	male	51	192
county	31	urban	female	52	161
county	31	urban	male	52	258
county	31	urban	female	53	116
county	31	urban	male	53	188
county	31	urban	female	54	138
county	31	urban	male	54	174
county	31	urban	female	55	202
county	31	urban	male	55	233
county	31	urban	female	56	112
county	31	urban	male	56	163
county	31	urban	female	57	142
county	31	urban	male	57	159
county	31	urban	female	58	100
county	31	urban	male	58	107
county	31	urban	female	59	92
county	31	urban	male	59	111
county	31	urban	female	6	1118
county	31	urban	male	6	1164
county	31	urban	female	60	223
county	31	urban	male	60	214
county	31	urban	female	61	66
county	31	urban	male	61	87
county	31	urban	female	62	71
county	31	urban	male	62	83
county	31	urban	female	63	57
county	31	urban	male	63	79
county	31	urban	female	64	52
county	31	urban	male	64	69
county	31	urban	female	65	104
county	31	urban	male	65	147
county	31	urban	female	66	65
county	31	urban	male	66	55
county	31	urban	female	67	46
county	31	urban	male	67	60
county	31	urban	female	68	35
county	31	urban	male	68	40
county	31	urban	female	69	51
county	31	urban	male	69	50
county	31	urban	female	7	1114
county	31	urban	male	7	1131
county	31	urban	female	70	120
county	31	urban	male	70	119
county	31	urban	female	71	33
county	31	urban	male	71	25
county	31	urban	female	72	22
county	31	urban	male	72	38
county	31	urban	female	73	25
county	31	urban	male	73	35
county	31	urban	female	74	22
county	31	urban	male	74	33
county	31	urban	female	75	42
county	31	urban	male	75	45
county	31	urban	female	76	33
county	31	urban	male	76	27
county	31	urban	female	77	22
county	31	urban	male	77	22
county	31	urban	female	78	21
county	31	urban	male	78	28
county	31	urban	female	79	24
county	31	urban	male	79	25
county	31	urban	female	8	1087
county	31	urban	male	8	1070
county	31	urban	female	80+	340
county	31	urban	male	80+	237
county	31	urban	female	9	1176
county	31	urban	male	9	1119
county	31	urban	female	unspecified	31
county	31	urban	male	unspecified	19
county	32	rural	female	0	13739
county	32	rural	male	0	14623
county	32	rural	female	1	11773
county	32	rural	male	1	12456
county	32	rural	female	10	13615
county	32	rural	male	10	14153
county	32	rural	female	11	10455
county	32	rural	male	11	10715
county	32	rural	female	12	12720
county	32	rural	male	12	13482
county	32	rural	female	13	11724
county	32	rural	male	13	12097
county	32	rural	female	14	10359
county	32	rural	male	14	11025
county	32	rural	female	15	9737
county	32	rural	male	15	10629
county	32	rural	female	16	9005
county	32	rural	male	16	9874
county	32	rural	female	17	8648
county	32	rural	male	17	9990
county	32	rural	female	18	8221
county	32	rural	male	18	9443
county	32	rural	female	19	6882
county	32	rural	male	19	7999
county	32	rural	female	2	14032
county	32	rural	male	2	14421
county	32	rural	female	20	9525
county	32	rural	male	20	8930
county	32	rural	female	21	6538
county	32	rural	male	21	6395
county	32	rural	female	22	7970
county	32	rural	male	22	7208
county	32	rural	female	23	7137
county	32	rural	male	23	6561
county	32	rural	female	24	6826
county	32	rural	male	24	6222
county	32	rural	female	25	8902
county	32	rural	male	25	8015
county	32	rural	female	26	6104
county	32	rural	male	26	5609
county	32	rural	female	27	5947
county	32	rural	male	27	5977
county	32	rural	female	28	6106
county	32	rural	male	28	5094
county	32	rural	female	29	5091
county	32	rural	male	29	4761
county	32	rural	female	3	14058
county	32	rural	male	3	14748
county	32	rural	female	30	8474
county	32	rural	male	30	7613
county	32	rural	female	31	4167
county	32	rural	male	31	4561
county	32	rural	female	32	5534
county	32	rural	male	32	5356
county	32	rural	female	33	3602
county	32	rural	male	33	3578
county	32	rural	female	34	4101
county	32	rural	male	34	3935
county	32	rural	female	35	7106
county	32	rural	male	35	7007
county	32	rural	female	36	3762
county	32	rural	male	36	3689
county	32	rural	female	37	3775
county	32	rural	male	37	3768
county	32	rural	female	38	4258
county	32	rural	male	38	3762
county	32	rural	female	39	3452
county	32	rural	male	39	3550
county	32	rural	female	4	14329
county	32	rural	male	4	15050
county	32	rural	female	40	5950
county	32	rural	male	40	5556
county	32	rural	female	41	2667
county	32	rural	male	41	2652
county	32	rural	female	42	2980
county	32	rural	male	42	3092
county	32	rural	female	43	2412
county	32	rural	male	43	2229
county	32	rural	female	44	2267
county	32	rural	male	44	2120
county	32	rural	female	45	4563
county	32	rural	male	45	4119
county	32	rural	female	46	2734
county	32	rural	male	46	2596
county	32	rural	female	47	2466
county	17	rural	female	0	10679
county	17	rural	male	0	10935
county	17	rural	female	1	10552
county	17	rural	male	1	10815
county	17	rural	female	10	11988
county	17	rural	male	10	12439
county	17	rural	female	11	10489
county	17	rural	male	11	10278
county	17	rural	female	12	11499
county	17	rural	male	12	12157
county	17	rural	female	13	11933
county	17	rural	male	13	12124
county	17	rural	female	14	10395
county	17	rural	male	14	11337
county	17	rural	female	15	10567
county	17	rural	male	15	11123
county	17	rural	female	16	9830
county	17	rural	male	16	10132
county	17	rural	female	17	9198
county	17	rural	male	17	10535
county	17	rural	female	18	7732
county	17	rural	male	18	9579
county	17	rural	female	19	7157
county	17	rural	male	19	8929
county	17	rural	female	2	11762
county	17	rural	male	2	11925
county	17	rural	female	20	6994
county	17	rural	male	20	7924
county	17	rural	female	21	5215
county	17	rural	male	21	5732
county	17	rural	female	22	5508
county	17	rural	male	22	5508
county	17	rural	female	23	5682
county	17	rural	male	23	4738
county	17	rural	female	24	4918
county	17	rural	male	24	4047
county	32	rural	male	47	2241
county	32	rural	female	48	3242
county	32	rural	male	48	2823
county	32	rural	female	49	2332
county	32	rural	male	49	2286
county	32	rural	female	5	14150
county	32	rural	male	5	15347
county	32	rural	female	50	4193
county	32	rural	male	50	3454
county	32	rural	female	51	1768
county	32	rural	male	51	1737
county	32	rural	female	52	1939
county	32	rural	male	52	1940
county	32	rural	female	53	1453
county	32	rural	male	53	1414
county	32	rural	female	54	1537
county	32	rural	male	54	1473
county	32	rural	female	55	2486
county	32	rural	male	55	2264
county	32	rural	female	56	1585
county	32	rural	male	56	1700
county	32	rural	female	57	2051
county	32	rural	male	57	2034
county	32	rural	female	58	1212
county	32	rural	male	58	1150
county	32	rural	female	59	1497
county	32	rural	male	59	1465
county	32	rural	female	6	13932
county	32	rural	male	6	14212
county	32	rural	female	60	2995
county	32	rural	male	60	2630
county	32	rural	female	61	1285
county	32	rural	male	61	1319
county	32	rural	female	62	1093
county	32	rural	male	62	1282
county	32	rural	female	63	1027
county	32	rural	male	63	1080
county	32	rural	female	64	1093
county	32	rural	male	64	1016
county	32	rural	female	65	1737
county	32	rural	male	65	1582
county	32	rural	female	66	1428
county	32	rural	male	66	998
county	32	rural	female	67	925
county	32	rural	male	67	1037
county	32	rural	female	68	793
county	32	rural	male	68	718
county	32	rural	female	69	1034
county	32	rural	male	69	825
county	32	rural	female	7	13358
county	32	rural	male	7	14150
county	32	rural	female	70	1891
county	32	rural	male	70	1586
county	32	rural	female	71	607
county	32	rural	male	71	580
county	32	rural	female	72	566
county	32	rural	male	72	711
county	32	rural	female	73	565
county	32	rural	male	73	595
county	32	rural	female	74	700
county	32	rural	male	74	668
county	32	rural	female	75	811
county	32	rural	male	75	713
county	32	rural	female	76	533
county	32	rural	male	76	485
county	32	rural	female	77	448
county	32	rural	male	77	456
county	32	rural	female	78	462
county	32	rural	male	78	418
county	32	rural	female	79	692
county	32	rural	male	79	488
county	32	rural	female	8	12961
county	32	rural	male	8	13067
county	32	rural	female	80+	5606
county	32	rural	male	80+	4371
county	32	rural	female	9	13348
county	32	rural	male	9	13958
county	32	rural	female	unspecified	148
county	32	rural	male	unspecified	171
county	32	urban	female	0	11597
county	32	urban	male	0	11654
county	32	urban	female	1	9438
county	32	urban	male	1	9668
county	32	urban	female	10	8784
county	32	urban	male	10	8877
county	32	urban	female	11	7304
county	32	urban	male	11	6822
county	32	urban	female	12	8663
county	32	urban	male	12	8471
county	32	urban	female	13	8068
county	32	urban	male	13	8100
county	32	urban	female	14	7189
county	32	urban	male	14	7106
county	32	urban	female	15	6829
county	32	urban	male	15	6315
county	32	urban	female	16	6990
county	32	urban	male	16	6256
county	32	urban	female	17	7428
county	32	urban	male	17	6924
county	32	urban	female	18	7797
county	32	urban	male	18	7180
county	32	urban	female	19	7551
county	32	urban	male	19	6961
county	32	urban	female	2	10366
county	32	urban	male	2	10186
county	32	urban	female	20	11293
county	32	urban	male	20	9208
county	32	urban	female	21	8664
county	32	urban	male	21	8394
county	32	urban	female	22	10853
county	32	urban	male	22	9642
county	32	urban	female	23	10390
county	32	urban	male	23	8910
county	32	urban	female	24	10071
county	32	urban	male	24	8656
county	32	urban	female	25	11604
county	32	urban	male	25	10280
county	32	urban	female	26	8838
county	32	urban	male	26	8130
county	32	urban	female	27	8102
county	32	urban	male	27	8601
county	32	urban	female	28	8786
county	32	urban	male	28	8246
county	32	urban	female	29	6493
county	32	urban	male	29	6801
county	32	urban	female	3	10312
county	32	urban	male	3	10326
county	32	urban	female	30	10023
county	32	urban	male	30	10669
county	32	urban	female	31	4273
county	32	urban	male	31	5589
county	32	urban	female	32	6873
county	32	urban	male	32	7442
county	32	urban	female	33	3956
county	32	urban	male	33	4448
county	32	urban	female	34	4355
county	32	urban	male	34	5236
county	32	urban	female	35	6947
county	32	urban	male	35	8029
county	32	urban	female	36	3950
county	32	urban	male	36	4477
county	32	urban	female	37	3568
county	32	urban	male	37	4322
county	32	urban	female	38	4408
county	32	urban	male	38	4655
county	32	urban	female	39	3219
county	32	urban	male	39	3831
county	32	urban	female	4	9837
county	32	urban	male	4	10299
county	32	urban	female	40	5359
county	32	urban	male	40	6205
county	32	urban	female	41	2019
county	32	urban	male	41	2624
county	32	urban	female	42	2863
county	32	urban	male	42	3542
county	32	urban	female	43	2246
county	32	urban	male	43	2469
county	32	urban	female	44	1667
county	32	urban	male	44	2051
county	32	urban	female	45	3379
county	32	urban	male	45	4172
county	32	urban	female	46	2062
county	32	urban	male	46	2501
county	32	urban	female	47	1891
county	32	urban	male	47	2371
county	32	urban	female	48	1843
county	32	urban	male	48	2309
county	32	urban	female	49	1655
county	32	urban	male	49	2233
county	32	urban	female	5	9493
county	32	urban	male	5	9951
county	32	urban	female	50	2594
county	32	urban	male	50	2981
county	32	urban	female	51	988
county	32	urban	male	51	1349
county	32	urban	female	52	1219
county	32	urban	male	52	1654
county	32	urban	female	53	874
county	32	urban	male	53	1136
county	32	urban	female	54	876
county	32	urban	male	54	1159
county	32	urban	female	55	1290
county	32	urban	male	55	1585
county	32	urban	female	56	851
county	32	urban	male	56	1100
county	32	urban	female	57	847
county	32	urban	male	57	1074
county	32	urban	female	58	630
county	32	urban	male	58	789
county	32	urban	female	59	668
county	32	urban	male	59	777
county	32	urban	female	6	9187
county	32	urban	male	6	8988
county	32	urban	female	60	1397
county	32	urban	male	60	1324
county	32	urban	female	61	507
county	32	urban	male	61	622
county	32	urban	female	62	455
county	32	urban	male	62	628
county	32	urban	female	63	408
county	32	urban	male	63	502
county	32	urban	female	64	468
county	32	urban	male	64	468
county	32	urban	female	65	709
county	32	urban	male	65	679
county	32	urban	female	66	525
county	32	urban	male	66	358
county	32	urban	female	67	359
county	32	urban	male	67	390
county	32	urban	female	68	306
county	32	urban	male	68	288
county	32	urban	female	69	326
county	32	urban	male	69	327
county	32	urban	female	7	8698
county	32	urban	male	7	8919
county	32	urban	female	70	675
county	32	urban	male	70	586
county	32	urban	female	71	182
county	32	urban	male	71	219
county	32	urban	female	72	217
county	32	urban	male	72	277
county	32	urban	female	73	186
county	32	urban	male	73	222
county	32	urban	female	74	229
county	32	urban	male	74	193
county	32	urban	female	75	321
county	32	urban	male	75	273
county	32	urban	female	76	169
county	32	urban	male	76	158
county	32	urban	female	77	127
county	32	urban	male	77	135
county	32	urban	female	78	140
county	32	urban	male	78	153
county	33	rural	male	2	16842
county	33	rural	female	20	12348
county	33	rural	male	20	9285
county	33	rural	female	21	5827
county	33	rural	male	21	5424
county	33	rural	female	22	8052
county	33	rural	male	22	6768
county	33	rural	female	23	6034
county	33	rural	male	23	5717
county	33	rural	female	24	6387
county	33	rural	male	24	6097
county	33	rural	female	25	9384
county	33	rural	male	25	8511
county	33	rural	female	26	4969
county	33	rural	male	26	5054
county	33	rural	female	27	5097
county	33	rural	male	27	5433
county	33	rural	female	28	5551
county	33	rural	male	28	5142
county	33	rural	female	29	3527
county	33	rural	male	29	3751
county	17	urban	female	59	186
county	17	urban	male	59	187
county	17	urban	female	6	1230
county	17	urban	male	6	1231
county	17	urban	female	60	238
county	17	urban	male	60	308
county	17	urban	female	61	150
county	17	urban	male	61	181
county	17	urban	female	62	88
county	17	urban	male	62	153
county	17	urban	female	63	103
county	17	urban	male	63	114
county	17	urban	female	64	109
county	17	urban	male	64	120
county	17	urban	female	65	129
county	17	urban	male	65	145
county	17	urban	female	66	63
county	17	urban	male	66	57
county	17	urban	female	67	116
county	17	urban	male	67	107
county	17	urban	female	68	79
county	17	urban	male	68	59
county	17	urban	female	69	86
county	17	urban	male	69	76
county	17	urban	female	7	1239
county	17	urban	male	7	1348
county	17	urban	female	70	214
county	17	urban	male	70	132
county	17	urban	female	71	82
county	17	urban	male	71	72
county	17	urban	female	72	70
county	17	urban	male	72	61
county	17	urban	female	73	76
county	17	urban	male	73	65
county	17	urban	female	74	64
county	17	urban	male	74	59
county	17	urban	female	75	93
county	17	urban	male	75	56
county	17	urban	female	76	50
county	17	urban	male	76	37
county	17	urban	female	77	61
county	17	urban	male	77	49
county	17	urban	female	78	59
county	17	urban	male	78	40
county	17	urban	female	79	91
county	17	urban	male	79	47
county	17	urban	female	8	1170
county	17	urban	male	8	1229
county	17	urban	female	80+	936
county	17	urban	male	80+	626
county	17	urban	female	9	1301
county	17	urban	male	9	1368
county	17	urban	female	unspecified	23
county	17	urban	male	unspecified	29
county	33	rural	female	3	15387
county	33	rural	male	3	15779
county	33	rural	female	30	8074
county	33	rural	male	30	7413
county	33	rural	female	31	3004
county	33	rural	male	31	3437
county	33	rural	female	32	4401
county	33	rural	male	32	4381
county	33	rural	female	33	2683
county	33	rural	male	33	2882
county	33	rural	female	34	2760
county	33	rural	male	34	3054
county	33	rural	female	35	6243
county	33	rural	male	35	6322
county	33	rural	female	36	3003
county	33	rural	male	36	3085
county	33	rural	female	37	2972
county	33	rural	male	37	3014
county	33	rural	female	38	3125
county	33	rural	male	38	2904
county	33	rural	female	39	2276
county	33	rural	male	39	2322
county	33	rural	female	4	15871
county	33	rural	male	4	16309
county	33	rural	female	40	5671
county	33	rural	male	40	5167
county	33	rural	female	41	1566
county	33	rural	male	41	1787
county	33	rural	female	42	2180
county	33	rural	male	42	2381
county	33	rural	female	43	1391
county	33	rural	male	43	1491
county	33	rural	female	44	1307
county	33	rural	male	44	1339
county	33	rural	female	45	3364
county	33	rural	male	45	3313
county	33	rural	female	46	1757
county	33	rural	male	46	1711
county	33	rural	female	47	1533
county	33	rural	male	47	1575
county	33	rural	female	48	2527
county	33	rural	male	48	2262
county	33	rural	female	49	1355
county	33	rural	male	49	1449
county	33	rural	female	5	15021
county	33	rural	male	5	15477
county	33	rural	female	50	3223
county	33	rural	male	50	2973
county	33	rural	female	51	909
county	33	rural	male	51	1020
county	33	rural	female	52	1142
county	33	rural	male	52	1380
county	33	rural	female	53	737
county	33	rural	male	53	889
county	33	rural	female	54	907
county	33	rural	male	54	1001
county	33	rural	female	55	1547
county	33	rural	male	55	1679
county	33	rural	female	56	814
county	33	rural	male	56	1004
county	33	rural	female	57	888
county	33	rural	male	57	1217
county	33	rural	female	58	677
county	33	rural	male	58	734
county	33	rural	female	59	655
county	33	rural	male	59	720
county	33	rural	female	6	14737
county	33	rural	male	6	15373
county	33	rural	female	60	2242
county	33	rural	male	60	1973
county	33	rural	female	61	510
county	33	rural	male	61	699
county	33	rural	female	62	579
county	33	rural	male	62	639
county	33	rural	female	63	456
county	33	rural	male	63	558
county	33	rural	female	64	582
county	33	rural	male	64	641
county	33	rural	female	65	1097
county	33	rural	male	65	1075
county	33	rural	female	66	370
county	33	rural	male	66	416
county	33	rural	female	67	366
county	33	rural	male	67	489
county	33	rural	female	68	469
county	33	rural	male	68	489
county	33	rural	female	69	477
county	33	rural	male	69	421
county	33	rural	female	7	12611
county	33	rural	male	7	13162
county	33	rural	female	70	1556
county	33	rural	male	70	1298
county	33	rural	female	71	195
county	33	rural	male	71	254
county	33	rural	female	72	338
county	33	rural	male	72	382
county	33	rural	female	73	220
county	33	rural	male	73	267
county	33	rural	female	74	276
county	33	rural	male	74	318
county	33	rural	female	75	523
county	33	rural	male	75	511
county	33	rural	female	76	187
county	33	rural	male	76	233
county	33	rural	female	77	166
county	33	rural	male	77	184
county	33	rural	female	78	232
county	33	rural	male	78	254
county	33	rural	female	79	309
county	33	rural	male	79	269
county	33	rural	female	8	13574
county	33	rural	male	8	14203
county	33	rural	female	80+	3640
county	33	rural	male	80+	2853
county	33	rural	female	9	11539
county	33	rural	male	9	12302
county	33	rural	female	unspecified	213
county	33	rural	male	unspecified	357
county	33	urban	female	0	973
county	33	urban	male	0	1058
county	33	urban	female	1	828
county	33	urban	male	1	876
county	33	urban	female	10	672
county	33	urban	male	10	643
county	33	urban	female	11	532
county	33	urban	male	11	447
county	33	urban	female	12	680
county	33	urban	male	12	584
county	33	urban	female	13	693
county	33	urban	male	13	533
county	33	urban	female	14	650
county	33	urban	male	14	467
county	33	urban	female	15	636
county	33	urban	male	15	472
county	33	urban	female	16	521
county	33	urban	male	16	457
county	33	urban	female	17	569
county	33	urban	male	17	555
county	33	urban	female	18	638
county	33	urban	male	18	564
county	33	urban	female	19	571
county	33	urban	male	19	503
county	33	urban	female	2	853
county	33	urban	male	2	897
county	33	urban	female	20	985
county	33	urban	male	20	686
county	33	urban	female	21	725
county	33	urban	male	21	541
county	33	urban	female	22	913
county	33	urban	male	22	704
county	33	urban	female	23	863
county	33	urban	male	23	719
county	33	urban	female	24	815
county	33	urban	male	24	741
county	33	urban	female	25	1005
county	33	urban	male	25	994
county	33	urban	female	26	681
county	33	urban	male	26	707
county	33	urban	female	27	626
county	33	urban	male	27	779
county	33	urban	female	28	715
county	33	urban	male	28	748
county	33	urban	female	29	481
county	33	urban	male	29	581
county	33	urban	female	3	933
county	33	urban	male	3	873
county	33	urban	female	30	842
county	33	urban	male	30	1003
county	33	urban	female	31	299
county	33	urban	male	31	455
county	33	urban	female	32	490
county	33	urban	male	32	695
county	33	urban	female	33	270
county	33	urban	male	33	348
county	33	urban	female	34	298
county	33	urban	male	34	428
county	33	urban	female	35	564
county	33	urban	male	35	778
county	33	urban	female	36	241
county	33	urban	male	36	374
county	33	urban	female	37	253
county	33	urban	male	37	358
county	33	urban	female	38	331
county	33	urban	male	38	412
county	33	urban	female	39	226
county	33	urban	male	39	297
county	33	urban	female	4	820
county	33	urban	male	4	796
county	33	urban	female	40	396
county	33	urban	male	40	608
county	33	urban	female	41	104
county	33	urban	male	41	218
county	33	urban	female	42	221
county	33	urban	male	42	314
county	33	urban	female	43	138
county	33	urban	male	43	191
county	33	urban	female	44	109
county	33	urban	male	44	164
county	33	urban	female	45	248
county	33	urban	male	45	354
county	33	urban	female	46	120
county	33	urban	male	46	194
county	33	urban	female	47	118
county	33	urban	male	47	196
county	33	urban	female	48	135
county	33	urban	male	48	193
county	33	urban	female	49	106
county	33	urban	male	49	161
county	33	urban	female	5	756
county	33	urban	male	5	794
county	33	urban	female	50	172
county	33	urban	male	50	256
county	33	urban	female	51	52
county	33	urban	male	51	88
county	33	urban	female	52	61
county	33	urban	male	52	135
county	33	urban	female	53	44
county	33	urban	male	53	83
county	33	urban	female	54	48
county	33	urban	male	54	95
county	33	urban	female	55	93
county	33	urban	male	55	121
county	33	urban	female	56	48
county	33	urban	male	56	72
county	33	urban	female	57	48
county	33	urban	male	57	83
county	33	urban	female	58	44
county	33	urban	male	58	48
county	33	urban	female	59	36
county	33	urban	male	59	51
county	33	urban	female	6	745
county	33	urban	male	6	697
county	33	urban	female	60	86
county	33	urban	male	60	98
county	33	urban	female	61	25
county	33	urban	male	61	31
county	33	urban	female	62	33
county	33	urban	male	62	43
county	33	urban	female	63	24
county	33	urban	male	63	31
county	33	urban	female	64	18
county	33	urban	male	64	33
county	10	rural	female	0	2968
county	10	rural	male	0	3118
county	10	rural	female	1	2746
county	10	rural	male	1	3010
county	10	rural	female	10	4619
county	10	rural	male	10	4917
county	10	rural	female	11	2256
county	10	rural	male	11	2231
county	10	rural	female	12	3697
county	10	rural	male	12	4351
county	10	rural	female	13	2520
county	10	rural	male	13	2932
county	10	rural	female	14	2806
county	10	rural	male	14	3259
county	10	rural	female	15	3148
county	10	rural	male	15	3765
county	10	rural	female	16	2542
county	10	rural	male	16	3062
county	10	rural	female	17	1811
county	10	rural	male	17	2444
county	10	rural	female	18	2866
county	10	rural	male	18	3751
county	10	rural	female	19	1551
county	10	rural	male	19	1899
county	10	rural	female	2	4095
county	10	rural	male	2	4361
county	10	rural	female	20	3371
county	10	rural	male	20	3975
county	10	rural	female	21	1281
county	10	rural	male	21	1452
county	10	rural	female	22	1690
county	10	rural	male	22	1947
county	10	rural	female	23	1279
county	10	rural	male	23	1478
county	10	rural	female	24	1520
county	10	rural	male	24	1625
county	10	rural	female	25	2319
county	10	rural	male	25	2307
county	10	rural	female	26	1317
county	10	rural	male	26	1492
county	10	rural	female	27	1054
county	10	rural	male	27	1229
county	10	rural	female	28	1685
county	10	rural	male	28	1577
county	10	rural	female	29	775
county	10	rural	male	29	854
county	10	rural	female	3	3675
county	10	rural	male	3	3756
county	10	rural	female	30	2933
county	10	rural	male	30	3033
county	10	rural	female	31	652
county	10	rural	male	31	775
county	10	rural	female	32	1020
county	10	rural	male	32	1220
county	10	rural	female	33	641
county	10	rural	male	33	664
county	10	rural	female	34	583
county	10	rural	male	34	686
county	10	rural	female	35	1676
county	10	rural	male	35	1696
county	10	rural	female	36	912
county	10	rural	male	36	815
county	10	rural	female	37	594
county	10	rural	male	37	625
county	10	rural	female	38	926
county	33	urban	female	65	40
county	33	urban	male	65	44
county	33	urban	female	66	22
county	33	urban	male	66	14
county	33	urban	female	67	25
county	33	urban	male	67	35
county	33	urban	female	68	20
county	33	urban	male	68	26
county	33	urban	female	69	14
county	33	urban	male	69	14
county	33	urban	female	7	700
county	33	urban	male	7	673
county	33	urban	female	70	55
county	33	urban	male	70	27
county	33	urban	female	71	9
county	33	urban	male	71	13
county	33	urban	female	72	10
county	33	urban	male	72	9
county	33	urban	female	73	12
county	33	urban	male	73	9
county	33	urban	female	74	8
county	33	urban	male	74	13
county	33	urban	female	75	20
county	33	urban	male	75	15
county	33	urban	female	76	6
county	33	urban	male	76	9
county	33	urban	female	77	7
county	33	urban	male	77	8
county	33	urban	female	78	11
county	33	urban	male	78	3
county	33	urban	female	79	9
county	33	urban	male	79	12
county	33	urban	female	8	657
county	33	urban	male	8	650
county	33	urban	female	80+	138
county	33	urban	male	80+	90
county	33	urban	female	9	694
county	33	urban	male	9	670
county	33	urban	female	unspecified	27
county	33	urban	male	unspecified	31
county	34	rural	female	0	7327
county	34	rural	male	0	7697
county	34	rural	female	1	6078
county	34	rural	male	1	6203
county	34	rural	female	10	7091
county	34	rural	male	10	7280
county	34	rural	female	11	4592
county	34	rural	male	11	4381
county	34	rural	female	12	5762
county	34	rural	male	12	6439
county	34	rural	female	13	4746
county	34	rural	male	13	4913
county	34	rural	female	14	4586
county	34	rural	male	14	5042
county	34	rural	female	15	4482
county	34	rural	male	15	5064
county	34	rural	female	16	4134
county	34	rural	male	16	4400
county	34	rural	female	17	3604
county	34	rural	male	17	4226
county	34	rural	female	18	4452
county	34	rural	male	18	4517
county	34	rural	female	19	3358
county	34	rural	male	19	3345
county	34	rural	female	2	7368
county	34	rural	male	2	7660
county	34	rural	female	20	5712
county	34	rural	male	20	4537
county	34	rural	female	21	3279
county	34	rural	male	21	2676
county	34	rural	female	22	4308
county	34	rural	male	22	3343
county	34	rural	female	23	3451
county	34	rural	male	23	2959
county	34	rural	female	24	3508
county	34	rural	male	24	3179
county	34	rural	female	25	4649
county	34	rural	male	25	4296
county	34	rural	female	26	3003
county	34	rural	male	26	2907
county	34	rural	female	27	2699
county	34	rural	male	27	2909
county	34	rural	female	28	3147
county	34	rural	male	28	3047
county	34	rural	female	29	2111
county	34	rural	male	29	2161
county	34	rural	female	3	7161
county	34	rural	male	3	7536
county	34	rural	female	30	4266
county	34	rural	male	30	3850
county	34	rural	female	31	1652
county	34	rural	male	31	1771
county	34	rural	female	32	2771
county	34	rural	male	32	2457
county	34	rural	female	33	1405
county	34	rural	male	33	1458
county	34	rural	female	34	1538
county	34	rural	male	34	1684
county	34	rural	female	35	3531
county	34	rural	male	35	3406
county	34	rural	female	36	1911
county	34	rural	male	36	1748
county	34	rural	female	37	1631
county	34	rural	male	37	1745
county	34	rural	female	38	1876
county	34	rural	male	38	1868
county	34	rural	female	39	1298
county	34	rural	male	39	1384
county	34	rural	female	4	7238
county	34	rural	male	4	7460
county	34	rural	female	40	3050
county	34	rural	male	40	3067
county	34	rural	female	41	1135
county	34	rural	male	41	1133
county	34	rural	female	42	1464
county	34	rural	male	42	1560
county	34	rural	female	43	880
county	34	rural	male	43	970
county	34	rural	female	44	931
county	34	rural	male	44	903
county	34	rural	female	45	2000
county	34	rural	male	45	1910
county	34	rural	female	46	993
county	34	rural	male	46	1067
county	34	rural	female	47	796
county	34	rural	male	47	864
county	34	rural	female	48	1108
county	34	rural	male	48	999
county	34	rural	female	49	902
county	34	rural	male	49	834
county	34	rural	female	5	7067
county	34	rural	male	5	7362
county	34	rural	female	50	1857
county	34	rural	male	50	1698
county	34	rural	female	51	542
county	34	rural	male	51	576
county	34	rural	female	52	687
county	34	rural	male	52	787
county	34	rural	female	53	521
county	34	rural	male	53	532
county	34	rural	female	54	545
county	34	rural	male	54	653
county	34	rural	female	55	944
county	34	rural	male	55	1050
county	34	rural	female	56	546
county	34	rural	male	56	612
county	34	rural	female	57	449
county	34	rural	male	57	585
county	34	rural	female	58	405
county	34	rural	male	58	490
county	34	rural	female	59	400
county	34	rural	male	59	435
county	34	rural	female	6	6773
county	34	rural	male	6	6944
county	34	rural	female	60	1301
county	34	rural	male	60	1124
county	34	rural	female	61	308
county	34	rural	male	61	334
county	34	rural	female	62	371
county	34	rural	male	62	413
county	34	rural	female	63	235
county	34	rural	male	63	305
county	34	rural	female	64	346
county	34	rural	male	64	356
county	34	rural	female	65	688
county	34	rural	male	65	655
county	34	rural	female	66	218
county	34	rural	male	66	215
county	34	rural	female	67	225
county	34	rural	male	67	259
county	34	rural	female	68	245
county	34	rural	male	68	287
county	34	rural	female	69	279
county	34	rural	male	69	265
county	34	rural	female	7	6377
county	34	rural	male	7	6625
county	34	rural	female	70	909
county	34	rural	male	70	816
county	34	rural	female	71	122
county	34	rural	male	71	132
county	34	rural	female	72	172
county	34	rural	male	72	197
county	34	rural	female	73	134
county	34	rural	male	73	135
county	34	rural	female	74	179
county	34	rural	male	74	153
county	34	rural	female	75	362
county	34	rural	male	75	334
county	34	rural	female	76	130
county	34	rural	male	76	115
county	34	rural	female	77	90
county	34	rural	male	77	90
county	34	rural	female	78	155
county	34	rural	male	78	130
county	34	rural	female	79	147
county	34	rural	male	79	124
county	34	rural	female	8	6414
county	34	rural	male	8	6403
county	34	rural	female	80+	2084
county	34	rural	male	80+	1547
county	34	rural	female	9	5638
county	34	rural	male	9	5818
county	34	rural	female	unspecified	90
county	34	rural	male	unspecified	100
county	34	urban	female	0	4721
county	34	urban	male	0	4763
county	34	urban	female	1	3548
county	34	urban	male	1	3564
county	34	urban	female	10	2764
county	34	urban	male	10	2891
county	34	urban	female	11	2311
county	34	urban	male	11	2231
county	34	urban	female	12	2554
county	34	urban	male	12	2613
county	34	urban	female	13	2600
county	34	urban	male	13	2364
county	34	urban	female	14	2360
county	34	urban	male	14	2006
county	34	urban	female	15	2434
county	34	urban	male	15	2021
county	34	urban	female	16	2528
county	34	urban	male	16	2002
county	34	urban	female	17	2665
county	34	urban	male	17	2189
county	34	urban	female	18	3212
county	34	urban	male	18	2287
county	34	urban	female	19	3245
county	34	urban	male	19	2267
county	34	urban	female	2	3767
county	34	urban	male	2	3866
county	34	urban	female	20	4865
county	34	urban	male	20	3128
county	34	urban	female	21	3782
county	34	urban	male	21	2826
county	34	urban	female	22	4894
county	34	urban	male	22	3577
county	12	rural	female	0	19623
county	12	rural	male	0	19948
county	12	rural	female	1	17680
county	12	rural	male	1	18241
county	12	rural	female	10	19894
county	12	rural	male	10	20459
county	12	rural	female	11	14850
county	12	rural	male	11	14302
county	12	rural	female	12	19081
county	12	rural	male	12	19656
county	12	rural	female	13	17889
county	12	rural	male	13	17928
county	12	rural	female	14	16006
county	12	rural	male	14	16135
county	12	rural	female	15	15534
county	12	rural	male	15	15665
county	12	rural	female	16	14701
county	12	rural	male	16	13693
county	12	rural	female	17	14307
county	12	rural	male	17	14139
county	12	rural	female	18	14751
county	12	rural	male	18	14949
county	12	rural	female	19	11427
county	12	rural	male	19	11437
county	12	rural	female	2	19970
county	12	rural	male	2	20473
county	12	rural	female	20	17313
county	12	rural	male	20	15727
county	12	rural	female	21	10928
county	12	rural	male	21	10281
county	12	rural	female	22	13262
county	12	rural	male	22	11569
county	12	rural	female	23	12833
county	12	rural	male	23	11092
county	12	rural	female	24	11378
county	12	rural	male	24	9888
county	12	rural	female	25	18181
county	12	rural	male	25	16409
county	12	rural	female	26	10828
county	12	rural	male	26	9557
county	12	rural	female	27	11106
county	12	rural	male	27	10750
county	12	rural	female	28	11158
county	12	rural	male	28	9660
county	12	rural	female	29	9365
county	12	rural	male	29	9264
county	12	rural	female	3	20405
county	12	rural	male	3	20335
county	12	rural	female	30	18444
county	12	rural	male	30	17143
county	12	rural	female	31	6868
county	12	rural	male	31	8025
county	12	rural	female	32	8933
county	12	rural	male	32	8952
county	12	rural	female	33	6577
county	12	rural	male	33	6984
county	12	rural	female	34	6904
county	12	rural	male	34	7230
county	12	rural	female	35	13177
county	12	rural	male	35	13191
county	12	rural	female	36	6579
county	12	rural	male	36	6694
county	12	rural	female	37	6319
county	12	rural	male	37	6421
county	12	rural	female	38	7077
county	12	rural	male	38	6299
county	12	rural	female	39	5625
county	12	rural	male	39	5887
county	12	rural	female	4	20264
county	12	rural	male	4	21030
county	34	urban	female	23	4791
county	34	urban	male	23	3711
county	34	urban	female	24	4784
county	34	urban	male	24	3993
county	34	urban	female	25	5418
county	34	urban	male	25	4825
county	34	urban	female	26	4079
county	34	urban	male	26	3886
county	34	urban	female	27	3910
county	34	urban	male	27	4103
county	34	urban	female	28	4119
county	34	urban	male	28	4135
county	34	urban	female	29	3115
county	34	urban	male	29	3453
county	34	urban	female	3	3856
county	34	urban	male	3	3814
county	34	urban	female	30	4421
county	34	urban	male	30	5352
county	34	urban	female	31	1767
county	34	urban	male	31	2464
county	34	urban	female	32	2791
county	34	urban	male	32	3416
county	34	urban	female	33	1694
county	34	urban	male	33	2112
county	34	urban	female	34	1779
county	34	urban	male	34	2345
county	34	urban	female	35	2583
county	34	urban	male	35	3823
county	34	urban	female	36	1601
county	34	urban	male	36	2043
county	34	urban	female	37	1410
county	34	urban	male	37	1863
county	34	urban	female	38	1701
county	34	urban	male	38	2132
county	34	urban	female	39	1210
county	34	urban	male	39	1681
county	34	urban	female	4	3527
county	34	urban	male	4	3609
county	34	urban	female	40	2000
county	34	urban	male	40	2923
county	34	urban	female	41	723
county	34	urban	male	41	1099
county	34	urban	female	42	1017
county	34	urban	male	42	1578
county	34	urban	female	43	764
county	34	urban	male	43	1094
county	34	urban	female	44	607
county	34	urban	male	44	851
county	34	urban	female	45	1103
county	34	urban	male	45	1713
county	34	urban	female	46	668
county	34	urban	male	46	983
county	34	urban	female	47	616
county	34	urban	male	47	836
county	34	urban	female	48	660
county	34	urban	male	48	847
county	34	urban	female	49	556
county	34	urban	male	49	859
county	34	urban	female	5	3338
county	34	urban	male	5	3458
county	34	urban	female	50	908
county	34	urban	male	50	1163
county	34	urban	female	51	354
county	34	urban	male	51	508
county	34	urban	female	52	385
county	34	urban	male	52	645
county	34	urban	female	53	293
county	34	urban	male	53	447
county	34	urban	female	54	290
county	34	urban	male	54	451
county	34	urban	female	55	414
county	34	urban	male	55	611
county	34	urban	female	56	285
county	34	urban	male	56	420
county	34	urban	female	57	246
county	34	urban	male	57	386
county	34	urban	female	58	197
county	34	urban	male	58	275
county	34	urban	female	59	193
county	34	urban	male	59	297
county	34	urban	female	6	3148
county	34	urban	male	6	3085
county	34	urban	female	60	430
county	34	urban	male	60	471
county	34	urban	female	61	127
county	34	urban	male	61	191
county	34	urban	female	62	146
county	34	urban	male	62	209
county	34	urban	female	63	127
county	34	urban	male	63	166
county	34	urban	female	64	117
county	34	urban	male	64	147
county	34	urban	female	65	207
county	34	urban	male	65	233
county	34	urban	female	66	86
county	34	urban	male	66	81
county	34	urban	female	67	109
county	34	urban	male	67	142
county	34	urban	female	68	121
county	34	urban	male	68	90
county	34	urban	female	69	77
county	34	urban	male	69	78
county	34	urban	female	7	2829
county	34	urban	male	7	3056
county	34	urban	female	70	257
county	34	urban	male	70	188
county	34	urban	female	71	58
county	34	urban	male	71	62
county	34	urban	female	72	64
county	34	urban	male	72	81
county	34	urban	female	73	50
county	34	urban	male	73	61
county	34	urban	female	74	58
county	34	urban	male	74	60
county	34	urban	female	75	111
county	34	urban	male	75	83
county	34	urban	female	76	43
county	34	urban	male	76	49
county	34	urban	female	77	32
county	34	urban	male	77	56
county	34	urban	female	78	45
county	34	urban	male	78	46
county	34	urban	female	79	44
county	34	urban	male	79	56
county	34	urban	female	8	2777
county	34	urban	male	8	2766
county	34	urban	female	80+	634
county	34	urban	male	80+	392
county	34	urban	female	9	3041
county	34	urban	male	9	2923
county	34	urban	female	unspecified	66
county	34	urban	male	unspecified	64
county	35	rural	female	0	5917
county	35	rural	male	0	6019
county	35	rural	female	1	5245
county	35	rural	male	1	5592
county	35	rural	female	10	5381
county	35	rural	male	10	5477
county	35	rural	female	11	4209
county	35	rural	male	11	4177
county	35	rural	female	12	4873
county	35	rural	male	12	5014
county	35	rural	female	13	4747
county	35	rural	male	13	4643
county	35	rural	female	14	4252
county	35	rural	male	14	4354
county	35	rural	female	15	4168
county	35	rural	male	15	4223
county	35	rural	female	16	3966
county	35	rural	male	16	4139
county	35	rural	female	17	3929
county	35	rural	male	17	4212
county	35	rural	female	18	3859
county	35	rural	male	18	4016
county	35	rural	female	19	3518
county	35	rural	male	19	3469
county	35	rural	female	2	6174
county	35	rural	male	2	6237
county	35	rural	female	20	4899
county	35	rural	male	20	4121
county	35	rural	female	21	3200
county	35	rural	male	21	3028
county	35	rural	female	22	3952
county	35	rural	male	22	3525
county	35	rural	female	23	3597
county	35	rural	male	23	3231
county	35	rural	female	24	3215
county	35	rural	male	24	3165
county	35	rural	female	25	4061
county	35	rural	male	25	3817
county	35	rural	female	26	2584
county	35	rural	male	26	2625
county	35	rural	female	27	2589
county	35	rural	male	27	2992
county	35	rural	female	28	2279
county	35	rural	male	28	2186
county	35	rural	female	29	2178
county	35	rural	male	29	2465
county	35	rural	female	3	5899
county	35	rural	male	3	6044
county	35	rural	female	30	3350
county	35	rural	male	30	3418
county	35	rural	female	31	2012
county	35	rural	male	31	2473
county	35	rural	female	32	2111
county	35	rural	male	32	2516
county	35	rural	female	33	1701
county	35	rural	male	33	1939
county	35	rural	female	34	1613
county	35	rural	male	34	1933
county	35	rural	female	35	2788
county	35	rural	male	35	3316
county	35	rural	female	36	1526
county	35	rural	male	36	1835
county	35	rural	female	37	1701
county	35	rural	male	37	1957
county	35	rural	female	38	1305
county	35	rural	male	38	1403
county	35	rural	female	39	1378
county	35	rural	male	39	1493
county	35	rural	female	4	5825
county	35	rural	male	4	6143
county	35	rural	female	40	2247
county	35	rural	male	40	2145
county	35	rural	female	41	1179
county	35	rural	male	41	1349
county	35	rural	female	42	961
county	35	rural	male	42	1207
county	35	rural	female	43	767
county	35	rural	male	43	970
county	35	rural	female	44	783
county	35	rural	male	44	861
county	35	rural	female	45	1456
county	35	rural	male	45	1413
county	35	rural	female	46	937
county	35	rural	male	46	999
county	35	rural	female	47	1062
county	35	rural	male	47	1131
county	35	rural	female	48	1622
county	35	rural	male	48	1584
county	35	rural	female	49	840
county	35	rural	male	49	1091
county	35	rural	female	5	5799
county	35	rural	male	5	6231
county	35	rural	female	50	1406
county	35	rural	male	50	1380
county	35	rural	female	51	725
county	35	rural	male	51	823
county	35	rural	female	52	723
county	35	rural	male	52	816
county	35	rural	female	53	572
county	35	rural	male	53	764
county	35	rural	female	54	590
county	35	rural	male	54	598
county	35	rural	female	55	902
county	35	rural	male	55	998
county	35	rural	female	56	466
county	35	rural	male	56	560
county	35	rural	female	57	709
county	35	rural	male	57	833
county	35	rural	female	58	368
county	35	rural	male	58	366
county	35	rural	female	59	536
county	35	rural	male	59	542
county	35	rural	female	6	5437
county	35	rural	male	6	5736
county	35	rural	female	60	926
county	35	rural	male	60	789
county	35	rural	female	61	441
county	35	rural	male	61	667
county	35	rural	female	62	272
county	35	rural	male	62	419
county	35	rural	female	63	288
county	35	rural	male	63	376
county	35	rural	female	64	395
county	35	rural	male	64	331
county	35	rural	female	65	473
county	35	rural	male	65	418
county	35	rural	female	66	213
county	35	rural	male	66	234
county	35	rural	female	67	268
county	35	rural	male	67	381
county	35	rural	female	68	256
county	35	rural	male	68	186
county	35	rural	female	69	386
county	35	rural	male	69	272
county	35	rural	female	7	5236
county	35	rural	male	7	5222
county	35	rural	female	70	732
county	35	rural	male	70	421
county	35	rural	female	71	199
county	35	rural	male	71	161
county	35	rural	female	72	162
county	35	rural	male	72	208
county	35	rural	female	73	185
county	35	rural	male	73	167
county	35	rural	female	74	218
county	35	rural	male	74	203
county	35	rural	female	75	294
county	35	rural	male	75	251
county	35	rural	female	76	145
county	35	rural	male	76	129
county	35	rural	female	77	114
county	35	rural	male	77	173
county	35	rural	female	78	166
county	35	rural	male	78	140
county	35	rural	female	79	303
county	35	rural	male	79	194
county	35	rural	female	8	5294
county	35	rural	male	8	5444
county	35	rural	female	80+	1990
county	35	rural	male	80+	1512
county	35	rural	female	9	5465
county	35	rural	male	9	5713
county	35	rural	female	unspecified	120
county	35	rural	male	unspecified	138
county	35	urban	female	0	3526
county	21	rural	female	0	8611
county	21	rural	male	0	8690
county	21	rural	female	1	8080
county	21	rural	male	1	8409
county	21	rural	female	10	9607
county	21	rural	male	10	10043
county	21	rural	female	11	8451
county	21	rural	male	11	8477
county	21	rural	female	12	9842
county	21	rural	male	12	10049
county	21	rural	female	13	9744
county	21	rural	male	13	9930
county	21	rural	female	14	8584
county	21	rural	male	14	9173
county	21	rural	female	15	7944
county	21	rural	male	15	8324
county	21	rural	female	16	7599
county	21	rural	male	16	8102
county	21	rural	female	17	7561
county	21	rural	male	17	8631
county	21	rural	female	18	6688
county	21	rural	male	18	7944
county	21	rural	female	19	6137
county	21	rural	male	19	7088
county	21	rural	female	2	8787
county	21	rural	male	2	9010
county	21	rural	female	20	6647
county	21	rural	male	20	6924
county	21	rural	female	21	5136
county	21	rural	male	21	5606
county	35	urban	male	0	3735
county	35	urban	female	1	3039
county	35	urban	male	1	3196
county	35	urban	female	10	3219
county	35	urban	male	10	3205
county	35	urban	female	11	2584
county	35	urban	male	11	2521
county	35	urban	female	12	3132
county	35	urban	male	12	3038
county	35	urban	female	13	2787
county	35	urban	male	13	2826
county	35	urban	female	14	2688
county	35	urban	male	14	2526
county	35	urban	female	15	2587
county	35	urban	male	15	2461
county	35	urban	female	16	2475
county	35	urban	male	16	2482
county	35	urban	female	17	2603
county	35	urban	male	17	2743
county	35	urban	female	18	2573
county	35	urban	male	18	2526
county	35	urban	female	19	2455
county	35	urban	male	19	2277
county	35	urban	female	2	3463
county	35	urban	male	2	3590
county	35	urban	female	20	3481
county	35	urban	male	20	2837
county	35	urban	female	21	2493
county	35	urban	male	21	2125
county	35	urban	female	22	3016
county	35	urban	male	22	2610
county	35	urban	female	23	2657
county	35	urban	male	23	2350
county	35	urban	female	24	2552
county	35	urban	male	24	2226
county	35	urban	female	25	3125
county	35	urban	male	25	2849
county	35	urban	female	26	2028
county	35	urban	male	26	2030
county	35	urban	female	27	1998
county	35	urban	male	27	2240
county	35	urban	female	28	1823
county	35	urban	male	28	1799
county	35	urban	female	29	1598
county	35	urban	male	29	1810
county	35	urban	female	3	3433
county	35	urban	male	3	3416
county	35	urban	female	30	2361
county	35	urban	male	30	2667
county	35	urban	female	31	1274
county	35	urban	male	31	1670
county	35	urban	female	32	1476
county	35	urban	male	32	1666
county	35	urban	female	33	1102
county	35	urban	male	33	1197
county	35	urban	female	34	1093
county	35	urban	male	34	1229
county	35	urban	female	35	1772
county	35	urban	male	35	2194
county	35	urban	female	36	950
county	35	urban	male	36	1095
county	35	urban	female	37	992
county	35	urban	male	37	1184
county	35	urban	female	38	914
county	35	urban	male	38	933
county	35	urban	female	39	857
county	35	urban	male	39	1001
county	35	urban	female	4	3410
county	35	urban	male	4	3529
county	35	urban	female	40	1393
county	35	urban	male	40	1431
county	35	urban	female	41	633
county	35	urban	male	41	805
county	35	urban	female	42	672
county	35	urban	male	42	810
county	35	urban	female	43	577
county	35	urban	male	43	565
county	35	urban	female	44	514
county	35	urban	male	44	553
county	35	urban	female	45	949
county	35	urban	male	45	1017
county	35	urban	female	46	649
county	35	urban	male	46	658
county	35	urban	female	47	628
county	35	urban	male	47	676
county	35	urban	female	48	911
county	35	urban	male	48	850
county	35	urban	female	49	521
county	35	urban	male	49	693
county	35	urban	female	5	3227
county	35	urban	male	5	3397
county	35	urban	female	50	881
county	35	urban	male	50	903
county	35	urban	female	51	453
county	35	urban	male	51	535
county	35	urban	female	52	387
county	35	urban	male	52	546
county	47	urban	female	0	47181
county	47	urban	male	0	47466
county	47	urban	female	1	37133
county	47	urban	male	1	37608
county	47	urban	female	10	29378
county	47	urban	male	10	28295
county	47	urban	female	11	23129
county	47	urban	male	11	21863
county	47	urban	female	12	26433
county	47	urban	male	12	24975
county	47	urban	female	13	25291
county	47	urban	male	13	23753
county	47	urban	female	14	22783
county	47	urban	male	14	21065
county	47	urban	female	15	24102
county	47	urban	male	15	20274
county	47	urban	female	16	26769
county	47	urban	male	16	20353
county	47	urban	female	17	30129
county	47	urban	male	17	22970
county	32	urban	female	79	181
county	32	urban	male	79	145
county	32	urban	female	8	8494
county	32	urban	male	8	8380
county	32	urban	female	80+	2093
county	32	urban	male	80+	1436
county	32	urban	female	9	8913
county	32	urban	male	9	8837
county	32	urban	female	unspecified	142
county	32	urban	male	unspecified	228
county	33	rural	female	0	17255
county	33	rural	male	0	17866
county	33	rural	female	1	13162
county	33	rural	male	1	13862
county	33	rural	female	10	14316
county	33	rural	male	10	14882
county	33	rural	female	11	8898
county	33	rural	male	11	8379
county	33	rural	female	12	11867
county	33	rural	male	12	13417
county	33	rural	female	13	9288
county	33	rural	male	13	9804
county	33	rural	female	14	9072
county	33	rural	male	14	9961
county	33	rural	female	15	8678
county	33	rural	male	15	9656
county	33	rural	female	16	7943
county	33	rural	male	16	8798
county	33	rural	female	17	6910
county	33	rural	male	17	8017
county	33	rural	female	18	9200
county	33	rural	male	18	9236
county	33	rural	female	19	6661
county	33	rural	male	19	6243
county	33	rural	female	2	16330
county	46	rural	female	0	6758
county	46	rural	male	0	6778
county	46	rural	female	1	6005
county	46	rural	male	1	6073
county	46	rural	female	10	6544
county	46	rural	male	10	6551
county	46	rural	female	11	4051
county	46	rural	male	11	4071
county	46	rural	female	12	6266
county	46	rural	male	12	6444
county	46	rural	female	13	5219
county	46	rural	male	13	5286
county	46	rural	female	14	5227
county	46	rural	male	14	5535
county	46	rural	female	15	4977
county	46	rural	male	15	5018
county	46	rural	female	16	5420
county	46	rural	male	16	5003
county	46	rural	female	17	4852
county	46	rural	male	17	4596
county	46	rural	female	18	5584
county	46	rural	male	18	5676
county	46	rural	female	19	3637
county	46	rural	male	19	3409
county	46	rural	female	2	7218
county	46	rural	male	2	7345
county	46	rural	female	20	6542
county	46	rural	male	20	4725
county	46	rural	female	21	3410
county	46	rural	male	21	2642
county	46	rural	female	22	4710
county	46	rural	male	22	3362
county	46	rural	female	23	3852
county	46	rural	male	23	2736
county	46	rural	female	24	4109
county	46	rural	male	24	2758
county	46	rural	female	25	5616
county	46	rural	male	25	3774
county	46	rural	female	26	3183
county	35	urban	female	53	373
county	35	urban	male	53	462
county	35	urban	female	54	363
county	35	urban	male	54	408
county	35	urban	female	55	582
county	35	urban	male	55	588
county	35	urban	female	56	281
county	35	urban	male	56	394
county	35	urban	female	57	389
county	35	urban	male	57	470
county	35	urban	female	58	223
county	35	urban	male	58	239
county	35	urban	female	59	277
county	35	urban	male	59	351
county	35	urban	female	6	2980
county	35	urban	male	6	3140
county	35	urban	female	60	536
county	35	urban	male	60	552
county	35	urban	female	61	241
county	35	urban	male	61	348
county	35	urban	female	62	171
county	35	urban	male	62	267
county	35	urban	female	63	172
county	35	urban	male	63	218
county	35	urban	female	64	204
county	35	urban	male	64	239
county	35	urban	female	65	287
county	35	urban	male	65	261
county	35	urban	female	66	126
county	35	urban	male	66	124
county	35	urban	female	67	143
county	36	rural	female	15	9336
county	36	rural	male	15	9488
county	36	rural	female	16	8856
county	36	rural	male	16	8954
county	36	rural	female	17	8598
county	36	rural	male	17	9045
county	36	rural	female	18	8404
county	36	rural	male	18	8822
county	36	rural	female	19	7781
county	36	rural	male	19	7486
county	36	rural	female	2	12459
county	36	rural	male	2	13183
county	36	rural	female	20	10231
county	36	rural	male	20	8264
county	36	rural	female	21	7282
county	36	rural	male	21	6304
county	36	rural	female	22	8482
county	36	rural	male	22	6771
county	36	rural	female	23	7613
county	36	rural	male	23	6274
county	36	rural	female	24	7095
county	36	rural	male	24	5972
county	36	rural	female	25	8348
county	36	rural	male	25	7095
county	36	rural	female	26	5356
county	36	rural	male	26	5154
county	36	rural	female	27	5615
county	36	rural	male	27	5759
county	36	rural	female	28	4692
county	36	rural	male	28	4443
county	36	rural	female	29	4511
county	36	rural	male	29	4727
county	36	rural	female	3	12745
county	36	rural	male	3	12883
county	36	rural	female	30	6612
county	36	rural	male	30	6285
county	36	rural	female	31	4195
county	36	rural	male	31	4713
county	36	rural	female	32	4229
county	36	rural	male	32	4329
county	36	rural	female	33	3256
county	36	rural	male	33	3577
county	36	rural	female	34	3442
county	36	rural	male	34	3526
county	36	rural	female	35	5342
county	36	rural	male	35	5956
county	36	rural	female	36	3141
county	36	rural	male	36	3283
county	36	rural	female	37	3644
county	36	rural	male	37	3628
county	36	rural	female	38	2525
county	36	rural	male	38	2433
county	36	rural	female	39	2875
county	36	rural	male	39	2892
county	36	rural	female	4	12788
county	36	rural	male	4	13350
county	36	rural	female	40	4097
county	36	rural	male	40	3745
county	36	rural	female	41	2327
county	36	rural	male	41	2578
county	36	rural	female	42	1859
county	36	rural	male	42	2002
county	36	rural	female	43	1583
county	36	rural	male	43	1613
county	36	rural	female	44	1647
county	36	rural	male	44	1654
county	36	rural	female	45	2644
county	36	rural	male	45	2421
county	36	rural	female	46	1875
county	36	rural	male	46	1748
county	36	rural	female	47	2069
county	36	rural	male	47	1978
county	36	rural	female	48	3541
county	36	rural	male	48	2905
county	36	rural	female	49	1784
county	36	rural	male	49	2038
county	36	rural	female	5	12705
county	36	rural	male	5	13366
county	36	rural	female	50	2731
county	36	rural	male	50	2445
county	36	rural	female	51	1503
county	36	rural	male	51	1737
county	36	rural	female	52	1457
county	36	rural	male	52	1531
county	36	rural	female	53	1280
county	36	rural	male	53	1430
county	36	rural	female	54	1202
county	36	rural	male	54	1101
county	36	rural	female	55	1730
county	36	rural	male	55	1775
county	36	rural	female	56	958
county	36	rural	male	56	1102
county	36	rural	female	57	1484
county	36	rural	male	57	1678
county	36	rural	female	58	817
county	36	rural	male	58	716
county	36	rural	female	59	1118
county	36	rural	male	59	1047
county	36	rural	female	6	12369
county	36	rural	male	6	12635
county	36	rural	female	60	1849
county	36	rural	male	60	1497
county	36	rural	female	61	975
county	36	rural	male	61	1290
county	36	rural	female	62	636
county	36	rural	male	62	764
county	36	rural	female	63	719
county	36	rural	male	63	754
county	36	rural	female	64	915
county	36	rural	male	64	728
county	36	rural	female	65	986
county	36	rural	male	65	799
county	36	rural	female	66	455
county	36	rural	male	66	424
county	36	rural	female	67	707
county	36	rural	male	67	725
county	36	rural	female	68	481
county	36	rural	male	68	429
county	36	rural	female	69	855
county	36	rural	male	69	510
county	36	rural	female	7	11567
county	36	rural	male	7	12060
county	36	rural	female	70	1291
county	36	rural	male	70	904
county	36	rural	female	71	498
county	36	rural	male	71	363
county	36	rural	female	72	400
county	36	rural	male	72	429
county	36	rural	female	73	368
county	36	rural	male	73	395
county	36	rural	female	74	508
county	36	rural	male	74	439
county	36	rural	female	75	634
county	36	rural	male	75	425
county	36	rural	female	76	314
county	36	rural	male	76	326
county	36	rural	female	77	324
county	36	rural	male	77	350
county	36	rural	female	78	377
county	36	rural	male	78	317
county	36	rural	female	79	689
county	36	rural	male	79	385
county	36	rural	female	8	11611
county	36	rural	male	8	11604
county	36	rural	female	80+	4553
county	36	rural	male	80+	3187
county	36	rural	female	9	12143
county	36	rural	male	9	12399
county	36	rural	female	unspecified	157
county	36	rural	male	unspecified	166
county	36	urban	female	0	2123
county	36	urban	male	0	2234
county	36	urban	female	1	1801
county	36	urban	male	1	1975
county	36	urban	female	10	1904
county	36	urban	male	10	1959
county	36	urban	female	11	1542
county	36	urban	male	11	1586
county	36	urban	female	12	1904
county	36	urban	male	12	1924
county	36	urban	female	13	1853
county	36	urban	male	13	1680
county	36	urban	female	14	1743
county	36	urban	male	14	1629
county	36	urban	female	15	1514
county	36	urban	male	15	1525
county	36	urban	female	16	1600
county	36	urban	male	16	1438
county	36	urban	female	17	1567
county	36	urban	male	17	1461
county	36	urban	female	18	1448
county	36	urban	male	18	1408
county	36	urban	female	19	1422
county	36	urban	male	19	1359
county	36	urban	female	2	2021
county	36	urban	male	2	2103
county	36	urban	female	20	2107
county	36	urban	male	20	1519
county	36	urban	female	21	1401
county	36	urban	male	21	1220
county	36	urban	female	22	1642
county	36	urban	male	22	1407
county	36	urban	female	23	1553
county	36	urban	male	23	1283
county	36	urban	female	24	1365
county	36	urban	male	24	1169
county	36	urban	female	25	1653
county	36	urban	male	25	1522
county	36	urban	female	26	1089
county	36	urban	male	26	1067
county	36	urban	female	27	1091
county	36	urban	male	27	1174
county	36	urban	female	28	927
county	36	urban	male	28	907
county	36	urban	female	29	833
county	36	urban	male	29	902
county	36	urban	female	3	1987
county	36	urban	male	3	2156
county	36	urban	female	30	1268
county	36	urban	male	30	1294
county	36	urban	female	31	730
county	36	urban	male	31	857
county	36	urban	female	32	721
county	36	urban	male	32	830
county	36	urban	female	33	625
county	36	urban	male	33	683
county	36	urban	female	34	633
county	36	urban	male	34	660
county	36	urban	female	35	989
county	36	urban	male	35	1136
county	36	urban	female	36	559
county	36	urban	male	36	593
county	36	urban	female	37	610
county	36	urban	male	37	653
county	36	urban	female	38	484
county	36	urban	male	38	470
county	36	urban	female	39	479
county	36	urban	male	39	503
county	36	urban	female	4	2088
county	36	urban	male	4	2038
county	36	urban	female	40	743
county	36	urban	male	40	778
county	36	urban	female	41	444
county	36	urban	male	41	461
county	36	urban	female	42	354
county	36	urban	male	42	403
county	36	urban	female	43	257
county	36	urban	male	43	276
county	36	urban	female	44	328
county	36	urban	male	44	258
county	36	urban	female	45	471
county	36	urban	male	45	454
county	36	urban	female	46	347
county	36	urban	male	46	341
county	36	urban	female	47	393
county	36	urban	male	47	383
county	36	urban	female	48	564
county	36	urban	male	48	470
county	36	urban	female	49	243
county	36	urban	male	49	358
county	36	urban	female	5	2048
county	36	urban	male	5	2058
county	36	urban	female	50	427
county	36	urban	male	50	486
county	36	urban	female	51	244
county	36	urban	male	51	284
county	36	urban	female	52	232
county	36	urban	male	52	270
county	36	urban	female	53	232
county	36	urban	male	53	262
county	36	urban	female	54	192
county	36	urban	male	54	219
county	36	urban	female	55	268
county	36	urban	male	55	344
county	36	urban	female	56	167
county	36	urban	male	56	212
county	36	urban	female	57	271
county	36	urban	male	57	296
county	36	urban	female	58	103
county	36	urban	male	58	121
county	36	urban	female	59	168
county	36	urban	male	59	167
county	36	urban	female	6	1974
county	36	urban	male	6	2039
county	36	urban	female	60	289
county	36	urban	male	60	281
county	36	urban	female	61	157
county	36	urban	male	61	227
county	36	urban	female	62	102
county	36	urban	male	62	119
county	36	urban	female	63	112
county	36	urban	male	63	145
county	36	urban	female	64	134
county	36	urban	male	64	114
county	36	urban	female	65	151
county	36	urban	male	65	132
county	36	urban	female	66	69
county	36	urban	male	66	84
county	36	urban	female	67	80
county	36	urban	male	67	134
county	36	urban	female	68	69
county	36	urban	male	68	55
county	36	urban	female	69	117
county	36	urban	male	69	102
county	36	urban	female	7	1853
county	36	urban	male	7	1951
county	36	urban	female	70	203
county	36	urban	male	70	154
county	36	urban	female	71	75
county	36	urban	male	71	61
county	36	urban	female	72	74
county	36	urban	male	72	57
county	36	urban	female	73	59
county	36	urban	male	73	72
county	36	urban	female	74	95
county	36	urban	male	74	68
county	36	urban	female	75	120
county	36	urban	male	75	70
county	36	urban	female	76	57
county	36	urban	male	76	52
county	36	urban	female	77	55
county	36	urban	male	77	43
county	36	urban	female	78	60
county	36	urban	male	78	53
county	36	urban	female	79	87
county	19	rural	female	0	5475
county	19	rural	male	0	5688
county	19	rural	female	1	5106
county	19	rural	male	1	5355
county	19	rural	female	10	6447
county	19	rural	male	10	6585
county	19	rural	female	11	5487
county	19	rural	male	11	5669
county	19	rural	female	12	6559
county	19	rural	male	12	6744
county	19	rural	female	13	6190
county	19	rural	male	13	6521
county	19	rural	female	14	5719
county	19	rural	male	14	5982
county	19	rural	female	15	5316
county	19	rural	male	15	5659
county	19	rural	female	16	5324
county	19	rural	male	16	5372
county	19	rural	female	17	5195
county	19	rural	male	17	5753
county	19	rural	female	18	4778
county	19	rural	male	18	5465
county	19	rural	female	19	4192
county	19	rural	male	19	5021
county	19	rural	female	2	5515
county	19	rural	male	2	5874
county	19	rural	female	20	4615
county	19	rural	male	20	5311
county	19	rural	female	21	3676
county	19	rural	male	21	4026
county	19	rural	female	22	4098
county	19	rural	male	22	4426
county	19	rural	female	23	3981
county	19	rural	male	23	3998
county	19	rural	female	24	3858
county	19	rural	male	24	3601
county	19	rural	female	25	4869
county	19	rural	male	25	4667
county	19	rural	female	26	3791
county	19	rural	male	26	3340
county	19	rural	female	27	3771
county	19	rural	male	27	3506
county	19	rural	female	28	3909
county	19	rural	male	28	3344
county	19	rural	female	29	3728
county	19	rural	male	29	3265
county	19	rural	female	3	5801
county	19	rural	male	3	6072
county	19	rural	female	30	5561
county	19	rural	male	30	4837
county	19	rural	female	31	2943
county	19	rural	male	31	2958
county	19	rural	female	32	3769
county	19	rural	male	32	3282
county	19	rural	female	33	3129
county	19	rural	male	33	2780
county	19	rural	female	34	3396
county	19	rural	male	34	3002
county	19	rural	female	35	4945
county	19	rural	male	35	4407
county	19	rural	female	36	3218
county	19	rural	male	36	2754
county	19	rural	female	37	2984
county	19	rural	male	37	2706
county	19	rural	female	38	3388
county	19	rural	male	38	2893
county	19	rural	female	39	3059
county	19	rural	male	39	2710
county	19	rural	female	4	5831
county	36	urban	male	79	68
county	36	urban	female	8	1810
county	36	urban	male	8	1858
county	36	urban	female	80+	862
county	36	urban	male	80+	552
county	36	urban	female	9	2034
county	36	urban	male	9	1947
county	36	urban	female	unspecified	53
county	36	urban	male	unspecified	69
county	37	rural	male	1	23708
county	37	rural	female	10	21838
county	37	rural	male	10	21960
county	37	rural	female	11	17911
county	37	rural	male	11	17439
county	37	rural	female	12	20067
county	37	rural	male	12	20613
county	37	rural	female	13	19392
county	37	rural	male	13	19103
county	37	rural	female	14	17173
county	37	rural	male	14	17596
county	37	rural	female	15	17048
county	37	rural	male	15	17584
county	37	rural	female	16	16036
county	37	rural	male	16	15795
county	37	rural	female	17	16228
county	37	rural	male	17	16913
county	37	rural	female	18	14611
county	37	rural	male	18	15521
county	37	rural	female	19	13617
county	37	rural	male	19	13229
county	37	rural	female	2	26424
county	37	rural	male	2	25989
county	37	rural	female	20	16172
county	37	rural	male	20	13559
county	37	rural	female	21	12295
county	37	rural	male	21	10469
county	37	rural	female	22	13803
county	37	rural	male	22	10904
county	37	rural	female	23	12547
county	37	rural	male	23	9970
county	37	rural	female	24	11388
county	37	rural	male	24	9185
county	37	rural	female	25	12819
county	37	rural	male	25	9727
county	37	rural	female	26	9727
county	37	rural	male	26	7745
county	37	rural	female	27	9668
county	37	rural	male	27	8272
county	37	rural	female	28	8568
county	37	rural	male	28	6698
county	37	rural	female	29	8086
county	37	rural	male	29	6979
county	37	rural	female	3	25645
county	37	rural	male	3	25175
county	37	rural	female	30	11539
county	37	rural	male	30	8555
county	37	rural	female	31	7038
county	37	rural	male	31	6262
county	37	rural	female	32	8589
county	37	rural	male	32	6910
county	37	rural	female	33	6901
county	37	rural	male	33	5979
county	37	rural	female	34	6698
county	37	rural	male	34	6003
county	37	rural	female	35	9345
county	37	rural	male	35	7481
county	37	rural	female	36	6168
county	37	rural	male	36	5312
county	37	rural	female	37	5982
county	37	rural	male	37	5414
county	37	rural	female	38	5771
county	37	rural	male	38	4785
county	37	rural	female	39	5373
county	37	rural	male	39	4732
county	37	rural	female	4	24203
county	37	rural	male	4	24301
county	37	rural	female	40	8657
county	37	rural	male	40	6350
county	37	rural	female	41	4848
county	37	rural	male	41	4219
county	37	rural	female	42	5034
county	37	rural	male	42	4084
county	37	rural	female	43	4635
county	37	rural	male	43	3737
county	37	rural	female	44	4092
county	37	rural	male	44	3362
county	37	rural	female	45	6474
county	37	rural	male	45	5170
county	37	rural	female	46	4687
county	37	rural	male	46	4030
county	37	rural	female	47	5154
county	37	rural	male	47	3966
county	37	rural	female	48	3954
county	37	rural	male	48	3393
county	37	rural	female	49	4443
county	37	rural	male	49	3923
county	37	rural	female	5	24755
county	37	rural	male	5	24826
county	37	rural	female	50	5981
county	37	rural	male	50	4356
county	37	rural	female	51	3784
county	37	rural	male	51	3315
county	37	rural	female	52	3689
county	37	rural	male	52	3327
county	37	rural	female	53	3680
county	37	rural	male	53	3082
county	37	rural	female	54	3436
county	37	rural	male	54	2922
county	37	rural	female	55	4096
county	37	rural	male	55	3601
county	37	rural	female	56	3280
county	37	rural	male	56	2913
county	37	rural	female	57	3733
county	37	rural	male	57	3230
county	37	rural	female	58	1918
county	37	rural	male	58	1903
county	37	rural	female	59	2858
county	37	rural	male	59	2589
county	37	rural	female	6	22839
county	37	rural	male	6	22586
county	37	rural	female	60	3784
county	37	rural	male	60	3062
county	37	rural	female	61	2328
county	37	rural	male	61	2192
county	37	rural	female	62	1919
county	37	rural	male	62	2013
county	37	rural	female	63	1924
county	37	rural	male	63	1915
county	37	rural	female	64	2000
county	37	rural	male	64	1746
county	37	rural	female	65	2344
county	37	rural	male	65	1804
county	37	rural	female	66	2553
county	37	rural	male	66	1673
county	37	rural	female	67	1928
county	37	rural	male	67	1706
county	37	rural	female	68	1206
county	37	rural	male	68	1058
county	37	rural	female	69	1662
county	37	rural	male	69	1181
county	37	rural	female	7	22099
county	37	rural	male	7	22012
county	37	rural	female	70	2441
county	37	rural	male	70	1790
county	37	rural	female	71	1268
county	37	rural	male	71	1149
county	37	rural	female	72	1286
county	37	rural	male	72	1241
county	37	rural	female	73	1370
county	37	rural	male	73	1360
county	37	rural	female	74	1039
county	37	rural	male	74	959
county	37	rural	female	75	1364
county	37	rural	male	75	1157
county	37	rural	female	76	1043
county	37	rural	male	76	821
county	37	rural	female	77	1412
county	37	rural	male	77	1111
county	37	rural	female	78	784
county	37	rural	male	78	683
county	37	rural	female	79	1096
county	37	rural	male	79	759
county	37	rural	female	8	21322
county	37	rural	male	8	20881
county	37	rural	female	80+	7060
county	37	rural	male	80+	5677
county	37	rural	female	9	22049
county	37	rural	male	9	21885
county	37	rural	female	unspecified	422
county	37	rural	male	unspecified	452
county	37	urban	female	0	4433
county	37	urban	male	0	4395
county	37	urban	female	1	3855
county	37	urban	male	1	3788
county	37	urban	female	10	3432
county	37	urban	male	10	3449
county	37	urban	female	11	2870
county	37	urban	male	11	2611
county	37	urban	female	12	3375
county	37	urban	male	12	3225
county	37	urban	female	13	3122
county	37	urban	male	13	3156
county	37	urban	female	14	2866
county	37	urban	male	14	2838
county	37	urban	female	15	2895
county	37	urban	male	15	2674
county	37	urban	female	16	2916
county	37	urban	male	16	2619
county	37	urban	female	17	3017
county	37	urban	male	17	3028
county	37	urban	female	18	2895
county	37	urban	male	18	3035
county	37	urban	female	19	2833
county	37	urban	male	19	2562
county	37	urban	female	2	4222
county	37	urban	male	2	4060
county	37	urban	female	20	3645
county	37	urban	male	20	3070
county	37	urban	female	21	2839
county	37	urban	male	21	2317
county	37	urban	female	22	3312
county	37	urban	male	22	2802
county	37	urban	female	23	3155
county	37	urban	male	23	2549
county	37	urban	female	24	2758
county	37	urban	male	24	2383
county	37	urban	female	25	3013
county	37	urban	male	25	2794
county	37	urban	female	26	2282
county	37	urban	male	26	2223
county	37	urban	female	27	2141
county	37	urban	male	27	2345
county	37	urban	female	28	2027
county	37	urban	male	28	2001
county	37	urban	female	29	1697
county	37	urban	male	29	1867
county	37	urban	female	3	4104
county	37	urban	male	3	4093
county	37	urban	female	30	2533
county	37	urban	male	30	2448
county	37	urban	female	31	1373
county	37	urban	male	31	1565
county	37	urban	female	32	1768
county	37	urban	male	32	1903
county	37	urban	female	33	1270
county	37	urban	male	33	1404
county	37	urban	female	34	1324
county	37	urban	male	34	1365
county	37	urban	female	35	1829
county	37	urban	male	35	1908
county	37	urban	female	36	1159
county	37	urban	male	36	1219
county	37	urban	female	37	1048
county	37	urban	male	37	1152
county	37	urban	female	38	1140
county	37	urban	male	38	1160
county	37	urban	female	39	1005
county	37	urban	male	39	1027
county	37	urban	female	4	3884
county	37	urban	male	4	3796
county	37	urban	female	40	1700
county	25	rural	female	0	3685
county	25	rural	male	0	3643
county	25	rural	female	1	2973
county	25	rural	male	1	3012
county	25	rural	female	10	3822
county	25	rural	male	10	4043
county	25	rural	female	11	2017
county	25	rural	male	11	1876
county	25	rural	female	12	2979
county	25	rural	male	12	3532
county	25	rural	female	13	2237
county	25	rural	male	13	2496
county	25	rural	female	14	2028
county	25	rural	male	14	2544
county	25	rural	female	15	2243
county	25	rural	male	15	2783
county	25	rural	female	16	1858
county	25	rural	male	16	2195
county	25	rural	female	17	1512
county	25	rural	male	17	1894
county	25	rural	female	18	2095
county	25	rural	male	18	2586
county	25	rural	female	19	1732
county	25	rural	male	19	1836
county	25	rural	female	2	3782
county	25	rural	male	2	3805
county	25	rural	female	20	2713
county	25	rural	male	20	2599
county	25	rural	female	21	1365
county	25	rural	male	21	1209
county	25	rural	female	22	1613
county	25	rural	male	22	1387
county	25	rural	female	23	1324
county	25	rural	male	23	1161
county	25	rural	female	24	1304
county	25	rural	male	24	1352
county	25	rural	female	25	2303
county	25	rural	male	25	1863
county	25	rural	female	26	1207
county	25	rural	male	26	1036
county	25	rural	female	27	958
county	25	rural	male	27	909
county	25	rural	female	28	1151
county	25	rural	male	28	1051
county	25	rural	female	29	673
county	25	rural	male	29	628
county	25	rural	female	3	3667
county	25	rural	male	3	3753
county	25	rural	female	30	1733
county	25	rural	male	30	1582
county	25	rural	female	31	693
county	25	rural	male	31	615
county	25	rural	female	32	983
county	25	rural	male	32	827
county	25	rural	female	33	682
county	25	rural	male	33	582
county	25	rural	female	34	519
county	25	rural	male	34	540
county	25	rural	female	35	1362
county	25	rural	male	35	1346
county	25	rural	female	36	896
county	25	rural	male	36	674
county	25	rural	female	37	671
county	25	rural	male	37	575
county	25	rural	female	38	752
county	25	rural	male	38	615
county	37	urban	male	40	1644
county	37	urban	female	41	797
county	37	urban	male	41	826
county	37	urban	female	42	928
county	37	urban	male	42	984
county	37	urban	female	43	778
county	37	urban	male	43	818
county	37	urban	female	44	674
county	37	urban	male	44	690
county	37	urban	female	45	1175
county	37	urban	male	45	1148
county	37	urban	female	46	747
county	37	urban	male	46	803
county	37	urban	female	47	836
county	37	urban	male	47	825
county	37	urban	female	48	712
county	37	urban	male	48	720
county	37	urban	female	49	699
county	37	urban	male	49	795
county	37	urban	female	5	3866
county	37	urban	male	5	3803
county	37	urban	female	50	945
county	37	urban	male	50	906
county	37	urban	female	51	544
county	37	urban	male	51	574
county	37	urban	female	52	486
county	37	urban	male	52	589
county	37	urban	female	53	495
county	37	urban	male	53	571
county	37	urban	female	54	451
county	37	urban	male	54	483
county	37	urban	female	55	568
county	37	urban	male	55	572
county	37	urban	female	56	394
county	37	urban	male	56	426
county	37	urban	female	57	455
county	37	urban	male	57	419
county	37	urban	female	58	267
county	37	urban	male	58	255
county	37	urban	female	59	325
county	37	urban	male	59	316
county	37	urban	female	6	3577
county	37	urban	male	6	3391
county	37	urban	female	60	551
county	37	urban	male	60	464
county	37	urban	female	61	257
county	37	urban	male	61	264
county	37	urban	female	62	229
county	37	urban	male	62	246
county	37	urban	female	63	201
county	37	urban	male	63	234
county	37	urban	female	64	197
county	37	urban	male	64	211
county	37	urban	female	65	247
county	37	urban	male	65	224
county	37	urban	female	66	219
county	37	urban	male	66	189
county	37	urban	female	67	197
county	37	urban	male	67	194
county	37	urban	female	68	141
county	37	urban	male	68	114
county	37	urban	female	69	175
county	37	urban	male	69	131
county	37	urban	female	7	3349
county	37	urban	male	7	3397
county	37	urban	female	70	239
county	37	urban	male	70	210
county	37	urban	female	71	123
county	37	urban	male	71	127
county	37	urban	female	72	110
county	37	urban	male	72	112
county	37	urban	female	73	151
county	37	urban	male	73	136
county	37	urban	female	74	116
county	38	rural	female	35	2418
county	38	rural	male	35	1852
county	38	rural	female	36	1664
county	38	rural	male	36	1336
county	38	rural	female	37	1730
county	38	rural	male	37	1286
county	38	rural	female	38	1675
county	38	rural	male	38	1206
county	38	rural	female	39	1516
county	38	rural	male	39	1155
county	38	rural	female	4	5968
county	38	rural	male	4	6162
county	38	rural	female	40	2478
county	38	rural	male	40	1660
county	38	rural	female	41	1307
county	38	rural	male	41	1052
county	38	rural	female	42	1449
county	38	rural	male	42	1177
county	38	rural	female	43	1342
county	38	rural	male	43	946
county	38	rural	female	44	1233
county	38	rural	male	44	1038
county	38	rural	female	45	2001
county	38	rural	male	45	1327
county	38	rural	female	46	1388
county	38	rural	male	46	989
county	38	rural	female	47	1453
county	38	rural	male	47	1084
county	38	rural	female	48	1319
county	38	rural	male	48	955
county	38	rural	female	49	1437
county	38	rural	male	49	1171
county	38	rural	female	5	5881
county	38	rural	male	5	6024
county	38	rural	female	50	2136
county	38	rural	male	50	1296
county	38	rural	female	51	1174
county	38	rural	male	51	959
county	38	rural	female	52	1304
county	38	rural	male	52	996
county	38	rural	female	53	1184
county	38	rural	male	53	1006
county	38	rural	female	54	1205
county	38	rural	male	54	1048
county	38	rural	female	55	1493
county	38	rural	male	55	1237
county	38	rural	female	56	1193
county	38	rural	male	56	1003
county	38	rural	female	57	1334
county	38	rural	male	57	1157
county	38	rural	female	58	848
county	38	rural	male	58	728
county	38	rural	female	59	1021
county	38	rural	male	59	934
county	38	rural	female	6	5789
county	38	rural	male	6	5847
county	38	rural	female	60	1505
county	38	rural	male	60	1231
county	38	rural	female	61	880
county	38	rural	male	61	830
county	38	rural	female	62	830
county	38	rural	male	62	788
county	38	rural	female	63	746
county	38	rural	male	63	718
county	38	rural	female	64	797
county	38	rural	male	64	712
county	38	rural	female	65	929
county	38	rural	male	65	701
county	38	rural	female	66	1037
county	38	rural	male	66	762
county	38	rural	female	67	783
county	38	rural	male	67	705
county	38	rural	female	68	541
county	38	rural	male	68	462
county	38	rural	female	69	709
county	38	rural	male	69	560
county	38	rural	female	7	5613
county	38	rural	male	7	5858
county	38	rural	female	70	1170
county	38	rural	male	70	848
county	38	rural	female	71	615
county	38	rural	male	71	497
county	38	rural	female	72	568
county	38	rural	male	72	565
county	38	rural	female	73	642
county	38	rural	male	73	528
county	38	rural	female	74	523
county	38	rural	male	74	428
county	38	rural	female	75	562
county	38	rural	male	75	517
county	38	rural	female	76	482
county	38	rural	male	76	429
county	38	rural	female	77	497
county	38	rural	male	77	488
county	38	rural	female	78	355
county	38	rural	male	78	392
county	38	rural	female	79	417
county	38	rural	male	79	352
county	38	rural	female	8	5574
county	38	rural	male	8	5350
county	38	rural	female	80+	3141
county	38	rural	male	80+	2344
county	38	rural	female	9	5909
county	38	rural	male	9	5982
county	38	rural	female	unspecified	57
county	38	rural	male	unspecified	76
county	38	urban	female	0	2702
county	38	urban	male	0	2661
county	38	urban	female	1	2403
county	38	urban	male	1	2533
county	38	urban	female	10	2584
county	38	urban	male	10	2554
county	38	urban	female	11	2048
county	38	urban	male	11	1989
county	38	urban	female	12	2482
county	38	urban	male	12	2509
county	38	urban	female	13	2453
county	38	urban	male	13	2372
county	38	urban	female	14	2180
county	38	urban	male	14	2142
county	38	urban	female	15	2184
county	38	urban	male	15	2123
county	38	urban	female	16	2013
county	38	urban	male	16	2004
county	38	urban	female	17	2110
county	38	urban	male	17	2051
county	38	urban	female	18	1841
county	38	urban	male	18	1949
county	38	urban	female	19	1589
county	38	urban	male	19	1605
county	38	urban	female	2	2692
county	38	urban	male	2	2765
county	38	urban	female	20	1763
county	38	urban	male	20	1557
county	38	urban	female	21	1434
county	38	urban	male	21	1177
county	38	urban	female	22	1617
county	38	urban	male	22	1171
county	38	urban	female	23	1486
county	38	urban	male	23	1088
county	38	urban	female	24	1347
county	38	urban	male	24	1031
county	38	urban	female	25	1616
county	38	urban	male	25	1174
county	38	urban	female	26	1296
county	38	urban	male	26	918
county	38	urban	female	27	1232
county	38	urban	male	27	1026
county	38	urban	female	28	1087
county	38	urban	male	28	829
county	38	urban	female	29	1047
county	38	urban	male	29	891
county	38	urban	female	3	2695
county	38	urban	male	3	2712
county	38	urban	female	30	1427
county	38	urban	male	30	1080
county	38	urban	female	31	955
county	38	urban	male	31	798
county	38	urban	female	32	1118
county	38	urban	male	32	866
county	38	urban	female	33	811
county	38	urban	male	33	709
county	38	urban	female	34	859
county	38	urban	male	34	780
county	38	urban	female	35	1224
county	38	urban	male	35	1013
county	38	urban	female	36	814
county	38	urban	male	36	673
county	38	urban	female	37	761
county	38	urban	male	37	718
county	38	urban	female	38	756
county	38	urban	male	38	682
county	38	urban	female	39	661
county	38	urban	male	39	654
county	38	urban	female	4	2507
county	38	urban	male	4	2663
county	38	urban	female	40	1122
county	38	urban	male	40	863
county	38	urban	female	41	676
county	38	urban	male	41	560
county	38	urban	female	42	664
county	38	urban	male	42	570
county	38	urban	female	43	514
county	38	urban	male	43	485
county	38	urban	female	44	537
county	38	urban	male	44	474
county	38	urban	female	45	912
county	38	urban	male	45	669
county	38	urban	female	46	655
county	38	urban	male	46	474
county	38	urban	female	47	584
county	38	urban	male	47	431
county	39	rural	male	21	9220
county	39	rural	female	22	10426
county	39	rural	male	22	9067
county	39	rural	female	23	9411
county	39	rural	male	23	8305
county	39	rural	female	24	8305
county	39	rural	male	24	7316
county	39	rural	female	25	9352
county	39	rural	male	25	8070
county	39	rural	female	26	7256
county	39	rural	male	26	6253
county	39	rural	female	27	7398
county	39	rural	male	27	6610
county	39	rural	female	28	6180
county	39	rural	male	28	5063
county	39	rural	female	29	6244
county	39	rural	male	29	5713
county	39	rural	female	3	20546
county	39	rural	male	3	20460
county	39	rural	female	30	7529
county	39	rural	male	30	6097
county	39	rural	female	31	5775
county	39	rural	male	31	5228
county	39	rural	female	32	6326
county	39	rural	male	32	5496
county	39	rural	female	33	5466
county	39	rural	male	33	4897
county	39	rural	female	34	4918
county	39	rural	male	34	4307
county	39	rural	female	35	6522
county	39	rural	male	35	6023
county	39	rural	female	36	4622
county	39	rural	male	36	4194
county	39	rural	female	37	4581
county	39	rural	male	37	4346
county	39	rural	female	38	3853
county	39	rural	male	38	3431
county	39	rural	female	39	3838
county	39	rural	male	39	3612
county	39	rural	female	4	19159
county	39	rural	male	4	19482
county	39	rural	female	40	5180
county	39	rural	male	40	4338
county	39	rural	female	41	3484
county	39	rural	male	41	3427
county	39	rural	female	42	3565
county	39	rural	male	42	3048
county	39	rural	female	43	3370
county	39	rural	male	43	2841
county	39	rural	female	44	2916
county	39	rural	male	44	2593
county	39	rural	female	45	4303
county	39	rural	male	45	3582
county	39	rural	female	46	3158
county	39	rural	male	46	2832
county	39	rural	female	47	3537
county	39	rural	male	47	3005
county	39	rural	female	48	2720
county	39	rural	male	48	2473
county	39	rural	female	49	3457
county	39	rural	male	49	3344
county	39	rural	female	5	19683
county	39	rural	male	5	19920
county	39	rural	female	50	3170
county	39	rural	male	50	2836
county	39	rural	female	51	2736
county	39	rural	male	51	2409
county	39	rural	female	52	2408
county	39	rural	male	52	2162
county	39	rural	female	53	2616
county	39	rural	male	53	2235
county	39	rural	female	54	2180
county	39	rural	male	54	1989
county	39	rural	female	55	2762
county	39	rural	male	55	2324
county	39	rural	female	56	1965
county	39	rural	male	56	1662
county	39	rural	female	57	2336
county	39	rural	male	57	2049
county	39	rural	female	58	1308
county	39	rural	male	58	1112
county	39	rural	female	59	1778
county	39	rural	male	59	1726
county	39	rural	female	6	18680
county	39	rural	male	6	18476
county	39	rural	female	60	1749
county	39	rural	male	60	1508
county	39	rural	female	61	1768
county	39	rural	male	61	1419
county	39	rural	female	62	1294
county	39	rural	male	62	1119
county	39	rural	female	63	1507
county	39	rural	male	63	1353
county	39	rural	female	64	1254
county	39	rural	male	64	1113
county	39	rural	female	65	1388
county	39	rural	male	65	1236
county	39	rural	female	66	1030
county	39	rural	male	66	862
county	39	rural	female	67	1653
county	39	rural	male	67	1234
county	39	rural	female	68	776
county	39	rural	male	68	757
county	39	rural	female	69	884
county	39	rural	male	69	768
county	39	rural	female	7	17779
county	39	rural	male	7	17654
county	39	rural	female	70	1356
county	39	rural	male	70	1096
county	39	rural	female	71	733
county	39	rural	male	71	684
county	39	rural	female	72	850
county	39	rural	male	72	692
county	39	rural	female	73	1082
county	39	rural	male	73	922
county	39	rural	female	74	568
county	39	rural	male	74	556
county	39	rural	female	75	803
county	39	rural	male	75	777
county	39	rural	female	76	618
county	39	rural	male	76	443
county	39	rural	female	77	920
county	39	rural	male	77	730
county	39	rural	female	78	412
county	39	rural	male	78	422
county	39	rural	female	79	728
county	39	rural	male	79	578
county	39	rural	female	8	17156
county	39	rural	male	8	16722
county	39	rural	female	80+	4535
county	39	rural	male	80+	3681
county	39	rural	female	9	17361
county	39	rural	male	9	17556
county	39	rural	female	unspecified	202
county	39	rural	male	unspecified	232
county	39	urban	female	0	5257
county	39	urban	male	0	5445
county	39	urban	female	1	4671
county	39	urban	male	1	4814
county	39	urban	female	10	4403
county	39	urban	male	10	4464
county	39	urban	female	11	3607
county	39	urban	male	11	3616
county	39	urban	female	12	4282
county	39	urban	male	12	4199
county	39	urban	female	13	3992
county	39	urban	male	13	3880
county	39	urban	female	14	3684
county	39	urban	male	14	3503
county	39	urban	female	15	3679
county	39	urban	male	15	3469
county	39	urban	female	16	3406
county	39	urban	male	16	3208
county	39	urban	female	17	3489
county	39	urban	male	17	3576
county	39	urban	female	18	3339
county	39	urban	male	18	3193
county	39	urban	female	19	3165
county	39	urban	male	19	2906
county	39	urban	female	2	5176
county	39	urban	male	2	5237
county	39	urban	female	20	3779
county	39	urban	male	20	3062
county	39	urban	female	21	3026
county	39	urban	male	21	2556
county	39	urban	female	22	3498
county	39	urban	male	22	2701
county	39	urban	female	23	3241
county	39	urban	male	23	2661
county	39	urban	female	24	2949
county	39	urban	male	24	2405
county	39	urban	female	25	3297
county	39	urban	male	25	2793
county	39	urban	female	26	2578
county	39	urban	male	26	2252
county	39	urban	female	27	2464
county	39	urban	male	27	2254
county	39	urban	female	28	2301
county	39	urban	male	28	2081
county	39	urban	female	29	1973
county	39	urban	male	29	1965
county	39	urban	female	3	5179
county	39	urban	male	3	5040
county	39	urban	female	30	2697
county	39	urban	male	30	2490
county	39	urban	female	31	1649
county	39	urban	male	31	1682
county	39	urban	female	32	2059
county	39	urban	male	32	1976
county	39	urban	female	33	1536
county	39	urban	male	33	1522
county	39	urban	female	34	1477
county	39	urban	male	34	1405
county	39	urban	female	35	2141
county	39	urban	male	35	2126
county	39	urban	female	36	1315
county	39	urban	male	36	1367
county	39	urban	female	37	1313
county	39	urban	male	37	1410
county	39	urban	female	38	1320
county	39	urban	male	38	1195
county	39	urban	female	39	1184
county	39	urban	male	39	1217
county	39	urban	female	4	4868
county	39	urban	male	4	4835
county	39	urban	female	40	1670
county	39	urban	male	40	1555
county	39	urban	female	41	918
county	39	urban	male	41	974
county	39	urban	female	42	1013
county	39	urban	male	42	1021
county	39	urban	female	43	935
county	39	urban	male	43	874
county	39	urban	female	44	829
county	39	urban	male	44	760
county	39	urban	female	45	1230
county	39	urban	male	45	1211
county	39	urban	female	46	938
county	39	urban	male	46	932
county	39	urban	female	47	874
county	39	urban	male	47	894
county	39	urban	female	48	871
county	39	urban	male	48	742
county	39	urban	female	49	860
county	39	urban	male	49	921
county	39	urban	female	5	4963
county	39	urban	male	5	4912
county	39	urban	female	50	931
county	39	urban	male	50	935
county	39	urban	female	51	692
county	39	urban	male	51	639
county	39	urban	female	52	651
county	39	urban	male	52	650
county	39	urban	female	53	640
county	39	urban	male	53	628
county	39	urban	female	54	525
county	39	urban	male	54	548
county	39	urban	female	55	693
county	39	urban	male	55	634
county	39	urban	female	56	495
county	39	urban	male	56	464
county	39	urban	female	57	549
county	39	urban	male	57	515
county	39	urban	female	58	317
county	39	urban	male	58	349
county	39	urban	female	59	450
county	39	urban	male	59	404
county	39	urban	female	6	4663
county	39	urban	male	6	4520
county	39	urban	female	60	465
county	39	urban	male	60	457
county	39	urban	female	61	395
county	39	urban	male	61	377
county	39	urban	female	62	326
county	39	urban	male	62	301
county	39	urban	female	63	308
county	39	urban	male	63	331
county	39	urban	female	64	277
county	39	urban	male	64	284
county	39	urban	female	65	332
county	39	urban	male	65	306
county	39	urban	female	66	228
county	39	urban	male	66	190
county	39	urban	female	67	330
county	39	urban	male	67	247
county	39	urban	female	68	166
county	39	urban	male	68	187
county	39	urban	female	69	218
county	39	urban	male	69	164
county	39	urban	female	7	4426
county	39	urban	male	7	4426
county	39	urban	female	70	315
county	39	urban	male	70	264
county	39	urban	female	71	174
county	39	urban	male	71	151
county	39	urban	female	72	181
county	39	urban	male	72	179
county	39	urban	female	73	228
county	39	urban	male	73	188
county	39	urban	female	74	138
county	39	urban	male	74	119
county	39	urban	female	75	169
county	39	urban	male	75	164
county	39	urban	female	76	152
county	39	urban	male	76	99
county	39	urban	female	77	187
county	39	urban	male	77	166
county	39	urban	female	78	101
county	39	urban	male	78	97
county	39	urban	female	79	177
county	39	urban	male	79	126
county	39	urban	female	8	4299
county	39	urban	male	8	4257
county	39	urban	female	80+	1150
county	39	urban	male	80+	722
county	39	urban	female	9	4443
county	39	urban	male	9	4269
county	39	urban	female	unspecified	58
county	39	urban	male	unspecified	94
county	41	rural	female	0	13165
county	41	rural	male	0	13330
county	41	rural	female	1	11807
county	41	rural	male	1	11883
county	41	rural	female	10	11435
county	41	rural	male	10	11761
county	41	rural	female	11	9296
county	41	rural	male	11	9129
county	41	rural	female	12	10527
county	41	rural	male	12	11469
county	41	rural	female	13	9970
county	41	rural	male	13	10514
county	41	rural	female	14	9194
county	41	rural	male	14	9604
county	41	rural	female	15	9548
county	41	rural	male	15	10152
county	41	rural	female	16	8593
county	41	rural	male	16	8855
county	41	rural	female	17	9078
county	41	rural	male	17	9751
county	41	rural	female	18	7946
county	41	rural	male	18	8722
county	41	rural	female	19	6889
county	41	rural	male	19	6807
county	41	rural	female	2	13076
county	41	rural	male	2	13215
county	6	urban	female	20	934
county	6	urban	male	20	689
county	6	urban	female	21	680
county	6	urban	male	21	622
county	6	urban	female	22	822
county	6	urban	male	22	702
county	6	urban	female	23	824
county	6	urban	male	23	705
county	6	urban	female	24	732
county	6	urban	male	24	690
county	6	urban	female	25	867
county	6	urban	male	25	770
county	6	urban	female	26	651
county	6	urban	male	26	652
county	6	urban	female	27	665
county	6	urban	male	27	703
county	6	urban	female	28	650
county	41	rural	female	20	9352
county	41	rural	male	20	7558
county	41	rural	female	21	6230
county	41	rural	male	21	5279
county	41	rural	female	22	6971
county	41	rural	male	22	5415
county	41	rural	female	23	6859
county	41	rural	male	23	5195
county	41	rural	female	24	6023
county	41	rural	male	24	4868
county	41	rural	female	25	7141
county	41	rural	male	25	5704
county	41	rural	female	26	5141
county	41	rural	male	26	4263
county	41	rural	female	27	5147
county	41	rural	male	27	4666
county	41	rural	female	28	4372
county	41	rural	male	28	3578
county	41	rural	female	29	4020
county	41	rural	male	29	3633
county	41	rural	female	3	12921
county	41	rural	male	3	12929
county	41	rural	female	30	6591
county	41	rural	male	30	5194
county	41	rural	female	31	3068
county	41	rural	male	31	3012
county	41	rural	female	32	3956
county	41	rural	male	32	3470
county	41	rural	female	33	2832
county	41	rural	male	33	2723
county	41	rural	female	34	3118
county	41	rural	male	34	2914
county	41	rural	female	35	4969
county	41	rural	male	35	3942
county	41	rural	female	36	2923
county	41	rural	male	36	2488
county	41	rural	female	37	2715
county	41	rural	male	37	2424
county	41	rural	female	38	2781
county	41	rural	male	38	1951
county	41	rural	female	39	2518
county	41	rural	male	39	1901
county	41	rural	female	4	11914
county	41	rural	male	4	12200
county	41	rural	female	40	5457
county	41	rural	male	40	3279
county	41	rural	female	41	2488
county	41	rural	male	41	1700
county	41	rural	female	42	2485
county	41	rural	male	42	1726
county	41	rural	female	43	2126
county	41	rural	male	43	1435
county	41	rural	female	44	1934
county	41	rural	male	44	1485
county	41	rural	female	45	4003
county	41	rural	male	45	2640
county	41	rural	female	46	2699
county	41	rural	male	46	1771
county	41	rural	female	47	2853
county	41	rural	male	47	1802
county	41	rural	female	48	2213
county	41	rural	male	48	1419
county	41	rural	female	49	2414
county	41	rural	male	49	1538
county	41	rural	female	5	11740
county	41	rural	male	5	12041
county	41	rural	female	50	4589
county	41	rural	male	50	2402
county	41	rural	female	51	2311
county	41	rural	male	51	1501
county	41	rural	female	52	2353
county	41	rural	male	52	1555
county	41	rural	female	53	2181
county	41	rural	male	53	1363
county	41	rural	female	54	2184
county	41	rural	male	54	1414
county	41	rural	female	55	2815
county	41	rural	male	55	1851
county	41	rural	female	56	2580
county	41	rural	male	56	1698
county	41	rural	female	57	2915
county	41	rural	male	57	1825
county	41	rural	female	58	1316
county	41	rural	male	58	1031
county	41	rural	female	59	1932
county	41	rural	male	59	1402
county	41	rural	female	6	10993
county	41	rural	male	6	11310
county	41	rural	female	60	3938
county	41	rural	male	60	2327
county	41	rural	female	61	1976
county	41	rural	male	61	1400
county	41	rural	female	62	1438
county	41	rural	male	62	1249
county	41	rural	female	63	1482
county	41	rural	male	63	1137
county	41	rural	female	64	1721
county	41	rural	male	64	1143
county	41	rural	female	65	1827
county	41	rural	male	65	1231
county	41	rural	female	66	1159
county	41	rural	male	66	805
county	41	rural	female	67	1829
county	41	rural	male	67	1267
county	41	rural	female	68	943
county	41	rural	male	68	653
county	41	rural	female	69	1656
county	41	rural	male	69	890
county	41	rural	female	7	10396
county	41	rural	male	7	10547
county	41	rural	female	70	2563
county	41	rural	male	70	1595
county	41	rural	female	71	1160
county	41	rural	male	71	837
county	41	rural	female	72	1154
county	41	rural	male	72	914
county	41	rural	female	73	932
county	41	rural	male	73	868
county	41	rural	female	74	1066
county	41	rural	male	74	741
county	41	rural	female	75	1207
county	41	rural	male	75	830
county	41	rural	female	76	704
county	41	rural	male	76	671
county	41	rural	female	77	1076
county	41	rural	male	77	742
county	41	rural	female	78	918
county	41	rural	male	78	566
county	41	rural	female	79	1346
county	41	rural	male	79	595
county	41	rural	female	8	10391
county	41	rural	male	8	10048
county	41	rural	female	80+	5869
county	41	rural	male	80+	3978
county	41	rural	female	9	10884
county	41	rural	male	9	11122
county	41	rural	female	unspecified	279
county	41	rural	male	unspecified	253
county	41	urban	female	0	1695
county	41	urban	male	0	1763
county	41	urban	female	1	1468
county	41	urban	male	1	1499
county	41	urban	female	10	1235
county	41	urban	male	10	1289
county	41	urban	female	11	1005
county	41	urban	male	11	991
county	41	urban	female	12	1268
county	41	urban	male	12	1287
county	41	urban	female	13	1214
county	41	urban	male	13	1196
county	41	urban	female	14	1104
county	41	urban	male	14	1056
county	41	urban	female	15	1143
county	41	urban	male	15	1050
county	41	urban	female	16	1139
county	41	urban	male	16	956
county	41	urban	female	17	1178
county	41	urban	male	17	1074
county	41	urban	female	18	1183
county	41	urban	male	18	998
county	41	urban	female	19	1128
county	41	urban	male	19	855
county	41	urban	female	2	1605
county	41	urban	male	2	1598
county	41	urban	female	20	1579
county	41	urban	male	20	1001
county	41	urban	female	21	1092
county	41	urban	male	21	753
county	41	urban	female	22	1182
county	41	urban	male	22	888
county	41	urban	female	23	1112
county	41	urban	male	23	888
county	41	urban	female	24	1043
county	41	urban	male	24	880
county	41	urban	female	25	1169
county	41	urban	male	25	1130
county	41	urban	female	26	877
county	41	urban	male	26	796
county	41	urban	female	27	850
county	41	urban	male	27	850
county	41	urban	female	28	790
county	41	urban	male	28	695
county	41	urban	female	29	628
county	41	urban	male	29	646
county	41	urban	female	3	1608
county	41	urban	male	3	1530
county	41	urban	female	30	971
county	41	urban	male	30	1030
county	41	urban	female	31	394
county	41	urban	male	31	550
county	41	urban	female	32	606
county	41	urban	male	32	596
county	41	urban	female	33	376
county	41	urban	male	33	416
county	41	urban	female	34	416
county	41	urban	male	34	454
county	41	urban	female	35	648
county	41	urban	male	35	698
county	41	urban	female	36	350
county	41	urban	male	36	358
county	41	urban	female	37	346
county	41	urban	male	37	386
county	41	urban	female	38	404
county	41	urban	male	38	333
county	41	urban	female	39	278
county	41	urban	male	39	312
county	41	urban	female	4	1502
county	41	urban	male	4	1415
county	41	urban	female	40	631
county	41	urban	male	40	517
county	41	urban	female	41	235
county	41	urban	male	41	233
county	41	urban	female	42	311
county	41	urban	male	42	294
county	41	urban	female	43	223
county	41	urban	male	43	228
county	41	urban	female	44	192
county	41	urban	male	44	221
county	41	urban	female	45	377
county	41	urban	male	45	345
county	41	urban	female	46	277
county	41	urban	male	46	258
county	41	urban	female	47	243
county	41	urban	male	47	216
county	41	urban	female	48	208
county	41	urban	male	48	179
county	41	urban	female	49	199
county	41	urban	male	49	222
county	41	urban	female	5	1394
county	41	urban	male	5	1336
county	41	urban	female	50	333
county	41	urban	male	50	260
county	41	urban	female	51	159
county	41	urban	male	51	147
county	41	urban	female	52	138
county	41	urban	male	52	167
county	41	urban	female	53	144
county	41	urban	male	53	129
county	41	urban	female	54	149
county	41	urban	male	54	141
county	41	urban	female	55	184
county	41	urban	male	55	164
county	41	urban	female	56	167
county	41	urban	male	56	135
county	41	urban	female	57	158
county	41	urban	male	57	140
county	41	urban	female	58	77
county	41	urban	male	58	69
county	41	urban	female	59	121
county	41	urban	male	59	99
county	41	urban	female	6	1346
county	41	urban	male	6	1228
county	41	urban	female	60	212
county	41	urban	male	60	183
county	41	urban	female	61	96
county	41	urban	male	61	81
county	41	urban	female	62	74
county	41	urban	male	62	66
county	41	urban	female	63	72
county	41	urban	male	63	66
county	41	urban	female	64	72
county	41	urban	male	64	60
county	41	urban	female	65	97
county	41	urban	male	65	80
county	41	urban	female	66	58
county	41	urban	male	66	53
county	41	urban	female	67	76
county	41	urban	male	67	48
county	41	urban	female	68	36
county	41	urban	male	68	39
county	41	urban	female	69	51
county	41	urban	male	69	41
county	41	urban	female	7	1159
county	41	urban	male	7	1186
county	41	urban	female	70	129
county	41	urban	male	70	91
county	41	urban	female	71	48
county	41	urban	male	71	36
county	41	urban	female	72	48
county	41	urban	male	72	34
county	41	urban	female	73	27
county	41	urban	male	73	30
county	41	urban	female	74	46
county	41	urban	male	74	29
county	41	urban	female	75	52
county	41	urban	male	75	43
county	41	urban	female	76	27
county	41	urban	male	76	22
county	41	urban	female	77	45
county	41	urban	male	77	32
county	41	urban	female	78	34
county	41	urban	male	78	21
county	41	urban	female	79	55
county	41	urban	male	79	27
county	41	urban	female	8	1238
county	41	urban	male	8	1048
county	41	urban	female	80+	286
county	41	urban	male	80+	181
county	41	urban	female	9	1169
county	41	urban	male	9	1100
county	41	urban	female	unspecified	12
county	41	urban	male	unspecified	14
county	42	rural	female	0	8116
county	42	rural	male	0	8348
county	42	rural	female	1	7161
county	42	rural	male	1	7509
county	42	rural	female	10	7394
county	42	rural	male	10	7478
county	42	rural	female	11	5665
county	42	rural	male	11	5700
county	13	rural	female	0	1950
county	13	rural	male	0	2008
county	42	rural	female	12	6876
county	42	rural	male	12	7292
county	42	rural	female	13	6320
county	42	rural	male	13	6628
county	42	rural	female	14	5988
county	42	rural	male	14	6032
county	42	rural	female	15	5886
county	42	rural	male	15	6261
county	42	rural	female	16	5300
county	42	rural	male	16	5776
county	42	rural	female	17	5372
county	42	rural	male	17	6156
county	42	rural	female	18	4922
county	42	rural	male	18	5526
county	42	rural	female	19	4131
county	42	rural	male	19	4073
county	42	rural	female	2	8521
county	42	rural	male	2	8453
county	42	rural	female	20	6067
county	42	rural	male	20	4880
county	42	rural	female	21	3853
county	42	rural	male	21	3119
county	42	rural	female	22	4331
county	42	rural	male	22	3551
county	42	rural	female	23	4191
county	42	rural	male	23	3297
county	42	rural	female	24	3948
county	42	rural	male	24	3178
county	42	rural	female	25	4376
county	42	rural	male	25	3724
county	42	rural	female	26	3122
county	42	rural	male	26	2801
county	42	rural	female	27	3147
county	42	rural	male	27	2914
county	42	rural	female	28	2716
county	42	rural	male	28	2299
county	42	rural	female	29	2345
county	42	rural	male	29	2330
county	42	rural	female	3	8235
county	42	rural	male	3	8220
county	42	rural	female	30	4225
county	42	rural	male	30	3371
county	42	rural	female	31	1771
county	42	rural	male	31	1946
county	42	rural	female	32	2386
county	42	rural	male	32	2314
county	42	rural	female	33	1705
county	42	rural	male	33	1687
county	42	rural	female	34	1740
county	42	rural	male	34	1733
county	42	rural	female	35	3091
county	42	rural	male	35	2517
county	42	rural	female	36	1722
county	42	rural	male	36	1541
county	42	rural	female	37	1654
county	42	rural	male	37	1515
county	42	rural	female	38	1721
county	42	rural	male	38	1199
county	42	rural	female	39	1386
county	42	rural	male	39	1165
county	42	rural	female	4	7516
county	42	rural	male	4	7660
county	42	rural	female	40	3569
county	42	rural	male	40	2004
county	42	rural	female	41	1383
county	42	rural	male	41	1074
county	42	rural	female	42	1484
county	42	rural	male	42	1100
county	42	rural	female	43	1208
county	42	rural	male	43	871
county	42	rural	female	44	1109
county	42	rural	male	44	848
county	42	rural	female	45	2459
county	42	rural	male	45	1562
county	42	rural	female	46	1535
county	42	rural	male	46	1062
county	42	rural	female	47	1696
county	42	rural	male	47	1118
county	42	rural	female	48	1318
county	42	rural	male	48	918
county	42	rural	female	49	1328
county	42	rural	male	49	1007
county	42	rural	female	5	7395
county	42	rural	male	5	7656
county	42	rural	female	50	2773
county	42	rural	male	50	1555
county	42	rural	female	51	1237
county	42	rural	male	51	995
county	42	rural	female	52	1228
county	42	rural	male	52	1043
county	42	rural	female	53	1103
county	42	rural	male	53	921
county	42	rural	female	54	1159
county	42	rural	male	54	897
county	42	rural	female	55	1570
county	42	rural	male	55	1209
county	42	rural	female	56	1256
county	42	rural	male	56	1034
county	42	rural	female	57	1446
county	42	rural	male	57	1113
county	42	rural	female	58	730
county	42	rural	male	58	623
county	42	rural	female	59	857
county	42	rural	male	59	835
county	42	rural	female	6	7039
county	42	rural	male	6	6972
county	42	rural	female	60	1993
county	42	rural	male	60	1482
county	42	rural	female	61	807
county	42	rural	male	61	863
county	42	rural	female	62	697
county	42	rural	male	62	726
county	42	rural	female	63	629
county	42	rural	male	63	637
county	42	rural	female	64	831
county	42	rural	male	64	602
county	42	rural	female	65	988
county	42	rural	male	65	727
county	42	rural	female	66	718
county	42	rural	male	66	491
county	42	rural	female	67	734
county	42	rural	male	67	662
county	42	rural	female	68	457
county	42	rural	male	68	303
county	42	rural	female	69	759
county	42	rural	male	69	481
county	42	rural	female	7	6656
county	42	rural	male	7	6603
county	42	rural	female	70	1368
county	42	rural	male	70	841
county	42	rural	female	71	471
county	42	rural	male	71	415
county	42	rural	female	72	484
county	42	rural	male	72	460
county	42	rural	female	73	376
county	42	rural	male	73	406
county	42	rural	female	74	495
county	42	rural	male	74	360
county	42	rural	female	75	606
county	42	rural	male	75	473
county	42	rural	female	76	308
county	42	rural	male	76	297
county	42	rural	female	77	389
county	42	rural	male	77	371
county	42	rural	female	78	512
county	42	rural	male	78	248
county	42	rural	female	79	471
county	42	rural	male	79	246
county	42	rural	female	8	6623
county	42	rural	male	8	6506
county	42	rural	female	80+	3128
county	42	rural	male	80+	1904
county	42	rural	female	9	7040
county	42	rural	male	9	6983
county	42	rural	female	unspecified	78
county	13	rural	female	1	1788
county	42	rural	male	unspecified	92
county	42	urban	female	0	8810
county	42	urban	male	0	9109
county	42	urban	female	1	7595
county	42	urban	male	1	7544
county	42	urban	female	10	6808
county	42	urban	male	10	6674
county	42	urban	female	11	5515
county	42	urban	male	11	5066
county	42	urban	female	12	6824
county	42	urban	male	12	6512
county	42	urban	female	13	6267
county	42	urban	male	13	5862
county	42	urban	female	14	5702
county	42	urban	male	14	5462
county	42	urban	female	15	5775
county	42	urban	male	15	5484
county	42	urban	female	16	5974
county	42	urban	male	16	5191
county	42	urban	female	17	6346
county	42	urban	male	17	5913
county	42	urban	female	18	6819
county	42	urban	male	18	6133
county	42	urban	female	19	6216
county	42	urban	male	19	5084
county	42	urban	female	2	8317
county	42	urban	male	2	8382
county	42	urban	female	20	9308
county	42	urban	male	20	6690
county	42	urban	female	21	5821
county	42	urban	male	21	4973
county	42	urban	female	22	7248
county	42	urban	male	22	5976
county	42	urban	female	23	6596
county	42	urban	male	23	5765
county	42	urban	female	24	6286
county	42	urban	male	24	5852
county	42	urban	female	25	6998
county	42	urban	male	25	6974
county	42	urban	female	26	5065
county	42	urban	male	26	5252
county	42	urban	female	27	4694
county	42	urban	male	27	5494
county	42	urban	female	28	4651
county	42	urban	male	28	4962
county	42	urban	female	29	3500
county	42	urban	male	29	4214
county	42	urban	female	3	8221
county	42	urban	male	3	7868
county	42	urban	female	30	5842
county	42	urban	male	30	6659
county	42	urban	female	31	2182
county	42	urban	male	31	3000
county	42	urban	female	32	3420
county	42	urban	male	32	4259
county	42	urban	female	33	2058
county	42	urban	male	33	2625
county	42	urban	female	34	2186
county	42	urban	male	34	2818
county	42	urban	female	35	3643
county	42	urban	male	35	4655
county	42	urban	female	36	1925
county	42	urban	male	36	2421
county	42	urban	female	37	1763
county	42	urban	male	37	2300
county	42	urban	female	38	2132
county	42	urban	male	38	2157
county	42	urban	female	39	1574
county	42	urban	male	39	1781
county	42	urban	female	4	7606
county	42	urban	male	4	7418
county	42	urban	female	40	3399
county	42	urban	male	40	3485
county	42	urban	female	41	1140
county	42	urban	male	41	1370
county	42	urban	female	42	1556
county	42	urban	male	42	1917
county	42	urban	female	43	1126
county	42	urban	male	43	1318
county	42	urban	female	44	920
county	42	urban	male	44	1158
county	42	urban	female	45	2259
county	42	urban	male	45	2327
county	42	urban	female	46	1296
county	42	urban	male	46	1466
county	42	urban	female	47	1251
county	42	urban	male	47	1396
county	42	urban	female	48	1168
county	42	urban	male	48	1235
county	42	urban	female	49	988
county	42	urban	male	49	1270
county	42	urban	female	5	7177
county	42	urban	male	5	7306
county	42	urban	female	50	1906
county	42	urban	male	50	1870
county	42	urban	female	51	751
county	42	urban	male	51	998
county	42	urban	female	52	862
county	42	urban	male	52	1165
county	42	urban	female	53	719
county	42	urban	male	53	936
county	42	urban	female	54	766
county	42	urban	male	54	871
county	42	urban	female	55	897
county	42	urban	male	55	1115
county	42	urban	female	56	739
county	42	urban	male	56	871
county	42	urban	female	57	773
county	42	urban	male	57	801
county	42	urban	female	58	456
county	42	urban	male	58	516
county	42	urban	female	59	451
county	42	urban	male	59	601
county	42	urban	female	6	6698
county	42	urban	male	6	6533
county	42	urban	female	60	1185
county	42	urban	male	60	1022
county	42	urban	female	61	401
county	42	urban	male	61	505
county	42	urban	female	62	386
county	42	urban	male	62	490
county	42	urban	female	63	311
county	42	urban	male	63	375
county	42	urban	female	64	357
county	42	urban	male	64	352
county	42	urban	female	65	509
county	42	urban	male	65	478
county	42	urban	female	66	309
county	42	urban	male	66	258
county	42	urban	female	67	371
county	42	urban	male	67	368
county	42	urban	female	68	226
county	42	urban	male	68	167
county	42	urban	female	69	331
county	42	urban	male	69	228
county	42	urban	female	7	6293
county	42	urban	male	7	6283
county	42	urban	female	70	680
county	42	urban	male	70	483
county	42	urban	female	71	239
county	42	urban	male	71	195
county	42	urban	female	72	247
county	42	urban	male	72	228
county	42	urban	female	73	180
county	42	urban	male	73	208
county	42	urban	female	74	217
county	42	urban	male	74	181
county	42	urban	female	75	297
county	42	urban	male	75	225
county	42	urban	female	76	140
county	42	urban	male	76	145
county	42	urban	female	77	183
county	42	urban	male	77	141
county	42	urban	female	78	230
county	42	urban	male	78	124
county	42	urban	female	79	220
county	26	rural	female	0	11793
county	26	rural	male	0	12067
county	26	rural	female	1	10251
county	26	rural	male	1	10630
county	26	rural	female	10	10621
county	26	rural	male	10	10818
county	26	rural	female	11	8042
county	26	rural	male	11	7990
county	26	rural	female	12	9746
county	26	rural	male	12	10149
county	26	rural	female	13	9068
county	26	rural	male	13	9178
county	26	rural	female	14	8420
county	26	rural	male	14	8290
county	26	rural	female	15	8006
county	26	urban	female	7	2273
county	26	urban	male	7	2235
county	26	urban	female	70	128
county	26	urban	male	70	120
county	26	urban	female	71	51
county	26	urban	male	71	50
county	26	urban	female	72	47
county	26	urban	male	72	56
county	26	urban	female	73	61
county	26	urban	male	73	53
county	26	urban	female	74	58
county	26	urban	male	74	41
county	26	urban	female	75	65
county	26	urban	male	75	67
county	26	urban	female	76	37
county	26	urban	male	76	37
county	26	urban	female	77	46
county	26	urban	male	77	40
county	26	urban	female	78	34
county	26	urban	male	78	24
county	26	urban	female	79	51
county	26	urban	male	79	33
county	26	urban	female	8	2138
county	26	urban	male	8	2099
county	26	urban	female	80+	359
county	26	urban	male	80+	301
county	26	urban	female	9	2290
county	26	urban	male	9	2236
county	26	urban	female	unspecified	19
county	26	urban	male	unspecified	31
county	27	rural	female	0	8779
county	27	rural	male	0	8914
county	27	rural	female	1	7684
county	27	rural	male	1	7911
county	27	rural	female	10	8246
county	27	rural	male	10	8666
county	27	rural	female	11	6487
county	27	rural	male	11	6572
county	27	rural	female	12	7845
county	27	rural	male	12	8148
county	27	rural	female	13	7573
county	27	rural	male	13	7492
county	27	rural	female	14	6916
county	27	rural	male	14	6980
county	27	rural	female	15	6558
county	27	rural	male	15	6512
county	27	rural	female	16	6467
county	27	rural	male	16	6279
county	27	rural	female	17	6117
county	27	rural	male	17	6373
county	27	rural	female	18	5627
county	27	rural	male	18	6244
county	27	rural	female	19	5202
county	27	rural	male	19	5776
county	27	rural	female	2	8868
county	27	rural	male	2	8993
county	27	rural	female	20	6662
county	27	rural	male	20	6983
county	27	rural	female	21	4919
county	27	rural	male	21	5261
county	27	rural	female	22	5866
county	27	rural	male	22	5669
county	27	rural	female	23	5143
county	27	rural	male	23	5195
county	27	rural	female	24	4849
county	27	rural	male	24	4723
county	27	rural	female	25	5846
county	27	rural	male	25	5665
county	27	rural	female	26	4097
county	27	rural	male	26	3872
county	27	rural	female	27	4071
county	27	rural	male	27	4164
county	27	rural	female	28	3811
county	38	rural	female	0	5928
county	38	rural	male	0	6135
county	38	rural	female	1	5681
county	38	rural	male	1	5581
county	38	rural	female	10	6107
county	38	rural	male	10	5902
county	38	rural	female	11	4950
county	38	rural	male	11	4641
county	38	rural	female	12	5725
county	38	rural	male	12	5608
county	38	rural	female	13	5642
county	38	rural	male	13	5497
county	38	rural	female	14	4790
county	38	rural	male	14	4968
county	38	rural	female	15	4811
county	38	rural	male	15	4782
county	38	rural	female	16	4828
county	38	rural	male	16	4452
county	38	rural	female	17	4624
county	38	rural	male	17	4629
county	38	rural	female	18	4120
county	38	rural	male	18	4308
county	38	rural	female	19	3430
county	38	rural	male	19	3481
county	38	rural	female	2	6170
county	38	rural	male	2	6189
county	38	rural	female	20	3799
county	38	rural	male	20	3226
county	38	rural	female	21	2897
county	38	rural	male	21	2346
county	38	rural	female	22	3227
county	38	rural	male	22	2391
county	38	rural	female	23	3074
county	38	rural	male	23	1992
county	38	rural	female	24	2667
county	38	rural	male	24	1861
county	38	rural	female	25	3019
county	38	rural	male	25	2097
county	38	rural	female	26	2471
county	38	rural	male	26	1729
county	38	rural	female	27	2318
county	38	rural	male	27	1829
county	38	rural	female	28	2164
county	38	rural	male	28	1510
county	38	rural	female	29	2134
county	38	rural	male	29	1548
county	38	rural	female	3	6195
county	38	rural	male	3	5997
county	38	rural	female	30	3020
county	38	rural	male	30	1975
county	38	rural	female	31	1841
county	38	rural	male	31	1435
county	38	rural	female	32	2296
county	38	rural	male	32	1581
county	38	rural	female	33	1672
county	38	rural	male	33	1364
county	38	rural	female	34	1824
county	38	rural	male	34	1463
county	38	urban	female	48	593
county	38	urban	male	48	469
county	38	urban	female	49	662
county	38	urban	male	49	527
county	38	urban	female	5	2511
county	38	urban	male	5	2760
county	38	urban	female	50	963
county	38	urban	male	50	648
county	38	urban	female	51	518
county	38	urban	male	51	434
county	38	urban	female	52	574
county	38	urban	male	52	469
county	38	urban	female	53	536
county	38	urban	male	53	458
county	38	urban	female	54	558
county	38	urban	male	54	424
county	38	urban	female	55	687
county	38	urban	male	55	544
county	38	urban	female	56	543
county	38	urban	male	56	450
county	38	urban	female	57	549
county	38	urban	male	57	507
county	38	urban	female	58	385
county	38	urban	male	58	331
county	38	urban	female	59	473
county	38	urban	male	59	419
county	38	urban	female	6	2483
county	38	urban	male	6	2678
county	38	urban	female	60	700
county	38	urban	male	60	557
county	38	urban	female	61	390
county	38	urban	male	61	393
county	38	urban	female	62	417
county	38	urban	male	62	401
county	38	urban	female	63	337
county	38	urban	male	63	338
county	38	urban	female	64	336
county	38	urban	male	64	328
county	38	urban	female	65	374
county	38	urban	male	65	317
county	38	urban	female	66	359
county	38	urban	male	66	298
county	38	urban	female	67	297
county	38	urban	male	67	312
county	38	urban	female	68	211
county	38	urban	male	68	184
county	38	urban	female	69	311
county	38	urban	male	69	284
county	38	urban	female	7	2495
county	38	urban	male	7	2571
county	38	urban	female	70	435
county	38	urban	male	70	360
county	38	urban	female	71	245
county	38	urban	male	71	212
county	38	urban	female	72	252
county	38	urban	male	72	250
county	38	urban	female	73	264
county	38	urban	male	73	242
county	38	urban	female	74	212
county	38	urban	male	74	165
county	38	urban	female	75	261
county	38	urban	male	75	194
county	38	urban	female	76	205
county	38	urban	male	76	175
county	38	urban	female	77	223
county	38	urban	male	77	167
county	38	urban	female	78	162
county	38	urban	male	78	144
county	38	urban	female	79	189
county	38	urban	male	79	133
county	38	urban	female	8	2418
county	38	urban	male	8	2530
county	38	urban	female	80+	1441
county	38	urban	male	80+	1064
county	38	urban	female	9	2566
county	38	urban	male	9	2650
county	38	urban	female	unspecified	67
county	38	urban	male	unspecified	65
county	42	urban	male	79	122
county	42	urban	female	8	6258
county	42	urban	male	8	5946
county	42	urban	female	80+	1487
county	42	urban	male	80+	917
county	42	urban	female	9	6600
county	42	urban	male	9	6295
county	42	urban	female	unspecified	107
county	42	urban	male	unspecified	181
county	43	rural	female	0	15761
county	43	rural	male	0	15791
county	43	rural	female	1	13559
county	43	rural	male	1	14073
county	43	rural	female	10	13917
county	43	rural	male	10	14452
county	43	rural	female	11	9990
county	43	rural	male	11	9750
county	43	rural	female	12	12042
county	43	rural	male	12	12988
county	43	rural	female	13	11132
county	43	rural	male	13	11431
county	43	rural	female	14	10202
county	43	rural	male	14	10882
county	43	rural	female	15	10204
county	43	rural	male	15	11537
county	43	rural	female	16	9527
county	43	rural	male	16	10273
county	43	rural	female	17	9311
county	43	rural	male	17	10539
county	43	rural	female	18	9248
county	43	rural	male	18	10203
county	43	rural	female	19	7271
county	43	rural	male	19	7121
county	43	rural	female	2	16252
county	43	rural	male	2	16265
county	43	rural	female	20	11874
county	43	rural	male	20	9289
county	43	rural	female	21	7026
county	43	rural	male	21	5942
county	43	rural	female	22	7865
county	43	rural	male	22	6294
county	43	rural	female	23	7751
county	43	rural	male	23	6166
county	43	rural	female	24	7052
county	43	rural	male	24	5745
county	43	rural	female	25	8871
county	43	rural	male	25	6716
county	43	rural	female	26	5799
county	43	rural	male	26	4948
county	43	rural	female	27	5697
county	43	rural	male	27	5231
county	43	rural	female	28	5314
county	43	rural	male	28	3975
county	43	rural	female	29	4321
county	43	rural	male	29	3968
county	43	rural	female	3	15328
county	43	rural	male	3	15349
county	43	rural	female	30	8101
county	43	rural	male	30	6196
county	43	rural	female	31	3225
county	43	rural	male	31	3210
county	43	rural	female	32	4504
county	43	rural	male	32	3860
county	43	rural	female	33	2927
county	43	rural	male	33	2818
county	43	rural	female	34	3458
county	43	rural	male	34	3028
county	43	rural	female	35	5579
county	43	rural	male	35	4295
county	43	rural	female	36	3080
county	43	rural	male	36	2545
county	43	rural	female	37	3097
county	43	rural	male	37	2523
county	43	rural	female	38	2906
county	43	rural	male	38	1987
county	43	rural	female	39	2377
county	43	rural	male	39	1881
county	43	rural	female	4	14748
county	43	rural	male	4	14822
county	43	rural	female	40	5774
county	43	rural	male	40	3538
county	43	rural	female	41	2118
county	43	rural	male	41	1672
county	43	rural	female	42	2520
county	43	rural	male	42	1842
county	43	rural	female	43	1936
county	43	rural	male	43	1503
county	43	rural	female	44	1849
county	43	rural	male	44	1358
county	43	rural	female	45	4035
county	43	rural	male	45	2671
county	43	rural	female	46	2611
county	43	rural	male	46	1989
county	43	rural	female	47	2648
county	43	rural	male	47	1899
county	43	rural	female	48	2059
county	43	rural	male	48	1362
county	43	rural	female	49	1938
county	43	rural	male	49	1489
county	43	rural	female	5	14459
county	43	rural	male	5	14803
county	43	rural	female	50	4134
county	43	rural	male	50	2530
county	43	rural	female	51	1932
county	43	rural	male	51	1580
county	43	rural	female	52	1857
county	43	rural	male	52	1523
county	43	rural	female	53	1700
county	43	rural	male	53	1344
county	43	rural	female	54	1792
county	43	rural	male	54	1384
county	43	rural	female	55	2276
county	43	rural	male	55	1818
county	43	rural	female	56	1818
county	43	rural	male	56	1495
county	43	rural	female	57	2156
county	43	rural	male	57	1739
county	43	rural	female	58	1134
county	43	rural	male	58	954
county	43	rural	female	59	1459
county	43	rural	male	59	1155
county	43	rural	female	6	13719
county	43	rural	male	6	13815
county	43	rural	female	60	3134
county	43	rural	male	60	2085
county	43	rural	female	61	1294
county	43	rural	male	61	1218
county	43	rural	female	62	1121
county	43	rural	male	62	1020
county	43	rural	female	63	990
county	43	rural	male	63	888
county	43	rural	female	64	1195
county	43	rural	male	64	934
county	43	rural	female	65	1496
county	43	rural	male	65	1116
county	43	rural	female	66	754
county	43	rural	male	66	565
county	43	rural	female	67	1202
county	43	rural	male	67	1080
county	43	rural	female	68	734
county	43	rural	male	68	530
county	43	rural	female	69	1204
county	43	rural	male	69	601
county	43	rural	female	7	12251
county	43	rural	male	7	12234
county	43	rural	female	70	2100
county	43	rural	male	70	1215
county	43	rural	female	71	693
county	43	rural	male	71	587
county	43	rural	female	72	772
county	43	rural	male	72	671
county	43	rural	female	73	585
county	43	rural	male	73	607
county	43	rural	female	74	649
county	43	rural	male	74	539
county	43	rural	female	75	912
county	24	rural	female	0	9708
county	24	rural	male	0	9849
county	24	rural	female	1	6578
county	24	rural	male	1	6834
county	24	rural	female	10	10399
county	24	rural	male	10	10552
county	24	rural	female	11	5823
county	24	rural	male	11	5266
county	24	rural	female	12	7881
county	24	rural	male	12	8952
county	24	rural	female	13	5379
county	24	rural	male	13	6115
county	24	rural	female	14	6033
county	24	rural	male	14	6763
county	24	rural	female	15	5861
county	24	rural	male	15	6839
county	24	rural	female	16	5548
county	24	rural	male	16	5845
county	24	rural	female	17	3930
county	24	rural	male	17	4514
county	24	rural	female	18	5957
county	24	rural	male	18	6002
county	24	rural	female	19	3486
county	24	rural	male	19	3156
county	24	rural	female	2	9952
county	24	rural	male	2	10231
county	24	rural	female	20	7230
county	24	rural	male	20	5853
county	24	rural	female	21	3080
county	24	rural	male	21	2821
county	24	rural	female	22	3899
county	24	rural	male	22	3426
county	24	rural	female	23	3257
county	24	rural	male	23	2886
county	24	rural	female	24	3560
county	24	rural	male	24	2882
county	24	rural	female	25	5781
county	24	rural	male	25	4901
county	24	rural	female	26	2788
county	24	rural	male	26	2409
county	24	rural	female	27	2486
county	24	rural	male	27	2313
county	24	rural	female	28	3520
county	24	rural	male	28	2694
county	24	rural	female	29	2091
county	24	rural	male	29	1801
county	24	rural	female	3	8646
county	24	rural	male	3	8957
county	24	rural	female	30	5070
county	24	rural	male	30	4511
county	24	rural	female	31	1548
county	24	rural	male	31	1582
county	24	rural	female	32	2663
county	24	rural	male	32	2338
county	24	rural	female	33	1422
county	24	rural	male	33	1379
county	24	rural	female	34	1560
county	24	rural	male	34	1383
county	24	rural	female	35	3530
county	24	rural	male	35	3331
county	24	rural	female	36	1989
county	24	rural	male	36	1768
county	43	rural	male	75	659
county	43	rural	female	76	522
county	43	rural	male	76	486
county	43	rural	female	77	537
county	43	rural	male	77	558
county	43	rural	female	78	808
county	43	rural	male	78	436
county	43	rural	female	79	733
county	43	rural	male	79	425
county	43	rural	female	8	12904
county	43	rural	male	8	12755
county	43	rural	female	80+	4785
county	43	rural	male	80+	3388
county	43	rural	female	9	12350
county	43	rural	male	9	12320
county	43	rural	female	unspecified	144
county	43	rural	male	unspecified	161
county	43	urban	female	0	2593
county	43	urban	male	0	2544
county	43	urban	female	1	2197
county	43	urban	male	1	2194
county	43	urban	female	10	2299
county	43	urban	male	10	2109
county	43	urban	female	11	1639
county	43	urban	male	11	1465
county	43	urban	female	12	2156
county	43	urban	male	12	2120
county	43	urban	female	13	2000
county	43	urban	male	13	1822
county	43	urban	female	14	1782
county	43	urban	male	14	1670
county	43	urban	female	15	1793
county	1	urban	female	0	14756
county	1	urban	male	0	14957
county	1	urban	female	1	11972
county	1	urban	male	1	12530
county	1	urban	female	10	9392
county	1	urban	male	10	9335
county	1	urban	female	11	7260
county	1	urban	male	11	6999
county	1	urban	female	12	8847
county	1	urban	male	12	8861
county	1	urban	female	13	8649
county	1	urban	male	13	8073
county	1	urban	female	14	8073
county	1	urban	male	14	7392
county	1	urban	female	15	8143
county	1	urban	male	15	7585
county	1	urban	female	16	8297
county	1	urban	male	16	7132
county	1	urban	female	17	9050
county	1	urban	male	17	7999
county	1	urban	female	18	10795
county	1	urban	male	18	9097
county	1	urban	female	19	10355
county	1	urban	male	19	8282
county	1	urban	female	2	12264
county	1	urban	male	2	12659
county	1	urban	female	20	16054
county	1	urban	male	20	11419
county	1	urban	female	21	11011
county	1	urban	male	21	8987
county	1	urban	female	22	14653
county	1	urban	male	22	12091
county	1	urban	female	23	14035
county	1	urban	male	23	12139
county	1	urban	female	24	13504
county	1	urban	male	24	12369
county	1	urban	female	25	16288
county	1	urban	male	25	15687
county	1	urban	female	26	11983
county	1	urban	male	26	11978
county	1	urban	female	27	11495
county	1	urban	male	27	12819
county	1	urban	female	28	11811
county	1	urban	male	28	12416
county	1	urban	female	29	9199
county	1	urban	male	29	10789
county	1	urban	female	3	12522
county	1	urban	male	3	12451
county	1	urban	female	30	14201
county	1	urban	male	30	17378
county	1	urban	female	31	5722
county	1	urban	male	31	8095
county	1	urban	female	32	8476
county	1	urban	male	32	11387
county	1	urban	female	33	5131
county	1	urban	male	33	7290
county	1	urban	female	34	5601
county	1	urban	male	34	8028
county	1	urban	female	35	8333
county	1	urban	male	35	12766
county	1	urban	female	36	4877
county	1	urban	male	36	7056
county	1	urban	female	37	4553
county	1	urban	male	37	6838
county	1	urban	female	38	5241
county	1	urban	male	38	7243
county	1	urban	female	39	3885
county	1	urban	male	39	6065
county	1	urban	female	4	11488
county	1	urban	male	4	11720
county	1	urban	female	40	6676
county	1	urban	male	40	10281
county	1	urban	female	41	2155
county	1	urban	male	41	3801
county	1	urban	female	42	3142
county	1	urban	male	42	5167
county	1	urban	female	43	2244
county	1	urban	male	43	3537
county	1	urban	female	44	1983
county	1	urban	male	44	3051
county	1	urban	female	45	3874
county	1	urban	male	45	6166
county	1	urban	female	46	2270
county	1	urban	male	46	3744
county	1	urban	female	47	1949
county	1	urban	male	47	3347
county	1	urban	female	48	2203
county	1	urban	male	48	3096
county	1	urban	female	49	1793
county	1	urban	male	49	2917
county	1	urban	female	5	10766
county	1	urban	male	5	10828
county	1	urban	female	50	3408
county	1	urban	male	50	4595
county	1	urban	female	51	1079
county	1	urban	male	51	1925
county	1	urban	female	52	1555
county	1	urban	male	52	2513
county	1	urban	female	53	1081
county	1	urban	male	53	1798
county	1	urban	female	54	1266
county	1	urban	male	54	1985
county	1	urban	female	55	1693
county	1	urban	male	55	2522
county	1	urban	female	56	1082
county	1	urban	male	56	1684
county	1	urban	female	57	943
county	1	urban	male	57	1528
county	1	urban	female	58	879
county	1	urban	male	58	1218
county	1	urban	female	59	703
county	1	urban	male	59	1100
county	1	urban	female	6	10315
county	1	urban	male	6	9987
county	1	urban	female	60	1993
county	1	urban	male	60	2087
county	1	urban	female	61	516
county	1	urban	male	61	801
county	1	urban	female	62	632
county	1	urban	male	62	864
county	1	urban	female	63	465
county	1	urban	male	63	709
county	1	urban	female	64	518
county	1	urban	male	64	641
county	1	urban	female	65	1010
county	1	urban	male	65	1001
county	1	urban	female	66	350
county	1	urban	male	66	425
county	1	urban	female	67	387
county	1	urban	male	67	496
county	1	urban	female	68	430
county	1	urban	male	68	463
county	1	urban	female	69	384
county	1	urban	male	69	416
county	1	urban	female	7	9671
county	1	urban	male	7	10080
county	1	urban	female	70	1089
county	1	urban	male	70	927
county	1	urban	female	71	220
county	1	urban	male	71	268
county	1	urban	female	72	307
county	1	urban	male	72	364
county	1	urban	female	73	243
county	1	urban	male	73	283
county	1	urban	female	74	219
county	1	urban	male	74	257
county	1	urban	female	75	441
county	1	urban	male	75	423
county	1	urban	female	76	209
county	1	urban	male	76	215
county	1	urban	female	77	165
county	1	urban	male	77	201
county	1	urban	female	78	216
county	1	urban	male	78	187
county	1	urban	female	79	180
county	1	urban	male	79	194
county	1	urban	female	8	9444
county	1	urban	male	8	9079
county	1	urban	female	80+	2160
county	1	urban	male	80+	1446
county	1	urban	female	9	9885
county	1	urban	male	9	9862
county	1	urban	female	unspecified	337
county	1	urban	male	unspecified	533
county	2	rural	female	0	10186
county	2	rural	male	0	10351
county	2	rural	female	1	9126
county	2	rural	male	1	9151
county	2	rural	female	10	9094
county	2	rural	male	10	9359
county	2	rural	female	11	6077
county	2	rural	male	11	6089
county	2	rural	female	12	7807
county	2	rural	male	12	8168
county	2	rural	female	13	6941
county	2	rural	male	13	7204
county	2	rural	female	14	6539
county	2	rural	male	14	6718
county	2	rural	female	15	6109
county	2	rural	male	15	6596
county	2	rural	female	16	5771
county	2	rural	male	16	6222
county	2	rural	female	17	5244
county	2	rural	male	17	5681
county	2	rural	female	18	6028
county	2	rural	male	18	6029
county	2	rural	female	19	4978
county	2	rural	male	19	4380
county	2	rural	female	2	10125
county	2	rural	male	2	10303
county	2	rural	female	20	7360
county	2	rural	male	20	5171
county	2	rural	female	21	3554
county	2	rural	male	21	2823
county	2	rural	female	22	5195
county	2	rural	male	22	3477
county	2	rural	female	23	4349
county	2	rural	male	23	3050
county	2	rural	female	24	4263
county	2	rural	male	24	3018
county	2	rural	female	25	5923
county	2	rural	male	25	4036
county	2	rural	female	26	3791
county	2	rural	male	26	2670
county	2	rural	female	27	3317
county	2	rural	male	27	2728
county	2	rural	female	28	3973
county	2	rural	male	28	2712
county	2	rural	female	29	2945
county	2	rural	male	29	2213
county	2	rural	female	3	10293
county	2	rural	male	3	10322
county	2	rural	female	30	6473
county	2	rural	male	30	4586
county	2	rural	female	31	2260
county	2	rural	male	31	1977
county	2	rural	female	32	3558
county	2	rural	male	32	2784
county	2	rural	female	33	2267
county	2	rural	male	33	1838
county	2	rural	female	34	2217
county	2	rural	male	34	1950
county	2	rural	female	35	4252
county	2	rural	male	35	3646
county	2	rural	female	36	2316
county	2	rural	male	36	1910
county	2	rural	female	37	1882
county	2	rural	male	37	1835
county	2	rural	female	38	2183
county	2	rural	male	38	1806
county	2	rural	female	39	1610
county	2	rural	male	39	1567
county	2	rural	female	4	9807
county	2	rural	male	4	9810
county	2	rural	female	40	4578
county	2	rural	male	40	3589
county	2	rural	female	41	1065
county	2	rural	male	41	1291
county	2	rural	female	42	1339
county	2	rural	male	42	1458
county	2	rural	female	43	855
county	2	rural	male	43	958
county	2	rural	female	44	725
county	2	rural	male	44	875
county	2	rural	female	45	2468
county	2	rural	male	45	2237
county	2	rural	female	46	1311
county	2	rural	male	46	1396
county	2	rural	female	47	1101
county	2	rural	male	47	1156
county	2	rural	female	48	1380
county	2	rural	male	48	1149
county	2	rural	female	49	1470
county	2	rural	male	49	1188
county	2	rural	female	5	9234
county	2	rural	male	5	9497
county	2	rural	female	50	3625
county	2	rural	male	50	2442
county	2	rural	female	51	1007
county	2	rural	male	51	846
county	2	rural	female	52	1253
county	2	rural	male	52	1163
county	2	rural	female	53	972
county	2	rural	male	53	870
county	2	rural	female	54	932
county	2	rural	male	54	970
county	2	rural	female	55	1595
county	2	rural	male	55	1532
county	2	rural	female	56	856
county	2	rural	male	56	974
county	2	rural	female	57	946
county	2	rural	male	57	1119
county	2	rural	female	58	711
county	2	rural	male	58	763
county	2	rural	female	59	959
county	2	rural	male	59	815
county	2	rural	female	6	9236
county	2	rural	male	6	9163
county	2	rural	female	60	2549
county	2	rural	male	60	2028
county	2	rural	female	61	515
county	2	rural	male	61	618
county	2	rural	female	62	619
county	2	rural	male	62	560
county	2	rural	female	63	427
county	2	rural	male	63	527
county	2	rural	female	64	569
county	2	rural	male	64	571
county	2	rural	female	65	1182
county	2	rural	male	65	1133
county	2	rural	female	66	318
county	2	rural	male	66	360
county	2	rural	female	67	421
county	2	rural	male	67	513
county	2	rural	female	68	475
county	2	rural	male	68	466
county	2	rural	female	69	521
county	2	rural	male	69	493
county	2	rural	female	7	8418
county	2	rural	male	7	8668
county	2	rural	female	70	1478
county	2	rural	male	70	1379
county	2	rural	female	71	212
county	2	rural	male	71	288
county	2	rural	female	72	330
county	2	rural	male	72	390
county	2	rural	female	73	212
county	2	rural	male	73	265
county	2	rural	female	74	269
county	2	rural	male	74	284
county	2	rural	female	75	556
county	2	rural	male	75	530
county	2	rural	female	76	185
county	2	rural	male	76	249
county	2	rural	female	77	197
county	2	rural	male	77	227
county	2	rural	female	78	236
county	2	rural	male	78	235
county	2	rural	female	79	310
county	2	rural	male	79	273
county	2	rural	female	8	8603
county	2	rural	male	8	8507
county	2	rural	female	80+	2738
county	2	rural	male	80+	2141
county	2	rural	female	9	8395
county	2	rural	male	9	8473
county	2	rural	female	unspecified	153
county	2	rural	male	unspecified	127
county	2	urban	female	0	1827
county	2	urban	male	0	1901
county	2	urban	female	1	1561
county	2	urban	male	1	1573
county	2	urban	female	10	1500
county	2	urban	male	10	1498
county	2	urban	female	11	1085
county	2	urban	male	11	1026
county	2	urban	female	12	1449
county	2	urban	male	12	1424
county	2	urban	female	13	1462
county	2	urban	male	13	1372
county	2	urban	female	14	1311
county	2	urban	male	14	1251
county	2	urban	female	15	1314
county	2	urban	male	15	1248
county	2	urban	female	16	1234
county	2	urban	male	16	1169
county	2	urban	female	17	1213
county	2	urban	male	17	1137
county	2	urban	female	18	1407
county	2	urban	male	18	1231
county	2	urban	female	19	1240
county	2	urban	male	19	938
county	2	urban	female	2	1656
county	2	urban	male	2	1677
county	2	urban	female	20	1748
county	2	urban	male	20	1267
county	2	urban	female	21	1048
county	2	urban	male	21	819
county	2	urban	female	22	1402
county	2	urban	male	22	1173
county	2	urban	female	23	1317
county	2	urban	male	23	1067
county	2	urban	female	24	1426
county	2	urban	male	24	1084
county	2	urban	female	25	1840
county	2	urban	male	25	1528
county	2	urban	female	26	1263
county	2	urban	male	26	1137
county	2	urban	female	27	1172
county	2	urban	male	27	1155
county	2	urban	female	28	1242
county	2	urban	male	28	1140
county	2	urban	female	29	981
county	2	urban	male	29	926
county	2	urban	female	3	1778
county	2	urban	male	3	1809
county	2	urban	female	30	1834
county	2	urban	male	30	1819
county	2	urban	female	31	614
county	2	urban	male	31	761
county	2	urban	female	32	965
county	2	urban	male	32	1031
county	2	urban	female	33	589
county	2	urban	male	33	682
county	2	urban	female	34	602
county	2	urban	male	34	769
county	2	urban	female	35	1095
county	2	urban	male	35	1391
county	2	urban	female	36	634
county	2	urban	male	36	711
county	2	urban	female	37	487
county	2	urban	male	37	691
county	2	urban	female	38	628
county	2	urban	male	38	719
county	2	urban	female	39	432
county	2	urban	male	39	599
county	2	urban	female	4	1637
county	2	urban	male	4	1661
county	2	urban	female	40	1098
county	2	urban	male	40	1279
county	2	urban	female	41	248
county	2	urban	male	41	396
county	2	urban	female	42	383
county	2	urban	male	42	610
county	2	urban	female	43	264
county	2	urban	male	43	332
county	2	urban	female	44	195
county	2	urban	male	44	355
county	2	urban	female	45	551
county	2	urban	male	45	799
county	2	urban	female	46	297
county	2	urban	male	46	429
county	2	urban	female	47	248
county	2	urban	male	47	366
county	2	urban	female	48	304
county	2	urban	male	48	378
county	2	urban	female	49	220
county	2	urban	male	49	371
county	2	urban	female	5	1502
county	2	urban	male	5	1548
county	2	urban	female	50	658
county	2	urban	male	50	646
county	2	urban	female	51	163
county	2	urban	male	51	236
county	2	urban	female	52	220
county	2	urban	male	52	300
county	2	urban	female	53	145
county	2	urban	male	53	212
county	2	urban	female	54	148
county	2	urban	male	54	204
county	2	urban	female	55	291
county	2	urban	male	55	336
county	2	urban	female	56	157
county	2	urban	male	56	267
county	2	urban	female	57	137
county	2	urban	male	57	232
county	2	urban	female	58	116
county	2	urban	male	58	183
county	2	urban	female	59	134
county	2	urban	male	59	159
county	2	urban	female	6	1478
county	2	urban	male	6	1444
county	2	urban	female	60	430
county	2	urban	male	60	352
county	2	urban	female	61	74
county	2	urban	male	61	108
county	2	urban	female	62	85
county	2	urban	male	62	125
county	2	urban	female	63	65
county	2	urban	male	63	96
county	2	urban	female	64	82
county	2	urban	male	64	118
county	2	urban	female	65	187
county	2	urban	male	65	182
county	2	urban	female	66	55
county	2	urban	male	66	71
county	2	urban	female	67	60
county	2	urban	male	67	96
county	2	urban	female	68	77
county	2	urban	male	68	82
county	2	urban	female	69	80
county	2	urban	male	69	62
county	2	urban	female	7	1494
county	2	urban	male	7	1463
county	2	urban	female	70	238
county	2	urban	male	70	193
county	2	urban	female	71	31
county	2	urban	male	71	44
county	2	urban	female	72	59
county	2	urban	male	72	50
county	2	urban	female	73	36
county	2	urban	male	73	37
county	2	urban	female	74	25
county	2	urban	male	74	43
county	2	urban	female	75	94
county	2	urban	male	75	65
county	2	urban	female	76	23
county	2	urban	male	76	40
county	2	urban	female	77	25
county	2	urban	male	77	27
county	2	urban	female	78	39
county	2	urban	male	78	26
county	2	urban	female	79	32
county	2	urban	male	79	31
county	2	urban	female	8	1407
county	2	urban	male	8	1397
county	2	urban	female	80+	404
county	2	urban	male	80+	289
county	2	urban	female	9	1536
county	2	urban	male	9	1562
county	2	urban	female	unspecified	27
county	2	urban	male	unspecified	36
county	3	rural	female	0	15252
county	3	rural	male	0	15227
county	3	rural	female	1	13669
county	3	rural	male	1	13742
county	3	rural	female	10	14218
county	3	rural	male	10	14569
county	3	rural	female	11	10345
county	3	rural	male	11	10189
county	3	rural	female	12	12840
county	3	rural	male	12	13265
county	3	rural	female	13	11852
county	3	rural	male	13	11775
county	3	rural	female	14	10550
county	3	rural	male	14	10881
county	3	rural	female	15	10402
county	3	rural	male	15	10990
county	3	rural	female	16	9607
county	3	rural	male	16	10259
county	3	rural	female	17	8182
county	3	rural	male	17	9660
county	3	rural	female	18	9123
county	3	rural	male	18	9653
county	3	rural	female	19	7331
county	3	rural	male	19	7257
county	3	rural	female	2	15241
county	3	rural	male	2	15480
county	3	rural	female	20	10088
county	3	rural	male	20	7916
county	3	rural	female	21	5639
county	3	rural	male	21	4769
county	3	rural	female	22	7409
county	3	rural	male	22	5245
county	3	rural	female	23	6506
county	3	rural	male	23	4737
county	3	rural	female	24	6503
county	3	rural	male	24	4492
county	3	rural	female	25	7989
county	3	rural	male	25	5547
county	3	rural	female	26	5029
county	3	rural	male	26	3738
county	3	rural	female	27	4618
county	3	rural	male	27	3759
county	3	rural	female	28	5668
county	3	rural	male	28	3804
county	3	rural	female	29	3985
county	3	rural	male	29	3181
county	3	rural	female	3	15748
county	3	rural	male	3	15534
county	3	rural	female	30	8200
county	3	rural	male	30	5505
county	3	rural	female	31	4131
county	3	rural	male	31	3099
county	3	rural	female	32	5343
county	3	rural	male	32	3641
county	3	rural	female	33	3303
county	3	rural	male	33	2322
county	3	rural	female	34	3512
county	3	rural	male	34	2803
county	3	rural	female	35	5949
county	3	rural	male	35	4651
county	3	rural	female	36	3296
county	3	rural	male	36	2719
county	3	rural	female	37	2898
county	3	rural	male	37	2566
county	3	rural	female	38	3208
county	3	rural	male	38	2474
county	3	rural	female	39	2558
county	3	rural	male	39	2250
county	3	rural	female	4	14581
county	3	rural	male	4	15051
county	3	rural	female	40	6503
county	3	rural	male	40	4366
county	3	rural	female	41	2285
county	3	rural	male	41	1995
county	3	rural	female	42	2613
county	3	rural	male	42	2125
county	3	rural	female	43	1564
county	3	rural	male	43	1476
county	3	rural	female	44	1300
county	3	rural	male	44	1431
county	3	rural	female	45	3398
county	3	rural	male	45	2870
county	3	rural	female	46	2097
county	3	rural	male	46	1959
county	3	rural	female	47	2102
county	3	rural	male	47	1850
county	3	rural	female	48	2633
county	3	rural	male	48	1905
county	3	rural	female	49	2922
county	3	rural	male	49	1724
county	3	rural	female	5	14812
county	3	rural	male	5	14992
county	3	rural	female	50	5140
county	3	rural	male	50	2926
county	3	rural	female	51	2165
county	3	rural	male	51	1452
county	3	rural	female	52	2355
county	3	rural	male	52	1727
county	3	rural	female	53	1970
county	3	rural	male	53	1364
county	3	rural	female	54	1781
county	3	rural	male	54	1569
county	3	rural	female	55	2628
county	3	rural	male	55	2118
county	3	rural	female	56	1533
county	3	rural	male	56	1581
county	3	rural	female	57	1500
county	3	rural	male	57	1766
county	3	rural	female	58	1308
county	3	rural	male	58	1218
county	3	rural	female	59	1928
county	3	rural	male	59	1410
county	3	rural	female	6	14168
county	3	rural	male	6	14299
county	3	rural	female	60	3689
county	3	rural	male	60	2242
county	3	rural	female	61	1223
county	3	rural	male	61	1169
county	3	rural	female	62	1066
county	3	rural	male	62	1059
county	3	rural	female	63	916
county	3	rural	male	63	918
county	3	rural	female	64	1208
county	3	rural	male	64	1046
county	3	rural	female	65	2145
county	3	rural	male	65	1665
county	3	rural	female	66	614
county	3	rural	male	66	605
county	3	rural	female	67	848
county	3	rural	male	67	898
county	3	rural	female	68	824
county	3	rural	male	68	696
county	3	rural	female	69	1242
county	3	rural	male	69	896
county	3	rural	female	7	13416
county	3	rural	male	7	13741
county	3	rural	female	70	2190
county	3	rural	male	70	1593
county	3	rural	female	71	589
county	3	rural	male	71	454
county	3	rural	female	72	710
county	3	rural	male	72	686
county	3	rural	female	73	482
county	3	rural	male	73	465
county	3	rural	female	74	519
county	3	rural	male	74	486
county	3	rural	female	75	904
county	3	rural	male	75	840
county	3	rural	female	76	392
county	3	rural	male	76	398
county	3	rural	female	77	481
county	3	rural	male	77	396
county	3	rural	female	78	502
county	3	rural	male	78	431
county	3	rural	female	79	737
county	3	rural	male	79	591
county	3	rural	female	8	13521
county	3	rural	male	8	13596
county	3	rural	female	80+	4958
county	3	rural	male	80+	3835
county	3	rural	female	9	13535
county	3	rural	male	9	13754
county	3	rural	female	unspecified	376
county	3	rural	male	unspecified	355
county	3	urban	female	0	4937
county	3	urban	male	0	4954
county	3	urban	female	1	3925
county	3	urban	male	1	4092
county	3	urban	female	10	3374
county	3	urban	male	10	3476
county	3	urban	female	11	2553
county	3	urban	male	11	2493
county	3	urban	female	12	3299
county	3	urban	male	12	3211
county	3	urban	female	13	3123
county	3	urban	male	13	2943
county	3	urban	female	14	2934
county	3	urban	male	14	2665
county	3	urban	female	15	2917
county	3	urban	male	15	2751
county	3	urban	female	16	2871
county	3	urban	male	16	2638
county	3	urban	female	17	2857
county	3	urban	male	17	2704
county	3	urban	female	18	3418
county	3	urban	male	18	2952
county	3	urban	female	19	3164
county	3	urban	male	19	2524
county	3	urban	female	2	4152
county	3	urban	male	2	4198
county	3	urban	female	20	4736
county	3	urban	male	20	3321
county	3	urban	female	21	2890
county	3	urban	male	21	2395
county	3	urban	female	22	4031
county	3	urban	male	22	3039
county	3	urban	female	23	3962
county	3	urban	male	23	2916
county	3	urban	female	24	3753
county	3	urban	male	24	2968
county	3	urban	female	25	4501
county	3	urban	male	25	4046
county	3	urban	female	26	3212
county	3	urban	male	26	2785
county	3	urban	female	27	2998
county	3	urban	male	27	2993
county	3	urban	female	28	3288
county	3	urban	male	28	2887
county	3	urban	female	29	2558
county	3	urban	male	29	2451
county	3	urban	female	3	4180
county	3	urban	male	3	4198
county	3	urban	female	30	4182
county	3	urban	male	30	4375
county	3	urban	female	31	1775
county	3	urban	male	31	1961
county	3	urban	female	32	2474
county	3	urban	male	32	2732
county	3	urban	female	33	1544
county	3	urban	male	33	1654
county	3	urban	female	34	1634
county	3	urban	male	34	1937
county	3	urban	female	35	2539
county	3	urban	male	35	3285
county	3	urban	female	36	1394
county	3	urban	male	36	1754
county	3	urban	female	37	1319
county	3	urban	male	37	1651
county	3	urban	female	38	1556
county	3	urban	male	38	1751
county	3	urban	female	39	1161
county	3	urban	male	39	1463
county	3	urban	female	4	4055
county	3	urban	male	4	3970
county	3	urban	female	40	2142
county	3	urban	male	40	2723
county	3	urban	female	41	751
county	3	urban	male	41	1043
county	3	urban	female	42	986
county	3	urban	male	42	1258
county	3	urban	female	43	661
county	3	urban	male	43	873
county	3	urban	female	44	588
county	3	urban	male	44	794
county	3	urban	female	45	1170
county	3	urban	male	45	1599
county	3	urban	female	46	690
county	3	urban	male	46	1016
county	3	urban	female	47	599
county	3	urban	male	47	809
county	3	urban	female	48	684
county	3	urban	male	48	786
county	3	urban	female	49	622
county	3	urban	male	49	752
county	3	urban	female	5	3758
county	3	urban	male	5	3891
county	3	urban	female	50	1234
county	3	urban	male	50	1277
county	3	urban	female	51	412
county	3	urban	male	51	510
county	3	urban	female	52	516
county	3	urban	male	52	653
county	3	urban	female	53	335
county	3	urban	male	53	481
county	3	urban	female	54	376
county	3	urban	male	54	474
county	3	urban	female	55	521
county	3	urban	male	55	689
county	3	urban	female	56	342
county	3	urban	male	56	463
county	3	urban	female	57	276
county	3	urban	male	57	440
county	3	urban	female	58	266
county	3	urban	male	58	343
county	3	urban	female	59	279
county	3	urban	male	59	297
county	3	urban	female	6	3644
county	3	urban	male	6	3616
county	3	urban	female	60	718
county	3	urban	male	60	580
county	3	urban	female	61	190
county	3	urban	male	61	277
county	3	urban	female	62	186
county	3	urban	male	62	228
county	3	urban	female	63	142
county	3	urban	male	63	187
county	3	urban	female	64	174
county	3	urban	male	64	196
county	3	urban	female	65	410
county	3	urban	male	65	339
county	3	urban	female	66	121
county	3	urban	male	66	118
county	3	urban	female	67	150
county	3	urban	male	67	173
county	3	urban	female	68	153
county	3	urban	male	68	157
county	3	urban	female	69	175
county	3	urban	male	69	147
county	3	urban	female	7	3525
county	3	urban	male	7	3609
county	3	urban	female	70	437
county	3	urban	male	70	339
county	3	urban	female	71	90
county	3	urban	male	71	82
county	3	urban	female	72	115
county	3	urban	male	72	119
county	3	urban	female	73	69
county	3	urban	male	73	84
county	3	urban	female	74	86
county	3	urban	male	74	90
county	3	urban	female	75	200
county	3	urban	male	75	131
county	3	urban	female	76	76
county	3	urban	male	76	70
county	3	urban	female	77	82
county	3	urban	male	77	58
county	3	urban	female	78	80
county	3	urban	male	78	62
county	3	urban	female	79	90
county	3	urban	male	79	81
county	3	urban	female	8	3402
county	3	urban	male	8	3275
county	3	urban	female	80+	1048
county	3	urban	male	80+	699
county	3	urban	female	9	3713
county	3	urban	male	9	3677
county	3	urban	female	unspecified	94
county	3	urban	male	unspecified	140
county	4	rural	female	0	4172
county	4	rural	male	0	4463
county	4	rural	female	1	3702
county	4	rural	male	1	3735
county	4	rural	female	10	3356
county	4	rural	male	10	3578
county	4	rural	female	11	2148
county	4	rural	male	11	2291
county	4	rural	female	12	3061
county	4	rural	male	12	3362
county	4	rural	female	13	2375
county	4	rural	male	13	2618
county	4	rural	female	14	2376
county	4	rural	male	14	2581
county	4	rural	female	15	2275
county	4	rural	male	15	2458
county	4	rural	female	16	1872
county	4	rural	male	16	1990
county	4	rural	female	17	1841
county	4	rural	male	17	1911
county	4	rural	female	18	2529
county	4	rural	male	18	2165
county	4	rural	female	19	2122
county	4	rural	male	19	1549
county	4	rural	female	2	4240
county	4	rural	male	2	4526
county	4	rural	female	20	2995
county	4	rural	male	20	2200
county	4	rural	female	21	1251
county	4	rural	male	21	1024
county	4	rural	female	22	1701
county	4	rural	male	22	1446
county	4	rural	female	23	1258
county	4	rural	male	23	1154
county	4	rural	female	24	1575
county	4	rural	male	24	1332
county	4	rural	female	25	2365
county	4	rural	male	25	1827
county	4	rural	female	26	1082
county	4	rural	male	26	956
county	4	rural	female	27	1202
county	4	rural	male	27	1122
county	4	rural	female	28	1407
county	4	rural	male	28	1102
county	4	rural	female	29	1291
county	4	rural	male	29	1136
county	4	rural	female	3	4199
county	4	rural	male	3	4157
county	4	rural	female	30	2469
county	4	rural	male	30	1938
county	4	rural	female	31	744
county	4	rural	male	31	736
county	4	rural	female	32	836
county	4	rural	male	32	803
county	4	rural	female	33	526
county	4	rural	male	33	554
county	4	rural	female	34	871
county	4	rural	male	34	863
county	4	rural	female	35	1574
county	4	rural	male	35	1366
county	4	rural	female	36	666
county	4	rural	male	36	650
county	4	rural	female	37	662
county	4	rural	male	37	699
county	4	rural	female	38	714
county	4	rural	male	38	695
county	4	rural	female	39	889
county	4	rural	male	39	832
county	4	rural	female	4	4118
county	4	rural	male	4	4197
county	4	rural	female	40	1719
county	4	rural	male	40	1394
county	4	rural	female	41	346
county	4	rural	male	41	363
county	4	rural	female	42	438
county	4	rural	male	42	518
county	4	rural	female	43	304
county	4	rural	male	43	327
county	4	rural	female	44	478
county	4	rural	male	44	522
county	4	rural	female	45	852
county	4	rural	male	45	885
county	4	rural	female	46	396
county	4	rural	male	46	460
county	4	rural	female	47	393
county	4	rural	male	47	458
county	4	rural	female	48	542
county	4	rural	male	48	608
county	4	rural	female	49	586
county	4	rural	male	49	617
county	4	rural	female	5	4016
county	4	rural	male	5	4179
county	4	rural	female	50	1091
county	4	rural	male	50	1064
county	4	rural	female	51	259
county	4	rural	male	51	351
county	4	rural	female	52	311
county	4	rural	male	52	384
county	4	rural	female	53	252
county	4	rural	male	53	353
county	4	rural	female	54	300
county	4	rural	male	54	349
county	4	rural	female	55	454
county	4	rural	male	55	502
county	4	rural	female	56	267
county	4	rural	male	56	344
county	4	rural	female	57	203
county	4	rural	male	57	322
county	4	rural	female	58	221
county	4	rural	male	58	288
county	4	rural	female	59	409
county	4	rural	male	59	402
county	4	rural	female	6	3738
county	4	rural	male	6	3935
county	4	rural	female	60	769
county	4	rural	male	60	700
county	4	rural	female	61	157
county	4	rural	male	61	170
county	4	rural	female	62	122
county	4	rural	male	62	175
county	4	rural	female	63	133
county	4	rural	male	63	159
county	4	rural	female	64	200
county	4	rural	male	64	213
county	4	rural	female	65	238
county	4	rural	male	65	289
county	4	rural	female	66	84
county	4	rural	male	66	146
county	4	rural	female	67	88
county	4	rural	male	67	173
county	4	rural	female	68	99
county	4	rural	male	68	140
county	4	rural	female	69	196
county	4	rural	male	69	251
county	4	rural	female	7	3406
county	4	rural	male	7	3600
county	4	rural	female	70	398
county	4	rural	male	70	429
county	4	rural	female	71	64
county	4	rural	male	71	105
county	4	rural	female	72	62
county	4	rural	male	72	109
county	4	rural	female	73	52
county	4	rural	male	73	95
county	4	rural	female	74	71
county	4	rural	male	74	119
county	4	rural	female	75	152
county	4	rural	male	75	150
county	4	rural	female	76	54
county	4	rural	male	76	91
county	4	rural	female	77	57
county	4	rural	male	77	68
county	4	rural	female	78	75
county	4	rural	male	78	89
county	4	rural	female	79	129
county	4	rural	male	79	93
county	4	rural	female	8	3640
county	4	rural	male	8	3823
county	4	rural	female	80+	1012
county	4	rural	male	80+	882
county	4	rural	female	9	2940
county	4	rural	male	9	3011
county	4	rural	female	unspecified	26
county	4	rural	male	unspecified	26
county	4	urban	female	0	728
county	4	urban	male	0	737
county	4	urban	female	1	668
county	4	urban	male	1	627
county	4	urban	female	10	483
county	4	urban	male	10	475
county	4	urban	female	11	378
county	4	urban	male	11	335
county	4	urban	female	12	490
county	4	urban	male	12	488
county	4	urban	female	13	458
county	4	urban	male	13	415
county	4	urban	female	14	405
county	4	urban	male	14	417
county	4	urban	female	15	388
county	4	urban	male	15	390
county	4	urban	female	16	341
county	4	urban	male	16	350
county	4	urban	female	17	390
county	4	urban	male	17	388
county	4	urban	female	18	507
county	4	urban	male	18	406
county	4	urban	female	19	408
county	4	urban	male	19	355
county	4	urban	female	2	617
county	4	urban	male	2	695
county	4	urban	female	20	492
county	4	urban	male	20	407
county	4	urban	female	21	312
county	4	urban	male	21	284
county	4	urban	female	22	372
county	4	urban	male	22	335
county	4	urban	female	23	313
county	4	urban	male	23	301
county	4	urban	female	24	398
county	4	urban	male	24	365
county	4	urban	female	25	465
county	4	urban	male	25	394
county	4	urban	female	26	279
county	4	urban	male	26	270
county	4	urban	female	27	266
county	4	urban	male	27	321
county	4	urban	female	28	303
county	4	urban	male	28	254
county	4	urban	female	29	292
county	4	urban	male	29	270
county	4	urban	female	3	656
county	4	urban	male	3	702
county	4	urban	female	30	377
county	4	urban	male	30	378
county	4	urban	female	31	138
county	4	urban	male	31	190
county	4	urban	female	32	156
county	4	urban	male	32	228
county	4	urban	female	33	118
county	4	urban	male	33	117
county	4	urban	female	34	207
county	4	urban	male	34	239
county	4	urban	female	35	275
county	4	urban	male	35	314
county	4	urban	female	36	131
county	4	urban	male	36	132
county	4	urban	female	37	103
county	4	urban	male	37	157
county	4	urban	female	38	146
county	4	urban	male	38	132
county	4	urban	female	39	190
county	4	urban	male	39	168
county	4	urban	female	4	580
county	4	urban	male	4	642
county	4	urban	female	40	238
county	4	urban	male	40	214
county	4	urban	female	41	61
county	4	urban	male	41	107
county	4	urban	female	42	77
county	4	urban	male	42	95
county	4	urban	female	43	68
county	4	urban	male	43	74
county	4	urban	female	44	96
county	4	urban	male	44	115
county	4	urban	female	45	142
county	4	urban	male	45	185
county	4	urban	female	46	79
county	4	urban	male	46	99
county	4	urban	female	47	96
county	4	urban	male	47	108
county	4	urban	female	48	102
county	4	urban	male	48	110
county	4	urban	female	49	103
county	4	urban	male	49	145
county	4	urban	female	5	666
county	4	urban	male	5	689
county	4	urban	female	50	137
county	4	urban	male	50	144
county	4	urban	female	51	53
county	4	urban	male	51	58
county	4	urban	female	52	50
county	4	urban	male	52	71
county	4	urban	female	53	44
county	4	urban	male	53	52
county	4	urban	female	54	62
county	4	urban	male	54	72
county	4	urban	female	55	77
county	4	urban	male	55	84
county	4	urban	female	56	49
county	4	urban	male	56	57
county	4	urban	female	57	44
county	4	urban	male	57	48
county	4	urban	female	58	29
county	4	urban	male	58	72
county	4	urban	female	59	70
county	4	urban	male	59	47
county	4	urban	female	6	528
county	4	urban	male	6	596
county	4	urban	female	60	100
county	4	urban	male	60	94
county	4	urban	female	61	30
county	4	urban	male	61	35
county	4	urban	female	62	31
county	4	urban	male	62	29
county	4	urban	female	63	22
county	4	urban	male	63	16
county	4	urban	female	64	40
county	4	urban	male	64	40
county	4	urban	female	65	48
county	4	urban	male	65	35
county	4	urban	female	66	18
county	4	urban	male	66	25
county	4	urban	female	67	13
county	4	urban	male	67	24
county	4	urban	female	68	19
county	4	urban	male	68	32
county	4	urban	female	69	57
county	4	urban	male	69	32
county	4	urban	female	7	543
county	4	urban	male	7	525
county	4	urban	female	70	58
county	4	urban	male	70	33
county	4	urban	female	71	13
county	4	urban	male	71	13
county	4	urban	female	72	11
county	4	urban	male	72	18
county	4	urban	female	73	14
county	4	urban	male	73	10
county	4	urban	female	74	16
county	4	urban	male	74	20
county	4	urban	female	75	22
county	4	urban	male	75	18
county	4	urban	female	76	7
county	4	urban	male	76	12
county	4	urban	female	77	8
county	4	urban	male	77	8
county	4	urban	female	78	11
county	4	urban	male	78	9
county	4	urban	female	79	18
county	4	urban	male	79	13
county	4	urban	female	8	537
county	4	urban	male	8	512
county	4	urban	female	80+	149
county	4	urban	male	80+	127
county	4	urban	female	9	467
county	4	urban	male	9	497
county	4	urban	female	unspecified	6
county	4	urban	male	unspecified	9
county	5	rural	female	0	1290
county	5	rural	male	0	1284
county	5	rural	female	1	1124
county	5	rural	male	1	1140
county	5	rural	female	10	1109
county	5	rural	male	10	1212
county	5	rural	female	11	780
county	5	rural	male	11	709
county	5	rural	female	12	1045
county	5	rural	male	12	1205
county	5	rural	female	13	1025
county	5	rural	male	13	992
county	5	rural	female	14	898
county	5	rural	male	14	955
county	5	rural	female	15	890
county	5	rural	male	15	1018
county	5	rural	female	16	798
county	5	rural	male	16	876
county	5	rural	female	17	762
county	5	rural	male	17	968
county	5	rural	female	18	865
county	5	rural	male	18	1062
county	5	rural	female	19	654
county	5	rural	male	19	768
county	5	rural	female	2	1226
county	5	rural	male	2	1325
county	5	rural	female	20	919
county	5	rural	male	20	1100
county	5	rural	female	21	577
county	5	rural	male	21	681
county	5	rural	female	22	751
county	5	rural	male	22	823
county	5	rural	female	23	582
county	5	rural	male	23	737
county	5	rural	female	24	564
county	5	rural	male	24	672
county	5	rural	female	25	887
county	5	rural	male	25	976
county	5	rural	female	26	485
county	5	rural	male	26	548
county	5	rural	female	27	514
county	5	rural	male	27	593
county	5	rural	female	28	597
county	5	rural	male	28	544
county	5	rural	female	29	399
county	5	rural	male	29	483
county	5	rural	female	3	1387
county	5	rural	male	3	1455
county	5	rural	female	30	921
county	5	rural	male	30	1032
county	5	rural	female	31	435
county	5	rural	male	31	551
county	5	rural	female	32	469
county	5	rural	male	32	541
county	5	rural	female	33	271
county	5	rural	male	33	376
county	5	rural	female	34	300
county	5	rural	male	34	384
county	5	rural	female	35	793
county	5	rural	male	35	831
county	5	rural	female	36	318
county	5	rural	male	36	431
county	5	rural	female	37	266
county	5	rural	male	37	392
county	5	rural	female	38	330
county	5	rural	male	38	393
county	5	rural	female	39	266
county	5	rural	male	39	323
county	5	rural	female	4	1237
county	5	rural	male	4	1337
county	5	rural	female	40	748
county	5	rural	male	40	832
county	5	rural	female	41	203
county	5	rural	male	41	260
county	5	rural	female	42	246
county	5	rural	male	42	327
county	5	rural	female	43	154
county	5	rural	male	43	221
county	5	rural	female	44	134
county	5	rural	male	44	205
county	5	rural	female	45	455
county	5	rural	male	45	459
county	5	rural	female	46	271
county	5	rural	male	46	275
county	5	rural	female	47	174
county	5	rural	male	47	224
county	5	rural	female	48	220
county	5	rural	male	48	250
county	5	rural	female	49	184
county	5	rural	male	49	245
county	5	rural	female	5	1235
county	5	rural	male	5	1293
county	5	rural	female	50	561
county	5	rural	male	50	516
county	5	rural	female	51	176
county	5	rural	male	51	160
county	5	rural	female	52	134
county	5	rural	male	52	211
county	5	rural	female	53	121
county	5	rural	male	53	151
county	5	rural	female	54	118
county	5	rural	male	54	156
county	5	rural	female	55	275
county	5	rural	male	55	313
county	5	rural	female	56	163
county	5	rural	male	56	191
county	5	rural	female	57	145
county	5	rural	male	57	174
county	5	rural	female	58	84
county	5	rural	male	58	131
county	5	rural	female	59	94
county	5	rural	male	59	135
county	5	rural	female	6	1194
county	5	rural	male	6	1277
county	5	rural	female	60	392
county	5	rural	male	60	436
county	5	rural	female	61	138
county	5	rural	male	61	128
county	5	rural	female	62	81
county	5	rural	male	62	127
county	5	rural	female	63	72
county	5	rural	male	63	94
county	5	rural	female	64	78
county	5	rural	male	64	106
county	5	rural	female	65	155
county	5	rural	male	65	170
county	5	rural	female	66	63
county	5	rural	male	66	75
county	5	rural	female	67	62
county	5	rural	male	67	99
county	5	rural	female	68	57
county	5	rural	male	68	87
county	5	rural	female	69	55
county	5	rural	male	69	72
county	5	rural	female	7	1169
county	5	rural	male	7	1280
county	5	rural	female	70	251
county	5	rural	male	70	263
county	5	rural	female	71	44
county	5	rural	male	71	54
county	5	rural	female	72	24
county	5	rural	male	72	51
county	5	rural	female	73	21
county	5	rural	male	73	30
county	5	rural	female	74	34
county	5	rural	male	74	48
county	5	rural	female	75	66
county	5	rural	male	75	81
county	5	rural	female	76	24
county	5	rural	male	76	35
county	5	rural	female	77	23
county	5	rural	male	77	31
county	5	rural	female	78	27
county	5	rural	male	78	23
county	5	rural	female	79	29
county	5	rural	male	79	28
county	5	rural	female	8	1208
county	5	rural	male	8	1240
county	5	rural	female	80+	434
county	5	rural	male	80+	406
county	5	rural	female	9	1147
county	5	rural	male	9	1093
county	5	rural	female	unspecified	11
county	5	rural	male	unspecified	33
county	5	urban	female	0	288
county	5	urban	male	0	313
county	5	urban	female	1	265
county	5	urban	male	1	285
county	5	urban	female	10	220
county	5	urban	male	10	248
county	5	urban	female	11	159
county	5	urban	male	11	169
county	5	urban	female	12	220
county	5	urban	male	12	240
county	5	urban	female	13	253
county	5	urban	male	13	218
county	5	urban	female	14	195
county	5	urban	male	14	200
county	5	urban	female	15	175
county	5	urban	male	15	198
county	5	urban	female	16	219
county	5	urban	male	16	168
county	5	urban	female	17	214
county	5	urban	male	17	210
county	5	urban	female	18	300
county	5	urban	male	18	265
county	5	urban	female	19	218
county	5	urban	male	19	189
county	5	urban	female	2	294
county	5	urban	male	2	316
county	5	urban	female	20	349
county	5	urban	male	20	243
county	5	urban	female	21	176
county	5	urban	male	21	166
county	5	urban	female	22	243
county	5	urban	male	22	189
county	5	urban	female	23	204
county	5	urban	male	23	195
county	5	urban	female	24	212
county	5	urban	male	24	214
county	5	urban	female	25	315
county	5	urban	male	25	281
county	5	urban	female	26	188
county	5	urban	male	26	202
county	5	urban	female	27	189
county	5	urban	male	27	178
county	5	urban	female	28	189
county	5	urban	male	28	200
county	5	urban	female	29	142
county	5	urban	male	29	150
county	5	urban	female	3	308
county	5	urban	male	3	318
county	5	urban	female	30	306
county	5	urban	male	30	330
county	5	urban	female	31	87
county	5	urban	male	31	129
county	5	urban	female	32	153
county	5	urban	male	32	156
county	5	urban	female	33	90
county	5	urban	male	33	100
county	5	urban	female	34	93
county	5	urban	male	34	114
county	5	urban	female	35	229
county	5	urban	male	35	259
county	5	urban	female	36	108
county	5	urban	male	36	119
county	5	urban	female	37	81
county	5	urban	male	37	112
county	5	urban	female	38	118
county	5	urban	male	38	118
county	5	urban	female	39	70
county	5	urban	male	39	92
county	5	urban	female	4	262
county	5	urban	male	4	265
county	5	urban	female	40	228
county	5	urban	male	40	223
county	5	urban	female	41	47
county	5	urban	male	41	68
county	5	urban	female	42	72
county	5	urban	male	42	116
county	5	urban	female	43	44
county	5	urban	male	43	59
county	5	urban	female	44	42
county	5	urban	male	44	52
county	5	urban	female	45	147
county	5	urban	male	45	168
county	5	urban	female	46	56
county	5	urban	male	46	93
county	5	urban	female	47	43
county	5	urban	male	47	56
county	5	urban	female	48	52
county	5	urban	male	48	75
county	5	urban	female	49	42
county	5	urban	male	49	45
county	5	urban	female	5	262
county	5	urban	male	5	242
county	5	urban	female	50	150
county	5	urban	male	50	168
county	5	urban	female	51	38
county	5	urban	male	51	39
county	5	urban	female	52	34
county	5	urban	male	52	56
county	5	urban	female	53	28
county	5	urban	male	53	22
county	5	urban	female	54	24
county	5	urban	male	54	43
county	5	urban	female	55	77
county	5	urban	male	55	67
county	5	urban	female	56	35
county	5	urban	male	56	43
county	5	urban	female	57	20
county	5	urban	male	57	22
county	5	urban	female	58	23
county	5	urban	male	58	19
county	5	urban	female	59	11
county	5	urban	male	59	18
county	5	urban	female	6	240
county	5	urban	male	6	259
county	5	urban	female	60	81
county	5	urban	male	60	105
county	5	urban	female	61	13
county	5	urban	male	61	12
county	5	urban	female	62	11
county	5	urban	male	62	17
county	5	urban	female	63	8
county	5	urban	male	63	14
county	5	urban	female	64	16
county	5	urban	male	64	12
county	5	urban	female	65	36
county	5	urban	male	65	29
county	5	urban	female	66	17
county	5	urban	male	66	17
county	5	urban	female	67	6
county	5	urban	male	67	15
county	5	urban	female	68	11
county	5	urban	male	68	8
county	5	urban	female	69	6
county	5	urban	male	69	11
county	5	urban	female	7	250
county	5	urban	male	7	236
county	5	urban	female	70	80
county	5	urban	male	70	65
county	5	urban	female	71	6
county	5	urban	male	71	4
county	5	urban	female	72	6
county	5	urban	male	72	11
county	5	urban	female	73	4
county	5	urban	male	73	5
county	5	urban	female	74	6
county	5	urban	male	74	2
county	5	urban	female	75	16
county	5	urban	male	75	15
county	5	urban	female	76	6
county	5	urban	male	76	6
county	5	urban	female	77	3
county	5	urban	male	77	2
county	5	urban	female	78	1
county	5	urban	male	78	5
county	5	urban	female	79	2
county	5	urban	male	79	2
county	5	urban	female	8	231
county	5	urban	male	8	238
county	5	urban	female	80+	93
county	5	urban	male	80+	72
county	5	urban	female	9	248
county	5	urban	male	9	217
county	5	urban	female	unspecified	2
county	5	urban	male	unspecified	10
county	6	rural	female	0	2911
county	6	rural	male	0	2981
county	6	rural	female	1	2692
county	6	rural	male	1	2881
county	6	rural	female	10	2951
county	6	rural	male	10	3041
county	6	rural	female	11	2467
county	6	rural	male	11	2415
county	6	rural	female	12	2770
county	6	rural	male	12	2919
county	6	rural	female	13	2684
county	6	rural	male	13	2779
county	6	rural	female	14	2461
county	6	rural	male	14	2520
county	6	rural	female	15	2372
county	6	rural	male	15	2567
county	6	rural	female	16	2262
county	6	rural	male	16	2404
county	6	rural	female	17	2383
county	6	rural	male	17	2608
county	6	rural	female	18	2186
county	6	rural	male	18	2628
county	6	rural	female	19	1839
county	6	rural	male	19	2276
county	6	rural	female	2	2981
county	6	rural	male	2	2927
county	6	rural	female	20	2027
county	6	rural	male	20	2256
county	6	rural	female	21	1589
county	6	rural	male	21	1769
county	6	rural	female	22	1722
county	6	rural	male	22	1885
county	6	rural	female	23	1661
county	6	rural	male	23	1738
county	6	rural	female	24	1528
county	6	rural	male	24	1794
county	6	rural	female	25	1722
county	6	rural	male	25	2060
county	6	rural	female	26	1488
county	6	rural	male	26	1746
county	6	rural	female	27	1489
county	6	rural	male	27	1783
county	6	rural	female	28	1351
county	6	rural	male	28	1522
county	6	rural	female	29	1431
county	6	rural	male	29	1633
county	6	rural	female	3	2920
county	6	rural	male	3	2932
county	6	rural	female	30	1779
county	6	rural	male	30	2206
county	6	rural	female	31	1097
county	6	rural	male	31	1418
county	6	rural	female	32	1341
county	6	rural	male	32	1556
county	6	rural	female	33	1125
county	6	rural	male	33	1256
county	6	rural	female	34	1170
county	6	rural	male	34	1355
county	6	rural	female	35	1520
county	6	rural	male	35	1836
county	6	rural	female	36	1146
county	6	rural	male	36	1314
county	6	rural	female	37	1070
county	6	rural	male	37	1221
county	6	rural	female	38	1117
county	6	rural	male	38	1145
county	6	rural	female	39	1087
county	6	rural	male	39	1165
county	6	rural	female	4	2792
county	6	rural	male	4	3020
county	6	rural	female	40	1468
county	6	rural	male	40	1651
county	6	rural	female	41	798
county	6	rural	male	41	910
county	6	rural	female	42	848
county	6	rural	male	42	963
county	6	rural	female	43	761
county	6	rural	male	43	805
county	6	rural	female	44	815
county	6	rural	male	44	817
county	6	rural	female	45	1223
county	6	rural	male	45	1231
county	6	rural	female	46	886
county	6	rural	male	46	951
county	6	rural	female	47	934
county	6	rural	male	47	838
county	6	rural	female	48	754
county	6	rural	male	48	706
county	6	rural	female	49	868
county	6	rural	male	49	810
county	6	rural	female	5	2891
county	6	rural	male	5	2888
county	6	rural	female	50	1289
county	6	rural	male	50	1049
county	6	rural	female	51	658
county	6	rural	male	51	657
county	6	rural	female	52	718
county	6	rural	male	52	725
county	6	rural	female	53	621
county	6	rural	male	53	658
county	6	rural	female	54	621
county	6	rural	male	54	570
county	6	rural	female	55	851
county	6	rural	male	55	856
county	6	rural	female	56	595
county	6	rural	male	56	662
county	6	rural	female	57	666
county	6	rural	male	57	751
county	6	rural	female	58	445
county	6	rural	male	58	483
county	6	rural	female	59	600
county	6	rural	male	59	577
county	6	rural	female	6	2808
county	6	rural	male	6	2780
county	6	rural	female	60	1077
county	6	rural	male	60	781
county	6	rural	female	61	516
county	6	rural	male	61	523
county	6	rural	female	62	383
county	6	rural	male	62	454
county	6	rural	female	63	397
county	6	rural	male	63	402
county	6	rural	female	64	484
county	6	rural	male	64	407
county	6	rural	female	65	610
county	6	rural	male	65	510
county	6	rural	female	66	283
county	6	rural	male	66	331
county	6	rural	female	67	406
county	6	rural	male	67	427
county	6	rural	female	68	311
county	6	rural	male	68	285
county	6	rural	female	69	457
county	6	rural	male	69	359
county	6	rural	female	7	2836
county	6	rural	male	7	2960
county	6	rural	female	70	689
county	6	rural	male	70	531
county	6	rural	female	71	276
county	6	rural	male	71	260
county	6	rural	female	72	218
county	6	rural	male	72	267
county	6	rural	female	73	254
county	6	rural	male	73	273
county	6	rural	female	74	279
county	6	rural	male	74	238
county	6	rural	female	75	298
county	6	rural	male	75	230
county	6	rural	female	76	158
county	6	rural	male	76	168
county	6	rural	female	77	233
county	6	rural	male	77	187
county	6	rural	female	78	160
county	6	rural	male	78	157
county	6	rural	female	79	404
county	6	rural	male	79	211
county	6	rural	female	8	2686
county	6	rural	male	8	2773
county	6	rural	female	80+	1832
county	6	rural	male	80+	1314
county	6	rural	female	9	2859
county	6	rural	male	9	2957
county	6	rural	female	unspecified	46
county	6	rural	male	unspecified	68
county	6	urban	female	0	963
county	6	urban	male	0	988
county	6	urban	female	1	866
county	6	urban	male	1	798
county	6	urban	female	10	702
county	6	urban	male	10	689
county	6	urban	female	11	654
county	6	urban	male	11	575
county	6	urban	female	12	691
county	6	urban	male	12	688
county	6	urban	female	13	753
county	6	urban	male	13	655
county	6	urban	female	14	634
county	6	urban	male	14	614
county	6	urban	female	15	634
county	6	urban	male	15	603
county	6	urban	female	16	616
county	6	urban	male	16	536
county	6	urban	female	17	687
county	6	urban	male	17	621
county	6	urban	female	18	682
county	6	urban	male	18	666
county	6	urban	female	19	669
county	6	urban	male	19	581
county	6	urban	female	2	806
county	6	urban	male	2	856
county	6	urban	male	28	614
county	6	urban	female	29	572
county	6	urban	male	29	657
county	6	urban	female	3	853
county	6	urban	male	3	877
county	6	urban	female	30	767
county	6	urban	male	30	938
county	6	urban	female	31	398
county	6	urban	male	31	480
county	6	urban	female	32	547
county	6	urban	male	32	595
county	6	urban	female	33	383
county	6	urban	male	33	444
county	6	urban	female	34	411
county	6	urban	male	34	475
county	6	urban	female	35	586
county	6	urban	male	35	692
county	6	urban	female	36	393
county	6	urban	male	36	430
county	6	urban	female	37	385
county	6	urban	male	37	437
county	6	urban	female	38	382
county	6	urban	male	38	436
county	6	urban	female	39	324
county	6	urban	male	39	375
county	6	urban	female	4	862
county	6	urban	male	4	874
county	6	urban	female	40	495
county	6	urban	male	40	579
county	6	urban	female	41	232
county	6	urban	male	41	267
county	6	urban	female	42	266
county	6	urban	male	42	317
county	6	urban	female	43	218
county	6	urban	male	43	276
county	6	urban	female	44	203
county	6	urban	male	44	268
county	6	urban	female	45	298
county	6	urban	male	45	414
county	6	urban	female	46	230
county	6	urban	male	46	302
county	6	urban	female	47	220
county	6	urban	male	47	265
county	6	urban	female	48	178
county	6	urban	male	48	231
county	6	urban	female	49	175
county	6	urban	male	49	249
county	6	urban	female	5	796
county	6	urban	male	5	800
county	6	urban	female	50	249
county	6	urban	male	50	290
county	6	urban	female	51	129
county	6	urban	male	51	179
county	6	urban	female	52	125
county	6	urban	male	52	167
county	6	urban	female	53	121
county	6	urban	male	53	153
county	6	urban	female	54	127
county	6	urban	male	54	140
county	6	urban	female	55	176
county	6	urban	male	55	170
county	6	urban	female	56	106
county	6	urban	male	56	144
county	6	urban	female	57	111
county	6	urban	male	57	138
county	6	urban	female	58	77
county	6	urban	male	58	76
county	6	urban	female	59	88
county	6	urban	male	59	90
county	6	urban	female	6	737
county	6	urban	male	6	727
county	6	urban	female	60	171
county	6	urban	male	60	138
county	6	urban	female	61	67
county	6	urban	male	61	94
county	6	urban	female	62	50
county	6	urban	male	62	75
county	6	urban	female	63	61
county	6	urban	male	63	65
county	6	urban	female	64	82
county	6	urban	male	64	56
county	6	urban	female	65	104
county	6	urban	male	65	92
county	6	urban	female	66	44
county	6	urban	male	66	43
county	6	urban	female	67	51
county	6	urban	male	67	57
county	6	urban	female	68	35
county	6	urban	male	68	41
county	6	urban	female	69	59
county	6	urban	male	69	35
county	6	urban	female	7	700
county	6	urban	male	7	766
county	6	urban	female	70	104
county	6	urban	male	70	65
county	6	urban	female	71	34
county	6	urban	male	71	21
county	6	urban	female	72	38
county	6	urban	male	72	32
county	6	urban	female	73	37
county	6	urban	male	73	38
county	6	urban	female	74	33
county	6	urban	male	74	29
county	6	urban	female	75	37
county	6	urban	male	75	40
county	6	urban	female	76	26
county	6	urban	male	76	18
county	6	urban	female	77	18
county	6	urban	male	77	29
county	6	urban	female	78	17
county	6	urban	male	78	20
county	6	urban	female	79	36
county	6	urban	male	79	33
county	6	urban	female	8	675
county	6	urban	male	8	672
county	6	urban	female	80+	297
county	6	urban	male	80+	200
county	6	urban	female	9	733
county	6	urban	male	9	723
county	6	urban	female	unspecified	11
county	6	urban	male	unspecified	16
county	7	rural	female	0	5087
county	7	rural	male	0	5529
county	7	rural	female	1	4262
county	7	rural	male	1	4808
county	7	rural	female	10	11072
county	7	rural	male	10	14148
county	7	rural	female	11	4889
county	7	rural	male	11	5219
county	7	rural	female	12	7972
county	7	rural	male	12	11488
county	7	rural	female	13	4909
county	7	rural	male	13	6898
county	7	rural	female	14	6127
county	7	rural	male	14	9223
county	7	rural	female	15	5745
county	7	rural	male	15	8315
county	7	rural	female	16	5180
county	7	rural	male	16	7995
county	7	rural	female	17	3611
county	7	rural	male	17	4893
county	7	rural	female	18	6923
county	7	rural	male	18	9883
county	7	rural	female	19	2988
county	7	rural	male	19	3679
county	7	rural	female	2	8187
county	7	rural	male	2	9151
county	7	rural	female	20	8457
county	7	rural	male	20	10457
county	7	rural	female	21	2060
county	7	rural	male	21	2800
county	7	rural	female	22	3415
county	7	rural	male	22	4209
county	7	rural	female	23	2398
county	7	rural	male	23	2740
county	7	rural	female	24	2482
county	7	rural	male	24	2821
county	7	rural	female	25	6093
county	7	rural	male	25	5468
county	7	rural	female	26	2436
county	7	rural	male	26	2301
county	7	rural	female	27	2168
county	7	rural	male	27	1819
county	7	rural	female	28	3892
county	7	rural	male	28	3240
county	7	rural	female	29	1793
county	7	rural	male	29	1334
county	7	rural	female	3	6638
county	7	rural	male	3	7385
county	7	rural	female	30	8002
county	7	rural	male	30	7259
county	7	rural	female	31	1042
county	7	rural	male	31	870
county	7	rural	female	32	2322
county	7	rural	male	32	1839
county	7	rural	female	33	1217
county	7	rural	male	33	941
county	7	rural	female	34	1144
county	7	rural	male	34	953
county	7	rural	female	35	5030
county	7	rural	male	35	3937
county	7	rural	female	36	1525
county	7	rural	male	36	1220
county	7	rural	female	37	1314
county	7	rural	male	37	1013
county	7	rural	female	38	2330
county	7	rural	male	38	1849
county	7	rural	female	39	1063
county	7	rural	male	39	918
county	7	rural	female	4	8654
county	7	rural	male	4	9847
county	7	rural	female	40	6139
county	7	rural	male	40	7016
county	7	rural	female	41	582
county	7	rural	male	41	699
county	7	rural	female	42	1204
county	7	rural	male	42	1414
county	7	rural	female	43	690
county	7	rural	male	43	798
county	7	rural	female	44	534
county	7	rural	male	44	632
county	7	rural	female	45	2397
county	7	rural	male	45	2762
county	7	rural	female	46	506
county	7	rural	male	46	721
county	7	rural	female	47	503
county	7	rural	male	47	667
county	7	rural	female	48	929
county	7	rural	male	48	1260
county	7	rural	female	49	449
county	7	rural	male	49	641
county	7	rural	female	5	7125
county	7	rural	male	5	8139
county	7	rural	female	50	3033
county	7	rural	male	50	4379
county	7	rural	female	51	200
county	7	rural	male	51	367
county	7	rural	female	52	410
county	7	rural	male	52	846
county	7	rural	female	53	233
county	7	rural	male	53	457
county	7	rural	female	54	256
county	7	rural	male	54	462
county	7	rural	female	55	885
county	7	rural	male	55	1386
county	7	rural	female	56	251
county	7	rural	male	56	513
county	7	rural	female	57	151
county	7	rural	male	57	346
county	7	rural	female	58	234
county	7	rural	male	58	464
county	7	rural	female	59	104
county	7	rural	male	59	273
county	7	rural	female	6	9402
county	7	rural	male	6	11097
county	7	rural	female	60	1827
county	7	rural	male	60	2955
county	7	rural	female	61	107
county	7	rural	male	61	200
county	7	rural	female	62	159
county	7	rural	male	62	320
county	7	rural	female	63	126
county	7	rural	male	63	278
county	7	rural	female	64	107
county	7	rural	male	64	219
county	7	rural	female	65	416
county	7	rural	male	65	669
county	7	rural	female	66	72
county	7	rural	male	66	159
county	7	rural	female	67	84
county	7	rural	male	67	199
county	7	rural	female	68	138
county	7	rural	male	68	268
county	7	rural	female	69	73
county	7	rural	male	69	111
county	7	rural	female	7	6465
county	7	rural	male	7	7736
county	7	rural	female	70	1035
county	7	rural	male	70	1563
county	7	rural	female	71	70
county	7	rural	male	71	98
county	7	rural	female	72	110
county	7	rural	male	72	184
county	7	rural	female	73	71
county	7	rural	male	73	146
county	7	rural	female	74	64
county	7	rural	male	74	143
county	7	rural	female	75	193
county	7	rural	male	75	291
county	7	rural	female	76	44
county	7	rural	male	76	101
county	7	rural	female	77	66
county	7	rural	male	77	90
county	7	rural	female	78	59
county	7	rural	male	78	109
county	7	rural	female	79	52
county	7	rural	male	79	73
county	7	rural	female	8	10086
county	7	rural	male	8	12247
county	7	rural	female	80+	1567
county	7	rural	male	80+	1794
county	7	rural	female	9	5894
county	7	rural	male	9	6847
county	7	rural	female	unspecified	115
county	7	rural	male	unspecified	160
county	7	urban	female	0	2019
county	7	urban	male	0	2160
county	7	urban	female	1	1559
county	7	urban	male	1	1709
county	7	urban	female	10	2567
county	7	urban	male	10	2867
county	7	urban	female	11	1473
county	7	urban	male	11	1562
county	7	urban	female	12	2126
county	7	urban	male	12	2615
county	7	urban	female	13	1671
county	7	urban	male	13	2167
county	7	urban	female	14	1850
county	7	urban	male	14	2248
county	7	urban	female	15	1969
county	7	urban	male	15	2228
county	7	urban	female	16	1737
county	7	urban	male	16	2089
county	7	urban	female	17	1435
county	7	urban	male	17	1642
county	7	urban	female	18	2500
county	7	urban	male	18	2712
county	7	urban	female	19	1328
county	7	urban	male	19	1301
county	7	urban	female	2	2212
county	7	urban	male	2	2553
county	7	urban	female	20	3100
county	7	urban	male	20	2842
county	7	urban	female	21	898
county	7	urban	male	21	953
county	7	urban	female	22	1546
county	7	urban	male	22	1406
county	7	urban	female	23	1114
county	7	urban	male	23	1099
county	7	urban	female	24	988
county	7	urban	male	24	1097
county	7	urban	female	25	2420
county	7	urban	male	25	2070
county	7	urban	female	26	926
county	7	urban	male	26	879
county	7	urban	female	27	963
county	7	urban	male	27	834
county	7	urban	female	28	1352
county	7	urban	male	28	1192
county	7	urban	female	29	602
county	7	urban	male	29	639
county	7	urban	female	3	2116
county	7	urban	male	3	2219
county	7	urban	female	30	2626
county	7	urban	male	30	2303
county	7	urban	female	31	311
county	7	urban	male	31	387
county	7	urban	female	32	724
county	7	urban	male	32	823
county	7	urban	female	33	408
county	7	urban	male	33	456
county	7	urban	female	34	342
county	7	urban	male	34	440
county	7	urban	female	35	1486
county	7	urban	male	35	1491
county	7	urban	female	36	465
county	7	urban	male	36	441
county	7	urban	female	37	383
county	7	urban	male	37	346
county	7	urban	female	38	644
county	7	urban	male	38	631
county	7	urban	female	39	246
county	7	urban	male	39	291
county	7	urban	female	4	2227
county	7	urban	male	4	2466
county	7	urban	female	40	1810
county	7	urban	male	40	1973
county	7	urban	female	41	159
county	7	urban	male	41	227
county	7	urban	female	42	308
county	7	urban	male	42	473
county	7	urban	female	43	175
county	7	urban	male	43	240
county	7	urban	female	44	135
county	7	urban	male	44	198
county	7	urban	female	45	719
county	7	urban	male	45	944
county	7	urban	female	46	173
county	7	urban	male	46	315
county	7	urban	female	47	157
county	7	urban	male	47	267
county	7	urban	female	48	272
county	7	urban	male	48	412
county	7	urban	female	49	114
county	7	urban	male	49	222
county	7	urban	female	5	2141
county	7	urban	male	5	2272
county	7	urban	female	50	1078
county	7	urban	male	50	1301
county	7	urban	female	51	76
county	7	urban	male	51	149
county	7	urban	female	52	159
county	7	urban	male	52	274
county	7	urban	female	53	95
county	7	urban	male	53	161
county	7	urban	female	54	91
county	7	urban	male	54	198
county	7	urban	female	55	324
county	7	urban	male	55	421
county	7	urban	female	56	134
county	7	urban	male	56	199
county	7	urban	female	57	86
county	7	urban	male	57	126
county	7	urban	female	58	109
county	7	urban	male	58	155
county	7	urban	female	59	55
county	7	urban	male	59	82
county	7	urban	female	6	2296
county	7	urban	male	6	2513
county	7	urban	female	60	793
county	7	urban	male	60	815
county	7	urban	female	61	41
county	7	urban	male	61	61
county	7	urban	female	62	62
county	7	urban	male	62	99
county	7	urban	female	63	66
county	7	urban	male	63	89
county	7	urban	female	64	56
county	7	urban	male	64	97
county	7	urban	female	65	216
county	7	urban	male	65	206
county	7	urban	female	66	40
county	7	urban	male	66	59
county	7	urban	female	67	61
county	7	urban	male	67	92
county	7	urban	female	68	70
county	7	urban	male	68	75
county	7	urban	female	69	29
county	7	urban	male	69	48
county	7	urban	female	7	2025
county	7	urban	male	7	2149
county	7	urban	female	70	559
county	7	urban	male	70	426
county	7	urban	female	71	28
county	7	urban	male	71	36
county	7	urban	female	72	56
county	7	urban	male	72	63
county	7	urban	female	73	34
county	7	urban	male	73	70
county	7	urban	female	74	30
county	7	urban	male	74	66
county	7	urban	female	75	119
county	7	urban	male	75	99
county	7	urban	female	76	27
county	7	urban	male	76	43
county	7	urban	female	77	37
county	7	urban	male	77	42
county	7	urban	female	78	44
county	7	urban	male	78	51
county	7	urban	female	79	32
county	7	urban	male	79	26
county	7	urban	female	8	2432
county	7	urban	male	8	2660
county	7	urban	female	80+	853
county	7	urban	male	80+	678
county	7	urban	female	9	1730
county	7	urban	male	9	1817
county	7	urban	female	unspecified	38
county	7	urban	male	unspecified	44
county	8	rural	female	0	4699
county	8	rural	male	0	5012
county	8	rural	female	1	4417
county	8	rural	male	1	4848
county	8	rural	female	10	14610
county	8	rural	male	10	19053
county	8	rural	female	11	6230
county	8	rural	male	11	7176
county	8	rural	female	12	11314
county	8	rural	male	12	16357
county	8	rural	female	13	5745
county	8	rural	male	13	8522
county	8	rural	female	14	8665
county	8	rural	male	14	13713
county	8	rural	female	15	6358
county	8	rural	male	15	10041
county	8	rural	female	16	7267
county	8	rural	male	16	12059
county	8	rural	female	17	3670
county	8	rural	male	17	6134
county	8	rural	female	18	7387
county	8	rural	male	18	12233
county	8	rural	female	19	2459
county	8	rural	male	19	3924
county	8	rural	female	2	10064
county	8	rural	male	2	10773
county	8	rural	female	20	7377
county	8	rural	male	20	10956
county	8	rural	female	21	1904
county	8	rural	male	21	2840
county	8	rural	female	22	2992
county	8	rural	male	22	4035
county	8	rural	female	23	1932
county	8	rural	male	23	2618
county	8	rural	female	24	2449
county	8	rural	male	24	2768
county	8	rural	female	25	5155
county	8	rural	male	25	4732
county	8	rural	female	26	2513
county	8	rural	male	26	2207
county	8	rural	female	27	1999
county	8	rural	male	27	1625
county	8	rural	female	28	4452
county	8	rural	male	28	3349
county	8	rural	female	29	1976
county	8	rural	male	29	1275
county	8	rural	female	3	7043
county	8	rural	male	3	7501
county	8	rural	female	30	8327
county	8	rural	male	30	7252
county	8	rural	female	31	1199
county	8	rural	male	31	895
county	8	rural	female	32	3002
county	8	rural	male	32	2156
county	8	rural	female	33	1462
county	8	rural	male	33	1070
county	8	rural	female	34	1577
county	8	rural	male	34	1155
county	8	rural	female	35	4850
county	8	rural	male	35	3638
county	8	rural	female	36	2300
county	8	rural	male	36	1541
county	8	rural	female	37	1532
county	8	rural	male	37	1156
county	8	rural	female	38	3200
county	8	rural	male	38	2466
county	8	rural	female	39	1561
county	8	rural	male	39	1201
county	8	rural	female	4	11543
county	8	rural	male	4	12319
county	8	rural	female	40	6664
county	8	rural	male	40	8070
county	8	rural	female	41	757
county	8	rural	male	41	860
county	8	rural	female	42	1771
county	8	rural	male	42	2071
county	8	rural	female	43	866
county	8	rural	male	43	937
county	8	rural	female	44	580
county	8	rural	male	44	782
county	8	rural	female	45	2609
county	8	rural	male	45	3109
county	8	rural	female	46	803
county	8	rural	male	46	1145
county	8	rural	female	47	693
county	8	rural	male	47	936
county	8	rural	female	48	1299
county	8	rural	male	48	1977
county	8	rural	female	49	633
county	8	rural	male	49	966
county	8	rural	female	5	8163
county	8	rural	male	5	8958
county	8	rural	female	50	3038
county	8	rural	male	50	5360
county	8	rural	female	51	259
county	8	rural	male	51	520
county	8	rural	female	52	485
county	8	rural	male	52	1152
county	8	rural	female	53	256
county	8	rural	male	53	587
county	8	rural	female	54	325
county	8	rural	male	54	652
county	8	rural	female	55	832
county	8	rural	male	55	1508
county	8	rural	female	56	366
county	8	rural	male	56	1007
county	8	rural	female	57	206
county	8	rural	male	57	463
county	8	rural	female	58	341
county	8	rural	male	58	771
county	8	rural	female	59	129
county	8	rural	male	59	404
county	8	rural	female	6	13123
county	8	rural	male	6	15280
county	8	rural	female	60	1603
county	8	rural	male	60	3629
county	8	rural	female	61	107
county	8	rural	male	61	263
county	8	rural	female	62	163
county	8	rural	male	62	501
county	8	rural	female	63	140
county	8	rural	male	63	352
county	8	rural	female	64	122
county	8	rural	male	64	376
county	8	rural	female	65	384
county	8	rural	male	65	773
county	8	rural	female	66	98
county	8	rural	male	66	223
county	8	rural	female	67	118
county	8	rural	male	67	272
county	8	rural	female	68	182
county	8	rural	male	68	369
county	8	rural	female	69	81
county	8	rural	male	69	163
county	8	rural	female	7	7596
county	8	rural	male	7	8650
county	8	rural	female	70	988
county	8	rural	male	70	1868
county	8	rural	female	71	75
county	8	rural	male	71	118
county	8	rural	female	72	134
county	8	rural	male	72	264
county	8	rural	female	73	93
county	8	rural	male	73	147
county	8	rural	female	74	80
county	8	rural	male	74	151
county	8	rural	female	75	245
county	8	rural	male	75	349
county	8	rural	female	76	85
county	8	rural	male	76	141
county	8	rural	female	77	74
county	8	rural	male	77	106
county	8	rural	female	78	118
county	8	rural	male	78	177
county	8	rural	female	79	79
county	8	rural	male	79	103
county	8	rural	female	8	14106
county	8	rural	male	8	17068
county	8	rural	female	80+	1381
county	8	rural	male	80+	1696
county	8	rural	female	9	7095
county	8	rural	male	9	8523
county	8	rural	female	unspecified	45
county	8	rural	male	unspecified	69
county	8	urban	female	0	1243
county	8	urban	male	0	1278
county	8	urban	female	1	989
county	8	urban	male	1	1019
county	8	urban	female	10	1989
county	8	urban	male	10	2284
county	8	urban	female	11	900
county	8	urban	male	11	1012
county	8	urban	female	12	1629
county	8	urban	male	12	2044
county	8	urban	female	13	1073
county	8	urban	male	13	1341
county	8	urban	female	14	1352
county	8	urban	male	14	1780
county	8	urban	female	15	1231
county	8	urban	male	15	1575
county	8	urban	female	16	1343
county	8	urban	male	16	1646
county	8	urban	female	17	859
county	8	urban	male	17	1089
county	8	urban	female	18	1611
county	8	urban	male	18	2246
county	8	urban	female	19	563
county	8	urban	male	19	762
county	8	urban	female	2	1652
county	8	urban	male	2	1746
county	8	urban	female	20	1773
county	8	urban	male	20	2114
county	8	urban	female	21	425
county	8	urban	male	21	540
county	8	urban	female	22	784
county	8	urban	male	22	885
county	8	urban	female	23	634
county	8	urban	male	23	606
county	8	urban	female	24	546
county	8	urban	male	24	544
county	8	urban	female	25	1381
county	8	urban	male	25	1226
county	8	urban	female	26	491
county	8	urban	male	26	488
county	8	urban	female	27	500
county	8	urban	male	27	485
county	8	urban	female	28	773
county	8	urban	male	28	656
county	8	urban	female	29	312
county	8	urban	male	29	319
county	8	urban	female	3	1323
county	8	urban	male	3	1489
county	8	urban	female	30	1639
county	8	urban	male	30	1606
county	8	urban	female	31	162
county	8	urban	male	31	213
county	8	urban	female	32	423
county	8	urban	male	32	411
county	8	urban	female	33	236
county	8	urban	male	33	252
county	8	urban	female	34	181
county	8	urban	male	34	234
county	8	urban	female	35	989
county	8	urban	male	35	859
county	8	urban	female	36	212
county	8	urban	male	36	205
county	8	urban	female	37	211
county	8	urban	male	37	220
county	8	urban	female	38	361
county	8	urban	male	38	281
county	8	urban	female	39	181
county	8	urban	male	39	181
county	8	urban	female	4	1664
county	8	urban	male	4	1791
county	8	urban	female	40	1152
county	8	urban	male	40	1306
county	8	urban	female	41	73
county	8	urban	male	41	126
county	8	urban	female	42	192
county	8	urban	male	42	257
county	8	urban	female	43	124
county	8	urban	male	43	142
county	8	urban	female	44	90
county	8	urban	male	44	110
county	8	urban	female	45	568
county	8	urban	male	45	577
county	8	urban	female	46	128
county	8	urban	male	46	172
county	8	urban	female	47	97
county	8	urban	male	47	164
county	8	urban	female	48	173
county	8	urban	male	48	224
county	8	urban	female	49	71
county	8	urban	male	49	137
county	8	urban	female	5	1385
county	8	urban	male	5	1564
county	8	urban	female	50	847
county	8	urban	male	50	850
county	8	urban	female	51	33
county	8	urban	male	51	78
county	8	urban	female	52	117
county	8	urban	male	52	166
county	8	urban	female	53	82
county	8	urban	male	53	101
county	8	urban	female	54	87
county	8	urban	male	54	109
county	8	urban	female	55	219
county	8	urban	male	55	302
county	8	urban	female	56	84
county	8	urban	male	56	123
county	8	urban	female	57	39
county	8	urban	male	57	59
county	8	urban	female	58	70
county	8	urban	male	58	91
county	8	urban	female	59	36
county	8	urban	male	59	49
county	8	urban	female	6	1648
county	8	urban	male	6	1887
county	8	urban	female	60	537
county	8	urban	male	60	619
county	8	urban	female	61	27
county	8	urban	male	61	39
county	8	urban	female	62	51
county	8	urban	male	62	77
county	8	urban	female	63	50
county	8	urban	male	63	48
county	8	urban	female	64	33
county	8	urban	male	64	56
county	8	urban	female	65	163
county	8	urban	male	65	157
county	8	urban	female	66	33
county	8	urban	male	66	37
county	8	urban	female	67	44
county	8	urban	male	67	64
county	8	urban	female	68	44
county	8	urban	male	68	66
county	8	urban	female	69	25
county	8	urban	male	69	32
county	8	urban	female	7	1359
county	8	urban	male	7	1521
county	8	urban	female	70	434
county	8	urban	male	70	427
county	8	urban	female	71	16
county	8	urban	male	71	29
county	8	urban	female	72	37
county	8	urban	male	72	56
county	8	urban	female	73	41
county	8	urban	male	73	48
county	8	urban	female	74	28
county	8	urban	male	74	28
county	8	urban	female	75	102
county	8	urban	male	75	93
county	8	urban	female	76	29
county	8	urban	male	76	36
county	8	urban	female	77	34
county	8	urban	male	77	30
county	8	urban	female	78	53
county	8	urban	male	78	42
county	8	urban	female	79	14
county	8	urban	male	79	20
county	8	urban	female	8	1791
county	8	urban	male	8	2010
county	8	urban	female	80+	615
county	8	urban	male	80+	534
county	8	urban	female	9	1016
county	8	urban	male	9	1181
county	8	urban	female	unspecified	29
county	8	urban	male	unspecified	29
county	9	rural	female	0	7113
county	9	rural	male	0	7039
county	9	rural	female	1	6532
county	9	rural	male	1	6609
county	9	rural	female	10	23076
county	9	rural	male	10	28828
county	9	rural	female	11	9327
county	9	rural	male	11	11003
county	9	rural	female	12	18408
county	9	rural	male	12	25118
county	9	rural	female	13	9095
county	9	rural	male	13	12554
county	9	rural	female	14	14124
county	9	rural	male	14	20961
county	9	rural	female	15	9390
county	9	rural	male	15	15437
county	9	rural	female	16	11217
county	9	rural	male	16	18577
county	9	rural	female	17	5765
county	9	rural	male	17	9279
county	9	rural	female	18	10634
county	9	rural	male	18	18467
county	9	rural	female	19	3558
county	9	rural	male	19	6063
county	9	rural	female	2	16317
county	9	rural	male	2	16633
county	9	rural	female	20	9006
county	9	rural	male	20	15413
county	9	rural	female	21	2791
county	9	rural	male	21	4680
county	9	rural	female	22	3858
county	9	rural	male	22	5611
county	9	rural	female	23	2436
county	9	rural	male	23	3307
county	9	rural	female	24	3365
county	9	rural	male	24	3648
county	9	rural	female	25	5706
county	9	rural	male	25	5478
county	9	rural	female	26	3426
county	9	rural	male	26	2855
county	9	rural	female	27	3028
county	9	rural	male	27	2147
county	9	rural	female	28	6437
county	9	rural	male	28	4183
county	9	rural	female	29	3324
county	9	rural	male	29	1862
county	9	rural	female	3	10634
county	9	rural	male	3	10901
county	9	rural	female	30	10720
county	9	rural	male	30	8680
county	9	rural	female	31	2307
county	9	rural	male	31	1455
county	9	rural	female	32	5154
county	9	rural	male	32	2912
county	9	rural	female	33	2409
county	9	rural	male	33	1452
county	9	rural	female	34	2693
county	9	rural	male	34	1658
county	9	rural	female	35	7122
county	9	rural	male	35	5059
county	9	rural	female	36	3558
county	9	rural	male	36	2054
county	9	rural	female	37	2612
county	9	rural	male	37	1739
county	9	rural	female	38	5632
county	9	rural	male	38	3875
county	9	rural	female	39	2796
county	9	rural	male	39	2008
county	9	rural	female	4	18440
county	9	rural	male	4	19180
county	9	rural	female	40	8478
county	9	rural	male	40	10315
county	9	rural	female	41	1587
county	9	rural	male	41	1509
county	9	rural	female	42	2900
county	9	rural	male	42	3155
county	9	rural	female	43	1513
county	9	rural	male	43	1655
county	9	rural	female	44	1037
county	9	rural	male	44	1236
county	9	rural	female	45	3546
county	9	rural	male	45	4637
county	9	rural	female	46	1242
county	9	rural	male	46	1735
county	9	rural	female	47	1056
county	9	rural	male	47	1472
county	9	rural	female	48	2159
county	9	rural	male	48	3229
county	9	rural	female	49	1176
county	9	rural	male	49	1749
county	9	rural	female	5	11776
county	9	rural	male	5	12532
county	9	rural	female	50	3536
county	9	rural	male	50	6653
county	9	rural	female	51	479
county	9	rural	male	51	949
county	9	rural	female	52	833
county	9	rural	male	52	1830
county	9	rural	female	53	432
county	9	rural	male	53	935
county	9	rural	female	54	476
county	9	rural	male	54	1060
county	9	rural	female	55	1068
county	9	rural	male	55	2228
county	9	rural	female	56	509
county	9	rural	male	56	1335
county	9	rural	female	57	295
county	9	rural	male	57	750
county	9	rural	female	58	494
county	9	rural	male	58	1157
county	9	rural	female	59	239
county	9	rural	male	59	547
county	9	rural	female	6	20725
county	9	rural	male	6	23398
county	9	rural	female	60	1681
county	9	rural	male	60	4769
county	9	rural	female	61	175
county	9	rural	male	61	521
county	9	rural	female	62	307
county	9	rural	male	62	845
county	9	rural	female	63	205
county	9	rural	male	63	565
county	9	rural	female	64	185
county	9	rural	male	64	487
county	9	rural	female	65	453
county	9	rural	male	65	1136
county	9	rural	female	66	98
county	9	rural	male	66	277
county	9	rural	female	67	130
county	9	rural	male	67	375
county	9	rural	female	68	220
county	9	rural	male	68	521
county	9	rural	female	69	129
county	9	rural	male	69	255
county	9	rural	female	7	11521
county	9	rural	male	7	12734
county	9	rural	female	70	1000
county	9	rural	male	70	2453
county	9	rural	female	71	97
county	9	rural	male	71	224
county	9	rural	female	72	230
county	9	rural	male	72	371
county	9	rural	female	73	99
county	9	rural	male	73	226
county	9	rural	female	74	118
county	9	rural	male	74	214
county	9	rural	female	75	238
county	9	rural	male	75	465
county	9	rural	female	76	97
county	9	rural	male	76	164
county	9	rural	female	77	91
county	9	rural	male	77	125
county	9	rural	female	78	159
county	9	rural	male	78	274
county	9	rural	female	79	123
county	9	rural	male	79	114
county	9	rural	female	8	22191
county	9	rural	male	8	26364
county	9	rural	female	80+	1642
county	9	rural	male	80+	2397
county	9	rural	female	9	11307
county	9	rural	male	9	13318
county	9	rural	female	unspecified	72
county	9	rural	male	unspecified	69
county	9	urban	female	0	1691
county	9	urban	male	0	1807
county	9	urban	female	1	1627
county	9	urban	male	1	1533
county	9	urban	female	10	4308
county	9	urban	male	10	5352
county	9	urban	female	11	1958
county	9	urban	male	11	2046
county	9	urban	female	12	3648
county	9	urban	male	12	4788
county	9	urban	female	13	2383
county	9	urban	male	13	2886
county	9	urban	female	14	3155
county	9	urban	male	14	4316
county	9	urban	female	15	2622
county	9	urban	male	15	3380
county	9	urban	female	16	2816
county	9	urban	male	16	4005
county	9	urban	female	17	1735
county	9	urban	male	17	2463
county	9	urban	female	18	3168
county	9	urban	male	18	4931
county	9	urban	female	19	1117
county	9	urban	male	19	1689
county	9	urban	female	2	3099
county	9	urban	male	2	3349
county	9	urban	female	20	2894
county	9	urban	male	20	4348
county	9	urban	female	21	688
county	9	urban	male	21	1045
county	9	urban	female	22	1291
county	9	urban	male	22	1716
county	9	urban	female	23	839
county	9	urban	male	23	1021
county	9	urban	female	24	856
county	9	urban	male	24	1035
county	9	urban	female	25	1898
county	9	urban	male	25	1879
county	9	urban	female	26	813
county	9	urban	male	26	877
county	9	urban	female	27	681
county	9	urban	male	27	571
county	9	urban	female	28	1258
county	9	urban	male	28	1086
county	9	urban	female	29	482
county	9	urban	male	29	387
county	9	urban	female	3	2513
county	9	urban	male	3	2711
county	9	urban	female	30	2424
county	9	urban	male	30	2175
county	9	urban	female	31	323
county	9	urban	male	31	262
county	9	urban	female	32	701
county	9	urban	male	32	603
county	9	urban	female	33	400
county	9	urban	male	33	347
county	9	urban	female	34	361
county	9	urban	male	34	315
county	9	urban	female	35	1803
county	9	urban	male	35	1451
county	9	urban	female	36	510
county	9	urban	male	36	418
county	9	urban	female	37	459
county	9	urban	male	37	338
county	9	urban	female	38	887
county	9	urban	male	38	590
county	9	urban	female	39	370
county	9	urban	male	39	274
county	9	urban	female	4	3442
county	9	urban	male	4	3690
county	9	urban	female	40	2018
county	9	urban	male	40	2070
county	9	urban	female	41	191
county	9	urban	male	41	192
county	9	urban	female	42	488
county	9	urban	male	42	463
county	9	urban	female	43	268
county	9	urban	male	43	272
county	9	urban	female	44	163
county	9	urban	male	44	182
county	9	urban	female	45	1076
county	9	urban	male	45	1134
county	9	urban	female	46	244
county	9	urban	male	46	285
county	9	urban	female	47	198
county	9	urban	male	47	225
county	9	urban	female	48	414
county	9	urban	male	48	469
county	9	urban	female	49	197
county	9	urban	male	49	248
county	9	urban	female	5	2606
county	9	urban	male	5	2901
county	9	urban	female	50	1250
county	9	urban	male	50	1413
county	9	urban	female	51	106
county	9	urban	male	51	125
county	9	urban	female	52	227
county	9	urban	male	52	294
county	9	urban	female	53	129
county	9	urban	male	53	181
county	9	urban	female	54	146
county	9	urban	male	54	188
county	9	urban	female	55	467
county	9	urban	male	55	585
county	9	urban	female	56	143
county	9	urban	male	56	213
county	9	urban	female	57	91
county	9	urban	male	57	133
county	9	urban	female	58	101
county	9	urban	male	58	182
county	9	urban	female	59	59
county	9	urban	male	59	91
county	9	urban	female	6	3705
county	9	urban	male	6	4185
county	9	urban	female	60	745
county	9	urban	male	60	1024
county	9	urban	female	61	32
county	9	urban	male	61	63
county	9	urban	female	62	104
county	9	urban	male	62	147
county	9	urban	female	63	51
county	9	urban	male	63	102
county	9	urban	female	64	45
county	9	urban	male	64	80
county	9	urban	female	65	243
county	9	urban	male	65	321
county	9	urban	female	66	42
county	9	urban	male	66	49
county	9	urban	female	67	53
county	9	urban	male	67	80
county	9	urban	female	68	72
county	9	urban	male	68	97
county	9	urban	female	69	24
county	9	urban	male	69	55
county	9	urban	female	7	2571
county	9	urban	male	7	2817
county	9	urban	female	70	524
county	9	urban	male	70	623
county	9	urban	female	71	25
county	9	urban	male	71	31
county	9	urban	female	72	59
county	9	urban	male	72	75
county	9	urban	female	73	40
county	9	urban	male	73	64
county	9	urban	female	74	37
county	9	urban	male	74	49
county	9	urban	female	75	117
county	9	urban	male	75	170
county	9	urban	female	76	37
county	9	urban	male	76	38
county	9	urban	female	77	25
county	9	urban	male	77	33
county	9	urban	female	78	48
county	9	urban	male	78	54
county	9	urban	female	79	19
county	9	urban	male	79	24
county	9	urban	female	8	4128
county	9	urban	male	8	4821
county	9	urban	female	80+	743
county	9	urban	male	80+	746
county	9	urban	female	9	2352
county	9	urban	male	9	2578
county	9	urban	female	unspecified	36
county	9	urban	male	unspecified	33
county	10	rural	male	38	832
county	10	rural	female	39	544
county	10	rural	male	39	502
county	10	rural	female	4	4126
county	10	rural	male	4	4209
county	10	rural	female	40	2303
county	10	rural	male	40	2253
county	10	rural	female	41	369
county	10	rural	male	41	414
county	10	rural	female	42	641
county	10	rural	male	42	802
county	10	rural	female	43	375
county	10	rural	male	43	426
county	10	rural	female	44	348
county	10	rural	male	44	318
county	10	rural	female	45	1111
county	10	rural	male	45	1131
county	10	rural	female	46	423
county	10	rural	male	46	523
county	10	rural	female	47	390
county	10	rural	male	47	454
county	10	rural	female	48	575
county	10	rural	male	48	695
county	10	rural	female	49	394
county	10	rural	male	49	417
county	10	rural	female	5	3858
county	10	rural	male	5	3962
county	10	rural	female	50	1741
county	10	rural	male	50	1760
county	10	rural	female	51	264
county	10	rural	male	51	316
county	10	rural	female	52	444
county	10	rural	male	52	500
county	10	rural	female	53	225
county	10	rural	male	53	327
county	10	rural	female	54	282
county	10	rural	male	54	334
county	10	rural	female	55	544
county	10	rural	male	55	646
county	10	rural	female	56	331
county	10	rural	male	56	447
county	10	rural	female	57	221
county	10	rural	male	57	330
county	10	rural	female	58	282
county	10	rural	male	58	401
county	10	rural	female	59	231
county	10	rural	male	59	227
county	10	rural	female	6	4020
county	10	rural	male	6	4308
county	10	rural	female	60	1274
county	10	rural	male	60	1373
county	10	rural	female	61	196
county	10	rural	male	61	215
county	10	rural	female	62	224
county	10	rural	male	62	243
county	10	rural	female	63	120
county	10	rural	male	63	190
county	10	rural	female	64	177
county	10	rural	male	64	239
county	10	rural	female	65	393
county	10	rural	male	65	487
county	10	rural	female	66	92
county	10	rural	male	66	163
county	10	rural	female	67	144
county	10	rural	male	67	200
county	10	rural	female	68	177
county	10	rural	male	68	234
county	10	rural	female	69	118
county	10	rural	male	69	151
county	10	rural	female	7	3364
county	10	rural	male	7	3479
county	10	rural	female	70	977
county	10	rural	male	70	1088
county	10	rural	female	71	98
county	10	rural	male	71	106
county	10	rural	female	72	168
county	10	rural	male	72	239
county	10	rural	female	73	109
county	10	rural	male	73	128
county	10	rural	female	74	96
county	10	rural	male	74	154
county	10	rural	female	75	240
county	10	rural	male	75	292
county	10	rural	female	76	100
county	10	rural	male	76	114
county	10	rural	female	77	57
county	10	rural	male	77	98
county	10	rural	female	78	117
county	10	rural	male	78	133
county	10	rural	female	79	65
county	10	rural	male	79	64
county	10	rural	female	8	4007
county	10	rural	male	8	4206
county	10	rural	female	80+	1521
county	10	rural	male	80+	1625
county	10	rural	female	9	2701
county	10	rural	male	9	2913
county	10	rural	female	unspecified	34
county	10	rural	male	unspecified	44
county	10	urban	female	0	907
county	10	urban	male	0	954
county	10	urban	female	1	749
county	10	urban	male	1	785
county	10	urban	female	10	1290
county	10	urban	male	10	1257
county	10	urban	female	11	698
county	10	urban	male	11	688
county	10	urban	female	12	1115
county	10	urban	male	12	1127
county	10	urban	female	13	1020
county	10	urban	male	13	907
county	10	urban	female	14	937
county	10	urban	male	14	956
county	10	urban	female	15	1130
county	10	urban	male	15	1000
county	10	urban	female	16	901
county	10	urban	male	16	994
county	10	urban	female	17	729
county	10	urban	male	17	881
county	10	urban	female	18	1053
county	10	urban	male	18	1145
county	10	urban	female	19	497
county	10	urban	male	19	563
county	10	urban	female	2	949
county	10	urban	male	2	1112
county	10	urban	female	20	1063
county	10	urban	male	20	1042
county	10	urban	female	21	389
county	10	urban	male	21	390
county	10	urban	female	22	567
county	10	urban	male	22	608
county	10	urban	female	23	409
county	10	urban	male	23	471
county	10	urban	female	24	474
county	10	urban	male	24	451
county	10	urban	female	25	813
county	10	urban	male	25	731
county	10	urban	female	26	351
county	10	urban	male	26	367
county	10	urban	female	27	322
county	10	urban	male	27	348
county	10	urban	female	28	468
county	10	urban	male	28	384
county	10	urban	female	29	176
county	10	urban	male	29	216
county	10	urban	female	3	1020
county	10	urban	male	3	1024
county	10	urban	female	30	862
county	10	urban	male	30	779
county	10	urban	female	31	161
county	10	urban	male	31	191
county	10	urban	female	32	314
county	10	urban	male	32	298
county	10	urban	female	33	179
county	10	urban	male	33	194
county	10	urban	female	34	164
county	10	urban	male	34	194
county	10	urban	female	35	611
county	10	urban	male	35	513
county	10	urban	female	36	219
county	10	urban	male	36	215
county	10	urban	female	37	156
county	10	urban	male	37	180
county	10	urban	female	38	282
county	10	urban	male	38	228
county	10	urban	female	39	101
county	10	urban	male	39	98
county	10	urban	female	4	994
county	10	urban	male	4	1077
county	10	urban	female	40	662
county	10	urban	male	40	565
county	10	urban	female	41	81
county	10	urban	male	41	124
county	10	urban	female	42	150
county	10	urban	male	42	190
county	10	urban	female	43	91
county	10	urban	male	43	88
county	10	urban	female	44	81
county	10	urban	male	44	99
county	10	urban	female	45	402
county	10	urban	male	45	374
county	10	urban	female	46	106
county	10	urban	male	46	139
county	10	urban	female	47	101
county	10	urban	male	47	121
county	10	urban	female	48	163
county	10	urban	male	48	147
county	10	urban	female	49	88
county	10	urban	male	49	105
county	10	urban	female	5	948
county	10	urban	male	5	988
county	10	urban	female	50	494
county	10	urban	male	50	434
county	10	urban	female	51	73
county	10	urban	male	51	79
county	10	urban	female	52	103
county	10	urban	male	52	126
county	10	urban	female	53	53
county	10	urban	male	53	67
county	10	urban	female	54	60
county	10	urban	male	54	84
county	10	urban	female	55	154
county	10	urban	male	55	167
county	10	urban	female	56	61
county	10	urban	male	56	87
county	10	urban	female	57	48
county	10	urban	male	57	95
county	10	urban	female	58	50
county	10	urban	male	58	74
county	10	urban	female	59	41
county	10	urban	male	59	45
county	10	urban	female	6	1006
county	10	urban	male	6	1065
county	10	urban	female	60	321
county	10	urban	male	60	269
county	10	urban	female	61	55
county	10	urban	male	61	28
county	10	urban	female	62	60
county	10	urban	male	62	61
county	10	urban	female	63	33
county	10	urban	male	63	34
county	10	urban	female	64	39
county	10	urban	male	64	42
county	10	urban	female	65	110
county	10	urban	male	65	116
county	10	urban	female	66	37
county	10	urban	male	66	41
county	10	urban	female	67	26
county	10	urban	male	67	38
county	10	urban	female	68	27
county	10	urban	male	68	55
county	10	urban	female	69	25
county	10	urban	male	69	21
county	10	urban	female	7	995
county	10	urban	male	7	1001
county	10	urban	female	70	326
county	10	urban	male	70	192
county	10	urban	female	71	25
county	10	urban	male	71	23
county	10	urban	female	72	37
county	10	urban	male	72	47
county	10	urban	female	73	31
county	10	urban	male	73	29
county	10	urban	female	74	15
county	10	urban	male	74	25
county	10	urban	female	75	69
county	10	urban	male	75	60
county	10	urban	female	76	18
county	10	urban	male	76	27
county	10	urban	female	77	21
county	10	urban	male	77	14
county	10	urban	female	78	28
county	10	urban	male	78	30
county	10	urban	female	79	11
county	10	urban	male	79	23
county	10	urban	female	8	1151
county	10	urban	male	8	1121
county	10	urban	female	80+	477
county	10	urban	male	80+	313
county	10	urban	female	9	889
county	10	urban	male	9	843
county	10	urban	female	unspecified	3
county	10	urban	male	unspecified	10
county	11	rural	female	0	1280
county	11	rural	male	0	1343
county	11	rural	female	1	1077
county	11	rural	male	1	1254
county	11	rural	female	10	1415
county	11	rural	male	10	1516
county	11	rural	female	11	761
county	11	rural	male	11	714
county	11	rural	female	12	1224
county	11	rural	male	12	1444
county	11	rural	female	13	1009
county	11	rural	male	13	1109
county	11	rural	female	14	864
county	11	rural	male	14	994
county	11	rural	female	15	975
county	11	rural	male	15	1097
county	11	rural	female	16	822
county	11	rural	male	16	909
county	11	rural	female	17	645
county	11	rural	male	17	803
county	11	rural	female	18	955
county	11	rural	male	18	1173
county	11	rural	female	19	594
county	11	rural	male	19	625
county	11	rural	female	2	1462
county	11	rural	male	2	1586
county	11	rural	female	20	1264
county	11	rural	male	20	1295
county	11	rural	female	21	501
county	11	rural	male	21	548
county	11	rural	female	22	652
county	11	rural	male	22	813
county	11	rural	female	23	485
county	11	rural	male	23	660
county	11	rural	female	24	552
county	11	rural	male	24	661
county	11	rural	female	25	1071
county	11	rural	male	25	1085
county	11	rural	female	26	434
county	11	rural	male	26	565
county	11	rural	female	27	369
county	11	rural	male	27	490
county	11	rural	female	28	561
county	11	rural	male	28	616
county	11	rural	female	29	259
county	11	rural	male	29	336
county	11	rural	female	3	1475
county	11	rural	male	3	1526
county	11	rural	female	30	997
county	11	rural	male	30	1100
county	11	rural	female	31	287
county	11	rural	male	31	302
county	11	rural	female	32	376
county	11	rural	male	32	451
county	11	rural	female	33	191
county	11	rural	male	33	274
county	11	rural	female	34	168
county	11	rural	male	34	268
county	11	rural	female	35	719
county	11	rural	male	35	718
county	11	rural	female	36	299
county	11	rural	male	36	356
county	11	rural	female	37	177
county	11	rural	male	37	249
county	11	rural	female	38	278
county	11	rural	male	38	346
county	11	rural	female	39	149
county	11	rural	male	39	188
county	11	rural	female	4	1450
county	11	rural	male	4	1510
county	11	rural	female	40	826
county	11	rural	male	40	846
county	11	rural	female	41	83
county	11	rural	male	41	128
county	11	rural	female	42	216
county	11	rural	male	42	332
county	11	rural	female	43	108
county	11	rural	male	43	207
county	11	rural	female	44	105
county	11	rural	male	44	141
county	11	rural	female	45	434
county	11	rural	male	45	455
county	11	rural	female	46	166
county	11	rural	male	46	218
county	11	rural	female	47	134
county	11	rural	male	47	166
county	11	rural	female	48	230
county	11	rural	male	48	274
county	11	rural	female	49	147
county	11	rural	male	49	195
county	11	rural	female	5	1390
county	11	rural	male	5	1470
county	11	rural	female	50	553
county	11	rural	male	50	688
county	11	rural	female	51	87
county	11	rural	male	51	128
county	11	rural	female	52	125
county	11	rural	male	52	191
county	11	rural	female	53	108
county	11	rural	male	53	148
county	11	rural	female	54	124
county	11	rural	male	54	180
county	11	rural	female	55	176
county	11	rural	male	55	260
county	11	rural	female	56	119
county	11	rural	male	56	191
county	11	rural	female	57	85
county	11	rural	male	57	128
county	11	rural	female	58	110
county	11	rural	male	58	139
county	11	rural	female	59	78
county	11	rural	male	59	87
county	11	rural	female	6	1269
county	11	rural	male	6	1335
county	11	rural	female	60	408
county	11	rural	male	60	463
county	11	rural	female	61	64
county	11	rural	male	61	76
county	11	rural	female	62	49
county	11	rural	male	62	97
county	11	rural	female	63	47
county	11	rural	male	63	77
county	11	rural	female	64	58
county	11	rural	male	64	73
county	11	rural	female	65	161
county	11	rural	male	65	156
county	11	rural	female	66	22
county	11	rural	male	66	61
county	11	rural	female	67	33
county	11	rural	male	67	85
county	11	rural	female	68	58
county	11	rural	male	68	68
county	11	rural	female	69	60
county	11	rural	male	69	63
county	11	rural	female	7	1227
county	11	rural	male	7	1288
county	11	rural	female	70	245
county	11	rural	male	70	314
county	11	rural	female	71	46
county	11	rural	male	71	31
county	11	rural	female	72	52
county	11	rural	male	72	61
county	11	rural	female	73	46
county	11	rural	male	73	45
county	11	rural	female	74	35
county	11	rural	male	74	35
county	11	rural	female	75	54
county	11	rural	male	75	85
county	11	rural	female	76	30
county	11	rural	male	76	48
county	11	rural	female	77	21
county	11	rural	male	77	30
county	11	rural	female	78	49
county	11	rural	male	78	43
county	11	rural	female	79	23
county	11	rural	male	79	29
county	11	rural	female	8	1288
county	11	rural	male	8	1346
county	11	rural	female	80+	513
county	11	rural	male	80+	409
county	11	rural	female	9	994
county	11	rural	male	9	1020
county	11	rural	female	unspecified	7
county	11	rural	male	unspecified	26
county	11	urban	female	0	931
county	11	urban	male	0	985
county	11	urban	female	1	764
county	11	urban	male	1	870
county	11	urban	female	10	864
county	11	urban	male	10	942
county	11	urban	female	11	653
county	11	urban	male	11	623
county	11	urban	female	12	850
county	11	urban	male	12	916
county	11	urban	female	13	829
county	11	urban	male	13	818
county	11	urban	female	14	773
county	11	urban	male	14	776
county	11	urban	female	15	815
county	11	urban	male	15	738
county	11	urban	female	16	787
county	11	urban	male	16	723
county	11	urban	female	17	707
county	11	urban	male	17	717
county	11	urban	female	18	836
county	11	urban	male	18	787
county	11	urban	female	19	575
county	11	urban	male	19	485
county	11	urban	female	2	909
county	11	urban	male	2	971
county	11	urban	female	20	1001
county	11	urban	male	20	771
county	11	urban	female	21	514
county	11	urban	male	21	460
county	11	urban	female	22	756
county	11	urban	male	22	588
county	11	urban	female	23	689
county	11	urban	male	23	485
county	11	urban	female	24	588
county	11	urban	male	24	543
county	11	urban	female	25	965
county	11	urban	male	25	747
county	11	urban	female	26	508
county	11	urban	male	26	474
county	11	urban	female	27	504
county	11	urban	male	27	478
county	11	urban	female	28	560
county	11	urban	male	28	496
county	11	urban	female	29	376
county	11	urban	male	29	358
county	11	urban	female	3	966
county	11	urban	male	3	1062
county	11	urban	female	30	865
county	11	urban	male	30	824
county	11	urban	female	31	224
county	11	urban	male	31	263
county	11	urban	female	32	393
county	11	urban	male	32	380
county	11	urban	female	33	216
county	11	urban	male	33	201
county	11	urban	female	34	214
county	11	urban	male	34	223
county	11	urban	female	35	658
county	11	urban	male	35	597
county	11	urban	female	36	233
county	11	urban	male	36	261
county	11	urban	female	37	201
county	11	urban	male	37	221
county	11	urban	female	38	306
county	11	urban	male	38	271
county	11	urban	female	39	168
county	11	urban	male	39	173
county	11	urban	female	4	914
county	11	urban	male	4	968
county	11	urban	female	40	637
county	11	urban	male	40	542
county	11	urban	female	41	92
county	11	urban	male	41	130
county	11	urban	female	42	214
county	11	urban	male	42	205
county	11	urban	female	43	135
county	11	urban	male	43	152
county	11	urban	female	44	129
county	11	urban	male	44	119
county	11	urban	female	45	400
county	11	urban	male	45	415
county	11	urban	female	46	175
county	11	urban	male	46	176
county	11	urban	female	47	164
county	11	urban	male	47	167
county	11	urban	female	48	179
county	11	urban	male	48	230
county	11	urban	female	49	128
county	11	urban	male	49	169
county	11	urban	female	5	883
county	11	urban	male	5	930
county	11	urban	female	50	456
county	11	urban	male	50	393
county	11	urban	female	51	103
county	11	urban	male	51	116
county	11	urban	female	52	116
county	11	urban	male	52	168
county	11	urban	female	53	92
county	11	urban	male	53	117
county	11	urban	female	54	69
county	11	urban	male	54	102
county	11	urban	female	55	192
county	11	urban	male	55	195
county	11	urban	female	56	85
county	11	urban	male	56	125
county	11	urban	female	57	63
county	11	urban	male	57	92
county	11	urban	female	58	62
county	11	urban	male	58	89
county	11	urban	female	59	63
county	11	urban	male	59	64
county	11	urban	female	6	861
county	11	urban	male	6	883
county	11	urban	female	60	299
county	11	urban	male	60	252
county	11	urban	female	61	45
county	11	urban	male	61	36
county	11	urban	female	62	80
county	11	urban	male	62	52
county	11	urban	female	63	39
county	11	urban	male	63	55
county	11	urban	female	64	41
county	11	urban	male	64	47
county	11	urban	female	65	108
county	11	urban	male	65	125
county	11	urban	female	66	35
county	11	urban	male	66	37
county	11	urban	female	67	21
county	11	urban	male	67	57
county	11	urban	female	68	46
county	11	urban	male	68	39
county	11	urban	female	69	29
county	11	urban	male	69	26
county	11	urban	female	7	850
county	11	urban	male	7	885
county	11	urban	female	70	238
county	11	urban	male	70	174
county	11	urban	female	71	29
county	11	urban	male	71	22
county	11	urban	female	72	32
county	11	urban	male	72	38
county	11	urban	female	73	24
county	11	urban	male	73	25
county	11	urban	female	74	39
county	11	urban	male	74	30
county	11	urban	female	75	53
county	11	urban	male	75	55
county	11	urban	female	76	40
county	11	urban	male	76	34
county	11	urban	female	77	19
county	11	urban	male	77	23
county	11	urban	female	78	29
county	11	urban	male	78	36
county	11	urban	female	79	30
county	11	urban	male	79	30
county	11	urban	female	8	845
county	11	urban	male	8	853
county	11	urban	female	80+	401
county	11	urban	male	80+	293
county	11	urban	female	9	738
county	11	urban	male	9	806
county	11	urban	female	unspecified	20
county	11	urban	male	unspecified	30
county	12	rural	female	40	12844
county	12	rural	male	40	11296
county	12	rural	female	41	3955
county	12	rural	male	41	4674
county	12	rural	female	42	4133
county	12	rural	male	42	4658
county	12	rural	female	43	3461
county	12	rural	male	43	3443
county	12	rural	female	44	3294
county	12	rural	male	44	3399
county	12	rural	female	45	9270
county	12	rural	male	45	8252
county	12	rural	female	46	5240
county	12	rural	male	46	5352
county	12	rural	female	47	4381
county	12	rural	male	47	4240
county	12	rural	female	48	4805
county	12	rural	male	48	4298
county	12	rural	female	49	4031
county	12	rural	male	49	4301
county	12	rural	female	5	20528
county	12	rural	male	5	21552
county	12	rural	female	50	10337
county	12	rural	male	50	8216
county	12	rural	female	51	2844
county	12	rural	male	51	3176
county	12	rural	female	52	3319
county	12	rural	male	52	3688
county	12	rural	female	53	2592
county	12	rural	male	53	2680
county	12	rural	female	54	2553
county	12	rural	male	54	2628
county	12	rural	female	55	5412
county	12	rural	male	55	5073
county	12	rural	female	56	2693
county	12	rural	male	56	3065
county	12	rural	female	57	3361
county	12	rural	male	57	3896
county	12	rural	female	58	2028
county	12	rural	male	58	2267
county	12	rural	female	59	2590
county	12	rural	male	59	2691
county	12	rural	female	6	19702
county	12	rural	male	6	19750
county	12	rural	female	60	7465
county	12	rural	male	60	6367
county	12	rural	female	61	1915
county	12	rural	male	61	2145
county	12	rural	female	62	1984
county	12	rural	male	62	2233
county	12	rural	female	63	1337
county	12	rural	male	63	1583
county	12	rural	female	64	1848
county	12	rural	male	64	1677
county	12	rural	female	65	3285
county	12	rural	male	65	2788
county	12	rural	female	66	969
county	12	rural	male	66	968
county	12	rural	female	67	1910
county	12	rural	male	67	1983
county	12	rural	female	68	1309
county	12	rural	male	68	1339
county	12	rural	female	69	1828
county	12	rural	male	69	1460
county	12	rural	female	7	18440
county	12	rural	male	7	18745
county	12	rural	female	70	5465
county	12	rural	male	70	3983
county	12	rural	female	71	914
county	12	rural	male	71	828
county	12	rural	female	72	967
county	12	rural	male	72	1215
county	12	rural	female	73	922
county	12	rural	male	73	1078
county	12	rural	female	74	1013
county	12	rural	male	74	960
county	12	rural	female	75	1927
county	12	rural	male	75	1741
county	12	rural	female	76	666
county	12	rural	male	76	835
county	12	rural	female	77	890
county	12	rural	male	77	776
county	12	rural	female	78	767
county	12	rural	male	78	794
county	12	rural	female	79	1246
county	12	rural	male	79	883
county	12	rural	female	8	17696
county	12	rural	male	8	17742
county	12	rural	female	80+	12161
county	12	rural	male	80+	8333
county	12	rural	female	9	19174
county	12	rural	male	9	18990
county	12	rural	female	unspecified	366
county	12	rural	male	unspecified	508
county	12	urban	female	0	2539
county	12	urban	male	0	2529
county	12	urban	female	1	2053
county	12	urban	male	1	2033
county	12	urban	female	10	2120
county	12	urban	male	10	2055
county	12	urban	female	11	1624
county	12	urban	male	11	1655
county	12	urban	female	12	2147
county	12	urban	male	12	2063
county	12	urban	female	13	2119
county	12	urban	male	13	1929
county	12	urban	female	14	1854
county	12	urban	male	14	1813
county	12	urban	female	15	1759
county	12	urban	male	15	1685
county	12	urban	female	16	1844
county	12	urban	male	16	1596
county	12	urban	female	17	1985
county	12	urban	male	17	1759
county	12	urban	female	18	2062
county	12	urban	male	18	1911
county	12	urban	female	19	1817
county	12	urban	male	19	1662
county	12	urban	female	2	2310
county	12	urban	male	2	2180
county	12	urban	female	20	2765
county	12	urban	male	20	2054
county	12	urban	female	21	2039
county	12	urban	male	21	1687
county	12	urban	female	22	2537
county	12	urban	male	22	2010
county	12	urban	female	23	2557
county	12	urban	male	23	2090
county	12	urban	female	24	2354
county	12	urban	male	24	2023
county	12	urban	female	25	3039
county	12	urban	male	25	2658
county	12	urban	female	26	2201
county	12	urban	male	26	1957
county	12	urban	female	27	2197
county	12	urban	male	27	2141
county	12	urban	female	28	2327
county	12	urban	male	28	2092
county	12	urban	female	29	1882
county	12	urban	male	29	1934
county	12	urban	female	3	2189
county	12	urban	male	3	2187
county	12	urban	female	30	3071
county	12	urban	male	30	3212
county	12	urban	female	31	1220
county	12	urban	male	31	1513
county	12	urban	female	32	1665
county	12	urban	male	32	1823
county	12	urban	female	33	1141
county	12	urban	male	33	1330
county	12	urban	female	34	1221
county	12	urban	male	34	1377
county	12	urban	female	35	1969
county	12	urban	male	35	2286
county	12	urban	female	36	1078
county	12	urban	male	36	1194
county	12	urban	female	37	959
county	12	urban	male	37	1115
county	12	urban	female	38	1206
county	12	urban	male	38	1288
county	12	urban	female	39	894
county	12	urban	male	39	1047
county	12	urban	female	4	2149
county	12	urban	male	4	2104
county	12	urban	female	40	1671
county	12	urban	male	40	1782
county	12	urban	female	41	626
county	12	urban	male	41	783
county	12	urban	female	42	770
county	12	urban	male	42	841
county	12	urban	female	43	574
county	12	urban	male	43	616
county	12	urban	female	44	568
county	12	urban	male	44	655
county	12	urban	female	45	1174
county	12	urban	male	45	1162
county	12	urban	female	46	714
county	12	urban	male	46	784
county	12	urban	female	47	625
county	12	urban	male	47	707
county	12	urban	female	48	639
county	12	urban	male	48	713
county	12	urban	female	49	630
county	12	urban	male	49	725
county	12	urban	female	5	2144
county	12	urban	male	5	2217
county	12	urban	female	50	1105
county	12	urban	male	50	1075
county	12	urban	female	51	428
county	12	urban	male	51	488
county	12	urban	female	52	452
county	12	urban	male	52	571
county	12	urban	female	53	355
county	12	urban	male	53	424
county	12	urban	female	54	323
county	12	urban	male	54	353
county	12	urban	female	55	573
county	12	urban	male	55	580
county	12	urban	female	56	338
county	12	urban	male	56	383
county	12	urban	female	57	387
county	12	urban	male	57	453
county	12	urban	female	58	226
county	12	urban	male	58	314
county	12	urban	female	59	282
county	12	urban	male	59	372
county	12	urban	female	6	1962
county	12	urban	male	6	1941
county	12	urban	female	60	629
county	12	urban	male	60	606
county	12	urban	female	61	227
county	12	urban	male	61	246
county	12	urban	female	62	210
county	12	urban	male	62	238
county	12	urban	female	63	152
county	12	urban	male	63	213
county	12	urban	female	64	215
county	12	urban	male	64	213
county	12	urban	female	65	287
county	12	urban	male	65	259
county	12	urban	female	66	109
county	12	urban	male	66	120
county	12	urban	female	67	216
county	12	urban	male	67	221
county	12	urban	female	68	125
county	12	urban	male	68	113
county	12	urban	female	69	173
county	12	urban	male	69	151
county	12	urban	female	7	1896
county	12	urban	male	7	1886
county	12	urban	female	70	405
county	12	urban	male	70	336
county	12	urban	female	71	115
county	12	urban	male	71	102
county	12	urban	female	72	108
county	12	urban	male	72	105
county	12	urban	female	73	111
county	12	urban	male	73	134
county	12	urban	female	74	125
county	12	urban	male	74	124
county	12	urban	female	75	154
county	12	urban	male	75	160
county	12	urban	female	76	73
county	12	urban	male	76	85
county	12	urban	female	77	99
county	12	urban	male	77	78
county	12	urban	female	78	80
county	12	urban	male	78	82
county	12	urban	female	79	129
county	12	urban	male	79	97
county	12	urban	female	8	1860
county	12	urban	male	8	1876
county	12	urban	female	80+	1222
county	12	urban	male	80+	805
county	12	urban	female	9	1983
county	12	urban	male	9	1961
county	12	urban	female	unspecified	77
county	12	urban	male	unspecified	116
county	13	rural	male	1	1913
county	13	rural	female	10	1797
county	13	rural	male	10	1831
county	13	rural	female	11	1302
county	13	rural	male	11	1285
county	13	rural	female	12	1601
county	13	rural	male	12	1680
county	13	rural	female	13	1552
county	13	rural	male	13	1695
county	13	rural	female	14	1532
county	13	rural	male	14	1449
county	13	rural	female	15	1563
county	13	rural	male	15	1535
county	13	rural	female	16	1408
county	13	rural	male	16	1308
county	13	rural	female	17	1302
county	13	rural	male	17	1339
county	13	rural	female	18	1322
county	13	rural	male	18	1241
county	13	rural	female	19	1105
county	13	rural	male	19	1130
county	13	rural	female	2	1963
county	13	rural	male	2	2032
county	13	rural	female	20	1537
county	13	rural	male	20	1311
county	13	rural	female	21	913
county	13	rural	male	21	879
county	13	rural	female	22	1087
county	13	rural	male	22	882
county	13	rural	female	23	1133
county	13	rural	male	23	923
county	13	rural	female	24	983
county	13	rural	male	24	714
county	13	rural	female	25	1531
county	13	rural	male	25	1154
county	13	rural	female	26	894
county	13	rural	male	26	737
county	13	rural	female	27	1001
county	13	rural	male	27	797
county	13	rural	female	28	919
county	13	rural	male	28	701
county	13	rural	female	29	899
county	13	rural	male	29	704
county	13	rural	female	3	2003
county	13	rural	male	3	1992
county	13	rural	female	30	1438
county	13	rural	male	30	1159
county	13	rural	female	31	648
county	13	rural	male	31	577
county	13	rural	female	32	819
county	13	rural	male	32	710
county	13	rural	female	33	609
county	13	rural	male	33	533
county	13	rural	female	34	700
county	13	rural	male	34	596
county	13	rural	female	35	1022
county	13	rural	male	35	927
county	13	rural	female	36	605
county	13	rural	male	36	566
county	13	rural	female	37	523
county	13	rural	male	37	469
county	13	rural	female	38	588
county	13	rural	male	38	473
county	13	rural	female	39	480
county	13	rural	male	39	449
county	13	rural	female	4	1919
county	13	rural	male	4	1928
county	13	rural	female	40	921
county	13	rural	male	40	748
county	13	rural	female	41	341
county	13	rural	male	41	358
county	13	rural	female	42	323
county	13	rural	male	42	333
county	13	rural	female	43	283
county	13	rural	male	43	233
county	13	rural	female	44	286
county	13	rural	male	44	290
county	13	rural	female	45	662
county	13	rural	male	45	589
county	13	rural	female	46	365
county	13	rural	male	46	365
county	13	rural	female	47	308
county	13	rural	male	47	269
county	13	rural	female	48	481
county	13	rural	male	48	361
county	13	rural	female	49	312
county	13	rural	male	49	277
county	13	rural	female	5	1938
county	13	rural	male	5	2035
county	13	rural	female	50	677
county	13	rural	male	50	563
county	13	rural	female	51	270
county	13	rural	male	51	287
county	13	rural	female	52	235
county	13	rural	male	52	290
county	13	rural	female	53	195
county	13	rural	male	53	181
county	13	rural	female	54	202
county	13	rural	male	54	190
county	13	rural	female	55	325
county	13	rural	male	55	263
county	13	rural	female	56	178
county	13	rural	male	56	204
county	13	rural	female	57	313
county	13	rural	male	57	291
county	13	rural	female	58	176
county	13	rural	male	58	155
county	13	rural	female	59	227
county	13	rural	male	59	177
county	13	rural	female	6	1935
county	13	rural	male	6	1865
county	13	rural	female	60	549
county	13	rural	male	60	445
county	13	rural	female	61	310
county	13	rural	male	61	270
county	13	rural	female	62	158
county	13	rural	male	62	138
county	13	rural	female	63	122
county	13	rural	male	63	115
county	13	rural	female	64	160
county	13	rural	male	64	111
county	13	rural	female	65	237
county	13	rural	male	65	181
county	13	rural	female	66	77
county	13	rural	male	66	84
county	13	rural	female	67	115
county	13	rural	male	67	125
county	13	rural	female	68	125
county	13	rural	male	68	138
county	13	rural	female	69	225
county	13	rural	male	69	129
county	13	rural	female	7	1745
county	13	rural	male	7	1799
county	13	rural	female	70	339
county	13	rural	male	70	244
county	13	rural	female	71	116
county	13	rural	male	71	91
county	13	rural	female	72	86
county	13	rural	male	72	85
county	13	rural	female	73	82
county	13	rural	male	73	63
county	13	rural	female	74	57
county	13	rural	male	74	66
county	13	rural	female	75	143
county	13	rural	male	75	99
county	13	rural	female	76	67
county	13	rural	male	76	68
county	13	rural	female	77	93
county	13	rural	male	77	88
county	13	rural	female	78	77
county	13	rural	male	78	78
county	13	rural	female	79	124
county	13	rural	male	79	98
county	13	rural	female	8	1754
county	13	rural	male	8	1758
county	13	rural	female	80+	992
county	13	rural	male	80+	707
county	13	rural	female	9	1704
county	13	rural	male	9	1723
county	13	rural	female	unspecified	26
county	13	rural	male	unspecified	37
county	13	urban	female	0	128
county	13	urban	male	0	129
county	13	urban	female	1	89
county	13	urban	male	1	122
county	13	urban	female	10	120
county	13	urban	male	10	133
county	13	urban	female	11	96
county	13	urban	male	11	98
county	13	urban	female	12	97
county	13	urban	male	12	109
county	13	urban	female	13	95
county	13	urban	male	13	98
county	13	urban	female	14	116
county	13	urban	male	14	113
county	13	urban	female	15	127
county	13	urban	male	15	108
county	13	urban	female	16	99
county	13	urban	male	16	97
county	13	urban	female	17	80
county	13	urban	male	17	82
county	13	urban	female	18	94
county	13	urban	male	18	77
county	13	urban	female	19	60
county	13	urban	male	19	63
county	13	urban	female	2	113
county	13	urban	male	2	131
county	13	urban	female	20	117
county	13	urban	male	20	95
county	13	urban	female	21	84
county	13	urban	male	21	78
county	13	urban	female	22	87
county	13	urban	male	22	68
county	13	urban	female	23	106
county	13	urban	male	23	74
county	13	urban	female	24	73
county	13	urban	male	24	73
county	13	urban	female	25	100
county	13	urban	male	25	92
county	13	urban	female	26	77
county	13	urban	male	26	63
county	13	urban	female	27	79
county	13	urban	male	27	71
county	13	urban	female	28	75
county	13	urban	male	28	51
county	13	urban	female	29	83
county	13	urban	male	29	64
county	13	urban	female	3	98
county	13	urban	male	3	125
county	13	urban	female	30	121
county	13	urban	male	30	109
county	13	urban	female	31	50
county	13	urban	male	31	57
county	13	urban	female	32	55
county	13	urban	male	32	66
county	13	urban	female	33	62
county	13	urban	male	33	49
county	13	urban	female	34	42
county	13	urban	male	34	53
county	13	urban	female	35	91
county	13	urban	male	35	76
county	13	urban	female	36	43
county	13	urban	male	36	50
county	13	urban	female	37	35
county	13	urban	male	37	35
county	13	urban	female	38	40
county	13	urban	male	38	41
county	13	urban	female	39	37
county	13	urban	male	39	46
county	13	urban	female	4	117
county	13	urban	male	4	120
county	13	urban	female	40	61
county	13	urban	male	40	51
county	13	urban	female	41	28
county	13	urban	male	41	40
county	13	urban	female	42	31
county	13	urban	male	42	34
county	13	urban	female	43	20
county	13	urban	male	43	24
county	13	urban	female	44	31
county	13	urban	male	44	22
county	13	urban	female	45	34
county	13	urban	male	45	64
county	13	urban	female	46	25
county	13	urban	male	46	30
county	13	urban	female	47	19
county	13	urban	male	47	18
county	13	urban	female	48	45
county	13	urban	male	48	33
county	13	urban	female	49	25
county	13	urban	male	49	17
county	13	urban	female	5	116
county	13	urban	male	5	122
county	13	urban	female	50	31
county	13	urban	male	50	44
county	13	urban	female	51	27
county	13	urban	male	51	25
county	13	urban	female	52	15
county	13	urban	male	52	22
county	13	urban	female	53	7
county	13	urban	male	53	12
county	13	urban	female	54	13
county	13	urban	male	54	18
county	13	urban	female	55	29
county	13	urban	male	55	18
county	13	urban	female	56	10
county	13	urban	male	56	8
county	13	urban	female	57	16
county	13	urban	male	57	18
county	13	urban	female	58	9
county	13	urban	male	58	20
county	13	urban	female	59	11
county	13	urban	male	59	6
county	13	urban	female	6	118
county	13	urban	male	6	77
county	13	urban	female	60	31
county	13	urban	male	60	32
county	13	urban	female	61	21
county	13	urban	male	61	26
county	13	urban	female	62	6
county	13	urban	male	62	9
county	13	urban	female	63	9
county	13	urban	male	63	10
county	13	urban	female	64	14
county	13	urban	male	64	9
county	13	urban	female	65	19
county	13	urban	male	65	15
county	13	urban	female	66	6
county	13	urban	male	66	13
county	13	urban	female	67	9
county	13	urban	male	67	7
county	13	urban	female	68	12
county	13	urban	male	68	11
county	13	urban	female	69	10
county	13	urban	male	69	7
county	13	urban	female	7	109
county	13	urban	male	7	95
county	13	urban	female	70	24
county	13	urban	male	70	13
county	13	urban	female	71	4
county	13	urban	male	71	3
county	13	urban	female	72	4
county	13	urban	male	72	6
county	13	urban	female	73	3
county	13	urban	male	73	2
county	13	urban	female	74	7
county	13	urban	male	74	2
county	13	urban	female	75	15
county	13	urban	male	75	6
county	13	urban	female	76	4
county	13	urban	male	76	6
county	13	urban	female	77	2
county	13	urban	male	77	6
county	13	urban	female	78	4
county	13	urban	male	78	8
county	13	urban	female	79	1
county	13	urban	male	79	7
county	13	urban	female	8	132
county	13	urban	male	8	105
county	13	urban	female	80+	80
county	13	urban	male	80+	43
county	13	urban	female	9	106
county	13	urban	male	9	116
county	13	urban	female	unspecified	0
county	13	urban	male	unspecified	0
county	14	rural	female	0	5514
county	14	rural	male	0	5574
county	14	rural	female	1	5223
county	14	rural	male	1	5318
county	14	rural	female	10	5801
county	14	rural	male	10	5818
county	14	rural	female	11	4700
county	14	rural	male	11	4655
county	14	rural	female	12	5678
county	14	rural	male	12	5733
county	14	rural	female	13	5574
county	14	rural	male	13	5600
county	14	rural	female	14	4924
county	14	rural	male	14	5084
county	14	rural	female	15	4557
county	14	rural	male	15	4845
county	14	rural	female	16	4287
county	14	rural	male	16	4631
county	14	rural	female	17	4326
county	14	rural	male	17	4815
county	14	rural	female	18	3993
county	14	rural	male	18	5047
county	14	rural	female	19	3660
county	14	rural	male	19	4190
county	14	rural	female	2	5588
county	14	rural	male	2	5717
county	14	rural	female	20	4140
county	14	rural	male	20	4437
county	14	rural	female	21	3310
county	14	rural	male	21	3265
county	14	rural	female	22	3682
county	14	rural	male	22	3628
county	14	rural	female	23	3815
county	14	rural	male	23	3523
county	14	rural	female	24	3243
county	14	rural	male	24	3100
county	14	rural	female	25	4250
county	14	rural	male	25	4019
county	14	rural	female	26	3323
county	14	rural	male	26	3001
county	14	rural	female	27	3352
county	14	rural	male	27	3220
county	14	rural	female	28	3415
county	14	rural	male	28	2975
county	14	rural	female	29	3199
county	14	rural	male	29	3001
county	14	rural	female	3	5841
county	14	rural	male	3	6036
county	14	rural	female	30	4651
county	14	rural	male	30	4309
county	14	rural	female	31	2540
county	14	rural	male	31	2544
county	14	rural	female	32	3077
county	14	rural	male	32	2784
county	14	rural	female	33	2401
county	14	rural	male	33	2211
county	14	rural	female	34	2510
county	14	rural	male	34	2515
county	14	rural	female	35	3849
county	14	rural	male	35	3571
county	14	rural	female	36	2338
county	14	rural	male	36	2172
county	14	rural	female	37	2109
county	14	rural	male	37	2102
county	14	rural	female	38	2524
county	14	rural	male	38	2156
county	14	rural	female	39	2132
county	14	rural	male	39	2039
county	14	rural	female	4	5905
county	14	rural	male	4	5959
county	14	rural	female	40	3469
county	14	rural	male	40	3027
county	14	rural	female	41	1882
county	14	rural	male	41	1758
county	14	rural	female	42	1840
county	14	rural	male	42	1765
county	14	rural	female	43	1678
county	14	rural	male	43	1469
county	14	rural	female	44	1526
county	14	rural	male	44	1463
county	14	rural	female	45	2917
county	14	rural	male	45	2568
county	14	rural	female	46	2146
county	14	rural	male	46	2035
county	14	rural	female	47	1658
county	14	rural	male	47	1448
county	14	rural	female	48	1589
county	14	rural	male	48	1351
county	14	rural	female	49	1631
county	14	rural	male	49	1574
county	14	rural	female	5	6085
county	14	rural	male	5	6223
county	14	rural	female	50	2776
county	14	rural	male	50	2082
county	14	rural	female	51	1192
county	14	rural	male	51	1220
county	14	rural	female	52	1235
county	14	rural	male	52	1180
county	14	rural	female	53	881
county	14	rural	male	53	847
county	14	rural	female	54	941
county	14	rural	male	54	850
county	14	rural	female	55	1684
county	14	rural	male	55	1480
county	14	rural	female	56	1062
county	14	rural	male	56	1108
county	14	rural	female	57	1319
county	14	rural	male	57	1421
county	14	rural	female	58	799
county	14	rural	male	58	724
county	14	rural	female	59	1046
county	14	rural	male	59	869
county	14	rural	female	6	5751
county	14	rural	male	6	5972
county	14	rural	female	60	2115
county	14	rural	male	60	1582
county	14	rural	female	61	850
county	14	rural	male	61	773
county	14	rural	female	62	656
county	14	rural	male	62	706
county	14	rural	female	63	580
county	14	rural	male	63	607
county	14	rural	female	64	736
county	14	rural	male	64	585
county	14	rural	female	65	1165
county	14	rural	male	65	899
county	14	rural	female	66	395
county	14	rural	male	66	394
county	14	rural	female	67	609
county	14	rural	male	67	628
county	14	rural	female	68	471
county	14	rural	male	68	407
county	14	rural	female	69	709
county	14	rural	male	69	495
county	14	rural	female	7	5618
county	14	rural	male	7	5723
county	14	rural	female	70	1547
county	14	rural	male	70	1039
county	14	rural	female	71	449
county	14	rural	male	71	370
county	14	rural	female	72	347
county	14	rural	male	72	392
county	14	rural	female	73	407
county	14	rural	male	73	457
county	14	rural	female	74	445
county	14	rural	male	74	411
county	14	rural	female	75	640
county	14	rural	male	75	535
county	14	rural	female	76	289
county	14	rural	male	76	311
county	14	rural	female	77	272
county	14	rural	male	77	285
county	14	rural	female	78	315
county	14	rural	male	78	288
county	14	rural	female	79	538
county	14	rural	male	79	371
county	14	rural	female	8	5307
county	14	rural	male	8	5345
county	14	rural	female	80+	4771
county	14	rural	male	80+	2971
county	14	rural	female	9	5780
county	14	rural	male	9	5922
county	14	rural	female	unspecified	102
county	14	rural	male	unspecified	116
county	14	urban	female	0	971
county	14	urban	male	0	1016
county	14	urban	female	1	899
county	14	urban	male	1	857
county	14	urban	female	10	890
county	14	urban	male	10	887
county	14	urban	female	11	798
county	14	urban	male	11	753
county	14	urban	female	12	925
county	14	urban	male	12	899
county	14	urban	female	13	903
county	14	urban	male	13	844
county	14	urban	female	14	789
county	14	urban	male	14	734
county	14	urban	female	15	699
county	14	urban	male	15	702
county	14	urban	female	16	841
county	14	urban	male	16	690
county	14	urban	female	17	851
county	14	urban	male	17	729
county	14	urban	female	18	947
county	14	urban	male	18	805
county	14	urban	female	19	827
county	14	urban	male	19	758
county	14	urban	female	2	889
county	14	urban	male	2	894
county	14	urban	female	20	1100
county	14	urban	male	20	897
county	14	urban	female	21	894
county	14	urban	male	21	780
county	14	urban	female	22	1080
county	14	urban	male	22	858
county	14	urban	female	23	1165
county	14	urban	male	23	870
county	14	urban	female	24	1038
county	14	urban	male	24	848
county	14	urban	female	25	1202
county	14	urban	male	25	1149
county	14	urban	female	26	975
county	14	urban	male	26	892
county	14	urban	female	27	876
county	14	urban	male	27	911
county	14	urban	female	28	971
county	14	urban	male	28	885
county	14	urban	female	29	805
county	14	urban	male	29	827
county	14	urban	female	3	858
county	14	urban	male	3	872
county	14	urban	female	30	1233
county	14	urban	male	30	1196
county	14	urban	female	31	542
county	14	urban	male	31	604
county	14	urban	female	32	759
county	14	urban	male	32	789
county	14	urban	female	33	530
county	14	urban	male	33	541
county	14	urban	female	34	579
county	14	urban	male	34	573
county	14	urban	female	35	889
county	14	urban	male	35	977
county	14	urban	female	36	493
county	14	urban	male	36	547
county	14	urban	female	37	479
county	14	urban	male	37	492
county	14	urban	female	38	576
county	14	urban	male	38	566
county	14	urban	female	39	439
county	14	urban	male	39	510
county	14	urban	female	4	891
county	14	urban	male	65	125
county	14	urban	female	66	58
county	14	urban	male	66	50
county	14	urban	female	67	62
county	14	urban	male	67	68
county	14	urban	female	68	78
county	14	urban	male	68	55
county	14	urban	female	69	79
county	14	urban	male	69	65
county	14	urban	female	7	814
county	14	urban	male	7	846
county	14	urban	female	70	195
county	14	urban	male	70	124
county	14	urban	female	71	60
county	14	urban	male	71	38
county	14	urban	female	72	37
county	14	urban	male	72	49
county	14	urban	female	73	43
county	14	urban	male	73	48
county	14	urban	female	74	48
county	14	urban	male	74	59
county	14	urban	female	75	83
county	14	urban	male	75	68
county	14	urban	female	76	48
county	14	urban	male	76	38
county	14	urban	female	77	37
county	14	urban	male	77	40
county	14	urban	female	78	47
county	14	urban	male	78	28
county	14	urban	female	79	49
county	14	urban	male	79	38
county	14	urban	female	8	831
county	14	urban	male	8	709
county	14	urban	female	80+	591
county	14	urban	male	80+	389
county	14	urban	female	9	914
county	14	urban	male	9	895
county	14	urban	female	unspecified	12
county	14	urban	male	unspecified	23
county	15	rural	female	0	14225
county	15	rural	male	0	14490
county	15	rural	female	1	13685
county	15	rural	male	1	13869
county	15	rural	female	10	13973
county	15	rural	male	10	14578
county	15	rural	female	11	11571
county	15	rural	male	11	11561
county	15	rural	female	12	12850
county	15	rural	male	12	13818
county	15	rural	female	13	13471
county	15	rural	male	13	13794
county	15	rural	female	14	11836
county	15	rural	male	14	12284
county	15	rural	female	15	12292
county	15	rural	male	15	12623
county	15	rural	female	16	10694
county	15	rural	male	16	10701
county	15	rural	female	17	10601
county	15	rural	male	17	11535
county	15	rural	female	18	9207
county	15	rural	male	18	10230
county	15	rural	female	19	8100
county	15	rural	male	19	8638
county	15	rural	female	2	14615
county	15	rural	male	2	14787
county	15	rural	female	20	8198
county	15	rural	male	20	7409
county	15	rural	female	21	6267
county	15	rural	male	21	5457
county	15	rural	female	22	6575
county	15	rural	male	22	4975
county	15	rural	female	23	6691
county	15	rural	male	23	4650
county	15	rural	female	24	5620
county	15	rural	male	24	3639
county	15	rural	female	25	7495
county	15	rural	male	25	4587
county	15	rural	female	26	5236
county	15	rural	male	26	3247
county	15	rural	female	27	5915
county	15	rural	male	27	3792
county	15	rural	female	28	5312
county	15	rural	male	28	3041
county	15	rural	female	29	5654
county	15	rural	male	29	3693
county	15	rural	female	3	14355
county	15	rural	male	3	14559
county	15	rural	female	30	7277
county	15	rural	male	30	4460
county	15	rural	female	31	4613
county	15	rural	male	31	3471
county	15	rural	female	32	4929
county	15	rural	male	32	3315
county	15	rural	female	33	4309
county	15	rural	male	33	2796
county	15	rural	female	34	4864
county	15	rural	male	34	3196
county	15	rural	female	35	7299
county	15	rural	male	35	5076
county	15	rural	female	36	4191
county	15	rural	male	36	3079
county	15	rural	female	37	3917
county	15	rural	male	37	3033
county	15	rural	female	38	3813
county	15	rural	male	38	2646
county	15	rural	female	39	3982
county	15	rural	male	39	2875
county	15	rural	female	4	14234
county	15	rural	male	4	14834
county	15	rural	female	40	5571
county	15	rural	male	40	3596
county	15	rural	female	41	3329
county	15	rural	male	41	2484
county	15	rural	female	42	2720
county	15	rural	male	42	2189
county	15	rural	female	43	2339
county	15	rural	male	43	1688
county	15	rural	female	44	2438
county	15	rural	male	44	1986
county	15	rural	female	45	4169
county	15	rural	male	45	3036
county	15	rural	female	46	3187
county	15	rural	male	46	2456
county	15	rural	female	47	2578
county	15	rural	male	47	1899
county	15	rural	female	48	2478
county	15	rural	male	48	1580
county	15	rural	female	49	2764
county	15	rural	male	49	1913
county	15	rural	female	5	15000
county	15	rural	male	5	15690
county	15	rural	female	50	3973
county	15	rural	male	50	2602
county	15	rural	female	51	2162
county	15	rural	male	51	1731
county	15	rural	female	52	2014
county	15	rural	male	52	1737
county	15	rural	female	53	1836
county	15	rural	male	53	1456
county	15	rural	female	54	1935
county	15	rural	male	54	1534
county	15	rural	female	55	2479
county	15	rural	male	55	1946
county	15	rural	female	56	1768
county	15	rural	male	56	1614
county	15	rural	female	57	2458
county	15	rural	male	57	2295
county	15	rural	female	58	1505
county	15	rural	male	58	1134
county	15	rural	female	59	2420
county	15	rural	male	59	1544
county	15	rural	female	6	15003
county	15	rural	male	6	15358
county	15	rural	female	60	3319
county	15	rural	male	60	2348
county	15	rural	female	61	1714
county	15	rural	male	61	1376
county	15	rural	female	62	1142
county	15	rural	male	62	1103
county	15	rural	female	63	2348
county	15	rural	male	63	1522
county	15	rural	female	64	1806
county	15	rural	male	64	1153
county	15	rural	female	65	1908
county	15	rural	male	65	1402
county	15	rural	female	66	771
county	15	rural	male	66	778
county	15	rural	female	67	1164
county	15	rural	male	67	1120
county	15	rural	female	68	922
county	15	rural	male	68	872
county	15	rural	female	69	1601
county	15	rural	male	69	1074
county	15	rural	female	7	14392
county	15	rural	male	7	14587
county	15	rural	female	70	2567
county	15	rural	male	70	1885
county	15	rural	female	71	865
county	15	rural	male	71	687
county	15	rural	female	72	655
county	15	rural	male	72	759
county	15	rural	female	73	838
county	15	rural	male	73	778
county	15	rural	female	74	1479
county	15	rural	male	74	1056
county	15	rural	female	75	998
county	15	rural	male	75	872
county	15	rural	female	76	431
county	15	rural	male	76	561
county	15	rural	female	77	478
county	15	rural	male	77	530
county	15	rural	female	78	537
county	15	rural	male	78	516
county	15	rural	female	79	1174
county	15	rural	male	79	789
county	15	rural	female	8	13771
county	15	rural	male	8	13889
county	15	rural	female	80+	9296
county	15	rural	male	80+	6802
county	15	rural	female	9	13527
county	15	rural	male	9	14038
county	15	rural	female	unspecified	200
county	15	rural	male	unspecified	202
county	15	urban	female	0	1832
county	15	urban	male	0	1888
county	15	urban	female	1	1699
county	15	urban	male	1	1709
county	15	urban	female	10	1908
county	15	urban	male	10	1957
county	15	urban	female	11	1573
county	15	urban	male	11	1596
county	15	urban	female	12	1830
county	15	urban	male	12	1877
county	15	urban	female	13	1877
county	15	urban	male	13	1866
county	15	urban	female	14	1640
county	15	urban	male	14	1690
county	15	urban	female	15	1777
county	15	urban	male	15	1805
county	15	urban	female	16	1699
county	15	urban	male	16	1509
county	15	urban	female	17	1891
county	15	urban	male	17	1739
county	15	urban	female	18	1639
county	15	urban	male	18	1838
county	15	urban	female	19	1468
county	15	urban	male	19	1533
county	15	urban	female	2	1757
county	15	urban	male	2	1783
county	15	urban	female	20	1761
county	15	urban	male	20	1624
county	15	urban	female	21	1279
county	15	urban	male	21	1226
county	15	urban	female	22	1556
county	15	urban	male	22	1357
county	15	urban	female	23	1490
county	15	urban	female	34	896
county	15	urban	male	34	795
county	15	urban	female	35	1272
county	15	urban	male	35	1218
county	15	urban	female	36	708
county	15	urban	male	36	683
county	15	urban	female	37	670
county	15	urban	male	37	653
county	15	urban	female	38	754
county	15	urban	male	38	665
county	15	urban	female	39	681
county	15	urban	male	39	660
county	15	urban	female	4	1745
county	15	urban	male	4	1808
county	15	urban	female	40	1001
county	15	urban	male	40	931
county	15	urban	female	41	522
county	15	urban	male	41	532
county	15	urban	female	42	539
county	15	urban	male	42	518
county	15	urban	female	43	451
county	15	urban	male	43	452
county	15	urban	female	44	400
county	15	urban	male	44	442
county	15	urban	female	45	748
county	15	urban	male	45	726
county	15	urban	female	46	548
county	15	urban	male	46	509
county	15	urban	female	47	433
county	15	urban	male	47	425
county	15	urban	female	48	453
county	15	urban	male	48	371
county	15	urban	female	49	400
county	15	urban	male	49	414
county	15	urban	female	5	1760
county	15	urban	male	5	1863
county	15	urban	female	50	669
county	15	urban	male	50	592
county	15	urban	female	51	361
county	15	urban	male	51	350
county	15	urban	female	52	282
county	15	urban	male	52	360
county	15	urban	female	53	248
county	15	urban	male	53	295
county	15	urban	female	54	256
county	15	urban	male	54	275
county	15	urban	female	55	349
county	15	urban	male	55	356
county	15	urban	female	56	257
county	15	urban	male	56	275
county	15	urban	female	57	342
county	15	urban	male	57	353
county	15	urban	female	58	197
county	15	urban	male	58	212
county	15	urban	female	59	315
county	15	urban	male	59	248
county	15	urban	female	6	1703
county	15	urban	male	6	1774
county	15	urban	female	60	479
county	15	urban	male	60	413
county	15	urban	female	61	214
county	15	urban	male	61	223
county	15	urban	female	62	150
county	15	urban	male	62	176
county	15	urban	female	63	330
county	15	urban	male	63	203
county	15	urban	female	64	257
county	15	urban	male	64	178
county	15	urban	female	65	244
county	15	urban	male	65	218
county	15	urban	female	66	105
county	15	urban	male	66	105
county	15	urban	female	67	172
county	15	urban	male	67	164
county	15	urban	female	68	121
county	15	urban	male	68	141
county	15	urban	female	69	215
county	15	urban	male	69	159
county	15	urban	female	7	1669
county	15	urban	male	7	1724
county	15	urban	female	70	371
county	15	urban	male	70	261
county	15	urban	female	71	124
county	15	urban	male	71	112
county	15	urban	female	72	102
county	15	urban	male	72	114
county	15	urban	female	73	114
county	15	urban	male	73	119
county	15	urban	female	74	145
county	15	urban	male	74	132
county	15	urban	female	75	142
county	15	urban	male	75	132
county	15	urban	female	76	64
county	15	urban	male	76	88
county	15	urban	female	77	74
county	15	urban	male	77	61
county	15	urban	female	78	61
county	15	urban	male	78	67
county	15	urban	female	79	178
county	15	urban	male	79	115
county	15	urban	female	8	1710
county	15	urban	male	8	1616
county	15	urban	female	80+	1533
county	15	urban	male	80+	922
county	15	urban	female	9	1779
county	15	urban	male	9	1843
county	15	urban	female	unspecified	29
county	15	urban	male	unspecified	42
county	16	rural	male	18	6671
county	16	rural	female	19	4695
county	16	rural	male	19	6025
county	16	rural	female	2	7376
county	16	rural	male	2	7609
county	16	rural	female	20	4742
county	16	rural	male	20	5389
county	16	rural	female	21	3622
county	16	rural	male	21	3953
county	16	rural	female	22	3966
county	16	rural	male	22	3832
county	16	rural	female	23	4047
county	16	rural	male	23	3410
county	16	rural	female	24	3377
county	16	rural	male	24	2735
county	16	rural	female	25	4274
county	16	rural	male	25	3381
county	16	rural	female	26	3318
county	16	rural	male	26	2617
county	16	rural	female	27	3588
county	16	rural	male	27	2760
county	16	rural	female	28	3347
county	16	rural	male	28	2297
county	16	rural	female	29	3784
county	16	rural	male	29	2704
county	16	rural	female	3	7213
county	16	rural	male	3	7421
county	16	rural	female	30	4627
county	16	rural	male	30	3211
county	16	rural	female	31	2990
county	16	rural	male	31	2566
county	16	rural	female	32	3359
county	16	rural	male	32	2284
county	16	rural	female	33	2795
county	16	rural	male	33	2040
county	16	rural	female	34	2959
county	16	rural	male	34	2202
county	16	rural	female	35	3964
county	16	rural	male	35	2956
county	16	rural	female	36	2540
county	16	rural	male	36	2023
county	16	rural	female	37	2467
county	16	rural	male	37	1970
county	16	rural	female	38	2495
county	16	rural	male	38	1834
county	16	rural	female	39	2784
county	16	rural	male	39	2029
county	16	rural	female	4	7504
county	16	rural	male	4	7811
county	16	rural	female	40	3541
county	16	rural	male	40	2416
county	16	rural	female	41	2135
county	16	rural	male	41	1672
county	16	rural	female	42	2077
county	16	rural	male	42	1569
county	16	rural	female	43	1693
county	16	rural	male	43	1272
county	16	rural	female	44	1760
county	16	rural	male	44	1374
county	16	rural	female	45	3065
county	16	rural	male	45	2111
county	16	rural	female	46	2389
county	16	rural	male	46	1816
county	16	rural	female	47	2024
county	16	rural	male	47	1422
county	16	rural	female	48	1783
county	16	rural	male	48	1202
county	16	rural	female	49	2108
county	16	rural	male	49	1655
county	16	rural	female	5	7823
county	16	rural	male	5	8295
county	16	rural	female	50	2805
county	16	rural	male	50	2070
county	16	rural	female	51	1850
county	16	rural	male	51	1544
county	16	rural	female	52	1614
county	16	rural	male	52	1470
county	16	rural	female	53	1552
county	16	rural	male	53	1217
county	16	rural	female	54	1458
county	16	rural	male	54	1094
county	16	rural	female	55	1766
county	16	rural	male	55	1440
county	16	rural	female	56	1426
county	16	rural	male	56	1176
county	16	rural	female	57	2346
county	16	rural	male	57	1814
county	16	rural	female	58	1006
county	16	rural	male	58	801
county	16	rural	female	59	1500
county	16	rural	male	59	1106
county	16	rural	female	6	7431
county	16	rural	male	6	7771
county	16	rural	female	60	1926
county	16	rural	male	60	1647
county	16	rural	female	61	1366
county	16	rural	male	61	1163
county	16	rural	female	62	815
county	16	rural	male	62	851
county	16	rural	female	63	932
county	16	rural	male	63	866
county	16	rural	female	64	1071
county	16	rural	male	64	832
county	16	rural	female	65	1105
county	16	rural	male	65	741
county	16	rural	female	66	729
county	16	rural	male	66	461
county	16	rural	female	67	1088
county	16	rural	male	67	851
county	16	rural	female	68	621
county	16	rural	male	68	509
county	16	rural	female	69	1141
county	16	rural	male	69	686
county	16	rural	female	7	7701
county	16	rural	male	7	7803
county	16	rural	female	70	1513
county	16	rural	male	70	1144
county	16	rural	female	71	707
county	16	rural	male	71	572
county	16	rural	female	72	489
county	16	rural	male	72	604
county	16	rural	female	73	593
county	16	rural	male	73	610
county	16	rural	female	74	582
county	16	rural	male	74	494
county	16	rural	female	75	648
county	16	rural	male	75	520
county	16	rural	female	76	300
county	16	rural	male	76	311
county	16	rural	female	77	480
county	16	rural	male	77	401
county	16	rural	female	78	351
county	16	rural	male	78	311
county	16	rural	female	79	945
county	16	rural	male	79	432
county	16	rural	female	8	7193
county	16	rural	male	8	7278
county	16	rural	female	80+	6763
county	16	rural	male	80+	4295
county	16	rural	female	9	7747
county	16	rural	male	9	8036
county	16	rural	female	unspecified	147
county	16	rural	male	unspecified	161
county	16	urban	female	0	7783
county	16	urban	male	0	7742
county	16	urban	female	1	7014
county	16	urban	male	1	7157
county	16	urban	female	10	6586
county	16	urban	male	10	6905
county	16	urban	female	11	5682
county	16	urban	male	11	5811
county	16	urban	female	12	6329
county	16	urban	male	12	6579
county	16	urban	female	13	6702
county	16	urban	male	13	6762
county	16	urban	female	14	6022
county	16	urban	male	14	6173
county	16	urban	female	15	5705
county	16	urban	male	15	5875
county	16	urban	female	16	5298
county	16	urban	male	16	5472
county	16	urban	female	17	5670
county	16	urban	male	17	6028
county	16	urban	female	18	5522
county	16	urban	male	18	6101
county	16	urban	female	19	5413
county	16	urban	male	19	5973
county	16	urban	female	2	7372
county	16	urban	male	2	7334
county	16	urban	female	20	6791
county	16	urban	male	20	6615
county	16	urban	female	21	5446
county	16	urban	male	21	5306
county	16	urban	female	22	6471
county	16	urban	male	22	6024
county	16	urban	female	23	6475
county	16	urban	male	23	6081
county	16	urban	female	24	5766
county	16	urban	male	24	5684
county	16	urban	female	25	6902
county	16	urban	male	25	6762
county	16	urban	female	26	5407
county	16	urban	male	26	5299
county	16	urban	female	27	5342
county	16	urban	male	27	5769
county	16	urban	female	28	5232
county	16	urban	male	28	5126
county	16	urban	female	29	5020
county	16	urban	male	29	5286
county	16	urban	female	3	7135
county	16	urban	male	3	7345
county	16	urban	female	30	6491
county	16	urban	male	30	6781
county	16	urban	female	31	3619
county	16	urban	male	31	4245
county	16	urban	female	32	4395
county	16	urban	male	32	4727
county	16	urban	female	33	3377
county	16	urban	male	33	3561
county	16	urban	female	34	3485
county	16	urban	male	34	4046
county	16	urban	female	35	4778
county	16	urban	male	35	5325
county	16	urban	female	36	3109
county	16	urban	male	36	3398
county	16	urban	female	37	2869
county	16	urban	male	37	3348
county	16	urban	female	38	3005
county	16	urban	male	38	3270
county	16	urban	female	39	2885
county	16	urban	male	39	3270
county	16	urban	female	4	7068
county	16	urban	male	4	7484
county	16	urban	female	40	3901
county	16	urban	male	40	4357
county	16	urban	female	41	2118
county	16	urban	male	41	2482
county	16	urban	female	42	2135
county	16	urban	male	42	2477
county	16	urban	female	43	1820
county	16	urban	male	43	1958
county	16	urban	female	44	1804
county	16	urban	male	44	1980
county	16	urban	female	45	3113
county	16	urban	male	45	3157
county	16	urban	female	46	2293
county	16	urban	male	46	2467
county	16	urban	female	47	1989
county	16	urban	male	47	2092
county	16	urban	female	48	1769
county	16	urban	male	48	1768
county	16	urban	female	49	2009
county	16	urban	male	49	2220
county	16	urban	female	5	6979
county	16	urban	male	5	7492
county	16	urban	female	50	2697
county	16	urban	male	50	2792
county	16	urban	female	51	1570
county	16	urban	male	51	1855
county	16	urban	female	52	1609
county	16	urban	male	52	1760
county	16	urban	female	53	1408
county	16	urban	male	53	1459
county	16	urban	female	54	1213
county	16	urban	male	54	1360
county	16	urban	female	55	1573
county	16	urban	male	55	1678
county	16	urban	female	56	1278
county	16	urban	male	56	1299
county	16	urban	female	57	1780
county	16	urban	male	57	1748
county	16	urban	female	58	835
county	16	urban	male	58	912
county	16	urban	female	59	1099
county	16	urban	male	59	1148
county	16	urban	female	6	6632
county	16	urban	male	6	6830
county	16	urban	female	60	1568
county	16	urban	male	60	1522
county	16	urban	female	61	1053
county	16	urban	male	61	1064
county	16	urban	female	62	678
county	16	urban	male	62	794
county	16	urban	female	63	740
county	16	urban	male	63	808
county	16	urban	female	64	770
county	16	urban	male	64	781
county	16	urban	female	65	838
county	16	urban	male	65	714
county	16	urban	female	66	486
county	16	urban	male	66	430
county	16	urban	female	67	889
county	16	urban	male	67	788
county	16	urban	female	68	471
county	16	urban	male	68	430
county	16	urban	female	69	732
county	16	urban	male	69	499
county	16	urban	female	7	6623
county	16	urban	male	7	6815
county	16	urban	female	70	1178
county	16	urban	male	70	893
county	16	urban	female	71	525
county	16	urban	male	71	447
county	16	urban	female	72	416
county	16	urban	male	72	436
county	16	urban	female	73	553
county	16	urban	male	73	474
county	16	urban	female	74	443
county	16	urban	male	74	363
county	16	urban	female	75	533
county	16	urban	male	75	397
county	16	urban	female	76	243
county	16	urban	male	76	280
county	16	urban	female	77	380
county	16	urban	male	77	346
county	16	urban	female	78	271
county	16	urban	male	78	248
county	16	urban	female	79	574
county	16	urban	male	79	280
county	16	urban	female	8	6362
county	16	urban	male	8	6269
county	16	urban	female	80+	4823
county	16	urban	male	80+	3025
county	16	urban	female	9	6933
county	16	urban	male	9	6965
county	16	urban	female	unspecified	210
county	16	urban	male	unspecified	250
county	17	rural	female	25	6234
county	17	rural	male	25	4955
county	17	rural	female	26	4712
county	17	rural	male	26	3649
county	17	rural	female	27	5431
county	17	rural	male	27	4240
county	17	rural	female	28	4814
county	17	rural	male	28	3278
county	17	rural	female	29	5292
county	17	rural	male	29	4094
county	17	rural	female	3	11323
county	17	rural	male	3	11411
county	17	rural	female	30	6460
county	17	rural	male	30	4841
county	17	rural	female	31	4210
county	17	rural	male	31	3614
county	17	rural	female	32	4549
county	17	rural	male	32	3519
county	17	rural	female	33	3814
county	17	rural	male	33	2933
county	17	rural	female	34	4402
county	17	rural	male	34	3497
county	17	rural	female	35	6134
county	17	rural	male	35	4809
county	17	rural	female	36	3826
county	17	rural	male	36	3037
county	17	rural	female	37	3736
county	17	rural	male	37	3101
county	17	rural	female	38	3504
county	17	rural	male	38	2678
county	17	rural	female	39	3960
county	17	rural	male	39	3233
county	17	rural	female	4	11540
county	17	rural	male	4	12022
county	17	rural	female	40	4875
county	17	rural	male	40	3724
county	17	rural	female	41	2916
county	17	rural	male	41	2649
county	17	rural	female	42	2674
county	17	rural	male	42	2166
county	17	rural	female	43	2405
county	17	rural	male	43	1901
county	17	rural	female	44	2408
county	17	rural	male	44	1940
county	17	rural	female	45	4051
county	17	rural	male	45	3035
county	17	rural	female	46	3021
county	17	rural	male	46	2332
county	17	rural	female	47	2675
county	17	rural	male	47	2017
county	17	rural	female	48	2312
county	17	rural	male	48	1651
county	17	rural	female	49	2960
county	17	rural	male	49	2265
county	17	rural	female	5	12054
county	17	rural	male	5	12762
county	17	rural	female	50	3855
county	17	rural	male	50	2896
county	17	rural	female	51	2462
county	17	rural	male	51	2027
county	17	rural	female	52	2271
county	17	rural	male	52	1953
county	17	rural	female	53	2150
county	17	rural	male	53	1662
county	17	rural	female	54	1867
county	17	rural	male	54	1553
county	17	rural	female	55	2528
county	17	rural	male	55	1953
county	17	rural	female	56	1879
county	17	rural	male	56	1699
county	17	rural	female	57	3175
county	17	rural	male	57	2502
county	17	rural	female	58	1360
county	17	rural	male	58	1221
county	17	rural	female	59	2119
county	17	rural	male	59	1599
county	17	rural	female	6	11865
county	17	rural	male	6	12198
county	17	rural	female	60	2764
county	17	rural	male	60	2307
county	17	rural	female	61	1792
county	17	rural	male	61	1587
county	17	rural	female	62	1155
county	17	rural	male	62	1159
county	17	rural	female	63	1371
county	17	rural	male	63	1223
county	17	rural	female	64	1666
county	17	rural	male	64	1188
county	17	rural	female	65	1553
county	17	rural	male	65	1136
county	17	rural	female	66	837
county	17	rural	male	66	639
county	17	rural	female	67	1412
county	17	rural	male	67	1210
county	17	rural	female	68	783
county	17	rural	male	68	727
county	17	rural	female	69	1571
county	17	rural	male	69	925
county	17	rural	female	7	11925
county	17	rural	male	7	12401
county	17	rural	female	70	2162
county	17	rural	male	70	1524
county	17	rural	female	71	830
county	17	rural	male	71	765
county	17	rural	female	72	624
county	17	rural	male	72	720
county	17	rural	female	73	726
county	17	rural	male	73	779
county	17	rural	female	74	854
county	17	rural	male	74	671
county	17	rural	female	75	884
county	17	rural	male	75	693
county	17	rural	female	76	391
county	17	rural	male	76	433
county	17	rural	female	77	505
county	17	rural	male	77	484
county	17	rural	female	78	528
county	17	rural	male	78	449
county	17	rural	female	79	1232
county	17	rural	male	79	623
county	17	rural	female	8	11337
county	17	rural	male	8	11628
county	17	rural	female	80+	9016
county	17	rural	male	80+	5765
county	17	rural	female	9	11946
county	17	rural	male	9	12319
county	17	rural	female	unspecified	103
county	17	rural	male	unspecified	114
county	17	urban	female	0	1374
county	17	urban	male	0	1423
county	17	urban	female	1	1263
county	17	urban	male	1	1279
county	17	urban	female	10	1332
county	17	urban	male	10	1346
county	17	urban	female	11	1125
county	17	urban	male	11	1179
county	17	urban	female	12	1232
county	17	urban	male	12	1295
county	17	urban	female	13	1373
county	17	urban	male	13	1381
county	17	urban	female	14	1131
county	17	urban	male	14	1167
county	17	urban	female	15	1190
county	17	urban	male	15	1248
county	17	urban	female	16	1103
county	17	urban	male	16	1066
county	17	urban	female	17	1112
county	17	urban	male	17	1164
county	17	urban	female	18	1100
county	17	urban	male	18	1202
county	17	urban	female	19	1130
county	17	urban	male	19	1185
county	17	urban	female	2	1336
county	17	urban	male	2	1353
county	17	urban	female	20	1319
county	17	urban	male	20	1232
county	17	urban	female	21	1009
county	17	urban	male	21	1013
county	17	urban	female	22	1209
county	17	urban	male	22	1066
county	17	urban	female	23	1255
county	17	urban	male	23	1110
county	17	urban	female	24	1131
county	17	urban	male	24	886
county	17	urban	female	25	1258
county	17	urban	male	25	1145
county	17	urban	female	26	964
county	17	urban	male	26	883
county	17	urban	female	27	1041
county	17	urban	male	27	946
county	17	urban	female	28	933
county	17	urban	male	28	847
county	17	urban	female	29	881
county	17	urban	male	29	875
county	17	urban	female	3	1334
county	17	urban	male	3	1320
county	17	urban	female	30	1181
county	17	urban	male	30	1207
county	17	urban	female	31	632
county	17	urban	male	31	708
county	17	urban	female	32	779
county	17	urban	male	32	780
county	17	urban	female	33	572
county	17	urban	male	33	563
county	17	urban	female	34	611
county	17	urban	male	34	597
county	17	urban	female	35	940
county	17	urban	male	35	1001
county	17	urban	female	36	537
county	17	urban	male	36	580
county	17	urban	female	37	529
county	17	urban	male	37	575
county	17	urban	female	38	528
county	17	urban	male	38	553
county	17	urban	female	39	522
county	17	urban	male	39	598
county	17	urban	female	4	1282
county	17	urban	male	4	1393
county	17	urban	female	40	668
county	17	urban	male	40	723
county	17	urban	female	41	358
county	17	urban	male	41	427
county	17	urban	female	42	398
county	17	urban	male	42	400
county	17	urban	female	43	316
county	17	urban	male	43	342
county	17	urban	female	44	301
county	17	urban	male	44	320
county	17	urban	female	45	515
county	17	urban	male	45	565
county	17	urban	female	46	362
county	17	urban	male	46	385
county	17	urban	female	47	394
county	17	urban	male	47	382
county	17	urban	female	48	356
county	17	urban	male	48	318
county	17	urban	female	49	347
county	17	urban	male	49	399
county	17	urban	female	5	1356
county	17	urban	male	5	1362
county	17	urban	female	50	428
county	17	urban	male	50	475
county	17	urban	female	51	259
county	17	urban	male	51	293
county	17	urban	female	52	232
county	17	urban	male	52	355
county	17	urban	female	53	233
county	17	urban	male	53	296
county	17	urban	female	54	182
county	17	urban	male	54	246
county	17	urban	female	55	255
county	17	urban	male	55	324
county	17	urban	female	56	200
county	17	urban	male	56	251
county	17	urban	female	57	270
county	17	urban	male	57	247
county	17	urban	female	58	145
county	17	urban	male	58	136
county	18	rural	female	0	6352
county	18	rural	male	0	6604
county	18	rural	female	1	5920
county	18	rural	male	1	6145
county	18	rural	female	10	7465
county	18	rural	male	10	7906
county	18	rural	female	11	6016
county	18	rural	male	11	6199
county	18	rural	female	12	7238
county	18	rural	male	12	7472
county	18	rural	female	13	6963
county	18	rural	male	13	7176
county	18	rural	female	14	6352
county	18	rural	male	14	6641
county	18	rural	female	15	5897
county	18	rural	male	15	6130
county	18	rural	female	16	5183
county	18	rural	male	16	5524
county	18	rural	female	17	4705
county	18	rural	male	17	5553
county	18	rural	female	18	4373
county	18	rural	male	18	5276
county	18	rural	female	19	3634
county	18	rural	male	19	4341
county	18	rural	female	2	6422
county	18	rural	male	2	6825
county	18	rural	female	20	4576
county	18	rural	male	20	4591
county	18	rural	female	21	3389
county	18	rural	male	21	3351
county	18	rural	female	22	3943
county	18	rural	male	22	3556
county	18	rural	female	23	3666
county	18	rural	male	23	3269
county	18	rural	female	24	3689
county	18	rural	male	24	3143
county	18	rural	female	25	4734
county	18	rural	male	25	3880
county	18	rural	female	26	3415
county	18	rural	male	26	2796
county	18	rural	female	27	3399
county	18	rural	male	27	3022
county	18	rural	female	28	3627
county	18	rural	male	28	2846
county	18	rural	female	29	3097
county	18	rural	male	29	2649
county	18	rural	female	3	7219
county	18	rural	male	3	7218
county	18	rural	female	30	5149
county	18	rural	male	30	4122
county	18	rural	female	31	2703
county	18	rural	male	31	2424
county	18	rural	female	32	3406
county	18	rural	male	32	2810
county	18	rural	female	33	2383
county	18	rural	male	33	2104
county	18	rural	female	34	2652
county	18	rural	male	34	2386
county	18	rural	female	35	4689
county	18	rural	male	35	3766
county	18	rural	female	36	2584
county	18	rural	male	36	2272
county	18	rural	female	37	2478
county	18	rural	male	37	2240
county	18	rural	female	38	3019
county	18	rural	male	38	2351
county	18	rural	female	39	2442
county	18	rural	male	39	2096
county	18	rural	female	4	7473
county	18	rural	male	4	7984
county	18	rural	female	40	3981
county	18	rural	male	40	3347
county	18	rural	female	41	1756
county	18	rural	male	41	1716
county	18	rural	female	42	2292
county	18	rural	male	42	2053
county	18	rural	female	43	2009
county	18	rural	male	43	1587
county	18	rural	female	44	1718
county	18	rural	male	44	1508
county	18	rural	female	45	3408
county	18	rural	male	45	2823
county	18	rural	female	46	1934
county	18	rural	male	46	1739
county	18	rural	female	47	1637
county	18	rural	male	47	1442
county	18	rural	female	48	1722
county	18	rural	male	48	1408
county	18	rural	female	49	1560
county	18	rural	male	49	1402
county	18	rural	female	5	7326
county	18	rural	male	5	7965
county	18	rural	female	50	2454
county	18	rural	male	50	2033
county	18	rural	female	51	1035
county	18	rural	male	51	1009
county	18	rural	female	52	1150
county	18	rural	male	52	1141
county	18	rural	female	53	794
county	18	rural	male	53	740
county	18	rural	female	54	846
county	18	rural	male	54	788
county	18	rural	female	55	1466
county	18	rural	male	55	1262
county	18	rural	female	56	978
county	18	rural	male	56	930
county	18	rural	female	57	1110
county	18	rural	male	57	1043
county	18	rural	female	58	802
county	18	rural	male	58	651
county	18	rural	female	59	897
county	18	rural	male	59	805
county	18	rural	female	6	7204
county	18	rural	male	6	7411
county	18	rural	female	60	1875
county	18	rural	male	60	1491
county	18	rural	female	61	757
county	18	rural	male	61	678
county	18	rural	female	62	772
county	18	rural	male	62	712
county	18	rural	female	63	703
county	18	rural	male	63	602
county	18	rural	female	64	707
county	18	rural	male	64	634
county	18	rural	female	65	1297
county	18	rural	male	65	927
county	18	rural	female	66	1251
county	18	rural	male	66	638
county	18	rural	female	67	698
county	18	rural	male	67	572
county	18	rural	female	68	557
county	18	rural	male	68	433
county	18	rural	female	69	656
county	18	rural	male	69	499
county	18	rural	female	7	7299
county	18	rural	male	7	7555
county	18	rural	female	70	1151
county	18	rural	male	70	955
county	18	rural	female	71	382
county	18	rural	male	71	374
county	18	rural	female	72	416
county	18	rural	male	72	463
county	18	rural	female	73	379
county	18	rural	male	73	422
county	18	rural	female	74	470
county	18	rural	male	74	427
county	18	rural	female	75	609
county	18	rural	male	75	451
county	18	rural	female	76	396
county	18	rural	male	76	332
county	18	rural	female	77	255
county	18	rural	male	77	271
county	18	rural	female	78	307
county	18	rural	male	78	306
county	18	rural	female	79	349
county	18	rural	male	79	310
county	18	rural	female	8	7185
county	18	rural	male	8	7080
county	18	rural	female	80+	3324
county	18	rural	male	80+	2511
county	18	rural	female	9	7558
county	18	rural	male	9	7772
county	18	rural	female	unspecified	83
county	18	rural	male	unspecified	97
county	18	urban	female	0	1536
county	18	urban	male	0	1560
county	18	urban	female	1	1370
county	18	urban	male	1	1428
county	18	urban	female	10	1587
county	18	urban	male	10	1564
county	18	urban	female	11	1213
county	18	urban	male	11	1199
county	18	urban	female	12	1538
county	18	urban	male	12	1546
county	18	urban	female	13	1436
county	18	urban	male	13	1453
county	18	urban	female	14	1292
county	18	urban	male	14	1326
county	18	urban	female	15	1139
county	18	urban	male	15	1189
county	18	urban	female	16	1123
county	18	urban	male	16	1117
county	18	urban	female	17	1113
county	18	urban	male	17	1178
county	18	urban	female	18	1076
county	18	urban	male	18	1202
county	18	urban	female	19	945
county	18	urban	male	19	956
county	18	urban	female	2	1511
county	18	urban	male	2	1548
county	18	urban	female	20	1181
county	18	urban	male	20	1050
county	18	urban	female	21	986
county	18	urban	male	21	838
county	18	urban	female	22	1122
county	18	urban	male	22	1003
county	18	urban	female	23	1089
county	18	urban	male	23	875
county	18	urban	female	24	1062
county	18	urban	male	24	863
county	18	urban	female	25	1420
county	18	urban	male	25	1132
county	18	urban	female	26	990
county	18	urban	male	26	850
county	18	urban	female	27	975
county	18	urban	male	27	918
county	18	urban	female	28	979
county	18	urban	male	28	872
county	18	urban	female	29	836
county	18	urban	male	29	772
county	18	urban	female	3	1576
county	18	urban	male	3	1568
county	18	urban	female	30	1374
county	18	urban	male	30	1198
county	18	urban	female	31	627
county	18	urban	male	31	702
county	18	urban	female	32	863
county	18	urban	male	32	775
county	18	urban	female	33	574
county	18	urban	male	33	527
county	18	urban	female	34	665
county	18	urban	male	34	603
county	18	urban	female	35	1075
county	18	urban	male	35	1026
county	18	urban	female	36	579
county	18	urban	male	36	556
county	18	urban	female	37	588
county	18	urban	male	37	555
county	18	urban	female	38	705
county	18	urban	male	38	605
county	18	urban	female	39	619
county	18	urban	male	39	522
county	18	urban	female	4	1633
county	18	urban	male	4	1675
county	18	urban	female	40	950
county	18	urban	male	40	894
county	18	urban	female	41	407
county	18	urban	male	41	383
county	18	urban	female	42	580
county	18	urban	male	42	546
county	18	urban	female	43	447
county	18	urban	male	43	352
county	18	urban	female	44	350
county	18	urban	male	44	363
county	18	urban	female	45	695
county	18	urban	male	45	660
county	18	urban	female	46	383
county	18	urban	male	46	389
county	18	urban	female	47	361
county	18	urban	male	47	353
county	18	urban	female	48	409
county	18	urban	male	48	360
county	18	urban	female	49	334
county	18	urban	male	49	344
county	18	urban	female	5	1547
county	18	urban	male	5	1696
county	18	urban	female	50	530
county	18	urban	male	50	488
county	18	urban	female	51	203
county	18	urban	male	51	231
county	18	urban	female	52	261
county	18	urban	male	52	252
county	18	urban	female	53	166
county	18	urban	male	53	152
county	18	urban	female	54	178
county	18	urban	male	54	193
county	18	urban	female	55	284
county	18	urban	male	55	299
county	18	urban	female	56	198
county	18	urban	male	56	204
county	18	urban	female	57	227
county	18	urban	male	57	220
county	18	urban	female	58	171
county	18	urban	male	58	118
county	18	urban	female	59	189
county	18	urban	male	59	150
county	18	urban	female	6	1557
county	18	urban	male	6	1624
county	18	urban	female	60	366
county	18	urban	male	60	290
county	18	urban	female	61	135
county	18	urban	male	61	111
county	18	urban	female	62	143
county	18	urban	male	62	111
county	18	urban	female	63	126
county	18	urban	male	63	138
county	18	urban	female	64	136
county	18	urban	male	64	128
county	18	urban	female	65	221
county	18	urban	male	65	181
county	18	urban	female	66	221
county	18	urban	male	66	102
county	18	urban	female	67	128
county	18	urban	male	67	102
county	18	urban	female	68	101
county	18	urban	male	68	80
county	18	urban	female	69	95
county	18	urban	male	69	92
county	18	urban	female	7	1474
county	18	urban	male	7	1556
county	18	urban	female	70	226
county	18	urban	male	70	182
county	18	urban	female	71	67
county	18	urban	male	71	66
county	18	urban	female	72	76
county	18	urban	male	72	78
county	18	urban	female	73	66
county	18	urban	male	73	62
county	18	urban	female	74	82
county	18	urban	male	74	77
county	18	urban	female	75	94
county	18	urban	male	75	96
county	18	urban	female	76	75
county	18	urban	male	76	47
county	18	urban	female	77	51
county	18	urban	male	77	44
county	18	urban	female	78	44
county	18	urban	male	78	59
county	18	urban	female	79	56
county	18	urban	male	79	45
county	18	urban	female	8	1428
county	18	urban	male	8	1493
county	18	urban	female	80+	659
county	18	urban	male	80+	430
county	18	urban	female	9	1443
county	18	urban	male	9	1554
county	18	urban	female	unspecified	9
county	18	urban	male	unspecified	26
county	19	rural	male	4	6396
county	19	rural	female	40	4924
county	19	rural	male	40	4187
county	19	rural	female	41	2406
county	19	rural	male	41	2222
county	19	rural	female	42	2898
county	19	rural	male	42	2536
county	19	rural	female	43	2594
county	19	rural	male	43	2078
county	19	rural	female	44	2466
county	19	rural	male	44	2088
county	19	rural	female	45	4097
county	19	rural	male	45	3590
county	19	rural	female	46	2541
county	19	rural	male	46	2379
county	19	rural	female	47	2407
county	19	rural	male	47	2105
county	19	rural	female	48	2303
county	19	rural	male	48	1970
county	19	rural	female	49	2284
county	19	rural	male	49	2166
county	19	rural	female	5	6197
county	19	rural	male	5	6397
county	19	rural	female	50	3875
county	19	rural	male	50	2668
county	19	rural	female	51	1636
county	19	rural	male	51	1529
county	19	rural	female	52	1724
county	19	rural	male	52	1552
county	19	rural	female	53	1288
county	19	rural	male	53	1102
county	19	rural	female	54	1309
county	19	rural	male	54	1107
county	19	rural	female	55	2200
county	19	rural	male	55	1739
county	19	rural	female	56	1528
county	19	rural	male	56	1380
county	19	rural	female	57	1963
county	19	rural	male	57	1795
county	19	rural	female	58	1176
county	19	rural	male	58	1085
county	19	rural	female	59	1491
county	19	rural	male	59	1345
county	19	rural	female	6	6021
county	19	rural	male	6	6099
county	19	rural	female	60	3268
county	19	rural	male	60	2552
county	19	rural	female	61	1443
county	19	rural	male	61	1389
county	19	rural	female	62	1225
county	19	rural	male	62	1356
county	19	rural	female	63	1145
county	19	rural	male	63	1186
county	19	rural	female	64	1250
county	19	rural	male	64	1090
county	19	rural	female	65	1898
county	19	rural	male	65	1466
county	19	rural	female	66	1665
county	19	rural	male	66	1085
county	19	rural	female	67	1139
county	19	rural	male	67	1004
county	19	rural	female	68	810
county	19	rural	male	68	708
county	19	rural	female	69	1019
county	19	rural	male	69	823
county	19	rural	female	7	5921
county	19	rural	male	7	6120
county	19	rural	female	70	2277
county	19	rural	male	70	1689
county	19	rural	female	71	721
county	19	rural	male	71	642
county	19	rural	female	72	724
county	19	rural	male	72	691
county	19	rural	female	73	767
county	19	rural	male	73	709
county	19	rural	female	74	760
county	19	rural	male	74	587
county	19	rural	female	75	1020
county	19	rural	male	75	767
county	19	rural	female	76	669
county	19	rural	male	76	557
county	19	rural	female	77	490
county	19	rural	male	77	405
county	19	rural	female	78	497
county	19	rural	male	78	397
county	19	rural	female	79	815
county	19	rural	male	79	506
county	19	rural	female	8	5823
county	19	rural	male	8	5908
county	19	rural	female	80+	7074
county	19	rural	male	80+	4437
county	19	rural	female	9	6526
county	19	rural	male	9	6747
county	19	rural	female	unspecified	64
county	19	rural	male	unspecified	71
county	19	urban	female	0	2112
county	19	urban	male	0	2193
county	19	urban	female	1	1847
county	19	urban	male	1	1820
county	19	urban	female	10	1684
county	19	urban	male	10	1756
county	19	urban	female	11	1733
county	19	urban	male	11	1519
county	19	urban	female	12	1975
county	19	urban	male	12	1736
county	19	urban	female	13	2005
county	19	urban	male	13	1731
county	19	urban	female	14	1596
county	19	urban	male	14	1572
county	19	urban	female	15	1400
county	19	urban	male	15	1423
county	19	urban	female	16	1514
county	19	urban	male	16	1382
county	19	urban	female	17	1529
county	19	urban	male	17	1552
county	19	urban	female	18	1575
county	19	urban	male	18	1571
county	19	urban	female	19	1489
county	19	urban	male	19	1383
county	19	urban	female	2	1901
county	19	urban	male	2	1901
county	19	urban	female	20	2114
county	19	urban	male	20	1805
county	19	urban	female	21	1813
county	19	urban	male	21	1495
county	19	urban	female	22	2149
county	19	urban	male	22	1825
county	19	urban	female	23	2260
county	19	urban	male	23	1755
county	19	urban	female	24	2276
county	19	urban	male	24	1724
county	19	urban	female	25	2578
county	19	urban	male	25	2229
county	19	urban	female	26	1936
county	19	urban	male	26	1808
county	19	urban	female	27	1932
county	19	urban	male	27	1941
county	19	urban	female	28	1967
county	19	urban	male	28	1888
county	19	urban	female	29	1724
county	19	urban	male	29	1689
county	19	urban	female	3	1788
county	19	urban	male	3	1955
county	19	urban	female	30	2441
county	19	urban	male	30	2517
county	19	urban	female	31	1153
county	19	urban	male	31	1329
county	19	urban	female	32	1511
county	19	urban	male	32	1776
county	19	urban	female	33	1144
county	19	urban	male	33	1112
county	19	urban	female	34	1228
county	19	urban	male	34	1378
county	19	urban	female	35	1699
county	19	urban	male	35	1984
county	19	urban	female	36	1028
county	19	urban	male	36	1160
county	19	urban	female	37	985
county	19	urban	male	37	1082
county	19	urban	female	38	1201
county	19	urban	male	38	1181
county	19	urban	female	39	966
county	19	urban	male	39	1088
county	19	urban	female	4	1788
county	19	urban	male	4	1920
county	19	urban	female	40	1561
county	19	urban	male	40	1648
county	19	urban	female	41	720
county	19	urban	male	41	733
county	19	urban	female	42	962
county	19	urban	male	42	1003
county	19	urban	female	43	744
county	19	urban	male	43	699
county	19	urban	female	44	651
county	19	urban	male	44	696
county	19	urban	female	45	1201
county	19	urban	male	45	1217
county	19	urban	female	46	739
county	19	urban	male	46	768
county	19	urban	female	47	673
county	19	urban	male	47	701
county	19	urban	female	48	653
county	19	urban	male	48	704
county	19	urban	female	49	553
county	19	urban	male	49	687
county	19	urban	female	5	1788
county	19	urban	male	5	1837
county	19	urban	female	50	803
county	19	urban	male	50	860
county	19	urban	female	51	397
county	19	urban	male	51	426
county	19	urban	female	52	414
county	19	urban	male	52	491
county	19	urban	female	53	329
county	19	urban	male	53	316
county	19	urban	female	54	294
county	19	urban	male	54	292
county	19	urban	female	55	430
county	19	urban	male	55	434
county	19	urban	female	56	335
county	19	urban	male	56	333
county	19	urban	female	57	370
county	19	urban	male	57	383
county	19	urban	female	58	269
county	19	urban	male	58	258
county	19	urban	female	59	292
county	19	urban	male	59	277
county	19	urban	female	6	1707
county	19	urban	male	6	1683
county	19	urban	female	60	606
county	19	urban	male	60	545
county	19	urban	female	61	204
county	19	urban	male	61	261
county	19	urban	female	62	228
county	19	urban	male	62	249
county	19	urban	female	63	228
county	19	urban	male	63	216
county	19	urban	female	64	220
county	19	urban	male	64	210
county	19	urban	female	65	293
county	19	urban	male	65	299
county	19	urban	female	66	265
county	19	urban	male	66	192
county	19	urban	female	67	158
county	19	urban	male	67	160
county	19	urban	female	68	129
county	19	urban	male	68	123
county	19	urban	female	69	150
county	19	urban	male	69	127
county	19	urban	female	7	1604
county	19	urban	male	7	1713
county	19	urban	female	70	382
county	19	urban	male	70	238
county	19	urban	female	71	101
county	19	urban	male	71	95
county	19	urban	female	72	130
county	19	urban	male	72	105
county	19	urban	female	73	124
county	19	urban	male	73	115
county	19	urban	female	74	91
county	19	urban	male	74	90
county	19	urban	female	75	166
county	19	urban	male	75	124
county	19	urban	female	76	112
county	19	urban	male	76	88
county	19	urban	female	77	88
county	19	urban	male	77	66
county	19	urban	female	78	74
county	19	urban	male	78	69
county	19	urban	female	79	112
county	19	urban	male	79	69
county	19	urban	female	8	1629
county	19	urban	male	8	1600
county	19	urban	female	80+	1126
county	19	urban	male	80+	627
county	19	urban	female	9	1692
county	19	urban	male	9	1703
county	19	urban	female	unspecified	34
county	19	urban	male	unspecified	35
county	20	rural	female	37	2485
county	20	rural	male	37	2810
county	20	rural	female	38	2854
county	20	rural	male	38	2674
county	20	rural	female	39	2495
county	20	rural	male	39	2554
county	20	rural	female	4	5155
county	20	rural	male	4	5192
county	20	rural	female	40	4356
county	20	rural	male	40	4321
county	20	rural	female	41	2015
county	20	rural	male	41	2183
county	20	rural	female	42	2167
county	20	rural	male	42	2225
county	20	rural	female	43	1832
county	20	rural	male	43	1861
county	20	rural	female	44	1735
county	20	rural	male	44	1885
county	20	rural	female	45	3467
county	20	rural	male	45	3227
county	20	rural	female	46	2212
county	20	rural	male	46	2427
county	20	rural	female	47	1737
county	20	rural	male	47	1858
county	20	rural	female	48	1755
county	20	rural	male	48	1623
county	20	rural	female	49	1867
county	20	rural	male	49	1808
county	20	rural	female	5	5515
county	20	rural	male	5	5515
county	20	rural	female	50	3211
county	20	rural	male	50	2675
county	20	rural	female	51	1214
county	20	rural	male	51	1414
county	20	rural	female	52	1276
county	20	rural	male	52	1358
county	20	rural	female	53	972
county	20	rural	male	53	928
county	20	rural	female	54	916
county	20	rural	male	54	881
county	20	rural	female	55	1867
county	20	rural	male	55	1576
county	20	rural	female	56	1020
county	20	rural	male	56	1067
county	20	rural	female	57	1306
county	20	rural	male	57	1445
county	20	rural	female	58	806
county	20	rural	male	58	860
county	20	rural	female	59	1032
county	20	rural	male	59	1023
county	20	rural	female	6	5196
county	20	rural	male	6	5307
county	20	rural	female	60	2588
county	20	rural	male	60	1942
county	20	rural	female	61	950
county	20	rural	male	61	822
county	20	rural	female	62	653
county	20	rural	male	62	769
county	20	rural	female	63	645
county	20	rural	male	63	707
county	20	rural	female	64	795
county	20	rural	male	64	687
county	20	rural	female	65	1222
county	20	rural	male	65	938
county	20	rural	female	66	544
county	20	rural	male	66	445
county	20	rural	female	67	651
county	20	rural	male	67	669
county	20	rural	female	68	469
county	20	rural	male	68	446
county	20	rural	female	69	728
county	20	rural	male	69	565
county	20	rural	female	7	5122
county	20	rural	male	7	5244
county	20	rural	female	70	1808
county	20	rural	male	70	1215
county	20	rural	female	71	469
county	20	rural	male	71	333
county	20	rural	female	72	402
county	20	rural	male	72	393
county	20	rural	female	73	431
county	20	rural	male	73	380
county	20	rural	female	74	514
county	20	rural	male	74	387
county	20	rural	female	75	689
county	20	rural	male	75	534
county	20	rural	female	76	327
county	20	rural	male	76	309
county	20	rural	female	77	284
county	20	rural	male	77	290
county	20	rural	female	78	281
county	20	rural	male	78	276
county	20	rural	female	79	590
county	20	rural	male	79	337
county	20	rural	female	8	4871
county	20	rural	male	8	4847
county	20	rural	female	80+	5708
county	20	rural	male	80+	3175
county	20	rural	female	9	5243
county	20	rural	male	9	5430
county	20	rural	female	unspecified	65
county	20	rural	male	unspecified	80
county	20	urban	female	0	1081
county	20	urban	male	0	1116
county	20	urban	female	1	842
county	20	urban	male	1	889
county	20	urban	female	10	845
county	20	urban	male	10	915
county	20	urban	female	11	794
county	20	urban	male	11	738
county	20	urban	female	12	995
county	20	urban	male	12	938
county	20	urban	female	13	981
county	20	urban	male	13	943
county	20	urban	female	14	807
county	20	urban	male	14	862
county	20	urban	female	15	689
county	20	urban	male	15	687
county	20	urban	female	16	706
county	20	urban	male	16	607
county	20	urban	female	17	737
county	20	urban	male	17	590
county	20	urban	female	18	694
county	20	urban	male	18	633
county	20	urban	female	19	725
county	20	urban	male	19	605
county	20	urban	female	2	911
county	20	urban	male	2	919
county	20	urban	female	20	1111
county	20	urban	male	20	789
county	20	urban	female	21	843
county	20	urban	male	21	645
county	20	urban	female	22	1101
county	20	urban	male	22	797
county	20	urban	female	23	1215
county	20	urban	male	23	837
county	20	urban	female	24	1121
county	20	urban	male	24	871
county	20	urban	female	25	1448
county	20	urban	male	25	1071
county	20	urban	female	26	1117
county	20	urban	male	26	902
county	20	urban	female	27	986
county	20	urban	male	27	953
county	20	urban	female	28	1174
county	20	urban	male	28	868
county	20	urban	female	29	869
county	20	urban	male	29	785
county	20	urban	female	3	918
county	20	urban	male	3	893
county	20	urban	female	30	1449
county	20	urban	male	30	1369
county	20	urban	female	31	627
county	20	urban	male	31	643
county	20	urban	female	32	902
county	20	urban	male	32	869
county	20	urban	female	33	620
county	20	urban	male	33	554
county	20	urban	female	34	621
county	20	urban	male	34	615
county	20	urban	female	35	1014
county	20	urban	male	35	1083
county	20	urban	female	36	535
county	20	urban	male	36	515
county	20	urban	female	37	473
county	20	urban	male	37	509
county	20	urban	female	38	578
county	20	urban	male	38	551
county	20	urban	female	39	463
county	20	urban	male	39	480
county	20	urban	female	4	933
county	20	urban	male	4	936
county	20	urban	female	40	873
county	20	urban	male	40	863
county	20	urban	female	41	327
county	20	urban	male	41	388
county	20	urban	female	42	457
county	20	urban	male	42	435
county	20	urban	female	43	382
county	20	urban	male	43	318
county	20	urban	female	44	313
county	20	urban	male	44	314
county	20	urban	female	45	591
county	20	urban	male	45	610
county	20	urban	female	46	377
county	20	urban	male	46	411
county	20	urban	female	47	274
county	20	urban	male	47	325
county	20	urban	female	48	306
county	20	urban	male	48	318
county	20	urban	female	49	267
county	20	urban	male	49	303
county	20	urban	female	5	965
county	20	urban	male	5	952
county	20	urban	female	50	465
county	20	urban	male	50	458
county	20	urban	female	51	159
county	20	urban	male	51	202
county	20	urban	female	52	187
county	20	urban	male	52	226
county	20	urban	female	53	117
county	20	urban	male	53	151
county	20	urban	female	54	144
county	20	urban	male	54	155
county	20	urban	female	55	209
county	20	urban	male	55	231
county	20	urban	female	56	122
county	20	urban	male	56	138
county	20	urban	female	57	136
county	20	urban	male	57	162
county	20	urban	female	58	96
county	20	urban	male	58	103
county	20	urban	female	59	90
county	20	urban	male	59	111
county	20	urban	female	6	894
county	20	urban	male	6	838
county	20	urban	female	60	234
county	20	urban	male	60	198
county	20	urban	female	61	92
county	20	urban	male	61	95
county	20	urban	female	62	65
county	20	urban	male	62	108
county	20	urban	female	63	64
county	20	urban	male	63	80
county	20	urban	female	64	74
county	20	urban	male	64	66
county	20	urban	female	65	132
county	20	urban	male	65	116
county	20	urban	female	66	49
county	20	urban	male	66	44
county	20	urban	female	67	48
county	20	urban	male	67	62
county	20	urban	female	68	39
county	20	urban	male	68	53
county	20	urban	female	69	61
county	20	urban	male	69	54
county	20	urban	female	7	914
county	20	urban	male	7	926
county	20	urban	female	70	163
county	20	urban	male	70	118
county	20	urban	female	71	39
county	20	urban	male	71	23
county	20	urban	female	72	36
county	20	urban	male	72	42
county	20	urban	female	73	28
county	20	urban	male	73	26
county	20	urban	female	74	38
county	20	urban	male	74	33
county	20	urban	female	75	54
county	20	urban	male	75	45
county	20	urban	female	76	33
county	20	urban	male	76	24
county	20	urban	female	77	24
county	20	urban	male	77	26
county	20	urban	female	78	25
county	20	urban	male	78	20
county	20	urban	female	79	57
county	20	urban	male	79	23
county	20	urban	female	8	836
county	20	urban	male	8	789
county	20	urban	female	80+	558
county	20	urban	male	80+	275
county	20	urban	female	9	914
county	20	urban	male	9	887
county	20	urban	female	unspecified	15
county	20	urban	male	unspecified	14
county	25	rural	female	39	574
county	25	rural	male	39	428
county	25	rural	female	4	3746
county	25	rural	male	4	3691
county	25	rural	female	40	1313
county	25	rural	male	40	1080
county	25	rural	female	41	340
county	25	rural	male	41	298
county	25	rural	female	42	481
county	25	rural	male	42	416
county	25	rural	female	43	275
county	25	rural	male	43	269
county	25	rural	female	44	418
county	25	rural	male	44	291
county	25	rural	female	45	721
county	25	rural	male	45	723
county	25	rural	female	46	300
county	25	rural	male	46	332
county	25	rural	female	47	279
county	25	rural	male	47	298
county	25	rural	female	48	401
county	25	rural	male	48	444
county	25	rural	female	49	637
county	25	rural	male	49	476
county	25	rural	female	5	3662
county	25	rural	male	5	3716
county	25	rural	female	50	904
county	25	rural	male	50	778
county	25	rural	female	51	280
county	25	rural	male	51	248
county	25	rural	female	52	267
county	25	rural	male	52	292
county	25	rural	female	53	246
county	25	rural	male	53	190
county	25	rural	female	54	257
county	25	rural	male	54	207
county	25	rural	female	55	323
county	25	rural	male	55	330
county	25	rural	female	56	205
county	25	rural	male	56	223
county	25	rural	female	57	254
county	25	rural	male	57	239
county	25	rural	female	58	265
county	25	rural	male	58	228
county	25	rural	female	59	239
county	25	rural	male	59	200
county	25	rural	female	6	3245
county	25	rural	male	6	3573
county	25	rural	female	60	641
county	25	rural	male	60	571
county	25	rural	female	61	324
county	25	rural	male	61	274
county	25	rural	female	62	136
county	25	rural	male	62	169
county	25	rural	female	63	128
county	25	rural	male	63	118
county	25	rural	female	64	200
county	25	rural	male	64	167
county	25	rural	female	65	344
county	25	rural	male	65	342
county	25	rural	female	66	59
county	25	rural	male	66	61
county	25	rural	female	67	110
county	25	rural	male	67	116
county	25	rural	female	68	132
county	25	rural	male	68	113
county	25	rural	female	69	155
county	25	rural	male	69	190
county	25	rural	female	7	3140
county	25	rural	male	7	3187
county	25	rural	female	70	418
county	25	rural	male	70	387
county	25	rural	female	71	93
county	25	rural	male	71	79
county	25	rural	female	72	93
county	25	rural	male	72	101
county	25	rural	female	73	112
county	25	rural	male	73	118
county	25	rural	female	74	54
county	25	rural	male	74	83
county	25	rural	female	75	153
county	25	rural	male	75	123
county	25	rural	female	76	69
county	25	rural	male	76	76
county	25	rural	female	77	47
county	25	rural	male	77	66
county	25	rural	female	78	52
county	25	rural	male	78	61
county	25	rural	female	79	121
county	25	rural	male	79	138
county	25	rural	female	8	3201
county	25	rural	male	8	3315
county	25	rural	female	80+	850
county	25	rural	male	80+	702
county	25	rural	female	9	2656
county	25	rural	male	9	2709
county	25	rural	female	unspecified	20
county	25	rural	male	unspecified	26
county	25	urban	female	0	661
county	25	urban	male	0	718
county	25	urban	female	1	563
county	25	urban	male	1	585
county	25	urban	female	10	608
county	25	urban	male	10	577
county	25	urban	female	11	412
county	25	urban	male	11	381
county	25	urban	female	12	553
county	25	urban	male	12	556
county	25	urban	female	13	554
county	25	urban	male	13	530
county	25	urban	female	14	521
county	25	urban	male	14	492
county	25	urban	female	15	526
county	25	urban	male	15	539
county	25	urban	female	16	437
county	25	urban	male	16	429
county	25	urban	female	17	419
county	25	urban	male	17	464
county	25	urban	female	18	404
county	25	urban	male	18	420
county	25	urban	female	19	373
county	25	urban	male	19	349
county	25	urban	female	2	676
county	25	urban	male	2	668
county	25	urban	female	20	596
county	25	urban	male	20	480
county	25	urban	female	21	350
county	25	urban	male	21	315
county	25	urban	female	22	466
county	25	urban	male	22	360
county	25	urban	female	23	404
county	25	urban	male	23	354
county	25	urban	female	24	345
county	25	urban	male	24	334
county	25	urban	female	25	533
county	25	urban	male	25	436
county	25	urban	female	26	312
county	25	urban	male	26	290
county	25	urban	female	27	295
county	25	urban	male	27	341
county	25	urban	female	28	307
county	25	urban	male	28	260
county	25	urban	female	29	212
county	25	urban	male	29	232
county	25	urban	female	3	668
county	25	urban	male	3	712
county	25	urban	female	30	448
county	25	urban	male	30	484
county	25	urban	female	31	201
county	25	urban	male	31	209
county	25	urban	female	32	269
county	25	urban	male	32	300
county	25	urban	female	33	169
county	25	urban	male	33	165
county	25	urban	female	34	158
county	25	urban	male	34	165
county	25	urban	female	35	317
county	25	urban	male	35	373
county	25	urban	female	36	176
county	25	urban	male	36	193
county	25	urban	female	37	142
county	25	urban	male	37	145
county	25	urban	female	38	178
county	25	urban	male	38	166
county	25	urban	female	39	112
county	25	urban	male	39	129
county	25	urban	female	4	682
county	25	urban	male	4	624
county	25	urban	female	40	259
county	25	urban	male	40	277
county	25	urban	female	41	58
county	25	urban	male	41	73
county	25	urban	female	42	113
county	25	urban	male	42	140
county	25	urban	female	43	81
county	25	urban	male	43	84
county	25	urban	female	44	80
county	25	urban	male	44	80
county	25	urban	female	45	158
county	25	urban	male	45	171
county	25	urban	female	46	74
county	25	urban	male	46	87
county	25	urban	female	47	62
county	25	urban	male	47	99
county	25	urban	female	48	69
county	25	urban	male	48	112
county	25	urban	female	49	101
county	25	urban	male	49	82
county	25	urban	female	5	627
county	25	urban	male	5	649
county	25	urban	female	50	173
county	25	urban	male	50	162
county	25	urban	female	51	49
county	25	urban	male	51	66
county	25	urban	female	52	65
county	25	urban	male	52	78
county	25	urban	female	53	39
county	25	urban	male	53	43
county	25	urban	female	54	54
county	25	urban	male	54	56
county	25	urban	female	55	68
county	25	urban	male	55	77
county	25	urban	female	56	38
county	25	urban	male	56	35
county	25	urban	female	57	43
county	25	urban	male	57	42
county	25	urban	female	58	39
county	25	urban	male	58	36
county	25	urban	female	59	42
county	25	urban	male	59	35
county	25	urban	female	6	604
county	25	urban	male	6	606
county	25	urban	female	60	132
county	25	urban	male	60	95
county	25	urban	female	61	59
county	25	urban	male	61	39
county	25	urban	female	62	32
county	25	urban	male	62	33
county	25	urban	female	63	31
county	25	urban	male	63	37
county	25	urban	female	64	31
county	25	urban	male	64	33
county	25	urban	female	65	67
county	25	urban	male	65	61
county	25	urban	female	66	14
county	25	urban	male	66	13
county	25	urban	female	67	25
county	25	urban	male	67	16
county	25	urban	female	68	25
county	25	urban	male	68	16
county	25	urban	female	69	33
county	25	urban	male	69	28
county	25	urban	female	7	609
county	25	urban	male	7	561
county	25	urban	female	70	89
county	25	urban	male	70	58
county	25	urban	female	71	19
county	25	urban	male	71	14
county	25	urban	female	72	15
county	25	urban	male	72	12
county	25	urban	female	73	28
county	25	urban	male	73	20
county	25	urban	female	74	17
county	25	urban	male	74	23
county	25	urban	female	75	27
county	25	urban	male	75	25
county	25	urban	female	76	15
county	25	urban	male	76	9
county	25	urban	female	77	14
county	25	urban	male	77	11
county	25	urban	female	78	14
county	25	urban	male	78	8
county	25	urban	female	79	28
county	25	urban	male	79	21
county	25	urban	female	8	516
county	25	urban	male	8	528
county	25	urban	female	80+	167
county	25	urban	male	80+	144
county	25	urban	female	9	518
county	25	urban	male	9	522
county	25	urban	female	unspecified	0
county	25	urban	male	unspecified	4
county	40	rural	female	0	11379
county	40	rural	male	0	11348
county	40	rural	female	1	10429
county	40	rural	male	1	10331
county	40	rural	female	10	10460
county	40	rural	male	10	10347
county	40	rural	female	11	8084
county	40	rural	male	11	7820
county	40	rural	female	12	9745
county	40	rural	male	12	9839
county	40	rural	female	13	8905
county	40	rural	male	13	8893
county	40	rural	female	14	8107
county	40	rural	male	14	8440
county	40	rural	female	15	8091
county	40	rural	male	15	8234
county	40	rural	female	16	7310
county	40	rural	male	16	7597
county	40	rural	female	17	7172
county	40	rural	male	17	8033
county	40	rural	female	18	6754
county	40	rural	male	18	7157
county	40	rural	female	19	6101
county	40	rural	male	19	5835
county	40	rural	female	2	11598
county	40	rural	male	2	11611
county	40	rural	female	20	7634
county	40	rural	male	20	6212
county	40	rural	female	21	5200
county	40	rural	male	21	4449
county	40	rural	female	22	6216
county	40	rural	male	22	4860
county	40	rural	female	23	5301
county	40	rural	male	23	4251
county	40	rural	female	24	4936
county	40	rural	male	24	3837
county	40	rural	female	25	5503
county	40	rural	male	25	4240
county	40	rural	female	26	4095
county	40	rural	male	26	3261
county	40	rural	female	27	4143
county	40	rural	male	27	3439
county	40	rural	female	28	3633
county	40	rural	male	28	2831
county	40	rural	female	29	3324
county	40	rural	male	29	2871
county	40	rural	female	3	11379
county	40	rural	male	3	11308
county	40	rural	female	30	5093
county	40	rural	male	30	3698
county	40	rural	female	31	2992
county	40	rural	male	31	2534
county	40	rural	female	32	3651
county	40	rural	male	32	2943
county	40	rural	female	33	2685
county	40	rural	male	33	2325
county	40	rural	female	34	2729
county	40	rural	male	34	2415
county	40	rural	female	35	4145
county	40	rural	male	35	3255
county	40	rural	female	36	2373
county	40	rural	male	36	2046
county	40	rural	female	37	2484
county	40	rural	male	37	2057
county	40	rural	female	38	2313
county	40	rural	male	38	1745
county	40	rural	female	39	2195
county	40	rural	male	39	1778
county	40	rural	female	4	10899
county	40	rural	male	4	11102
county	40	rural	female	40	4036
county	40	rural	male	40	2676
county	40	rural	female	41	1992
county	40	rural	male	41	1702
county	40	rural	female	42	1962
county	40	rural	male	42	1565
county	40	rural	female	43	1790
county	40	rural	male	43	1326
county	40	rural	female	44	1661
county	40	rural	male	44	1335
county	40	rural	female	45	2728
county	40	rural	male	45	2037
county	40	rural	female	46	1947
county	40	rural	male	46	1494
county	40	rural	female	47	2193
county	40	rural	male	47	1588
county	40	rural	female	48	1746
county	40	rural	male	48	1330
county	40	rural	female	49	1851
county	40	rural	male	49	1539
county	40	rural	female	5	11079
county	40	rural	male	5	11086
county	40	rural	female	50	2897
county	40	rural	male	50	1897
county	40	rural	female	51	1530
county	40	rural	male	51	1266
county	40	rural	female	52	1515
county	40	rural	male	52	1220
county	40	rural	female	53	1413
county	40	rural	male	53	1063
county	40	rural	female	54	1443
county	40	rural	male	54	1065
county	40	rural	female	55	1747
county	40	rural	male	55	1328
county	40	rural	female	56	1264
county	40	rural	male	56	1007
county	40	rural	female	57	1557
county	40	rural	male	57	1327
county	40	rural	female	58	802
county	40	rural	male	58	680
county	40	rural	female	59	1278
county	40	rural	male	59	967
county	40	rural	female	6	10336
county	40	rural	male	6	10353
county	40	rural	female	60	1993
county	40	rural	male	60	1374
county	40	rural	female	61	1097
county	40	rural	male	61	904
county	40	rural	female	62	761
county	40	rural	male	62	715
county	40	rural	female	63	797
county	40	rural	male	63	733
county	40	rural	female	64	1018
county	40	rural	male	64	753
county	40	rural	female	65	1070
county	40	rural	male	65	840
county	40	rural	female	66	533
county	40	rural	male	66	485
county	40	rural	female	67	1049
county	40	rural	male	67	850
county	40	rural	female	68	533
county	40	rural	male	68	450
county	40	rural	female	69	943
county	40	rural	male	69	618
county	40	rural	female	7	9964
county	40	rural	male	7	9798
county	40	rural	female	70	1360
county	40	rural	male	70	831
county	40	rural	female	71	609
county	40	rural	male	71	540
county	40	rural	female	72	595
county	40	rural	male	72	498
county	40	rural	female	73	539
county	40	rural	male	73	555
county	40	rural	female	74	597
county	40	rural	male	74	449
county	40	rural	female	75	661
county	40	rural	male	75	466
county	40	rural	female	76	533
county	40	rural	male	76	470
county	40	rural	female	77	573
county	40	rural	male	77	531
county	40	rural	female	78	406
county	40	rural	male	78	333
county	40	rural	female	79	690
county	40	rural	male	79	416
county	40	rural	female	8	9590
county	40	rural	male	8	9201
county	40	rural	female	80+	3192
county	40	rural	male	80+	2513
county	40	rural	female	9	9772
county	40	rural	male	9	9671
county	40	rural	female	unspecified	135
county	40	rural	male	unspecified	134
county	40	urban	female	0	2326
county	40	urban	male	0	2220
county	40	urban	female	1	1961
county	40	urban	male	1	1989
county	40	urban	female	10	1797
county	40	urban	male	10	1755
county	40	urban	female	11	1345
county	40	urban	male	11	1294
county	40	urban	female	12	1753
county	40	urban	male	12	1658
county	40	urban	female	13	1552
county	40	urban	male	13	1480
county	40	urban	female	14	1568
county	40	urban	male	14	1398
county	40	urban	female	15	1510
county	40	urban	male	15	1355
county	40	urban	female	16	1424
county	40	urban	male	16	1219
county	40	urban	female	17	1476
county	40	urban	male	17	1317
county	40	urban	female	18	1527
county	40	urban	male	18	1293
county	40	urban	female	19	1415
county	40	urban	male	19	1091
county	40	urban	female	2	2023
county	40	urban	male	2	2043
county	40	urban	female	20	1963
county	40	urban	male	20	1408
county	40	urban	female	21	1301
county	40	urban	male	21	1001
county	40	urban	female	22	1704
county	40	urban	male	22	1295
county	40	urban	female	23	1508
county	40	urban	male	23	1245
county	40	urban	female	24	1303
county	40	urban	male	24	1119
county	40	urban	female	25	1603
county	40	urban	male	25	1441
county	40	urban	female	26	1152
county	40	urban	male	26	1036
county	40	urban	female	27	1031
county	40	urban	male	27	1081
county	40	urban	female	28	1114
county	40	urban	male	28	1014
county	40	urban	female	29	859
county	40	urban	male	29	881
county	40	urban	female	3	2013
county	40	urban	male	3	1983
county	40	urban	female	30	1343
county	40	urban	male	30	1309
county	40	urban	female	31	569
county	40	urban	male	31	641
county	40	urban	female	32	812
county	40	urban	male	32	1002
county	40	urban	female	33	562
county	40	urban	male	33	584
county	40	urban	female	34	564
county	40	urban	male	34	616
county	40	urban	female	35	989
county	40	urban	male	35	1057
county	40	urban	female	36	508
county	40	urban	male	36	521
county	40	urban	female	37	477
county	40	urban	male	37	510
county	40	urban	female	38	594
county	40	urban	male	38	483
county	40	urban	female	39	482
county	40	urban	male	39	459
county	40	urban	female	4	1953
county	40	urban	male	4	1878
county	40	urban	female	40	823
county	40	urban	male	40	778
county	40	urban	female	41	324
county	40	urban	male	41	359
county	40	urban	female	42	437
county	40	urban	male	42	467
county	40	urban	female	43	324
county	40	urban	male	43	336
county	40	urban	female	44	275
county	40	urban	male	44	295
county	40	urban	female	45	550
county	40	urban	male	45	545
county	40	urban	female	46	318
county	40	urban	male	46	350
county	40	urban	female	47	335
county	40	urban	male	47	376
county	40	urban	female	48	344
county	40	urban	male	48	277
county	40	urban	female	49	283
county	40	urban	male	49	298
county	40	urban	female	5	1838
county	40	urban	male	5	1812
county	40	urban	female	50	460
county	40	urban	male	50	419
county	40	urban	female	51	229
county	40	urban	male	51	227
county	40	urban	female	52	208
county	40	urban	male	52	244
county	40	urban	female	53	181
county	40	urban	male	53	174
county	40	urban	female	54	179
county	40	urban	male	54	212
county	40	urban	female	55	250
county	40	urban	male	55	218
county	40	urban	female	56	147
county	40	urban	male	56	180
county	40	urban	female	57	176
county	40	urban	male	57	178
county	40	urban	female	58	106
county	40	urban	male	58	115
county	40	urban	female	59	143
county	40	urban	male	59	138
county	40	urban	female	6	1793
county	40	urban	male	6	1765
county	40	urban	female	60	269
county	40	urban	male	60	193
county	40	urban	female	61	113
county	40	urban	male	61	110
county	40	urban	female	62	79
county	40	urban	male	62	114
county	40	urban	female	63	85
county	40	urban	male	63	86
county	40	urban	female	64	86
county	40	urban	male	64	77
county	40	urban	female	65	124
county	40	urban	male	65	108
county	40	urban	female	66	55
county	40	urban	male	66	59
county	40	urban	female	67	134
county	40	urban	male	67	116
county	40	urban	female	68	65
county	40	urban	male	68	60
county	40	urban	female	69	83
county	40	urban	male	69	62
county	40	urban	female	7	1744
county	40	urban	male	7	1720
county	40	urban	female	70	131
county	40	urban	male	70	95
county	40	urban	female	71	54
county	40	urban	male	71	60
county	40	urban	female	72	51
county	40	urban	male	72	56
county	40	urban	female	73	45
county	40	urban	male	73	63
county	40	urban	female	74	58
county	40	urban	male	74	54
county	40	urban	female	75	54
county	40	urban	male	75	62
county	40	urban	female	76	48
county	40	urban	male	76	47
county	40	urban	female	77	53
county	40	urban	male	77	51
county	40	urban	female	78	23
county	40	urban	male	78	22
county	40	urban	female	79	62
county	40	urban	male	79	29
county	40	urban	female	8	1621
county	40	urban	male	8	1571
county	40	urban	female	80+	387
county	40	urban	male	80+	251
county	40	urban	female	9	1730
county	40	urban	male	9	1642
county	40	urban	female	unspecified	31
county	40	urban	male	unspecified	54
county	43	urban	male	15	1756
county	43	urban	female	16	1660
county	43	urban	male	16	1562
county	43	urban	female	17	1788
county	43	urban	male	17	1645
county	43	urban	female	18	1808
county	43	urban	male	18	1652
county	43	urban	female	19	1509
county	43	urban	male	19	1142
county	43	urban	female	2	2409
county	43	urban	male	2	2448
county	43	urban	female	20	2484
county	43	urban	male	20	1575
county	43	urban	female	21	1463
county	43	urban	male	21	1034
county	43	urban	female	22	1737
county	43	urban	male	22	1238
county	43	urban	female	23	1562
county	43	urban	male	23	1172
county	43	urban	female	24	1495
county	43	urban	male	24	1118
county	43	urban	female	25	1778
county	43	urban	male	25	1534
county	43	urban	female	26	1243
county	43	urban	male	26	1112
county	43	urban	female	27	1081
county	43	urban	male	27	1085
county	43	urban	female	28	1144
county	43	urban	male	28	1006
county	43	urban	female	29	768
county	43	urban	male	29	862
county	43	urban	female	3	2447
county	43	urban	male	3	2395
county	43	urban	female	30	1606
county	43	urban	male	30	1491
county	43	urban	female	31	567
county	43	urban	male	31	625
county	43	urban	female	32	888
county	43	urban	male	32	890
county	43	urban	female	33	495
county	43	urban	male	33	581
county	43	urban	female	34	571
county	43	urban	male	34	560
county	43	urban	female	35	1023
county	43	urban	male	35	1017
county	43	urban	female	36	530
county	43	urban	male	36	469
county	43	urban	female	37	500
county	43	urban	male	37	473
county	43	urban	female	38	570
county	43	urban	male	38	436
county	43	urban	female	39	348
county	43	urban	male	39	387
county	43	urban	female	4	2310
county	43	urban	male	4	2253
county	43	urban	female	40	1012
county	43	urban	male	40	780
county	43	urban	female	41	309
county	43	urban	male	41	344
county	43	urban	female	42	423
county	43	urban	male	42	354
county	43	urban	female	43	307
county	43	urban	male	43	260
county	43	urban	female	44	265
county	43	urban	male	44	263
county	43	urban	female	45	656
county	43	urban	male	45	535
county	43	urban	female	46	369
county	43	urban	male	46	340
county	43	urban	female	47	355
county	43	urban	male	47	319
county	43	urban	female	48	299
county	43	urban	male	48	239
county	43	urban	female	49	278
county	43	urban	male	49	281
county	43	urban	female	5	2306
county	43	urban	male	5	2212
county	43	urban	female	50	571
county	43	urban	male	50	428
county	43	urban	female	51	243
county	43	urban	male	51	237
county	43	urban	female	52	255
county	43	urban	male	52	267
county	43	urban	female	53	249
county	43	urban	male	53	223
county	43	urban	female	54	209
county	43	urban	male	54	189
county	43	urban	female	55	278
county	43	urban	male	55	278
county	43	urban	female	56	193
county	43	urban	male	56	221
county	43	urban	female	57	236
county	43	urban	male	57	206
county	43	urban	female	58	137
county	43	urban	male	58	146
county	43	urban	female	59	146
county	43	urban	male	59	147
county	43	urban	female	6	2039
county	43	urban	male	6	2052
county	43	urban	female	60	367
county	43	urban	male	60	307
county	43	urban	female	61	140
county	43	urban	male	61	156
county	43	urban	female	62	119
county	43	urban	male	62	142
county	43	urban	female	63	109
county	43	urban	male	63	119
county	43	urban	female	64	118
county	43	urban	male	64	120
county	43	urban	female	65	174
county	43	urban	male	65	122
county	43	urban	female	66	79
county	43	urban	male	66	59
county	43	urban	female	67	121
county	43	urban	male	67	110
county	43	urban	female	68	84
county	43	urban	male	68	65
county	43	urban	female	69	109
county	43	urban	male	69	77
county	43	urban	female	7	2005
county	43	urban	male	7	1922
county	43	urban	female	70	238
county	43	urban	male	70	151
county	43	urban	female	71	95
county	43	urban	male	71	72
county	43	urban	female	72	81
county	43	urban	male	72	62
county	43	urban	female	73	75
county	43	urban	male	73	61
county	43	urban	female	74	67
county	43	urban	male	74	64
county	43	urban	female	75	117
county	43	urban	male	75	70
county	43	urban	female	76	58
county	43	urban	male	76	43
county	43	urban	female	77	52
county	43	urban	male	77	65
county	43	urban	female	78	69
county	43	urban	male	78	51
county	43	urban	female	79	83
county	43	urban	male	79	42
county	43	urban	female	8	1949
county	43	urban	male	8	1919
county	43	urban	female	80+	531
county	43	urban	male	80+	338
county	43	urban	female	9	1991
county	43	urban	male	9	1894
county	43	urban	female	unspecified	22
county	43	urban	male	unspecified	26
county	44	rural	female	0	13079
county	44	rural	male	0	12998
county	44	rural	female	1	10651
county	44	rural	male	1	10868
county	44	rural	female	10	10715
county	44	rural	male	10	10716
county	44	rural	female	11	7610
county	44	rural	male	11	7441
county	44	rural	female	12	8757
county	44	rural	male	12	9431
county	44	rural	female	13	7424
county	44	rural	male	13	7878
county	44	rural	female	14	7457
county	44	rural	male	14	8115
county	44	rural	female	15	7228
county	44	rural	male	15	7762
county	44	rural	female	16	7179
county	44	rural	male	16	7500
county	44	rural	female	17	6384
county	44	rural	male	17	7273
county	44	rural	female	18	6933
county	44	rural	male	18	7253
county	44	rural	female	19	5506
county	44	rural	male	19	5268
county	44	rural	female	2	13024
county	44	rural	male	2	12926
county	44	rural	female	20	8509
county	44	rural	male	20	6684
county	44	rural	female	21	4989
county	44	rural	male	21	4410
county	44	rural	female	22	5729
county	44	rural	male	22	4801
county	44	rural	female	23	5456
county	44	rural	male	23	4332
county	44	rural	female	24	5080
county	44	rural	male	24	4331
county	44	rural	female	25	6252
county	44	rural	male	25	4939
county	44	rural	female	26	4410
county	44	rural	male	26	3794
county	44	rural	female	27	3891
county	44	rural	male	27	3481
county	44	rural	female	28	4103
county	44	rural	male	28	3255
county	44	rural	female	29	3097
county	44	rural	male	29	2933
county	44	rural	female	3	11795
county	44	rural	male	3	11906
county	44	rural	female	30	5516
county	44	rural	male	30	4432
county	44	rural	female	31	2721
county	44	rural	male	31	2500
county	44	rural	female	32	3324
county	44	rural	male	32	2777
county	44	rural	female	33	2385
county	44	rural	male	33	2186
county	44	rural	female	34	2620
county	44	rural	male	34	2254
county	44	rural	female	35	3887
county	44	rural	male	35	3299
county	44	rural	female	36	2605
county	44	rural	male	36	2182
county	44	rural	female	37	2152
county	44	rural	male	37	1885
county	44	rural	female	38	2207
county	44	rural	male	38	1659
county	44	rural	female	39	1900
county	44	rural	male	39	1494
county	44	rural	female	4	11529
county	44	rural	male	4	11735
county	44	rural	female	40	3678
county	44	rural	male	40	2653
county	44	rural	female	41	1746
county	44	rural	male	41	1526
county	44	rural	female	42	1569
county	44	rural	male	42	1288
county	44	rural	female	43	1374
county	44	rural	male	43	1102
county	44	rural	female	44	1450
county	44	rural	male	44	1119
county	44	rural	female	45	2497
county	44	rural	male	45	1969
county	44	rural	female	46	1786
county	44	rural	male	46	1414
county	44	rural	female	47	1630
county	44	rural	male	47	1279
county	44	rural	female	48	1382
county	44	rural	male	48	1045
county	44	rural	female	49	1380
county	44	rural	male	49	1119
county	44	rural	female	5	10994
county	44	rural	male	5	11140
county	44	rural	female	50	2475
county	44	rural	male	50	1746
county	44	rural	female	51	1247
county	44	rural	male	51	1052
county	44	rural	female	52	1155
county	44	rural	male	52	1054
county	44	rural	female	53	1029
county	44	rural	male	53	866
county	44	rural	female	54	1144
county	44	rural	male	54	892
county	44	rural	female	55	1303
county	44	rural	male	55	1129
county	44	rural	female	56	1218
county	44	rural	male	56	954
county	44	rural	female	57	1169
county	44	rural	male	57	914
county	44	rural	female	58	775
county	44	rural	male	58	619
county	44	rural	female	59	869
county	44	rural	male	59	682
county	44	rural	female	6	11024
county	44	rural	male	6	10942
county	44	rural	female	60	1640
county	44	rural	male	60	1237
county	44	rural	female	61	709
county	44	rural	male	61	689
county	44	rural	female	62	593
county	44	rural	male	62	608
county	44	rural	female	63	532
county	44	rural	male	63	520
county	44	rural	female	64	695
county	44	rural	male	64	548
county	44	rural	female	65	837
county	44	rural	male	65	625
county	44	rural	female	66	605
county	44	rural	male	66	439
county	44	rural	female	67	602
county	44	rural	male	67	572
county	44	rural	female	68	550
county	44	rural	male	68	371
county	44	rural	female	69	647
county	44	rural	male	69	416
county	44	rural	female	7	9058
county	44	rural	male	7	9096
county	44	rural	female	70	932
county	44	rural	male	70	668
county	44	rural	female	71	373
county	44	rural	male	71	348
county	44	rural	female	72	392
county	44	rural	male	72	398
county	44	rural	female	73	389
county	44	rural	male	73	344
county	44	rural	female	74	390
county	44	rural	male	74	310
county	44	rural	female	75	492
county	44	rural	male	75	355
county	44	rural	female	76	326
county	44	rural	male	76	307
county	44	rural	female	77	367
county	44	rural	male	77	261
county	44	rural	female	78	495
county	44	rural	male	78	255
county	44	rural	female	79	437
county	44	rural	male	79	267
county	44	rural	female	8	10377
county	44	rural	male	8	10369
county	44	rural	female	80+	2472
county	44	rural	male	80+	1827
county	44	rural	female	9	9147
county	44	rural	male	9	9242
county	44	rural	female	unspecified	168
county	44	rural	male	unspecified	161
county	44	urban	female	0	6230
county	44	urban	male	0	6267
county	44	urban	female	1	5208
county	44	urban	male	1	5312
county	44	urban	female	10	5091
county	44	urban	male	10	5023
county	44	urban	female	11	3679
county	44	urban	male	11	3339
county	44	urban	female	12	4555
county	44	urban	male	12	4625
county	44	urban	female	13	4001
county	44	urban	male	13	3899
county	44	urban	female	14	3960
county	44	urban	male	14	3833
county	44	urban	female	15	4007
county	44	urban	male	15	3840
county	44	urban	female	16	3763
county	44	urban	male	16	3575
county	44	urban	female	17	3798
county	44	urban	male	17	3721
county	44	urban	female	18	4148
county	44	urban	male	18	4051
county	44	urban	female	19	3292
county	44	urban	male	19	2832
county	44	urban	female	2	6043
county	44	urban	male	2	6024
county	44	urban	female	20	5205
county	44	urban	male	20	3750
county	44	urban	female	21	3091
county	44	urban	male	21	2455
county	44	urban	female	22	3550
county	44	urban	male	22	2760
county	44	urban	female	23	3250
county	44	urban	male	23	2559
county	44	urban	female	24	3145
county	44	urban	male	24	2608
county	44	urban	female	25	3788
county	44	urban	male	25	3298
county	44	urban	female	26	2564
county	44	urban	male	26	2478
county	44	urban	female	27	2361
county	44	urban	male	27	2373
county	44	urban	female	28	2401
county	44	urban	male	28	2228
county	44	urban	female	29	1803
county	44	urban	male	29	1948
county	44	urban	female	3	5777
county	44	urban	male	3	5665
county	44	urban	female	30	3360
county	44	urban	male	30	3125
county	44	urban	female	31	1287
county	44	urban	male	31	1536
county	44	urban	female	32	1912
county	44	urban	male	32	1921
county	44	urban	female	33	1186
county	44	urban	male	33	1288
county	44	urban	female	34	1319
county	44	urban	male	34	1325
county	44	urban	female	35	2129
county	44	urban	male	35	2220
county	44	urban	female	36	1178
county	44	urban	male	36	1245
county	44	urban	female	37	1150
county	44	urban	male	37	1085
county	44	urban	female	38	1191
county	44	urban	male	38	1059
county	44	urban	female	39	914
county	44	urban	male	39	896
county	44	urban	female	4	5492
county	44	urban	male	4	5485
county	44	urban	female	40	2008
county	44	urban	male	40	1670
county	44	urban	female	41	719
county	44	urban	male	41	712
county	44	urban	female	42	886
county	44	urban	male	42	838
county	44	urban	female	43	687
county	44	urban	male	43	653
county	44	urban	female	44	656
county	44	urban	male	44	609
county	44	urban	female	45	1351
county	44	urban	male	45	1142
county	44	urban	female	46	816
county	44	urban	male	46	738
county	44	urban	female	47	808
county	44	urban	male	47	708
county	44	urban	female	48	636
county	44	urban	male	48	565
county	44	urban	female	49	602
county	44	urban	male	49	570
county	44	urban	female	5	5189
county	44	urban	male	5	5283
county	44	urban	female	50	1177
county	44	urban	male	50	966
county	44	urban	female	51	555
county	44	urban	male	51	538
county	44	urban	female	52	574
county	44	urban	male	52	563
county	44	urban	female	53	471
county	44	urban	male	53	443
county	44	urban	female	54	487
county	44	urban	male	54	445
county	44	urban	female	55	603
county	44	urban	male	55	549
county	44	urban	female	56	548
county	44	urban	male	56	472
county	44	urban	female	57	524
county	44	urban	male	57	486
county	44	urban	female	58	329
county	44	urban	male	58	302
county	44	urban	female	59	354
county	44	urban	male	59	292
county	44	urban	female	6	4898
county	44	urban	male	6	4760
county	44	urban	female	60	749
county	44	urban	male	60	603
county	44	urban	female	61	295
county	44	urban	male	61	302
county	44	urban	female	62	262
county	44	urban	male	62	282
county	44	urban	female	63	220
county	44	urban	male	63	230
county	44	urban	female	64	305
county	44	urban	male	64	231
county	44	urban	female	65	351
county	44	urban	male	65	274
county	44	urban	female	66	238
county	44	urban	male	66	160
county	44	urban	female	67	260
county	44	urban	male	67	251
county	44	urban	female	68	187
county	44	urban	male	68	120
county	44	urban	female	69	231
county	44	urban	male	69	154
county	44	urban	female	7	4418
county	44	urban	male	7	4190
county	44	urban	female	70	441
county	44	urban	male	70	299
county	44	urban	female	71	143
county	44	urban	male	71	140
county	44	urban	female	72	171
county	44	urban	male	72	124
county	44	urban	female	73	137
county	44	urban	male	73	156
county	44	urban	female	74	156
county	44	urban	male	74	120
county	44	urban	female	75	187
county	44	urban	male	75	158
county	44	urban	female	76	135
county	44	urban	male	76	113
county	44	urban	female	77	150
county	44	urban	male	77	125
county	44	urban	female	78	213
county	44	urban	male	78	105
county	44	urban	female	79	166
county	44	urban	male	79	87
county	44	urban	female	8	4754
county	44	urban	male	8	4645
county	44	urban	female	80+	1164
county	44	urban	male	80+	797
county	44	urban	female	9	4474
county	44	urban	male	9	4205
county	44	urban	female	unspecified	78
county	44	urban	male	unspecified	98
county	45	rural	female	0	17377
county	45	rural	male	0	17539
county	45	rural	female	1	14810
county	45	rural	male	1	14857
county	45	rural	female	10	16058
county	45	rural	male	10	16281
county	45	rural	female	11	10328
county	45	rural	male	11	10195
county	45	rural	female	12	15087
county	45	rural	male	12	15335
county	45	rural	female	13	12616
county	45	rural	male	13	12621
county	45	rural	female	14	12683
county	45	rural	male	14	13198
county	45	rural	female	15	12285
county	45	rural	male	15	12406
county	45	rural	female	16	12226
county	45	rural	male	16	12216
county	45	rural	female	17	10890
county	45	rural	male	17	11537
county	45	rural	female	18	13536
county	45	rural	male	18	13266
county	45	rural	female	19	8792
county	45	rural	male	19	8108
county	45	rural	female	2	18268
county	45	rural	male	2	18544
county	45	rural	female	20	15679
county	45	rural	male	20	10954
county	45	rural	female	21	8310
county	45	rural	male	21	6395
county	45	rural	female	22	11283
county	45	rural	male	22	7864
county	45	rural	female	23	9076
county	45	rural	male	23	6374
county	45	rural	female	24	9223
county	45	rural	male	24	6227
county	45	rural	female	25	12383
county	45	rural	male	25	8035
county	45	rural	female	26	6959
county	45	rural	male	26	5295
county	45	rural	female	27	7412
county	45	rural	male	27	5552
county	45	rural	female	28	8199
county	45	rural	male	28	5292
county	45	rural	female	29	5077
county	45	rural	male	29	4345
county	45	rural	female	3	17766
county	45	rural	male	3	17289
county	45	rural	female	30	11308
county	45	rural	male	30	7804
county	45	rural	female	31	3941
county	45	rural	male	31	4153
county	45	rural	female	32	5693
county	45	rural	male	32	4612
county	45	rural	female	33	3768
county	45	rural	male	33	3564
county	45	rural	female	34	3982
county	45	rural	male	34	3601
county	45	rural	female	35	8928
county	45	rural	male	35	6851
county	45	rural	female	36	4076
county	45	rural	male	36	3470
county	45	rural	female	37	4326
county	45	rural	male	37	3590
county	45	rural	female	38	4607
county	45	rural	male	38	3210
county	45	rural	female	39	3174
county	45	rural	male	39	2778
county	45	rural	female	4	16856
county	45	rural	male	4	17226
county	45	rural	female	40	8452
county	45	rural	male	40	5342
county	45	rural	female	41	2538
county	45	rural	male	41	2641
county	45	rural	female	42	2874
county	45	rural	male	42	2618
county	45	rural	female	43	2086
county	45	rural	male	43	1964
county	45	rural	female	44	2030
county	45	rural	male	44	1973
county	45	rural	female	45	5884
county	45	rural	male	45	4488
county	45	rural	female	46	3010
county	45	rural	male	46	3046
county	45	rural	female	47	3412
county	45	rural	male	47	2907
county	45	rural	female	48	3531
county	45	rural	male	48	2555
county	45	rural	female	49	2986
county	45	rural	male	49	2809
county	45	rural	female	5	15801
county	45	rural	male	5	16482
county	45	rural	female	50	6242
county	45	rural	male	50	4155
county	45	rural	female	51	2154
county	45	rural	male	51	2255
county	45	rural	female	52	2170
county	45	rural	male	52	2240
county	45	rural	female	53	1807
county	45	rural	male	53	1922
county	45	rural	female	54	1832
county	45	rural	male	54	1738
county	45	rural	female	55	3227
county	45	rural	male	55	2740
county	45	rural	female	56	1627
county	45	rural	male	56	1739
county	45	rural	female	57	1767
county	45	rural	male	57	2077
county	45	rural	female	58	1408
county	45	rural	male	58	1279
county	45	rural	female	59	1607
county	45	rural	male	59	1467
county	45	rural	female	6	15580
county	45	rural	male	6	15659
county	45	rural	female	60	4111
county	45	rural	male	60	2776
county	45	rural	female	61	1186
county	45	rural	male	61	1476
county	45	rural	female	62	915
county	45	rural	male	62	1169
county	45	rural	female	63	764
county	45	rural	male	63	1008
county	45	rural	female	64	1099
county	45	rural	male	64	1004
county	45	rural	female	65	2019
county	45	rural	male	65	1470
county	45	rural	female	66	581
county	45	rural	male	66	626
county	45	rural	female	67	918
county	45	rural	male	67	1111
county	45	rural	female	68	929
county	45	rural	male	68	759
county	45	rural	female	69	1126
county	45	rural	male	69	787
county	45	rural	female	7	14411
county	45	rural	male	7	14517
county	45	rural	female	70	2788
county	45	rural	male	70	1564
county	45	rural	female	71	599
county	45	rural	male	71	635
county	45	rural	female	72	662
county	45	rural	male	72	673
county	45	rural	female	73	500
county	45	rural	male	73	660
county	45	rural	female	74	656
county	45	rural	male	74	564
county	45	rural	female	75	1178
county	45	rural	male	75	789
county	45	rural	female	76	495
county	45	rural	male	76	494
county	45	rural	female	77	409
county	45	rural	male	77	568
county	45	rural	female	78	623
county	45	rural	male	78	480
county	45	rural	female	79	747
county	45	rural	male	79	483
county	45	rural	female	8	15301
county	45	rural	male	8	14971
county	45	rural	female	80+	5906
county	45	rural	male	80+	3841
county	45	rural	female	9	13569
county	45	rural	male	9	13881
county	45	rural	female	unspecified	156
county	45	rural	male	unspecified	199
county	45	urban	female	0	4401
county	45	urban	male	0	4517
county	45	urban	female	1	3680
county	45	urban	male	1	3841
county	45	urban	female	10	3903
county	45	urban	male	10	3903
county	45	urban	female	11	2706
county	45	urban	male	11	2639
county	45	urban	female	12	3956
county	45	urban	male	12	3871
county	45	urban	female	13	3460
county	45	urban	male	13	3357
county	45	urban	female	14	3400
county	45	urban	male	14	3308
county	45	urban	female	15	3346
county	45	urban	male	15	3063
county	45	urban	female	16	3376
county	45	urban	male	16	3180
county	45	urban	female	17	3172
county	45	urban	male	17	3252
county	45	urban	female	18	3857
county	45	urban	male	18	3601
county	45	urban	female	19	2829
county	45	urban	male	19	2410
county	45	urban	female	2	4403
county	45	urban	male	2	4427
county	45	urban	female	20	4781
county	45	urban	male	20	3316
county	45	urban	female	21	2705
county	45	urban	male	21	2093
county	45	urban	female	22	3513
county	45	urban	male	22	2682
county	45	urban	female	23	3138
county	45	urban	male	23	2367
county	45	urban	female	24	3018
county	45	urban	male	24	2341
county	45	urban	female	25	3889
county	45	urban	male	25	2929
county	45	urban	female	26	2379
county	45	urban	male	26	2009
county	45	urban	female	27	2293
county	45	urban	male	27	2315
county	45	urban	female	28	2638
county	45	urban	male	28	2038
county	45	urban	female	29	1630
county	45	urban	male	29	1586
county	45	urban	female	3	4201
county	45	urban	male	3	4312
county	45	urban	female	30	3199
county	45	urban	male	30	2833
county	45	urban	female	31	1163
county	45	urban	male	31	1467
county	45	urban	female	32	1792
county	45	urban	male	32	1710
county	45	urban	female	33	1142
county	45	urban	male	33	1217
county	45	urban	female	34	1245
county	45	urban	male	34	1346
county	45	urban	female	35	2550
county	45	urban	male	35	2301
county	45	urban	female	36	1159
county	45	urban	male	36	1078
county	45	urban	female	37	1151
county	45	urban	male	37	1188
county	45	urban	female	38	1379
county	45	urban	female	62	211
county	45	urban	male	62	295
county	45	urban	female	63	157
county	45	urban	male	63	254
county	45	urban	female	64	224
county	45	urban	male	64	233
county	45	urban	female	65	425
county	45	urban	male	65	353
county	45	urban	female	66	127
county	45	urban	male	66	158
county	45	urban	female	67	165
county	45	urban	male	67	239
county	45	urban	female	68	188
county	45	urban	male	68	158
county	45	urban	female	69	243
county	45	urban	male	69	171
county	45	urban	female	7	3572
county	45	urban	male	7	3520
county	45	urban	female	70	593
county	45	urban	male	70	360
county	45	urban	female	71	113
county	45	urban	male	71	154
county	45	urban	female	72	121
county	45	urban	male	72	153
county	45	urban	female	73	100
county	45	urban	male	73	135
county	45	urban	female	74	127
county	45	urban	male	74	123
county	45	urban	female	75	243
county	45	urban	male	75	187
county	45	urban	female	76	98
county	45	urban	male	76	115
county	45	urban	female	77	87
county	45	urban	male	77	103
county	45	urban	female	78	115
county	45	urban	male	78	93
county	45	urban	female	79	149
county	45	urban	male	79	92
county	45	urban	female	8	3809
county	45	urban	male	8	3510
county	45	urban	female	80+	1319
county	45	urban	male	80+	721
county	45	urban	female	9	3482
county	45	urban	male	9	3451
county	45	urban	female	unspecified	49
county	45	urban	male	unspecified	57
county	46	rural	male	26	2438
county	46	rural	female	27	3076
county	46	rural	male	27	2540
county	46	rural	female	28	3885
county	46	rural	male	28	2529
county	46	rural	female	29	2151
county	46	rural	male	29	1959
county	46	rural	female	3	6970
county	46	rural	male	3	6961
county	46	rural	female	30	5391
county	46	rural	male	30	3875
county	46	rural	female	31	1699
county	46	rural	male	31	1874
county	46	rural	female	32	2502
county	46	rural	male	32	2218
county	46	rural	female	33	1541
county	46	rural	male	33	1536
county	46	rural	female	34	1671
county	46	rural	male	34	1665
county	46	rural	female	35	4277
county	46	rural	male	35	3463
county	46	rural	female	36	1736
county	46	rural	male	36	1567
county	46	rural	female	37	1797
county	46	rural	male	37	1554
county	46	rural	female	38	2203
county	46	rural	male	38	1622
county	46	rural	female	39	1374
county	46	rural	male	39	1260
county	46	rural	female	4	6704
county	46	rural	male	4	7166
county	46	rural	female	40	3830
county	46	rural	male	40	2938
county	46	rural	female	41	1007
county	46	rural	male	41	1123
county	46	rural	female	42	1111
county	46	rural	male	42	1254
county	46	rural	female	43	819
county	46	rural	male	43	862
county	46	rural	female	44	784
county	46	rural	male	44	906
county	46	rural	female	45	2566
county	46	rural	male	45	2301
county	46	rural	female	46	1229
county	46	rural	male	46	1416
county	46	rural	female	47	1380
county	46	rural	male	47	1381
county	46	rural	female	48	1546
county	46	rural	male	48	1293
county	46	rural	female	49	1170
county	46	rural	male	49	1370
county	46	rural	female	5	6627
county	46	rural	male	5	6901
county	46	rural	female	50	2780
county	46	rural	male	50	2206
county	46	rural	female	51	786
county	46	rural	male	51	1027
county	46	rural	female	52	865
county	46	rural	male	52	1021
county	46	rural	female	53	648
county	46	rural	male	53	747
county	46	rural	female	54	651
county	46	rural	male	54	761
county	46	rural	female	55	1290
county	46	rural	male	55	1372
county	46	rural	female	56	643
county	46	rural	male	56	738
county	46	rural	female	57	709
county	46	rural	male	57	843
county	46	rural	female	58	556
county	46	rural	male	58	524
county	46	rural	female	59	600
county	46	rural	male	59	619
county	46	rural	female	6	6404
county	46	rural	male	6	6218
county	46	rural	female	60	1741
county	46	rural	male	60	1357
county	46	rural	female	61	505
county	46	rural	male	61	685
county	46	rural	female	62	368
county	46	rural	male	62	446
county	46	rural	female	63	306
county	46	rural	male	63	407
county	46	rural	female	64	383
county	46	rural	male	64	438
county	46	rural	female	65	857
county	46	rural	male	65	654
county	46	rural	female	66	192
county	46	rural	male	66	253
county	46	rural	female	67	356
county	46	rural	male	67	446
county	46	rural	female	68	348
county	46	rural	male	68	343
county	46	rural	female	69	431
county	46	rural	male	69	335
county	46	rural	female	7	5846
county	46	rural	male	7	5718
county	46	rural	female	70	1211
county	46	rural	male	70	762
county	46	rural	female	71	235
county	46	rural	male	71	258
county	46	rural	female	72	262
county	46	rural	male	72	308
county	46	rural	female	73	190
county	46	rural	male	73	260
county	46	rural	female	74	236
county	46	rural	male	74	269
county	46	rural	female	75	445
county	46	rural	male	75	331
county	46	rural	female	76	192
county	46	rural	male	76	236
county	46	rural	female	77	131
county	46	rural	male	77	225
county	46	rural	female	78	238
county	46	rural	male	78	241
county	46	rural	female	79	237
county	46	rural	male	79	201
county	46	rural	female	8	6212
county	46	rural	male	8	6144
county	46	rural	female	80+	2347
county	46	rural	male	80+	1627
county	46	rural	female	9	5621
county	46	rural	male	9	5745
county	46	rural	female	unspecified	51
county	46	rural	male	unspecified	54
county	46	urban	female	0	1123
county	46	urban	male	0	1111
county	46	urban	female	1	972
county	46	urban	male	1	961
county	46	urban	female	10	974
county	46	urban	male	10	982
county	46	urban	female	11	634
county	46	urban	male	11	626
county	46	urban	female	12	1013
county	46	urban	male	12	1035
county	46	urban	female	13	817
county	46	urban	male	13	739
county	46	urban	female	14	904
county	46	urban	male	14	887
county	46	urban	female	15	759
county	46	urban	male	15	809
county	46	urban	female	16	838
county	46	urban	male	16	829
county	46	urban	female	17	769
county	46	urban	male	17	831
county	46	urban	female	18	967
county	46	urban	male	18	1018
county	46	urban	female	19	633
county	46	urban	male	19	579
county	46	urban	female	2	1081
county	46	urban	male	2	1183
county	46	urban	female	20	1160
county	46	urban	male	20	826
county	46	urban	female	21	592
county	46	urban	male	21	438
county	46	urban	female	22	821
county	46	urban	male	22	586
county	46	urban	female	23	677
county	46	urban	male	23	459
county	46	urban	female	24	687
county	46	urban	male	24	519
county	46	urban	female	25	962
county	46	urban	male	25	665
county	46	urban	female	26	605
county	46	urban	male	26	430
county	46	urban	female	27	541
county	46	urban	male	27	445
county	46	urban	female	28	764
county	46	urban	male	28	490
county	46	urban	female	29	378
county	46	urban	male	29	328
county	46	urban	female	3	1080
county	46	urban	male	3	1084
county	46	urban	female	30	884
county	46	urban	male	30	729
county	46	urban	female	31	251
county	46	urban	male	31	305
county	46	urban	female	32	426
county	46	urban	male	32	408
county	46	urban	female	33	253
county	46	urban	male	33	281
county	46	urban	female	34	309
county	46	urban	male	34	296
county	46	urban	female	35	730
county	46	urban	male	35	615
county	46	urban	female	36	277
county	46	urban	male	36	248
county	46	urban	female	37	281
county	46	urban	male	37	251
county	46	urban	female	38	368
county	46	urban	male	38	292
county	46	urban	female	39	248
county	46	urban	male	39	226
county	46	urban	female	4	1058
county	46	urban	male	4	1111
county	46	urban	female	40	615
county	46	urban	male	40	522
county	46	urban	female	41	157
county	46	urban	male	41	161
county	46	urban	female	42	162
county	46	urban	male	42	183
county	46	urban	female	43	128
county	46	urban	male	43	151
county	46	urban	female	44	125
county	46	urban	male	44	142
county	46	urban	female	45	439
county	46	urban	male	45	385
county	46	urban	female	46	208
county	46	urban	male	46	235
county	46	urban	female	47	208
county	46	urban	male	47	225
county	46	urban	female	48	267
county	46	urban	male	48	205
county	46	urban	female	49	176
county	46	urban	male	49	215
county	46	urban	female	5	1048
county	46	urban	male	5	1054
county	46	urban	female	50	425
county	46	urban	male	50	378
county	46	urban	female	51	127
county	46	urban	male	51	173
county	46	urban	female	52	126
county	46	urban	male	52	152
county	46	urban	female	53	95
county	46	urban	male	53	119
county	46	urban	female	54	111
county	46	urban	male	54	131
county	46	urban	female	55	199
county	46	urban	male	55	204
county	46	urban	female	56	96
county	46	urban	male	56	116
county	46	urban	female	57	114
county	46	urban	male	57	131
county	46	urban	female	58	97
county	46	urban	male	58	98
county	46	urban	female	59	89
county	46	urban	male	59	86
county	46	urban	female	6	964
county	46	urban	male	6	961
county	46	urban	female	60	222
county	46	urban	male	60	220
county	46	urban	female	61	71
county	46	urban	male	61	112
county	46	urban	female	62	59
county	46	urban	male	62	80
county	46	urban	female	63	38
county	46	urban	male	63	64
county	46	urban	female	64	59
county	46	urban	male	64	68
county	46	urban	female	65	111
county	46	urban	male	65	97
county	46	urban	female	66	24
county	46	urban	male	66	40
county	46	urban	female	67	42
county	46	urban	male	67	59
county	46	urban	female	68	49
county	46	urban	male	68	50
county	46	urban	female	69	62
county	46	urban	male	69	65
county	46	urban	female	7	923
county	46	urban	male	7	922
county	46	urban	female	70	204
county	46	urban	male	70	95
county	46	urban	female	71	23
county	46	urban	male	71	39
county	46	urban	female	72	33
county	46	urban	male	72	35
county	46	urban	female	73	17
county	46	urban	male	73	43
county	46	urban	female	74	25
county	46	urban	male	74	35
county	46	urban	female	75	67
county	46	urban	male	75	42
county	46	urban	female	76	19
county	46	urban	male	76	27
county	46	urban	female	77	20
county	46	urban	male	77	23
county	46	urban	female	78	32
county	46	urban	male	78	31
county	46	urban	female	79	34
county	46	urban	male	79	24
county	46	urban	female	8	1053
county	46	urban	male	8	963
county	46	urban	female	80+	343
county	46	urban	male	80+	215
county	46	urban	female	9	950
county	46	urban	male	9	972
county	46	urban	female	unspecified	19
county	46	urban	male	unspecified	22
county	47	urban	female	18	36024
county	47	urban	male	18	26039
county	47	urban	female	19	37268
county	47	urban	male	19	26136
county	47	urban	female	2	39310
county	47	urban	male	2	39673
county	47	urban	female	20	56935
county	47	urban	male	20	37648
county	47	urban	female	21	44278
county	47	urban	male	21	34304
county	47	urban	female	22	56608
county	47	urban	male	22	44429
county	47	urban	female	23	55248
county	47	urban	male	23	46896
county	47	urban	female	24	53238
county	47	urban	male	24	47812
county	47	urban	female	25	59623
county	47	urban	male	25	57219
county	47	urban	female	26	46219
county	47	urban	male	26	44815
county	47	urban	female	27	42597
county	47	urban	male	27	47005
county	47	urban	female	28	45885
county	47	urban	male	28	46432
county	47	urban	female	29	33833
county	47	urban	male	29	39125
county	47	urban	female	3	38044
county	47	urban	male	3	38198
county	47	urban	female	30	49660
county	47	urban	male	30	59258
county	47	urban	female	31	20832
county	47	urban	male	31	28908
county	47	urban	female	32	30859
county	47	urban	male	32	39825
county	47	urban	female	33	19563
county	47	urban	male	33	25780
county	47	urban	female	34	20592
county	47	urban	male	34	28852
county	47	urban	female	35	29490
county	47	urban	male	35	43568
county	47	urban	female	36	17266
county	47	urban	male	36	23533
county	47	urban	female	37	15515
county	47	urban	male	37	22388
county	47	urban	female	38	18927
county	47	urban	male	38	24516
county	47	urban	female	39	13975
county	47	urban	male	39	20454
county	47	urban	female	4	36112
county	47	urban	male	4	36436
county	47	urban	female	40	21710
county	47	urban	male	40	32856
county	47	urban	female	41	8122
county	47	urban	male	41	13466
county	47	urban	female	42	11818
county	47	urban	male	42	18451
county	47	urban	female	43	8799
county	47	urban	male	43	13232
county	47	urban	female	44	7043
county	47	urban	male	44	11104
county	47	urban	female	45	12653
county	47	urban	male	45	20009
county	47	urban	female	46	8139
county	47	urban	male	46	12506
county	47	urban	female	47	6779
county	47	urban	male	47	11510
county	47	urban	female	48	7234
county	47	urban	male	48	11018
county	47	urban	female	49	6297
county	47	urban	male	49	10858
county	47	urban	female	5	34693
county	47	urban	male	5	34895
county	47	urban	female	50	9494
county	47	urban	male	50	14637
county	47	urban	female	51	3868
county	47	urban	male	51	6945
county	47	urban	female	52	4601
county	47	urban	male	52	8121
county	47	urban	female	53	3420
county	47	urban	male	53	6003
county	47	urban	female	54	3511
county	47	urban	male	54	5976
county	47	urban	female	55	4558
county	47	urban	male	55	7185
county	47	urban	female	56	3148
county	47	urban	male	56	5199
county	47	urban	female	57	2743
county	47	urban	male	57	4744
county	47	urban	female	58	2337
county	47	urban	male	58	3636
county	47	urban	female	59	2195
county	47	urban	male	59	3540
county	47	urban	female	6	31891
county	47	urban	male	6	31092
county	47	urban	female	60	4251
county	47	urban	male	60	5650
county	47	urban	female	61	1487
county	47	urban	male	61	2500
county	47	urban	female	62	1662
county	47	urban	male	62	2711
county	47	urban	female	63	1373
county	47	urban	male	63	2238
county	47	urban	female	64	1332
county	47	urban	male	64	1962
county	47	urban	female	65	2008
county	47	urban	male	65	2601
county	47	urban	female	66	929
county	47	urban	male	66	1207
county	47	urban	female	67	998
county	47	urban	male	67	1425
county	47	urban	female	68	875
county	47	urban	male	68	1112
county	47	urban	female	69	854
county	47	urban	male	69	1013
county	47	urban	female	7	30014
county	47	urban	male	7	29496
county	47	urban	female	70	2010
county	47	urban	male	70	1777
county	47	urban	female	71	537
county	47	urban	male	71	623
county	47	urban	female	72	664
county	47	urban	male	72	842
county	47	urban	female	73	540
county	47	urban	male	73	667
county	47	urban	female	74	489
county	47	urban	male	74	553
county	47	urban	female	75	883
county	47	urban	male	75	804
county	47	urban	female	76	462
county	47	urban	male	76	482
county	47	urban	female	77	337
county	47	urban	male	77	389
county	47	urban	female	78	436
county	47	urban	male	78	415
county	47	urban	female	79	401
county	47	urban	male	79	334
county	47	urban	female	8	28795
county	47	urban	male	8	27787
county	47	urban	female	80+	5175
county	47	urban	male	80+	3348
county	47	urban	female	9	29584
county	47	urban	male	9	28630
county	47	urban	female	unspecified	1761
county	47	urban	male	unspecified	1810
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('auth_permission_id_seq', 1, false);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: contraceptive_method; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY contraceptive_method (geo_level, geo_code, contraceptive_method, total) FROM stdin;
county	1	modern	43.6000000000000014
county	1	traditional	11.4000000000000004
county	2	modern	38.2000000000000028
county	2	traditional	3.29999999999999982
county	3	modern	32.7999999999999972
county	3	traditional	1.30000000000000004
county	4	modern	20.5
county	4	traditional	8.19999999999999929
county	5	modern	39.5
county	5	traditional	2.60000000000000009
county	6	modern	61.2999999999999972
county	6	traditional	6.59999999999999964
county	7	modern	5.5
county	7	traditional	0
county	8	modern	2.29999999999999982
county	8	traditional	0
county	9	modern	1.89999999999999991
county	9	traditional	0
county	10	modern	10.9000000000000004
county	10	traditional	0.800000000000000044
county	11	modern	26.3000000000000007
county	11	traditional	0.699999999999999956
county	12	modern	73.2000000000000028
county	12	traditional	5
county	13	modern	67.2000000000000028
county	13	traditional	6.79999999999999982
county	14	modern	67.2000000000000028
county	14	traditional	3.39999999999999991
county	15	modern	55.1000000000000014
county	15	traditional	2.20000000000000018
county	16	modern	67.5
county	16	traditional	8.30000000000000071
county	17	modern	65
county	17	traditional	15.3000000000000007
county	18	modern	60.3999999999999986
county	18	traditional	5.20000000000000018
county	19	modern	67.0999999999999943
county	19	traditional	6
county	20	modern	75.5999999999999943
county	20	traditional	5.40000000000000036
county	21	modern	63.3999999999999986
county	21	traditional	5.5
county	22	modern	67.7999999999999972
county	22	traditional	6.29999999999999982
county	23	modern	10.0999999999999996
county	23	traditional	0.299999999999999989
county	24	modern	13.3000000000000007
county	24	traditional	0.900000000000000022
county	25	modern	20
county	25	traditional	2.70000000000000018
county	26	modern	56.3999999999999986
county	26	traditional	7.5
county	27	modern	56
county	27	traditional	6.59999999999999964
county	28	modern	43.6000000000000014
county	28	traditional	11.5999999999999996
county	29	modern	59.2000000000000028
county	29	traditional	5.40000000000000036
county	30	modern	33.1000000000000014
county	30	traditional	8.30000000000000071
county	31	modern	51.2999999999999972
county	31	traditional	7.79999999999999982
county	32	modern	53.5
county	32	traditional	3.20000000000000018
county	33	modern	38.1000000000000014
county	33	traditional	9.69999999999999929
county	34	modern	45.2000000000000028
county	34	traditional	9.30000000000000071
county	35	modern	56.8999999999999986
county	35	traditional	6.09999999999999964
county	36	modern	50.3999999999999986
county	36	traditional	4.40000000000000036
county	37	modern	60.2999999999999972
county	37	traditional	1.69999999999999996
county	38	modern	56.6000000000000014
county	38	traditional	2.89999999999999991
county	39	modern	53.8999999999999986
county	39	traditional	1.60000000000000009
county	40	modern	56.5
county	40	traditional	0.900000000000000022
county	41	modern	51
county	41	traditional	4
county	42	modern	59.2999999999999972
county	42	traditional	3.10000000000000009
county	43	modern	45.5
county	43	traditional	1.19999999999999996
county	44	modern	43.8999999999999986
county	44	traditional	0.699999999999999956
county	45	modern	62.7999999999999972
county	45	traditional	3.39999999999999991
county	46	modern	64.2000000000000028
county	46	traditional	3.70000000000000018
county	47	modern	58.2999999999999972
county	47	traditional	4.40000000000000036
country	KE	modern	53.2000000000000028
country	KE	traditional	4.79999999999999982
\.


--
-- Data for Name: contraceptive_modern_method; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY contraceptive_modern_method (geo_level, geo_code, contraceptive_modern_method, total) FROM stdin;
county	1	female sterilisation	0.200000000000000011
county	1	male sterilisation	0
county	1	IUD	3.20000000000000018
county	1	implants	12.5999999999999996
county	1	injectables	17.6999999999999993
county	1	pill	6.5
county	1	male condom	2.89999999999999991
county	1	female condom	0
county	1	LAM	0.400000000000000022
county	1	other	0
county	2	female sterilisation	3
county	2	male sterilisation	0
county	2	IUD	1.60000000000000009
county	2	implants	6.79999999999999982
county	2	injectables	21.6000000000000014
county	2	pill	4.29999999999999982
county	2	male condom	0.800000000000000044
county	2	female condom	0
county	2	LAM	0
county	2	other	0
county	3	female sterilisation	2.79999999999999982
county	3	male sterilisation	0
county	3	IUD	1.10000000000000009
county	3	implants	10
county	3	injectables	15.9000000000000004
county	3	pill	2.70000000000000018
county	3	male condom	0.299999999999999989
county	3	female condom	0
county	3	LAM	0
county	3	other	0
county	4	female sterilisation	0.200000000000000011
county	4	male sterilisation	0
county	4	IUD	0.400000000000000022
county	4	implants	2.70000000000000018
county	4	injectables	13.0999999999999996
county	4	pill	1.10000000000000009
county	4	male condom	3
county	4	female condom	0
county	4	LAM	0
county	4	other	0
county	5	female sterilisation	1.19999999999999996
county	5	male sterilisation	0
county	5	IUD	1
county	5	implants	6.40000000000000036
county	5	injectables	19
county	5	pill	10.1999999999999993
county	5	male condom	1.19999999999999996
county	5	female condom	0
county	5	LAM	0.5
county	5	other	0
county	6	female sterilisation	0.400000000000000022
county	6	male sterilisation	0
county	6	IUD	6.90000000000000036
county	6	implants	8.59999999999999964
county	6	injectables	34.1000000000000014
county	6	pill	10
county	6	male condom	1.5
county	6	female condom	0
county	6	LAM	0
county	6	other	0
county	7	female sterilisation	0
county	7	male sterilisation	0
county	7	IUD	0.200000000000000011
county	7	implants	1.5
county	7	injectables	2.39999999999999991
county	7	pill	1.10000000000000009
county	7	male condom	0.100000000000000006
county	7	female condom	0
county	7	LAM	0.100000000000000006
county	7	other	0
county	8	female sterilisation	0
county	8	male sterilisation	0
county	8	IUD	0
county	8	implants	0.200000000000000011
county	8	injectables	1.60000000000000009
county	8	pill	0.200000000000000011
county	8	male condom	0.100000000000000006
county	8	female condom	0
county	8	LAM	0.200000000000000011
county	8	other	0
county	9	female sterilisation	0
county	9	male sterilisation	0
county	9	IUD	0
county	9	implants	0
county	9	injectables	1.5
county	9	pill	0.400000000000000022
county	9	male condom	0
county	9	female condom	0
county	9	LAM	0
county	9	other	0
county	10	female sterilisation	0.400000000000000022
county	10	male sterilisation	0
county	10	IUD	0.299999999999999989
county	10	implants	2.70000000000000018
county	10	injectables	6.29999999999999982
county	10	pill	1.10000000000000009
county	10	male condom	0
county	10	female condom	0
county	10	LAM	0
county	10	other	0
county	11	female sterilisation	0.800000000000000044
county	11	male sterilisation	0
county	11	IUD	1.39999999999999991
county	11	implants	3.29999999999999982
county	11	injectables	13.1999999999999993
county	11	pill	7.20000000000000018
county	11	male condom	0.400000000000000022
county	11	female condom	0
county	11	LAM	0
county	11	other	0
county	12	female sterilisation	4.29999999999999982
county	12	male sterilisation	0
county	12	IUD	5.40000000000000036
county	12	implants	3.5
county	12	injectables	44.7999999999999972
county	12	pill	12.3000000000000007
county	12	male condom	2.79999999999999982
county	12	female condom	0
county	12	LAM	0
county	12	other	0
county	13	female sterilisation	1.80000000000000004
county	13	male sterilisation	0
county	13	IUD	7.20000000000000018
county	13	implants	5.5
county	13	injectables	44.1000000000000014
county	13	pill	7
county	13	male condom	1.30000000000000004
county	13	female condom	0.200000000000000011
county	13	LAM	0
county	13	other	0
county	14	female sterilisation	3.79999999999999982
county	14	male sterilisation	0
county	14	IUD	4.59999999999999964
county	14	implants	11
county	14	injectables	31.1999999999999993
county	14	pill	15.1999999999999993
county	14	male condom	1.5
county	14	female condom	0
county	14	LAM	0
county	14	other	0
county	15	female sterilisation	3
county	15	male sterilisation	0
county	15	IUD	1.10000000000000009
county	15	implants	9.5
county	15	injectables	36.8999999999999986
county	15	pill	4.5
county	15	male condom	0
county	15	female condom	0
county	15	LAM	0
county	15	other	0
county	16	female sterilisation	5.5
county	16	male sterilisation	0
county	16	IUD	0.5
county	16	implants	10.4000000000000004
county	16	injectables	41.6000000000000014
county	16	pill	9.09999999999999964
county	16	male condom	0.5
county	16	female condom	0
county	16	LAM	0
county	16	other	0
county	17	female sterilisation	10.1999999999999993
county	17	male sterilisation	0
county	17	IUD	1.80000000000000004
county	17	implants	10.3000000000000007
county	17	injectables	33.7999999999999972
county	17	pill	5.90000000000000036
county	17	male condom	2.89999999999999991
county	17	female condom	0
county	17	LAM	0
county	17	other	0
county	18	female sterilisation	2.79999999999999982
county	18	male sterilisation	0
county	18	IUD	8
county	18	implants	10.8000000000000007
county	18	injectables	22.8999999999999986
county	18	pill	13.8000000000000007
county	18	male condom	0.900000000000000022
county	18	female condom	0
county	18	LAM	1.30000000000000004
county	18	other	0
county	19	female sterilisation	7.29999999999999982
county	19	male sterilisation	0
county	19	IUD	10
county	19	implants	9.19999999999999929
county	19	injectables	22.3000000000000007
county	19	pill	16.6999999999999993
county	19	male condom	1.60000000000000009
county	19	female condom	0
county	19	LAM	0
county	19	other	0
county	20	female sterilisation	0.900000000000000022
county	20	male sterilisation	0
county	20	IUD	13.1999999999999993
county	20	implants	13
county	20	injectables	20.3999999999999986
county	20	pill	26
county	20	male condom	2
county	20	female condom	0
county	20	LAM	0
county	20	other	0
county	21	female sterilisation	4
county	21	male sterilisation	0
county	21	IUD	6.29999999999999982
county	21	implants	7.79999999999999982
county	21	injectables	20.6000000000000014
county	21	pill	22.1000000000000014
county	21	male condom	2.5
county	21	female condom	0
county	21	LAM	0
county	21	other	0
county	22	female sterilisation	2.70000000000000018
county	22	male sterilisation	0
county	22	IUD	8.90000000000000036
county	22	implants	12
county	22	injectables	21.8999999999999986
county	22	pill	19.1999999999999993
county	22	male condom	3.10000000000000009
county	22	female condom	0
county	22	LAM	0
county	22	other	0
county	23	female sterilisation	0
county	23	male sterilisation	0
county	23	IUD	0.5
county	23	implants	3
county	23	injectables	5.70000000000000018
county	23	pill	0.5
county	23	male condom	0.400000000000000022
county	23	female condom	0
county	23	LAM	0
county	23	other	0
county	24	female sterilisation	0.400000000000000022
county	24	male sterilisation	0
county	24	IUD	0.200000000000000011
county	24	implants	3.10000000000000009
county	24	injectables	9
county	24	pill	0.699999999999999956
county	24	male condom	0
county	24	female condom	0
county	24	LAM	0
county	24	other	0
county	25	female sterilisation	0.5
county	25	male sterilisation	0
county	25	IUD	0.599999999999999978
county	25	implants	4.40000000000000036
county	25	injectables	10.9000000000000004
county	25	pill	2.89999999999999991
county	25	male condom	0.800000000000000044
county	25	female condom	0
county	25	LAM	0
county	25	other	0
county	26	female sterilisation	4
county	26	male sterilisation	0
county	26	IUD	0.699999999999999956
county	26	implants	4.59999999999999964
county	26	injectables	38.7000000000000028
county	26	pill	4.90000000000000036
county	26	male condom	3.20000000000000018
county	26	female condom	0.100000000000000006
county	26	LAM	0.200000000000000011
county	26	other	0
county	27	female sterilisation	1.80000000000000004
county	27	male sterilisation	0
county	27	IUD	2.70000000000000018
county	27	implants	12.9000000000000004
county	27	injectables	28.6999999999999993
county	27	pill	7.40000000000000036
county	27	male condom	2.39999999999999991
county	27	female condom	0
county	27	LAM	0
county	27	other	0
county	28	female sterilisation	1.10000000000000009
county	28	male sterilisation	0
county	28	IUD	1.30000000000000004
county	28	implants	8.69999999999999929
county	28	injectables	28.5
county	28	pill	1.60000000000000009
county	28	male condom	2.10000000000000009
county	28	female condom	0.299999999999999989
county	28	LAM	0
county	28	other	0
county	29	female sterilisation	1.80000000000000004
county	29	male sterilisation	0
county	29	IUD	0.900000000000000022
county	29	implants	9.09999999999999964
county	29	injectables	40.2999999999999972
county	29	pill	5.5
county	29	male condom	1.60000000000000009
county	29	female condom	0
county	29	LAM	0
county	29	other	0
county	30	female sterilisation	0.699999999999999956
county	30	male sterilisation	0
county	30	IUD	3.20000000000000018
county	30	implants	5.5
county	30	injectables	16.1999999999999993
county	30	pill	4.59999999999999964
county	30	male condom	2.29999999999999982
county	30	female condom	0
county	30	LAM	0.599999999999999978
county	30	other	0
county	31	female sterilisation	5
county	31	male sterilisation	0
county	31	IUD	5.09999999999999964
county	31	implants	4.5
county	31	injectables	20.8000000000000007
county	31	pill	12.5
county	31	male condom	3.10000000000000009
county	31	female condom	0
county	31	LAM	0
county	31	other	0.400000000000000022
county	32	female sterilisation	1.39999999999999991
county	32	male sterilisation	0.200000000000000011
county	32	IUD	6.70000000000000018
county	32	implants	7.59999999999999964
county	32	injectables	25.3999999999999986
county	32	pill	10.4000000000000004
county	32	male condom	1.39999999999999991
county	32	female condom	0
county	32	LAM	0.400000000000000022
county	32	other	0
county	33	female sterilisation	1.89999999999999991
county	33	male sterilisation	0
county	33	IUD	1.10000000000000009
county	33	implants	3.79999999999999982
county	33	injectables	25.3000000000000007
county	33	pill	3.70000000000000018
county	33	male condom	2.20000000000000018
county	33	female condom	0
county	33	LAM	0
county	33	other	0.100000000000000006
county	34	female sterilisation	1.5
county	34	male sterilisation	0
county	34	IUD	5.90000000000000036
county	34	implants	8.90000000000000036
county	34	injectables	20
county	34	pill	6.5
county	34	male condom	2.20000000000000018
county	34	female condom	0
county	34	LAM	0.200000000000000011
county	34	other	0
county	35	female sterilisation	3.5
county	35	male sterilisation	0
county	35	IUD	2.10000000000000009
county	35	implants	9.90000000000000036
county	35	injectables	35.7999999999999972
county	35	pill	3.20000000000000018
county	35	male condom	1.89999999999999991
county	35	female condom	0
county	35	LAM	0.299999999999999989
county	35	other	0.200000000000000011
county	36	female sterilisation	4.90000000000000036
county	36	male sterilisation	0
county	36	IUD	1.69999999999999996
county	36	implants	7.5
county	36	injectables	33.8999999999999986
county	36	pill	0.400000000000000022
county	36	male condom	2
county	36	female condom	0
county	36	LAM	0
county	36	other	0
county	37	female sterilisation	6.90000000000000036
county	37	male sterilisation	0
county	37	IUD	1
county	37	implants	14.0999999999999996
county	37	injectables	30.3999999999999986
county	37	pill	5.40000000000000036
county	37	male condom	2.60000000000000009
county	37	female condom	0
county	37	LAM	0
county	37	other	0
county	38	female sterilisation	3.89999999999999991
county	38	male sterilisation	0
county	38	IUD	3.29999999999999982
county	38	implants	16.1999999999999993
county	38	injectables	25.3000000000000007
county	38	pill	4.79999999999999982
county	38	male condom	3.10000000000000009
county	38	female condom	0
county	38	LAM	0
county	38	other	0
county	39	female sterilisation	5.09999999999999964
county	39	male sterilisation	0
county	39	IUD	0.800000000000000044
county	39	implants	11.8000000000000007
county	39	injectables	29
county	39	pill	4.40000000000000036
county	39	male condom	2.89999999999999991
county	39	female condom	0
county	39	LAM	0
county	39	other	0
county	40	female sterilisation	6.5
county	40	male sterilisation	0
county	40	IUD	1.80000000000000004
county	40	implants	23.6000000000000014
county	40	injectables	20.1999999999999993
county	40	pill	3.5
county	40	male condom	1
county	40	female condom	0
county	40	LAM	0
county	40	other	0
county	41	female sterilisation	3.20000000000000018
county	41	male sterilisation	0
county	41	IUD	1.80000000000000004
county	41	implants	15.3000000000000007
county	41	injectables	19.3000000000000007
county	41	pill	5.79999999999999982
county	41	male condom	5.70000000000000018
county	41	female condom	0
county	41	LAM	0
county	41	other	0
county	42	female sterilisation	5.20000000000000018
county	42	male sterilisation	0
county	42	IUD	1.5
county	42	implants	21.1000000000000014
county	42	injectables	24.3000000000000007
county	42	pill	3.70000000000000018
county	42	male condom	3.5
county	42	female condom	0
county	42	LAM	0
county	42	other	0
county	43	female sterilisation	3.79999999999999982
county	43	male sterilisation	0
county	43	IUD	1.10000000000000009
county	43	implants	8.59999999999999964
county	43	injectables	26.1000000000000014
county	43	pill	2.10000000000000009
county	43	male condom	3.5
county	43	female condom	0
county	43	LAM	0
county	43	other	0.299999999999999989
county	44	female sterilisation	1.89999999999999991
county	44	male sterilisation	0
county	44	IUD	1.10000000000000009
county	44	implants	10.5999999999999996
county	44	injectables	24.6000000000000014
county	44	pill	2.29999999999999982
county	44	male condom	3.10000000000000009
county	44	female condom	0.299999999999999989
county	44	LAM	0
county	44	other	0
county	45	female sterilisation	3.20000000000000018
county	45	male sterilisation	0
county	45	IUD	3.5
county	45	implants	9.19999999999999929
county	45	injectables	41.7999999999999972
county	45	pill	4
county	45	male condom	0.800000000000000044
county	45	female condom	0
county	45	LAM	0.299999999999999989
county	45	other	0
county	46	female sterilisation	4.20000000000000018
county	46	male sterilisation	0
county	46	IUD	3.89999999999999991
county	46	implants	8.19999999999999929
county	46	injectables	42.6000000000000014
county	46	pill	3.5
county	46	male condom	1.19999999999999996
county	46	female condom	0
county	46	LAM	0.299999999999999989
county	46	other	0.299999999999999989
county	47	female sterilisation	2
county	47	male sterilisation	0.100000000000000006
county	47	IUD	4.5
county	47	implants	12.0999999999999996
county	47	injectables	23.6000000000000014
county	47	pill	12.5
county	47	male condom	3.29999999999999982
county	47	female condom	0
county	47	LAM	0
county	47	other	0
country	KE	female sterilisation	3.20000000000000018
country	KE	male sterilisation	0
country	KE	IUD	3.39999999999999991
country	KE	implants	9.90000000000000036
country	KE	injectables	26.3999999999999986
country	KE	pill	8
country	KE	male condom	2.20000000000000018
country	KE	female condom	0
country	KE	LAM	0.100000000000000006
country	KE	other	0
\.


--
-- Data for Name: contraceptive_traditional_method; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY contraceptive_traditional_method (geo_level, geo_code, contraceptive_traditional_method, total) FROM stdin;
county	1	female sterilisation	0.200000000000000011
county	1	male sterilisation	0
county	1	IUD	3.20000000000000018
county	1	implants	12.5999999999999996
county	1	injectables	17.6999999999999993
county	1	pill	6.5
county	1	male condom	2.89999999999999991
county	1	female condom	0
county	1	LAM	0.400000000000000022
county	1	other	0
county	2	female sterilisation	3
county	2	male sterilisation	0
county	2	IUD	1.60000000000000009
county	2	implants	6.79999999999999982
county	2	injectables	21.6000000000000014
county	2	pill	4.29999999999999982
county	2	male condom	0.800000000000000044
county	2	female condom	0
county	2	LAM	0
county	2	other	0
county	3	female sterilisation	2.79999999999999982
county	3	male sterilisation	0
county	3	IUD	1.10000000000000009
county	3	implants	10
county	3	injectables	15.9000000000000004
county	3	pill	2.70000000000000018
county	3	male condom	0.299999999999999989
county	3	female condom	0
county	3	LAM	0
county	3	other	0
county	4	female sterilisation	0.200000000000000011
county	4	male sterilisation	0
county	4	IUD	0.400000000000000022
county	4	implants	2.70000000000000018
county	4	injectables	13.0999999999999996
county	4	pill	1.10000000000000009
county	4	male condom	3
county	4	female condom	0
county	4	LAM	0
county	4	other	0
county	5	female sterilisation	1.19999999999999996
county	5	male sterilisation	0
county	5	IUD	1
county	5	implants	6.40000000000000036
county	5	injectables	19
county	5	pill	10.1999999999999993
county	5	male condom	1.19999999999999996
county	5	female condom	0
county	5	LAM	0.5
county	5	other	0
county	6	female sterilisation	0.400000000000000022
county	6	male sterilisation	0
county	6	IUD	6.90000000000000036
county	6	implants	8.59999999999999964
county	6	injectables	34.1000000000000014
county	6	pill	10
county	6	male condom	1.5
county	6	female condom	0
county	6	LAM	0
county	6	other	0
county	7	female sterilisation	0
county	7	male sterilisation	0
county	7	IUD	0.200000000000000011
county	7	implants	1.5
county	7	injectables	2.39999999999999991
county	7	pill	1.10000000000000009
county	7	male condom	0.100000000000000006
county	7	female condom	0
county	7	LAM	0.100000000000000006
county	7	other	0
county	8	female sterilisation	0
county	8	male sterilisation	0
county	8	IUD	0
county	8	implants	0.200000000000000011
county	8	injectables	1.60000000000000009
county	8	pill	0.200000000000000011
county	8	male condom	0.100000000000000006
county	8	female condom	0
county	8	LAM	0.200000000000000011
county	8	other	0
county	9	female sterilisation	0
county	9	male sterilisation	0
county	9	IUD	0
county	9	implants	0
county	9	injectables	1.5
county	9	pill	0.400000000000000022
county	9	male condom	0
county	9	female condom	0
county	9	LAM	0
county	9	other	0
county	10	female sterilisation	0.400000000000000022
county	10	male sterilisation	0
county	10	IUD	0.299999999999999989
county	10	implants	2.70000000000000018
county	10	injectables	6.29999999999999982
county	10	pill	1.10000000000000009
county	10	male condom	0
county	10	female condom	0
county	10	LAM	0
county	10	other	0
county	11	female sterilisation	0.800000000000000044
county	11	male sterilisation	0
county	11	IUD	1.39999999999999991
county	11	implants	3.29999999999999982
county	11	injectables	13.1999999999999993
county	11	pill	7.20000000000000018
county	11	male condom	0.400000000000000022
county	11	female condom	0
county	11	LAM	0
county	11	other	0
county	12	female sterilisation	4.29999999999999982
county	12	male sterilisation	0
county	12	IUD	5.40000000000000036
county	12	implants	3.5
county	12	injectables	44.7999999999999972
county	12	pill	12.3000000000000007
county	12	male condom	2.79999999999999982
county	12	female condom	0
county	12	LAM	0
county	12	other	0
county	13	female sterilisation	1.80000000000000004
county	13	male sterilisation	0
county	13	IUD	7.20000000000000018
county	13	implants	5.5
county	13	injectables	44.1000000000000014
county	13	pill	7
county	13	male condom	1.30000000000000004
county	13	female condom	0.200000000000000011
county	13	LAM	0
county	13	other	0
county	14	female sterilisation	3.79999999999999982
county	14	male sterilisation	0
county	14	IUD	4.59999999999999964
county	14	implants	11
county	14	injectables	31.1999999999999993
county	14	pill	15.1999999999999993
county	14	male condom	1.5
county	14	female condom	0
county	14	LAM	0
county	14	other	0
county	15	female sterilisation	3
county	15	male sterilisation	0
county	15	IUD	1.10000000000000009
county	15	implants	9.5
county	15	injectables	36.8999999999999986
county	15	pill	4.5
county	15	male condom	0
county	15	female condom	0
county	15	LAM	0
county	15	other	0
county	16	female sterilisation	5.5
county	16	male sterilisation	0
county	16	IUD	0.5
county	16	implants	10.4000000000000004
county	16	injectables	41.6000000000000014
county	16	pill	9.09999999999999964
county	16	male condom	0.5
county	16	female condom	0
county	16	LAM	0
county	16	other	0
county	17	female sterilisation	10.1999999999999993
county	17	male sterilisation	0
county	17	IUD	1.80000000000000004
county	17	implants	10.3000000000000007
county	17	injectables	33.7999999999999972
county	17	pill	5.90000000000000036
county	17	male condom	2.89999999999999991
county	17	female condom	0
county	17	LAM	0
county	17	other	0
county	18	female sterilisation	2.79999999999999982
county	18	male sterilisation	0
county	18	IUD	8
county	18	implants	10.8000000000000007
county	18	injectables	22.8999999999999986
county	18	pill	13.8000000000000007
county	18	male condom	0.900000000000000022
county	18	female condom	0
county	18	LAM	1.30000000000000004
county	18	other	0
county	19	female sterilisation	7.29999999999999982
county	19	male sterilisation	0
county	19	IUD	10
county	19	implants	9.19999999999999929
county	19	injectables	22.3000000000000007
county	19	pill	16.6999999999999993
county	19	male condom	1.60000000000000009
county	19	female condom	0
county	19	LAM	0
county	19	other	0
county	20	female sterilisation	0.900000000000000022
county	20	male sterilisation	0
county	20	IUD	13.1999999999999993
county	20	implants	13
county	20	injectables	20.3999999999999986
county	20	pill	26
county	20	male condom	2
county	20	female condom	0
county	20	LAM	0
county	20	other	0
county	21	female sterilisation	4
county	21	male sterilisation	0
county	21	IUD	6.29999999999999982
county	21	implants	7.79999999999999982
county	21	injectables	20.6000000000000014
county	21	pill	22.1000000000000014
county	21	male condom	2.5
county	21	female condom	0
county	21	LAM	0
county	21	other	0
county	22	female sterilisation	2.70000000000000018
county	22	male sterilisation	0
county	22	IUD	8.90000000000000036
county	22	implants	12
county	22	injectables	21.8999999999999986
county	22	pill	19.1999999999999993
county	22	male condom	3.10000000000000009
county	22	female condom	0
county	22	LAM	0
county	22	other	0
county	23	female sterilisation	0
county	23	male sterilisation	0
county	23	IUD	0.5
county	23	implants	3
county	23	injectables	5.70000000000000018
county	23	pill	0.5
county	23	male condom	0.400000000000000022
county	23	female condom	0
county	23	LAM	0
county	23	other	0
county	24	female sterilisation	0.400000000000000022
county	24	male sterilisation	0
county	24	IUD	0.200000000000000011
county	24	implants	3.10000000000000009
county	24	injectables	9
county	24	pill	0.699999999999999956
county	24	male condom	0
county	24	female condom	0
county	24	LAM	0
county	24	other	0
county	25	female sterilisation	0.5
county	25	male sterilisation	0
county	25	IUD	0.599999999999999978
county	25	implants	4.40000000000000036
county	25	injectables	10.9000000000000004
county	25	pill	2.89999999999999991
county	25	male condom	0.800000000000000044
county	25	female condom	0
county	25	LAM	0
county	25	other	0
county	26	female sterilisation	4
county	26	male sterilisation	0
county	26	IUD	0.699999999999999956
county	26	implants	4.59999999999999964
county	26	injectables	38.7000000000000028
county	26	pill	4.90000000000000036
county	26	male condom	3.20000000000000018
county	26	female condom	0.100000000000000006
county	26	LAM	0.200000000000000011
county	26	other	0
county	27	female sterilisation	1.80000000000000004
county	27	male sterilisation	0
county	27	IUD	2.70000000000000018
county	27	implants	12.9000000000000004
county	27	injectables	28.6999999999999993
county	27	pill	7.40000000000000036
county	27	male condom	2.39999999999999991
county	27	female condom	0
county	27	LAM	0
county	27	other	0
county	28	female sterilisation	1.10000000000000009
county	28	male sterilisation	0
county	28	IUD	1.30000000000000004
county	28	implants	8.69999999999999929
county	28	injectables	28.5
county	28	pill	1.60000000000000009
county	28	male condom	2.10000000000000009
county	28	female condom	0.299999999999999989
county	28	LAM	0
county	28	other	0
county	29	female sterilisation	1.80000000000000004
county	29	male sterilisation	0
county	29	IUD	0.900000000000000022
county	29	implants	9.09999999999999964
county	29	injectables	40.2999999999999972
county	29	pill	5.5
county	29	male condom	1.60000000000000009
county	29	female condom	0
county	29	LAM	0
county	29	other	0
county	30	female sterilisation	0.699999999999999956
county	30	male sterilisation	0
county	30	IUD	3.20000000000000018
county	30	implants	5.5
county	30	injectables	16.1999999999999993
county	30	pill	4.59999999999999964
county	30	male condom	2.29999999999999982
county	30	female condom	0
county	30	LAM	0.599999999999999978
county	30	other	0
county	31	female sterilisation	5
county	31	male sterilisation	0
county	31	IUD	5.09999999999999964
county	31	implants	4.5
county	31	injectables	20.8000000000000007
county	31	pill	12.5
county	31	male condom	3.10000000000000009
county	31	female condom	0
county	31	LAM	0
county	31	other	0.400000000000000022
county	32	female sterilisation	1.39999999999999991
county	32	male sterilisation	0.200000000000000011
county	32	IUD	6.70000000000000018
county	32	implants	7.59999999999999964
county	32	injectables	25.3999999999999986
county	32	pill	10.4000000000000004
county	32	male condom	1.39999999999999991
county	32	female condom	0
county	32	LAM	0.400000000000000022
county	32	other	0
county	33	female sterilisation	1.89999999999999991
county	33	male sterilisation	0
county	33	IUD	1.10000000000000009
county	33	implants	3.79999999999999982
county	33	injectables	25.3000000000000007
county	33	pill	3.70000000000000018
county	33	male condom	2.20000000000000018
county	33	female condom	0
county	33	LAM	0
county	33	other	0.100000000000000006
county	34	female sterilisation	1.5
county	34	male sterilisation	0
county	34	IUD	5.90000000000000036
county	34	implants	8.90000000000000036
county	34	injectables	20
county	34	pill	6.5
county	34	male condom	2.20000000000000018
county	34	female condom	0
county	34	LAM	0.200000000000000011
county	34	other	0
county	35	female sterilisation	3.5
county	35	male sterilisation	0
county	35	IUD	2.10000000000000009
county	35	implants	9.90000000000000036
county	35	injectables	35.7999999999999972
county	35	pill	3.20000000000000018
county	35	male condom	1.89999999999999991
county	35	female condom	0
county	35	LAM	0.299999999999999989
county	35	other	0.200000000000000011
county	36	female sterilisation	4.90000000000000036
county	36	male sterilisation	0
county	36	IUD	1.69999999999999996
county	36	implants	7.5
county	36	injectables	33.8999999999999986
county	36	pill	0.400000000000000022
county	36	male condom	2
county	36	female condom	0
county	36	LAM	0
county	36	other	0
county	37	female sterilisation	6.90000000000000036
county	37	male sterilisation	0
county	37	IUD	1
county	37	implants	14.0999999999999996
county	37	injectables	30.3999999999999986
county	37	pill	5.40000000000000036
county	37	male condom	2.60000000000000009
county	37	female condom	0
county	37	LAM	0
county	37	other	0
county	38	female sterilisation	3.89999999999999991
county	38	male sterilisation	0
county	38	IUD	3.29999999999999982
county	38	implants	16.1999999999999993
county	38	injectables	25.3000000000000007
county	38	pill	4.79999999999999982
county	38	male condom	3.10000000000000009
county	38	female condom	0
county	38	LAM	0
county	38	other	0
county	39	female sterilisation	5.09999999999999964
county	39	male sterilisation	0
county	39	IUD	0.800000000000000044
county	39	implants	11.8000000000000007
county	39	injectables	29
county	39	pill	4.40000000000000036
county	39	male condom	2.89999999999999991
county	39	female condom	0
county	39	LAM	0
county	39	other	0
county	40	female sterilisation	6.5
county	40	male sterilisation	0
county	40	IUD	1.80000000000000004
county	40	implants	23.6000000000000014
county	40	injectables	20.1999999999999993
county	40	pill	3.5
county	40	male condom	1
county	40	female condom	0
county	40	LAM	0
county	40	other	0
county	41	female sterilisation	3.20000000000000018
county	41	male sterilisation	0
county	41	IUD	1.80000000000000004
county	41	implants	15.3000000000000007
county	41	injectables	19.3000000000000007
county	41	pill	5.79999999999999982
county	41	male condom	5.70000000000000018
county	41	female condom	0
county	41	LAM	0
county	41	other	0
county	42	female sterilisation	5.20000000000000018
county	42	male sterilisation	0
county	42	IUD	1.5
county	42	implants	21.1000000000000014
county	42	injectables	24.3000000000000007
county	42	pill	3.70000000000000018
county	42	male condom	3.5
county	42	female condom	0
county	42	LAM	0
county	42	other	0
county	43	female sterilisation	3.79999999999999982
county	43	male sterilisation	0
county	43	IUD	1.10000000000000009
county	43	implants	8.59999999999999964
county	43	injectables	26.1000000000000014
county	43	pill	2.10000000000000009
county	43	male condom	3.5
county	43	female condom	0
county	43	LAM	0
county	43	other	0.299999999999999989
county	44	female sterilisation	1.89999999999999991
county	44	male sterilisation	0
county	44	IUD	1.10000000000000009
county	44	implants	10.5999999999999996
county	44	injectables	24.6000000000000014
county	44	pill	2.29999999999999982
county	44	male condom	3.10000000000000009
county	44	female condom	0.299999999999999989
county	44	LAM	0
county	44	other	0
county	45	female sterilisation	3.20000000000000018
county	45	male sterilisation	0
county	45	IUD	3.5
county	45	implants	9.19999999999999929
county	45	injectables	41.7999999999999972
county	45	pill	4
county	45	male condom	0.800000000000000044
county	45	female condom	0
county	45	LAM	0.299999999999999989
county	45	other	0
county	46	female sterilisation	4.20000000000000018
county	46	male sterilisation	0
county	46	IUD	3.89999999999999991
county	46	implants	8.19999999999999929
county	46	injectables	42.6000000000000014
county	46	pill	3.5
county	46	male condom	1.19999999999999996
county	46	female condom	0
county	46	LAM	0.299999999999999989
county	46	other	0.299999999999999989
county	47	female sterilisation	2
county	47	male sterilisation	0.100000000000000006
county	47	IUD	4.5
county	47	implants	12.0999999999999996
county	47	injectables	23.6000000000000014
county	47	pill	12.5
county	47	male condom	3.29999999999999982
county	47	female condom	0
county	47	LAM	0
county	47	other	0
country	KE	female sterilisation	3.20000000000000018
country	KE	male sterilisation	0
country	KE	IUD	3.39999999999999991
country	KE	implants	9.90000000000000036
country	KE	injectables	26.3999999999999986
country	KE	pill	8
country	KE	male condom	2.20000000000000018
country	KE	female condom	0
country	KE	LAM	0.100000000000000006
country	KE	other	0
\.


--
-- Data for Name: contraceptive_use; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY contraceptive_use (geo_level, geo_code, contraceptive_use, total) FROM stdin;
county	1	modern	43.6000000000000014
county	1	traditional	11.4000000000000004
county	2	modern	38.2000000000000028
county	2	traditional	3.29999999999999982
county	3	modern	32.7999999999999972
county	3	traditional	1.30000000000000004
county	4	modern	20.5
county	4	traditional	8.19999999999999929
county	5	modern	39.5
county	5	traditional	2.60000000000000009
county	6	modern	61.2999999999999972
county	6	traditional	6.59999999999999964
county	7	modern	5.5
county	7	traditional	0
county	8	modern	2.29999999999999982
county	8	traditional	0
county	9	modern	1.89999999999999991
county	9	traditional	0
county	10	modern	10.9000000000000004
county	10	traditional	0.800000000000000044
county	11	modern	26.3000000000000007
county	11	traditional	0.699999999999999956
county	12	modern	73.2000000000000028
county	12	traditional	5
county	13	modern	67.2000000000000028
county	13	traditional	6.79999999999999982
county	14	modern	67.2000000000000028
county	14	traditional	3.39999999999999991
county	15	modern	55.1000000000000014
county	15	traditional	2.20000000000000018
county	16	modern	67.5
county	16	traditional	8.30000000000000071
county	17	modern	65
county	17	traditional	15.3000000000000007
county	18	modern	60.3999999999999986
county	18	traditional	5.20000000000000018
county	19	modern	67.0999999999999943
county	19	traditional	6
county	20	modern	75.5999999999999943
county	20	traditional	5.40000000000000036
county	21	modern	63.3999999999999986
county	21	traditional	5.5
county	22	modern	67.7999999999999972
county	22	traditional	6.29999999999999982
county	23	modern	10.0999999999999996
county	23	traditional	0.299999999999999989
county	24	modern	13.3000000000000007
county	24	traditional	0.900000000000000022
county	25	modern	20
county	25	traditional	2.70000000000000018
county	26	modern	56.3999999999999986
county	26	traditional	7.5
county	27	modern	56
county	27	traditional	6.59999999999999964
county	28	modern	43.6000000000000014
county	28	traditional	11.5999999999999996
county	29	modern	59.2000000000000028
county	29	traditional	5.40000000000000036
county	30	modern	33.1000000000000014
county	30	traditional	8.30000000000000071
county	31	modern	51.2999999999999972
county	31	traditional	7.79999999999999982
county	32	modern	53.5
county	32	traditional	3.20000000000000018
county	33	modern	38.1000000000000014
county	33	traditional	9.69999999999999929
county	34	modern	45.2000000000000028
county	34	traditional	9.30000000000000071
county	35	modern	56.8999999999999986
county	35	traditional	6.09999999999999964
county	36	modern	50.3999999999999986
county	36	traditional	4.40000000000000036
county	37	modern	60.2999999999999972
county	37	traditional	1.69999999999999996
county	38	modern	56.6000000000000014
county	38	traditional	2.89999999999999991
county	39	modern	53.8999999999999986
county	39	traditional	1.60000000000000009
county	40	modern	56.5
county	40	traditional	0.900000000000000022
county	41	modern	51
county	41	traditional	4
county	42	modern	59.2999999999999972
county	42	traditional	3.10000000000000009
county	43	modern	45.5
county	43	traditional	1.19999999999999996
county	44	modern	43.8999999999999986
county	44	traditional	0.699999999999999956
county	45	modern	62.7999999999999972
county	45	traditional	3.39999999999999991
county	46	modern	64.2000000000000028
county	46	traditional	3.70000000000000018
county	47	modern	58.2999999999999972
county	47	traditional	4.40000000000000036
country	KE	modern	53.2000000000000028
country	KE	traditional	4.79999999999999982
county	1	not using	45
county	2	not using	58.5
county	3	not using	65.9000000000000057
county	4	not using	71.2999999999999972
county	5	not using	57.7999999999999972
county	6	not using	32
county	7	not using	94.5
county	8	not using	97.7000000000000028
county	9	not using	98.0999999999999943
county	10	not using	88.2999999999999972
county	11	not using	73
county	12	not using	21.8000000000000007
county	13	not using	26
county	14	not using	29.3999999999999986
county	15	not using	42.7000000000000028
county	16	not using	24.1000000000000014
county	17	not using	19.6999999999999993
county	18	not using	34.3999999999999986
county	19	not using	26.8999999999999986
county	20	not using	19
county	21	not using	31.1000000000000014
county	22	not using	26
county	23	not using	89.5999999999999943
county	24	not using	85.7999999999999972
county	25	not using	77.2999999999999972
county	26	not using	36.1000000000000014
county	27	not using	37.3999999999999986
county	28	not using	44.7999999999999972
county	29	not using	35.5
county	30	not using	58.6000000000000014
county	31	not using	40.8999999999999986
county	32	not using	43.2000000000000028
county	33	not using	52.2000000000000028
county	34	not using	45.5
county	35	not using	37.1000000000000014
county	36	not using	45.2000000000000028
county	37	not using	37.8999999999999986
county	38	not using	40.5
county	39	not using	44.5
county	40	not using	42.5
county	41	not using	45
county	42	not using	37.6000000000000014
county	43	not using	53.2999999999999972
county	44	not using	55.3999999999999986
county	45	not using	33.8999999999999986
county	46	not using	32.1000000000000014
county	47	not using	37.3999999999999986
country	KE	not using	42
\.


--
-- Data for Name: crimereport; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY crimereport (geo_level, geo_code, crimereport, total) FROM stdin;
county	20	crimes	1177
county	20	crimesindex	223
county	6	crimes	961
county	6	crimesindex	338
county	1	crimes	3194
county	1	crimesindex	340
county	5	crimes	492
county	5	crimesindex	485
county	32	crimes	4384
county	32	crimesindex	273
county	18	crimes	1446
county	18	crimesindex	243
county	22	crimes	4768
county	22	crimesindex	294
county	35	crimes	1510
county	35	crimesindex	256
county	21	crimes	2363
county	21	crimesindex	251
county	28	crimes	571
county	28	crimesindex	154
county	19	crimes	1668
county	19	crimesindex	240
county	42	crimes	2293
county	42	crimesindex	237
county	4	crimes	622
county	4	crimesindex	259
county	34	crimes	1256
county	34	crimesindex	183
county	47	crimes	4383
county	47	crimesindex	140
county	3	crimes	2199
county	3	crimesindex	198
county	27	crimes	1654
county	27	crimesindex	185
county	26	crimes	1781
county	26	crimesindex	218
county	33	crimes	1335
county	33	crimesindex	157
county	31	crimes	830
county	31	crimesindex	208
county	13	crimes	628
county	13	crimesindex	172
county	41	crimes	1493
county	41	crimesindex	177
county	45	crimes	2018
county	45	crimesindex	175
county	30	crimes	1035
county	30	crimesindex	186
county	25	crimes	355
county	25	crimesindex	159
county	14	crimes	848
county	14	crimesindex	164
county	39	crimes	2852
county	39	crimesindex	207
county	11	crimes	213
county	11	crimesindex	149
county	2	crimes	1097
county	2	crimesindex	169
county	37	crimes	2514
county	37	crimesindex	151
county	46	crimes	1124
county	46	crimesindex	188
county	12	crimes	4215
county	12	crimesindex	311
county	29	crimes	989
county	29	crimesindex	131
county	24	crimes	684
county	24	crimesindex	133
county	38	crimes	1146
county	38	crimesindex	207
county	43	crimes	1568
county	43	crimesindex	163
county	7	crimes	638
county	7	crimesindex	102
county	10	crimes	468
county	10	crimesindex	161
county	40	crimes	1553
county	40	crimesindex	209
county	36	crimes	968
county	36	crimesindex	109
county	44	crimes	1282
county	44	crimesindex	140
county	23	crimes	974
county	23	crimesindex	114
county	15	crimes	1573
county	15	crimesindex	155
county	16	crimes	1461
county	16	crimesindex	133
county	17	crimes	1025
county	17	crimesindex	116
county	8	crimes	317
county	8	crimesindex	31
county	9	crimes	271
county	9	crimesindex	41
country	KE	crimes	72490
country	KE	crimesindex	188
\.


--
-- Data for Name: crop_production; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY crop_production (geo_level, geo_code, crop_production, total) FROM stdin;
county	47	maize	913
county	47	maize (90kg bags)	8220
county	47	maize yield	15
county	22	maize	24450
county	22	maize (90kg bags)	82044
county	22	maize yield	6.79999999999999982
county	20	maize	32992
county	20	maize (90kg bags)	413143
county	20	maize yield	14.6999999999999993
county	21	maize	61543
county	21	maize (90kg bags)	580734
county	21	maize yield	13.0999999999999996
county	18	maize	10366
county	18	maize (90kg bags)	145591
county	18	maize yield	21.6000000000000014
county	19	maize	61543
county	19	maize (90kg bags)	492011
county	19	maize yield	13.0999999999999996
county	3	maize	653
county	3	maize (90kg bags)	3334
county	3	maize yield	6.40000000000000036
county	2	maize	34644
county	2	maize (90kg bags)	349695
county	2	maize yield	13.5
county	5	maize	35261
county	5	maize (90kg bags)	395000
county	5	maize yield	12.4000000000000004
county	1	maize	653
county	1	maize (90kg bags)	3751
county	1	maize yield	5.70000000000000018
county	6	maize	653
county	6	maize (90kg bags)	9142
county	6	maize yield	13
county	4	maize	9582
county	4	maize (90kg bags)	126561
county	4	maize yield	14.6999999999999993
county	14	maize	26720
county	14	maize (90kg bags)	295677
county	14	maize yield	11.3000000000000007
county	11	maize	1385
county	11	maize (90kg bags)	7298
county	11	maize yield	5.40000000000000036
county	15	maize	84763
county	15	maize (90kg bags)	339832
county	15	maize yield	4.09999999999999964
county	16	maize	139090
county	16	maize (90kg bags)	694189
county	16	maize yield	5.40000000000000036
county	17	maize	181089
county	17	maize (90kg bags)	860442
county	17	maize yield	4.90000000000000036
county	10	maize	1571
county	10	maize (90kg bags)	17575
county	10	maize yield	11.4000000000000004
county	12	maize	110489
county	12	maize (90kg bags)	1243949
county	12	maize yield	11.5
county	13	maize	29916
county	13	maize (90kg bags)	283014
county	13	maize yield	9.59999999999999964
county	7	maize	245
county	7	maize (90kg bags)	2208
county	7	maize yield	9.09999999999999964
county	9	maize	2682
county	9	maize (90kg bags)	17874
county	9	maize yield	6.70000000000000018
county	8	maize	660
county	8	maize (90kg bags)	1241
county	8	maize yield	2
county	43	maize	79667
county	43	maize (90kg bags)	1382943
county	43	maize yield	18.6999999999999993
county	45	maize	62210
county	45	maize (90kg bags)	1330034
county	45	maize yield	23
county	42	maize	27150
county	42	maize (90kg bags)	607234
county	42	maize yield	24
county	44	maize	67485
county	44	maize (90kg bags)	930028
county	44	maize yield	14.8000000000000007
county	46	maize	35549
county	46	maize (90kg bags)	456836
county	46	maize yield	13.8000000000000007
county	41	maize	78132
county	41	maize (90kg bags)	1372914
county	41	maize yield	18.8999999999999986
county	30	maize	34960
county	30	maize (90kg bags)	388444
county	30	maize yield	11.0999999999999996
county	36	maize	30940
county	36	maize (90kg bags)	590692
county	36	maize yield	19.1000000000000014
county	28	maize	27620
county	28	maize (90kg bags)	1149427
county	28	maize yield	43
county	34	maize	31020
county	34	maize (90kg bags)	815506
county	34	maize yield	26.6999999999999993
county	35	maize	41041
county	35	maize (90kg bags)	765697
county	35	maize yield	24.1999999999999993
county	31	maize	6175
county	31	maize (90kg bags)	71902
county	31	maize yield	11.8000000000000007
county	32	maize	86504
county	32	maize (90kg bags)	1765714
county	32	maize yield	20.6000000000000014
county	29	maize	74045
county	29	maize (90kg bags)	1857991
county	29	maize yield	27.3999999999999986
county	33	maize	112079
county	33	maize (90kg bags)	2975208
county	33	maize yield	26.8999999999999986
county	25	maize	1973
county	25	maize (90kg bags)	22931
county	25	maize yield	11.5999999999999996
county	26	maize	106778
county	26	maize (90kg bags)	5014980
county	26	maize yield	47.8999999999999986
county	23	maize	1310
county	23	maize (90kg bags)	23928
county	23	maize yield	18.6000000000000014
county	27	maize	96654
county	27	maize (90kg bags)	4224741
county	27	maize yield	43.7000000000000028
county	24	maize	19748
county	24	maize (90kg bags)	514903
county	24	maize yield	26.6000000000000014
county	39	maize	98074
county	39	maize (90kg bags)	2970027
county	39	maize yield	32.6000000000000014
county	40	maize	50400
county	40	maize (90kg bags)	807352
county	40	maize yield	17.6000000000000014
county	37	maize	70993
county	37	maize (90kg bags)	2026635
county	37	maize yield	30
county	38	maize	23772
county	38	maize (90kg bags)	406723
county	38	maize yield	18.1999999999999993
country	KE	maize	2116141
country	KE	maize (90kg bags)	39035228
country	KE	maize yield	19.6999999999999993
county	18	wheat	1455
county	18	wheat (90kg bags)	32300
county	18	wheat yield	22.1999999999999993
county	19	wheat	4280
county	19	wheat (90kg bags)	77600
county	19	wheat yield	18.1000000000000014
county	12	wheat	11600
county	12	wheat (90kg bags)	326875
county	12	wheat yield	28.1999999999999993
county	10	wheat	37
county	10	wheat (90kg bags)	1030
county	10	wheat yield	27.8000000000000007
county	28	wheat	105
county	28	wheat (90kg bags)	3150
county	28	wheat yield	30
county	35	wheat	0
county	35	wheat (90kg bags)	0
county	35	wheat yield	0
county	31	wheat	5145
county	31	wheat (90kg bags)	185600
county	31	wheat yield	36.1000000000000014
county	32	wheat	32057
county	32	wheat (90kg bags)	961083
county	32	wheat yield	30
county	29	wheat	43
county	29	wheat (90kg bags)	1030
county	29	wheat yield	24
county	33	wheat	70884
county	33	wheat (90kg bags)	1508620
county	33	wheat yield	21.3000000000000007
county	25	wheat	600
county	25	wheat (90kg bags)	12000
county	25	wheat yield	20
county	26	wheat	1870
county	26	wheat (90kg bags)	46078
county	26	wheat yield	24.6000000000000014
county	27	wheat	18829
county	27	wheat (90kg bags)	488395
county	27	wheat yield	25.8999999999999986
county	39	wheat	305
county	39	wheat (90kg bags)	7767
county	39	wheat yield	25.5
county	37	wheat	0
county	37	wheat (90kg bags)	0
county	37	wheat yield	0
country	KE	wheat	147210
country	KE	wheat (90kg bags)	3651528
country	KE	wheat yield	24.8000000000000007
county	1	wheat	0
county	1	wheat (90kg bags)	0
county	1	wheat yield	0
county	2	wheat	0
county	2	wheat (90kg bags)	0
county	2	wheat yield	0
county	3	wheat	0
county	3	wheat (90kg bags)	0
county	3	wheat yield	0
county	4	wheat	0
county	4	wheat (90kg bags)	0
county	4	wheat yield	0
county	5	wheat	0
county	5	wheat (90kg bags)	0
county	5	wheat yield	0
county	6	wheat	0
county	6	wheat (90kg bags)	0
county	6	wheat yield	0
county	7	wheat	0
county	7	wheat (90kg bags)	0
county	7	wheat yield	0
county	8	wheat	0
county	8	wheat (90kg bags)	0
county	8	wheat yield	0
county	9	wheat	0
county	9	wheat (90kg bags)	0
county	9	wheat yield	0
county	11	wheat	0
county	11	wheat (90kg bags)	0
county	11	wheat yield	0
county	13	wheat	0
county	13	wheat (90kg bags)	0
county	13	wheat yield	0
county	14	wheat	0
county	14	wheat (90kg bags)	0
county	14	wheat yield	0
county	15	wheat	0
county	15	wheat (90kg bags)	0
county	15	wheat yield	0
county	16	wheat	0
county	16	wheat (90kg bags)	0
county	16	wheat yield	0
county	17	wheat	0
county	17	wheat (90kg bags)	0
county	17	wheat yield	0
county	20	wheat	0
county	20	wheat (90kg bags)	0
county	20	wheat yield	0
county	21	wheat	0
county	21	wheat (90kg bags)	0
county	21	wheat yield	0
county	22	wheat	0
county	22	wheat (90kg bags)	0
county	22	wheat yield	0
county	23	wheat	0
county	23	wheat (90kg bags)	0
county	23	wheat yield	0
county	24	wheat	0
county	24	wheat (90kg bags)	0
county	24	wheat yield	0
county	30	wheat	0
county	30	wheat (90kg bags)	0
county	30	wheat yield	0
county	34	wheat	0
county	34	wheat (90kg bags)	0
county	34	wheat yield	0
county	36	wheat	0
county	36	wheat (90kg bags)	0
county	36	wheat yield	0
county	47	wheat	0
county	47	wheat (90kg bags)	0
county	47	wheat yield	0
county	38	wheat	0
county	38	wheat (90kg bags)	0
county	38	wheat yield	0
county	40	wheat	0
county	40	wheat (90kg bags)	0
county	40	wheat yield	0
county	41	wheat	0
county	41	wheat (90kg bags)	0
county	41	wheat yield	0
county	42	wheat	0
county	42	wheat (90kg bags)	0
county	42	wheat yield	0
county	43	wheat	0
county	43	wheat (90kg bags)	0
county	43	wheat yield	0
county	44	wheat	0
county	44	wheat (90kg bags)	0
county	44	wheat yield	0
county	45	wheat	0
county	45	wheat (90kg bags)	0
county	45	wheat yield	0
county	46	wheat	0
county	46	wheat (90kg bags)	0
county	46	wheat yield	0
county	18	barley	25
county	18	barley (Ton)	45
county	18	barley yield	1.80000000000000004
county	32	barley	30456
county	32	barley (Ton)	110974
county	32	barley yield	3.5
county	33	barley	140126
county	33	barley (Ton)	130871
county	33	barley yield	1
county	25	barley	450
county	25	barley (Ton)	792
county	25	barley yield	1.80000000000000004
county	27	barley	875
county	27	barley (Ton)	320375
county	27	barley yield	37
county	12	barley	20600
county	12	barley (Ton)	60345
county	12	barley yield	2.39999999999999991
country	KE	barley	210532
country	KE	barley (Ton)	650402
country	KE	barley yield	3
county	1	barley	0
county	1	barley (Ton)	0
county	1	barley yield	0
county	2	barley	0
county	2	barley (Ton)	0
county	2	barley yield	0
county	3	barley	0
county	3	barley (Ton)	0
county	3	barley yield	0
county	4	barley	0
county	4	barley (Ton)	0
county	4	barley yield	0
county	5	barley	0
county	5	barley (Ton)	0
county	5	barley yield	0
county	6	barley	0
county	6	barley (Ton)	0
county	6	barley yield	0
county	7	barley	0
county	7	barley (Ton)	0
county	7	barley yield	0
county	8	barley	0
county	8	barley (Ton)	0
county	8	barley yield	0
county	9	barley	0
county	9	barley (Ton)	0
county	9	barley yield	0
county	10	barley	0
county	10	barley (Ton)	0
county	10	barley yield	0
county	11	barley	0
county	11	barley (Ton)	0
county	11	barley yield	0
county	41	barley	0
county	41	barley (Ton)	0
county	41	barley yield	0
county	13	barley	0
county	13	barley (Ton)	0
county	13	barley yield	0
county	14	barley	0
county	14	barley (Ton)	0
county	14	barley yield	0
county	15	barley	0
county	15	barley (Ton)	0
county	15	barley yield	0
county	16	barley	0
county	16	barley (Ton)	0
county	16	barley yield	0
county	17	barley	0
county	17	barley (Ton)	0
county	17	barley yield	0
county	47	barley	0
county	47	barley (Ton)	0
county	47	barley yield	0
county	19	barley	0
county	19	barley (Ton)	0
county	19	barley yield	0
county	20	barley	0
county	20	barley (Ton)	0
county	20	barley yield	0
county	21	barley	0
county	21	barley (Ton)	0
county	21	barley yield	0
county	22	barley	0
county	22	barley (Ton)	0
county	22	barley yield	0
county	23	barley	0
county	23	barley (Ton)	0
county	23	barley yield	0
county	24	barley	0
county	24	barley (Ton)	0
county	24	barley yield	0
county	43	barley	0
county	43	barley (Ton)	0
county	43	barley yield	0
county	26	barley	0
county	26	barley (Ton)	0
county	26	barley yield	0
county	42	barley	0
county	42	barley (Ton)	0
county	42	barley yield	0
county	28	barley	0
county	28	barley (Ton)	0
county	28	barley yield	0
county	29	barley	0
county	29	barley (Ton)	0
county	29	barley yield	0
county	30	barley	0
county	30	barley (Ton)	0
county	30	barley yield	0
county	31	barley	0
county	31	barley (Ton)	0
county	31	barley yield	0
county	45	barley	0
county	45	barley (Ton)	0
county	45	barley yield	0
county	44	barley	0
county	44	barley (Ton)	0
county	44	barley yield	0
county	34	barley	0
county	34	barley (Ton)	0
county	34	barley yield	0
county	35	barley	0
county	35	barley (Ton)	0
county	35	barley yield	0
county	36	barley	0
county	36	barley (Ton)	0
county	36	barley yield	0
county	37	barley	0
county	37	barley (Ton)	0
county	37	barley yield	0
county	38	barley	0
county	38	barley (Ton)	0
county	38	barley yield	0
county	39	barley	0
county	39	barley (Ton)	0
county	39	barley yield	0
county	40	barley	0
county	40	barley (Ton)	0
county	40	barley yield	0
county	21	rice	102.599999999999994
county	21	rice (Ton)	261.399999999999977
county	21	rice yield	2.5
county	20	rice	10465
county	20	rice (Ton)	68988.1999999999971
county	20	rice yield	6.59999999999999964
county	19	rice	102.599999999999994
county	19	rice (Ton)	261.399999999999977
county	19	rice yield	2.5
county	3	rice	179
county	3	rice (Ton)	95.1200000000000045
county	3	rice yield	0.5
county	2	rice	1273
county	2	rice (Ton)	1355.67000000000007
county	2	rice yield	1.10000000000000009
county	5	rice	91
county	5	rice (Ton)	170.599999999999994
county	5	rice yield	1.89999999999999991
county	1	rice	0
county	1	rice (Ton)	0
county	1	rice yield	0
county	6	rice	265
county	6	rice (Ton)	1396
county	6	rice yield	5.29999999999999982
county	4	rice	1355
county	4	rice (Ton)	2244.15000000000009
county	4	rice yield	1.69999999999999996
county	14	rice	5
county	14	rice (Ton)	5
county	14	rice yield	1
county	12	rice	111
county	12	rice (Ton)	144.5
county	12	rice yield	1.30000000000000004
county	13	rice	27.6999999999999993
county	13	rice (Ton)	24.3999999999999986
county	13	rice yield	0.900000000000000022
county	7	rice	30
county	7	rice (Ton)	34
county	7	rice yield	1.10000000000000009
county	9	rice	0.100000000000000006
county	9	rice (Ton)	0
county	9	rice yield	0
county	43	rice	5223
county	43	rice (Ton)	7713.32999999999993
county	43	rice yield	1.5
county	42	rice	4540
county	42	rice (Ton)	18390
county	42	rice yield	4.09999999999999964
county	44	rice	680.899999999999977
county	44	rice (Ton)	421.060000000000002
county	44	rice yield	0.599999999999999978
county	41	rice	2648
county	41	rice (Ton)	8137.76000000000022
county	41	rice yield	3.10000000000000009
county	28	rice	14.3000000000000007
county	28	rice (Ton)	20.3399999999999999
county	28	rice yield	1.39999999999999991
county	30	rice	40
county	30	rice (Ton)	89.9000000000000057
county	30	rice yield	2.20000000000000018
county	39	rice	115
county	39	rice (Ton)	92.5
county	39	rice yield	0.800000000000000044
county	40	rice	964
county	40	rice (Ton)	1947
county	40	rice yield	2
county	37	rice	103.5
county	37	rice (Ton)	395.5
county	37	rice yield	3.79999999999999982
county	38	rice	54
county	38	rice (Ton)	75.5
county	38	rice yield	1.39999999999999991
country	KE	rice	28390
country	KE	rice (Ton)	112263
country	KE	rice yield	4
county	8	rice	0
county	8	rice (Ton)	0
county	8	rice yield	0
county	10	rice	0
county	10	rice (Ton)	0
county	10	rice yield	0
county	11	rice	0
county	11	rice (Ton)	0
county	11	rice yield	0
county	15	rice	0
county	15	rice (Ton)	0
county	15	rice yield	0
county	16	rice	0
county	16	rice (Ton)	0
county	16	rice yield	0
county	17	rice	0
county	17	rice (Ton)	0
county	17	rice yield	0
county	18	rice	0
county	18	rice (Ton)	0
county	18	rice yield	0
county	22	rice	0
county	22	rice (Ton)	0
county	22	rice yield	0
county	23	rice	0
county	23	rice (Ton)	0
county	23	rice yield	0
county	24	rice	0
county	24	rice (Ton)	0
county	24	rice yield	0
county	25	rice	0
county	25	rice (Ton)	0
county	25	rice yield	0
county	26	rice	0
county	26	rice (Ton)	0
county	26	rice yield	0
county	27	rice	0
county	27	rice (Ton)	0
county	27	rice yield	0
county	29	rice	0
county	29	rice (Ton)	0
county	29	rice yield	0
county	31	rice	0
county	31	rice (Ton)	0
county	31	rice yield	0
county	32	rice	0
county	32	rice (Ton)	0
county	32	rice yield	0
county	33	rice	0
county	33	rice (Ton)	0
county	33	rice yield	0
county	34	rice	0
county	34	rice (Ton)	0
county	34	rice yield	0
county	35	rice	0
county	35	rice (Ton)	0
county	35	rice yield	0
county	36	rice	0
county	36	rice (Ton)	0
county	36	rice yield	0
county	45	rice	0
county	45	rice (Ton)	0
county	45	rice yield	0
county	46	rice	0
county	46	rice (Ton)	0
county	46	rice yield	0
county	47	rice	0
county	47	rice (Ton)	0
county	47	rice yield	0
county	47	sorghum	913
county	47	sorghum (90kg bags)	1233
county	47	sorghum yield	1.39999999999999991
county	20	sorghum	276
county	20	sorghum (90kg bags)	1544
county	20	sorghum yield	5.59999999999999964
county	21	sorghum	204
county	21	sorghum (90kg bags)	1720
county	21	sorghum yield	8.40000000000000036
county	18	sorghum	35
county	18	sorghum (90kg bags)	280
county	18	sorghum yield	8
county	19	sorghum	204
county	19	sorghum (90kg bags)	1720
county	19	sorghum yield	8.40000000000000036
county	3	sorghum	363
county	3	sorghum (90kg bags)	1089
county	3	sorghum yield	3
county	2	sorghum	153
county	2	sorghum (90kg bags)	663
county	2	sorghum yield	4.29999999999999982
county	5	sorghum	273
county	5	sorghum (90kg bags)	3067
county	5	sorghum yield	11.3000000000000007
county	1	sorghum	0
county	1	sorghum (90kg bags)	0
county	1	sorghum yield	0
county	6	sorghum	474
county	6	sorghum (90kg bags)	833
county	6	sorghum yield	1.80000000000000004
county	4	sorghum	131
county	4	sorghum (90kg bags)	862
county	4	sorghum yield	6.59999999999999964
county	14	sorghum	5386
county	14	sorghum (90kg bags)	58303
county	14	sorghum yield	10.8000000000000007
county	11	sorghum	45
county	11	sorghum (90kg bags)	270
county	11	sorghum yield	6
county	15	sorghum	59530
county	15	sorghum (90kg bags)	429623
county	15	sorghum yield	7.20000000000000018
county	16	sorghum	9693
county	16	sorghum (90kg bags)	81726
county	16	sorghum yield	8.40000000000000036
county	17	sorghum	16306
county	17	sorghum (90kg bags)	53416
county	17	sorghum yield	3.29999999999999982
county	10	sorghum	13
county	10	sorghum (90kg bags)	41
county	10	sorghum yield	3
county	12	sorghum	12451
county	12	sorghum (90kg bags)	95439
county	12	sorghum yield	7.70000000000000018
county	13	sorghum	21227
county	13	sorghum (90kg bags)	116964
county	13	sorghum yield	5.5
county	7	sorghum	35
county	7	sorghum (90kg bags)	378
county	7	sorghum yield	10.8000000000000007
county	9	sorghum	961
county	9	sorghum (90kg bags)	1393
county	9	sorghum yield	1.39999999999999991
county	8	sorghum	440
county	8	sorghum (90kg bags)	889
county	8	sorghum yield	2
county	43	sorghum	20401
county	43	sorghum (90kg bags)	358380
county	43	sorghum yield	17.6000000000000014
county	45	sorghum	113
county	45	sorghum (90kg bags)	5724
county	45	sorghum yield	50.7000000000000028
county	42	sorghum	11160
county	42	sorghum (90kg bags)	210654
county	42	sorghum yield	18.8999999999999986
county	44	sorghum	5373
county	44	sorghum (90kg bags)	58613
county	44	sorghum yield	10.9000000000000004
county	46	sorghum	93
county	46	sorghum (90kg bags)	973
county	46	sorghum yield	10.5
county	41	sorghum	15986
county	41	sorghum (90kg bags)	128726
county	41	sorghum yield	8.09999999999999964
county	30	sorghum	849
county	30	sorghum (90kg bags)	8483
county	30	sorghum yield	10
county	36	sorghum	442
county	36	sorghum (90kg bags)	5432
county	36	sorghum yield	12.3000000000000007
county	28	sorghum	769
county	28	sorghum (90kg bags)	9206
county	28	sorghum yield	12
county	34	sorghum	55
county	34	sorghum (90kg bags)	346
county	34	sorghum yield	6.29999999999999982
county	35	sorghum	957
county	35	sorghum (90kg bags)	19100
county	35	sorghum yield	20
county	31	sorghum	57
county	31	sorghum (90kg bags)	285
county	31	sorghum yield	5
county	32	sorghum	1330
county	32	sorghum (90kg bags)	18038
county	32	sorghum yield	13.5999999999999996
county	29	sorghum	181
county	29	sorghum (90kg bags)	3408
county	29	sorghum yield	18.8000000000000007
county	33	sorghum	1437
county	33	sorghum (90kg bags)	12068
county	33	sorghum yield	8.40000000000000036
county	25	sorghum	10
county	25	sorghum (90kg bags)	133
county	25	sorghum yield	13.3000000000000007
county	26	sorghum	189
county	26	sorghum (90kg bags)	2397
county	26	sorghum yield	12.6999999999999993
county	23	sorghum	1438
county	23	sorghum (90kg bags)	15486
county	23	sorghum yield	10.8000000000000007
county	27	sorghum	1438
county	27	sorghum (90kg bags)	15486
county	27	sorghum yield	10.8000000000000007
county	24	sorghum	560
county	24	sorghum (90kg bags)	5360
county	24	sorghum yield	9.59999999999999964
county	39	sorghum	1565
county	39	sorghum (90kg bags)	17722
county	39	sorghum yield	11.3000000000000007
county	40	sorghum	13109
county	40	sorghum (90kg bags)	193756
county	40	sorghum yield	14.8000000000000007
county	37	sorghum	830
county	37	sorghum (90kg bags)	8602
county	37	sorghum yield	10.4000000000000004
county	38	sorghum	358
county	38	sorghum (90kg bags)	4509
county	38	sorghum yield	12.5999999999999996
country	KE	sorghum	213520
country	KE	sorghum (90kg bags)	1972810
country	KE	sorghum yield	9.19999999999999929
county	22	sorghum	0
county	22	sorghum (90kg bags)	0
county	22	sorghum yield	0
county	22	millet	0
county	22	millet (90kg bags)	0
county	22	millet yield	0
county	20	millet	12
county	20	millet (90kg bags)	108
county	20	millet yield	9
county	21	millet	0
county	21	millet (90kg bags)	0
county	21	millet yield	0
county	18	millet	0
county	18	millet (90kg bags)	0
county	18	millet yield	0
county	19	millet	0
county	19	millet (90kg bags)	0
county	19	millet yield	0
county	3	millet	4
county	3	millet (90kg bags)	5
county	3	millet yield	1.39999999999999991
county	2	millet	4
county	2	millet (90kg bags)	0
county	2	millet yield	0
county	5	millet	273
county	5	millet (90kg bags)	893
county	5	millet yield	3.29999999999999982
county	6	millet	32
county	6	millet (90kg bags)	52
county	6	millet yield	1.60000000000000009
county	4	millet	0
county	4	millet (90kg bags)	0
county	4	millet yield	0
county	14	millet	2799
county	14	millet (90kg bags)	26924
county	14	millet yield	9.59999999999999964
county	15	millet	53735
county	15	millet (90kg bags)	582466
county	15	millet yield	10.8000000000000007
county	16	millet	1853
county	16	millet (90kg bags)	35151
county	16	millet yield	19
county	17	millet	11322
county	17	millet (90kg bags)	35485
county	17	millet yield	3.10000000000000009
county	12	millet	6853
county	12	millet (90kg bags)	40708
county	12	millet yield	5.90000000000000036
county	13	millet	20778
county	13	millet (90kg bags)	139259
county	13	millet yield	6.70000000000000018
county	7	millet	0
county	7	millet (90kg bags)	0
county	7	millet yield	0
county	8	millet	0
county	8	millet (90kg bags)	0
county	8	millet yield	0
county	43	millet	1785
county	43	millet (90kg bags)	33456
county	43	millet yield	18.6999999999999993
county	45	millet	7357
county	45	millet (90kg bags)	215656
county	45	millet yield	29.3000000000000007
county	42	millet	23
county	42	millet (90kg bags)	65
county	42	millet yield	2.79999999999999982
county	44	millet	390
county	44	millet (90kg bags)	1269
county	44	millet yield	3.29999999999999982
county	46	millet	8688
county	46	millet (90kg bags)	100844
county	46	millet yield	11.5999999999999996
county	41	millet	179
county	41	millet (90kg bags)	896
county	41	millet yield	5
county	30	millet	2301
county	30	millet (90kg bags)	33727
county	30	millet yield	14.6999999999999993
county	36	millet	992
county	36	millet (90kg bags)	13096
county	36	millet yield	13.1999999999999993
county	28	millet	2407
county	28	millet (90kg bags)	20352
county	28	millet yield	8.5
county	34	millet	26
county	34	millet (90kg bags)	68
county	34	millet yield	2.60000000000000009
county	35	millet	618
county	35	millet (90kg bags)	6871
county	35	millet yield	11.0999999999999996
county	31	millet	0
county	31	millet (90kg bags)	0
county	31	millet yield	0
county	32	millet	3456
county	32	millet (90kg bags)	11974
county	32	millet yield	3.5
county	29	millet	172
county	29	millet (90kg bags)	1896
county	29	millet yield	11.0999999999999996
county	33	millet	1443
county	33	millet (90kg bags)	14247
county	33	millet yield	9.90000000000000036
county	25	millet	9
county	25	millet (90kg bags)	156
county	25	millet yield	17.3000000000000007
county	26	millet	860
county	26	millet (90kg bags)	10011
county	26	millet yield	11.5999999999999996
county	23	millet	0
county	23	millet (90kg bags)	0
county	23	millet yield	0
county	27	millet	284
county	27	millet (90kg bags)	2812
county	27	millet yield	9.90000000000000036
county	24	millet	337
county	24	millet (90kg bags)	2685
county	24	millet yield	8
county	39	millet	4760
county	39	millet (90kg bags)	34933
county	39	millet yield	7.29999999999999982
county	40	millet	4500
county	40	millet (90kg bags)	71444
county	40	millet yield	15.9000000000000004
county	37	millet	534
county	37	millet (90kg bags)	4889
county	37	millet yield	9.19999999999999929
county	38	millet	45
county	38	millet (90kg bags)	363
county	38	millet yield	8.09999999999999964
country	KE	millet	138829
country	KE	millet (90kg bags)	1442761
country	KE	millet yield	10.4000000000000004
county	1	millet	0
county	1	millet (90kg bags)	0
county	1	millet yield	0
county	9	millet	0
county	9	millet (90kg bags)	0
county	9	millet yield	0
county	10	millet	0
county	10	millet (90kg bags)	0
county	10	millet yield	0
county	11	millet	0
county	11	millet (90kg bags)	0
county	11	millet yield	0
county	47	millet	0
county	47	millet (90kg bags)	0
county	47	millet yield	0
county	47	beans	676
county	47	beans (90kg bags)	13700
county	47	beans yield	20.3000000000000007
county	22	beans	13834
county	22	beans (90kg bags)	69696
county	22	beans yield	5
county	20	beans	24199
county	20	beans (90kg bags)	99032
county	20	beans yield	4.09999999999999964
county	21	beans	43244
county	21	beans (90kg bags)	313894
county	21	beans yield	7.29999999999999982
county	18	beans	4561
county	18	beans (90kg bags)	24544
county	18	beans yield	5.40000000000000036
county	19	beans	43244
county	19	beans (90kg bags)	313894
county	19	beans yield	7.29999999999999982
county	3	beans	34
county	3	beans (90kg bags)	54
county	3	beans yield	1.60000000000000009
county	2	beans	284
county	2	beans (90kg bags)	3237
county	2	beans yield	11.4000000000000004
county	5	beans	0
county	5	beans (90kg bags)	0
county	5	beans yield	0
county	1	beans	0
county	1	beans (90kg bags)	0
county	1	beans yield	0
county	6	beans	2361
county	6	beans (90kg bags)	6067
county	6	beans yield	2.60000000000000009
county	4	beans	0
county	4	beans (90kg bags)	0
county	4	beans yield	0
county	14	beans	20330
county	14	beans (90kg bags)	181078
county	14	beans yield	8.90000000000000036
county	11	beans	2267
county	11	beans (90kg bags)	433
county	11	beans yield	0.200000000000000011
county	15	beans	32155
county	15	beans (90kg bags)	199389
county	15	beans yield	6.20000000000000018
county	16	beans	64369
county	16	beans (90kg bags)	215300
county	16	beans yield	3.29999999999999982
county	17	beans	37367
county	17	beans (90kg bags)	82095
county	17	beans yield	2.20000000000000018
county	10	beans	627
county	10	beans (90kg bags)	9121
county	10	beans yield	14.5
county	12	beans	142009
county	12	beans (90kg bags)	467262
county	12	beans yield	3.29999999999999982
county	13	beans	9436
county	13	beans (90kg bags)	93590
county	13	beans yield	9.90000000000000036
county	43	beans	40583
county	43	beans (90kg bags)	327253
county	43	beans yield	8.09999999999999964
county	45	beans	47842
county	45	beans (90kg bags)	421010
county	45	beans yield	8.80000000000000071
county	42	beans	8095
county	42	beans (90kg bags)	73911
county	42	beans yield	9.09999999999999964
county	44	beans	19698
county	44	beans (90kg bags)	104510
county	44	beans yield	5.29999999999999982
county	46	beans	24615
county	46	beans (90kg bags)	202044
county	46	beans yield	8.19999999999999929
county	41	beans	47915
county	41	beans (90kg bags)	348283
county	41	beans yield	7.29999999999999982
county	30	beans	17788
county	30	beans (90kg bags)	168394
county	30	beans yield	9.5
county	36	beans	31857
county	36	beans (90kg bags)	238668
county	36	beans yield	7.5
county	28	beans	14894
county	28	beans (90kg bags)	155150
county	28	beans yield	10.4000000000000004
county	34	beans	42550
county	34	beans (90kg bags)	210483
county	34	beans yield	4.90000000000000036
county	35	beans	19804
county	35	beans (90kg bags)	169667
county	35	beans yield	8.59999999999999964
county	31	beans	1659
county	31	beans (90kg bags)	16227
county	31	beans yield	9.80000000000000071
county	32	beans	43946
county	32	beans (90kg bags)	232686
county	32	beans yield	5.29999999999999982
county	29	beans	37964
county	29	beans (90kg bags)	343242
county	29	beans yield	9
county	33	beans	30346
county	33	beans (90kg bags)	48273
county	33	beans yield	1.60000000000000009
county	25	beans	840
county	25	beans (90kg bags)	6270
county	25	beans yield	7.5
county	26	beans	13740
county	26	beans (90kg bags)	54867
county	26	beans yield	4
county	27	beans	15992
county	27	beans (90kg bags)	46023
county	27	beans yield	2.89999999999999991
county	24	beans	7630
county	24	beans (90kg bags)	40307
county	24	beans yield	5.29999999999999982
county	39	beans	57578
county	39	beans (90kg bags)	789089
county	39	beans yield	13.6999999999999993
county	40	beans	19100
county	40	beans (90kg bags)	204644
county	40	beans yield	10.6999999999999993
county	37	beans	48126
county	37	beans (90kg bags)	490039
county	37	beans yield	10.1999999999999993
county	38	beans	18851
county	38	beans (90kg bags)	60933
county	38	beans yield	3.20000000000000018
country	KE	beans	1052408
country	KE	beans (90kg bags)	6844357
country	KE	beans yield	6.5
county	7	beans	0
county	7	beans (90kg bags)	0
county	7	beans yield	0
county	8	beans	0
county	8	beans (90kg bags)	0
county	8	beans yield	0
county	9	beans	0
county	9	beans (90kg bags)	0
county	9	beans yield	0
county	23	beans	0
county	23	beans (90kg bags)	0
county	23	beans yield	0
county	47	cowpeas	33
county	47	cowpeas (90kg bags)	83
county	47	cowpeas yield	2.5
county	22	cowpeas	0
county	22	cowpeas (90kg bags)	0
county	22	cowpeas yield	0
county	20	cowpeas	361
county	20	cowpeas (90kg bags)	1486
county	20	cowpeas yield	4.09999999999999964
county	21	cowpeas	819
county	21	cowpeas (90kg bags)	3716
county	21	cowpeas yield	4.5
county	18	cowpeas	0
county	18	cowpeas (90kg bags)	0
county	18	cowpeas yield	0
county	19	cowpeas	509
county	19	cowpeas (90kg bags)	3499
county	19	cowpeas yield	6.90000000000000036
county	3	cowpeas	8929
county	3	cowpeas (90kg bags)	12780
county	3	cowpeas yield	1.39999999999999991
county	2	cowpeas	4619
county	2	cowpeas (90kg bags)	18207
county	2	cowpeas yield	3.89999999999999991
county	5	cowpeas	3620
county	5	cowpeas (90kg bags)	28608
county	5	cowpeas yield	7.90000000000000036
county	1	cowpeas	297
county	1	cowpeas (90kg bags)	844
county	1	cowpeas yield	2.79999999999999982
county	6	cowpeas	1351
county	6	cowpeas (90kg bags)	4882
county	6	cowpeas yield	3.60000000000000009
county	4	cowpeas	1334
county	4	cowpeas (90kg bags)	11186
county	4	cowpeas yield	8.40000000000000036
county	14	cowpeas	7231
county	14	cowpeas (90kg bags)	104490
county	14	cowpeas yield	14.5
county	11	cowpeas	70
county	11	cowpeas (90kg bags)	533
county	11	cowpeas yield	7.59999999999999964
county	15	cowpeas	89161
county	15	cowpeas (90kg bags)	412540
county	15	cowpeas yield	4.59999999999999964
county	16	cowpeas	35247
county	16	cowpeas (90kg bags)	160572
county	16	cowpeas yield	4.59999999999999964
county	17	cowpeas	97103
county	17	cowpeas (90kg bags)	567704
county	17	cowpeas yield	5.79999999999999982
county	10	cowpeas	8
county	10	cowpeas (90kg bags)	56
county	10	cowpeas yield	7.20000000000000018
county	12	cowpeas	8990
county	12	cowpeas (90kg bags)	87617
county	12	cowpeas yield	9.69999999999999929
county	13	cowpeas	16509
county	13	cowpeas (90kg bags)	81549
county	13	cowpeas yield	4.90000000000000036
county	7	cowpeas	85
county	7	cowpeas (90kg bags)	589
county	7	cowpeas yield	6.90000000000000036
county	9	cowpeas	1276
county	9	cowpeas (90kg bags)	627
county	9	cowpeas yield	0.5
county	8	cowpeas	219
county	8	cowpeas (90kg bags)	219
county	8	cowpeas yield	1
county	43	cowpeas	476
county	43	cowpeas (90kg bags)	2275
county	43	cowpeas yield	4.79999999999999982
county	45	cowpeas	511
county	45	cowpeas (90kg bags)	10059
county	45	cowpeas yield	19.6999999999999993
county	42	cowpeas	1462
county	42	cowpeas (90kg bags)	13184
county	42	cowpeas yield	9
county	44	cowpeas	334
county	44	cowpeas (90kg bags)	1633
county	44	cowpeas yield	4.90000000000000036
county	46	cowpeas	0
county	46	cowpeas (90kg bags)	0
county	46	cowpeas yield	0
county	41	cowpeas	597
county	41	cowpeas (90kg bags)	4763
county	41	cowpeas yield	8
county	30	cowpeas	285
county	30	cowpeas (90kg bags)	2877
county	30	cowpeas yield	10.0999999999999996
county	28	cowpeas	129
county	28	cowpeas (90kg bags)	1459
county	28	cowpeas yield	11.3000000000000007
county	34	cowpeas	58
county	34	cowpeas (90kg bags)	1003
county	34	cowpeas yield	17.3000000000000007
county	31	cowpeas	8
county	31	cowpeas (90kg bags)	72
county	31	cowpeas yield	9
county	32	cowpeas	59
county	32	cowpeas (90kg bags)	569
county	32	cowpeas yield	9.59999999999999964
county	33	cowpeas	58
county	33	cowpeas (90kg bags)	571
county	33	cowpeas yield	9.80000000000000071
county	25	cowpeas	11
county	25	cowpeas (90kg bags)	71
county	25	cowpeas yield	6.5
county	26	cowpeas	120
county	26	cowpeas (90kg bags)	491
county	26	cowpeas yield	4.09999999999999964
country	KE	cowpeas	281877
country	KE	cowpeas (90kg bags)	1540813
country	KE	cowpeas yield	5.5
county	23	cowpeas	0
county	23	cowpeas (90kg bags)	0
county	23	cowpeas yield	0
county	24	cowpeas	0
county	24	cowpeas (90kg bags)	0
county	24	cowpeas yield	0
county	27	cowpeas	0
county	27	cowpeas (90kg bags)	0
county	27	cowpeas yield	0
county	29	cowpeas	0
county	29	cowpeas (90kg bags)	0
county	29	cowpeas yield	0
county	35	cowpeas	0
county	35	cowpeas (90kg bags)	0
county	35	cowpeas yield	0
county	36	cowpeas	0
county	36	cowpeas (90kg bags)	0
county	36	cowpeas yield	0
county	37	cowpeas	0
county	37	cowpeas (90kg bags)	0
county	37	cowpeas yield	0
county	38	cowpeas	0
county	38	cowpeas (90kg bags)	0
county	38	cowpeas yield	0
county	39	cowpeas	0
county	39	cowpeas (90kg bags)	0
county	39	cowpeas yield	0
county	40	cowpeas	0
county	40	cowpeas (90kg bags)	0
county	40	cowpeas yield	0
county	47	greengrams	3
county	47	greengrams (90kg bags)	14.4443999999999999
county	47	greengrams yield	4.80999999999999961
county	22	greengrams	0
county	22	greengrams (90kg bags)	0
county	22	greengrams yield	0
county	20	greengrams	404.800000000000011
county	20	greengrams (90kg bags)	2094.55999999999995
county	20	greengrams yield	5.16999999999999993
county	21	greengrams	313
county	21	greengrams (90kg bags)	1109.44000000000005
county	21	greengrams yield	3.54455000000000009
county	3	greengrams	3389
county	3	greengrams (90kg bags)	6714.14999999999964
county	3	greengrams yield	1.98116000000000003
county	2	greengrams	4080
county	2	greengrams (90kg bags)	36544.4000000000015
county	2	greengrams yield	8.9569700000000001
county	5	greengrams	3154
county	5	greengrams (90kg bags)	23751.0999999999985
county	5	greengrams yield	7.53047000000000022
county	1	greengrams	297
county	1	greengrams (90kg bags)	844
county	1	greengrams yield	2.84175000000000022
county	6	greengrams	2163.69999999999982
county	6	greengrams (90kg bags)	6753.25
county	6	greengrams yield	3.12116000000000016
county	4	greengrams	2175
county	4	greengrams (90kg bags)	11186
county	4	greengrams yield	5.14299000000000017
county	14	greengrams	7436
county	14	greengrams (90kg bags)	118161
county	14	greengrams yield	15.8903999999999996
county	11	greengrams	59.7999999999999972
county	11	greengrams (90kg bags)	358.800000000000011
county	11	greengrams yield	6
county	15	greengrams	89487
county	15	greengrams (90kg bags)	387114
county	15	greengrams yield	4.32591999999999999
county	16	greengrams	12096.7999999999993
county	16	greengrams (90kg bags)	102156
county	16	greengrams yield	8.44490000000000052
county	17	greengrams	89444
county	17	greengrams (90kg bags)	400431
county	17	greengrams yield	4.47689000000000004
county	10	greengrams	7.20000000000000018
county	10	greengrams (90kg bags)	52.2000000000000028
county	10	greengrams yield	7.25
county	12	greengrams	7692
county	12	greengrams (90kg bags)	44634.3000000000029
county	12	greengrams yield	5.80269999999999975
county	13	greengrams	30584
county	13	greengrams (90kg bags)	151023
county	13	greengrams yield	4.93796000000000035
county	7	greengrams	105
county	7	greengrams (90kg bags)	588.88900000000001
county	7	greengrams yield	5.60846999999999962
county	9	greengrams	132
county	9	greengrams (90kg bags)	270.444000000000017
county	9	greengrams yield	2.04882000000000009
county	8	greengrams	120
county	8	greengrams (90kg bags)	120
county	8	greengrams yield	1
county	43	greengrams	762
county	43	greengrams (90kg bags)	14228.1000000000004
county	43	greengrams yield	18.6720000000000006
county	45	greengrams	0
county	45	greengrams (90kg bags)	0
county	45	greengrams yield	0
county	42	greengrams	1423
county	42	greengrams (90kg bags)	13100
county	42	greengrams yield	9.20589999999999975
county	44	greengrams	131.849999999999994
county	44	greengrams (90kg bags)	1034.1099999999999
county	44	greengrams yield	7.84309000000000012
county	46	greengrams	0
county	46	greengrams (90kg bags)	0
county	46	greengrams yield	0
county	41	greengrams	833
county	41	greengrams (90kg bags)	4104.89000000000033
county	41	greengrams yield	4.92783999999999978
county	30	greengrams	551
county	30	greengrams (90kg bags)	5316.67000000000007
county	30	greengrams yield	9.64911999999999992
county	34	greengrams	35
county	34	greengrams (90kg bags)	177.777999999999992
county	34	greengrams yield	5.07936999999999994
county	28	greengrams	579
county	28	greengrams (90kg bags)	3540
county	28	greengrams yield	6.11399000000000026
county	31	greengrams	0
county	31	greengrams (90kg bags)	0
county	31	greengrams yield	0
county	33	greengrams	0
county	33	greengrams (90kg bags)	0
county	33	greengrams yield	0
county	25	greengrams	15
county	25	greengrams (90kg bags)	111.099999999999994
county	25	greengrams yield	7.40000000000000036
county	23	greengrams	145
county	23	greengrams (90kg bags)	526
county	23	greengrams yield	3.60000000000000009
county	24	greengrams	50
county	24	greengrams (90kg bags)	350
county	24	greengrams yield	7
county	39	greengrams	471
county	39	greengrams (90kg bags)	3706.67000000000007
county	39	greengrams yield	7.79999999999999982
county	40	greengrams	1018
county	40	greengrams (90kg bags)	4988.89000000000033
county	40	greengrams yield	4.90000000000000036
county	37	greengrams	8
county	37	greengrams (90kg bags)	166.667000000000002
county	37	greengrams yield	20.8000000000000007
county	38	greengrams	2
county	38	greengrams (90kg bags)	22.2222000000000008
county	38	greengrams yield	11.0999999999999996
country	KE	greengrams	259167
country	KE	greengrams (90kg bags)	1345294
country	KE	greengrams yield	5.19000000000000039
county	18	greengrams	0
county	18	greengrams (90kg bags)	0
county	18	greengrams yield	0
county	19	greengrams	0
county	19	greengrams (90kg bags)	0
county	19	greengrams yield	0
county	26	greengrams	0
county	26	greengrams (90kg bags)	0
county	26	greengrams yield	0
county	27	greengrams	0
county	27	greengrams (90kg bags)	0
county	27	greengrams yield	0
county	29	greengrams	0
county	29	greengrams (90kg bags)	0
county	29	greengrams yield	0
county	32	greengrams	0
county	32	greengrams (90kg bags)	0
county	32	greengrams yield	0
county	35	greengrams	0
county	35	greengrams (90kg bags)	0
county	35	greengrams yield	0
county	36	greengrams	0
county	36	greengrams (90kg bags)	0
county	36	greengrams yield	0
county	47	sweetpotatoes	25
county	47	sweetpotatoes (Ton)	175
county	47	sweetpotatoes yield	7
county	22	sweetpotatoes	50
county	22	sweetpotatoes (Ton)	4619.19999999999982
county	22	sweetpotatoes yield	92.4000000000000057
county	20	sweetpotatoes	833.5
county	20	sweetpotatoes (Ton)	9413
county	20	sweetpotatoes yield	11.3000000000000007
county	21	sweetpotatoes	467
county	21	sweetpotatoes (Ton)	4035.84999999999991
county	21	sweetpotatoes yield	8.59999999999999964
county	18	sweetpotatoes	21
county	18	sweetpotatoes (Ton)	245
county	18	sweetpotatoes yield	11.6999999999999993
county	19	sweetpotatoes	467
county	19	sweetpotatoes (Ton)	4035.84999999999991
county	19	sweetpotatoes yield	8.59999999999999964
county	3	sweetpotatoes	275
county	3	sweetpotatoes (Ton)	4125
county	3	sweetpotatoes yield	15
county	2	sweetpotatoes	802
county	2	sweetpotatoes (Ton)	650
county	2	sweetpotatoes yield	0.800000000000000044
county	5	sweetpotatoes	25.1999999999999993
county	5	sweetpotatoes (Ton)	481.600000000000023
county	5	sweetpotatoes yield	19.1000000000000014
county	1	sweetpotatoes	7
county	1	sweetpotatoes (Ton)	21
county	1	sweetpotatoes yield	3
county	6	sweetpotatoes	77.0999999999999943
county	6	sweetpotatoes (Ton)	802.899999999999977
county	6	sweetpotatoes yield	10.4000000000000004
county	4	sweetpotatoes	87.5
county	4	sweetpotatoes (Ton)	1384.5
county	4	sweetpotatoes yield	15.8000000000000007
county	14	sweetpotatoes	213
county	14	sweetpotatoes (Ton)	3138
county	14	sweetpotatoes yield	14.6999999999999993
county	11	sweetpotatoes	42.2999999999999972
county	11	sweetpotatoes (Ton)	99.875
county	11	sweetpotatoes yield	2.39999999999999991
county	15	sweetpotatoes	484
county	15	sweetpotatoes (Ton)	2336
county	15	sweetpotatoes yield	4.79999999999999982
county	16	sweetpotatoes	3562.23999999999978
county	16	sweetpotatoes (Ton)	42029.3000000000029
county	16	sweetpotatoes yield	11.8000000000000007
county	17	sweetpotatoes	4802
county	17	sweetpotatoes (Ton)	38267.5999999999985
county	17	sweetpotatoes yield	8
county	10	sweetpotatoes	0
county	10	sweetpotatoes (Ton)	0
county	10	sweetpotatoes yield	0
county	12	sweetpotatoes	1230
county	12	sweetpotatoes (Ton)	8518
county	12	sweetpotatoes yield	6.90000000000000036
county	13	sweetpotatoes	244
county	13	sweetpotatoes (Ton)	1769
county	13	sweetpotatoes yield	7.29999999999999982
county	43	sweetpotatoes	7839
county	43	sweetpotatoes (Ton)	127725
county	43	sweetpotatoes yield	16.3000000000000007
county	45	sweetpotatoes	1161
county	45	sweetpotatoes (Ton)	20317
county	45	sweetpotatoes yield	17.5
county	42	sweetpotatoes	1573
county	42	sweetpotatoes (Ton)	17390
county	42	sweetpotatoes yield	11.0999999999999996
county	44	sweetpotatoes	10995
county	44	sweetpotatoes (Ton)	69641.5
county	44	sweetpotatoes yield	6.29999999999999982
county	46	sweetpotatoes	440
county	46	sweetpotatoes (Ton)	4752
county	46	sweetpotatoes yield	10.8000000000000007
county	41	sweetpotatoes	3476
county	41	sweetpotatoes (Ton)	46306
county	41	sweetpotatoes yield	13.3000000000000007
county	30	sweetpotatoes	360.5
county	30	sweetpotatoes (Ton)	1146
county	30	sweetpotatoes yield	3.20000000000000018
county	36	sweetpotatoes	2333
county	36	sweetpotatoes (Ton)	30971
county	36	sweetpotatoes yield	13.3000000000000007
county	28	sweetpotatoes	58
county	28	sweetpotatoes (Ton)	652
county	28	sweetpotatoes yield	11.1999999999999993
county	34	sweetpotatoes	3
county	34	sweetpotatoes (Ton)	42
county	34	sweetpotatoes yield	14
county	35	sweetpotatoes	735
county	35	sweetpotatoes (Ton)	1568
county	35	sweetpotatoes yield	2.10000000000000009
county	31	sweetpotatoes	70
county	31	sweetpotatoes (Ton)	1052
county	31	sweetpotatoes yield	15
county	32	sweetpotatoes	217.400000000000006
county	32	sweetpotatoes (Ton)	1786.41000000000008
county	32	sweetpotatoes yield	8.19999999999999929
county	29	sweetpotatoes	101.5
county	29	sweetpotatoes (Ton)	1678
county	29	sweetpotatoes yield	16.5
county	33	sweetpotatoes	2062.19999999999982
county	33	sweetpotatoes (Ton)	23214
county	33	sweetpotatoes yield	11.3000000000000007
county	25	sweetpotatoes	0.5
county	25	sweetpotatoes (Ton)	2.5
county	25	sweetpotatoes yield	5
county	26	sweetpotatoes	225.5
county	26	sweetpotatoes (Ton)	3115
county	26	sweetpotatoes yield	13.8000000000000007
county	27	sweetpotatoes	87.2999999999999972
county	27	sweetpotatoes (Ton)	986
county	27	sweetpotatoes yield	11.3000000000000007
county	24	sweetpotatoes	6
county	24	sweetpotatoes (Ton)	62
county	24	sweetpotatoes yield	10.3000000000000007
county	23	sweetpotatoes	1.5
county	23	sweetpotatoes (Ton)	7.5
county	23	sweetpotatoes yield	5
county	39	sweetpotatoes	5499
county	39	sweetpotatoes (Ton)	133037
county	39	sweetpotatoes yield	24.1999999999999993
county	40	sweetpotatoes	6395
county	40	sweetpotatoes (Ton)	119970
county	40	sweetpotatoes yield	18.8000000000000007
county	37	sweetpotatoes	2998
county	37	sweetpotatoes (Ton)	24770
county	37	sweetpotatoes yield	8.30000000000000071
county	38	sweetpotatoes	715
county	38	sweetpotatoes (Ton)	7305
county	38	sweetpotatoes yield	10.1999999999999993
country	KE	sweetpotatoes	61067
country	KE	sweetpotatoes (Ton)	763643
country	KE	sweetpotatoes yield	12.5
county	7	sweetpotatoes	0
county	7	sweetpotatoes (Ton)	0
county	7	sweetpotatoes yield	0
county	8	sweetpotatoes	0
county	8	sweetpotatoes (Ton)	0
county	8	sweetpotatoes yield	0
county	9	sweetpotatoes	0
county	9	sweetpotatoes (Ton)	0
county	9	sweetpotatoes yield	0
county	47	cassava	18
county	47	cassava (Ton)	144
county	47	cassava yield	8
county	22	cassava	111
county	22	cassava (Ton)	1107
county	22	cassava yield	10
county	20	cassava	123
county	20	cassava (Ton)	2233
county	20	cassava yield	18.1999999999999993
county	21	cassava	361
county	21	cassava (Ton)	4036
county	21	cassava yield	11.1999999999999993
county	19	cassava	361
county	19	cassava (Ton)	4044
county	19	cassava yield	11.1999999999999993
county	18	cassava	11
county	18	cassava (Ton)	110
county	18	cassava yield	10
county	3	cassava	5779
county	3	cassava (Ton)	207060
county	3	cassava yield	35.7999999999999972
county	2	cassava	6475
county	2	cassava (Ton)	3300
county	2	cassava yield	0.5
county	5	cassava	1279
county	5	cassava (Ton)	31500
county	5	cassava yield	24.6000000000000014
county	1	cassava	226
county	1	cassava (Ton)	1360
county	1	cassava yield	6
county	6	cassava	58
county	6	cassava (Ton)	795
county	6	cassava yield	13.5999999999999996
county	4	cassava	189
county	4	cassava (Ton)	2694
county	4	cassava yield	14.3000000000000007
county	14	cassava	210
county	14	cassava (Ton)	5245
county	14	cassava yield	25
county	11	cassava	0
county	11	cassava (Ton)	0
county	11	cassava yield	0
county	15	cassava	915
county	15	cassava (Ton)	11950
county	15	cassava yield	13.0999999999999996
county	16	cassava	3216
county	16	cassava (Ton)	35313
county	16	cassava yield	11
county	17	cassava	4988
county	17	cassava (Ton)	40110
county	17	cassava yield	8
county	10	cassava	2
county	10	cassava (Ton)	5
county	10	cassava yield	2.5
county	12	cassava	731
county	12	cassava (Ton)	6358
county	12	cassava yield	8.69999999999999929
county	13	cassava	462
county	13	cassava (Ton)	1951
county	13	cassava yield	4.20000000000000018
county	43	cassava	4884
county	43	cassava (Ton)	76310
county	43	cassava yield	15.5999999999999996
county	45	cassava	109
county	45	cassava (Ton)	1474
county	45	cassava yield	13.5
county	42	cassava	1106
county	42	cassava (Ton)	12205
county	42	cassava yield	11
county	44	cassava	6639
county	44	cassava (Ton)	10742
county	44	cassava yield	1.60000000000000009
county	46	cassava	80
county	46	cassava (Ton)	2222
county	46	cassava yield	27.8000000000000007
county	41	cassava	2987
county	41	cassava (Ton)	28700
county	41	cassava yield	9.59999999999999964
county	30	cassava	118
county	30	cassava (Ton)	2297
county	30	cassava yield	19.3999999999999986
county	36	cassava	23
county	36	cassava (Ton)	345
county	36	cassava yield	15
county	28	cassava	226
county	28	cassava (Ton)	5570
county	28	cassava yield	24.6000000000000014
county	34	cassava	3
county	34	cassava (Ton)	26
county	34	cassava yield	8.69999999999999929
county	35	cassava	0
county	35	cassava (Ton)	0
county	35	cassava yield	0
county	31	cassava	17
county	31	cassava (Ton)	102
county	31	cassava yield	6
county	32	cassava	111
county	32	cassava (Ton)	827
county	32	cassava yield	7.40000000000000036
county	29	cassava	84
county	29	cassava (Ton)	2100
county	29	cassava yield	24.8999999999999986
county	33	cassava	55
county	33	cassava (Ton)	279
county	33	cassava yield	5
county	25	cassava	3
county	25	cassava (Ton)	6
county	25	cassava yield	2.39999999999999991
county	26	cassava	76
county	26	cassava (Ton)	1520
county	26	cassava yield	20
county	23	cassava	0
county	23	cassava (Ton)	0
county	23	cassava yield	0
county	27	cassava	11
county	27	cassava (Ton)	115
county	27	cassava yield	10.9000000000000004
county	24	cassava	0
county	24	cassava (Ton)	0
county	24	cassava yield	0
county	39	cassava	1567
county	39	cassava (Ton)	28267
county	39	cassava yield	18
county	40	cassava	19580
county	40	cassava (Ton)	321835
county	40	cassava yield	16.3999999999999986
county	37	cassava	341
county	37	cassava (Ton)	1938
county	37	cassava yield	5.70000000000000018
county	38	cassava	191
county	38	cassava (Ton)	2267
county	38	cassava yield	11.9000000000000004
country	KE	cassava	63725
country	KE	cassava (Ton)	858461
country	KE	cassava yield	13.5
county	7	cassava	0
county	7	cassava (Ton)	0
county	7	cassava yield	0
county	8	cassava	0
county	8	cassava (Ton)	0
county	8	cassava yield	0
county	9	cassava	0
county	9	cassava (Ton)	0
county	9	cassava yield	0
county	30	irishpotatoes	2013
county	30	irishpotatoes (Ton)	32933.8000000000029
county	30	irishpotatoes yield	16.3999999999999986
county	36	irishpotatoes	0
county	36	irishpotatoes (Ton)	0
county	36	irishpotatoes yield	0
county	28	irishpotatoes	11637
county	28	irishpotatoes (Ton)	196305
county	28	irishpotatoes yield	16.8999999999999986
county	34	irishpotatoes	1091
county	34	irishpotatoes (Ton)	16726.25
county	34	irishpotatoes yield	15.3000000000000007
county	31	irishpotatoes	484
county	31	irishpotatoes (Ton)	5680
county	31	irishpotatoes yield	11.6999999999999993
county	32	irishpotatoes	34744.3000000000029
county	32	irishpotatoes (Ton)	361027.400000000023
county	32	irishpotatoes yield	10.4000000000000004
county	29	irishpotatoes	384.300000000000011
county	29	irishpotatoes (Ton)	5820
county	29	irishpotatoes yield	15.0999999999999996
county	33	irishpotatoes	10173
county	33	irishpotatoes (Ton)	82402.3300000000017
county	33	irishpotatoes yield	8.09999999999999964
county	26	irishpotatoes	87
county	26	irishpotatoes (Ton)	1532.5
county	26	irishpotatoes yield	17.6000000000000014
county	27	irishpotatoes	1132
county	27	irishpotatoes (Ton)	156230
county	27	irishpotatoes yield	138
county	45	irishpotatoes	160
county	45	irishpotatoes (Ton)	2675
county	45	irishpotatoes yield	16.6999999999999993
county	43	irishpotatoes	2697
county	43	irishpotatoes (Ton)	32655
county	43	irishpotatoes yield	12.0999999999999996
county	46	irishpotatoes	41
county	46	irishpotatoes (Ton)	245.5
county	46	irishpotatoes yield	6
county	47	irishpotatoes	94
county	47	irishpotatoes (Ton)	940
county	47	irishpotatoes yield	10
county	18	irishpotatoes	22270
county	18	irishpotatoes (Ton)	293410
county	18	irishpotatoes yield	13.1999999999999993
county	20	irishpotatoes	839
county	20	irishpotatoes (Ton)	12442
county	20	irishpotatoes yield	14.8000000000000007
county	22	irishpotatoes	15483.3199999999997
county	22	irishpotatoes (Ton)	99313.6159999999945
county	22	irishpotatoes yield	6.40000000000000036
county	21	irishpotatoes	7294
county	21	irishpotatoes (Ton)	27765.2999999999993
county	21	irishpotatoes yield	3.79999999999999982
county	19	irishpotatoes	7294
county	19	irishpotatoes (Ton)	27765.2999999999993
county	19	irishpotatoes yield	3.79999999999999982
county	14	irishpotatoes	195
county	14	irishpotatoes (Ton)	4394
county	14	irishpotatoes yield	22.5
county	16	irishpotatoes	10
county	16	irishpotatoes (Ton)	6
county	16	irishpotatoes yield	0.599999999999999978
county	17	irishpotatoes	137
county	17	irishpotatoes (Ton)	1035
county	17	irishpotatoes yield	7.59999999999999964
county	12	irishpotatoes	14916
county	12	irishpotatoes (Ton)	157503.5
county	12	irishpotatoes yield	10.5999999999999996
county	13	irishpotatoes	42
county	13	irishpotatoes (Ton)	365
county	13	irishpotatoes yield	8.69999999999999929
county	39	irishpotatoes	1396
county	39	irishpotatoes (Ton)	56950
county	39	irishpotatoes yield	40.7999999999999972
county	37	irishpotatoes	16
county	37	irishpotatoes (Ton)	105
county	37	irishpotatoes yield	6.59999999999999964
country	KE	irishpotatoes	134630
country	KE	irishpotatoes (Ton)	1576227
country	KE	irishpotatoes yield	11.6999999999999993
county	1	irishpotatoes	0
county	1	irishpotatoes (Ton)	0
county	1	irishpotatoes yield	0
county	2	irishpotatoes	0
county	2	irishpotatoes (Ton)	0
county	2	irishpotatoes yield	0
county	3	irishpotatoes	0
county	3	irishpotatoes (Ton)	0
county	3	irishpotatoes yield	0
county	4	irishpotatoes	0
county	4	irishpotatoes (Ton)	0
county	4	irishpotatoes yield	0
county	5	irishpotatoes	0
county	5	irishpotatoes (Ton)	0
county	5	irishpotatoes yield	0
county	6	irishpotatoes	0
county	6	irishpotatoes (Ton)	0
county	6	irishpotatoes yield	0
county	7	irishpotatoes	0
county	7	irishpotatoes (Ton)	0
county	7	irishpotatoes yield	0
county	8	irishpotatoes	0
county	8	irishpotatoes (Ton)	0
county	8	irishpotatoes yield	0
county	9	irishpotatoes	0
county	9	irishpotatoes (Ton)	0
county	9	irishpotatoes yield	0
county	10	irishpotatoes	0
county	10	irishpotatoes (Ton)	0
county	10	irishpotatoes yield	0
county	11	irishpotatoes	0
county	11	irishpotatoes (Ton)	0
county	11	irishpotatoes yield	0
county	15	irishpotatoes	0
county	15	irishpotatoes (Ton)	0
county	15	irishpotatoes yield	0
county	23	irishpotatoes	0
county	23	irishpotatoes (Ton)	0
county	23	irishpotatoes yield	0
county	24	irishpotatoes	0
county	24	irishpotatoes (Ton)	0
county	24	irishpotatoes yield	0
county	25	irishpotatoes	0
county	25	irishpotatoes (Ton)	0
county	25	irishpotatoes yield	0
county	35	irishpotatoes	0
county	35	irishpotatoes (Ton)	0
county	35	irishpotatoes yield	0
county	38	irishpotatoes	0
county	38	irishpotatoes (Ton)	0
county	38	irishpotatoes yield	0
county	40	irishpotatoes	0
county	40	irishpotatoes (Ton)	0
county	40	irishpotatoes yield	0
county	41	irishpotatoes	0
county	41	irishpotatoes (Ton)	0
county	41	irishpotatoes yield	0
county	42	irishpotatoes	0
county	42	irishpotatoes (Ton)	0
county	42	irishpotatoes yield	0
county	44	irishpotatoes	0
county	44	irishpotatoes (Ton)	0
county	44	irishpotatoes yield	0
county	20	cocoyam	7
county	20	cocoyam (Ton)	23
county	20	cocoyam yield	3.29999999999999982
county	21	cocoyam	212.5
county	21	cocoyam (Ton)	879.200000000000045
county	21	cocoyam yield	4.09999999999999964
county	19	cocoyam	212.5
county	19	cocoyam (Ton)	879.200000000000045
county	19	cocoyam yield	4.09999999999999964
county	43	cocoyam	1531
county	43	cocoyam (Ton)	22550
county	43	cocoyam yield	14.6999999999999993
county	13	cocoyam	92
county	13	cocoyam (Ton)	984
county	13	cocoyam yield	10.6999999999999993
county	14	cocoyam	81
county	14	cocoyam (Ton)	1766
county	14	cocoyam yield	21.8000000000000007
country	KE	cocoyam	2155
country	KE	cocoyam (Ton)	27619
country	KE	cocoyam yield	12.8000000000000007
county	1	cocoyam	0
county	1	cocoyam (Ton)	0
county	1	cocoyam yield	0
county	2	cocoyam	0
county	2	cocoyam (Ton)	0
county	2	cocoyam yield	0
county	3	cocoyam	0
county	3	cocoyam (Ton)	0
county	3	cocoyam yield	0
county	4	cocoyam	0
county	4	cocoyam (Ton)	0
county	4	cocoyam yield	0
county	5	cocoyam	0
county	5	cocoyam (Ton)	0
county	5	cocoyam yield	0
county	6	cocoyam	0
county	6	cocoyam (Ton)	0
county	6	cocoyam yield	0
county	7	cocoyam	0
county	7	cocoyam (Ton)	0
county	7	cocoyam yield	0
county	8	cocoyam	0
county	8	cocoyam (Ton)	0
county	8	cocoyam yield	0
county	9	cocoyam	0
county	9	cocoyam (Ton)	0
county	9	cocoyam yield	0
county	10	cocoyam	0
county	10	cocoyam (Ton)	0
county	10	cocoyam yield	0
county	11	cocoyam	0
county	11	cocoyam (Ton)	0
county	11	cocoyam yield	0
county	12	cocoyam	0
county	12	cocoyam (Ton)	0
county	12	cocoyam yield	0
county	15	cocoyam	0
county	15	cocoyam (Ton)	0
county	15	cocoyam yield	0
county	16	cocoyam	0
county	16	cocoyam (Ton)	0
county	16	cocoyam yield	0
county	17	cocoyam	0
county	17	cocoyam (Ton)	0
county	17	cocoyam yield	0
county	18	cocoyam	0
county	18	cocoyam (Ton)	0
county	18	cocoyam yield	0
county	22	cocoyam	0
county	22	cocoyam (Ton)	0
county	22	cocoyam yield	0
county	23	cocoyam	0
county	23	cocoyam (Ton)	0
county	23	cocoyam yield	0
county	24	cocoyam	0
county	24	cocoyam (Ton)	0
county	24	cocoyam yield	0
county	25	cocoyam	0
county	25	cocoyam (Ton)	0
county	25	cocoyam yield	0
county	26	cocoyam	0
county	26	cocoyam (Ton)	0
county	26	cocoyam yield	0
county	27	cocoyam	0
county	27	cocoyam (Ton)	0
county	27	cocoyam yield	0
county	28	cocoyam	0
county	28	cocoyam (Ton)	0
county	28	cocoyam yield	0
county	29	cocoyam	0
county	29	cocoyam (Ton)	0
county	29	cocoyam yield	0
county	30	cocoyam	0
county	30	cocoyam (Ton)	0
county	30	cocoyam yield	0
county	31	cocoyam	0
county	31	cocoyam (Ton)	0
county	31	cocoyam yield	0
county	32	cocoyam	0
county	32	cocoyam (Ton)	0
county	32	cocoyam yield	0
county	33	cocoyam	0
county	33	cocoyam (Ton)	0
county	33	cocoyam yield	0
county	34	cocoyam	0
county	34	cocoyam (Ton)	0
county	34	cocoyam yield	0
county	35	cocoyam	0
county	35	cocoyam (Ton)	0
county	35	cocoyam yield	0
county	36	cocoyam	0
county	36	cocoyam (Ton)	0
county	36	cocoyam yield	0
county	37	cocoyam	0
county	37	cocoyam (Ton)	0
county	37	cocoyam yield	0
county	38	cocoyam	0
county	38	cocoyam (Ton)	0
county	38	cocoyam yield	0
county	39	cocoyam	0
county	39	cocoyam (Ton)	0
county	39	cocoyam yield	0
county	40	cocoyam	0
county	40	cocoyam (Ton)	0
county	40	cocoyam yield	0
county	41	cocoyam	0
county	41	cocoyam (Ton)	0
county	41	cocoyam yield	0
county	42	cocoyam	0
county	42	cocoyam (Ton)	0
county	42	cocoyam yield	0
county	44	cocoyam	0
county	44	cocoyam (Ton)	0
county	44	cocoyam yield	0
county	45	cocoyam	0
county	45	cocoyam (Ton)	0
county	45	cocoyam yield	0
county	46	cocoyam	0
county	46	cocoyam (Ton)	0
county	46	cocoyam yield	0
county	47	cocoyam	0
county	47	cocoyam (Ton)	0
county	47	cocoyam yield	0
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY django_content_type (id, app_label, model) FROM stdin;
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('django_content_type_id_seq', 1, false);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-03-25 18:39:58.274822+03
2	auth	0001_initial	2017-03-25 18:39:58.358585+03
3	admin	0001_initial	2017-03-25 18:39:58.413926+03
4	admin	0002_logentry_remove_auto_add	2017-03-25 18:39:58.437914+03
5	contenttypes	0002_remove_content_type_name	2017-03-25 18:39:58.484345+03
6	auth	0002_alter_permission_name_max_length	2017-03-25 18:39:58.498967+03
7	auth	0003_alter_user_email_max_length	2017-03-25 18:39:58.512494+03
8	auth	0004_alter_user_username_opts	2017-03-25 18:39:58.534689+03
9	auth	0005_alter_user_last_login_null	2017-03-25 18:39:58.548062+03
10	auth	0006_require_contenttypes_0002	2017-03-25 18:39:58.550646+03
11	auth	0007_alter_validators_add_error_messages	2017-03-25 18:39:58.563799+03
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('django_migrations_id_seq', 11, true);


--
-- Data for Name: employmentactivitystatus_sex; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY employmentactivitystatus_sex (geo_level, geo_code, "employment activity status", sex, total) FROM stdin;
county	7	economically inactive	female	91650
county	7	economically inactive	male	60952
county	7	employed	female	45518
county	7	employed	male	87187
county	7	employment unclassified	female	31600
county	7	employment unclassified	male	35682
county	7	seeking work / no work available	female	75506
county	11	economically inactive	female	29580
county	11	economically inactive	male	19773
county	11	employed	female	21966
county	11	employed	male	32430
county	11	employment unclassified	female	2469
county	11	employment unclassified	male	2995
county	11	seeking work / no work available	female	4011
county	11	seeking work / no work available	male	5232
county	14	economically inactive	female	75339
county	14	economically inactive	male	60169
county	14	employed	female	135987
county	14	employed	male	141061
county	14	employment unclassified	female	7865
county	14	employment unclassified	male	7962
county	14	seeking work / no work available	female	9240
county	20	economically inactive	female	77475
county	20	economically inactive	male	70180
county	20	employed	female	149981
county	20	employed	male	148860
county	20	employment unclassified	female	5775
county	20	employment unclassified	male	5414
county	20	seeking work / no work available	female	5059
county	20	seeking work / no work available	male	5318
county	40	economically inactive	female	107984
county	40	economically inactive	male	95308
county	40	employed	female	181388
county	40	employed	male	162143
county	40	employment unclassified	female	18700
county	40	employment unclassified	male	18340
county	40	seeking work / no work available	female	12672
county	40	seeking work / no work available	male	11805
county	22	economically inactive	female	346243
county	22	economically inactive	male	249589
county	22	employed	female	334977
county	22	employed	male	409108
county	22	employment unclassified	female	19188
county	22	employment unclassified	male	17438
county	22	seeking work / no work available	female	38958
county	28	economically inactive	female	79831
county	28	economically inactive	male	61120
county	28	employed	female	62897
county	28	employed	male	75895
county	28	employment unclassified	female	7927
county	28	employment unclassified	male	8073
county	28	seeking work / no work available	female	5095
county	28	seeking work / no work available	male	7481
county	30	economically inactive	female	121166
county	30	economically inactive	male	89656
county	30	employed	female	84223
county	30	employed	male	106126
county	30	employment unclassified	female	12437
county	30	employment unclassified	male	18154
county	30	seeking work / no work available	female	13576
county	34	economically inactive	female	156840
county	34	economically inactive	male	105132
county	34	employed	female	100033
county	34	employed	male	148926
county	34	employment unclassified	female	10263
county	34	employment unclassified	male	9936
county	34	seeking work / no work available	female	19257
county	34	seeking work / no work available	male	21042
county	35	economically inactive	female	100699
county	35	economically inactive	male	91281
county	35	employed	female	127056
county	35	employed	male	139723
county	35	employment unclassified	female	9770
county	35	employment unclassified	male	9790
county	35	seeking work / no work available	female	7534
county	36	economically inactive	female	151105
county	36	economically inactive	male	144033
county	36	employed	female	202342
county	36	employed	male	197820
county	36	employment unclassified	female	16505
county	36	employment unclassified	male	16581
county	36	seeking work / no work available	female	6207
county	36	seeking work / no work available	male	7605
county	37	economically inactive	female	281467
county	37	economically inactive	male	242050
county	37	employed	female	359333
county	37	employed	male	338187
county	37	employment unclassified	female	35149
county	37	employment unclassified	male	34657
county	37	seeking work / no work available	female	36492
county	37	seeking work / no work available	male	37125
county	39	economically inactive	female	209865
county	39	economically inactive	male	191291
county	39	employed	female	323073
county	39	employed	male	308149
county	39	employment unclassified	female	27697
county	39	employment unclassified	male	27236
county	39	seeking work / no work available	female	18116
county	43	economically inactive	female	161767
county	43	economically inactive	male	147037
county	43	employed	female	207466
county	43	employed	male	185908
county	43	employment unclassified	female	20433
county	43	employment unclassified	male	19889
county	43	seeking work / no work available	female	23429
county	43	seeking work / no work available	male	20313
county	45	economically inactive	female	209595
county	45	economically inactive	male	205434
county	45	employed	female	306267
county	45	employed	male	251369
county	2	economically inactive	female	156110
county	2	economically inactive	male	111685
county	2	employed	female	93362
county	2	employed	male	113403
county	2	employment unclassified	female	7525
county	2	employment unclassified	male	7314
county	2	seeking work / no work available	female	17473
county	2	seeking work / no work available	male	22630
county	5	economically inactive	female	18395
county	5	economically inactive	male	10593
county	5	employed	female	17711
county	5	employed	male	28331
county	5	employment unclassified	female	2887
county	5	employment unclassified	male	3212
county	5	seeking work / no work available	female	1476
county	9	economically inactive	female	178676
county	9	economically inactive	male	154258
county	9	employed	female	112641
county	9	employed	male	194734
county	9	employment unclassified	female	30135
county	9	employment unclassified	male	35942
county	9	seeking work / no work available	female	72459
county	9	seeking work / no work available	male	99972
county	10	economically inactive	female	56360
county	10	economically inactive	male	30986
county	10	employed	female	42275
county	10	employed	male	71951
county	10	employment unclassified	female	10221
county	10	employment unclassified	male	11437
county	10	seeking work / no work available	female	8610
county	12	economically inactive	female	272712
county	12	economically inactive	male	219699
county	12	employed	female	372542
county	12	employed	male	397306
county	12	employment unclassified	female	26531
county	12	employment unclassified	male	26720
county	12	seeking work / no work available	female	22672
county	12	seeking work / no work available	male	26730
county	15	economically inactive	female	225825
county	15	economically inactive	male	174380
county	15	employed	female	177456
county	15	employed	male	174406
county	15	employment unclassified	female	20681
county	15	employment unclassified	male	19888
county	15	seeking work / no work available	female	26241
county	16	economically inactive	female	259330
county	16	economically inactive	male	187415
county	16	employed	female	182069
county	16	employed	male	230980
county	16	employment unclassified	female	21186
county	16	employment unclassified	male	21008
county	16	seeking work / no work available	female	19147
county	16	seeking work / no work available	male	26349
county	17	economically inactive	female	243658
county	17	economically inactive	male	186066
county	17	employed	female	124015
county	17	employed	male	148453
county	17	employment unclassified	female	10524
county	17	employment unclassified	male	10316
county	17	seeking work / no work available	female	12096
county	17	seeking work / no work available	male	18700
county	21	economically inactive	female	168660
county	21	economically inactive	male	143205
county	21	employed	female	221099
county	21	employed	male	213306
county	21	employment unclassified	female	7661
county	21	employment unclassified	male	7893
county	21	seeking work / no work available	female	9009
county	31	economically inactive	female	78306
county	31	economically inactive	male	59632
county	31	employed	female	73805
county	31	employed	male	85723
county	31	employment unclassified	female	8081
county	31	employment unclassified	male	8277
county	31	seeking work / no work available	female	10838
county	31	seeking work / no work available	male	12970
county	32	economically inactive	female	298773
county	32	economically inactive	male	240432
county	32	employed	female	310256
county	32	employed	male	365594
county	32	employment unclassified	female	26367
county	32	employment unclassified	male	25615
county	32	seeking work / no work available	female	41244
county	42	economically inactive	female	205790
county	42	economically inactive	male	167986
county	42	employed	female	165899
county	42	employed	male	181313
county	42	employment unclassified	female	16431
county	42	employment unclassified	male	15601
county	42	seeking work / no work available	female	24337
county	44	economically inactive	female	143345
county	44	economically inactive	male	135462
county	44	employed	female	208282
county	44	employed	male	189157
county	44	employment unclassified	female	16780
county	44	employment unclassified	male	16268
county	44	seeking work / no work available	female	14664
county	44	seeking work / no work available	male	12405
county	45	employment unclassified	female	25394
county	45	employment unclassified	male	24462
county	45	seeking work / no work available	female	12455
county	45	seeking work / no work available	male	12387
county	47	economically inactive	female	552949
county	47	economically inactive	male	357700
county	47	employed	female	562550
county	47	employed	male	848679
county	47	employment unclassified	female	80281
county	47	employment unclassified	male	68295
county	47	seeking work / no work available	female	131955
county	6	economically inactive	female	58149
county	6	economically inactive	male	41810
county	6	employed	female	51973
county	6	employed	male	67920
county	6	employment unclassified	female	3931
county	6	employment unclassified	male	4228
county	6	seeking work / no work available	female	4905
county	6	seeking work / no work available	male	6927
county	8	economically inactive	female	92518
county	8	economically inactive	male	74270
county	8	employed	female	73429
county	8	employed	male	122893
county	8	employment unclassified	female	27004
county	8	employment unclassified	male	32387
county	8	seeking work / no work available	female	59853
county	13	economically inactive	female	17968
county	13	economically inactive	male	15543
county	13	employed	female	35735
county	13	employed	male	33639
county	13	employment unclassified	female	1657
county	13	employment unclassified	male	1600
county	13	seeking work / no work available	female	1578
county	13	seeking work / no work available	male	1475
county	18	economically inactive	female	109293
county	18	economically inactive	male	100673
county	18	employed	female	141447
county	18	employed	male	134559
county	18	employment unclassified	female	6878
county	18	employment unclassified	male	6975
county	18	seeking work / no work available	female	5230
county	19	economically inactive	female	133645
county	19	economically inactive	male	108726
county	19	employed	female	167919
county	19	employed	male	173014
county	19	employment unclassified	female	5903
county	19	employment unclassified	male	5824
county	19	seeking work / no work available	female	8319
county	19	seeking work / no work available	male	9914
county	25	economically inactive	female	30840
county	25	economically inactive	male	20012
county	25	employed	female	38202
county	25	employed	male	46446
county	25	employment unclassified	female	12747
county	25	employment unclassified	male	13693
county	25	seeking work / no work available	female	8660
county	23	economically inactive	female	88634
county	23	economically inactive	male	55721
county	23	employed	female	161343
county	23	employed	male	203342
county	23	employment unclassified	female	60866
county	23	employment unclassified	male	72985
county	23	seeking work / no work available	female	43415
county	23	seeking work / no work available	male	51665
county	24	economically inactive	female	87619
county	24	economically inactive	male	66029
county	26	economically inactive	female	171479
county	26	economically inactive	male	139081
county	26	employed	female	139432
county	26	employed	male	163549
county	26	employment unclassified	female	10524
county	26	employment unclassified	male	10213
county	26	seeking work / no work available	female	19892
county	26	seeking work / no work available	male	20468
county	27	economically inactive	female	198922
county	27	economically inactive	male	144024
county	27	employed	female	121173
county	27	employed	male	173910
county	27	employment unclassified	female	31220
county	27	employment unclassified	male	29314
county	27	seeking work / no work available	female	24978
county	29	economically inactive	female	157441
county	29	economically inactive	male	124631
county	29	employed	female	133650
county	29	employed	male	162599
county	29	employment unclassified	female	15095
county	29	employment unclassified	male	15403
county	29	seeking work / no work available	female	8771
county	29	seeking work / no work available	male	10505
county	32	seeking work / no work available	male	42395
county	33	economically inactive	female	137235
county	33	economically inactive	male	104109
county	33	employed	female	162664
county	33	employed	male	194267
county	33	employment unclassified	female	24818
county	33	employment unclassified	male	27378
county	33	seeking work / no work available	female	13179
county	38	economically inactive	female	114550
county	38	economically inactive	male	94385
county	38	employed	female	106219
county	38	employed	male	95604
county	38	employment unclassified	female	10870
county	38	employment unclassified	male	10658
county	38	seeking work / no work available	female	17025
county	38	seeking work / no work available	male	17996
county	41	economically inactive	female	141486
county	41	economically inactive	male	123269
county	41	employed	female	198561
county	41	employed	male	172400
county	41	employment unclassified	female	16947
county	41	employment unclassified	male	16195
county	41	seeking work / no work available	female	15002
county	46	economically inactive	female	86652
county	46	economically inactive	male	85942
county	46	employed	female	116913
county	46	employed	male	98750
county	46	employment unclassified	female	6047
county	46	employment unclassified	male	5902
county	46	seeking work / no work available	female	3675
county	46	seeking work / no work available	male	3852
county	1	economically inactive	female	207767
county	1	economically inactive	male	122080
county	1	employed	female	121216
county	1	employed	male	231152
county	1	employment unclassified	female	17087
county	1	employment unclassified	male	14812
county	1	seeking work / no work available	female	39565
county	1	seeking work / no work available	male	44482
county	3	economically inactive	female	249565
county	3	economically inactive	male	180864
county	3	employed	female	172688
county	3	employed	male	196490
county	3	employment unclassified	female	24889
county	3	employment unclassified	male	23518
county	3	seeking work / no work available	female	28974
county	3	seeking work / no work available	male	33962
county	4	economically inactive	female	44495
county	4	economically inactive	male	23198
county	4	employed	female	34930
county	4	employed	male	51451
county	4	employment unclassified	female	7382
county	4	employment unclassified	male	7858
county	4	seeking work / no work available	female	9621
county	4	seeking work / no work available	male	12217
county	5	seeking work / no work available	male	2096
county	7	seeking work / no work available	male	100900
county	8	seeking work / no work available	male	83840
county	10	seeking work / no work available	male	11929
county	14	seeking work / no work available	male	10148
county	15	seeking work / no work available	male	27913
county	18	seeking work / no work available	male	6827
county	25	seeking work / no work available	male	9465
county	21	seeking work / no work available	male	12905
county	22	seeking work / no work available	male	42702
county	24	employed	female	95502
county	24	employed	male	108653
county	24	employment unclassified	female	12896
county	24	employment unclassified	male	14171
county	24	seeking work / no work available	female	13453
county	24	seeking work / no work available	male	16001
county	27	seeking work / no work available	male	28399
county	30	seeking work / no work available	male	16772
county	33	seeking work / no work available	male	14017
county	35	seeking work / no work available	male	8223
county	39	seeking work / no work available	male	17991
county	41	seeking work / no work available	male	13483
county	42	seeking work / no work available	male	22109
county	47	seeking work / no work available	male	111317
country	KE	economically inactive	female	7187753
country	KE	economically inactive	male	5636871
country	KE	employed	female	7379465
country	KE	employed	male	8406866
country	KE	employment unclassified	female	833224
country	KE	employment unclassified	male	847509
country	KE	seeking work / no work available	female	1025923
country	KE	seeking work / no work available	male	1160959
\.


--
-- Data for Name: fertility; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY fertility (geo_level, geo_code, fertility, total) FROM stdin;
country	KE	rate	3.89999999999999991
country	KE	pregnant	6.29999999999999982
country	KE	mean	5
county	2	rate	4.70000000000000018
county	2	pregnant	7.5
county	2	mean	5.79999999999999982
county	3	rate	5.09999999999999964
county	3	pregnant	7.09999999999999964
county	3	mean	6.40000000000000036
county	4	rate	5.79999999999999982
county	4	pregnant	10.1999999999999993
county	4	mean	7.40000000000000036
county	5	rate	4.29999999999999982
county	5	pregnant	5.59999999999999964
county	5	mean	5
county	6	rate	3.20000000000000018
county	6	pregnant	3.70000000000000018
county	6	mean	4.29999999999999982
county	7	rate	6.09999999999999964
county	7	pregnant	11.6999999999999993
county	7	mean	6.79999999999999982
county	8	rate	7.79999999999999982
county	8	pregnant	13.5999999999999996
county	8	mean	7.90000000000000036
county	9	rate	5.20000000000000018
county	9	pregnant	10.5999999999999996
county	9	mean	6.40000000000000036
county	10	rate	5
county	10	pregnant	12.6999999999999993
county	10	mean	6
county	11	rate	4.90000000000000036
county	11	pregnant	6.20000000000000018
county	11	mean	6.09999999999999964
county	12	rate	3.10000000000000009
county	12	pregnant	4.79999999999999982
county	12	mean	4.29999999999999982
county	13	rate	3.39999999999999991
county	13	pregnant	4.40000000000000036
county	13	mean	4.29999999999999982
county	14	rate	3.10000000000000009
county	14	pregnant	4.5
county	14	mean	4.09999999999999964
county	15	rate	3.89999999999999991
county	15	pregnant	4.09999999999999964
county	15	mean	5.29999999999999982
county	16	rate	3.39999999999999991
county	16	pregnant	3.89999999999999991
county	16	mean	4.29999999999999982
county	18	rate	3.5
county	18	pregnant	6
county	18	mean	4.79999999999999982
county	19	rate	2.70000000000000018
county	19	pregnant	4.79999999999999982
county	19	mean	3.29999999999999982
county	20	rate	2.29999999999999982
county	20	pregnant	4.09999999999999964
county	20	mean	3.39999999999999991
county	21	rate	3
county	21	pregnant	4.29999999999999982
county	21	mean	3.89999999999999991
county	22	rate	2.70000000000000018
county	22	pregnant	5
county	22	mean	3.60000000000000009
county	23	rate	6.90000000000000036
county	23	pregnant	10.5999999999999996
county	23	mean	6.40000000000000036
county	24	rate	7.20000000000000018
county	24	pregnant	10.6999999999999993
county	24	mean	6.40000000000000036
county	25	rate	6.29999999999999982
county	25	pregnant	11.5999999999999996
county	25	mean	6.5
county	26	rate	5.20000000000000018
county	26	pregnant	6.29999999999999982
county	26	mean	6.59999999999999964
county	27	rate	3.60000000000000009
county	27	pregnant	8.40000000000000036
county	27	mean	5.29999999999999982
county	28	rate	4.09999999999999964
county	28	pregnant	5.90000000000000036
county	28	mean	5.79999999999999982
county	29	rate	4
county	29	pregnant	4.79999999999999982
county	29	mean	6.09999999999999964
county	30	rate	4.79999999999999982
county	30	pregnant	7.79999999999999982
county	30	mean	6.20000000000000018
county	31	rate	3.70000000000000018
county	31	pregnant	7.90000000000000036
county	31	mean	4.90000000000000036
county	32	rate	3.70000000000000018
county	32	pregnant	5.29999999999999982
county	32	mean	4.70000000000000018
county	33	rate	6
county	33	pregnant	10.1999999999999993
county	33	mean	6.70000000000000018
county	35	rate	4
county	35	pregnant	5.70000000000000018
county	35	mean	5
county	36	rate	4.29999999999999982
county	36	pregnant	5.5
county	36	mean	5.70000000000000018
county	37	rate	4.40000000000000036
county	37	pregnant	7.29999999999999982
county	37	mean	5.40000000000000036
county	38	rate	4.5
county	38	pregnant	6.20000000000000018
county	38	mean	5.29999999999999982
county	39	rate	5
county	39	pregnant	6.20000000000000018
county	39	mean	6.90000000000000036
county	40	rate	4.70000000000000018
county	40	pregnant	6.79999999999999982
county	40	mean	6.5
county	41	rate	4.20000000000000018
county	41	pregnant	5.90000000000000036
county	41	mean	5.90000000000000036
county	42	rate	3.60000000000000009
county	42	pregnant	5.29999999999999982
county	42	mean	5.59999999999999964
county	43	rate	5.20000000000000018
county	43	pregnant	6.40000000000000036
county	43	mean	6.20000000000000018
county	44	rate	5.29999999999999982
county	44	pregnant	9
county	44	mean	7
county	45	rate	3.70000000000000018
county	45	pregnant	5
county	45	mean	5.09999999999999964
county	46	rate	3.5
county	46	pregnant	3.20000000000000018
county	46	mean	4.70000000000000018
county	47	rate	2.70000000000000018
county	47	pregnant	6.79999999999999982
county	47	mean	3.10000000000000009
county	17	rate	3.29999999999999982
county	17	pregnant	4
county	17	mean	5.5
county	1	rate	3.20000000000000018
county	1	pregnant	5.40000000000000036
county	1	mean	4.09999999999999964
county	34	rate	4.5
county	34	pregnant	7.70000000000000018
county	34	mean	4.29999999999999982
\.


--
-- Data for Name: gender_ruralorurban; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY gender_ruralorurban (geo_level, geo_code, gender, "rural or urban", total) FROM stdin;
\.


--
-- Data for Name: health_facilities_type; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY health_facilities_type (geo_level, geo_code, type, total) FROM stdin;
country	KE	Stand Alone VCT Centre	174
country	KE	Health Training Institution	7
country	KE	Sub District Hospital	137
country	KE	Rural Health Training Centre	1
country	KE	Regional Blood Transfusion Centre	2
country	KE	Radiology Unit	9
country	KE	Provincial General Hospital	9
country	KE	Other Hospital	246
country	KE	Nursing Hospital	199
country	KE	Unlisted	23
country	KE	National Referral Hospital	3
country	KE	Medical Clinic	3183
country	KE	Medical Centre	29
country	KE	Maternity Home	49
country	KE	Stand Alone Labs	57
country	KE	Health Project	8
country	KE	Health Programme	14
country	KE	Health Centre	1107
country	KE	Stand Alone Funeral Home	1
country	KE	Eye Clinic	3
country	KE	Eye Centre	10
country	KE	District Hospital	138
country	KE	District Health Office	4
country	KE	Dispensary	4624
country	KE	Dental Clinic	30
country	KE	Blood Bank	1
county	30	Dispensary	188
county	30	District Hospital	4
county	30	Health Centre	21
county	30	Medical Clinic	13
county	30	Nursing Home	1
county	30	Other Hospital	2
county	30	Sub District Hospital	1
county	30	Health Training Institution	1
county	30	Stand Alone VCT Centre	1
county	36	Dispensary	112
county	36	District Health Office	1
county	36	District Hospital	1
county	36	Health Centre 	15
county	36	Medical Clinic	2
county	36	Other Hospital	2
county	36	Sub District Hospital	2
county	36	Stand Alone VCT Centre	3
county	39	Dispensary	98
county	39	District Hospital	6
county	39	Health Centre	18
county	39	Stand Alone Labs	1
county	39	Medical Clinic	37
county	39	Other Hospital	1
county	39	Sub District Hospital	5
county	39	Stand Alone VCT Centre	1
county	40	Dispensary	54
county	40	District Hospital	5
county	40	Health Centre	14
county	40	Medical Clinic	17
county	40	Nursing Home	4
county	40	Other Hospital	1
county	40	Sub District Hospital	1
county	40	VCT Centre	1
county	28	Dispensary	90
county	28	District Hospital	2
county	28	Health Centre	22
county	28	Medical Clinic	3
county	28	Other Hospital	2
county	28	Sub District Hospital	5
county	14	Dispensary	93
county	14	District Health Office	1
county	14	District Hospital	2
county	14	Health Centre	13
county	14	Maternity Home	1
county	14	Medical Clinic	50
county	14	Nursing Home	3
county	14	Other Hospital	4
county	14	Provincial General Hospital	1
county	14	Regional Blood Transfusion Centre	1
county	14	Sub District Hospital	2
county	14	Health Training Institution  	1
county	14	Stand Alone VCT Centre 	0
county	7	Dispensary	62
county	7	District Hospital	3
county	7	Health Centre	22
county	7	Medical Centre	1
county	7	Medical Clinic	54
county	7	Nursing Home	6
county	7	Other Hospital	6
county	7	Provincial General Hospital	1
county	7	Sub District Hospital	4
county	43	Dispensary	123
county	43	District Hospital	5
county	43	Health Centre	48
county	43	Medical Centre	1
county	43	Medical Clinic	20
county	43	Nursing Home	6
county	43	Other Hospital	1
county	43	Sub District Hospital	7
county	43	Stand Alone VCT Centre	15
county	11	Dispensary	37
county	11	District Hospital	2
county	11	Health Centre	5
county	11	Medical Clinic	3
county	11	Nursing Home	2
county	11	Other Hospital	1
county	34	Dental Clinic	5
county	34	Dispensary	91
county	34	District Hospital	2
county	34	Health Centre	28
county	34	Health Project	1
county	34	Stand Alone Labs	1
county	34	Maternity Home	3
county	34	Medical Centre	1
county	34	Medical Clinic	143
county	34	Nursing Home	11
county	34	Other Hospital	9
county	34	Radiology Unit	1
county	34	Sub District Hospital	1
county	34	Stand Alone VCT Centre	5
county	37	Dispensary	120
county	37	District Hospital	4
county	37	Health Centre	48
county	37	Health Programme	1
county	37	Maternity Home	1
county	37	Medical Clinic	69
county	37	Nursing Home	9
county	37	Other Hospital	4
county	37	Provincial General Hospital	1
county	37	Sub District Hospital	7
county	37	Stand Alone VCT Centre	3
county	35	Dispensary	152
county	35	District Hospital	4
county	35	Health Centre	14
county	35	Medical Centre	1
county	35	Medical Clinic	10
county	35	Unlisted	1
county	35	Other Hospital	8
county	35	Sub District Hospital	3
county	35	Stand Alone VCT Centre	5
county	22	Dispensary	135
county	22	District Hospital	3
county	22	Health Centre	40
county	22	Health Programme	1
county	22	Maternity Home	3
county	22	Medical Centre	1
county	22	Medical Clinic	242
county	22	Nursing Home	11
county	22	Other Hospital	24
county	22	Provincial General Hospital	1
county	22	Sub District Hospital	4
county	22	Stand Alone VCT Centre	6
county	3	Dispensary	102
county	3	District Hospital	3
county	3	Health Centre	16
county	3	Medical Clinic	120
county	3	Nursing Home	6
county	3	Other Hospital	5
county	3	Sub District Hospital	2
county	3	Stand Alone VCT Centre	3
county	20	Dental Clinic	1
county	20	Dispensary	65
county	20	District Hospital	1
county	20	Eye Centre	2
county	20	Health Centre	25
county	20	Stand Alone Labs	19
county	20	Maternity Home	1
county	20	Medical Clinic	114
county	20	Unlisted	1
county	20	Nursing Home	9
county	20	Other Hospital	1
county	20	Radiology Unit	1
county	20	Sub District Hospital	3
county	45	Dispensary	85
county	45	District Hospital	8
county	45	Health Centre	27
county	45	Medical Clinic	22
county	45	Nursing Home	4
county	45	Other Hospital	7
county	45	Sub District Hospital	7
county	45	Stand Alone VCT Centre	1
county	42	Dispensary	92
county	42	District Hospital	3
county	42	Health Centre	32
county	42	Health Programme	1
county	42	Medical Clinic	34
county	42	Nursing Home	6
county	42	Other Hospital	12
county	42	Provincial General Hospital	1
county	42	Sub District Hospital	7
county	42	Stand Alone VCT Centre	1
county	15	Dispensary	269
county	15	District Hospital	3
county	15	Health Centre	37
county	15	Medical Centre	1
county	15	Medical Clinic	61
county	15	Nursing Home	13
county	15	Other Hospital	3
county	15	Sub District Hospital	8
county	2	Dispensary	68
county	2	District Hospital	3
county	2	Health Centre	10
county	2	Medical Clinic	28
county	2	Unlisted	1
county	2	Other Hospital	2
county	2	Stand Alone VCT Centre	3
county	31	Dispensary	65
county	31	District Hospital	3
county	31	Health Centre	9
county	31	Health Programme	1
county	31	Medical Centre	1
county	31	Medical Clinic	25
county	31	Unlisted	1
county	31	Nursing Home	2
county	31	Other Hospital	4
county	31	Sub District Hospital	1
county	31	Stand Alone VCT Centre	3
county	5	Dispensary	22
county	5	District Hospital	1
county	5	Health Centre	5
county	5	Medical Clinic	13
county	5	Nursing Home	1
county	5	Sub District Hospital	2
county	5	Stand Alone VCT Centre	1
county	16	Dispensary	151
county	16	District Hospital	5
county	16	Health Centre	31
county	16	Maternity Home	3
county	16	Medical Clinic	146
county	16	Unlisted	1
county	16	Nursing Home	3
county	16	Other Hospital	3
county	16	Provincial General Hospital	1
county	16	Stand Alone VCT Centre	9
county	17	Dispensary	170
county	17	District Hospital	4
county	17	Health Centre	26
county	17	Medical Centre	1
county	17	Medical Clinic	39
county	17	Nursing Home	5
county	17	Other Hospital	3
county	17	Sub District Hospital	6
county	17	Stand Alone VCT Centre	3
county	9	Dispensary	28
county	9	District Hospital	3
county	9	Health Centre	21
county	9	Medical Clinic	21
county	9	Nursing Home	9
county	9	Sub District Hospital	2
county	10	Dispensary	65
county	10	District Hospital	2
county	10	Health Centre	18
county	10	Stand Alone Labs	2
county	10	Medical Centre	1
county	10	Medical Clinic	21
county	10	Nursing Home	3
county	10	Other Hospital	2
county	12	Dental Clinic	3
county	12	Dispensary	144
county	12	District Health Office	1
county	12	District Hospital	5
county	12	Eye Centre	1
county	12	Eye Clinic	1
county	12	Stand Alone Funeral Home	1
county	12	Health Centre	28
county	12	Stand Alone Labs	9
county	12	Maternity Home	3
county	12	Medical Centre	3
county	12	Medical Clinic	218
county	12	Unlisted	14
county	12	Nursing Home	5
county	12	Other Hospital	10
county	12	Radiology Unit	2
county	12	Sub District Hospital	9
county	12	Health Training Institution	1
county	12	Stand Alone VCT Centre	2
county	44	Dispensary	112
county	44	District Hospital	4
county	44	Health Centre	25
county	44	Health Project	2
county	44	Maternity Home	1
county	44	Medical Clinic	42
county	44	Nursing Home	6
county	44	Other Hospital	8
county	44	Sub District Hospital	6
county	44	Stand Alone VCT Centre	7
county	1	Dispensary	43
county	1	District Hospital	2
county	1	Health Centre	12
county	1	Health Programme	1
county	1	Maternity Home	2
county	1	Medical Centre	1
county	1	Medical Clinic	220
county	1	Nursing Home	10
county	1	Other Hospital	16
county	1	Provincial General Hospital	1
county	1	Regional Blood Transfusion Centre	1
county	1	Stand Alone VCT Centre	9
county	21	Dispensary	130
county	21	District Hospital	2
county	21	Health Centre	17
county	21	Stand Alone Labs	1
county	21	Maternity Home	1
county	21	Medical Centre	1
county	21	Medical Clinic	118
county	21	Nursing Home	3
county	21	Other Hospital	3
county	21	Sub District Hospital	5
county	47	Dental Clinic	10
county	47	Dispensary	195
county	47	District Health Office	1
county	47	District Hospital	3
county	47	Eye Centre	2
county	47	Eye Clinic	1
county	47	Health Centre	90
county	47	Health Programme	5
county	47	Health Project	3
county	47	Stand Alone Labs	13
county	47	Maternity Home	15
county	47	Medical Centre	10
county	47	Medical Clinic	440
county	47	National Referral Hospital	2
county	47	Nursing Home	25
county	47	Other Hospital	39
county	47	Radiology Unit	1
county	47	Health Training Institution	3
county	47	Stand Alone VCT Centre	55
county	32	Dispensary	161
county	32	District Hospital	3
county	32	Health Centre	47
county	32	Health Project	2
county	32	Laboratory (Stand-alone)	1
county	32	Maternity Home	7
county	32	Medical Clinic	159
county	32	Unlisted	1
county	32	Nursing Home	12
county	32	Other Hospital	16
county	32	Provincial General Hospital	1
county	32	Sub District Hospital	3
county	32	Stand Alone VCT Centre	10
county	29	Dispensary	153
county	29	District Hospital	2
county	29	Health Centre	19
county	29	Health Programme	1
county	29	Medical Clinic	17
county	29	Other Hospital	2
county	29	Rural Health Training Centre	1
county	29	Sub District Hospital	3
county	29	Stand Alone VCT Centre	7
county	33	Dispensary	108
county	33	District Hospital	3
county	33	Health Centre	26
county	33	Maternity Home	1
county	33	Medical Clinic	15
county	33	Nursing Home	1
county	33	Other Hospital	5
county	33	Sub District Hospital	1
county	33	Stand Alone VCT Centre	3
county	46	Dispensary	58
county	46	District Hospital	3
county	46	Health Centre	44
county	46	Medical Clinic	23
county	46	Nursing Home	3
county	46	Sub District Hospital	5
county	18	Dispensary	49
county	18	District Hospital	1
county	18	Health Centre	24
county	18	Maternity Home	1
county	18	Medical Centre	1
county	18	Medical Clinic	66
county	18	Other Hospital	2
county	18	Sub District Hospital	1
county	19	Dental Clinic	7
county	19	Dispensary	129
county	19	District Hospital	2
county	19	Eye Centre	4
county	19	Health Centre	24
county	19	Stand Alone Labs 	9
county	19	Maternity Home	3
county	19	Medical Clinic	248
county	19	Nursing Home	3
county	19	Other Hospital	5
county	19	Provincial General Hospital	1
county	19	Radiology Unit	3
county	19	Sub District Hospital	2
county	19	Stand Alone VCT Centre	2
county	25	Dispensary	73
county	25	District Hospital	1
county	25	Health Centre	5
county	25	Medical Clinic	15
county	25	Other Hospital	1
county	25	SubDistrict Hospital	1
county	41	Dispensary	99
county	41	District Hospital	2
county	41	Health Centre	39
county	41	Maternity Home	1
county	41	Medical Clinic	17
county	41	Nursing Home	1
county	41	Other Hospital	6
county	41	Sub District Hospital	4
county	41	Stand Alone VCT Centre	5
county	6	Dispensary	47
county	6	District Hospital	3
county	6	Health Centre	17
county	6	Medical Clinic	19
county	6	Nursing Home	1
county	6	Other Hospital	2
county	6	Sub District Hospital	2
county	4	Dispensary	49
county	4	District Hospital	2
county	4	Health Centre	5
county	4	Maternity Home	1
county	4	Medical Clinic	8
county	13	Dispensary	70
county	13	District Hospital	3
county	13	Health Centre	13
county	13	Medical Centre	1
county	13	Medical Clinic	35
county	13	Other Hospital	4
county	13	Sub District Hospital	1
county	13	Stand Alone VCT Centre	1
county	26	Dental Clinic	4
county	26	Dispensary	56
county	26	District Hospital	3
county	26	Eye Clinic	1
county	26	Health Centre	9
county	26	Health Programme	1
county	26	Laboratory (Stand-alone)	1
county	26	Medical Clinic	62
county	26	Unlisted	3
county	26	Nursing Home	2
county	26	Other Hospital	5
county	26	Radiology Unit	1
county	26	Sub District Hospital	1
county	26	Stand Alone VCT Centre	2
county	23	Dispensary	111
county	23	District Hospital	3
county	23	Health Centre	17
county	23	Health Programme	2
county	23	Medical Clinic	25
county	23	Other Hospital	2
county	23	Sub District Hospital	2
county	23	Health Training Institution	1
county	23	Stand Alone VCT Centre	1
county	27	Blood Bank	1
county	27	Dispensary	102
county	27	District Hospital	2
county	27	Health Centre	26
county	27	Maternity Home	1
county	27	Medical Clinic	42
county	27	National Referral Hospital	1
county	27	Nursing Home	1
county	27	Other Hospital	9
county	27	Sub District Hospital	1
county	27	Stand Alone VCT Centre 	2
county	38	Dispensary	29
county	38	District Hospital	1
county	38	Eye Centre	1
county	38	Health Centre	21
county	38	Medical Centre	2
county	38	Medical Clinic	30
county	38	Nursing Home	2
county	38	Other Hospital	2
county	38	Sub District Hospital	2
county	38	Stand Alone VCT Centre	3
county	8	Dispensary	72
county	8	District Hospital	4
county	8	Health Centre	27
county	8	Medical Centre	1
county	8	Medical Clinic	42
county	8	Nursing Home	4
county	8	Other Hospital	1
county	8	Sub District Hospital	6
county	24	Dispensary	97
county	24	District Hospital	2
county	24	Health Centre	7
county	24	Medical Clinic	15
county	24	Other Hospital	1
county	24	Sub District Hospital	2
\.


--
-- Data for Name: healthratios; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY healthratios (geo_level, geo_code, healthratios, total) FROM stdin;
county	27	doctor ratio	4000
county	19	doctor ratio	5000
county	1	doctor ratio	7000
county	14	doctor ratio	13000
county	42	doctor ratio	15000
county	22	doctor ratio	15000
county	35	doctor ratio	15000
county	21	doctor ratio	17000
county	13	doctor ratio	21000
county	31	doctor ratio	21000
county	18	doctor ratio	22000
county	47	doctor ratio	23000
county	44	doctor ratio	24000
county	25	doctor ratio	25000
county	15	doctor ratio	26000
county	16	doctor ratio	27000
county	20	doctor ratio	29000
county	40	doctor ratio	31000
county	32	doctor ratio	32000
county	10	doctor ratio	32000
county	17	doctor ratio	37000
county	12	doctor ratio	38000
county	33	doctor ratio	41000
county	41	doctor ratio	44000
county	43	doctor ratio	44000
county	39	doctor ratio	45000
county	2	doctor ratio	46000
county	4	doctor ratio	48000
county	3	doctor ratio	48000
county	7	doctor ratio	52000
county	28	doctor ratio	62000
county	37	doctor ratio	69000
county	6	doctor ratio	71000
county	24	doctor ratio	73000
county	34	doctor ratio	76000
county	29	doctor ratio	94000
county	46	doctor ratio	100000
county	36	doctor ratio	103000
county	8	doctor ratio	132000
county	11	doctor ratio	143000
county	38	doctor ratio	185000
county	9	doctor ratio	256000
county	26	doctor ratio	273000
county	30	doctor ratio	278000
county	23	doctor ratio	285000
county	45	doctor ratio	378000
county	5	doctor ratio	0
country	KE	doctor ratio	25000
county	19	nurse ratio	654
county	27	nurse ratio	706
county	25	nurse ratio	1037
county	14	nurse ratio	1060
county	20	nurse ratio	1100
county	18	nurse ratio	1117
county	40	nurse ratio	1148
county	1	nurse ratio	1381
county	42	nurse ratio	1433
county	31	nurse ratio	1446
county	22	nurse ratio	1466
county	44	nurse ratio	1478
county	12	nurse ratio	1609
county	21	nurse ratio	1609
county	16	nurse ratio	1688
county	15	nurse ratio	1770
county	13	nurse ratio	1773
county	41	nurse ratio	1815
county	35	nurse ratio	1832
county	43	nurse ratio	1949
county	10	nurse ratio	1967
county	17	nurse ratio	1970
county	24	nurse ratio	1979
county	32	nurse ratio	2146
county	7	nurse ratio	2316
county	28	nurse ratio	2434
county	46	nurse ratio	2493
county	6	nurse ratio	2612
county	3	nurse ratio	2655
county	47	nurse ratio	2797
county	2	nurse ratio	3080
county	11	nurse ratio	3115
county	37	nurse ratio	3122
county	33	nurse ratio	3128
county	29	nurse ratio	3137
county	39	nurse ratio	3315
county	38	nurse ratio	3990
county	30	nurse ratio	4115
county	8	nurse ratio	4163
county	36	nurse ratio	4210
county	4	nurse ratio	5108
county	45	nurse ratio	5703
county	26	nurse ratio	6110
county	34	nurse ratio	7723
county	9	nurse ratio	14051
county	23	nurse ratio	14748
county	5	nurse ratio	0
country	KE	nurse ratio	3049
\.


--
-- Data for Name: heightforage; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY heightforage (geo_level, geo_code, "height for age", total) FROM stdin;
county	1	below -3	7.09999999999999964
county	1	below -2	21.1000000000000014
county	1	mean Z-score	-1
county	2	below -3	10.5
county	2	below -2	29.6999999999999993
county	2	mean Z-score	-1.39999999999999991
county	3	below -3	13.5999999999999996
county	3	below -2	39.1000000000000014
county	3	mean Z-score	-1.5
county	4	below -3	9.40000000000000036
county	4	below -2	28.1000000000000014
county	4	mean Z-score	-1.39999999999999991
county	5	below -3	7.09999999999999964
county	5	below -2	29.1999999999999993
county	5	mean Z-score	-1.19999999999999996
county	6	below -3	5.79999999999999982
county	6	below -2	23.8000000000000007
county	6	mean Z-score	-0.900000000000000022
county	7	below -3	5.90000000000000036
county	7	below -2	15.5999999999999996
county	7	mean Z-score	-0.699999999999999956
county	8	below -3	10.3000000000000007
county	8	below -2	26.3999999999999986
county	8	mean Z-score	-1
county	9	below -3	19
county	9	below -2	36.1000000000000014
county	9	mean Z-score	-1.30000000000000004
county	10	below -3	10.6999999999999993
county	10	below -2	26.5
county	10	mean Z-score	-1.19999999999999996
county	11	below -3	5.09999999999999964
county	11	below -2	19.1000000000000014
county	11	mean Z-score	-0.699999999999999956
county	12	below -3	6.20000000000000018
county	12	below -2	25.1999999999999993
county	12	mean Z-score	-1.10000000000000009
county	13	below -3	7.59999999999999964
county	13	below -2	32.8999999999999986
county	13	mean Z-score	-1.39999999999999991
county	14	below -3	6.5
county	14	below -2	26.8000000000000007
county	14	mean Z-score	-1.30000000000000004
county	15	below -3	12.6999999999999993
county	15	below -2	45.7999999999999972
county	15	mean Z-score	-1.69999999999999996
county	16	below -3	7.09999999999999964
county	16	below -2	26.5
county	16	mean Z-score	-1.10000000000000009
county	17	below -3	7.79999999999999982
county	17	below -2	25.1000000000000014
county	17	mean Z-score	-1.30000000000000004
county	18	below -3	8.09999999999999964
county	18	below -2	29.3999999999999986
county	18	mean Z-score	-1.30000000000000004
county	19	below -3	5.59999999999999964
county	19	below -2	15.0999999999999996
county	19	mean Z-score	-0.900000000000000022
county	20	below -3	3.70000000000000018
county	20	below -2	17.1999999999999993
county	20	mean Z-score	-0.900000000000000022
county	21	below -3	4.79999999999999982
county	21	below -2	19.3000000000000007
county	21	mean Z-score	-1
county	22	below -3	3.79999999999999982
county	22	below -2	15.6999999999999993
county	22	mean Z-score	-0.699999999999999956
county	23	below -3	7.09999999999999964
county	23	below -2	23.8999999999999986
county	23	mean Z-score	-1.10000000000000009
county	24	below -3	19
county	24	below -2	45.8999999999999986
county	24	mean Z-score	-1.80000000000000004
county	25	below -3	9.80000000000000071
county	25	below -2	30.1000000000000014
county	25	mean Z-score	-1.30000000000000004
county	26	below -3	10.6999999999999993
county	26	below -2	29.1999999999999993
county	26	mean Z-score	-1.30000000000000004
county	27	below -3	11.0999999999999996
county	27	below -2	31.1999999999999993
county	27	mean Z-score	-1.30000000000000004
county	28	below -3	7.29999999999999982
county	28	below -2	29.8999999999999986
county	28	mean Z-score	-1.39999999999999991
county	29	below -3	8.30000000000000071
county	29	below -2	29.8999999999999986
county	29	mean Z-score	-1.30000000000000004
county	30	below -3	8.40000000000000036
county	30	below -2	29.5
county	30	mean Z-score	-1.39999999999999991
county	31	below -3	7.40000000000000036
county	31	below -2	26.8999999999999986
county	31	mean Z-score	-1.30000000000000004
county	32	below -3	7.20000000000000018
county	32	below -2	27.6000000000000014
county	32	mean Z-score	-1.19999999999999996
county	33	below -3	8.69999999999999929
county	33	below -2	32.8999999999999986
county	33	mean Z-score	-1.39999999999999991
county	34	below -3	7.09999999999999964
county	34	below -2	18.1999999999999993
county	34	mean Z-score	-0.699999999999999956
county	35	below -3	10.5
county	35	below -2	28.6999999999999993
county	35	mean Z-score	-1.30000000000000004
county	36	below -3	10.6999999999999993
county	36	below -2	35.5
county	36	mean Z-score	-1.60000000000000009
county	37	below -3	12.3000000000000007
county	37	below -2	28.3999999999999986
county	37	mean Z-score	-1.30000000000000004
county	38	below -3	6
county	38	below -2	23.5
county	38	mean Z-score	-1.10000000000000009
county	39	below -3	6.40000000000000036
county	39	below -2	24.3999999999999986
county	39	mean Z-score	-1.10000000000000009
county	40	below -3	5.40000000000000036
county	40	below -2	22
county	40	mean Z-score	-1.10000000000000009
county	41	below -3	7.09999999999999964
county	41	below -2	24.6999999999999993
county	41	mean Z-score	-1.10000000000000009
county	42	below -3	6.90000000000000036
county	42	below -2	18
county	42	mean Z-score	-0.699999999999999956
county	43	below -3	4.20000000000000018
county	43	below -2	18.6999999999999993
county	43	mean Z-score	-0.699999999999999956
county	44	below -3	10.0999999999999996
county	44	below -2	26.3999999999999986
county	44	mean Z-score	-1.10000000000000009
county	45	below -3	9.30000000000000071
county	45	below -2	25.5
county	45	mean Z-score	-1.30000000000000004
county	46	below -3	10.0999999999999996
county	46	below -2	25.5
county	46	mean Z-score	-1.10000000000000009
county	47	below -3	3.89999999999999991
county	47	below -2	17.1999999999999993
county	47	mean Z-score	-0.699999999999999956
country	KE	below -3	8.09999999999999964
country	KE	below -2	26
country	KE	mean Z-score	-1.10000000000000009
\.


--
-- Data for Name: highesteducationlevelreached; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY highesteducationlevelreached (geo_level, geo_code, "highest education level reached", total) FROM stdin;
county	22	basic literacy	4525
county	22	madrassa	344
county	22	none	97649
county	22	pre-primary	95423
county	22	primary	740539
county	22	secondary	437294
county	22	tertiary	112740
county	22	university	45680
county	22	youth polytechnic	8262
county	28	basic literacy	419
county	28	madrassa	17
county	28	none	43642
county	28	pre-primary	26192
county	28	primary	201577
county	28	secondary	49082
county	28	tertiary	8409
county	28	university	2197
county	28	youth polytechnic	1505
county	30	basic literacy	551
county	30	madrassa	52
county	30	none	140043
county	30	pre-primary	38957
county	30	primary	237325
county	30	secondary	63547
county	30	tertiary	14654
county	30	university	3896
county	30	youth polytechnic	1233
county	34	basic literacy	1205
county	34	madrassa	504
county	34	none	144098
county	34	pre-primary	45718
county	34	primary	253654
county	34	secondary	116920
county	34	tertiary	31561
county	34	university	19186
county	34	youth polytechnic	2772
county	35	basic literacy	647
county	35	madrassa	80
county	35	none	52661
county	35	pre-primary	38252
county	35	primary	322587
county	35	secondary	92317
county	35	tertiary	17826
county	35	university	5298
county	35	youth polytechnic	2104
county	36	basic literacy	1015
county	36	madrassa	79
county	36	none	87597
county	36	pre-primary	54658
county	36	primary	503574
county	36	secondary	126073
county	36	tertiary	20942
county	36	university	5388
county	36	youth polytechnic	2921
county	37	basic literacy	1599
county	37	madrassa	230
county	37	none	211448
county	37	pre-primary	108891
county	37	primary	883557
county	37	secondary	224519
county	37	tertiary	32942
county	7	basic literacy	423
county	7	madrassa	39662
county	7	none	379051
county	7	pre-primary	8775
county	7	primary	112347
county	7	secondary	24421
county	7	tertiary	3095
county	7	university	2461
county	11	basic literacy	125
county	11	madrassa	1076
county	11	none	54105
county	11	pre-primary	9751
county	11	primary	45724
county	11	secondary	13589
county	11	tertiary	2672
county	11	university	931
county	11	youth polytechnic	346
county	14	basic literacy	1542
county	14	madrassa	49
county	14	none	56517
county	14	pre-primary	18718
county	14	primary	281293
county	14	secondary	90932
county	14	tertiary	17140
county	14	university	5031
county	14	youth polytechnic	3784
county	15	basic literacy	2185
county	15	madrassa	234
county	15	none	168726
county	15	pre-primary	57502
county	15	primary	555091
county	15	secondary	94245
county	15	tertiary	17251
county	20	basic literacy	1627
county	20	madrassa	118
county	20	none	45033
county	20	pre-primary	21983
county	20	primary	288571
county	20	secondary	112656
county	20	tertiary	15505
county	20	university	4706
county	40	basic literacy	640
county	40	madrassa	120
county	40	none	105650
county	40	pre-primary	51408
county	40	primary	400807
county	40	secondary	85031
county	40	tertiary	11784
county	40	university	3753
county	40	youth polytechnic	1661
county	37	university	13329
county	37	youth polytechnic	3156
county	39	basic literacy	1333
county	39	madrassa	114
county	39	none	143688
county	39	pre-primary	86555
county	39	primary	731968
county	39	secondary	217310
county	39	tertiary	30024
county	39	university	9351
county	39	youth polytechnic	2641
county	42	basic literacy	1491
county	42	madrassa	164
county	42	none	75700
county	42	pre-primary	83062
county	42	primary	481966
county	42	secondary	167723
county	42	tertiary	32808
county	42	university	16264
county	42	youth polytechnic	3004
county	43	basic literacy	774
county	43	madrassa	42
county	43	none	87603
county	43	pre-primary	91107
county	43	primary	527361
county	43	secondary	125211
county	43	tertiary	16259
county	43	university	5845
county	43	youth polytechnic	1704
county	45	basic literacy	1179
county	45	madrassa	65
county	45	none	118497
county	45	pre-primary	86681
county	45	primary	610717
county	45	secondary	270662
county	45	tertiary	30346
county	45	university	10923
county	45	youth polytechnic	4269
county	21	basic literacy	3154
county	21	madrassa	82
county	21	none	80762
county	21	pre-primary	33452
county	21	primary	504390
county	21	secondary	172117
county	21	tertiary	24308
county	21	university	6684
county	21	youth polytechnic	3557
county	29	basic literacy	814
county	29	madrassa	93
county	29	none	70364
county	29	pre-primary	61589
county	29	primary	419103
county	29	secondary	100002
county	29	tertiary	18298
county	29	university	6194
county	29	youth polytechnic	2010
county	31	basic literacy	861
county	31	madrassa	66
county	31	none	61541
county	31	pre-primary	27328
county	31	primary	186821
county	31	secondary	69127
county	31	tertiary	11054
county	31	university	3948
county	31	youth polytechnic	1283
county	32	basic literacy	2828
county	32	madrassa	256
county	32	none	139539
county	32	pre-primary	116217
county	32	primary	780918
county	32	secondary	320381
county	32	tertiary	61662
county	32	university	23976
county	32	youth polytechnic	3844
county	33	basic literacy	572
county	33	madrassa	84
county	33	none	231573
county	33	pre-primary	55205
county	33	primary	376147
county	33	secondary	66146
county	33	tertiary	10601
county	33	university	3052
county	33	youth polytechnic	1070
county	44	basic literacy	708
county	44	madrassa	247
county	44	none	90415
county	44	pre-primary	81616
county	44	primary	508578
county	44	secondary	102617
county	44	tertiary	14584
county	44	university	5458
county	44	youth polytechnic	1524
county	46	basic literacy	455
county	46	madrassa	13
county	46	none	41178
county	46	pre-primary	33258
county	46	primary	233911
county	46	secondary	113806
county	46	tertiary	12102
county	46	university	3656
county	46	youth polytechnic	1483
county	47	basic literacy	8300
county	47	madrassa	9065
county	47	none	162504
county	47	pre-primary	162520
county	47	primary	1074033
county	47	secondary	944148
county	47	tertiary	287649
county	47	university	192337
county	47	youth polytechnic	21803
county	2	basic literacy	844
county	2	madrassa	2446
county	2	none	168879
county	2	pre-primary	53274
county	2	primary	290116
county	2	secondary	49182
county	2	tertiary	8370
county	2	university	1992
county	2	youth polytechnic	1503
county	5	basic literacy	152
county	5	madrassa	3004
county	5	none	19460
county	5	pre-primary	7812
county	5	primary	48223
county	5	secondary	10587
county	5	tertiary	1480
county	5	university	415
county	5	youth polytechnic	131
county	9	basic literacy	480
county	9	madrassa	98975
county	9	none	560334
county	9	pre-primary	10411
county	9	primary	235580
county	9	secondary	40413
county	9	tertiary	2519
county	9	university	1424
county	9	youth polytechnic	202
county	10	basic literacy	468
county	10	madrassa	3119
county	10	none	163550
county	10	pre-primary	12989
county	10	primary	67450
county	10	secondary	12665
county	10	tertiary	2135
county	10	university	956
county	10	youth polytechnic	308
county	12	basic literacy	4144
county	12	madrassa	225
county	12	none	226905
county	12	pre-primary	71376
county	12	primary	881763
county	12	secondary	209839
county	12	tertiary	39147
county	12	university	11930
county	15	university	4469
county	15	youth polytechnic	12216
county	16	basic literacy	4649
county	16	madrassa	317
county	16	none	99498
county	16	pre-primary	51475
county	16	primary	578689
county	16	secondary	203414
county	16	tertiary	37277
county	16	university	12437
county	16	youth polytechnic	18698
county	17	basic literacy	2637
county	17	madrassa	187
county	17	none	99661
county	17	pre-primary	39584
county	17	primary	496042
county	17	secondary	131811
county	17	tertiary	19235
county	17	university	4683
county	18	basic literacy	1658
county	18	madrassa	50
county	18	none	47332
county	18	pre-primary	40067
county	18	primary	336716
county	18	secondary	104653
county	18	tertiary	12800
county	18	university	3610
county	18	youth polytechnic	1360
county	19	basic literacy	2531
county	19	madrassa	118
county	19	none	42333
county	19	pre-primary	36274
county	23	basic literacy	840
county	23	madrassa	424
county	23	none	614643
county	23	pre-primary	24486
county	23	primary	121093
county	23	secondary	22393
county	23	tertiary	3776
county	23	university	1489
county	23	youth polytechnic	351
county	24	basic literacy	153
county	24	madrassa	23
county	24	none	219742
county	24	pre-primary	33514
county	24	primary	172096
county	24	secondary	22097
county	24	tertiary	4564
county	24	university	1407
county	24	youth polytechnic	582
county	26	basic literacy	774
county	26	madrassa	110
county	26	none	98644
county	26	pre-primary	55557
county	26	primary	425993
county	26	secondary	126449
county	26	tertiary	16326
county	26	university	6412
county	26	youth polytechnic	1173
county	27	basic literacy	1428
county	27	madrassa	182
county	27	none	78641
county	27	pre-primary	63490
county	27	primary	422770
county	27	secondary	174412
county	27	tertiary	36479
county	27	university	26454
county	27	youth polytechnic	2778
county	38	basic literacy	1328
county	38	madrassa	60
county	38	none	58485
county	38	pre-primary	32971
county	38	primary	309369
county	38	secondary	82617
county	38	tertiary	11985
county	38	university	3907
county	38	youth polytechnic	1481
county	41	basic literacy	948
county	41	madrassa	90
county	41	none	102506
county	41	pre-primary	59001
county	41	primary	471530
county	1	basic literacy	2705
county	1	madrassa	4431
county	1	none	84459
county	1	pre-primary	59153
county	1	primary	384904
county	1	secondary	226497
county	1	tertiary	56992
county	1	university	20239
county	1	youth polytechnic	6844
county	3	basic literacy	1638
county	3	madrassa	1606
county	3	none	249459
county	3	pre-primary	106855
county	3	primary	505502
county	3	secondary	96901
county	3	tertiary	17830
county	3	university	5475
county	3	youth polytechnic	2978
county	4	basic literacy	316
county	4	madrassa	4046
county	4	none	98600
county	4	pre-primary	16129
county	4	primary	77008
county	4	secondary	11941
county	4	tertiary	1773
county	4	university	336
county	4	youth polytechnic	261
county	6	basic literacy	1004
county	6	madrassa	293
county	6	none	30876
county	6	pre-primary	16611
county	6	primary	151123
county	6	secondary	40858
county	6	tertiary	8478
county	6	university	1776
county	6	youth polytechnic	3917
county	7	youth polytechnic	238
county	8	basic literacy	213
county	8	madrassa	62342
county	8	none	399405
county	8	pre-primary	6177
county	8	primary	118167
county	8	secondary	20917
county	8	tertiary	2174
county	8	university	1311
county	8	youth polytechnic	164
county	12	youth polytechnic	10256
county	13	basic literacy	145
county	13	madrassa	7
county	13	none	21263
county	13	pre-primary	6519
county	13	primary	74126
county	13	secondary	11148
county	13	tertiary	2290
county	13	university	522
county	13	youth polytechnic	1482
county	17	youth polytechnic	11600
county	19	primary	345189
county	19	secondary	175626
county	19	tertiary	28956
county	19	university	9881
county	19	youth polytechnic	3896
county	20	youth polytechnic	1691
county	25	basic literacy	303
county	25	madrassa	10
county	25	none	117716
county	25	pre-primary	16489
county	25	primary	50422
county	25	secondary	9428
county	25	tertiary	2270
county	25	university	666
county	25	youth polytechnic	291
county	41	secondary	100596
county	41	tertiary	12358
county	41	university	4967
county	41	youth polytechnic	1367
country	KE	basic literacy	136660
country	KE	madrassa	469842
country	KE	none	12983950
country	KE	pre-primary	4630064
country	KE	primary	35652860
country	KE	secondary	12168640
country	KE	tertiary	2370860
country	KE	university	1052604
country	KE	youth polytechnic	323408
\.


--
-- Data for Name: household_itn_use_users; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY household_itn_use_users (geo_level, geo_code, household, users, itn_use, total) FROM stdin;
county	1	all	children	slept under any net last night	67.2000000000000028
county	1	all	children	used ITN last night	61.5
county	1	all	children	used ITN all  year 	61.5
county	1	with at least one ITN	children	used ITN last night	85.9000000000000057
county	1	all	pregnant women	slept under any net last night	66.7000000000000028
county	1	all	pregnant women	used ITN last night	55
county	1	all	pregnant women	used ITN all  year 	55
county	1	with at least one ITN	pregnant women	used ITN last night	0
county	2	all	children	slept under any net last night	74.5999999999999943
county	2	all	children	used ITN last night	72.4000000000000057
county	2	all	children	used ITN all  year 	72.4000000000000057
county	2	with at least one ITN	children	used ITN last night	83.4000000000000057
county	2	all	pregnant women	slept under any net last night	86.5999999999999943
county	2	all	pregnant women	used ITN last night	84.7000000000000028
county	2	all	pregnant women	used ITN all  year 	84.7000000000000028
county	2	with at least one ITN	pregnant women	used ITN last night	96.2999999999999972
county	3	all	children	slept under any net last night	70.9000000000000057
county	3	all	children	used ITN last night	63.6000000000000014
county	3	all	children	used ITN all  year 	63.6000000000000014
county	3	with at least one ITN	children	used ITN last night	79.0999999999999943
county	3	all	pregnant women	slept under any net last night	68.7000000000000028
county	3	all	pregnant women	used ITN last night	58
county	3	all	pregnant women	used ITN all  year 	58
county	3	with at least one ITN	pregnant women	used ITN last night	87.0999999999999943
county	4	all	children	slept under any net last night	60.1000000000000014
county	4	all	children	used ITN last night	57.3999999999999986
county	4	all	children	used ITN all  year 	57.6000000000000014
county	4	with at least one ITN	children	used ITN last night	78.2999999999999972
county	4	all	pregnant women	slept under any net last night	53.6000000000000014
county	4	all	pregnant women	used ITN last night	47.6000000000000014
county	4	all	pregnant women	used ITN all  year 	47.6000000000000014
county	4	with at least one ITN	pregnant women	used ITN last night	63.6000000000000014
county	5	all	children	slept under any net last night	68.7999999999999972
county	5	all	children	used ITN last night	57.7000000000000028
county	5	all	children	used ITN all  year 	57.7000000000000028
county	5	with at least one ITN	children	used ITN last night	81
county	5	all	pregnant women	slept under any net last night	73.5999999999999943
county	5	all	pregnant women	used ITN last night	64
county	5	all	pregnant women	used ITN all  year 	64
county	5	with at least one ITN	pregnant women	used ITN last night	0
county	6	all	children	slept under any net last night	83.2000000000000028
county	6	all	children	used ITN last night	82
county	6	all	children	used ITN all  year 	82
county	6	with at least one ITN	children	used ITN last night	88.7999999999999972
county	6	all	pregnant women	slept under any net last night	0
county	6	all	pregnant women	used ITN last night	0
county	6	all	pregnant women	used ITN all  year 	0
county	6	with at least one ITN	pregnant women	used ITN last night	0
county	7	all	children	slept under any net last night	52.5
county	7	all	children	used ITN last night	47.6000000000000014
county	7	all	children	used ITN all  year 	47.8999999999999986
county	7	with at least one ITN	children	used ITN last night	77.2000000000000028
county	7	all	pregnant women	slept under any net last night	51.7000000000000028
county	7	all	pregnant women	used ITN last night	51.7000000000000028
county	7	all	pregnant women	used ITN all  year 	52.6000000000000014
county	7	with at least one ITN	pregnant women	used ITN last night	79.7000000000000028
county	8	all	children	slept under any net last night	46.1000000000000014
county	8	all	children	used ITN last night	42.7999999999999972
county	8	all	children	used ITN all  year 	42.7999999999999972
county	8	with at least one ITN	children	used ITN last night	76.0999999999999943
county	8	all	pregnant women	slept under any net last night	49.7999999999999972
county	8	all	pregnant women	used ITN last night	49.3999999999999986
county	8	all	pregnant women	used ITN all  year 	49.3999999999999986
county	8	with at least one ITN	pregnant women	used ITN last night	88.0999999999999943
county	9	all	children	slept under any net last night	27.5
county	9	all	children	used ITN last night	25.5
county	9	all	children	used ITN all  year 	25.5
county	9	with at least one ITN	children	used ITN last night	84.0999999999999943
county	9	all	pregnant women	slept under any net last night	20.6000000000000014
county	9	all	pregnant women	used ITN last night	19.8999999999999986
county	9	all	pregnant women	used ITN all  year 	19.8999999999999986
county	9	with at least one ITN	pregnant women	used ITN last night	0
county	10	all	children	slept under any net last night	15
county	10	all	children	used ITN last night	12.0999999999999996
county	10	all	children	used ITN all  year 	12.0999999999999996
county	10	with at least one ITN	children	used ITN last night	43.7000000000000028
county	10	all	pregnant women	slept under any net last night	7.90000000000000036
county	10	all	pregnant women	used ITN last night	7.90000000000000036
county	10	all	pregnant women	used ITN all  year 	7.90000000000000036
county	10	with at least one ITN	pregnant women	used ITN last night	0
county	11	all	children	slept under any net last night	60.6000000000000014
county	11	all	children	used ITN last night	57.7000000000000028
county	11	all	children	used ITN all  year 	57.7000000000000028
county	11	with at least one ITN	children	used ITN last night	80.9000000000000057
county	11	all	pregnant women	slept under any net last night	62.8999999999999986
county	11	all	pregnant women	used ITN last night	56.3999999999999986
county	11	all	pregnant women	used ITN all  year 	56.3999999999999986
county	11	with at least one ITN	pregnant women	used ITN last night	83.9000000000000057
county	12	all	children	slept under any net last night	64.2999999999999972
county	12	all	children	used ITN last night	59.2999999999999972
county	12	all	children	used ITN all  year 	60
county	12	with at least one ITN	children	used ITN last night	81.7999999999999972
county	12	all	pregnant women	slept under any net last night	54.3999999999999986
county	12	all	pregnant women	used ITN last night	49
county	12	all	pregnant women	used ITN all  year 	49
county	12	with at least one ITN	pregnant women	used ITN last night	0
county	13	all	children	slept under any net last night	65.4000000000000057
county	13	all	children	used ITN last night	61.8999999999999986
county	13	all	children	used ITN all  year 	61.8999999999999986
county	13	with at least one ITN	children	used ITN last night	77.7999999999999972
county	13	all	pregnant women	slept under any net last night	0
county	13	all	pregnant women	used ITN last night	0
county	13	all	pregnant women	used ITN all  year 	0
county	13	with at least one ITN	pregnant women	used ITN last night	0
county	14	all	children	slept under any net last night	63
county	14	all	children	used ITN last night	58.5
county	14	all	children	used ITN all  year 	58.5
county	14	with at least one ITN	children	used ITN last night	72.2999999999999972
county	14	all	pregnant women	slept under any net last night	0
county	14	all	pregnant women	used ITN last night	0
county	14	all	pregnant women	used ITN all  year 	0
county	14	with at least one ITN	pregnant women	used ITN last night	0
county	15	all	children	slept under any net last night	39.7999999999999972
county	15	all	children	used ITN last night	39.6000000000000014
county	15	all	children	used ITN all  year 	39.6000000000000014
county	15	with at least one ITN	children	used ITN last night	54.2000000000000028
county	15	all	pregnant women	slept under any net last night	47
county	15	all	pregnant women	used ITN last night	47
county	15	all	pregnant women	used ITN all  year 	47
county	15	with at least one ITN	pregnant women	used ITN last night	0
county	16	all	children	slept under any net last night	65
county	16	all	children	used ITN last night	62.8999999999999986
county	16	all	children	used ITN all  year 	62.8999999999999986
county	16	with at least one ITN	children	used ITN last night	85
county	16	all	pregnant women	slept under any net last night	0
county	16	all	pregnant women	used ITN last night	0
county	16	all	pregnant women	used ITN all  year 	0
county	16	with at least one ITN	pregnant women	used ITN last night	0
county	17	all	children	slept under any net last night	52.5
county	17	all	children	used ITN last night	50.7999999999999972
county	17	all	children	used ITN all  year 	50.7999999999999972
county	17	with at least one ITN	children	used ITN last night	70.9000000000000057
county	17	all	pregnant women	slept under any net last night	49.7000000000000028
county	17	all	pregnant women	used ITN last night	48
county	17	all	pregnant women	used ITN all  year 	48
county	17	with at least one ITN	pregnant women	used ITN last night	0
county	18	all	children	slept under any net last night	14.8000000000000007
county	18	all	children	used ITN last night	12.3000000000000007
county	18	all	children	used ITN all  year 	12.3000000000000007
county	18	with at least one ITN	children	used ITN last night	69.7000000000000028
county	18	all	pregnant women	slept under any net last night	9.69999999999999929
county	18	all	pregnant women	used ITN last night	6.70000000000000018
county	18	all	pregnant women	used ITN all  year 	6.70000000000000018
county	18	with at least one ITN	pregnant women	used ITN last night	0
county	19	all	children	slept under any net last night	24.1000000000000014
county	19	all	children	used ITN last night	17.3999999999999986
county	19	all	children	used ITN all  year 	17.3999999999999986
county	19	with at least one ITN	children	used ITN last night	62.6000000000000014
county	19	all	pregnant women	slept under any net last night	23
county	19	all	pregnant women	used ITN last night	14.3000000000000007
county	19	all	pregnant women	used ITN all  year 	14.3000000000000007
county	19	with at least one ITN	pregnant women	used ITN last night	0
county	20	all	children	slept under any net last night	81.0999999999999943
county	20	all	children	used ITN last night	78.9000000000000057
county	20	all	children	used ITN all  year 	78.9000000000000057
county	20	with at least one ITN	children	used ITN last night	89.5999999999999943
county	20	all	pregnant women	slept under any net last night	63.3999999999999986
county	20	all	pregnant women	used ITN last night	63.3999999999999986
county	20	all	pregnant women	used ITN all  year 	63.3999999999999986
county	20	with at least one ITN	pregnant women	used ITN last night	0
county	21	all	children	slept under any net last night	58
county	21	all	children	used ITN last night	57
county	21	all	children	used ITN all  year 	57
county	21	with at least one ITN	children	used ITN last night	81.2999999999999972
county	21	all	pregnant women	slept under any net last night	49.8999999999999986
county	21	all	pregnant women	used ITN last night	45.2000000000000028
county	21	all	pregnant women	used ITN all  year 	45.2000000000000028
county	21	with at least one ITN	pregnant women	used ITN last night	0
county	22	all	children	slept under any net last night	53.6000000000000014
county	22	all	children	used ITN last night	47.5
county	22	all	children	used ITN all  year 	47.5
county	22	with at least one ITN	children	used ITN last night	81.2999999999999972
county	22	all	pregnant women	slept under any net last night	44.5
county	22	all	pregnant women	used ITN last night	41.2000000000000028
county	22	all	pregnant women	used ITN all  year 	41.2000000000000028
county	22	with at least one ITN	pregnant women	used ITN last night	0
county	23	all	children	slept under any net last night	21
county	23	all	children	used ITN last night	21
county	23	all	children	used ITN all  year 	21
county	23	with at least one ITN	children	used ITN last night	40.7999999999999972
county	23	all	pregnant women	slept under any net last night	20.3000000000000007
county	23	all	pregnant women	used ITN last night	20.3000000000000007
county	23	all	pregnant women	used ITN all  year 	20.3000000000000007
county	23	with at least one ITN	pregnant women	used ITN last night	0
county	24	all	children	slept under any net last night	43.3999999999999986
county	24	all	children	used ITN last night	42.8999999999999986
county	24	all	children	used ITN all  year 	43.7000000000000028
county	24	with at least one ITN	children	used ITN last night	61.3999999999999986
county	24	all	pregnant women	slept under any net last night	31.5
county	24	all	pregnant women	used ITN last night	31.5
county	24	all	pregnant women	used ITN all  year 	33
county	24	with at least one ITN	pregnant women	used ITN last night	56.8999999999999986
county	25	all	children	slept under any net last night	18.1999999999999993
county	25	all	children	used ITN last night	16.6000000000000014
county	25	all	children	used ITN all  year 	16.8999999999999986
county	25	with at least one ITN	children	used ITN last night	86.0999999999999943
county	25	all	pregnant women	slept under any net last night	8.90000000000000036
county	25	all	pregnant women	used ITN last night	6.70000000000000018
county	25	all	pregnant women	used ITN all  year 	6.70000000000000018
county	25	with at least one ITN	pregnant women	used ITN last night	0
county	26	all	children	slept under any net last night	60.2000000000000028
county	26	all	children	used ITN last night	59.2000000000000028
county	26	all	children	used ITN all  year 	61.2999999999999972
county	26	with at least one ITN	children	used ITN last night	74.7999999999999972
county	26	all	pregnant women	slept under any net last night	55.7000000000000028
county	26	all	pregnant women	used ITN last night	55.7000000000000028
county	26	all	pregnant women	used ITN all  year 	55.7000000000000028
county	26	with at least one ITN	pregnant women	used ITN last night	67.7999999999999972
county	27	all	children	slept under any net last night	69.7999999999999972
county	27	all	children	used ITN last night	69.2999999999999972
county	27	all	children	used ITN all  year 	69.5
county	27	with at least one ITN	children	used ITN last night	84.0999999999999943
county	27	all	pregnant women	slept under any net last night	51.5
county	27	all	pregnant women	used ITN last night	51.5
county	27	all	pregnant women	used ITN all  year 	51.5
county	27	with at least one ITN	pregnant women	used ITN last night	63.1000000000000014
county	28	all	children	slept under any net last night	39.1000000000000014
county	28	all	children	used ITN last night	16.8999999999999986
county	28	all	children	used ITN all  year 	16.8999999999999986
county	28	with at least one ITN	children	used ITN last night	56.5
county	28	all	pregnant women	slept under any net last night	48
county	28	all	pregnant women	used ITN last night	25.5
county	28	all	pregnant women	used ITN all  year 	25.5
county	28	with at least one ITN	pregnant women	used ITN last night	0
county	29	all	children	slept under any net last night	55.2000000000000028
county	29	all	children	used ITN last night	55
county	29	all	children	used ITN all  year 	55.5
county	29	with at least one ITN	children	used ITN last night	67.0999999999999943
county	29	all	pregnant women	slept under any net last night	61.8999999999999986
county	29	all	pregnant women	used ITN last night	61.8999999999999986
county	29	all	pregnant women	used ITN all  year 	66.0999999999999943
county	29	with at least one ITN	pregnant women	used ITN last night	67.5999999999999943
county	30	all	children	slept under any net last night	52.5
county	30	all	children	used ITN last night	49.1000000000000014
county	30	all	children	used ITN all  year 	49.8999999999999986
county	30	with at least one ITN	children	used ITN last night	69.2000000000000028
county	30	all	pregnant women	slept under any net last night	45.2999999999999972
county	30	all	pregnant women	used ITN last night	44.1000000000000014
county	30	all	pregnant women	used ITN all  year 	45.8999999999999986
county	30	with at least one ITN	pregnant women	used ITN last night	58.7000000000000028
county	31	all	children	slept under any net last night	22.1999999999999993
county	31	all	children	used ITN last night	13.5999999999999996
county	31	all	children	used ITN all  year 	13.5999999999999996
county	31	with at least one ITN	children	used ITN last night	78.7000000000000028
county	31	all	pregnant women	slept under any net last night	11.4000000000000004
county	31	all	pregnant women	used ITN last night	6.5
county	31	all	pregnant women	used ITN all  year 	6.5
county	31	with at least one ITN	pregnant women	used ITN last night	0
county	32	all	children	slept under any net last night	34.1000000000000014
county	32	all	children	used ITN last night	30.6999999999999993
county	32	all	children	used ITN all  year 	31.1000000000000014
county	32	with at least one ITN	children	used ITN last night	74.5999999999999943
county	32	all	pregnant women	slept under any net last night	37.1000000000000014
county	32	all	pregnant women	used ITN last night	35
county	32	all	pregnant women	used ITN all  year 	35
county	32	with at least one ITN	pregnant women	used ITN last night	0
county	33	all	children	slept under any net last night	31.5
county	33	all	children	used ITN last night	31.1000000000000014
county	33	all	children	used ITN all  year 	32
county	33	with at least one ITN	children	used ITN last night	56.1000000000000014
county	33	all	pregnant women	slept under any net last night	32.1000000000000014
county	33	all	pregnant women	used ITN last night	32.1000000000000014
county	33	all	pregnant women	used ITN all  year 	34.2000000000000028
county	33	with at least one ITN	pregnant women	used ITN last night	63
county	34	all	children	slept under any net last night	47.7000000000000028
county	34	all	children	used ITN last night	42.7999999999999972
county	34	all	children	used ITN all  year 	43
county	34	with at least one ITN	children	used ITN last night	81.4000000000000057
county	34	all	pregnant women	slept under any net last night	47.3999999999999986
county	34	all	pregnant women	used ITN last night	45.1000000000000014
county	34	all	pregnant women	used ITN all  year 	45.1000000000000014
county	34	with at least one ITN	pregnant women	used ITN last night	72.5
county	35	all	children	slept under any net last night	55.7000000000000028
county	35	all	children	used ITN last night	53.1000000000000014
county	35	all	children	used ITN all  year 	54.2999999999999972
county	35	with at least one ITN	children	used ITN last night	61.3999999999999986
county	35	all	pregnant women	slept under any net last night	70.2000000000000028
county	35	all	pregnant women	used ITN last night	68
county	35	all	pregnant women	used ITN all  year 	68
county	35	with at least one ITN	pregnant women	used ITN last night	74.9000000000000057
county	36	all	children	slept under any net last night	63
county	36	all	children	used ITN last night	60
county	36	all	children	used ITN all  year 	60.7999999999999972
county	36	with at least one ITN	children	used ITN last night	69.7000000000000028
county	36	all	pregnant women	slept under any net last night	49
county	36	all	pregnant women	used ITN last night	47.7000000000000028
county	36	all	pregnant women	used ITN all  year 	47.7000000000000028
county	36	with at least one ITN	pregnant women	used ITN last night	60.1000000000000014
county	37	all	children	slept under any net last night	66
county	37	all	children	used ITN last night	62.6000000000000014
county	37	all	children	used ITN all  year 	62.8999999999999986
county	37	with at least one ITN	children	used ITN last night	73.0999999999999943
county	37	all	pregnant women	slept under any net last night	71.0999999999999943
county	37	all	pregnant women	used ITN last night	65.7000000000000028
county	37	all	pregnant women	used ITN all  year 	65.7000000000000028
county	37	with at least one ITN	pregnant women	used ITN last night	74.5999999999999943
county	38	all	children	slept under any net last night	72.5
county	38	all	children	used ITN last night	70.9000000000000057
county	38	all	children	used ITN all  year 	71.2999999999999972
county	38	with at least one ITN	children	used ITN last night	78.2999999999999972
county	38	all	pregnant women	slept under any net last night	73
county	38	all	pregnant women	used ITN last night	73
county	38	all	pregnant women	used ITN all  year 	73
county	38	with at least one ITN	pregnant women	used ITN last night	77.0999999999999943
county	39	all	children	slept under any net last night	73.7000000000000028
county	39	all	children	used ITN last night	71.5
county	39	all	children	used ITN all  year 	71.5
county	39	with at least one ITN	children	used ITN last night	82
county	39	all	pregnant women	slept under any net last night	66
county	39	all	pregnant women	used ITN last night	62.3999999999999986
county	39	all	pregnant women	used ITN all  year 	62.3999999999999986
county	39	with at least one ITN	pregnant women	used ITN last night	73.5999999999999943
county	40	all	children	slept under any net last night	78.4000000000000057
county	40	all	children	used ITN last night	73.9000000000000057
county	40	all	children	used ITN all  year 	73.9000000000000057
county	40	with at least one ITN	children	used ITN last night	83.5
county	40	all	pregnant women	slept under any net last night	76.9000000000000057
county	40	all	pregnant women	used ITN last night	73.5
county	40	all	pregnant women	used ITN all  year 	73.5
county	40	with at least one ITN	pregnant women	used ITN last night	81.2999999999999972
county	41	all	children	slept under any net last night	71.2999999999999972
county	41	all	children	used ITN last night	67.7999999999999972
county	41	all	children	used ITN all  year 	68.0999999999999943
county	41	with at least one ITN	children	used ITN last night	77.0999999999999943
county	41	all	pregnant women	slept under any net last night	70.0999999999999943
county	41	all	pregnant women	used ITN last night	66.2999999999999972
county	41	all	pregnant women	used ITN all  year 	66.2999999999999972
county	41	with at least one ITN	pregnant women	used ITN last night	85.2999999999999972
county	42	all	children	slept under any net last night	82.2000000000000028
county	42	all	children	used ITN last night	81.7000000000000028
county	42	all	children	used ITN all  year 	82.2000000000000028
county	42	with at least one ITN	children	used ITN last night	88.4000000000000057
county	42	all	pregnant women	slept under any net last night	89.2999999999999972
county	42	all	pregnant women	used ITN last night	89.2999999999999972
county	42	all	pregnant women	used ITN all  year 	89.2999999999999972
county	42	with at least one ITN	pregnant women	used ITN last night	94.9000000000000057
county	43	all	children	slept under any net last night	63.8999999999999986
county	43	all	children	used ITN last night	56.3999999999999986
county	43	all	children	used ITN all  year 	58.3999999999999986
county	43	with at least one ITN	children	used ITN last night	74.7999999999999972
county	43	all	pregnant women	slept under any net last night	77.0999999999999943
county	43	all	pregnant women	used ITN last night	66.0999999999999943
county	43	all	pregnant women	used ITN all  year 	66.0999999999999943
county	43	with at least one ITN	pregnant women	used ITN last night	87.5999999999999943
county	44	all	children	slept under any net last night	63
county	44	all	children	used ITN last night	62.2000000000000028
county	44	all	children	used ITN all  year 	62.6000000000000014
county	44	with at least one ITN	children	used ITN last night	74.4000000000000057
county	44	all	pregnant women	slept under any net last night	60.2999999999999972
county	44	all	pregnant women	used ITN last night	56
county	44	all	pregnant women	used ITN all  year 	56
county	44	with at least one ITN	pregnant women	used ITN last night	68.5999999999999943
county	45	all	children	slept under any net last night	80.4000000000000057
county	45	all	children	used ITN last night	79.5
county	45	all	children	used ITN all  year 	79.5
county	45	with at least one ITN	children	used ITN last night	88.5
county	45	all	pregnant women	slept under any net last night	82.0999999999999943
county	45	all	pregnant women	used ITN last night	76.7999999999999972
county	45	all	pregnant women	used ITN all  year 	76.7999999999999972
county	45	with at least one ITN	pregnant women	used ITN last night	97.5999999999999943
county	46	all	children	slept under any net last night	70.5
county	46	all	children	used ITN last night	69.5999999999999943
county	46	all	children	used ITN all  year 	69.9000000000000057
county	46	with at least one ITN	children	used ITN last night	79.7999999999999972
county	46	all	pregnant women	slept under any net last night	0
county	46	all	pregnant women	used ITN last night	0
county	46	all	pregnant women	used ITN all  year 	0
county	46	with at least one ITN	pregnant women	used ITN last night	0
county	47	all	children	slept under any net last night	70.7000000000000028
county	47	all	children	used ITN last night	49.5
county	47	all	children	used ITN all  year 	49.5
county	47	with at least one ITN	children	used ITN last night	85.7999999999999972
county	47	all	pregnant women	slept under any net last night	61
county	47	all	pregnant women	used ITN last night	43.2999999999999972
county	47	all	pregnant women	used ITN all  year 	45.7000000000000028
county	47	with at least one ITN	pregnant women	used ITN last night	78.7999999999999972
country	KE	all	children	slept under any net last night	58.8999999999999986
country	KE	all	children	used ITN last night	54.1000000000000014
country	KE	all	children	used ITN all  year 	54.3999999999999986
country	KE	with at least one ITN	children	used ITN last night	76.9000000000000057
country	KE	all	pregnant women	slept under any net last night	55.7999999999999972
country	KE	all	pregnant women	used ITN last night	50.5
country	KE	all	pregnant women	used ITN all  year 	51
country	KE	with at least one ITN	pregnant women	used ITN last night	76.5
\.


--
-- Data for Name: householdpossessionofitn; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY householdpossessionofitn (geo_level, geo_code, "household possession of itn", total) FROM stdin;
county	1	households with at least one ITN	56.8999999999999986
county	1	average ITN per household	0.900000000000000022
county	1	Percentage households with ITN for every 2 people in household	38.8999999999999986
county	2	households with at least one ITN	81
county	2	average ITN per household	1.69999999999999996
county	2	Percentage households with ITN for every 2 people in household	47.7999999999999972
county	3	households with at least one ITN	73.0999999999999943
county	3	average ITN per household	1.60000000000000009
county	3	Percentage households with ITN for every 2 people in household	41.5
county	4	households with at least one ITN	65.2999999999999972
county	4	average ITN per household	1.30000000000000004
county	4	Percentage households with ITN for every 2 people in household	33
county	5	households with at least one ITN	71.0999999999999943
county	5	average ITN per household	1.5
county	5	Percentage households with ITN for every 2 people in household	51.2000000000000028
county	6	households with at least one ITN	80.4000000000000057
county	6	average ITN per household	1.60000000000000009
county	6	Percentage households with ITN for every 2 people in household	60.6000000000000014
county	7	households with at least one ITN	61.1000000000000014
county	7	average ITN per household	1.39999999999999991
county	7	Percentage households with ITN for every 2 people in household	34.3999999999999986
county	8	households with at least one ITN	53.6000000000000014
county	8	average ITN per household	1.10000000000000009
county	8	Percentage households with ITN for every 2 people in household	18.1000000000000014
county	9	households with at least one ITN	28.6999999999999993
county	9	average ITN per household	0.5
county	9	Percentage households with ITN for every 2 people in household	10.9000000000000004
county	10	households with at least one ITN	24.6999999999999993
county	10	average ITN per household	0.299999999999999989
county	10	Percentage households with ITN for every 2 people in household	7
county	11	households with at least one ITN	62.7000000000000028
county	11	average ITN per household	1.10000000000000009
county	11	Percentage households with ITN for every 2 people in household	31.5
county	12	households with at least one ITN	53.5
county	12	average ITN per household	1
county	12	Percentage households with ITN for every 2 people in household	30.6000000000000014
county	13	households with at least one ITN	67.2000000000000028
county	13	average ITN per household	1.30000000000000004
county	13	Percentage households with ITN for every 2 people in household	45.7999999999999972
county	14	households with at least one ITN	55.8999999999999986
county	14	average ITN per household	1.10000000000000009
county	14	Percentage households with ITN for every 2 people in household	35.2999999999999972
county	15	households with at least one ITN	61.1000000000000014
county	15	average ITN per household	1.10000000000000009
county	15	Percentage households with ITN for every 2 people in household	29.3000000000000007
county	16	households with at least one ITN	56
county	16	average ITN per household	1.10000000000000009
county	16	Percentage households with ITN for every 2 people in household	31.5
county	17	households with at least one ITN	55.2999999999999972
county	17	average ITN per household	1.10000000000000009
county	17	Percentage households with ITN for every 2 people in household	27.6999999999999993
county	18	households with at least one ITN	12.5
county	18	average ITN per household	0.200000000000000011
county	18	Percentage households with ITN for every 2 people in household	7.09999999999999964
county	19	households with at least one ITN	19.6999999999999993
county	19	average ITN per household	0.299999999999999989
county	19	Percentage households with ITN for every 2 people in household	11.9000000000000004
county	20	households with at least one ITN	68.5
county	20	average ITN per household	1.39999999999999991
county	20	Percentage households with ITN for every 2 people in household	54.2999999999999972
county	21	households with at least one ITN	43.7000000000000028
county	21	average ITN per household	0.800000000000000044
county	21	Percentage households with ITN for every 2 people in household	27.1000000000000014
county	22	households with at least one ITN	39.8999999999999986
county	22	average ITN per household	0.699999999999999956
county	22	Percentage households with ITN for every 2 people in household	25.1999999999999993
county	23	households with at least one ITN	46.2000000000000028
county	23	average ITN per household	0.699999999999999956
county	23	Percentage households with ITN for every 2 people in household	16.3000000000000007
county	24	households with at least one ITN	60.2000000000000028
county	24	average ITN per household	1.10000000000000009
county	24	Percentage households with ITN for every 2 people in household	21.1999999999999993
county	25	households with at least one ITN	18.8000000000000007
county	25	average ITN per household	0.299999999999999989
county	25	Percentage households with ITN for every 2 people in household	8.69999999999999929
county	26	households with at least one ITN	70.5999999999999943
county	26	average ITN per household	1.5
county	26	Percentage households with ITN for every 2 people in household	38.3999999999999986
county	27	households with at least one ITN	72
county	27	average ITN per household	1.5
county	27	Percentage households with ITN for every 2 people in household	49.7000000000000028
county	28	households with at least one ITN	21.8999999999999986
county	28	average ITN per household	0.299999999999999989
county	28	Percentage households with ITN for every 2 people in household	10.0999999999999996
county	29	households with at least one ITN	78.7999999999999972
county	29	average ITN per household	1.60000000000000009
county	29	Percentage households with ITN for every 2 people in household	41.8999999999999986
county	30	households with at least one ITN	59.7999999999999972
county	30	average ITN per household	1.10000000000000009
county	30	Percentage households with ITN for every 2 people in household	32.7999999999999972
county	31	households with at least one ITN	17.5
county	31	average ITN per household	0.299999999999999989
county	31	Percentage households with ITN for every 2 people in household	10.5999999999999996
county	32	households with at least one ITN	37.7000000000000028
county	32	average ITN per household	0.599999999999999978
county	32	Percentage households with ITN for every 2 people in household	22.6999999999999993
county	33	households with at least one ITN	52.2000000000000028
county	33	average ITN per household	1
county	33	Percentage households with ITN for every 2 people in household	25.3999999999999986
county	34	households with at least one ITN	49.7999999999999972
county	34	average ITN per household	0.900000000000000022
county	34	Percentage households with ITN for every 2 people in household	33.2999999999999972
county	35	households with at least one ITN	79.5
county	35	average ITN per household	1.60000000000000009
county	35	Percentage households with ITN for every 2 people in household	45.3999999999999986
county	36	households with at least one ITN	77.5999999999999943
county	36	average ITN per household	1.80000000000000004
county	36	Percentage households with ITN for every 2 people in household	46.7999999999999972
county	37	households with at least one ITN	78.7999999999999972
county	37	average ITN per household	1.69999999999999996
county	37	Percentage households with ITN for every 2 people in household	47
county	38	households with at least one ITN	82.9000000000000057
county	38	average ITN per household	1.69999999999999996
county	38	Percentage households with ITN for every 2 people in household	44.8999999999999986
county	39	households with at least one ITN	82.9000000000000057
county	39	average ITN per household	1.80000000000000004
county	39	Percentage households with ITN for every 2 people in household	41.7000000000000028
county	40	households with at least one ITN	83.9000000000000057
county	40	average ITN per household	1.89999999999999991
county	40	Percentage households with ITN for every 2 people in household	48.7999999999999972
county	41	households with at least one ITN	78.7999999999999972
county	41	average ITN per household	1.5
county	41	Percentage households with ITN for every 2 people in household	41.6000000000000014
county	42	households with at least one ITN	87.5999999999999943
county	42	average ITN per household	1.69999999999999996
county	42	Percentage households with ITN for every 2 people in household	52.6000000000000014
county	43	households with at least one ITN	74.2999999999999972
county	43	average ITN per household	1.5
county	43	Percentage households with ITN for every 2 people in household	37.5
county	44	households with at least one ITN	74.5999999999999943
county	44	average ITN per household	1.39999999999999991
county	44	Percentage households with ITN for every 2 people in household	30.3000000000000007
county	45	households with at least one ITN	86.0999999999999943
county	45	average ITN per household	1.89999999999999991
county	45	Percentage households with ITN for every 2 people in household	54.3999999999999986
county	46	households with at least one ITN	84.5
county	46	average ITN per household	1.69999999999999996
county	46	Percentage households with ITN for every 2 people in household	57.1000000000000014
county	47	households with at least one ITN	43.2999999999999972
county	47	average ITN per household	0.699999999999999956
county	47	Percentage households with ITN for every 2 people in household	28.5
country	KE	households with at least one ITN	58.7000000000000028
country	KE	average ITN per household	1.10000000000000009
country	KE	Percentage households with ITN for every 2 people in household	34.2999999999999972
\.


--
-- Data for Name: hurumap_geography; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY hurumap_geography (id, geo_level, geo_code, name, long_name, year, osm_area_id, square_kms, parent_level, parent_code) FROM stdin;
1	country	KE	Kenya	Kenya	2009	662008	\N	\N	\N
2	county	1	Mombasa	Mombasa	2009	662784	\N	country	KE
3	county	2	Kwale	Kwale	2009	509519	\N	country	KE
4	county	3	Kilifi	Kilifi	2009	662783	\N	country	KE
5	county	4	Tana River	Tana River	2009	509533	\N	country	KE
6	county	5	Lamu	Lamu	2009	509521	\N	country	KE
7	county	6	Taita-Taveta	Taita-Taveta	2009	509532	\N	country	KE
8	county	7	Garissa	Garissa	2009	662782	\N	country	KE
9	county	8	Wajir	Wajir	2009	509538	\N	country	KE
10	county	9	Mandera	Mandera	2009	509522	\N	country	KE
11	county	10	Marsabit	Marsabit	2009	509523	\N	country	KE
12	county	11	Isiolo	Isiolo	2009	509513	\N	country	KE
13	county	12	Meru	Meru	2009	509524	\N	country	KE
14	county	13	Tharaka-Nithi	Tharaka-Nithi	2009	509534	\N	country	KE
15	county	14	Embu	Embu	2009	509511	\N	country	KE
16	county	15	Kitui	Kitui	2009	509518	\N	country	KE
17	county	16	Machakos	Machakos	2009	509501	\N	country	KE
18	county	17	Makueni	Makueni	2009	509502	\N	country	KE
19	county	18	Nyandarua	Nyandarua	2009	509528	\N	country	KE
20	county	19	Nyeri	Nyeri	2009	509529	\N	country	KE
21	county	20	Kirinyaga	Kirinyaga	2009	509517	\N	country	KE
22	county	21	Murang'a	Murang'a	2009	509526	\N	country	KE
23	county	22	Kiambu	Kiambu	2009	509515	\N	country	KE
24	county	23	Turkana	Turkana	2009	509536	\N	country	KE
25	county	24	West Pokot	West Pokot	2009	509539	\N	country	KE
26	county	25	Samburu	Samburu	2009	509530	\N	country	KE
27	county	26	Trans Nzoia	Trans Nzoia	2009	509535	\N	country	KE
28	county	27	Uasin Gishu	Uasin Gishu	2009	509537	\N	country	KE
29	county	28	Elgeyo-Marakwet	Elgeyo-Marakwet	2009	509510	\N	country	KE
30	county	29	Nandi	Nandi	2009	509527	\N	country	KE
31	county	30	Baringo	Baringo	2009	509508	\N	country	KE
32	county	31	Laikipia	Laikipia	2009	509520	\N	country	KE
33	county	32	Nakuru	Nakuru	2009	509466	\N	country	KE
34	county	33	Narok	Narok	2009	509385	\N	country	KE
35	county	34	Kajiado	Kajiado	2009	662770	\N	country	KE
36	county	35	Kericho	Kericho	2009	509468	\N	country	KE
37	county	36	Bomet	Bomet	2009	509383	\N	country	KE
38	county	37	Kakamega	Kakamega	2009	509514	\N	country	KE
39	county	38	Vihiga	Vihiga	2009	509473	\N	country	KE
40	county	39	Bungoma	Bungoma	2009	509509	\N	country	KE
41	county	40	Busia	Busia	2009	509472	\N	country	KE
42	county	41	Siaya	Siaya	2009	509471	\N	country	KE
43	county	42	Kisumu	Kisumu	2009	509469	\N	country	KE
44	county	43	Homa Bay	Homa Bay	2009	509464	\N	country	KE
45	county	44	Migori	Migori	2009	662769	\N	country	KE
46	county	45	Kisii	Kisii	2009	509384	\N	country	KE
47	county	46	Nyamira	Nyamira	2009	509470	\N	country	KE
48	county	47	Nairobi	Nairobi	2009	509503	\N	country	KE
\.


--
-- Name: hurumap_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hurumap_ke
--

SELECT pg_catalog.setval('hurumap_geography_id_seq', 48, true);


--
-- Data for Name: knowledgeofhivpreventionmethods_sex; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY knowledgeofhivpreventionmethods_sex (geo_level, geo_code, "knowledge of hiv prevention methods", sex, total) FROM stdin;
county	1	using condoms	female	85.4000000000000057
county	1	using condoms	male	96.9000000000000057
county	1	being faithful	female	94.2000000000000028
county	1	being faithful	male	98.9000000000000057
county	1	both	female	82.5
county	1	both	male	96.4000000000000057
county	2	using condoms	female	62.1000000000000014
county	2	using condoms	male	70.9000000000000057
county	2	being faithful	female	65.2999999999999972
county	2	being faithful	male	89.5
county	2	both	female	56
county	2	both	male	67.2000000000000028
county	3	using condoms	female	75.9000000000000057
county	3	using condoms	male	54.1000000000000014
county	3	being faithful	female	93.0999999999999943
county	3	being faithful	male	75.0999999999999943
county	3	both	female	73
county	3	both	male	43.7999999999999972
county	4	using condoms	female	60
county	4	using condoms	male	73.7999999999999972
county	4	being faithful	female	85
county	4	being faithful	male	92.0999999999999943
county	4	both	female	57.8999999999999986
county	4	both	male	70.5
county	5	using condoms	female	70.2000000000000028
county	5	using condoms	male	88
county	5	being faithful	female	92.5
county	5	being faithful	male	94.7000000000000028
county	5	both	female	67.5999999999999943
county	5	both	male	84
county	6	using condoms	female	84.0999999999999943
county	6	using condoms	male	88.2000000000000028
county	6	being faithful	female	95.7999999999999972
county	6	being faithful	male	93.7000000000000028
county	6	both	female	82.5999999999999943
county	6	both	male	85.0999999999999943
county	7	using condoms	female	42.8999999999999986
county	7	using condoms	male	69.5999999999999943
county	7	being faithful	female	59.7000000000000028
county	7	being faithful	male	94.0999999999999943
county	7	both	female	31.1999999999999993
county	7	both	male	68.7000000000000028
county	8	using condoms	female	18.5
county	8	using condoms	male	38
county	8	being faithful	female	52.2999999999999972
county	8	being faithful	male	33.6000000000000014
county	8	both	female	15.0999999999999996
county	8	both	male	11.4000000000000004
county	9	using condoms	female	14.0999999999999996
county	9	using condoms	male	60.1000000000000014
county	9	being faithful	female	53.7000000000000028
county	9	being faithful	male	68.7000000000000028
county	9	both	female	13
county	9	both	male	58.1000000000000014
county	10	using condoms	female	54.2000000000000028
county	10	using condoms	male	97.2999999999999972
county	10	being faithful	female	63.5
county	10	being faithful	male	96.2999999999999972
county	10	both	female	45.2999999999999972
county	10	both	male	95
county	11	using condoms	female	76.2000000000000028
county	11	using condoms	male	70.7999999999999972
county	11	being faithful	female	90.9000000000000057
county	11	being faithful	male	97.5999999999999943
county	11	both	female	73.9000000000000057
county	11	both	male	70.7999999999999972
county	12	using condoms	female	81.2000000000000028
county	12	using condoms	male	87.2999999999999972
county	12	being faithful	female	95.2999999999999972
county	12	being faithful	male	99.0999999999999943
county	12	both	female	78.5
county	12	both	male	86.4000000000000057
county	13	using condoms	female	76.0999999999999943
county	13	using condoms	male	82.0999999999999943
county	13	being faithful	female	94.0999999999999943
county	13	being faithful	male	98.0999999999999943
county	13	both	female	74.2000000000000028
county	13	both	male	81.2999999999999972
county	14	using condoms	female	80.4000000000000057
county	14	using condoms	male	71.7000000000000028
county	14	being faithful	female	95.2000000000000028
county	14	being faithful	male	81.7999999999999972
county	14	both	female	78.2000000000000028
county	14	both	male	62.8999999999999986
county	15	using condoms	female	51.5
county	15	using condoms	male	82.5999999999999943
county	15	being faithful	female	93.5
county	15	being faithful	male	98.2999999999999972
county	15	both	female	50.2000000000000028
county	15	both	male	81.7000000000000028
county	16	using condoms	female	76.5
county	16	using condoms	male	88.0999999999999943
county	16	being faithful	female	96.7999999999999972
county	16	being faithful	male	91.4000000000000057
county	16	both	female	74.9000000000000057
county	16	both	male	83.2000000000000028
county	17	using condoms	female	78.9000000000000057
county	17	using condoms	male	93
county	17	being faithful	female	95.5
county	17	being faithful	male	98.4000000000000057
county	17	both	female	76.5999999999999943
county	17	both	male	92.2000000000000028
county	18	using condoms	female	83.2000000000000028
county	18	using condoms	male	91.5999999999999943
county	18	being faithful	female	91.2000000000000028
county	18	being faithful	male	90.7000000000000028
county	18	both	female	80.2999999999999972
county	18	both	male	85.2000000000000028
county	19	using condoms	female	81
county	19	using condoms	male	86.0999999999999943
county	19	being faithful	female	92.5
county	19	being faithful	male	97.2999999999999972
county	19	both	female	76.7999999999999972
county	19	both	male	85
county	20	using condoms	female	91.9000000000000057
county	20	using condoms	male	87.5999999999999943
county	20	being faithful	female	97.7999999999999972
county	20	being faithful	male	97
county	20	both	female	90.5999999999999943
county	20	both	male	86.0999999999999943
county	21	using condoms	female	56.2999999999999972
county	21	using condoms	male	80.2999999999999972
county	21	being faithful	female	74.4000000000000057
county	21	being faithful	male	97.9000000000000057
county	21	both	female	53.7000000000000028
county	21	both	male	78.2000000000000028
county	22	using condoms	female	80.5999999999999943
county	22	using condoms	male	95
county	22	being faithful	female	92.4000000000000057
county	22	being faithful	male	97.5
county	22	both	female	75.9000000000000057
county	22	both	male	93.5999999999999943
county	23	using condoms	female	50.5
county	23	using condoms	male	7.70000000000000018
county	23	being faithful	female	91.2000000000000028
county	23	being faithful	male	30.6999999999999993
county	23	both	female	49.2000000000000028
county	23	both	male	2.39999999999999991
county	24	using condoms	female	53.7999999999999972
county	24	using condoms	male	79.2999999999999972
county	24	being faithful	female	76.9000000000000057
county	24	being faithful	male	95
county	24	both	female	47.7999999999999972
county	24	both	male	76.7999999999999972
county	25	using condoms	female	78.4000000000000057
county	25	using condoms	male	82.5999999999999943
county	25	being faithful	female	96.7999999999999972
county	25	being faithful	male	95.7999999999999972
county	25	both	female	78.0999999999999943
county	25	both	male	79.2999999999999972
county	26	using condoms	female	86.2999999999999972
county	26	using condoms	male	84.9000000000000057
county	26	being faithful	female	97.0999999999999943
county	26	being faithful	male	92.2000000000000028
county	26	both	female	84.5999999999999943
county	26	both	male	79.7000000000000028
county	27	using condoms	female	85.7000000000000028
county	27	using condoms	male	86.9000000000000057
county	27	being faithful	female	94.7999999999999972
county	27	being faithful	male	92.7000000000000028
county	27	both	female	82.7999999999999972
county	27	both	male	82.7999999999999972
county	28	using condoms	female	85.5999999999999943
county	28	using condoms	male	97.0999999999999943
county	28	being faithful	female	97.5
county	28	being faithful	male	99.2000000000000028
county	28	both	female	84.7000000000000028
county	28	both	male	97.0999999999999943
county	29	using condoms	female	92
county	29	using condoms	male	98.9000000000000057
county	29	being faithful	female	97.0999999999999943
county	29	being faithful	male	98.7999999999999972
county	29	both	female	90.7000000000000028
county	29	both	male	98.4000000000000057
county	30	using condoms	female	74.7000000000000028
county	30	using condoms	male	91.7000000000000028
county	30	being faithful	female	89.5999999999999943
county	30	being faithful	male	96.2999999999999972
county	30	both	female	72.5999999999999943
county	30	both	male	89.9000000000000057
county	31	using condoms	female	86.2999999999999972
county	31	using condoms	male	77.5999999999999943
county	31	being faithful	female	96.9000000000000057
county	31	being faithful	male	89.5
county	31	both	female	84.7999999999999972
county	31	both	male	72.2999999999999972
county	32	using condoms	female	84.2000000000000028
county	32	using condoms	male	92.7999999999999972
county	32	being faithful	female	94.4000000000000057
county	32	being faithful	male	96.5999999999999943
county	32	both	female	80.9000000000000057
county	32	both	male	91.4000000000000057
county	33	using condoms	female	67.9000000000000057
county	33	using condoms	male	81.2000000000000028
county	33	being faithful	female	85.2999999999999972
county	33	being faithful	male	92.7999999999999972
county	33	both	female	62.3999999999999986
county	33	both	male	78.4000000000000057
county	34	using condoms	female	78.2000000000000028
county	34	using condoms	male	87.4000000000000057
county	34	being faithful	female	92.2000000000000028
county	34	being faithful	male	96.5
county	34	both	female	76.2999999999999972
county	34	both	male	85.2000000000000028
county	35	using condoms	female	76.5
county	35	using condoms	male	94
county	35	being faithful	female	87.4000000000000057
county	35	being faithful	male	94.9000000000000057
county	35	both	female	72.5
county	35	both	male	90.2999999999999972
county	36	using condoms	female	87.9000000000000057
county	36	using condoms	male	92.2000000000000028
county	36	being faithful	female	95.9000000000000057
county	36	being faithful	male	96.5
county	36	both	female	85.5
county	36	both	male	90.0999999999999943
county	37	using condoms	female	86.4000000000000057
county	37	using condoms	male	87.2999999999999972
county	37	being faithful	female	92.2000000000000028
county	37	being faithful	male	93.4000000000000057
county	37	both	female	81.9000000000000057
county	37	both	male	83.0999999999999943
county	38	using condoms	female	81.4000000000000057
county	38	using condoms	male	83
county	38	being faithful	female	91
county	38	being faithful	male	83.4000000000000057
county	38	both	female	77.9000000000000057
county	38	both	male	72
county	39	using condoms	female	88.7000000000000028
county	39	using condoms	male	91.7000000000000028
county	39	being faithful	female	91.2999999999999972
county	39	being faithful	male	99.7000000000000028
county	39	both	female	84.2000000000000028
county	39	both	male	91.7000000000000028
county	40	using condoms	female	81.7999999999999972
county	40	using condoms	male	96.2999999999999972
county	40	being faithful	female	90
county	40	being faithful	male	99.0999999999999943
county	40	both	female	75.5
county	40	both	male	95.4000000000000057
county	41	using condoms	female	88.5
county	41	using condoms	male	96.5999999999999943
county	41	being faithful	female	96.5999999999999943
county	41	being faithful	male	98.7999999999999972
county	41	both	female	86.5
county	41	both	male	95.5999999999999943
county	42	using condoms	female	88.9000000000000057
county	42	using condoms	male	99.0999999999999943
county	42	being faithful	female	92.5
county	42	being faithful	male	98.7000000000000028
county	42	both	female	84.4000000000000057
county	42	both	male	98.2000000000000028
county	43	using condoms	female	91.5
county	43	using condoms	male	97.4000000000000057
county	43	being faithful	female	93.7999999999999972
county	43	being faithful	male	98.5999999999999943
county	43	both	female	88.2999999999999972
county	43	both	male	96.7000000000000028
county	44	using condoms	female	84.7999999999999972
county	44	using condoms	male	86.7000000000000028
county	44	being faithful	female	90
county	44	being faithful	male	89.7000000000000028
county	44	both	female	79.7999999999999972
county	44	both	male	80.2999999999999972
county	45	using condoms	female	81.7000000000000028
county	45	using condoms	male	89.7999999999999972
county	45	being faithful	female	96.5
county	45	being faithful	male	97.4000000000000057
county	45	both	female	80.0999999999999943
county	45	both	male	88.5
county	46	using condoms	female	98.2000000000000028
county	46	using condoms	male	98.2999999999999972
county	46	being faithful	female	99.7999999999999972
county	46	being faithful	male	98.5
county	46	both	female	97.9000000000000057
county	46	both	male	98.2999999999999972
county	47	using condoms	female	86.7999999999999972
county	47	using condoms	male	93.0999999999999943
county	47	being faithful	female	94.7000000000000028
county	47	being faithful	male	95.9000000000000057
county	47	both	female	83.5
county	47	both	male	89.9000000000000057
country	KE	using condoms	female	79.7999999999999972
country	KE	using condoms	male	87.5999999999999943
country	KE	being faithful	female	91.5999999999999943
country	KE	being faithful	male	94.2000000000000028
country	KE	both	female	76.5999999999999943
country	KE	both	male	84.7999999999999972
\.


--
-- Data for Name: livestock_population; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY livestock_population (geo_level, geo_code, livestock_population, total) FROM stdin;
county	26	cattle dairy	17050
county	26	cattle meat	1690
county	26	sheep wool	200
county	26	sheep hair	11500
county	26	goat dairy	150
county	26	goat meat	2830
county	26	pigs	580
county	26	rabbits	1160
county	26	broilers	1830
county	26	layers	11160
county	26	kienyeji	66420
county	26	others	2140
county	26	turkey	0
county	26	ducks	0
county	26	quails	0
county	26	guinea fowl	0
county	26	geese	0
county	24	cattle dairy	700
county	24	cattle meat	36500
county	24	sheep wool	9800
county	24	sheep hair	38500
county	24	goat dairy	250
county	24	goat meat	4500
county	24	pigs	320
county	24	rabbits	380
county	24	broilers	50
county	24	layers	210
county	24	kienyeji	47500
county	24	others	5290
county	24	turkey	0
county	24	ducks	0
county	24	quails	0
county	24	guinea fowl	0
county	24	geese	0
county	31	cattle dairy	5600
county	31	cattle meat	233650
county	31	sheep wool	14103
county	31	sheep hair	3900
county	31	goat dairy	12996
county	31	goat meat	3700
county	31	pigs	50
county	31	rabbits	20748
county	31	broilers	1600
county	31	layers	34220
county	31	kienyeji	34500
county	31	others	9889
county	31	turkey	0
county	31	ducks	0
county	31	quails	0
county	31	guinea fowl	0
county	31	geese	0
county	34	cattle dairy	157302
county	34	cattle meat	525289
county	34	sheep wool	0
county	34	sheep hair	981271
county	34	goat dairy	1636
county	34	goat meat	1080297
county	34	pigs	21997
county	34	rabbits	22014
county	34	broilers	340408
county	34	layers	169533
county	34	kienyeji	211357
county	34	others	1735
county	34	turkey	65
county	34	ducks	25
county	34	quails	1645
county	34	guinea fowl	0
county	34	geese	0
county	15	cattle dairy	6666
county	15	cattle meat	388264
county	15	sheep wool	0
county	15	sheep hair	84196
county	15	goat dairy	4142
county	15	goat meat	940645
county	15	pigs	1015
county	15	rabbits	3499
county	15	broilers	24410
county	15	layers	18892
county	15	kienyeji	1425410
county	15	others	10654
county	15	turkey	0
county	15	ducks	0
county	15	quails	0
county	15	guinea fowl	0
county	15	geese	0
county	16	cattle dairy	39950
county	16	cattle meat	205490
county	16	sheep wool	0
county	16	sheep hair	102160
county	16	goat dairy	8430
county	16	goat meat	321870
county	16	pigs	550
county	16	rabbits	16250
county	16	broilers	17480
county	16	layers	18410
county	16	kienyeji	130600
county	16	others	23720
county	16	turkey	0
county	16	ducks	0
county	16	quails	0
county	16	guinea fowl	0
county	16	geese	0
county	17	cattle dairy	22353
county	17	cattle meat	233814
county	17	sheep wool	0
county	17	sheep hair	115011
county	17	goat dairy	11678
county	17	goat meat	675045
county	17	pigs	2040
county	17	rabbits	13725
county	17	broilers	1330
county	17	layers	23628
county	17	kienyeji	965475
county	17	others	3244
county	17	turkey	0
county	17	ducks	0
county	17	quails	0
county	17	guinea fowl	0
county	17	geese	0
county	7	cattle dairy	191
county	7	cattle meat	1104184
county	7	sheep wool	0
county	7	sheep hair	1089870
county	7	goat dairy	147
county	7	goat meat	1947163
county	7	pigs	0
county	7	rabbits	0
county	7	broilers	0
county	7	layers	0
county	7	kienyeji	195021
county	7	others	0
county	7	turkey	0
county	7	ducks	0
county	7	quails	0
county	7	guinea fowl	0
county	7	geese	0
county	5	cattle dairy	8549
county	5	cattle meat	112119
county	5	sheep wool	0
county	5	sheep hair	24576
county	5	goat dairy	5976
county	5	goat meat	130620
county	5	pigs	0
county	5	rabbits	1764
county	5	broilers	6065
county	5	layers	4295
county	5	kienyeji	177401
county	5	others	9434
county	5	turkey	0
county	5	ducks	0
county	5	quails	480
county	5	guinea fowl	860
county	5	geese	0
county	4	cattle dairy	76
county	4	cattle meat	607190
county	4	sheep wool	0
county	4	sheep hair	325650
county	4	goat dairy	1330
county	4	goat meat	693350
county	4	pigs	11
county	4	rabbits	332
county	4	broilers	100
county	4	layers	2402
county	4	kienyeji	131912
county	4	others	8270
county	4	turkey	0
county	4	ducks	0
county	4	quails	0
county	4	guinea fowl	0
county	4	geese	0
county	8	cattle dairy	12
county	8	cattle meat	718928
county	8	sheep wool	0
county	8	sheep hair	117750
county	8	goat dairy	254
county	8	goat meat	1503730
county	8	pigs	0
county	8	rabbits	0
county	8	broilers	76
county	8	layers	534
county	8	kienyeji	188732
county	8	others	20
county	8	turkey	0
county	8	ducks	0
county	8	quails	0
county	8	guinea fowl	0
county	8	geese	0
county	1	cattle dairy	1866
county	1	cattle meat	3968
county	1	sheep wool	3
county	1	sheep hair	931
county	1	goat dairy	115
county	1	goat meat	20710
county	1	pigs	692
county	1	rabbits	1408
county	1	broilers	8060
county	1	layers	1290
county	1	kienyeji	36205
county	1	others	0
county	1	turkey	0
county	1	ducks	0
county	1	quails	5695
county	1	guinea fowl	0
county	1	geese	0
county	6	cattle dairy	27472
county	6	cattle meat	149179
county	6	sheep wool	0
county	6	sheep hair	57293
county	6	goat dairy	3145
county	6	goat meat	172450
county	6	pigs	1407
county	6	rabbits	9965
county	6	broilers	17078
county	6	layers	21113
county	6	kienyeji	608609
county	6	others	7385
county	6	turkey	0
county	6	ducks	0
county	6	quails	0
county	6	guinea fowl	0
county	6	geese	0
county	2	cattle dairy	3488
county	2	cattle meat	299026
county	2	sheep wool	0
county	2	sheep hair	96031
county	2	goat dairy	1382
county	2	goat meat	350874
county	2	pigs	468
county	2	rabbits	1453
county	2	broilers	7480
county	2	layers	12250
county	2	kienyeji	477918
county	2	others	6850
county	2	turkey	0
county	2	ducks	0
county	2	quails	0
county	2	guinea fowl	0
county	2	geese	0
county	3	cattle dairy	51518
county	3	cattle meat	261717
county	3	sheep wool	0
county	3	sheep hair	38770
county	3	goat dairy	828
county	3	goat meat	286782
county	3	pigs	2648
county	3	rabbits	8978
county	3	broilers	129988
county	3	layers	105941
county	3	kienyeji	99860
county	3	others	0
county	3	turkey	3944
county	3	ducks	89698
county	3	quails	280
county	3	guinea fowl	7991
county	3	geese	3850
county	14	cattle dairy	90427
county	14	cattle meat	8920
county	14	sheep wool	1525
county	14	sheep hair	53319
county	14	goat dairy	27085
county	14	goat meat	239571
county	14	pigs	15780
county	14	rabbits	59636
county	14	broilers	43690
county	14	layers	73768
county	14	kienyeji	510188
county	14	others	3547
county	14	turkey	1595
county	14	ducks	2328
county	14	quails	1955
county	14	guinea fowl	430
county	14	geese	1532
county	20	cattle dairy	79318
county	20	cattle meat	31947
county	20	sheep wool	0
county	20	sheep hair	15671
county	20	goat dairy	13535
county	20	goat meat	37791
county	20	pigs	11316
county	20	rabbits	51126
county	20	broilers	27115
county	20	layers	46407
county	20	kienyeji	597366
county	20	others	0
county	20	turkey	15142
county	20	ducks	530
county	20	quails	1033
county	20	guinea fowl	2734
county	20	geese	1228
county	19	cattle dairy	173075
county	19	cattle meat	11938
county	19	sheep wool	13377
county	19	sheep hair	99789
county	19	goat dairy	32367
county	19	goat meat	55113
county	19	pigs	1019
county	19	rabbits	45205
county	19	broilers	62687
county	19	layers	43727
county	19	kienyeji	298666
county	19	others	0
county	19	turkey	1809
county	19	ducks	2085
county	19	quails	500
county	19	guinea fowl	45
county	19	geese	1395
county	21	cattle dairy	239196
county	21	cattle meat	21881
county	21	sheep wool	13959
county	21	sheep hair	30652
county	21	goat dairy	51116
county	21	goat meat	107938
county	21	pigs	35510
county	21	rabbits	85210
county	21	broilers	104573
county	21	layers	257646
county	21	kienyeji	554883
county	21	others	0
county	21	turkey	2218
county	21	ducks	3851
county	21	quails	1680
county	21	guinea fowl	183
county	21	geese	3425
county	27	cattle dairy	327843
county	27	cattle meat	39763
county	27	sheep wool	37398
county	27	sheep hair	128059
county	27	goat dairy	120
county	27	goat meat	8280
county	27	pigs	12692
county	27	rabbits	6227
county	27	broilers	76913
county	27	layers	143848
county	27	kienyeji	707726
county	27	others	0
county	27	turkey	0
county	27	ducks	4394
county	27	quails	0
county	27	guinea fowl	0
county	27	geese	0
county	13	cattle dairy	46188
county	13	cattle meat	92936
county	13	sheep wool	0
county	13	sheep hair	57628
county	13	goat dairy	12230
county	13	goat meat	233231
county	13	pigs	12354
county	13	rabbits	36520
county	13	broilers	24477
county	13	layers	30687
county	13	kienyeji	611271
county	13	others	6994
county	13	turkey	0
county	13	ducks	0
county	13	quails	0
county	13	guinea fowl	0
county	13	geese	0
county	12	cattle dairy	17500
county	12	cattle meat	25050
county	12	sheep wool	4100
county	12	sheep hair	18500
county	12	goat dairy	3530
county	12	goat meat	29600
county	12	pigs	2800
county	12	rabbits	5460
county	12	broilers	0
county	12	layers	92969
county	12	kienyeji	612271
county	12	others	610
county	12	turkey	0
county	12	ducks	0
county	12	quails	0
county	12	guinea fowl	0
county	12	geese	0
county	11	cattle dairy	240
county	11	cattle meat	205080
county	11	sheep wool	0
county	11	sheep hair	356902
county	11	goat dairy	720
county	11	goat meat	386258
county	11	pigs	0
county	11	rabbits	0
county	11	broilers	200
county	11	layers	400
county	11	kienyeji	32978
county	11	others	665
county	11	turkey	0
county	11	ducks	0
county	11	quails	0
county	11	guinea fowl	0
county	11	geese	0
county	10	cattle dairy	742
county	10	cattle meat	218013
county	10	sheep wool	0
county	10	sheep hair	2029490
county	10	goat dairy	488
county	10	goat meat	1185964
county	10	pigs	0
county	10	rabbits	71
county	10	broilers	0
county	10	layers	4714
county	10	kienyeji	41137
county	10	others	3
county	10	turkey	0
county	10	ducks	0
county	10	quails	0
county	10	guinea fowl	0
county	10	geese	0
county	33	cattle dairy	25720
county	33	cattle meat	1150998
county	33	sheep wool	35206
county	33	sheep hair	1080812
county	33	goat dairy	1838
county	33	goat meat	787331
county	33	pigs	385
county	33	rabbits	3013
county	33	broilers	140
county	33	layers	9236
county	33	kienyeji	816018
county	33	others	6137
county	33	turkey	0
county	33	ducks	0
county	33	quails	0
county	33	guinea fowl	0
county	33	geese	0
county	36	cattle dairy	265431
county	36	cattle meat	112742
county	36	sheep wool	68418
county	36	sheep hair	87388
county	36	goat dairy	2839
county	36	goat meat	62636
county	36	pigs	35
county	36	rabbits	10330
county	36	broilers	22415
county	36	layers	33650
county	36	kienyeji	378055
county	36	others	40645
county	36	turkey	0
county	36	ducks	0
county	36	quails	0
county	36	guinea fowl	0
county	36	geese	0
county	46	cattle dairy	70859
county	46	cattle meat	28734
county	46	sheep wool	0
county	46	sheep hair	17170
county	46	goat dairy	509
county	46	goat meat	37290
county	46	pigs	321
county	46	rabbits	3415
county	46	broilers	0
county	46	layers	248997
county	46	kienyeji	329380
county	46	others	2136
county	46	turkey	0
county	46	ducks	0
county	46	quails	0
county	46	guinea fowl	0
county	46	geese	0
county	45	cattle dairy	157471
county	45	cattle meat	111871
county	45	sheep wool	0
county	45	sheep hair	47157
county	45	goat dairy	1750
county	45	goat meat	94655
county	45	pigs	914
county	45	rabbits	16323
county	45	broilers	8785
county	45	layers	111921
county	45	kienyeji	1310874
county	45	others	8421
county	45	turkey	0
county	45	ducks	0
county	45	quails	0
county	45	guinea fowl	0
county	45	geese	0
county	42	cattle dairy	17322
county	42	cattle meat	268356
county	42	sheep wool	0
county	42	sheep hair	219849
county	42	goat dairy	1798
county	42	goat meat	220462
county	42	pigs	5348
county	42	rabbits	12015
county	42	broilers	124916
county	42	layers	73712
county	42	kienyeji	849535
county	42	others	42803
county	42	turkey	0
county	42	ducks	0
county	42	quails	0
county	42	guinea fowl	0
county	42	geese	0
county	44	cattle dairy	11428
county	44	cattle meat	331535
county	44	sheep wool	0
county	44	sheep hair	212484
county	44	goat dairy	3976
county	44	goat meat	307815
county	44	pigs	4604
county	44	rabbits	7603
county	44	broilers	17799
county	44	layers	63883
county	44	kienyeji	4648187
county	44	others	13534
county	44	turkey	0
county	44	ducks	0
county	44	quails	0
county	44	guinea fowl	0
county	44	geese	0
county	43	cattle dairy	10518
county	43	cattle meat	636356
county	43	sheep wool	0
county	43	sheep hair	333334
county	43	goat dairy	4102
county	43	goat meat	383373
county	43	pigs	36719
county	43	rabbits	15751
county	43	broilers	13950
county	43	layers	47268
county	43	kienyeji	2380393
county	43	others	26551
county	43	turkey	0
county	43	ducks	0
county	43	quails	0
county	43	guinea fowl	0
county	43	geese	0
county	25	cattle dairy	312
county	25	cattle meat	184881
county	25	sheep wool	0
county	25	sheep hair	566871
county	25	goat dairy	162
county	25	goat meat	1110117
county	25	pigs	0
county	25	rabbits	0
county	25	broilers	3463
county	25	layers	4938
county	25	kienyeji	164536
county	25	others	52
county	25	turkey	0
county	25	ducks	0
county	25	quails	0
county	25	guinea fowl	0
county	25	geese	0
county	18	cattle dairy	292191
county	18	cattle meat	24713
county	18	sheep wool	193254
county	18	sheep hair	76391
county	18	goat dairy	8086
county	18	goat meat	70420
county	18	pigs	925
county	18	rabbits	39142
county	18	broilers	7310
county	18	layers	16509
county	18	kienyeji	242563
county	18	others	12354
county	18	turkey	0
county	18	ducks	0
county	18	quails	0
county	18	guinea fowl	0
county	18	geese	0
county	22	cattle dairy	24605
county	22	cattle meat	42590
county	22	sheep wool	3067
county	22	sheep hair	84024
county	22	goat dairy	81755
county	22	goat meat	24926
county	22	pigs	40788
county	22	rabbits	55814
county	22	broilers	927272
county	22	layers	768713
county	22	kienyeji	791434
county	22	others	0
county	22	turkey	0
county	22	ducks	0
county	22	quails	11
county	22	guinea fowl	136
county	22	geese	0
county	41	cattle dairy	5698
county	41	cattle meat	492591
county	41	sheep wool	0
county	41	sheep hair	143752
county	41	goat dairy	4656
county	41	goat meat	260252
county	41	pigs	13453
county	41	rabbits	12324
county	41	broilers	63688
county	41	layers	40394
county	41	kienyeji	804161
county	41	others	24262
county	41	turkey	0
county	41	ducks	0
county	41	quails	0
county	41	guinea fowl	0
county	41	geese	0
county	39	cattle dairy	102183
county	39	cattle meat	259940
county	39	sheep wool	5366
county	39	sheep hair	125326
county	39	goat dairy	3353
county	39	goat meat	105437
county	39	pigs	15220
county	39	rabbits	39645
county	39	broilers	8572
county	39	layers	36072
county	39	kienyeji	1808108
county	39	others	0
county	39	turkey	21942
county	39	ducks	32259
county	39	quails	0
county	39	guinea fowl	1257
county	39	geese	10529
county	37	cattle dairy	118806
county	37	cattle meat	191905
county	37	sheep wool	150
county	37	sheep hair	77225
county	37	goat dairy	2099
county	37	goat meat	69664
county	37	pigs	34172
county	37	rabbits	41476
county	37	broilers	38840
county	37	layers	121450
county	37	kienyeji	2010545
county	37	others	94050
county	37	turkey	0
county	37	ducks	0
county	37	quails	0
county	37	guinea fowl	0
county	37	geese	0
county	38	cattle dairy	40209
county	38	cattle meat	126908
county	38	sheep wool	0
county	38	sheep hair	18060
county	38	goat dairy	7046
county	38	goat meat	2980
county	38	pigs	2130
county	38	rabbits	11856
county	38	broilers	1450
county	38	layers	8980
county	38	kienyeji	738999
county	38	others	0
county	38	turkey	460
county	38	ducks	3290
county	38	quails	4320
county	38	guinea fowl	2320
county	38	geese	4075
county	29	cattle dairy	220557
county	29	cattle meat	99388
county	29	sheep wool	36840
county	29	sheep hair	88421
county	29	goat dairy	3235
county	29	goat meat	44972
county	29	pigs	761
county	29	rabbits	8647
county	29	broilers	9286
county	29	layers	37152
county	29	kienyeji	690705
county	29	others	0
county	29	turkey	0
county	29	ducks	0
county	29	quails	0
county	29	guinea fowl	0
county	29	geese	0
county	30	cattle dairy	153099
county	30	cattle meat	344289
county	30	sheep wool	15055
county	30	sheep hair	347573
county	30	goat dairy	5171
county	30	goat meat	876936
county	30	pigs	155
county	30	rabbits	5089
county	30	broilers	30646
county	30	layers	41264
county	30	kienyeji	106647
county	30	others	0
county	30	turkey	304
county	30	ducks	0
county	30	quails	0
county	30	guinea fowl	0
county	30	geese	0
county	32	cattle dairy	286050
county	32	cattle meat	160514
county	32	sheep wool	128958
county	32	sheep hair	312084
county	32	goat dairy	15529
county	32	goat meat	259506
county	32	pigs	18866
county	32	rabbits	88682
county	32	broilers	8507
county	32	layers	295978
county	32	kienyeji	1183108
county	32	others	76075
county	32	turkey	0
county	32	ducks	0
county	32	quails	0
county	32	guinea fowl	0
county	32	geese	0
county	35	cattle dairy	102684
county	35	cattle meat	182372
county	35	sheep wool	13342
county	35	sheep hair	62466
county	35	goat dairy	3756
county	35	goat meat	85601
county	35	pigs	0
county	35	rabbits	0
county	35	broilers	31169
county	35	layers	62370
county	35	kienyeji	507138
county	35	others	7471
county	35	turkey	0
county	35	ducks	0
county	35	quails	0
county	35	guinea fowl	0
county	35	geese	0
county	28	cattle dairy	159276
county	28	cattle meat	14808
county	28	sheep wool	114309
county	28	sheep hair	129548
county	28	goat dairy	1220
county	28	goat meat	194670
county	28	pigs	88
county	28	rabbits	2554
county	28	broilers	160
county	28	layers	14594
county	28	kienyeji	433527
county	28	others	6694
county	28	turkey	0
county	28	ducks	0
county	28	quails	0
county	28	guinea fowl	0
county	28	geese	0
county	47	cattle dairy	34987
county	47	cattle meat	18212
county	47	sheep wool	125
county	47	sheep hair	29277
county	47	goat dairy	7992
county	47	goat meat	45547
county	47	pigs	33031
county	47	rabbits	42610
county	47	broilers	468156
county	47	layers	179122
county	47	kienyeji	243777
county	47	others	41282
county	47	turkey	0
county	47	ducks	0
county	47	quails	0
county	47	guinea fowl	0
county	47	geese	0
county	23	cattle dairy	0
county	23	cattle meat	1534612
county	23	sheep wool	0
county	23	sheep hair	3517148
county	23	goat dairy	0
county	23	goat meat	5994881
county	23	pigs	36
county	23	rabbits	0
county	23	broilers	0
county	23	layers	0
county	23	kienyeji	162862
county	23	others	0
county	23	turkey	0
county	23	ducks	0
county	23	quails	0
county	23	guinea fowl	0
county	23	geese	0
county	9	cattle dairy	0
county	9	cattle meat	692321
county	9	sheep wool	0
county	9	sheep hair	986632
county	9	goat dairy	0
county	9	goat meat	2314939
county	9	pigs	0
county	9	rabbits	0
county	9	broilers	0
county	9	layers	0
county	9	kienyeji	202995
county	9	others	0
county	9	turkey	0
county	9	ducks	0
county	9	quails	0
county	9	guinea fowl	0
county	9	geese	0
county	40	cattle dairy	15895
county	40	cattle meat	165880
county	40	sheep wool	0
county	40	sheep hair	54991
county	40	goat dairy	1684
county	40	goat meat	6300
county	40	pigs	54824
county	40	rabbits	4145
county	40	broilers	0
county	40	layers	18614
county	40	kienyeji	789315
county	40	others	0
county	40	turkey	7433
county	40	ducks	27897
county	40	quails	210
county	40	guinea fowl	200
county	40	geese	2724
country	KE	cattle dairy	4316153
country	KE	cattle meat	13495692
country	KE	sheep wool	862455
country	KE	sheep hair	16557752
country	KE	goat dairy	389326
country	KE	goat meat	25040732
country	KE	pigs	430844
country	KE	rabbits	874565
country	KE	broilers	3117554
country	KE	layers	3716911
country	KE	kienyeji	34666188
country	KE	others	575457
country	KE	turkey	61752
country	KE	ducks	166357
country	KE	quails	39319
country	KE	guinea fowl	17956
country	KE	geese	28758
county	26	donkeys	7030
county	26	camels	4
county	26	hives log	3921
county	26	hives KTBH	5836
county	26	hives lang	4496
county	26	hives box	0
county	26	ostrich	0
county	26	horses	0
county	26	crocodiles	0
county	26	guinea pigs	0
county	26	doves	0
county	26	pegions	0
county	24	donkeys	13900
county	24	camels	5600
county	24	hives log	19000
county	24	hives KTBH	2110
county	24	hives lang	590
county	24	hives box	0
county	24	ostrich	0
county	24	horses	0
county	24	crocodiles	0
county	24	guinea pigs	0
county	24	doves	0
county	24	pegions	0
county	34	donkeys	61813
county	34	camels	840
county	34	hives log	4306
county	34	hives KTBH	6323
county	34	hives lang	3467
county	34	hives box	0
county	34	ostrich	1800
county	34	horses	0
county	34	crocodiles	0
county	34	guinea pigs	0
county	34	doves	0
county	34	pegions	0
county	15	donkeys	126064
county	15	camels	0
county	15	hives log	109361
county	15	hives KTBH	2160
county	15	hives lang	4840
county	15	hives box	0
county	15	ostrich	0
county	15	horses	0
county	15	crocodiles	0
county	15	guinea pigs	0
county	15	doves	0
county	15	pegions	0
county	16	donkeys	18720
county	16	camels	0
county	16	hives log	21770
county	16	hives KTBH	28910
county	16	hives lang	8200
county	16	hives box	20
county	16	ostrich	0
county	16	horses	0
county	16	crocodiles	0
county	16	guinea pigs	0
county	16	doves	0
county	17	donkeys	32695
county	17	camels	459
county	17	hives log	41764
county	17	hives KTBH	0
county	17	hives lang	0
county	17	hives box	0
county	17	ostrich	0
county	17	horses	0
county	17	crocodiles	0
county	17	guinea pigs	0
county	17	doves	0
county	17	pegions	0
county	7	donkeys	119513
county	7	camels	375490
county	7	hives log	0
county	7	hives KTBH	0
county	7	hives lang	0
county	7	hives box	0
county	7	ostrich	0
county	7	horses	0
county	7	crocodiles	0
county	7	guinea pigs	0
county	7	doves	0
county	7	pegions	0
county	5	donkeys	7423
county	5	camels	0
county	5	hives log	1800
county	5	hives KTBH	800
county	5	hives lang	950
county	5	hives box	0
county	5	ostrich	270
county	5	horses	0
county	5	crocodiles	0
county	5	guinea pigs	0
county	5	doves	0
county	5	pegions	0
county	4	donkeys	26932
county	4	camels	61992
county	4	hives log	35628
county	4	hives KTBH	570
county	4	hives lang	1651
county	4	hives box	0
county	4	ostrich	600
county	4	horses	0
county	4	crocodiles	0
county	4	guinea pigs	0
county	4	doves	0
county	4	pegions	0
county	8	donkeys	186044
county	8	camels	717028
county	8	hives log	247
county	8	hives KTBH	254
county	8	hives lang	373
county	8	hives box	0
county	8	ostrich	6
county	8	horses	0
county	8	crocodiles	0
county	8	guinea pigs	0
county	8	doves	0
county	8	pegions	0
county	1	donkeys	19
county	1	camels	16
county	1	hives log	53
county	1	hives KTBH	95
county	1	hives lang	128
county	1	hives box	10
county	1	ostrich	0
county	1	horses	0
county	1	crocodiles	0
county	1	guinea pigs	0
county	1	doves	0
county	1	pegions	0
county	6	donkeys	2177
county	6	camels	3320
county	6	hives log	2943
county	6	hives KTBH	1029
county	6	hives lang	5395
county	6	hives box	0
county	6	ostrich	125
county	6	horses	0
county	6	crocodiles	0
county	6	guinea pigs	0
county	6	doves	0
county	6	pegions	0
county	2	donkeys	968
county	2	camels	104
county	2	hives log	3082
county	2	hives KTBH	674
county	2	hives lang	2721
county	2	hives box	0
county	2	ostrich	0
county	2	horses	0
county	2	crocodiles	0
county	2	guinea pigs	0
county	2	doves	0
county	2	pegions	0
county	3	donkeys	7204
county	3	camels	185
county	3	hives log	4378
county	3	hives KTBH	2989
county	3	hives lang	6350
county	3	hives box	0
county	3	ostrich	0
county	3	horses	88
county	3	crocodiles	71500
county	3	guinea pigs	0
county	3	doves	0
county	3	pegions	0
county	14	donkeys	6088
county	14	camels	1
county	14	hives log	55113
county	14	hives KTBH	15133
county	14	hives lang	4597
county	14	hives box	2730
county	14	ostrich	0
county	14	horses	0
county	14	crocodiles	0
county	14	guinea pigs	0
county	14	doves	0
county	14	pegions	0
county	20	donkeys	5392
county	20	camels	0
county	20	hives log	4728
county	20	hives KTBH	4768
county	20	hives lang	1954
county	20	hives box	0
county	20	ostrich	0
county	20	horses	0
county	20	crocodiles	0
county	20	guinea pigs	0
county	20	doves	0
county	20	pegions	0
county	19	donkeys	2368
county	19	camels	0
county	19	hives log	6665
county	19	hives KTBH	9345
county	19	hives lang	2747
county	19	hives box	0
county	19	ostrich	0
county	19	horses	0
county	19	crocodiles	0
county	19	guinea pigs	0
county	19	doves	0
county	19	pegions	0
county	21	donkeys	764
county	21	camels	0
county	21	hives log	5630
county	21	hives KTBH	6332
county	21	hives lang	4008
county	21	hives box	0
county	21	ostrich	2
county	21	horses	0
county	21	crocodiles	0
county	21	guinea pigs	0
county	21	doves	0
county	21	pegions	0
county	27	donkeys	2982
county	27	camels	2
county	27	hives log	13604
county	27	hives KTBH	5577
county	27	hives lang	1894
county	27	hives box	0
county	27	ostrich	3
county	27	horses	0
county	27	crocodiles	0
county	27	guinea pigs	0
county	27	doves	0
county	27	pegions	0
county	13	donkeys	8300
county	13	camels	0
county	13	hives log	326919
county	13	hives KTBH	1174
county	13	hives lang	1077
county	13	hives box	0
county	13	ostrich	0
county	13	horses	0
county	13	crocodiles	0
county	13	guinea pigs	0
county	13	doves	0
county	13	pegions	0
county	12	donkeys	22000
county	12	camels	0
county	12	hives log	60000
county	12	hives KTBH	9500
county	12	hives lang	1400
county	12	hives box	0
county	12	ostrich	0
county	12	horses	0
county	12	crocodiles	0
county	12	guinea pigs	0
county	12	doves	0
county	12	pegions	0
county	11	donkeys	46484
county	11	camels	60836
county	11	hives log	1576
county	11	hives KTBH	110
county	11	hives lang	396
county	11	hives box	0
county	11	ostrich	18
county	11	horses	0
county	11	crocodiles	0
county	11	guinea pigs	0
county	11	doves	0
county	11	pegions	0
county	10	donkeys	81942
county	10	camels	217368
county	10	hives log	2033
county	10	hives KTBH	2902
county	10	hives lang	952
county	10	hives box	0
county	10	ostrich	0
county	10	horses	0
county	10	crocodiles	0
county	10	guinea pigs	0
county	10	doves	0
county	10	pegions	0
county	33	donkeys	70249
county	33	camels	102
county	33	hives log	33018
county	33	hives KTBH	3478
county	33	hives lang	1455
county	33	hives box	0
county	33	ostrich	0
county	33	horses	0
county	33	crocodiles	0
county	33	guinea pigs	0
county	33	doves	0
county	33	pegions	0
county	46	donkeys	277
county	46	camels	0
county	46	hives log	965
county	46	hives KTBH	638
county	46	hives lang	45
county	46	hives box	0
county	46	ostrich	0
county	46	horses	0
county	46	crocodiles	0
county	46	guinea pigs	0
county	46	doves	0
county	46	pegions	0
county	45	donkeys	3800
county	45	camels	0
county	45	hives log	680
county	45	hives KTBH	4980
county	45	hives lang	663
county	45	hives box	20
county	45	ostrich	0
county	45	horses	0
county	45	crocodiles	0
county	45	guinea pigs	0
county	45	doves	0
county	45	pegions	0
county	42	donkeys	7849
county	42	camels	0
county	42	hives log	252
county	42	hives KTBH	2310
county	42	hives lang	2648
county	42	hives box	0
county	42	ostrich	2
county	42	horses	0
county	42	crocodiles	0
county	42	guinea pigs	0
county	42	doves	0
county	42	pegions	0
county	44	donkeys	4029
county	44	camels	0
county	44	hives log	1947
county	44	hives KTBH	1122
county	44	hives lang	2953
county	44	hives box	0
county	44	ostrich	0
county	44	horses	0
county	44	crocodiles	0
county	44	guinea pigs	0
county	44	doves	0
county	44	pegions	0
county	43	donkeys	27846
county	43	camels	0
county	43	hives log	328
county	43	hives KTBH	1983
county	43	hives lang	5218
county	43	hives box	0
county	43	ostrich	0
county	43	horses	0
county	43	crocodiles	0
county	43	guinea pigs	0
county	43	doves	0
county	43	pegions	0
county	25	donkeys	34711
county	25	camels	53921
county	25	hives log	32896
county	25	hives KTBH	6035
county	25	hives lang	2852
county	25	hives box	0
county	25	ostrich	0
county	25	horses	0
county	25	crocodiles	0
county	25	guinea pigs	0
county	25	doves	0
county	25	pegions	0
county	18	donkeys	6800
county	18	camels	0
county	18	hives log	9167
county	18	hives KTBH	4332
county	18	hives lang	1748
county	18	hives box	0
county	18	ostrich	0
county	18	horses	0
county	18	crocodiles	0
county	18	guinea pigs	0
county	18	doves	0
county	18	pegions	0
county	22	donkeys	13442
county	22	camels	0
county	22	hives log	2558
county	22	hives KTBH	7160
county	22	hives lang	5091
county	22	hives box	0
county	22	ostrich	0
county	22	horses	0
county	22	crocodiles	0
county	22	guinea pigs	0
county	22	doves	0
county	22	pegions	0
county	41	donkeys	7719
county	41	camels	0
county	41	hives log	202
county	41	hives KTBH	2148
county	41	hives lang	8310
county	41	hives box	0
county	41	ostrich	0
county	41	horses	0
county	41	crocodiles	0
county	41	guinea pigs	0
county	41	doves	0
county	41	pegions	0
county	39	donkeys	0
county	39	camels	0
county	39	hives log	8879
county	39	hives KTBH	6955
county	39	hives lang	5385
county	39	hives box	0
county	39	ostrich	0
county	39	horses	3
county	39	crocodiles	0
county	39	guinea pigs	0
county	39	doves	0
county	39	pegions	14847
county	37	donkeys	0
county	37	camels	0
county	37	hives log	4934
county	37	hives KTBH	7541
county	37	hives lang	8071
county	37	hives box	0
county	37	ostrich	0
county	37	horses	0
county	37	crocodiles	0
county	37	guinea pigs	0
county	37	doves	0
county	37	pegions	0
county	38	donkeys	1050
county	38	camels	0
county	38	hives log	650
county	38	hives KTBH	1265
county	38	hives lang	1896
county	38	hives box	0
county	38	ostrich	0
county	38	horses	0
county	38	crocodiles	0
county	38	guinea pigs	3420
county	38	doves	0
county	38	pegions	0
county	29	donkeys	9526
county	29	camels	0
county	29	hives log	15050
county	29	hives KTBH	7267
county	29	hives lang	2929
county	29	hives box	0
county	29	ostrich	0
county	29	horses	0
county	29	crocodiles	0
county	29	guinea pigs	0
county	29	doves	0
county	29	pegions	0
county	30	donkeys	14911
county	30	camels	10619
county	30	hives log	125414
county	30	hives KTBH	13935
county	30	hives lang	2366
county	30	hives box	0
county	30	ostrich	0
county	30	horses	0
county	30	crocodiles	0
county	30	guinea pigs	0
county	30	doves	799
county	31	donkeys	73837
county	31	camels	0
county	31	hives log	24878
county	31	hives KTBH	11767
county	31	hives lang	2316
county	31	hives box	0
county	31	ostrich	102
county	31	horses	0
county	31	crocodiles	0
county	31	guinea pigs	0
county	31	doves	0
county	31	pegions	0
county	35	donkeys	19630
county	35	camels	0
county	35	hives log	8585
county	35	hives KTBH	4547
county	35	hives lang	697
county	35	hives box	0
county	35	ostrich	0
county	35	horses	0
county	35	crocodiles	0
county	35	guinea pigs	0
county	35	doves	0
county	35	pegions	0
county	28	donkeys	14745
county	28	camels	50
county	28	hives log	53046
county	28	hives KTBH	1036
county	28	hives lang	142
county	28	hives box	0
county	28	ostrich	0
county	28	horses	0
county	28	crocodiles	0
county	28	guinea pigs	0
county	28	doves	0
county	28	pegions	0
county	47	donkeys	4859
county	47	camels	0
county	47	hives log	314
county	47	hives KTBH	2779
county	47	hives lang	1309
county	47	hives box	0
county	47	ostrich	0
county	47	horses	0
county	47	crocodiles	0
county	47	guinea pigs	0
county	47	doves	0
county	47	pegions	0
county	23	donkeys	558189
county	23	camels	832462
county	23	hives log	0
county	23	hives KTBH	0
county	23	hives lang	0
county	23	hives box	0
county	23	ostrich	0
county	23	horses	0
county	23	crocodiles	0
county	23	guinea pigs	0
county	23	doves	0
county	23	pegions	0
county	9	donkeys	194285
county	9	camels	596863
county	9	hives log	9418
county	9	hives KTBH	0
county	9	hives lang	0
county	9	hives box	0
county	9	ostrich	0
county	9	horses	0
county	9	crocodiles	0
county	9	guinea pigs	0
county	9	doves	0
county	9	pegions	0
county	40	donkeys	853
county	40	camels	0
county	40	hives log	35000
county	40	hives KTBH	0
county	40	hives lang	0
county	40	hives box	0
county	40	ostrich	0
county	40	horses	0
county	40	crocodiles	0
county	40	guinea pigs	0
county	40	doves	0
county	40	pegions	4596
country	KE	donkeys	1882785
country	KE	camels	2937262
country	KE	hives log	1092702
country	KE	hives KTBH	201257
country	KE	hives lang	114280
country	KE	hives box	2780
country	KE	ostrich	2928
country	KE	horses	91
country	KE	crocodiles	71500
country	KE	guinea pigs	3420
country	KE	doves	799
country	KE	pegions	19443
county	32	donkeys	0
county	32	camels	0
county	32	hives log	0
county	32	hives KTBH	0
county	32	hives lang	0
county	32	hives box	0
county	32	ostrich	0
county	32	horses	0
county	32	crocodiles	0
county	32	guinea pigs	0
county	32	doves	0
county	32	pegions	0
county	36	donkeys	0
county	36	camels	0
county	36	hives log	0
county	36	hives KTBH	0
county	36	hives lang	0
county	36	hives box	0
county	36	ostrich	0
county	36	horses	0
county	36	crocodiles	0
county	36	guinea pigs	0
county	36	doves	0
county	36	pegions	0
\.


--
-- Data for Name: livestock_products; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY livestock_products (geo_level, geo_code, livestock_products, total) FROM stdin;
county	26	mik (kg)	106000
county	26	beef (kg)	1780
county	26	wool (kg)	0
county	26	goat meat (kg)	100
county	26	mutton (kg)	400
county	26	pork (kg)	3.5
county	26	rabbit meat (kg)	1.89999999999999991
county	26	poultry meat (kg)	98
county	26	camel meat (kg)	0
county	26	honey (kg)	90
county	26	wax (kg)	0
county	26	eggs (tray)	16686.2000000000007
county	26	hides (no)	0
county	26	skin (no)	0
county	24	mik (kg)	8596.79999999999927
county	24	beef (kg)	5475
county	24	wool (kg)	88.2000000000000028
county	24	goat meat (kg)	243
county	24	mutton (kg)	207.900000000000006
county	24	pork (kg)	0.599999999999999978
county	24	rabbit meat (kg)	0.900000000000000022
county	24	poultry meat (kg)	128.199999999999989
county	24	camel meat (kg)	7.70000000000000018
county	24	honey (kg)	162.800000000000011
county	24	wax (kg)	16.3000000000000007
county	24	eggs (tray)	2878
county	24	hides (no)	66.7000000000000028
county	24	skin (no)	17.1999999999999993
county	31	mik (kg)	40920
county	31	beef (kg)	3115.30000000000018
county	31	wool (kg)	7
county	31	goat meat (kg)	666
county	31	mutton (kg)	702
county	31	pork (kg)	76.7000000000000028
county	31	rabbit meat (kg)	9.19999999999999929
county	31	poultry meat (kg)	299.100000000000023
county	31	camel meat (kg)	162
county	31	honey (kg)	261.300000000000011
county	31	wax (kg)	87.0999999999999943
county	31	eggs (tray)	448.699999999999989
county	31	hides (no)	0
county	31	skin (no)	0
county	34	mik (kg)	16166.7000000000007
county	34	beef (kg)	2450.69999999999982
county	34	wool (kg)	0
county	34	goat meat (kg)	439.699999999999989
county	34	mutton (kg)	327.899999999999977
county	34	pork (kg)	34.5
county	34	rabbit meat (kg)	9.30000000000000071
county	34	poultry meat (kg)	1003.60000000000002
county	34	camel meat (kg)	2.39999999999999991
county	34	honey (kg)	31.5
county	34	wax (kg)	0.699999999999999956
county	34	eggs (tray)	65.7000000000000028
county	34	hides (no)	0
county	34	skin (no)	0
county	15	mik (kg)	17804.7000000000007
county	15	beef (kg)	5804.39999999999964
county	15	wool (kg)	0
county	15	goat meat (kg)	2448.90000000000009
county	15	mutton (kg)	132.400000000000006
county	15	pork (kg)	21.3000000000000007
county	15	rabbit meat (kg)	0.800000000000000044
county	15	poultry meat (kg)	4450.69999999999982
county	15	camel meat (kg)	0
county	15	honey (kg)	867.700000000000045
county	15	wax (kg)	114.799999999999997
county	15	eggs (tray)	513.399999999999977
county	15	hides (no)	6.90000000000000036
county	15	skin (no)	239.699999999999989
county	16	mik (kg)	50208.8000000000029
county	16	beef (kg)	8122.69999999999982
county	16	wool (kg)	0
county	16	goat meat (kg)	1078.20000000000005
county	16	mutton (kg)	268.699999999999989
county	16	pork (kg)	379
county	16	rabbit meat (kg)	28.1999999999999993
county	16	poultry meat (kg)	1774.70000000000005
county	16	camel meat (kg)	0
county	16	honey (kg)	170.5
county	16	wax (kg)	304
county	16	eggs (tray)	8210.29999999999927
county	16	hides (no)	99
county	16	skin (no)	10.5
county	17	mik (kg)	32735.4000000000015
county	17	beef (kg)	2395.69999999999982
county	17	wool (kg)	0
county	17	goat meat (kg)	316.300000000000011
county	17	mutton (kg)	28.5
county	17	pork (kg)	3.5
county	17	rabbit meat (kg)	3.39999999999999991
county	17	poultry meat (kg)	315.5
county	17	camel meat (kg)	1.30000000000000004
county	17	honey (kg)	167.099999999999994
county	17	wax (kg)	16.6999999999999993
county	17	eggs (tray)	424.300000000000011
county	17	hides (no)	14.4000000000000004
county	17	skin (no)	44.2000000000000028
county	7	mik (kg)	13755.7999999999993
county	7	beef (kg)	2565.19999999999982
county	7	wool (kg)	0
county	7	goat meat (kg)	1083.90000000000009
county	7	mutton (kg)	141.199999999999989
county	7	pork (kg)	0
county	7	rabbit meat (kg)	0
county	7	poultry meat (kg)	127.799999999999997
county	7	camel meat (kg)	4903.30000000000018
county	7	honey (kg)	9.09999999999999964
county	7	wax (kg)	0
county	7	eggs (tray)	565.100000000000023
county	7	hides (no)	0
county	7	skin (no)	0
county	5	mik (kg)	1850
county	5	beef (kg)	31
county	5	wool (kg)	0
county	5	goat meat (kg)	83.5
county	5	mutton (kg)	122.099999999999994
county	5	pork (kg)	0
county	5	rabbit meat (kg)	0.200000000000000011
county	5	poultry meat (kg)	7.70000000000000018
county	5	camel meat (kg)	0
county	5	honey (kg)	26.5
county	5	wax (kg)	2
county	5	eggs (tray)	21.8000000000000007
county	5	hides (no)	0
county	5	skin (no)	0
county	4	mik (kg)	57973.0999999999985
county	4	beef (kg)	569.799999999999955
county	4	wool (kg)	0
county	4	goat meat (kg)	382.699999999999989
county	4	mutton (kg)	150.800000000000011
county	4	pork (kg)	0
county	4	rabbit meat (kg)	0.699999999999999956
county	4	poultry meat (kg)	35.6000000000000014
county	4	camel meat (kg)	159.800000000000011
county	4	honey (kg)	25.1999999999999993
county	4	wax (kg)	2.60000000000000009
county	4	eggs (tray)	418.699999999999989
county	4	hides (no)	0
county	4	skin (no)	0
county	8	mik (kg)	83330.3000000000029
county	8	beef (kg)	487.399999999999977
county	8	wool (kg)	0
county	8	goat meat (kg)	1537.59999999999991
county	8	mutton (kg)	1317.90000000000009
county	8	pork (kg)	0
county	8	rabbit meat (kg)	0
county	8	poultry meat (kg)	38.3999999999999986
county	8	camel meat (kg)	1988.79999999999995
county	8	honey (kg)	3.39999999999999991
county	8	wax (kg)	0.100000000000000006
county	8	eggs (tray)	2947.09999999999991
county	8	hides (no)	0
county	8	skin (no)	0
county	1	mik (kg)	1195.09999999999991
county	1	beef (kg)	229.400000000000006
county	1	wool (kg)	0
county	1	goat meat (kg)	2.20000000000000018
county	1	mutton (kg)	2
county	1	pork (kg)	3.39999999999999991
county	1	rabbit meat (kg)	0.400000000000000022
county	1	poultry meat (kg)	545.299999999999955
county	1	camel meat (kg)	0
county	1	honey (kg)	0.5
county	1	wax (kg)	0
county	1	eggs (tray)	2612.19999999999982
county	1	hides (no)	2.29999999999999982
county	1	skin (no)	3.79999999999999982
county	6	mik (kg)	17230.4000000000015
county	6	beef (kg)	1075
county	6	wool (kg)	0
county	6	goat meat (kg)	159
county	6	mutton (kg)	31.1000000000000014
county	6	pork (kg)	6.79999999999999982
county	6	rabbit meat (kg)	0.699999999999999956
county	6	poultry meat (kg)	251.900000000000006
county	6	camel meat (kg)	4.29999999999999982
county	6	honey (kg)	21.1999999999999993
county	6	wax (kg)	1.89999999999999991
county	6	eggs (tray)	261.199999999999989
county	6	hides (no)	0
county	6	skin (no)	0
county	2	mik (kg)	3142.69999999999982
county	2	beef (kg)	2009.09999999999991
county	2	wool (kg)	0
county	2	goat meat (kg)	230.599999999999994
county	2	mutton (kg)	60.8999999999999986
county	2	pork (kg)	2
county	2	rabbit meat (kg)	0.299999999999999989
county	2	poultry meat (kg)	207.5
county	2	camel meat (kg)	1.5
county	2	honey (kg)	1
county	2	wax (kg)	0.299999999999999989
county	2	eggs (tray)	70.2000000000000028
county	2	hides (no)	96.0999999999999943
county	2	skin (no)	71.2000000000000028
county	3	mik (kg)	44969.1999999999971
county	3	beef (kg)	2196.80000000000018
county	3	wool (kg)	0
county	3	goat meat (kg)	731
county	3	mutton (kg)	82.0999999999999943
county	3	pork (kg)	0.299999999999999989
county	3	rabbit meat (kg)	0.100000000000000006
county	3	poultry meat (kg)	228
county	3	camel meat (kg)	0.200000000000000011
county	3	honey (kg)	36.7999999999999972
county	3	wax (kg)	0.699999999999999956
county	3	eggs (tray)	1174.90000000000009
county	3	hides (no)	0
county	3	skin (no)	0
county	21	mik (kg)	167609.700000000012
county	21	beef (kg)	2692.30000000000018
county	21	wool (kg)	0
county	21	goat meat (kg)	168.400000000000006
county	21	mutton (kg)	33.7999999999999972
county	21	pork (kg)	34
county	21	rabbit meat (kg)	0
county	21	poultry meat (kg)	1617.59999999999991
county	21	camel meat (kg)	0
county	21	honey (kg)	93.7000000000000028
county	21	wax (kg)	9.30000000000000071
county	21	eggs (tray)	1952.70000000000005
county	21	hides (no)	0
county	21	skin (no)	0
county	14	mik (kg)	34859
county	14	beef (kg)	979.5
county	14	wool (kg)	0
county	14	goat meat (kg)	263.399999999999977
county	14	mutton (kg)	76.2000000000000028
county	14	pork (kg)	146.199999999999989
county	14	rabbit meat (kg)	2.20000000000000018
county	14	poultry meat (kg)	209.699999999999989
county	14	camel meat (kg)	0
county	14	honey (kg)	458.300000000000011
county	14	wax (kg)	17.8000000000000007
county	14	eggs (tray)	17685.7999999999993
county	14	hides (no)	0
county	14	skin (no)	0
county	20	mik (kg)	77122.3000000000029
county	20	beef (kg)	1070.09999999999991
county	20	wool (kg)	0
county	20	goat meat (kg)	65.2000000000000028
county	20	mutton (kg)	9.5
county	20	pork (kg)	24.8000000000000007
county	20	rabbit meat (kg)	13
county	20	poultry meat (kg)	2684
county	20	camel meat (kg)	0
county	20	honey (kg)	29.1000000000000014
county	20	wax (kg)	0
county	20	eggs (tray)	676.100000000000023
county	20	hides (no)	0
county	20	skin (no)	0
county	19	mik (kg)	175747.899999999994
county	19	beef (kg)	2599
county	19	wool (kg)	0
county	19	goat meat (kg)	395.399999999999977
county	19	mutton (kg)	714.600000000000023
county	19	pork (kg)	265.600000000000023
county	19	rabbit meat (kg)	0
county	19	poultry meat (kg)	250.5
county	19	camel meat (kg)	0
county	19	honey (kg)	17.1999999999999993
county	19	wax (kg)	0
county	19	eggs (tray)	9345.29999999999927
county	19	hides (no)	41.8999999999999986
county	19	skin (no)	14.4000000000000004
county	27	mik (kg)	196083.100000000006
county	27	beef (kg)	487
county	27	wool (kg)	0
county	27	goat meat (kg)	17.1000000000000014
county	27	mutton (kg)	49.7999999999999972
county	27	pork (kg)	53.5
county	27	rabbit meat (kg)	3.20000000000000018
county	27	poultry meat (kg)	14.0999999999999996
county	27	camel meat (kg)	0
county	27	honey (kg)	187.800000000000011
county	27	wax (kg)	15.9000000000000004
county	27	eggs (tray)	5390.19999999999982
county	27	hides (no)	89.2999999999999972
county	27	skin (no)	38.7999999999999972
county	13	mik (kg)	34246.5999999999985
county	13	beef (kg)	819
county	13	wool (kg)	0
county	13	goat meat (kg)	113.799999999999997
county	13	mutton (kg)	93.0999999999999943
county	13	pork (kg)	16.5
county	13	rabbit meat (kg)	25.8000000000000007
county	13	poultry meat (kg)	269
county	13	camel meat (kg)	0
county	13	honey (kg)	1382
county	13	wax (kg)	0
county	13	eggs (tray)	589.5
county	13	hides (no)	29.5
county	13	skin (no)	14.6999999999999993
county	12	mik (kg)	120200
county	12	beef (kg)	4000
county	12	wool (kg)	19.8000000000000007
county	12	goat meat (kg)	1425
county	12	mutton (kg)	681
county	12	pork (kg)	83.5
county	12	rabbit meat (kg)	6.20000000000000018
county	12	poultry meat (kg)	103.700000000000003
county	12	camel meat (kg)	0
county	12	honey (kg)	191.599999999999994
county	12	wax (kg)	0
county	12	eggs (tray)	985
county	12	hides (no)	0
county	12	skin (no)	0
county	11	mik (kg)	3811.40000000000009
county	11	beef (kg)	540
county	11	wool (kg)	0
county	11	goat meat (kg)	214
county	11	mutton (kg)	233
county	11	pork (kg)	0
county	11	rabbit meat (kg)	0
county	11	poultry meat (kg)	20
county	11	camel meat (kg)	0
county	11	honey (kg)	32
county	11	wax (kg)	0
county	11	eggs (tray)	900
county	11	hides (no)	2.20000000000000018
county	11	skin (no)	0
county	10	mik (kg)	4131
county	10	beef (kg)	7036.5
county	10	wool (kg)	0
county	10	goat meat (kg)	5752.69999999999982
county	10	mutton (kg)	4395.60000000000036
county	10	pork (kg)	0
county	10	rabbit meat (kg)	0
county	10	poultry meat (kg)	26.5
county	10	camel meat (kg)	3415.30000000000018
county	10	honey (kg)	34.7000000000000028
county	10	wax (kg)	0.100000000000000006
county	10	eggs (tray)	773.899999999999977
county	10	hides (no)	61.2000000000000028
county	10	skin (no)	9.19999999999999929
county	33	mik (kg)	16854.2999999999993
county	33	beef (kg)	2402
county	33	wool (kg)	649
county	33	goat meat (kg)	835.799999999999955
county	33	mutton (kg)	2289.80000000000018
county	33	pork (kg)	0
county	33	rabbit meat (kg)	1.60000000000000009
county	33	poultry meat (kg)	1395.90000000000009
county	33	camel meat (kg)	0
county	33	honey (kg)	231.699999999999989
county	33	wax (kg)	9.09999999999999964
county	33	eggs (tray)	1074.59999999999991
county	33	hides (no)	58
county	33	skin (no)	5.59999999999999964
county	36	mik (kg)	72488.8999999999942
county	36	beef (kg)	1292.90000000000009
county	36	wool (kg)	0
county	36	goat meat (kg)	32.2999999999999972
county	36	mutton (kg)	30.6000000000000014
county	36	pork (kg)	0
county	36	rabbit meat (kg)	2.20000000000000018
county	36	poultry meat (kg)	375.800000000000011
county	36	camel meat (kg)	0
county	36	honey (kg)	95.4000000000000057
county	36	wax (kg)	14.1999999999999993
county	36	eggs (tray)	2049.09999999999991
county	36	hides (no)	0
county	36	skin (no)	0
county	46	mik (kg)	9810.10000000000036
county	46	beef (kg)	447
county	46	wool (kg)	0
county	46	goat meat (kg)	267.800000000000011
county	46	mutton (kg)	36.8999999999999986
county	46	pork (kg)	152.099999999999994
county	46	rabbit meat (kg)	41.6000000000000014
county	46	poultry meat (kg)	518.899999999999977
county	46	camel meat (kg)	0
county	46	honey (kg)	289.600000000000023
county	46	wax (kg)	20.1000000000000014
county	46	eggs (tray)	8609.70000000000073
county	46	hides (no)	20
county	46	skin (no)	10.5
county	45	mik (kg)	182819.799999999988
county	45	beef (kg)	1674
county	45	wool (kg)	0
county	45	goat meat (kg)	426.399999999999977
county	45	mutton (kg)	64.5999999999999943
county	45	pork (kg)	5.20000000000000018
county	45	rabbit meat (kg)	0
county	45	poultry meat (kg)	1648.59999999999991
county	45	camel meat (kg)	0
county	45	honey (kg)	66.0999999999999943
county	45	wax (kg)	21.8000000000000007
county	45	eggs (tray)	1682.40000000000009
county	45	hides (no)	46
county	45	skin (no)	18.1000000000000014
county	42	mik (kg)	24730
county	42	beef (kg)	2768.09999999999991
county	42	wool (kg)	0
county	42	goat meat (kg)	12603
county	42	mutton (kg)	13241
county	42	pork (kg)	19579
county	42	rabbit meat (kg)	0.200000000000000011
county	42	poultry meat (kg)	33354
county	42	camel meat (kg)	0
county	42	honey (kg)	34.7000000000000028
county	42	wax (kg)	2.79999999999999982
county	42	eggs (tray)	723.899999999999977
county	42	hides (no)	0
county	42	skin (no)	0
county	44	mik (kg)	43574.5999999999985
county	44	beef (kg)	6536.10000000000036
county	44	wool (kg)	0
county	44	goat meat (kg)	815.899999999999977
county	44	mutton (kg)	1331.5
county	44	pork (kg)	96.2999999999999972
county	44	rabbit meat (kg)	0
county	44	poultry meat (kg)	1728.09999999999991
county	44	camel meat (kg)	0
county	44	honey (kg)	67.2000000000000028
county	44	wax (kg)	11.5
county	44	eggs (tray)	2548
county	44	hides (no)	76.7000000000000028
county	44	skin (no)	74.7000000000000028
county	43	mik (kg)	38051.8000000000029
county	43	beef (kg)	4655.39999999999964
county	43	wool (kg)	0
county	43	goat meat (kg)	893.600000000000023
county	43	mutton (kg)	2455.5
county	43	pork (kg)	37.1000000000000014
county	43	rabbit meat (kg)	10.4000000000000004
county	43	poultry meat (kg)	924.100000000000023
county	43	camel meat (kg)	0
county	43	honey (kg)	133.199999999999989
county	43	wax (kg)	0.100000000000000006
county	43	eggs (tray)	573.399999999999977
county	43	hides (no)	0
county	43	skin (no)	0
county	25	mik (kg)	7124
county	25	beef (kg)	270.300000000000011
county	25	wool (kg)	0
county	25	goat meat (kg)	141.300000000000011
county	25	mutton (kg)	76
county	25	pork (kg)	0
county	25	rabbit meat (kg)	0
county	25	poultry meat (kg)	6.29999999999999982
county	25	camel meat (kg)	306.800000000000011
county	25	honey (kg)	159.900000000000006
county	25	wax (kg)	11.5999999999999996
county	25	eggs (tray)	19.1000000000000014
county	25	hides (no)	161.599999999999994
county	25	skin (no)	12.8000000000000007
county	18	mik (kg)	225827.600000000006
county	18	beef (kg)	1797.79999999999995
county	18	wool (kg)	164.400000000000006
county	18	goat meat (kg)	13102
county	18	mutton (kg)	37930.3000000000029
county	18	pork (kg)	16303
county	18	rabbit meat (kg)	10
county	18	poultry meat (kg)	18740.9000000000015
county	18	camel meat (kg)	0
county	18	honey (kg)	11449.5
county	18	wax (kg)	0
county	18	eggs (tray)	31829.9000000000015
county	18	hides (no)	32.2999999999999972
county	18	skin (no)	55.5
county	22	mik (kg)	334000.299999999988
county	22	beef (kg)	2206.90000000000009
county	22	wool (kg)	24.8000000000000007
county	22	goat meat (kg)	15828.7000000000007
county	22	mutton (kg)	19798.4000000000015
county	22	pork (kg)	2340.09999999999991
county	22	rabbit meat (kg)	107.799999999999997
county	22	poultry meat (kg)	2731.19999999999982
county	22	camel meat (kg)	0
county	22	honey (kg)	76.7000000000000028
county	22	wax (kg)	3.39999999999999991
county	22	eggs (tray)	10056.5
county	22	hides (no)	35.1000000000000014
county	22	skin (no)	36
county	41	mik (kg)	24308.5
county	41	beef (kg)	2688.09999999999991
county	41	wool (kg)	0
county	41	goat meat (kg)	639.700000000000045
county	41	mutton (kg)	312.5
county	41	pork (kg)	132.5
county	41	rabbit meat (kg)	60.5
county	41	poultry meat (kg)	1609.40000000000009
county	41	camel meat (kg)	0
county	41	honey (kg)	436.600000000000023
county	41	wax (kg)	8.09999999999999964
county	41	eggs (tray)	630.5
county	41	hides (no)	0
county	41	skin (no)	0
county	39	mik (kg)	225855.799999999988
county	39	beef (kg)	3903.09999999999991
county	39	wool (kg)	0
county	39	goat meat (kg)	32.8999999999999986
county	39	mutton (kg)	59.6000000000000014
county	39	pork (kg)	31.1999999999999993
county	39	rabbit meat (kg)	0
county	39	poultry meat (kg)	725.700000000000045
county	39	camel meat (kg)	0
county	39	honey (kg)	184.400000000000006
county	39	wax (kg)	7.5
county	39	eggs (tray)	4398.5
county	39	hides (no)	24.3999999999999986
county	39	skin (no)	134.199999999999989
county	37	mik (kg)	101984.600000000006
county	37	beef (kg)	5892.19999999999982
county	37	wool (kg)	0
county	37	goat meat (kg)	115.099999999999994
county	37	mutton (kg)	259.5
county	37	pork (kg)	494.899999999999977
county	37	rabbit meat (kg)	0
county	37	poultry meat (kg)	362.600000000000023
county	37	camel meat (kg)	0
county	37	honey (kg)	112.799999999999997
county	37	wax (kg)	3.20000000000000018
county	37	eggs (tray)	1399.29999999999995
county	37	hides (no)	0
county	37	skin (no)	63.7000000000000028
county	38	mik (kg)	27060.7999999999993
county	38	beef (kg)	35.3999999999999986
county	38	wool (kg)	0
county	38	goat meat (kg)	34.2000000000000028
county	38	mutton (kg)	6.79999999999999982
county	38	pork (kg)	32.2000000000000028
county	38	rabbit meat (kg)	4.20000000000000018
county	38	poultry meat (kg)	14.9000000000000004
county	38	camel meat (kg)	0
county	38	honey (kg)	66
county	38	wax (kg)	1.60000000000000009
county	38	eggs (tray)	620.799999999999955
county	38	hides (no)	5.59999999999999964
county	38	skin (no)	30.8000000000000007
county	29	mik (kg)	142375.899999999994
county	29	beef (kg)	839.299999999999955
county	29	wool (kg)	0
county	29	goat meat (kg)	25.1999999999999993
county	29	mutton (kg)	117.5
county	29	pork (kg)	0
county	29	rabbit meat (kg)	0
county	29	poultry meat (kg)	0
county	29	camel meat (kg)	0
county	29	honey (kg)	189.099999999999994
county	29	wax (kg)	1.89999999999999991
county	29	eggs (tray)	6962.39999999999964
county	29	hides (no)	14.9000000000000004
county	29	skin (no)	6.09999999999999964
county	30	mik (kg)	24454.9000000000015
county	30	beef (kg)	1823.70000000000005
county	30	wool (kg)	0.5
county	30	goat meat (kg)	1073.09999999999991
county	30	mutton (kg)	250.599999999999994
county	30	pork (kg)	4.70000000000000018
county	30	rabbit meat (kg)	0
county	30	poultry meat (kg)	452.600000000000023
county	30	camel meat (kg)	27.3000000000000007
county	30	honey (kg)	567.5
county	30	wax (kg)	0.800000000000000044
county	30	eggs (tray)	997.700000000000045
county	30	hides (no)	0
county	30	skin (no)	0
county	32	mik (kg)	296398.700000000012
county	32	beef (kg)	3355.19999999999982
county	32	wool (kg)	82.7999999999999972
county	32	goat meat (kg)	116.400000000000006
county	32	mutton (kg)	249.199999999999989
county	32	pork (kg)	21.1999999999999993
county	32	rabbit meat (kg)	0
county	32	poultry meat (kg)	0
county	32	camel meat (kg)	0
county	32	honey (kg)	313.199999999999989
county	32	wax (kg)	18.3000000000000007
county	32	eggs (tray)	5144.5
county	32	hides (no)	0
county	32	skin (no)	0
county	35	mik (kg)	155000
county	35	beef (kg)	1711.79999999999995
county	35	wool (kg)	0
county	35	goat meat (kg)	128.900000000000006
county	35	mutton (kg)	121
county	35	pork (kg)	5
county	35	rabbit meat (kg)	0
county	35	poultry meat (kg)	0
county	35	camel meat (kg)	0
county	35	honey (kg)	61.1000000000000014
county	35	wax (kg)	0.699999999999999956
county	35	eggs (tray)	1253.29999999999995
county	35	hides (no)	0
county	35	skin (no)	0
county	28	mik (kg)	46512.5
county	28	beef (kg)	532.899999999999977
county	28	wool (kg)	224.699999999999989
county	28	goat meat (kg)	201.5
county	28	mutton (kg)	215
county	28	pork (kg)	0.100000000000000006
county	28	rabbit meat (kg)	0
county	28	poultry meat (kg)	26.8999999999999986
county	28	camel meat (kg)	0
county	28	honey (kg)	186.800000000000011
county	28	wax (kg)	3.10000000000000009
county	28	eggs (tray)	8600
county	28	hides (no)	0
county	28	skin (no)	0
county	47	mik (kg)	38762.1999999999971
county	47	beef (kg)	2421.5
county	47	wool (kg)	0
county	47	goat meat (kg)	382.100000000000023
county	47	mutton (kg)	1286.5
county	47	pork (kg)	1423.90000000000009
county	47	rabbit meat (kg)	0
county	47	poultry meat (kg)	910
county	47	camel meat (kg)	0
county	47	honey (kg)	53.8999999999999986
county	47	wax (kg)	5.79999999999999982
county	47	eggs (tray)	1626
county	47	hides (no)	139.900000000000006
county	47	skin (no)	7.70000000000000018
county	23	mik (kg)	52601.3000000000029
county	23	beef (kg)	313.199999999999989
county	23	wool (kg)	0
county	23	goat meat (kg)	1073.29999999999995
county	23	mutton (kg)	456.800000000000011
county	23	pork (kg)	3
county	23	rabbit meat (kg)	0
county	23	poultry meat (kg)	0.900000000000000022
county	23	camel meat (kg)	240
county	23	honey (kg)	103.099999999999994
county	23	wax (kg)	0
county	23	eggs (tray)	244.099999999999994
county	23	hides (no)	264.199999999999989
county	23	skin (no)	4
county	9	mik (kg)	15769.2000000000007
county	9	beef (kg)	717.600000000000023
county	9	wool (kg)	0
county	9	goat meat (kg)	1251.79999999999995
county	9	mutton (kg)	517.600000000000023
county	9	pork (kg)	0
county	9	rabbit meat (kg)	0
county	9	poultry meat (kg)	17.3999999999999986
county	9	camel meat (kg)	1076.79999999999995
county	9	honey (kg)	5.5
county	9	wax (kg)	0.100000000000000006
county	9	eggs (tray)	155
county	9	hides (no)	0
county	9	skin (no)	0
county	40	mik (kg)	13813
county	40	beef (kg)	6635
county	40	wool (kg)	0
county	40	goat meat (kg)	252
county	40	mutton (kg)	220
county	40	pork (kg)	987
county	40	rabbit meat (kg)	3.29999999999999982
county	40	poultry meat (kg)	791.200000000000045
county	40	camel meat (kg)	0
county	40	honey (kg)	350
county	40	wax (kg)	0
county	40	eggs (tray)	4389
county	40	hides (no)	0
county	40	skin (no)	0
country	KE	mik (kg)	3429868.70000000019
country	KE	beef (kg)	113450.300000000003
country	KE	wool (kg)	1261.20000000000005
country	KE	goat meat (kg)	68190.6000000000058
country	KE	mutton (kg)	91589.6000000000058
country	KE	pork (kg)	42804.3000000000029
country	KE	rabbit meat (kg)	348.399999999999977
country	KE	poultry meat (kg)	81042.6999999999971
country	KE	camel meat (kg)	12297.5
country	KE	honey (kg)	19534.7999999999993
country	KE	wax (kg)	736.299999999999955
country	KE	eggs (tray)	171183.899999999994
country	KE	hides (no)	1388.09999999999991
country	KE	skin (no)	923.5
\.


--
-- Data for Name: mainmodeofhumanwastedisposal; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY mainmodeofhumanwastedisposal (geo_level, geo_code, "main mode of human waste disposal", total) FROM stdin;
country	KE	bucket	22828
country	KE	bush	1196509
country	KE	cess pool	29881
country	KE	main sewer	674541
country	KE	other	14104
country	KE	septic tank	299030
county	2	bucket	196
county	2	bush	62342
county	2	cess pool	574
county	2	main sewer	614
county	2	other	166
county	2	septic tank	2723
county	3	bucket	1152
county	3	bush	67545
county	3	cess pool	930
county	3	main sewer	3234
county	3	other	273
county	5	bucket	92
county	5	bush	4822
county	5	cess pool	97
county	5	main sewer	75
county	5	other	78
county	5	septic tank	759
county	7	bucket	308
county	7	bush	46934
county	7	cess pool	150
county	7	main sewer	1121
county	7	other	557
county	7	septic tank	851
county	9	bucket	168
county	9	bush	82437
county	9	cess pool	226
county	9	main sewer	122
county	9	other	404
county	10	bucket	24
county	10	bush	36636
county	10	cess pool	23
county	10	main sewer	22
county	10	other	131
county	10	septic tank	118
county	11	bucket	36
county	11	bush	13739
county	11	cess pool	17
county	11	main sewer	1557
county	11	other	107
county	12	bucket	277
county	12	bush	8257
county	12	cess pool	874
county	12	main sewer	2306
county	12	other	540
county	12	septic tank	6029
county	14	bucket	78
county	14	bush	2188
county	14	cess pool	469
county	14	main sewer	3264
county	14	other	83
county	15	bucket	86
county	15	bush	63204
county	15	cess pool	217
county	15	main sewer	433
county	15	other	216
county	15	septic tank	1269
county	16	bucket	307
county	16	bush	6989
county	16	cess pool	1175
county	16	main sewer	11666
county	16	other	524
county	16	septic tank	8944
county	17	bucket	78
county	17	bush	3811
county	17	cess pool	249
county	17	main sewer	1032
county	17	other	74
county	20	bucket	245
county	20	bush	807
county	20	cess pool	252
county	20	main sewer	1222
county	20	other	147
county	20	septic tank	4985
county	40	bucket	135
county	40	bush	12033
county	40	cess pool	178
county	40	main sewer	545
county	40	other	223
county	21	bucket	116
county	21	bush	415
county	22	bucket	491
county	22	bush	1118
county	22	cess pool	1862
county	22	main sewer	31288
county	22	other	264
county	22	septic tank	44518
county	28	bucket	51
county	28	bush	14465
county	28	cess pool	33
county	28	main sewer	295
county	28	other	34
county	30	bucket	40
county	30	bush	47510
county	30	cess pool	80
county	30	main sewer	296
county	30	other	59
county	30	septic tank	1111
county	31	bucket	84
county	31	bush	11626
county	31	cess pool	194
county	31	main sewer	10324
county	31	other	70
county	34	bucket	232
county	34	bush	44197
county	34	cess pool	478
county	34	main sewer	2407
county	34	other	316
county	34	septic tank	17157
county	35	bucket	129
county	35	bush	10080
county	35	cess pool	107
county	35	main sewer	2695
county	35	other	78
county	36	bucket	96
county	36	bush	8639
county	36	cess pool	144
county	36	main sewer	565
county	36	other	113
county	36	septic tank	546
county	37	bucket	336
county	37	bush	4941
county	1	bucket	3040
county	1	bush	5723
county	1	cess pool	3698
county	1	main sewer	37225
county	1	other	494
county	1	septic tank	35307
county	3	septic tank	14764
county	4	bucket	104
county	4	bush	33291
county	4	cess pool	30
county	4	main sewer	132
county	4	other	103
county	4	septic tank	261
county	6	bucket	31
county	6	bush	3948
county	6	cess pool	185
county	6	main sewer	953
county	6	other	86
county	6	septic tank	3223
county	8	bucket	6660
county	8	bush	67723
county	8	cess pool	59
county	8	main sewer	151
county	8	other	239
county	8	septic tank	329
county	9	septic tank	87
county	11	septic tank	622
county	13	bucket	8
county	13	bush	2541
county	13	cess pool	9
county	13	main sewer	19
county	13	other	26
county	13	septic tank	81
county	14	septic tank	4076
county	17	septic tank	632
county	18	bucket	116
county	18	bush	223
county	18	cess pool	110
county	18	main sewer	346
county	18	other	39
county	18	septic tank	1022
county	19	bucket	196
county	19	bush	486
county	19	cess pool	584
county	19	main sewer	9633
county	19	other	34
county	19	septic tank	7083
county	25	bucket	19
county	25	bush	34746
county	25	cess pool	30
county	25	main sewer	94
county	25	other	33
county	25	septic tank	295
county	40	septic tank	808
county	21	cess pool	419
county	21	main sewer	3967
county	21	other	101
county	21	septic tank	3578
county	23	bucket	67
county	23	bush	100997
county	23	cess pool	133
county	23	main sewer	192
county	23	other	230
county	23	septic tank	252
county	24	bucket	41
county	24	bush	62901
county	24	cess pool	56
county	24	main sewer	132
county	24	other	42
county	24	septic tank	156
county	26	bucket	173
county	26	bush	4346
county	26	cess pool	200
county	26	main sewer	2802
county	26	other	261
county	26	septic tank	1377
county	27	bucket	293
county	27	bush	3374
county	27	cess pool	315
county	27	main sewer	16411
county	27	other	330
county	27	septic tank	6845
county	28	septic tank	333
county	29	bucket	58
county	29	bush	7173
county	29	cess pool	146
county	29	main sewer	599
county	29	other	295
county	29	septic tank	663
county	31	septic tank	1886
county	32	bucket	554
county	32	bush	11262
county	32	cess pool	3148
county	32	main sewer	32864
county	32	other	339
county	32	septic tank	14507
county	33	bucket	122
county	33	bush	81700
county	33	cess pool	122
county	33	main sewer	755
county	33	other	209
county	33	septic tank	1429
county	35	septic tank	1316
county	37	cess pool	466
county	37	main sewer	5272
county	37	other	570
county	37	septic tank	2879
county	38	bucket	55
county	38	bush	908
county	38	cess pool	78
county	38	main sewer	374
county	38	other	98
county	38	septic tank	275
county	39	bucket	303
county	39	bush	8060
county	39	cess pool	282
county	39	main sewer	1936
county	39	other	743
county	39	septic tank	2086
county	41	bucket	154
county	41	bush	39793
county	41	cess pool	199
county	41	main sewer	396
county	41	other	385
county	41	septic tank	512
county	42	bucket	275
county	42	bush	27440
county	42	cess pool	294
county	42	main sewer	10933
county	42	other	758
county	42	septic tank	5513
county	43	bucket	171
county	43	bush	79509
county	43	cess pool	111
county	43	main sewer	1869
county	43	other	481
county	43	septic tank	354
county	44	bucket	215
county	44	bush	59404
county	44	cess pool	125
county	44	main sewer	861
county	44	other	245
county	44	septic tank	595
county	45	bucket	128
county	45	bush	1726
county	45	cess pool	214
county	45	main sewer	1640
county	45	other	304
county	45	septic tank	1191
county	47	bucket	5205
county	47	bush	3962
county	47	cess pool	10489
county	47	main sewer	469830
county	47	other	3180
county	46	bucket	83
county	46	bush	538
county	46	cess pool	50
county	46	main sewer	72
county	46	other	22
county	46	septic tank	273
county	47	septic tank	95410
\.


--
-- Data for Name: mainsourceofwater; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY mainsourceofwater (geo_level, geo_code, "main source of water", total) FROM stdin;
county	22	jabia/rain/harvested	4620
county	22	lake	3873
county	22	other	164
county	22	piped	158445
county	22	piped into dwelling	60224
county	22	pond/dam	163
county	22	spring/well/borehole	153734
county	22	stream	57079
county	22	water vendor	44148
county	28	jabia/rain/harvested	148
county	28	lake	606
county	28	other	29
county	28	piped	13426
county	28	piped into dwelling	1856
county	28	pond/dam	60
county	28	spring/well/borehole	18869
county	28	stream	42315
county	28	water vendor	246
county	30	jabia/rain/harvested	440
county	30	lake	7123
county	30	other	3384
county	30	piped	13623
county	30	piped into dwelling	1925
county	30	pond/dam	2344
county	30	spring/well/borehole	22901
county	30	stream	57714
county	30	water vendor	1195
county	34	jabia/rain/harvested	1325
county	34	lake	6889
county	34	other	261
county	34	piped	48283
county	34	piped into dwelling	15602
county	34	pond/dam	299
county	34	spring/well/borehole	60198
county	34	stream	15482
county	34	water vendor	25125
county	35	jabia/rain/harvested	935
county	35	lake	1334
county	35	other	39
county	35	piped	23743
county	35	piped into dwelling	15249
county	35	pond/dam	90
county	35	spring/well/borehole	31603
county	35	stream	52052
county	35	water vendor	2536
county	36	jabia/rain/harvested	2353
county	36	lake	26480
county	36	other	49
county	36	piped	16819
county	36	piped into dwelling	7910
county	36	pond/dam	229
county	36	spring/well/borehole	44261
county	36	stream	75666
county	36	water vendor	1147
county	37	jabia/rain/harvested	1250
county	37	lake	2463
county	37	other	109
county	37	piped	14459
county	37	piped into dwelling	6263
county	37	pond/dam	264
county	3	lake	26218
county	7	jabia/rain/harvested	618
county	7	lake	3797
county	7	other	9514
county	7	piped	24492
county	7	piped into dwelling	3233
county	7	pond/dam	120
county	7	spring/well/borehole	46371
county	7	stream	7506
county	11	jabia/rain/harvested	71
county	11	lake	213
county	11	other	162
county	11	piped	13413
county	11	piped into dwelling	2010
county	11	pond/dam	3
county	11	spring/well/borehole	11018
county	11	stream	3386
county	14	jabia/rain/harvested	607
county	14	lake	4662
county	14	other	146
county	14	piped	37288
county	14	piped into dwelling	11810
county	14	pond/dam	99
county	14	spring/well/borehole	32127
county	14	stream	40822
county	14	water vendor	4122
county	15	jabia/rain/harvested	1336
county	15	lake	9583
county	15	other	49
county	15	piped	13758
county	15	piped into dwelling	1968
county	15	pond/dam	294
county	20	jabia/rain/harvested	756
county	20	lake	318
county	20	other	79
county	20	piped	51515
county	20	piped into dwelling	10975
county	20	pond/dam	28
county	20	spring/well/borehole	24356
county	20	stream	63242
county	40	jabia/rain/harvested	260
county	40	lake	1800
county	40	other	44
county	40	piped	7689
county	40	piped into dwelling	986
county	40	pond/dam	5033
county	40	spring/well/borehole	118850
county	40	stream	18793
county	40	water vendor	770
county	37	spring/well/borehole	248628
county	37	stream	80202
county	37	water vendor	2041
county	39	jabia/rain/harvested	394
county	39	lake	729
county	39	other	55
county	39	piped	23765
county	39	piped into dwelling	4186
county	39	pond/dam	168
county	39	spring/well/borehole	212514
county	39	stream	25720
county	39	water vendor	3293
county	42	jabia/rain/harvested	2362
county	42	lake	9735
county	42	other	72
county	42	piped	49658
county	42	piped into dwelling	7653
county	42	pond/dam	5287
county	42	spring/well/borehole	76589
county	42	stream	55491
county	43	jabia/rain/harvested	1353
county	43	lake	24289
county	43	other	114
county	43	piped	9969
county	43	piped into dwelling	1625
county	43	pond/dam	34914
county	43	spring/well/borehole	66615
county	43	stream	64696
county	43	water vendor	2680
county	45	jabia/rain/harvested	2510
county	45	lake	437
county	45	other	55
county	45	piped	8007
county	45	piped into dwelling	2449
county	45	pond/dam	147
county	45	spring/well/borehole	170166
county	45	stream	84837
county	21	jabia/rain/harvested	8537
county	21	lake	1583
county	21	other	82
county	21	piped	46955
county	21	piped into dwelling	10802
county	21	pond/dam	96
county	21	spring/well/borehole	57400
county	21	stream	112927
county	21	water vendor	4108
county	29	jabia/rain/harvested	859
county	29	lake	1656
county	29	other	30
county	29	piped	17747
county	29	piped into dwelling	3234
county	29	pond/dam	116
county	29	spring/well/borehole	64729
county	29	stream	64381
county	29	water vendor	1321
county	31	jabia/rain/harvested	1580
county	31	lake	7847
county	31	other	48
county	31	piped	21809
county	31	piped into dwelling	8753
county	31	pond/dam	40
county	31	spring/well/borehole	32560
county	31	stream	26873
county	31	water vendor	3604
county	32	jabia/rain/harvested	15511
county	32	lake	8131
county	32	other	609
county	32	piped	118036
county	32	piped into dwelling	32572
county	32	pond/dam	1625
county	32	spring/well/borehole	106202
county	32	stream	69081
county	32	water vendor	58069
county	33	jabia/rain/harvested	1589
county	33	lake	22845
county	33	other	672
county	33	piped	10241
county	33	piped into dwelling	1401
county	33	pond/dam	291
county	33	spring/well/borehole	43601
county	33	stream	78939
county	33	water vendor	9641
county	44	jabia/rain/harvested	802
county	44	lake	9615
county	44	other	232
county	44	piped	2901
county	44	piped into dwelling	1359
county	44	pond/dam	11291
county	44	spring/well/borehole	81080
county	44	stream	71603
county	44	water vendor	1328
county	46	jabia/rain/harvested	2140
county	46	lake	660
county	46	other	11
county	46	piped	3666
county	46	piped into dwelling	713
county	46	pond/dam	52
county	46	spring/well/borehole	66466
county	46	stream	32287
county	46	water vendor	390
county	47	jabia/rain/harvested	1691
county	47	lake	2761
county	47	other	687
county	47	piped	514943
county	47	piped into dwelling	230704
county	47	pond/dam	99
county	47	spring/well/borehole	70729
county	47	stream	1345
county	47	water vendor	162057
county	2	jabia/rain/harvested	701
county	2	lake	25370
county	2	other	125
county	2	piped	31361
county	2	piped into dwelling	3080
county	2	pond/dam	265
county	2	spring/well/borehole	45131
county	2	stream	13470
county	5	jabia/rain/harvested	1652
county	5	lake	1396
county	5	other	29
county	5	piped	5030
county	5	piped into dwelling	1732
county	5	pond/dam	146
county	5	spring/well/borehole	11402
county	5	stream	532
county	9	jabia/rain/harvested	6167
county	9	lake	34942
county	9	other	353
county	9	piped	5769
county	9	piped into dwelling	1426
county	9	pond/dam	118
county	9	spring/well/borehole	51713
county	9	stream	8410
county	9	water vendor	16599
county	10	jabia/rain/harvested	1008
county	10	lake	5599
county	10	other	53
county	10	piped	3747
county	10	piped into dwelling	147
county	10	pond/dam	724
county	10	spring/well/borehole	39266
county	10	stream	350
county	12	jabia/rain/harvested	3276
county	12	lake	1214
county	12	other	832
county	12	piped	170912
county	12	piped into dwelling	29737
county	12	pond/dam	449
county	12	spring/well/borehole	43660
county	12	stream	102300
county	12	water vendor	28646
county	15	spring/well/borehole	87259
county	15	stream	83955
county	15	water vendor	7289
county	16	jabia/rain/harvested	1920
county	16	lake	20640
county	16	other	138
county	16	piped	27785
county	16	piped into dwelling	9809
county	16	pond/dam	155
county	16	spring/well/borehole	114074
county	16	stream	61163
county	17	jabia/rain/harvested	1158
county	17	lake	9380
county	17	other	11
county	17	piped	36034
county	17	piped into dwelling	4529
county	17	pond/dam	77
county	17	spring/well/borehole	64460
county	17	stream	62249
county	17	water vendor	8580
county	18	jabia/rain/harvested	9675
county	18	lake	11979
county	18	other	32
county	18	piped	29594
county	18	piped into dwelling	5718
county	18	pond/dam	90
county	18	spring/well/borehole	52806
county	18	stream	29165
county	19	jabia/rain/harvested	8206
county	19	lake	1111
county	19	other	138
county	19	piped	88332
county	23	jabia/rain/harvested	56
county	23	lake	692
county	23	other	323
county	23	piped	12945
county	23	piped into dwelling	2313
county	23	pond/dam	3247
county	23	spring/well/borehole	76203
county	23	stream	25515
county	23	water vendor	1897
county	24	jabia/rain/harvested	104
county	24	lake	3270
county	24	other	15
county	24	piped	7353
county	24	piped into dwelling	1210
county	24	pond/dam	128
county	24	spring/well/borehole	26259
county	24	stream	54977
county	24	water vendor	461
county	26	jabia/rain/harvested	407
county	26	lake	1197
county	26	other	90
county	26	piped	16880
county	26	piped into dwelling	2822
county	26	pond/dam	85
county	26	spring/well/borehole	110386
county	26	stream	34441
county	26	water vendor	3809
county	27	jabia/rain/harvested	214
county	27	lake	1638
county	27	other	122
county	27	piped	50168
county	27	piped into dwelling	15465
county	27	pond/dam	135
county	27	spring/well/borehole	113923
county	27	stream	17991
county	27	water vendor	2635
county	38	jabia/rain/harvested	1497
county	38	lake	416
county	38	other	21
county	38	piped	4155
county	38	piped into dwelling	1387
county	38	pond/dam	57
county	38	spring/well/borehole	87185
county	38	stream	27406
county	38	water vendor	1223
county	41	jabia/rain/harvested	2052
county	41	lake	28184
county	41	other	38
county	41	piped	11698
county	41	piped into dwelling	1850
county	1	jabia/rain/harvested	323
county	1	lake	1102
county	1	other	147
county	1	piped	110955
county	1	piped into dwelling	31055
county	1	pond/dam	33
county	1	spring/well/borehole	59144
county	1	stream	340
county	1	water vendor	65601
county	2	water vendor	2544
county	3	jabia/rain/harvested	1418
county	3	other	582
county	3	piped	93557
county	3	piped into dwelling	14151
county	3	pond/dam	511
county	3	spring/well/borehole	42476
county	3	stream	8636
county	3	water vendor	12215
county	4	jabia/rain/harvested	82
county	4	lake	3691
county	4	other	2549
county	4	piped	5024
county	4	piped into dwelling	800
county	4	pond/dam	460
county	4	spring/well/borehole	20399
county	4	stream	12703
county	4	water vendor	1706
county	5	water vendor	265
county	6	jabia/rain/harvested	134
county	6	lake	617
county	6	other	52
county	6	piped	37451
county	6	piped into dwelling	4639
county	6	pond/dam	216
county	6	spring/well/borehole	7532
county	6	stream	16368
county	6	water vendor	4081
county	7	water vendor	2939
county	8	jabia/rain/harvested	965
county	8	lake	12091
county	8	other	211
county	8	piped	1061
county	8	piped into dwelling	249
county	8	pond/dam	26
county	8	spring/well/borehole	62867
county	8	stream	48
county	8	water vendor	11056
county	10	water vendor	6047
county	11	water vendor	1050
county	13	jabia/rain/harvested	23
county	13	lake	21
county	13	other	7
county	13	piped	2895
county	13	piped into dwelling	328
county	13	pond/dam	28
county	13	spring/well/borehole	7828
county	13	stream	16084
county	13	water vendor	179
county	16	water vendor	28816
county	18	water vendor	4820
county	19	piped into dwelling	24534
county	19	pond/dam	56
county	19	spring/well/borehole	18701
county	19	stream	55794
county	19	water vendor	4831
county	20	water vendor	2951
county	25	jabia/rain/harvested	194
county	25	lake	2624
county	25	other	22
county	25	piped	6389
county	25	piped into dwelling	441
county	25	pond/dam	233
county	25	spring/well/borehole	25100
county	25	stream	11747
county	25	water vendor	604
county	41	pond/dam	27534
county	41	spring/well/borehole	77281
county	41	stream	46921
county	41	water vendor	3476
county	42	water vendor	19872
county	45	water vendor	1075
country	KE	jabia/rain/harvested	95279
country	KE	lake	352821
country	KE	other	22586
country	KE	piped	2023745
country	KE	piped into dwelling	602884
country	KE	pond/dam	97925
country	KE	spring/well/borehole	3106622
country	KE	stream	1893004
country	KE	water vendor	573088
\.


--
-- Data for Name: maintypeoffloormaterial; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY maintypeoffloormaterial (geo_level, geo_code, "main type of floor material", total) FROM stdin;
county	30	cement	110426
county	30	earth	1856
county	30	other	80603
county	30	tiles	27425
county	30	wood	332
county	36	cement	174294
county	36	earth	954
county	36	other	131613
county	36	tiles	41125
county	36	wood	405
county	39	cement	270601
county	39	earth	789
county	39	other	214459
county	39	tiles	53831
county	39	wood	1000
county	40	cement	154080
county	40	earth	527
county	40	other	115342
county	40	tiles	37401
county	40	wood	587
county	28	cement	77538
county	28	earth	734
county	28	other	59498
county	28	tiles	16756
county	28	wood	170
county	14	cement	131198
county	14	earth	648
county	14	other	76432
county	14	tiles	53256
county	14	wood	698
county	7	cement	98270
county	7	earth	594
county	7	other	78385
county	7	tiles	18419
county	7	wood	381
county	43	cement	206108
county	43	earth	663
county	43	other	154017
county	43	tiles	50331
county	43	wood	641
county	11	cement	31305
county	11	earth	126
county	11	other	21911
county	11	tiles	9047
county	11	wood	169
county	34	cement	173063
county	34	earth	538
county	34	other	66945
county	34	tiles	99118
county	34	wood	6210
county	37	cement	355375
county	37	earth	1612
county	37	other	285209
county	37	tiles	66150
county	37	wood	1204
county	35	cement	127225
county	35	earth	1005
county	35	other	77342
county	35	tiles	48287
county	35	wood	474
county	22	cement	481787
county	22	earth	2120
county	22	other	113189
county	22	tiles	355536
county	22	wood	10567
county	3	cement	197851
county	3	earth	515
county	3	other	129139
county	3	tiles	65473
county	3	wood	2288
county	20	cement	153981
county	20	earth	735
county	20	other	92239
county	20	tiles	60133
county	20	wood	680
county	45	cement	269454
county	45	earth	1379
county	45	other	208278
county	45	tiles	57974
county	45	wood	993
county	42	cement	226137
county	42	earth	932
county	42	other	125046
county	42	tiles	95973
county	42	wood	3612
county	15	cement	205412
county	15	earth	656
county	15	other	136153
county	15	tiles	67124
county	15	wood	1182
county	2	cement	121691
county	2	earth	211
county	2	other	85386
county	2	tiles	35161
county	2	wood	803
county	31	cement	103081
county	31	earth	1033
county	31	other	67685
county	31	tiles	33491
county	31	wood	651
county	5	cement	22013
county	5	earth	73
county	5	other	13705
county	5	tiles	8143
county	5	wood	65
county	16	cement	264342
county	16	earth	500
county	16	other	105122
county	16	tiles	154263
county	16	wood	4275
county	17	cement	186280
county	17	earth	404
county	17	other	99572
county	17	tiles	85016
county	17	wood	1148
county	9	cement	125471
county	9	earth	629
county	9	other	115087
county	9	tiles	9280
county	9	wood	152
county	10	cement	56711
county	10	earth	153
county	10	other	46871
county	10	tiles	9292
county	10	wood	143
county	12	cement	380505
county	12	earth	7188
county	12	other	226948
county	12	tiles	143636
county	12	wood	1691
county	44	cement	179970
county	44	earth	832
county	44	other	129541
county	44	tiles	48681
county	44	wood	697
county	1	cement	257254
county	1	earth	637
county	1	other	36368
county	1	tiles	207480
county	1	wood	12235
county	21	cement	242332
county	21	earth	1109
county	21	other	145502
county	21	tiles	94140
county	21	wood	1321
county	47	cement	983115
county	47	earth	19169
county	47	other	87228
county	47	tiles	809278
county	47	wood	66147
county	32	cement	409097
county	32	earth	3457
county	32	other	191454
county	32	tiles	208216
county	32	wood	5045
county	29	cement	152889
county	29	earth	699
county	29	other	105529
county	29	tiles	45787
county	29	wood	619
county	33	cement	169067
county	33	earth	1040
county	33	other	142236
county	33	tiles	24696
county	33	wood	419
county	46	cement	106065
county	46	earth	552
county	46	other	80843
county	46	tiles	24221
county	46	wood	361
county	18	cement	142493
county	18	earth	2218
county	18	other	98033
county	18	tiles	40989
county	18	wood	450
county	19	cement	201353
county	19	earth	3254
county	19	other	113669
county	19	tiles	83057
county	19	wood	1068
county	25	cement	47231
county	25	earth	165
county	25	other	39058
county	25	tiles	7821
county	25	wood	86
county	41	cement	198664
county	41	earth	734
county	41	other	139196
county	41	tiles	57585
county	41	wood	793
county	6	cement	70039
county	6	earth	200
county	6	other	38782
county	6	tiles	30485
county	6	wood	451
county	4	cement	47274
county	4	earth	138
county	4	other	41604
county	4	tiles	5366
county	4	wood	87
county	13	cement	27389
county	13	earth	195
county	13	other	22520
county	13	tiles	4590
county	13	wood	55
county	26	cement	169632
county	26	earth	814
county	26	other	123709
county	26	tiles	43706
county	26	wood	895
county	23	cement	122935
county	23	earth	1125
county	23	other	113145
county	23	tiles	8007
county	23	wood	205
county	27	cement	201616
county	27	earth	1561
county	27	other	102615
county	27	tiles	93401
county	27	wood	3501
county	38	cement	123241
county	38	earth	551
county	38	other	97630
county	38	tiles	24377
county	38	wood	468
county	8	cement	88493
county	8	earth	214
county	8	other	80979
county	8	tiles	6899
county	8	wood	131
county	24	cement	93749
county	24	earth	524
county	24	other	81304
county	24	tiles	11578
county	24	wood	137
country	KE	cement	8738097
country	KE	earth	65762
country	KE	other	4937121
country	KE	tiles	3582001
country	KE	wood	135692
\.


--
-- Data for Name: maintypeoflightingfuel; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY maintypeoflightingfuel (geo_level, geo_code, "main type of lighting fuel", total) FROM stdin;
county	3	electricity	33423
county	3	gas lamps	911
county	3	lanterns	33735
county	3	other	665
county	3	pressure lamps	1433
county	3	solar	3471
county	3	tin lamps	125005
county	3	wood	1121
county	5	electricity	3767
county	5	gas lamps	158
county	5	lanterns	7211
county	5	other	428
county	5	pressure lamps	135
county	5	solar	560
county	7	electricity	11405
county	7	gas lamps	17277
county	7	lanterns	20272
county	7	other	6827
county	7	pressure lamps	552
county	7	solar	10251
county	7	tin lamps	31642
county	7	wood	364
county	11	electricity	5800
county	11	gas lamps	781
county	11	lanterns	9751
county	11	other	1015
county	11	pressure lamps	154
county	11	solar	7283
county	11	tin lamps	6113
county	14	electricity	19611
county	14	gas lamps	778
county	14	lanterns	46512
county	14	other	626
county	14	pressure lamps	992
county	14	solar	1114
county	14	tin lamps	57535
county	14	wood	4515
county	15	electricity	9850
county	15	gas lamps	1372
county	15	lanterns	111037
county	15	other	1277
county	15	pressure lamps	1192
county	15	solar	10311
county	15	tin lamps	64450
county	20	electricity	25353
county	20	gas lamps	1005
county	20	lanterns	51589
county	20	other	367
county	20	pressure lamps	1028
county	20	solar	413
county	20	tin lamps	69116
county	20	wood	5349
county	40	electricity	9253
county	40	gas lamps	709
county	40	lanterns	33283
county	40	other	338
county	40	pressure lamps	494
county	40	solar	566
county	40	tin lamps	108949
county	22	electricity	255704
county	22	gas lamps	1428
county	22	lanterns	125860
county	22	other	1866
county	22	pressure lamps	3345
county	22	solar	735
county	22	tin lamps	89701
county	28	electricity	5547
county	28	gas lamps	449
county	28	lanterns	36321
county	28	other	228
county	28	pressure lamps	220
county	28	solar	11744
county	28	tin lamps	21891
county	28	wood	1155
county	30	electricity	10583
county	30	gas lamps	796
county	30	lanterns	43488
county	30	other	471
county	30	pressure lamps	437
county	30	solar	30734
county	30	tin lamps	22238
county	31	electricity	18222
county	31	gas lamps	740
county	31	lanterns	36366
county	31	other	428
county	31	pressure lamps	542
county	31	solar	5276
county	31	tin lamps	35413
county	31	wood	6127
county	34	electricity	69098
county	34	gas lamps	706
county	34	lanterns	32788
county	34	other	1780
county	34	pressure lamps	1430
county	34	solar	3804
county	34	tin lamps	62031
county	35	electricity	15005
county	35	gas lamps	587
county	35	lanterns	58865
county	35	other	212
county	35	pressure lamps	505
county	35	solar	361
county	35	tin lamps	49875
county	35	wood	2171
county	36	electricity	7552
county	36	gas lamps	1135
county	36	lanterns	113311
county	36	other	499
county	36	pressure lamps	581
county	36	solar	1444
county	36	tin lamps	45434
county	37	electricity	19959
county	37	gas lamps	2718
county	37	lanterns	100156
county	37	other	483
county	37	pressure lamps	1791
county	37	solar	1367
county	37	tin lamps	226650
county	37	wood	2555
county	39	electricity	12219
county	39	gas lamps	1704
county	39	lanterns	72256
county	39	other	458
county	39	pressure lamps	1351
county	39	solar	1493
county	4	electricity	1184
county	4	gas lamps	604
county	4	lanterns	9590
county	4	other	1279
county	4	pressure lamps	86
county	4	solar	2785
county	4	tin lamps	31438
county	4	wood	448
county	5	tin lamps	8752
county	5	wood	1173
county	6	electricity	10653
county	6	gas lamps	257
county	6	lanterns	32595
county	6	other	450
county	6	pressure lamps	353
county	6	solar	412
county	6	tin lamps	24732
county	6	wood	1638
county	9	electricity	3198
county	9	gas lamps	13845
county	9	lanterns	41321
county	9	other	4340
county	9	pressure lamps	271
county	9	solar	45240
county	9	tin lamps	16989
county	9	wood	293
county	10	electricity	4258
county	10	gas lamps	1665
county	10	lanterns	13084
county	10	other	2879
county	10	pressure lamps	69
county	10	solar	27355
county	10	tin lamps	6953
county	12	electricity	50004
county	12	gas lamps	3018
county	12	lanterns	112946
county	12	other	1519
county	12	pressure lamps	2388
county	12	solar	7015
county	12	tin lamps	183198
county	12	wood	20938
county	13	electricity	826
county	13	gas lamps	154
county	13	lanterns	3801
county	13	other	366
county	13	pressure lamps	93
county	13	solar	1652
county	13	tin lamps	18194
county	16	electricity	45067
county	16	gas lamps	1355
county	16	lanterns	143523
county	16	other	1172
county	16	pressure lamps	1846
county	16	solar	565
county	16	tin lamps	63999
county	16	wood	6973
county	17	electricity	10912
county	17	gas lamps	859
county	17	lanterns	117991
county	17	other	517
county	17	pressure lamps	816
county	17	solar	1136
county	17	tin lamps	47245
county	18	electricity	15086
county	18	gas lamps	911
county	18	lanterns	79351
county	18	other	387
county	18	pressure lamps	875
county	18	solar	391
county	18	tin lamps	38225
county	19	electricity	53086
county	19	gas lamps	1038
county	19	lanterns	69517
county	19	other	486
county	19	pressure lamps	1641
county	19	solar	1004
county	19	tin lamps	66305
county	19	wood	8626
county	25	electricity	2949
county	25	gas lamps	444
county	25	lanterns	5074
county	25	other	374
county	25	pressure lamps	165
county	25	solar	28451
county	25	tin lamps	9239
county	21	electricity	33847
county	21	gas lamps	1296
county	21	lanterns	95784
county	21	other	386
county	21	pressure lamps	1306
county	21	solar	555
county	21	tin lamps	103722
county	21	wood	5594
county	26	electricity	15121
county	26	gas lamps	1088
county	26	lanterns	65971
county	26	other	489
county	29	electricity	9788
county	29	gas lamps	796
county	29	lanterns	64865
county	29	other	246
county	29	pressure lamps	504
county	29	solar	316
county	29	tin lamps	75638
county	32	electricity	139430
county	32	gas lamps	1994
county	32	lanterns	147950
county	32	other	1927
county	32	pressure lamps	2271
county	32	solar	3398
county	32	tin lamps	103605
county	32	wood	9261
county	33	electricity	9903
county	33	gas lamps	861
county	33	lanterns	49009
county	33	other	1921
county	33	pressure lamps	826
county	33	solar	12977
county	33	tin lamps	91422
county	41	electricity	8615
county	41	gas lamps	885
county	41	lanterns	41128
county	41	other	270
county	41	pressure lamps	858
county	41	solar	440
county	1	electricity	158588
county	1	gas lamps	512
county	1	lanterns	43057
county	1	other	1644
county	1	pressure lamps	2748
county	1	solar	530
county	1	tin lamps	61236
county	1	wood	385
county	2	electricity	12888
county	2	gas lamps	419
county	2	lanterns	16063
county	2	other	326
county	2	pressure lamps	713
county	2	solar	1522
county	2	tin lamps	89118
county	2	wood	998
county	8	electricity	3039
county	8	gas lamps	9767
county	8	lanterns	27923
county	8	other	6348
county	8	pressure lamps	98
county	8	solar	26296
county	8	tin lamps	14948
county	8	wood	155
county	10	wood	678
county	11	wood	429
county	13	wood	2307
county	15	wood	6002
county	17	wood	7002
county	18	wood	8653
county	25	wood	658
county	40	wood	633
county	22	wood	3811
county	23	electricity	3017
county	23	gas lamps	694
county	23	lanterns	10571
county	23	other	4322
county	23	pressure lamps	224
county	23	solar	89894
county	23	tin lamps	13523
county	23	wood	946
county	24	electricity	2456
county	24	gas lamps	467
county	24	lanterns	20880
county	24	other	400
county	24	pressure lamps	104
county	24	solar	46980
county	24	tin lamps	22021
county	24	wood	469
county	26	pressure lamps	977
county	26	solar	994
county	26	tin lamps	84035
county	26	wood	1442
county	27	electricity	56534
county	27	gas lamps	782
county	27	lanterns	89231
county	27	other	1035
county	27	pressure lamps	1218
county	27	solar	628
county	27	tin lamps	50506
county	27	wood	2357
county	29	wood	1920
county	30	wood	1902
county	33	wood	2301
county	34	wood	1827
county	36	wood	4958
county	38	electricity	8678
county	38	gas lamps	1038
county	38	lanterns	35132
county	38	other	129
county	38	pressure lamps	547
county	38	solar	582
county	38	tin lamps	76480
county	38	wood	761
county	39	tin lamps	180120
county	39	wood	1223
county	41	tin lamps	145066
county	41	wood	1772
county	42	electricity	41551
county	42	gas lamps	921
county	42	lanterns	52543
county	42	other	392
county	42	pressure lamps	1256
county	42	solar	513
county	42	tin lamps	127278
county	42	wood	2265
county	43	electricity	6850
county	43	gas lamps	1067
county	43	lanterns	43788
county	43	other	226
county	43	pressure lamps	980
county	43	solar	823
county	43	tin lamps	150440
county	43	wood	2081
county	44	electricity	9551
county	44	gas lamps	1057
county	44	lanterns	46080
county	44	other	297
county	44	pressure lamps	1015
county	44	solar	1051
county	44	tin lamps	119675
county	44	wood	1485
county	45	electricity	20965
county	45	gas lamps	1490
county	45	lanterns	87971
county	45	other	345
county	45	pressure lamps	1033
county	45	solar	711
county	45	tin lamps	154632
county	45	wood	2536
county	46	electricity	6486
county	46	gas lamps	586
county	46	lanterns	42674
county	46	other	67
county	46	pressure lamps	453
county	46	solar	297
county	46	tin lamps	54798
county	46	wood	1024
county	47	electricity	712859
county	47	gas lamps	1251
county	47	lanterns	128173
county	47	other	7244
county	47	pressure lamps	10324
county	47	solar	622
county	47	tin lamps	123551
county	47	wood	992
country	KE	electricity	1989740
country	KE	gas lamps	84375
country	KE	lanterns	2670387
country	KE	other	59751
country	KE	pressure lamps	52240
country	KE	solar	396062
country	KE	tin lamps	3373126
country	KE	wood	142273
\.


--
-- Data for Name: maintypeofroofingmaterial; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY maintypeofroofingmaterial (geo_level, geo_code, "main type of roofing material", total) FROM stdin;
country	KE	asbestos sheets	197217
country	KE	concrete	311379
country	KE	corrugated iron sheets	6398622
country	KE	grass	1194210
country	KE	makuti	283141
country	KE	mud/dung	69715
country	KE	other	64866
country	KE	tiles	193792
country	KE	tin	25155
county	30	asbestos sheets	1597
county	30	concrete	127
county	30	corrugated iron sheets	64044
county	30	grass	42860
county	30	makuti	223
county	30	mud/dung	68
county	30	other	266
county	30	tiles	1109
county	30	tin	132
county	36	asbestos sheets	2417
county	36	concrete	1280
county	36	corrugated iron sheets	126571
county	36	grass	41326
county	36	makuti	336
county	36	mud/dung	158
county	36	other	48
county	36	tiles	1641
county	36	tin	517
county	39	asbestos sheets	7131
county	39	concrete	363
county	39	corrugated iron sheets	210417
county	39	grass	49928
county	39	makuti	229
county	39	mud/dung	116
county	39	other	351
county	39	tiles	1534
county	39	tin	532
county	40	asbestos sheets	2568
county	40	concrete	150
county	40	corrugated iron sheets	77297
county	40	grass	72762
county	40	makuti	214
county	40	mud/dung	38
county	40	other	153
county	40	tiles	798
county	40	tin	100
county	28	asbestos sheets	890
county	28	concrete	65
county	28	corrugated iron sheets	44911
county	28	grass	30179
county	28	makuti	161
county	28	mud/dung	56
county	28	other	446
county	28	tiles	720
county	28	tin	110
county	14	asbestos sheets	3090
county	14	concrete	710
county	14	corrugated iron sheets	121230
county	14	grass	4325
county	14	makuti	169
county	14	mud/dung	51
county	14	other	54
county	14	tiles	1424
county	14	tin	145
county	7	asbestos sheets	2427
county	7	concrete	220
county	7	corrugated iron sheets	28769
county	7	grass	59267
county	7	makuti	4537
county	7	mud/dung	769
county	7	other	836
county	7	tiles	744
county	7	tin	701
county	43	asbestos sheets	3289
county	43	concrete	131
county	43	corrugated iron sheets	169537
county	43	grass	31181
county	43	makuti	259
county	43	mud/dung	78
county	43	other	43
county	43	tiles	1144
county	43	tin	446
county	11	asbestos sheets	459
county	11	concrete	100
county	11	corrugated iron sheets	19025
county	11	grass	6499
county	11	makuti	1823
county	11	mud/dung	1060
county	11	other	1576
county	11	tiles	208
county	11	tin	555
county	34	asbestos sheets	5520
county	34	concrete	5799
county	34	corrugated iron sheets	115996
county	34	grass	18406
county	34	makuti	693
county	34	mud/dung	17838
county	34	other	1215
county	34	tiles	6884
county	34	tin	712
county	37	asbestos sheets	8605
county	37	concrete	509
county	37	corrugated iron sheets	272421
county	37	grass	70575
county	37	makuti	284
county	37	mud/dung	143
county	37	other	160
county	37	tiles	2066
county	37	tin	612
county	35	asbestos sheets	1568
county	35	concrete	1483
county	35	corrugated iron sheets	103851
county	35	grass	18671
county	35	makuti	134
county	35	mud/dung	92
county	35	other	134
county	35	tiles	1037
county	35	tin	255
county	22	asbestos sheets	8616
county	22	concrete	30984
county	22	corrugated iron sheets	423968
county	22	grass	845
county	22	makuti	540
county	22	mud/dung	119
county	22	other	649
county	22	tiles	15256
county	22	tin	810
county	3	asbestos sheets	5039
county	3	concrete	3498
county	3	corrugated iron sheets	83604
county	3	grass	14458
county	3	makuti	88633
county	3	mud/dung	84
county	3	other	218
county	3	tiles	1978
county	3	tin	339
county	20	asbestos sheets	4011
county	20	concrete	1287
county	20	corrugated iron sheets	146203
county	20	grass	956
county	20	makuti	41
county	20	mud/dung	49
county	20	other	182
county	20	tiles	1155
county	20	tin	97
county	45	asbestos sheets	8598
county	45	concrete	1669
county	45	corrugated iron sheets	225456
county	45	grass	30638
county	45	makuti	443
county	45	mud/dung	124
county	45	other	49
county	45	tiles	1604
county	45	tin	873
county	42	asbestos sheets	6075
county	42	concrete	2370
county	42	corrugated iron sheets	192366
county	42	grass	20515
county	42	makuti	231
county	42	mud/dung	108
county	42	other	144
county	42	tiles	3841
county	42	tin	487
county	15	asbestos sheets	3385
county	15	concrete	298
county	15	corrugated iron sheets	156845
county	15	grass	41198
county	15	makuti	753
county	15	mud/dung	127
county	15	other	264
county	15	tiles	2257
county	15	tin	285
county	2	asbestos sheets	2199
county	2	concrete	250
county	2	corrugated iron sheets	45196
county	2	grass	12240
county	2	makuti	60569
county	2	mud/dung	63
county	2	other	228
county	2	tiles	695
county	2	tin	251
county	31	asbestos sheets	2776
county	31	concrete	1432
county	31	corrugated iron sheets	83142
county	31	grass	9620
county	31	makuti	442
county	31	mud/dung	2627
county	31	other	963
county	31	tiles	1423
county	31	tin	656
county	5	asbestos sheets	656
county	5	concrete	2464
county	5	corrugated iron sheets	6955
county	5	grass	3611
county	5	makuti	7670
county	5	mud/dung	16
county	5	other	495
county	5	tiles	70
county	5	tin	76
county	16	asbestos sheets	4114
county	16	concrete	8066
county	16	corrugated iron sheets	235065
county	16	grass	11777
county	16	makuti	313
county	16	mud/dung	132
county	16	other	284
county	16	tiles	4278
county	16	tin	313
county	17	asbestos sheets	2195
county	17	concrete	276
county	17	corrugated iron sheets	161275
county	17	grass	20425
county	17	makuti	447
county	17	mud/dung	53
county	17	other	68
county	17	tiles	1425
county	17	tin	116
county	9	asbestos sheets	531
county	9	concrete	142
county	9	corrugated iron sheets	14372
county	9	grass	77307
county	9	makuti	31088
county	9	mud/dung	265
county	9	other	1009
county	9	tiles	619
county	9	tin	138
county	10	asbestos sheets	584
county	10	concrete	27
county	10	corrugated iron sheets	15613
county	10	grass	13789
county	10	makuti	6661
county	10	mud/dung	452
county	10	other	18606
county	10	tiles	126
county	10	tin	853
county	12	asbestos sheets	10844
county	12	concrete	1092
county	12	corrugated iron sheets	352331
county	12	grass	10920
county	12	makuti	1133
county	12	mud/dung	375
county	12	other	303
county	12	tiles	2998
county	12	tin	509
county	44	asbestos sheets	4341
county	44	concrete	211
county	44	corrugated iron sheets	136532
county	44	grass	37312
county	44	makuti	175
county	44	mud/dung	86
county	44	other	50
county	44	tiles	1098
county	44	tin	165
county	1	asbestos sheets	8338
county	1	concrete	24683
county	1	corrugated iron sheets	201639
county	1	grass	261
county	1	makuti	11418
county	1	mud/dung	344
county	1	other	332
county	1	tiles	9111
county	1	tin	1128
county	21	asbestos sheets	4132
county	21	concrete	4372
county	21	corrugated iron sheets	228723
county	21	grass	332
county	21	makuti	86
county	21	mud/dung	110
county	21	other	85
county	21	tiles	3005
county	21	tin	1487
county	47	asbestos sheets	30463
county	47	concrete	208148
county	47	corrugated iron sheets	641697
county	47	grass	185
county	47	makuti	711
county	47	mud/dung	283
county	47	other	1638
county	47	tiles	95617
county	47	tin	4373
county	32	asbestos sheets	13084
county	32	concrete	3613
county	32	corrugated iron sheets	354675
county	32	grass	23801
county	32	makuti	661
county	32	mud/dung	547
county	32	other	2999
county	32	tiles	8644
county	32	tin	1073
county	29	asbestos sheets	2110
county	29	concrete	113
county	29	corrugated iron sheets	126222
county	29	grass	22662
county	29	makuti	150
county	29	mud/dung	33
county	29	other	187
county	29	tiles	1189
county	29	tin	223
county	33	asbestos sheets	4998
county	33	concrete	191
county	33	corrugated iron sheets	82259
county	33	grass	56817
county	33	makuti	1942
county	33	mud/dung	18677
county	33	other	2720
county	33	tiles	808
county	33	tin	655
county	46	asbestos sheets	1793
county	46	concrete	218
county	46	corrugated iron sheets	96374
county	46	grass	6561
county	46	makuti	148
county	46	mud/dung	30
county	46	other	10
county	46	tiles	901
county	46	tin	30
county	18	asbestos sheets	2864
county	18	concrete	252
county	18	corrugated iron sheets	135489
county	18	grass	1138
county	18	makuti	102
county	18	mud/dung	22
county	18	other	1679
county	18	tiles	866
county	18	tin	81
county	19	asbestos sheets	4441
county	19	concrete	2375
county	19	corrugated iron sheets	190494
county	19	grass	898
county	19	makuti	148
county	19	mud/dung	47
county	19	other	207
county	19	tiles	2376
county	19	tin	367
county	25	asbestos sheets	439
county	25	concrete	32
county	25	corrugated iron sheets	10747
county	25	grass	5257
county	25	makuti	5576
county	25	mud/dung	17966
county	25	other	5713
county	25	tiles	349
county	25	tin	1152
county	41	asbestos sheets	1861
county	41	concrete	198
county	41	corrugated iron sheets	130934
county	41	grass	63799
county	41	makuti	200
county	41	mud/dung	69
county	41	other	56
county	41	tiles	1224
county	41	tin	323
county	6	asbestos sheets	2098
county	6	concrete	299
county	6	corrugated iron sheets	60246
county	6	grass	4678
county	6	makuti	1064
county	6	mud/dung	82
county	6	other	166
county	6	tiles	884
county	6	tin	522
county	4	asbestos sheets	681
county	4	concrete	19
county	4	corrugated iron sheets	12498
county	4	grass	26680
county	4	makuti	6576
county	4	mud/dung	19
county	4	other	546
county	4	tiles	193
county	4	tin	62
county	13	asbestos sheets	855
county	13	concrete	10
county	13	corrugated iron sheets	21477
county	13	grass	4769
county	13	makuti	65
county	13	mud/dung	10
county	13	other	29
county	13	tiles	159
county	13	tin	15
county	26	asbestos sheets	4836
county	26	concrete	286
county	26	corrugated iron sheets	138404
county	26	grass	22979
county	26	makuti	280
county	26	mud/dung	83
county	26	other	844
county	26	tiles	1721
county	26	tin	199
county	23	asbestos sheets	1447
county	23	concrete	53
county	23	corrugated iron sheets	16925
county	23	grass	42370
county	23	makuti	43605
county	23	mud/dung	195
county	23	other	16104
county	23	tiles	456
county	23	tin	1780
county	27	asbestos sheets	5088
county	27	concrete	1150
county	27	corrugated iron sheets	170243
county	27	grass	15613
county	27	makuti	171
county	27	mud/dung	114
county	27	other	2403
county	27	tiles	6432
county	27	tin	402
county	38	asbestos sheets	3026
county	38	concrete	239
county	38	corrugated iron sheets	113898
county	38	grass	4694
county	38	makuti	90
county	38	mud/dung	46
county	38	other	23
county	38	tiles	891
county	38	tin	334
county	8	asbestos sheets	399
county	8	concrete	93
county	8	corrugated iron sheets	9230
county	8	grass	76293
county	8	makuti	1708
county	8	mud/dung	152
county	8	other	188
county	8	tiles	319
county	8	tin	111
county	24	asbestos sheets	739
county	24	concrete	32
county	24	corrugated iron sheets	23456
county	24	grass	62833
county	24	makuti	239
county	24	mud/dung	5739
county	24	other	143
county	24	tiles	515
county	24	tin	53
\.


--
-- Data for Name: maintypeofwallmaterial; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY maintypeofwallmaterial (geo_level, geo_code, "main type of wall material", total) FROM stdin;
country	KE	brick/block	1470779
country	KE	corrugated iron sheets	577500
country	KE	grass/reeds	264557
country	KE	mud/cement	673636
country	KE	mud/wood	3208268
country	KE	other	78803
country	KE	tin	26411
country	KE	wood only	970089
country	KE	stone	1450487
county	30	brick/block	4037
county	30	corrugated iron sheets	7048
county	30	grass/reeds	1675
county	30	mud/cement	6952
county	30	mud/wood	55881
county	30	other	611
county	30	tin	87
county	30	wood only	28489
county	36	brick/block	15688
county	36	corrugated iron sheets	1430
county	36	grass/reeds	159
county	36	mud/cement	13147
county	36	mud/wood	113528
county	36	other	1834
county	36	tin	81
county	36	wood only	21166
county	39	brick/block	38862
county	39	corrugated iron sheets	493
county	39	grass/reeds	210
county	39	mud/cement	33668
county	39	mud/wood	190042
county	39	other	2246
county	39	tin	85
county	39	wood only	982
county	40	brick/block	26034
county	40	corrugated iron sheets	464
county	40	grass/reeds	476
county	40	mud/cement	16284
county	40	mud/wood	104454
county	40	other	3086
county	40	tin	96
county	40	wood only	312
county	28	brick/block	5037
county	28	corrugated iron sheets	1558
county	28	grass/reeds	235
county	28	mud/cement	5200
county	28	mud/wood	41805
county	28	other	409
county	28	tin	62
county	28	wood only	15919
county	14	brick/block	28030
county	14	corrugated iron sheets	2544
county	14	grass/reeds	458
county	14	mud/cement	3860
county	14	mud/wood	37605
county	14	other	3379
county	14	tin	89
county	14	wood only	33149
county	7	brick/block	12771
county	7	corrugated iron sheets	923
county	7	grass/reeds	42429
county	7	mud/cement	9217
county	7	mud/wood	19218
county	7	other	693
county	7	tin	307
county	7	wood only	8106
county	43	brick/block	17676
county	43	corrugated iron sheets	11533
county	43	grass/reeds	359
county	43	mud/cement	33897
county	43	mud/wood	135139
county	43	other	1318
county	43	tin	279
county	43	wood only	576
county	11	brick/block	2090
county	11	corrugated iron sheets	380
county	11	grass/reeds	5491
county	11	mud/cement	1144
county	11	mud/wood	9850
county	11	other	642
county	11	tin	1518
county	11	wood only	6970
county	34	brick/block	13104
county	34	corrugated iron sheets	45926
county	34	grass/reeds	3587
county	34	mud/cement	5763
county	34	mud/wood	39264
county	34	other	2402
county	34	tin	863
county	34	wood only	14315
county	37	brick/block	48365
county	37	corrugated iron sheets	941
county	37	grass/reeds	264
county	37	mud/cement	36471
county	37	mud/wood	264801
county	37	other	989
county	37	tin	78
county	37	wood only	708
county	35	brick/block	17026
county	35	corrugated iron sheets	7600
county	35	grass/reeds	91
county	35	mud/cement	9746
county	35	mud/wood	62362
county	35	other	1011
county	35	tin	132
county	35	wood only	15786
county	22	brick/block	29659
county	22	corrugated iron sheets	118797
county	22	grass/reeds	158
county	22	mud/cement	6421
county	22	mud/wood	23682
county	22	other	712
county	22	tin	3034
county	22	wood only	68284
county	3	brick/block	45805
county	3	corrugated iron sheets	645
county	3	grass/reeds	2645
county	3	mud/cement	16157
county	3	mud/wood	106284
county	3	other	535
county	3	tin	157
county	3	wood only	4281
county	20	brick/block	25880
county	20	corrugated iron sheets	2626
county	20	grass/reeds	957
county	20	mud/cement	4617
county	20	mud/wood	28517
county	20	other	757
county	20	tin	156
county	20	wood only	53075
county	45	brick/block	51676
county	45	corrugated iron sheets	1860
county	45	grass/reeds	187
county	45	mud/cement	21297
county	45	mud/wood	189596
county	45	other	1440
county	45	tin	85
county	45	wood only	857
county	42	brick/block	47969
county	42	corrugated iron sheets	6935
county	42	grass/reeds	146
county	42	mud/cement	48071
county	42	mud/wood	112223
county	42	other	2516
county	42	tin	382
county	42	wood only	482
county	15	brick/block	131432
county	15	corrugated iron sheets	343
county	15	grass/reeds	881
county	15	mud/cement	12953
county	15	mud/wood	52452
county	15	other	368
county	15	tin	79
county	15	wood only	2000
county	2	brick/block	17675
county	2	corrugated iron sheets	373
county	2	grass/reeds	2699
county	2	mud/cement	11944
county	2	mud/wood	69208
county	2	other	667
county	2	tin	76
county	2	wood only	483
county	31	brick/block	2933
county	31	corrugated iron sheets	2928
county	31	grass/reeds	464
county	31	mud/cement	3186
county	31	mud/wood	30105
county	31	other	1049
county	31	tin	111
county	31	wood only	47459
county	5	brick/block	4158
county	5	corrugated iron sheets	84
county	5	grass/reeds	1476
county	5	mud/cement	3069
county	5	mud/wood	10332
county	5	other	323
county	5	tin	28
county	5	wood only	150
county	16	brick/block	161931
county	16	corrugated iron sheets	18602
county	16	grass/reeds	298
county	16	mud/cement	4811
county	16	mud/wood	11002
county	16	other	350
county	16	tin	339
county	16	wood only	1235
county	17	brick/block	135293
county	17	corrugated iron sheets	960
county	17	grass/reeds	400
county	17	mud/cement	7158
county	17	mud/wood	36850
county	17	other	118
county	17	tin	61
county	17	wood only	668
county	9	brick/block	5745
county	9	corrugated iron sheets	309
county	9	grass/reeds	79903
county	9	mud/cement	2403
county	9	mud/wood	7494
county	9	other	3054
county	9	tin	124
county	9	wood only	22898
county	10	brick/block	2821
county	10	corrugated iron sheets	589
county	10	grass/reeds	6847
county	10	mud/cement	6067
county	10	mud/wood	17019
county	10	other	15948
county	10	tin	1919
county	10	wood only	4611
county	12	brick/block	13443
county	12	corrugated iron sheets	1512
county	12	grass/reeds	2404
county	12	mud/cement	6760
county	12	mud/wood	76884
county	12	other	2459
county	12	tin	236
county	12	wood only	227889
county	44	brick/block	30770
county	44	corrugated iron sheets	2923
county	44	grass/reeds	228
county	44	mud/cement	27323
county	44	mud/wood	116088
county	44	other	276
county	44	tin	78
county	44	wood only	484
county	1	brick/block	109233
county	1	corrugated iron sheets	1724
county	1	grass/reeds	401
county	1	mud/cement	35229
county	1	mud/wood	27720
county	1	other	226
county	1	tin	262
county	1	wood only	582
county	21	brick/block	27457
county	21	corrugated iron sheets	35815
county	21	grass/reeds	180
county	21	mud/cement	6745
county	21	mud/wood	58882
county	21	other	1036
county	21	tin	5127
county	21	wood only	37132
county	47	brick/block	137375
county	47	corrugated iron sheets	264413
county	47	grass/reeds	431
county	47	mud/cement	52330
county	47	mud/wood	36809
county	47	other	955
county	47	tin	5850
county	47	wood only	18592
county	32	brick/block	23136
county	32	corrugated iron sheets	11816
county	32	grass/reeds	428
county	32	mud/cement	42592
county	32	mud/wood	137687
county	32	other	2693
county	32	tin	500
county	32	wood only	55420
county	29	brick/block	23211
county	29	corrugated iron sheets	1429
county	29	grass/reeds	92
county	29	mud/cement	22231
county	29	mud/wood	97633
county	29	other	720
county	29	tin	44
county	29	wood only	5525
county	33	brick/block	6607
county	33	corrugated iron sheets	4896
county	33	grass/reeds	1319
county	33	mud/cement	11923
county	33	mud/wood	115444
county	33	other	2339
county	33	tin	606
county	33	wood only	16479
county	46	brick/block	21176
county	46	corrugated iron sheets	282
county	46	grass/reeds	201
county	46	mud/cement	6697
county	46	mud/wood	76135
county	46	other	24
county	46	tin	26
county	46	wood only	671
county	18	brick/block	3763
county	18	corrugated iron sheets	4386
county	18	grass/reeds	51
county	18	mud/cement	4252
county	18	mud/wood	47580
county	18	other	1951
county	18	tin	134
county	15	stone	4904
county	18	wood only	61182
county	19	brick/block	9510
county	19	corrugated iron sheets	3001
county	19	grass/reeds	267
county	19	mud/cement	2602
county	19	mud/wood	20485
county	19	other	274
county	19	tin	405
county	19	wood only	121347
county	25	brick/block	1359
county	25	corrugated iron sheets	262
county	25	grass/reeds	2448
county	25	mud/cement	6197
county	25	mud/wood	28057
county	25	other	2569
county	25	tin	1202
county	25	wood only	3520
county	41	brick/block	26766
county	41	corrugated iron sheets	811
county	41	grass/reeds	260
county	41	mud/cement	38390
county	41	mud/wood	126728
county	41	other	1903
county	41	tin	116
county	41	wood only	343
county	6	brick/block	30474
county	6	corrugated iron sheets	616
county	6	grass/reeds	354
county	6	mud/cement	6177
county	6	mud/wood	27940
county	6	other	376
county	6	tin	76
county	6	wood only	888
county	4	brick/block	2705
county	4	corrugated iron sheets	330
county	4	grass/reeds	13961
county	4	mud/cement	3896
county	4	mud/wood	19429
county	4	other	280
county	4	tin	56
county	4	wood only	5722
county	13	brick/block	3316
county	13	corrugated iron sheets	70
county	13	grass/reeds	105
county	13	mud/cement	1993
county	13	mud/wood	19839
county	13	other	84
county	13	tin	6
county	13	wood only	580
county	26	brick/block	26728
county	26	corrugated iron sheets	748
county	26	grass/reeds	179
county	26	mud/cement	21857
county	26	mud/wood	115572
county	26	other	987
county	26	tin	76
county	26	wood only	1109
county	23	brick/block	4969
county	23	corrugated iron sheets	773
county	23	grass/reeds	33318
county	23	mud/cement	4858
county	23	mud/wood	30909
county	23	other	9775
county	23	tin	1003
county	23	wood only	36611
county	27	brick/block	51138
county	27	corrugated iron sheets	5244
county	27	grass/reeds	221
county	27	mud/cement	24850
county	27	mud/wood	91857
county	27	other	2764
county	27	tin	254
county	27	wood only	13632
county	38	brick/block	18807
county	38	corrugated iron sheets	141
county	38	grass/reeds	32
county	38	mud/cement	12403
county	38	mud/wood	90495
county	38	other	225
county	38	tin	28
county	38	wood only	156
county	8	brick/block	2370
county	8	corrugated iron sheets	155
county	8	grass/reeds	54588
county	8	mud/cement	981
county	8	mud/wood	2567
county	8	other	164
county	8	tin	49
county	8	wood only	6477
county	24	brick/block	4769
county	24	corrugated iron sheets	262
county	24	grass/reeds	594
county	24	mud/cement	9847
county	24	mud/wood	74815
county	24	other	266
county	24	tin	49
county	24	wood only	2787
county	30	stone	5646
county	36	stone	7261
county	39	stone	4013
county	40	stone	2874
county	28	stone	7313
county	14	stone	22084
county	7	stone	4606
county	43	stone	5331
county	11	stone	3220
county	34	stone	47839
county	37	stone	2758
county	35	stone	13471
county	22	stone	231040
county	3	stone	21342
county	20	stone	37396
county	45	stone	2456
county	42	stone	7413
county	2	stone	18566
county	31	stone	14846
county	5	stone	2393
county	16	stone	65774
county	17	stone	4772
county	9	stone	3541
county	10	stone	890
county	12	stone	48918
county	44	stone	1800
county	1	stone	81877
county	21	stone	69958
county	47	stone	466360
county	32	stone	134825
county	29	stone	2004
county	33	stone	9454
county	46	stone	853
county	18	stone	19194
county	19	stone	43462
county	25	stone	1617
county	41	stone	3347
county	6	stone	3138
county	4	stone	895
county	13	stone	1396
county	26	stone	2376
county	23	stone	719
county	27	stone	11656
county	38	stone	954
county	8	stone	3575
county	24	stone	360
\.


--
-- Data for Name: maternalcareindicators; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY maternalcareindicators (geo_level, geo_code, "maternal care indicators", total) FROM stdin;
county	1	percentage with antenatal care from a skilled provider	99.2000000000000028
county	1	percentage with 4+ ANC visits	65
county	1	percentage delivered by a skilled provider	82.7999999999999972
county	1	percentage delivered in a health facility	81.7999999999999972
county	2	percentage with antenatal care from a skilled provider	95.7000000000000028
county	2	percentage with 4+ ANC visits	60.2999999999999972
county	2	percentage delivered by a skilled provider	50.1000000000000014
county	2	percentage delivered in a health facility	49
county	3	percentage with antenatal care from a skilled provider	98.2000000000000028
county	3	percentage with 4+ ANC visits	64.5999999999999943
county	3	percentage delivered by a skilled provider	52.2999999999999972
county	3	percentage delivered in a health facility	52.6000000000000014
county	4	percentage with antenatal care from a skilled provider	93.5999999999999943
county	4	percentage with 4+ ANC visits	50.7999999999999972
county	4	percentage delivered by a skilled provider	32.2000000000000028
county	4	percentage delivered in a health facility	31.6000000000000014
county	5	percentage with antenatal care from a skilled provider	95.7000000000000028
county	5	percentage with 4+ ANC visits	62.2000000000000028
county	5	percentage delivered by a skilled provider	47.2999999999999972
county	5	percentage delivered in a health facility	43.8999999999999986
county	6	percentage with antenatal care from a skilled provider	97.9000000000000057
county	6	percentage with 4+ ANC visits	58.8999999999999986
county	6	percentage delivered by a skilled provider	62.5
county	6	percentage delivered in a health facility	61.8999999999999986
county	7	percentage with antenatal care from a skilled provider	87.2999999999999972
county	7	percentage with 4+ ANC visits	47.7000000000000028
county	7	percentage delivered by a skilled provider	39.7999999999999972
county	7	percentage delivered in a health facility	36.7000000000000028
county	8	percentage with antenatal care from a skilled provider	57.6000000000000014
county	8	percentage with 4+ ANC visits	37.7000000000000028
county	8	percentage delivered by a skilled provider	21.6999999999999993
county	8	percentage delivered in a health facility	18.3000000000000007
county	9	percentage with antenatal care from a skilled provider	50.5
county	9	percentage with 4+ ANC visits	20.1999999999999993
county	9	percentage delivered by a skilled provider	38.7000000000000028
county	9	percentage delivered in a health facility	36
county	10	percentage with antenatal care from a skilled provider	75.5999999999999943
county	10	percentage with 4+ ANC visits	42.7999999999999972
county	10	percentage delivered by a skilled provider	25.8000000000000007
county	10	percentage delivered in a health facility	25.8000000000000007
county	11	percentage with antenatal care from a skilled provider	96
county	11	percentage with 4+ ANC visits	50.2000000000000028
county	11	percentage delivered by a skilled provider	43.7999999999999972
county	11	percentage delivered in a health facility	42.1000000000000014
county	12	percentage with antenatal care from a skilled provider	97.2999999999999972
county	12	percentage with 4+ ANC visits	45.2999999999999972
county	12	percentage delivered by a skilled provider	82.7999999999999972
county	12	percentage delivered in a health facility	81.7999999999999972
county	13	percentage with antenatal care from a skilled provider	98.2999999999999972
county	13	percentage with 4+ ANC visits	56.1000000000000014
county	13	percentage delivered by a skilled provider	76.5999999999999943
county	13	percentage delivered in a health facility	77.7000000000000028
county	14	percentage with antenatal care from a skilled provider	99.2000000000000028
county	14	percentage with 4+ ANC visits	56.2000000000000028
county	14	percentage delivered by a skilled provider	81.5
county	14	percentage delivered in a health facility	81.5
county	15	percentage with antenatal care from a skilled provider	97.5
county	15	percentage with 4+ ANC visits	62.2000000000000028
county	15	percentage delivered by a skilled provider	46.2000000000000028
county	15	percentage delivered in a health facility	45.6000000000000014
county	16	percentage with antenatal care from a skilled provider	98.7999999999999972
county	16	percentage with 4+ ANC visits	60.7999999999999972
county	16	percentage delivered by a skilled provider	63.3999999999999986
county	16	percentage delivered in a health facility	62.8999999999999986
county	17	percentage with antenatal care from a skilled provider	98
county	17	percentage with 4+ ANC visits	65.7999999999999972
county	17	percentage delivered by a skilled provider	54.6000000000000014
county	17	percentage delivered in a health facility	53.2999999999999972
county	18	percentage with antenatal care from a skilled provider	96.7000000000000028
county	18	percentage with 4+ ANC visits	58.3999999999999986
county	18	percentage delivered by a skilled provider	85.2999999999999972
county	18	percentage delivered in a health facility	86.0999999999999943
county	19	percentage with antenatal care from a skilled provider	96.7000000000000028
county	19	percentage with 4+ ANC visits	61.1000000000000014
county	19	percentage delivered by a skilled provider	88.0999999999999943
county	19	percentage delivered in a health facility	89
county	20	percentage with antenatal care from a skilled provider	96.4000000000000057
county	20	percentage with 4+ ANC visits	60
county	20	percentage delivered by a skilled provider	92.2999999999999972
county	20	percentage delivered in a health facility	92.5
county	21	percentage with antenatal care from a skilled provider	97.4000000000000057
county	21	percentage with 4+ ANC visits	61.3999999999999986
county	21	percentage delivered by a skilled provider	85.5
county	21	percentage delivered in a health facility	85
county	22	percentage with antenatal care from a skilled provider	97.9000000000000057
county	22	percentage with 4+ ANC visits	67.0999999999999943
county	22	percentage delivered by a skilled provider	92.5999999999999943
county	22	percentage delivered in a health facility	93.4000000000000057
county	23	percentage with antenatal care from a skilled provider	91
county	23	percentage with 4+ ANC visits	48.8999999999999986
county	23	percentage delivered by a skilled provider	22.8000000000000007
county	23	percentage delivered in a health facility	23.1000000000000014
county	24	percentage with antenatal care from a skilled provider	85.2000000000000028
county	24	percentage with 4+ ANC visits	18.1999999999999993
county	24	percentage delivered by a skilled provider	27
county	24	percentage delivered in a health facility	25.8000000000000007
county	25	percentage with antenatal care from a skilled provider	73.7999999999999972
county	25	percentage with 4+ ANC visits	51.8999999999999986
county	25	percentage delivered by a skilled provider	29
county	25	percentage delivered in a health facility	24.5
county	26	percentage with antenatal care from a skilled provider	92
county	26	percentage with 4+ ANC visits	40.6000000000000014
county	26	percentage delivered by a skilled provider	41.7999999999999972
county	26	percentage delivered in a health facility	41.5
county	27	percentage with antenatal care from a skilled provider	96.0999999999999943
county	27	percentage with 4+ ANC visits	63
county	27	percentage delivered by a skilled provider	59
county	27	percentage delivered in a health facility	57.3999999999999986
county	28	percentage with antenatal care from a skilled provider	98.0999999999999943
county	28	percentage with 4+ ANC visits	46.7999999999999972
county	28	percentage delivered by a skilled provider	65
county	28	percentage delivered in a health facility	64.7000000000000028
county	29	percentage with antenatal care from a skilled provider	98.5
county	29	percentage with 4+ ANC visits	56.7999999999999972
county	29	percentage delivered by a skilled provider	46.7999999999999972
county	29	percentage delivered in a health facility	46.5
county	30	percentage with antenatal care from a skilled provider	92.7999999999999972
county	30	percentage with 4+ ANC visits	54.5
county	30	percentage delivered by a skilled provider	53.7999999999999972
county	30	percentage delivered in a health facility	53.5
county	31	percentage with antenatal care from a skilled provider	93.7000000000000028
county	31	percentage with 4+ ANC visits	56.2000000000000028
county	31	percentage delivered by a skilled provider	49.5
county	31	percentage delivered in a health facility	48.1000000000000014
county	32	percentage with antenatal care from a skilled provider	95.5999999999999943
county	32	percentage with 4+ ANC visits	61.3999999999999986
county	32	percentage delivered by a skilled provider	69.5
county	32	percentage delivered in a health facility	69.7000000000000028
county	33	percentage with antenatal care from a skilled provider	91.5999999999999943
county	33	percentage with 4+ ANC visits	46
county	33	percentage delivered by a skilled provider	40.2999999999999972
county	33	percentage delivered in a health facility	38.6000000000000014
county	34	percentage with antenatal care from a skilled provider	96.7000000000000028
county	34	percentage with 4+ ANC visits	66.9000000000000057
county	34	percentage delivered by a skilled provider	63.2000000000000028
county	34	percentage delivered in a health facility	62.3999999999999986
county	35	percentage with antenatal care from a skilled provider	97.0999999999999943
county	35	percentage with 4+ ANC visits	53.7000000000000028
county	35	percentage delivered by a skilled provider	64.4000000000000057
county	35	percentage delivered in a health facility	62.2000000000000028
county	36	percentage with antenatal care from a skilled provider	93.5
county	36	percentage with 4+ ANC visits	37.2000000000000028
county	36	percentage delivered by a skilled provider	52.2000000000000028
county	36	percentage delivered in a health facility	49
county	37	percentage with antenatal care from a skilled provider	96.4000000000000057
county	37	percentage with 4+ ANC visits	45
county	37	percentage delivered by a skilled provider	48.6000000000000014
county	37	percentage delivered in a health facility	47
county	38	percentage with antenatal care from a skilled provider	97.0999999999999943
county	38	percentage with 4+ ANC visits	61.2999999999999972
county	38	percentage delivered by a skilled provider	50.2999999999999972
county	38	percentage delivered in a health facility	50.2000000000000028
county	39	percentage with antenatal care from a skilled provider	97.5999999999999943
county	39	percentage with 4+ ANC visits	50
county	39	percentage delivered by a skilled provider	41.3999999999999986
county	39	percentage delivered in a health facility	40.7999999999999972
county	40	percentage with antenatal care from a skilled provider	97.5999999999999943
county	40	percentage with 4+ ANC visits	59.8999999999999986
county	40	percentage delivered by a skilled provider	58.5
county	40	percentage delivered in a health facility	58.3999999999999986
county	41	percentage with antenatal care from a skilled provider	97.7999999999999972
county	41	percentage with 4+ ANC visits	61.1000000000000014
county	41	percentage delivered by a skilled provider	70.4000000000000057
county	41	percentage delivered in a health facility	69.5999999999999943
county	42	percentage with antenatal care from a skilled provider	98.4000000000000057
county	42	percentage with 4+ ANC visits	68.0999999999999943
county	42	percentage delivered by a skilled provider	69.2000000000000028
county	42	percentage delivered in a health facility	69.5
county	43	percentage with antenatal care from a skilled provider	93.5
county	43	percentage with 4+ ANC visits	61.3999999999999986
county	43	percentage delivered by a skilled provider	60.3999999999999986
county	43	percentage delivered in a health facility	61.8999999999999986
county	44	percentage with antenatal care from a skilled provider	96.4000000000000057
county	44	percentage with 4+ ANC visits	56.3999999999999986
county	44	percentage delivered by a skilled provider	53.3999999999999986
county	44	percentage delivered in a health facility	53.2999999999999972
county	45	percentage with antenatal care from a skilled provider	97.7000000000000028
county	45	percentage with 4+ ANC visits	50
county	45	percentage delivered by a skilled provider	72.7999999999999972
county	45	percentage delivered in a health facility	69.2999999999999972
county	46	percentage with antenatal care from a skilled provider	96.4000000000000057
county	46	percentage with 4+ ANC visits	50.2999999999999972
county	46	percentage delivered by a skilled provider	74.0999999999999943
county	46	percentage delivered in a health facility	74.2999999999999972
county	47	percentage with antenatal care from a skilled provider	97.5999999999999943
county	47	percentage with 4+ ANC visits	73.0999999999999943
county	47	percentage delivered by a skilled provider	89.0999999999999943
county	47	percentage delivered in a health facility	88.7000000000000028
country	KE	percentage with antenatal care from a skilled provider	95.5
country	KE	percentage with 4+ ANC visits	57.6000000000000014
country	KE	percentage delivered by a skilled provider	61.7999999999999972
country	KE	percentage delivered in a health facility	61.2000000000000028
\.


--
-- Data for Name: protests; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY protests (geo_level, geo_code, protests, total) FROM stdin;
county	1	number of protests	5
county	2	number of protests	0
county	3	number of protests	0
county	4	number of protests	0
county	5	number of protests	0
county	6	number of protests	3
county	7	number of protests	0
county	8	number of protests	0
county	9	number of protests	0
county	10	number of protests	5
county	11	number of protests	0
county	12	number of protests	0
county	13	number of protests	0
county	14	number of protests	4
county	15	number of protests	0
county	16	number of protests	0
county	17	number of protests	0
county	18	number of protests	0
county	19	number of protests	0
county	20	number of protests	0
county	21	number of protests	6
county	22	number of protests	12
county	23	number of protests	2
county	24	number of protests	1
county	25	number of protests	2
county	26	number of protests	6
county	27	number of protests	7
county	28	number of protests	1
county	29	number of protests	2
county	30	number of protests	4
county	31	number of protests	2
county	32	number of protests	7
county	33	number of protests	4
county	34	number of protests	0
county	35	number of protests	2
county	36	number of protests	3
county	37	number of protests	6
county	38	number of protests	2
county	39	number of protests	2
county	40	number of protests	2
county	41	number of protests	4
county	42	number of protests	5
county	43	number of protests	2
county	44	number of protests	3
county	45	number of protests	10
county	46	number of protests	3
county	47	number of protests	26
country	KE	number of protests	140
\.


--
-- Data for Name: schoolattendance_sex; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY schoolattendance_sex (geo_level, geo_code, "school attendance", sex, total) FROM stdin;
country	KE	at school	male	14579976
country	KE	left school	male	14149928
country	KE	never attended	male	5317852
country	KE	unspecified	male	774668
country	KE	at school	female	13646608
country	KE	left school	female	14315758
country	KE	never attended	female	6798986
country	KE	unspecified	female	587326
county	2	at school	male	121867
county	2	left school	male	94236
county	2	never attended	male	59303
county	2	unspecified	male	5619
county	3	at school	male	223846
county	3	left school	male	166620
county	3	never attended	male	75632
county	3	unspecified	male	11678
county	5	at school	male	18413
county	5	left school	male	20403
county	5	never attended	male	8152
county	5	unspecified	male	1411
county	7	at school	male	84871
county	7	left school	male	29944
county	7	never attended	male	184831
county	7	unspecified	male	9350
county	9	at school	male	191251
county	9	left school	male	39629
county	9	never attended	male	284712
county	9	unspecified	male	7371
county	10	at school	male	40742
county	10	left school	male	15698
county	10	never attended	male	78596
county	10	unspecified	male	2730
county	11	at school	male	23221
county	11	left school	male	16982
county	11	never attended	male	24643
county	11	unspecified	male	1835
county	12	at school	male	270391
county	12	left school	male	346260
county	12	never attended	male	86133
county	12	unspecified	male	17947
county	14	at school	male	90118
county	14	left school	male	120224
county	14	never attended	male	19457
county	14	unspecified	male	5114
county	15	at school	male	214922
county	15	left school	male	148151
county	15	never attended	male	61923
county	15	unspecified	male	7734
county	16	at school	male	212080
county	16	left school	male	243109
county	16	never attended	male	35574
county	16	unspecified	male	8508
county	17	at school	male	187877
county	17	left school	male	161764
county	17	never attended	male	37005
county	17	unspecified	male	6320
county	18	at school	male	123517
county	18	left school	male	125212
county	18	never attended	male	15650
county	18	unspecified	male	3653
county	20	at school	male	85265
county	20	left school	male	140821
county	20	never attended	male	13709
county	20	unspecified	male	3608
county	40	at school	male	156476
county	40	left school	male	116293
county	40	never attended	male	35187
county	40	unspecified	male	8596
county	21	at school	male	163644
county	21	left school	male	206083
county	21	never attended	male	25445
county	21	unspecified	male	6179
county	22	at school	male	286280
county	22	left school	male	436421
county	22	never attended	male	31046
county	22	unspecified	male	10298
county	28	at school	male	82359
county	28	left school	male	63332
county	28	never attended	male	16867
county	28	unspecified	male	2774
county	29	at school	male	159912
county	29	left school	male	147090
county	29	never attended	male	25949
county	29	unspecified	male	6296
county	30	at school	male	111827
county	30	left school	male	71451
county	30	never attended	male	64688
county	30	unspecified	male	3808
county	31	at school	male	75202
county	31	left school	male	78029
county	31	never attended	male	23345
county	31	unspecified	male	4817
county	32	at school	male	318392
county	32	left school	male	345560
county	32	never attended	male	51628
county	32	unspecified	male	15948
county	33	at school	male	157552
county	33	left school	male	114296
county	33	never attended	male	94955
county	33	unspecified	male	10761
county	34	at school	male	119125
county	34	left school	male	127006
county	34	never attended	male	57831
county	34	unspecified	male	7413
county	35	at school	male	124769
county	35	left school	male	120947
county	35	never attended	male	18477
county	35	unspecified	male	6290
county	36	at school	male	195328
county	36	left school	male	164091
county	36	never attended	male	29742
county	36	unspecified	male	8706
county	37	at school	male	333524
county	37	left school	male	284668
county	37	never attended	male	77912
county	37	unspecified	male	17310
county	39	at school	male	298735
county	39	left school	male	230738
county	39	never attended	male	55238
county	39	unspecified	male	11858
county	42	at school	male	203863
county	42	left school	male	185579
county	42	never attended	male	22354
county	42	unspecified	male	13580
county	43	at school	male	225500
county	43	left school	male	150338
county	43	never attended	male	24705
county	43	unspecified	male	8574
county	44	at school	male	209890
county	44	left school	male	142722
county	44	never attended	male	28076
county	44	unspecified	male	9238
county	45	at school	male	278075
county	45	left school	male	213054
county	45	never attended	male	35868
county	45	unspecified	male	12197
county	46	at school	male	104631
county	46	left school	male	89613
county	46	never attended	male	13706
county	46	unspecified	male	3152
county	47	at school	male	484427
county	47	left school	male	898849
county	47	never attended	male	58191
county	47	unspecified	male	38858
county	3	at school	female	207161
county	3	left school	female	139580
county	3	never attended	female	160240
county	3	unspecified	female	10035
county	4	at school	male	36950
county	4	left school	male	24632
county	4	never attended	male	41606
county	4	unspecified	male	1874
county	5	at school	female	16424
county	5	left school	female	16398
county	5	never attended	female	10275
county	5	unspecified	female	910
county	6	at school	male	51013
county	6	left school	male	64912
county	6	never attended	male	11038
county	6	unspecified	male	6933
county	7	at school	female	57967
county	7	left school	female	18269
county	7	never attended	female	181825
county	7	unspecified	female	6721
county	8	at school	male	99266
county	8	left school	male	29665
county	8	never attended	male	203669
county	8	unspecified	male	6481
county	11	at school	female	20948
county	11	left school	female	12996
county	11	never attended	female	28452
county	11	unspecified	female	781
county	13	at school	male	25395
county	13	left school	male	22532
county	13	never attended	male	7848
county	13	unspecified	male	775
county	14	at school	female	89150
county	14	left school	female	118331
county	14	never attended	female	31447
county	14	unspecified	female	3895
county	15	at school	female	207249
county	15	left school	female	171827
county	15	never attended	female	99252
county	16	at school	female	199404
county	16	left school	female	250784
county	16	never attended	female	55578
county	16	unspecified	female	6301
county	17	at school	female	177951
county	19	at school	male	125874
county	19	left school	male	172081
county	19	never attended	male	13014
county	19	unspecified	male	5916
county	20	at school	female	82572
county	20	left school	female	137731
county	20	never attended	female	27844
county	20	unspecified	female	2330
county	25	at school	male	31103
county	25	left school	male	13646
county	25	never attended	male	52707
county	25	unspecified	male	2116
county	40	at school	female	148301
county	40	left school	female	132907
county	40	never attended	female	59575
county	40	unspecified	female	7312
county	22	at school	female	283008
county	22	left school	female	436749
county	22	never attended	female	53833
county	22	unspecified	female	9288
county	23	at school	male	74742
county	23	left school	male	23498
county	23	never attended	male	305995
county	23	unspecified	male	10031
county	24	at school	male	82804
county	24	left school	male	39942
county	24	never attended	male	98870
county	24	unspecified	male	3995
county	26	at school	male	168612
county	26	left school	male	148491
county	26	never attended	male	39269
county	26	unspecified	male	8003
county	27	at school	male	186421
county	27	left school	male	180459
county	27	never attended	male	27666
county	27	unspecified	male	13308
county	28	at school	female	79688
county	28	left school	female	63509
county	28	never attended	female	22608
county	28	unspecified	female	2575
county	30	at school	female	105437
county	30	left school	female	70993
county	30	never attended	female	71016
county	30	unspecified	female	2967
county	31	at school	female	70751
county	31	left school	female	76011
county	31	never attended	female	34000
county	31	unspecified	female	2901
county	34	at school	female	110961
county	34	left school	female	113589
county	34	never attended	female	80594
county	35	at school	female	116375
county	35	left school	female	116015
county	35	never attended	female	27234
county	35	unspecified	female	4817
county	36	at school	female	183299
county	36	left school	female	170290
county	36	never attended	female	44822
county	36	unspecified	female	8193
county	37	at school	female	325039
county	37	left school	female	321980
county	37	never attended	female	110074
county	37	unspecified	female	14562
county	38	at school	male	113537
county	38	left school	male	97565
county	38	never attended	male	21596
county	38	unspecified	male	4129
county	39	at school	female	284434
county	39	left school	female	263111
county	39	never attended	female	70870
county	39	unspecified	female	10888
county	41	at school	male	171257
county	41	left school	male	145636
county	41	never attended	male	30181
county	41	unspecified	male	8267
county	42	at school	female	192916
county	42	left school	female	202528
county	42	never attended	female	42216
county	42	unspecified	female	7958
county	43	at school	female	202153
county	43	left school	female	188355
county	43	never attended	female	49350
county	43	unspecified	female	8702
county	45	at school	female	261919
county	45	left school	female	259422
county	45	never attended	female	64583
county	45	unspecified	female	11741
county	1	at school	male	145122
county	1	left school	male	256692
county	1	never attended	male	28937
county	1	unspecified	male	15975
county	1	at school	female	140747
county	1	left school	female	217170
county	1	never attended	female	46086
county	1	unspecified	female	9433
county	2	at school	female	112517
county	2	left school	female	78655
county	2	never attended	female	103738
county	2	unspecified	female	4536
county	4	at school	female	30439
county	4	left school	female	19622
county	4	never attended	female	54593
county	4	unspecified	female	1438
county	6	at school	female	48372
county	6	left school	female	59282
county	6	never attended	female	17187
county	6	unspecified	female	3256
county	8	at school	female	66236
county	8	left school	female	16005
county	8	never attended	female	189056
county	8	unspecified	female	3802
county	9	at school	female	135154
county	9	left school	female	23368
county	9	never attended	female	265814
county	9	unspecified	female	5085
county	10	at school	female	33918
county	10	left school	female	9586
county	10	never attended	female	82752
county	10	unspecified	female	1384
county	12	at school	female	270674
county	12	left school	female	338970
county	12	never attended	female	117716
county	12	unspecified	female	13754
county	13	at school	female	25098
county	13	left school	female	23094
county	13	never attended	female	12256
county	13	unspecified	female	729
county	15	unspecified	female	5277
county	17	left school	female	177543
county	17	never attended	female	57343
county	17	unspecified	female	4009
county	18	at school	female	118192
county	18	left school	female	133197
county	18	never attended	female	26387
county	18	unspecified	female	3222
county	19	at school	female	120154
county	19	left school	female	183327
county	19	never attended	female	24983
county	19	unspecified	female	3409
county	25	at school	female	25014
county	25	left school	female	9974
county	25	never attended	female	63516
county	25	unspecified	female	1092
county	21	at school	female	155549
county	21	left school	female	221178
county	21	never attended	female	46992
county	21	unspecified	female	5019
county	23	at school	female	58804
county	23	left school	female	17211
county	23	never attended	female	297540
county	23	unspecified	female	7564
county	24	at school	female	75523
county	24	left school	female	35690
county	24	never attended	female	114560
county	24	unspecified	female	3617
county	26	at school	female	161152
county	26	left school	female	153592
county	26	never attended	female	49323
county	26	unspecified	female	5851
county	27	at school	female	181150
county	27	left school	female	177522
county	27	never attended	female	36404
county	27	unspecified	female	9694
county	29	at school	female	152881
county	29	left school	female	147118
county	29	never attended	female	34849
county	29	unspecified	female	5465
county	32	at school	female	300742
county	32	left school	female	343244
county	32	never attended	female	72949
county	32	unspecified	female	10846
county	33	at school	female	138785
county	33	left school	female	101282
county	33	never attended	female	124728
county	33	unspecified	female	7677
county	34	unspecified	female	4204
county	38	at school	female	112411
county	38	left school	female	119387
county	38	never attended	female	30446
county	38	unspecified	female	4078
county	41	at school	female	159208
county	41	left school	female	173592
county	41	never attended	female	60846
county	41	unspecified	female	7182
county	44	at school	female	190347
county	44	left school	female	170717
county	44	never attended	female	48939
county	44	unspecified	female	8557
county	46	at school	female	99258
county	46	left school	female	104435
county	46	never attended	female	22252
county	46	unspecified	female	3304
county	47	at school	female	487872
county	47	left school	female	821743
county	47	never attended	female	72550
county	47	unspecified	female	27302
\.


--
-- Data for Name: schoolfires; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY schoolfires (geo_level, geo_code, total, schoolfires) FROM stdin;
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
-- Data for Name: treatment_type; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY treatment_type (geo_level, geo_code, type, treatment, total) FROM stdin;
county	1	ARI	sought treatment from health facility or provider	0
county	1	fever	sought treatment from health facility or provider	75.0999999999999943
county	1	diarrhoea	sought treatment from health facility or provider	63.2999999999999972
county	1	diarrhoea	ORT	88.4000000000000057
county	1	diarrhoea	fluid from ORS packet	76.5999999999999943
county	1	diarrhoea	zinc	30.6000000000000014
county	1	diarrhoea	ORS and zinc	30.6000000000000014
county	2	ARI	sought treatment from health facility or provider	62.3999999999999986
county	2	fever	sought treatment from health facility or provider	64.7000000000000028
county	2	diarrhoea	sought treatment from health facility or provider	62.2000000000000028
county	2	diarrhoea	ORT	73.9000000000000057
county	2	diarrhoea	fluid from ORS packet	70.2000000000000028
county	2	diarrhoea	zinc	26.8999999999999986
county	2	diarrhoea	ORS and zinc	25.6999999999999993
county	3	ARI	sought treatment from health facility or provider	60.5
county	3	fever	sought treatment from health facility or provider	69.7000000000000028
county	3	diarrhoea	sought treatment from health facility or provider	71.5
county	3	diarrhoea	ORT	80.4000000000000057
county	3	diarrhoea	fluid from ORS packet	74.5999999999999943
county	3	diarrhoea	zinc	0.699999999999999956
county	3	diarrhoea	ORS and zinc	0.699999999999999956
county	4	ARI	sought treatment from health facility or provider	73.2000000000000028
county	4	fever	sought treatment from health facility or provider	64.5
county	4	diarrhoea	sought treatment from health facility or provider	47.7999999999999972
county	4	diarrhoea	ORT	59.8999999999999986
county	4	diarrhoea	fluid from ORS packet	53.7000000000000028
county	4	diarrhoea	zinc	15.9000000000000004
county	4	diarrhoea	ORS and zinc	15.5999999999999996
county	5	ARI	sought treatment from health facility or provider	68.5999999999999943
county	5	fever	sought treatment from health facility or provider	45.2999999999999972
county	5	diarrhoea	sought treatment from health facility or provider	63.7000000000000028
county	5	diarrhoea	ORT	79
county	5	diarrhoea	fluid from ORS packet	54.7000000000000028
county	5	diarrhoea	zinc	11.5
county	5	diarrhoea	ORS and zinc	8.30000000000000071
county	6	ARI	sought treatment from health facility or provider	79.9000000000000057
county	6	fever	sought treatment from health facility or provider	56.2999999999999972
county	6	diarrhoea	sought treatment from health facility or provider	50.7999999999999972
county	6	diarrhoea	ORT	69.2000000000000028
county	6	diarrhoea	fluid from ORS packet	62
county	6	diarrhoea	zinc	7.29999999999999982
county	6	diarrhoea	ORS and zinc	6.09999999999999964
county	7	ARI	sought treatment from health facility or provider	0
county	7	fever	sought treatment from health facility or provider	41.3999999999999986
county	7	diarrhoea	sought treatment from health facility or provider	29.3999999999999986
county	7	diarrhoea	ORT	68.2999999999999972
county	7	diarrhoea	fluid from ORS packet	80.5
county	7	diarrhoea	zinc	10.8000000000000007
county	7	diarrhoea	ORS and zinc	10.8000000000000007
county	8	ARI	sought treatment from health facility or provider	33.6000000000000014
county	8	fever	sought treatment from health facility or provider	55.1000000000000014
county	8	diarrhoea	sought treatment from health facility or provider	57.2000000000000028
county	8	diarrhoea	ORT	69.7999999999999972
county	8	diarrhoea	fluid from ORS packet	72.2000000000000028
county	8	diarrhoea	zinc	8.40000000000000036
county	8	diarrhoea	ORS and zinc	6.70000000000000018
county	9	ARI	sought treatment from health facility or provider	0
county	9	fever	sought treatment from health facility or provider	0
county	9	diarrhoea	sought treatment from health facility or provider	0
county	9	diarrhoea	ORT	0
county	9	diarrhoea	fluid from ORS packet	0
county	9	diarrhoea	zinc	0
county	9	diarrhoea	ORS and zinc	0
county	10	ARI	sought treatment from health facility or provider	66.7999999999999972
county	10	fever	sought treatment from health facility or provider	63.1000000000000014
county	10	diarrhoea	sought treatment from health facility or provider	65.9000000000000057
county	10	diarrhoea	ORT	71.2000000000000028
county	10	diarrhoea	fluid from ORS packet	64.4000000000000057
county	10	diarrhoea	zinc	5
county	10	diarrhoea	ORS and zinc	3.29999999999999982
county	11	ARI	sought treatment from health facility or provider	63.8999999999999986
county	11	fever	sought treatment from health facility or provider	75.5999999999999943
county	11	diarrhoea	sought treatment from health facility or provider	56.8999999999999986
county	11	diarrhoea	ORT	81.7999999999999972
county	11	diarrhoea	fluid from ORS packet	74.7999999999999972
county	11	diarrhoea	zinc	4.59999999999999964
county	11	diarrhoea	ORS and zinc	4.59999999999999964
county	12	ARI	sought treatment from health facility or provider	0
county	12	fever	sought treatment from health facility or provider	72
county	12	diarrhoea	sought treatment from health facility or provider	69.7999999999999972
county	12	diarrhoea	ORT	65.2999999999999972
county	12	diarrhoea	fluid from ORS packet	52.2000000000000028
county	12	diarrhoea	zinc	1.60000000000000009
county	12	diarrhoea	ORS and zinc	0
county	13	ARI	sought treatment from health facility or provider	67.0999999999999943
county	13	fever	sought treatment from health facility or provider	75.2000000000000028
county	13	diarrhoea	sought treatment from health facility or provider	67.5
county	13	diarrhoea	ORT	75.4000000000000057
county	13	diarrhoea	fluid from ORS packet	53.2999999999999972
county	13	diarrhoea	zinc	5.09999999999999964
county	13	diarrhoea	ORS and zinc	5.09999999999999964
county	14	ARI	sought treatment from health facility or provider	0
county	14	fever	sought treatment from health facility or provider	72.4000000000000057
county	14	diarrhoea	sought treatment from health facility or provider	46.7000000000000028
county	14	diarrhoea	ORT	74.7999999999999972
county	14	diarrhoea	fluid from ORS packet	73.2999999999999972
county	14	diarrhoea	zinc	7.59999999999999964
county	14	diarrhoea	ORS and zinc	7.59999999999999964
county	15	ARI	sought treatment from health facility or provider	57.3999999999999986
county	15	fever	sought treatment from health facility or provider	60.7999999999999972
county	15	diarrhoea	sought treatment from health facility or provider	54.3999999999999986
county	15	diarrhoea	ORT	83.7000000000000028
county	15	diarrhoea	fluid from ORS packet	67.2000000000000028
county	15	diarrhoea	zinc	2
county	15	diarrhoea	ORS and zinc	2
county	16	ARI	sought treatment from health facility or provider	54.5
county	16	fever	sought treatment from health facility or provider	61.3999999999999986
county	16	diarrhoea	sought treatment from health facility or provider	51
county	16	diarrhoea	ORT	70.7000000000000028
county	16	diarrhoea	fluid from ORS packet	60.2000000000000028
county	16	diarrhoea	zinc	5.5
county	16	diarrhoea	ORS and zinc	5.5
county	17	ARI	sought treatment from health facility or provider	64.5
county	17	fever	sought treatment from health facility or provider	74.7999999999999972
county	17	diarrhoea	sought treatment from health facility or provider	52.1000000000000014
county	17	diarrhoea	ORT	75
county	17	diarrhoea	fluid from ORS packet	60.8999999999999986
county	17	diarrhoea	zinc	1.19999999999999996
county	17	diarrhoea	ORS and zinc	1.19999999999999996
county	18	ARI	sought treatment from health facility or provider	0
county	18	fever	sought treatment from health facility or provider	67
county	18	diarrhoea	sought treatment from health facility or provider	46
county	18	diarrhoea	ORT	81.9000000000000057
county	18	diarrhoea	fluid from ORS packet	65
county	18	diarrhoea	zinc	1.10000000000000009
county	18	diarrhoea	ORS and zinc	1.10000000000000009
county	19	ARI	sought treatment from health facility or provider	72.9000000000000057
county	19	fever	sought treatment from health facility or provider	65.5999999999999943
county	19	diarrhoea	sought treatment from health facility or provider	0
county	19	diarrhoea	ORT	0
county	19	diarrhoea	fluid from ORS packet	0
county	19	diarrhoea	zinc	0
county	19	diarrhoea	ORS and zinc	0
county	20	ARI	sought treatment from health facility or provider	0
county	20	fever	sought treatment from health facility or provider	74.7999999999999972
county	20	diarrhoea	sought treatment from health facility or provider	73.5999999999999943
county	20	diarrhoea	ORT	64.4000000000000057
county	20	diarrhoea	fluid from ORS packet	57.6000000000000014
county	20	diarrhoea	zinc	5.79999999999999982
county	20	diarrhoea	ORS and zinc	5.79999999999999982
county	21	ARI	sought treatment from health facility or provider	77.9000000000000057
county	21	fever	sought treatment from health facility or provider	83.2999999999999972
county	21	diarrhoea	sought treatment from health facility or provider	59.7999999999999972
county	21	diarrhoea	ORT	62.2000000000000028
county	21	diarrhoea	fluid from ORS packet	58.3999999999999986
county	21	diarrhoea	zinc	8.90000000000000036
county	21	diarrhoea	ORS and zinc	8.90000000000000036
county	22	ARI	sought treatment from health facility or provider	0
county	22	fever	sought treatment from health facility or provider	61.7999999999999972
county	22	diarrhoea	sought treatment from health facility or provider	69.9000000000000057
county	22	diarrhoea	ORT	80.5999999999999943
county	22	diarrhoea	fluid from ORS packet	72.2000000000000028
county	22	diarrhoea	zinc	11.8000000000000007
county	22	diarrhoea	ORS and zinc	11.8000000000000007
county	23	ARI	sought treatment from health facility or provider	0
county	23	fever	sought treatment from health facility or provider	63.3999999999999986
county	23	diarrhoea	sought treatment from health facility or provider	76.5
county	23	diarrhoea	ORT	44.7999999999999972
county	23	diarrhoea	fluid from ORS packet	45.6000000000000014
county	23	diarrhoea	zinc	13.6999999999999993
county	23	diarrhoea	ORS and zinc	4
county	24	ARI	sought treatment from health facility or provider	77.5
county	24	fever	sought treatment from health facility or provider	76.9000000000000057
county	24	diarrhoea	sought treatment from health facility or provider	63.2999999999999972
county	24	diarrhoea	ORT	23
county	24	diarrhoea	fluid from ORS packet	23.3999999999999986
county	24	diarrhoea	zinc	1.5
county	24	diarrhoea	ORS and zinc	1.5
county	25	ARI	sought treatment from health facility or provider	0
county	25	fever	sought treatment from health facility or provider	54.5
county	25	diarrhoea	sought treatment from health facility or provider	48.8999999999999986
county	25	diarrhoea	ORT	62.1000000000000014
county	25	diarrhoea	fluid from ORS packet	58.3999999999999986
county	25	diarrhoea	zinc	2.60000000000000009
county	25	diarrhoea	ORS and zinc	2.60000000000000009
county	26	ARI	sought treatment from health facility or provider	70.2999999999999972
county	26	fever	sought treatment from health facility or provider	56.2000000000000028
county	26	diarrhoea	sought treatment from health facility or provider	45.7000000000000028
county	26	diarrhoea	ORT	51.1000000000000014
county	26	diarrhoea	fluid from ORS packet	64.4000000000000057
county	26	diarrhoea	zinc	3.20000000000000018
county	26	diarrhoea	ORS and zinc	3.20000000000000018
county	27	ARI	sought treatment from health facility or provider	54.8999999999999986
county	27	fever	sought treatment from health facility or provider	53.2000000000000028
county	27	diarrhoea	sought treatment from health facility or provider	55.7000000000000028
county	27	diarrhoea	ORT	57.3999999999999986
county	27	diarrhoea	fluid from ORS packet	62.2999999999999972
county	27	diarrhoea	zinc	2.29999999999999982
county	27	diarrhoea	ORS and zinc	2.29999999999999982
county	28	ARI	sought treatment from health facility or provider	93.7000000000000028
county	28	fever	sought treatment from health facility or provider	63.8999999999999986
county	28	diarrhoea	sought treatment from health facility or provider	77
county	28	diarrhoea	ORT	88.4000000000000057
county	28	diarrhoea	fluid from ORS packet	73.2000000000000028
county	28	diarrhoea	zinc	0
county	28	diarrhoea	ORS and zinc	0
county	29	ARI	sought treatment from health facility or provider	65.7000000000000028
county	29	fever	sought treatment from health facility or provider	50.8999999999999986
county	29	diarrhoea	sought treatment from health facility or provider	48.8999999999999986
county	29	diarrhoea	ORT	74.5
county	29	diarrhoea	fluid from ORS packet	59.7999999999999972
county	29	diarrhoea	zinc	7.79999999999999982
county	29	diarrhoea	ORS and zinc	5.5
county	30	ARI	sought treatment from health facility or provider	65
county	30	fever	sought treatment from health facility or provider	71.5999999999999943
county	30	diarrhoea	sought treatment from health facility or provider	67.4000000000000057
county	30	diarrhoea	ORT	90.7999999999999972
county	30	diarrhoea	fluid from ORS packet	71.5999999999999943
county	30	diarrhoea	zinc	1.69999999999999996
county	30	diarrhoea	ORS and zinc	1.69999999999999996
county	31	ARI	sought treatment from health facility or provider	73.0999999999999943
county	31	fever	sought treatment from health facility or provider	73.5999999999999943
county	31	diarrhoea	sought treatment from health facility or provider	60
county	31	diarrhoea	ORT	74.7000000000000028
county	31	diarrhoea	fluid from ORS packet	58.3999999999999986
county	31	diarrhoea	zinc	1.60000000000000009
county	31	diarrhoea	ORS and zinc	1.60000000000000009
county	32	ARI	sought treatment from health facility or provider	76.2000000000000028
county	32	fever	sought treatment from health facility or provider	67.0999999999999943
county	32	diarrhoea	sought treatment from health facility or provider	53.2999999999999972
county	32	diarrhoea	ORT	82.9000000000000057
county	32	diarrhoea	fluid from ORS packet	69.5999999999999943
county	32	diarrhoea	zinc	0
county	32	diarrhoea	ORS and zinc	0
county	33	ARI	sought treatment from health facility or provider	68.5
county	33	fever	sought treatment from health facility or provider	61.7000000000000028
county	33	diarrhoea	sought treatment from health facility or provider	67.7000000000000028
county	33	diarrhoea	ORT	91.7999999999999972
county	33	diarrhoea	fluid from ORS packet	77.7999999999999972
county	33	diarrhoea	zinc	9.30000000000000071
county	33	diarrhoea	ORS and zinc	8
county	34	ARI	sought treatment from health facility or provider	61.3999999999999986
county	34	fever	sought treatment from health facility or provider	53.3999999999999986
county	34	diarrhoea	sought treatment from health facility or provider	69.9000000000000057
county	34	diarrhoea	ORT	70.7000000000000028
county	34	diarrhoea	fluid from ORS packet	81.2000000000000028
county	34	diarrhoea	zinc	1.69999999999999996
county	34	diarrhoea	ORS and zinc	1.69999999999999996
county	35	ARI	sought treatment from health facility or provider	64.7000000000000028
county	35	fever	sought treatment from health facility or provider	65.2999999999999972
county	35	diarrhoea	sought treatment from health facility or provider	55.7999999999999972
county	35	diarrhoea	ORT	83.5
county	35	diarrhoea	fluid from ORS packet	68
county	35	diarrhoea	zinc	2.39999999999999991
county	35	diarrhoea	ORS and zinc	0
county	36	ARI	sought treatment from health facility or provider	61.7999999999999972
county	36	fever	sought treatment from health facility or provider	68.9000000000000057
county	36	diarrhoea	sought treatment from health facility or provider	56.7000000000000028
county	36	diarrhoea	ORT	68.9000000000000057
county	36	diarrhoea	fluid from ORS packet	65.4000000000000057
county	36	diarrhoea	zinc	7.20000000000000018
county	36	diarrhoea	ORS and zinc	7.20000000000000018
county	37	ARI	sought treatment from health facility or provider	57.7999999999999972
county	37	fever	sought treatment from health facility or provider	43.6000000000000014
county	37	diarrhoea	sought treatment from health facility or provider	50
county	37	diarrhoea	ORT	76
county	37	diarrhoea	fluid from ORS packet	59.2999999999999972
county	37	diarrhoea	zinc	4.40000000000000036
county	37	diarrhoea	ORS and zinc	4.40000000000000036
county	38	ARI	sought treatment from health facility or provider	61.6000000000000014
county	38	fever	sought treatment from health facility or provider	53.5
county	38	diarrhoea	sought treatment from health facility or provider	50.1000000000000014
county	38	diarrhoea	ORT	68.4000000000000057
county	38	diarrhoea	fluid from ORS packet	65.5999999999999943
county	38	diarrhoea	zinc	9.90000000000000036
county	38	diarrhoea	ORS and zinc	9.19999999999999929
county	39	ARI	sought treatment from health facility or provider	49.1000000000000014
county	39	fever	sought treatment from health facility or provider	52.6000000000000014
county	39	diarrhoea	sought treatment from health facility or provider	40.5
county	39	diarrhoea	ORT	69
county	39	diarrhoea	fluid from ORS packet	59.5
county	39	diarrhoea	zinc	5.40000000000000036
county	39	diarrhoea	ORS and zinc	4.90000000000000036
county	40	ARI	sought treatment from health facility or provider	83.9000000000000057
county	40	fever	sought treatment from health facility or provider	61.3999999999999986
county	40	diarrhoea	sought treatment from health facility or provider	55.8999999999999986
county	40	diarrhoea	ORT	56.7000000000000028
county	40	diarrhoea	fluid from ORS packet	56.8999999999999986
county	40	diarrhoea	zinc	2.5
county	40	diarrhoea	ORS and zinc	2.5
county	41	ARI	sought treatment from health facility or provider	79.2000000000000028
county	41	fever	sought treatment from health facility or provider	75.7000000000000028
county	41	diarrhoea	sought treatment from health facility or provider	65.5999999999999943
county	41	diarrhoea	ORT	68.0999999999999943
county	41	diarrhoea	fluid from ORS packet	51.2999999999999972
county	41	diarrhoea	zinc	17
county	41	diarrhoea	ORS and zinc	17
county	42	ARI	sought treatment from health facility or provider	0
county	42	fever	sought treatment from health facility or provider	62.5
county	42	diarrhoea	sought treatment from health facility or provider	59.5
county	42	diarrhoea	ORT	62.6000000000000014
county	42	diarrhoea	fluid from ORS packet	51.6000000000000014
county	42	diarrhoea	zinc	14.6999999999999993
county	42	diarrhoea	ORS and zinc	14.6999999999999993
county	43	ARI	sought treatment from health facility or provider	67.2999999999999972
county	43	fever	sought treatment from health facility or provider	64.7000000000000028
county	43	diarrhoea	sought treatment from health facility or provider	70.5999999999999943
county	43	diarrhoea	ORT	90.0999999999999943
county	43	diarrhoea	fluid from ORS packet	73.9000000000000057
county	43	diarrhoea	zinc	20.1999999999999993
county	43	diarrhoea	ORS and zinc	18.8999999999999986
county	44	ARI	sought treatment from health facility or provider	75.2000000000000028
county	44	fever	sought treatment from health facility or provider	62.2000000000000028
county	44	diarrhoea	sought treatment from health facility or provider	55.3999999999999986
county	44	diarrhoea	ORT	59.1000000000000014
county	44	diarrhoea	fluid from ORS packet	51.5
county	44	diarrhoea	zinc	3.5
county	44	diarrhoea	ORS and zinc	2.60000000000000009
county	45	ARI	sought treatment from health facility or provider	64.2000000000000028
county	45	fever	sought treatment from health facility or provider	71.0999999999999943
county	45	diarrhoea	sought treatment from health facility or provider	45.5
county	45	diarrhoea	ORT	82
county	45	diarrhoea	fluid from ORS packet	63.2999999999999972
county	45	diarrhoea	zinc	11.9000000000000004
county	45	diarrhoea	ORS and zinc	9.40000000000000036
county	46	ARI	sought treatment from health facility or provider	0
county	46	fever	sought treatment from health facility or provider	0
county	46	diarrhoea	sought treatment from health facility or provider	0
county	46	diarrhoea	ORT	0
county	46	diarrhoea	fluid from ORS packet	0
county	46	diarrhoea	zinc	0
county	46	diarrhoea	ORS and zinc	0
county	47	ARI	sought treatment from health facility or provider	65.2000000000000028
county	47	fever	sought treatment from health facility or provider	64.2999999999999972
county	47	diarrhoea	sought treatment from health facility or provider	57.3999999999999986
county	47	diarrhoea	ORT	80.7999999999999972
county	47	diarrhoea	fluid from ORS packet	70.5999999999999943
county	47	diarrhoea	zinc	12.8000000000000007
county	47	diarrhoea	ORS and zinc	12.8000000000000007
country	KE	ARI	sought treatment from health facility or provider	65.9000000000000057
country	KE	fever	sought treatment from health facility or provider	62.8999999999999986
country	KE	diarrhoea	sought treatment from health facility or provider	58
country	KE	diarrhoea	ORT	73.7999999999999972
country	KE	diarrhoea	fluid from ORS packet	64.5999999999999943
country	KE	diarrhoea	zinc	8.09999999999999964
country	KE	diarrhoea	ORS and zinc	7.5
\.


--
-- Data for Name: treatmentofchildrenwithfever; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY treatmentofchildrenwithfever (geo_level, geo_code, "treatment of children with fever", total) FROM stdin;
county	1	had fever	22.5
county	1	sort advice or treatment	91.0999999999999943
county	1	blood drawn for testing	46.7000000000000028
county	1	took any anti-malarial drug	14.9000000000000004
county	1	took any ACT	13.5
county	1	took any ACT on same or next day	3
county	2	had fever	25.6999999999999993
county	2	sort advice or treatment	69.5
county	2	blood drawn for testing	42.7999999999999972
county	2	took any anti-malarial drug	33.2000000000000028
county	2	took any ACT	30
county	2	took any ACT on same or next day	11.8000000000000007
county	3	had fever	31.3000000000000007
county	3	sort advice or treatment	78.5999999999999943
county	3	blood drawn for testing	31
county	3	took any anti-malarial drug	2.10000000000000009
county	3	took any ACT	1
county	3	took any ACT on same or next day	0
county	4	had fever	26.8000000000000007
county	4	sort advice or treatment	81.0999999999999943
county	4	blood drawn for testing	22.6000000000000014
county	4	took any anti-malarial drug	12.3000000000000007
county	4	took any ACT	9.5
county	4	took any ACT on same or next day	5.79999999999999982
county	5	had fever	22.1999999999999993
county	5	sort advice or treatment	61.5
county	5	blood drawn for testing	11.8000000000000007
county	5	took any anti-malarial drug	5.70000000000000018
county	5	took any ACT	1.19999999999999996
county	5	took any ACT on same or next day	0
county	6	had fever	29.5
county	6	sort advice or treatment	58.6000000000000014
county	6	blood drawn for testing	21.6999999999999993
county	6	took any anti-malarial drug	1.30000000000000004
county	6	took any ACT	1.30000000000000004
county	6	took any ACT on same or next day	1.30000000000000004
county	7	had fever	7
county	7	sort advice or treatment	44
county	7	blood drawn for testing	52.3999999999999986
county	7	took any anti-malarial drug	5.59999999999999964
county	7	took any ACT	5.59999999999999964
county	7	took any ACT on same or next day	5.59999999999999964
county	8	had fever	12.5
county	8	sort advice or treatment	65.2999999999999972
county	8	blood drawn for testing	19.8999999999999986
county	8	took any anti-malarial drug	4.29999999999999982
county	8	took any ACT	0.400000000000000022
county	8	took any ACT on same or next day	0
county	9	had fever	4.79999999999999982
county	9	sort advice or treatment	0
county	9	blood drawn for testing	0
county	9	took any anti-malarial drug	0
county	9	took any ACT	0
county	9	took any ACT on same or next day	0
county	10	had fever	19.3000000000000007
county	10	sort advice or treatment	63.1000000000000014
county	10	blood drawn for testing	22.3000000000000007
county	10	took any anti-malarial drug	10.5999999999999996
county	10	took any ACT	10.0999999999999996
county	10	took any ACT on same or next day	1.80000000000000004
county	11	had fever	13.1999999999999993
county	11	sort advice or treatment	78.7000000000000028
county	11	blood drawn for testing	60.7000000000000028
county	11	took any anti-malarial drug	51.1000000000000014
county	11	took any ACT	43.3999999999999986
county	11	took any ACT on same or next day	43.3999999999999986
county	12	had fever	26
county	12	sort advice or treatment	73.2999999999999972
county	12	blood drawn for testing	54
county	12	took any anti-malarial drug	23.1000000000000014
county	12	took any ACT	14.9000000000000004
county	12	took any ACT on same or next day	7.79999999999999982
county	13	had fever	28.1000000000000014
county	13	sort advice or treatment	78.9000000000000057
county	13	blood drawn for testing	41.8999999999999986
county	13	took any anti-malarial drug	27.1999999999999993
county	13	took any ACT	9.80000000000000071
county	13	took any ACT on same or next day	6.29999999999999982
county	14	had fever	13.8000000000000007
county	14	sort advice or treatment	72.4000000000000057
county	14	blood drawn for testing	38.3999999999999986
county	14	took any anti-malarial drug	21.6999999999999993
county	14	took any ACT	21.6999999999999993
county	14	took any ACT on same or next day	10.9000000000000004
county	15	had fever	17
county	15	sort advice or treatment	72.0999999999999943
county	15	blood drawn for testing	9.09999999999999964
county	15	took any anti-malarial drug	7.40000000000000036
county	15	took any ACT	3.5
county	15	took any ACT on same or next day	2.5
county	16	had fever	13.5999999999999996
county	16	sort advice or treatment	81.5999999999999943
county	16	blood drawn for testing	18.3999999999999986
county	16	took any anti-malarial drug	12.8000000000000007
county	16	took any ACT	10.8000000000000007
county	16	took any ACT on same or next day	6.20000000000000018
county	17	had fever	14.0999999999999996
county	17	sort advice or treatment	89.7000000000000028
county	17	blood drawn for testing	21.6999999999999993
county	17	took any anti-malarial drug	13.6999999999999993
county	17	took any ACT	7.79999999999999982
county	17	took any ACT on same or next day	0
county	18	had fever	17.1999999999999993
county	18	sort advice or treatment	70.7999999999999972
county	18	blood drawn for testing	22.6000000000000014
county	18	took any anti-malarial drug	6.70000000000000018
county	18	took any ACT	5.29999999999999982
county	18	took any ACT on same or next day	2.79999999999999982
county	19	had fever	14.0999999999999996
county	19	sort advice or treatment	67.2000000000000028
county	19	blood drawn for testing	17.5
county	19	took any anti-malarial drug	0
county	19	took any ACT	0
county	19	took any ACT on same or next day	0
county	20	had fever	21.1999999999999993
county	20	sort advice or treatment	82.4000000000000057
county	20	blood drawn for testing	28.6000000000000014
county	20	took any anti-malarial drug	18.6000000000000014
county	20	took any ACT	18.6000000000000014
county	20	took any ACT on same or next day	16.1999999999999993
county	21	had fever	17.6999999999999993
county	21	sort advice or treatment	85.0999999999999943
county	21	blood drawn for testing	3.70000000000000018
county	21	took any anti-malarial drug	0
county	21	took any ACT	0
county	21	took any ACT on same or next day	0
county	22	had fever	18.5
county	22	sort advice or treatment	64.7999999999999972
county	22	blood drawn for testing	33.6000000000000014
county	22	took any anti-malarial drug	3.20000000000000018
county	22	took any ACT	1.19999999999999996
county	22	took any ACT on same or next day	1.19999999999999996
county	23	had fever	11.4000000000000004
county	23	sort advice or treatment	63.3999999999999986
county	23	blood drawn for testing	49.5
county	23	took any anti-malarial drug	29.8999999999999986
county	23	took any ACT	21.6999999999999993
county	23	took any ACT on same or next day	18.5
county	24	had fever	9.40000000000000036
county	24	sort advice or treatment	80.4000000000000057
county	24	blood drawn for testing	20.6000000000000014
county	24	took any anti-malarial drug	32.2000000000000028
county	24	took any ACT	16.1000000000000014
county	24	took any ACT on same or next day	16.1000000000000014
county	25	had fever	19.1000000000000014
county	25	sort advice or treatment	54.5
county	25	blood drawn for testing	16.6000000000000014
county	25	took any anti-malarial drug	6.79999999999999982
county	25	took any ACT	5
county	25	took any ACT on same or next day	2.5
county	26	had fever	21.8999999999999986
county	26	sort advice or treatment	65.9000000000000057
county	26	blood drawn for testing	45.2000000000000028
county	26	took any anti-malarial drug	12.4000000000000004
county	26	took any ACT	10.9000000000000004
county	26	took any ACT on same or next day	4.09999999999999964
county	27	had fever	19.3000000000000007
county	27	sort advice or treatment	62.7999999999999972
county	27	blood drawn for testing	17
county	27	took any anti-malarial drug	5.79999999999999982
county	27	took any ACT	4.70000000000000018
county	27	took any ACT on same or next day	1.80000000000000004
county	28	had fever	29.6999999999999993
county	28	sort advice or treatment	67.0999999999999943
county	28	blood drawn for testing	13.5
county	28	took any anti-malarial drug	2
county	28	took any ACT	1.5
county	28	took any ACT on same or next day	1.5
county	29	had fever	19.6999999999999993
county	29	sort advice or treatment	52.7999999999999972
county	29	blood drawn for testing	12.1999999999999993
county	29	took any anti-malarial drug	8.80000000000000071
county	29	took any ACT	8.80000000000000071
county	29	took any ACT on same or next day	5.29999999999999982
county	30	had fever	22.8999999999999986
county	30	sort advice or treatment	71.5999999999999943
county	30	blood drawn for testing	39.1000000000000014
county	30	took any anti-malarial drug	27.6999999999999993
county	30	took any ACT	22.8999999999999986
county	30	took any ACT on same or next day	11.4000000000000004
county	31	had fever	21.6000000000000014
county	31	sort advice or treatment	74.9000000000000057
county	31	blood drawn for testing	26
county	31	took any anti-malarial drug	16.8000000000000007
county	31	took any ACT	6.20000000000000018
county	31	took any ACT on same or next day	6.20000000000000018
county	32	had fever	15.5
county	32	sort advice or treatment	67.9000000000000057
county	32	blood drawn for testing	27.6000000000000014
county	32	took any anti-malarial drug	11.5999999999999996
county	32	took any ACT	11
county	32	took any ACT on same or next day	6.79999999999999982
county	33	had fever	30.6999999999999993
county	33	sort advice or treatment	78
county	33	blood drawn for testing	20.3999999999999986
county	33	took any anti-malarial drug	13.3000000000000007
county	33	took any ACT	9.69999999999999929
county	33	took any ACT on same or next day	3.60000000000000009
county	34	had fever	25.6999999999999993
county	34	sort advice or treatment	64.7000000000000028
county	34	blood drawn for testing	21.8000000000000007
county	34	took any anti-malarial drug	1.39999999999999991
county	34	took any ACT	0
county	34	took any ACT on same or next day	0
county	35	had fever	25.6000000000000014
county	35	sort advice or treatment	70.7000000000000028
county	35	blood drawn for testing	37.8999999999999986
county	35	took any anti-malarial drug	19.3999999999999986
county	35	took any ACT	14.4000000000000004
county	35	took any ACT on same or next day	6.90000000000000036
county	36	had fever	20.8000000000000007
county	36	sort advice or treatment	73.9000000000000057
county	36	blood drawn for testing	14.9000000000000004
county	36	took any anti-malarial drug	21
county	36	took any ACT	12.9000000000000004
county	36	took any ACT on same or next day	8.09999999999999964
county	37	had fever	28.8999999999999986
county	37	sort advice or treatment	56
county	37	blood drawn for testing	34.8999999999999986
county	37	took any anti-malarial drug	38.7000000000000028
county	37	took any ACT	38.3999999999999986
county	37	took any ACT on same or next day	19.6000000000000014
county	38	had fever	49.2000000000000028
county	38	sort advice or treatment	69.0999999999999943
county	38	blood drawn for testing	34.3999999999999986
county	38	took any anti-malarial drug	40.7000000000000028
county	38	took any ACT	39.5
county	38	took any ACT on same or next day	18
county	39	had fever	35.7999999999999972
county	39	sort advice or treatment	74.5999999999999943
county	39	blood drawn for testing	41.6000000000000014
county	39	took any anti-malarial drug	58.7000000000000028
county	39	took any ACT	55.1000000000000014
county	39	took any ACT on same or next day	33.5
county	40	had fever	42.7000000000000028
county	40	sort advice or treatment	67.9000000000000057
county	40	blood drawn for testing	37.2000000000000028
county	40	took any anti-malarial drug	62.8999999999999986
county	40	took any ACT	59.6000000000000014
county	40	took any ACT on same or next day	36.5
county	41	had fever	44.8999999999999986
county	41	sort advice or treatment	80.7000000000000028
county	41	blood drawn for testing	61.1000000000000014
county	41	took any anti-malarial drug	59.3999999999999986
county	41	took any ACT	59.2000000000000028
county	41	took any ACT on same or next day	38.3999999999999986
county	42	had fever	30.8999999999999986
county	42	sort advice or treatment	74.9000000000000057
county	42	blood drawn for testing	48.7999999999999972
county	42	took any anti-malarial drug	46
county	42	took any ACT	39.5
county	42	took any ACT on same or next day	18.8000000000000007
county	43	had fever	45.6000000000000014
county	43	sort advice or treatment	67.5
county	43	blood drawn for testing	50.7000000000000028
county	43	took any anti-malarial drug	51.7000000000000028
county	43	took any ACT	46.5
county	43	took any ACT on same or next day	29.8999999999999986
county	44	had fever	48.2000000000000028
county	44	sort advice or treatment	80.4000000000000057
county	44	blood drawn for testing	42.6000000000000014
county	44	took any anti-malarial drug	42.3999999999999986
county	44	took any ACT	37.2000000000000028
county	44	took any ACT on same or next day	21
county	45	had fever	28.1000000000000014
county	45	sort advice or treatment	80.2000000000000028
county	45	blood drawn for testing	27.1000000000000014
county	45	took any anti-malarial drug	46.8999999999999986
county	45	took any ACT	27.1999999999999993
county	45	took any ACT on same or next day	13.4000000000000004
county	46	had fever	5.70000000000000018
county	46	sort advice or treatment	0
county	46	blood drawn for testing	0
county	46	took any anti-malarial drug	0
county	46	took any ACT	0
county	46	took any ACT on same or next day	0
county	47	had fever	18.6999999999999993
county	47	sort advice or treatment	67.4000000000000057
county	47	blood drawn for testing	36
county	47	took any anti-malarial drug	10.5999999999999996
county	47	took any ACT	6.90000000000000036
county	47	took any ACT on same or next day	3.79999999999999982
country	KE	had fever	24.3999999999999986
country	KE	sort advice or treatment	71.7000000000000028
country	KE	blood drawn for testing	34.8999999999999986
country	KE	took any anti-malarial drug	27
country	KE	took any ACT	23.1000000000000014
country	KE	took any ACT on same or next day	13.0999999999999996
\.


--
-- Data for Name: typesofcrime; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY typesofcrime (geo_level, geo_code, typesofcrime, total) FROM stdin;
county	22	homicide	135
county	22	offences against morality	238
county	22	theft of vehicle and other parts	1310
county	22	robbery	252
county	22	breakings	319
county	22	theft of stock	43
county	22	stealing	632
county	22	theft by servant	197
county	22	dangerous drugs	741
county	22	traffic offences	2
county	22	criminal damage	252
county	22	economic crimes	299
county	22	corruption	1
county	22	offences involving officers	2
county	22	offences involving tourist	0
county	22	other penal code offences	345
county	32	homicide	128
county	32	offences against morality	419
county	32	theft of vehicle and other parts	1115
county	32	robbery	187
county	32	breakings	344
county	32	theft of stock	104
county	32	stealing	695
county	32	theft by servant	161
county	32	dangerous drugs	358
county	32	traffic offences	12
county	32	criminal damage	221
county	32	economic crimes	292
county	32	corruption	5
county	32	offences involving officers	0
county	32	offences involving tourist	0
county	32	other penal code offences	343
county	47	homicide	93
county	47	offences against morality	236
county	47	theft of vehicle and other parts	1154
county	47	robbery	256
county	47	breakings	279
county	47	theft of stock	2
county	47	stealing	858
county	47	theft by servant	245
county	47	dangerous drugs	270
county	47	traffic offences	5
county	47	criminal damage	132
county	47	economic crimes	539
county	47	corruption	8
county	47	offences involving officers	3
county	47	offences involving tourist	4
county	47	other penal code offences	299
county	1	homicide	43
county	1	offences against morality	226
county	1	theft of vehicle and other parts	664
county	1	robbery	136
county	1	breakings	212
county	1	theft of stock	15
county	1	stealing	619
county	1	theft by servant	131
county	1	dangerous drugs	498
county	1	traffic offences	6
county	1	criminal damage	104
county	1	economic crimes	219
county	1	corruption	12
county	1	offences involving officers	8
county	1	offences involving tourist	0
county	1	other penal code offences	301
county	12	homicide	107
county	12	offences against morality	152
county	12	theft of vehicle and other parts	1267
county	12	robbery	253
county	12	breakings	240
county	12	theft of stock	121
county	12	stealing	831
county	12	theft by servant	165
county	12	dangerous drugs	143
county	12	traffic offences	4
county	12	criminal damage	374
county	12	economic crimes	133
county	12	corruption	2
county	12	offences involving officers	12
county	12	offences involving tourist	0
county	12	other penal code offences	411
county	39	homicide	101
county	39	offences against morality	373
county	39	theft of vehicle and other parts	893
county	39	robbery	108
county	39	breakings	257
county	39	theft of stock	58
county	39	stealing	317
county	39	theft by servant	56
county	39	dangerous drugs	123
county	39	traffic offences	1
county	39	criminal damage	184
county	39	economic crimes	113
county	39	corruption	0
county	39	offences involving officers	0
county	39	offences involving tourist	1
county	39	other penal code offences	267
county	37	homicide	99
county	37	offences against morality	227
county	37	theft of vehicle and other parts	869
county	37	robbery	104
county	37	breakings	231
county	37	theft of stock	59
county	37	stealing	309
county	37	theft by servant	58
county	37	dangerous drugs	108
county	37	traffic offences	0
county	37	criminal damage	122
county	37	economic crimes	129
county	37	corruption	1
county	37	offences involving officers	0
county	37	offences involving tourist	0
county	37	other penal code offences	198
county	21	homicide	112
county	21	offences against morality	150
county	21	theft of vehicle and other parts	593
county	21	robbery	63
county	21	breakings	170
county	21	theft of stock	37
county	21	stealing	258
county	21	theft by servant	49
county	21	dangerous drugs	502
county	21	traffic offences	3
county	21	criminal damage	122
county	21	economic crimes	40
county	21	corruption	1
county	21	offences involving officers	0
county	21	offences involving tourist	0
county	21	other penal code offences	263
county	42	homicide	76
county	42	offences against morality	167
county	42	theft of vehicle and other parts	636
county	42	robbery	105
county	42	breakings	184
county	42	theft of stock	119
county	42	stealing	296
county	42	theft by servant	78
county	42	dangerous drugs	190
county	42	traffic offences	0
county	42	criminal damage	92
county	42	economic crimes	82
county	42	corruption	1
county	42	offences involving officers	3
county	42	offences involving tourist	0
county	42	other penal code offences	264
county	3	homicide	238
county	3	offences against morality	293
county	3	theft of vehicle and other parts	631
county	3	robbery	78
county	3	breakings	119
county	3	theft of stock	31
county	3	stealing	203
county	3	theft by servant	48
county	3	dangerous drugs	206
county	3	traffic offences	20
county	3	criminal damage	85
county	3	economic crimes	76
county	3	corruption	4
county	3	offences involving officers	0
county	3	offences involving tourist	2
county	3	other penal code offences	165
county	45	homicide	87
county	45	offences against morality	175
county	45	theft of vehicle and other parts	895
county	45	robbery	50
county	45	breakings	160
county	45	theft of stock	29
county	45	stealing	190
county	45	theft by servant	21
county	45	dangerous drugs	70
county	45	traffic offences	26
county	45	criminal damage	98
county	45	economic crimes	63
county	45	corruption	2
county	45	offences involving officers	0
county	45	offences involving tourist	1
county	45	other penal code offences	151
county	26	homicide	38
county	26	offences against morality	215
county	26	theft of vehicle and other parts	590
county	26	robbery	58
county	26	breakings	158
county	26	theft of stock	50
county	26	stealing	186
county	26	theft by servant	48
county	26	dangerous drugs	62
county	26	traffic offences	0
county	26	criminal damage	92
county	26	economic crimes	88
county	26	corruption	0
county	26	offences involving officers	1
county	26	offences involving tourist	0
county	26	other penal code offences	195
county	19	homicide	116
county	19	offences against morality	139
county	19	theft of vehicle and other parts	431
county	19	robbery	76
county	19	breakings	169
county	19	theft of stock	41
county	19	stealing	192
county	19	theft by servant	54
county	19	dangerous drugs	171
county	19	traffic offences	1
county	19	criminal damage	107
county	19	economic crimes	55
county	19	corruption	1
county	19	offences involving officers	0
county	19	offences involving tourist	0
county	19	other penal code offences	115
county	27	homicide	27
county	27	offences against morality	170
county	27	theft of vehicle and other parts	533
county	27	robbery	37
county	27	breakings	174
county	27	theft of stock	34
county	27	stealing	212
county	27	theft by servant	60
county	27	dangerous drugs	56
county	27	traffic offences	1
county	27	criminal damage	79
county	27	economic crimes	130
county	27	corruption	1
county	27	offences involving officers	3
county	27	offences involving tourist	0
county	27	other penal code offences	137
county	43	homicide	59
county	43	offences against morality	148
county	43	theft of vehicle and other parts	562
county	43	robbery	46
county	43	breakings	132
county	43	theft of stock	44
county	43	stealing	169
county	43	theft by servant	30
county	43	dangerous drugs	102
county	43	traffic offences	0
county	43	criminal damage	105
county	43	economic crimes	59
county	43	corruption	0
county	43	offences involving officers	2
county	43	offences involving tourist	0
county	43	other penal code offences	110
county	40	homicide	62
county	40	offences against morality	207
county	40	theft of vehicle and other parts	493
county	40	robbery	45
county	40	breakings	124
county	40	theft of stock	40
county	40	stealing	205
county	40	theft by servant	33
county	40	dangerous drugs	63
county	40	traffic offences	1
county	40	criminal damage	89
county	40	economic crimes	67
county	40	corruption	1
county	40	offences involving officers	0
county	40	offences involving tourist	0
county	40	other penal code offences	123
county	35	homicide	62
county	35	offences against morality	116
county	35	theft of vehicle and other parts	596
county	35	robbery	46
county	35	breakings	151
county	35	theft of stock	44
county	35	stealing	164
county	35	theft by servant	28
county	35	dangerous drugs	50
county	35	traffic offences	1
county	35	criminal damage	94
county	35	economic crimes	66
county	35	corruption	1
county	35	offences involving officers	0
county	35	offences involving tourist	0
county	35	other penal code offences	91
county	41	homicide	79
county	41	offences against morality	146
county	41	theft of vehicle and other parts	514
county	41	robbery	54
county	41	breakings	136
county	41	theft of stock	105
county	41	stealing	139
county	41	theft by servant	25
county	41	dangerous drugs	66
county	41	traffic offences	0
county	41	criminal damage	81
county	41	economic crimes	27
county	41	corruption	1
county	41	offences involving officers	0
county	41	offences involving tourist	0
county	41	other penal code offences	120
county	16	homicide	25
county	16	offences against morality	88
county	16	theft of vehicle and other parts	431
county	16	robbery	55
county	16	breakings	139
county	16	theft of stock	41
county	16	stealing	186
county	16	theft by servant	58
county	16	dangerous drugs	167
county	16	traffic offences	1
county	16	criminal damage	120
county	16	economic crimes	43
county	16	corruption	3
county	16	offences involving officers	2
county	16	offences involving tourist	0
county	16	other penal code offences	102
county	18	homicide	56
county	18	offences against morality	144
county	18	theft of vehicle and other parts	354
county	18	robbery	39
county	18	breakings	168
county	18	theft of stock	72
county	18	stealing	176
county	18	theft by servant	56
county	18	dangerous drugs	132
county	18	traffic offences	0
county	18	criminal damage	80
county	18	economic crimes	49
county	18	corruption	1
county	18	offences involving officers	0
county	18	offences involving tourist	0
county	18	other penal code offences	119
county	33	homicide	47
county	33	offences against morality	127
county	33	theft of vehicle and other parts	477
county	33	robbery	43
county	33	breakings	101
county	33	theft of stock	82
county	33	stealing	171
county	33	theft by servant	35
county	33	dangerous drugs	46
county	33	traffic offences	1
county	33	criminal damage	48
county	33	economic crimes	46
county	33	corruption	0
county	33	offences involving officers	0
county	33	offences involving tourist	0
county	33	other penal code offences	111
county	44	homicide	68
county	44	offences against morality	109
county	44	theft of vehicle and other parts	361
county	44	robbery	66
county	44	breakings	92
county	44	theft of stock	32
county	44	stealing	168
county	44	theft by servant	12
county	44	dangerous drugs	87
county	44	traffic offences	2
county	44	criminal damage	78
county	44	economic crimes	49
county	44	corruption	0
county	44	offences involving officers	0
county	44	offences involving tourist	0
county	44	other penal code offences	158
county	34	homicide	41
county	34	offences against morality	96
county	34	theft of vehicle and other parts	346
county	34	robbery	85
county	34	breakings	82
county	34	theft of stock	40
county	34	stealing	185
county	34	theft by servant	54
county	34	dangerous drugs	107
county	34	traffic offences	0
county	34	criminal damage	57
county	34	economic crimes	72
county	34	corruption	2
county	34	offences involving officers	1
county	34	offences involving tourist	0
county	34	other penal code offences	88
county	20	homicide	54
county	20	offences against morality	61
county	20	theft of vehicle and other parts	320
county	20	robbery	31
county	20	breakings	82
county	20	theft of stock	21
county	20	stealing	112
county	20	theft by servant	53
county	20	dangerous drugs	119
county	20	traffic offences	3
county	20	criminal damage	83
county	20	economic crimes	39
county	20	corruption	1
county	20	offences involving officers	0
county	20	offences involving tourist	0
county	20	other penal code offences	198
county	38	homicide	37
county	38	offences against morality	135
county	38	theft of vehicle and other parts	390
county	38	robbery	52
county	38	breakings	97
county	38	theft of stock	25
county	38	stealing	106
county	38	theft by servant	13
county	38	dangerous drugs	118
county	38	traffic offences	0
county	38	criminal damage	46
county	38	economic crimes	31
county	38	corruption	0
county	38	offences involving officers	0
county	38	offences involving tourist	0
county	38	other penal code offences	96
county	15	homicide	60
county	15	offences against morality	165
county	15	theft of vehicle and other parts	429
county	15	robbery	57
county	15	breakings	115
county	15	theft of stock	78
county	15	stealing	200
county	15	theft by servant	53
county	15	dangerous drugs	129
county	15	traffic offences	12
county	15	criminal damage	92
county	15	economic crimes	39
county	15	corruption	0
county	15	offences involving officers	2
county	15	offences involving tourist	0
county	15	other penal code offences	142
county	46	homicide	89
county	46	offences against morality	120
county	46	theft of vehicle and other parts	428
county	46	robbery	51
county	46	breakings	79
county	46	theft of stock	40
county	46	stealing	99
county	46	theft by servant	16
county	46	dangerous drugs	43
county	46	traffic offences	0
county	46	criminal damage	75
county	46	economic crimes	10
county	46	corruption	0
county	46	offences involving officers	0
county	46	offences involving tourist	0
county	46	other penal code offences	74
county	2	homicide	43
county	2	offences against morality	193
county	2	theft of vehicle and other parts	342
county	2	robbery	52
county	2	breakings	47
county	2	theft of stock	34
county	2	stealing	130
county	2	theft by servant	46
county	2	dangerous drugs	58
county	2	traffic offences	2
county	2	criminal damage	40
county	2	economic crimes	42
county	2	corruption	1
county	2	offences involving officers	6
county	2	offences involving tourist	4
county	2	other penal code offences	57
county	30	homicide	81
county	30	offences against morality	101
county	30	theft of vehicle and other parts	430
county	30	robbery	16
county	30	breakings	78
county	30	theft of stock	83
county	30	stealing	66
county	30	theft by servant	18
county	30	dangerous drugs	7
county	30	traffic offences	0
county	30	criminal damage	53
county	30	economic crimes	10
county	30	corruption	0
county	30	offences involving officers	0
county	30	offences involving tourist	0
county	30	other penal code offences	92
county	29	homicide	26
county	29	offences against morality	108
county	29	theft of vehicle and other parts	400
county	29	robbery	27
county	29	breakings	99
county	29	theft of stock	26
county	29	stealing	84
county	29	theft by servant	6
county	29	dangerous drugs	54
county	29	traffic offences	0
county	29	criminal damage	58
county	29	economic crimes	11
county	29	corruption	0
county	29	offences involving officers	0
county	29	offences involving tourist	0
county	29	other penal code offences	90
county	23	homicide	20
county	23	offences against morality	87
county	23	theft of vehicle and other parts	353
county	23	robbery	51
county	23	breakings	61
county	23	theft of stock	86
county	23	stealing	87
county	23	theft by servant	11
county	23	dangerous drugs	50
county	23	traffic offences	2
county	23	criminal damage	42
county	23	economic crimes	21
county	23	corruption	0
county	23	offences involving officers	0
county	23	offences involving tourist	0
county	23	other penal code offences	103
county	36	homicide	25
county	36	offences against morality	59
county	36	theft of vehicle and other parts	426
county	36	robbery	7
county	36	breakings	88
county	36	theft of stock	34
county	36	stealing	109
county	36	theft by servant	34
county	36	dangerous drugs	27
county	36	traffic offences	0
county	36	criminal damage	96
county	36	economic crimes	36
county	36	corruption	0
county	36	offences involving officers	0
county	36	offences involving tourist	0
county	36	other penal code offences	27
county	6	homicide	25
county	6	offences against morality	85
county	6	theft of vehicle and other parts	265
county	6	robbery	23
county	6	breakings	86
county	6	theft of stock	37
county	6	stealing	149
county	6	theft by servant	46
county	6	dangerous drugs	84
county	6	traffic offences	0
county	6	criminal damage	46
county	6	economic crimes	39
county	6	corruption	0
county	6	offences involving officers	1
county	6	offences involving tourist	0
county	6	other penal code offences	75
county	17	homicide	33
county	17	offences against morality	96
county	17	theft of vehicle and other parts	325
county	17	robbery	32
county	17	breakings	93
county	17	theft of stock	19
county	17	stealing	127
county	17	theft by servant	41
county	17	dangerous drugs	66
county	17	traffic offences	0
county	17	criminal damage	67
county	17	economic crimes	19
county	17	corruption	0
county	17	offences involving officers	0
county	17	offences involving tourist	2
county	17	other penal code offences	105
county	14	homicide	23
county	14	offences against morality	67
county	14	theft of vehicle and other parts	253
county	14	robbery	26
county	14	breakings	70
county	14	theft of stock	15
county	14	stealing	102
county	14	theft by servant	26
county	14	dangerous drugs	83
county	14	traffic offences	0
county	14	criminal damage	75
county	14	economic crimes	30
county	14	corruption	3
county	14	offences involving officers	3
county	14	offences involving tourist	0
county	14	other penal code offences	72
county	31	homicide	28
county	31	offences against morality	84
county	31	theft of vehicle and other parts	184
county	31	robbery	38
county	31	breakings	69
county	31	theft of stock	61
county	31	stealing	103
county	31	theft by servant	30
county	31	dangerous drugs	46
county	31	traffic offences	0
county	31	criminal damage	83
county	31	economic crimes	37
county	31	corruption	0
county	31	offences involving officers	1
county	31	offences involving tourist	0
county	31	other penal code offences	66
county	24	homicide	30
county	24	offences against morality	49
county	24	theft of vehicle and other parts	322
county	24	robbery	8
county	24	breakings	25
county	24	theft of stock	21
county	24	stealing	61
county	24	theft by servant	4
county	24	dangerous drugs	18
county	24	traffic offences	2
county	24	criminal damage	51
county	24	economic crimes	20
county	24	corruption	0
county	24	offences involving officers	0
county	24	offences involving tourist	0
county	24	other penal code offences	73
county	7	homicide	20
county	7	offences against morality	50
county	7	theft of vehicle and other parts	206
county	7	robbery	24
county	7	breakings	67
county	7	theft of stock	11
county	7	stealing	84
county	7	theft by servant	11
county	7	dangerous drugs	40
county	7	traffic offences	2
county	7	criminal damage	27
county	7	economic crimes	22
county	7	corruption	2
county	7	offences involving officers	0
county	7	offences involving tourist	0
county	7	other penal code offences	72
county	4	homicide	17
county	4	offences against morality	84
county	4	theft of vehicle and other parts	189
county	4	robbery	39
county	4	breakings	56
county	4	theft of stock	16
county	4	stealing	47
county	4	theft by servant	18
county	4	dangerous drugs	52
county	4	traffic offences	6
county	4	criminal damage	24
county	4	economic crimes	26
county	4	corruption	2
county	4	offences involving officers	2
county	4	offences involving tourist	0
county	4	other penal code offences	44
county	13	homicide	25
county	13	offences against morality	33
county	13	theft of vehicle and other parts	280
county	13	robbery	15
county	13	breakings	43
county	13	theft of stock	17
county	13	stealing	73
county	13	theft by servant	9
county	13	dangerous drugs	46
county	13	traffic offences	0
county	13	criminal damage	41
county	13	economic crimes	14
county	13	corruption	0
county	13	offences involving officers	1
county	13	offences involving tourist	5
county	13	other penal code offences	26
county	28	homicide	40
county	28	offences against morality	54
county	28	theft of vehicle and other parts	272
county	28	robbery	8
county	28	breakings	47
county	28	theft of stock	14
county	28	stealing	47
county	28	theft by servant	6
county	28	dangerous drugs	4
county	28	traffic offences	0
county	28	criminal damage	45
county	28	economic crimes	5
county	28	corruption	0
county	28	offences involving officers	0
county	28	offences involving tourist	0
county	28	other penal code offences	29
county	5	homicide	12
county	5	offences against morality	67
county	5	theft of vehicle and other parts	141
county	5	robbery	8
county	5	breakings	50
county	5	theft of stock	10
county	5	stealing	56
county	5	theft by servant	5
county	5	dangerous drugs	61
county	5	traffic offences	0
county	5	criminal damage	23
county	5	economic crimes	14
county	5	corruption	5
county	5	offences involving officers	5
county	5	offences involving tourist	0
county	5	other penal code offences	35
county	25	homicide	17
county	25	offences against morality	21
county	25	theft of vehicle and other parts	102
county	25	robbery	13
county	25	breakings	24
county	25	theft of stock	31
county	25	stealing	52
county	25	theft by servant	2
county	25	dangerous drugs	15
county	25	traffic offences	0
county	25	criminal damage	19
county	25	economic crimes	10
county	25	corruption	0
county	25	offences involving officers	1
county	25	offences involving tourist	0
county	25	other penal code offences	48
county	10	homicide	19
county	10	offences against morality	28
county	10	theft of vehicle and other parts	174
county	10	robbery	23
county	10	breakings	19
county	10	theft of stock	13
county	10	stealing	51
county	10	theft by servant	13
county	10	dangerous drugs	24
county	10	traffic offences	3
county	10	criminal damage	31
county	10	economic crimes	4
county	10	corruption	0
county	10	offences involving officers	9
county	10	offences involving tourist	0
county	10	other penal code offences	57
county	8	homicide	10
county	8	offences against morality	25
county	8	theft of vehicle and other parts	130
county	8	robbery	4
county	8	breakings	17
county	8	theft of stock	9
county	8	stealing	38
county	8	theft by servant	2
county	8	dangerous drugs	11
county	8	traffic offences	1
county	8	criminal damage	12
county	8	economic crimes	2
county	8	corruption	0
county	8	offences involving officers	0
county	8	offences involving tourist	0
county	8	other penal code offences	56
county	9	homicide	14
county	9	offences against morality	19
county	9	theft of vehicle and other parts	97
county	9	robbery	8
county	9	breakings	17
county	9	theft of stock	3
county	9	stealing	18
county	9	theft by servant	1
county	9	dangerous drugs	34
county	9	traffic offences	0
county	9	criminal damage	8
county	9	economic crimes	4
county	9	corruption	0
county	9	offences involving officers	0
county	9	offences involving tourist	0
county	9	other penal code offences	48
county	11	homicide	0
county	11	offences against morality	10
county	11	theft of vehicle and other parts	85
county	11	robbery	8
county	11	breakings	9
county	11	theft of stock	14
county	11	stealing	31
county	11	theft by servant	9
county	11	dangerous drugs	2
county	11	traffic offences	0
county	11	criminal damage	21
county	11	economic crimes	2
county	11	corruption	1
county	11	offences involving officers	0
county	11	offences involving tourist	0
county	11	other penal code offences	21
country	KE	homicide	2554
country	KE	offences against morality	6051
country	KE	theft of vehicle and other parts	21718
country	KE	robbery	2685
country	KE	breakings	5470
country	KE	theft of stock	1890
country	KE	stealing	9199
country	KE	theft by servant	2053
country	KE	dangerous drugs	5431
country	KE	traffic offences	107
country	KE	criminal damage	3919
country	KE	economic crimes	3205
country	KE	corruption	77
country	KE	offences involving officers	60
country	KE	offences involving tourist	21
country	KE	other penal code offences	6010
\.


--
-- Data for Name: useofipt; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY useofipt (geo_level, geo_code, "use of ipt", total) FROM stdin;
county	1	1 or more	67.2999999999999972
county	1	2 or more	46.3999999999999986
county	1	3 or more	24.8999999999999986
county	2	1 or more	91.7999999999999972
county	2	2 or more	79.0999999999999943
county	2	3 or more	51.8999999999999986
county	3	1 or more	65.2000000000000028
county	3	2 or more	41.7999999999999972
county	3	3 or more	28.5
county	4	1 or more	77
county	4	2 or more	41.6000000000000014
county	4	3 or more	21.3999999999999986
county	5	1 or more	81
county	5	2 or more	60
county	5	3 or more	35.7000000000000028
county	6	1 or more	75
county	6	2 or more	55.1000000000000014
county	6	3 or more	31.8999999999999986
county	7	1 or more	2.70000000000000018
county	7	2 or more	1
county	7	3 or more	0.800000000000000044
county	8	1 or more	4.40000000000000036
county	8	2 or more	2
county	8	3 or more	0.5
county	9	1 or more	11.3000000000000007
county	9	2 or more	4.29999999999999982
county	9	3 or more	3
county	10	1 or more	1.5
county	10	2 or more	1.19999999999999996
county	10	3 or more	0.599999999999999978
county	11	1 or more	48.2000000000000028
county	11	2 or more	3.29999999999999982
county	11	3 or more	1.30000000000000004
county	12	1 or more	19.1000000000000014
county	12	2 or more	3.79999999999999982
county	12	3 or more	0
county	13	1 or more	25.8999999999999986
county	13	2 or more	10.3000000000000007
county	13	3 or more	7.09999999999999964
county	14	1 or more	15
county	14	2 or more	1.10000000000000009
county	14	3 or more	0
county	15	1 or more	42.2000000000000028
county	15	2 or more	25.8000000000000007
county	15	3 or more	16
county	16	1 or more	16.5
county	16	2 or more	8.30000000000000071
county	16	3 or more	2.5
county	17	1 or more	26.5
county	17	2 or more	10.0999999999999996
county	17	3 or more	7.40000000000000036
county	18	1 or more	7.29999999999999982
county	18	2 or more	3
county	18	3 or more	2.20000000000000018
county	19	1 or more	5.20000000000000018
county	19	2 or more	3.20000000000000018
county	19	3 or more	1.89999999999999991
county	20	1 or more	10.1999999999999993
county	20	2 or more	8.40000000000000036
county	20	3 or more	3.70000000000000018
county	21	1 or more	14.4000000000000004
county	21	2 or more	4.79999999999999982
county	21	3 or more	1.89999999999999991
county	22	1 or more	24.5
county	22	2 or more	4.40000000000000036
county	22	3 or more	2.60000000000000009
county	23	1 or more	52.3999999999999986
county	23	2 or more	22.6999999999999993
county	23	3 or more	13
county	24	1 or more	3.10000000000000009
county	24	2 or more	3
county	24	3 or more	2.89999999999999991
county	25	1 or more	6.29999999999999982
county	25	2 or more	2.89999999999999991
county	25	3 or more	2.79999999999999982
county	26	1 or more	11
county	26	2 or more	3.70000000000000018
county	26	3 or more	3.20000000000000018
county	27	1 or more	7.79999999999999982
county	27	2 or more	7
county	27	3 or more	6.40000000000000036
county	28	1 or more	15.1999999999999993
county	28	2 or more	4.29999999999999982
county	28	3 or more	1.80000000000000004
county	29	1 or more	11.3000000000000007
county	29	2 or more	3.39999999999999991
county	29	3 or more	1.89999999999999991
county	30	1 or more	21.1999999999999993
county	30	2 or more	9.90000000000000036
county	30	3 or more	6.70000000000000018
county	31	1 or more	19.3999999999999986
county	31	2 or more	7
county	31	3 or more	1.60000000000000009
county	32	1 or more	19.1999999999999993
county	32	2 or more	9.30000000000000071
county	32	3 or more	4.20000000000000018
county	33	1 or more	6.59999999999999964
county	33	2 or more	1.39999999999999991
county	33	3 or more	0.599999999999999978
county	34	1 or more	20.6000000000000014
county	34	2 or more	12.3000000000000007
county	34	3 or more	8.5
county	35	1 or more	7.5
county	35	2 or more	4.40000000000000036
county	35	3 or more	3.39999999999999991
county	36	1 or more	7.5
county	36	2 or more	5.20000000000000018
county	36	3 or more	4.79999999999999982
county	37	1 or more	36.2000000000000028
county	37	2 or more	28.1000000000000014
county	37	3 or more	20.1000000000000014
county	38	1 or more	72.9000000000000057
county	38	2 or more	47.1000000000000014
county	38	3 or more	20.5
county	39	1 or more	57.5
county	39	2 or more	39.6000000000000014
county	39	3 or more	27.6999999999999993
county	40	1 or more	60.8999999999999986
county	40	2 or more	47.8999999999999986
county	40	3 or more	36.1000000000000014
county	41	1 or more	58.1000000000000014
county	41	2 or more	23.3999999999999986
county	41	3 or more	15
county	42	1 or more	58.2000000000000028
county	42	2 or more	26.8999999999999986
county	42	3 or more	5.90000000000000036
county	43	1 or more	38.3999999999999986
county	43	2 or more	22.8000000000000007
county	43	3 or more	12.3000000000000007
county	44	1 or more	51
county	44	2 or more	26.1000000000000014
county	44	3 or more	12.9000000000000004
county	45	1 or more	25.5
county	45	2 or more	11.3000000000000007
county	45	3 or more	3.70000000000000018
county	46	1 or more	21.8999999999999986
county	46	2 or more	18.1000000000000014
county	46	3 or more	7
county	47	1 or more	6.29999999999999982
county	47	2 or more	1.30000000000000004
county	47	3 or more	0.800000000000000044
country	KE	1 or more	29.6000000000000014
country	KE	2 or more	16.8999999999999986
country	KE	3 or more	10.0999999999999996
\.


--
-- Data for Name: vaccinations; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY vaccinations (geo_level, geo_code, vaccinations, total) FROM stdin;
county	1	BCG	100
county	1	Pentavalent 1	100
county	1	Pentavalent 2	98.2999999999999972
county	1	Pentavalent 3	95.5999999999999943
county	1	Polio 0	95.7000000000000028
county	1	Polio 1	98.2999999999999972
county	1	Polio 2	97
county	1	Polio 3	80
county	1	Measles	89.0999999999999943
county	1	All basic vaccinations	72.2999999999999972
county	1	Pneumococcal 1	96.7000000000000028
county	1	Pneumococcal 2	93.7000000000000028
county	1	Pneumococcal 3	92.2999999999999972
county	1	fully vaccinated	67.7000000000000028
county	1	not vaccinated	0
county	1	percentage with vaccination card	66.4000000000000057
county	2	BCG	98.5999999999999943
county	2	Pentavalent 1	96.7000000000000028
county	2	Pentavalent 2	96.7000000000000028
county	2	Pentavalent 3	95.0999999999999943
county	2	Polio 0	78.0999999999999943
county	2	Polio 1	97.7999999999999972
county	2	Polio 2	95.9000000000000057
county	2	Polio 3	91.5999999999999943
county	2	Measles	90.7000000000000028
county	2	All basic vaccinations	82.9000000000000057
county	2	Pneumococcal 1	96.0999999999999943
county	2	Pneumococcal 2	96.0999999999999943
county	2	Pneumococcal 3	93.5999999999999943
county	2	fully vaccinated	82
county	2	not vaccinated	0
county	2	percentage with vaccination card	92.2999999999999972
county	3	BCG	94.2999999999999972
county	3	Pentavalent 1	95.2999999999999972
county	3	Pentavalent 2	95.2999999999999972
county	3	Pentavalent 3	87.5
county	3	Polio 0	88.2999999999999972
county	3	Polio 1	96.2000000000000028
county	3	Polio 2	93.5999999999999943
county	3	Polio 3	84.7000000000000028
county	3	Measles	83.7000000000000028
county	3	All basic vaccinations	72.0999999999999943
county	3	Pneumococcal 1	95.2999999999999972
county	3	Pneumococcal 2	92.9000000000000057
county	3	Pneumococcal 3	87.4000000000000057
county	3	fully vaccinated	71.5
county	3	not vaccinated	3
county	3	percentage with vaccination card	80.9000000000000057
county	4	BCG	97.0999999999999943
county	4	Pentavalent 1	97.0999999999999943
county	4	Pentavalent 2	95
county	4	Pentavalent 3	89.9000000000000057
county	4	Polio 0	50.7999999999999972
county	4	Polio 1	97.0999999999999943
county	4	Polio 2	93.7999999999999972
county	4	Polio 3	80.5
county	4	Measles	77.5999999999999943
county	4	All basic vaccinations	64.2999999999999972
county	4	Pneumococcal 1	94.2999999999999972
county	4	Pneumococcal 2	92.7999999999999972
county	4	Pneumococcal 3	85.2000000000000028
county	4	fully vaccinated	61.2999999999999972
county	4	not vaccinated	2.5
county	4	percentage with vaccination card	72.0999999999999943
county	5	BCG	94.2000000000000028
county	5	Pentavalent 1	99.2999999999999972
county	5	Pentavalent 2	97
county	5	Pentavalent 3	84.7000000000000028
county	5	Polio 0	65.5
county	5	Polio 1	100
county	5	Polio 2	97.7000000000000028
county	5	Polio 3	90.7000000000000028
county	5	Measles	83.2000000000000028
county	5	All basic vaccinations	66.4000000000000057
county	5	Pneumococcal 1	91.9000000000000057
county	5	Pneumococcal 2	90.4000000000000057
county	5	Pneumococcal 3	79.2999999999999972
county	5	fully vaccinated	63.8999999999999986
county	5	not vaccinated	0
county	5	percentage with vaccination card	72.2999999999999972
county	6	BCG	98.4000000000000057
county	6	Pentavalent 1	98.4000000000000057
county	6	Pentavalent 2	98.4000000000000057
county	6	Pentavalent 3	97.5
county	6	Polio 0	92.7999999999999972
county	6	Polio 1	100
county	6	Polio 2	100
county	6	Polio 3	91.7000000000000028
county	6	Measles	93
county	6	All basic vaccinations	87.2999999999999972
county	6	Pneumococcal 1	95.5999999999999943
county	6	Pneumococcal 2	95.5999999999999943
county	6	Pneumococcal 3	90.4000000000000057
county	6	fully vaccinated	83.0999999999999943
county	6	not vaccinated	0
county	6	percentage with vaccination card	71.5
county	7	BCG	80.2999999999999972
county	7	Pentavalent 1	94.4000000000000057
county	7	Pentavalent 2	93.9000000000000057
county	7	Pentavalent 3	91.5999999999999943
county	7	Polio 0	63.7999999999999972
county	7	Polio 1	91.4000000000000057
county	7	Polio 2	85.4000000000000057
county	7	Polio 3	75.9000000000000057
county	7	Measles	81.2000000000000028
county	7	All basic vaccinations	54.3999999999999986
county	7	Pneumococcal 1	94.4000000000000057
county	7	Pneumococcal 2	91.2999999999999972
county	7	Pneumococcal 3	84.7000000000000028
county	7	fully vaccinated	54.3999999999999986
county	7	not vaccinated	5.59999999999999964
county	7	percentage with vaccination card	61.2000000000000028
county	8	BCG	91
county	8	Pentavalent 1	90.7999999999999972
county	8	Pentavalent 2	86.2000000000000028
county	8	Pentavalent 3	79.0999999999999943
county	8	Polio 0	53.2999999999999972
county	8	Polio 1	90.2000000000000028
county	8	Polio 2	87
county	8	Polio 3	64.7999999999999972
county	8	Measles	64.5
county	8	All basic vaccinations	43.7000000000000028
county	8	Pneumococcal 1	83.7999999999999972
county	8	Pneumococcal 2	82.4000000000000057
county	8	Pneumococcal 3	74.0999999999999943
county	8	fully vaccinated	37.8999999999999986
county	8	not vaccinated	6.59999999999999964
county	8	percentage with vaccination card	58.6000000000000014
county	9	BCG	71.7999999999999972
county	9	Pentavalent 1	68.2999999999999972
county	9	Pentavalent 2	56.5
county	9	Pentavalent 3	48.7999999999999972
county	9	Polio 0	49.5
county	9	Polio 1	71.7999999999999972
county	9	Polio 2	58
county	9	Polio 3	36.2000000000000028
county	9	Measles	61.7000000000000028
county	9	All basic vaccinations	27.6999999999999993
county	9	Pneumococcal 1	70.2999999999999972
county	9	Pneumococcal 2	57.8999999999999986
county	9	Pneumococcal 3	48.7000000000000028
county	9	fully vaccinated	27.6999999999999993
county	9	not vaccinated	28.1999999999999993
county	9	percentage with vaccination card	16.5
county	10	BCG	92.5999999999999943
county	10	Pentavalent 1	96.4000000000000057
county	10	Pentavalent 2	93.4000000000000057
county	10	Pentavalent 3	85.7000000000000028
county	10	Polio 0	43.1000000000000014
county	10	Polio 1	99
county	10	Polio 2	95.5999999999999943
county	10	Polio 3	86.4000000000000057
county	10	Measles	76.7999999999999972
county	10	All basic vaccinations	69.9000000000000057
county	10	Pneumococcal 1	94.7000000000000028
county	10	Pneumococcal 2	92.2000000000000028
county	10	Pneumococcal 3	84.5999999999999943
county	10	fully vaccinated	66.5999999999999943
county	10	not vaccinated	1
county	10	percentage with vaccination card	80.5
county	11	BCG	96.4000000000000057
county	11	Pentavalent 1	98.5999999999999943
county	11	Pentavalent 2	96.5
county	11	Pentavalent 3	94.4000000000000057
county	11	Polio 0	77.4000000000000057
county	11	Polio 1	98.5999999999999943
county	11	Polio 2	95.9000000000000057
county	11	Polio 3	88.2999999999999972
county	11	Measles	86.5
county	11	All basic vaccinations	80
county	11	Pneumococcal 1	94.9000000000000057
county	11	Pneumococcal 2	93.7999999999999972
county	11	Pneumococcal 3	92
county	11	fully vaccinated	79
county	11	not vaccinated	1.39999999999999991
county	11	percentage with vaccination card	89
county	12	BCG	99.2000000000000028
county	12	Pentavalent 1	100
county	12	Pentavalent 2	100
county	12	Pentavalent 3	93.5999999999999943
county	12	Polio 0	78.9000000000000057
county	12	Polio 1	100
county	12	Polio 2	96.5999999999999943
county	12	Polio 3	85.9000000000000057
county	12	Measles	91.2999999999999972
county	12	All basic vaccinations	81.9000000000000057
county	12	Pneumococcal 1	97.2000000000000028
county	12	Pneumococcal 2	97.2000000000000028
county	12	Pneumococcal 3	89.0999999999999943
county	12	fully vaccinated	78.2999999999999972
county	12	not vaccinated	0
county	12	percentage with vaccination card	89.9000000000000057
county	13	BCG	100
county	13	Pentavalent 1	98.2999999999999972
county	13	Pentavalent 2	98.2999999999999972
county	13	Pentavalent 3	96.7999999999999972
county	13	Polio 0	100
county	13	Polio 1	100
county	13	Polio 2	100
county	13	Polio 3	93.5999999999999943
county	13	Measles	98.5
county	13	All basic vaccinations	90.5999999999999943
county	13	Pneumococcal 1	100
county	13	Pneumococcal 2	100
county	13	Pneumococcal 3	100
county	13	fully vaccinated	90.5999999999999943
county	13	not vaccinated	0
county	13	percentage with vaccination card	92.2000000000000028
county	14	BCG	100
county	14	Pentavalent 1	100
county	14	Pentavalent 2	100
county	14	Pentavalent 3	99.2000000000000028
county	14	Polio 0	97.9000000000000057
county	14	Polio 1	100
county	14	Polio 2	94.7000000000000028
county	14	Polio 3	89.9000000000000057
county	14	Measles	92.7999999999999972
county	14	All basic vaccinations	82.7000000000000028
county	14	Pneumococcal 1	100
county	14	Pneumococcal 2	100
county	14	Pneumococcal 3	99.2000000000000028
county	14	fully vaccinated	82.7000000000000028
county	14	not vaccinated	0
county	14	percentage with vaccination card	83.4000000000000057
county	15	BCG	96.0999999999999943
county	15	Pentavalent 1	96.0999999999999943
county	15	Pentavalent 2	93.0999999999999943
county	15	Pentavalent 3	81.5
county	15	Polio 0	52.7999999999999972
county	15	Polio 1	97.7000000000000028
county	15	Polio 2	88.5
county	15	Polio 3	76.4000000000000057
county	15	Measles	84.9000000000000057
county	15	All basic vaccinations	65.2000000000000028
county	15	Pneumococcal 1	81
county	15	Pneumococcal 2	78.0999999999999943
county	15	Pneumococcal 3	69.2000000000000028
county	15	fully vaccinated	52.7000000000000028
county	15	not vaccinated	2.29999999999999982
county	15	percentage with vaccination card	85.2999999999999972
county	16	BCG	100
county	16	Pentavalent 1	100
county	16	Pentavalent 2	100
county	16	Pentavalent 3	97.7999999999999972
county	16	Polio 0	91.5
county	16	Polio 1	98.4000000000000057
county	16	Polio 2	97.5999999999999943
county	16	Polio 3	91.5
county	16	Measles	97.2000000000000028
county	16	All basic vaccinations	88.7000000000000028
county	16	Pneumococcal 1	98
county	16	Pneumococcal 2	97.2000000000000028
county	16	Pneumococcal 3	95.9000000000000057
county	16	fully vaccinated	86.7000000000000028
county	16	not vaccinated	0
county	16	percentage with vaccination card	72.7000000000000028
county	17	BCG	100
county	17	Pentavalent 1	100
county	17	Pentavalent 2	100
county	17	Pentavalent 3	99.0999999999999943
county	17	Polio 0	80.7999999999999972
county	17	Polio 1	96.2000000000000028
county	17	Polio 2	96.2000000000000028
county	17	Polio 3	93.7999999999999972
county	17	Measles	96.7999999999999972
county	17	All basic vaccinations	90.5999999999999943
county	17	Pneumococcal 1	96.2000000000000028
county	17	Pneumococcal 2	95.2999999999999972
county	17	Pneumococcal 3	95.2999999999999972
county	17	fully vaccinated	89.7000000000000028
county	17	not vaccinated	0
county	17	percentage with vaccination card	93.0999999999999943
county	18	BCG	100
county	18	Pentavalent 1	100
county	18	Pentavalent 2	98.0999999999999943
county	18	Pentavalent 3	90.7999999999999972
county	18	Polio 0	88.5
county	18	Polio 1	100
county	18	Polio 2	98.0999999999999943
county	18	Polio 3	91
county	18	Measles	95.0999999999999943
county	18	All basic vaccinations	82.5999999999999943
county	18	Pneumococcal 1	98
county	18	Pneumococcal 2	89.7000000000000028
county	18	Pneumococcal 3	84.9000000000000057
county	18	fully vaccinated	77.7999999999999972
county	18	not vaccinated	0
county	18	percentage with vaccination card	81.2999999999999972
county	19	BCG	98.7000000000000028
county	19	Pentavalent 1	97.2000000000000028
county	19	Pentavalent 2	97.2000000000000028
county	19	Pentavalent 3	94.9000000000000057
county	19	Polio 0	94.5999999999999943
county	19	Polio 1	100
county	19	Polio 2	99
county	19	Polio 3	85.7999999999999972
county	19	Measles	92.7000000000000028
county	19	All basic vaccinations	79.5
county	19	Pneumococcal 1	94.4000000000000057
county	19	Pneumococcal 2	93.0999999999999943
county	19	Pneumococcal 3	89.0999999999999943
county	19	fully vaccinated	77.7999999999999972
county	19	not vaccinated	0
county	19	percentage with vaccination card	82.2000000000000028
county	20	BCG	100
county	20	Pentavalent 1	100
county	20	Pentavalent 2	100
county	20	Pentavalent 3	100
county	20	Polio 0	97.5999999999999943
county	20	Polio 1	100
county	20	Polio 2	100
county	20	Polio 3	62.7000000000000028
county	20	Measles	100
county	20	All basic vaccinations	62.7000000000000028
county	20	Pneumococcal 1	92.2999999999999972
county	20	Pneumococcal 2	92.2999999999999972
county	20	Pneumococcal 3	92.2999999999999972
county	20	fully vaccinated	54.8999999999999986
county	20	not vaccinated	0
county	20	percentage with vaccination card	60.2999999999999972
county	21	BCG	99
county	21	Pentavalent 1	99
county	21	Pentavalent 2	95.7000000000000028
county	21	Pentavalent 3	89.9000000000000057
county	21	Polio 0	91.9000000000000057
county	21	Polio 1	99
county	21	Polio 2	93.7999999999999972
county	21	Polio 3	77.9000000000000057
county	21	Measles	97.2999999999999972
county	21	All basic vaccinations	77.9000000000000057
county	21	Pneumococcal 1	97.2999999999999972
county	21	Pneumococcal 2	92
county	21	Pneumococcal 3	89.9000000000000057
county	21	fully vaccinated	76.0999999999999943
county	21	not vaccinated	1
county	21	percentage with vaccination card	74.2999999999999972
county	22	BCG	100
county	22	Pentavalent 1	100
county	22	Pentavalent 2	100
county	22	Pentavalent 3	99
county	22	Polio 0	97.9000000000000057
county	22	Polio 1	100
county	22	Polio 2	100
county	22	Polio 3	82.7999999999999972
county	22	Measles	99
county	22	All basic vaccinations	82.7999999999999972
county	22	Pneumococcal 1	100
county	22	Pneumococcal 2	100
county	22	Pneumococcal 3	97.2000000000000028
county	22	fully vaccinated	82.7999999999999972
county	22	not vaccinated	0
county	22	percentage with vaccination card	76.0999999999999943
county	23	BCG	94.5
county	23	Pentavalent 1	94.4000000000000057
county	23	Pentavalent 2	91.5
county	23	Pentavalent 3	86.2000000000000028
county	23	Polio 0	73.4000000000000057
county	23	Polio 1	94.4000000000000057
county	23	Polio 2	88.9000000000000057
county	23	Polio 3	76.0999999999999943
county	23	Measles	71.9000000000000057
county	23	All basic vaccinations	57.3999999999999986
county	23	Pneumococcal 1	93.7999999999999972
county	23	Pneumococcal 2	89.7999999999999972
county	23	Pneumococcal 3	83.2000000000000028
county	23	fully vaccinated	56.7000000000000028
county	23	not vaccinated	3.70000000000000018
county	23	percentage with vaccination card	87.0999999999999943
county	24	BCG	78.9000000000000057
county	24	Pentavalent 1	86.4000000000000057
county	24	Pentavalent 2	80.5999999999999943
county	24	Pentavalent 3	68.2999999999999972
county	24	Polio 0	42.8999999999999986
county	24	Polio 1	84.0999999999999943
county	24	Polio 2	76.2000000000000028
county	24	Polio 3	58.5
county	24	Measles	58.2000000000000028
county	24	All basic vaccinations	34.2999999999999972
county	24	Pneumococcal 1	78.7000000000000028
county	24	Pneumococcal 2	73.0999999999999943
county	24	Pneumococcal 3	58.7000000000000028
county	24	fully vaccinated	30.5
county	24	not vaccinated	11.1999999999999993
county	24	percentage with vaccination card	60.7999999999999972
county	25	BCG	96.7999999999999972
county	25	Pentavalent 1	93.2000000000000028
county	25	Pentavalent 2	89.7000000000000028
county	25	Pentavalent 3	86.9000000000000057
county	25	Polio 0	54.2000000000000028
county	25	Polio 1	96.0999999999999943
county	25	Polio 2	91.0999999999999943
county	25	Polio 3	84
county	25	Measles	71.7000000000000028
county	25	All basic vaccinations	63.2999999999999972
county	25	Pneumococcal 1	94.5
county	25	Pneumococcal 2	89.5999999999999943
county	25	Pneumococcal 3	84.7999999999999972
county	25	fully vaccinated	62.7999999999999972
county	25	not vaccinated	1.39999999999999991
county	25	percentage with vaccination card	79.4000000000000057
county	26	BCG	100
county	26	Pentavalent 1	100
county	26	Pentavalent 2	98.0999999999999943
county	26	Pentavalent 3	77.7999999999999972
county	26	Polio 0	65.0999999999999943
county	26	Polio 1	99.0999999999999943
county	26	Polio 2	97.4000000000000057
county	26	Polio 3	83.2000000000000028
county	26	Measles	84.7999999999999972
county	26	All basic vaccinations	64.9000000000000057
county	26	Pneumococcal 1	93.2999999999999972
county	26	Pneumococcal 2	91.2999999999999972
county	26	Pneumococcal 3	73
county	26	fully vaccinated	58.3999999999999986
county	26	not vaccinated	0
county	26	percentage with vaccination card	64.7000000000000028
county	27	BCG	95.9000000000000057
county	27	Pentavalent 1	97.2999999999999972
county	27	Pentavalent 2	95.9000000000000057
county	27	Pentavalent 3	91.5
county	27	Polio 0	70.7000000000000028
county	27	Polio 1	95.9000000000000057
county	27	Polio 2	93.7000000000000028
county	27	Polio 3	74.5999999999999943
county	27	Measles	91.2999999999999972
county	27	All basic vaccinations	70
county	27	Pneumococcal 1	83.4000000000000057
county	27	Pneumococcal 2	82.2999999999999972
county	27	Pneumococcal 3	75.7999999999999972
county	27	fully vaccinated	57.5
county	27	not vaccinated	2.70000000000000018
county	27	percentage with vaccination card	73.7000000000000028
county	28	BCG	100
county	28	Pentavalent 1	100
county	28	Pentavalent 2	97.9000000000000057
county	28	Pentavalent 3	97.9000000000000057
county	28	Polio 0	82
county	28	Polio 1	99.4000000000000057
county	28	Polio 2	97.9000000000000057
county	28	Polio 3	91.7000000000000028
county	28	Measles	86.5999999999999943
county	28	All basic vaccinations	85.0999999999999943
county	28	Pneumococcal 1	99.4000000000000057
county	28	Pneumococcal 2	97.9000000000000057
county	28	Pneumococcal 3	97
county	28	fully vaccinated	84.4000000000000057
county	28	not vaccinated	0
county	28	percentage with vaccination card	91.2000000000000028
county	29	BCG	99.4000000000000057
county	29	Pentavalent 1	100
county	29	Pentavalent 2	100
county	29	Pentavalent 3	99.4000000000000057
county	29	Polio 0	71.5999999999999943
county	29	Polio 1	100
county	29	Polio 2	100
county	29	Polio 3	96.9000000000000057
county	29	Measles	97.5
county	29	All basic vaccinations	93.9000000000000057
county	29	Pneumococcal 1	99.4000000000000057
county	29	Pneumococcal 2	99.4000000000000057
county	29	Pneumococcal 3	99.4000000000000057
county	29	fully vaccinated	93.9000000000000057
county	29	not vaccinated	0
county	29	percentage with vaccination card	92.0999999999999943
county	30	BCG	100
county	30	Pentavalent 1	100
county	30	Pentavalent 2	98.2999999999999972
county	30	Pentavalent 3	94.5
county	30	Polio 0	69
county	30	Polio 1	100
county	30	Polio 2	97.5999999999999943
county	30	Polio 3	86.9000000000000057
county	30	Measles	82.5
county	30	All basic vaccinations	71.0999999999999943
county	30	Pneumococcal 1	92.5999999999999943
county	30	Pneumococcal 2	90.9000000000000057
county	30	Pneumococcal 3	85.0999999999999943
county	30	fully vaccinated	63.2000000000000028
county	30	not vaccinated	0
county	30	percentage with vaccination card	81.7999999999999972
county	31	BCG	98.7000000000000028
county	31	Pentavalent 1	98.7000000000000028
county	31	Pentavalent 2	98.7000000000000028
county	31	Pentavalent 3	89.7000000000000028
county	31	Polio 0	77.9000000000000057
county	31	Polio 1	98.7000000000000028
county	31	Polio 2	91.0999999999999943
county	31	Polio 3	90.2999999999999972
county	31	Measles	92.2999999999999972
county	31	All basic vaccinations	82.5
county	31	Pneumococcal 1	96.5999999999999943
county	31	Pneumococcal 2	96.5999999999999943
county	31	Pneumococcal 3	90.9000000000000057
county	31	fully vaccinated	78.5999999999999943
county	31	not vaccinated	1.30000000000000004
county	31	percentage with vaccination card	79.9000000000000057
county	32	BCG	97.2000000000000028
county	32	Pentavalent 1	97.9000000000000057
county	32	Pentavalent 2	96.0999999999999943
county	32	Pentavalent 3	90.9000000000000057
county	32	Polio 0	81
county	32	Polio 1	97.9000000000000057
county	32	Polio 2	92.4000000000000057
county	32	Polio 3	86.5999999999999943
county	32	Measles	86.4000000000000057
county	32	All basic vaccinations	75.4000000000000057
county	32	Pneumococcal 1	94.7999999999999972
county	32	Pneumococcal 2	93
county	32	Pneumococcal 3	86.5
county	32	fully vaccinated	72
county	32	not vaccinated	2.10000000000000009
county	32	percentage with vaccination card	81.7999999999999972
county	33	BCG	95
county	33	Pentavalent 1	96.2999999999999972
county	33	Pentavalent 2	91.2000000000000028
county	33	Pentavalent 3	83
county	33	Polio 0	47.2999999999999972
county	33	Polio 1	96.4000000000000057
county	33	Polio 2	94.2000000000000028
county	33	Polio 3	75.2000000000000028
county	33	Measles	74.5
county	33	All basic vaccinations	59.5
county	33	Pneumococcal 1	90.7999999999999972
county	33	Pneumococcal 2	86.2999999999999972
county	33	Pneumococcal 3	74.7999999999999972
county	33	fully vaccinated	53.6000000000000014
county	33	not vaccinated	1.60000000000000009
county	33	percentage with vaccination card	79.0999999999999943
county	34	BCG	97.7000000000000028
county	34	Pentavalent 1	97
county	34	Pentavalent 2	92.4000000000000057
county	34	Pentavalent 3	79.0999999999999943
county	34	Polio 0	70
county	34	Polio 1	91.0999999999999943
county	34	Polio 2	82
county	34	Polio 3	61
county	34	Measles	80.9000000000000057
county	34	All basic vaccinations	51.1000000000000014
county	34	Pneumococcal 1	90.2999999999999972
county	34	Pneumococcal 2	83.2999999999999972
county	34	Pneumococcal 3	71.9000000000000057
county	34	fully vaccinated	48.8999999999999986
county	34	not vaccinated	1.10000000000000009
county	34	percentage with vaccination card	57.2000000000000028
county	35	BCG	100
county	35	Pentavalent 1	100
county	35	Pentavalent 2	100
county	35	Pentavalent 3	95.7000000000000028
county	35	Polio 0	87.9000000000000057
county	35	Polio 1	100
county	35	Polio 2	98.7000000000000028
county	35	Polio 3	87.4000000000000057
county	35	Measles	82.9000000000000057
county	35	All basic vaccinations	70.7999999999999972
county	35	Pneumococcal 1	94.2000000000000028
county	35	Pneumococcal 2	92.9000000000000057
county	35	Pneumococcal 3	88.2999999999999972
county	35	fully vaccinated	66.2999999999999972
county	35	not vaccinated	0
county	35	percentage with vaccination card	84.5
county	36	BCG	100
county	36	Pentavalent 1	100
county	36	Pentavalent 2	99.2000000000000028
county	36	Pentavalent 3	98
county	36	Polio 0	62.3999999999999986
county	36	Polio 1	100
county	36	Polio 2	100
county	36	Polio 3	95.5999999999999943
county	36	Measles	92.0999999999999943
county	36	All basic vaccinations	87
county	36	Pneumococcal 1	96.0999999999999943
county	36	Pneumococcal 2	95.2999999999999972
county	36	Pneumococcal 3	92.7999999999999972
county	36	fully vaccinated	81.2999999999999972
county	36	not vaccinated	0
county	36	percentage with vaccination card	84.7000000000000028
county	37	BCG	94.9000000000000057
county	37	Pentavalent 1	98.9000000000000057
county	37	Pentavalent 2	94.9000000000000057
county	37	Pentavalent 3	89.5
county	37	Polio 0	57.2000000000000028
county	37	Polio 1	98.9000000000000057
county	37	Polio 2	94.9000000000000057
county	37	Polio 3	75.7000000000000028
county	37	Measles	80.0999999999999943
county	37	All basic vaccinations	63.5
county	37	Pneumococcal 1	97.5999999999999943
county	37	Pneumococcal 2	94.5999999999999943
county	37	Pneumococcal 3	86.2000000000000028
county	37	fully vaccinated	62.2000000000000028
county	37	not vaccinated	1.10000000000000009
county	37	percentage with vaccination card	77
county	38	BCG	98.2999999999999972
county	38	Pentavalent 1	98.2999999999999972
county	38	Pentavalent 2	98.2999999999999972
county	38	Pentavalent 3	97
county	38	Polio 0	80.7000000000000028
county	38	Polio 1	98.2999999999999972
county	38	Polio 2	96.0999999999999943
county	38	Polio 3	90.9000000000000057
county	38	Measles	98.2999999999999972
county	38	All basic vaccinations	90.9000000000000057
county	38	Pneumococcal 1	98.2999999999999972
county	38	Pneumococcal 2	98.2999999999999972
county	38	Pneumococcal 3	97
county	38	fully vaccinated	90.9000000000000057
county	38	not vaccinated	1.69999999999999996
county	38	percentage with vaccination card	72.9000000000000057
county	39	BCG	95.2999999999999972
county	39	Pentavalent 1	95
county	39	Pentavalent 2	95
county	39	Pentavalent 3	88.9000000000000057
county	39	Polio 0	57.2000000000000028
county	39	Polio 1	95.7000000000000028
county	39	Polio 2	94.7999999999999972
county	39	Polio 3	86
county	39	Measles	84.2999999999999972
county	39	All basic vaccinations	76.2999999999999972
county	39	Pneumococcal 1	89.0999999999999943
county	39	Pneumococcal 2	88.2000000000000028
county	39	Pneumococcal 3	83.7000000000000028
county	39	fully vaccinated	72.5
county	39	not vaccinated	3.79999999999999982
county	39	percentage with vaccination card	71.7000000000000028
county	40	BCG	98
county	40	Pentavalent 1	96.9000000000000057
county	40	Pentavalent 2	95.2999999999999972
county	40	Pentavalent 3	90.4000000000000057
county	40	Polio 0	65.2999999999999972
county	40	Polio 1	100
county	40	Polio 2	94.0999999999999943
county	40	Polio 3	87.2000000000000028
county	40	Measles	92.2000000000000028
county	40	All basic vaccinations	76.2999999999999972
county	40	Pneumococcal 1	98.9000000000000057
county	40	Pneumococcal 2	95.5
county	40	Pneumococcal 3	92.7000000000000028
county	40	fully vaccinated	75
county	40	not vaccinated	0
county	40	percentage with vaccination card	80
county	41	BCG	98.4000000000000057
county	41	Pentavalent 1	100
county	41	Pentavalent 2	100
county	41	Pentavalent 3	93.9000000000000057
county	41	Polio 0	95.5
county	41	Polio 1	100
county	41	Polio 2	93.2000000000000028
county	41	Polio 3	81.7999999999999972
county	41	Measles	84.7999999999999972
county	41	All basic vaccinations	73.2999999999999972
county	41	Pneumococcal 1	99.5
county	41	Pneumococcal 2	99.5
county	41	Pneumococcal 3	91.2999999999999972
county	41	fully vaccinated	72.5
county	41	not vaccinated	0
county	41	percentage with vaccination card	78.0999999999999943
county	42	BCG	97.2000000000000028
county	42	Pentavalent 1	97.5999999999999943
county	42	Pentavalent 2	97.5999999999999943
county	42	Pentavalent 3	87
county	42	Polio 0	86.7000000000000028
county	42	Polio 1	96.4000000000000057
county	42	Polio 2	93
county	42	Polio 3	81.9000000000000057
county	42	Measles	89.5
county	42	All basic vaccinations	73.0999999999999943
county	42	Pneumococcal 1	96.7999999999999972
county	42	Pneumococcal 2	95.0999999999999943
county	42	Pneumococcal 3	84.7000000000000028
county	42	fully vaccinated	73.0999999999999943
county	42	not vaccinated	2.39999999999999991
county	42	percentage with vaccination card	51.5
county	43	BCG	94.5
county	43	Pentavalent 1	97.9000000000000057
county	43	Pentavalent 2	97.2000000000000028
county	43	Pentavalent 3	82.2999999999999972
county	43	Polio 0	83
county	43	Polio 1	96
county	43	Polio 2	90.7999999999999972
county	43	Polio 3	72.9000000000000057
county	43	Measles	80.2999999999999972
county	43	All basic vaccinations	57.2000000000000028
county	43	Pneumococcal 1	90.9000000000000057
county	43	Pneumococcal 2	84.5999999999999943
county	43	Pneumococcal 3	74.7000000000000028
county	43	fully vaccinated	53.7000000000000028
county	43	not vaccinated	2.10000000000000009
county	43	percentage with vaccination card	73.9000000000000057
county	44	BCG	87.5999999999999943
county	44	Pentavalent 1	99.5999999999999943
county	44	Pentavalent 2	97.7000000000000028
county	44	Pentavalent 3	89.9000000000000057
county	44	Polio 0	69
county	44	Polio 1	98.2999999999999972
county	44	Polio 2	94.7000000000000028
county	44	Polio 3	66.2000000000000028
county	44	Measles	82
county	44	All basic vaccinations	46.8999999999999986
county	44	Pneumococcal 1	87.4000000000000057
county	44	Pneumococcal 2	82.0999999999999943
county	44	Pneumococcal 3	71.2000000000000028
county	44	fully vaccinated	36.8999999999999986
county	44	not vaccinated	0.400000000000000022
county	44	percentage with vaccination card	69
county	45	BCG	100
county	45	Pentavalent 1	97.7999999999999972
county	45	Pentavalent 2	97.7999999999999972
county	45	Pentavalent 3	95.2999999999999972
county	45	Polio 0	95.7999999999999972
county	45	Polio 1	99.0999999999999943
county	45	Polio 2	99.0999999999999943
county	45	Polio 3	91.7999999999999972
county	45	Measles	86.5
county	45	All basic vaccinations	80.5
county	45	Pneumococcal 1	94.4000000000000057
county	45	Pneumococcal 2	94.4000000000000057
county	45	Pneumococcal 3	91.9000000000000057
county	45	fully vaccinated	78.0999999999999943
county	45	not vaccinated	0
county	45	percentage with vaccination card	87.2000000000000028
county	46	BCG	99
county	46	Pentavalent 1	99
county	46	Pentavalent 2	99
county	46	Pentavalent 3	97.5999999999999943
county	46	Polio 0	94.7999999999999972
county	46	Polio 1	100
county	46	Polio 2	98.5
county	46	Polio 3	91.7999999999999972
county	46	Measles	98
county	46	All basic vaccinations	89.7999999999999972
county	46	Pneumococcal 1	96.0999999999999943
county	46	Pneumococcal 2	94.5999999999999943
county	46	Pneumococcal 3	94.5999999999999943
county	46	fully vaccinated	86.7999999999999972
county	46	not vaccinated	0
county	46	percentage with vaccination card	78
county	47	BCG	97.5999999999999943
county	47	Pentavalent 1	97.2999999999999972
county	47	Pentavalent 2	93.5999999999999943
county	47	Pentavalent 3	88
county	47	Polio 0	90.4000000000000057
county	47	Polio 1	97.5999999999999943
county	47	Polio 2	94.7999999999999972
county	47	Polio 3	75.0999999999999943
county	47	Measles	92.5
county	47	All basic vaccinations	65.7999999999999972
county	47	Pneumococcal 1	93.5999999999999943
county	47	Pneumococcal 2	85.9000000000000057
county	47	Pneumococcal 3	83.2999999999999972
county	47	fully vaccinated	60.3999999999999986
county	47	not vaccinated	1.69999999999999996
county	47	percentage with vaccination card	61.7000000000000028
country	KE	BCG	96.7000000000000028
country	KE	Pentavalent 1	97.5
country	KE	Pentavalent 2	95.7999999999999972
country	KE	Pentavalent 3	89.9000000000000057
country	KE	Polio 0	77.5999999999999943
country	KE	Polio 1	97.2999999999999972
country	KE	Polio 2	94.2000000000000028
country	KE	Polio 3	81.2000000000000028
country	KE	Measles	87.0999999999999943
country	KE	All basic vaccinations	71.0999999999999943
country	KE	Pneumococcal 1	93.7000000000000028
country	KE	Pneumococcal 2	90.7999999999999972
country	KE	Pneumococcal 3	85.0999999999999943
country	KE	fully vaccinated	67.5
country	KE	not vaccinated	1.60000000000000009
country	KE	percentage with vaccination card	74.7000000000000028
\.


--
-- Data for Name: voterregistration; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY voterregistration (geo_level, geo_code, voterregistration, total) FROM stdin;
county	1	IDs issued	799735
county	1	dead with IDs	84532
county	1	potential voting population with IDs	715203
county	1	registered voters	413069
county	1	additional voters registered	3943
county	1	total registered	417012
county	1	potential voting population not registered	298191
county	1	constituencies	6
county	1	wards	30
county	1	registration centers	196
county	1	bvr kits	62
county	2	IDs issued	394359
county	2	dead with IDs	41684
county	2	potential voting population with IDs	352675
county	2	registered voters	175572
county	2	additional voters registered	1687
county	2	total registered	177259
county	2	potential voting population not registered	175416
county	2	constituencies	4
county	2	wards	20
county	2	registration centers	415
county	2	bvr kits	88
county	3	IDs issued	732701
county	3	dead with IDs	77446
county	3	potential voting population with IDs	655255
county	3	registered voters	336410
county	3	additional voters registered	6338
county	3	total registered	342748
county	3	potential voting population not registered	312507
county	3	constituencies	7
county	3	wards	35
county	3	registration centers	542
county	3	bvr kits	142
county	4	IDs issued	142700
county	4	dead with IDs	15083
county	4	potential voting population with IDs	127617
county	4	registered voters	79641
county	4	additional voters registered	1820
county	4	total registered	81461
county	4	potential voting population not registered	46156
county	4	constituencies	3
county	4	wards	15
county	4	registration centers	243
county	4	bvr kits	88
county	5	IDs issued	84020
county	5	dead with IDs	8881
county	5	potential voting population with IDs	75139
county	5	registered voters	52359
county	5	additional voters registered	39
county	5	total registered	52398
county	5	potential voting population not registered	22741
county	5	constituencies	2
county	5	wards	10
county	5	registration centers	120
county	5	bvr kits	50
county	6	IDs issued	235621
county	6	dead with IDs	24905
county	6	potential voting population with IDs	210716
county	6	registered voters	114189
county	6	additional voters registered	1082
county	6	total registered	115271
county	6	potential voting population not registered	95445
county	6	constituencies	4
county	6	wards	20
county	6	registration centers	276
county	6	bvr kits	92
county	7	IDs issued	189502
county	7	dead with IDs	20030
county	7	potential voting population with IDs	169472
county	7	registered voters	115236
county	7	additional voters registered	905
county	7	total registered	116141
county	7	potential voting population not registered	53331
county	7	constituencies	6
county	7	wards	30
county	7	registration centers	262
county	7	bvr kits	164
county	8	IDs issued	174904
county	8	dead with IDs	18487
county	8	potential voting population with IDs	156417
county	8	registered voters	118245
county	8	additional voters registered	402
county	8	total registered	118647
county	8	potential voting population not registered	37770
county	8	constituencies	6
county	8	wards	30
county	8	registration centers	360
county	8	bvr kits	170
county	9	IDs issued	168122
county	9	dead with IDs	17770
county	9	potential voting population with IDs	150352
county	9	registered voters	120923
county	9	additional voters registered	347
county	9	total registered	121270
county	9	potential voting population not registered	29082
county	9	constituencies	6
county	9	wards	30
county	9	registration centers	265
county	9	bvr kits	152
county	10	IDs issued	173520
county	10	dead with IDs	18341
county	10	potential voting population with IDs	155179
county	10	registered voters	105259
county	10	additional voters registered	477
county	10	total registered	105736
county	10	potential voting population not registered	49443
county	10	constituencies	4
county	10	wards	20
county	10	registration centers	301
county	10	bvr kits	120
county	11	IDs issued	97343
county	11	dead with IDs	10289
county	11	potential voting population with IDs	87054
county	11	registered voters	54587
county	11	additional voters registered	489
county	11	total registered	55076
county	11	potential voting population not registered	31978
county	11	constituencies	2
county	11	wards	10
county	11	registration centers	144
county	11	bvr kits	54
county	12	IDs issued	876779
county	12	dead with IDs	92676
county	12	potential voting population with IDs	784103
county	12	registered voters	489590
county	12	additional voters registered	4460
county	12	total registered	494050
county	12	potential voting population not registered	290053
county	12	constituencies	9
county	12	wards	45
county	12	registration centers	951
county	12	bvr kits	176
county	13	IDs issued	276666
county	13	dead with IDs	29244
county	13	potential voting population with IDs	247422
county	13	registered voters	155904
county	13	additional voters registered	1775
county	13	total registered	157679
county	13	potential voting population not registered	89743
county	13	constituencies	3
county	13	wards	15
county	13	registration centers	567
county	13	bvr kits	60
county	14	IDs issued	436308
county	14	dead with IDs	46118
county	14	potential voting population with IDs	390190
county	14	registered voters	227638
county	14	additional voters registered	1539
county	14	total registered	229177
county	14	potential voting population not registered	161013
county	14	constituencies	4
county	14	wards	20
county	14	registration centers	517
county	14	bvr kits	74
county	15	IDs issued	659598
county	15	dead with IDs	69720
county	15	potential voting population with IDs	589878
county	15	registered voters	324798
county	15	additional voters registered	5169
county	15	total registered	329967
county	15	potential voting population not registered	259911
county	15	constituencies	8
county	15	wards	40
county	15	registration centers	1318
county	15	bvr kits	186
county	16	IDs issued	791515
county	16	dead with IDs	83663
county	16	potential voting population with IDs	707852
county	16	registered voters	445421
county	16	additional voters registered	8118
county	16	total registered	453539
county	16	potential voting population not registered	254313
county	16	constituencies	8
county	16	wards	40
county	16	registration centers	875
county	16	bvr kits	158
county	17	IDs issued	577359
county	17	dead with IDs	61027
county	17	potential voting population with IDs	516332
county	17	registered voters	298474
county	17	additional voters registered	4183
county	17	total registered	302657
county	17	potential voting population not registered	213675
county	17	constituencies	6
county	17	wards	30
county	17	registration centers	862
county	17	bvr kits	126
county	18	IDs issued	428978
county	18	dead with IDs	45343
county	18	potential voting population with IDs	383635
county	18	registered voters	256425
county	18	additional voters registered	2191
county	18	total registered	258616
county	18	potential voting population not registered	125019
county	18	constituencies	5
county	18	wards	25
county	18	registration centers	350
county	18	bvr kits	100
county	19	IDs issued	650846
county	19	dead with IDs	68794
county	19	potential voting population with IDs	582052
county	19	registered voters	357059
county	19	additional voters registered	2136
county	19	total registered	359195
county	19	potential voting population not registered	222857
county	19	constituencies	6
county	19	wards	30
county	19	registration centers	572
county	19	bvr kits	114
county	20	IDs issued	395839
county	20	dead with IDs	41840
county	20	potential voting population with IDs	353999
county	20	registered voters	265567
county	20	additional voters registered	2035
county	20	total registered	267602
county	20	potential voting population not registered	86397
county	20	constituencies	4
county	20	wards	20
county	20	registration centers	315
county	20	bvr kits	78
county	21	IDs issued	679940
county	21	dead with IDs	71870
county	21	potential voting population with IDs	608070
county	21	registered voters	453725
county	21	additional voters registered	2729
county	21	total registered	456454
county	21	potential voting population not registered	151616
county	21	constituencies	7
county	21	wards	35
county	21	registration centers	584
county	21	bvr kits	136
county	22	IDs issued	1326733
county	22	dead with IDs	140236
county	22	potential voting population with IDs	1186497
county	22	registered voters	863199
county	22	additional voters registered	5508
county	22	total registered	868707
county	22	potential voting population not registered	317790
county	22	constituencies	12
county	22	wards	60
county	22	registration centers	551
county	22	bvr kits	182
county	23	IDs issued	263837
county	23	dead with IDs	27888
county	23	potential voting population with IDs	235949
county	23	registered voters	134426
county	23	additional voters registered	2528
county	23	total registered	136954
county	23	potential voting population not registered	98995
county	23	constituencies	6
county	23	wards	30
county	23	registration centers	557
county	23	bvr kits	182
county	24	IDs issued	211273
county	24	dead with IDs	22332
county	24	potential voting population with IDs	188941
county	24	registered voters	121204
county	24	additional voters registered	1899
county	24	total registered	123103
county	24	potential voting population not registered	65838
county	24	constituencies	4
county	24	wards	20
county	24	registration centers	673
county	24	bvr kits	94
county	25	IDs issued	117246
county	25	dead with IDs	12393
county	25	potential voting population with IDs	104853
county	25	registered voters	61150
county	25	additional voters registered	631
county	25	total registered	61781
county	25	potential voting population not registered	43072
county	25	constituencies	3
county	25	wards	15
county	25	registration centers	272
county	25	bvr kits	84
county	26	IDs issued	440582
county	26	dead with IDs	46570
county	26	potential voting population with IDs	394012
county	26	registered voters	245092
county	26	additional voters registered	3122
county	26	total registered	248214
county	26	potential voting population not registered	145798
county	26	constituencies	5
county	26	wards	25
county	26	registration centers	310
county	26	bvr kits	94
county	27	IDs issued	560403
county	27	dead with IDs	59235
county	27	potential voting population with IDs	501168
county	27	registered voters	332177
county	27	additional voters registered	2647
county	27	total registered	334824
county	27	potential voting population not registered	166344
county	27	constituencies	6
county	27	wards	30
county	27	registration centers	467
county	27	bvr kits	112
county	28	IDs issued	249001
county	28	dead with IDs	26319
county	28	potential voting population with IDs	222682
county	28	registered voters	135487
county	28	additional voters registered	1127
county	28	total registered	136614
county	28	potential voting population not registered	86068
county	28	constituencies	4
county	28	wards	20
county	28	registration centers	492
county	28	bvr kits	82
county	29	IDs issued	437378
county	29	dead with IDs	46231
county	29	potential voting population with IDs	391147
county	29	registered voters	265109
county	29	additional voters registered	1655
county	29	total registered	266764
county	29	potential voting population not registered	124383
county	29	constituencies	6
county	29	wards	30
county	29	registration centers	614
county	29	bvr kits	120
county	30	IDs issued	316428
county	30	dead with IDs	33446
county	30	potential voting population with IDs	282982
county	30	registered voters	174136
county	30	additional voters registered	1832
county	30	total registered	175968
county	30	potential voting population not registered	107014
county	30	constituencies	6
county	30	wards	30
county	30	registration centers	855
county	30	bvr kits	140
county	31	IDs issued	294773
county	31	dead with IDs	31158
county	31	potential voting population with IDs	263615
county	31	registered voters	174131
county	31	additional voters registered	802
county	31	total registered	174933
county	31	potential voting population not registered	88682
county	31	constituencies	3
county	31	wards	15
county	31	registration centers	325
county	31	bvr kits	76
county	32	IDs issued	1101467
county	32	dead with IDs	116425
county	32	potential voting population with IDs	985042
county	32	registered voters	696594
county	32	additional voters registered	5774
county	32	total registered	702368
county	32	potential voting population not registered	282674
county	32	constituencies	11
county	32	wards	55
county	32	registration centers	899
county	32	bvr kits	202
county	33	IDs issued	383478
county	33	dead with IDs	40534
county	33	potential voting population with IDs	342944
county	33	registered voters	263365
county	33	additional voters registered	1340
county	33	total registered	264705
county	33	potential voting population not registered	78239
county	33	constituencies	6
county	33	wards	30
county	33	registration centers	529
county	33	bvr kits	140
county	34	IDs issued	386120
county	34	dead with IDs	40813
county	34	potential voting population with IDs	345307
county	34	registered voters	306977
county	34	additional voters registered	2147
county	34	total registered	309124
county	34	potential voting population not registered	36183
county	34	constituencies	5
county	34	wards	25
county	34	registration centers	393
county	34	bvr kits	120
county	35	IDs issued	630836
county	35	dead with IDs	66679
county	35	potential voting population with IDs	564157
county	35	registered voters	290947
county	35	additional voters registered	2516
county	35	total registered	293463
county	35	potential voting population not registered	270694
county	35	constituencies	6
county	35	wards	30
county	35	registration centers	524
county	35	bvr kits	116
county	36	IDs issued	291127
county	36	dead with IDs	30772
county	36	potential voting population with IDs	260355
county	36	registered voters	253060
county	36	additional voters registered	0
county	36	total registered	253060
county	36	potential voting population not registered	7295
county	36	constituencies	5
county	36	wards	25
county	36	registration centers	566
county	36	bvr kits	100
county	37	IDs issued	1088915
county	37	dead with IDs	115098
county	37	potential voting population with IDs	973817
county	37	registered voters	568151
county	37	additional voters registered	10680
county	37	total registered	578831
county	37	potential voting population not registered	394986
county	37	constituencies	12
county	37	wards	60
county	37	registration centers	904
county	37	bvr kits	228
county	38	IDs issued	467772
county	38	dead with IDs	49444
county	38	potential voting population with IDs	418328
county	38	registered voters	202887
county	38	additional voters registered	4152
county	38	total registered	207039
county	38	potential voting population not registered	211289
county	38	constituencies	5
county	38	wards	25
county	38	registration centers	343
county	38	bvr kits	52
county	39	IDs issued	775554
county	39	dead with IDs	81976
county	39	potential voting population with IDs	693578
county	39	registered voters	412018
county	39	additional voters registered	7131
county	39	total registered	419149
county	39	potential voting population not registered	274429
county	39	constituencies	9
county	39	wards	45
county	39	registration centers	804
county	39	bvr kits	174
county	40	IDs issued	484548
county	40	dead with IDs	51217
county	40	potential voting population with IDs	433331
county	40	registered voters	251517
county	40	additional voters registered	5777
county	40	total registered	257294
county	40	potential voting population not registered	176037
county	40	constituencies	7
county	40	wards	35
county	40	registration centers	527
county	40	bvr kits	130
county	41	IDs issued	588004
county	41	dead with IDs	62152
county	41	potential voting population with IDs	525852
county	41	registered voters	312441
county	41	additional voters registered	5002
county	41	total registered	317443
county	41	potential voting population not registered	208409
county	41	constituencies	6
county	41	wards	30
county	41	registration centers	572
county	41	bvr kits	120
county	42	IDs issued	738345
county	42	dead with IDs	78043
county	42	potential voting population with IDs	660302
county	42	registered voters	386606
county	42	additional voters registered	8340
county	42	total registered	394946
county	42	potential voting population not registered	265356
county	42	constituencies	7
county	42	wards	35
county	42	registration centers	528
county	42	bvr kits	124
county	43	IDs issued	590090
county	43	dead with IDs	62373
county	43	potential voting population with IDs	527717
county	43	registered voters	326505
county	43	additional voters registered	5836
county	43	total registered	332341
county	43	potential voting population not registered	195376
county	43	constituencies	8
county	43	wards	40
county	43	registration centers	816
county	43	bvr kits	154
county	44	IDs issued	508570
county	44	dead with IDs	53756
county	44	potential voting population with IDs	454814
county	44	registered voters	283997
county	44	additional voters registered	2854
county	44	total registered	286851
county	44	potential voting population not registered	167963
county	44	constituencies	8
county	44	wards	40
county	44	registration centers	593
county	44	bvr kits	152
county	45	IDs issued	782373
county	45	dead with IDs	82697
county	45	potential voting population with IDs	699676
county	45	registered voters	413161
county	45	additional voters registered	6069
county	45	total registered	419230
county	45	potential voting population not registered	280446
county	45	constituencies	9
county	45	wards	45
county	45	registration centers	748
county	45	bvr kits	132
county	46	IDs issued	385851
county	46	dead with IDs	40784
county	46	potential voting population with IDs	345067
county	46	registered voters	219428
county	46	additional voters registered	3312
county	46	total registered	222740
county	46	potential voting population not registered	122327
county	46	constituencies	4
county	46	wards	20
county	46	registration centers	332
county	46	bvr kits	78
county	47	IDs issued	3159291
county	47	dead with IDs	333937
county	47	potential voting population with IDs	2825354
county	47	registered voters	1732288
county	47	additional voters registered	12271
county	47	total registered	1744559
county	47	potential voting population not registered	1080795
county	47	constituencies	17
county	47	wards	85
county	47	registration centers	330
county	47	bvr kits	178
country	KE	IDs issued	25551628
country	KE	dead with IDs	2700809
country	KE	potential voting population with IDs	22850819
country	KE	registered voters	14388781
country	KE	additional voters registered	156816
country	KE	total registered	14545597
country	KE	potential voting population not registered	8303239
country	KE	constituencies	290
country	KE	wards	1450
country	KE	registration centers	24559
country	KE	bvr kits	5756
\.


--
-- Data for Name: weightforage; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY weightforage (geo_level, geo_code, "weight for age", total) FROM stdin;
county	1	below -3	1.5
county	1	below -2	9.59999999999999964
county	1	above +2	1.89999999999999991
county	1	mean Z-score	-0.599999999999999978
county	2	below -3	1.5
county	2	below -2	11.8000000000000007
county	2	above +2	1.5
county	2	mean Z-score	-0.800000000000000044
county	3	below -3	3.10000000000000009
county	3	below -2	16.8999999999999986
county	3	above +2	0.599999999999999978
county	3	mean Z-score	-1
county	4	below -3	3.10000000000000009
county	4	below -2	18.6000000000000014
county	4	above +2	0.599999999999999978
county	4	mean Z-score	-1
county	5	below -3	2.10000000000000009
county	5	below -2	11.8000000000000007
county	5	above +2	2.10000000000000009
county	5	mean Z-score	-0.800000000000000044
county	6	below -3	3.20000000000000018
county	6	below -2	7.79999999999999982
county	6	above +2	1.80000000000000004
county	6	mean Z-score	-0.599999999999999978
county	7	below -3	2.89999999999999991
county	7	below -2	13.0999999999999996
county	7	above +2	1.30000000000000004
county	7	mean Z-score	-0.800000000000000044
county	8	below -3	3.70000000000000018
county	8	below -2	21.1000000000000014
county	8	above +2	0
county	8	mean Z-score	-1.10000000000000009
county	9	below -3	8.19999999999999929
county	9	below -2	24.8999999999999986
county	9	above +2	3
county	9	mean Z-score	-1.10000000000000009
county	10	below -3	7.29999999999999982
county	10	below -2	30.1000000000000014
county	10	above +2	0.400000000000000022
county	10	mean Z-score	-1.30000000000000004
county	11	below -3	3.20000000000000018
county	11	below -2	12.9000000000000004
county	11	above +2	1
county	11	mean Z-score	-0.800000000000000044
county	12	below -3	1.19999999999999996
county	12	below -2	8.09999999999999964
county	12	above +2	0.5
county	12	mean Z-score	-0.599999999999999978
county	13	below -3	4.09999999999999964
county	13	below -2	10.8000000000000007
county	13	above +2	0.800000000000000044
county	13	mean Z-score	-0.800000000000000044
county	14	below -3	1.30000000000000004
county	14	below -2	11.0999999999999996
county	14	above +2	1.30000000000000004
county	14	mean Z-score	-0.699999999999999956
county	15	below -3	2.89999999999999991
county	15	below -2	19.6999999999999993
county	15	above +2	0.699999999999999956
county	15	mean Z-score	-1.10000000000000009
county	16	below -3	1.69999999999999996
county	16	below -2	8.09999999999999964
county	16	above +2	1.19999999999999996
county	16	mean Z-score	-0.699999999999999956
county	17	below -3	1.69999999999999996
county	17	below -2	10.1999999999999993
county	17	above +2	1
county	17	mean Z-score	-0.699999999999999956
county	18	below -3	1
county	18	below -2	6.79999999999999982
county	18	above +2	0.800000000000000044
county	18	mean Z-score	-0.599999999999999978
county	19	below -3	1.19999999999999996
county	19	below -2	2.5
county	19	above +2	2.10000000000000009
county	19	mean Z-score	-0.299999999999999989
county	20	below -3	1.30000000000000004
county	20	below -2	7.70000000000000018
county	20	above +2	0
county	20	mean Z-score	-0.5
county	21	below -3	1.60000000000000009
county	21	below -2	5.59999999999999964
county	21	above +2	1.19999999999999996
county	21	mean Z-score	-0.5
county	22	below -3	1.10000000000000009
county	22	below -2	5.09999999999999964
county	22	above +2	4.29999999999999982
county	22	mean Z-score	-0.100000000000000006
county	23	below -3	9.80000000000000071
county	23	below -2	34
county	23	above +2	0
county	23	mean Z-score	-1.5
county	24	below -3	9.59999999999999964
county	24	below -2	38.5
county	24	above +2	0.299999999999999989
county	24	mean Z-score	-1.5
county	25	below -3	8.09999999999999964
county	25	below -2	28.8999999999999986
county	25	above +2	0.299999999999999989
county	25	mean Z-score	-1.39999999999999991
county	26	below -3	3.89999999999999991
county	26	below -2	15.3000000000000007
county	26	above +2	0.599999999999999978
county	26	mean Z-score	-0.800000000000000044
county	27	below -3	2.79999999999999982
county	27	below -2	11.5
county	27	above +2	0.699999999999999956
county	27	mean Z-score	-0.699999999999999956
county	28	below -3	2.5
county	28	below -2	12.5999999999999996
county	28	above +2	0.699999999999999956
county	28	mean Z-score	-0.900000000000000022
county	29	below -3	1.89999999999999991
county	29	below -2	11.0999999999999996
county	29	above +2	0.5
county	29	mean Z-score	-0.800000000000000044
county	30	below -3	3.60000000000000009
county	30	below -2	20.1999999999999993
county	30	above +2	1.19999999999999996
county	30	mean Z-score	-1.10000000000000009
county	31	below -3	2.79999999999999982
county	31	below -2	13.9000000000000004
county	31	above +2	0.800000000000000044
county	31	mean Z-score	-0.800000000000000044
county	32	below -3	2.79999999999999982
county	32	below -2	10.1999999999999993
county	32	above +2	1.5
county	32	mean Z-score	-0.599999999999999978
county	33	below -3	1.10000000000000009
county	33	below -2	11.5999999999999996
county	33	above +2	0.599999999999999978
county	33	mean Z-score	-0.900000000000000022
county	34	below -3	2.5
county	34	below -2	8.09999999999999964
county	34	above +2	4
county	34	mean Z-score	-0.400000000000000022
county	35	below -3	3.5
county	35	below -2	12.4000000000000004
county	35	above +2	1.39999999999999991
county	35	mean Z-score	-0.699999999999999956
county	36	below -3	2.10000000000000009
county	36	below -2	12
county	36	above +2	0.599999999999999978
county	36	mean Z-score	-0.800000000000000044
county	37	below -3	2.20000000000000018
county	37	below -2	10.0999999999999996
county	37	above +2	1.19999999999999996
county	37	mean Z-score	-0.599999999999999978
county	38	below -3	1.39999999999999991
county	38	below -2	5.90000000000000036
county	38	above +2	0.900000000000000022
county	38	mean Z-score	-0.5
county	39	below -3	0.900000000000000022
county	39	below -2	9
county	39	above +2	1.80000000000000004
county	39	mean Z-score	-0.5
county	40	below -3	1.80000000000000004
county	40	below -2	9
county	40	above +2	0.800000000000000044
county	40	mean Z-score	-0.599999999999999978
county	41	below -3	1.39999999999999991
county	41	below -2	7.79999999999999982
county	41	above +2	1.60000000000000009
county	41	mean Z-score	-0.400000000000000022
county	42	below -3	0.400000000000000022
county	42	below -2	6.59999999999999964
county	42	above +2	3.79999999999999982
county	42	mean Z-score	-0.200000000000000011
county	43	below -3	1.30000000000000004
county	43	below -2	5.40000000000000036
county	43	above +2	2.60000000000000009
county	43	mean Z-score	-0.299999999999999989
county	44	below -3	1.60000000000000009
county	44	below -2	8.59999999999999964
county	44	above +2	1.5
county	44	mean Z-score	-0.5
county	45	below -3	1.80000000000000004
county	45	below -2	8.40000000000000036
county	45	above +2	0.900000000000000022
county	45	mean Z-score	-0.599999999999999978
county	46	below -3	2
county	46	below -2	9.59999999999999964
county	46	above +2	0.5
county	46	mean Z-score	-0.599999999999999978
county	47	below -3	1.19999999999999996
county	47	below -2	3.79999999999999982
county	47	above +2	1.69999999999999996
county	47	mean Z-score	-0.200000000000000011
country	KE	below -3	2.29999999999999982
country	KE	below -2	11
country	KE	above +2	1.39999999999999991
country	KE	mean Z-score	-0.599999999999999978
\.


--
-- Data for Name: weightforheight; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY weightforheight (geo_level, geo_code, "weight for height", total) FROM stdin;
county	1	below -3	0
county	1	below -2	4.09999999999999964
county	1	above +2	4.20000000000000018
county	1	mean Z-score	0
county	2	below -3	0.800000000000000044
county	2	below -2	4.40000000000000036
county	2	above +2	3.79999999999999982
county	2	mean Z-score	0
county	3	below -3	0.900000000000000022
county	3	below -2	4.09999999999999964
county	3	above +2	2.79999999999999982
county	3	mean Z-score	-0.100000000000000006
county	4	below -3	0.900000000000000022
county	4	below -2	5.70000000000000018
county	4	above +2	1.30000000000000004
county	4	mean Z-score	-0.299999999999999989
county	5	below -3	0.299999999999999989
county	5	below -2	4.20000000000000018
county	5	above +2	2
county	5	mean Z-score	-0.100000000000000006
county	6	below -3	3.60000000000000009
county	6	below -2	7.20000000000000018
county	6	above +2	4.20000000000000018
county	6	mean Z-score	-0.100000000000000006
county	7	below -3	1.30000000000000004
county	7	below -2	11.4000000000000004
county	7	above +2	2.29999999999999982
county	7	mean Z-score	-0.599999999999999978
county	8	below -3	3.10000000000000009
county	8	below -2	14.1999999999999993
county	8	above +2	0.699999999999999956
county	8	mean Z-score	-0.800000000000000044
county	9	below -3	3.79999999999999982
county	9	below -2	14.8000000000000007
county	9	above +2	5.90000000000000036
county	9	mean Z-score	-0.5
county	10	below -3	5.09999999999999964
county	10	below -2	16.3000000000000007
county	10	above +2	1
county	10	mean Z-score	-0.900000000000000022
county	11	below -3	2.39999999999999991
county	11	below -2	9.09999999999999964
county	11	above +2	1.60000000000000009
county	11	mean Z-score	-0.599999999999999978
county	12	below -3	1
county	12	below -2	2.89999999999999991
county	12	above +2	4.90000000000000036
county	12	mean Z-score	0.100000000000000006
county	13	below -3	0
county	13	below -2	3.29999999999999982
county	13	above +2	3.60000000000000009
county	13	mean Z-score	0
county	14	below -3	0.200000000000000011
county	14	below -2	3
county	14	above +2	3.60000000000000009
county	14	mean Z-score	0.100000000000000006
county	15	below -3	0.400000000000000022
county	15	below -2	3.39999999999999991
county	15	above +2	3.10000000000000009
county	15	mean Z-score	-0.200000000000000011
county	16	below -3	2.5
county	16	below -2	6.5
county	16	above +2	5.5
county	16	mean Z-score	-0.100000000000000006
county	17	below -3	1
county	17	below -2	2.10000000000000009
county	17	above +2	5.29999999999999982
county	17	mean Z-score	0.100000000000000006
county	18	below -3	0.100000000000000006
county	18	below -2	2
county	18	above +2	6.79999999999999982
county	18	mean Z-score	0.299999999999999989
county	19	below -3	0
county	19	below -2	2.39999999999999991
county	19	above +2	5.90000000000000036
county	19	mean Z-score	0.200000000000000011
county	20	below -3	0.800000000000000044
county	20	below -2	3.89999999999999991
county	20	above +2	4.5
county	20	mean Z-score	0
county	21	below -3	0
county	21	below -2	1.39999999999999991
county	21	above +2	3.10000000000000009
county	21	mean Z-score	0.100000000000000006
county	22	below -3	0.299999999999999989
county	22	below -2	2.29999999999999982
county	22	above +2	7.90000000000000036
county	22	mean Z-score	0.400000000000000022
county	23	below -3	4.40000000000000036
county	23	below -2	22.8999999999999986
county	23	above +2	0.200000000000000011
county	23	mean Z-score	-1.30000000000000004
county	24	below -3	2.39999999999999991
county	24	below -2	14.3000000000000007
county	24	above +2	1.39999999999999991
county	24	mean Z-score	-0.800000000000000044
county	25	below -3	2.79999999999999982
county	25	below -2	13.5999999999999996
county	25	above +2	0.599999999999999978
county	25	mean Z-score	-0.900000000000000022
county	26	below -3	2
county	26	below -2	3.89999999999999991
county	26	above +2	2.39999999999999991
county	26	mean Z-score	-0.100000000000000006
county	27	below -3	1.10000000000000009
county	27	below -2	3
county	27	above +2	5.09999999999999964
county	27	mean Z-score	0
county	28	below -3	1.19999999999999996
county	28	below -2	4.29999999999999982
county	28	above +2	4.5
county	28	mean Z-score	-0.200000000000000011
county	29	below -3	1
county	29	below -2	3.89999999999999991
county	29	above +2	3.70000000000000018
county	29	mean Z-score	-0.100000000000000006
county	30	below -3	1.19999999999999996
county	30	below -2	6.90000000000000036
county	30	above +2	2
county	30	mean Z-score	-0.5
county	31	below -3	0.800000000000000044
county	31	below -2	4.40000000000000036
county	31	above +2	3.70000000000000018
county	31	mean Z-score	-0.100000000000000006
county	32	below -3	0.599999999999999978
county	32	below -2	4.5
county	32	above +2	5.70000000000000018
county	32	mean Z-score	0.100000000000000006
county	33	below -3	0.699999999999999956
county	33	below -2	2.39999999999999991
county	33	above +2	3
county	33	mean Z-score	-0.100000000000000006
county	34	below -3	0.800000000000000044
county	34	below -2	3
county	34	above +2	4.29999999999999982
county	34	mean Z-score	0.100000000000000006
county	35	below -3	1.10000000000000009
county	35	below -2	5.59999999999999964
county	35	above +2	6.59999999999999964
county	35	mean Z-score	0.100000000000000006
county	36	below -3	0.400000000000000022
county	36	below -2	1.80000000000000004
county	36	above +2	3.70000000000000018
county	36	mean Z-score	0.100000000000000006
county	37	below -3	0.5
county	37	below -2	1.80000000000000004
county	37	above +2	4.29999999999999982
county	37	mean Z-score	0.200000000000000011
county	38	below -3	0.400000000000000022
county	38	below -2	2.60000000000000009
county	38	above +2	4
county	38	mean Z-score	0.200000000000000011
county	39	below -3	0.200000000000000011
county	39	below -2	1.80000000000000004
county	39	above +2	2.89999999999999991
county	39	mean Z-score	0.100000000000000006
county	40	below -3	0.699999999999999956
county	40	below -2	2.20000000000000018
county	40	above +2	2.39999999999999991
county	40	mean Z-score	0.100000000000000006
county	41	below -3	0
county	41	below -2	0.200000000000000011
county	41	above +2	4.70000000000000018
county	41	mean Z-score	0.200000000000000011
county	42	below -3	0
county	42	below -2	0.800000000000000044
county	42	above +2	5.70000000000000018
county	42	mean Z-score	0.200000000000000011
county	43	below -3	0.900000000000000022
county	43	below -2	2.29999999999999982
county	43	above +2	4.09999999999999964
county	43	mean Z-score	0.200000000000000011
county	44	below -3	0.900000000000000022
county	44	below -2	4
county	44	above +2	4.40000000000000036
county	44	mean Z-score	0.200000000000000011
county	45	below -3	0
county	45	below -2	1.69999999999999996
county	45	above +2	4
county	45	mean Z-score	0.200000000000000011
county	46	below -3	0.900000000000000022
county	46	below -2	4.09999999999999964
county	46	above +2	2.89999999999999991
county	46	mean Z-score	0
county	47	below -3	0.800000000000000044
county	47	below -2	2.5
county	47	above +2	5.29999999999999982
county	47	mean Z-score	0.200000000000000011
country	KE	below -3	0.900000000000000022
country	KE	below -2	4
country	KE	above +2	4.09999999999999964
country	KE	mean Z-score	0
\.


--
-- Name: agegroup_gender agegroup_gender_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY agegroup_gender
    ADD CONSTRAINT agegroup_gender_pkey PRIMARY KEY (geo_level, geo_code, gender, "age group");


--
-- Name: ageincompletedyears_ruralorurban_sex ageincompletedyears_ruralorurban_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY ageincompletedyears_ruralorurban_sex
    ADD CONSTRAINT ageincompletedyears_ruralorurban_sex_pkey PRIMARY KEY (geo_level, geo_code, "rural or urban", sex, "age in completed years");


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: contraceptive_method contraceptive_method_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY contraceptive_method
    ADD CONSTRAINT contraceptive_method_pkey PRIMARY KEY (geo_level, geo_code, contraceptive_method, total);


--
-- Name: contraceptive_modern_method contraceptive_modern_method_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY contraceptive_modern_method
    ADD CONSTRAINT contraceptive_modern_method_pkey PRIMARY KEY (geo_level, geo_code, contraceptive_modern_method, total);


--
-- Name: contraceptive_traditional_method contraceptive_traditional_method_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY contraceptive_traditional_method
    ADD CONSTRAINT contraceptive_traditional_method_pkey PRIMARY KEY (geo_level, geo_code, contraceptive_traditional_method, total);


--
-- Name: contraceptive_use contraceptive_use_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY contraceptive_use
    ADD CONSTRAINT contraceptive_use_pkey PRIMARY KEY (geo_level, geo_code, contraceptive_use, total);


--
-- Name: crimereport crimereportpkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY crimereport
    ADD CONSTRAINT crimereportpkey PRIMARY KEY (geo_level, geo_code, crimereport);


--
-- Name: crop_production crop_production_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY crop_production
    ADD CONSTRAINT crop_production_pkey PRIMARY KEY (geo_level, geo_code, crop_production);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: employmentactivitystatus_sex employmentactivitystatus_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY employmentactivitystatus_sex
    ADD CONSTRAINT employmentactivitystatus_sex_pkey PRIMARY KEY (geo_level, geo_code, "employment activity status", sex);


--
-- Name: fertility fertility_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY fertility
    ADD CONSTRAINT fertility_pkey PRIMARY KEY (geo_level, geo_code, fertility);


--
-- Name: gender_ruralorurban gender_ruralorurban_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY gender_ruralorurban
    ADD CONSTRAINT gender_ruralorurban_pkey PRIMARY KEY (geo_level, geo_code, gender, "rural or urban");


--
-- Name: health_facilities_type health_facilities_type_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY health_facilities_type
    ADD CONSTRAINT health_facilities_type_pkey PRIMARY KEY (geo_level, geo_code, type, total);


--
-- Name: healthratios healthratiospkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY healthratios
    ADD CONSTRAINT healthratiospkey PRIMARY KEY (geo_level, geo_code, healthratios);


--
-- Name: heightforage heightforage_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY heightforage
    ADD CONSTRAINT heightforage_pkey PRIMARY KEY (geo_level, geo_code, "height for age");


--
-- Name: highesteducationlevelreached highesteducationlevelreached_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY highesteducationlevelreached
    ADD CONSTRAINT highesteducationlevelreached_pkey PRIMARY KEY (geo_level, geo_code, "highest education level reached");


--
-- Name: household_itn_use_users household_itn_use_users_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY household_itn_use_users
    ADD CONSTRAINT household_itn_use_users_pkey PRIMARY KEY (geo_level, geo_code, household, users, itn_use);


--
-- Name: householdpossessionofitn householdpossessionofitn_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY householdpossessionofitn
    ADD CONSTRAINT householdpossessionofitn_pkey PRIMARY KEY (geo_level, geo_code, "household possession of itn", total);


--
-- Name: hurumap_geography hurumap_geography_geo_level_9a5128d2_uniq; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY hurumap_geography
    ADD CONSTRAINT hurumap_geography_geo_level_9a5128d2_uniq UNIQUE (geo_level, geo_code);


--
-- Name: hurumap_geography hurumap_geography_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY hurumap_geography
    ADD CONSTRAINT hurumap_geography_pkey PRIMARY KEY (id);


--
-- Name: knowledgeofhivpreventionmethods_sex knowledgeofhivpreventionmethods_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY knowledgeofhivpreventionmethods_sex
    ADD CONSTRAINT knowledgeofhivpreventionmethods_sex_pkey PRIMARY KEY (geo_level, geo_code, "knowledge of hiv prevention methods", sex, total);


--
-- Name: livestock_population livestock_population_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY livestock_population
    ADD CONSTRAINT livestock_population_pkey PRIMARY KEY (geo_level, geo_code, livestock_population);


--
-- Name: livestock_products livestock_products_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY livestock_products
    ADD CONSTRAINT livestock_products_pkey PRIMARY KEY (geo_level, geo_code, livestock_products);


--
-- Name: mainmodeofhumanwastedisposal mainmodeofhumanwastedisposal_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY mainmodeofhumanwastedisposal
    ADD CONSTRAINT mainmodeofhumanwastedisposal_pkey PRIMARY KEY (geo_level, geo_code, "main mode of human waste disposal");


--
-- Name: mainsourceofwater mainsourceofwater_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY mainsourceofwater
    ADD CONSTRAINT mainsourceofwater_pkey PRIMARY KEY (geo_level, geo_code, "main source of water");


--
-- Name: maintypeoffloormaterial maintypeoffloormaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY maintypeoffloormaterial
    ADD CONSTRAINT maintypeoffloormaterial_pkey PRIMARY KEY (geo_level, geo_code, "main type of floor material");


--
-- Name: maintypeoflightingfuel maintypeoflightingfuel_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY maintypeoflightingfuel
    ADD CONSTRAINT maintypeoflightingfuel_pkey PRIMARY KEY (geo_level, geo_code, "main type of lighting fuel");


--
-- Name: maintypeofroofingmaterial maintypeofroofingmaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY maintypeofroofingmaterial
    ADD CONSTRAINT maintypeofroofingmaterial_pkey PRIMARY KEY (geo_level, geo_code, "main type of roofing material");


--
-- Name: maintypeofwallmaterial maintypeofwallmaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY maintypeofwallmaterial
    ADD CONSTRAINT maintypeofwallmaterial_pkey PRIMARY KEY (geo_level, geo_code, "main type of wall material");


--
-- Name: maternalcareindicators maternalcareindicators_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY maternalcareindicators
    ADD CONSTRAINT maternalcareindicators_pkey PRIMARY KEY (geo_level, geo_code, "maternal care indicators", total);


--
-- Name: protests protests_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY protests
    ADD CONSTRAINT protests_pkey PRIMARY KEY (geo_level, geo_code, protests, total);


--
-- Name: schoolattendance_sex schoolattendance_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY schoolattendance_sex
    ADD CONSTRAINT schoolattendance_sex_pkey PRIMARY KEY (geo_level, geo_code, "school attendance", sex);


--
-- Name: schoolfires schoolfires_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY schoolfires
    ADD CONSTRAINT schoolfires_pkey PRIMARY KEY (geo_level, geo_code, schoolfires);


--
-- Name: treatment_type treatment_type_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY treatment_type
    ADD CONSTRAINT treatment_type_pkey PRIMARY KEY (geo_level, geo_code, type, treatment);


--
-- Name: treatmentofchildrenwithfever treatmentofchildrenwithfever_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY treatmentofchildrenwithfever
    ADD CONSTRAINT treatmentofchildrenwithfever_pkey PRIMARY KEY (geo_level, geo_code, "treatment of children with fever");


--
-- Name: typesofcrime typesofcrimepkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY typesofcrime
    ADD CONSTRAINT typesofcrimepkey PRIMARY KEY (geo_level, geo_code, typesofcrime);


--
-- Name: useofipt useofipt_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY useofipt
    ADD CONSTRAINT useofipt_pkey PRIMARY KEY (geo_level, geo_code, "use of ipt");


--
-- Name: vaccinations vaccinations_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY vaccinations
    ADD CONSTRAINT vaccinations_pkey PRIMARY KEY (geo_level, geo_code, vaccinations);


--
-- Name: voterregistration voterregistration_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY voterregistration
    ADD CONSTRAINT voterregistration_pkey PRIMARY KEY (geo_level, geo_code, voterregistration);


--
-- Name: weightforage weightforage_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY weightforage
    ADD CONSTRAINT weightforage_pkey PRIMARY KEY (geo_level, geo_code, "weight for age");


--
-- Name: weightforheight weightforheight_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY weightforheight
    ADD CONSTRAINT weightforheight_pkey PRIMARY KEY (geo_level, geo_code, "weight for height");


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: hurumap_geography_84cdc76c; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX hurumap_geography_84cdc76c ON hurumap_geography USING btree (year);


--
-- Name: hurumap_geography_b068931c; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX hurumap_geography_b068931c ON hurumap_geography USING btree (name);


--
-- Name: hurumap_geography_d7d547e9; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX hurumap_geography_d7d547e9 ON hurumap_geography USING btree (osm_area_id);


--
-- Name: hurumap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: hurumap_ke
--

CREATE INDEX hurumap_geography_name_36b79089_like ON hurumap_geography USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

