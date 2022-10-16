require 'hospede_repository.rb'
class HospedesController < ApplicationController
    def index
        @hospedes = HospedeRepository.get_all_hospedes
    end


    def show
        @hospede = Hospede.find(params[:id])
    end
end
