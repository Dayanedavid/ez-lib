# Projeto de Prática Profissional em ADS 
## Grupo: Grupo A
Nome do Projeto: ez-lib
plataforma acessível e moderna que oferece aos usuários uma ampla seleção de livros digitais para compra.

## Pré-requisitos
- Java 21
- Node.js 19.6.1

## Como Executar
### Backend (Spring Boot)
1. Navegue até o diretório do backend: `cd ./backend/ecommerce`
2. Compile e execute a aplicação Spring Boot: `./mvnw spring-boot:run`
3. Ou, se preferir, use um IDE como IntelliJ ou Eclipse para executar a classe principal _EcommerceApplication_.

### Frontend (Angular)
1. Navegue até o diretório do frontend: `cd ./frontend/angular-ecommerce`
2. Instale as dependências do projeto: `npm install`
3. Execute o servidor de desenvolvimento do Angular: `npm run ng serve`
4. Acesse a aplicação no navegador em http://localhost:4200.

## Estrutura do Projeto
- backend/: Contém o código fonte do Spring Boot.
- frontend/: Contém o código fonte do Angular.

## Site
- https://ez-lib.onrender.com/
- Por ser uma hospedagem gratuita no Render, o back-end pode demorar alguns minutos até responder a primeira requisição.
- O CORS pode impedir requisições para o back-end. Substitua as URLs para realizar as requisições: 
  - Back-end: substitua `https://ez-lib.onrender.com` por `http://localhost:4200`
  - Front-end: substitua `https://ezlib.onrender.com` por `http://localhost:8080`
