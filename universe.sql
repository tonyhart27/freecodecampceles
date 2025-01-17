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
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    galaxy_type character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(60) NOT NULL,
    size numeric
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    distance_from_earth integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    distance_from_earth integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G1', 142, 'Galaxy 1', 'normal');
INSERT INTO public.galaxy VALUES (2, 'G2', 314, 'Galaxy 2', 'normal');
INSERT INTO public.galaxy VALUES (3, 'G3', 314, 'Galaxy 3', 'small');
INSERT INTO public.galaxy VALUES (4, 'G4', 1007, 'Galaxy 4', 'big');
INSERT INTO public.galaxy VALUES (5, 'G5', 921, 'Galaxy 5', 'big');
INSERT INTO public.galaxy VALUES (6, 'G6', 233, 'Galaxy 6', 'small');


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, 'Meteor 1', 90.1);
INSERT INTO public.meteor VALUES (2, 'Meteor 2', 76.3);
INSERT INTO public.meteor VALUES (3, 'Meteor 3', 1023.4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M1', 'Moon 1', 1, 283);
INSERT INTO public.moon VALUES (2, 'M2', 'Moon 2', 1, 238);
INSERT INTO public.moon VALUES (3, 'M3', 'Moon 3', 2, 354);
INSERT INTO public.moon VALUES (4, 'M4', 'Moon 4', 2, 543);
INSERT INTO public.moon VALUES (5, 'M5', 'Moon 5', 2, 516);
INSERT INTO public.moon VALUES (6, 'M6', 'Moon 6', 3, 222);
INSERT INTO public.moon VALUES (7, 'M7', 'Moon 7', 4, 481);
INSERT INTO public.moon VALUES (8, 'M8', 'Moon 8', 5, 912);
INSERT INTO public.moon VALUES (9, 'M9', 'Moon 9', 5, 871);
INSERT INTO public.moon VALUES (10, 'M10', 'Moon 10', 6, 78);
INSERT INTO public.moon VALUES (11, 'M11', 'Moon 11', 6, 89);
INSERT INTO public.moon VALUES (12, 'M12', 'Moon 12', 7, 181);
INSERT INTO public.moon VALUES (13, 'M13', 'Moon 13', 7, 235);
INSERT INTO public.moon VALUES (14, 'M14', 'Moon 14', 8, 265);
INSERT INTO public.moon VALUES (15, 'M15', 'Moon 15', 9, 215);
INSERT INTO public.moon VALUES (16, 'M16', 'Moon 16', 10, 800);
INSERT INTO public.moon VALUES (17, 'M17', 'Moon 17', 11, 652);
INSERT INTO public.moon VALUES (18, 'M18', 'Moon 18', 12, 123);
INSERT INTO public.moon VALUES (19, 'M19', 'Moon 19', 12, 314);
INSERT INTO public.moon VALUES (20, 'M20', 'Moon 20', 8, 964);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P1', true, true, 1);
INSERT INTO public.planet VALUES (2, 'P2', true, true, 1);
INSERT INTO public.planet VALUES (3, 'P3', true, true, 1);
INSERT INTO public.planet VALUES (4, 'P4', true, false, 1);
INSERT INTO public.planet VALUES (5, 'P5', false, false, 3);
INSERT INTO public.planet VALUES (6, 'P6', false, true, 3);
INSERT INTO public.planet VALUES (7, 'P7', false, true, 5);
INSERT INTO public.planet VALUES (8, 'P8', false, true, 5);
INSERT INTO public.planet VALUES (9, 'P9', true, true, 6);
INSERT INTO public.planet VALUES (10, 'P10', true, true, 6);
INSERT INTO public.planet VALUES (11, 'P11', true, false, 2);
INSERT INTO public.planet VALUES (12, 'P12', false, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S1', 'Star 1', 1, 124);
INSERT INTO public.star VALUES (2, 'S2', 'Star 2', 1, 108);
INSERT INTO public.star VALUES (3, 'S3', 'Star 3', 4, 702);
INSERT INTO public.star VALUES (4, 'S4', 'Star 4', 5, 918);
INSERT INTO public.star VALUES (5, 'S5', 'Star 5', 3, 172);
INSERT INTO public.star VALUES (6, 'S6', 'Star 6', 6, 72);


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
-- Name: meteor meteor_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_name_key UNIQUE (name);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


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

