CREATE TABLE
    paciente (
        id int NOT NULL auto_increment,
        nome varchar(100),
        data_de_nascimento date,
        endereco varchar(50),
        telefone char(11),
        email varchar(50),
        CPF char(11),
        RG char(7),
        PRIMARY KEY(id)
    );

CREATE TABLE
    consulta (
        id int NOT NULL auto_increment,
        data_e_hora datetime,
        valor_da_consulta decimal(5, 2),
        tipo_da_consulta varchar(50),
        id_medico int,
        id_paciente int,
        FOREIGN KEY (id_medico) REFERENCES medico(id),
        FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
        PRIMARY KEY(id)
    );

CREATE TABLE
    convenio (
        id int NOT NULL auto_increment,
        nome varchar(100),
        CNPJ char(14),
        tempo_de_carencia char(2),
        numero_da_carteirinha int(12),
        PRIMARY KEY(id)
    );

CREATE Table
    convenio_paciente (
        id int NOT NULL auto_increment,
        id_paciente INT,
        id_convenio INT,
        FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
        FOREIGN KEY (id_convenio) REFERENCES convenio(id),
        PRIMARY KEY(id)
    )

CREATE TABLE
    internacao (
        id int NOT NULL auto_increment,
        data_de_entrada date,
        data_prev_alta date,
        data_alta date,
        procedimento varchar(100),
        id_paciente INT,
        id_quarto INT,
        FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
        FOREIGN KEY (id_quarto) REFERENCES quarto(id),
        FOREIGN KEY (id_medico) REFERENCES medico(id),
        PRIMARY KEY(id)

);

CREATE TABLE
    quarto (
        id int NOT NULL auto_increment,
        tipo varchar(50),
        valor decimal(5, 2),
        PRIMARY KEY(id)
    );

CREATE TABLE
    enfermeiro (
        id int NOT NULL auto_increment,
        nome varchar(100),
        CPF char(11),
        CRE char(12),
        PRIMARY KEY(id)
    );

CREATE TABLE
    internacao_enfermeiro (
        id int NOT NULL auto_increment,
        id_internacao INT,
        id_enfermeiro INT,
        FOREIGN KEY (id_internacao) REFERENCES internacao(id),
        FOREIGN KEY (id_enfermeiro) REFERENCES enfermeiro(id),
        PRIMARY KEY(id)
    );

CREATE TABLE
    medico (
        id int NOT NULL auto_increment,
        nome varchar(100),
        CRM char(6),
        CPF char(11),
        CEP char(8),
        cidade varchar(100),
        endereco varchar(100),
        bairro varchar(100),
        telefone char(11),
        id_especialidade int,
        FOREIGN KEY (id_especialidade) REFERENCES especialidade(id),
        PRIMARY KEY(id)
    );

CREATE TABLE
    especializacao (
        id int NOT NULL auto_increment,
        nome_especialidade varchar(100),
        PRIMARY KEY(id)
    );

CREATE TABLE
    receituario (
        id int NOT NULL auto_increment,
        id_consulta INT,
        id_medicamento INT,
        FOREIGN KEY (id_consulta) REFERENCES consulta(id),
        FOREIGN KEY (id_medicamento) REFERENCES medicamento(id),
        PRIMARY KEY(id)
    );

CREATE TABLE
    medicamento (
        id int NOT NULL auto_increment,
        nome VARCHAR(100),
        quantidade CHAR(10),
        PRIMARY KEY(id)
    )

/* Adicionando pacientes na tabela */

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Antonio Rodrigues',
        '1963-01-25',
        'Rua salgueiro',
        '11956423584',
        'antoniodaSalgueiro@gmail.com',
        '48568455256',
        '5412658'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Maria Clara',
        '1968-07-13',
        'Rua sorocaba',
        '11924893154',
        'maria123@outlook.com',
        '48148464256',
        '4538745'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Vitor Melo',
        '1995-08-15',
        'Avenida Esbertalina Barbosa Damiani',
        '11923489562',
        'vitinho456@gmail.com',
        '46525816545',
        '4587165'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Diogo Souza',
        '1986-04-02',
        'Rua Frederico Moura',
        '11954783256',
        'diogo123@gmail.com',
        '54789632146',
        '8421764'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Kauan Cardoso',
        '1984-01-05',
        'Rua Domingos Olimpio',
        '11995631448',
        'cardoso465@gmail.com',
        '30281117055',
        '9631547'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Leticia Araujo',
        '1997-06-30',
        'Avenida Tocantins',
        '11945238765',
        'letigata@gmail.com',
        '73047249008',
        '2165478'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Arthur Barbosa',
        '1978-12-01',
        'Rua Barao de Vitoria',
        '11969324587',
        'arthurdazl@gmail.com',
        '10471896071',
        '6324861'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Melissa Fernandes',
        '1996-09-16',
        'Rua Carlos Augusto Cornelsen',
        '11965478214',
        'melfer@outlook.com',
        '75000625080',
        '6217845'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Bruna Ferreira',
        '1998-03-18',
        'Avenida Afonso Pena',
        '11925784565',
        'brubs8654@outlook.com',
        '04128670014',
        '1578965'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Matheus Alves',
        '1999-10-29',
        'Avenida Almirante Maximiano Fonseca',
        '11915623487',
        'theusalves@gmail.com',
        '78783389067',
        '6541254'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Vinicius Goncalves',
        '1994-07-26',
        'Rua Paracatu',
        '11965874595',
        'vinidospatos@gmail.com',
        '10127253084',
        '8436987'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Julian Dias',
        '1980-11-18',
        'Rua da Imprensa',
        '11984567825',
        'judias@gmail.com',
        '59731474013',
        '1254786'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Manuela Lima',
        '1984-10-13',
        'Rua das Fiandeiras',
        '11989523478',
        'manilima123@outlook.com',
        '29352967020',
        '5642879'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Vitoria Santos',
        '1995-09-17',
        'Rua Arlindo Nogueira',
        '11914879565',
        'vitoriadanogueira125@gmail.com',
        '49070862026',
        '4781654'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Gabrielly Barros',
        '1998-08-19',
        'Rua Cristiano Olsen',
        '11965789412',
        'gaby54847@outlook.com',
        '71474331068',
        '6981547'
    );

insert into
    pacientes (
        id,
        nome,
        data_de_nascimento,
        endereco,
        telefone,
        email,
        CPF,
        RG
    )
values (
        default,
        'Tiago Castro',
        '1989-12-06',
        'Rua jardim vitoria',
        '11997852365',
        'tiagosemh5648@gmail.com',
        '06533589005',
        '6523874'
    );

/* Adicionando medicos na tabela */

insert into
    medico (
        id,
        nome,
        CRM,
        CPF,
        CEP,
        cidade,
        endereco,
        bairro,
        telefone
    )
values (
        default,
        'Jason moreira',
        '546254',
        '54621789542',
        '08040110',
        'Sao paulo',
        'Rua Nazare do piaui',
        'Vila Carolina',
        '11965487832'
    );

insert into
    medico (
        id,
        nome,
        CRM,
        CPF,
        CEP,
        cidade,
        endereco,
        bairro,
        telefone
    )
values (
        default,
        'Fabiano Alves',
        '658426',
        '65124789562',
        '04161070',
        'Sao paulo',
        'Rua Tolstoi',
        'Vila Brasilina',
        '11924561035'
    );

insert into
    medico (
        id,
        nome,
        CRM,
        CPF,
        CEP,
        cidade,
        endereco,
        bairro,
        telefone
    )
values (
        default,
        'Gabriela Moraes',
        '624784',
        '75214789654',
        '09856050',
        'Sao paulo',
        'Rua Siriema',
        'Alvarenga',
        '11952369742'
    );

insert into
    medico (
        id,
        nome,
        CRM,
        CPF,
        CEP,
        cidade,
        endereco,
        bairro,
        telefone
    )
values (
        default,
        'Juciscleide da Silva',
        '325896',
        '25487563245',
        '16900182',
        'Sao paulo',
        'Rua F',
        'Antonio Ricardo Pegoraro',
        '11914121384'
    );

insert into
    medico (
        id,
        nome,
        CRM,
        CPF,
        CEP,
        cidade,
        endereco,
        bairro,
        telefone
    )
values (
        default,
        'Otaviano Lima',
        '147896',
        '98745632152',
        '13970700',
        'Sao paulo',
        'Rua das Andorinhas',
        'Jardim Lindoia',
        '11963541235'
    );

insert into
    medico (
        id,
        nome,
        CRM,
        CPF,
        CEP,
        cidade,
        endereco,
        bairro,
        telefone
    )
values (
        default,
        'Odair Barros',
        '258741',
        '65214896525',
        '14193637',
        'Sao paulo',
        'Rua Jose Margatho',
        'Parque dos Flamboyans',
        '11917823698'
    );

insert into
    medico (
        id,
        nome,
        CRM,
        CPF,
        CEP,
        cidade,
        endereco,
        bairro,
        telefone
    )
values (
        default,
        'Isabela Goncalves',
        '258745',
        '14527835695',
        '13238483',
        'Sao paulo',
        'Rua Altinopolis',
        'Vila Constança',
        '11954289758'
    );

insert into
    medico (
        id,
        nome,
        CRM,
        CPF,
        CEP,
        cidade,
        endereco,
        bairro,
        telefone
    )
values (
        default,
        'Joana Machado',
        '542879',
        '44622589654',
        '14701818',
        'Sao paulo',
        'Rua João Guimarães Reiff',
        'Residencial San Conrado',
        '11914041310'
    );

insert into
    medico (
        id,
        nome,
        CRM,
        CPF,
        CEP,
        cidade,
        endereco,
        bairro,
        telefone
    )
values (
        default,
        'Roberto Almeida',
        '892145',
        '14235672132',
        '18087189',
        'Sao paulo',
        'Rua Doutor Leonidas do Amaral',
        'Aparecidinha',
        '11947020365'
    );

insert into
    medico (
        id,
        nome,
        CRM,
        CPF,
        CEP,
        cidade,
        endereco,
        bairro,
        telefone
    )
values (
        default,
        'Francisca Queiroz',
        '429874',
        '23586942712',
        '13841032',
        'Sao paulo',
        'Rua Benedito Rodrigues',
        'Jardim Hedy',
        '11954963536'
    );

/* Adicionando as especialidades médicas */

INSERT INTO
    especializacao (id, nome_especialidade)
VALUES (default, 'Pediatria');

INSERT INTO
    especializacao (id, nome_especialidade)
VALUES (default, 'clínica geral');

INSERT INTO
    especializacao (id, nome_especialidade)
VALUES (default, 'Gastrenterologia');

INSERT INTO
    especializacao (id, nome_especialidade)
VALUES (default, 'Dermatologia');

INSERT INTO
    especializacao (id, nome_especialidade)
VALUES (default, 'Ginecologia');

INSERT INTO
    especializacao (id, nome_especialidade)
VALUES (default, 'Ortopedia');

INSERT INTO
    especializacao (id, nome_especialidade)
VALUES (default, 'Neurologia');

INSERT INTO
    especializacao (id, nome_especialidade)
VALUES (default, 'Oftalmologia');

INSERT INTO
    especializacao (id, nome_especialidade)
VALUES (default, 'Psiquiatria');

INSERT INTO
    especializacao (id, nome_especialidade)
VALUES (default, 'Radiologia');

/* Realizando updates nas especialidades médicas */

UPDATE `hospital`.`medico`
SET `id_especialidade` = '4'
WHERE (`id` = '1');

UPDATE `hospital`.`medico`
SET `id_especialidade` = '6'
WHERE (`id` = '2');

UPDATE `hospital`.`medico`
SET `id_especialidade` = '1'
WHERE (`id` = '3');

UPDATE `hospital`.`medico`
SET `id_especialidade` = '3'
WHERE (`id` = '4');

UPDATE `hospital`.`medico`
SET `id_especialidade` = '8'
WHERE (`id` = '5');

UPDATE `hospital`.`medico`
SET `id_especialidade` = '11'
WHERE (`id` = '6');

UPDATE `hospital`.`medico`
SET `id_especialidade` = '9'
WHERE (`id` = '7');

UPDATE `hospital`.`medico`
SET `id_especialidade` = '2'
WHERE (`id` = '8');

UPDATE `hospital`.`medico`
SET `id_especialidade` = '5'
WHERE (`id` = '9');

UPDATE `hospital`.`medico`
SET `id_especialidade` = '7'
WHERE (`id` = '10');

/* Registrando as consultas dos pacientes */

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2015-01-01 10:00:00',
        '100.00',
        'neurologico',
        '8',
        '1'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2015-02-15 09:00:00',
        '115.00',
        'clinica geral',
        '4',
        '5'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2015-02-23 15:15:00',
        '100.00',
        'ginecologia',
        '2',
        '2'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2015-06-18 10:30:00',
        '80.00',
        'gastrenterologia',
        '1',
        '9'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2015-10-19 08:30:00',
        '90.00',
        'radiologia',
        '6',
        '3'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2016-04-03 16:00:00',
        '110.00',
        'dermatologia',
        '9',
        '7'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2016-06-20 14:30:00',
        '80.00',
        'gastrenterologia',
        '1',
        '11'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2016-08-22 08:20:00',
        '100.50',
        'clinica geral',
        '4',
        '6'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2017-05-08 07:15:00',
        '90.00',
        'radiologia',
        '6',
        '4'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2017-07-13 13:00:00',
        '110.00',
        'clinica geral',
        '4',
        '8'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2017-09-10 13:30:00',
        '120.00',
        'cardiologia',
        '5',
        '1'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2017-11-17 18:00:00',
        '100.00',
        'ginecologia',
        '2',
        '8'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2018-10-01 17:00:00',
        '90.00',
        'radiologia',
        '6',
        '12'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2018-11-01 14:15:00',
        '80.00',
        'dermatologia',
        '9',
        '15'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2019-04-01 15:20:00',
        '60.00',
        'cardiologia',
        '5',
        '16'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2019-04-01 08:15:00',
        '105.00',
        'ortopedia',
        '10',
        '5'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2020-06-01 09:00:00',
        '115.00',
        'clinica geral',
        '4',
        '1'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2020-07-01 08:00:00',
        '100.00',
        'neurologico',
        '8',
        '6'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2021-12-02 11:00:00',
        '100.00',
        'ginecologia',
        '2',
        '4'
    );

INSERT INTO
    consulta (
        id,
        data_e_hora,
        valor_da_consulta,
        tipo_da_consulta,
        id_medico,
        id_paciente
    )
VALUES (
        default,
        '2022-01-01 12:30:00',
        '100.00',
        'ginecologia',
        '2',
        '11'
    );

/* adicionando medicamentos */

INSERT INTO
    medicamentos (id, nome, quantidade)
VALUES (default, 'Amoxicilina', '2');

INSERT INTO
    medicamentos (id, nome, quantidade)
VALUES (default, 'Level', '3');

INSERT INTO
    medicamentos (id, nome, quantidade)
VALUES (default, 'Cetoprofeno', '2');

INSERT INTO
    medicamentos (id, nome, quantidade)
VALUES (default, 'Diazepam', '1');

INSERT INTO
    medicamentos (id, nome, quantidade)
VALUES (default, 'Ibuprofeno', '1');

INSERT INTO
    medicamentos (id, nome, quantidade)
VALUES (default, 'Paracetamol', '2');

INSERT INTO
    medicamentos (id, nome, quantidade)
VALUES (default, 'Prednisona', '2');

INSERT INTO
    medicamentos (id, nome, quantidade)
VALUES (default, 'Tritobenzamida', '1');

INSERT INTO
    medicamentos (id, nome, quantidade)
VALUES (
        default,
        'Vacina contra COVID-19',
        '1'
    );

INSERT INTO
    medicamentos (id, nome, quantidade)
VALUES (default, 'Zolpidem', '2');

/* Adicionando o receituário dos pacientes */

INSERT INTO
    receituario (
        id,
        id_medicamentos,
        id_consulta
    )
VALUES (default, '2', '3');

INSERT INTO
    receituario (
        id,
        id_medicamentos,
        id_consulta
    )
VALUES (default, '2', '19');

INSERT INTO
    receituario (
        id,
        id_medicamentos,
        id_consulta
    )
VALUES (default, '2', '12');

INSERT INTO
    receituario (
        id,
        id_medicamentos,
        id_consulta
    )
VALUES (default, '2', '20');

INSERT INTO
    receituario (
        id,
        id_medicamentos,
        id_consulta
    )
VALUES (default, '1', '2');

INSERT INTO
    receituario (
        id,
        id_medicamentos,
        id_consulta
    )
VALUES (default, '7', '8');

INSERT INTO
    receituario (
        id,
        id_medicamentos,
        id_consulta
    )
VALUES (default, '9', '10');

INSERT INTO
    receituario (
        id,
        id_medicamentos,
        id_consulta
    )
VALUES (default, '6', '16');

INSERT INTO
    receituario (
        id,
        id_medicamentos,
        id_consulta
    )
VALUES (default, '3', '4');

INSERT INTO
    receituario (
        id,
        id_medicamentos,
        id_consulta
    )
VALUES (default, '4', '6');

/* Inserindo os convênios médicos */

INSERT INTO
    convenio (
        id,
        nome,
        CNPJ,
        tempo_de_carencia,
        numero_da_carteirinha
    )
VALUES (
        default,
        'UNIMEDI',
        '15236987452147',
        '1',
        '1549256321'
    );

INSERT INTO
    convenio (
        id,
        nome,
        CNPJ,
        tempo_de_carencia,
        numero_da_carteirinha
    )
VALUES (
        default,
        'KellsMed',
        '58963254789652',
        '2',
        '654827894'
    );

INSERT INTO
    convenio (
        id,
        nome,
        CNPJ,
        tempo_de_carencia,
        numero_da_carteirinha
    )
VALUES (
        default,
        'Notridame',
        '25698745625896',
        '3',
        '796354852'
    );

INSERT INTO
    convenio (
        id,
        nome,
        CNPJ,
        tempo_de_carencia,
        numero_da_carteirinha
    )
VALUES (
        default,
        'SegurosMed',
        '74569854123654',
        '1',
        '263874147'
    );

/* Associando os convenios aos pacientes e consultas */

INSERT INTO
    convenio_paciente (id, id_paciente, id_convenio)
VALUES (default, '1', '1');

INSERT INTO
    convenio_paciente (id, id_paciente, id_convenio)
VALUES (default, '9', '4');

INSERT INTO
    convenio_paciente (id, id_paciente, id_convenio)
VALUES (default, '11', '3');

INSERT INTO
    convenio_paciente (id, id_paciente, id_convenio)
VALUES (default, '8', '1');

INSERT INTO
    convenio_paciente (id, id_paciente, id_convenio)
VALUES (default, '3', '2');

INSERT INTO
    convenio_paciente (id, id_paciente, id_convenio)
VALUES (default, '7', '3');

/* Registrando quartos dos pacientes */

INSERT INTO
    quarto (id, tipo, valor)
VALUES (
        default,
        'Apartamento',
        '200.00'
    );

INSERT INTO
    quarto (id, tipo, valor)
VALUES (
        default,
        'Quarto duplo',
        '150.00'
    );

INSERT INTO
    quarto (id, tipo, valor)
VALUES (
        default,
        'Enfermaria',
        '100.00'
    );

/* Incluindo dados de enfermeiros */

INSERT INTO
    enfermeiro (id, nome, CPF, CRE)
VALUES (
        default,
        'Cleusa Ribeiro',
        '21485698745',
        '254136'
    );

INSERT INTO
    enfermeiro (id, nome, CPF, CRE)
VALUES (
        default,
        'Luiza Queiroz',
        '78954135698',
        '654879'
    );

INSERT INTO
    enfermeiro (id, nome, CPF, CRE)
VALUES (
        default,
        'Yan Damaceno',
        '47856321487',
        '654169'
    );

INSERT INTO
    enfermeiro (id, nome, CPF, CRE)
VALUES (
        default,
        'Luiz Lima',
        '78532145987',
        '754126'
    );

INSERT INTO
    enfermeiro (id, nome, CPF, CRE)
VALUES (
        default,
        'Bruna Ferraz',
        '35896214785',
        '145236'
    );

INSERT INTO
    enfermeiro (id, nome, CPF, CRE)
VALUES (
        default,
        'Jean da Silva',
        '15632587412',
        '178954'
    );

INSERT INTO
    enfermeiro (id, nome, CPF, CRE)
VALUES (
        default,
        'Robevaldo Cruz',
        '96587412365',
        '358745'
    );

INSERT INTO
    enfermeiro (id, nome, CPF, CRE)
VALUES (
        default,
        'Eliza Rodrigues',
        '65874125635',
        '478562'
    );

INSERT INTO
    enfermeiro (id, nome, CPF, CRE)
VALUES (
        default,
        'Thomas Souza',
        '85412365874',
        '698542'
    );

INSERT INTO
    enfermeiro (id, nome, CPF, CRE)
VALUES (
        default,
        'Rubia Goncalves',
        '54128763258',
        '456321'
    );

/* Registrando as internações dos pacientes */

INSERT INTO
    internacao (
        id,
        data_de_entrada,
        data_prev_alta,
        data_alta,
        procedimento,
        id_paciente,
        id_quarto,
        id_medico
    )
VALUES (
        default,
        '2015-02-26',
        '2015-02-02',
        '2015-02-02',
        'Observação',
        '9',
        '3',
        '4'
    );

INSERT INTO
    internacao (
        id,
        data_de_entrada,
        data_prev_alta,
        data_alta,
        procedimento,
        id_paciente,
        id_quarto,
        id_medico
    )
VALUES (
        default,
        '2016-03-15',
        '2016-03-20',
        '2016-03-20',
        'Cirurgia',
        '1',
        '1',
        '10'
    );

INSERT INTO
    internacao (
        id,
        data_de_entrada,
        data_prev_alta,
        data_alta,
        procedimento,
        id_paciente,
        id_quarto,
        id_medico
    )
VALUES (
        default,
        '2017-05-15',
        '2017-05-22',
        '2017-05-22',
        'UTI',
        '6',
        '2',
        '4'
    );

INSERT INTO
    internacao (
        id,
        data_de_entrada,
        data_prev_alta,
        data_alta,
        procedimento,
        id_paciente,
        id_quarto,
        id_medico
    )
VALUES (
        default,
        '2018-06-18',
        '2018-06-20',
        '2018-06-21',
        'Observação',
        '8',
        '3',
        '6'
    );

INSERT INTO
    internacao (
        id,
        data_de_entrada,
        data_prev_alta,
        data_alta,
        procedimento,
        id_paciente,
        id_quarto,
        id_medico
    )
VALUES (
        default,
        '2019-04-10',
        '2019-04-11',
        '2019-04-11',
        'Cirurgia',
        '8',
        '2',
        '6'
    );

INSERT INTO
    internacao (
        id,
        data_de_entrada,
        data_prev_alta,
        data_alta,
        procedimento,
        id_paciente,
        id_quarto,
        id_medico
    )
VALUES (
        default,
        '2020-02-01',
        '2020-02-11',
        '2020-02-11',
        'UTI',
        '5',
        '3',
        '7'
    );

INSERT INTO
    internacao (
        id,
        data_de_entrada,
        data_prev_alta,
        data_alta,
        procedimento,
        id_paciente,
        id_quarto,
        id_medico
    )
VALUES (
        default,
        '2021-01-09',
        '2021-01-10',
        '2021-01-10',
        'Correção de lente',
        '9',
        '2',
        '7'
    );

/* Preenchendo os dados dos enfermeiros na internação */

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '1', '1');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '1', '2');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '2', '3');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '2', '4');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '3', '5');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '3', '6');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '4', '7');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '4', '8');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '5', '9');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '5', '10');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '6', '2');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '6', '4');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '7', '9');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '7', '5');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '8', '7');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '8', '6');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '9', '1');

INSERT INTO
    internacao_enfermeiro (
        id,
        id_internacao,
        id_enfermeiro
    )
VALUES (default, '9', '3');

/* "PARTE 4 - Alterando o banco de dados". */

alter table medico add column em_atividade varchar(30);

UPDATE `hospital`.`medico` SET `em_atividade` = 'inativo' WHERE (`id` = '3');
UPDATE `hospital`.`medico` SET `em_atividade` = 'inativo' WHERE (`id` = '5');
UPDATE `hospital`.`medico` SET `em_atividade` = 'ativo' WHERE (`id` = '1');
UPDATE `hospital`.`medico` SET `em_atividade` = 'ativo' WHERE (`id` = '2');
UPDATE `hospital`.`medico` SET `em_atividade` = 'ativo' WHERE (`id` = '4');
UPDATE `hospital`.`medico` SET `em_atividade` = 'ativo' WHERE (`id` = '6');
UPDATE `hospital`.`medico` SET `em_atividade` = 'ativo' WHERE (`id` = '7');
UPDATE `hospital`.`medico` SET `em_atividade` = 'ativo' WHERE (`id` = '8');
UPDATE `hospital`.`medico` SET `em_atividade` = 'ativo' WHERE (`id` = '9');
UPDATE `hospital`.`medico` SET `em_atividade` = 'ativo' WHERE (`id` = '10');
