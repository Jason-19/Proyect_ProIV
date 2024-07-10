USE PROYECTO;

CREATE DATABASE PROYECTO;

use proyecto;

CREATE TABLE USUARIOS (
    USUARIO_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(50) NOT NULL,
    APELLIDO VARCHAR(50) NOT NULL,
    CEDULA VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(50),
    PHONE VARCHAR(50),
    FECHA_REGRISTRO TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- INSERT INTO usuarios(NOMBRE,APELLIDO,CEDULA,EMAIL,PHONE,TRATAMIENTO,FECHA_FACTURA)
-- VALUES('$client[0]','$client[1]','$client[2]','$client[3]','$client[4]','$client[5]');

--DROP table usuarios; -- borrar la table cuidado!!!

SELECT * FROM USUARIOS;
-- consulta para consulta a la base de datos
;

CREATE TABLE FACTURA (
    FACTURA_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    USUARIO_ID INT,
    TRATAMIENTO VARCHAR(255),
    FECHA_FACTURA DATE,
    MONTO DECIMAL(10.2),
    METODO_PAGO VARCHAR(50),
    FOREIGN KEY (USUARIO_ID) REFERENCES USUARIOS (USUARIO_ID)
);
SELECT * from factura;
DROP TABLE factura;
-- TABLA PARA LOS DOCTORES DOCTORES
CREATE TABLE DOCTOR (
    DOCTOR_ID INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(50),
    APELLIDO VARCHAR(50),
    ESPECIALIDAD VARCHAR(50)
);

-- CREATE TABLE PARA LAS CONSULTAS
CREATE TABLE CONSULT (
    CONSULT_ID INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    DOCTOR_ID INT,
    TRATAMIENTO VARCHAR(50),
    FECHA_CONSULT DATE,
    FOREIGN KEY (usuario_id) REFERENCES USUARIOS (usuario_id),
);

CREATE TABLE HISTORIAL_FACT_USER (
    HFACT_USER_ID INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    factura_id INT,
    FOREIGN KEY (usuario_id) REFERENCES USUARIOS (USUARIO_ID),
    FOREIGN KEY (factura_id) REFERENCES FACTURA (FACTURA_ID)
);



