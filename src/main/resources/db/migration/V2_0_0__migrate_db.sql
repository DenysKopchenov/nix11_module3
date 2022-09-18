--
-- TOC entry 5 (class 2615 OID 28008)
-- Name: module_3; Type: SCHEMA; Schema: -; Owner: postgres
--

create SCHEMA IF NOT EXISTS module_3;




SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 32445)
-- Name: group; Type: TABLE; Schema: module_3; Owner: postgres
--

create TABLE module_3."group" (
    id character varying(255) NOT NULL,
    name character varying(255)
);




--
-- TOC entry 222 (class 1259 OID 32452)
-- Name: mark; Type: TABLE; Schema: module_3; Owner: postgres
--

create TABLE module_3.mark (
    id character varying(255) NOT NULL,
    mark integer NOT NULL,
    student_id character varying(255),
    subject_id character varying(255)
);




--
-- TOC entry 223 (class 1259 OID 32459)
-- Name: student; Type: TABLE; Schema: module_3; Owner: postgres
--

create TABLE module_3.student (
    id character varying(255) NOT NULL,
    admissiondate timestamp without time zone,
    age integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    group_id character varying(255)
);




--
-- TOC entry 224 (class 1259 OID 32466)
-- Name: subject; Type: TABLE; Schema: module_3; Owner: postgres
--

create TABLE module_3.subject (
    id character varying(255) NOT NULL,
    code integer NOT NULL,
    name character varying(255)
);




--
-- TOC entry 225 (class 1259 OID 32473)
-- Name: teacher; Type: TABLE; Schema: module_3; Owner: postgres
--

create TABLE module_3.teacher (
    id character varying(255) NOT NULL,
    age integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255)
);




--
-- TOC entry 226 (class 1259 OID 32480)
-- Name: teacher_subject; Type: TABLE; Schema: module_3; Owner: postgres
--

create TABLE module_3.teacher_subject (
    teacher_id character varying(255) NOT NULL,
    subject_id character varying(255) NOT NULL
);




--
-- TOC entry 3369 (class 0 OID 32445)
-- Dependencies: 221
-- Data for Name: group; Type: TABLE DATA; Schema: module_3; Owner: postgres
--

insert into module_3."group" (id, name) values ('d50e807b-03e3-4382-9c05-3fd1a6616cb3', 'OM1-21');
insert into module_3."group" (id, name) values ('57a32fd2-6926-4cba-985e-5b30b14fb19d', 'FM2-13');
insert into module_3."group" (id, name) values ('11c86a28-4cfa-4509-9ac1-4b9813d5fd0d', 'ST3-42');


--
-- TOC entry 3370 (class 0 OID 32452)
-- Dependencies: 222
-- Data for Name: mark; Type: TABLE DATA; Schema: module_3; Owner: postgres
--

insert into module_3.mark (id, mark, student_id, subject_id) values ('158b8a8b-0df5-43fe-bcc3-e2da5318a3ce', 13, '5ebe8830-aebe-44b4-81a9-698bc32c1f25', 'ded85231-f135-4977-88e8-2ff93f4004ad');
insert into module_3.mark (id, mark, student_id, subject_id) values ('aace1fd9-d80e-486e-b511-665ca11c530d', 18, '5ebe8830-aebe-44b4-81a9-698bc32c1f25', '838e80a1-373e-409c-87bf-696c1f54f48a');
insert into module_3.mark (id, mark, student_id, subject_id) values ('f9ac7232-e14c-471d-95b4-7e2228ca04c6', 5, '5ebe8830-aebe-44b4-81a9-698bc32c1f25', '2d5f04e9-5076-4b58-9803-92d624adfa9f');
insert into module_3.mark (id, mark, student_id, subject_id) values ('a479539d-9a2a-4743-a181-e0ef47779509', 64, '6c5796d1-c26a-4a04-9b2a-c6db6a3a7665', 'ded85231-f135-4977-88e8-2ff93f4004ad');
insert into module_3.mark (id, mark, student_id, subject_id) values ('d90cd5c1-f732-4670-ac7c-d28423f33380', 25, '6c5796d1-c26a-4a04-9b2a-c6db6a3a7665', '838e80a1-373e-409c-87bf-696c1f54f48a');
insert into module_3.mark (id, mark, student_id, subject_id) values ('ce207b0d-9cff-4666-adf7-1a564004d329', 32, '6c5796d1-c26a-4a04-9b2a-c6db6a3a7665', '2d5f04e9-5076-4b58-9803-92d624adfa9f');
insert into module_3.mark (id, mark, student_id, subject_id) values ('90974a5c-b4d1-4d7b-b1b0-348285d4e94a', 72, '344cf0d8-9650-429d-b9b3-3aac4b1d6888', 'ded85231-f135-4977-88e8-2ff93f4004ad');
insert into module_3.mark (id, mark, student_id, subject_id) values ('ba397e7f-dbb6-41f3-8a80-f3b3d9860817', 70, '344cf0d8-9650-429d-b9b3-3aac4b1d6888', '838e80a1-373e-409c-87bf-696c1f54f48a');
insert into module_3.mark (id, mark, student_id, subject_id) values ('d84d69db-5066-433d-a369-84fb2d4071ff', 13, '344cf0d8-9650-429d-b9b3-3aac4b1d6888', '2d5f04e9-5076-4b58-9803-92d624adfa9f');
insert into module_3.mark (id, mark, student_id, subject_id) values ('51b611b2-7162-4ef7-abc1-155c1bf3ac0b', 5, '0abcfa1e-bcc1-487e-ab2d-1bdd469aadb8', 'ded85231-f135-4977-88e8-2ff93f4004ad');
insert into module_3.mark (id, mark, student_id, subject_id) values ('7db20407-29e4-437d-9caa-21cadcd35faa', 21, '0abcfa1e-bcc1-487e-ab2d-1bdd469aadb8', '838e80a1-373e-409c-87bf-696c1f54f48a');
insert into module_3.mark (id, mark, student_id, subject_id) values ('c65ff98f-127d-4cd8-9460-7e02b646c286', 33, '0abcfa1e-bcc1-487e-ab2d-1bdd469aadb8', '2d5f04e9-5076-4b58-9803-92d624adfa9f');
insert into module_3.mark (id, mark, student_id, subject_id) values ('87ab87ba-23dc-46c9-b753-41a4bbcae2ff', 67, '2e730ab0-73e4-4af1-8f51-730ef5a5c81a', 'ded85231-f135-4977-88e8-2ff93f4004ad');
insert into module_3.mark (id, mark, student_id, subject_id) values ('d36ede8f-96e5-4597-aa3b-701e7a844244', 21, '2e730ab0-73e4-4af1-8f51-730ef5a5c81a', '838e80a1-373e-409c-87bf-696c1f54f48a');
insert into module_3.mark (id, mark, student_id, subject_id) values ('0e697e18-93f8-41f1-bed5-859a5ca00dcc', 64, '2e730ab0-73e4-4af1-8f51-730ef5a5c81a', '2d5f04e9-5076-4b58-9803-92d624adfa9f');
insert into module_3.mark (id, mark, student_id, subject_id) values ('0b940575-5d00-4cb8-84a5-7a5d3c25308b', 42, '54f6f0c0-44dc-4c9b-ab18-ce67ed169b4d', 'ded85231-f135-4977-88e8-2ff93f4004ad');
insert into module_3.mark (id, mark, student_id, subject_id) values ('86275dc3-df04-4dcd-8ca6-f34483baeb9a', 98, '54f6f0c0-44dc-4c9b-ab18-ce67ed169b4d', '838e80a1-373e-409c-87bf-696c1f54f48a');
insert into module_3.mark (id, mark, student_id, subject_id) values ('a4e2f280-9013-4325-a9d6-364b7c173ee3', 56, '54f6f0c0-44dc-4c9b-ab18-ce67ed169b4d', '2d5f04e9-5076-4b58-9803-92d624adfa9f');
insert into module_3.mark (id, mark, student_id, subject_id) values ('7c5b19f6-35fe-4463-91fd-fdf99ace7c37', 79, '352d887b-4db8-48cb-a1e6-d334345fbe99', 'ded85231-f135-4977-88e8-2ff93f4004ad');
insert into module_3.mark (id, mark, student_id, subject_id) values ('67c52c0a-e03f-4d99-a8da-2861dbaeb067', 2, '352d887b-4db8-48cb-a1e6-d334345fbe99', '838e80a1-373e-409c-87bf-696c1f54f48a');
insert into module_3.mark (id, mark, student_id, subject_id) values ('a0c3cc4d-a704-4895-8678-d29c80c93992', 23, '352d887b-4db8-48cb-a1e6-d334345fbe99', '2d5f04e9-5076-4b58-9803-92d624adfa9f');
insert into module_3.mark (id, mark, student_id, subject_id) values ('a76281a4-351e-4394-8f0e-c75f5332c42f', 62, 'c20e4215-9816-4823-b5a3-f1e7f96c7315', 'ded85231-f135-4977-88e8-2ff93f4004ad');
insert into module_3.mark (id, mark, student_id, subject_id) values ('b9819816-1c30-4a72-bde0-5d7bf5dc9060', 51, 'c20e4215-9816-4823-b5a3-f1e7f96c7315', '838e80a1-373e-409c-87bf-696c1f54f48a');
insert into module_3.mark (id, mark, student_id, subject_id) values ('d0d81ad8-298a-4eed-af6c-a5e970236112', 10, 'c20e4215-9816-4823-b5a3-f1e7f96c7315', '2d5f04e9-5076-4b58-9803-92d624adfa9f');
insert into module_3.mark (id, mark, student_id, subject_id) values ('0d497432-7c43-4599-80f9-5643968a6fac', 68, '9ef8044d-926a-4109-918b-5e34b80fc90a', 'ded85231-f135-4977-88e8-2ff93f4004ad');
insert into module_3.mark (id, mark, student_id, subject_id) values ('f2fb161e-69d6-46bf-8678-9df163469788', 83, '9ef8044d-926a-4109-918b-5e34b80fc90a', '838e80a1-373e-409c-87bf-696c1f54f48a');
insert into module_3.mark (id, mark, student_id, subject_id) values ('edbd1c57-7b4a-47ed-a4c3-5410ebc74c73', 41, '9ef8044d-926a-4109-918b-5e34b80fc90a', '2d5f04e9-5076-4b58-9803-92d624adfa9f');
insert into module_3.mark (id, mark, student_id, subject_id) values ('a10ba206-4d08-4a11-9026-de0abb653fcc', 59, '4c544f0f-5d2d-4ffd-9660-699a143cc7e1', 'ded85231-f135-4977-88e8-2ff93f4004ad');
insert into module_3.mark (id, mark, student_id, subject_id) values ('5383cea0-1035-464e-8f19-4f9e1818ef70', 68, '4c544f0f-5d2d-4ffd-9660-699a143cc7e1', '838e80a1-373e-409c-87bf-696c1f54f48a');
insert into module_3.mark (id, mark, student_id, subject_id) values ('1d94f4b0-62a0-421c-8a58-912bbbaf5d20', 47, '4c544f0f-5d2d-4ffd-9660-699a143cc7e1', '2d5f04e9-5076-4b58-9803-92d624adfa9f');
insert into module_3.mark (id, mark, student_id, subject_id) values ('8ffec7c1-644b-41e1-a468-2ff830e1e088', 17, '5f2b4050-3de6-4a19-943f-cd1f05e6b6f8', '7728ec26-563a-433b-9190-9d31f9883e97');
insert into module_3.mark (id, mark, student_id, subject_id) values ('2fc37d16-27d2-437d-8b32-2939b0b24248', 24, '5f2b4050-3de6-4a19-943f-cd1f05e6b6f8', 'aa641568-df97-4486-b1ce-0ba500c7ca58');
insert into module_3.mark (id, mark, student_id, subject_id) values ('aa12737b-0cb8-4a38-bd0b-ad23fd6c0378', 42, '5f2b4050-3de6-4a19-943f-cd1f05e6b6f8', '5ce678c7-2ee6-4bcc-9f75-5e7c65d5f841');
insert into module_3.mark (id, mark, student_id, subject_id) values ('aeeb5ebf-32c1-40f6-8a98-57b844040c83', 43, '3a59eadd-caaf-4995-84d7-480ab1f1778e', '7728ec26-563a-433b-9190-9d31f9883e97');
insert into module_3.mark (id, mark, student_id, subject_id) values ('79f42c42-fbc3-4852-9b2a-30b9cd24f9c1', 71, '3a59eadd-caaf-4995-84d7-480ab1f1778e', 'aa641568-df97-4486-b1ce-0ba500c7ca58');
insert into module_3.mark (id, mark, student_id, subject_id) values ('a8165746-33ed-4448-a919-84dae2d7f37d', 43, '3a59eadd-caaf-4995-84d7-480ab1f1778e', '5ce678c7-2ee6-4bcc-9f75-5e7c65d5f841');
insert into module_3.mark (id, mark, student_id, subject_id) values ('d90d152b-e1d3-4bba-b4f9-4d1ccd3c9b4d', 72, '74947bcf-5f31-44de-bc61-36ce5f1e19db', '7728ec26-563a-433b-9190-9d31f9883e97');
insert into module_3.mark (id, mark, student_id, subject_id) values ('da36f413-98ab-4d79-831b-0db8d3ea9433', 23, '74947bcf-5f31-44de-bc61-36ce5f1e19db', 'aa641568-df97-4486-b1ce-0ba500c7ca58');
insert into module_3.mark (id, mark, student_id, subject_id) values ('8ef63d1a-b56e-41b1-8408-8c7d9548095e', 5, '74947bcf-5f31-44de-bc61-36ce5f1e19db', '5ce678c7-2ee6-4bcc-9f75-5e7c65d5f841');
insert into module_3.mark (id, mark, student_id, subject_id) values ('1ad0b88e-e363-4df6-8685-17200831a90e', 45, '4dfd5689-f34b-4431-8646-7f5519df2a15', '7728ec26-563a-433b-9190-9d31f9883e97');
insert into module_3.mark (id, mark, student_id, subject_id) values ('65695860-b337-4e28-8be9-563b898f7816', 35, '4dfd5689-f34b-4431-8646-7f5519df2a15', 'aa641568-df97-4486-b1ce-0ba500c7ca58');
insert into module_3.mark (id, mark, student_id, subject_id) values ('26196861-6105-424b-9279-4ea4305b085b', 86, '4dfd5689-f34b-4431-8646-7f5519df2a15', '5ce678c7-2ee6-4bcc-9f75-5e7c65d5f841');
insert into module_3.mark (id, mark, student_id, subject_id) values ('75969885-2816-46d4-80d4-be90cb440200', 79, '197de7e3-0ee8-4660-bb7e-df71729cafbc', '7728ec26-563a-433b-9190-9d31f9883e97');
insert into module_3.mark (id, mark, student_id, subject_id) values ('762e9d7a-8f86-4986-acb4-b20d67b8453d', 68, '197de7e3-0ee8-4660-bb7e-df71729cafbc', 'aa641568-df97-4486-b1ce-0ba500c7ca58');
insert into module_3.mark (id, mark, student_id, subject_id) values ('30b8e231-d275-4614-8548-aa0c94335c8d', 13, '197de7e3-0ee8-4660-bb7e-df71729cafbc', '5ce678c7-2ee6-4bcc-9f75-5e7c65d5f841');
insert into module_3.mark (id, mark, student_id, subject_id) values ('419589f7-c982-4a76-a726-914190b4f095', 53, 'f9683416-5235-4b75-a8c7-86cc5a1db8da', '7728ec26-563a-433b-9190-9d31f9883e97');
insert into module_3.mark (id, mark, student_id, subject_id) values ('04037acd-55bb-4660-9c8c-ff36dff51645', 37, 'f9683416-5235-4b75-a8c7-86cc5a1db8da', 'aa641568-df97-4486-b1ce-0ba500c7ca58');
insert into module_3.mark (id, mark, student_id, subject_id) values ('1fca55f1-94c8-4026-a398-c2b7435fd820', 52, 'f9683416-5235-4b75-a8c7-86cc5a1db8da', '5ce678c7-2ee6-4bcc-9f75-5e7c65d5f841');
insert into module_3.mark (id, mark, student_id, subject_id) values ('2700993e-8c74-4dfc-b580-1b79bbcaf8c0', 6, 'cb13a0b4-6166-45d2-ba2d-5e9fc8e58b2f', '7728ec26-563a-433b-9190-9d31f9883e97');
insert into module_3.mark (id, mark, student_id, subject_id) values ('6f263f54-67d9-4baa-b142-9f301115cc6c', 68, 'cb13a0b4-6166-45d2-ba2d-5e9fc8e58b2f', 'aa641568-df97-4486-b1ce-0ba500c7ca58');
insert into module_3.mark (id, mark, student_id, subject_id) values ('9c8fe9b1-63a2-4fba-9ce1-e8a36e9cf3d5', 44, 'cb13a0b4-6166-45d2-ba2d-5e9fc8e58b2f', '5ce678c7-2ee6-4bcc-9f75-5e7c65d5f841');
insert into module_3.mark (id, mark, student_id, subject_id) values ('34f86d41-adbe-4de0-acbc-f401190972dc', 37, '1f859587-e92b-46e7-95df-3a882120e144', '7728ec26-563a-433b-9190-9d31f9883e97');
insert into module_3.mark (id, mark, student_id, subject_id) values ('3da6df2e-3161-4379-ae50-4ec9a10cd9d5', 67, '1f859587-e92b-46e7-95df-3a882120e144', 'aa641568-df97-4486-b1ce-0ba500c7ca58');
insert into module_3.mark (id, mark, student_id, subject_id) values ('2c2b2a4d-fb24-4662-bba9-1269c8cf7ebd', 60, '1f859587-e92b-46e7-95df-3a882120e144', '5ce678c7-2ee6-4bcc-9f75-5e7c65d5f841');
insert into module_3.mark (id, mark, student_id, subject_id) values ('58c66e34-98a8-41a1-a697-3e2f833785a1', 57, '9a48e767-a835-4e82-8bae-4c62ea2faac0', '7728ec26-563a-433b-9190-9d31f9883e97');
insert into module_3.mark (id, mark, student_id, subject_id) values ('20a8ea90-8692-47a9-9884-37e0e42dd463', 27, '9a48e767-a835-4e82-8bae-4c62ea2faac0', 'aa641568-df97-4486-b1ce-0ba500c7ca58');
insert into module_3.mark (id, mark, student_id, subject_id) values ('af0d51d1-9d5e-4a6e-a344-3c389e6d401b', 96, '9a48e767-a835-4e82-8bae-4c62ea2faac0', '5ce678c7-2ee6-4bcc-9f75-5e7c65d5f841');
insert into module_3.mark (id, mark, student_id, subject_id) values ('ff527f6c-d81c-4d03-90fa-d174ee6c8c67', 52, '3071f2f4-e3c9-43fd-a53d-d8748d7ff409', '7728ec26-563a-433b-9190-9d31f9883e97');
insert into module_3.mark (id, mark, student_id, subject_id) values ('3355e065-bcdc-4b0e-9536-b8264ce6b3be', 62, '3071f2f4-e3c9-43fd-a53d-d8748d7ff409', 'aa641568-df97-4486-b1ce-0ba500c7ca58');
insert into module_3.mark (id, mark, student_id, subject_id) values ('d6b1188c-d5ed-4b0c-8774-4567d3c06ba1', 5, '3071f2f4-e3c9-43fd-a53d-d8748d7ff409', '5ce678c7-2ee6-4bcc-9f75-5e7c65d5f841');
insert into module_3.mark (id, mark, student_id, subject_id) values ('97155fd5-4706-40aa-b297-86449025ed85', 27, '870eb76a-6a68-41a6-84d5-8915b3408d91', 'e0645357-ff97-4bc5-8f7e-ed56df8e9bf8');
insert into module_3.mark (id, mark, student_id, subject_id) values ('744c5e0e-3d96-4698-9bd6-a6ca2e9853bc', 60, '870eb76a-6a68-41a6-84d5-8915b3408d91', '8d127fd0-e3e7-4621-b018-34f0391c55b3');
insert into module_3.mark (id, mark, student_id, subject_id) values ('12c76e77-ab99-4703-8901-c6d4c2125f05', 50, '870eb76a-6a68-41a6-84d5-8915b3408d91', '0c4c8d68-d807-4f08-b8b9-9debae92b909');
insert into module_3.mark (id, mark, student_id, subject_id) values ('47ed8290-e3df-4e34-8c97-ae6afffb414c', 7, '20a062e9-172a-408a-9f5b-aa8e1fad1a12', 'e0645357-ff97-4bc5-8f7e-ed56df8e9bf8');
insert into module_3.mark (id, mark, student_id, subject_id) values ('c48c2d6d-6b09-4090-8ad1-2ccdfe729190', 35, '20a062e9-172a-408a-9f5b-aa8e1fad1a12', '8d127fd0-e3e7-4621-b018-34f0391c55b3');
insert into module_3.mark (id, mark, student_id, subject_id) values ('2fa58a43-f717-40b9-b20d-2fa2daceaaf1', 55, '20a062e9-172a-408a-9f5b-aa8e1fad1a12', '0c4c8d68-d807-4f08-b8b9-9debae92b909');
insert into module_3.mark (id, mark, student_id, subject_id) values ('e3bf0f80-1c9c-4774-b718-843e1dec0abc', 34, '09a70bd9-bece-436d-bc32-a33c4f4e03bb', 'e0645357-ff97-4bc5-8f7e-ed56df8e9bf8');
insert into module_3.mark (id, mark, student_id, subject_id) values ('3aea40c9-5925-4564-997b-54f4bc15e4e0', 79, '09a70bd9-bece-436d-bc32-a33c4f4e03bb', '8d127fd0-e3e7-4621-b018-34f0391c55b3');
insert into module_3.mark (id, mark, student_id, subject_id) values ('b1b4073c-8c0e-4835-ba24-57817f71f844', 2, '09a70bd9-bece-436d-bc32-a33c4f4e03bb', '0c4c8d68-d807-4f08-b8b9-9debae92b909');
insert into module_3.mark (id, mark, student_id, subject_id) values ('fd063d42-ac67-44d9-bbbc-6404748a9d5e', 34, '2c366039-9a04-4747-8a07-cb26e5e1ed31', 'e0645357-ff97-4bc5-8f7e-ed56df8e9bf8');
insert into module_3.mark (id, mark, student_id, subject_id) values ('0297607f-9a3e-48b3-91e6-9c82600e60e7', 40, '2c366039-9a04-4747-8a07-cb26e5e1ed31', '8d127fd0-e3e7-4621-b018-34f0391c55b3');
insert into module_3.mark (id, mark, student_id, subject_id) values ('ca554d00-0028-4f3e-9fc6-9019973cd507', 91, '2c366039-9a04-4747-8a07-cb26e5e1ed31', '0c4c8d68-d807-4f08-b8b9-9debae92b909');
insert into module_3.mark (id, mark, student_id, subject_id) values ('40efe25e-d06f-477e-b062-acff340637e1', 91, 'cee879c8-ce29-4c17-baca-0d35e41d2d8d', 'e0645357-ff97-4bc5-8f7e-ed56df8e9bf8');
insert into module_3.mark (id, mark, student_id, subject_id) values ('007cc422-ba2e-43c7-bbfb-1b4037ea08a9', 45, 'cee879c8-ce29-4c17-baca-0d35e41d2d8d', '8d127fd0-e3e7-4621-b018-34f0391c55b3');
insert into module_3.mark (id, mark, student_id, subject_id) values ('20d60c9f-d53c-4e67-9b79-ffd71171ee1f', 69, 'cee879c8-ce29-4c17-baca-0d35e41d2d8d', '0c4c8d68-d807-4f08-b8b9-9debae92b909');
insert into module_3.mark (id, mark, student_id, subject_id) values ('0ef5096a-774f-48a2-9c99-44a579ad4fea', 36, '5d3d609e-3512-42d5-98a4-9e518985fabd', 'e0645357-ff97-4bc5-8f7e-ed56df8e9bf8');
insert into module_3.mark (id, mark, student_id, subject_id) values ('06c405b2-95ec-4094-a3b9-612a475ceef2', 8, '5d3d609e-3512-42d5-98a4-9e518985fabd', '8d127fd0-e3e7-4621-b018-34f0391c55b3');
insert into module_3.mark (id, mark, student_id, subject_id) values ('0e639a93-0283-4933-9dd8-ca6105a394de', 57, '5d3d609e-3512-42d5-98a4-9e518985fabd', '0c4c8d68-d807-4f08-b8b9-9debae92b909');
insert into module_3.mark (id, mark, student_id, subject_id) values ('7c4bd95d-3108-4b52-96f5-e27f2ce95438', 61, 'b4c92fd5-559c-46e3-91f3-61f7e6a1b192', 'e0645357-ff97-4bc5-8f7e-ed56df8e9bf8');
insert into module_3.mark (id, mark, student_id, subject_id) values ('f9072ce6-4c77-4765-b159-958e0965faf4', 22, 'b4c92fd5-559c-46e3-91f3-61f7e6a1b192', '8d127fd0-e3e7-4621-b018-34f0391c55b3');
insert into module_3.mark (id, mark, student_id, subject_id) values ('a8614537-8eaf-4dac-ae87-c88b637e8a63', 7, 'b4c92fd5-559c-46e3-91f3-61f7e6a1b192', '0c4c8d68-d807-4f08-b8b9-9debae92b909');
insert into module_3.mark (id, mark, student_id, subject_id) values ('a9cd5c08-90c5-4625-a677-0c43ff342cf6', 2, '9b33a111-2fb0-405b-ad2b-5266f837fc18', 'e0645357-ff97-4bc5-8f7e-ed56df8e9bf8');
insert into module_3.mark (id, mark, student_id, subject_id) values ('70eaf784-bdb4-4f69-8798-fb59006f8cc1', 54, '9b33a111-2fb0-405b-ad2b-5266f837fc18', '8d127fd0-e3e7-4621-b018-34f0391c55b3');
insert into module_3.mark (id, mark, student_id, subject_id) values ('0d070622-1a53-4d23-9c93-c4448a2416ad', 77, '9b33a111-2fb0-405b-ad2b-5266f837fc18', '0c4c8d68-d807-4f08-b8b9-9debae92b909');
insert into module_3.mark (id, mark, student_id, subject_id) values ('f0ec75e0-8773-4d17-8f6d-8f740c825982', 73, '1767cf55-0912-4115-afb3-7267191ca834', 'e0645357-ff97-4bc5-8f7e-ed56df8e9bf8');
insert into module_3.mark (id, mark, student_id, subject_id) values ('3fd90fea-0859-44f5-bf7a-64ba17a97436', 65, '1767cf55-0912-4115-afb3-7267191ca834', '8d127fd0-e3e7-4621-b018-34f0391c55b3');
insert into module_3.mark (id, mark, student_id, subject_id) values ('075bec8b-0611-4f1e-879c-752c937d6575', 53, '1767cf55-0912-4115-afb3-7267191ca834', '0c4c8d68-d807-4f08-b8b9-9debae92b909');
insert into module_3.mark (id, mark, student_id, subject_id) values ('b48718f6-0d16-4b60-9061-5566138501f8', 62, 'e3986ff4-4754-4bda-be46-1fedc8a6a7a1', 'e0645357-ff97-4bc5-8f7e-ed56df8e9bf8');
insert into module_3.mark (id, mark, student_id, subject_id) values ('dd606a46-93a4-4304-ba77-80a7903ab5f1', 7, 'e3986ff4-4754-4bda-be46-1fedc8a6a7a1', '8d127fd0-e3e7-4621-b018-34f0391c55b3');
insert into module_3.mark (id, mark, student_id, subject_id) values ('03687db2-24da-4b96-a8d4-bf8a00358e4e', 94, 'e3986ff4-4754-4bda-be46-1fedc8a6a7a1', '0c4c8d68-d807-4f08-b8b9-9debae92b909');


--
-- TOC entry 3371 (class 0 OID 32459)
-- Dependencies: 223
-- Data for Name: student; Type: TABLE DATA; Schema: module_3; Owner: postgres
--

insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('5ebe8830-aebe-44b4-81a9-698bc32c1f25', '2022-09-04 11:04:06.291257', 27, 'Ihor', 'Derevyanko', 'd50e807b-03e3-4382-9c05-3fd1a6616cb3');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('6c5796d1-c26a-4a04-9b2a-c6db6a3a7665', '2022-09-04 11:04:06.294257', 30, 'Anna', 'Borodenko', 'd50e807b-03e3-4382-9c05-3fd1a6616cb3');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('344cf0d8-9650-429d-b9b3-3aac4b1d6888', '2022-09-04 11:04:06.295255', 19, 'Oleh', 'Kirimov', 'd50e807b-03e3-4382-9c05-3fd1a6616cb3');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('0abcfa1e-bcc1-487e-ab2d-1bdd469aadb8', '2022-09-04 11:04:06.295255', 20, 'Vasilyi', 'Timoshin', 'd50e807b-03e3-4382-9c05-3fd1a6616cb3');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('2e730ab0-73e4-4af1-8f51-730ef5a5c81a', '2022-09-04 11:04:06.295255', 29, 'Mariia', 'Dudka', 'd50e807b-03e3-4382-9c05-3fd1a6616cb3');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('54f6f0c0-44dc-4c9b-ab18-ce67ed169b4d', '2022-09-04 11:04:06.296253', 19, 'Daria', 'Kurtiy', 'd50e807b-03e3-4382-9c05-3fd1a6616cb3');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('352d887b-4db8-48cb-a1e6-d334345fbe99', '2022-09-04 11:04:06.296253', 27, 'Oksana', 'Levko', 'd50e807b-03e3-4382-9c05-3fd1a6616cb3');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('c20e4215-9816-4823-b5a3-f1e7f96c7315', '2022-09-04 11:04:06.297254', 29, 'Maksym', 'Bojenko', 'd50e807b-03e3-4382-9c05-3fd1a6616cb3');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('9ef8044d-926a-4109-918b-5e34b80fc90a', '2022-09-04 11:04:06.297254', 34, 'Andrei', 'Fedorov', 'd50e807b-03e3-4382-9c05-3fd1a6616cb3');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('4c544f0f-5d2d-4ffd-9660-699a143cc7e1', '2022-09-04 11:04:06.297254', 25, 'Fahid', 'Samutim', 'd50e807b-03e3-4382-9c05-3fd1a6616cb3');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('5f2b4050-3de6-4a19-943f-cd1f05e6b6f8', '2022-09-04 11:04:06.362259', 19, 'Viktor', 'Podzin', '57a32fd2-6926-4cba-985e-5b30b14fb19d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('3a59eadd-caaf-4995-84d7-480ab1f1778e', '2022-09-04 11:04:06.363256', 20, 'Alina', 'Aloyan', '57a32fd2-6926-4cba-985e-5b30b14fb19d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('74947bcf-5f31-44de-bc61-36ce5f1e19db', '2022-09-04 11:04:06.364254', 29, 'Inna', 'Yakovenko', '57a32fd2-6926-4cba-985e-5b30b14fb19d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('4dfd5689-f34b-4431-8646-7f5519df2a15', '2022-09-04 11:04:06.364254', 22, 'Voktoriya', 'Khomenko', '57a32fd2-6926-4cba-985e-5b30b14fb19d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('197de7e3-0ee8-4660-bb7e-df71729cafbc', '2022-09-04 11:04:06.364254', 23, 'Lidiya', 'Nahurna', '57a32fd2-6926-4cba-985e-5b30b14fb19d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('f9683416-5235-4b75-a8c7-86cc5a1db8da', '2022-09-04 11:04:06.365259', 22, 'Serhii', 'Kovalchyk', '57a32fd2-6926-4cba-985e-5b30b14fb19d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('cb13a0b4-6166-45d2-ba2d-5e9fc8e58b2f', '2022-09-04 11:04:06.365259', 21, 'Dmytro', 'Sereda', '57a32fd2-6926-4cba-985e-5b30b14fb19d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('1f859587-e92b-46e7-95df-3a882120e144', '2022-09-04 11:04:06.366256', 25, 'Ihor', 'Gnatyk', '57a32fd2-6926-4cba-985e-5b30b14fb19d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('9a48e767-a835-4e82-8bae-4c62ea2faac0', '2022-09-04 11:04:06.366256', 30, 'Kira', 'Filipova', '57a32fd2-6926-4cba-985e-5b30b14fb19d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('3071f2f4-e3c9-43fd-a53d-d8748d7ff409', '2022-09-04 11:04:06.367259', 27, 'Viktoriya', 'Doroga', '57a32fd2-6926-4cba-985e-5b30b14fb19d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('870eb76a-6a68-41a6-84d5-8915b3408d91', '2022-09-04 11:04:06.413258', 24, 'Tetiana', 'Petrenko', '11c86a28-4cfa-4509-9ac1-4b9813d5fd0d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('20a062e9-172a-408a-9f5b-aa8e1fad1a12', '2022-09-04 11:04:06.414256', 18, 'Oleksandr', 'Kachurovskiy', '11c86a28-4cfa-4509-9ac1-4b9813d5fd0d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('09a70bd9-bece-436d-bc32-a33c4f4e03bb', '2022-09-04 11:04:06.415255', 34, 'Daniil', 'Damov', '11c86a28-4cfa-4509-9ac1-4b9813d5fd0d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('2c366039-9a04-4747-8a07-cb26e5e1ed31', '2022-09-04 11:04:06.415255', 29, 'Kyrylo', 'Rudnev', '11c86a28-4cfa-4509-9ac1-4b9813d5fd0d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('cee879c8-ce29-4c17-baca-0d35e41d2d8d', '2022-09-04 11:04:06.415255', 28, 'Roman', 'Tislyk', '11c86a28-4cfa-4509-9ac1-4b9813d5fd0d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('5d3d609e-3512-42d5-98a4-9e518985fabd', '2022-09-04 11:04:06.416256', 24, 'Andrii', 'Suhanov', '11c86a28-4cfa-4509-9ac1-4b9813d5fd0d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('b4c92fd5-559c-46e3-91f3-61f7e6a1b192', '2022-09-04 11:04:06.416256', 33, 'Maksym', 'Surgatov', '11c86a28-4cfa-4509-9ac1-4b9813d5fd0d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('9b33a111-2fb0-405b-ad2b-5266f837fc18', '2022-09-04 11:04:06.416256', 26, 'Hanna', 'Galytska', '11c86a28-4cfa-4509-9ac1-4b9813d5fd0d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('1767cf55-0912-4115-afb3-7267191ca834', '2022-09-04 11:04:06.417255', 34, 'Olena', 'Stopareva', '11c86a28-4cfa-4509-9ac1-4b9813d5fd0d');
insert into module_3.student (id, admissiondate, age, firstname, lastname, group_id) values ('e3986ff4-4754-4bda-be46-1fedc8a6a7a1', '2022-09-04 11:04:06.417255', 33, 'Volodymyr', 'Motronov', '11c86a28-4cfa-4509-9ac1-4b9813d5fd0d');


--
-- TOC entry 3372 (class 0 OID 32466)
-- Dependencies: 224
-- Data for Name: subject; Type: TABLE DATA; Schema: module_3; Owner: postgres
--

insert into module_3.subject (id, code, name) values ('ded85231-f135-4977-88e8-2ff93f4004ad', 1635, 'Higher mathematics');
insert into module_3.subject (id, code, name) values ('838e80a1-373e-409c-87bf-696c1f54f48a', 6179, 'Theoretical mechanics ');
insert into module_3.subject (id, code, name) values ('2d5f04e9-5076-4b58-9803-92d624adfa9f', 1187, 'Mechanization and automation');
insert into module_3.subject (id, code, name) values ('7728ec26-563a-433b-9190-9d31f9883e97', 1103, 'Science of low');
insert into module_3.subject (id, code, name) values ('aa641568-df97-4486-b1ce-0ba500c7ca58', 1513, 'Thermotechnics');
insert into module_3.subject (id, code, name) values ('5ce678c7-2ee6-4bcc-9f75-5e7c65d5f841', 1634, 'Physics');
insert into module_3.subject (id, code, name) values ('e0645357-ff97-4bc5-8f7e-ed56df8e9bf8', 2720, 'Chemistry');
insert into module_3.subject (id, code, name) values ('8d127fd0-e3e7-4621-b018-34f0391c55b3', 2057, 'Language of professional education');
insert into module_3.subject (id, code, name) values ('0c4c8d68-d807-4f08-b8b9-9debae92b909', 1250, 'Ecology');
insert into module_3.subject (id, code, name) values ('0fc90f02-d05d-40c6-96d8-559f2c98e79f', 8456, 'Law');
insert into module_3.subject (id, code, name) values ('195c4a6f-9b25-4c9a-9980-be33a3dd6c54', 15038, 'History');
insert into module_3.subject (id, code, name) values ('81a8f68f-b9da-444c-bb5f-2f291502b4e6', 2017, 'Economy');


--
-- TOC entry 3373 (class 0 OID 32473)
-- Dependencies: 225
-- Data for Name: teacher; Type: TABLE DATA; Schema: module_3; Owner: postgres
--

insert into module_3.teacher (id, age, firstname, lastname) values ('7f87ed47-305d-4f98-a98b-278ecd4ca0df', 28, 'Vitaliy', 'Shapko');
insert into module_3.teacher (id, age, firstname, lastname) values ('23bd4bb4-eb9f-4e54-814a-03981066aed2', 30, 'Olena', 'Fedorova');
insert into module_3.teacher (id, age, firstname, lastname) values ('66377714-3767-4276-8d42-cd24a22c296d', 24, 'Andriy', 'Ivaniuk');


--
-- TOC entry 3374 (class 0 OID 32480)
-- Dependencies: 226
-- Data for Name: teacher_subject; Type: TABLE DATA; Schema: module_3; Owner: postgres
--

insert into module_3.teacher_subject (teacher_id, subject_id) values ('7f87ed47-305d-4f98-a98b-278ecd4ca0df', '0fc90f02-d05d-40c6-96d8-559f2c98e79f');
insert into module_3.teacher_subject (teacher_id, subject_id) values ('7f87ed47-305d-4f98-a98b-278ecd4ca0df', '195c4a6f-9b25-4c9a-9980-be33a3dd6c54');
insert into module_3.teacher_subject (teacher_id, subject_id) values ('7f87ed47-305d-4f98-a98b-278ecd4ca0df', '81a8f68f-b9da-444c-bb5f-2f291502b4e6');
insert into module_3.teacher_subject (teacher_id, subject_id) values ('23bd4bb4-eb9f-4e54-814a-03981066aed2', '0fc90f02-d05d-40c6-96d8-559f2c98e79f');
insert into module_3.teacher_subject (teacher_id, subject_id) values ('23bd4bb4-eb9f-4e54-814a-03981066aed2', '195c4a6f-9b25-4c9a-9980-be33a3dd6c54');
insert into module_3.teacher_subject (teacher_id, subject_id) values ('23bd4bb4-eb9f-4e54-814a-03981066aed2', '81a8f68f-b9da-444c-bb5f-2f291502b4e6');
insert into module_3.teacher_subject (teacher_id, subject_id) values ('66377714-3767-4276-8d42-cd24a22c296d', '0fc90f02-d05d-40c6-96d8-559f2c98e79f');
insert into module_3.teacher_subject (teacher_id, subject_id) values ('66377714-3767-4276-8d42-cd24a22c296d', '195c4a6f-9b25-4c9a-9980-be33a3dd6c54');
insert into module_3.teacher_subject (teacher_id, subject_id) values ('66377714-3767-4276-8d42-cd24a22c296d', '81a8f68f-b9da-444c-bb5f-2f291502b4e6');


--
-- TOC entry 3214 (class 2606 OID 32451)
-- Name: group group_pkey; Type: CONSTRAINT; Schema: module_3; Owner: postgres
--

alter table ONLY module_3."group"
    ADD CONSTRAINT group_pkey PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 32458)
-- Name: mark mark_pkey; Type: CONSTRAINT; Schema: module_3; Owner: postgres
--

alter table ONLY module_3.mark
    ADD CONSTRAINT mark_pkey PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 32465)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: module_3; Owner: postgres
--

alter table ONLY module_3.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- TOC entry 3220 (class 2606 OID 32472)
-- Name: subject subject_pkey; Type: CONSTRAINT; Schema: module_3; Owner: postgres
--

alter table ONLY module_3.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 32479)
-- Name: teacher teacher_pkey; Type: CONSTRAINT; Schema: module_3; Owner: postgres
--

alter table ONLY module_3.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 32486)
-- Name: teacher_subject teacher_subject_pkey; Type: CONSTRAINT; Schema: module_3; Owner: postgres
--

alter table ONLY module_3.teacher_subject
    ADD CONSTRAINT teacher_subject_pkey PRIMARY KEY (teacher_id, subject_id);


--
-- TOC entry 3227 (class 2606 OID 32497)
-- Name: student fk5kspkxpk3g2whr85g2f4di0gl; Type: FK CONSTRAINT; Schema: module_3; Owner: postgres
--

alter table ONLY module_3.student
    ADD CONSTRAINT fk5kspkxpk3g2whr85g2f4di0gl FOREIGN KEY (group_id) REFERENCES module_3."group"(id);


--
-- TOC entry 3226 (class 2606 OID 32492)
-- Name: mark fk9d6a1x40ls199ooga5ph7nrhf; Type: FK CONSTRAINT; Schema: module_3; Owner: postgres
--

alter table ONLY module_3.mark
    ADD CONSTRAINT fk9d6a1x40ls199ooga5ph7nrhf FOREIGN KEY (subject_id) REFERENCES module_3.subject(id);


--
-- TOC entry 3229 (class 2606 OID 32507)
-- Name: teacher_subject fkip5jo52lq96svekl6yv4d175h; Type: FK CONSTRAINT; Schema: module_3; Owner: postgres
--

alter table ONLY module_3.teacher_subject
    ADD CONSTRAINT fkip5jo52lq96svekl6yv4d175h FOREIGN KEY (teacher_id) REFERENCES module_3.teacher(id);


--
-- TOC entry 3225 (class 2606 OID 32487)
-- Name: mark fkm4o7m5fgtpve3u4cit85sch1n; Type: FK CONSTRAINT; Schema: module_3; Owner: postgres
--

alter table ONLY module_3.mark
    ADD CONSTRAINT fkm4o7m5fgtpve3u4cit85sch1n FOREIGN KEY (student_id) REFERENCES module_3.student(id);


--
-- TOC entry 3228 (class 2606 OID 32502)
-- Name: teacher_subject fkqxdcbn185ore301wc43bkr2au; Type: FK CONSTRAINT; Schema: module_3; Owner: postgres
--

alter table ONLY module_3.teacher_subject
    ADD CONSTRAINT fkqxdcbn185ore301wc43bkr2au FOREIGN KEY (subject_id) REFERENCES module_3.subject(id);


-- Completed on 2022-09-04 11:06:51

--
-- PostgreSQL database dump complete
--

