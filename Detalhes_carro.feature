# language: pt
Funcionalidade: Ver detalhes detalhes do carro
Serão descritos os casos de testes de layout e funcionalidades da tela "Detalhes do carro"

#Layout 1 - Topo
Esquema do Cenário: Validar os componentes de layout do topo da tela de detalhes do carro
Dado que o usuário esteja na tela de detalhes do carro
Então a tela apresenta os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento                   |
| Label      | Unidas                     |
| Campo      | Busque por marca ou modelo |
| Menu       | Comparador                 |
| Menu       | Nosso estoque              |
| Menu       | Minhas compras             |
| Menu       | Razão_Social               |
| Ícone      | Favoritos                  |
| Ícone      | Carrinho de compras        |

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

#Layout 2 - Container do carro
Esquema do Cenário: Validar os componentes de layout da tela de detalhes do carro - Container do carro
Dado que o usuário esteja na tela de detalhes do carro, container do carro
Então a tela apresenta os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento             |
| Botão      | Interior             |
| Botão      | Exterior             |
| Imagem     | Foto do veículo      |
| Seta       | Próximo              |
| Seta       | Anterior             |
| Card       | Fotos                |
| Comando    | Ver galeria de fotos |
| Comando    | Fechar galeria       |
| Comando    | Voltar para a lista  |

#Funcionalidade - Container do carro
Cenário: Validar que os botões "Interior" e "Exterior" permitem alternar a visualização das das imagens do carro entre internas e externas
Dado que o usuário esteja na tela do carro
Quando clica no botão "Interior"
Então são visualizadas as fotos da parte interna do veículo
Dado que o usuário clique no botão "Exterior"
Então são visualizadas as fotos da parte externa do veículo

Cenário: Validar as opções de navegação pelas fotos - próxima e anterior
Dado que o usuário esteja na tela do carro, na visualização de fotos
Quando clica em '>' para próxima foto
Então a próxima foto da galeria de fotos é exibida
Dado que o usuário clique em '<' para foto anterior
Então a foto anterior é exibida

Cenário: Validar opção de visualização da galeria de fotos
Dado que o usuário acione o comando "Ver galeria de fotos"
Então uma visualização em galeria é aberta
Dado que o usuário clique em "Fechar galeria"
Então a tela volta para a página do carro

Cenário: Validar que o sistema permite voltar para a listagem de veículos
Dado que o usuário esteja na tela de detalhes do carro
Quando aciona o Comando "Voltar" para a lista
Então retorna para a tela de filtros/estoque com a listagem dos veículos

#Layout 3 - Container das informações do carro
Esquema do Cenário: Validar os componentes de layout da tela de detalhes do carro - Container das informações do carro
Dado que o usuário esteja na tela de detalhes do carro, container das informações do carro
Então a tela apresenta os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento                                |
| Card       | Informações técnicas                    |
| Comando    | Comparar veículo                        |
| Comando    | Favoritar                               |
| Label      | Marca                                   |
| Label      | Modelo                                  |
| Label      | Valor_Tipo                              |
| Label      | Ano                                     |
| Label      | Valor_Ano                               |
| Label      | KM                                      |
| Label      | Valor_KM                                |
| Label      | Câmbio                                  |
| Label      | Valor_Câmbio                            |
| Label      | Combustível                             |
| Label      | Valor_Combustível                       |
| Label      | Cor                                     |
| Label      | Valor_cor                               |
| Label      | Características                         |
| Label      | Alarme                                  |
| Label      | Ar condicionado                         |
| Label      | Ar quente                               |
| Label      | Desembaçador traseiro                   |
| Label      | Direção hidráulica                      |
| Label      | Freios ABS                              |
| Label      | Porta copos                             |
| Label      | Retrovisores elétricos                  |
| Label      | Limpador traseiro                       |
| Label      | Rodas de liga leve                      |
| Label      | Travas elétricas                        |
| Label      | Vidros elétricos                        |
| Label      | Vidros elétricos traseiros              |
| Label      | Airbag motorista                        |
| Label      | Airbag passageiro                       |
| Label      | Banco do motorista com ajuste de altura |
| Label      | Computador de bordo                     |
| Label      | Encosto de cabeça traseiro              |
| Label      | Entrada USB                             |
| Label      | Tração 4X4                              |
| Label      | Observações                             |
| Label      | Mensagem da observação                  |
| Label      | Comparativo de preço                    |
| Label      | Mensagem sobre o comparativo de preço   |
| Label      | Valor Unidas                            |
| Label      | R$xx.xxx,00                             |
| Label      | Valor FIPE                              |
| Label      | R$xx.xxx,00                             |
| Label      | Valor Zero Km                           |
| Label      | R$xx.xxx,00                             |
| Card       | Valor e finalização da compra           |
| Label      | Valor                                   |
| Label      | Gostou deste carro?                     |
| Botão      | Comprar veículo                         |
| Label      | Local                                   |
| Label      | Endereço                                |
| Link       | Direcionamento para localização         |
| Card       | Informativo                             |
| Label      | X pessoas vendo este veículo            |
| Label      | Não realizamos entrega do veículo       |
| Label      | Veja vistorias próximas à nossa loja    |

#Funcionalidade - Container das informações do carro
Cenário: Validar direcionamento para o fluxo de compra
Dado que o usuário esteja na tela de detalhes do veículo, card informativo com preço
Quando aciona o comando "Comprar veículo"
Então é direcionado para o fluxo de compra 

#Layout 4 - Container "Relacionados à sua pesquisa"
Cenário: Validar os componentes de layout da tela de detalhes do carro - Container "Relacionados à sua pesquisa"
Dado que o usuário esteja na tela de detalhes do carro, container "Relacionados à sua pesquisa"
Então a tela apresenta sugestões em card, de veículos relacionados à pesquisa do usuário
Dado que o usuário clique sobre um veículo sugerido
Então é direcionado para a tela de detalhes do carro