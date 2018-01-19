# coding: utf-8
######### DADO #########

Dado(/^(?:que |)(?:posso ver a|estou na|esteja na|posso visualizar a) tela de (?:Scan|scan) de preço$/) do
  @page = page(ScanDePreçoScreen).await(timeout: 5)
end

Dado(/^navego até a pesquisa por digitação$/) do
  @page.botao_digitar_codigo_barras
end


######### QUANDO #########

Quando(/^(?:que |)(?:escolher|escolho|escolhi) a opção de selecionar uma loja$/) do
  steps 'E que estou na tela de scan de preço'
  @page.touch_botao_selecionar_loja
  @page.wait_for_progress
end

Quando(/^(?:que |)escolher a opção de trocar de loja$/) do
  @page.touch_botao_trocar_loja
  @page.wait_for_progress
end

Quando(/^não (?:seleciono|selecionar) uma loja$/) do
  steps 'E que estou na tela de scan de preço'
  @page.touch_botao_nao_selecionar_loja
end


Quando(/^(?:que |)(?:atribuo|atribuir|atribua) uma loja para o scan de preço$/) do
  steps 'E que estou na tela de scan de preço
         E escolhi a opção de selecionar uma loja
         E seleciono uma loja
         E posso ver a tela de scan de preço'
  
end

Quando(/^pesquisar por um código de barras válido de um produto$/) do
  @page.enter_campo_digitar_codigo_barras SCAN_DE_PRECO[:codigo_de_barra_existente]
  @page.fechar_teclado
  steps'E seleciono a opção de consultar preço'
end

Quando(/^(?:seleciono|selecionar|selecionei) a opção de consultar preço$/) do
  @page.touch_botao_consultar_preco
end

Quando(/^pesquisar por um código de barras inexistente$/) do
  @page.enter_campo_digitar_codigo_barras SCAN_DE_PRECO[:codigo_de_barra_inexistente]
  @page.fechar_teclado
  steps'E seleciono a opção de consultar preço'
end

Quando(/^selecionar a opção de ler o código de barras$/) do
  @page.enter_campo_digitar_codigo_barras SCAN_DE_PRECO[:codigo_de_barra_existente]
  @page.fechar_teclado
   fechar teclado
end

Quando(/^sair da tela de Scan de preço$/) do
  @page.touch_botao_fechar_scan
end

######### ENTãO #########

Então(/^devo voltar para a tela anterior$/) do
  steps 'E que esteja na tela home \'Faz na loja\''
end

Então(/^posso visualizar a tela de Scan de preço com (?:a|uma|a nova) loja selecionada$/) do
  steps 'E que estou na tela de scan de preço'
  @page.loja_selecionada_visible?
end

Então(/^posso visualizar as informações do produto$/) do
  @page.alerta_visible?
end

Então(/^posso ser informado sobre produto não encontrado$/) do
  @page.alerta_visible?
end

Então(/^posso ser informado sobre a necessidade da informação$/) do
  @page.alerta_visible?
end

Então(/^posso consultar as informações de outro produto$/) do
  @page.alerta_visible?
end

Então(/^posso cancelar a pesquisa de produto$/) do
  @page.alerta_visible?
end

Então(/^posso alternar para a pesquisa utilizando a câmera do dispositivo$/) do
  @page.touch_botão_camera_codigo_barras
end




