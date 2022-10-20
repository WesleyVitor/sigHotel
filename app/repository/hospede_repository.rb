class HospedeRepository
    class << self
        def get_all_hospedes
            Hospede.all
        end

        def get_hospede_by_id(id)
            Hospede.find(id)
        end

        def create_hospede(hospede_params)
            hospede = Hospede.new(hospede_params)
            hospede.save
        end
    end
end