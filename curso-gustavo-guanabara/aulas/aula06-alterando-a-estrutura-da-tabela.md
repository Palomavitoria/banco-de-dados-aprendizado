# Aula 06 – Alterando a estrutura da tabela (ALTER TABLE e DROP TABLE)

## 🎯 Objetivo da aula
Nesta aula, o professor Gustavo Guanabara explica
como modificar a estrutura de uma tabela já criada,
utilizando os comandos `ALTER TABLE` e `DROP TABLE`.

O foco é mostrar que a estrutura do banco pode ser
ajustada conforme a necessidade do sistema.

---

## 📋 Por que alterar a estrutura de uma tabela?
Nem sempre a estrutura criada inicialmente é a
definitiva. Com o tempo, pode ser necessário:
- adicionar novos campos
- remover campos desnecessários
- modificar tipos de dados
- corrigir erros de projeto

Para isso, usamos o comando `ALTER TABLE`.

---

## 🔧 Conceito do comando ALTER TABLE
O comando `ALTER TABLE` permite modificar a
estrutura de uma tabela existente, sem apagar
os dados já armazenados (na maioria dos casos).

---

## ➕ Adicionando um novo campo na tabela
O professor demonstra como adicionar uma nova
coluna à tabela `pessoas`.

---

## 💻 **Código SQL – Adicionando coluna**
```sql
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);

---

🧠 Explicação do código

• ALTER TABLE pessoas indica a tabela que será alterada

• ADD COLUMN adiciona uma nova coluna

• profissao é o nome do novo campo

• VARCHAR(10) define o tipo e o tamanho

Por padrão, a nova coluna é adicionada no final
da tabela.

---

📍 Definindo a posição da nova coluna

O professor explica que é possível escolher
onde a coluna será inserida.

---

💻 Código SQL – Definindo posição
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10)
AFTER nome;

---

✏️ Modificando um campo existente

Também é possível alterar as características
de uma coluna já existente, como tipo ou tamanho.

---

💻 Código SQL – Modificando coluna
ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20);

---

🧠 Explicação

Esse comando altera apenas a definição do campo,
sem mudar o nome da coluna.

---

🔄 Renomeando um campo

O professor mostra como renomear uma coluna
existente utilizando CHANGE.

---

💻 Código SQL – Renomeando coluna
ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20);

---

🧠 Explicação

• CHANGE permite alterar o nome e a definição

• O novo nome passa a ser prof

---

➖ Removendo uma coluna da tabela

Quando um campo não é mais necessário, ele pode
ser removido da estrutura.

---

💻 Código SQL – Removendo coluna
ALTER TABLE pessoas
DROP COLUMN prof;

---

❌ Apagando uma tabela inteira

O comando DROP TABLE remove completamente
uma tabela do banco de dados.

⚠️ Esse comando apaga a tabela e todos os dados.

---

💻 Código SQL – Apagando tabela
DROP TABLE pessoas;

---

⚠️ Atenção

Após executar DROP TABLE, não é possível
recuperar a tabela ou seus dados.

Esse comando deve ser usado com muito cuidado.

---

🧩 Pontos importantes da aula

• ALTER TABLE altera a estrutura

• DROP TABLE remove a tabela inteira

• Alterações estruturais exigem atenção

• Pequenos erros podem causar grandes impactos

---

✍️ Observação pessoal

Essa aula mostrou que planejar bem a estrutura
do banco é essencial, mas também que ajustes
fazem parte do processo de desenvolvimento.

Aprendi que comandos estruturais devem ser
usados com cautela para evitar perda de dados.

---

✅ Conclusão

Os comandos ALTER TABLE e DROP TABLE são
fundamentais para manutenção e evolução de um
banco de dados ao longo do tempo.
