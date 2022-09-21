## Documento de Modelos

Neste documento temos o modelo Conceitual (UML) ou de Dados (Entidade-Relacionamento).

## Modelo Conceitual

```mermaid
classDiagram
    
    class Hospede{
        -Int id
        -String name
        -String cpf
        -String phone
        -String email

        +insertHospede() void
        +getHospede() Hospede
        +updateHospede() Hospede
        +deleteHospede() Hospede
        +listHospede() List~Hospede~
    }
    
    class Address{
      -String rua 
      -String numero 
      -String complemento 
      -String bairro 
      -String cidade 
      -String estado 
      -String pais 
      -String cep 
      
      +insertHospede() void
    }
    
    class Status{
      <<enumeration>>
      ativo
      inativo
    }
    
    Hospede "*" --o "1" Address
    Hospede "1" --o "1" Status
    

   

```
