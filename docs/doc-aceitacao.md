# Relatório de Testes de Aceitação

Este documento descreve os Testes de Aceitação 

## Descrição

**Código**: Identificação do Teste.

**Descrição**: Descrição dos passos e detalhes do teste a ser executado.

**Especificação**: Informações sobre a função testada e se ela está de acordo com a especificação do caso de uso.

**Resultado**: Resultado do teste, modificações sugeridas ou resultados do teste. No caso de erro ou problema na execução do teste descrever o erro em detalhes e adicionar print's das telas.

### User Story US01 - Manter Hóspede

**Testes de Aceitação (TA)**

| **Código**  | **Descrição** | **Especificação** | **Resultado**
| ----------- | ------ | --------- | -------- |
| **TA01.01** | O recepcionista deseja cadastrar um hóspede no sistema então ele vai até a tela de inserir um novo hóspede. Então ela preenche os campos obrigatórios de modo correto e clica em Salvar/Cadastrar, recebendo uma notificação de sucesso, como "Hóspede inativo cadastrado com sucesso".| A descrição está de acordo com o user story                      | OK
| **TA01.02** | O recepcionista deseja cadastrar um hóspede no sistema então ele vai até a tela de inserir um novo hóspede. Então ela preenche os campos obrigatórios de modo incorreto e clica em Salvar/Cadastrar, recebendo uma notificação de fracasso sobre os erros nos campos preenchidos"| A descrição está de acordo com o user Story|OK                                          |
| **TA01.03** | O recepcionista deseja alterar um hóspede no sistema então ele vai até a tela de pesqusar um hóspede cadastrado e clica em Editar Hóspede. Então ela preenche os campos que desejam alterar de modo correto e clica em Salvar, recebendo uma notificação de sucesso, como "Hóspede alterado com sucesso"| A descrição está de acordo com o user story | OK|
| **TA01.04** | O recepcionista deseja alterar um hóspede no sistema então ele vai até a tela de pesqusar um hóspede cadastrado e clica em Editar Hóspede. Então ela preenche os campos que desejam alterar de modo incorreto e clica em Salvar, recebendo uma notificação de sucesso, como "Hóspede alterado com sucesso"| A descrição está de acordo com o user Story |  OK                                                      |
| **TA01.05** | O recepcionista deseja buscar um hóspede no sistema então ele vai até a tela de pesquisar um hóspede cadastrado a partir do CPF. Caso o hóspede esteja cadastrado aparecerá na listagem de hóspedes.| Não existe tal funcionalidade| Não é possível buscar um hóspede único por cpf|
| **TA01.06** | O recepcionista deseja buscar um hóspede no sistema então ele vai até a tela de pesqusar um hóspede cadastrado a partir do CPF. Caso o hóspede não esteja cadastrado aparecerá na listagem de hóspedes a mensagem "Nenhum hóspede cadastrado com essas informações".| Não existe tal funcionalidade | Não é possível buscar um hóspede único por cpf|
| **TA01.07** |O recepcionista deseja buscar um hóspede no sistema então ele vai até a tela de Listar hóspedes cadastrados. Caso exista hóspedes cadastrados, então aparecerá na listagem de hóspedes.| A descrição está de acordo com o user Story |OK|
| **TA01.08** |O recepcionista deseja buscar um hóspede no sistema então ele vai até a tela de Listar hóspedes cadastrados. Caso não exista hóspedes cadastrados, então aparecerá na listagem de hóspedes a mensagem "Nenhum hóspede cadastrado".| A descrição está de acordo com o user Story |OK|


### User Story US02 - Manter Quarto

**Testes de Aceitação (TA)**

| **Código**  | **Descrição** | **Especificação** | **Resultado**
| ----------- | ------ | --------- | -------- |
| **TA01.01** | O administrador deseja cadastrar um quarto no sistema então ele vai até a tela de inserir um novo quarto. Então ela preenche os campos obrigatórios de modo correto e clica em Salvar/Cadastrar, recebendo uma notificação de sucesso, como "Quarto cadastrado com sucesso".| A descrição está de acordo com o user story                      | OK
| **TA01.02** | O administrador deseja cadastrar um quarto no sistema então ele vai até a tela de inserir um novo quarto. Então ela preenche os campos obrigatórios de modo incorreto e clica em Salvar/Cadastrar, recebendo uma notificação de fracasso sobre os erros nos campos preenchidos"| A descrição está de acordo com o user Story|OK                                          |
| **TA01.03** | O adminstrador deseja alterar um quarto no sistema então ele vai até a tela de pesqusar um quarto cadastrado e clica em Editar quarto. Então ela preenche os campos que desejam alterar de modo correto e clica em Salvar, recebendo uma notificação de sucesso, como "Quarto alterado com sucesso"| A descrição está de acordo com o user story | OK|
| **TA01.04** |O adminstrador deseja alterar um quarto no sistema então ele vai até a tela de pesqusar um quarto cadastrado e clica em Editar Quarto. Então ela preenche os campos que desejam alterar de modo incorreto e clica em Salvar, recebendo uma notificação de sucesso, como "Quarto alterado com sucesso"| A descrição está de acordo com o user Story |  OK                                                      |
| **TA01.05** | O adminstrador/recepcionista deseja buscar um quarto no sistema então ele vai até a tela de pesquisar um quarto cadastrado a partir do Código do quarto. Caso o quarto esteja cadastrado aparecerá na listagem de quarto.| Não existe tal funcionalidade| Não é possível buscar um quarto único por código|
| **TA01.06** | O adminstrador/recepcionista deseja buscar um quarto no sistema então ele vai até a tela de pesqusar um quarto cadastrado a partir do Código do quarto. Caso o quarto não esteja cadastrado aparecerá na listagem de quartos a mensagem "Nenhum quarto cadastrado com essas informações". | A descrição está correta com o user Story |OK|
                                      |

### Relatório de Bugs e Providências
| Teste | Providência |
| ----- | ----------- |
| - | Concertar implementação da busca para se o usuário informar um Código que não consta cadastrado no banco de dados
| - | Concertar implementação da busca para se o usuário informar um CPF que não consta cadastrado no banco de dados
| - | Concertar implementação da busca para se o usuário informar um Código que consta cadastrado no banco de dados
| - | Concertar implementação da busca para se o usuário informar um CPF que consta cadastrado no banco de dados
