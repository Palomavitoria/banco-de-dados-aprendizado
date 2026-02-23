## Aula 15 – Chaves Estrangeiras e JOIN

---

**🎯 Objetivo da aula**

Nesta aula, o professor aprofunda o funcionamento
das chaves estrangeiras no MySQL e apresenta
os diferentes tipos de JOIN para consultas
envolvendo múltiplas tabelas.

Também são abordados:

- Storage Engine (ENGINE)

- MyISAM, InnoDB e XtraDB

- Transações e propriedades ACID

- Integridade referencial

- Regras de exclusão e atualização

- INNER JOIN

- LEFT JOIN

- RIGHT JOIN

- Diferença entre ON e WHERE

Ao final da aula, o aluno deve compreender
como o banco garante consistência dos dados
e como realizar consultas relacionais corretamente.

---

**⚙️ Storage Engine (ENGINE)**

No MySQL, cada tabela utiliza um mecanismo
de armazenamento chamado ENGINE.

A ENGINE determina:

- Como os dados são armazenados fisicamente

- Como funcionam bloqueios (locks)

- Se a tabela suporta transações

- Se permite o uso de chave estrangeira

- Como ocorre a recuperação após falhas

Cada tabela pode utilizar uma ENGINE diferente,
dependendo da necessidade do sistema.

Para verificar a engine de uma tabela:

show table status;

---

**📌 MyISAM**

Características:

- Não suporta chave estrangeira.

- Não suporta transações.

- Bloqueio em nível de tabela.

- Boa performance para leitura simples.

Limitações:

- Não garante integridade referencial.

- Pode gerar inconsistência em sistemas relacionais.

- Não é indicada para sistemas modernos que utilizam múltiplas tabelas relacionadas.

---

**📌 InnoDB**

Características:

- Suporta chave estrangeira.

- Suporta transações.

- Implementa as propriedades ACID.

- Bloqueio em nível de linha.

- Recuperação automática após falhas.

É a engine padrão do MySQL moderno
e a mais indicada para aplicações reais.

Permite:

- Controle de integridade referencial.

- Maior segurança em operações críticas.

- Melhor desempenho em ambientes com múltiplos usuários.

---

**📌 XtraDB**

- Versão aprimorada do InnoDB.

- Otimizada para alto desempenho.

- Muito utilizada no MariaDB.

- Mantém compatibilidade com recursos do InnoDB.

---

**🔐 Transações e ACID**

Uma transação é um conjunto de operações
executadas como uma única unidade lógica.

Exemplo clássico:
Transferência bancária.

start transaction;

update conta set saldo = saldo - 100 where id = 1;
update conta set saldo = saldo + 100 where id = 2;

commit;

Se ocorrer erro:

rollback;

---

**🔎 Propriedades ACID**

**🅰️ Atomicidade**

Ou todas as operações acontecem,
ou nenhuma acontece.

---

**🅲 Consistência**

O banco deve continuar válido
antes e depois da transação.

Todas as regras devem ser respeitadas:

- Tipos de dados

- Restrições

- Chaves primárias

- Chaves estrangeiras

---

**🅸 Isolamento**

Transações simultâneas não devem
interferir umas nas outras.

Evita problemas como:

- Dirty Read

- Leitura não repetível

- Phantom Read

---

**🅳 Durabilidade**

Após o COMMIT,
os dados permanecem salvos,
mesmo em caso de falha no sistema.

---

**🔑 Chaves Estrangeiras (Foreign Keys)**

Uma chave estrangeira é um campo
que referencia a chave primária
de outra tabela.

Ela cria formalmente
o relacionamento entre tabelas.

---

**📌 Código utilizado na aula**

use cadastro;

describe gafanhotos;

alter table gafanhotos add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

select * from gafanhotos;
select * from cursos;

update gafanhotos 
set cursopreferido = '6' 
where id = '1';

delete from cursos 
where idcurso = '28';

**📌 O que aconteceu**

**1.** Foi criada uma nova coluna.

**2.** Essa coluna passou a ser chave estrangeira.

**3.** Criou-se um relacionamento entre as tabelas.

**4.** Foi testada a integridade referencial ao tentar excluir um registro.

Se houver dependência,
o banco impede a exclusão.

---

**🔐 Integridade Referencial**

A integridade referencial garante que:

 - Não é possível inserir valor inexistente na chave estrangeira.

- Não é possível excluir registro referenciado,
salvo se houver regra definida.

Regras possíveis:

ON DELETE CASCADE
ON DELETE SET NULL
ON DELETE RESTRICT

CASCADE

Apaga automaticamente os registros dependentes.

SET NULL

Define o valor como NULL ao excluir o registro principal.

RESTRICT

Impede a exclusão se houver dependência.

---

**🔗 JOIN – Consultando Múltiplas Tabelas**

JOIN permite combinar dados
de duas ou mais tabelas relacionadas.

É essencial para trabalhar
com banco relacional.

---

**📌 INNER JOIN**

Retorna apenas registros que possuem
correspondência em ambas as tabelas.

select g.nome, c.nome
from gafanhotos g
inner join cursos c
on g.cursopreferido = c.idcurso;

Resultado:
Apenas alunos com curso definido.

---

**📌 LEFT JOIN**

Retorna todos os registros da tabela da esquerda,
mesmo que não haja correspondência na direita.

select g.nome, c.nome
from gafanhotos g
left join cursos c
on g.cursopreferido = c.idcurso;

Resultado:
Todos os alunos, inclusive os que não possuem curso.

---

**📌 RIGHT JOIN**

Retorna todos os registros da tabela da direita.

select g.nome, c.nome
from gafanhotos g
right join cursos c
on g.cursopreferido = c.idcurso;

Resultado:
Todos os cursos, mesmo sem alunos vinculados.

---

**📌 Diferença entre ON e WHERE**

ON define a condição do relacionamento.

WHERE filtra os resultados após o JOIN.

Uso incorreto pode transformar
um LEFT JOIN em INNER JOIN sem perceber.

---

**📌 Importância dos Índices**

- Chave primária cria índice automaticamente.

- Chave estrangeira deve possuir índice.

- JOIN depende de índices para ter bom desempenho.

- Falta de índice pode gerar lentidão significativa.

---

## 🧩 Como Escrever Atributos Corretamente (Incluindo Chaves)

Na aula foi reforçado que os atributos (colunas) precisam ser escritos de forma organizada e seguindo boas práticas.

Cada atributo deve conter:

- Nome
- Tipo de dado
- (Opcional) Restrições como NOT NULL, DEFAULT, AUTO_INCREMENT
- (Se necessário) definição de chave primária ou estrangeira

---

## 📌 Regras para Escrever Atributos

✔ Usar nomes claros e objetivos  
✔ Não usar espaços (usar `_` se necessário)  
✔ Não usar acentos  
✔ Evitar caracteres especiais  
✔ Manter um padrão (ex: tudo minúsculo)  

Exemplos corretos:

- `id`
- `nome`
- `data_nascimento`
- `cursopreferido`

## 🏗 Estrutura Básica de um Atributo

```sql
nome_do_atributo TIPO_DE_DADO restricoes;
```

---

**📊 Conceitos Fundamentais da Aula**

- Storage Engine define o funcionamento interno da tabela.

- MyISAM não suporta chave estrangeira nem transações.

- InnoDB suporta transações e integridade referencial.

- ACID garante segurança das transações.

- Chave estrangeira cria relacionamento entre tabelas.

- Integridade referencial impede inconsistências.

- JOIN combina dados de múltiplas tabelas.

- INNER JOIN retorna apenas correspondentes.

- LEFT JOIN mantém todos da esquerda.

- RIGHT JOIN mantém todos da direita.

- Índices são essenciais para desempenho.

---

**✍️ Observação pessoal**

Essa aula marca um avanço importante
no entendimento do funcionamento real
de bancos de dados relacionais.

Compreender ENGINE, ACID e JOIN
é fundamental para desenvolver sistemas
seguros, organizados e eficientes.

Chaves estrangeiras e JOIN
são a base para trabalhar com múltiplas
tabelas em projetos profissionais.
