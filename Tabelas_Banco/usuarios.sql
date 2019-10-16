CREATE TABLE tab_usuarios (
    codigo integer NOT NULL,
    nome character varying(60),
    cpf character varying(20),
    rg character varying(18),
    endereco character varying(60),
    numero character varying(10),
    bairro character varying(50),
    complemento character varying(40),
    cep character varying(9),
    codigo_cidade integer,
    nome_cidade character varying(100),
    codigo_uf integer,
    nome_uf character varying(2),
    sexo character(1) DEFAULT 'M'::bpchar,
    telefone character varying(10),
    telefone_contato character varying(10),
	data_nascimento date

);


ALTER TABLE public.tab_usuarios OWNER TO postgres;

CREATE SEQUENCE tab_usuarios_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.tab_usuarios_codigo_seq OWNER TO postgres;

ALTER SEQUENCE tab_usuarios_codigo_seq OWNED BY tab_usuarios.codigo;

ALTER TABLE public.tab_usuarios
    ADD COLUMN dt_nascimento date;