# Aula 04 – Melhorando a Estrutura do Banco de Dados

## 📌 Sobre a aula
Nesta aula, o professor Gustavo Guanabara ensina
como melhorar a estrutura do banco de dados,
mostrando boas práticas logo no início da criação.

Aqui, o banco já começa a ser criado de forma
mais profissional, com padrões corretos e
organização adequada.

---

## 🗄️ Criação do banco de dados
O primeiro passo é criar o banco de dados
definindo corretamente o conjunto de caracteres
e a forma de comparação de textos (collation).

Isso garante compatibilidade com acentos
e caracteres da língua portuguesa.

### 💻 Código SQL
```sql
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

---

##📋 Criação da tabela pessoas

Após criar o banco, o professor cria a tabela
pessoas, já aplicando melhorias importantes
na estrutura.

---

###💻Código SQL
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE `pessoas` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(30) NOT NULL,
    `nascimento` DATE,
    `sexo` ENUM('M', 'F'),
    `peso` DECIMAL(5,2),
    `altura` DECIMAL(3,2),
    `nacionalidade` VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (`id`)
) DEFAULT CHARSET = utf8;

---

**Observação:**  
O professor utiliza crase (`) para delimitar  
nomes de tabelas e colunas, ajudando a evitar  
conflitos com palavras reservadas do SQL  
e sendo considerada uma boa prática no MySQL.

---

🧠 Explicação da estrutura da tabela
🔑 Campo id

INT: número inteiro

AUTO_INCREMENT: gera valores automaticamente

PRIMARY KEY: identifica cada registro de forma única

Esse campo é essencial para organizar os dados.

---

✍️ Campo nome

VARCHAR(30)

NOT NULL: o nome é obrigatório

Evita registros sem identificação.

---

📅 Campo nascimento

Tipo DATE

Armazena datas corretamente (ano, mês e dia)

---

🚻 Campo sexo

Tipo ENUM('M', 'F')

Limita os valores possíveis

Ajuda a evitar dados inválidos.

---

⚖️ Campo peso

Tipo DECIMAL(5,2)

Permite valores com casas decimais

---

📏 Campo altura

Tipo DECIMAL(3,2)

Ideal para alturas como 1.75, 1.60 etc.

---

🌎 Campo nacionalidade

Tipo VARCHAR(20)

Valor padrão: Brasil

Se nada for informado, o banco assume automaticamente.

---

🧩 Melhorias aplicadas nesta aula

Nesta aula, o banco de dados já apresenta:

Chave primária

Campo identificador automático

Restrições de preenchimento

Tipos de dados bem definidos

Charset adequado

Tudo isso melhora a organização,
a segurança e a qualidade dos dados.

---

✍️ Observações pessoais

Essa aula mostrou que pequenos detalhes
fazem muita diferença na estrutura do banco.

Aprendi que criar um banco de dados não é
apenas armazenar dados, mas planejar bem
como eles serão organizados.

---

✅ Conclusão

A Aula 04 representa um grande avanço
na construção do banco de dados, tornando
a estrutura mais profissional e preparada
para crescer nas próximas aulas.
