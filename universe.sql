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
    earth_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    moon_id integer
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
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric(10,2),
    number_of_stars integer
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    planet_id integer
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    star_id integer
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
    name character varying(50) NOT NULL,
    description text,
    has_live boolean,
    galaxy_id integer NOT NULL,
    luminosity integer
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

INSERT INTO public.earth VALUES (1, 'Earth 1', 'A fictional Earth with a unique moon', true, 18);
INSERT INTO public.earth VALUES (2, 'Earth 2', 'Another fictional Earth with a unique moon', false, 19);
INSERT INTO public.earth VALUES (3, 'Earth 3', 'Yet another fictional Earth with a unique moon', true, 20);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (8, 'Andromeda', 'A spiral galaxy', true, 2530000.45, 100000000);
INSERT INTO public.galaxy VALUES (9, 'Milky Way', 'Our home galaxy', true, 27000.75, 200000000);
INSERT INTO public.galaxy VALUES (10, 'Sombrero Galaxy', 'A lenticular galaxy', false, 3100000.89, 400000000);
INSERT INTO public.galaxy VALUES (11, 'Whirlpool Galaxy', 'A grand-design spiral galaxy', true, 3100000.00, 150000000);
INSERT INTO public.galaxy VALUES (12, 'Pinwheel Galaxy', 'A face-on spiral galaxy', false, 2900000.25, 120000000);
INSERT INTO public.galaxy VALUES (13, 'Triangulum Galaxy', 'A dwarf galaxy', false, 2900000.75, 30000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (18, 'Luna', 'The Earth only natural satellite', false, 1);
INSERT INTO public.moon VALUES (19, 'Phobos', 'The largest and innermost of Mars two moons', false, 2);
INSERT INTO public.moon VALUES (20, 'Deimos', 'The smallest and outermost of Mars two moons', false, 2);
INSERT INTO public.moon VALUES (21, 'Ganymede', 'The largest moon in the solar system and a satellite of Jupiter', false, 3);
INSERT INTO public.moon VALUES (22, 'Europa', 'The smallest of Jupiter four Galilean moons and considered a potential candidate for extraterrestrial life', false, 3);
INSERT INTO public.moon VALUES (23, 'Titan', 'The largest moon of Saturn and the second-largest natural satellite in the solar system', false, 4);
INSERT INTO public.moon VALUES (24, 'Rhea', 'The second-largest moon of Saturn', false, 4);
INSERT INTO public.moon VALUES (25, 'Triton', 'The largest natural satellite of Neptune and the seventh-largest moon in the solar system', false, 5);
INSERT INTO public.moon VALUES (26, 'Charon', 'The largest satellite of the dwarf planet Pluto', false, 5);
INSERT INTO public.moon VALUES (27, 'Io', 'The innermost of the four Galilean moons of Jupiter', false, 6);
INSERT INTO public.moon VALUES (28, 'Callisto', 'The second-largest moon of Jupiter', false, 6);
INSERT INTO public.moon VALUES (29, 'Thebe', 'A small moon of Jupiter', false, 7);
INSERT INTO public.moon VALUES (30, 'Nereid', 'A moon of Neptune', false, 7);
INSERT INTO public.moon VALUES (31, 'Ceres', 'The largest object in the asteroid belt between Mars and Jupiter', false, 8);
INSERT INTO public.moon VALUES (32, 'Phobos 2', 'A distant moon in a distant galaxy', false, 8);
INSERT INTO public.moon VALUES (33, 'Enceladus', 'A moon of Saturn', false, 9);
INSERT INTO public.moon VALUES (34, 'Hyperion', 'A moon of Saturn 2', false, 9);
INSERT INTO public.moon VALUES (35, 'Pandora', 'A moon of Saturn 3', false, 10);
INSERT INTO public.moon VALUES (36, 'Kerberos', 'A moon of Pluto', false, 11);
INSERT INTO public.moon VALUES (37, 'Eris', 'The most massive and second-largest known dwarf planet in the solar system', false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The third planet from the Sun and the only one known to support life', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'The fourth planet from the Sun and a terrestrial planet', false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'The second planet from the Sun and often called Earth sister planet', false, 2);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'The largest planet in our solar system and a gas giant', false, 2);
INSERT INTO public.planet VALUES (5, 'Saturn', 'The sixth planet from the Sun and known for its prominent ring system', false, 3);
INSERT INTO public.planet VALUES (6, 'Neptune', 'The eighth and farthest known planet from the Sun', false, 3);
INSERT INTO public.planet VALUES (7, 'Mercury', 'The smallest and closest planet to the Sun', false, 4);
INSERT INTO public.planet VALUES (8, 'Uranus', 'The seventh planet from the Sun and tipped over on its side', false, 4);
INSERT INTO public.planet VALUES (9, 'Pluto', 'A dwarf planet formerly considered the ninth planet in our solar system', false, 5);
INSERT INTO public.planet VALUES (10, 'Mars 2', 'A fictional planet in a distant galaxy', false, 5);
INSERT INTO public.planet VALUES (11, 'Vulcan', 'A hypothetical planet once believed to exist between Mercury and the Sun', false, 6);
INSERT INTO public.planet VALUES (12, 'Tatooine', 'A desert planet in a galaxy far away', false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our solar system', true, 8, 100);
INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the night sky', true, 9, 200);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the constellation Orion', false, 10, 300);
INSERT INTO public.star VALUES (4, 'Vega', 'A bright star in the constellation Lyra', true, 11, 150);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'The closest known star to the sun', false, 12, 50);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 'A close binary star system in the constellation Centaurus', true, 13, 180);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 13, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 37, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: earth unique_earth_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT unique_earth_description UNIQUE (description);


--
-- Name: galaxy unique_galaxy_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_description UNIQUE (description);


--
-- Name: moon unique_moon_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_description UNIQUE (description);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_description UNIQUE (description);


--
-- Name: star unique_star_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_description UNIQUE (description);


--
-- Name: earth earth_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

