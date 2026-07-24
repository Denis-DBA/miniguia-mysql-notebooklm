# 📘 Miniguia de Estudos sobre MySQL

## 📑 Índice

- [📖 Introdução ao MySQL](#1-introdução-ao-mysql)
- [📜 História do MySQL](#2-história-do-mysql)
- [🗄️ Sistema Gerenciador de Banco de Dados (SGBD)](#3-sistema-gerenciador-de-banco-de-dados-sgbd)
- [🗃️ Banco de Dados Relacional](#4-banco-de-dados-relacional)
- [⚙️ Instalação do MySQL](#5-instalação-do-mysql)
- [🏗️ Estrutura de um Banco de Dados](#6-estrutura-de-um-banco-de-dados)
- [🔤 Tipos de Dados](#7-tipos-de-dados)
- [🛠️ Comandos DDL](#8-comandos-ddl)
- [✍️ Comandos DML](#9-comandos-dml)
- [🔎 Comandos DQL](#10-comandos-dql)
- [🔑 Constraints](#11-constraints)
- [📊 Funções de Agregação](#12-funções-de-agregação)
- [➕ Operadores SQL](#13-operadores-sql)
- [🔗 JOINs](#14-joins)
- [👁️ Views](#15-views)
- [⚡ Procedures](#16-procedures)
- [🚦 Triggers](#17-triggers)
- [📇 Índices](#18-índices)
- [💾 Backup](#19-backup)
- [🔒 Segurança](#20-segurança)
- [✅ Boas Práticas](#21-boas-práticas)
- [📚 Glossário](#22-glossário)
- [🏁 Conclusão](#23-conclusão)


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

## 3. Sistema Gerenciador de Banco de Dados (SGBD)

Um Sistema Gerenciador de Banco de Dados (SGBD) é um software responsável por criar, armazenar, organizar, consultar, atualizar e administrar bancos de dados de forma segura e eficiente.

O SGBD atua como uma camada intermediária entre os usuários, as aplicações e os dados armazenados, permitindo que diferentes operações sejam realizadas sem a necessidade de acessar diretamente os arquivos do sistema operacional.

Além de armazenar informações, um SGBD oferece recursos para controlar o acesso aos dados, garantir sua integridade, executar consultas, realizar backups e recuperar informações em caso de falhas.

O MySQL é um exemplo de Sistema Gerenciador de Banco de Dados Relacional (SGBD), utilizando a linguagem SQL (Structured Query Language) para permitir a criação, manipulação e consulta de bancos de dados.

### Principais funções de um SGBD

As principais responsabilidades de um Sistema Gerenciador de Banco de Dados são:

- Criar bancos de dados.
- Criar tabelas.
- Inserir registros.
- Atualizar informações.
- Excluir dados.
- Consultar registros.
- Gerenciar usuários e permissões.
- Controlar transações.
- Garantir a integridade dos dados.
- Realizar backup e recuperação.

### Vantagens da utilização de um SGBD

A utilização de um Sistema Gerenciador de Banco de Dados oferece diversos benefícios, entre eles:

- Centralização das informações.
- Redução da redundância de dados.
- Maior segurança das informações.
- Controle de acesso por usuários.
- Integridade e consistência dos dados.
- Facilidade na realização de consultas.
- Melhor organização das informações.
- Suporte ao acesso simultâneo por múltiplos usuários.
- Facilidade na manutenção e administração do banco de dados.

### Exemplos de SGBDs

Existem diversos Sistemas Gerenciadores de Banco de Dados disponíveis no mercado. Entre os mais utilizados destacam-se:

| SGBD | Fabricante |
|-------|------------|
| MySQL | Oracle Corporation |
| PostgreSQL | PostgreSQL Global Development Group |
| Oracle Database | Oracle Corporation |
| Microsoft SQL Server | Microsoft |
| MariaDB | MariaDB Foundation |
| SQLite | SQLite Consortium |

### O papel do MySQL como SGBD

O MySQL é um dos SGBDs relacionais mais utilizados no mundo devido ao seu desempenho, estabilidade, facilidade de utilização e ampla documentação.

Ele é empregado em aplicações web, sistemas corporativos, plataformas de comércio eletrônico, sistemas de gestão empresarial e diversas soluções em nuvem.

Além disso, o MySQL oferece recursos como controle de usuários, gerenciamento de permissões, replicação, backups, índices, procedimentos armazenados, gatilhos (triggers) e otimização de consultas.

### Exemplo de utilização

Quando um usuário realiza uma consulta como:

```sql
SELECT * FROM CLIENTE;
```

O MySQL interpreta o comando SQL, localiza a tabela **CLIENTE**, recupera os registros armazenados e retorna os resultados para a aplicação.

Todo esse processo é realizado pelo Sistema Gerenciador de Banco de Dados, sem que o usuário precise acessar diretamente os arquivos onde os dados estão armazenados.

### Resumo

O Sistema Gerenciador de Banco de Dados (SGBD) é o software responsável por administrar todas as operações relacionadas aos bancos de dados, garantindo organização, segurança, desempenho e integridade das informações.

O MySQL destaca-se como um dos principais SGBDs relacionais da atualidade, sendo amplamente utilizado por empresas e desenvolvedores para armazenar, consultar e gerenciar grandes volumes de dados de forma eficiente.

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
