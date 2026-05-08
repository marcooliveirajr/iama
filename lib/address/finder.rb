require 'open-uri'
require 'nokogiri'

module Address
  class Finder
    def find_by_postal_code(cep)
      begin
        result = Correios::CEP::AddressFinder.get(cep)
      rescue
      end
      parse_result result
    end

    private

    def parse_result(cep)
      return nil unless cep
      {
        address:  cep[:address],
        district: cep[:neighborhood],
        city:     cep[:city],
        state:    cep[:state],
        zipcode:  cep[:zipcode]
      }
    end
  end
end
