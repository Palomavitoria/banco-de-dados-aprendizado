# Aula 07 – Manipulando linhas (UPDATE, DELETE e TRUNCATE)

## 📚 Conceito importante – Linhas da tabela
Durante a aula, o professor explica que as
linhas de uma tabela podem receber diferentes
nomes dentro do banco de dados, como:

- Registros
- Tuplas

Esses termos se referem a um conjunto
de dados armazenado em uma única linha da tabela.

---

## 🎯 Objetivo da aula
Nesta aula, o professor Gustavo Guanabara ensina
como modificar e remover registros dentro de
uma tabela utilizando os comandos:

- UPDATE
- DELETE
- TRUNCATE

Esses comandos são utilizados para manipular
os dados armazenados no banco de dados.

---

## ✏️ Conceito do comando UPDATE
O comando `UPDATE` permite alterar valores
de registros já existentes na tabela.

Ele é utilizado quando precisamos corrigir
ou atualizar informações armazenadas.


## 🧱 Estrutura básica do UPDATE

```sql
UPDATE nome_da_tabela
SET campo = valor
WHERE condicao;


• UPDATE define a tabela

• SET define o campo a ser alterado

• WHERE define quais registros serão modificados

---

💻 Código SQL – Atualizando um registro
UPDATE pessoas
SET nome = 'Maria Silva'
WHERE id = 1;


🧠 Explicação do código

• Atualiza o nome do registro com id = 1

• Apenas o registro especificado será alterado

• WHERE evita alterações em toda a tabela

---

⚠️ UPDATE sem WHERE

Se executarmos:
UPDATE pessoas
SET nome = 'Teste';


todos os registros da tabela serão alterados.

O professor alerta que esse tipo de comando
deve ser utilizado com muito cuidado.

---

## ⚙️ Configuração nas Preferências do MySQL Workbench
Durante a aula, o professor mostra que o MySQL
Workbench possui uma opção de segurança que
impede a execução de comandos UPDATE e DELETE
sem cláusula WHERE.

Essa proteção evita alterações acidentais em
todos os registros da tabela.

---

## 🛠️ Onde alterar a configuração
Edit → Preferences → SQL Editor

Opção:
- Safe Updates (updates seguros)

Ao desmarcar essa opção, o MySQL permite
executar UPDATE e DELETE sem WHERE.

---

## ⚠️ Atenção
O professor alerta que desativar essa proteção
aumenta o risco de alterar ou apagar todos
os registros por engano.

---

🗑️ Conceito do comando DELETE

O comando DELETE remove registros
específicos de uma tabela.

A estrutura da tabela continua existindo,
apenas as linhas são removidas.


🧱 Estrutura básica do DELETE
DELETE FROM nome_da_tabela
WHERE condicao;

---

💻 Código SQL – Excluindo um registro
DELETE FROM pessoas
WHERE id = 3;


🧠 Explicação do código

• Remove apenas o registro com id = 3

• A tabela e os demais dados permanecem

---

⚠️ DELETE sem WHERE
DELETE FROM pessoas;

Remove todos os registros da tabela,
mas mantém sua estrutura.

---

🔥 Conceito do comando TRUNCATE

O comando TRUNCATE remove todos os
registros de uma tabela de forma rápida.

Ele limpa completamente os dados,
mantendo apenas a estrutura da tabela.


💻 Código SQL – Limpando a tabela
TRUNCATE TABLE pessoas;

---

🧠 Diferença entre DELETE e TRUNCATE

• DELETE remove registros linha por linha

• TRUNCATE limpa toda a tabela rapidamente

• DELETE pode usar WHERE

• TRUNCATE remove todos os registros

• TRUNCATE reinicia o AUTO_INCREMENT

---

⚠️ Atenção

TRUNCATE remove todos os dados da tabela.
Após executado, não é possível recuperar
os registros sem backup.

---

🧩 Pontos importantes da aula

• UPDATE altera registros existentes

• DELETE remove registros específicos

• TRUNCATE limpa toda a tabela rapidamente

• WHERE é essencial para segurança

---

✍️ Observação pessoal

Essa aula mostrou que manipular dados exige
muita atenção, principalmente ao utilizar
UPDATE e DELETE sem condições.

Aprendi que TRUNCATE é rápido, mas deve
ser usado com cuidado devido à remoção total
dos registros.

---

✅ Conclusão

Os comandos UPDATE, DELETE e TRUNCATE são
fundamentais para manutenção dos dados,
permitindo corrigir, remover e limpar
informações dentro das tabelas.
