# language: pt
Funcionalidade: Comprar
Serão descritos os casos de testes de layout e funcionalidades da tela "Nosso estoque"
Pré-condição: ter clicado no menu "Nosso estoque" em qualquer tela onde ele esteja disponível

Cenário: Validar critério de ordenação incial
Dado que o usuário acione o menu "Nosso estoque"
Então o resultado é apresentado, por padrão, em ordenação "Menor Preço", do menor para o maior

#Layout 1 - Topo
Esquema do Cenário: Validar os componentes de layout no topo da tela "Nosso estoque" - Barra de menus
Dado que o usuário esteja na tela "Nosso estoque"
Então a barra de menus da tela possui os componentes <Componente>
Então a barra de menus da tela possui os elementos <Elemento>

Exemplos:
| Componente | Elemento                   |
| Label      | Unidas                     |
| Campo      | Busque por marca ou modelo |
| Comando    | Buscar                     |
| Menu       | Comparador                 |
| Menu       | Nosso estoque              |
| Menu       | Minhas compras             |
| Menu       | Razão_Social               |
| Ícone      | Favoritos                  |
| Ícone      | Carrinho de compras        |

#Funcionalidade - Busca 
Cenário: Validar a funcionalidade de busca por marca
Dado que o usuário informe a marca desejada no campo de busca
Quando aciona o comando "Buscar"
Então são retornados os veículos correspondentes à marca pesquisada

Cenário: Validar a funcionalidade de busca por modelo
Dado que o usuário informe o modelo desejado no campo de busca
Quando aciona o comando "Buscar"
Então são retornados os veículos correspondentes ao modelo pesquisado

Cenário: Validar a funcionalidade de busca por marca e modelo
Dado que o usuário informe marca e modelo no campo de busca
Quando aciona o comando "Buscar"
Então são retornados os veículos correspondentes ao conjunto de marca e modelo pesquisados

Cenário: Validar que não retorna nenhum resultado, se pesquisado por uma marca e/ou modelo inexistente
Dado que o usuário informe uma marca e/ou modelo inexistente
Quando aciona o comando "Buscar"
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

#Layout 2 - Container de critérios de busca - Título
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Refinar resultado
Dado que o usuário esteja na tela de Filtros avançados, container de critérios de busca e deseja refinar os resultados
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente   | Elemento          |
| Label        | Refinar resultado |
| Ícone        | Refinar resultado |

#Layout 3 - Container de critérios de busca - Região
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Por Região
Dado que o usuário esteja na tela de Filtros avançados, container de critérios de busca, em busca por região
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente   | Elemento          |
| Label        | Região            |
| Label        | Localização       |
| Link         | Alterar           |
| Radio Button | Em todo o Brasil  |
| Radio Button | Até 100 km        |
| Radio Button | Até 200 km        |
| Radio Button | Até 400 km        |

#Funcionalidade - Região
Cenário: Validar que o sistema permite alteração da região para busca de veículos
Dado que o usuário acione o link "Alterar"
Quando seleciona uma região diferente da atual
Então a região é alterada com sucesso

Cenário: Validar que o sistema permite filtrar em todo o Brasil
Dado que o usuário marque o radio button "Em todo o Brasil"
Então o container de resutados é atualizado automaticamente contendo o estoque de todo o Brasil

Cenário: Validar que o sistema permite filtrar pelo raio de 100 quilômetros
Dado que o usuário marque o radio button "Até 100 km"
Então o container de resutados é atualizado automaticamente, contendo apenas veículos que atendam à distância selecionada

Cenário: Validar que o sistema permite filtrar pelo raio de 200 quilômetros
Dado que o usuário marque o radio button "Até 200 km"
Então o container de resutados é atualizado automaticamente, contendo apenas veículos que atendam à distância selecionada

Cenário: Validar que o sistema permite filtrar pelo raio de 400 quilômetros
Dado que o usuário marque o radio button "Até 400 km"
Então o container de resutados é atualizado automaticamente, contendo apenas veículos que atendam à distância selecionada

Cenário: Validar que o sistema permite filtrar mais uma opção simultaneamente
Dado que o usuário marque o radio button das opções desejadas
Então o container de resutados é atualizado automaticamente, contendo apenas veículos dos raios de distância selecionados

#Confirmar se segue regra dos demais filtros
#Layout 4 - Container de critérios de busca - Ano
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Por Ano
Dado que o usuário esteja na tela de Filtros avançados, container de critérios de busca por ano
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente   | Elemento |
| Label        | Ano      |
| Radio Button | 2018     |
| Radio Button | 2019     |
| Radio Button | 2020     |

#Funcionalidade - Ano
Cenário: Validar que o sistema permite filtrar pelo ano desejado 
Dado que o usuário marque o radio button do ano desejado
Então o container de resutados é atualizado automaticamente, contendo apenas veículos do ano selecionado

Cenário: Validar que o sistema permite filtrar por mais de um ano simultaneamente
Dado que o usuário marque o radio button de mais de um ano
Então o container de resutados é atualizado automaticamente, contendo apenas veículos dos anos selecionados

#Layout 5 - Container de critérios de busca - Marca
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Por Marca
Dado que o usuário esteja na tela de Filtros avançados, container de critérios de busca por marca
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente   | Elemento            |
| Label        | Marca               |
| Radio Button | Renault             |
| Radio Button | Audi                |
| Radio Button | Citroen             |
| Radio Button | Fiat                |
| Radio Button | Volswagen           |
| Radio Button | Jeep                |
| Link         | Ver todas as marcas |

#Funcionalidade - Marca
Cenário: Validar que o sistema permite filtrar pela marca desejada
Dado que o usuário marque o radio button da marca desejada
Então o container de resutados é atualizado automaticamente, contendo apenas veículos da marca selecionada

Cenário: Validar que o sistema expande opção para ver todas as marcas
Dado que o usuário acione o link "Ver todas as marcas"
E é expandida uma lista contendo todas as marcas com um campo para pesquisar por uma marca específica
Quando o usuário digita a marca desejada
Então um autocomplete com sugestões é apresentado
Quando o usuário seleciona a marca desejada
Então o container de resutados é atualizado automaticamente, contendo apenas veículos da marca selecionada

Esquema do Cenário: Validar opção de múltipla seleção de marcas
Dado que o usuário marque o radio button de várias marcas <Marca> 
Então o container de resutados é atualizado automaticamente, contendo os veículos das marcas selecionadas

Exemplos:
| Marca      |
| Renault    |
| Audi       |
| Citroen    |
| Fiat       |
| Volkswagen |

#Layout 6 - Container de critérios de busca - Faixa de preço
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Por Faixa de preço
Dado que o usuário esteja na tela de Filtros avançados, container de critérios de busca por faixa de preço
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente   | Elemento         |
| Label        | Faixa de preço   |
| Radio Button | Até R$40.000,00  |
| Radio Button | Até R$60.000,00  |
| Radio Button | Até R$80.000,00  |
| Radio Button | Até R$100.000,00 |

#Funcionalidade - Faixa de preço
Cenário: Validar que o sistema permite filtrar por faixa de preço
Dado que o usuário marque o radio button da faixa de preço desejada
Então o container de resutados é atualizado automaticamente, contendo apenas veículos que correspondam à faixa de preço selecionada

Cenário: Validar opção de múltipla seleção de faixa de preço
Dado que o usuário marque o radio button de várias faixas de preço
Então o container de resutados é atualizado automaticamente, contendo os veículos das faixas de preço selecionadas

#Layout 7 - Container de critérios de busca - Categoria
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Por Categoria
Dado que o usuário esteja na tela de Filtros avançados, container de critérios de busca por categoria
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente   | Elemento       |
| Label        | Categoria      |
| Radio Button | Hatch compacto |
| Radio Button | Hatch médio    |
| Radio Button | Sedan médio    |
| Radio Button | Executivo      |
| Radio Button | Utilitários    |

#Funcionalidade - Categoria
Cenário: Validar que o sistema permite filtrar por categoria
Dado que o usuário marque o radio button da categoria desejada
Então o container de resutados é atualizado automaticamente, contendo apenas veículos que correspondam à categoria selecionada

Cenário: Validar opção de múltipla seleção de categoria
Dado que o usuário marque o radio button de várias categorias <Categoria> simultaneamente
Então o container de resutados é atualizado automaticamente, contendo os veículos das categorias selecionadas

Exemplos:
| Elemento       |
| Categoria      |
| Hatch compacto |
| Hatch médio    |
| Sedan médio    |
| Executivo      |
| Utilitários    |

#Aguardar definição, pois está com a mesma função do Layout 6
#Layout 8 - Container de critérios de busca - Valor
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Por Valor
Dado que o usuário esteja na tela de filtros avançados, container de critérios de busca por valor inicial e final
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente | Elemento               |
| Label      | Valor                  |
| Slider     | Componente de arrastar |
| Label      | Valor inicial          |
| Label      | Valor final            |

#Descrever cenários das funcionalidades

#Layout 9 - Container de critérios de busca - KM
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Por Quilometragem
Dado que o usuário esteja na tela de filtros avançados, container de critérios de busca por quilometragem
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente | Elemento               |
| Label      | Valor                  |
| Slider     | Componente de arrastar |
| Label      | Valor inicial          |
| Label      | Valor final            |

#Funcionalidade - KM
Cenário: Validar que o sistema permite selecionar uma faixa inicial e final de quilometragem
Dado que o usuário arraste o componente até o valor inicial e valor final desejado
Então o container de resutados é atualizado automaticamente, contendo os veículos com as quilometragens que correspondem à faixa determinada

#Layout 10 - Container de critérios de busca - Câmbio
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Por Câmbio
Dado que o usuário esteja na tela de filtros avançados, container de critérios de busca por câmbio
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente   | Elemento             |
| Label        | Câmbio               |
| Radio Button | Automático           |
| Radio Button | CVT                  |
| Radio Button | Manual               |
| Link         | Ver todos os câmbios |

#Funcionalidade - Câmbio
Cenário: Validar que o sistema permite filtrar pelo tipo de câmbio desejado
Dado que o usuário marque o radio button do câmbio desejado
Então o container de resutados é atualizado automaticamente, contendo apenas veículos do câmbio selecionado

Cenário: Validar que o sistema expande opção para ver todos os câmbios
Dado que o usuário acione o link "Ver todos os câmbios"
E é expandida uma lista contendo todos os câmbios com um campo para pesquisar por um câmbio específico
Quando o usuário digita o câmbio desejado
Então um autocomplete com sugestões é apresentado
Quando o usuário seleciona o câmbio desejado
Então o container de resutados é atualizado automaticamente, contendo apenas veículos do câmbio selecionado

Esquema do Cenário: Validar opção de múltipla seleção câmbios
Dado que o usuário marque o radio button de vários câmbios <Câmbio>
Então o container de resutados é atualizado automaticamente, contendo os veículos dos câmbios selecionados

Exemplos:
| Câmbio     |
| Automático |
| CVT        |
| Manual     |

#Layout 11 - Container de critérios de busca - Combustível
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Por Combustível
Dado que o usuário esteja na tela de filtros avançados, container de critérios de busca por combustível
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente   | Elemento                  |
| Label        | Combustível               |
| Radio Button | Álcool e gás natural      |
| Radio Button | Gás natural               |
| Radio Button | Gasolina                  |
| Radio Button | Gasolina e Álcool         |
| Link         | Ver todos os combustíveis |

#Funcionalidade - Combustível
Cenário: Validar que o sistema permite filtrar pelo tipo de combustível desejado
Dado que o usuário marque o radio button do combustívelo desejado
Então o container de resutados é atualizado automaticamente, contendo apenas veículos correspondentes ao tipo de combustível selecionado

Cenário: Validar que o sistema expande opção para ver todos os combustíveis
Dado que o usuário acione o link "Ver todos os combustíveis"
E é expandida uma lista contendo todos os combustíveis com um campo para pesquisar por um combustível específico
Quando o usuário digita o combustível desejado
Então um autocomplete com sugestões é apresentado
Quando o usuário seleciona o combustível desejado
Então o container de resutados é atualizado automaticamente, contendo apenas veículos correspondentes ao tipo de combustível selecionado

Esquema do Cenário: Validar opção de múltipla seleção de combustíveis
Dado que o usuário marque o radio button de vários combustíveis <Combustível>
Então o container de resutados é atualizado automaticamente, contendo os veículos dos câmbios selecionados

Exemplos:
| Combustível          |
| Álcool e gás natural |
| Gás natural          |
| Gasolina             |
| Gasolina e Álcool    |

#Layout 12 - Container de critérios de busca - Cor
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Por Cor
Dado que o usuário esteja na tela de filtros avançados, container de critérios de busca por cor
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente   | Elemento           |
| Label        | Cor                |
| Radio Button | Branco             |
| Radio Button | Prata              |
| Radio Button | Preto              |
| Radio Button | Verde              |
| Link         | Ver todas as cores |

#Funcionalidade - Cor
Cenário: Validar que o sistema permite filtrar pela cor desejada
Dado que o usuário marque o radio button da cor desejada
Então o container de resutados é atualizado automaticamente, contendo apenas veículos correspondentes à cor selecionada

Cenário: Validar que o sistema expande opção para ver todas as cores
Dado que o usuário acione o link "Ver todas as cores"
E é expandida uma lista contendo todas as cores com um campo para pesquisar por uma cor específica
Quando o usuário digita a cor desejada
Então um autocomplete com sugestões é apresentado
Quando o usuário seleciona a cor desejada
Então o container de resutados é atualizado automaticamente, contendo apenas veículos correspondentes à cor selecionada

Esquema do Cenário: Validar opção de múltipla seleção de cores
Dado que o usuário marque o radio button de várias cores <Cor>
Então o container de resutados é atualizado automaticamente, contendo os veículos nas cores selecionadas

Exemplos:
| Cor    |
| Branco |
| Prata  |
| Preto  |
| Verde  |

#Layout 13 - Container de critérios de busca - Características
Esquema do Cenário: Validar os componentes de layout no container de critérios de busca da tela de filtros avançados - Por Características
Dado que o usuário esteja na tela de filtros avançados, container de critérios de busca por características
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Elemento>

Exemplos:
| Componente   | Elemento                     |
| Label        | Características              |
| Radio Button | Air bag duplo                |
| Radio Button | Alarme                       |
| Radio Button | Ar condicionado              |
| Radio Button | Rodas de liga leve           |
| Link         | Ver todas as características |

#Funcionalidade - Características
Cenário: Validar que o sistema permite filtrar pela característica desejada
Dado que o usuário marque o radio button da característica desejada
Então o container de resutados é atualizado automaticamente, contendo apenas veículos correspondentesà característica selecionada

Cenário: Validar que o sistema expande opção para ver todas as características
Dado que o usuário acione o link "Ver todas as características"
E é expandida uma lista contendo todas as características com um campo para pesquisar por uma característica específica
Quando o usuário digita a característica desejada
Então um autocomplete com sugestões é apresentado
Quando o usuário seleciona a característica desejada
Então o container de resutados é atualizado automaticamente, contendo apenas veículos correspondentes à característica selecionada

Esquema do Cenário: Validar opção de múltipla seleção de características
Dado que o usuário marque o radio button de várias características <Característica>
Então o container de resutados é atualizado automaticamente, contendo os veículos nas características selecionadas

Exemplos:
| Características    |
| Air bag duplo      |
| Alarme             |
| Ar condicionado    |
| Rodas de liga leve |

#Layout 14 - Container de resultados - Home padrão 
Esquema do Cenário: Validar os componentes de layout no container de resultados
Dado que o usuário esteja na tela de filtros avançados, container de resultados
E ainda não selecionou filtro específico, apenas sua região
Então a tela padrão exibe os resultados em forma de card 
E possui os componentes <Componente> e elementos <Elemento>

Exemplos:
| Componente | Elemento                              |
| Label      | Próximos a você em [Sua região]       |
| Ícone      | Visualização em card                  |
| Ícone      | Visualização em lista                 |
| Seleção    | Ordenar por                           |
| Card       | Veículo e suas informações principais |
| Label      | Você já viu x de y carros disponíveis |
| Comando    | Carregar mais                         |

#Funcionalidade - carregar mais
Cenário: Validar que o Infinite scroll está funcionando corretamente para carregar mais dados na página
Dado que o usuário realize o filtro desejado
E esteja no container de resultados
Quando aciona o comando "Carregar mais"
Então a página exibe mais resultados disponíveis de acordo com o filtro

#Layout 15 - Container de resultados - Card
Esquema do Cenário: Validar os componentes de layout do modo de visualização em card
Dado que o usuário realize o filtro desejado
E esteja no container de resultados
Quando seleciona modo de visualiuzação em card
Então a tela exibe os resultados em forma de card 
E cada card possui os componentes <Componente> e elementos <Elemento>

Exemplos:
| Componente | Elemento                              |
| Card       | Veículo e suas informações principais |
| Imagem     | Foto do Veículo                       |
| Label      | Localização                           |
| Label      | Marca                                 |
| Label      | Modelo                                |
| Label      | Típo                                  |
| Label      | Ano                                   |
| Label      | KM                                    |
| Label      | Câmbio                                |
| Label      | Valor                                 |

#Layout 16 - Container de resultados - Lista
Esquema do Cenário: Validar os componentes de layout do modo de visualização em lista
Dado que o usuário realize o filtro desejado
E esteja no container de resultados
Quando seleciona modo de visualiuzação em lista
Então a tela exibe os resultados em forma de lista
E cada lista possui os componentes <Componente> e elementos <Elemento>

Exemplos:
| Componente | Elemento                              |
| Lista      | Veículo e suas informações principais |
| Label      | Marca                                 |
| Label      | Modelo                                |
| Label      | Tipo                                  |
| Label      | Localização                           |
| Label      | Ano                                   |
| Label      | KM                                    |
| Label      | Câmbio                                |
| Label      | Valor                                 |

#Funcionalidade - card x lista
Cenário: Validar que ambas as visualizações (card e lista) apresentam as mesmas informações sobre o veículo
Dado que o usuário realize o filtro desejado
E esteja no container de resultados
Quando seleciona modo de visualiuzação em lista
Então a tela exibe os resultados em forma de lista contendo toas as informações principais sobre o veículo
Quando seleciona modo de visualiuzação em card
Então a tela exibe os resultados em forma de card contendo toas as informações principais sobre o veículo

#Funcionalidade - ordenação
Esquema do Cenário: Validar os critérios de ordenação existentes 
Dado que o usuário realize o filtro desejado
E esteja no container de resultados
Quando clica em "Ordenação"
Então são exibidas as opções de <Ordenação>

Exemplos:
| Ordenação           |
| Menor Preço         |
| Maior Preço         |
| Ano(Crescente)      |
| Ano(Decrescente)    |
| Menor quilometragem |
| Maior quilometragem |
        
Cenário: Validar que o critério de ordenação pelo menor preço está funcionando corretamente
Dado que o usuário realize o filtro desejado
E esteja no container de resultados
Quando clica em "Ordenação"
E seleciona a opção "Menor Preço"
Então o resultado é ordenado do menor preço para o maior preço

Cenário: Validar que o critério de ordenação pelo maior preço está funcionando corretamente
Dado que o usuário realize o filtro desejado
E esteja no container de resultados
Quando clica em "Ordenação"
E seleciona a opção "Maior Preço"
Então o resultado é ordenado do maior preço para o menor preço

Cenário: Validar que o critério de ordenação por ano crescente está funcionando corretamente
Dado que o usuário realize o filtro desejado
E esteja no container de resultados
Quando clica em "Ordenação"
E seleciona a opção "Ano(Crescente)"
Então o resultado é ordenado pelo ano do carro em ordem crescente

Cenário: Validar que o critério de ordenação por ano decrescente está funcionando corretamente
Dado que o usuário realize o filtro desejado
E esteja no container de resultados
Quando clica em "Ordenação"
E seleciona a opção "Ano(Decrescente)"
Então o resultado é ordenado pelo ano do carro em ordem decrescente

Cenário: Validar que o critério de ordenação por menor quilometragem está funcionando corretamente
Dado que o usuário realize o filtro desejado
E esteja no container de resultados
Quando clica em "Ordenação"
E seleciona a opção "Menor quilometragem"
Então o resultado é ordenado pela quilometragem do carro em ordem crescente

Cenário: Validar que o critério de ordenação por maior quilometragem está funcionando corretamente
Dado que o usuário realize o filtro desejado
E esteja no container de resultados
Quando clica em "Ordenação"
E seleciona a opção "Maior quilometragem"
Então o resultado é ordenado pela quilometragem do carro em ordem decrescente

Cenário: Validar o direcionamento para a tela de detalhes do carro
Dado que o usuário escolha o veículo
Quando clica sobre o veículo desejado
Então é direcionado para a página de detalhes do carro