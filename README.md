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

### 3. Configure o banco de dados

```bash
rails db:create db:migrate
```

### 5. Inicie o servidor

```bash
rails server -b 0.0.0.0 -p 3000
```

O serviço estará disponível em `http://localhost:3001`.

---

## Endpoints da API

### Autenticação

#### `POST /session`

Login de um usuário.

---
