CREATE TABLE cidades (
    codigo_estado integer,
    sigla_estado character varying(2),
    nome_uf character varying(120),
    codigo_cidade character varying(7) NOT NULL,
    nome_cidade character varying(120)
);


ALTER TABLE public.cidades OWNER TO postgres;