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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    name character varying(90),
    population integer NOT NULL,
    earth_id integer NOT NULL,
    countries integer,
    languages_count integer
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(60),
    galaxy_id integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    people integer
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
    name character varying(60),
    moon_id integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    planet_id integer,
    people integer
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
    name character varying(60),
    planet_id integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    description text,
    star_id integer NOT NULL,
    people integer
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
    name character varying(60),
    star_id integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    galaxy_id integer NOT NULL,
    people integer
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES ('Žemė', 100000000, 1, 250, 30);
INSERT INTO public.earth VALUES ('Žemė2', 100000, 2, 25, 3);
INSERT INTO public.earth VALUES ('Žemė3', 1500000, 3, 125, 23);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Galaktika', 1, 200000.00, 'Vienas du trys', 123, 234);
INSERT INTO public.galaxy VALUES ('Galaktika2', 2, 1200000.00, 'Viu trys', 13, 1234);
INSERT INTO public.galaxy VALUES ('Galaktika3', 3, 150000.00, 'Vifgh u trys', 22213, 221234);
INSERT INTO public.galaxy VALUES ('Galaktika 4', 4, 11123.00, 'Balta', 16, 500);
INSERT INTO public.galaxy VALUES ('Galaktika 5', 5, 11123.00, 'Balta', 16, 500);
INSERT INTO public.galaxy VALUES ('Galaktika 60', 6, 11123.00, 'Juoda', 16, 500);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Mėnulis', 1, 11.00, 'Mėnulis', false, 1, 0);
INSERT INTO public.moon VALUES ('Mėnulis2', 2, 121.00, 'Mėnulis', false, 2, 100);
INSERT INTO public.moon VALUES ('Mėnulis3', 3, 131.00, 'Mėnulis', true, 3, 500);
INSERT INTO public.moon VALUES ('Mėnulis 4', 4, 11123.00, 'Juoda', false, 12, 500);
INSERT INTO public.moon VALUES ('Mėnulis 5', 5, 11123.00, 'Juoda', false, 11, 500);
INSERT INTO public.moon VALUES ('Mėnulis 10', 6, 11123.00, 'Juoda', false, 10, 500);
INSERT INTO public.moon VALUES ('Mėnulis 11', 7, 11123.00, 'Juoda', false, 11, 500);
INSERT INTO public.moon VALUES ('Mėnulis 16', 8, 11123.00, 'Juoda', false, 11, 500);
INSERT INTO public.moon VALUES ('Mėnulis 6', 9, 11123.00, 'Juoda', false, 11, 500);
INSERT INTO public.moon VALUES ('Mėnulis 7', 10, 11123.00, 'Juoda', false, 10, 500);
INSERT INTO public.moon VALUES ('Mėnulis 8', 11, 11123.00, 'Juoda', false, 5, 500);
INSERT INTO public.moon VALUES ('Mėnulis 9', 12, 11123.00, 'Juoda', false, 6, 500);
INSERT INTO public.moon VALUES ('Mėnulis 12', 13, 11123.00, 'Juoda', false, 6, 500);
INSERT INTO public.moon VALUES ('Mėnulis 13', 14, 11123.00, 'Juoda', false, 7, 500);
INSERT INTO public.moon VALUES ('Mėnulis 14', 15, 11123.00, 'Juoda', false, 8, 500);
INSERT INTO public.moon VALUES ('Mėnulis 15', 16, 11123.00, 'Juoda', false, 9, 500);
INSERT INTO public.moon VALUES ('Mėnulis 17', 17, 11123.00, 'Juoda', false, 9, 500);
INSERT INTO public.moon VALUES ('Mėnulis 18', 18, 11123.00, 'Juoda', false, 9, 500);
INSERT INTO public.moon VALUES ('Mėnulis 19', 19, 11123.00, 'Juoda', false, 7, 500);
INSERT INTO public.moon VALUES ('Mėnulis 20', 20, 11123.00, 'Juoda', false, 5, 500);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Merkurijus', 1, 123.00, 'Merkurijus', 1, 0);
INSERT INTO public.planet VALUES ('Venera', 2, 1123.00, 'Venera', 2, 1);
INSERT INTO public.planet VALUES ('Jupiteris', 3, 11123.00, 'Jupiteris', 3, 0);
INSERT INTO public.planet VALUES ('Planeta 4', 4, 11123.00, 'Juoda', 1, 500);
INSERT INTO public.planet VALUES ('Planeta 5', 5, 11123.00, 'Juoda', 4, 500);
INSERT INTO public.planet VALUES ('Planeta 6', 6, 11123.00, 'Juoda', 5, 500);
INSERT INTO public.planet VALUES ('Planeta 7', 7, 11123.00, 'Juoda', 6, 500);
INSERT INTO public.planet VALUES ('Planeta 8', 8, 11123.00, 'Juoda', 1, 500);
INSERT INTO public.planet VALUES ('Planeta 9', 9, 11123.00, 'Juoda', 2, 500);
INSERT INTO public.planet VALUES ('Planeta 10', 10, 11123.00, 'Juoda', 3, 500);
INSERT INTO public.planet VALUES ('Planeta 11', 11, 11123.00, 'Juoda', 4, 500);
INSERT INTO public.planet VALUES ('Planeta 12', 12, 11123.00, 'Juoda', 5, 500);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Šiaurinė', 1, 1250000.00, 'Vifghd u trys', true, 222123, 1, 2221234);
INSERT INTO public.star VALUES ('Pietinė', 2, 11250000.00, 'Labas', false, 1222123, 2, 12221234);
INSERT INTO public.star VALUES ('Vakarinė', 3, 111200.00, 'Vakaras', false, 12123, 3, 122314);
INSERT INTO public.star VALUES ('Rytinė', 4, 123.00, 'Rytinė', true, 15, 1, 1);
INSERT INTO public.star VALUES ('Rožinė', 5, 1123.00, 'Rožinė', false, 16, 3, 0);
INSERT INTO public.star VALUES ('Balta', 6, 11123.00, 'Balta', true, 16, 2, 500);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 3, true);


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
-- Name: earth earth_earth_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_earth_id_key UNIQUE (earth_id);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

