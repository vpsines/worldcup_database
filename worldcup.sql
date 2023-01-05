--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(15) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(15) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (26, 2018, 23, 24, 4, 2, 'Final');
INSERT INTO public.games VALUES (27, 2018, 25, 26, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (28, 2018, 24, 26, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (29, 2018, 23, 25, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (30, 2018, 24, 27, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (31, 2018, 26, 28, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (32, 2018, 25, 29, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (33, 2018, 23, 30, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (34, 2018, 26, 31, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (35, 2018, 28, 32, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (36, 2018, 25, 33, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (37, 2018, 29, 34, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (38, 2018, 24, 35, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (39, 2018, 27, 36, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (40, 2018, 30, 37, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (41, 2018, 23, 38, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (42, 2014, 39, 38, 1, 0, 'Final');
INSERT INTO public.games VALUES (43, 2014, 40, 29, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (44, 2014, 38, 40, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (45, 2014, 39, 29, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (46, 2014, 40, 41, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (47, 2014, 38, 25, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (48, 2014, 29, 31, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (49, 2014, 39, 23, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (50, 2014, 29, 42, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (51, 2014, 31, 30, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (52, 2014, 23, 43, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (53, 2014, 39, 44, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (54, 2014, 40, 34, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (55, 2014, 41, 45, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (56, 2014, 38, 32, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (57, 2014, 25, 46, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (23, 'France');
INSERT INTO public.teams VALUES (24, 'Croatia');
INSERT INTO public.teams VALUES (25, 'Belgium');
INSERT INTO public.teams VALUES (26, 'England');
INSERT INTO public.teams VALUES (27, 'Russia');
INSERT INTO public.teams VALUES (28, 'Sweden');
INSERT INTO public.teams VALUES (29, 'Brazil');
INSERT INTO public.teams VALUES (30, 'Uruguay');
INSERT INTO public.teams VALUES (31, 'Colombia');
INSERT INTO public.teams VALUES (32, 'Switzerland');
INSERT INTO public.teams VALUES (33, 'Japan');
INSERT INTO public.teams VALUES (34, 'Mexico');
INSERT INTO public.teams VALUES (35, 'Denmark');
INSERT INTO public.teams VALUES (36, 'Spain');
INSERT INTO public.teams VALUES (37, 'Portugal');
INSERT INTO public.teams VALUES (38, 'Argentina');
INSERT INTO public.teams VALUES (39, 'Germany');
INSERT INTO public.teams VALUES (40, 'Netherlands');
INSERT INTO public.teams VALUES (41, 'Costa Rica');
INSERT INTO public.teams VALUES (42, 'Chile');
INSERT INTO public.teams VALUES (43, 'Nigeria');
INSERT INTO public.teams VALUES (44, 'Algeria');
INSERT INTO public.teams VALUES (45, 'Greece');
INSERT INTO public.teams VALUES (46, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 57, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 46, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

