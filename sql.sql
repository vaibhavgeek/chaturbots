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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: vaibhavm
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO vaibhavm;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: vaibhavm
--

CREATE TABLE messages (
    id bigint NOT NULL,
    content character varying,
    user_id integer,
    template boolean,
    responder character varying,
    template_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    chat_id integer,
    visitor_id integer,
    payload character varying,
    tags character varying
);


ALTER TABLE messages OWNER TO vaibhavm;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: vaibhavm
--

CREATE SEQUENCE messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE messages_id_seq OWNER TO vaibhavm;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vaibhavm
--

ALTER SEQUENCE messages_id_seq OWNED BY messages.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: vaibhavm
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO vaibhavm;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: vaibhavm
--

CREATE TABLE tags (
    id bigint NOT NULL,
    tag_name character varying,
    tag_response character varying,
    template_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE tags OWNER TO vaibhavm;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: vaibhavm
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tags_id_seq OWNER TO vaibhavm;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vaibhavm
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: templates; Type: TABLE; Schema: public; Owner: vaibhavm
--

CREATE TABLE templates (
    id bigint NOT NULL,
    payload character varying,
    partial character varying,
    intent character varying,
    user_id integer,
    parent_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE templates OWNER TO vaibhavm;

--
-- Name: templates_id_seq; Type: SEQUENCE; Schema: public; Owner: vaibhavm
--

CREATE SEQUENCE templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE templates_id_seq OWNER TO vaibhavm;

--
-- Name: templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vaibhavm
--

ALTER SEQUENCE templates_id_seq OWNED BY templates.id;


--
-- Name: urls; Type: TABLE; Schema: public; Owner: vaibhavm
--

CREATE TABLE urls (
    id bigint NOT NULL,
    visitor_id integer,
    url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE urls OWNER TO vaibhavm;

--
-- Name: urls_id_seq; Type: SEQUENCE; Schema: public; Owner: vaibhavm
--

CREATE SEQUENCE urls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE urls_id_seq OWNER TO vaibhavm;

--
-- Name: urls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vaibhavm
--

ALTER SEQUENCE urls_id_seq OWNED BY urls.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: vaibhavm
--

CREATE TABLE users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE users OWNER TO vaibhavm;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: vaibhavm
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO vaibhavm;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vaibhavm
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: visitors; Type: TABLE; Schema: public; Owner: vaibhavm
--

CREATE TABLE visitors (
    id bigint NOT NULL,
    ipaddr character varying,
    location character varying,
    v_count integer,
    url_id character varying,
    name character varying,
    email character varying,
    auth_token character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    chat_id integer
);


ALTER TABLE visitors OWNER TO vaibhavm;

--
-- Name: visitors_id_seq; Type: SEQUENCE; Schema: public; Owner: vaibhavm
--

CREATE SEQUENCE visitors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE visitors_id_seq OWNER TO vaibhavm;

--
-- Name: visitors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vaibhavm
--

ALTER SEQUENCE visitors_id_seq OWNED BY visitors.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY messages ALTER COLUMN id SET DEFAULT nextval('messages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY templates ALTER COLUMN id SET DEFAULT nextval('templates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY urls ALTER COLUMN id SET DEFAULT nextval('urls_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY visitors ALTER COLUMN id SET DEFAULT nextval('visitors_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: vaibhavm
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-07-03 09:42:07.838114	2017-07-03 09:42:07.838114
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: vaibhavm
--

COPY messages (id, content, user_id, template, responder, template_id, created_at, updated_at, chat_id, visitor_id, payload, tags) FROM stdin;
1953	Exisiting Customer - Login	1	\N	user	\N	2017-10-07 15:11:53.922047	2017-10-07 15:11:53.922047	\N	263	ecl	\N
1954	Login	1	\N	user	\N	2017-10-07 15:11:55.476788	2017-10-07 15:11:55.476788	\N	263	greeting_after_login	\N
1955	Select from options	1	\N	user	\N	2017-10-07 15:11:57.900411	2017-10-07 15:11:57.900411	\N	263	greeting_show_options	\N
1956	Exisiting Customer - Login	1	\N	user	\N	2017-10-07 15:13:59.087255	2017-10-07 15:13:59.087255	\N	263	ecl	\N
1957	Login	1	\N	user	\N	2017-10-07 15:14:00.653402	2017-10-07 15:14:00.653402	\N	263	greeting_after_login	\N
1958	Select from options	1	\N	user	\N	2017-10-07 15:14:01.908931	2017-10-07 15:14:01.908931	\N	263	greeting_show_options	\N
1959	Login	1	\N	user	\N	2017-10-07 15:18:58.95835	2017-10-07 15:18:58.95835	\N	263	greeting_after_login	\N
1960	Select from options	1	\N	user	\N	2017-10-07 15:19:02.746646	2017-10-07 15:19:02.746646	\N	263	greeting_show_options	\N
1961	Check Balance	1	\N	user	\N	2017-10-07 16:58:26.354921	2017-10-07 16:58:26.354921	\N	263	balance	\N
1962	Remittance	1	\N	user	\N	2017-10-07 16:58:27.938295	2017-10-07 16:58:27.938295	\N	263	remittence	\N
1963	Transfer Money Locally	1	\N	user	\N	2017-10-07 16:58:30.289034	2017-10-07 16:58:30.289034	\N	263	transfer_s1	\N
1964	Check Balance	1	\N	user	\N	2017-10-07 17:48:46.802402	2017-10-07 17:48:46.802402	\N	263	balance	\N
1965	Remittance	1	\N	user	\N	2017-10-07 17:48:53.383678	2017-10-07 17:48:53.383678	\N	263	remittence	\N
1966	Exisiting Customer - Login	1	\N	user	\N	2017-10-07 17:49:03.824406	2017-10-07 17:49:03.824406	\N	263	ecl	\N
1967	Login	1	\N	user	\N	2017-10-07 17:49:05.585794	2017-10-07 17:49:05.585794	\N	263	greeting_after_login	\N
1968	Select from options	1	\N	user	\N	2017-10-07 17:49:07.518419	2017-10-07 17:49:07.518419	\N	263	greeting_show_options	\N
1969	Check Balance	1	\N	user	\N	2017-10-07 17:49:09.171372	2017-10-07 17:49:09.171372	\N	263	balance	\N
1970	Remittance	1	\N	user	\N	2017-10-07 17:49:11.093774	2017-10-07 17:49:11.093774	\N	263	remittence	\N
1971	Rate	1	\N	user	\N	2017-10-07 17:57:27.256946	2017-10-07 17:57:27.256946	\N	263	\N	\N
1972	Rate	1	\N	user	\N	2017-10-07 18:08:46.463288	2017-10-07 18:08:46.463288	\N	263	\N	\N
1973	Rate	1	\N	user	\N	2017-10-07 18:10:37.285954	2017-10-07 18:10:37.285954	\N	263	\N	\N
1974	Rate	1	\N	user	\N	2017-10-07 18:11:33.84074	2017-10-07 18:11:33.84074	\N	263	rate_after	\N
1975	Rate	1	\N	user	\N	2017-10-07 18:11:43.058732	2017-10-07 18:11:43.058732	\N	263	rate_after	\N
1976	Transfer Money Locally	1	\N	user	\N	2017-10-07 18:12:03.666603	2017-10-07 18:12:03.666603	\N	263	transfer_s1	\N
1977	Transfer Money Locally	1	\N	user	\N	2017-10-07 18:14:10.91644	2017-10-07 18:14:10.91644	\N	263	transfer_s1	\N
1978	Transfer	1	\N	user	\N	2017-10-07 18:18:14.009331	2017-10-07 18:18:14.009331	\N	263	transfer_s2	\N
1979	Know more about DCB services	1	\N	user	\N	2017-10-07 18:32:01.749726	2017-10-07 18:32:01.749726	\N	263	kmadp	\N
1980	Exisiting Customer - Login	1	\N	user	\N	2017-10-07 18:32:09.005627	2017-10-07 18:32:09.005627	\N	263	ecl	\N
1981	Login	1	\N	user	\N	2017-10-07 18:32:11.672341	2017-10-07 18:32:11.672341	\N	263	greeting_after_login	\N
1982	Select from options	1	\N	user	\N	2017-10-07 18:32:13.196077	2017-10-07 18:32:13.196077	\N	263	greeting_show_options	\N
1983	Remittance	1	\N	user	\N	2017-10-07 18:32:14.385001	2017-10-07 18:32:14.385001	\N	263	remittence	\N
1984	Rate	1	\N	user	\N	2017-10-07 18:32:16.144779	2017-10-07 18:32:16.144779	\N	263	rate_after	\N
1985	hi	1	\N	agent	\N	2017-10-07 18:52:52.927836	2017-10-07 18:52:52.927836	\N	263	nil	\N
\.


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vaibhavm
--

SELECT pg_catalog.setval('messages_id_seq', 1985, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: vaibhavm
--

COPY schema_migrations (version) FROM stdin;
20170703094159
20170703112516
20170703210432
20170730160202
20170730161004
20170801094916
20170806122247
20170813110306
20170829125910
20170829131905
20170829132249
20171007141452
20171007142439
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: vaibhavm
--

COPY tags (id, tag_name, tag_response, template_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vaibhavm
--

SELECT pg_catalog.setval('tags_id_seq', 1, false);


--
-- Data for Name: templates; Type: TABLE DATA; Schema: public; Owner: vaibhavm
--

COPY templates (id, payload, partial, intent, user_id, parent_id, created_at, updated_at) FROM stdin;
1	wivm	vedicmaths/what_is	What is Vedic Maths?	1	\N	2017-08-29 13:24:56.651908	2017-08-29 13:24:56.651908
2	lvm	vedicmaths/learn_vm	Learn Vedic Maths	1	\N	2017-08-30 12:19:56.166318	2017-08-30 12:21:13.099119
3	franchise	vedicmaths/franchise	Franchise	1	\N	2017-08-30 12:20:23.805227	2017-08-30 12:21:48.394436
7	vmib	vedicmaths/wivm/blog	Vedic Maths India Blog	1	1	2017-08-30 12:40:00	2017-08-30 12:40:00
6	hovm	vedicmaths/wivm/history	History of Vedic Maths	1	1	2017-08-30 12:33:00	2017-08-30 12:33:00
5	fovm	vedicmaths/wivm/father_vm	Father of  Vedic Maths	1	1	2017-08-30 12:32:00	2017-08-30 12:32:00
4	tvovm	vedicmaths/wivm/ted	TED Video on Vedic Maths	1	1	2017-08-30 12:31:00	2017-08-30 12:31:00
8	avmfi	vedicmaths/wivm/about	About Vedic Maths Forum India	1	1	2017-08-30 12:47:48.905756	2017-08-30 12:47:48.905756
9	dvd	vedicmaths/lvm/dvd	DVDs	1	2	2017-08-30 13:17:57.383871	2017-08-30 13:17:57.383871
10	books	vedicmaths/lvm/books	Books	1	2	2017-08-30 13:18:22.187551	2017-08-30 13:18:22.187551
11	loc	vedicmaths/lvm/live_online_course	Live Online Courses	1	2	2017-08-30 13:19:12.784798	2017-08-30 13:19:12.784798
13	app	vedicmaths/lvm/app	Application	1	2	2017-08-30 13:20:57.505877	2017-08-30 13:20:57.505877
16	vmfs	vedicmaths/lvm/loc/vmfs	Vedic Maths for Students	1	11	2017-09-04 10:37:00	2017-09-04 10:37:00
17	movmftbgt	vedicmaths/lvm/loc/vmft/movmftbgt	Masterclass on Vedic Maths for Teachers by Gaurav Tekriwal	1	15	2017-09-04 10:39:00	2017-09-04 10:39:00
18	octtc	vedicmaths/lvm/loc/vmft/octtc	Online Certified Teacher's Training Course	1	15	2017-09-04 10:45:00	2017-09-04 10:45:00
19	vmfsg	vedicmaths/lvm/loc/vmfs/vmfsg	Vedic Maths for Students in Grade 3rd-10th	1	16	2017-09-04 10:53:00	2017-09-04 10:53:00
20	vmfce	vedicmaths/lvm/loc/vmfs/vmfce	Vedic Maths for Competitive Exams	1	16	2017-09-04 10:54:00	2017-09-04 10:54:00
15	vmft	vedicmaths/lvm/loc/vmft	Vedic Maths for Teachers	1	11	2017-09-03 03:56:00	2017-09-04 13:46:27.899423
12	vmfp	vedicmaths/lvm/parents	Vedic Maths for Parents	1	11	2017-08-30 13:20:00	2017-08-30 13:20:00
21	ecl	bank_hacks/ecl	Existing Customer Login 	2	\N	2017-10-07 10:49:02.712444	2017-10-07 10:49:02.712444
22	balance	bank_hacks/balance	What is my Account Balance?	2	\N	2017-10-07 14:33:25.601438	2017-10-07 14:33:25.601438
23	remittence	bank_hacks/remittence	What are the foreign exchange rates? 	1	\N	2017-10-07 14:34:30.305896	2017-10-07 14:34:30.305896
25	transfer_s2	bank_hacks/transfer/step2	Transfer Money to friend: Confirmation	1	\N	2017-10-07 14:36:03.664078	2017-10-07 14:36:03.664078
24	transfer_s1	bank_hacks/transfer/step1	Transfer Money to Friend : Ask Details	2	\N	2017-10-07 14:35:00	2017-10-07 14:35:00
27	greeting_basic	bank_hacks/greeting/basic	Basic Greeting for the customer	2	\N	2017-10-07 15:00:29.898845	2017-10-07 15:00:29.898845
26	greeting_after_login	bank_hacks/greeting/after_login	Login	2	\N	2017-10-07 14:59:00	2017-10-07 15:09:00
28	greeting_show_options	bank_hacks/greeting/all_options	Select From Options	2	\N	2017-10-07 15:01:00	2017-10-07 15:01:00
29	rate_after	bank_hacks/fx_final	Rate Conversion	2	\N	2017-10-07 17:58:58.204833	2017-10-07 17:58:58.204833
\.


--
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vaibhavm
--

SELECT pg_catalog.setval('templates_id_seq', 29, true);


--
-- Data for Name: urls; Type: TABLE DATA; Schema: public; Owner: vaibhavm
--

COPY urls (id, visitor_id, url, created_at, updated_at) FROM stdin;
\.


--
-- Name: urls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vaibhavm
--

SELECT pg_catalog.setval('urls_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: vaibhavm
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	vaibhav.dkm@gmail.com	$2a$11$9lwajXWO2fd6aM3rSMfpAu/Z4mmK0mFc6VnybzmSSVRf29cyCpEfO	\N	\N	\N	255	2017-10-07 18:31:34.087705	2017-10-07 11:25:30.540989	127.0.0.1	127.0.0.1	2017-07-04 10:56:57.616728	2017-10-07 18:31:34.088561
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vaibhavm
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Data for Name: visitors; Type: TABLE DATA; Schema: public; Owner: vaibhavm
--

COPY visitors (id, ipaddr, location, v_count, url_id, name, email, auth_token, created_at, updated_at, chat_id) FROM stdin;
263	127.0.0.1	\N	\N	\N	\N	\N	MvYNhcVxVIELEiRQxUSclHyrMyeRmuWHxGimzsJeRTuOdPzNOXibHmfFbUrTxoXjEVPWGHUteVqoZsuFARflKDbXxEAQZUsKjHpR	2017-10-07 11:45:29.090771	2017-10-07 11:45:29.090771	\N
\.


--
-- Name: visitors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vaibhavm
--

SELECT pg_catalog.setval('visitors_id_seq', 263, true);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: messages_pkey; Type: CONSTRAINT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: templates_pkey; Type: CONSTRAINT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);


--
-- Name: urls_pkey; Type: CONSTRAINT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: visitors_pkey; Type: CONSTRAINT; Schema: public; Owner: vaibhavm
--

ALTER TABLE ONLY visitors
    ADD CONSTRAINT visitors_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: vaibhavm
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: vaibhavm
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

