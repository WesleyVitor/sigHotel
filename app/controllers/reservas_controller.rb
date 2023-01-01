class ReservasController < ApplicationController


    def index
        @reservas = Reserva.where(status_pagamento: 0).order(created_at: :desc)
    end

    def new
        @reserva = Reserva.new
    end

    def create
        @reserva = Reserva.new(params_reserva)
        if @reserva.save
            redirect_to reservas_path
        else
            render :new, status: :unprocessable_entity
        end

    end


    private

    def params_reserva
        params.require(:reserva).permit(:status_pagamento,:valor_pagamento,:hospede_id,:quarto_id,:data_hospedagem)
    end

end
