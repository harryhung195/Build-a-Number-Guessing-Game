--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 785);
INSERT INTO public.games VALUES (2, 1, 630);
INSERT INTO public.games VALUES (3, 2, 719);
INSERT INTO public.games VALUES (4, 2, 407);
INSERT INTO public.games VALUES (5, 1, 283);
INSERT INTO public.games VALUES (6, 1, 805);
INSERT INTO public.games VALUES (7, 1, 53);
INSERT INTO public.games VALUES (8, 3, 101);
INSERT INTO public.games VALUES (9, 3, 522);
INSERT INTO public.games VALUES (10, 4, 940);
INSERT INTO public.games VALUES (11, 4, 962);
INSERT INTO public.games VALUES (12, 3, 547);
INSERT INTO public.games VALUES (13, 3, 167);
INSERT INTO public.games VALUES (14, 3, 158);
INSERT INTO public.games VALUES (15, 5, 838);
INSERT INTO public.games VALUES (16, 5, 425);
INSERT INTO public.games VALUES (17, 6, 329);
INSERT INTO public.games VALUES (18, 6, 112);
INSERT INTO public.games VALUES (19, 5, 13);
INSERT INTO public.games VALUES (20, 5, 567);
INSERT INTO public.games VALUES (21, 5, 457);
INSERT INTO public.games VALUES (22, 7, 946);
INSERT INTO public.games VALUES (23, 7, 539);
INSERT INTO public.games VALUES (24, 8, 411);
INSERT INTO public.games VALUES (25, 8, 397);
INSERT INTO public.games VALUES (26, 7, 381);
INSERT INTO public.games VALUES (27, 7, 530);
INSERT INTO public.games VALUES (28, 7, 410);
INSERT INTO public.games VALUES (29, 9, 874);
INSERT INTO public.games VALUES (30, 9, 204);
INSERT INTO public.games VALUES (31, 10, 823);
INSERT INTO public.games VALUES (32, 10, 643);
INSERT INTO public.games VALUES (33, 9, 790);
INSERT INTO public.games VALUES (34, 9, 25);
INSERT INTO public.games VALUES (35, 9, 640);
INSERT INTO public.games VALUES (36, 11, 971);
INSERT INTO public.games VALUES (37, 11, 978);
INSERT INTO public.games VALUES (38, 12, 489);
INSERT INTO public.games VALUES (39, 12, 887);
INSERT INTO public.games VALUES (40, 11, 400);
INSERT INTO public.games VALUES (41, 11, 556);
INSERT INTO public.games VALUES (42, 11, 693);
INSERT INTO public.games VALUES (43, 13, 503);
INSERT INTO public.games VALUES (44, 13, 819);
INSERT INTO public.games VALUES (45, 14, 718);
INSERT INTO public.games VALUES (46, 14, 722);
INSERT INTO public.games VALUES (47, 13, 603);
INSERT INTO public.games VALUES (48, 13, 660);
INSERT INTO public.games VALUES (49, 13, 235);
INSERT INTO public.games VALUES (50, 15, 211);
INSERT INTO public.games VALUES (51, 15, 381);
INSERT INTO public.games VALUES (52, 16, 14);
INSERT INTO public.games VALUES (53, 16, 42);
INSERT INTO public.games VALUES (54, 15, 16);
INSERT INTO public.games VALUES (55, 15, 279);
INSERT INTO public.games VALUES (56, 15, 399);
INSERT INTO public.games VALUES (57, 17, 453);
INSERT INTO public.games VALUES (58, 17, 878);
INSERT INTO public.games VALUES (59, 18, 317);
INSERT INTO public.games VALUES (60, 18, 268);
INSERT INTO public.games VALUES (61, 17, 397);
INSERT INTO public.games VALUES (62, 17, 821);
INSERT INTO public.games VALUES (63, 17, 892);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1711528355559', 2);
INSERT INTO public.users VALUES (1, 'user_1711528355560', 5);
INSERT INTO public.users VALUES (4, 'user_1711528430398', 2);
INSERT INTO public.users VALUES (3, 'user_1711528430399', 5);
INSERT INTO public.users VALUES (6, 'user_1711529587016', 2);
INSERT INTO public.users VALUES (5, 'user_1711529587017', 5);
INSERT INTO public.users VALUES (8, 'user_1711529645014', 2);
INSERT INTO public.users VALUES (7, 'user_1711529645015', 5);
INSERT INTO public.users VALUES (10, 'user_1711529791443', 2);
INSERT INTO public.users VALUES (9, 'user_1711529791444', 5);
INSERT INTO public.users VALUES (12, 'user_1711529811732', 2);
INSERT INTO public.users VALUES (11, 'user_1711529811733', 5);
INSERT INTO public.users VALUES (14, 'user_1711529925394', 2);
INSERT INTO public.users VALUES (13, 'user_1711529925395', 5);
INSERT INTO public.users VALUES (16, 'user_1711529963241', 2);
INSERT INTO public.users VALUES (15, 'user_1711529963242', 5);
INSERT INTO public.users VALUES (18, 'user_1711530029999', 2);
INSERT INTO public.users VALUES (17, 'user_1711530030000', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 63, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

