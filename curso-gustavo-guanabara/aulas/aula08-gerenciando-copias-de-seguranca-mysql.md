# Aula 08 – Gerenciando cópias de segurança MySQL (Backup e Restore)

## 🎯 Objetivo da aula
Nesta aula, o professor Gustavo Guanabara ensina
a importância de realizar cópias de segurança
(backup) de bancos de dados e como restaurar
essas informações quando necessário.

O foco é proteger os dados contra:
- erros humanos
- exclusões acidentais
- falhas do sistema
- problemas técnicos

---

## 💾 O que é backup?
Backup é uma cópia de segurança dos dados
armazenados no banco.

Ele permite recuperar informações caso
ocorra perda de dados ou falhas no sistema.

---

## ⚠️ Por que fazer backup?
O professor destaca que dados podem ser
perdidos por diversos motivos:

- comandos executados incorretamente
- falhas de hardware
- problemas no sistema
- exclusões acidentais

Por isso, manter backups atualizados é
uma prática essencial.

---

## 🛠️ Exportando um banco de dados (Backup)
No MySQL Workbench, é possível exportar
o banco de dados para um arquivo SQL,
que contém toda a estrutura e os dados.

---

## 🧭 Caminho no MySQL Workbench
Server → Data Export

---

## 📦 O que pode ser exportado
- Estrutura do banco
- Tabelas
- Registros (dados)
- Procedimentos e objetos

---

## 💡 Formato do backup
O backup geralmente é salvo em arquivos
com extensão `.sql`.

Esses arquivos armazenam comandos SQL
capazes de recriar o banco de dados.

---

## 🔄 Restaurando um backup (Restore)
Caso seja necessário recuperar dados,
é possível importar novamente o arquivo
de backup.

---

## 🧭 Caminho no MySQL Workbench
Server → Data Import

---

## 📥 O que acontece na restauração
- recria o banco de dados
- recria as tabelas
- restaura os registros salvos

---

## ⚠️ Atenção
Antes de importar um backup, é importante
verificar se o banco atual não contém dados
que podem ser sobrescritos.

---

## 🧩 Pontos importantes da aula
- Backup protege contra perda de dados
- Export gera arquivos SQL
- Import restaura o banco
- Segurança é parte fundamental do trabalho

---

## ✍️ Observação pessoal
Essa aula mostrou que não basta apenas
criar e manipular bancos de dados.

É fundamental proteger as informações
para evitar prejuízos e perda de dados.

---

## ✅ Conclusão
Gerenciar cópias de segurança é uma prática
essencial em qualquer projeto que utilize
bancos de dados, garantindo a recuperação
das informações em situações críticas.
