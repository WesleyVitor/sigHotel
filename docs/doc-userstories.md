# Documento Lista de User Stories

## Descrição

Este documento descreve os User Stories criados a partir da Lista de Requisitos Funcionais no [Documento de Visão]("https://github.com/WesleyVitor/sigHotel/blob/main/docs/doc-visao.md").

## User Story US01 - Manter Hóspede

<strong>Descrição:</strong> O sistema deve ter uma área para inserir, alterar, buscar e deletar hóspede. Um hóspede terá como atributos nome, cpf, senha, cidade, estado, celular,email e status


| # | Requisitos Envolvidos |
----|---------------------
RF1| Inserir Hóspede
RF2| Alterar Hóspede
RF3| Buscar Hóspede
RF4| Listar Hóspedes
RF5| Excluir Hóspede


**Testes de Aceitação (TA)**

| **Código**  | **Descrição**                                                                                                                                                                                                                                                                        |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **TA01.01** | O recepcionista deseja cadastrar um hóspede no sistema então ele vai até a tela de inserir um novo hóspede. Então ela preenche os campos obrigatórios de modo correto e clica em Salvar/Cadastrar, recebendo uma notificação de sucesso, como "Hóspede inativo cadastrado com sucesso"                   |
| **TA01.02** | O recepcionista deseja cadastrar um hóspede no sistema então ele vai até a tela de inserir um novo hóspede. Então ela preenche os campos obrigatórios de modo incorreto e clica em Salvar/Cadastrar, recebendo uma notificação de fracasso sobre os erros nos campos preenchidos"                                                                                                                                          |
