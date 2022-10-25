
class HospedesController < ApplicationController
    before_action :get_hospede, only: [:show, :destroy, :edit, :update]
    def index
        @hospedes = Hospede.where(status: :active).order(created_at: :desc)
    end


    def show
    end

    def new
        @hospede = Hospede.new
    end

    def create
        @hospede = HospedeCreator.new(valid_params).create_hospede
        if @hospede.persisted?
            redirect_to new_hospede_endereco_path(@hospede.id)
        else
            render :new, status: :unprocessable_entity
        end
    end
    
    def destroy
        #Status do hospede fica igual a inactive
        @hospede.inactive!
        redirect_to hospedes_path
    end

    def edit

    end

    def update
        if HospedeUpdater.new(valid_params).update_hospede(@hospede)
            redirect_to hospede_path
        else
            render :edit, status: :unprocessable_entity
        end

    end


    private
    def valid_params
        params.require(:hospede).permit(:nome, :cpf, :email, :celular, :status)
    end

    def get_hospede
        @hospede = Hospede.find(params[:id])
    end
end
