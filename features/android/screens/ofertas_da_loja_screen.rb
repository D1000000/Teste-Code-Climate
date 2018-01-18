# coding: utf-8
# language: pt

class OfertasDaLojaScreen
    def initialize
        @acessar_loja = 'bt_offers_no_store'   
    end

    def acessar_loja
    find_element(id: @acessar_loja).click
    binding.pry
    end
end