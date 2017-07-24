--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: users; Type: TABLE; Schema: public; Owner: wolf
--

CREATE TABLE users (
    user_id integer NOT NULL,
    public boolean,
    completion_percentage integer,
    gender boolean,
    region character varying(255),
    last_login timestamp without time zone,
    registration timestamp without time zone,
    age integer,
    body character varying(255),
    i_am_working_in_field character varying(255),
    spoken_languages character varying(255),
    hobbies character varying(255),
    i_most_enjoy_good_food character varying(255),
    pets character varying(255),
    body_type character varying(255),
    my_eyesight character varying(255),
    eye_color character varying(255),
    hair_color character varying(255),
    hair_type character varying(255),
    completed_level_of_education character varying(255),
    favourite_color character varying(255),
    relation_to_smoking character varying(255),
    relation_to_alcohol character varying(255),
    sign_in_zodiac character varying(255),
    on_pokec_i_am_looking_for character varying(255),
    love_is_for_me character varying(255),
    relation_to_casual_sex character varying(255),
    my_partner_should_be character varying(255),
    marital_status character varying(255),
    children character varying(255),
    relation_to_children character varying(255),
    i_like_movies character varying(255),
    i_like_watching_movie character varying(255),
    i_like_music character varying(255),
    i_mostly_like_listening_to_music character varying(255),
    the_idea_of_good_evening character varying(255),
    i_like_specialties_from_kitchen character varying(255),
    fun character varying(255),
    i_am_going_to_concerts character varying(255),
    my_active_sports character varying(255),
    my_passive_sports character varying(255),
    profession character varying(255),
    i_like_books character varying(255),
    life_style character varying(255),
    music character varying(255),
    cars character varying(255),
    politics character varying(255),
    relationships character varying(255),
    art_culture character varying(255),
    hobbies_interests character varying(255),
    science_technologies character varying(255),
    computers_internet character varying(255),
    education character varying(255),
    sport character varying(255),
    movies character varying(255),
    travelling character varying(255),
    health character varying(255),
    companies_brands character varying(255),
    more character varying(255)
);


ALTER TABLE users OWNER TO wolf;

--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: wolf
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--
