# Aula 03 – Criando o Primeiro Banco de Dados

## 📌 Sobre a aula
Nesta aula, o professor Gustavo Guanabara inicia
a parte prática do curso de Banco de Dados.

Ele mostra como criar o **primeiro banco de dados**
no MySQL e explica conceitos importantes para quem
está começando, como a diferença entre banco de dados
e tabelas.

Essa aula marca o início do contato direto com SQL.

---

## 🧰 Ferramentas utilizadas
Para a parte prática da aula, foram utilizadas
as seguintes ferramentas:

- **MySQL** (Sistema Gerenciador de Banco de Dados)
- **MySQL Workbench** (interface gráfica)
- Servidor local (como WAMP ou XAMPP)

Essas ferramentas permitem criar e gerenciar
bancos de dados no próprio computador.

---

## 🗄️ Banco de dados x Tabela
Antes de criar qualquer tabela, o professor
explica que:

- **Banco de dados** é um conjunto organizado
  de informações
- **Tabelas** ficam dentro do banco de dados
- Não é possível criar tabelas sem antes
  criar um banco de dados

Esse conceito é fundamental para evitar
confusões no início dos estudos.

---

## 🧾 Criando o primeiro banco de dados
O professor apresenta o comando SQL responsável
por criar um banco de dados.

### 💻 Código SQL
```sql
-- Criando o banco de dados
CREATE DATABASE cadastro;

---

🧠 Explicação

CREATE DATABASE é o comando usado para criar
um novo banco de dados.

cadastro é o nome escolhido para o banco.

O nome do banco deve ser simples, sem espaços
ou acentos.

---

▶️ Selecionando o banco de dados

Após criar o banco, é necessário informá-lo
ao MySQL para que ele seja utilizado.

💻 Código SQL
-- Selecionando o banco de dados
USE cadastro;

---

🧠 Explicação

O comando USE define qual banco de dados
está ativo no momento.

Todos os próximos comandos serão executados
dentro desse banco.

---

📌 Boas práticas apresentadas na aula

O professor reforça algumas boas práticas, como:

Usar nomes claros e objetivos

Evitar letras maiúsculas

Não usar espaços ou acentos

Manter um padrão nos nomes

Essas práticas ajudam a evitar erros
e facilitam a manutenção do banco.

---

⚠️ Erros comuns de iniciantes

Alguns erros que podem acontecer nessa etapa:

• Criar o banco, mas esquecer de usar o comando USE

• Confundir banco de dados com tabela

• Erros de digitação nos comandos SQL

• Não prestar atenção às mensagens do MySQL

---

✍️ Observações pessoais

Essa aula foi muito importante, pois foi o
primeiro contato prático com SQL.

Criar o banco de dados ajudou a entender melhor
a diferença entre banco e tabela, algo que antes
não estava tão claro.

Também percebi que pequenos detalhes no comando
fazem muita diferença, o que exige atenção.

---

✅ Conclusão da aula

A Aula 03 apresentou os primeiros comandos
práticos em SQL e ensinou como criar e utilizar
um banco de dados.

Esse conhecimento é a base para as próximas aulas,
onde serão criadas tabelas e inseridos dados.
