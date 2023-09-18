--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3
CREATE USER postgres SUPERUSER;

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
-- Name: roles; Type: TABLE; Schema: public; Owner: adhitanjung
--

CREATE TABLE public.roles (
    id uuid NOT NULL,
    updated_at timestamp with time zone,
    created_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name text
);


ALTER TABLE public.roles OWNER TO adhitanjung;

--
-- Name: user_filepaths; Type: TABLE; Schema: public; Owner: adhitanjung
--

CREATE TABLE public.user_filepaths (
    id uuid NOT NULL,
    updated_at timestamp with time zone,
    created_at timestamp with time zone,
    deleted_at timestamp with time zone,
    filename text,
    mimetype text,
    path text,
    user_id uuid
);


ALTER TABLE public.user_filepaths OWNER TO adhitanjung;

--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: adhitanjung
--

CREATE TABLE public.user_roles (
    id uuid NOT NULL,
    updated_at timestamp with time zone,
    created_at timestamp with time zone,
    deleted_at timestamp with time zone,
    user_id uuid,
    role_id uuid
);


ALTER TABLE public.user_roles OWNER TO adhitanjung;

--
-- Name: users; Type: TABLE; Schema: public; Owner: adhitanjung
--

CREATE TABLE public.users (
    id uuid NOT NULL,
    updated_at timestamp with time zone,
    created_at timestamp with time zone,
    deleted_at timestamp with time zone,
    username character varying(191),
    email text,
    password text,
    name text,
    gender text,
    status text DEFAULT 'not active'::text,
    profile_pic text,
    verified_at timestamp with time zone,
    oauth_provider text,
    oauth_token text
);


ALTER TABLE public.users OWNER TO adhitanjung;

--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: adhitanjung
--

COPY public.roles (id, updated_at, created_at, deleted_at, name) FROM stdin;
3f5d449b-ffa7-41bc-897d-f36a2079a601	2023-07-25 16:41:11.476689+07	2023-07-25 16:41:11.476689+07	\N	user
f3a1d2a8-2acf-11ee-be56-0242ac120002	2023-07-25 16:41:11.476689+07	2023-07-25 16:41:11.476689+07	\N	admin
f3a1d578-2acf-11ee-be56-0242ac120002	2023-07-25 16:41:11.476689+07	2023-07-25 16:41:11.476689+07	\N	superadmin
\.


--
-- Data for Name: user_filepaths; Type: TABLE DATA; Schema: public; Owner: adhitanjung
--

COPY public.user_filepaths (id, updated_at, created_at, deleted_at, filename, mimetype, path, user_id) FROM stdin;
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: adhitanjung
--

COPY public.user_roles (id, updated_at, created_at, deleted_at, user_id, role_id) FROM stdin;
203f19af-b877-4b4a-bcbc-678ec5f99314	2023-07-25 16:41:11.478687+07	2023-07-25 16:41:11.478687+07	\N	33cd0234-72a6-46ac-8970-31de08ea42cf	f3a1d578-2acf-11ee-be56-0242ac120002
01455d84-af2e-480c-8a4d-3ff80c351e80	2023-07-25 16:48:07.339842+07	2023-07-25 16:48:07.339842+07	\N	8367c912-fb97-4e5a-8b27-70ec6c9d6419	f3a1d2a8-2acf-11ee-be56-0242ac120002
cde0795d-1366-45c0-a3e9-ccf5543c56b5	2023-07-25 16:50:39.759649+07	2023-07-25 16:50:39.759649+07	\N	244208df-2e85-4402-a2a5-0b4dc05bb7c7	3f5d449b-ffa7-41bc-897d-f36a2079a601
9fccd7ef-ceee-467b-9d10-71e47a454ad8	2023-07-25 17:25:06.620985+07	2023-07-25 17:25:06.620985+07	\N	a1522fda-d40e-4183-9817-d36a733c3e85	3f5d449b-ffa7-41bc-897d-f36a2079a601
7e888538-7e63-41c0-9967-b39a7a657c28	2023-07-26 11:28:30.601412+07	2023-07-26 11:28:30.601412+07	\N	aa29703d-711b-4a68-bab8-59f7bf6a2c60	3f5d449b-ffa7-41bc-897d-f36a2079a601
1b2f0ae1-f2e5-4129-9cce-eb4726b3ae57	2023-08-15 12:22:21.607072+07	2023-08-15 12:22:21.607072+07	\N	5403e317-9778-4f40-a3e6-caa465ed4aed	3f5d449b-ffa7-41bc-897d-f36a2079a601
ac543fe0-aac0-4b15-85f6-6078c62cfff3	2023-08-15 12:24:04.355631+07	2023-08-15 12:24:04.355631+07	\N	15676a60-e37a-4d22-95af-17e1d2163a11	3f5d449b-ffa7-41bc-897d-f36a2079a601
be66df66-f1e9-45fc-aa27-bfc26abf17d1	2023-08-25 07:31:10.451046+07	2023-08-25 07:31:10.451046+07	\N	09a26aba-437f-4330-8a58-8dffe2dccfa1	3f5d449b-ffa7-41bc-897d-f36a2079a601
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: adhitanjung
--

COPY public.users (id, updated_at, created_at, deleted_at, username, email, password, name, gender, status, profile_pic, verified_at, oauth_provider, oauth_token) FROM stdin;
33cd0234-72a6-46ac-8970-31de08ea42cf	2023-07-25 16:41:11.478687+07	2023-07-25 16:41:11.478687+07	\N	superadmin	adhtanjung@mail.com	$2a$14$1AMEI4wSDZehqyh86G5NhOHIsfsrf5IoP4WogVHK0uH9UGLCDHy7u	adhi tanjung	male			\N
8367c912-fb97-4e5a-8b27-70ec6c9d6419	2023-07-25 16:48:07.339842+07	2023-07-25 16:48:07.339842+07	\N	admin	adhtanjung@gmail.com	$2a$14$DA2hJS0iCvqCta8o/fd.N.xUhIcmH.coWh0V18tWNPxTdm5HPznUe	adhi tanjung	male			\N
244208df-2e85-4402-a2a5-0b4dc05bb7c7	2023-07-25 16:50:39.759649+07	2023-07-25 16:50:39.759649+07	\N	user	user@gmail.com	$2a$14$pCKP7vvlIBzf/G8KebhL9.WfZ2kpGxSQqXQI50.uoJZGVq.Q6TGnO	user	male			\N
a1522fda-d40e-4183-9817-d36a733c3e85	2023-07-25 17:25:06.620985+07	2023-07-25 17:25:06.620985+07	\N	admin1	admin@gmail.com	$2a$14$WMGk3OaXiG.gKuioVq3B.eHBNhgjaR3bbOcjvWcAc5F9mpzzEu7NK					\N
aa29703d-711b-4a68-bab8-59f7bf6a2c60	2023-07-26 11:28:30.601412+07	2023-07-26 11:28:30.601412+07	\N	user1	user1@gmail.com	$2a$14$DTjdbFp9Q8gTJEj5/NTr.enPntpE9ufekL3M/dy5EIS2vDRfWjENS	user	male	not active		\N
5403e317-9778-4f40-a3e6-caa465ed4aed	2023-08-15 12:22:21.607072+07	2023-08-15 12:22:21.607072+07	\N	user2	user2@gmail.com	$2a$14$5lfJYfolJeOB6aALjliXnug8ElIfXzLIi4BBUZHEEJnaummK.CwOG	user	male	not active		\N
15676a60-e37a-4d22-95af-17e1d2163a11	2023-08-15 12:24:04.355631+07	2023-08-15 12:24:04.355631+07	\N	user3	user3@gmail.com	$2a$14$THpZzmSzmDicFwnRj4kcJOHHa/Y8kl6x9MS2zme4qta5RQd3ZNDEG	user	male	not active		\N
09a26aba-437f-4330-8a58-8dffe2dccfa1	2023-08-25 07:31:10.451046+07	2023-08-25 07:31:10.451046+07	\N		adhitanjung@datasintesa.id				not active		2023-08-25 07:31:10.429347+07	google	ya29.a0AfB_byC8oMzQRsUgeUXxbP4EwOsOAkSOlQDf4YsdOABCAJVbApfLEpiKUm5aRsWJSiFMaiwDy63jIa-i8WWUhXkDupklxA6KiebWOhzQGmVBQPKNt1FmyJWko0sdN1XZjoj6NZuiLvAsBhLlpRIsCRvdxGNzjYyjnL63PwaCgYKAaMSARASFQHsvYls-Iam8tkhvKyVr8LvsmxnUQ0173
\.


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: adhitanjung
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: user_filepaths user_filepaths_pkey; Type: CONSTRAINT; Schema: public; Owner: adhitanjung
--

ALTER TABLE ONLY public.user_filepaths
    ADD CONSTRAINT user_filepaths_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: adhitanjung
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: adhitanjung
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: idx_roles_deleted_at; Type: INDEX; Schema: public; Owner: adhitanjung
--

CREATE INDEX idx_roles_deleted_at ON public.roles USING btree (deleted_at);


--
-- Name: idx_user_filepaths_deleted_at; Type: INDEX; Schema: public; Owner: adhitanjung
--

CREATE INDEX idx_user_filepaths_deleted_at ON public.user_filepaths USING btree (deleted_at);


--
-- Name: idx_user_roles_deleted_at; Type: INDEX; Schema: public; Owner: adhitanjung
--

CREATE INDEX idx_user_roles_deleted_at ON public.user_roles USING btree (deleted_at);


--
-- Name: idx_users_deleted_at; Type: INDEX; Schema: public; Owner: adhitanjung
--

CREATE INDEX idx_users_deleted_at ON public.users USING btree (deleted_at);


--
-- Name: idx_users_email; Type: INDEX; Schema: public; Owner: adhitanjung
--

CREATE INDEX idx_users_email ON public.users USING btree (email);


--
-- Name: user_filepaths fk_user_filepaths_user; Type: FK CONSTRAINT; Schema: public; Owner: adhitanjung
--

ALTER TABLE ONLY public.user_filepaths
    ADD CONSTRAINT fk_user_filepaths_user FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: user_roles fk_user_roles_role; Type: FK CONSTRAINT; Schema: public; Owner: adhitanjung
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fk_user_roles_role FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- Name: user_roles fk_users_user_roles; Type: FK CONSTRAINT; Schema: public; Owner: adhitanjung
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fk_users_user_roles FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

