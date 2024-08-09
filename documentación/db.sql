SELECT * FROM aerolinea;
SELECT * FROM aeropuerto;
SELECT * FROM clase_vuelo;
SELECT * FROM destino;
SELECT * FROM estados;
SELECT * FROM puesto;
SELECT * FROM rol;
SELECT * FROM tripulacion;
SELECT * FROM avion;
SELECT * FROM asientos;
SELECT * FROM users;
SELECT * FROM cliente;
SELECT * FROM empleados;
SELECT * FROM vuelo;
SELECT * FROM boleto;

SELECT
    aerolinea.id,
    aerolinea.nombre,
    aeropuerto.id,
    aeropuerto.nombre,
    aeropuerto.ciudad,
    aeropuerto.pais
from destino
         JOIN aerolinea ON destino.aerolinea_id = aerolinea.id
         JOIN aeropuerto ON destino.aeropuerto_id = aeropuerto.id
WHERE destino.aerolinea_id = 1;

-- Insertar aerolíneas
INSERT INTO aerolinea (nombre, descripcion)
VALUES
    ('American Airlines', 'Aerolínea de Estados Unidos'),
    ('AeroMéxico', 'Aerolínea de México'),
    ('Avianca', 'Aerolínea de Guatemala');

-- Insertar aeropuertos
INSERT INTO aeropuerto (nombre, ciudad, pais, descripcion)
VALUES
    ('John F. Kennedy International Airport', 'New York', 'Estados Unidos', 'Aeropuerto en Nueva York'),
    ('Los Angeles International Airport', 'Los Angeles', 'Estados Unidos', 'Aeropuerto en Los Angeles'),
    ('Hare International Airport', 'Chicago', 'Estados Unidos', 'Aeropuerto en Chicago'),
    ('Benito Juárez International Airport', 'Ciudad de México', 'México', 'Aeropuerto en Ciudad de México'),
    ('Cancún International Airport', 'Cancún', 'México', 'Aeropuerto en Cancún'),
    ('Guadalajara International Airport', 'Guadalajara', 'México', 'Aeropuerto en Guadalajara'),
    ('La Aurora International Airport', 'Ciudad de Guatemala', 'Guatemala', 'Aeropuerto en Ciudad de Guatemala'),
    ('Mundo Maya International Airport', 'Flores', 'Guatemala', 'Aeropuerto en Flores'),
    ('San Pedro Sula International Airport', 'San Pedro Sula', 'Honduras', 'Aeropuerto en San Pedro Sula'),
    ('Toncontín International Airport', 'Tegucigalpa', 'Honduras', 'Aeropuerto en Tegucigalpa');

-- Insertar destinos
INSERT INTO destino (destino_final, aerolinea_id, aeropuerto_id, descripcion)
VALUES
    ('New York', 1, 1, 'Destino en Nueva York para American Airlines'),
    ('Los Angeles', 1, 2, 'Destino en Los Angeles para American Airlines'),
    ('Chicago', 1, 3, 'Destino en Chicago para American Airlines'),
    ('Ciudad de México', 2, 4, 'Destino en Ciudad de México para AeroMéxico'),
    ('Cancún', 2, 5, 'Destino en Cancún para AeroMéxico'),
    ('Guadalajara', 2, 6, 'Destino en Guadalajara para AeroMéxico'),
    ('Ciudad de Guatemala', 3, 7, 'Destino en Ciudad de Guatemala para Avianca'),
    ('Flores', 3, 8, 'Destino en Flores para Avianca'),
    ('San Pedro Sula', 1, 9, 'Destino en San Pedro Sula para American Airlines'),
    ('Tegucigalpa', 2, 10, 'Destino en Tegucigalpa para AeroMéxico');


-- Insertar estados
INSERT INTO estados (nombre)
VALUES
    ('Activo'),
    ('Inactivo'),
    ('Reservado'),
    ('En reparación'),
    ('En mantenimiento'),
    ('Fuera de servicio');

-- Insertar puestos
INSERT INTO puesto (puesto_nombre)
VALUES
    ('Piloto'),
    ('Copiloto'),
    ('Ingeniero'),
    ('Tripulante 1'),
    ('Tripulante 2'),
    ('Tripulante 3');

-- Insertar roles
INSERT INTO rol (nombre_rol, descripcion)
VALUES
    ('admin', 'Administrador del sistema'),
    ('admin aerolinea', 'Administrador de la aerolínea'),
    ('admin abordaje', 'Administrador de abordaje'),
    ('user', 'Usuario'),
    ('employee', 'Empleado');

-- Insertar tripulaciones
INSERT INTO tripulacion (nombre, aerolinea_id) VALUES
                                                   ('Tripulación 1', 1),
                                                   ('Tripulación 2', 2),
                                                   ('Tripulación 3', 3);

-- Insertar empleados
INSERT INTO empleados (nombres, apellidos, direccion, fecha_nacimiento, nacionalidad, pais, telefono, aerolinea_id, estado_id, puesto_id, tripulacion_id)
VALUES
    ('John', 'Doe', '123 Main St', '1980-01-01', 'Americana', 'US', '555-1234', 1, 1, 1, 1),
    ('Jane', 'Doe', '123 Main St', '1985-01-01', 'Americana', 'US', '555-1234', 1, 1, 2, 1),
    ('Jim', 'Beam', '456 Oak St', '1970-01-01', 'Americana', 'US', '555-5678', 1, 1, 3, 1),
    ('Jack', 'Daniels', '789 Pine St', '1990-01-01', 'Americana', 'US', '555-9876', 1, 1, 4, 1),
    ('Jill', 'Stein', '101 Maple St', '1995-01-01', 'Americana', 'US', '555-6543', 1, 1, 5, 1),
    ('Jerry', 'Lewis', '102 Elm St', '1982-01-01', 'Americana', 'US', '555-3210', 1, 1, 6, 1),

    ('Carlos', 'Santana', '123 Main St', '1980-01-01', 'Mexicana', 'MX', '555-1234', 2, 1, 1, 2),
    ('Ana', 'Gabriel', '123 Main St', '1985-01-01', 'Mexicana', 'MX', '555-1234', 2, 1, 2, 2),
    ('Luis', 'Miguel', '456 Oak St', '1970-01-01', 'Mexicana', 'MX', '555-5678', 2, 1, 3, 2),
    ('Alejandra', 'Guzmán', '789 Pine St', '1990-01-01', 'Mexicana', 'MX', '555-9876', 2, 1, 4, 2),
    ('Thalía', 'Sodi', '101 Maple St', '1995-01-01', 'Mexicana', 'MX', '555-6543', 2, 1, 5, 2),
    ('Paulina', 'Rubio', '102 Elm St', '1982-01-01', 'Mexicana', 'MX', '555-3210', 2, 1, 6, 2),

    ('Juan', 'Pérez', '123 Main St', '1980-01-01', 'Guatemalteca', 'GT', '555-1234', 3, 1, 1, 3),
    ('María', 'García', '123 Main St', '1985-01-01', 'Guatemalteca', 'GT', '555-1234', 3, 1, 2, 3),
    ('Pedro', 'Alvarado', '456 Oak St', '1970-01-01', 'Guatemalteca', 'GT', '555-5678', 3, 1, 3, 3),
    ('Sofía', 'López', '789 Pine St', '1990-01-01', 'Guatemalteca', 'GT', '555-9876', 3, 1, 4, 3),
    ('Carla', 'Hernández', '101 Maple St', '1995-01-01', 'Guatemalteca', 'GT', '555-6543', 3, 1, 5, 3),
    ('Luis', 'Ramírez', '102 Elm St', '1982-01-01', 'Guatemalteca', 'GT', '555-3210', 3, 1, 6, 3);

-- Insertar aviones
INSERT INTO avion (anio, descripcion, marca, max_asientos, modelo, aerolinea_id, estado_id, tripulacion_id)
VALUES
    (2015, 'Boeing 737', 'Boeing', 200, '737-800', 1, 1, 1), -- Activo con tripulación 1
    (2016, 'Airbus A320', 'Airbus', 180, 'A320', 1, 2, NULL),
    (2017, 'Boeing 777', 'Boeing', 300, '777-300ER', 1, 3, NULL),
    (2018, 'Airbus A380', 'Airbus', 500, 'A380', 1, 4, NULL),
    (2019, 'Boeing 787', 'Boeing', 240, '787-9', 1, 5, NULL),

    (2015, 'Boeing 737', 'Boeing', 200, '737-800', 2, 1, 2), -- Activo con tripulación 2
    (2016, 'Airbus A320', 'Airbus', 180, 'A320', 2, 2, NULL),
    (2017, 'Boeing 777', 'Boeing', 300, '777-300ER', 2, 3, NULL),
    (2018, 'Airbus A380', 'Airbus', 500, 'A380', 2, 4, NULL),
    (2019, 'Boeing 787', 'Boeing', 240, '787-9', 2, 5, NULL),

    (2015, 'Boeing 737', 'Boeing', 200, '737-800', 3, 1, 3), -- Activo con tripulación 3
    (2016, 'Airbus A320', 'Airbus', 180, 'A320', 3, 2, NULL),
    (2017, 'Boeing 777', 'Boeing', 300, '777-300ER', 3, 3, NULL),
    (2018, 'Airbus A380', 'Airbus', 500, 'A380', 3, 4, NULL),
    (2019, 'Boeing 787', 'Boeing', 240, '787-9', 3, 5, NULL);

-- Insertar clases de vuelo
INSERT INTO clase_vuelo (nombre, descripcion)
VALUES
    ('Económica', 'Clase económica'),
    ('Ejecutiva', 'Clase ejecutiva');

-- Insertar un vuelo en la tabla vuelo
INSERT INTO vuelo (
    creado_por,
    asientos_disponibles,
    fecha_hora_llegada,
    fecha_hora_salida,
    precio_clase_economica,
    precio_clase_ejecutiva,
    aerolinea_id,
    aeropuerto_llegada_id,
    aeropuerto_salida_id,
    avion_id,
    tripulacion_id
) VALUES (
             'Admin',                -- creado_por
             150,                    -- asientos_disponibles
             '2024-06-01 10:30:00',  -- fecha_hora_llegada
             '2024-06-01 07:00:00',  -- fecha_hora_salida
             300.50,                 -- precio_clase_economica
             600.75,                 -- precio_clase_ejecutiva
             1,                      -- aerolinea_id (American Airlines)
             2,                      -- aeropuerto_llegada_id (Los Angeles International Airport)
             1,                      -- aeropuerto_salida_id (John F. Kennedy International Airport)
             1,                      -- avion_id (Boeing 737 activo)
             1                       -- tripulacion_id (Tripulación 1)
         );
