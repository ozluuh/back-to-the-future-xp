-- Gerado por Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   em:        2020-11-20 01:53:37 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- DROP TABLE t_btf_character CASCADE CONSTRAINTS;

-- DROP TABLE t_btf_character_event CASCADE CONSTRAINTS;

-- DROP TABLE t_btf_event CASCADE CONSTRAINTS;

-- DROP SEQUENCE t_btf_character;

-- DROP SEQUENCE t_btf_event;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_btf_character (
    id_character   NUMBER(5) NOT NULL,
    nm_character   VARCHAR2(60) NOT NULL,
    dt_birth       VARCHAR2(10) NOT NULL,
    in_age         NUMBER(3) NOT NULL,
    nm_actor       VARCHAR2(60) NOT NULL,
    in_relevance   NUMBER(1) NOT NULL,
    in_importance  NUMBER(1) NOT NULL,
    ds_character   VARCHAR2(4000),
    im_profile     VARCHAR2(120)
);

ALTER TABLE t_btf_character
    ADD CHECK ( in_relevance IN ( 1, 2, 3 ) );

ALTER TABLE t_btf_character
    ADD CHECK ( in_importance IN ( 1, 2, 3 ) );

ALTER TABLE t_btf_character ADD CONSTRAINT pk_btf_character PRIMARY KEY ( id_character );

CREATE TABLE t_btf_character_event (
    id_event      NUMBER(5) NOT NULL,
    id_character  NUMBER(5) NOT NULL,
    in_age        NUMBER(3) NOT NULL
);

ALTER TABLE t_btf_character_event ADD CONSTRAINT pk_btf_character_event PRIMARY KEY ( id_event,
                                                                                      id_character );

CREATE TABLE t_btf_event (
    id_event              NUMBER(5) NOT NULL,
    nm_event              VARCHAR2(120) NOT NULL,
    ds_event              VARCHAR2(4000) NOT NULL,
    in_temporal_position  VARCHAR2(5) NOT NULL
);

ALTER TABLE t_btf_event
    ADD CHECK ( in_temporal_position IN ( '1955', '1985', '1985A' ) );

ALTER TABLE t_btf_event ADD CONSTRAINT pk_btf_event PRIMARY KEY ( id_event );

ALTER TABLE t_btf_character_event
    ADD CONSTRAINT fk_btf_evento_personagem FOREIGN KEY ( id_event )
        REFERENCES t_btf_event ( id_event );

ALTER TABLE t_btf_character_event
    ADD CONSTRAINT fk_btf_personagem_evento FOREIGN KEY ( id_character )
        REFERENCES t_btf_character ( id_character );

CREATE SEQUENCE sq_btf_character START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE sq_btf_event START WITH 1 NOCACHE ORDER;



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              8
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          2
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
