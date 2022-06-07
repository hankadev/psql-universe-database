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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    astronaut_id integer NOT NULL,
    moon_id integer,
    name character varying(60) NOT NULL,
    year integer
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: astronauts_astronaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronauts_astronaut_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronauts_astronaut_id_seq OWNER TO freecodecamp;

--
-- Name: astronauts_astronaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronauts_astronaut_id_seq OWNED BY public.astronaut.astronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    constellation character varying(30) NOT NULL,
    distance_in_mpc numeric(6,2),
    discovered_in_year integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer,
    diameter_in_km integer,
    discovered_in integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_id integer,
    type character varying(30),
    has_life boolean,
    nickname character varying(30),
    has_ring boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer,
    type character varying(30),
    distance_in_ly integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astronaut astronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut ALTER COLUMN astronaut_id SET DEFAULT nextval('public.astronauts_astronaut_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES (1, 5, 'Neil Armstrong', 1969);
INSERT INTO public.astronaut VALUES (2, 5, 'Edwin Aldrin', 1969);
INSERT INTO public.astronaut VALUES (3, 5, 'Charles Condar', 1969);
INSERT INTO public.astronaut VALUES (4, 5, 'Alan Bean', 1969);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sagittarius', 0.00, 1610, NULL);
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 'Virgo', 9.55, 1781, NULL);
INSERT INTO public.galaxy VALUES (4, 'Butterfly Galaxies', 'Virgo', 18.20, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel Galaxy', 'Sculptor', 150.00, 2021, NULL);
INSERT INTO public.galaxy VALUES (6, 'Hockey Stick Galaxies', 'Canes Venatici', NULL, 2005, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Andromeda', 0.77, 1885, 'closest galaxy to Milky Way, named by the area of sky in which it appears - the Andromeda constellation');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 5, 5260, 1610);
INSERT INTO public.moon VALUES (2, 'Callisto', 5, 4800, 1610);
INSERT INTO public.moon VALUES (3, 'Io', 5, 3630, 1610);
INSERT INTO public.moon VALUES (4, 'Europa', 5, 3140, 1610);
INSERT INTO public.moon VALUES (5, 'Moon', 3, 3475, NULL);
INSERT INTO public.moon VALUES (6, 'Deimos', 4, 12, 1877);
INSERT INTO public.moon VALUES (7, 'Phobos', 4, 23, 1877);
INSERT INTO public.moon VALUES (10, 'Miranda', 7, 472, 1948);
INSERT INTO public.moon VALUES (9, 'Ariel', 7, 1158, 1851);
INSERT INTO public.moon VALUES (8, 'Triton', 8, 2707, 1846);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 1123, 1684);
INSERT INTO public.moon VALUES (12, 'Enceladus', 6, 504, 1789);
INSERT INTO public.moon VALUES (13, 'Hyperion', 6, 270, 1848);
INSERT INTO public.moon VALUES (14, 'Phoebe', 6, 213, 1899);
INSERT INTO public.moon VALUES (15, 'Rhea', 6, 1528, 1672);
INSERT INTO public.moon VALUES (16, 'Amalthea', 5, 167, 1892);
INSERT INTO public.moon VALUES (17, 'Titan', 6, 5150, 1655);
INSERT INTO public.moon VALUES (18, 'Tethys', 6, 1062, 1684);
INSERT INTO public.moon VALUES (19, 'Nereid', 5, 340, 1949);
INSERT INTO public.moon VALUES (20, 'Mimas', 6, 396, 1787);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Venus', 1, 'rocky', false, 'Morning and Evening Star', false);
INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'rocky', false, 'Swift Planet', false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'rocky', true, NULL, false);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'rocky', false, 'Red pplanet', false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'gas giant', false, NULL, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'gas giant', false, NULL, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'ice giant', false, NULL, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'ice giant', false, NULL, true);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 'dwarf', false, NULL, false);
INSERT INTO public.planet VALUES (10, 'Ceres', 1, 'dwarf', false, NULL, false);
INSERT INTO public.planet VALUES (11, 'Charon', 1, 'dwarf', false, NULL, false);
INSERT INTO public.planet VALUES (12, 'Eris', 1, 'dwarf', false, NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Alpheratz', 2, 'blue-white subgiant star', 97);
INSERT INTO public.star VALUES (3, 'Pistol Star', 1, 'hypergiant star', 25000);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 'binary star', 9);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 1, 'red dwarf star', 4);
INSERT INTO public.star VALUES (1, 'Sun', 1, 'yellow dwarf star', NULL);
INSERT INTO public.star VALUES (6, 'Emu Cephei', 1, 'red supergiant star', 3);


--
-- Name: astronauts_astronaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronauts_astronaut_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronaut astronauts_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronauts_name_key UNIQUE (name);


--
-- Name: astronaut astronauts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronauts_pkey PRIMARY KEY (astronaut_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: astronaut moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

