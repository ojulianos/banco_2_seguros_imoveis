
INSERT INTO imoveis ([im_cod], [im_valor], [im_logradouro], [im_bairro], [im_cidade], [im_uf], [im_numero], [im_tipo], [im_val_iptu])
VALUES
    (1, 250000, 'Rua das Flores', 'Boa Viagem', 'Recife', 'PE', 10, 'Casa', 1500),
    (2, 180000, 'Avenida dos Girassóis', 'Ponta Negra', 'Natal', 'RN', 15, 'Apartamento', 1200),
    (3, 300000, 'Rua das Acácias', 'Ipanema', 'Rio de Janeiro', 'RJ', 20, 'Casa', 2000),
    (4, 220000, 'Avenida dos Lírios', 'Boa Vista', 'Porto Alegre', 'RS', 25, 'Apartamento', 1800),
    (5, 270000, 'Rua das Rosas', 'Alphaville', 'Barueri', 'SP', 30, 'Casa', 1600),
    (6, 190000, 'Avenida dos Cravos', 'Boa Esperança', 'Marabá', 'PA', 35, 'Apartamento', 1300),
    (7, 320000, 'Rua das Orquídeas', 'Praia Grande', 'São Paulo', 'SP', 40, 'Casa', 2200),
    (8, 240000, 'Avenida das Hortênsias', 'Copacabana', 'Rio de Janeiro', 'RJ', 45, 'Apartamento', 1900),
    (9, 280000, 'Rua dos Jasmins', 'Itaim Bibi', 'São Paulo', 'SP', 50, 'Casa', 1700),
    (10, 200000, 'Avenida das Tulipas', 'Setor Bueno', 'Goiânia', 'GO', 55, 'Apartamento', 1400),
    (11, 330000, 'Rua das Violetas', 'Bessa', 'João Pessoa', 'PB', 60, 'Casa', 2300),
    (12, 260000, 'Avenida dos Girassóis', 'Jardim da Penha', 'Vitória', 'ES', 65, 'Apartamento', 2000),
    (13, 350000, 'Rua dos Crisântemos', 'Petrópolis', 'Manaus', 'AM', 70, 'Casa', 2500),
    (14, 230000, 'Avenida das Margaridas', 'Tijuca', 'Rio de Janeiro', 'RJ', 75, 'Apartamento', 2100),
    (15, 290000, 'Rua das Orquídeas', 'Boa Vista', 'Curitiba', 'PR', 80, 'Casa', 1800);

INSERT INTO imovel_fotos ([imf_cod], [imf_imovel_cod], [imf_dt_cad], [imf_arquivo])
VALUES
    (1, 1, '2023-01-01', 'foto1.jpg'),
    (2, 1, '2023-01-02', 'foto2.jpg'),
    (3, 2, '2023-01-03', 'foto3.jpg'),
    (4, 2, '2023-01-04', 'foto4.jpg'),
    (5, 3, '2023-01-05', 'foto5.jpg'),
    (6, 3, '2023-01-06', 'foto6.jpg'),
    (7, 4, '2023-01-07', 'foto7.jpg'),
    (8, 4, '2023-01-08', 'foto8.jpg'),
    (9, 5, '2023-01-09', 'foto9.jpg'),
    (10, 5, '2023-01-10', 'foto10.jpg'),
    (11, 6, '2023-01-11', 'foto11.jpg'),
    (12, 6, '2023-01-12', 'foto12.jpg'),
    (13, 7, '2023-01-13', 'foto13.jpg'),
    (14, 7, '2023-01-14', 'foto14.jpg'),
    (15, 8, '2023-01-15', 'foto15.jpg');