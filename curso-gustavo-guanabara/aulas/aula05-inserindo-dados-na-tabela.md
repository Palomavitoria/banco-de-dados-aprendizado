# Aula 05 – Inserindo dados na tabela (INSERT INTO)

## 🎯 Objetivo da aula
Nesta aula, o professor Gustavo Guanabara ensina
como inserir dados dentro de uma tabela utilizando
o comando `INSERT INTO`.

Até este momento, aprendemos a criar o banco de
dados e a estrutura da tabela. Agora, o foco é
armazenar informações reais dentro dela.

---

## 📋 Conceito do comando INSERT INTO
O comando `INSERT INTO` é utilizado para adicionar
novos registros em uma tabela.

Cada inserção corresponde a uma nova linha,
respeitando:
- a ordem dos campos
- os tipos de dados
- as restrições da tabela

---

## 🧱 Estrutura básica do INSERT INTO

```sql
INSERT INTO nome_da_tabela (campo1, campo2, campo3)
VALUES (valor1, valor2, valor3);
Essa é a forma mais segura, pois deixa explícito
quais campos receberão os valores.

---

🧑 Inserindo dados informando os campos

O professor demonstra a inserção de dados
informando explicitamente os nomes das colunas.

---

💻 Código SQL – Inserção informando os campos
INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Maria', '1999-05-30', 'F', 55.2, 1.65, 'Brasil');

---

🧠 Explicação do código

INSERT INTO pessoas indica a tabela

Os campos definem a ordem correta

VALUES contém os dados inseridos

O campo id não é informado, pois é AUTO_INCREMENT

---

📌 Inserção sem informar os campos

O professor explica que também é possível inserir
dados sem informar os nomes das colunas, desde que
os valores sigam exatamente a ordem da tabela.

---

💻 Código SQL – Inserção sem listar campos
INSERT INTO pessoas
VALUES
(DEFAULT, 'Maria', '1999-05-30', 'F', 55.2, 1.65, 'Brasil');

---

⚠️ Atenção

Esse método depende totalmente da ordem dos campos.
Se a estrutura da tabela mudar, o comando pode gerar
erros ou inserir dados incorretos.

---

➕ Inserindo múltiplos registros

Também é possível inserir vários registros em um
único comando, tornando o processo mais eficiente.

---

💻 Código SQL – Inserção de múltiplos registros
INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('João', '2000-01-15', 'M', 70.5, 1.80, 'Brasil'),
('Ana', '1998-11-20', 'F', 60.0, 1.68, 'Portugal'),
('Carlos', '1995-03-10', 'M', 85.0, 1.75, 'Brasil');

---

🧩 Pontos importantes da aula

• Informar os campos é mais seguro

• A ordem dos valores é fundamental

• Textos usam aspas simples

• Datas seguem o padrão AAAA-MM-DD

---

✍️ Observação pessoal

Essa aula mostrou que inserir dados exige
atenção à ordem e aos tipos definidos na tabela.

Apesar de ser possível omitir os campos, percebi
que informar explicitamente deixa o código mais
seguro e organizado.

---

✅ Conclusão

O comando INSERT INTO é essencial para que o
banco de dados comece a ser utilizado de forma
prática, armazenando informações reais.

