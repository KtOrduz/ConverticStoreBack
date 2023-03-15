--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12
-- Dumped by pg_dump version 12.12

-- Started on 2023-03-14 19:27:04

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2956 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 49475)
-- Name: ciudades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciudades (
    id_ciudad integer NOT NULL,
    ciudad character varying(20) NOT NULL
);


ALTER TABLE public.ciudades OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 49473)
-- Name: ciudades_id_ciudad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ciudades_id_ciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ciudades_id_ciudad_seq OWNER TO postgres;

--
-- TOC entry 2957 (class 0 OID 0)
-- Dependencies: 222
-- Name: ciudades_id_ciudad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ciudades_id_ciudad_seq OWNED BY public.ciudades.id_ciudad;


--
-- TOC entry 211 (class 1259 OID 49375)
-- Name: colores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colores (
    color character varying(20) NOT NULL,
    id_color integer NOT NULL
);


ALTER TABLE public.colores OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 49445)
-- Name: color_id_color_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.color_id_color_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.color_id_color_seq OWNER TO postgres;

--
-- TOC entry 2958 (class 0 OID 0)
-- Dependencies: 220
-- Name: color_id_color_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.color_id_color_seq OWNED BY public.colores.id_color;


--
-- TOC entry 215 (class 1259 OID 49395)
-- Name: datos_envio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datos_envio (
    id_envio integer NOT NULL,
    direccion character varying(20) NOT NULL,
    telefono character varying(20) NOT NULL,
    correo character varying(20) NOT NULL,
    id_ciudad integer NOT NULL
);


ALTER TABLE public.datos_envio OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 49393)
-- Name: datos_envio_id_envio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.datos_envio_id_envio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datos_envio_id_envio_seq OWNER TO postgres;

--
-- TOC entry 2959 (class 0 OID 0)
-- Dependencies: 214
-- Name: datos_envio_id_envio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.datos_envio_id_envio_seq OWNED BY public.datos_envio.id_envio;


--
-- TOC entry 210 (class 1259 OID 49364)
-- Name: marcas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marcas (
    id_marca integer NOT NULL,
    marca character varying NOT NULL
);


ALTER TABLE public.marcas OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 49362)
-- Name: marca_id_marca_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marca_id_marca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marca_id_marca_seq OWNER TO postgres;

--
-- TOC entry 2960 (class 0 OID 0)
-- Dependencies: 209
-- Name: marca_id_marca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marca_id_marca_seq OWNED BY public.marcas.id_marca;


--
-- TOC entry 219 (class 1259 OID 49423)
-- Name: menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menu (
    id_menu integer NOT NULL,
    nombre character varying(20) NOT NULL,
    codigo integer NOT NULL
);


ALTER TABLE public.menu OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 49421)
-- Name: menu_id_menu_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menu_id_menu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_id_menu_seq OWNER TO postgres;

--
-- TOC entry 2961 (class 0 OID 0)
-- Dependencies: 218
-- Name: menu_id_menu_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menu_id_menu_seq OWNED BY public.menu.id_menu;


--
-- TOC entry 207 (class 1259 OID 49350)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    producto character varying NOT NULL,
    id_seccion integer NOT NULL,
    descripcion character varying(80) NOT NULL,
    id_marca integer NOT NULL,
    id_color integer NOT NULL,
    id_talla integer NOT NULL,
    valor_unitario double precision NOT NULL,
    imagen character varying(200) NOT NULL,
    cantidad integer NOT NULL
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 49348)
-- Name: productos_id_produto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_id_produto_seq OWNER TO postgres;

--
-- TOC entry 2962 (class 0 OID 0)
-- Dependencies: 206
-- Name: productos_id_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_produto_seq OWNED BY public.productos.id_producto;


--
-- TOC entry 217 (class 1259 OID 49418)
-- Name: productos_mas_buscados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos_mas_buscados (
    id_producto integer NOT NULL,
    cantidad_visitas integer NOT NULL,
    id_productos_buscados integer NOT NULL
);


ALTER TABLE public.productos_mas_buscados OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 49500)
-- Name: productos_mas_buscados_id_productos_buscados_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_mas_buscados_id_productos_buscados_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_mas_buscados_id_productos_buscados_seq OWNER TO postgres;

--
-- TOC entry 2963 (class 0 OID 0)
-- Dependencies: 224
-- Name: productos_mas_buscados_id_productos_buscados_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_mas_buscados_id_productos_buscados_seq OWNED BY public.productos_mas_buscados.id_productos_buscados;


--
-- TOC entry 202 (class 1259 OID 49327)
-- Name: registro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.registro (
    n_documento character varying(20) NOT NULL,
    nombres character varying(80) NOT NULL,
    apellidos character varying(80) NOT NULL,
    correo_electronico character varying(50) NOT NULL,
    contrasenna character varying(20) NOT NULL,
    id_documento integer NOT NULL,
    id_registro integer NOT NULL
);


ALTER TABLE public.registro OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 74178)
-- Name: registro_id_registro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.registro_id_registro_seq
    AS integer
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.registro_id_registro_seq OWNER TO postgres;

--
-- TOC entry 2964 (class 0 OID 0)
-- Dependencies: 225
-- Name: registro_id_registro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.registro_id_registro_seq OWNED BY public.registro.id_registro;


--
-- TOC entry 205 (class 1259 OID 49342)
-- Name: secciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.secciones (
    id_seccion integer NOT NULL,
    seccion character varying(20) NOT NULL
);


ALTER TABLE public.secciones OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 49340)
-- Name: seccion_id_seccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seccion_id_seccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seccion_id_seccion_seq OWNER TO postgres;

--
-- TOC entry 2965 (class 0 OID 0)
-- Dependencies: 204
-- Name: seccion_id_seccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seccion_id_seccion_seq OWNED BY public.secciones.id_seccion;


--
-- TOC entry 208 (class 1259 OID 49358)
-- Name: tallas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tallas (
    talla character varying(20) NOT NULL,
    id_talla integer NOT NULL
);


ALTER TABLE public.tallas OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 49459)
-- Name: talla_id_tallar_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.talla_id_tallar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.talla_id_tallar_seq OWNER TO postgres;

--
-- TOC entry 2966 (class 0 OID 0)
-- Dependencies: 221
-- Name: talla_id_tallar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.talla_id_tallar_seq OWNED BY public.tallas.id_talla;


--
-- TOC entry 203 (class 1259 OID 49333)
-- Name: tipo_documento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_documento (
    documento character varying NOT NULL,
    id_documento integer NOT NULL
);


ALTER TABLE public.tipo_documento OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 49401)
-- Name: tipo_documento_id_documento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_documento_id_documento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_documento_id_documento_seq OWNER TO postgres;

--
-- TOC entry 2967 (class 0 OID 0)
-- Dependencies: 216
-- Name: tipo_documento_id_documento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_documento_id_documento_seq OWNED BY public.tipo_documento.id_documento;


--
-- TOC entry 213 (class 1259 OID 49381)
-- Name: ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventas (
    id_ventas integer NOT NULL,
    id_producto integer NOT NULL,
    catidad integer NOT NULL,
    valor_total integer NOT NULL,
    id_envio integer NOT NULL,
    id_registro integer NOT NULL
);


ALTER TABLE public.ventas OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 49379)
-- Name: ventas_id_ventas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventas_id_ventas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ventas_id_ventas_seq OWNER TO postgres;

--
-- TOC entry 2968 (class 0 OID 0)
-- Dependencies: 212
-- Name: ventas_id_ventas_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventas_id_ventas_seq OWNED BY public.ventas.id_ventas;


--
-- TOC entry 2767 (class 2604 OID 49478)
-- Name: ciudades id_ciudad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudades ALTER COLUMN id_ciudad SET DEFAULT nextval('public.ciudades_id_ciudad_seq'::regclass);


--
-- TOC entry 2762 (class 2604 OID 49447)
-- Name: colores id_color; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colores ALTER COLUMN id_color SET DEFAULT nextval('public.color_id_color_seq'::regclass);


--
-- TOC entry 2764 (class 2604 OID 49398)
-- Name: datos_envio id_envio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_envio ALTER COLUMN id_envio SET DEFAULT nextval('public.datos_envio_id_envio_seq'::regclass);


--
-- TOC entry 2761 (class 2604 OID 49367)
-- Name: marcas id_marca; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas ALTER COLUMN id_marca SET DEFAULT nextval('public.marca_id_marca_seq'::regclass);


--
-- TOC entry 2766 (class 2604 OID 49426)
-- Name: menu id_menu; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu ALTER COLUMN id_menu SET DEFAULT nextval('public.menu_id_menu_seq'::regclass);


--
-- TOC entry 2759 (class 2604 OID 49353)
-- Name: productos id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_produto_seq'::regclass);


--
-- TOC entry 2765 (class 2604 OID 49502)
-- Name: productos_mas_buscados id_productos_buscados; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_mas_buscados ALTER COLUMN id_productos_buscados SET DEFAULT nextval('public.productos_mas_buscados_id_productos_buscados_seq'::regclass);


--
-- TOC entry 2756 (class 2604 OID 74180)
-- Name: registro id_registro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro ALTER COLUMN id_registro SET DEFAULT nextval('public.registro_id_registro_seq'::regclass);


--
-- TOC entry 2758 (class 2604 OID 49345)
-- Name: secciones id_seccion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secciones ALTER COLUMN id_seccion SET DEFAULT nextval('public.seccion_id_seccion_seq'::regclass);


--
-- TOC entry 2760 (class 2604 OID 49461)
-- Name: tallas id_talla; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tallas ALTER COLUMN id_talla SET DEFAULT nextval('public.talla_id_tallar_seq'::regclass);


--
-- TOC entry 2757 (class 2604 OID 49403)
-- Name: tipo_documento id_documento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_documento ALTER COLUMN id_documento SET DEFAULT nextval('public.tipo_documento_id_documento_seq'::regclass);


--
-- TOC entry 2763 (class 2604 OID 49384)
-- Name: ventas id_ventas; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas ALTER COLUMN id_ventas SET DEFAULT nextval('public.ventas_id_ventas_seq'::regclass);


--
-- TOC entry 2948 (class 0 OID 49475)
-- Dependencies: 223
-- Data for Name: ciudades; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2936 (class 0 OID 49375)
-- Dependencies: 211
-- Data for Name: colores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.colores VALUES ('AZUL', 1);
INSERT INTO public.colores VALUES ('BLANCO', 2);
INSERT INTO public.colores VALUES ('AMARILLO', 3);
INSERT INTO public.colores VALUES ('ROJO', 4);
INSERT INTO public.colores VALUES ('VERDE', 5);
INSERT INTO public.colores VALUES ('NEGRO', 6);
INSERT INTO public.colores VALUES ('MORADO', 7);


--
-- TOC entry 2940 (class 0 OID 49395)
-- Dependencies: 215
-- Data for Name: datos_envio; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2935 (class 0 OID 49364)
-- Dependencies: 210
-- Data for Name: marcas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.marcas VALUES (1, 'COCOA JEANS');
INSERT INTO public.marcas VALUES (2, 'ASISEA JEANS');
INSERT INTO public.marcas VALUES (3, 'ZINGARA');


--
-- TOC entry 2944 (class 0 OID 49423)
-- Dependencies: 219
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2932 (class 0 OID 49350)
-- Dependencies: 207
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.productos VALUES (7, 'JOGGER DAMA', 1, 'Jogger con resorte en algodon', 1, 5, 6, 120000, 'JoggerDama.jpg', 20);
INSERT INTO public.productos VALUES (8, 'JOGGER CABALLERO', 2, 'Jogger con resorte en algodon', 3, 3, 15, 110000, 'joggerHom.jpg', 20);
INSERT INTO public.productos VALUES (9, 'JOGGER DAMA	', 1, 'Jogger con resorte en algodon', 1, 1, 8, 110000, 'joggerDamaB.jpg', 15);
INSERT INTO public.productos VALUES (1, 'JEAN DAMA', 1, 'Jean tiro largoen licra', 1, 1, 7, 110000, 'JeanDama.jpg', 20);
INSERT INTO public.productos VALUES (11, 'CAMISA HOMBRE', 2, 'Camisa fondo entero en algodon', 3, 4, 3, 100000, 'CamisaHomFE.jpg', 15);
INSERT INTO public.productos VALUES (12, 'CAMISA HOMBRE', 2, 'Camisa fondo entero en algodon', 3, 5, 5, 100000, 'CamisaHomFE2.jpg', 20);
INSERT INTO public.productos VALUES (13, 'CAMISETA', 1, 'Camiseta manga corta en licra y algodon', 2, 3, 2, 80000, 'CamisetaMangaCorta1.jpg', 15);
INSERT INTO public.productos VALUES (2, 'CAMISETA', 1, 'Camiseta manga corta en licra y algodon', 2, 4, 2, 80000, 'CamisetaMangaCorta2.jpg', 20);
INSERT INTO public.productos VALUES (6, 'JEAN CABALLERO', 2, 'Jean rigido con desgaste', 3, 2, 4, 120000, 'Jeanrigido.jpg', 20);
INSERT INTO public.productos VALUES (10, 'JOGGER CABALLERO', 2, 'Jogger con resorte en algodon', 3, 5, 14, 120000, 'joggerHom2.jpg', 10);


--
-- TOC entry 2942 (class 0 OID 49418)
-- Dependencies: 217
-- Data for Name: productos_mas_buscados; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2927 (class 0 OID 49327)
-- Dependencies: 202
-- Data for Name: registro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.registro VALUES ('12345678', 'Katherine', 'Orduz Alvarez', 'koa63@hotmail.com', '123', 1, 1);
INSERT INTO public.registro VALUES ('56789000', 'Jorge', 'Orduz', 'ko@hotmail.com', 'ABC123', 1, 2);
INSERT INTO public.registro VALUES ('4235678', 'Stella', 'Alvarez', 'stella@hotmail.com', 'AB246', 1, 3);
INSERT INTO public.registro VALUES ('11223344', 'Pipe', 'Naranjo', 'pipe@hotmail.com', 'AB246', 1, 79);
INSERT INTO public.registro VALUES ('11224455', 'Will', 'Lopez', 'will@gmail.com', 'Abc123', 1, 84);
INSERT INTO public.registro VALUES ('112854236', 'Daniela', 'Ramirez', 'danigmail.com', 'Koa6325', 2, 85);
INSERT INTO public.registro VALUES ('982635', 'Carmen', 'Alvarez', 'carmen@gmail.com', '456ABc', 1, 86);


--
-- TOC entry 2930 (class 0 OID 49342)
-- Dependencies: 205
-- Data for Name: secciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.secciones VALUES (1, 'MUJER');
INSERT INTO public.secciones VALUES (2, 'HOMBRE');


--
-- TOC entry 2933 (class 0 OID 49358)
-- Dependencies: 208
-- Data for Name: tallas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tallas VALUES ('S', 1);
INSERT INTO public.tallas VALUES ('M', 2);
INSERT INTO public.tallas VALUES ('L', 3);
INSERT INTO public.tallas VALUES ('XL', 4);
INSERT INTO public.tallas VALUES ('XXL', 5);
INSERT INTO public.tallas VALUES ('8', 6);
INSERT INTO public.tallas VALUES ('10', 7);
INSERT INTO public.tallas VALUES ('12', 8);
INSERT INTO public.tallas VALUES ('14', 9);
INSERT INTO public.tallas VALUES ('16', 10);
INSERT INTO public.tallas VALUES ('28', 11);
INSERT INTO public.tallas VALUES ('30', 12);
INSERT INTO public.tallas VALUES ('32', 13);
INSERT INTO public.tallas VALUES ('34', 14);
INSERT INTO public.tallas VALUES ('36', 15);


--
-- TOC entry 2928 (class 0 OID 49333)
-- Dependencies: 203
-- Data for Name: tipo_documento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipo_documento VALUES ('CC', 1);
INSERT INTO public.tipo_documento VALUES ('CE', 2);
INSERT INTO public.tipo_documento VALUES ('PP', 3);


--
-- TOC entry 2938 (class 0 OID 49381)
-- Dependencies: 213
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2969 (class 0 OID 0)
-- Dependencies: 222
-- Name: ciudades_id_ciudad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ciudades_id_ciudad_seq', 1, false);


--
-- TOC entry 2970 (class 0 OID 0)
-- Dependencies: 220
-- Name: color_id_color_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.color_id_color_seq', 7, true);


--
-- TOC entry 2971 (class 0 OID 0)
-- Dependencies: 214
-- Name: datos_envio_id_envio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.datos_envio_id_envio_seq', 1, false);


--
-- TOC entry 2972 (class 0 OID 0)
-- Dependencies: 209
-- Name: marca_id_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marca_id_marca_seq', 3, true);


--
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 218
-- Name: menu_id_menu_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_id_menu_seq', 1, false);


--
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 206
-- Name: productos_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_produto_seq', 13, true);


--
-- TOC entry 2975 (class 0 OID 0)
-- Dependencies: 224
-- Name: productos_mas_buscados_id_productos_buscados_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_mas_buscados_id_productos_buscados_seq', 1, false);


--
-- TOC entry 2976 (class 0 OID 0)
-- Dependencies: 225
-- Name: registro_id_registro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.registro_id_registro_seq', 86, true);


--
-- TOC entry 2977 (class 0 OID 0)
-- Dependencies: 204
-- Name: seccion_id_seccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seccion_id_seccion_seq', 2, true);


--
-- TOC entry 2978 (class 0 OID 0)
-- Dependencies: 221
-- Name: talla_id_tallar_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.talla_id_tallar_seq', 15, true);


--
-- TOC entry 2979 (class 0 OID 0)
-- Dependencies: 216
-- Name: tipo_documento_id_documento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_documento_id_documento_seq', 3, true);


--
-- TOC entry 2980 (class 0 OID 0)
-- Dependencies: 212
-- Name: ventas_id_ventas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventas_id_ventas_seq', 1, false);


--
-- TOC entry 2793 (class 2606 OID 49480)
-- Name: ciudades ciudades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT ciudades_pkey PRIMARY KEY (id_ciudad);


--
-- TOC entry 2783 (class 2606 OID 49449)
-- Name: colores color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colores
    ADD CONSTRAINT color_pkey PRIMARY KEY (id_color);


--
-- TOC entry 2787 (class 2606 OID 49400)
-- Name: datos_envio datos_envio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_envio
    ADD CONSTRAINT datos_envio_pkey PRIMARY KEY (id_envio);


--
-- TOC entry 2781 (class 2606 OID 49372)
-- Name: marcas marca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id_marca);


--
-- TOC entry 2791 (class 2606 OID 49428)
-- Name: menu menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id_menu);


--
-- TOC entry 2789 (class 2606 OID 49504)
-- Name: productos_mas_buscados productos_mas_buscados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_mas_buscados
    ADD CONSTRAINT productos_mas_buscados_pkey PRIMARY KEY (id_productos_buscados);


--
-- TOC entry 2777 (class 2606 OID 49355)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 2769 (class 2606 OID 90578)
-- Name: registro registro_correo_electronico_id_documento_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro
    ADD CONSTRAINT registro_correo_electronico_id_documento_key UNIQUE (correo_electronico) INCLUDE (id_documento);


--
-- TOC entry 2771 (class 2606 OID 74182)
-- Name: registro registro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro
    ADD CONSTRAINT registro_pkey PRIMARY KEY (id_registro);


--
-- TOC entry 2775 (class 2606 OID 49347)
-- Name: secciones seccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT seccion_pkey PRIMARY KEY (id_seccion);


--
-- TOC entry 2779 (class 2606 OID 49463)
-- Name: tallas talla_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tallas
    ADD CONSTRAINT talla_pkey PRIMARY KEY (id_talla);


--
-- TOC entry 2773 (class 2606 OID 49405)
-- Name: tipo_documento tipo_documento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_documento
    ADD CONSTRAINT tipo_documento_pkey PRIMARY KEY (id_documento);


--
-- TOC entry 2785 (class 2606 OID 49386)
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id_ventas);


--
-- TOC entry 2800 (class 2606 OID 74199)
-- Name: productos_mas_buscados fk_product_m_buscados; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_mas_buscados
    ADD CONSTRAINT fk_product_m_buscados FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto) NOT VALID;


--
-- TOC entry 2799 (class 2606 OID 49495)
-- Name: datos_envio fkciudad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_envio
    ADD CONSTRAINT fkciudad FOREIGN KEY (id_ciudad) REFERENCES public.ciudades(id_ciudad);


--
-- TOC entry 2797 (class 2606 OID 49454)
-- Name: productos fkcolor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fkcolor FOREIGN KEY (id_color) REFERENCES public.colores(id_color);


--
-- TOC entry 2796 (class 2606 OID 49434)
-- Name: productos fkmarca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fkmarca FOREIGN KEY (id_marca) REFERENCES public.marcas(id_marca);


--
-- TOC entry 2795 (class 2606 OID 49429)
-- Name: productos fkseccion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fkseccion FOREIGN KEY (id_seccion) REFERENCES public.secciones(id_seccion);


--
-- TOC entry 2798 (class 2606 OID 49468)
-- Name: productos fktalla; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fktalla FOREIGN KEY (id_talla) REFERENCES public.tallas(id_talla);


--
-- TOC entry 2794 (class 2606 OID 49413)
-- Name: registro fktipodoc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro
    ADD CONSTRAINT fktipodoc FOREIGN KEY (id_documento) REFERENCES public.tipo_documento(id_documento);


-- Completed on 2023-03-14 19:27:05

--
-- PostgreSQL database dump complete
--

