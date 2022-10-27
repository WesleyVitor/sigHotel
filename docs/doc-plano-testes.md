# Plano de Teste

**SigHotel**

*versão 1.0*

## Histórico das alterações

   Data    | Versão |    Descrição   | Autor(a)
-----------|--------|----------------|-----------------
28/09/2022 |  1.0   | Release incial | Wesley Vitor


## 1 - Introdução

Este documento descreve os user stories a testar, os  tipos de testes definidos para cada iteração, estratégias dos testes,os software a serem empregados e o cronograma dos testes ao longo do projeto. As seções referentes aos user stories, recursos e cronograma servem para permitir ao gerente do projeto acompanhar a evolução dos testes.

Com esse documento, você deve:
- Listar os Requisitos a testar.
- Recomendar e descrever as estratégias de teste a serem empregadas.
- Identificar os recursos necessários e prover uma estimativa dos esforços de teste.
- Listar os elementos resultantes do projeto de testes.

## 2 - Requisitos a Testar

### Casos de uso:

Identificador do caso de uso | Nome do caso de uso
-----------------------------|---------------------
id US01                      |       Manter Hóspede
id US02                      |       Manter Quartos
id US03                      |       Manter Reserva

## 3 - Estratégia dos testes


### 3.1 - Tipos de teste

- Teste de Unidade
   - Chamar cada método de modelo, serviços ou outra camada, propagando cada um com dados válidos e inválidos.
   - Inspecionar método de modelo, serviços ou outra camada para assegurar que os dados foram preenchidos conforme planejado 
- Teste de Integridade
   - Chamar cada Action dos controllers propagando cada um com dados válidos e inválidos.
- Teste de sistema
   - Criação de um Script para rodar no selenium, afim de verificar como são os fluxos do projeto.


## 4 - Recursos

Esta seção deve descrever os recursos humanos, de ambiente de teste e de ferramentas de automatização de testes necessários para execução dos testes que devem ser descritos nas subseções que seguem.

### 4.1 - Ambiente de teste - Software

Para descrever os ambientes de testes em relação aos softewares usados, será usado o framework de testes chamado RSpec que auxilia no desenvolvimento usando o framework Ruby on rails.
### 4.2 - Ferramenta de teste

- RSpec Rails
- Selenium


## 5 - Cronograma

Tipo de teste      | Duração | data de início | data de término
-------------------|---------|----------------|-----------------
Teste de unitário    |         | 01/09/2022     | 24/10/2022
Teste de integração    |         | 01/09/2022     | 24/10/2022
Test de sistema  |         | 11/10/2022     | 31/10/2022

## 6 - Referências

https://www.cin.ufpe.br/~gta/rup-vc/extend.formal_resources/guidances/examples/resources/test_plan_v1.htm#_Toc449511181

https://github.com/danielle8farias-zz/plano-de-testes


