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

## User Story US01 - Manter Quartos

<strong>Descrição:</strong> O sistema deve ter uma área para inserir, alterar, buscar e deletar quarto. Um quarto terá como atributos número, max_hospedes, descrição, tipo_por_cama, tipo_por_caracterizacao e status.


| # | Requisitos Envolvidos |
----|---------------------
RF1| Inserir Quarto
RF2| Alterar Quarto
RF3| Buscar Quarto
RF4| Listar Quartos
RF5| Excluir Quarto


**Testes de Aceitação (TA)**

| **Código**  | **Descrição**                                                                                                                                                                                                                                                                        |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **TA01.01** | O administrador deseja cadastrar um quarto no sistema então ele vai até a tela de inserir um novo quarto. Então ela preenche os campos obrigatórios de modo correto e clica em Salvar/Cadastrar, recebendo uma notificação de sucesso, como "Quarto cadastrado com sucesso"                   |
| **TA01.02** | O administrador deseja cadastrar um quarto no sistema então ele vai até a tela de inserir um novo quarto. Então ela preenche os campos obrigatórios de modo incorreto e clica em Salvar/Cadastrar, recebendo uma notificação de fracasso sobre os erros nos campos preenchidos"                                                                                                                                          |
| **TA02.01** | O adminstrador deseja alterar um quarto no sistema então ele vai até a tela de pesqusar um quarto cadastrado e clica em Editar quarto. Então ela preenche os campos que desejam alterar de modo correto e clica em Salvar, recebendo uma notificação de sucesso, como "Quarto alterado com sucesso"                                                                                                                                          |
| **TA02.02** | O adminstrador deseja alterar um quarto no sistema então ele vai até a tela de pesqusar um quarto cadastrado e clica em Editar Quarto. Então ela preenche os campos que desejam alterar de modo incorreto e clica em Salvar, recebendo uma notificação de sucesso, como "Quarto alterado com sucesso"                                                                                                                                          |
| **TA03.01** | O adminstrador/recepcionista deseja buscar um quarto no sistema então ele vai até a tela de pesquisar um quarto cadastrado a partir do Código do quarto. Caso o quarto esteja cadastrado aparecerá na listagem de quarto.                                                                                                                                         |
| **TA03.02** | O adminstrador/recepcionista deseja buscar um quarto no sistema então ele vai até a tela de pesqusar um quarto cadastrado a partir do Código do quarto. Caso o quarto não esteja cadastrado aparecerá na listagem de quartos a mensagem "Nenhum quarto cadastrado com essas informações".                                                                                                                                          |
| **TA04.01** | O adminstrador/recepcionista deseja listar quartos no sistema então ele vai até a tela de Listar quartos cadastrados. Caso exista quarto cadastrados, então aparecerá na listagem de quatos.                                                                                                                                         |
| **TA04.02** | O adminstrador/recepcionista deseja listar quartos no sistema então ele vai até a tela de Listar quartos cadastrados. Caso não exista quartos cadastrados, então aparecerá na listagem de quartos a mensagem "Nenhum quarto cadastrado".                                                                                                                                         |
| **TA05.01** | O adminstrador deseja excluir um quarto no sistema então ele vai até a tela de pesquisar quartos cadastrados. Caso exista quartos cadastrados, então poderá excluir um quarto                                                                                                                                      |

## User Story US01 - Manter Reserva

<strong>Descrição:</strong> O sistema deve ter uma área para inserir, alterar, buscar e deletar reserva. Um quarto terá como atributos numero_da_reserva, hospedes,hospede_responsável, quarto, duração_da_hospedagem, status_pagamento, valor_pagamento.


| # | Requisitos Envolvidos |
----|---------------------
RF1| Inserir Reserva    
RF2| Alterar Reserva
RF3| Buscar Reserva
RF4| Listar Reservas


**Testes de Aceitação (TA)**

| **Código**  | **Descrição**                                                                                                                                                                                                                                                                        |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **TA01.01** | O recepcionista deseja cadastrar uma reserva no sistema então ele vai até a tela de inserir uma nova reserva. Então ela preenche os campos obrigatórios de modo correto e clica em Salvar/Cadastrar, recebendo uma notificação de sucesso, como "Reserva cadastrada com sucesso"                   |
| **TA01.02** | O recepcionista deseja cadastrar uma reserva no sistema então ele vai até a tela de inserir uma nova reserva. Então ela preenche os campos obrigatórios de modo incorreto e clica em Salvar/Cadastrar, recebendo uma notificação de fracasso sobre os erros nos campos preenchidos"                                                                                                                                          |
| **TA02.01** | O recepcionista deseja alterar uma reserva no sistema então ele vai até a tela de pesqusar uma reserva cadastrado e clica em Editar reserva. Então ela preenche os campos que desejam alterar de modo correto e clica em Salvar, recebendo uma notificação de sucesso, como "Reserva alterada com sucesso"                                                                                                                                          |
| **TA02.02** | O recepcionista deseja alterar uma reserva no sistema então ele vai até a tela de pesqusar uma reserva cadastrado e clica em Editar Reserva. Então ela preenche os campos que desejam alterar de modo incorreto e clica em Salvar, recebendo uma notificação de sucesso, como "Reserva alterada com sucesso"                                                                                                                                          |
| **TA03.01** | O recepcionista deseja buscar uma reserva no sistema então ele vai até a tela de pesquisar uma reserva cadastrado a partir do Código da reserva. Caso o quarto esteja cadastrado aparecerá na listagem de reserva.                                                                                                                                         |
| **TA03.02** | O recepcionista deseja buscar uma reserva no sistema então ele vai até a tela de pesqusar uma reserva cadastrado a partir do Código da reserva. Caso o quarto não esteja cadastrado aparecerá na listagem de quartos a mensagem "Nenhuma reserva cadastrado com essas informações".                                                                                                                                          |
| **TA04.01** | O recepcionista deseja listar reservas no sistema então ele vai até a tela de Listar reservas cadastradas. Caso exista quarto cadastrados, então aparecerá na listagem de reservas.                                                                                                                                         |
| **TA04.02** | O recepcionista deseja listar reservas no sistema então ele vai até a tela de Listar reservas cadastrados. Caso não exista reservas cadastradas, então aparecerá na listagem de quartos a mensagem "Nenhum reserva cadastrado".                                                                                                                                         |    