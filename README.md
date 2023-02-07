# Senac-Resilia-Exercicio-04
4º exercício individual do curso de programação do Senac-Resilia, um banco de dados para o curso de programação da Resilia.

A entidade Curso apresenta os campos:

id varchar(30): o número de identificação do curso oferecido;
nome varchar(99): o título do curso;
área varchar(30): O campo ao qual o curso pertence (design, engenharia de produto, etc.);
creditos int: o quanto o curso avança na trilha de créditos necessários para a formação;
carga int: a carga horária total do curso;
mensalidade float: o preço total do curso.

A entidade Turma considera os campos:

id varchar(30): o número de identificação da turma disponibilizada;
numero int: a numeração da sala de aula;
professor varchar(99): considera os nomes dos professores de cada turma;
entrada int: o horário de início das aulas;
saida int: o horário de saída das aulas.

A entidade Alunos considera os campos:

matricula varchar(30): o número de cadastro do aluno;
nome varchar(99): o nome pessoal do aluno;
cpf varchar(14): o documento do aluno;
rendimento int: a pontuação resultante das avaliações gerais do aluno;
período int: o momento no curso em que o aluno está;
pagamento varchar(30): o número do cartão de crédito para o pagamento das mensalidades do aluno;
idade int: o tempo de vida do aluno.

Cardinalidade entre as entidades:
A relação entre Curso e Turma se dá em 0, n e 0, 1, respectivamente, pois um curso pode ter muitas turmas, porém a turma pertence unicamente a este curso.

A relação entre Turma e Alunos se dá em 0, n e 0,1, respectivamente, pois uma turma pode ter muitos alunos, porém os alunos pertencem somente a uma turma de cada curso.

Códigos SQL utilizados para criação do banco de dados:
Para criar o banco de dados resilia: MariaDB [(none)]> create database  cursoresilia;

Para acessar o banco de dados: MariaDB [(none)]> use cursoresilia;

Para criar as entidades: MariaDB [resilia]> create table curso ( -> id varchar(30) primary key, -> nome varchar(90), -> area varchar(20), -> creditos int, -> carga int, -> mensalidade float);

MariaDB [resilia]> create table turma ( -> id varchar(30) primary key, -> numero int, -> professor varchar(99), -> entrada int, -> saida int);

MariaDB [resilia]> create table aluno ( -> matricula varchar(30) primary key, -> nome varchar(99), -> cpf varchar(14), -> rendimento int, -> periodo int, -> pagamento varchar(30), -> idade int, -> id varchar(30));
