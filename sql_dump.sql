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
    payload character varying
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

COPY messages (id, content, user_id, template, responder, template_id, created_at, updated_at, chat_id, visitor_id, payload) FROM stdin;
1776	What is Vedic Maths?	1	\N	user	\N	2017-10-03 10:37:12.11182	2017-10-03 10:37:12.11182	\N	250	wivm
1777	Father of Vedic Maths	1	\N	user	\N	2017-10-03 10:37:15.335742	2017-10-03 10:37:15.335742	\N	250	fovm
1778	About Vedic Maths Forum India	1	\N	user	\N	2017-10-03 10:37:17.766978	2017-10-03 10:37:17.766978	\N	250	avmfi
1779	I help you work smarter instead of harder.	1	\N	bot	\N	2017-10-03 10:37:18.715403	2017-10-03 10:37:18.715403	\N	250	nil
1780	History of Vedic Maths	1	\N	user	\N	2017-10-03 10:37:22.323754	2017-10-03 10:37:22.323754	\N	250	hovm
1781	Franchise	1	\N	user	\N	2017-10-03 10:37:26.513328	2017-10-03 10:37:26.513328	\N	250	franchise
1782	TED Video on Vedic Maths	1	\N	user	\N	2017-10-03 10:59:36.070017	2017-10-03 10:59:36.070017	\N	250	tvovm
1783	Vedic Maths India Blog	1	\N	user	\N	2017-10-03 11:00:57.962558	2017-10-03 11:00:57.962558	\N	250	vmib
1784	Learn Vedic Maths	1	\N	user	\N	2017-10-03 11:02:34.635731	2017-10-03 11:02:34.635731	\N	250	lvm
1785	DVDs	1	\N	user	\N	2017-10-03 11:04:11.898503	2017-10-03 11:04:11.898503	\N	250	dvd
1786	Live Online Courses	1	\N	user	\N	2017-10-03 11:06:59.032969	2017-10-03 11:06:59.032969	\N	250	loc
1787	Right here in your device. Whenever you need me.	1	\N	bot	\N	2017-10-03 11:07:00.022743	2017-10-03 11:07:00.022743	\N	250	nil
1788	Vedic Maths for Students	1	\N	user	\N	2017-10-03 11:07:47.890691	2017-10-03 11:07:47.890691	\N	250	vmfs
1789	Vedic Maths for Teachers	1	\N	user	\N	2017-10-03 11:07:52.228416	2017-10-03 11:07:52.228416	\N	250	vmft
1790	Vedic Maths for Parents	1	\N	user	\N	2017-10-03 11:07:55.060581	2017-10-03 11:07:55.060581	\N	250	vmfp
1791	Vedic Maths for Students in Grade 3rd-10th	1	\N	user	\N	2017-10-03 11:25:31.285179	2017-10-03 11:25:31.285179	\N	250	vmfsg
1792	hi	1	\N	user	\N	2017-10-03 12:26:46.181796	2017-10-03 12:26:46.181796	\N	250	nil
1793	Hi there, friend!	1	\N	bot	\N	2017-10-03 12:26:47.040141	2017-10-03 12:26:47.040141	\N	250	nil
1794	Cool	1	\N	agent	\N	2017-10-03 12:26:56.221994	2017-10-03 12:26:56.221994	\N	250	nil
1795	Nice	1	\N	user	\N	2017-10-03 12:27:06.829614	2017-10-03 12:27:06.829614	\N	250	nil
1796	Terrific!	1	\N	bot	\N	2017-10-03 12:27:07.84293	2017-10-03 12:27:07.84293	\N	250	nil
1797	Hi	1	\N	user	\N	2017-10-03 12:27:12.625855	2017-10-03 12:27:12.625855	\N	250	nil
1798	Howdy.	1	\N	bot	\N	2017-10-03 12:27:13.281796	2017-10-03 12:27:13.281796	\N	250	nil
1799	Something the bot cannot respond to. 	1	\N	user	\N	2017-10-03 12:27:21.086833	2017-10-03 12:27:21.086833	\N	250	nil
1800	fsdfdsfsfdsf	1	\N	agent	\N	2017-10-03 12:27:27.818421	2017-10-03 12:27:27.818421	\N	250	nil
\.


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vaibhavm
--

SELECT pg_catalog.setval('messages_id_seq', 1800, true);


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
\.


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
\.


--
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vaibhavm
--

SELECT pg_catalog.setval('templates_id_seq', 20, true);


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
1	vaibhav.dkm@gmail.com	$2a$11$9lwajXWO2fd6aM3rSMfpAu/Z4mmK0mFc6VnybzmSSVRf29cyCpEfO	\N	\N	\N	245	2017-10-03 12:43:42.531886	2017-10-03 12:14:49.631482	127.0.0.1	127.0.0.1	2017-07-04 10:56:57.616728	2017-10-03 12:43:42.532919
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vaibhavm
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Data for Name: visitors; Type: TABLE DATA; Schema: public; Owner: vaibhavm
--

COPY visitors (id, ipaddr, location, v_count, url_id, name, email, auth_token, created_at, updated_at, chat_id) FROM stdin;
250	127.0.0.1	Gujarat, India	\N	\N	\N	\N	MvYNhcVxVIELEiRQxUSclHyrMyeRmuWHxGimzsJeRTuOdPzNOXibHmfFbUrTxoXjEVPWGHUteVqoZsuFARflKDbXxEAQZUsKjHpR	2017-10-02 14:02:21.847583	2017-10-02 14:02:21.847583	\N
251	127.0.0.1	\N	\N	\N	\N	\N	OuObzehTtexsrUcnpDevqVKfiTQOJLAWaozzSDBjbyVwbRebLBEMrVoUzZDIhTckyogXlIWxLeavLodjpokTYbBBMpCJXEzKMZdv	2017-10-02 14:17:06.09373	2017-10-02 14:17:06.09373	\N
\.


--
-- Name: visitors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vaibhavm
--

SELECT pg_catalog.setval('visitors_id_seq', 251, true);


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

