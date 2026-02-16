# Aula 11 – SELECT (Parte 1)

## 🎯 Objetivo da aula
Nesta aula, o professor Gustavo Guanabara
introduz o comando SELECT, utilizado para
consultar dados armazenados nas tabelas
do banco de dados.

O foco é aprender a:

- selecionar colunas específicas
- ordenar resultados
- filtrar registros com WHERE
- utilizar operadores relacionais
- aplicar condições compostas

---

## 🧠 O que é o SELECT

O comando SELECT é utilizado para buscar
informações dentro de uma tabela.

Ele não altera os dados, apenas realiza
consultas e exibe resultados.

Estrutura básica:

```sql
SELECT coluna1, coluna2
FROM nome_da_tabela;

---

📋 Selecionando colunas específicas

Exemplo apresentado:
select ano, nome, carga from cursos
order by ano, nome;

🔎 Explicação:

• Seleciona apenas as colunas ano, nome e carga.

• Os dados vêm da tabela cursos.

• ORDER BY ano, nome organiza primeiro por ano
e, dentro do mesmo ano, organiza por nome.

---

🔍 Filtrando registros com WHERE

Exemplo:
select nome, descricao, ano from cursos
where ano <> 2015
order by ano, nome;

🔎 Explicação:

• WHERE filtra os registros.

• <> significa "diferente de".

• Exibe apenas cursos cujo ano não seja 2015.

• Ordena por ano e depois por nome.

---

📊 Utilizando BETWEEN

Exemplo:
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

🔎 Explicação:

• BETWEEN seleciona valores dentro de um intervalo.

• Inclui os valores 2014 e 2016.

• DESC ordena ano do maior para o menor.

• ASC ordena nome em ordem crescente.

---

📌 Utilizando IN

Exemplo:
select nome, descricao, ano from cursos
where ano in (2014, 2016, 2020)
order by ano;

🔎 Explicação:

• IN permite buscar vários valores específicos.

• Retorna apenas registros cujo ano seja
2014, 2016 ou 2020.

• Substitui múltiplos OR na condição.

---

🔗 Utilizando operadores lógicos (AND)

Exemplo:
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

🔎 Explicação:

• AND exige que ambas as condições sejam verdadeiras.

• Mostra cursos com carga maior que 35
e total de aulas menor que 30.

---

🧾 DESCRIBE

Exemplo:

describe cursos;


🔎 Explicação:

• Mostra a estrutura da tabela.

• Exibe colunas, tipos de dados,
se aceitam NULL, chave primária etc.

• Muito útil para revisar a estrutura
antes de fazer consultas.

---

⚙️ Operadores apresentados na aula

• = → igual

• <> → diferente

• → maior que

• < → menor que

• = → maior ou igual

• <= → menor ou igual

• BETWEEN → intervalo

• IN → múltiplos valores específicos

• AND → condição composta

---

⚠️ Pontos importantes reforçados

• SELECT não altera dados.

• WHERE filtra resultados.

• ORDER BY organiza a exibição.

• ASC é padrão (ordem crescente).

• DESC inverte a ordem.

• BETWEEN inclui os limites.

• IN substitui vários OR.

---

✍️ Observação pessoal

Esta aula marca o início das consultas
mais poderosas no banco de dados.

Com SELECT é possível buscar informações
específicas de forma organizada e filtrada,
permitindo extrair exatamente os dados
necessários para análise ou aplicação.
