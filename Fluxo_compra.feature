# language: pt
Funcionalidade: Comprar
Serão descritos os casos de testes de layout e funcionalidades das telas do fluxo de compra 
Pré-condição ter clicado em comprar na tela do veículo

#Layout 1 - Fluxo de compra - Itens no carrinho - Topo
Cenário: Validar os atributos de layout da tela 1 do fluxo de compra - Itens no carrinho - Topo
Dado que o usuário esteja na primeira tela do fluxo de compra, no topo da tela
Então no topo são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento            |
| Label      | Olá, Razão Soacial  |
| Comando    | Continuar comprando |
| ícone      | Passo atual         |
| Ícone      | Passo 2             |
| Ícone      | Passo 3             |
| Ícone      | Passo 4             |

#Funcionalidade - Continuar comprando
Cenário: Validar que o link "Continuar comprando" retorna para a tela de estoque de veículos
Dado que o usuário esteja na tela 1 do fluxo de compra
Quando aciona o link "Continuar comprando"
Então o Portal retorna para a tela de estoque de veículos

#Layout 2 - Fluxo de compra - Itens no carrinho - Container de produtos
Cenário: Validar os atributos de layout da tela 1 do fluxo de compra - Itens no carrinho - Container de produtos
Dado que o usuário esteja na primeira tela do fluxo de compra, no container de produtos
Então no container são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos: 
| Componente | Elemento                                           |
| Label      | Você tem x horas para finalizar o pedido de compra |
| Label      | Loja do veículo                                    |
| Card       | Veículo                                            |
| Label      | Marca_Modelo                                       |
| Label      | Tipo                                               |
| Label      | Valor                                              |

#Layout 3 - Fluxo de compra - Itens no carrinho - Container detalhes da compra
Cenário: Validar os atributos de layout da tela 1 do fluxo de compra - Itens no carrinho - Container detalhes da compra
Dado que o usuário esteja na primeira tela do fluxo de compra, no container detalhes da compra
Então no container são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos: 
| Componente   | Elemento                                                              |
| Label        | Detalhes da compra                                                    |
| Label        | Veículos                                                              |
| Label        | Total a pagar                                                         |
| Label        | Nós não realizamos a entrega dos veículos                             |
| Label        | Existem carros de diferentes lojas e cidades, você está ciente disso? |
| Radio button | Estou ciente                                                          |
| Comando      | Continuar                                                             |

#Funcionalidade - Detalhes da compra 
Cenário: Validar que o Portal permite marcar o radio button "Estou ciente" quando possuir carros de diferentes lojas e cidades no carrinho
Dado que o usuário possua carros de diferentes lojas e cidades no carrinho
Quando o Portal exibe a mensagem de alerta
Então o usuário marca o radio button "Estou ciente"
E pode continuar a compra

Cenário: Validar direcionamento para o próximo passo do fluxo de compra ao acionar "Continuar"
Dado que o usuário marque o radio button "Estou ciente" 
E acione o comando "Continuar"
Então o Portal direciona para o próximo passo do fluxo de compra - Confirmação dos dados do cliente

#Layout 4 - Fluxo de compra - Confirmação dos dados do cliente - Topo
Cenário: Validar os atributos de layout da tela 2 do fluxo de compra - Confirmação dos dados do cliente - Topo
Dado que o usuário esteja na segunda tela do fluxo de compra, no topo
Então no topo são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento            |
| Label      | Olá, Razão Soacial  |
| Comando    | Continuar comprando |
| ícone      | Passo 1 Ok          |
| Ícone      | Passo atual         |
| Ícone      | Passo 3             |
| Ícone      | Passo 4             |

#Funcionalidade - Continuar comprando
Cenário: Validar que o link "Continuar comprando" retorna para a tela de estoque de veículos
Dado que o usuário esteja na tela 2 do fluxo de compra 
Quando aciona o link "Continuar comprando"
Então o Portal retorna para a tela de estoque de veículos

#Layout 5 - Fluxo de compra - Confirmação dos dados do cliente - Dados do cliente
Cenário: Validar os atributos de layout da tela 2 do fluxo de compra - Confirmação dos dados do cliente - Dados do cliente
Dado que o usuário esteja na segunda tela do fluxo de compra, container "Dados do cliente"
Então no container são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente   | Elemento                                                |
| Label        | Nome                                                    |
| Label        | CNPJ                                                    |
| Label        | Endereço                                                |
| Label        | Nº                                                      |
| Label        | Bairro                                                  |
| Label        | Cidade e UF                                             |
| Label        | E-mail                                                  |
| Label        | O documento do veículo será preenchido com estes dados. |
| Radio button | Estou ciente                                            |
| Label        | Responsável legal                                       |
| Label        | CPF                                                     |
| Label        | Contato                                                 |
| Comando      | Indicar outro responsável                               |

#Funcionalidade - Indicar outro responsável
Cenário: Validar que o Portal permite indicar outro responsável pela empresa
Dado que o usuário esteja na segunda tela do fluxo de compra
Quando acionar o comando "Indicar outro responsável"
Então o Portal direciona para o formulário de cadastro de responsável

#Layout 6 - Fluxo de compra - Confirmação dos dados do cliente - Detalhes da compra
Cenário: Validar os atributos de layout da tela 2 do fluxo de compra - Confirmação dos dados do cliente - Detalhes da compra
Dado que o usuário esteja na segunda tela do fluxo de compra, no container detalhes da compra
Então no container são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos: 
| Componente | Elemento           |
| Label      | Detalhes da compra |
| Label      | Veículos           |
| Label      | Total a pagar      |
| Comando    | Confirmar dados    |

#Funcionalidade - Confirmar dados
Cenário: Validar a funcionalidade de confirmar dados e seguir para o próximo passodo fluxo de compra
Dado que o usuário que o usuário esteja na segunda tela do fluxo de compra, confirmação dos dados do cliente
Quando aciona o comando "Confirmar dados"
Então o Portal direciona para o próximo passo do fluxo de compra - Pagamento

#Layout 7 - Fluxo de compra - Pagamento - Topo
Cenário: Validar os atributos de layout da tela 3 do fluxo de compra - Pagamento - Topo
Dado que o usuário esteja na terceira tela do fluxo de compra, no topo da tela
Então no topo são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento           |
| Label      | Olá, Razão Soacial |
| Ícone      | Passo 1 Ok         |
| Ícone      | Passo 2 Ok         |
| Ícone      | Passo atual        |
| Ícone      | Passo 4            |

#Layout 8 - Fluxo de compra - Pagamento - Escolher forma de pagamento
Cenário: Validar os atributos de layout da tela 3 do fluxo de compra - Pagamento - Escolha a forma de pagamento
Dado que o usuário esteja na terceira tela do fluxo de compra, no container de formas de pagamento
Então no container são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente   | Elemento                     |
| Label        | Escolha a forma de pagamento |
| Ícone        | Pix                          |
| Label        | Pix                          |
| Radio button | Quero pagar com Pix          |
| Ícone        | Boleto bancário              |
| Label        | Boleto bancário              |
| Radio button | Quero pagar com Boleto       |

#Funcionalidade: Pagar com Pix
Cenário: Validar direcionamento para integração com API do Pix
Dado que o usuário esteja na terceira tela do fluxo de compra, no container de formas de pagamento
Quando marca o radio button "Quero pagar com Pix"
Então o Portal grava a intenção de pagamento(Confirmar essa parte)

#Funcionalidade: Pagar com Boleto
Cenário: Validar geração de boleto para pagamento
Dado que o usuário esteja na terceira tela do fluxo de compra, no container de formas de pagamento
Quando marca o radio button "Quero pagar com Boleto"
Então o Portal grava a intenção de pagamento e gera o boleto para pagamento

#Layout 9 - Fluxo de compra - Pagamento - Detalhes da compra
Cenário: Validar os atributos de layout da tela 3 do fluxo de compra - Confirmação dos dados do cliente - Detalhes da compra
Dado que o usuário esteja na terceira tela do fluxo de compra, no container detalhes da compra
Então no container são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos: 
| Componente | Elemento           |
| Label      | Detalhes da compra |
| Label      | Veículos           |
| Label      | Total a pagar      |
| Comando    | Finalizar compra   |

#Funcionalidade - Finalizar Compra
Cenário: Validar opção de finalizar compra
Dado que que o usuário esteja na tela de pagamentos
Quando o método de pagamento foi realizado
E o usuário aciona o comando "Finalizar compra"
Então o Portal envia um e-mail para o endereço cadastrado 
E direciona para a tela de confirmação do pedido

#Layout 10 - Fluxo de compra - Confirmação do pedido - Topo
Cenário: Validar os atributos de layout da tela 4 do fluxo de compra - Confirmação do pedido - Topo
Dado que o usuário esteja na quarta tela do fluxo de compra, no topo da tela
Então no topo são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento           |
| Label      | Olá, Razão Soacial |
| Label      | Estamos quase lá   |
| Ícone      | Passo 1 Ok         |
| Ícone      | Passo 2 Ok         |
| Ícone      | Passo 3 Ok         |
| Ícone      | Passo 4            |

#Layout 11 - Fluxo de compra - Confirmação do pedido - Tela central
Cenário: Validar os atributos de layout da tela 4 do fluxo de compra - Confirmação do pedido - Tela central
Dado que o usuário esteja na quarta tela do fluxo de compra
Então no centro da tela são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento                                  |
| Ícone      | Assinatura do contrato                    |
| Label      | Acesse seu e-mail para assinar o contrato |
| Comando    | Acessar Minhas Compras                    |

#Funcionalidade - Acessar Minhas Compras
Cenário: Validar direcionamento do comando "Acessar Minhas Compras"
Dado que o usuário tela de confirmação de pedido
Quando aciona o comando "Acessar Minas Compras"
Então é direcionado para tela de agradecimento

#Layout 11 - Fluxo de compra - Agradecimento
Cenário: Validar os atributos de layout da tela 5 do fluxo de compra - Agradecimento
Dado que o usuário esteja na última tela do fluxo de compra
Então são apresentados os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento               |
| Label      | Olá, Razão Soacial     |
| Ícone      | Estrela                |
| Label      | Obrigado pela compra!  |
| Comando    | Acessar Minhas Compras |

#Funcionalidade - Acessar Minhas Compras
Cenário: Validar direcionamento do comando "Acessar Minhas Compras"
Dado que o usuário tela de agradecimento
Quando aciona o comando "Acessar Minas Compras"
Então é direcionado para tela tela "Minhas compras"
