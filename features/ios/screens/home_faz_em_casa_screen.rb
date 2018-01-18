class HomeFazEmCasaScreen
    def initialize
        @cpf_valido = 'XCUIElementTypeKeyboard'
        @senha_valida = 'XCUIElementTypeOther'
        @botao_entrar = 'Return'
        @home_faz_em_casa = 'XCUIElementTypeButton'
        @catalogo = 'category_cell_root_View'
        @minha_compra = 'XCUIElementTypeImage'
        @validar_elegibilidade = 'onboard_select_cep_cep_text_field'     
    end

     def cpf_ja_cadastrado
         wait{find_element(class: @cpf_valido).send_keys(LOGIN[:cpf_valido_ios])}
         sleep 2
     end

     def senha_valida
         wait{find_element(class: @senha_valida).send_key"Rs123456"}
         sleep 2
     end

     def acionar_botao_entrar
         wait{find_element(name: @botao_entrar).click}
         sleep 2   
     end

     def acessar_home_faz_em_casa
         wait{find_elements(class: @home_faz_em_casa)[1].click}
     end

     def acessar_catalogo
         wait{find_element(name: @catalogo).click}   
     end

     def acessar_minha_compra
        wait{find_element(class: @minha_compra).click}
     end

     def validar_elegibilidade
         wait{find_element(name: @validar_elegibilidade).displayed?}    
     end
end