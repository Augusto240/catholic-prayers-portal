# 🙏 Catholic Prayers API

<div align="center">
  <img src="https://www.tokyoweekender.com/wp-content/uploads/2024/10/Luce-Vatican-Mascot-2-1600x1067.jpg.webp" width="600" alt="Luce - Mascote do Vaticano">
  <p><em>Luce, a mascote do Vaticano, iluminando o caminho da fé através da tecnologia</em></p>
</div>

## 📜 Sobre o Projeto

A Catholic Prayers API é uma API RESTful desenvolvida em Ruby com o framework Sinatra, que proporciona acesso programático a um banco de dados de orações católicas tradicionais. Esta API foi projetada para ser leve, rápida e fácil de integrar com diferentes aplicações frontend.

## 🌟 Recursos da API

- **Listagem completa de orações** (`GET /api/prayers`)
- **Busca por termos específicos** (`GET /api/prayers?search=termo`)
- **Detalhes de uma oração específica** (`GET /api/prayers/:id`)
- **Listagem de categorias** (`GET /api/categories`)
- **Orações por categoria** (`GET /api/categories/:category`)
- **Oração aleatória** (`GET /api/random`)

## 🛠️ Tecnologias Utilizadas

- **Ruby**: Linguagem de programação principal
- **Sinatra**: Framework web leve para Ruby
- **JSON**: Formato de armazenamento de dados e resposta da API
- **Docker**: Containerização para fácil implantação
- **Puma**: Servidor HTTP para aplicações Ruby

## 🚀 Como Executar

### Pré-requisitos
- Ruby 3.1.2+ ou Docker instalado

### Execução com Ruby
1. Clone o repositório:
   ```bash
   git clone https://github.com/Augusto240/catholic-prayers-api.git
   cd catholic-prayers-api

2. Instale as dependências:
    ```bash
    bundle install

3. Execute a aplicação:
    ```bash
    ruby app.rb

### Execução com Docker

1. Clone o repositório:
    ```bash
    git clone https://github.com/Augusto240/catholic-prayers-api.git
    cd catholic-prayers-api

2. Construa a imagem Docker:
    ```bash
    docker build -t prayers-api .

3. Execute o container:
    ```bash
    docker run -p 4567:4567 prayers-api

### A API estará disponível em:

http://localhost:4567/api


## 📋 Estrutura do Projeto
```
catholic-prayers-api/
├── app.rb                # Aplicação Sinatra (endpoints da API)
├── Dockerfile            # Configuração do Docker
├── Gemfile               # Dependências Ruby
├── Gemfile.lock          # Versões fixas das dependências
└── prayers.json          # Banco de dados de orações em formato JSON
```

## 📖 Documentação da API

### Endpoints Disponíveis

| Endpoint                      | Método | Descrição                              | Parâmetros                                 |
|-------------------------------|--------|----------------------------------------|--------------------------------------------|
| `/api`                        | GET    | Informações sobre a API                | -                                          |
| `/api/prayers`                | GET    | Lista todas as orações                 | `search` (opcional): termo para busca      |
| `/api/prayers/:id`            | GET    | Detalhes de uma oração específica      | `id`: identificador da oração              |
| `/api/categories`             | GET    | Lista todas as categorias              | -                                          |
| `/api/categories/:category`   | GET    | Lista orações de uma categoria         | `category`: nome da categoria              |
| `/api/random`                 | GET    | Retorna uma oração aleatória           | -                                          |

### Exemplos de Uso

Listar todas as orações:
```
GET http://localhost:4567/api/prayers
```
Buscar orações com o termo "Maria":

```
GET http://localhost:4567/api/prayers?search=Maria
```
Obter detalhes da oração "Ave Maria":

```
GET http://localhost:4567/api/prayers/ave_maria
```

## 👨‍💻 Sobre o Desenvolvedor

Esta API foi desenvolvida por Augusto Oliveira, como uma iniciativa pessoal para contribuir com a comunidade católica.

    GitHub: Augusto240
    LinkedIn: Augusto Oliveira
    Portfólio: augusto240.github.io/Personal-Site
# catholic-prayers-portal
