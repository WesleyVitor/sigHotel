class HospedeCreator
    def initialize(params)
        @params = params
    end
     

    def create_hospede
        @hospede = Hospede.new(@params)
        @hospede.status = "active"
        @hospede.save

        @hospede
    end


end