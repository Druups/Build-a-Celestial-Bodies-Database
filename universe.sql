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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    num_of_planets integer,
    num_of_stars integer,
    origin_of_name text,
    constellation character varying(30)
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
    name character varying(30) NOT NULL,
    has_life boolean,
    planet_id integer NOT NULL,
    mean_radius_in_km numeric(7,2)
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
    name character varying(30) NOT NULL,
    has_life boolean,
    star_id integer NOT NULL,
    planet_type character varying(30),
    average_temp_in_c numeric(5,2)
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    temperature_in_k integer,
    confirmed_planets integer
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
-- Name: table_1; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_1 (
    table_1_id integer NOT NULL,
    name character varying(30) NOT NULL,
    col3 integer NOT NULL
);


ALTER TABLE public.table_1 OWNER TO freecodecamp;

--
-- Name: table_1_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table_1_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_1_table_id_seq OWNER TO freecodecamp;

--
-- Name: table_1_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table_1_table_id_seq OWNED BY public.table_1.table_1_id;


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
-- Name: table_1 table_1_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_1 ALTER COLUMN table_1_id SET DEFAULT nextval('public.table_1_table_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, 'The appearance from Earth of the galaxy—a band of light', 'Sagittarius');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', NULL, NULL, NULL, 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda.', 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', NULL, NULL, NULL, 'Appears similar in shape to a cigar.', 'Usar Major');
INSERT INTO public.galaxy VALUES (4, 'Malin 1', NULL, NULL, NULL, 'Discovered and named by David Malin.', 'Coma Berenices');
INSERT INTO public.galaxy VALUES (5, 'Needle Galaxy', NULL, NULL, NULL, 'Named due to its slender appearance.', 'Coma Berenices');
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', NULL, NULL, NULL, 'Similar in appearance to a sombrero.', 'Virgo');
INSERT INTO public.galaxy VALUES (7, 'galaxy', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 3, 1737.40);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4, 22.27);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4, 12.60);
INSERT INTO public.moon VALUES (4, 'Io', false, 5, 3643.20);
INSERT INTO public.moon VALUES (5, 'Europa', false, 5, 3121.50);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, 5, 5268.20);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 5, 4820.60);
INSERT INTO public.moon VALUES (8, 'Amalthea', false, 5, 167.00);
INSERT INTO public.moon VALUES (9, 'Himalia', false, 5, 139.60);
INSERT INTO public.moon VALUES (10, 'Elara', false, 5, 79.90);
INSERT INTO public.moon VALUES (11, 'Pasiphae', false, 5, 57.80);
INSERT INTO public.moon VALUES (12, 'Sinope', false, 5, 35.00);
INSERT INTO public.moon VALUES (13, 'Lysithea', false, 5, 42.20);
INSERT INTO public.moon VALUES (14, 'Carme', false, 5, 46.70);
INSERT INTO public.moon VALUES (15, 'Ananke', false, 5, 29.10);
INSERT INTO public.moon VALUES (16, 'Leda', false, 5, 21.50);
INSERT INTO public.moon VALUES (17, 'Thebe', false, 5, 98.60);
INSERT INTO public.moon VALUES (18, 'Adrastea', false, 5, 16.40);
INSERT INTO public.moon VALUES (19, 'Metis', false, 5, 43.00);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', false, 5, 9.60);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 2, 'terrestrial', 164.00);
INSERT INTO public.planet VALUES (2, 'Venus', false, 2, 'terrestrial', 464.00);
INSERT INTO public.planet VALUES (3, 'Earth', true, 2, 'terrestrial', 14.76);
INSERT INTO public.planet VALUES (4, 'Mars', false, 2, 'terrestral', -60.00);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 2, 'gas', -185.00);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 2, 'gas', -178.00);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 2, 'ice', -197.20);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 2, 'ice', -210.00);
INSERT INTO public.planet VALUES (9, 'planet1', NULL, 8, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'planet2', NULL, 8, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'planet3', NULL, 8, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'planet4', NULL, 8, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 1, 5778, 8);
INSERT INTO public.star VALUES (3, 'Kepler-90', 1, 5930, 8);
INSERT INTO public.star VALUES (4, 'Kepler-150', 1, 5560, 5);
INSERT INTO public.star VALUES (5, 'K2-138', 1, 5378, 6);
INSERT INTO public.star VALUES (6, 'TRAPPIST-1', 1, 2550, 7);
INSERT INTO public.star VALUES (7, 'HD 34445', 1, 5836, 1);
INSERT INTO public.star VALUES (8, 'star', 7, NULL, NULL);


--
-- Data for Name: table_1; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_1 VALUES (1, 'row1', 1);
INSERT INTO public.table_1 VALUES (2, 'row2', 2);
INSERT INTO public.table_1 VALUES (3, 'row3', 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: table_1_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table_1_table_id_seq', 3, true);


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
-- Name: table_1 table_1_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_1
    ADD CONSTRAINT table_1_name_key UNIQUE (name);


--
-- Name: table_1 table_1_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_1
    ADD CONSTRAINT table_1_pkey PRIMARY KEY (table_1_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

