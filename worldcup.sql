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
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(100)
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

INSERT INTO public.games VALUES (371, 2018, 'Final', 284, 285, 4, 2);
INSERT INTO public.games VALUES (372, 2018, 'Third Place', 286, 287, 2, 0);
INSERT INTO public.games VALUES (373, 2018, 'Semi-Final', 285, 287, 2, 1);
INSERT INTO public.games VALUES (374, 2018, 'Semi-Final', 284, 286, 1, 0);
INSERT INTO public.games VALUES (375, 2018, 'Quarter-Final', 285, 293, 3, 2);
INSERT INTO public.games VALUES (376, 2018, 'Quarter-Final', 287, 295, 2, 0);
INSERT INTO public.games VALUES (377, 2018, 'Quarter-Final', 286, 297, 2, 1);
INSERT INTO public.games VALUES (378, 2018, 'Quarter-Final', 284, 299, 2, 0);
INSERT INTO public.games VALUES (379, 2018, 'Eighth-Final', 287, 301, 2, 1);
INSERT INTO public.games VALUES (380, 2018, 'Eighth-Final', 295, 303, 1, 0);
INSERT INTO public.games VALUES (381, 2018, 'Eighth-Final', 286, 305, 3, 2);
INSERT INTO public.games VALUES (382, 2018, 'Eighth-Final', 297, 307, 2, 0);
INSERT INTO public.games VALUES (383, 2018, 'Eighth-Final', 285, 309, 2, 1);
INSERT INTO public.games VALUES (384, 2018, 'Eighth-Final', 293, 311, 2, 1);
INSERT INTO public.games VALUES (385, 2018, 'Eighth-Final', 299, 313, 2, 1);
INSERT INTO public.games VALUES (386, 2018, 'Eighth-Final', 284, 315, 4, 3);
INSERT INTO public.games VALUES (387, 2014, 'Final', 316, 315, 1, 0);
INSERT INTO public.games VALUES (388, 2014, 'Third Place', 318, 297, 3, 0);
INSERT INTO public.games VALUES (389, 2014, 'Semi-Final', 315, 318, 1, 0);
INSERT INTO public.games VALUES (390, 2014, 'Semi-Final', 316, 297, 7, 1);
INSERT INTO public.games VALUES (391, 2014, 'Quarter-Final', 318, 325, 1, 0);
INSERT INTO public.games VALUES (392, 2014, 'Quarter-Final', 315, 286, 1, 0);
INSERT INTO public.games VALUES (393, 2014, 'Quarter-Final', 297, 301, 2, 1);
INSERT INTO public.games VALUES (394, 2014, 'Quarter-Final', 316, 284, 1, 0);
INSERT INTO public.games VALUES (395, 2014, 'Eighth-Final', 297, 333, 2, 1);
INSERT INTO public.games VALUES (396, 2014, 'Eighth-Final', 301, 299, 2, 0);
INSERT INTO public.games VALUES (397, 2014, 'Eighth-Final', 284, 337, 2, 0);
INSERT INTO public.games VALUES (398, 2014, 'Eighth-Final', 316, 339, 2, 1);
INSERT INTO public.games VALUES (399, 2014, 'Eighth-Final', 318, 307, 2, 1);
INSERT INTO public.games VALUES (400, 2014, 'Eighth-Final', 325, 343, 2, 1);
INSERT INTO public.games VALUES (401, 2014, 'Eighth-Final', 315, 303, 1, 0);
INSERT INTO public.games VALUES (402, 2014, 'Eighth-Final', 286, 347, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (284, 'France');
INSERT INTO public.teams VALUES (285, 'Croatia');
INSERT INTO public.teams VALUES (286, 'Belgium');
INSERT INTO public.teams VALUES (287, 'England');
INSERT INTO public.teams VALUES (293, 'Russia');
INSERT INTO public.teams VALUES (295, 'Sweden');
INSERT INTO public.teams VALUES (297, 'Brazil');
INSERT INTO public.teams VALUES (299, 'Uruguay');
INSERT INTO public.teams VALUES (301, 'Colombia');
INSERT INTO public.teams VALUES (303, 'Switzerland');
INSERT INTO public.teams VALUES (305, 'Japan');
INSERT INTO public.teams VALUES (307, 'Mexico');
INSERT INTO public.teams VALUES (309, 'Denmark');
INSERT INTO public.teams VALUES (311, 'Spain');
INSERT INTO public.teams VALUES (313, 'Portugal');
INSERT INTO public.teams VALUES (315, 'Argentina');
INSERT INTO public.teams VALUES (316, 'Germany');
INSERT INTO public.teams VALUES (318, 'Netherlands');
INSERT INTO public.teams VALUES (325, 'Costa Rica');
INSERT INTO public.teams VALUES (333, 'Chile');
INSERT INTO public.teams VALUES (337, 'Nigeria');
INSERT INTO public.teams VALUES (339, 'Algeria');
INSERT INTO public.teams VALUES (343, 'Greece');
INSERT INTO public.teams VALUES (347, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 402, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 347, true);


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
