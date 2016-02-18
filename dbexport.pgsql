--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: alina; Tablespace: 
--

CREATE TABLE ckeditor_assets (
    id integer NOT NULL,
    data_file_name character varying NOT NULL,
    data_content_type character varying,
    data_file_size integer,
    assetable_id integer,
    assetable_type character varying(30),
    type character varying(30),
    width integer,
    height integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ckeditor_assets OWNER TO alina;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: alina
--

CREATE SEQUENCE ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ckeditor_assets_id_seq OWNER TO alina;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alina
--

ALTER SEQUENCE ckeditor_assets_id_seq OWNED BY ckeditor_assets.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: alina; Tablespace: 
--

CREATE TABLE posts (
    id integer NOT NULL,
    title character varying NOT NULL,
    body text NOT NULL,
    category character varying NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.posts OWNER TO alina;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: alina
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO alina;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alina
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: alina; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO alina;

--
-- Name: users; Type: TABLE; Schema: public; Owner: alina; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    username character varying NOT NULL,
    password_digest character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    avatar_file_name character varying,
    avatar_content_type character varying,
    avatar_file_size integer,
    avatar_updated_at timestamp without time zone,
    name character varying
);


ALTER TABLE public.users OWNER TO alina;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: alina
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO alina;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alina
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alina
--

ALTER TABLE ONLY ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('ckeditor_assets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alina
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alina
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: ckeditor_assets; Type: TABLE DATA; Schema: public; Owner: alina
--

COPY ckeditor_assets (id, data_file_name, data_content_type, data_file_size, assetable_id, assetable_type, type, width, height, created_at, updated_at) FROM stdin;
1	dougie.jpg	image/jpeg	35983	1	User	Ckeditor::Picture	480	480	2015-10-19 22:12:24.253643	2015-10-19 22:12:24.253643
2	baby-dougie.jpg	image/jpeg	29411	1	User	Ckeditor::Picture	306	306	2015-10-19 22:16:28.00641	2015-10-19 22:16:28.00641
3	dogs-playing.jpg	image/jpeg	53280	1	User	Ckeditor::Picture	650	432	2015-10-27 01:08:36.240427	2015-10-27 01:08:36.240427
4	relaxed-new.jpg	image/jpeg	89045	1	User	Ckeditor::Picture	639	453	2015-10-27 01:10:25.134811	2015-10-27 01:10:25.134811
5	alert.jpg	image/jpeg	71943	1	User	Ckeditor::Picture	635	417	2015-10-27 01:13:41.238285	2015-10-27 01:13:41.238285
6	oliver-pup-808x500.jpg	image/jpeg	309552	1	User	Ckeditor::Picture	808	500	2015-10-27 01:17:24.463397	2015-10-27 01:17:24.463397
7	feature2-808x808.jpg	image/jpeg	470377	1	User	Ckeditor::Picture	808	808	2015-10-27 19:47:28.57841	2015-10-27 19:47:28.57841
8	com1-808x808.jpg	image/jpeg	339172	1	User	Ckeditor::Picture	808	808	2015-10-27 19:48:45.451507	2015-10-27 19:48:45.451507
9	com2-808x808.jpg	image/jpeg	539250	1	User	Ckeditor::Picture	808	808	2015-10-27 19:50:05.286042	2015-10-27 19:50:05.286042
10	com5-808x808.jpg	image/jpeg	398476	1	User	Ckeditor::Picture	808	808	2015-10-27 20:05:29.462273	2015-10-27 20:05:29.462273
11	com4-808x808.jpg	image/jpeg	365002	1	User	Ckeditor::Picture	808	808	2015-10-27 20:09:27.154853	2015-10-27 20:09:27.154853
12	com5-808x808.jpg	image/jpeg	398476	1	User	Ckeditor::Picture	808	808	2015-10-27 20:09:53.395734	2015-10-27 20:09:53.395734
13	com6-808x808.jpg	image/jpeg	499018	1	User	Ckeditor::Picture	808	808	2015-10-27 20:10:13.708302	2015-10-27 20:10:13.708302
14	com8-808x808.jpg	image/jpeg	404387	1	User	Ckeditor::Picture	808	808	2015-10-27 20:10:31.172033	2015-10-27 20:10:31.172033
15	com9-808x808.jpg	image/jpeg	299080	1	User	Ckeditor::Picture	808	808	2015-10-27 20:11:04.278198	2015-10-27 20:11:04.278198
16	oliver-pup-808x500.jpg	image/jpeg	309552	1	User	Ckeditor::Picture	808	500	2015-10-28 03:10:46.295756	2015-10-28 03:10:46.295756
17	halloween.jpg	image/jpeg	165947	1	User	Ckeditor::Picture	808	500	2015-10-28 03:34:01.646216	2015-10-28 03:34:01.646216
18	dog-with-soldiers-808x500.jpg	image/jpeg	355277	1	User	Ckeditor::Picture	808	500	2015-10-28 19:20:56.130688	2015-10-28 19:20:56.130688
19	patrol-dogs.jpg	image/jpeg	297195	1	User	Ckeditor::Picture	640	420	2015-10-28 19:24:22.860884	2015-10-28 19:24:22.860884
20	marines-with-dogs.jpg	image/jpeg	285058	1	User	Ckeditor::Picture	640	420	2015-10-28 19:25:15.001984	2015-10-28 19:25:15.001984
21	chicago-dog-feature-808x500.jpg	image/jpeg	193749	1	User	Ckeditor::Picture	808	500	2015-10-29 04:20:59.097282	2015-10-29 04:20:59.097282
22	toilet-line-600x600.jpg	image/jpeg	317105	1	User	Ckeditor::Picture	600	600	2015-10-29 04:24:07.55969	2015-10-29 04:24:07.55969
23	oharetoilet-600x398.jpg	image/jpeg	161874	1	User	Ckeditor::Picture	600	398	2015-10-29 04:25:17.283686	2015-10-29 04:25:17.283686
24	toiletfeat-808x500.jpg	image/jpeg	230428	1	User	Ckeditor::Picture	808	500	2015-10-29 04:26:30.47628	2015-10-29 04:26:30.47628
25	feat-airport-therapy-dogs-808x500.jpg	image/jpeg	386162	2	User	Ckeditor::Picture	808	500	2015-10-29 04:51:58.105092	2015-10-29 04:51:58.105092
26	berner-brigade-airport-dogs.jpg	image/jpeg	200299	2	User	Ckeditor::Picture	650	404	2015-10-29 04:53:27.413288	2015-10-29 04:53:27.413288
27	dog-patience-feature-808x500.jpg	image/jpeg	214719	2	User	Ckeditor::Picture	808	500	2015-10-29 17:12:30.93073	2015-10-29 17:12:30.93073
28	biscuits1.jpg	image/jpeg	19203	2	User	Ckeditor::Picture	535	380	2015-10-29 17:13:21.963558	2015-10-29 17:13:21.963558
29	dog-pig-runaways-feature-808x500.jpg	image/jpeg	212096	2	User	Ckeditor::Picture	808	500	2015-10-29 17:23:02.066946	2015-10-29 17:23:02.066946
30	heart-shape.jpg	image/jpeg	388051	1	User	Ckeditor::Picture	808	500	2015-10-29 17:47:41.426032	2015-10-29 17:47:41.426032
31	cockerpeifeature-808x808.jpg	image/jpeg	486109	1	User	Ckeditor::Picture	808	808	2015-10-29 18:19:07.897303	2015-10-29 18:19:07.897303
32	screen-shot-2014-03-07-at-2_46_40-pm-808x500.png	image/png	736548	1	User	Ckeditor::Picture	808	500	2015-10-29 18:21:25.566576	2015-10-29 18:21:25.566576
33	howling-baby-808x500.jpg	image/jpeg	173615	1	User	Ckeditor::Picture	808	500	2015-10-29 18:30:32.953321	2015-10-29 18:30:32.953321
\.


--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alina
--

SELECT pg_catalog.setval('ckeditor_assets_id_seq', 33, true);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: alina
--

COPY posts (id, title, body, category, user_id, created_at, updated_at) FROM stdin;
11	Dog And Pig Run Away Together Because No One Understands Their Love	<p>Ahh, young love. This dog and pig were inseparable, so inseparable that they chose to&nbsp;run away together than deal with their parents&rsquo; disapproval. Unfortunately for them, they never made it to Vegas where they planned to be married by an Elvis impersonator. Halfway through their journey, one of them must have realized they weren&rsquo;t the commitment type, and so they both decided to call things off and head back home.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/29/content_dog-pig-runaways-feature-808x500.jpg" style="height:371px; width:600px" /></p>\r\n	life	2	2015-10-29 17:23:24.188938	2015-10-29 17:23:56.467178
2	You Might Not Like How Wes Anderson Uses Dogs in His Movies… BUT–	<p>I recently came across an account on Instagram called &quot;dailydougie&quot;. I think Dougie is a great name for a dog.</p>\r\n\r\n<p>Dougie is a brown male 2-year-old&nbsp;shih tsu who looks like a fluffy ball. He has this great haircut that makes him look very cute. He has a hair stylist who come to his place and groom him every two weeks. He is my spirit animal. It is my habit to look at &quot;dailydougie&quot; everyday and it is definitely a good way to relax.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/32/content_screen-shot-2014-03-07-at-2_46_40-pm-808x500.png" style="height:371px; width:600px" /></p>\r\n\r\n<p>Here is a photo of him when he was a baby, a super fluffy teddy bear back then. He lives in the San Francesco area. I hope I get to travel to the west coast sometime in the future and run into him!</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/2/content_baby-dougie.jpg" style="height:306px; width:306px" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/t5k4epU3CL8" width="560"></iframe></p>\r\n	life	1	2015-10-19 22:16:36.319543	2015-10-29 18:22:47.158257
1	Geek Out Alongside Your Pooch With 17 Spook-Tastic Costume Duos	<p>Have you seen the picture from <a href="https://instagram.com/dailydougie/">Dailydougie</a> today?I&rsquo;m not sure about you, but I find it physically impawsible to refrain from giving a dog a human voice. Dogs are so expressive, it feels instinctual to verbalize what their derpy little faces are trying to communicate to us. Also, it&rsquo;s hilarious.According to Professor Kurt Gray Of UNC-Chapel Hill, I&rsquo;m not alone.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/16/content_oliver-pup-808x500.jpg" style="height:495px; width:800px" /></p>\r\n\r\n<p>He says, &ldquo;The first thing people do is treat their pets like people, so a precondition is that they perceive minds in their pets.&rdquo;</p>\r\n\r\n<p>At that point, it&rsquo;s not much of a leap to presume that mind has a personality. &ldquo;Once you see your pet as having a mind, and being pretty smart, and having a personality, the next question is, naturally, &lsquo;What is the personality of my cat?&rsquo;&rdquo; Professor Gray says. (And we&rsquo;ll just let the whole cat thing slide&hellip;) So what better way to examine your perception of that personality than by putting it into words.</p>\r\n\r\n<p style="text-align:center"><iframe allowfullscreen="" frameborder="0" height="360" src="//www.youtube.com/embed/R-s-9s_If9w?rel=0" width="640"></iframe></p>\r\n	life	1	2015-10-06 14:24:44.581212	2015-10-28 18:45:07.260507
3	10 Tips From A Pro Phodographer For Taking Perfect Pictures Of Your Pup	<p>One of woof-street journal&#39;s favorite photographers, Elias Weiss Friedman, is coming out with a book! He shared with us his Ten Commandments of dog photography, tips you can use for yourself to take the best pictures of your pup. You&#39;ll find these insights (and hundreds more amazing dog portraits) in The Dogist: Photographic Encounters with 1000 Dogs. Get a head start on the Christmas rush and pre-order your copy at the link below.&nbsp;</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/30/content_heart-shape.jpg" style="height:371px; width:600px" /></p>\r\n\r\n<p style="text-align:center">1. Establish basic trust between yourself and the dog. Let the dog smell you.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/8/content_com1-808x808.jpg" style="height:600px; width:600px" /></p>\r\n\r\n<p style="text-align:center">2. Get down to the dog&#39;s level</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/9/content_com2-808x808.jpg" style="height:600px; width:600px" /></p>\r\n\r\n<p style="text-align:center">3. Have something the dog wants, like a treat or a toy.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/11/content_com4-808x808.jpg" style="height:600px; width:600px" /></p>\r\n\r\n<p style="text-align:center">4. Move that thing around the lens.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/12/content_com5-808x808.jpg" style="height:600px; width:600px" /></p>\r\n\r\n<p style="text-align:center">5. Learn to bark and make strange noises to get different facial expressions.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/13/content_com6-808x808.jpg" style="height:600px; width:600px" /></p>\r\n\r\n<p style="text-align:center">6. Underexpose for black dogs.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/14/content_com8-808x808.jpg" style="height:600px; width:600px" /></p>\r\n\r\n<p style="text-align:center">7. Have patience. Every dog is different and some may require more time.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/15/content_com9-808x808.jpg" style="height:600px; width:600px" /></p>\r\n\r\n<p style="text-align:center">8. Practic, practice, practice. I still learn something new every day.</p>\r\n\r\n<p style="text-align:center">9. Don&#39;t wear anything you would&#39;t want a dog toenail to go through.</p>\r\n\r\n<p style="text-align:center">10. Reward a dog&#39;s efforts with a pet or a treat.</p>\r\n	life	1	2015-10-20 16:57:27.500566	2015-10-29 17:47:48.372167
12	Befuddled Baby Thinks He’s One Of The Pack, Starts Howling With His Labs	<p>Legend has it this family&rsquo;s yellow and chocolate Labradors frequently throw down wicked &ldquo;howling battles,&rdquo; and at first we just thought they were arguing over who would win the game on TV. As it turns out, the dogs are actually conducting a very rare initiation ceremony to welcome their weird, hairless 5-month-old puppy to the pack.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/ckeditor_assets/pictures/33/content_howling-baby-808x500.jpg" style="height:371px; width:600px" /></p>\r\n\r\n<p style="text-align: center;"><iframe allowfullscreen="" frameborder="0" height="360" src="//www.youtube.com/embed/qZx8tjDK_ss" width="640"></iframe></p>\r\n\r\n<p>We think he&rsquo;s got the chops&mdash;and the pipes&mdash;to make it with these hardcore pups. Just be careful when the full moon comes around, Dad.</p>\r\n	humor	1	2015-10-29 18:31:27.259864	2015-10-29 18:31:27.259864
6	New Law Ensures No Military Working Dog Will Be Left Behind. Ever.	<p>More than 2,000 dogs currently serve in the U.S. Military. Each military dog saves the lives of 150 to 200 servicemen and women. We aren&rsquo;t doing enough for our four-legged heroes.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/ckeditor_assets/pictures/18/content_dog-with-soldiers-808x500.jpg" style="height:495px; width:800px" /></p>\r\n\r\n<p>In the not too distant past, military working dogs were left on foreign soil, never to be reunited with their human partners. As a result, many still believe that such practices are common,&nbsp;<a href="http://foreignpolicy.com/2014/09/19/wdotw-actually-no-there-are-no-military-dogs-left-behind/">though that&rsquo;s not the case.</a></p>\r\n\r\n<p>Unfortunately, policy doesn&rsquo;t always progress with the times and the old rules still allow for situations that reflect old school attitudes towards military working dogs. Technically speaking, if dogs are retired overseas, they become civilians and are no longer qualified to travel home on military vehicles. Fortunately, it&rsquo;s not common practice to retire dogs overseas.</p>\r\n\r\n<p>To prevent such unreformed policy from ever presenting such problems to military pups, Congress drafted some new legislation. On Oct. 7, the National Defense Authorization Act passed the House and Senate. This bill includes language supported by the American Humane Association mandating military working dogs be returned to U.S. soil upon retirement. Even further, the dogs&rsquo; handlers and families will have the first right of adoption.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/ckeditor_assets/pictures/19/content_patrol-dogs.jpg" style="height:420px; width:640px" /></p>\r\n\r\n<p>The language, introduced in the House by Congressman Frank LoBiondo (R-NJ) and the Senate by Senator Claire McCaskill (D-MO) is a huge furry step forward for military working dogs and their best friends.</p>\r\n\r\n<p>Thousands of veterans suffer from post-traumatic stress when coming home from war, and the dogs aren&rsquo;t excluded from this. Keeping military dogs with their handlers allows them to help each other heal.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/ckeditor_assets/pictures/20/content_marines-with-dogs.jpg" style="height:420px; width:640px" /></p>\r\n\r\n<p>Dr. Robin Ganzert, American Humane Association president and CEO says:</p>\r\n\r\n<p><em>&ldquo;This is a great day for military heroes on both ends of the leash. We believe ALL our veterans &mdash; two-footed and four-footed &mdash; should come back to a hero&rsquo;s welcome, a loving, forever home and the happy, healthy and dignified retirement they so deserve after a lifetime of service to their country.&rdquo;</em></p>\r\n\r\n<p>The bill now awaits the president&rsquo;s signature and we are certain this bill will become law, because we all want every single one of our veterans, including the furry kind, to be brought home to love, respect and admiration.</p>\r\n	good	1	2015-10-28 19:26:14.127646	2015-10-28 19:26:14.127646
7	These Stylish Chicago Restaurants Make Amazing Dining Experiences For You And Your Dog	<p>If you&rsquo;re thinking of visiting the windy city, pawhaps it&rsquo;s time to bag your bags and check out these dog-friendly spots. From cozy backyard delights to waterfront dining, there are so many memorable experiences to make with your pup. Why not grab a craft beer and a deep dish pizza and have some fun?</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/ckeditor_assets/pictures/21/content_chicago-dog-feature-808x500.jpg" style="height:371px; width:600px" /></p>\r\n\r\n<p style="text-align: center;"><iframe allowfullscreen="" frameborder="0" height="360" src="//www.youtube.com/embed/jhE60EZEKeQ" width="640"></iframe></p>\r\n	travel	1	2015-10-29 04:21:28.463988	2015-10-29 04:21:28.463988
8	This Major Airport Just Installed The First Bathroom For Dogs	<p>You know how it is after a long flight, when the fasten-your-seatbelt sign stayed lit for almost all of the plane ride, and you had to wait&nbsp;<em>forever</em>&nbsp;to exit the plane, it feels like you&rsquo;ve been &lsquo;holding it&rsquo; for years. You finally approach the public restroom and see this:</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/ckeditor_assets/pictures/24/content_toiletfeat-808x500.jpg" style="height:371px; width:600px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/ckeditor_assets/pictures/22/content_toilet-line-600x600.jpg" style="height:600px; width:600px" /></p>\r\n\r\n<p>Well, dogs flying into O&rsquo;Hare International Airport in Chicago no longer have to worry about waiting in line for the public pee-tree!</p>\r\n\r\n<p>Oh yeah, I was talking to dogs in my opening paragraph. Was that not clear?</p>\r\n\r\n<p>Besides being the world&rsquo;s busiest airport, O&rsquo;Hare just revamped their terminals in a way that really puts itself on the map. Airborne dogs now officially have their own indoor public bathroom at the Chicago airport!</p>\r\n\r\n<p>The bathroom was designed with service dogs and their handlers in mind. According to a press release:</p>\r\n\r\n<p><em>&ldquo;It will enhance the traveling experience for individuals with disabilities because they no longer need to pass back through security to relieve their service animal.&rdquo;</em></p>\r\n\r\n<p style="text-align: center;"><em><img alt="" src="/ckeditor_assets/pictures/23/content_oharetoilet-600x398.jpg" style="height:398px; width:600px" /></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The&nbsp;bathroom&nbsp;bark-room is equipped with 2-foot-by-4-foot stand of artificial grass, complete with miniature fire hydrants for aim, and a pop-up sprinkler system to wash away puppy pee.&nbsp;<em>Adorable</em>.</p>\r\n\r\n<p>Chicago Department of Aviation commissioner, Ginger Evans said in a news release on Tuesday:</p>\r\n\r\n<p><em>&ldquo;We are pleased to offer this new amenity for passengers, especially those who depend on the assistance of service animals when they travel through our airport. This is another way we are making O&rsquo;Hare International Airport more accessible to the traveling public and creating a more welcoming environment for visitors to Chicago.&rdquo;</em></p>\r\n\r\n<p>So, next time you fly into Chicago with your four-legged friend, and he or she was filling up on peanuts and sipping cocktails throughout the flight, just look for that good ole blue-and-white sign.</p>\r\n\r\n<p>Are they hiring for bark-room attendant??</p>\r\n	travel	1	2015-10-29 04:26:54.784677	2015-10-29 04:26:54.784677
9	Airport Therapy Dogs Are Calming Nervous Travelers One Slobbery Kiss At A Time	<p>I love traveling, but I am debilitatingly terrified of flying. I&rsquo;m definitely not alone in this fear. Enter the airport therapy dogs! Airports across the country and the world are introducing scaredy-cat travelers to some very special pups.</p>\r\n\r\n<p>The&nbsp;<a href="http://www.lawa.org/welcome_LAX.aspx?id=7478">PUP (Pups Unstressing Passengers) program&nbsp;</a>at LAX is one such operation. Over 30 different dogs walk one of the world&rsquo;s busiest airports in their red vests, bringing comfort to travelers and sweetening the travel experience. You can see their bios at the<a href="http://barkpost.com/wp-content/uploads/2015/10/PUP-ColeSlaw-card-1.jpg" target="_blank">LAX site</a>.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/ckeditor_assets/pictures/25/content_feat-airport-therapy-dogs-808x500.jpg" style="height:371px; width:600px" /></p>\r\n\r\n<p>Cousins Gus and Bailey are a familiar sight at Will Rogers Airport in Oklahoma City. The fluffbutts are known as the &ldquo;Berner Brigade,&rdquo; and love to frolic at the Myriad Botanical Gardens on their days off.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/ckeditor_assets/pictures/26/content_berner-brigade-airport-dogs.jpg" style="height:373px; width:600px" /></p>\r\n\r\n<p>Next time you&rsquo;re stranded in an airport or mourning you lost luggage, seek out one of these buddies to help chillax!</p>\r\n	travel	2	2015-10-29 04:54:42.44884	2015-10-29 04:54:42.44884
5	Sweet Beagles’ Halloween Is Destroyed By Strange Hooman “Treats”	<p>Maymo and Penny are at it again! This time they&rsquo;re using their titles as Masters Of Disguise to deplete the neighbors of their Halloween snacks. But these bold Beagles don&rsquo;t know what they&rsquo;re in for. Before you take your dog Trick Or Treating this year, you might want to show &rsquo;em this cautionary tail!</p>\r\n\r\n<p style="text-align:center"><img alt="" src="/ckeditor_assets/pictures/17/content_halloween.jpg" style="height:371px; width:600px" /></p>\r\n\r\n<p style="text-align:center"><iframe allowfullscreen="" frameborder="0" height="360" src="//www.youtube.com/embed/TFUmxff5sPU?rel=0" width="640"></iframe></p>\r\n	life	1	2015-10-28 03:35:25.794683	2015-10-28 03:36:22.636361
10	Dog Resists Sweet, Sweet Temptation When Left All Alone With Biscuits	<p>this dog came along and proved us dogs can resist temptation from food.</p>\r\n\r\n<p>&ldquo;No big deal. Just resisting these delicious biscuits even though my sense of smell is about&nbsp;<a href="http://www.animalplanet.com/pets/how-is-a-dogs-sense-of-smell-so-incredible/" rel="external nofollow">1,000 times</a>&nbsp;greater than a hooman&rsquo;s.&rdquo;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/ckeditor_assets/pictures/27/content_dog-patience-feature-808x500.jpg" style="height:371px; width:600px" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/ckeditor_assets/pictures/28/content_biscuits1.jpg" style="height:380px; width:535px" /></p>\r\n\r\n<p>That means as impawsible as it seems to turn down a freshly baked batch of cookies right in front of you, it&rsquo;s 1,000 times harder for a dog.</p>\r\n\r\n<p>Keep that in mind as you watch this video.</p>\r\n\r\n<p style="text-align: center;"><iframe allowfullscreen="" frameborder="0" height="360" src="//www.youtube.com/embed/yGfQcAXS3uM?rel=0" width="640"></iframe></p>\r\n	discover	2	2015-10-29 17:14:16.792639	2015-10-29 17:14:16.792639
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alina
--

SELECT pg_catalog.setval('posts_id_seq', 12, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: alina
--

COPY schema_migrations (version) FROM stdin;
20151003023831
20151003023909
20151005190612
20151006043444
20151019115021
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: alina
--

COPY users (id, username, password_digest, created_at, updated_at, avatar_file_name, avatar_content_type, avatar_file_size, avatar_updated_at, name) FROM stdin;
1	spongebob	$2a$10$SO9B8DydjeFpia731To3M.3yrUz2Ze4l0Mx1gXUMtrfhMgE8f5VMW	2015-10-06 04:42:27.070252	2015-10-27 20:27:28.520887	butterfly.jpg	image/jpeg	132704	2015-10-26 16:43:25.95094	Alina Jahnes
2	alina	$2a$10$uTFkVboI56aGvEdMdmY9LO6fKE5DxHz5.7Oj3v5YvhRPu68TkIE92	2015-10-06 18:46:17.379321	2015-10-29 04:49:54.752718	violet.jpg	image/jpeg	785999	2015-10-29 04:49:54.41329	Christine Schatz
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alina
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Name: ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: alina; Tablespace: 
--

ALTER TABLE ONLY ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: alina; Tablespace: 
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: alina; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: idx_ckeditor_assetable; Type: INDEX; Schema: public; Owner: alina; Tablespace: 
--

CREATE INDEX idx_ckeditor_assetable ON ckeditor_assets USING btree (assetable_type, assetable_id);


--
-- Name: idx_ckeditor_assetable_type; Type: INDEX; Schema: public; Owner: alina; Tablespace: 
--

CREATE INDEX idx_ckeditor_assetable_type ON ckeditor_assets USING btree (assetable_type, type, assetable_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: alina; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


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

