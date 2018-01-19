# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|devo ver a|ver a) tela de (?:cadastro|edição) (?:de|do) endereço(?: de entrega|)$/) do
  @page = page(CheckoutCadastrarEnderecoScreen).await(timeout: 5)
end

Dado(/^devo ser direcionado\(a\) para a tela de cadastro de endereço$/) do
  steps 'E estou na tela de cadastro de endereço'
end

######### QUANDO #########

 Quando(/^(?:preencher|preenchi|informar) todos os campos corretamente$/) do
   ###nome gerado aleatoriamente, para ser verificado na seleção de endereço se o mesmo está lá após o cadastro
     @outro_tipo_endereco =  ENDEREÇO_ENTREGA[:outro_tipo_endereco] + @page.tirar_acentos(BlaBla::Pessoa.primeiro_nome.downcase)
   steps 'E estou na tela de cadastro de endereço'
   @page.enter_campo_entrega_cep ENDEREÇO_ENTREGA[:cep]
   @page.wait_for_progress
   @page.drag_until_element_is_visible(:baixo, @page.campo_entrega_tipo_endereco_field)
   @page.enter_campo_entrega_tipo_endereco ENDEREÇO_ENTREGA[:tipo_endereco]
   @page.wait_for_progress
   @page.drag_until_element_is_visible(:baixo, @page.campo_entrega_outro_tipo_endereco_field)
   @page.enter_campo_entrega_outro_tipo_endereco @outro_tipo_endereco
   @page.drag_until_element_is_visible(:baixo, @page.campo_destinatário_field)
   @page.enter_campo_destinatário ENDEREÇO_ENTREGA[:nome_destinatário]
   @page.drag_until_element_is_visible(:baixo, @page.campo_entrega_número_field)
   @page.enter_campo_entrega_número ENDEREÇO_ENTREGA[:número]
   @page.drag_until_element_is_visible(:baixo, @page.campo_entrega_complemento_field)
   @page.enter_campo_entrega_complemento ENDEREÇO_ENTREGA[:complemento]
   @page.drag_until_element_is_visible(:baixo, @page.campo_entrega_referência_field)
   @page.enter_campo_entrega_referência ENDEREÇO_ENTREGA[:referência]
   @page.drag_until_element_is_visible(:baixo, @page.campo_entrega_telefone_field)
   @page.enter_campo_entrega_telefone ENDEREÇO_ENTREGA[:telefone]
 end

Quando(/^(?:preencher|informar) os dados do endereço de cobrança corretamente$/) do  
  @page.drag_to :baixo
  @page.enter_campo_cobrança_cep ENDEREÇO_COBRANÇA[:cep]
  @page.wait_for_progress
    @page.enter_campo_cobrança_tipoendereço ENDEREÇO_COBRANÇA[:tipo_endereco]
  @page.enter_campo_destinatário_cobrança ENDEREÇO_COBRANÇA[:nome_destinatário]
  #steps 'E que arrasto a tela para baixo'
  @page.drag_to :baixo
  @page.enter_campo_cobrança_número ENDEREÇO_COBRANÇA[:número]
  @page.enter_campo_cobrança_complemento ENDEREÇO_COBRANÇA[:complemento]
  #steps 'E que arrasto a tela para baixo'
  @page.drag_to :baixo
  @page.enter_campo_entrega_cep EDITAR_ENDEREÇO_ENTREGA[:cep]
  @page.enter_campo_cobrança_referência ENDEREÇO_COBRANÇA[:referência]
  @page.enter_campo_cobrança_tipoendereço ENDEREÇO_COBRANÇA[:tipoendereço]
  @page.enter_campo_cobrança_telefone ENDEREÇO_COBRANÇA[:telefone]
  @page.enter_campo_cobrança_tipotelefone ENDEREÇO_COBRANÇA[:tipotelefone]
  @outro_tipo_endereco =  EDITAR_ENDEREÇO_ENTREGA[:outro_tipo_endereco] + @page.tirar_acentos(BlaBla::Pessoa.primeiro_nome.downcase)
  @outro_tipo_endereco =  EDITAR_ENDEREÇO_ENTREGA[:outro_tipo_endereco] + @page.tirar_acentos(BlaBla::Pessoa.primeiro_nome.downcase)
end

# Quando(/^editar os dados do endereço de entrega$/) do
#   ###nome gerado aleatoriamente, para ser verificado na seleção de endereço se o mesmo está lá após o cadastro
#     @outro_tipo_endereco =  EDITAR_ENDEREÇO_ENTREGA[:outro_tipo_endereco] + @page.tirar_acentos(BlaBla::Pessoa.primeiro_nome.downcase)
#   steps 'E estou na tela de cadastro de endereço de entrega'
#   @page.enter_campo_entrega_cep EDITAR_ENDEREÇO_ENTREGA[:cep]
#   @page.wait_for_progress
#   #steps 'E estou na tela de cadastro de endereço de entrega'
#   @page.enter_campo_entrega_tipo_endereco EDITAR_ENDEREÇO_ENTREGA[:tipo_endereco]
#   @page.wait_for_progress
#   #steps 'E estou na tela de cadastro de endereço de entrega'
#   @page.enter_campo_entrega_outro_tipo_endereco @outro_tipo_endereco
#   @page.enter_campo_destinatário @page.tirar_acentos(BlaBla::Pessoa.nome.downcase)
#   @page.enter_campo_entrega_número EDITAR_ENDEREÇO_ENTREGA[:número]
# @page.enter_campo_entrega_complemento EDITAR_ENDEREÇO_ENTREGA[:complemento]
#   @page.drag_to :baixo
#   @page.enter_campo_entrega_referência EDITAR_ENDEREÇO_ENTREGA[:referência]
#   @page.drag_to :baixo
#   @page.enter_campo_entrega_telefone EDITAR_ENDEREÇO_ENTREGA[:telefone]
# end

Quando(/^(?:crie|criar) um novo endereço de entrega$/) do
  steps 'E preencher os dados do endereço de entrega corretamente
         E finalizar o cadastro de endereço'
end

Quando(/^editar os dados do endereço de entrega selecionado$/) do
  steps 'E estou na tela de cadastro de endereço
         E editar os dados do endereço de entrega'
end

Quando(/^editar os dados do endereço de cobrança selecionado$/) do
  steps 'E estou na tela de cadastro de endereço
         E editar os dados do endereço de cobrança'
end

Quando(/^confirmar a alteração realizada$/) do
  steps 'E finalizar o cadastro de endereço'
end

Quando(/^selecionar a opção de excluir o endereço$/) do
  @page.touch_opcao_excluir
  @page.wait_for_progress
end

Quando(/^desmarcar a opção de utilizar o mesmo endereço de entrega para cobrança$/) do
  @page.drag_to :baixo
  @page.touch_check_endereco_cobranca
end

Quando(/^utilizar o mesmo endereço para cobrança$/) do
  fail unless @page.botao_check_endereco_cobranca?
  steps 'E selecionar a opção de cadastrar'
end

Quando(/^informar um cep dentro da área de cobertura de entrega$/) do
  steps 'E estou na tela de cadastro de endereço'
  @page.enter_campo_entrega_cep EDITAR_ENDEREÇO_ENTREGA[:cep]
end

Quando(/^informar um cep fora da área de cobertura de entrega$/) do
  steps 'E estou na tela de cadastro de endereço'
  @page.enter_campo_entrega_cep ENDEREÇO_ENTREGA[:cep_fora_area_cobertura]
end


Quando(/^selecionar a opção de confirmar cadastro$/) do
  steps 'E finalizar o cadastro de endereço'
end

######### ENTãO #########

# Então(/^(?:posso |)(?:finalizar o cadastro de endereço|selecionar a opção de cadastrar)$/) do
#   @page.drag_to :baixo
#   @page.touch_botão_ok
#   @page.wait_for_progress
# end

Então(/^devo ser direcionado\(a\) para a tela de cadastro de endereço de entrega$/) do
  steps 'E que estou na tela de cadastro de endereço de entrega'
end

Então(/^ver a opção de utilizar o mesmo endereço de entrega para cobrança selecionada$/) do
  steps 'E que estou na tela de cadastro de endereço de entrega'
  fail unless @page.posso_ver_opcao_cobranca_selecionado?
end

Então(/^não devo ver a opção de cadastrar o endereço de cobrança$/) do
  fail if @page.check_endereçocobrança_visible?
end
