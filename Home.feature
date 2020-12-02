# language: pt
Funcionalidade: Tela Home do Portal, após login do usuário
Serão descritos os casos de testes de layout e funcionalidades da Tela Home do Portal, após login do usuário
Pré-condição: usuário deve estar logado no Portal 

#Layout 1
Esquema do Cenário:  Validar os componentes de layout da Tela Home do Portal - Parte 1 
Dado que o usuário esteja na Tela Home do Portal
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente | Elemento                                  |
| Título     | Unidas                                    |
| Menu       | Comparador                                |
| Menu       | Nosso estoque                             |
| Menu       | Minhas compras                            |
| Menu       | Razão_Social                              |
| Ícone      | Favoritos                                 |
| Ícone      | Carrinho                                  |
| Label      | Encontre seu veículo em                   |
| Seleção    | Localidade                                |
| Link       | Filtros avançados                         |
| Campo      | Busque por marca ou modelo                |
| Título     | Destaques da semana                       |
| Label      | Categoria 1                               |
| Card       | Veículo e suas características principais |
| Card       | Veículo e suas características principais |
| Label      | Categoria 2                               |
| Card       | Veículo e suas características principais |
| Card       | Veículo e suas características principais |

#Funcionalidade - Menus
Cenário: Validar direcionamento para a tela de comparação entre dois veículos
Dado que o usuário acione a opção "Comparador"
Então é direcionado para a tela "Comparador"

Cenário: Validar direcionamento para a tela de visualização de estoque
Dado que o usuário acione a opção "Nosso estoque"
Então é direcionado para a tela "Nosso estoque"

Cenário: Validar direcionamento para a tela de visualização das compras
Dado que o usuário acione a opção "Minhas compras"
Então é direcionado para a tela "Minhas compras"

Cenário: Validar direcionamento para a tela de dados do usuário
Dado que o usuário acione a seta ao lado da razão social e clique em "Meus dados"
Então é direcionado para a tela "Meus dados"

Cenário: Validar direcionamento para a tela de favoritos salvos pelo usuário
Dado que o usuário clique no ícone de favoritos alinhado aos menus
Então é direcionado para a tela "Favoritos"

Cenário: Validar direcionamento para o carrinho de compras
Dado que o usuário clique no ícone de carrinho alinhado aos menus
Então é direcionado para o carrinho de compras

Cenário: Validar opção de sair do Portal
Dado que o usuário acione a seta ao lado da razão social e clique em "Sair"
Então o logout do Portal é efetuado com sucesso 

#Funcionalidade - Localidade e filtros avançados
Cenário: Validar seleção de localidade
Dado que o usuário acione a seleção por localidade e escolha uma opção
Quando realizar uma busca por marca ou modelo
Então o resultado exibe apenas produtos disponíveis na loja/localidade selecionada

Cenário: Validar direcionamento para filtros avançados
Dado que o usuário acione o link "Filtros avançados"
Então é direcionado para a tela "Filtros avançados"

#Funcionalidade - Busca 
Cenário: Validar a funcionalidade de busca por marca
Dado que o usuário informe a marca desejada no campo de busca
Então são retornados os veículos correspondentes à marca pesquisada

Cenário: Validar a funcionalidade de busca por modelo
Dado que o usuário informe o modelo desejado no campo de busca
Então são retornados os veículos correspondentes ao modelo pesquisado

Cenário: Validar a funcionalidade de busca por marca e modelo
Dado que o usuário informe marca e modelo no campo de busca
Então são retornados os veículos correspondentes ao conjunto de marca e modelo pesquisados

Cenário: Validar que não retorna nenhum resultado, se pesquisado por uma marca e/ou modelo inexistente
Dado que o usuário informe uma marca e/ou modelo inexistente
Então o sistema retorna "Nenhum resultado encontrado para a busca"

Cenário: Validar se o sistema mantém o histórico das últimas pesquisas
Dado que o usuário clique sobre o campo de busca
Então é exibida a sugestão das últimas buscas efetuadas

Cenário: Validar a exibição da última compra do usuário na Tela Home do Portal
Dado que o usuário possua uma compra em andamento ou concluída
Quando o usuário efetua login no Portal
Então a compra é exibida na Tela Home do Portal

#Layout 2
Esquema do Cenário:  Validar os componentes de layout da Tela Home do Portal - Parte 2
Dado que o usuário esteja na Tela Home do Portal
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente | Elemento                                  |
| Título     | As melhores opções de veículos            |
| Label      | Por categoria                             |
| Card       | Hatch compacto e imagem de um modelo      |
| Card       | Hatch médio e imagem de um modelo         |
| Card       | Sedan médio e imagem de um modelo         |
| Card       | Executivo e imagem de um modelo           |
| Card       | SUV e imagem de um modelo                 |
| Card       | Utilitários e imagem de um modelo         |
| Label      | Por faixa de preço                        |
| Card       | Faixa de preço 1 e imagem de um modelo    |
| Card       | Faixa de preço 2 e imagem de um modelo    |
| Card       | Faixa de preço 3 e imagem de um modelo    |
| Card       | Faixa de preço 4 e imagem de um modelo    |
| Título     | Vantagens                                 |
| Card       | Facilidade no pagamento                   |
| Card       | Garantia de procedência                   |
| Card       | Você escolhe como quer fincanciar         |
| Comando    | Ver mais                                  |
| Título     | Suas últimas buscas                       |
| Label      | Marca e modelo                            |
| Card       | Veículo e suas características principais |
| Card       | Veículo e suas características principais |
| Card       | Veículo e suas características principais |
| Card       | Veículo e suas características principais |

#Funcionalidade - Destaques da semana
Cenário: Validar direcionamento para a página de detalhes do carro
Dado que o usuário clique sobre um produto sugerido nos destaques da semana
Então é direcionado para a página de detalhes do carro

#Funcionalidade - Busca por categoria ou faixa de preço
Cenário: Validar filtragem por categoria
Dado que o usuário clique sobre uma categoria sugerida 
Então é direcionado para a página, contendo apenas veículos da categoria selecionada

Cenário: Validar filtragem por faixa de preço
Dado que o usuário clique sobre uma categoria sugerida 
Então é direcionado para a página, contendo apenas veículos com a faixa de preço selecionada

#Funcionalidade - Últimas buscas
Cenário: Validar direcionamento para página do carro
Dado que o usuário clique sobre um veículo sugerido conforme histórico de busca
Então é direcionado para a página de detalhes do carro