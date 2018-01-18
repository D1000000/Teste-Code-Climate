class HomeFazDoSeuJeitoScreen
    def initialize
        @tela_login = ''
        @chamada_marketing = ''
        @cartao_carrefour = 'home_on_your_way_card_bank'
        @programa_de_descontos = 'ic_card_my_carrefour'
        @sobre = 'home_on_your_way_card_about'
        @validar_sobre = ''
        @cpf_com_historico = ''
        @senha_login = ''
        @botao_entrar_login = ''
        @validar_programa_de_desconto = ''
        @botao_FAQ = 'home_on_your_way_card_faq'
        @validar_FAQ = ''
        @acessar_canais_atendimento = 'home_on_your_way_service'
        @validar_canais_atendimento = ''
    end

     def acessar_home_faz_do_seu_jeito
        find_elements(class: 'XCUIElementTypeButton')[2].click
    end

    def validar_tela_login
        find_element(id: @tela_login).displayed?
    end

    def acessar_chamada_marketing
        find_element(id: @chamada_marketing).click
    end

    def validar_tela_cartao_carrefour
        find_elements(id: @cartao_carrefour)[0].displayed?
    end

    def programa_de_descontos
        find_element(id: @programa_de_descontos).click
    end

    def botao_voltar
         driver.navigate().back();
    end

    def validar_home_faz_do_seu_jeito
        find_elements(id: @home_faz_do_seu_jeito)[2].displayed?
    end

    def acessar_sobre
        find_element(id: @sobre).click
    end

    def validar_sobre
        find_element(id: @validar_sobre).displayed?
    end

    def botao_login
        wait{find_element(id: @cpf_com_historico).send_keys(LOGIN[:cpf_com_historico])}
    end

    def inserir_senha_login
       wait{find_element(id: 'edt_pwd').send_key'Rs123456'}
       press_keycode(66)
    end

    def botao_entrar_login
        find_element(id: @botao_entrar_login).click
    end

    def validar_programa_de_desconto
        find_element(id: @validar_programa_de_desconto).displayed?
    end

    def acessar_FAQ
        find_element(id: @botao_FAQ).click
    end

    def validar_FAQ
        find_element(id: @validar_FAQ).displayed?        
    end

    def acessar_canais_atendimento
        find_element(id: @acessar_canais_atendimento).click        
    end

    def validar_canais_atendimento
        find_element(id: @validar_canais_atendimento).displayed?                
    end
end
