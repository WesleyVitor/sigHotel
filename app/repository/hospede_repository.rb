class HospedeRepository
    class << self
        def get_all_hospedes
            Hospede.all
        end

        def get_hospede_by_id(id)
            Hospede.find(id)
        end
    end
end