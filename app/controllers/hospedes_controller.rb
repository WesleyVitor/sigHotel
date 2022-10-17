require 'hospede_repository.rb'
class HospedesController < ApplicationController
    def index
        @hospedes = HospedeRepository.get_all_hospedes
    end


    def show
        @hospede = HospedeRepository.get_hospede_by_id(params[:id])
    end
end
