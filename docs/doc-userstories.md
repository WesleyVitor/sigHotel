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
| **TA02.01** | O recepcionista deseja alterar um hóspede no sistema então ele vai até a tela de pesqusar um hóspede cadastrado e clica em Editar Hóspede. Então ela preenche os campos que desejam alterar de modo correto e clica em Salvar, recebendo uma notificação de sucesso, como "Hóspede alterado com sucesso"                                                                                                                                          |
| **TA02.02** | O recepcionista deseja alterar um hóspede no sistema então ele vai até a tela de pesqusar um hóspede cadastrado e clica em Editar Hóspede. Então ela preenche os campos que desejam alterar de modo incorreto e clica em Salvar, recebendo uma notificação de sucesso, como "Hóspede alterado com sucesso"                                                                                                                                          |
| **TA03.01** | O recepcionista deseja buscar um hóspede no sistema então ele vai até a tela de pesquisar um hóspede cadastrado a partir do CPF. Caso o hóspede esteja cadastrado aparecerá na listagem de hóspedes.                                                                                                                                         |
| **TA03.02** | O recepcionista deseja buscar um hóspede no sistema então ele vai até a tela de pesqusar um hóspede cadastrado a partir do CPF. Caso o hóspede não esteja cadastrado aparecerá na listagem de hóspedes a mensagem "Nenhum hóspede cadastrado com essas informações".                                                                                                                                          |
| **TA04.01** | O recepcionista deseja buscar um hóspede no sistema então ele vai até a tela de Listar hóspedes cadastrados. Caso exista hóspedes cadastrados, então aparecerá na listagem de hóspedes.                                                                                                                                         |
| **TA04.02** | O recepcionista deseja buscar um hóspede no sistema então ele vai até a tela de Listar hóspedes cadastrados. Caso não exista hóspedes cadastrados, então aparecerá na listagem de hóspedes a mensagem "Nenhum hóspede cadastrado".                                                                                                                                         |
| **TA05.01** | O recepcionista deseja excluir um hóspede no sistema então ele vai até a tela de pesquisar hóspedes cadastrados. Caso exista hóspedes cadastrados, então poderá excluir um hóspede                                                                                                                                      |
