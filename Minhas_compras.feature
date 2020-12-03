# language: pt
Funcionalidade: Comprar
Serão descritos os casos de testes de layout e funcionalidades dos passos "Minhas compras"
Pré-condição: ter clicado em "Acessar minhas compras" após confirmação do pedido ou no menu superior "Minhas compras"

#Layout 1 - Minhas compras - Topo
Esquema do Cenário: Validar os componentes de layout no topo da tela "Minhas compras - Passo 1
Dado que o usuário esteja na tela "Minhas compras" - Passo 1
Então a barra de menus da tela possui os componentes <Componente>
Então a barra de menus da tela possui os elementos <Elemento>

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

#Layout 2 - Minhas compras - Filtro
Esquema do Cenário: Validar os componentes de layout do container de filtro na tela "Minhas compras - Passo 1
Dado que o usuário esteja no container de filtros da tela "Minhas compras" - Passo 1 
Então o container possui os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento       |
| Label      | Minhas compras |
| Campo      | Placa          |
| Seleção    | Status         |
| Seleção    | Período        |
| Comando    | Filtrar        |

#Funcionalidade - Filtrar
Cenário: Validar que o Portal permite filtrar pela placa do veículo
Dado que o usuário esteja na tela "Minhas compras" - Passo 1, container de filtros
Quando informa a placa do veículo 
E aciona o comando "Filtrar"
Então a compra relacionada ao veículo é exibida no container da sua compra em aberto

Cenário: Validar que o Portal permite filtrar pelo status da compra
Dado que o usuário esteja na tela "Minhas compras" - Passo 1, container de filtros
Quando informa o status da compra desejada
E aciona o comando "Filtrar"
Então as compras com o status solicitado são exibidas no container da sua compra em aberto

Cenário: Validar que o Portal permite filtrar pelo período da compra
Dado que o usuário esteja na tela "Minhas compras" - Passo 1, container de filtros
Quando informa o período da compra desejada
E aciona o comando "Filtrar"
Então as compras realizadas no período selecionado são exibidas no container da sua compra em aberto

#Layout 3 - Minhas compras - Container da compra - Assinatura do contrato
Esquema do Cenário: Validar os componentes de layout do container da compra na tela "Minhas compras - Passo 1
Dado que o usuário esteja no container da compra na tela "Minhas compras" - Assinatura do contrato
Então o container possui os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento                             |
| Label      | Sua compra em aberto                 |
| Label      | Data da compra                       |
| Label      | Nº da compra                         |
| Label      | Placa                                |
| Label      | Modelo                               |
| Label      | Preço                                |
| Label      | Status                               |
| Label      | Assinatura do contrato               |
| Comando    | Assinar contrato                     |
| Ícone      | Assinatura do contrato - Passo atual |
| Ícone      | Pagamento - Passo 2                  |
| Ícone      | Agendamento de retirada - Passo 3    |
| Ícone      | Retirar veículo - Passo 4            |

#Funcionalidade - Assinar contrato
Cenário: Validar que o Portal permite realizar a assinatura do contrato
Dado que o usuário esteja no container da compra na tela "Minhas compras" - Assinatura do contrato 
E a compra esteja "Aguardando assinatura"
Quando o usuário aciona o comando "Assinar contrato"
Então o Portal exibe um card com um alerta para acessar o e-mail para onde o contrato foi enviado 
E fornece um link "Não recebi o e-mail" para reenvio do contrato

Cenário: Validar que o Portal reenvia o e-mail 
Dado que o uauário não tenha recebido o e-mail com o contrato
Quando aciona o link "Não recebi o e-mail"
Então o contrato é enviado novamente para o e-mail cadastrado

Cenário: Validar que após assinatura do contrato, o Portal encaminha para o posso "Pagamento"
Dado que o usuário tenha realizado a assinatura do contrato de forma digital
Quando a asisnatura é detectada
Então o Portal valida, altera o status para "Contrato assinado"
E o usuário pode efetuar o pagamento

Cenário: Validar opção de ver contrato
Dado que o status da compra seja "Contrato assinado"
Então o Portal exibe, abaixo do ícone do status do contrato, o link "ver contrato"
Quando o usuário aciona o link "ver contrato"
Então o Portal exibe o contrato assinado

#Layout 4 - Minhas compras - Container da compra - Pagamento
Esquema do Cenário: Validar os componentes de layout do container da compra na tela "Minhas compras - Passo 2
Dado que o usuário esteja no container da compra na tela "Minhas compras" - Pagamento
Então o container possui os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento                          |
| Label      | Sua compra em aberto              |
| Label      | Data da compra                    |
| Label      | Nº da compra                      |
| Label      | Placa                             |
| Label      | Modelo                            |
| Label      | Preço                             |
| Label      | Status                            |
| Label      | Pagamento                         |
| Comando    | Efetuar pagamento                 |
| Ícone      | Assinatura do contrato - Ok       |
| Ícone      | Pagamento - Passo atual           |
| Ícone      | Agendamento de retirada - Passo 3 |
| Ícone      | Retirar veículo - Passo 4         |

#Funcionalidade - Efetuar pagamento
Cenário: Validar que o Portal exibe a forma de pagamento selecionada no fluxo de compra
Dado que o usuário esteja no container da compra na tela "Minhas compras" - Pagamento
E a compra esteja com o status "Pagamento pendente"
Quando o usuário aciona o comando "Efetuar pagamento"
Então o Portal exibe um card com a forma de pagamento escolhida anteriormente

Cenário: Validar opção de pagamento - Boleto
Dado que o usuário tenha optado por pagar com boleto
Quando o aciona o comando "Efetuar pagamento"
Então o Portal exibe o card com o boleto para pagamento(Validar melhor)*
Dado que o usuário realize o pagamento do boleto
Quando o Portal detecta o pagamento
Então o status da compra é alterado para "Aguardando retirada"

Cenário: Validar o card da opção de pagamento - Pix
Dado que o usuário tenha optado por pagar com Pix
Quando o aciona o comando "Efetuar pagamento"
Então o Portal exibe o card com o QR Code para pagamento
Dado que o usuário realize o pagamento
Quando o Portal detecta o pagamento
Então o status da compra é alterado para "Aguardando retirada"

#Layout 5 - Minhas compras - Container da compra - Agendar retirada
Esquema do Cenário: Validar os componentes de layout do container da compra na tela "Minhas compras - Passo 3
Dado que o usuário esteja no container da compra na tela "Minhas compras" - Agendar retirada
Então o container possui os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento                              |
| Label      | Sua compra em aberto                  |
| Label      | Data da compra                        |
| Label      | Nº da compra                          |
| Label      | Placa                                 |
| Label      | Modelo                                |
| Label      | Preço                                 |
| Label      | Status                                |
| Label      | Agendamento para retirar o veículo    |
| Comando    | Agendar retirada                      |
| Ícone      | Assinatura do contrato - Ok           |
| Ícone      | Pagamento - Ok                        |
| Ícone      | Agendamento de retirada - Passo atual |
| Ícone      | Retirar veículo - Passo 4             |

#Funcionalidade - Agendar retirada
Cenário: Validar que o Portal exibe as informações para agendamento da retirada do veículo
Dado que o usuário esteja no container da compra na tela "Minhas compras"
E o status da compra seja "Aguardando retirada"
Quando aciona o comando "Agendar retirada"
Então é exibido um card com as opções de agendamento

#Layout 5.1 - Minhas compras - Container da compra - Card Agendamento de retirada
Esquema do Cenário: Validar os componentes de layout do container da compra na tela "Minhas compras - Passo 3 - Card Agendamento de retirada
Dado que o usuário esteja no container da compra na tela "Minhas compras" - Agendar retirada - Card Agendamento de retirada
Então o card possui os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Label        | Local                                |
| Label        | Melhores datas                       |
| Comando      | Primeira data                        |
| Comando      | Segunda data                         |
| Comando      | Terceira data                        |
| Comando      | Escolher outra                       |
| Label        | Responsável pela retirada do veículo |
| Radio button | Guincho/Caminhão                     |
| Campo        | Nome completo                        |
| Campo        | CPF                                  |
| Radio button | Salvar como favorito                 |
| Comando      | Agendar retirada                     |

#Funcionalidade - Agendar retirada
Cenário: Validar que o Portal realiza o agendamento para o dia desejado
Dado que o usuário esteja no card "Agendamento de retirada"
Quando aciona o comando do dia desejado, seleciona o responsável pela retirada do veículo 
E aciona o comando "Agendar retirada"
Então o agendamento é realizado com sucesso e uma popup de confirmação é exibida na tela

Cenário: Validar quer o Portal permite realizar agendamento de retirada para outro dia que não seja dos dias sugeridos
Dado que o usuário esteja no card "Agendamento de retirada"
Quando aciona o comando "Escolher outra"
Então é aberto o calendário para selecionar outra data disponível
Dado que  usuário selcione a data desejada
E seleciona o responsável pela retirada do veículo 
Quando aciona o comando "Agendar retirada"
Então o agendamento é realizado com sucesso, uma popup de confirmação é exibida na tela
E o status da compra passa para "Concluído"

Cenário: Validar indicação de responsável pela retirada do veículo
Dado que o usuário tenha selecionado o dia desejado
Quando marca o radio button "Guincho/Caminhão"
E preenche os dados do responsável com Nome e CPF
Quando aciona o comando "Agendar retirada"
Então as informações do responsável são gravadas no agendamento

Cenário: Validar salvamento de responsável como favorito
Dado que o usuário tenha selecionado o dia desejado
Quando marca o radio button "Guincho/Caminhão", preenche os dados do responsável com Nome e CPF
Se marcar o radio button "Salvar como favorito"
Quando aciona o comando "Agendar retirada"
Então as informações do responsável são gravadas no agendamento e permanecem como favorito para as próximas compras

Cenário: Validar opção de ver dia marcado
Dado que o status da compra seja "Concluído"
Então o Portal exibe, abaixo do ícone do status do agendamento, o link "ver dia marcado"
Quando o usuário aciona o link "ver dia marcado"
Então o Portal exibe a data acordada para retirada

#Layout 6 - Minhas compras - Container da compra - Retirar veículo - Alterar data
Esquema do Cenário: Validar os componentes de layout do container da compra na tela "Minhas compras - Passo 4 - Retirar veículo - Alterar data
Dado que o usuário esteja no container da compra na tela "Minhas compras" - Status concluído
Então a tela possui os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento                      |
| Label      | Sua compra em aberto          |
| Label      | Data da compra                |
| Label      | Nº da compra                  |
| Label      | Placa                         |
| Label      | Modelo                        |
| Label      | Preço                         |
| Label      | Status                        |
| Label      | Dia agendado                  |
| Label      | Local agendado                |
| Comando    | Alterar data                  |
| Ícone      | Assinatura do contrato - Ok   |
| Ícone      | Pagamento - Ok                |
| Ícone      | Agendamento de retirada - Ok  |
| Ícone      | Retirar veículo - Passo atual |

#Funcionalidade - Alterar data
Cenário: Validar que o Portal permite alterar a data de retirada do veículo
Dado que o status da compra seja "Concluído"
Quando usuário aciona o comando "Alterar data"
Então o Portal direciona para o card de agendamento de retirada
E permite selecionar uma nova data

Cenário: Validar que o Portal realiza o agendamento para o dia desejado
Dado que o usuário esteja no card "Agendamento de retirada"
Quando aciona o comando do dia desejado, seleciona o responsável pela retirada do veículo 
E aciona o comando "Agendar retirada"
Então o agendamento é realizado com sucesso e uma popup de confirmação é exibida na tela

#Layout 6.1 - Minhas compras - Container da compra - Retirar veículo concluído 
Esquema do Cenário: Validar os componentes de layout do container da compra na tela "Minhas compras - Passo 4 
Dado que o usuário esteja no container da compra na tela "Minhas compras" - Retirar veículo concluído
Então a tela possui os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento                          |
| Componente | Elemento                          |
| Label      | Sua compra em aberto              |
| Label      | Data da compra                    |
| Label      | Nº da compra                      |
| Label      | Placa                             |
| Label      | Modelo                            |
| Label      | Preço                             |
| Label      | Status                            |
| Link       | Solicitar 2ª via de chave reserva |
| Link       | Solicitar 2ª via do CRV           |
| Link       | Solicitar pagamento de multa      |
| Link       | Documentação complementar         |
| Ícone      | Assinatura do contrato - Ok       |
| Ícone      | Pagamento - Ok                    |
| Ícone      | Agendamento de retirada - Ok      |
| Ícone      | Retirar veículo - Ok              |

#Funcionalidade - Retirar veículo - Concluído
Cenário: Validar link de solicitação de chave reserva
Dado que a compra esteja com status "Concluído"
E o usuário esteja na última tela dos passos da compra
Quando aciona o link "Solicitar 2ª via de chave reserva"
Então o Portal direciona para o formulário de solicitação

Cenário: Validar link de solicitação de segunda via do CRV
Dado que a compra esteja com status "Concluído"
E o usuário esteja na última tela dos passos da compra
Quando aciona o link "Solicitar 2ª via do CRV "
Então o Portal direciona para o formulário de solicitação

Cenário: Validar link de solicitação de pagamento de multa
Dado que a compra esteja com status "Concluído"
E o usuário esteja na última tela dos passos da compra
Quando aciona o link "Solicitar pagamento de multa  "
Então o Portal direciona para o formulário de solicitação

Cenário: Validar link de documentação complementar
Dado que a compra esteja com status "Concluído"
E o usuário esteja na última tela dos passos da compra
Quando aciona o link "Documentação complementar"
Então o Portal direciona para a documentação complementar
