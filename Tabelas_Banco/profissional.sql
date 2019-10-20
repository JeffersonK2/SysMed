CREATE TABLE PROFISSIONAL(
  CODIGO SERIAL NOT NULL,
  NOME   VARCHAR(100),
  CONSTRAINT PK_PROFISSIONAL PRIMARY KEY (CODIGO)
);

CREATE SEQUENCE tab_profissional_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.tab_profissional_codigo_seq OWNER TO postgres;

ALTER SEQUENCE tab_profissional_codigo_seq OWNED BY profissional.codigo;

  