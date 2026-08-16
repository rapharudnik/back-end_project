Tripleten web_project_around_express

O projeto é o back-end da rede social "EUA Afora". Enquanto os sprints anteriores focaram no front-end, este projeto cria o servidor próprio com uma API REST, usando Node.js, Express e MongoDB.

Funcionalidades

Servidor Express rodando na porta 3001
Conexão com banco de dados MongoDB via Mongoose
Hot reload com nodemon para desenvolvimento ágil
CRUD completo de usuários e cartões
Tratamento de erros padronizado (400, 404, 500) usando orFail e verificação de err.name
Retorno de erro 404 para rotas não mapeadas
Estrutura modular com separação de rotas, controladores e modelos (padrão MVC)

Rotas de usuários

MétodoRotaDescriçãoGET/usersRetorna todos os usuáriosGET/users/:userIdRetorna um usuário pelo \_idPOST/usersCria um novo usuário (name, about, avatar)PATCH/users/meAtualiza name e about do usuário logadoPATCH/users/me/avatarAtualiza o avatar do usuário logado

Rotas de cartões

MétodoRotaDescriçãoGET/cardsRetorna todos os cartõesPOST/cardsCria um novo cartão (name, link)DELETE/cards/:cardIdRemove um cartão pelo \_idPUT/cards/:cardId/likesAdiciona curtida ao cartãoDELETE/cards/:cardId/likesRemove curtida do cartão

Estrutura do Projeto

├── controllers/
│ ├── users.js # Lógica das rotas de usuários
│ └── cards.js # Lógica das rotas de cartões
├── models/
│ ├── user.js # Schema Mongoose de usuário
│ └── card.js # Schema Mongoose de cartão
├── routes/
│ ├── users.js # Definição das rotas de usuários
│ └── cards.js # Definição das rotas de cartões
├── utils/
│ ├── errors.js # Constantes de códigos de status HTTP
│ └── constants.js # Regex de validação de URL
├── app.js # Ponto de entrada da aplicação
└── package.json

Tecnologias utilizadas

Node.js
Express.js — framework do servidor e definição de rotas
MongoDB — banco de dados NoSQL
Mongoose — ODM para modelagem de dados e validação de schema
Nodemon — hot reload em ambiente de desenvolvimento
ESLint com Airbnb Style Guide (eslint-config-airbnb-base)
EditorConfig para consistência de formatação

Scripts disponíveis

bashnpm run start # Inicia o servidor
npm run dev # Inicia o servidor com hot reload (nodemon)
npm run lint # Executa o linter ESLint

Como executar

Clone o repositório e entre no diretório:

bashgit clone <url-do-repositório>
cd web_project_around_express

Instale as dependências:

bashnpm install

Certifique-se de que o MongoDB está instalado e rodando localmente na porta padrão (27017).
Inicie o servidor em modo de desenvolvimento:

bashnpm run dev

Teste os endpoints no Postman ou navegador:

GET http://localhost:3001/users
GET http://localhost:3001/users/:userId
POST http://localhost:3001/users
PATCH http://localhost:3001/users/me
PATCH http://localhost:3001/users/me/avatar

GET http://localhost:3001/cards
POST http://localhost:3001/cards
DELETE http://localhost:3001/cards/:cardId
PUT http://localhost:3001/cards/:cardId/likes
DELETE http://localhost:3001/cards/:cardId/likes

Nota: Este projeto ainda não possui autenticação real de usuários. O \_id do usuário é atribuído por um middleware temporário em app.js, que deve ser substituído por um fluxo de login/token em uma etapa futura do projeto.

Projeto relacionado

Este back-end é a continuação do web_project_around, que construiu o front-end da mesma aplicação com HTML/CSS/JS puro e posteriormente com React.
