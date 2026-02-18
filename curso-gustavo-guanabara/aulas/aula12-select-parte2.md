# Aula 12 – SELECT (Parte 2)

## 🎯 Objetivo da aula
Nesta aula, o professor Gustavo Guanabara
aprofundou o uso do comando SELECT,
apresentando filtros com LIKE,
eliminação de duplicidades com DISTINCT
e funções de agregação como COUNT,
MAX, MIN, SUM e AVG.

O foco é aprender a realizar consultas
mais refinadas e análises de dados.

---

## 🔎 Utilizando LIKE (Busca por padrão)

Exemplo:

```sql
select * from cursos
where nome like 'p%';


🔎 Explicação:

• LIKE é usado para buscar padrões em textos.

•'p%' significa:

 • Começa com a letra "p".

 • % representa qualquer sequência de caracteres.

• Retorna cursos cujo nome começa com "p".

---

Exemplos de padrões:

• 'a%' → começa com "a"

• '%a' → termina com "a"

• '%a%' → contém "a" em qualquer posição

---

📌 Utilizando DISTINCT
Exemplo:
select distinct carga from cursos
order by carga;


🔎 Explicação:


• DISTINCT remove valores repetidos.


• Exibe apenas valores únicos da coluna carga.


• Muito útil para análises estatísticas.


• ORDER BY organiza os resultados.

---

🔢 Funções de Agregação
Funções de agregação realizam cálculos
sobre conjuntos de dados.

---

🔹 COUNT (Contagem)
select count(*) from cursos where carga > 40;

🔎 Explicação:


• Conta quantos registros atendem à condição.


• count(*) conta todas as linhas.


• Retorna um único valor numérico.

---

🔹 MAX (Maior valor)
select max(carga) from cursos;

Retorna o maior valor da coluna carga.
select max(totaulas) from cursos where ano = 2016;

Retorna o maior número de aulas
entre os cursos de 2016.

---

🔹 MIN (Menor valor)
select nome, min(totaulas) from cursos where ano = 2016;

Retorna o menor valor da coluna totaulas
considerando apenas o ano de 2016.
⚠ Observação:
Ao misturar coluna comum (nome)
com função de agregação, o ideal seria
usar GROUP BY (assunto das próximas aulas).

---

🔹 SUM (Soma)
select sum(totaulas) from cursos where ano = 2016;

Retorna a soma total de aulas
dos cursos de 2016.

---

🔹 AVG (Média)
select avg(totaulas) from cursos where ano = 2016;

Retorna a média de aulas
dos cursos de 2016.

---

⚙️ Conceitos importantes da aula


• LIKE permite busca por padrões.


• % representa qualquer sequência de caracteres.


• DISTINCT elimina duplicidades.


• Funções de agregação retornam apenas um valor.


• Podem ser combinadas com WHERE.


• São fundamentais para análise de dados.

---

📊 Resumo das funções aprendidas


• COUNT() → quantidade de registros


• MAX() → maior valor


• MIN() → menor valor


• SUM() → soma


• AVG() → média

---

✍️ Observação pessoal
Esta aula mostra como o SQL pode ser
utilizado não apenas para buscar dados,
mas também para analisá-los.
As funções de agregação permitem extrair
informações estatísticas importantes
diretamente do banco de dados.
