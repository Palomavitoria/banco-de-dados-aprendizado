# Aula 13 – SELECT (Parte 3)

## 🎯 Objetivo da aula
Nesta aula, o professor Gustavo Guanabara
aprofunda o uso do SELECT utilizando:

- GROUP BY (agrupamento)
- HAVING (filtro em grupos)
- Funções de agregação com agrupamento
- Subconsultas (Subquery)

O foco é aprender a analisar dados
agrupando informações e aplicando
condições sobre os grupos.

---

# 📊 Agrupando e Agregando

## 🧠 O que é GROUP BY

O comando GROUP BY é utilizado para
agrupar registros que possuem valores
iguais em uma determinada coluna.

Ele é muito utilizado junto com
funções de agregação como:

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

---

## 📌 Exemplo 1 – Agrupando por total de aulas

```sql
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;


🔎 Explicação:

• Agrupa os cursos pelo valor de totaulas.

• count(*) mostra quantos cursos existem
em cada quantidade de aulas.

• order by totaulas organiza os grupos
em ordem crescente.

---

📌 Exemplo 2 – Agrupando com WHERE
select carga, count(*) from cursos
where totaulas = 30
group by carga;


🔎 Explicação:

• Primeiro o WHERE filtra os registros
onde totaulas = 30.

• Depois o GROUP BY carga agrupa
os resultados pela carga horária.

• count(*) mostra quantos cursos existem
para cada carga dentro desse filtro.

📌 Consulta simples para comparação
select * from cursos where totaulas = 30;


Mostra todos os registros sem agrupamento,
apenas filtrando.

---

📈 GROUP BY com HAVING
🧠 O que é HAVING

O HAVING é utilizado para aplicar filtros
após o agrupamento.

⚠ Diferença importante:

• WHERE filtra registros antes do agrupamento.

• HAVING filtra grupos após o GROUP BY.

---

📌 Exemplo 3 – Agrupando por ano
select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;


🔎 Explicação passo a passo:

1. WHERE totaulas > 30
→ filtra cursos com mais de 30 aulas.

2. GROUP BY ano
→ agrupa os cursos por ano.

3. HAVING ano > 2013
→ mantém apenas grupos de anos
maiores que 2013.

4. ORDER BY count(*) desc
→ organiza do maior para o menor
número de cursos por ano.

---

🔎 Função AVG isolada
select avg(carga) from cursos;


🔎 Explicação:

• Calcula a média da coluna carga.

• Retorna apenas um valor.

• Muito útil para análises comparativas.

---

🔁 Subconsulta (Subquery)
📌 Exemplo com subconsulta
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);


🔎 Explicação detalhada:

1. A subconsulta:

(select avg(carga) from cursos)


calcula a média geral da carga horária.

2. O SELECT principal:

Filtra cursos com ano > 2015.

Agrupa pela coluna carga.

O HAVING mantém apenas grupos
cuja carga seja maior que a média geral.

👉 Aqui vemos o poder do SQL,
pois ele permite usar o resultado
de uma consulta dentro de outra.

---

⚙️ Conceitos importantes da aula

• GROUP BY agrupa registros iguais.

• Funções de agregação trabalham
sobre conjuntos de dados.

• WHERE filtra antes do agrupamento.

• HAVING filtra depois do agrupamento.

• Subquery permite consultas internas.

• ORDER BY pode organizar resultados agrupados.

---

📊 Resumo técnico

GROUP BY → cria grupos
HAVING → filtra grupos
WHERE → filtra registros
Subquery → consulta dentro de consulta

---

✍️ Observação pessoal

Essa aula mostra como o SQL pode ser
utilizado para análise real de dados,
permitindo agrupar informações e aplicar
condições avançadas.

O uso de GROUP BY, HAVING e subconsultas
eleva bastante o nível das consultas,
aproximando o banco de dados de análises
estatísticas mais completas.
