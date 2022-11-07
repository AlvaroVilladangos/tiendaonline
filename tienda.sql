DROP TABLE IF EXISTS articulos CASCADE;

CREATE TABLE articulos (
    id          bigserial PRIMARY KEY,
    codigo      varchar(13) NOT NULL UNIQUE,
    descripcion varchar(255) NOT NULL,
    precio      numeric(7,2) NOT NULL,
);

--FEATURES

INSERT INTO articulos(codigo, descripcion, precio)
    VALUES ('1254687391542', 'Yogur piña', 200),
           ('1254458621542', 'Tgireton', 50),
           ('5874693524896', 'Disco duro', 150.32); 