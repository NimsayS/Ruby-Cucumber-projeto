# language: pt

Funcionalidade: Pesquisar produtos

    
@cenario_buscar_produtos
Cenario: Buscar informacoes de produtos
Dado que o usuario consulte informacoes de todos os produtos
Quando ele realizar a pesquisa de produtos
Entao uma lista de produtos deve retornar <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |


@cenario_cadastrar_produtos
Cenario: Cadastrar Produto
Dado que o usuario cadastre um produto
Quando ele pegar o token
Quando ele coloca as informacoes
Entao o cadastro deve ser concluido <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    201          |

@cenario_deletar_produto
Cenario: Deletar produto
Dado que o usuario delete um produto
Quando ele pegar o token2
E ele deleta o produto
Entao a exclusao deve ser concluida <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |


@cenario_atualizar_produto
Esquema do Cenario: Atualizar produto
Dado que o usuario altere informacoes do produto
Quando ele pegar o token de login
E ele envia as novas informacoes do produto
Entao as informacoes do produto devem ser alteradas <codigo_esperado> 
  Exemplos:
  | codigo_esperado |
  |    200          |