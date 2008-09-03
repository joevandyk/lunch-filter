--
-- PostgreSQL database dump
--

SET client_encoding = 'SQL_ASCII';
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'Standard public schema';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: blocks; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE blocks (
    id serial NOT NULL,
    street_id integer,
    name character varying(255),
    sort integer
);


ALTER TABLE public.blocks OWNER TO jtei;

--
-- Name: blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jtei
--

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('blocks', 'id'), 1, false);


--
-- Name: cities; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE cities (
    id serial NOT NULL,
    created_at timestamp without time zone,
    name character varying(255)
);


ALTER TABLE public.cities OWNER TO jtei;

--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jtei
--

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('cities', 'id'), 1, false);


--
-- Name: cuisines; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE cuisines (
    id serial NOT NULL,
    name character varying(255)
);


ALTER TABLE public.cuisines OWNER TO jtei;

--
-- Name: cuisines_flags; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE cuisines_flags (
    flag_id integer,
    cuisine_id integer
);


ALTER TABLE public.cuisines_flags OWNER TO jtei;

--
-- Name: cuisines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jtei
--

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('cuisines', 'id'), 3, true);


--
-- Name: cuisines_restaurants; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE cuisines_restaurants (
    restaurant_id integer,
    cuisine_id integer
);


ALTER TABLE public.cuisines_restaurants OWNER TO jtei;

--
-- Name: flags; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE flags (
    id serial NOT NULL,
    restaurant_id integer,
    created_at timestamp without time zone,
    name character varying(255),
    yelp_url character varying(255),
    husky_card smallint,
    coupon_url character varying(255),
    delivery smallint,
    note character varying(255)
);


ALTER TABLE public.flags OWNER TO jtei;

--
-- Name: flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jtei
--

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('flags', 'id'), 16, true);


--
-- Name: recommendations; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE recommendations (
    id serial NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_id integer,
    restaurant_id integer,
    recommended boolean
);


ALTER TABLE public.recommendations OWNER TO jtei;

--
-- Name: recommendations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jtei
--

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('recommendations', 'id'), 15, true);


--
-- Name: restaurants; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE restaurants (
    id serial NOT NULL,
    street_id integer,
    created_at timestamp without time zone,
    name character varying(255),
    yelp_url character varying(255),
    husky_card smallint,
    coupon_url character varying(255),
    side character varying(12),
    delivery smallint,
    block_id integer,
    top integer
);


ALTER TABLE public.restaurants OWNER TO jtei;

--
-- Name: restaurants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jtei
--

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('restaurants', 'id'), 4, true);


--
-- Name: schema_info; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE schema_info (
    version integer
);


ALTER TABLE public.schema_info OWNER TO jtei;

--
-- Name: streets; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE streets (
    id serial NOT NULL,
    name character varying(255),
    description text,
    created_at timestamp without time zone,
    url_name character varying(255),
    city_id integer,
    neighborhood_url character varying(255)
);


ALTER TABLE public.streets OWNER TO jtei;

--
-- Name: streets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jtei
--

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('streets', 'id'), 1, false);


--
-- Name: users; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE users (
    id serial NOT NULL,
    "login" character varying(255),
    email character varying(255),
    crypted_password character varying(40),
    salt character varying(40),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    remember_token character varying(255),
    remember_token_expires_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO jtei;

--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jtei
--

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('users', 'id'), 2, true);


--
-- Name: votes; Type: TABLE; Schema: public; Owner: jtei; Tablespace: 
--

CREATE TABLE votes (
    id serial NOT NULL,
    ipaddr character varying(255),
    candidate character varying(255),
    study integer
);


ALTER TABLE public.votes OWNER TO jtei;

--
-- Name: votes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jtei
--

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('votes', 'id'), 316, true);


--
-- Data for Name: blocks; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY blocks (id, street_id, name, sort) FROM stdin;
1	1	52nd	1
2	1	50th	2
3	1	47th	3
4	1	45th	4
5	1	43rd	5
6	1	42nd	6
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY cities (id, created_at, name) FROM stdin;
1	2007-02-02 23:10:53	Seattle
\.


--
-- Data for Name: cuisines; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY cuisines (id, name) FROM stdin;
34	Bubble Tea
33	Pizza
4	Bakery
5	Barbecue
6	Burger Joint
7	Coffee Shop
8	Caribbean
9	Chinese
11	Diner
13	Filipino
14	Hawaiian
16	Indian
17	Italian
18	Japanese
19	Korean
22	Mexican
23	Middle Eastern
24	Pub Grub
26	Sushi
27	Thai
28	Vegetarian
29	Vietnamese
30	Sandwiches
31	Ice Cream
35	Indonesian
36	Tea
37	Teriyaki
2	American
21	Greek
1	Seafood
3	Pho
\.


--
-- Data for Name: cuisines_flags; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY cuisines_flags (flag_id, cuisine_id) FROM stdin;
13	33
13	17
\.


--
-- Data for Name: cuisines_restaurants; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY cuisines_restaurants (restaurant_id, cuisine_id) FROM stdin;
56	30
55	36
55	7
52	16
51	5
50	6
50	2
54	30
65	27
64	27
41	33
41	17
62	21
61	7
60	21
58	19
58	7
57	21
63	37
43	9
44	13
63	26
42	16
53	21
45	18
45	26
46	5
46	14
47	34
48	35
49	8
59	7
65	28
66	33
67	7
68	19
69	9
70	21
116	22
71	34
85	11
72	31
73	7
74	30
76	7
76	34
77	26
77	37
78	24
79	4
80	37
81	31
82	7
83	28
83	30
84	26
84	37
85	2
85	30
86	9
86	28
87	29
88	22
89	24
90	30
91	29
92	29
93	2
93	7
94	2
94	6
95	9
96	27
97	29
98	17
99	27
98	33
100	27
101	16
102	7
103	7
103	30
104	30
105	23
106	9
106	27
107	24
107	30
107	33
108	2
108	6
108	19
108	26
108	30
108	37
109	29
109	34
110	22
111	2
111	6
112	19
112	26
112	37
113	7
113	36
114	2
114	6
115	19
115	26
115	37
57	23
55	34
61	30
1	24
49	23
2	7
74	34
3	23
4	1
98	21
77	18
80	18
84	18
63	18
108	18
87	3
91	3
97	3
109	3
92	3
51	2
59	36
61	36
67	36
103	36
\.


--
-- Data for Name: flags; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY flags (id, restaurant_id, created_at, name, yelp_url, husky_card, coupon_url, delivery, note) FROM stdin;
13	41	2008-03-17 17:25:38.118863	A-Pizza Mart	http://www.yelp.com/biz/mFJYIVsGzhvu2K1Fd6VZ9g	0	http://www.thesurvivalkit.com/apizzamart.htm	1	you guys rock!
\.


--
-- Data for Name: recommendations; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY recommendations (id, created_at, updated_at, user_id, restaurant_id, recommended) FROM stdin;
2	2007-03-19 17:34:18.306875	2007-03-19 17:34:18.306875	1	54	t
4	2007-03-19 17:35:45.102023	2007-03-19 17:35:45.102023	2	77	t
5	2007-03-21 12:49:05.711219	2007-03-21 12:49:05.711219	1	65	t
6	2007-03-21 12:49:29.138042	2007-03-21 12:49:29.138042	1	77	t
7	2007-03-21 12:49:49.729727	2007-03-21 12:49:49.729727	1	100	t
8	2007-03-21 12:50:09.587276	2007-03-21 12:50:09.587276	1	113	t
9	2007-03-21 12:51:02.492549	2007-03-21 12:51:02.492549	1	67	t
10	2007-03-23 14:42:27.152598	2007-03-23 14:42:27.152598	2	64	t
11	2007-03-23 14:42:51.203904	2007-03-23 14:42:51.203904	2	94	t
12	2007-03-23 14:43:09.782194	2007-03-23 14:43:09.782194	2	114	t
13	2007-03-23 21:23:09.838963	2007-03-23 21:23:09.838963	1	94	t
14	2007-04-06 18:22:31.916896	2007-04-06 18:22:31.916896	1	107	t
15	2007-06-15 15:14:28.282324	2007-06-15 15:14:28.282324	1	85	t
\.


--
-- Data for Name: restaurants; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY restaurants (id, street_id, created_at, name, yelp_url, husky_card, coupon_url, side, delivery, block_id, top) FROM stdin;
42	1	2007-02-12 14:13:41	Tandoor	http://www.yelp.com/biz/dVQTURtUfe5F7aL7hA5f6A	0		right	0	1	478
82	1	2007-02-12 15:29:27	University Bookstore	http://www.yelp.com/biz/DBb5klG44ftEqLiK0bobJA	1	http://www.thesurvivalkit.com/ubooks.htm	right	0	4	480
50	1	2007-02-12 14:23:20	Jack in the Box	http://www.yelp.com/biz/-bAChktR6cdIjyxrxCVmSg	0		left	0	2	60
60	1	2007-02-12 14:38:45	Costas	http://www.yelp.com/biz/3TEdx5lOu6f1rVLVJSpxgw	0		left	0	3	55
81	1	2007-02-12 15:28:32	Haagen Dazs	http://www.yelp.com/biz/OR7JLon2EQVV-ZqqgCAdkw	0	http://www.thesurvivalkit.com/haagendazs.htm	left	0	4	690
88	1	2007-02-12 15:33:45	Chipotle	http://www.yelp.com/biz/ZARzNb8x2KT8qiNw3ZWE4Q	1		left	0	5	300
54	1	2007-02-12 14:27:53	Da Vinci Subs	http://www.yelp.com/biz/xpjyZ-hp_uosVmN81RMgMw	0		left	0	2	550
112	1	2007-02-12 15:56:26	Ichiro	http://www.yelp.com/biz/eAtgP6XcUjRVK8dh8foZdQ	1		right	0	6	418
113	1	2007-02-12 15:57:07	Solstice	http://www.yelp.com/biz/AXQhTGR3PLFk1TW72CbqvA	0		right	0	6	478
114	1	2007-02-12 15:57:49	Schultzy's	http://www.yelp.com/biz/dM7aCIJT_cWH3BNgMi9dNw	0		right	0	6	523
107	1	2007-02-12 15:53:28	Big Time Brewery	http://www.yelp.com/biz/WxUTo2tUjcN5AxA6UzRFfw	0		left	0	6	230
55	1	2007-02-12 14:29:26	Shinka Tea	http://www.yelp.com/biz/ip8eIHu1LbSRctR5mFJAKQ	0		left	0	2	595
104	1	2007-02-12 15:45:30	Jimmy John's	http://www.yelp.com/biz/Ea-ZuT5DKD188BpRMTDyGA	0		left	1	6	110
111	1	2007-02-12 15:55:46	Burger Hut	http://www.yelp.com/biz/XQcSFSkoD7N_VcFGbMmobw	0		right	0	6	135
102	1	2007-02-12 15:43:31	Bulldog News	http://www.yelp.com/tsr?r=http%3A%2F%2Fwww.yelp.com%2Fbiz%2FoyJjYfS9P5EI_bRL10L1fA&position=1&type=composite&zip=98145&location=Seattle%2C%20WA%2098145&biz_id=oyJjYfS9P5EI_bRL10L1fA&description=bulldog%20news	0		right	0	5	650
101	1	2007-02-12 15:42:54	Shalimar	http://www.yelp.com/biz/RvgLI-vSsr-l7buDh1vZgw	0	http://www.thesurvivalkit.com/shalimar.htm	right	0	5	600
99	1	2007-02-12 15:41:52	Appethai	http://www.yelp.com/biz/WXajgebU9cnxHFFmIiZvew	0	http://www.thesurvivalkit.com/appethaiuw.htm	right	0	5	490
96	1	2007-02-12 15:39:43	Thaiger Room	http://www.yelp.com/biz/J-ZPcFUV3FI1LA6KoMnFzA	0		right	1	5	350
94	1	2007-02-12 15:38:50	A Burger Place	http://www.yelp.com/biz/NuvWsd7os1l6Pp4Map1xPw	0		right	0	5	260
85	1	2007-02-12 15:31:47	Ruby's	http://www.yelp.com/biz/UBYFFyRtAV9_-akBPjdoSw	0		left	0	5	150
83	1	2007-02-12 15:30:38	Flowers	http://www.yelp.com/biz/lwL27h7CpiHfWkyQlSiJnw	0		left	0	5	60
79	1	2007-02-12 15:27:12	Saiko	http://www.yelp.com/biz/WYt-PO5iJQFS1igvVkXXCw	0		left	0	4	580
78	1	2007-02-12 15:26:43	Earl's on the Ave	http://www.yelp.com/biz/mtpoFcw4x8W0C9Qhs_PYfw	0	http://www.thesurvivalkit.com/paulsitaliankitchenuw.htm	left	0	4	230
76	1	2007-02-12 15:25:14	Gingko Tea	http://www.yelp.com/biz/-0l7GHrnQbmkpslVGtmHcw	0		left	0	4	120
72	1	2007-02-12 14:49:28	The Mix	http://www.yelp.com/biz/We6t5BJ0csWzJoS39QAI_A	1	http://www.thesurvivalkit.com/mix.htm	left	0	3	810
70	1	2007-02-12 14:47:56	Pita Pit	http://www.yelp.com/biz/wuFhW1gVqMvaB-AKPQDrWw	1	http://www.thesurvivalkit.com/pitapituw.htm	left	0	3	650
66	1	2007-02-12 14:43:38	Pagliacci	http://www.yelp.com/biz/w5zZ8k4Z83q2UyYsCrlwCA	0	http://www.thesurvivalkit.com/pagliacci.htm	left	0	3	430
65	1	2007-02-12 14:42:54	Veggie Veggie	http://www.yelp.com/biz/q9Pvi8sO3FKQ_QpbRA_TiQ	0		left	0	3	380
64	1	2007-02-12 14:42:30	Thai Tom	http://www.yelp.com/biz/9YeSEzr8HZMCuQlAyr8FPw	0		left	0	3	340
62	1	2007-02-12 14:40:07	Continental Restaurant & Pastry Shop	http://www.yelp.com/biz/798-eBr6EdOJktDT74fj2Q	0		left	0	3	230
58	1	2007-02-12 14:36:35	Sunny's Korean Cafe		0		right	0	2	350
56	1	2007-02-12 14:35:08	Subs Sandwiches	http://www.yelp.com/biz/lbGxgu8kwebOok4A9qK-qg	0		right	0	2	50
57	1	2007-02-12 14:35:40	Fairuz	http://www.yelp.com/biz/DH4Gy9e9rPYpHl0fv8Zwzw	0		right	0	2	90
41	1	2007-02-12 14:09:04	A-Pizza Mart	http://www.yelp.com/biz/mFJYIVsGzhvu2K1Fd6VZ9g	0	http://www.thesurvivalkit.com/apizzamart.htm	right	1	1	435
43	1	2007-02-12 14:15:02	Mandarin Chef	http://www.yelp.com/biz/bLRet5wIxuGym7AXtIHdHg	0		right	0	1	520
44	1	2007-02-12 14:15:39	Inay's Manila Grill	http://www.yelp.com/biz/2gdDA6rNrBSVfccbpQytdQ	0		right	0	1	560
47	1	2007-02-12 14:18:27	Pochi Tea Station	http://www.yelp.com/biz/DCk27lbp82tOEPSNCvF4lQ	0		right	0	1	690
46	1	2007-02-12 14:17:31	Hawaii BBQ Restaurant	http://www.yelp.com/biz/cvDsVQAPUd3-9MgzskbN8g	0		right	0	1	647
69	1	2007-02-12 14:47:24	Ruzhen Mongolian Grill	http://www.yelp.com/biz/lJVN0LZkpKK4PkU3SvHd1Q	0		left	0	3	580
86	1	2007-02-12 15:32:23	China First	http://www.yelp.com/biz/s_TqvH0o3AQCOgTdp2rSmQ	0	http://www.thesurvivalkit.com/china1st.htm	left	0	5	190
95	1	2007-02-12 15:39:18	New China Express	http://www.yelp.com/biz/hpoUWb4V9t58CxfdNMYigg	0		right	1	5	300
90	1	2007-02-12 15:35:31	Subway		0	http://www.thesurvivalkit.com/subwayuw.htm	left	0	5	500
100	1	2007-02-12 15:42:16	Thai 65	http://www.yelp.com/biz/gIA1JWri0CQlN3QO4jtzaA	0	http://www.thesurvivalkit.com/appethaiuw.htm	right	0	5	560
110	1	2007-02-12 15:55:21	Gran Sabor	http://www.yelp.com/biz/p8bPLWRaqSk8CxztdHEe1g	0	http://www.thesurvivalkit.com/gransaboruw.htm	right	0	6	60
1	1	2007-04-09 15:11:17.450426	Tommy's Nightclub & Grill	http://www.yelp.com/biz/zRozCiqiTImwdiaD4pOUDA	0		right	0	3	200
106	1	2007-02-12 15:53:01	Spicy Wok	http://www.yelp.com/biz/vkhdQ_wYdtG1gC3s5ckpmw	0		left	0	6	195
49	1	2007-02-12 14:20:31	Pam's Kitchen	http://www.yelp.com/biz/n4A61MWiTz6ZpiUBVQLcjA	0		right	0	1	813
116	1	2007-02-19 11:22:01	Don Eduardos	http://www.yelp.com/biz/ZLbpGclbk8a-PSi1ocS-2A	0		right	0	3	430
2	1	2007-06-14 21:44:45.541099	Caffe Appassionato	http://www.yelp.com/biz/UTffYcFZqSymPxcbPrAPSg	0		right	0	3	540
74	1	2007-02-12 15:23:59	Oasis		0		right	0	3	710
71	1	2007-02-12 14:48:58	Yunnie Bubble Tea	http://www.yelp.com/biz/3BG1niOE6fJiIIk1-04sjg	1		left	0	3	700
93	1	2007-02-12 15:37:01	Cafe on the Ave	http://www.yelp.com/biz/e5fWoLchFxXDpudnqSa9lQ	1	http://www.thesurvivalkit.com/cafeontheaveuw.htm	left	0	5	700
89	1	2007-02-12 15:34:16	Finn McCool's	http://www.yelp.com/biz/zSp9rLzeGCrvrGNUejN1dQ	0		left	0	5	430
4	1	2007-06-14 22:00:24.499346	Northwest Fish & Chips	http://www.yelp.com/biz/e8Qygq-7q6hnoZpmAGCuww	0		left	0	5	590
73	1	2007-02-12 14:49:58	Sure Shot	http://www.yelp.com/biz/eCjyvPJuS8-0Vzad8XuWcQ	0		left	0	3	860
98	1	2007-02-12 15:40:50	Pizza Brava	http://www.yelp.com/biz/MMHPceVb926Y60Tzd1aTOg	1	http://www.thesurvivalkit.com/pizzabravauw.htm	right	0	5	450
53	1	2007-02-12 14:27:15	Fournos Greek Taverna	http://www.yelp.com/biz/Lm-oxbCXTBn29ejD2i6q_Q	0		left	0	2	480
68	1	2007-02-12 14:46:41	University Korean	http://www.yelp.com/biz/KI2rgxOURuqU_i8Nc7DlTQ	0		left	0	3	520
48	1	2007-02-12 14:19:45	Padi	http://www.yelp.com/biz/kNKEjrUjM5BEEaQizH5Svw	0		right	0	1	740
105	1	2007-02-12 15:52:24	Aladdin	http://www.yelp.com/biz/Y2--1IoNBmYUrfwNOIjTdw	0		left	0	6	150
77	1	2007-02-12 15:25:57	Tokyo Gardens	http://www.yelp.com/biz/z7543gTRoewwvk72MwqvGg	0		left	0	4	180
80	1	2007-02-12 15:27:45	Nasai	http://www.yelp.com/biz/U1JuxM8LkrntNpiDntMtzw	0		left	0	4	640
84	1	2007-02-12 15:31:13	Best of Bento	http://www.yelp.com/biz/fC7LjIYyl_k6-H7_AEhQVw	0	http://www.thesurvivalkit.com/bestofbento.htm	left	0	5	100
63	1	2007-02-12 14:41:02	The Light Gourmet	http://www.yelp.com/biz/PzN_ajAY0ymgsvzDcoUpVg	0		left	0	3	290
108	1	2007-02-12 15:54:16	Yummy Bites	http://www.yelp.com/biz/NtNAjOsre1y4rPsZ9UJ0yA	1		left	0	6	270
45	1	2007-02-12 14:16:55	Kiku Tempura House	http://www.yelp.com/biz/_rlU6AQD8jJJb7iCiHrRdg	0		right	0	1	605
115	1	2007-02-12 15:58:42	University Teriyaki	http://www.yelp.com/biz/KX4oiVIK0IFiW0Lb50U9xA	1		right	0	6	578
87	1	2007-02-12 15:33:17	Pho Vietnam 2		0		left	0	5	240
91	1	2007-02-12 15:35:59	Pho Tran	http://www.yelp.com/biz/AUz4akyLb32J7SDa_nKgMQ	0		left	0	5	550
97	1	2007-02-12 15:40:13	Thanh Vi	http://www.yelp.com/biz/EOoj2h1Brzk1AhqScvIHDA	0		right	0	5	415
109	1	2007-02-12 15:54:53	Pho Thy Thy	http://www.yelp.com/biz/LeP4UZpXfeb83gMmRHUWBQ	0		left	0	6	340
92	1	2007-02-12 15:36:25	Pho Than Brothers	http://www.yelp.com/biz/4HBKsjdGHutH3TflSa4QhA	0		left	0	5	640
51	1	2007-02-12 14:24:05	Smokin' Dick's	http://www.yelp.com/biz/xVsP0TfKWFjsqzfJDfg01A	1	http://www.thesurvivalkit.com/smokindicksuw.htm	left	0	2	280
59	1	2007-02-12 14:37:25	Tully's	http://www.yelp.com/biz/rL-Fh-JmTUr1x3w9hxZkng	0		right	0	2	880
61	1	2007-02-12 14:39:19	Starbucks	http://www.yelp.com/biz/RRKpYJObdwL4j_k0uKQ8RQ	0		left	0	3	170
67	1	2007-02-12 14:44:07	Lounjin	http://www.yelp.com/biz/y-rxr2D4UEcWK0uRwKNLEg?hrid=V-BLfgXEE2a2Th-KSM-YTA	0		left	0	3	480
103	1	2007-02-12 15:44:59	Starbucks	http://www.yelp.com/biz/dWV41BVCxC30m6HTgRqQZQ	0		left	0	6	60
52	1	2007-02-12 14:26:34	Jewel of India	http://www.yelp.com/biz/AsgtzyqpdjuPyjaEUVcUXA	0	http://www.thesurvivalkit.com/jewelofindia.htm	left	1	2	400
3	1	2007-06-14 21:46:46.21138	Kabobs Express	http://www.yelp.com/biz/0c9GdZvlBR01tJclKA68aA	0		right	0	3	650
\.


--
-- Data for Name: schema_info; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY schema_info (version) FROM stdin;
9
\.


--
-- Data for Name: streets; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY streets (id, name, description, created_at, url_name, city_id, neighborhood_url) FROM stdin;
1	The Ave	"The Ave", officially "University Way NE", is located in the University District in northeast Seattle, Washington. The Ave is the commercial heart of the U. District and the off-campus extension of the University of Washington (UW). The Ave has gradually turned into what now resembles an eight-block-long global food court.	2007-01-18 23:21:17	theave	1	http://www.yelp.com/search?find_loc=Seattle%2C+WA+98105&z=12&nflt=University+District%5ESeattle%5EWA
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY users (id, "login", email, crypted_password, salt, created_at, updated_at, remember_token, remember_token_expires_at) FROM stdin;
2	adam	adamh@u.washington.edu	2462269c23fde25588d47c3b30d8ff8131af19a4	193489d54c5d3cc89be051276564d14238670148	2007-02-23 15:28:18.9324	2007-06-14 17:23:03.022639	\N	\N
1	jordan	jordanisip@yahoo.com	14f9fa99bc1561ce4a5687494a70164769610aca	7f6e6215db3fcf09c84c7ce89713c4200317972d	2007-02-23 13:18:57.511211	2007-08-10 17:55:30.456065	\N	\N
\.


--
-- Data for Name: votes; Type: TABLE DATA; Schema: public; Owner: jtei
--

COPY votes (id, ipaddr, candidate, study) FROM stdin;
1	\N	Broadway	1
2	\N	Broadway	1
3	\N	Queen Anne N	1
4	\N	Lake City Way	1
5	128.95.212.120	Fremont Ave	1
6	128.95.212.162	Lake City Way	1
7	67.170.87.48	Queen Anne N	1
8	67.170.87.48	Wallingford	1
9	76.22.75.39	Fremont Ave	1
10	67.170.87.48	Ballard Ave	1
11	67.170.87.48	Broadway	1
12	67.170.87.48	Broadway	1
13	69.91.143.210	Queen Anne N	1
14	76.22.75.39	Broadway	1
15	128.95.212.121	Broadway	1
16	67.170.87.48	Broadway	1
17	68.178.31.219	Ballard Ave	1
18	67.170.87.48	Broadway	1
19	76.22.75.39	Fremont Ave	1
20	68.58.0.198	Ballard Ave	1
21	128.95.212.109	Wallingford	1
22	63.64.203.194	Queen Anne N	1
23	68.178.31.219	Queen Anne N	1
24	24.19.181.242	Broadway	1
25	131.107.0.102	Broadway	1
26	83.139.73.32	Ballard Ave	1
27	24.87.33.56	Wallingford	1
28	58.7.219.171	Broadway	1
29	190.57.81.35	Broadway	1
30	128.95.212.131	Broadway	1
31	128.95.212.117	Queen Anne N	1
32	76.22.75.39	Fremont Ave	1
33	67.170.87.48	Broadway	1
34	128.95.212.131	Broadway	1
35	216.254.10.34	Broadway	1
36	216.254.21.90	Broadway	1
37	128.95.212.197	Lake City Way	1
38	76.192.48.46	Fremont Ave	1
39	208.54.14.2	Broadway	1
40	128.95.212.203	Queen Anne N	1
41	67.170.87.48	Broadway	1
42	76.104.172.143	Wallingford	1
43	67.183.10.14	Queen Anne N	1
44	24.18.160.136	Lake City Way	1
45	222.131.32.66	Wallingford	1
46	76.8.67.2	Broadway	1
47	152.78.191.72	Ballard Ave	1
48	67.170.87.48	Broadway	1
49	128.95.212.113	Fremont Ave	1
50	128.95.212.197	Wallingford	1
51	76.22.75.39	Ballard Ave	1
52	76.22.75.39	Wallingford	1
53	128.95.212.113	Broadway	1
54	128.95.212.197	Fremont Ave	1
55	24.18.159.5	Broadway	1
56	208.51.58.210	Fremont Ave	1
57	128.95.212.197	Lake City Way	1
58	128.95.212.124	Wallingford	1
59	65.122.177.187	Queen Anne N	1
60	128.208.197.58	Wallingford	1
61	67.168.59.232	Fremont Ave	1
62	24.18.240.155	Lake City Way	1
63	63.229.20.67	Broadway	1
64	74.93.108.89	Ballard Ave	1
65	24.18.231.200	Wallingford	1
66	24.18.138.196	Queen Anne N	1
67	24.18.238.88	Wallingford	1
68	71.212.55.63	Wallingford	1
69	128.208.67.230	Wallingford	1
70	63.173.79.18	Broadway	1
71	85.225.16.127	Queen Anne N	1
72	67.160.35.221	Fremont Ave	1
73	74.93.108.89	Wallingford	1
74	24.18.248.24	Broadway	1
75	63.224.46.201	Lake City Way	1
76	208.51.58.210	Broadway	1
77	24.18.137.100	Broadway	1
78	71.227.186.52	Wallingford	1
79	208.51.58.210	Broadway	1
80	70.122.72.12	Wallingford	1
81	128.95.212.113	Broadway	1
82	68.113.24.149	Lake City Way	1
83	67.40.215.200	Broadway	1
84	76.83.159.94	Wallingford	1
85	169.137.201.79	Wallingford	1
86	217.157.115.72, 212.242.32.62, 212.242.32.26	Broadway	1
87	64.81.165.182	Ballard Ave	1
88	63.229.20.67	Wallingford	1
89	67.171.3.118	Wallingford	1
90	62.240.254.57	Broadway	1
91	216.254.21.90	Broadway	1
92	70.66.135.153	Queen Anne N	1
93	68.6.127.84	Queen Anne N	1
94	66.29.163.1	Broadway	1
95	85.30.225.113	Wallingford	1
96	61.51.219.147	Fremont Ave	1
97	88.147.178.24	Wallingford	1
98	195.131.150.53	Broadway	1
99	218.63.226.88	Wallingford	1
100	212.182.138.227	Broadway	1
101	71.217.37.83	Broadway	1
102	207.254.98.214	Ballard Ave	1
103	84.175.217.191	Wallingford	1
104	71.139.10.222	Broadway	1
105	70.246.133.236	Broadway	1
106	24.215.225.59	Wallingford	1
107	74.161.73.172	Ballard Ave	1
108	219.93.153.253	Wallingford	1
109	61.121.210.70	Fremont Ave	1
110	24.18.224.152	Fremont Ave	1
111	128.95.212.78	Broadway	1
112	66.69.24.173	Ballard Ave	1
113	71.59.152.248	Queen Anne N	1
114	67.170.26.157	Broadway	1
115	38.100.227.66	Lake City Way	1
116	80.217.171.241	Ballard Ave	1
117	128.95.212.78	Broadway	1
118	201.75.97.212	Wallingford	1
120	213.96.103.181	Ballard Ave	1
121	128.95.212.197	Wallingford	1
123	208.51.58.210	Broadway	1
125	67.183.218.148	Wallingford	1
127	68.228.71.144	Fremont Ave	1
128	38.103.134.10	Ballard Ave	1
132	66.213.245.98	Wallingford	1
133	64.62.4.155	Wallingford	1
134	216.151.24.33	Ballard Ave	1
136	124.170.64.95	Broadway	1
137	82.240.255.70	Broadway	1
119	195.142.128.226	Fremont Ave	1
122	128.95.212.197	Lake City Way	1
124	76.22.4.251	Fremont Ave	1
126	71.231.138.241	Queen Anne N	1
129	38.103.134.10	Broadway	1
130	68.178.31.219	Ballard Ave	1
131	67.168.165.205	Ballard Ave	1
135	67.170.71.71	Fremont Ave	1
138	152.78.191.72	Wallingford	1
139	124.8.232.132	Ballard Ave	1
140	24.18.156.62	Lake City Way	1
141	209.168.234.242	Broadway	1
142	63.249.30.10	Queen Anne N	1
143	69.91.143.123	Broadway	1
144	63.64.203.194	Fremont Ave	1
145	68.186.94.232	Queen Anne N	1
146	128.95.232.123	Ballard Ave	1
147	128.95.232.57	Queen Anne N	1
148	66.31.175.198	Wallingford	1
149	24.18.249.56	Fremont Ave	1
150	208.51.58.210	Broadway	1
151	208.51.58.210	Broadway	1
152	24.16.84.234	Wallingford	1
153	65.102.174.9	Fremont Ave	1
154	71.227.151.96	Queen Anne N	1
155	74.59.160.56	Ballard Ave	1
156	75.43.194.60	Wallingford	1
157	208.51.58.210	Ballard Ave	1
158	98.201.79.35	Ballard Ave	1
159	83.71.100.237	Ballard Ave	1
160	216.231.61.34	Broadway	1
161	76.181.220.148	Broadway	1
162	74.92.43.9	Ballard Ave	1
163	74.61.34.252	Broadway	1
164	75.92.161.27	Broadway	1
165	71.216.4.78	Wallingford	1
166	208.106.57.40	Ballard Ave	1
167	24.18.180.133	Lake City Way	1
168	76.167.110.84	Fremont Ave	1
169	71.93.208.138	Lake City Way	1
170	70.58.71.12	Queen Anne N	1
171	203.87.198.122	Wallingford	1
172	83.69.224.29	Wallingford	1
173	71.170.120.158	Lake City Way	1
174	67.76.149.7	Fremont Ave	1
175	67.168.165.205	Ballard Ave	1
176	67.168.165.205	Ballard Ave	1
177	64.146.237.123, 64.146.239.2	Fremont Ave	1
178	206.248.136.241	Broadway	1
179	78.48.229.28	Broadway	1
180	24.99.198.105	Ballard Ave	1
181	24.19.42.223	Fremont Ave	1
182	71.121.216.209	Broadway	1
183	66.171.233.115	Fremont Ave	1
184	192.168.252.66, 203.177.1.114	Fremont Ave	1
185	128.208.49.130	Ballard Ave	1
186	128.208.219.78	Lake City Way	1
187	216.254.23.154	Fremont Ave	1
188	127.0.0.1, 81.63.144.77	Broadway	1
189	68.167.250.204	Wallingford	1
190	68.78.69.208	Wallingford	1
191	202.119.32.122, 202.120.2.30	Wallingford	1
192	208.51.58.210	Fremont Ave	1
193	84.177.205.61	Queen Anne N	1
194	77.0.96.42	Wallingford	1
195	85.179.202.187	Ballard Ave	1
196	212.202.126.63	Ballard Ave	1
197	212.202.126.63	Broadway	1
198	64.40.61.1	Wallingford	1
199	212.202.126.63	Broadway	1
200	212.202.126.63	Ballard Ave	1
201	212.202.126.63	Ballard Ave	1
202	212.202.126.63	Ballard Ave	1
203	212.202.126.63	Ballard Ave	1
204	71.182.163.165	Broadway	1
205	208.51.58.210	Broadway	1
206	208.51.58.210	Ballard Ave	1
207	64.81.164.137	Fremont Ave	1
208	208.51.58.210	Fremont Ave	1
209	208.51.58.210	Wallingford	1
210	24.166.3.63	Lake City Way	1
211	189.154.19.222	Broadway	1
212	76.104.203.129	Ballard Ave	1
213	77.195.71.92	Fremont Ave	1
214	76.22.20.239	Wallingford	1
215	192.35.17.21	Ballard Ave	1
216	76.22.52.60	Queen Anne N	1
217	65.102.187.196	Broadway	1
218	204.210.149.41	Broadway	1
219	82.46.230.10	Wallingford	1
220	69.177.215.28	Wallingford	1
221	71.164.2.137	Wallingford	1
222	167.219.0.140	Queen Anne N	1
223	68.178.70.2	Ballard Ave	1
224	82.242.132.111	Broadway	1
225	125.99.140.98	Lake City Way	1
226	71.94.179.72	Fremont Ave	1
227	85.177.176.116	Ballard Ave	1
228	75.160.106.13	Wallingford	1
229	89.246.47.98	Broadway	1
230	91.82.34.74	Fremont Ave	1
231	10.2.1.15, 89.187.232.10	Wallingford	1
232	72.39.191.59	Queen Anne N	1
233	216.239.82.59	Queen Anne N	1
234	10.1.8.37, 127.0.0.1, 200.30.143.202	Queen Anne N	1
235	201.231.128.47	Fremont Ave	1
236	90.29.73.213	Ballard Ave	1
237	80.171.35.183	Broadway	1
238	99.229.14.225	Wallingford	1
239	59.152.90.70, 59.152.90.68	Ballard Ave	1
240	80.145.198.71	Ballard Ave	1
241	160.69.1.246	Ballard Ave	1
242	82.73.195.253	Broadway	1
243	149.32.192.33	Wallingford	1
244	195.195.236.65	Fremont Ave	1
245	209.183.199.18	Wallingford	1
246	64.81.191.220	Fremont Ave	1
247	199.173.224.32	Wallingford	1
248	212.123.161.71	Broadway	1
249	99.145.179.156	Ballard Ave	1
250	76.127.13.224	Broadway	1
251	24.16.241.140	Broadway	1
252	208.117.12.58	Fremont Ave	1
253	86.77.225.35	Wallingford	1
254	12.160.98.2	Broadway	1
255	65.47.28.82	Wallingford	1
256	70.103.12.187	Ballard Ave	1
257	66.14.128.67	Queen Anne N	1
258	205.210.223.133	Fremont Ave	1
259	193.82.81.102	Queen Anne N	1
260	24.218.128.53	Ballard Ave	1
261	90.224.58.60	Broadway	1
262	189.27.48.70	Ballard Ave	1
263	194.78.34.65	Queen Anne N	1
264	216.199.121.234	Wallingford	1
265	72.243.74.114	Broadway	1
266	68.198.99.92	Broadway	1
267	222.127.223.71	Broadway	1
268	140.142.21.138	Wallingford	1
269	207.171.180.101	Queen Anne N	1
270	84.32.125.197	Fremont Ave	1
271	210.18.132.186	Broadway	1
272	89.159.203.77	Broadway	1
273	85.16.114.36	Lake City Way	1
274	192.168.1.68, 201.2.235.69	Ballard Ave	1
275	68.42.64.78	Ballard Ave	1
276	77.123.240.77	Lake City Way	1
277	192.168.1.53, 87.255.104.242	Wallingford	1
278	85.133.137.111	Lake City Way	1
279	195.110.97.5	Broadway	1
280	70.103.12.187	Lake City Way	1
281	168.156.149.175	Ballard Ave	1
282	219.94.86.141	Lake City Way	1
283	65.47.28.82	Wallingford	1
284	70.103.12.187	Fremont Ave	1
285	70.103.12.187	Ballard Ave	1
286	70.103.12.187	Fremont Ave	1
287	66.213.245.98	Lake City Way	1
288	68.166.153.110	Fremont Ave	1
289	83.101.12.33	Wallingford	1
290	85.21.77.100	Ballard Ave	1
291	123.225.47.84	Ballard Ave	1
292	122.169.14.94	Wallingford	1
293	10.0.20.6, 88.82.64.224	Broadway	1
294	213.119.89.56	Fremont Ave	1
295	98.200.228.249	Broadway	1
296	66.134.41.50	Fremont Ave	1
297	65.47.28.82	Wallingford	1
298	10.37.108.141, 85.12.72.221	Wallingford	1
299	65.13.153.16	Wallingford	1
300	38.103.134.10	Broadway	1
301	67.160.85.40	Fremont Ave	1
302	68.104.196.74	Wallingford	1
303	68.5.91.8	Ballard Ave	1
304	86.140.237.202	Queen Anne N	1
305	150.101.114.194	Fremont Ave	1
306	150.101.114.194	Ballard Ave	1
307	71.217.80.25	Wallingford	1
308	98.111.69.50	Wallingford	1
309	12.144.227.179	Fremont Ave	1
310	70.102.57.99	Wallingford	1
311	88.212.16.67	Ballard Ave	1
312	63.225.86.190	Ballard Ave	1
313	71.197.134.212	Queen Anne N	1
314	71.121.177.69	Ballard Ave	1
315	199.196.224.4	Fremont Ave	1
316	161.225.1.12	Ballard Ave	1
\.


--
-- Name: blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: jtei; Tablespace: 
--

ALTER TABLE ONLY blocks
    ADD CONSTRAINT blocks_pkey PRIMARY KEY (id);


--
-- Name: cities_pkey; Type: CONSTRAINT; Schema: public; Owner: jtei; Tablespace: 
--

ALTER TABLE ONLY cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: cuisines_pkey; Type: CONSTRAINT; Schema: public; Owner: jtei; Tablespace: 
--

ALTER TABLE ONLY cuisines
    ADD CONSTRAINT cuisines_pkey PRIMARY KEY (id);


--
-- Name: flags_pkey; Type: CONSTRAINT; Schema: public; Owner: jtei; Tablespace: 
--

ALTER TABLE ONLY flags
    ADD CONSTRAINT flags_pkey PRIMARY KEY (id);


--
-- Name: recommendations_pkey; Type: CONSTRAINT; Schema: public; Owner: jtei; Tablespace: 
--

ALTER TABLE ONLY recommendations
    ADD CONSTRAINT recommendations_pkey PRIMARY KEY (id);


--
-- Name: restaurants_pkey; Type: CONSTRAINT; Schema: public; Owner: jtei; Tablespace: 
--

ALTER TABLE ONLY restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (id);


--
-- Name: streets_pkey; Type: CONSTRAINT; Schema: public; Owner: jtei; Tablespace: 
--

ALTER TABLE ONLY streets
    ADD CONSTRAINT streets_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: jtei; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: votes_pkey; Type: CONSTRAINT; Schema: public; Owner: jtei; Tablespace: 
--

ALTER TABLE ONLY votes
    ADD CONSTRAINT votes_pkey PRIMARY KEY (id);


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

