/*CREACIÓN DE LAS TABLAS, CON SUS PK, FKS, SECUENCIAS, TRIGGERS Y PROCEDIMEINTOS*/
------TABLA ESTADO------
CREATE TABLE FIDE_ESTADO_TB(
estado_id_estado_pk number,
descripcion varchar2(200));
/
ALTER TABLE FIDE_ESTADO_TB
ADD(CONSTRAINT ESTADO_PK PRIMARY KEY (estado_id_estado_pk));
/
CREATE SEQUENCE ID_ESTADO_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_ESTADO_ID_TRG
BEFORE INSERT ON FIDE_ESTADO_TB
FOR EACH ROW
BEGIN
SELECT ID_ESTADO_SEQ.NEXTVAL
INTO :NEW.estado_id_estado_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA ROL------
CREATE TABLE FIDE_ROL_TB(
rol_id_rol_pk number,
nombre_rol varchar2(100));
/
ALTER TABLE FIDE_ROL_TB
ADD(CONSTRAINT ROL_PK PRIMARY KEY (rol_id_rol_pk));
/
CREATE SEQUENCE ID_ROL_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_ROL_ID_TRG
BEFORE INSERT ON FIDE_ROL_TB
FOR EACH ROW
BEGIN
SELECT ID_ROL_SEQ.NEXTVAL
INTO :NEW.rol_id_rol_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA TIPO PLATILLO------
CREATE TABLE FIDE_TIPOPLATILLO_TB(
tipoplatillo_id_tipoplatillo_pk number,
descripcion varchar2(200));
/
ALTER TABLE FIDE_TIPOPLATILLO_TB
ADD(CONSTRAINT TIPOPLATILL_PK PRIMARY KEY (tipoplatillo_id_tipoplatillo_pk));
/
CREATE SEQUENCE ID_TIPOPLATILLO_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_TIPOPLATILLO_ID_TRG
BEFORE INSERT ON FIDE_TIPOPLATILLO_TB
FOR EACH ROW
BEGIN
SELECT ID_TIPOPLATILLO_SEQ.NEXTVAL
INTO :NEW.tipoplatillo_id_tipoplatillo_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA TIPO KART------
CREATE TABLE FIDE_TIPOKART_TB(
tipokart_id_tipokart_pk number,
descripcion varchar2(200));
/
ALTER TABLE FIDE_TIPOKART_TB
ADD(CONSTRAINT TIPOKART_PK PRIMARY KEY (tipokart_id_tipokart_pk));
/
CREATE SEQUENCE ID_TIPOKART_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_TIPOKART_ID_TRG
BEFORE INSERT ON FIDE_TIPOKART_TB
FOR EACH ROW
BEGIN
SELECT ID_TIPOKART_SEQ.NEXTVAL
INTO :NEW.tipokart_id_tipokart_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA TIPO EVENTO------
CREATE TABLE FIDE_TIPOEVENTO_TB(
tipoevento_id_tipoevento_pk number,
descripcion varchar2(200));
/
ALTER TABLE FIDE_TIPOEVENTO_TB
ADD(CONSTRAINT TIPOEVENTO_PK PRIMARY KEY (tipoevento_id_tipoevento_pk));
/
CREATE SEQUENCE ID_TIPOEVENTO_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_TIPOEVENTO_ID_TRG
BEFORE INSERT ON FIDE_TIPOEVENTO_TB
FOR EACH ROW
BEGIN
SELECT ID_TIPOEVENTO_SEQ.NEXTVAL
INTO :NEW.tipoevento_id_tipoevento_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA USUARIO------
CREATE TABLE FIDE_USUARIO_TB(
usuario_id_usuario_pk number,
id_rol number,
nombre varchar2(100),
apellidos varchar2(100),
correo varchar2(100),
telefono number,
clave RAW(100),
CONSTRAINT USUARIO_PK PRIMARY KEY(usuario_id_usuario_pk),
CONSTRAINT FK_FIDE_USUARIO_TB_ID_ROL FOREIGN KEY(id_rol) REFERENCES FIDE_ROL_TB(ROL_ID_ROL_PK));
/
CREATE SEQUENCE ID_USUARIO_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_USUARIO_ID_TRG
BEFORE INSERT ON FIDE_USUARIO_TB
FOR EACH ROW
BEGIN
SELECT ID_USUARIO_SEQ.NEXTVAL
INTO :NEW.usuario_id_usuario_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA PISTA------
CREATE TABLE FIDE_PISTA_TB(
pista_id_pista_pk number,
id_estado number,
descripcion varchar2(250),
CONSTRAINT PISTA_PK PRIMARY KEY(pista_id_pista_pk),
CONSTRAINT FK_FIDE_PISTA_TB_ID_ESTADO FOREIGN KEY(id_estado) REFERENCES FIDE_ESTADO_TB(ESTADO_ID_ESTADO_PK));
/
CREATE SEQUENCE ID_PISTA_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_PISTA_ID_TRG
BEFORE INSERT ON FIDE_PISTA_TB
FOR EACH ROW
BEGIN
SELECT ID_PISTA_SEQ.NEXTVAL
INTO :NEW.pista_id_pista_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA KART------
CREATE TABLE FIDE_KART_TB(
kart_id_kart_pk number,
id_tipo_kart number,
id_estado number,
nombre varchar2(200),
descripcion varchar2(500),
precio_alquiler decimal(10, 2),
CONSTRAINT KART_PK PRIMARY KEY(kart_id_kart_pk),
CONSTRAINT FK_FIDE_KART_TB_ID_TIPO_KART FOREIGN KEY(id_tipo_kart) REFERENCES FIDE_TIPOKART_TB(TIPOKART_ID_TIPOKART_PK),
CONSTRAINT FK_FIDE_KART_TB_ID_ESTADO FOREIGN KEY(id_estado) REFERENCES FIDE_ESTADO_TB(ESTADO_ID_ESTADO_PK));
/
CREATE SEQUENCE ID_KART_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_KART_ID_TRG
BEFORE INSERT ON FIDE_KART_TB
FOR EACH ROW
BEGIN
SELECT ID_KART_SEQ.NEXTVAL
INTO :NEW.kart_id_kart_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA PLATILLO------
CREATE TABLE FIDE_PLATILLO_TB(
platillo_id_platillo_pk number,
id_estado number,
id_tipo_platillo number,
nombre varchar2(200),
descripcion varchar2(200),
precio decimal(10, 2),
CONSTRAINT PLATILLO_PK PRIMARY KEY(platillo_id_platillo_pk),
CONSTRAINT FK_FIDE_PLATILLO_TB_ID_ESTADO FOREIGN KEY(id_estado) REFERENCES FIDE_ESTADO_TB(ESTADO_ID_ESTADO_PK),
CONSTRAINT FK_FIDE_PLATILLO_TB_ID_TIPOPLATILLO FOREIGN KEY(id_tipo_platillo) REFERENCES FIDE_TIPOPLATILLO_TB(TIPOPLATILLO_ID_TIPOPLATILLO_PK));
/
CREATE SEQUENCE ID_PLATILLO_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_PLATILLO_ID_TRG
BEFORE INSERT ON FIDE_PLATILLO_TB
FOR EACH ROW
BEGIN
SELECT ID_PLATILLO_SEQ.NEXTVAL
INTO :NEW.platillo_id_platillo_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA HORARIO------
CREATE TABLE FIDE_HORARIO_TB(
horario_id_horario_pk number,
id_estado number,
dia_semana varchar2(20),
hora_inicio varchar2(20),
hora_fin varchar2(20),
CONSTRAINT HORARIO_PK PRIMARY KEY(horario_id_horario_pk),
CONSTRAINT FK_FIDE_HORARIO_TB_ID_ESTADO FOREIGN KEY (id_estado) REFERENCES FIDE_ESTADO_TB(ESTADO_ID_ESTADO_PK));
/
CREATE SEQUENCE ID_HORARIO_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_HORARIO_ID_TRG
BEFORE INSERT ON FIDE_HORARIO_TB
FOR EACH ROW
BEGIN
SELECT ID_HORARIO_SEQ.NEXTVAL
INTO :NEW.horario_id_horario_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA RESERVA------
CREATE TABLE FIDE_RESERVA_TB(
reserva_id_reserva_pk number,
id_usuario number,
id_estado number,
subtotal_kart decimal(10,2),
subtotal_platillo decimal(10,2),
total decimal(10,2),
fecha date,
hora varchar2(100),
CONSTRAINT RESERVA_PK PRIMARY KEY(reserva_id_reserva_pk),
CONSTRAINT FK_FIDE_RESERVA_TB_ID_USUARIO FOREIGN KEY (id_usuario) REFERENCES FIDE_USUARIO_TB(USUARIO_ID_USUARIO_PK),
CONSTRAINT FK_FIDE_RESERVA_TB_ID_ESTADO FOREIGN KEY (id_estado) REFERENCES FIDE_ESTADO_TB(ESTADO_ID_ESTADO_PK));
/
CREATE SEQUENCE ID_RESERVA_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_RESERVA_ID_TRG
BEFORE INSERT ON FIDE_RESERVA_TB
FOR EACH ROW
BEGIN
SELECT ID_RESERVA_SEQ.NEXTVAL
INTO :NEW.reserva_id_reserva_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA KART RESERVA------
CREATE TABLE FIDE_KARTRESERVA_TB(
kartreserva_id_kartreserva_pk number,
id_pista number,
id_kart number,
id_reserva number,
CONSTRAINT KARTRESERVA_PK PRIMARY KEY(kartreserva_id_kartreserva_pk),
CONSTRAINT FK_FIDE_KARTRESERVA_TB_ID_PISTA FOREIGN KEY (id_pista) REFERENCES FIDE_PISTA_TB(PISTA_ID_PISTA_PK), 
CONSTRAINT FK_FIDE_KARTRESERVA_TB_ID_KART FOREIGN KEY (id_kart) REFERENCES FIDE_KART_TB(KART_ID_KART_PK), 
CONSTRAINT FK_FIDE_KARTRESERVA_TB_ID_RESERVA FOREIGN KEY (id_reserva) REFERENCES FIDE_RESERVA_TB(RESERVA_ID_RESERVA_PK));
/
CREATE SEQUENCE ID_KARTRESERVA_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_KARTRESERVA_ID_TRG
BEFORE INSERT ON FIDE_KARTRESERVA_TB
FOR EACH ROW
BEGIN
SELECT ID_KARTRESERVA_SEQ.NEXTVAL
INTO :NEW.kartreserva_id_kartreserva_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA FACTURA------
CREATE TABLE FIDE_FACTURA_TB(
factura_id_factura_pk number,
id_reserva number,
id_estado number,
subtotal decimal(10, 2),
iva decimal(10, 2),
total decimal(10, 2),
fecha date,
CONSTRAINT FACTURA_PK PRIMARY KEY(factura_id_factura_pk),
CONSTRAINT FK_FIDE_FACTURA_TB_ID_RESERVA FOREIGN KEY (id_reserva) REFERENCES FIDE_RESERVA_TB(RESERVA_ID_RESERVA_PK), 
CONSTRAINT FK_FIDE_FACTURA_TB_ID_ESTADO FOREIGN KEY (id_estado) REFERENCES FIDE_ESTADO_TB(ESTADO_ID_ESTADO_PK));
/
CREATE SEQUENCE ID_FACTURA_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_FACTURA_ID_TRG
BEFORE INSERT ON FIDE_FACTURA_TB
FOR EACH ROW
BEGIN
SELECT ID_FACTURA_SEQ.NEXTVAL
INTO :NEW.factura_id_factura_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA DETALLE FACTURA------
CREATE TABLE FIDE_DETALLEFACTURA_TB(
detallefactura_id_detallefactura_pk number,
id_reserva number,
id_kart number,
id_estado number,
id_platillo number,
cantidad number,
precio decimal(10,2),
subtotal decimal(10,2),
CONSTRAINT DETALLEFACTURA_PK PRIMARY KEY(detallefactura_id_detallefactura_pk),
CONSTRAINT FK_FIDE_DETALLEFACTURA_TB_ID_RESERVA FOREIGN KEY (id_reserva) REFERENCES FIDE_RESERVA_TB(RESERVA_ID_RESERVA_PK), 
CONSTRAINT FK_FIDE_DETALLEFACTURA_TB_ID_KART FOREIGN KEY (id_kart) REFERENCES FIDE_KART_TB(KART_ID_KART_PK), 
CONSTRAINT FK_FIDE_DETALLEFACTURA_TB_ID_ESTADO FOREIGN KEY (id_estado) REFERENCES FIDE_ESTADO_TB(ESTADO_ID_ESTADO_PK), 
CONSTRAINT FK_FIDE_DETALLEFACTURA_TB_ID_PLATILLO FOREIGN KEY (id_platillo) REFERENCES FIDE_PLATILLO_TB(PLATILLO_ID_PLATILLO_PK));
/
CREATE SEQUENCE ID_DETALLEFACTURA_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_DETALLEFACTURA_ID_TRG
BEFORE INSERT ON FIDE_DETALLEFACTURA_TB
FOR EACH ROW
BEGIN
SELECT ID_DETALLEFACTURA_SEQ.NEXTVAL
INTO :NEW.detallefactura_id_detallefactura_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
------TABLA SOLICITUD EVENTO------
CREATE TABLE FIDE_SOLICITUDEVENTO_TB(
solicitudevento_id_solicitudevento_pk number,
id_usuario number,
tipo_evento number,
descripcion varchar2(250),
CONSTRAINT SOLICITUDEVENTO_PK PRIMARY KEY(solicitudevento_id_solicitudevento_pk),
CONSTRAINT FK_FIDE_SOLICITUDEVENTO_TB_ID_USUARIO FOREIGN KEY (id_usuario) REFERENCES FIDE_USUARIO_TB(USUARIO_ID_USUARIO_PK), 
CONSTRAINT FK_FIDE_SOLICITUDEVENTO_TB_TIPO_EVENTO FOREIGN KEY (tipo_evento) REFERENCES FIDE_TIPOEVENTO_TB(TIPOEVENTO_ID_TIPOEVENTO_PK));
/
ALTER TABLE FIDE_SOLICITUDEVENTO_TB
ADD nombre VARCHAR2(100);
/
ALTER TABLE FIDE_SOLICITUDEVENTO_TB
ADD correo VARCHAR2(100);
/
ALTER TABLE FIDE_SOLICITUDEVENTO_TB
ADD telefono VARCHAR2(100);
/
CREATE SEQUENCE ID_SOLICITUDEVENTO_SEQ;
/
CREATE OR REPLACE TRIGGER FIDE_SOLICITUDEVENTO_ID_TRG
BEFORE INSERT ON FIDE_SOLICITUDEVENTO_TB
FOR EACH ROW
BEGIN
SELECT ID_SOLICITUDEVENTO_SEQ.NEXTVAL
INTO :NEW.solicitudevento_id_solicitudevento_pk
FROM DUAL;
END;
/
------------------------------------------------------------------------
-----/*PROCEDIMIENTOS*/-----
--INSERTAR ESTADO
CREATE OR REPLACE PROCEDURE ESTADO_INSERTAR_ESTADO_SP(P_descripcion IN VARCHAR2) AS
BEGIN
INSERT INTO FIDE_ESTADO_TB(descripcion)
VALUES(P_descripcion);
END;
/
--EJECUCIÓN INSERTAR ESTADO
BEGIN
ESTADO_INSERTAR_ESTADO_SP('Abierto');
END;
/
BEGIN
ESTADO_INSERTAR_ESTADO_SP('Cerrado');
END;
/
--INSERTAR ROL
CREATE OR REPLACE PROCEDURE ROL_INSERTAR_ROL_SP(P_nombre IN VARCHAR2) AS
BEGIN
INSERT INTO FIDE_ROL_TB(nombre_rol)
VALUES(P_nombre);
END;
/
--EJECUCIÓN INSERTAR ROL
BEGIN
ROL_INSERTAR_ROL_SP('Administrador');
END;
/
BEGIN
ROL_INSERTAR_ROL_SP('Cliente');
END;
/
--INSERTAR TIPO PLATILLO
CREATE OR REPLACE PROCEDURE TIPOPLATILLO_INSERTAR_TIPOPLATILLO_SP(P_descripcion IN VARCHAR2) AS
BEGIN
INSERT INTO FIDE_TIPOPLATILLO_TB(descripcion)
VALUES(P_descripcion);
END;
/
--INSERTAR TIPO KART
CREATE OR REPLACE PROCEDURE TIPOKART_INSERTAR_TIPOKART_SP(P_descripcion IN VARCHAR2) AS
BEGIN
INSERT INTO FIDE_TIPOKART_TB(descripcion)
VALUES(P_descripcion);
END;
/
--INSERTAR TIPO EVENTO
CREATE OR REPLACE PROCEDURE TIPOEVENTO_INSERTAR_TIPOEVENTO_SP(P_descripcion IN VARCHAR2) AS
BEGIN
INSERT INTO FIDE_TIPOEVENTO_TB(descripcion)
VALUES(P_descripcion);
END;
/
--EJECUCIÓN TIPO EVENTO
BEGIN
TIPOEVENTO_INSERTAR_TIPOEVENTO_SP('Cumpleaños');
END;
/
BEGIN
TIPOEVENTO_INSERTAR_TIPOEVENTO_SP('Colegio');
END;
/
BEGIN
TIPOEVENTO_INSERTAR_TIPOEVENTO_SP('Corporativo');
END;
/
--INSERTAR SOLICITUD EVENTO
CREATE OR REPLACE PROCEDURE SOLICITUDEVENTO_INSERTAR_SOLICITUD_EVENTO_SP(P_id_usuario NUMBER, P_id_tipo_evento VARCHAR2, P_descripcion VARCHAR2, P_nombre VARCHAR2, P_correo VARCHAR2, P_telefono VARCHAR2) AS
BEGIN
INSERT INTO FIDE_SOLICITUDEVENTO_TB(id_usuario, tipo_evento, descripcion, nombre, correo, telefono)
VALUES(P_id_usuario, P_id_tipo_evento, P_descripcion, P_nombre, P_correo, P_telefono);
commit;
END;


--INSERTAR CLIENTE CON CONTRASEÑA ENCRIPTADA
CREATE OR REPLACE PROCEDURE USUARIO_CREAR_USUARIO_CLIENTE_SP(
P_id_rol NUMBER,
P_nombre VARCHAR2,
P_apellidos VARCHAR2,
P_correo VARCHAR2,
P_telefono NUMBER,
P_clave VARCHAR2,
P_contra VARCHAR2)
AS
V_l_key RAW(32);
V_l_data VARCHAR2(100);
V_l_encrypted_data RAW(2000);
v_email_pattern VARCHAR2(100) := '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$';
BEGIN
    
    IF LENGTH(P_contra) != 32 THEN
        RAISE_APPLICATION_ERROR(-20001, 'La clave debe de contener 32 caracteres');
    END IF;

    IF NOT REGEXP_LIKE(P_correo, v_email_pattern) THEN
        DBMS_OUTPUT.PUT_LINE('Error: Formato de correo electrónico no válido');
        RETURN;
    END IF;
    V_l_key:= UTL_RAW.CAST_TO_RAW(P_contra);
    
    V_l_encrypted_data:=dbms_CRYPTO.encrypt(
                            src=>UTL_RAW.CAST_TO_RAW(P_clave),
                            typ=>dbms_CRYPTO.encrypt_AES256+dbms_CRYPTO.CHAIN_CBC+dbms_CRYPTO.PAD_PKCS5,
                            key=>V_l_key);
    
    INSERT INTO FIDE_USUARIO_TB(id_rol, nombre, apellidos, correo, telefono, clave)
    VALUES(P_id_rol, P_nombre, P_apellidos, P_correo, P_telefono, V_l_encrypted_data);
    commit;
    end;
/
--EJECUCIÓN INSERTAR CLIENTE CON CONTRASEÑA ENCRIPTADA
BEGIN
    USUARIO_CREAR_USUARIO_CLIENTE_SP(1, 'Sussy', 'Arias', 'suarias0905@gmail.com', 61626463, '123', '12345678901234567890123456789012');
END;
/
--DESENCRIPTAR CONTRASEÑA DEL USUARIO
CREATE OR REPLACE PROCEDURE USUARIO_DESENCRIPTAR_CLAVE_CLIENTE_SP(
P_id in number, --si no se pone nada, el default es in
P_clave out varchar2) --al de salida siempre hay que especificar que es out 
as
V_l_key RAW(32):=UTL_RAW.CAST_TO_RAW('12345678901234567890123456789012'); --como ecncripto tengo que usar la misma cadena de caracteres para desencriptar
V_l_encrypted_data RAW(2000);
V_l_descrypted_data RAW(2000);
V_l_descrypted_string VARCHAR2(100);
BEGIN
    select clave into V_l_encrypted_data --el into solo puede devolver un dato
    from fide_usuario_tb
    where usuario_id_usuario_pk = P_id;

V_l_descrypted_data:=dbms_CRYPTO.decrypt( --en este desencripta
                            src=>V_l_encrypted_data,
                            typ=>dbms_CRYPTO.encrypt_AES256+dbms_CRYPTO.CHAIN_CBC+dbms_CRYPTO.PAD_PKCS5,
                            key=>V_l_key);
                            
 V_l_descrypted_string:=UTL_RAW.CAST_TO_VARCHAR2(V_l_descrypted_data); --mi clave en varchar2
 
P_clave := V_l_descrypted_string;                
END;
/
--INSERTAR HORARIO
CREATE OR REPLACE PROCEDURE HORARIO_INSERTAR_HORARIO_SP(P_id_estado IN NUMBER, P_dia_semana IN VARCHAR2, P_hora_inicio IN VARCHAR2, P_hora_fin IN VARCHAR2) AS
BEGIN
INSERT INTO FIDE_HORARIO_TB(id_estado, dia_semana, hora_inicio, hora_fin)
VALUES(P_id_estado, P_dia_semana, P_hora_inicio, P_hora_fin);
END;
/
--EJECUCIÓN INSERTAR HORARIO
BEGIN
HORARIO_INSERTAR_HORARIO_SP(1, 'Lunes', '10:00 am', '6:00 pm');
END;
/
BEGIN
HORARIO_INSERTAR_HORARIO_SP(1, 'Martes', '10:00 am', '10:00 pm');
END;
/
BEGIN
HORARIO_INSERTAR_HORARIO_SP(1, 'Miércoles', '10:00 am', '10:00 pm');
END;
/
BEGIN
HORARIO_INSERTAR_HORARIO_SP(1, 'Jueves', '10:00 am', '10:00 pm');
END;
/
BEGIN
HORARIO_INSERTAR_HORARIO_SP(1, 'Viernes', '10:00 am', '10:00 pm');
END;
/
BEGIN
HORARIO_INSERTAR_HORARIO_SP(1, 'Sábado', '10:00 am', '10:00 pm');
END;
/
BEGIN
HORARIO_INSERTAR_HORARIO_SP(2, 'Domingo', 'N/A', 'N/A');
END;
/
--INSERTAR PISTA
CREATE OR REPLACE PROCEDURE PISTA_INSERTAR_PISTA_SP(P_id_estado IN NUMBER,P_descripcion IN VARCHAR2) AS
BEGIN
INSERT INTO FIDE_PISTA_TB(id_estado, descripcion)
VALUES(P_id_estado, P_descripcion);
END;
/
--INSERTAR KART
CREATE OR REPLACE PROCEDURE KART_INSERTAR_KART_SP(P_id_tipo_kart IN NUMBER, P_id_estado IN NUMBER, P_nombre IN VARCHAR2, P_descripcion IN VARCHAR2, P_precio_alquiler IN NUMBER)AS
BEGIN
INSERT INTO FIDE_KART_TB(id_tipo_kart, id_estado, nombre, descripcion, precio_alquiler)
VALUES(P_id_tipo_kart, P_id_estado, P_nombre, P_descripcion, P_precio_alquiler);
END;
/
