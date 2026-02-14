# Auth Service

Microserviço responsável pela autenticação e autorização de usuários dentro da arquitetura de microsserviços. Gerencia o ciclo de vida de contas de usuário, emissão e validação de tokens JWT, e controle de sessões.

---
## Requisitos

| Tecnologia | Versão |
|---|---|
| Ruby | 3.2.4 |
| Rails | 8.0.4 |
| PostgreSQL | 15 |
| Redis | 7 |
| Docker | 24+ |
| Docker Compose | 2.0+ |

---

## Instalação e Configuração Local

### 1. Clone o repositório

```bash
git clone https://github.com/SoaresVini/auth-service.git
cd auth-service
```

### 2. Instale as dependências

```bash
bundle install
```

### 3. Configure as variáveis de ambiente

Crie um arquivo `.env` na raiz do projeto:

```env
RAILS_ENV=development
DATABASE_URL=postgresql://postgres:postgres@localhost:5432/auth_service_development
REDIS_URL=redis://localhost:6379/0
SECRET_KEY_BASE=sua_chave_secreta_aqui
```

### 4. Configure o banco de dados

```bash
rails db:create db:migrate
```

### 5. Inicie o servidor

```bash
rails server -b 0.0.0.0 -p 3000
```

O serviço estará disponível em `http://localhost:3001`.

---

Este serviço faz parte de uma arquitetura de microsserviços e deve ser executado junto aos demais serviços via Docker Compose. Na raiz do projeto principal, execute:

## Endpoints da API

### Autenticação

#### `POST /session`

Login de um usuário.

---
