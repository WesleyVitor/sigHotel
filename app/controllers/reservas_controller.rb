class ReservasController < ApplicationController


    def index
        @reservas = Reserva.where(status_pagamento: 0).order(created_at: :desc)
    end


end
