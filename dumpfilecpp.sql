--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg110+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(25) COLLATE pg_catalog."C.UTF-8",
    password character varying(100) COLLATE pg_catalog."C.UTF-8"
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: auth_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.auth_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: list_contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.list_contacts (
    id integer NOT NULL,
    id_user_requested integer,
    id_user_accepted integer,
    status character varying(100),
    timestamp_send character varying(50)
);


ALTER TABLE public.list_contacts OWNER TO postgres;

--
-- Name: list_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.list_contacts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.list_contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.message (
    id integer NOT NULL,
    id_sender integer,
    id_reciever integer,
    message character varying(50) COLLATE pg_catalog."C.UTF-8",
    timestamp_post character varying(50)
);


ALTER TABLE public.message OWNER TO postgres;

--
-- Name: message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.message ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mousexy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mousexy (
    id integer NOT NULL,
    x integer NOT NULL,
    y integer NOT NULL,
    id_client integer
);


ALTER TABLE public.mousexy OWNER TO postgres;

--
-- Name: mousexy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mousexy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mousexy_id_seq OWNER TO postgres;

--
-- Name: mousexy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mousexy_id_seq OWNED BY public.mousexy.id;


--
-- Name: video_stream; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video_stream (
    id integer NOT NULL,
    image_data bytea
);


ALTER TABLE public.video_stream OWNER TO postgres;

--
-- Name: mousexy id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mousexy ALTER COLUMN id SET DEFAULT nextval('public.mousexy_id_seq'::regclass);


--
-- Data for Name: list_contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.list_contacts OVERRIDING SYSTEM VALUE VALUES (61, 51, 53, 'wait', '1687020359211310');
INSERT INTO public.list_contacts OVERRIDING SYSTEM VALUE VALUES (62, 51, 48, 'wait', '1687020364233192');
INSERT INTO public.list_contacts OVERRIDING SYSTEM VALUE VALUES (63, 51, 47, 'wait', '1687021244057101');
INSERT INTO public.list_contacts OVERRIDING SYSTEM VALUE VALUES (64, 51, 52, 'wait', '1687021617452929');
INSERT INTO public.list_contacts OVERRIDING SYSTEM VALUE VALUES (65, 51, 49, 'wait', '1687021699528535');


--
-- Data for Name: message; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (142, 51, 1, 'sdf', '1687016573845614');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (143, 51, 1, 'в', '1687017504203323');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (144, 51, 1, 'f', '1687017955845463');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (145, 51, 47, 'q', '1687021520889482');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (146, 51, 53, 'dd', '1687021531910173');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (147, 51, 53, 'sd', '1687021546696814');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (148, 51, 48, 'sd', '1687021559087658');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (149, 51, 48, '', '1687021565524150');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (150, 51, 49, 'f', '1687024660797895');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (151, 51, 49, 'd', '1687024669868303');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (152, 51, 49, 'd', '1687024676168992');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (153, 51, 49, 'd', '1687024676920200');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (154, 51, 49, 'd', '1687024677054384');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (155, 51, 49, 'd', '1687024677288422');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (156, 51, 49, 'd', '1687024677423754');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (157, 51, 49, 'd', '1687024677533727');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (158, 51, 49, 'd', '1687024677823774');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (159, 51, 49, 'd', '1687024678031750');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (160, 51, 49, 'd', '1687024678166237');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (161, 51, 49, 'd', '1687024679703053');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (162, 51, 49, 'd', '1687024679840078');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (163, 51, 49, 'd', '1687024680097871');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (164, 51, 49, 'd', '1687024680200395');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (165, 51, 49, 'd', '1687024680672315');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (166, 51, 49, 'd', '1687024680790587');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (167, 51, 49, 'd', '1687024680911143');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (168, 51, 48, 'd', '1687025097045352');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (169, 51, 48, 'da', '1687025101333728');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (170, 51, 1, '', '1687031087352637');
INSERT INTO public.message OVERRIDING SYSTEM VALUE VALUES (171, 51, 1, '', '1687032034843587');


--
-- Data for Name: mousexy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.mousexy VALUES (1, 785, -15, 1);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users OVERRIDING SYSTEM VALUE VALUES (47, 'a', '');
INSERT INTO public.users OVERRIDING SYSTEM VALUE VALUES (48, 's', '');
INSERT INTO public.users OVERRIDING SYSTEM VALUE VALUES (49, 'mama', '');
INSERT INTO public.users OVERRIDING SYSTEM VALUE VALUES (50, 'den', '');
INSERT INTO public.users OVERRIDING SYSTEM VALUE VALUES (51, '', '');
INSERT INTO public.users OVERRIDING SYSTEM VALUE VALUES (52, 'q', '');
INSERT INTO public.users OVERRIDING SYSTEM VALUE VALUES (53, 'az', '');


--
-- Data for Name: video_stream; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: auth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_id_seq', 53, true);


--
-- Name: list_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.list_contacts_id_seq', 65, true);


--
-- Name: message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.message_id_seq', 171, true);


--
-- Name: mousexy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mousexy_id_seq', 81, true);


--
-- Name: users auth_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT auth_pkey PRIMARY KEY (id);


--
-- Name: mousexy mousexy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mousexy
    ADD CONSTRAINT mousexy_pkey PRIMARY KEY (id);


--
-- Name: video_stream video_stream_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_stream
    ADD CONSTRAINT video_stream_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
