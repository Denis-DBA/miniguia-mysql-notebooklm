# 📘 Miniguia de Estudos sobre MySQL

## 📑 Índice

## 1. Introdução ao MySQL
## 2. História do MySQL
## 3. Sistema Gerenciador de Banco de Dados (SGBD)
## 4. Banco de Dados Relacional
5. Instalação do MySQL
6. Estrutura de um Banco de Dados
7. Tipos de Dados
8. Comandos DDL
9. Comandos DML
10. Comandos DQL
11. Constraints
12. Funções de Agregação
13. Operadores SQL
14. JOINs
15. Views
16. Procedures
17. Triggers
18. Índices
19. Backup
20. Segurança
21. Boas Práticas
22. Glossário
23. Conclusão


## 1. Introdução ao MySQL

O MySQL é um Sistema Gerenciador de Banco de Dados Relacional (SGBD) de código aberto, amplamente utilizado no desenvolvimento de aplicações web, sistemas corporativos e soluções de armazenamento de dados.

Seu principal objetivo é permitir o armazenamento, organização, consulta e gerenciamento de informações de forma eficiente, segura e estruturada.

Ao longo dos anos, o MySQL tornou-se uma das tecnologias mais populares do mercado devido ao seu desempenho, facilidade de utilização, confiabilidade e grande comunidade de usuários e desenvolvedores.

Atualmente, o MySQL é utilizado por empresas de diferentes portes, desde pequenos projetos até grandes plataformas que processam milhões de registros diariamente.

Este miniguia reúne os principais conceitos necessários para compreender o funcionamento do MySQL, abordando desde fundamentos até recursos mais avançados, utilizando como base documentações oficiais e materiais técnicos estudados com o auxílio do NotebookLM.

---

## 2. História do MySQL

O MySQL é um Sistema Gerenciador de Banco de Dados Relacional (SGBD) criado em 1995 pela empresa sueca **MySQL AB**. Seus principais criadores foram **Michael "Monty" Widenius**, **David Axmark** e **Allan Larsson**, que buscavam desenvolver uma solução rápida, confiável e de fácil utilização para armazenamento e gerenciamento de dados.

O nome **MySQL** surgiu da combinação do nome **"My"**, inspirado na filha de Michael Widenius, com a sigla **SQL (Structured Query Language)**, linguagem padrão utilizada para criação e manipulação de bancos de dados relacionais.

Durante seus primeiros anos, o MySQL ganhou popularidade principalmente por ser um software de código aberto (Open Source), apresentar bom desempenho e oferecer uma solução acessível para aplicações web e sistemas corporativos.

Em 2008, a empresa **MySQL AB** foi adquirida pela **Sun Microsystems**, ampliando o investimento no desenvolvimento da plataforma. Posteriormente, em 2010, a **Oracle Corporation** adquiriu a Sun Microsystems e passou a ser responsável pela evolução, manutenção e suporte oficial do MySQL.

Atualmente, o MySQL continua sendo um dos bancos de dados relacionais mais utilizados no mundo, sendo empregado em aplicações de pequeno, médio e grande porte, além de integrar soluções em nuvem e plataformas empresariais.

### Principais marcos da evolução do MySQL

| Ano | Marco |
|------|-------|
| 1995 | Lançamento da primeira versão do MySQL |
| 2000 | Licenciamento sob GPL (Open Source) |
| 2008 | Aquisição da MySQL AB pela Sun Microsystems |
| 2010 | Aquisição da Sun Microsystems pela Oracle Corporation |
| Atualidade | Evolução contínua das versões Community e Enterprise, além da integração com soluções em nuvem |

### Community Edition x Enterprise Edition

O MySQL é disponibilizado em diferentes edições.

A **Community Edition** é gratuita e destinada principalmente ao desenvolvimento, estudos e utilização em diversos tipos de aplicações.

Já a **Enterprise Edition** é voltada para empresas que necessitam de recursos adicionais de monitoramento, segurança, suporte técnico oficial e ferramentas avançadas de administração.

### Resumo

Ao longo de sua história, o MySQL consolidou-se como uma das principais soluções para gerenciamento de bancos de dados relacionais. Sua evolução tecnológica, o apoio da Oracle e sua ampla comunidade de usuários contribuíram para que se tornasse uma das tecnologias mais utilizadas no desenvolvimento de aplicações modernas.

---

## 4. Banco de Dados Relacional

Um banco de dados relacional é um modelo de armazenamento de informações baseado em tabelas relacionadas entre si por meio de chaves. Esse modelo organiza os dados de forma estruturada, facilitando consultas, atualizações e manutenção das informações.

Cada tabela representa uma entidade do sistema, enquanto cada linha representa um registro e cada coluna representa um atributo dessa entidade.

O relacionamento entre tabelas é realizado por meio de chaves primárias (Primary Keys) e chaves estrangeiras (Foreign Keys), permitindo manter a integridade e a consistência dos dados.

### Principais componentes

#### Tabelas

São estruturas responsáveis pelo armazenamento dos dados.

Exemplo:

| IDCLIENTE | NOME | SEXO |
|-----------|------|-------|
| 1 | Carlos | M |
| 2 | Ana | F |

---

#### Linhas (Registros)

Cada linha representa um registro armazenado na tabela.

Exemplo:

```text
1 | Carlos | M
```

---

#### Colunas (Campos)

As colunas representam os atributos da entidade.

Exemplo:

- IDCLIENTE
- NOME
- SEXO

---

#### Chave Primária (Primary Key)

A chave primária identifica exclusivamente cada registro de uma tabela.

Exemplo:

```sql
IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT
```

Nenhum registro pode possuir a mesma chave primária.

---

#### Chave Estrangeira (Foreign Key)

A chave estrangeira estabelece o relacionamento entre duas tabelas.

Exemplo:

```sql
FOREIGN KEY (ID_CLIENTE)
REFERENCES CLIENTE(IDCLIENTE)
```

Ela garante que somente clientes existentes possam ser referenciados por outras tabelas.

---

### Exemplo prático

No projeto **Oficina**, o banco de dados possui diversos relacionamentos.

Por exemplo:

- Um cliente pode possuir um endereço.
- Um cliente pode possuir vários telefones.
- Um carro pertence a uma marca.
- Um pedido pertence a um cliente.

Esses relacionamentos são implementados utilizando chaves estrangeiras, garantindo a integridade dos dados e evitando registros inconsistentes.

### Vantagens do modelo relacional

- Organização estruturada dos dados.
- Facilidade para realizar consultas.
- Integridade referencial.
- Redução da redundância.
- Facilidade de manutenção.
- Maior segurança das informações.

### Resumo

O modelo relacional organiza os dados em tabelas relacionadas entre si, permitindo armazenar informações de forma consistente, segura e eficiente. O MySQL utiliza esse modelo como base para o gerenciamento de bancos de dados.
