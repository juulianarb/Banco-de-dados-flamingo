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

"PARTE 3 - Alimentando o banco de dados". 

Inclua ao menos dez médicos de diferentes especialidades. 


Ao menos sete especialidades (considere a afirmação de que “entre as especialidades há pediatria, clínica geral, gastrenterologia e dermatologia”).


Inclua ao menos 15 pacientes.


Registre 20 consultas de diferentes pacientes e diferentes médicos (alguns pacientes realizam mais que uma consulta). As consultas devem ter ocorrido entre 01/01/2015 e 01/01/2022. Ao menos dez consultas devem ter receituário com dois ou mais medicamentos.


Inclua ao menos quatro convênios médicos, associe ao menos cinco pacientes e cinco consultas.


Criar entidade de relacionamento entre médico e especialidade. 


Criar Entidade de Relacionamento entre internação e enfermeiro. 


Arrumar a chave estrangeira do relacionamento entre convênio e médico.


Criar entidade entre internação e enfermeiro.


Colocar chaves estrangeira dentro da internação (Chaves Médico e Paciente).


Registre ao menos sete internações. Pelo menos dois pacientes devem ter se internado mais de uma vez. Ao menos três quartos devem ser cadastrados. As internações devem ter ocorrido entre 01/01/2015 e 01/01/2022.


Considerando que “a princípio o hospital trabalha com apartamentos, quartos duplos e enfermaria”, inclua ao menos esses três tipos com valores diferentes.


Inclua dados de dez profissionais de enfermaria. Associe cada internação a ao menos dois enfermeiros.


Os dados de tipo de quarto, convênio e especialidade são essenciais para a operação do sistema e, portanto, devem ser povoados assim que o sistema for instalado.


A parte 3 desta atividade, está disponível no arquivo ''Parte3''.

PARTE 4:

"PARTE 4 - Alterando o banco de dados". 

Crie um script que adicione uma coluna “em_atividade” para os médicos, indicando se ele ainda está atuando no hospital ou não. 


Crie um script para atualizar ao menos dois médicos como inativos e os demais em atividade.


A parte 4 desta atividade, está disponível no arquivo ''Parte4''.
