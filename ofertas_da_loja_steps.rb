# coding: utf-8
# language: pt

Dado("que naveguei até a tela de Ofertas de uma loja que tem ofertas disponíveis") do
    @ofertas_da_loja = OfertasDaLojaScreen.new
    @ofertas_da_loja.acessar_loja
end
