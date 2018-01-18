class HomeFazEmCasaScreen
    def initialize
        @cpf_valido = 'edt_cpf'
        @senha_valida = 'edt_pwd'
        @botao_entrar = 'btn_send' 
        @home_faz_em_casa = 'bottom_navigation_item_title'
        @catalogo = 'txt_subcategory_name'
        @minha_compra = 'txt_label'
        @validar_elegibilidade = 'edt_delivery_area_cep'
    end

     def cpf_ja_cadastrado
         find_element(id: 'edt_cpf').send_keys"51106469968"
     end

     def senha_valida
         wait{find_element(id: @senha_valida).send_key"Rs123456"}
         press_keycode(66)
     end

     def acionar_botao_entrar
         wait{find_element(id: @botao_entrar).click}   
     end

     def acessar_home_faz_em_casa
         wait{find_elements(id: @home_faz_em_casa)[1].click}
     end

     def acessar_catalogo
         wait{find_element(id: @catalogo).click}   
     end

     def acessar_minha_compra
         wait{find_element(id: @minha_compra).click}
     end

     def validar_elegibilidade
         wait{find_element(id: @validar_elegibilidade).displayed?}     
     end
end