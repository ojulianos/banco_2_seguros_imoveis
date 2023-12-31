-- Em caso de problemas para adicionar os dados deve ser executado o script abaixo para cada tabela:
-- SET IDENTITY_INSERT {tabela} ON GO

INSERT INTO clientes ([cli_dt_cad], [cli_dt_alt], [cli_nome], [cli_documento], [cli_documento2], [cli_logradouro], [cli_bairro], [cli_cidade], [cli_uf], [cli_numero], [cli_telefone], [cli_telefone2], [cli_pai], [cli_mae], [cli_rendimento])
VALUES
    ('2023-01-01', '2023-01-05', 'Maria Silva', '12345678901', '98765432101', 'Rua das Flores', 'Boa Viagem', 'Recife', 'PE', 10, '999999999', '888888888', 'Pai 1', 'Mãe 1', 5000),
    ('2023-01-02', '2023-01-06', 'João Santos', '98765432101', '12345678901', 'Avenida dos Girassóis', 'Ponta Negra', 'Natal', 'RN', 15, '777777777', '666666666', 'Pai 2', 'Mãe 2', 6000),
    ('2023-01-03', '2023-01-07', 'Ana Souza', '45678901201', '21098765401', 'Rua das Acácias', 'Ipanema', 'Rio de Janeiro', 'RJ', 20, '555555555', '444444444', 'Pai 3', 'Mãe 3', 7000),
    ('2023-01-04', '2023-01-08', 'Pedro Oliveira', '78901234501', '32109876501', 'Avenida dos Lírios', 'Boa Vista', 'Porto Alegre', 'RS', 25, '333333333', '222222222', 'Pai 4', 'Mãe 4', 8000),
    ('2023-01-05', '2023-01-09', 'Carla Lima', '23456789001', '54321098701', 'Rua das Rosas', 'Alphaville', 'Barueri', 'SP', 30, '111111111', '000000000', 'Pai 5', 'Mãe 5', 9000),
    ('2023-01-06', '2023-01-10', 'Marcos Vieira', '56789012301', '76543210901', 'Avenida dos Cravos', 'Boa Esperança', 'Marabá', 'PA', 35, '222222222', '333333333', 'Pai 6', 'Mãe 6', 10000),
    ('2023-01-07', '2023-01-11', 'Lúcia Ferreira', '89012345601', '10987654301', 'Rua das Orquídeas', 'Praia Grande', 'São Paulo', 'SP', 40, '888888888', '999999999', 'Pai 7', 'Mãe 7', 11000),
    ('2023-01-08', '2023-01-12', 'Rafaela Gomes', '01234567801', '21098765432', 'Avenida das Hortênsias', 'Copacabana', 'Rio de Janeiro', 'RJ', 45, '444444444', '555555555', 'Pai 8', 'Mãe 8', 12000),
    ('2023-01-09', '2023-01-13', 'Fernando Costa', '12345678910', '43210987654', 'Rua dos Jasmins', 'Itaim Bibi', 'São Paulo', 'SP', 50, '999999999', '888888888', 'Pai 9', 'Mãe 9', 13000),
    ('2023-01-10', '2023-01-14', 'Juliana Pereira', '23456789101', '98765432109', 'Avenida das Tulipas', 'Setor Bueno', 'Goiânia', 'GO', 55, '777777777', '666666666', 'Pai 10', 'Mãe 10', 14000),
    ('2023-01-11', '2023-01-15', 'Anderson Rodrigues', '34567891012', '87654321098', 'Rua das Violetas', 'Bessa', 'João Pessoa', 'PB', 60, '666666666', '777777777', 'Pai 11', 'Mãe 11', 15000),
    ('2023-01-15', '2023-01-19', 'Roberto Santos', '78910111234', '87654321098', 'Avenida das Violetas', 'Boa Vista', 'Recife', 'PE', 22, '333333333', '444444444', 'Pai 12', 'Mãe 12', 19000),
    ('2023-01-16', '2023-01-20', 'Carolina Lima', '89101112134', '76543210987', 'Rua dos Cravos', 'Aldeota', 'Fortaleza', 'CE', 45, '555555555', '666666666', 'Pai 13', 'Mãe 13', 20000),
    ('2023-01-17', '2023-01-21', 'Lucas Oliveira', '91011121345', '65432109876', 'Avenida dos Jasmins', 'Boa Esperança', 'Manaus', 'AM', 33, '777777777', '888888888', 'Pai 14', 'Mãe 14', 21000),
    ('2023-01-18', '2023-01-22', 'Marina Costa', '10111213145', '54321098765', 'Rua das Tulipas', 'Centro', 'Goiânia', 'GO', 55, '999999999', '000000000', 'Pai 15', 'Mãe 15', 22000),
    ('2023-01-19', '2023-01-23', 'Henrique Silva', '11121314156', '43210987654', 'Avenida dos Crisântemos', 'São Mateus', 'São Paulo', 'SP', 88, '111111111', '222222222', 'Pai 16', 'Mãe 16', 23000),
    ('2023-01-20', '2023-01-24', 'Tatiane Souza', '12131415167', '32109876543', 'Rua das Orquídeas', 'Boa Viagem', 'Recife', 'PE', 77, '333333333', '444444444', 'Pai 17', 'Mãe 17', 24000),
    ('2023-01-21', '2023-01-25', 'Ricardo Alves', '13141516178', '21098765432', 'Avenida dos Lírios', 'Alphaville', 'Barueri', 'SP', 66, '555555555', '666666666', 'Pai 18', 'Mãe 18', 25000),
    ('2023-01-22', '2023-01-26', 'Fernanda Pereira', '14151617189', '10987654321', 'Rua das Rosas', 'Centro', 'Goiânia', 'GO', 44, '777777777', '888888888', 'Pai 19', 'Mãe 19', 26000),
    ('2023-01-23', '2023-01-27', 'Guilherme Mendes', '15161718190', '98765432109', 'Avenida das Flores', 'Ipanema', 'Rio de Janeiro', 'RJ', 99, '999999999', '000000000', 'Pai 20', 'Mãe 20', 27000),
    ('2023-01-24', '2023-01-28', 'Amanda Ferreira', '16171819200', '87654321098', 'Rua dos Cravos', 'Barra da Tijuca', 'Rio de Janeiro', 'RJ', 11, '111111111', '222222222', 'Pai 21', 'Mãe 21', 28000),
    ('2023-01-25', '2023-01-29', 'Paulo Santos', '17181920011', '76543210987', 'Avenida dos Jasmins', 'Boa Esperança', 'Manaus', 'AM', 22, '333333333', '444444444', 'Pai 22', 'Mãe 22', 29000),
    ('2023-01-26', '2023-01-30', 'Larissa Costa', '18192001122', '65432109876', 'Rua das Tulipas', 'Setor Bueno', 'Goiânia', 'GO', 33, '555555555', '666666666', 'Pai 23', 'Mãe 23', 30000),
    ('2023-01-27', '2023-01-31', 'Felipe Oliveira', '19200112233', '54321098765', 'Avenida dos Crisântemos', 'Boa Vista', 'Recife', 'PE', 44, '777777777', '888888888', 'Pai 24', 'Mãe 24', 31000),
    ('2023-01-28', '2023-02-01', 'Carolina Lima', '20011223344', '43210987654', 'Rua das Orquídeas', 'Aldeota', 'Fortaleza', 'CE', 55, '999999999', '000000000', 'Pai 24', 'Mãe 24', 31000);


INSERT INTO imoveis ([im_valor], [im_logradouro], [im_bairro], [im_cidade], [im_uf], [im_numero], [im_tipo], [im_val_iptu])
VALUES
    (250000, 'Rua das Flores', 'Boa Viagem', 'Recife', 'PE', 10, 'Casa', 1500),
    (180000, 'Avenida dos Girassóis', 'Ponta Negra', 'Natal', 'RN', 15, 'Apartamento', 1200),
    (300000, 'Rua das Acácias', 'Ipanema', 'Rio de Janeiro', 'RJ', 20, 'Casa', 2000),
    (220000, 'Avenida dos Lírios', 'Boa Vista', 'Porto Alegre', 'RS', 25, 'Apartamento', 1800),
    (270000, 'Rua das Rosas', 'Alphaville', 'Barueri', 'SP', 30, 'Casa', 1600),
    (190000, 'Avenida dos Cravos', 'Boa Esperança', 'Marabá', 'PA', 35, 'Apartamento', 1300),
    (320000, 'Rua das Orquídeas', 'Praia Grande', 'São Paulo', 'SP', 40, 'Casa', 2200),
    (240000, 'Avenida das Hortênsias', 'Copacabana', 'Rio de Janeiro', 'RJ', 45, 'Apartamento', 1900),
    (280000, 'Rua dos Jasmins', 'Itaim Bibi', 'São Paulo', 'SP', 50, 'Casa', 1700),
    (200000, 'Avenida das Tulipas', 'Setor Bueno', 'Goiânia', 'GO', 55, 'Apartamento', 1400),
    (330000, 'Rua das Violetas', 'Bessa', 'João Pessoa', 'PB', 60, 'Casa', 2300),
    (260000, 'Avenida dos Girassóis', 'Jardim da Penha', 'Vitória', 'ES', 65, 'Apartamento', 2000),
    (350000, 'Rua dos Crisântemos', 'Petrópolis', 'Manaus', 'AM', 70, 'Casa', 2500),
    (230000, 'Avenida das Margaridas', 'Tijuca', 'Rio de Janeiro', 'RJ', 75, 'Apartamento', 2100),
    (290000, 'Rua das Orquídeas', 'Boa Vista', 'Curitiba', 'PR', 80, 'Casa', 1800),
    (180000, 'Avenida dos Girassóis', 'Ponta Negra', 'Natal', 'RN', 15, 'Apartamento', 1200),
    (300000, 'Rua das Acácias', 'Ipanema', 'Rio de Janeiro', 'RJ', 20, 'Casa', 2000),
    (220000, 'Avenida dos Lírios', 'Boa Vista', 'Porto Alegre', 'RS', 25, 'Apartamento', 1800),
    (270000, 'Rua das Rosas', 'Alphaville', 'Barueri', 'SP', 30, 'Casa', 1600),
    (190000, 'Avenida dos Cravos', 'Boa Esperança', 'Marabá', 'PA', 35, 'Apartamento', 1300),
    (320000, 'Rua das Orquídeas', 'Praia Grande', 'São Paulo', 'SP', 40, 'Casa', 2200),
    (240000, 'Avenida das Hortênsias', 'Copacabana', 'Rio de Janeiro', 'RJ', 45, 'Apartamento', 1900),
    (280000, 'Rua dos Jasmins', 'Itaim Bibi', 'São Paulo', 'SP', 50, 'Casa', 1700),
    (200000, 'Avenida das Tulipas', 'Setor Bueno', 'Goiânia', 'GO', 55, 'Apartamento', 1400),
    (330000, 'Rua das Violetas', 'Bessa', 'João Pessoa', 'PB', 60, 'Casa', 2300),
    (260000, 'Avenida dos Girassóis', 'Jardim da Penha', 'Vitória', 'ES', 65, 'Apartamento', 2000),
    (350000, 'Rua dos Crisântemos', 'Petrópolis', 'Manaus', 'AM', 70, 'Casa', 2500),
    (230000, 'Avenida das Margaridas', 'Tijuca', 'Rio de Janeiro', 'RJ', 75, 'Apartamento', 2100),
    (290000, 'Rua das Orquídeas', 'Boa Vista', 'Curitiba', 'PR', 80, 'Casa', 1800);


INSERT INTO apolices ([apo_im_cod], [apo_cli_cod], [apo_dt_cad], [apo_dt_alt], [apo_dt_inicio_vigencia], [apo_dt_fim_vigencia], [apo_valor_cobertura], [apo_valor_franquia])
VALUES
    (1, 1, null, null, '2023-02-01', '2024-01-31', 500000, 10000),
    (2, 1, null, null, '2023-03-01', '2024-02-29', 400000, 8000),
    (3, 1, null, null, '2023-04-01', '2024-03-31', 600000, 12000),
    (4, 4, null, null, '2023-05-01', '2024-04-30', 550000, 11000),
    (5, 5, null, null, '2023-06-01', '2024-05-31', 480000, 9600),
    (6, 6, null, null, '2023-07-01', '2024-06-30', 520000, 10400),
    (7, 7, null, null, '2023-08-01', '2024-07-31', 650000, 13000),
    (8, 8, null, null, '2023-09-01', '2024-08-31', 470000, 9400),
    (9, 8, null, null, '2023-10-01', '2024-09-30', 510000, 10200),
    (10, 10, null, null, '2023-11-01', '2024-10-31', 590000, 11800),
    (11, 11, null, null, '2023-12-01', '2024-11-30', 630000, 12600),
    (4, 4, null, null, '2023-05-01', '2024-04-30', 550000, 11000),
    (5, 5, null, null, '2023-06-01', '2024-05-31', 480000, 9600),
    (6, 6, null, null, '2023-07-01', '2024-06-30', 520000, 10400),
    (7, 7, null, null, '2023-08-01', '2024-07-31', 650000, 13000),
    (8, 8, null, null, '2023-09-01', '2024-08-31', 470000, 9400),
    (9, 8, null, null, '2023-10-01', '2024-09-30', 510000, 10200),
    (10, 10, null, null, '2023-11-01', '2024-10-31', 590000, 11800),
    (11, 11, null, null, '2023-12-01', '2024-11-30', 630000, 12600),
    (4, 4, null, null, '2023-05-01', '2024-04-30', 550000, 11000),
    (5, 5, null, null, '2023-06-01', '2024-05-31', 480000, 9600),
    (6, 6, null, null, '2023-07-01', '2024-06-30', 520000, 10400),
    (7, 7, null, null, '2023-08-01', '2024-07-31', 650000, 13000),
    (8, 8, null, null, '2023-09-01', '2024-08-31', 470000, 9400),
    (9, 8, null, null, '2023-10-01', '2024-09-30', 510000, 10200),
    (10, 10, null, null, '2023-11-01', '2024-10-31', 590000, 11800),
    (11, 11, null, null, '2023-12-01', '2024-11-30', 630000, 12600),
    (4, 4, null, null, '2023-05-01', '2024-04-30', 550000, 11000),
    (5, 5, null, null, '2023-06-01', '2024-05-31', 480000, 9600),
    (6, 6, null, null, '2023-07-01', '2024-06-30', 520000, 10400),
    (7, 7, null, null, '2023-08-01', '2024-07-31', 650000, 13000),
    (8, 8, null, null, '2023-09-01', '2024-08-31', 470000, 9400),
    (9, 8, null, null, '2023-10-01', '2024-09-30', 510000, 10200),
    (10, 10, null, null, '2023-11-01', '2024-10-31', 590000, 11800),
    (11, 11, null, null, '2023-12-01', '2024-11-30', 630000, 12600);


INSERT INTO apolice_itens ([api_apo_cod], [api_descricao])
VALUES
    (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non tellus id tortor eleifend dictum. Morbi id mollis justo, eu sodales ante. Sed ac aliquet enim. Donec tincidunt metus ac nisl vestibulum, vitae fringilla nulla congue. Curabitur viverra urna eu arcu auctor, sit amet lobortis sapien finibus. Suspendisse potenti. Praesent ullamcorper vulputate orci vitae scelerisque. Sed at nulla nec velit eleifend commodo. Nam dapibus velit a leo placerat, nec commodo mi tristique. Duis non odio nec libero eleifend sagittis. Nullam ut odio turpis. In a massa sed turpis auctor posuere. Sed sit amet odio nec ex sollicitudin tristique. Fusce aliquet venenatis justo, sit amet ultricies magna scelerisque eget.'),
    (2, 'Suspendisse vitae quam varius, sollicitudin sapien in, gravida urna. Duis ultricies turpis justo, ac posuere libero facilisis eu. Aenean id metus vel neque convallis tincidunt a nec sapien. Integer hendrerit ultrices fermentum. Phasellus eget aliquam lorem, id dictum nulla. Donec tristique aliquet turpis a feugiat. Etiam id ipsum a augue tempor facilisis in sit amet nisi. Suspendisse potenti. Nullam commodo varius justo, eu lacinia lectus tempor at. Vestibulum euismod commodo lacus, a interdum lectus euismod at. Maecenas auctor euismod eros non vehicula. Nullam sed arcu quis libero maximus malesuada. Sed eu quam vitae lectus aliquam convallis. Aliquam consequat, nisi in laoreet commodo, quam leo facilisis libero, et placerat ante orci et mi.'),
    (3, 'Vivamus placerat commodo eros, id congue neque dictum eget. Sed nec nunc libero. Nam nec odio nec nisl blandit lacinia a eget est. Nulla varius hendrerit metus, eget sodales nulla ullamcorper in. Nam feugiat tellus sed turpis tempor, in ultricies lacus facilisis. Curabitur vestibulum placerat nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed sit amet leo nec quam consequat faucibus eu nec est. Nulla facilisi. Cras nec convallis elit. Vivamus quis mi justo. Sed nec posuere urna, nec auctor purus. Curabitur finibus justo sit amet justo facilisis, id auctor urna efficitur.'),
    (4, 'Pellentesque eget mauris quis augue feugiat tincidunt. Vivamus pharetra, metus sit amet gravida posuere, magna mi rhoncus ligula, vitae fermentum elit enim id sapien. Fusce tristique volutpat sapien, id laoreet ipsum consequat ut. Donec hendrerit, lacus in efficitur eleifend, turpis odio hendrerit neque, a eleifend elit urna nec velit. In hac habitasse platea dictumst. Aliquam sagittis lectus et libero tincidunt, at laoreet risus dictum. Morbi id augue in lectus vulputate vulputate at id diam. Ut eget odio vehicula, aliquam ante eget, dictum neque. Nulla facilisi. Aenean eget erat sed est placerat sodales. Suspendisse potenti. Nam id risus ultricies, vulputate lectus nec, suscipit urna. Sed non velit vestibulum, consequat libero ut, consectetur justo.'),
    (5, 'Proin vitae maximus purus. Sed ut turpis sit amet tortor congue placerat. Integer convallis magna nec ipsum consectetur facilisis. Duis mollis bibendum erat, vitae scelerisque ipsum feugiat vel. Vestibulum malesuada posuere sem, in egestas tortor laoreet nec. Nulla facilisi. Proin sodales justo a libero tincidunt, non eleifend magna dictum. Maecenas tincidunt nibh sit amet rhoncus tincidunt. Sed nec sem in ligula placerat consectetur id eu ligula. Aliquam erat volutpat. Etiam ac lacinia arcu, in tincidunt elit. Donec elementum magna a fermentum fringilla. Suspendisse lacinia purus a nibh luctus bibendum. Nullam vitae tristique metus. Donec tincidunt id ante sit amet tincidunt. Aliquam nec malesuada orci, vel ultrices magna. Donec ultricies, enim at scelerisque eleifend, elit enim luctus ligula, vitae laoreet lacus lorem eget odio.'),
    (10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non tellus id tortor eleifend dictum. Morbi id mollis justo, eu sodales ante. Sed ac aliquet enim. Donec tincidunt metus ac nisl vestibulum, vitae fringilla nulla congue. Curabitur viverra urna eu arcu auctor, sit amet lobortis sapien finibus. Suspendisse potenti. Praesent ullamcorper vulputate orci vitae scelerisque. Sed at nulla nec velit eleifend commodo. Nam dapibus velit a leo placerat, nec commodo mi tristique. Duis non odio nec libero eleifend sagittis. Nullam ut odio turpis. In a massa sed turpis auctor posuere. Sed sit amet odio nec ex sollicitudin tristique. Fusce aliquet venenatis justo, sit amet ultricies magna scelerisque eget.'),
    (11, 'Suspendisse vitae quam varius, sollicitudin sapien in, gravida urna. Duis ultricies turpis justo, ac posuere libero facilisis eu. Aenean id metus vel neque convallis tincidunt a nec sapien. Integer hendrerit ultrices fermentum. Phasellus eget aliquam lorem, id dictum nulla. Donec tristique aliquet turpis a feugiat. Etiam id ipsum a augue tempor facilisis in sit amet nisi. Suspendisse potenti. Nullam commodo varius justo, eu lacinia lectus tempor at. Vestibulum euismod commodo lacus, a interdum lectus euismod at. Maecenas auctor euismod eros non vehicula. Nullam sed arcu quis libero maximus malesuada. Sed eu quam vitae lectus aliquam convallis. Aliquam consequat, nisi in laoreet commodo, quam leo facilisis libero, et placerat ante orci et mi.'),
    (10, 'Vivamus placerat commodo eros, id congue neque dictum eget. Sed nec nunc libero. Nam nec odio nec nisl blandit lacinia a eget est. Nulla varius hendrerit metus, eget sodales nulla ullamcorper in. Nam feugiat tellus sed turpis tempor, in ultricies lacus facilisis. Curabitur vestibulum placerat nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed sit amet leo nec quam consequat faucibus eu nec est. Nulla facilisi. Cras nec convallis elit. Vivamus quis mi justo. Sed nec posuere urna, nec auctor purus. Curabitur finibus justo sit amet justo facilisis, id auctor urna efficitur.'),
    (4, 'Pellentesque eget mauris quis augue feugiat tincidunt. Vivamus pharetra, metus sit amet gravida posuere, magna mi rhoncus ligula, vitae fermentum elit enim id sapien. Fusce tristique volutpat sapien, id laoreet ipsum consequat ut. Donec hendrerit, lacus in efficitur eleifend, turpis odio hendrerit neque, a eleifend elit urna nec velit. In hac habitasse platea dictumst. Aliquam sagittis lectus et libero tincidunt, at laoreet risus dictum. Morbi id augue in lectus vulputate vulputate at id diam. Ut eget odio vehicula, aliquam ante eget, dictum neque. Nulla facilisi. Aenean eget erat sed est placerat sodales. Suspendisse potenti. Nam id risus ultricies, vulputate lectus nec, suscipit urna. Sed non velit vestibulum, consequat libero ut, consectetur justo.'),
    (5, 'Proin vitae maximus purus. Sed ut turpis sit amet tortor congue placerat. Integer convallis magna nec ipsum consectetur facilisis. Duis mollis bibendum erat, vitae scelerisque ipsum feugiat vel. Vestibulum malesuada posuere sem, in egestas tortor laoreet nec. Nulla facilisi. Proin sodales justo a libero tincidunt, non eleifend magna dictum. Maecenas tincidunt nibh sit amet rhoncus tincidunt. Sed nec sem in ligula placerat consectetur id eu ligula. Aliquam erat volutpat. Etiam ac lacinia arcu, in tincidunt elit. Donec elementum magna a fermentum fringilla. Suspendisse lacinia purus a nibh luctus bibendum. Nullam vitae tristique metus. Donec tincidunt id ante sit amet tincidunt. Aliquam nec malesuada orci, vel ultrices magna. Donec ultricies, enim at scelerisque eleifend, elit enim luctus ligula, vitae laoreet lacus lorem eget odio.'),
    (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non tellus id tortor eleifend dictum. Morbi id mollis justo, eu sodales ante. Sed ac aliquet enim. Donec tincidunt metus ac nisl vestibulum, vitae fringilla nulla congue. Curabitur viverra urna eu arcu auctor, sit amet lobortis sapien finibus. Suspendisse potenti. Praesent ullamcorper vulputate orci vitae scelerisque. Sed at nulla nec velit eleifend commodo. Nam dapibus velit a leo placerat, nec commodo mi tristique. Duis non odio nec libero eleifend sagittis. Nullam ut odio turpis. In a massa sed turpis auctor posuere. Sed sit amet odio nec ex sollicitudin tristique. Fusce aliquet venenatis justo, sit amet ultricies magna scelerisque eget.'),
    (2, 'Suspendisse vitae quam varius, sollicitudin sapien in, gravida urna. Duis ultricies turpis justo, ac posuere libero facilisis eu. Aenean id metus vel neque convallis tincidunt a nec sapien. Integer hendrerit ultrices fermentum. Phasellus eget aliquam lorem, id dictum nulla. Donec tristique aliquet turpis a feugiat. Etiam id ipsum a augue tempor facilisis in sit amet nisi. Suspendisse potenti. Nullam commodo varius justo, eu lacinia lectus tempor at. Vestibulum euismod commodo lacus, a interdum lectus euismod at. Maecenas auctor euismod eros non vehicula. Nullam sed arcu quis libero maximus malesuada. Sed eu quam vitae lectus aliquam convallis. Aliquam consequat, nisi in laoreet commodo, quam leo facilisis libero, et placerat ante orci et mi.'),
    (3, 'Vivamus placerat commodo eros, id congue neque dictum eget. Sed nec nunc libero. Nam nec odio nec nisl blandit lacinia a eget est. Nulla varius hendrerit metus, eget sodales nulla ullamcorper in. Nam feugiat tellus sed turpis tempor, in ultricies lacus facilisis. Curabitur vestibulum placerat nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed sit amet leo nec quam consequat faucibus eu nec est. Nulla facilisi. Cras nec convallis elit. Vivamus quis mi justo. Sed nec posuere urna, nec auctor purus. Curabitur finibus justo sit amet justo facilisis, id auctor urna efficitur.'),
    (4, 'Pellentesque eget mauris quis augue feugiat tincidunt. Vivamus pharetra, metus sit amet gravida posuere, magna mi rhoncus ligula, vitae fermentum elit enim id sapien. Fusce tristique volutpat sapien, id laoreet ipsum consequat ut. Donec hendrerit, lacus in efficitur eleifend, turpis odio hendrerit neque, a eleifend elit urna nec velit. In hac habitasse platea dictumst. Aliquam sagittis lectus et libero tincidunt, at laoreet risus dictum. Morbi id augue in lectus vulputate vulputate at id diam. Ut eget odio vehicula, aliquam ante eget, dictum neque. Nulla facilisi. Aenean eget erat sed est placerat sodales. Suspendisse potenti. Nam id risus ultricies, vulputate lectus nec, suscipit urna. Sed non velit vestibulum, consequat libero ut, consectetur justo.'),
    (5, 'Proin vitae maximus purus. Sed ut turpis sit amet tortor congue placerat. Integer convallis magna nec ipsum consectetur facilisis. Duis mollis bibendum erat, vitae scelerisque ipsum feugiat vel. Vestibulum malesuada posuere sem, in egestas tortor laoreet nec. Nulla facilisi. Proin sodales justo a libero tincidunt, non eleifend magna dictum. Maecenas tincidunt nibh sit amet rhoncus tincidunt. Sed nec sem in ligula placerat consectetur id eu ligula. Aliquam erat volutpat. Etiam ac lacinia arcu, in tincidunt elit. Donec elementum magna a fermentum fringilla. Suspendisse lacinia purus a nibh luctus bibendum. Nullam vitae tristique metus. Donec tincidunt id ante sit amet tincidunt. Aliquam nec malesuada orci, vel ultrices magna. Donec ultricies, enim at scelerisque eleifend, elit enim luctus ligula, vitae laoreet lacus lorem eget odio.'),
    (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non tellus id tortor eleifend dictum. Morbi id mollis justo, eu sodales ante. Sed ac aliquet enim. Donec tincidunt metus ac nisl vestibulum, vitae fringilla nulla congue. Curabitur viverra urna eu arcu auctor, sit amet lobortis sapien finibus. Suspendisse potenti. Praesent ullamcorper vulputate orci vitae scelerisque. Sed at nulla nec velit eleifend commodo. Nam dapibus velit a leo placerat, nec commodo mi tristique. Duis non odio nec libero eleifend sagittis. Nullam ut odio turpis. In a massa sed turpis auctor posuere. Sed sit amet odio nec ex sollicitudin tristique. Fusce aliquet venenatis justo, sit amet ultricies magna scelerisque eget.'),
    (2, 'Suspendisse vitae quam varius, sollicitudin sapien in, gravida urna. Duis ultricies turpis justo, ac posuere libero facilisis eu. Aenean id metus vel neque convallis tincidunt a nec sapien. Integer hendrerit ultrices fermentum. Phasellus eget aliquam lorem, id dictum nulla. Donec tristique aliquet turpis a feugiat. Etiam id ipsum a augue tempor facilisis in sit amet nisi. Suspendisse potenti. Nullam commodo varius justo, eu lacinia lectus tempor at. Vestibulum euismod commodo lacus, a interdum lectus euismod at. Maecenas auctor euismod eros non vehicula. Nullam sed arcu quis libero maximus malesuada. Sed eu quam vitae lectus aliquam convallis. Aliquam consequat, nisi in laoreet commodo, quam leo facilisis libero, et placerat ante orci et mi.'),
    (3, 'Vivamus placerat commodo eros, id congue neque dictum eget. Sed nec nunc libero. Nam nec odio nec nisl blandit lacinia a eget est. Nulla varius hendrerit metus, eget sodales nulla ullamcorper in. Nam feugiat tellus sed turpis tempor, in ultricies lacus facilisis. Curabitur vestibulum placerat nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed sit amet leo nec quam consequat faucibus eu nec est. Nulla facilisi. Cras nec convallis elit. Vivamus quis mi justo. Sed nec posuere urna, nec auctor purus. Curabitur finibus justo sit amet justo facilisis, id auctor urna efficitur.'),
    (4, 'Pellentesque eget mauris quis augue feugiat tincidunt. Vivamus pharetra, metus sit amet gravida posuere, magna mi rhoncus ligula, vitae fermentum elit enim id sapien. Fusce tristique volutpat sapien, id laoreet ipsum consequat ut. Donec hendrerit, lacus in efficitur eleifend, turpis odio hendrerit neque, a eleifend elit urna nec velit. In hac habitasse platea dictumst. Aliquam sagittis lectus et libero tincidunt, at laoreet risus dictum. Morbi id augue in lectus vulputate vulputate at id diam. Ut eget odio vehicula, aliquam ante eget, dictum neque. Nulla facilisi. Aenean eget erat sed est placerat sodales. Suspendisse potenti. Nam id risus ultricies, vulputate lectus nec, suscipit urna. Sed non velit vestibulum, consequat libero ut, consectetur justo.'),
    (5, 'Proin vitae maximus purus. Sed ut turpis sit amet tortor congue placerat. Integer convallis magna nec ipsum consectetur facilisis. Duis mollis bibendum erat, vitae scelerisque ipsum feugiat vel. Vestibulum malesuada posuere sem, in egestas tortor laoreet nec. Nulla facilisi. Proin sodales justo a libero tincidunt, non eleifend magna dictum. Maecenas tincidunt nibh sit amet rhoncus tincidunt. Sed nec sem in ligula placerat consectetur id eu ligula. Aliquam erat volutpat. Etiam ac lacinia arcu, in tincidunt elit. Donec elementum magna a fermentum fringilla. Suspendisse lacinia purus a nibh luctus bibendum. Nullam vitae tristique metus. Donec tincidunt id ante sit amet tincidunt. Aliquam nec malesuada orci, vel ultrices magna. Donec ultricies, enim at scelerisque eleifend, elit enim luctus ligula, vitae laoreet lacus lorem eget odio.');


INSERT INTO imovel_fotos ([imf_imovel_cod], [imf_dt_cad], [imf_arquivo])
VALUES
    ( 1, null, 'foto1.jpg'),
    ( 1, null, 'foto2.jpg'),
    ( 2, null, 'foto3.jpg'),
    ( 2, null, 'foto4.jpg'),
    ( 3, null, 'foto5.jpg'),
    ( 3, null, 'foto6.jpg'),
    ( 4, null, 'foto7.jpg'),
    ( 4, null, 'foto8.jpg'),
    ( 5, null, 'foto9.jpg'),
    ( 5, null, 'foto10.jpg'),
    ( 6, null, 'foto11.jpg'),
    ( 6, null, 'foto12.jpg'),
    ( 7, null, 'foto13.jpg'),
    ( 7, null, 'foto14.jpg'),
    ( 8, null, 'foto15.jpg');


INSERT INTO sinistro_tipo (sit_nome, sit_pontos) VALUES
  ('Incêndio Residencial', 20),
  ('Roubo de Veículo', 15),
  ('Danos por Inundações', 12),
  ('Acidente de Trabalho', 18),
  ('Furto em Residência', 14),
  ('Roubo a Estabelecimento Comercial', 17),
  ('Colisão de Veículos', 13),
  ('Danos por Tempestade', 16),
  ('Incêndio em Veículo', 11),
  ('Assalto a Mão Armada', 19);


INSERT INTO sinistro (sin_im_cod, sin_dt_cad, sin_hr_cad, sin_sit_cod, sin_tipo_cod) VALUES
  (1, CURRENT_TIMESTAMP, null, 1, 1),
  (2, CURRENT_TIMESTAMP, null, 2, 3),
  (3, CURRENT_TIMESTAMP, null, 3, 2),
  (4, CURRENT_TIMESTAMP, null, 1, 4),
  (5, CURRENT_TIMESTAMP, null, 2, 5),
  (6, CURRENT_TIMESTAMP, null, 3, 6),
  (7, CURRENT_TIMESTAMP, null, 1, 7),
  (8, CURRENT_TIMESTAMP, null, 2, 8),
  (9, CURRENT_TIMESTAMP, null, 3, 9),
  (10, CURRENT_TIMESTAMP, null, 1, 10),
  (11, CURRENT_TIMESTAMP, null, 2, 4),
  (12, CURRENT_TIMESTAMP, null, 3, 3),
  (13, CURRENT_TIMESTAMP, null, 1, 5),
  (14, CURRENT_TIMESTAMP, null, 2, 6),
  (15, CURRENT_TIMESTAMP, null, 3, 7),
  (1, CURRENT_TIMESTAMP, null, 1, 8),
  (2, CURRENT_TIMESTAMP, null, 2, 9),
  (3, CURRENT_TIMESTAMP, null, 3, 10),
  (4, CURRENT_TIMESTAMP, null, 1, 2),
  (5, CURRENT_TIMESTAMP, null, 2, 1),
  (6, CURRENT_TIMESTAMP, null, 3, 4),
  (7, CURRENT_TIMESTAMP, null, 1, 3),
  (8, CURRENT_TIMESTAMP, null, 2, 5),
  (9, CURRENT_TIMESTAMP, null, 3, 6),
  (10, CURRENT_TIMESTAMP, null, 1, 7),
  (1, CURRENT_TIMESTAMP, null, 2, 8),
  (2, CURRENT_TIMESTAMP, null, 3, 9),
  (1, CURRENT_TIMESTAMP, null, 1, 10),
  (6, CURRENT_TIMESTAMP, null, 2, 2),
  (10, CURRENT_TIMESTAMP, null, 3, 1);

