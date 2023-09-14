# Banco-de-dados-flamingo
Projetos da faculdade Flamingo relacionadas a banco de dados e estrutura de dados 

Hospital fundamental 
Parte 1:

Estrutura de banco de dados adequada por meio de um Diagrama Entidade-Relacionamento.

O hospital necessita de um sistema para sua área clínica que ajude a controlar consultas realizadas. Os médicos podem ser generalistas, especialistas ou residentes e têm seus dados pessoais cadastrados em planilhas digitais. Cada médico pode ter uma ou mais especialidades, que podem ser pediatria, clínica geral, gastroenterologia e dermatologia. Alguns registros antigos ainda estão em formulário de papel, mas será necessário incluir esses dados no novo sistema.

Os pacientes também precisam de cadastro, contendo dados pessoais (nome, data de nascimento, endereço, telefone e e-mail), documentos (CPF e RG) e convênio. Para cada convênio, são registrados nome, CNPJ e tempo de carência.

As consultas também têm sido registradas em planilhas, com data e hora de realização, médico responsável, paciente, valor da consulta ou nome do convênio, com o número da carteira. Também é necessário indicar na consulta qual a especialidade buscada pelo paciente.

Deseja-se ainda informatizar a receita do médico, de maneira que, no encerramento da consulta, ele possa registrar os medicamentos receitados, a quantidade e as instruções de uso. A partir disso, espera-se que o sistema imprima um relatório da receita ao paciente ou permita sua visualização via internet.

Primeiro modelo do diagrama ER:

![hospital](https://github.com/juulianarb/Banco-de-dados-flamingo/assets/127902970/55302fef-82c5-4de1-96b0-7a10567faa22)

Parte 2:

Novos requisitos para o diagrama ER - As internações precisam ser vinculadas a quartos, com a numeração e o tipo.

Para cada internação, são anotadas a data de entrada, a data prevista de alta e a data efetiva de alta, além da descrição textual dos procedimentos a serem realizados. 

Também é necessário controlar quais profissionais de enfermaria estarão responsáveis por acompanhar o paciente durante sua internação. Para cada enfermeiro(a), é necessário nome, CPF e registro no conselho de enfermagem (CRE).

A internação, obviamente, é vinculada a um paciente – que pode se internar mais de uma vez no hospital – e a um único médico responsável.

Modelo completo com todos os requisitos acima do diagrama ER:

![hospitalpt2 drawio](https://github.com/juulianarb/Banco-de-dados-flamingo/assets/127902970/6ee5fc4f-661b-47c1-b761-0235ec039fc6)

Por fim, crie um script SQL para a geração do banco de dados e para instruções de montagem de cada uma das entidades/tabelas presentes no diagrama completo (considerando as entidades do diagrama da atividade anterior e as novas entidades propostas no diagrama acima). Também crie tabelas para relacionamentos quando necessário. Aplique colunas e chaves primárias e estrangeiras.

Script SQL do diagrama : 

(o script completo está localizado no diretório "parte 2" do arquivo Hospital-Fundamental).

![partelogica1](https://github.com/juulianarb/Banco-de-dados-flamingo/assets/127902970/b3fd0a3f-a6e5-4ef0-9ed9-4019e3e172d5)


