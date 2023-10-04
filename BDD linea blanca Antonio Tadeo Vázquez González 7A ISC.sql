-- Crea la base de datos
CREATE DATABASE linea_blanca;

-- Cambia al contexto de la base de datos
USE linea_blanca;

-- Crea la tabla de ventas
CREATE TABLE ventas (
  id_venta INT NOT NULL,
  fecha_venta DATETIME NOT NULL,
  id_cliente INT NOT NULL,
  id_producto INT NOT NULL,
  cantidad INT NOT NULL,
  precio_unitario FLOAT NOT NULL,
  total FLOAT NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
  FOREIGN KEY (id_producto) REFERENCES productos (id_producto)
);

-- Crea la tabla de proveedores
CREATE TABLE proveedores (
  id_proveedor INT NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  telefono VARCHAR(255) NOT NULL,
  correo_electronico VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_proveedor)
);

-- Crea la tabla de clientes
CREATE TABLE clientes (
  id_cliente INT NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  telefono VARCHAR(255) NOT NULL,
  correo_electronico VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_cliente)
);

-- Crea la tabla de productos
CREATE TABLE productos (
  id_producto INT NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  precio_unitario FLOAT NOT NULL,
  stock INT NOT NULL,
  id_categoria INT NOT NULL,
  FOREIGN KEY (id_categoria) REFERENCES categorias_productos (id_categoria)
);

-- Crea la tabla de categorías de productos
CREATE TABLE categorias_productos (
  id_categoria INT NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_categoria)
);

-- Rellenar la tabla de productos
  INSERT INTO productos (id_producto,nombre, descripcion, precio_unitario, stock,id_categoria)
VALUES
  (1,'Secadora', 'Secadora capacidad 17 Kg', 15000, 10,2),
  (2,'Aire acondicionado', 'Aire acondicionado de 2 toneladas', 10000, 20,2),
  (3,'Lavadora secadora', 'Lavadora secadora de 10 kg', 7000, 30,3),
  (4,'Robot aspirador', 'Robot aspirador con mapeo láser', 6000, 40,3),
  (5,'Horno de microondas', 'Horno de microondas con convección', 5000, 50,3);

  INSERT INTO productos (id_producto,nombre, descripcion, precio_unitario, stock,id_categoria)
VALUES
  (6,'Lavadora', 'Lavadora de carga frontal con capacidad de 10 kg', 5000, 20,4),
  (7,'Refrigerador', 'Refrigerador de dos puertas con capacidad de 20 pies cúbicos', 6000, 30,2),
  (8,'Lavavajillas', 'Lavavajillas de 12 platos', 3000, 40,3),
  (9,'Microondas', 'Microondas de 20 litros', 4000, 50,3),
  (10,'Lavaora','MABE 18 Kg',9800,20,4);
-- Rellenar la tabla de categorías de productos
INSERT INTO categorias_productos (id_categoria,nombre)
VALUES
  (1,'Electrónica'),
  (2,'Electrodomésticos'),
  (3,'Cocina');
INSERT INTO categorias_productos (id_categoria,nombre)
VALUES
(4,'Area de lavado');

-- Rellenar la tabla de clientes
INSERT INTO clientes (id_cliente,nombre, direccion, telefono, correo_electronico)
VALUES
  (1,'María García', 'Calle Principal 456, Monterrey', '8181818181', 'maria.garcia@example.com'),
  (2,'Pedro López', 'Blvd. Revolución 789, Guadalajara', '3333333333', 'pedro.lopez@example.com'),
  (3,'Ana Smith', 'Av. Independencia 123, Ciudad de México', '5555555556', 'ana.smith@example.com'),
  (4,'Luis Hernández', 'Calle Morelos 456, Monterrey', '8181818182', 'luis.hernandez@example.com');

  INSERT INTO clientes (id_cliente,nombre, direccion, telefono, correo_electronico)
VALUES
  (5,'José Martínez', 'Calle Juárez 123, Ciudad de México', '5555555557', 'jose.martinez@example.com'),
  (6,'Laura Pérez', 'Calle Hidalgo 456, Monterrey', '8181818183', 'laura.perez@example.com'),
  (7,'Carlos López', 'Blvd. Madero 789, Guadalajara', '3333333335', 'carlos.lopez@example.com'),
  (8,'María Smith', 'Av. López Mateos 123, Ciudad de México', '5555555558', 'maria.smith@example.com'),
  (9,'Pedro Hernández', 'Calle Morelos 789, Monterrey', '8181818184', 'pedro.hernandez@example.com'),
  (10,'Luis García', 'Blvd. Juárez 456, Guadalajara', '3333333336', 'luis.garcia@example.com');

  INSERT INTO proveedores (id_proveedor,nombre, direccion, telefono, correo_electronico)
VALUES
  (1,'Juan Pérez', 'Calle Falsa 123, Ciudad de México', '5555555556', 'juan.perez@gmail.com'),
  (2,'María González', 'Blvd. Real 789, Monterrey', '8181818187', 'maria.gonzalez@hotmail.com'),
  (3,'Pedro Hernández', 'Av. Principal 456, Guadalajara', '3333333338', 'pedro.hernandez@yahoo.com'),
  (4,'Ana López', 'Calle Morelos 789, Monterrey', '8181818188', 'ana.lopez@live.com'),
  (5,'Luis García', 'Blvd. Juárez 456, Guadalajara', '3333333339', 'luis.garcia@outlook.com'),
  (6,'Carlos Ramírez', 'Calle Hidalgo 456, Monterrey', '8181818189', 'carlos.ramirez@msn.com'),
  (7,'David Sánchez', 'Av. López Mateos 123, Ciudad de México', '5555555559', 'david.sanchez@aol.com'),
  (8,'Eduardo Torres', 'Calle Morelos 789, Monterrey', '8181818190', 'eduardo.torres@icloud.com'),
  (9,'Fernanda Vázquez', 'Blvd. Juárez 456, Guadalajara', '3333333339', 'fernanda.vazquez@mac.com'),
  (10,'Antonio Vazquez','Juarez Sur 804, Monclova Coahuila','8661259876','tadeo@gmail.com');

  INSERT INTO ventas (id_venta,fecha_venta, id_cliente, id_producto, cantidad, precio_unitario, total)
VALUES
  (1,'2023-07-20', 1, 1, 1, 5000, 5000),
  (2,'2023-07-21', 2, 2, 2, 6000, 12000),
  (3,'2023-07-22', 3, 3, 3, 3000, 9000),
  (4,'2023-07-23', 4, 4, 4, 4000, 16000),
  (5,'2023-07-24', 5, 5, 5, 5000, 25000),
  (6,'2023-07-25', 6, 6, 6, 3000, 18000),
  (7,'2023-07-26', 7, 7, 7, 4000, 28000),
  (8,'2023-07-27', 8, 8, 8, 5000, 40000),
  (9,'2023-07-28', 9, 9, 9, 6000, 54000),
  (10,'2023-07-29', 10, 10, 1, 5000, 5000);