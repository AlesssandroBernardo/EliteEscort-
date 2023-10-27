INSERT INTO marcas (id_marca, nombre) VALUES
	(1, 'Toyota'),
	(2, 'Ford'),
	(3, 'Chevrolet'),
	(4, 'Honda'),
	(5, 'Nissan'),
	(6, 'Volkswagen'),
	(7, 'BMW'),
	(8, 'Mercedes-Benz'),
	(9, 'Audi'),
	(10, 'Hyundai');


INSERT INTO clientes (id_cliente, nombre, apellido, direccion, telefono, direccion_correo)
VALUES
    (1, 'Juan', 'Perez', 'Avenida Grau 123, Lima', 998765432, 'juan.perez@email.com'),
    (2, 'Maria', 'Gonzales', 'Calle San Martin 456, Lima', 987654321, 'maria.gonzales@email.com'),
    (3, 'Carlos', 'Torres', 'Jirón Huallaga 789, Cuzco', 995678901, 'carlos.torres@email.com'),
    (4, 'Ana', 'Lopez', 'Avenida Arequipa 234, Lima', 987012345, 'ana.lopez@email.com'),
    (5, 'Pedro', 'Rodriguez', 'Calle Puno 567, Cuzco', 991234567, 'pedro.rodriguez@email.com'),
    (6, 'Luis', 'Vargas', 'Avenida Tacna 890, Lima', 996543210, 'luis.vargas@email.com'),
    (7, 'Laura', 'Mendoza', 'Calle Cusco 123, Cuzco', 992345678, 'laura.mendoza@email.com'),
    (8, 'Sofia', 'Castro', 'Jirón Ayacucho 456, Lima', 998765432, 'sofia.castro@email.com'),
    (9, 'Diego', 'Chavez', 'Avenida Wilson 789, Lima', 987654321, 'diego.chavez@email.com'),
    (10, 'Valentina', 'Fernandez', 'Calle Huancayo 234, Cuzco', 995678901, 'valentina.fernandez@email.com');


INSERT INTO servicios (id_servicio, nombre_servicio)
VALUES
    (1, 'Cuidado de vivienda'),
    (2, 'Escolta personal'),
    (3, 'Supervisión de seguridad residencial'),
    (4, 'Acompañamiento a eventos y reuniones'),
    (5, 'Protección de testigos'),
    (6, 'Seguridad en viajes'),
    (7, 'Entrenamiento en autodefensa'),
    (8, 'Vigilancia de propiedades privadas'),
    (9, 'Protección de ejecutivos y celebridades'),
    (10, 'Seguridad en desplazamientos y traslados');


INSERT INTO turnos (id_turno, nombre_turno, hora_inicio, hora_fin)
VALUES
    (1, 'Turno Mañana', '08:00:00', '14:00:00'),
    (2, 'Turno Tarde', '14:00:00', '20:00:00'),
    (3, 'Turno Noche', '20:00:00', '02:00:00'),
    (4, 'Turno Madrugada', '02:00:00', '08:00:00');


INSERT INTO sedes (id_sede, direccion, hora_inicio_atencion, hora_fin_atencion)
VALUES
    (1, 'Av. Arequipa 123, Lima', '08:00:00', '17:00:00'),
    (2, 'Jr. Cusco 456, Cuzco', '09:00:00', '18:00:00'),
    (3, 'Calle Huancavelica 789, Lima', '08:30:00', '16:30:00'),
    (4, 'Av. Pachacutec 234, Cuzco', '09:30:00', '17:30:00'),
    (5, 'Jr. Tacna 567, Lima', '07:30:00', '16:30:00'),
    (6, 'Av. Garcilaso de la Vega 890, Cuzco', '10:00:00', '19:00:00'),
    (7, 'Calle Ayacucho 345, Lima', '08:00:00', '18:00:00'),
    (8, 'Av. Grau 678, Cuzco', '09:00:00', '17:00:00'),
    (9, 'Jr. Puno 123, Lima', '08:30:00', '17:30:00'),
    (10, 'Av. Wilson 456, Cuzco', '08:00:00', '16:00:00');


INSERT INTO modelos (id_modelos, nombre_modelo, id_marca)
VALUES
    (1, 'Corolla', 1),
    (2, 'Camry', 1),
    (3, 'Mustang', 2),
    (4, 'F-150', 2),
    (5, 'Cruze', 3),
    (6, 'Malibu', 3),
    (7, 'Civic', 4),
    (8, 'Accord', 4),
    (9, 'Altima', 5),
    (10, 'Maxima', 5);


INSERT INTO vehiculos (id_vehiculo, matricula, id_modelo)
VALUES
    (1, 'ABC-123', 1),    
    (2, 'DEF-456', 2),    
    (3, 'GHI-789', 3),    
    (4, 'JKL-012', 4),    
    (5, 'MNO-345', 5),    
    (6, 'PQR-678', 6),    
    (7, 'STU-901', 7),   
    (8, 'VWX-234', 8),    
    (9, 'YZA-567', 9),   
    (10, 'BCD-890', 10);  


INSERT INTO guardaespaldas (id_guardaespalda, nombre, apellido, direccion_correo, calificacion, id_sede)
VALUES
    (1, 'Juan', 'Perez', 'juan.perez@email.com', 4, 1),      
    (2, 'Maria', 'Gonzales', 'maria.gonzales@email.com', 3, 2), 
    (3, 'Carlos', 'Torres', 'carlos.torres@email.com', 5, 5),  
    (4, 'Ana', 'Lopez', 'ana.lopez@email.com', 4, 3),       
    (5, 'Pedro', 'Rodriguez', 'pedro.rodriguez@email.com', 3, 4),
    (6, 'Luis', 'Vargas', 'luis.vargas@email.com', 5, 8),    
    (7, 'Laura', 'Mendoza', 'laura.mendoza@email.com', 4, 7),  
    (8, 'Sofia', 'Castro', 'sofia.castro@email.com', 3, 9),    
    (9, 'Diego', 'Chavez', 'diego.chavez@email.com', 5, 6),    
    (10, 'Valentina', 'Fernandez', 'valentina.fernandez@email.com', 4, 10); 

INSERT INTO guardaespaldas_turnos (id_guardaespalda, id_turno)
VALUES
    (1, 1), -- Juan Perez -> turno mañana
    (2, 2), -- Maria Gonzales -> turno tarde
    (3, 3), -- Carlos Torres -> turno noche
    (4, 4), -- Ana Lopez -> turno madrugada
    (5, 1), -- Pedro Rodriguez -> turno mañana
    (6, 2), -- Luis Vargas -> turno tarde
    (7, 3), -- Laura Mendoza -> turno noche
    (8, 4), -- Sofia Castro -> turno madrugada
    (9, 1), -- Diego Chavez -> turno mañana
    (10, 2); -- Valentina Fernandez -> turno tarde

INSERT INTO solicitudes (id_solicitud, fecha_inicio, fecha_fin, id_cliente, id_vehiculo, id__servicio)
VALUES
    (1, '2023-10-27 09:00:00', '2023-10-27 12:00:00', 1, 1, 2),    -- Juan Perez solicita un vehículo para escolta personal
    (2, '2023-10-27 14:00:00', '2023-10-27 17:00:00', 2, 2, 4),    -- Maria Gonzales solicita un vehículo para acompañamiento a eventos y reuniones
    (3, '2023-10-28 10:00:00', '2023-10-28 15:00:00', 3, 3, 9),    -- Carlos Torres solicita un vehículo para protección de ejecutivos y celebridades
    (4, '2023-10-28 20:00:00', '2023-10-29 02:00:00', 4, 4, 3),    -- Ana Lopez solicita un vehículo para supervisión de seguridad residencial
    (5, '2023-10-29 08:00:00', '2023-10-29 11:00:00', 5, 5, 6),    -- Pedro Rodriguez solicita un vehículo para seguridad en viajes
    (6, '2023-10-29 14:00:00', '2023-10-29 18:00:00', 6, 6, 1),    -- Luis Vargas solicita un vehículo para cuidado de vivienda
    (7, '2023-10-30 12:00:00', '2023-10-30 15:00:00', 7, 7, 5),    -- Laura Mendoza solicita un vehículo para protección de testigos
    (8, '2023-10-30 18:00:00', '2023-10-31 02:00:00', 8, 8, 8),    -- Sofia Castro solicita un vehículo para vigilancia de propiedades privadas
    (9, '2023-10-31 10:00:00', '2023-10-31 13:00:00', 9, 9, 10),   -- Diego Chavez solicita un vehículo para seguridad en desplazamientos y traslados
    (10, '2023-10-31 20:00:00', '2023-11-01 02:00:00', 10, 10, 7),  -- Valentina Fernandez solicita un vehículo para entrenamiento en autodefensa
	(11, '2023-11-01 10:00:00', '2023-11-01 13:00:00', 1, NULL, 2),  -- Juan Perez solicita el servicio sin vehículo
    (12, '2023-11-01 14:00:00', '2023-11-01 17:00:00', 2, NULL, 4),  -- Maria Gonzales solicita el servicio sin vehículo
    (13, '2023-11-02 10:00:00', '2023-11-02 15:00:00', 3, NULL, 9),  -- Carlos Torres solicita el servicio sin vehículo
    (14, '2023-11-02 20:00:00', '2023-11-03 02:00:00', 4, NULL, 3),  -- Ana Lopez solicita el servicio sin vehículo
    (15, '2023-11-03 08:00:00', '2023-11-03 11:00:00', 5, NULL, 6),  -- Pedro Rodriguez solicita el servicio sin vehículo
    (16, '2023-11-03 14:00:00', '2023-11-03 18:00:00', 6, NULL, 1),  -- Luis Vargas solicita el servicio sin vehículo
    (17, '2023-11-04 12:00:00', '2023-11-04 15:00:00', 7, NULL, 5),  -- Laura Mendoza solicita el servicio sin vehículo
    (18, '2023-11-04 18:00:00', '2023-11-05 02:00:00', 8, NULL, 8),  -- Sofia Castro solicita el servicio sin vehículo
    (19, '2023-11-05 10:00:00', '2023-11-05 13:00:00', 9, NULL, 10), -- Diego Chavez solicita el servicio sin vehículo
    (20, '2023-11-05 20:00:00', '2023-11-06 02:00:00', 10, NULL, 7);  -- Valentina Fernandez solicita el servicio sin vehículo

INSERT INTO solicitudes_guardaespaldas (id_solicitud, id_guardaespalda, tarifa)
VALUES
    (1, 1,67.54),  -- Asignar a Juan Perez a la solicitud 1
    (1, 2,56.23 ),  -- Asignar a Maria Gonzales a la solicitud 1
    (2, 3,99.12 ),  -- Asignar a Carlos Torres a la solicitud 2
    (2, 4,44.77 ),  -- Asignar a Ana Lopez a la solicitud 2
    (3, 5,88.65),  -- Asignar a Pedro Rodriguez a la solicitud 3
    (3, 6,33.21),  -- Asignar a Luis Vargas a la solicitud 3
    (4, 7,76.89),  -- Asignar a Laura Mendoza a la solicitud 4
    (5, 8,79.45),  -- Asignar a Sofia Castro a la solicitud 5
    (6, 9,55.76),  -- Asignar a Diego Chavez a la solicitud 6
    (7, 10,67.88);  -- Asignar a Valentina Fernandez a la solicitud 7

