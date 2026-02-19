# Aula 14 – Modelo Relacional

## 🎯 Objetivo da aula
Nesta aula, o professor apresenta o conceito
de modelo relacional, explicando como os dados
são organizados e relacionados dentro de um
banco de dados.

Também são abordados:

- Modelos antigos de banco de dados
- Tipos de relacionamentos
- Chaves primárias
- Chaves estrangeiras
- Identificação de tuplas (registros)

---

# 🏛️ Evolução dos Modelos de Banco de Dados

Antes do modelo relacional, existiam outros
modelos utilizados para organizar dados.

## 📌 Modelo Hierárquico
- Estrutura em formato de árvore.
- Um registro "pai" pode ter vários "filhos".
- Relação rígida e pouco flexível.

Limitação:
- Dificuldade para representar relações complexas.

---

## 📌 Modelo em Rede
- Permite múltiplas conexões entre registros.
- Um registro pode ter vários pais e filhos.
- Mais flexível que o modelo hierárquico.

Limitação:
- Estrutura complexa e difícil manutenção.

---

## 📌 Modelo Relacional
Criado por Edgar F. Codd.

Baseado em tabelas (relações),
compostas por:

- Linhas (tuplas ou registros)
- Colunas (atributos ou campos)

Cada tabela representa uma entidade,
e as relações entre tabelas são feitas
por meio de chaves.

Esse modelo trouxe:

- Maior simplicidade
- Independência entre dados
- Melhor organização
- Facilidade para consultas com SQL

---

## 📌 Modelo Orientado a Objetos
- Inspirado na programação orientada a objetos.
- Trabalha com objetos em vez de tabelas.
- Utilizado em sistemas específicos.

Apesar disso, o modelo relacional
continua sendo o mais utilizado
em bancos de dados comerciais.

---

# 🔗 Relacionamentos entre Tabelas

O modelo relacional permite criar
ligações entre tabelas.

Existem três tipos principais:

---

## 1️⃣ Um para Um (1:1)

Um registro em uma tabela
se relaciona com apenas um
registro em outra tabela.

Exemplo:
Uma pessoa possui um CPF único.

---

## 2️⃣ Um para Muitos (1:N)

Um registro pode estar relacionado
com vários registros em outra tabela.

Exemplo:
Um curso pode ter vários alunos.

Esse é o relacionamento mais comum
em bancos de dados.

---

## 3️⃣ Muitos para Muitos (N:N)

Vários registros de uma tabela
podem se relacionar com vários
registros de outra tabela.

Exemplo:
Alunos e cursos.

Um aluno pode fazer vários cursos,
e um curso pode ter vários alunos.

⚠ Para representar N:N,
é necessário criar uma tabela intermediária
(tabela associativa).

---

# 📐 Regras dos Relacionamentos no Modelo Relacional

Para que um relacionamento entre tabelas seja válido,
algumas regras precisam ser respeitadas.

---

## 🔑 1. Regra da Chave Primária

Toda tabela deve possuir uma chave primária
para identificar cada registro de forma única.

- Não pode se repetir.
- Não pode ser nula.
- Garante integridade da entidade.

Sem chave primária, não é possível
criar relacionamentos seguros.

---

## 🔗 2. Regra da Chave Estrangeira

A chave estrangeira deve:

- Referenciar uma chave primária existente.
- Possuir o mesmo tipo de dado da chave referenciada.
- Respeitar a integridade referencial.

Isso impede que existam registros "órfãos"
sem correspondência na tabela principal.

---

## 🛡️ 3. Integridade Referencial

A integridade referencial garante que:

- Não seja possível inserir um valor
  na chave estrangeira que não exista
  na tabela referenciada.
- Não seja possível excluir um registro
  que esteja sendo referenciado,
  salvo se houver regra definida
  (CASCADE, SET NULL, etc.).

---

## 🔄 4. Regra do Relacionamento N:N

Relacionamentos muitos-para-muitos
não podem ser implementados diretamente.

É obrigatório criar uma tabela intermediária,
que conterá:

- A chave primária da primeira tabela.
- A chave primária da segunda tabela.

Essa tabela é chamada de:
- tabela associativa
- tabela de ligação

---

## 📊 5. Consistência de Cardinalidade

Cada relacionamento deve respeitar
sua cardinalidade definida:

1:1 → Um registro se relaciona com apenas um.  
1:N → Um registro se relaciona com vários.  
N:N → Vários registros se relacionam entre si,
       através de tabela intermediária.

---

# ⚠️ Importância dessas regras

Essas regras garantem:

- Organização correta dos dados
- Segurança nas relações
- Consistência das informações
- Evitar duplicidade e inconsistências

---

# 🔑 Chaves no Modelo Relacional

## 📌 Chave Primária (Primary Key)

- Identifica unicamente cada registro.
- Não pode se repetir.
- Não pode ser nula.
- Garante integridade da tabela.

Exemplo:
`id` de uma tabela.

---

## 📌 Chave Estrangeira (Foreign Key)

- É uma chave que referencia
  a chave primária de outra tabela.
- Cria o relacionamento entre tabelas.
- Garante integridade referencial.

Sem chave estrangeira,
não existe relacionamento formal
entre tabelas.

---

# 🧾 Tuplas e Identificação

Cada linha de uma tabela pode ser chamada de:

- Registro
- Linha
- Tupla

A chave primária é responsável
por identificar cada tupla
de forma única.

---

# 📊 Conceitos Fundamentais da Aula

- Banco relacional organiza dados em tabelas.
- Tabelas possuem linhas (tuplas) e colunas (atributos).
- Relacionamentos conectam tabelas.
- Chave primária identifica registros de forma única.
- Chave estrangeira cria relacionamentos entre tabelas.
- Integridade referencial garante consistência dos dados.
- Relacionamentos seguem regras de cardinalidade (1:1, 1:N, N:N).
- Modelo relacional é a base do SQL.
  
---

# ✍️ Observação pessoal
Compreender o modelo relacional é essencial
para entender JOIN, integridade referencial
e estruturação correta de bancos de dados.

Essa aula é a base estrutural para trabalhar
com múltiplas tabelas em projetos reais.
