# coding: utf-8
LOGIN = {
  cpf_valido: '51106469968',
  cpf_valido_ios: '8029265140',
  senha_valida: 'Rs123456',
  senha_invalida: 'Rs12',
  cpf_sem_endereco_cadastrado: '53744384764',
  cpf_sem_nenhum_endereco_cadastrado: '14357437415',
  cpf_endereco_entrega_e_cobranca: '95025076730',
  cpf_um_endereco_entrega_e_um_cobranca: '23473322792',
  cpf_cadastrar_novo_endereco: '23473322792',
  cpf_apenas_endereco_cobrança: '38563364863',
  cpf_endereco_entrega_sem_cobertura: '56223172745',
  cpf_com_cupons: '25649824339',
  cpf_sem_cupons: '53744384764',
  cpf_com_historico: '51106469968',
  cpf_sem_historico: '53744384764',
  cpf_sem_lista_de_compras: '53744384764',
  cpf_com_lista_de_compras: '51106469968',
  cpf_com_compras_em_andamento: '15614315756',
  cpf_dois_itens_na_bandeja: '55713792862',
  cpf_com_um_item_bandeja_para_exclusao: '71351637967',
  cpf_sem_acesso_catalogo: '12444494156',
  cpf_com_um_item_bandeja_para_alterar_qtde: '67669417900',
  cpf_com_acesso_catalogo: '87341257105',
  cpf_elegivel_sem_historico_compras_realizadas: '53744384764',
  cpf_que_tem_um_item_bandeja: '22724072502',
  cpf_com_um_cartao_salvo: '22724072502',
  cpf_nao_cadastrado: '83868844368',
  cpf_nao_cadastrado_ios: '83868844368'          
}

ENDEREÇO_ENTREGA = {
  #Tela de Cadastro de Endereço
  nome_destinatário: 'Douglas de Almeida da Silva',
  #cep: '04552-050',
  cep_fora_area_cobertura: '04552050',
  cep: '05690-000',
  endereço: 'Rua Super Máquina',
  bairro: 'São Lourenço',
  cidade: 'Foz do Iguaçu',
  estado: 'Paraná',
  número: '98765B',
  complemento: '5 Andar',
  referência: 'Próximo Av. Estado',
  tipo_endereco: 'Outro',
  outro_tipo_endereco: 'Casa de ',
  telefone: '1495551-2253',
}

ENDEREÇO_COBRANÇA = {
  #Tela de Cadastro de Cobrança
  nome_destinatário: 'Bruno Heitor da Silva',
  cep: '02990-010',
  endereço: 'Rua Matheus Sayajin',
  bairro: 'Santanna',
  cidade: 'São Paulo',
  estado: 'São Paulo',
  número: '123A',
  complemento: 'Andar Android',
  referência: 'Próximo da Av. Edo',
  tipo_endereco: 'Apartamento',
  telefone: '1198981-1234',
}

EDITAR_ENDEREÇO_ENTREGA = {
  #Editar Endereço de entrega
  #cep: '04143050',
  cep: '05690-000',
  cidade: 'Foz do Iguaçu',
  estado: 'Paraná',
  número: 's/n',
  complemento: '5 Andar',
  referência: 'Próximo Av. Estado',
  tipo_endereco: 'Outro',
  outro_tipo_endereco: 'Casa de ',
  telefone: '1495551-2254',
}

EDITAR_ENDEREÇO_COBRANCA = {
    #Editar Endereço de cobrança
    #cep: '04143050',
    cep: '05690-000',
    cidade: 'Belo Horizonte',
    estado: 'Minas Gerais',
    número: '70',
    complemento: '5 Andar',
    referência: 'Próximo Av. Afonso Penna',
    tipo_endereco: 'Outro',
    outro_tipo_endereco: 'Casa de ',
    telefone: '3195551-2254',
}

CARTÃO_CARREFOUR = {
  #Tela Meio de Pagamento
  número: '6221525316125935',
  nome: 'Valdo Saber Stars',
  data_vencimento: '1118',
  código_segurança: '711',
  parcelas: '0'
}

CARTÃO_VISA = {
  #Tela Meio de Pagamento
  #número: '4532246363377068',
  número: '4111111111111111',
  nome: 'Carla Silva Halls',
  data_vencimento: '0220',
  código_segurança: '322',
  parcelas: '1',
  numero_invalido: '0000000000000000  ',
}

AGENDA_ENTREGA = {
  #Tela de Agendamento da Entrega
  observação: 'Entregar para a sra. Ivone'
}

LOCALIZAR = {
  #Tela de Localizar por CEP ou por loja
  #cep: '04552-050',(cep elegivel e nao cadastrado)
  cep: '0442505',
  loja: 'Hiper Esplan'
}

BUSCAR_PRODUTO = {
  #Tela de busca de produtos
  produto_cadastrado_casa: 'pão',
  produto_cadastrado_loja: 'fogão',
  produto_não_cadastrado: 'Warcraft',
  produto: 'biscoito'
}

CADASTRO_DE_USUARIO = {
  nome: 'Maria',
  sobrenome: 'Silva',
  genero: 'Feminino',
  data_nascimento: '01/02/1987',
  telefone: '11951237890',
  #cep: '04143050', ###CEP elegível à entrega
  cep: '05690000', ###CEP elegível à entrega
  email: 'maria_silva@ig.com.br',
  senha_forte: '123456Mn!',
  senha_media: 'Rs123456',
  senha_fraca: '1234'
}

EDITAR_DADOS_PESSOAIS = {
  nome: 'Joao',
  sobrenome: 'Rosa',
  genero: 'Masculino',
  data_nascimento: '30/03/1980',
  telefone: '11993341324'
}

MEU_CARREFOUR = {
  link_lojas_participantes: 'caixa'
}

SCAN_DE_PRECO = {
    codigo_de_barra_existente: '7891103045370',
    codigo_de_barra_inexistente: '789110304',
    botao_selecionar_popup: 'Selecionar',
    botao_agora_nao_popup: 'Agora não'
}

BANDEJA = {
    mensagem_abandono: 'Abandonar compra?',
    mensagem_limite_estoque: 'Limite de estoque'

}

HOME_FAZ_DO_SEU_JEITO = {
    qtde_compras_exibidas: 2

}

MINHA_CONTA = {
   senha_alterada: 'Senha alterada com sucesso',
   erro_senha_alterada: 'A sua senha está muito fraca.',
   confirma_alteracao_dados_pessoais: 'Alterações salvas com sucesso'
}

OFERTAS = {
  oferta_inexistente: 'Toddy Maracujá'
}

VOUCHER = {
  desconto: 'TV10OFF'
}
