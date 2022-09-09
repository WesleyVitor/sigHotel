# Documento de Visão

Documento construído a partido do Modelo BSI - Doc 001 - Documento de Visão que pode ser encontrado no link: https://docs.google.com/document/d/1DPBcyGHgflmz5RDsZQ2X8KVBPoEF5PdAz9BBNFyLa6A/edit?usp=sharing

## Equipe e Definição de Papéis

| Membro          | Papel    | E-mail                         |
| --------------- | -------- | ------------------------------ |
| Wesley Morais   | Todos    | wesleydemorais@outlook.com.br  |


## Descrição do Projeto

<p align="justify">O sistema sigHotel terá como objetivo o gerenciamento de um hotel, no qual terá algumas funcionalidade iniciais como os CRUD de hóspedes, quartos e reservas. Além de outras funcionalidades que poderá surgir.</p>

## Perfis dos Usuários

O sistema poderá ser utilizado por diversos usuários. Temos os seguintes perfis/atores:

Perfil        | Descrição                                                                                                                                             |
------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
Recepcionista | Este usuário tem acesso acesso a todas as funcionalidades de CRUD relativas às entidades: hóspede, quartos e reservas.
Administrador | Este usuário pode consultar as informações do seu próprio perfil, assim como visualizar o registro das suas reservas.


## Requisitos Funcionais

Requisito                         | Descrição   | Ator       |
--------------------------------- | ----------- | ---------- |
RF01 - Inserir Hospede            | Um hóspede possui nome, cpf, senha, cidade, estado, celular,email e status. | Recepcionista
RF02 - Alterar Hospede            | A alteração permite a mudança do nome, cpf, senha, cidade, estado, celular,email. | Recepcionista
RF03 - Buscar Hospede             | A busca é feita com base no cpf do hóspede. | Recepcionista
RF04 - Listar Hospede             | Lista todos as instâncias de hóspedes  | Recepcionista
RF05 - Excluir Hospede            | A exclusão é feita mudando o status do hóspde | Recepcionista
RF06 - Inserir Quarto             | Um quarto possui numero, limite_hospedes,descrição,tipo_de_quarto e status. | Recepcionista
RF07 - Alterar Quarto             | A alteração permite a mudança do numero, limite_hospedes,descrição e tipo_de_quarto. | Recepcionista
RF08 - Buscar Quarto              | A busca é feita com base no numero do quarto. | Recepcionista 
RF09 - Listar Quarto              | Lista todos as instâncias de quartos | Recepcionista
RF10 - Excluir Quarto             | A exclusão é feita com base no status do quarto | Recepcionista
RF11 - Inserir reserva            | Uma reserva possui numero_da_reserva, hospedes,hospede_responsável, quarto, duração_da_hospedagem, status_pagamento, valor_pagamento. | Recepcionista
RF12 - Alterar reserva            | A alteração permite a mudança do numero_da_reserva, hospedes,hospede_responsável, quarto, duração_da_hospedagem, status_pagamento, valor_pagamento. | Recepcionsita
RF13 - Buscar reserva             | A busca é feita com base no numero_da_reserva da reserva. | Recepcionista
RF14 - Listar reserva             | Lista todos as instâncias de reservas | Recepcionista

## Requisitos Não-funcionais

Requisito | Descrição  
--------- | -----------
RNF01 | Deve ser acessível via qualquer navegador escolhido pelo usuário
RNF02 | Não deve apresentar erros ao usuário final que estiver usando em tempo real quando o servidor for desativado para possíveis manutenções.
RNF03 | Deve ter confidencialidade, ou seja, apenas usuários que tem permissões de acessar determinadas páginas da aplicação deve acessa-las.
RNF04 | Deve ter integridade, ou seja, os dados que foram adicionados ao banco de dados pela aplicação de uma forma deve ser retornado da mesma forma.


