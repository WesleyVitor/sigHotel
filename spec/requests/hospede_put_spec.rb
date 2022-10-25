require 'rails_helper.rb'

RSpec.describe "HospedePut", type: :request do
    context "when have valid params" do
        let(:hospede) { FactoryBot.create(:hospede)}
        
        
        it "should update email of hospede with news email" do
            hospede_email = FactoryBot.attributes_for(:hospede)[:email]
            put hospede_path(hospede), params:{
                hospede: {
                    email: hospede_email
                }
            }
            hospede.reload
            expect(hospede.email).to eq(hospede_email)
        end
        it "should update nome of hospede with news nome" do
            hospede_nome = FactoryBot.attributes_for(:hospede)[:nome]
            put hospede_path(hospede), params:{
                hospede: {
                    nome: hospede_nome
                }
            }
            hospede.reload
            expect(hospede.nome).to eq(hospede_nome)
        end
        it "should update cpf of hospede with news cpf" do
            hospede_cpf = FactoryBot.attributes_for(:hospede)[:cpf]
            put hospede_path(hospede), params:{
                hospede: {
                    cpf: hospede_cpf
                }
            }
            hospede.reload
            expect(hospede.cpf).to eq(hospede_cpf)
        end
        it "should update celular of hospede with news celular" do
            hospede_celular = FactoryBot.attributes_for(:hospede)[:celular]
            put hospede_path(hospede), params:{
                hospede: {
                    celular: hospede_celular
                }
            }
            hospede.reload
            expect(hospede.celular).to eq(hospede_celular)
        end
    end
    

end