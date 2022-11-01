class HospedeUpdater
    def initialize(params)
        @params = params
    end
     

    def update_hospede(hospede)
       hospede.update(@params)
    end


end