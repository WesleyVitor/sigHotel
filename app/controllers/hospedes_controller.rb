require 'hospede_repository.rb'
class HospedesController < ApplicationController
    before_action :get_hospede, only: [:show]
    def index
        @hospedes = HospedeRepository.get_all_hospedes
    end


    def show
        
    end

    def new
        @hospede = Hospede.new
    end

    def create
        if HospedeRepository.create_hospede(valid_params)
            redirect_to hospedes_path, notice:"Hospede was successfully created."
        else
            render :new, status: :unprocessable_entity
        end
    end
    


    private
    def valid_params

        params.require(:hospede).permit(:nome, :cpf, :email, :celular, :status)
    end

    def get_hospede
        @hospede = HospedeRepository.get_hospede_by_id(params[:id])
    end
end
