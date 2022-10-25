--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

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
-- Name: devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.devices (
    id integer NOT NULL,
    type character varying(20) NOT NULL,
    type_con character varying(20) NOT NULL
);


ALTER TABLE public.devices OWNER TO postgres;

--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    lname character varying(20) NOT NULL,
    fname character varying(20) NOT NULL,
    mname character varying(20),
    age integer NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: installs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.installs (
    pc_id integer,
    soft_id integer NOT NULL,
    num integer NOT NULL
);


ALTER TABLE public.installs OWNER TO postgres;

--
-- Name: pcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pcs (
    id integer NOT NULL,
    room_id integer NOT NULL,
    note character varying(400),
    ip_addr character varying(50) NOT NULL,
    mac_addr character varying(50) NOT NULL,
    device_id integer NOT NULL
);


ALTER TABLE public.pcs OWNER TO postgres;

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    num integer NOT NULL,
    emp_id integer NOT NULL,
    appoint character varying(400)
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: soft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soft (
    id integer NOT NULL,
    sname character varying(50) NOT NULL,
    ver character varying(50) NOT NULL,
    quant character varying(50) NOT NULL,
    build character varying(50) NOT NULL
);


ALTER TABLE public.soft OWNER TO postgres;

--
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.devices (id, type, type_con) FROM stdin;
1	Graphic tablet	USB
2	Headphones	USB
3	Microphone	USB
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, lname, fname, mname, age) FROM stdin;
1	Suslov	Denis	Valerevich	18
2	Avdeev	Sergey	Pavlovich	19
3	Alekseev	Dmitriy	Vladimirovich	20
4	Bespalov	Viktor	Semenovich	19
5	Blinov	Aleksandr	Dmitrievich	22
6	Vdovin	Valeriy	Michailovich	30
7	Vlasova	Anastasiya	Valerievna	24
8	Semenov	Vladimir	Aleksandrovich	26
9	Gorbunov	Aleksey	Aleksandrovich	28
10	Galkin	Ivan	Ivanovich	21
\.


--
-- Data for Name: installs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.installs (pc_id, soft_id, num) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	4
5	5	5
6	1	6
7	2	7
8	3	8
9	4	9
10	5	10
11	1	11
12	2	3
13	3	1
14	4	2
15	5	3
16	1	1
17	2	2
18	3	3
19	4	1
20	5	2
21	1	3
22	2	1
23	3	2
24	4	3
25	5	1
26	1	2
27	2	3
28	3	1
29	4	2
30	5	3
1	1	1
2	2	2
3	3	3
4	4	1
5	5	2
6	1	3
7	2	1
8	3	2
9	4	3
10	5	1
11	1	2
12	2	3
13	3	1
14	4	2
15	5	3
16	1	1
17	2	2
18	3	3
19	4	1
20	5	2
21	1	3
22	2	1
23	3	2
24	4	3
25	5	1
26	1	2
27	2	3
28	3	1
29	4	2
30	5	3
\.


--
-- Data for Name: pcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pcs (id, room_id, note, ip_addr, mac_addr, device_id) FROM stdin;
1	1	condition 7/10	192.168.100.32	C4-85-08-E1-67-ED	1
2	2	condition 6/10	192.168.100.33	C4-85-08-E1-68-ED	2
3	3	condition 5/10	192.168.100.34	C4-85-08-E1-69-ED	3
4	4	condition 8/10	192.168.100.35	C4-85-08-E1-70-ED	1
5	5	condition 9/10	192.168.100.36	C4-85-08-E1-71-ED	2
6	6	condition 10/10	192.168.100.37	C4-85-08-E1-72-ED	3
7	7	condition 9/10	192.168.100.38	C4-85-08-E1-73-ED	1
8	8	condition 8/10	192.168.100.39	C4-85-08-E1-74-ED	2
9	9	condition 7/10	192.168.100.40	C4-85-08-E1-75-ED	3
10	10	condition 6/10	192.168.100.41	C4-85-08-E1-76-ED	1
11	11	condition 3/10	192.168.100.42	C4-85-08-E1-77-ED	2
12	12	condition 2/10	192.168.100.43	C4-85-08-E1-78-ED	3
13	13	condition 5/10	192.168.100.44	C4-85-08-E1-79-ED	1
14	14	condition 1/10	192.168.100.45	C4-85-08-E1-80-ED	2
15	15	condition 4/10	192.168.100.46	C4-85-08-E1-81-ED	3
16	1	condition 7/10	192.168.100.47	C4-85-08-E1-82-ED	1
17	2	condition 8/10	192.168.100.48	C4-85-08-E1-83-ED	2
18	3	condition 6/10	192.168.100.49	C4-85-08-E1-84-ED	3
19	4	condition 7/10	192.168.100.50	C4-85-08-E1-85-ED	1
20	5	condition 9/10	192.168.100.51	C4-85-08-E1-86-ED	2
21	6	condition 10/10	192.168.100.52	C4-85-08-E1-87-ED	3
22	7	condition 4/10	192.168.100.53	C4-85-08-E1-88-ED	1
23	8	condition 3/10	192.168.100.54	C4-85-08-E1-89-ED	2
24	9	condition 2/10	192.168.100.55	C4-85-08-E1-90-ED	3
25	10	condition 2/10	192.168.100.56	C4-85-08-E1-91-ED	1
26	11	condition 1/10	192.168.100.57	C4-85-08-E1-92-ED	2
27	12	condition 1/10	192.168.100.58	C4-85-08-E1-93-ED	3
28	13	condition 5/10	192.168.100.59	C4-85-08-E1-94-ED	1
29	14	condition 7/10	192.168.100.60	C4-85-08-E1-95-ED	2
30	15	condition 7/10	192.168.100.61	C4-85-08-E1-96-ED	3
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, num, emp_id, appoint) FROM stdin;
1	101	1	Development
2	102	2	Testing
3	103	3	Design
4	104	4	Interview
5	105	5	Testing
6	201	6	Design
7	202	7	Testing
8	203	8	Development
9	204	9	Development
10	205	10	Interview
11	301	1	Design
12	302	2	Design
13	303	3	Testing
14	304	4	Development
15	305	5	Testing
\.


--
-- Data for Name: soft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soft (id, sname, ver, quant, build) FROM stdin;
1	Microsoft Office	10.3	Windows 10	4
2	Antivirus	14.5	Windows 8.1	6
3	1C	1.5	Windows 10	8
4	Dia	2.4	Windows 10-11	11
5	Archiver	5	Windows 7-10	3
\.


--
-- Name: devices pk_devices_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT pk_devices_id PRIMARY KEY (id);


--
-- Name: employees pk_employees_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees_id PRIMARY KEY (id);


--
-- Name: pcs pk_pcs_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT pk_pcs_id PRIMARY KEY (id);


--
-- Name: rooms pk_rooms_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT pk_rooms_id PRIMARY KEY (id);


--
-- Name: soft pk_soft_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soft
    ADD CONSTRAINT pk_soft_id PRIMARY KEY (id);


--
-- Name: installs fk_install_pc_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT fk_install_pc_id FOREIGN KEY (pc_id) REFERENCES public.pcs(id);


--
-- Name: installs fk_install_soft_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT fk_install_soft_id FOREIGN KEY (soft_id) REFERENCES public.soft(id);


--
-- Name: pcs fk_pcs_device_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT fk_pcs_device_id FOREIGN KEY (device_id) REFERENCES public.devices(id);


--
-- Name: pcs fk_pcs_room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT fk_pcs_room_id FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- Name: rooms fk_rooms_emp_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fk_rooms_emp_id FOREIGN KEY (emp_id) REFERENCES public.employees(id);


--
-- PostgreSQL database dump complete
--

