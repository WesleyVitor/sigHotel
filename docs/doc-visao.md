# Documento de Visão

Documento construído a partido do Modelo BSI - Doc 001 - Documento de Visão que pode ser encontrado no link: https://docs.google.com/document/d/1DPBcyGHgflmz5RDsZQ2X8KVBPoEF5PdAz9BBNFyLa6A/edit?usp=sharing

## Equipe e Definição de Papéis

| Membro          | Papel    | E-mail                         |
| --------------- | -------- | ------------------------------ |
| Wesley Morais   | Todos    | wesleydemorais@outlook.com.br  |


## Descrição do Projeto

<p align="justify">O sistema sigHotel terá como objetivo o gerenciamento de um hotel, no qual terá algumas funcionalidade iniciais como os CRUD de hóspedes, quartos e reservas. O sistema deverá ser capaz fazer chekin quando o hóspede for ao hotel presencialmente, poderá fazer checkout, afim de verificar todos os gastos feitos por ele durante a estadia.Além de outras funcionalidades que poderá surgir durante o desenvolvimento do projeto.</p>

## Perfis dos Usuários

O sistema poderá ser utilizado por diversos usuários. Temos os seguintes perfis/atores:

Perfil        | Descrição                                                                                                                                             |
------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
Recepcionista | Este usuário tem acesso acesso a algumas das funcionalidades de chekin, checkout, reservas e hóspede.
Administrador | Este usuário tem acesso acesso a todas as funcionalidades de CRUD relativas às entidades: Quartos e relatório.


## Requisitos Funcionais

Requisito                         | Descrição   | Ator       |
--------------------------------- | ----------- | ---------- |
RF01 - Inserir Hóspede            | Um hóspede possui nome, cpf, senha, cidade, estado, celular,email e status. | Recepcionista
RF02 - Alterar Hóspede            | A alteração permite a mudança do nome, cpf, senha, cidade, estado, celular,email. | Recepcionista
RF03 - Buscar Hóspede             | A busca é feita com base no cpf do hóspede. | Administrador/Recepcionista
RF04 - Listar Hóspede             | Lista todos as instâncias de hóspedes  | Administrador/Recepcionista
RF05 - Excluir Hóspede            | A exclusão é feita mudando o status do hóspde | Recepcionista
RF06 - Inserir Quarto             | Um quarto possui numero, limite_hospedes,descrição,tipo_de_quarto e status. | Administrador
RF07 - Alterar Quarto             | A alteração permite a mudança do numero, limite_hospedes,descrição e tipo_de_quarto. | Administrador
RF08 - Buscar Quarto              | A busca é feita com base no numero do quarto. | Administrador 
RF09 - Listar Quarto              | Lista todos as instâncias de quartos | Administrador
RF10 - Excluir Quarto             | A exclusão é feita com base no status do quarto | Administrador
RF11 - Inserir Reserva            | Uma reserva possui numero_da_reserva, hospedes,hospede_responsável, quarto, duração_da_hospedagem, status_pagamento, valor_pagamento. | Recepcionista
RF12 - Alterar Reserva            | A alteração permite a mudança do numero_da_reserva, hospedes,hospede_responsável, quarto, duração_da_hospedagem, status_pagamento, valor_pagamento. | Recepcionista
RF13 - Buscar Reserva             | A busca é feita com base no numero_da_reserva da reserva. | Recepcionista
RF14 - Listar Reserva             | Lista todos as instâncias de reservas | Recepcionista


