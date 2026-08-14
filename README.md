# Projeto de Scripts SQL

Repositório com scripts SQL para criação e carga inicial de bases de dados (DDL e DML), pensado para execução em SQL Server.

---

## Estrutura

- `DB_ALUNO.sql` — exemplo de script para a base do aluno
- `DB_LOJA.sql` — exemplo de script para a base da loja
- `scripts/` — (opcional) pasta com `ddl.sql` e `dml.sql` quando usada

---

## Sobre os scripts

- DDL (ex.: `ddl.sql`): cria tabelas, índices, chaves, schemas e objetos do banco.
- DML (ex.: `dml.sql`): insere dados iniciais (seed), atualizações e cargas auxiliares.

### Execução (SQL Server)

1) No SQL Server Management Studio (SSMS): ative **SQLCMD Mode** em `Query` → `SQLCMD Mode`, e então use:

```sql
:r .\scripts\ddl.sql
:r .\scripts\dml.sql
```

2) Usando `sqlcmd` (linha de comando):

```bash
sqlcmd -S <servidor> -U <usuario> -P <senha> -i scripts/ddl.sql
sqlcmd -S <servidor> -U <usuario> -P <senha> -i scripts/dml.sql
```

Execute o DDL antes do DML para garantir que a estrutura exista.

---

## Uso rápido

```bash
git clone <url-do-repositorio>
cd <repositorio>
# ajustar nomes de arquivos e caminhos conforme seu ambiente
```

---

## Requisitos

- SQL Server 2016 ou superior (ou compatível)
- Permissões para criação/alteração de objetos no banco

---

## Contribuição

Contribuições são bem-vindas. Abra uma Issue para discutir alterações ou envie um Pull Request com descrição clara das mudanças.

---

## Licença

Este projeto usa a licença MIT. Consulte o arquivo LICENSE para detalhes.

---

Se quiser, posso também:

- Ajustar o README para um idioma diferente
- Adicionar exemplos de `sqlcmd` com parâmetros reais (mas sem credenciais)
- Gerar um script `scripts/README.md` com instruções por script

Diga qual opção prefere.