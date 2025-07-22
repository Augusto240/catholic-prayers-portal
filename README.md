# 🙏 Portal de Orações Católicas

<div align="center">
  <img src="https://www.tokyoweekender.com/wp-content/uploads/2024/10/Luce-Vatican-Mascot-2-1600x1067.jpg.webp" width="600" alt="Luce - Mascote do Vaticano">
  <p><em>Luce, a mascote do Vaticano, iluminando o caminho da fé</em></p>
</div>

## 📜 Sobre o Projeto

O Portal de Orações Católicas é uma aplicação web completa desenvolvida para proporcionar acesso fácil e intuitivo às orações tradicionais da Igreja Católica. Este portal foi criado com o objetivo de auxiliar os fiéis em sua jornada de fé, disponibilizando um acervo organizado de orações que pode ser acessado a qualquer momento, em qualquer dispositivo.

A aplicação combina um backend robusto em Ruby/Sinatra com um frontend moderno e interativo, inspirado nas cores e símbolos do Vaticano.

## ✨ Funcionalidades

- 🔍 **Busca de Orações**: Encontre orações por palavras-chave ou frases específicas
- 📋 **Categorização**: Orações organizadas por categorias (Marianas, Essenciais, Proteção, etc.)
- ⭐ **Favoritos**: Salve suas orações preferidas para acesso rápido
- 🔄 **Oração do Dia**: Receba uma oração aleatória diariamente para inspiração
- 🖨️ **Impressão**: Opção para imprimir orações em formato adequado
- 📱 **Responsivo**: Interface adaptada para todos os tamanhos de tela
- 📤 **Compartilhamento**: Compartilhe orações facilmente com amigos e familiares

## 🛠️ Tecnologias Utilizadas

- **Backend**: 
  - Ruby 3.1.2
  - Framework Sinatra
  - Puma (servidor HTTP)
  
- **Frontend**: 
  - HTML5
  - CSS3 (com design responsivo)
  - JavaScript (Vanilla JS)
  
- **Armazenamento**: 
  - JSON para banco de dados de orações
  - LocalStorage para favoritos do usuário
  
- **Containerização**: 
  - Docker para fácil implantação

## 📸 Capturas de Tela

<div align="center">
  <p><em>Capturas de tela serão adicionadas em breve</em></p>
</div>

## 🚀 Como Executar

### Pré-requisitos
- Docker instalado ou Ruby 3.1.2+

### Execução com Docker (Recomendado)
1. Clone o repositório:
   ```bash
   git clone https://github.com/Augusto240/catholic-prayers-portal.git
   cd catholic-prayers-portal

2. Construa a imagem Docker:
    ```bash
    docker build -t prayers-api .

3. Execute o container:
    ```bash
    docker run -p 4567:4567 prayers-api
### Acesse a aplicação no navegador:
```markdown
http://localhost:4567/api
```

## 🖥️ Execução com Ruby

1. **Clone o repositório:**
    ```bash
    git clone https://github.com/Augusto240/catholic-prayers-portal.git
    cd catholic-prayers-portal
    ```

2. **Instale as dependências:**
    ```bash
    bundle install
    ```

3. **Execute a aplicação:**
    ```bash
    ruby app.rb
    ```

4. **Acesse a aplicação no navegador:**
    [http://localhost:4567](http://localhost:4567)

---

## 📋 Estrutura do Projeto

```text
catholic-prayers-portal/
├── app.rb                # Aplicação Sinatra (backend)
├── Dockerfile            # Configuração do Docker
├── Gemfile               # Dependências Ruby
├── Gemfile.lock          # Versões fixas das dependências
├── prayers.json          # Banco de dados de orações
├── public/               # Arquivos estáticos (frontend)
│   ├── index.html        # Interface principal do usuário
│   ├── css/              # Folhas de estilo
│   └── js/               # Scripts JavaScript
└── README.md             # Este arquivo
```

---

## 🔄 API Integrada

O portal possui uma API interna que pode ser acessada separadamente:

- **Documentação da API:** `/api`
- **Listagem de orações:** `/api/prayers`
- **Busca:** `/api/prayers?search=termo`
- **Oração específica:** `/api/prayers/:id`
- **Categorias:** `/api/categories`
- **Orações por categoria:** `/api/categories/:category`
- **Oração aleatória:** `/api/random`

---

## 👨‍💻 Sobre o Desenvolvedor

Este projeto foi desenvolvido por Augusto Oliveira, como uma iniciativa pessoal para contribuir com a comunidade católica.

- **GitHub:** [Augusto240](https://github.com/Augusto240)
- **LinkedIn:** [Augusto Oliveira](https://www.linkedin.com/in/augusto-oliveira)
- **Portfólio:** [augusto240.github.io/Personal-Site](https://augusto240.github.io/Personal-Site)

---

## 📝 Planos Futuros

- Adição de mais orações e categorias
- Autenticação de usuários
- Sincronização de favoritos entre dispositivos
- Lembretes de oração diária
- Versão em outros idiomas
- Aplicativo móvel (PWA)
