# language: pt
Funcionalidade: Realizar novo cadastro
Serão descritos os casos de testes de layout e funcionalidades do cadastro de cliente

#Layout 1 -  Cadastre-se
Esquema do Cenário: Validar os componentes de layout da tela "Cadastre-se"
Dado que o usuário esteja na tela "Cadastre-se"
Então a tela possui os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento                                                  |
| Label      | Unidas seminovos                                          |
| Label      | Atacado                                                   |
| Label      | Cadastre-se                                               |
| Label      | E tenha acesso aos melhores preços do atacado de veículos |
| Campo      | Insira o CNPJ                                             |
| Label      | Política de Privacidade                                   |
| Label      | Vamos juntos.                                             |

#Funcionalidade - Cadastre-se
Cenário: Validar se o CNPJ informado é um CNPJ válido
Dado que o Portal solicita o CNPJ para o usuário
Quando o usuário informa um CNPJ inválido ou inexistente
Então é exibida a mensagem "CNPJ inválido ou inexistente"

Cenário: Validar se o CNPJ informado já possui cadastro no Portal
Dado que o Portal solicita o CNPJ para o usuário
Quando o usuário informa um CNPJ
E o CNPJ é válido
Então o Portal verifica se o CNPJ já possui cadastro de usuário
Se o o CNPJ já possui cadastro de usuário
Então é exibida a mensagem "CNPJ já cadastrado"

Cenário: Validar se o CNPJ informado possui cadastro na base de dados Locavia
Dado que o Portal solicita o CNPJ para o usuário
Quando o usuário informa um CNPJ
E o CNPJ é válido
Então o Portal pesquisa o CNPJ na base Locavia
Se o CNPJ não foi encontrado na base de dados Locavia 
Então o Portal exibe a tela "Novo Cadastro"

Cenário: Validar quando o CNPJ informado possui cadastro na base de dados Locavia
Dado que o Portal solicita o CNPJ para o usuário
Quando o usuário informa um CNPJ
E o CNPJ é válido
Então o Portal pesquisa o CNPJ na base Locavia
Se o CNPJ foi encontrado na base de dados Locavia 
Então o Portal solicita redefinição de senha
Dado que o usuário altera a senha
E efetua o login
Então o Portal importa os dados da base Locavia

Cenário: Verificar se o Portal carrega a tela "Novo Cadastro" com os dados da empresa
Dado que o Portal solicita o CNPJ para o usuário
Quando o usuário informa um CNPJ
E o CNPJ é válido
Então o Portal pesquisa o CNPJ na base Locavia
Se o CNPJ não foi encontrado na base de dados Locavia 
Então o Portal verifica, via API SERPO, se o CNPJ é existente
Dado que o CNPJ seja encontrado na base SERPRO
Então o Portal exibe a tela "Novo Cadastro" contendo as informações da empresa  

#Layout 2 - Redefinição de senha
Esquema do Cenário:  Validar os componentes de layout da tela de redefinição de senha
Dado que o usuário acione o link "Esqueci minha senha"
Então é direcionado para a tela de redefinição de senha
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Texto>

Exemplos:
| Componente | Texto                |
| Label      | Redefinição de Senha |
| Campo      | Seu e-mail           |
| Comando    | Voltar               |
| Comando    | Continuar            |

#Funcionalidade - Redefinição de senha
Cenário:  Verificar que o sistema valida, caso o usuário informe um e-mail não cadastrado
Dado que o usuário informe um "E-mail" não cadastrado e acione o comando "Continuar"
Então recebe o retorno que o e-mail não foi encontrado

Cenário: Fluxo principal redefinição - Solicitar redefinição de senha com e-mail válido
Dado que o usuário informe um e-mail cadastrado válido e acione o comando "Continuar"
Então é exibida uma mensagem de notificação e um e-mail com instruções é enviado para o endereço informado

Cenário: Verificar opção de "Cancelar"
Pré-condição: usuário deve ter acessado o link recebido no e-mail
Dado que o usuário esteja na tela de cadastro de nova senha e acione o comando "Cancelar"
Então nenhuma senha é cadastrada e retorna para a tela de login

Cenário: Verificar se o sistema valida confirmação de senha diferente da senha informada
Dado que o usuário informe a senha e informe uma senha diferente na confirmação
Então é retornada a mensagem "Confirmação de senha não confere"

Cenário: Fluxo principal redefinição - Cadastrar Nova Senha
Dado que o usuário informe a senha e informe a mesma senha na confirmação
Então a nova senha é cadastrada com sucesso 

#Layout 3 - Cadastre-se - Novo Cadastro 
Cenário: Validar os componentes de layout da tela de Novo Cadastro - Dados da empresa
Pré-condição: usuário deve ter informado um CNPJ válido e sem cadastro no Locavia
Dado que o Portal apresente a tela de Novo Cadastro
Então a tela possui os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente   | Elemento                           |
| Label        | Unidas seminovos                   |
| Label        | Atacado                            |
| Label        | CNPJ                               |
| Label        | Valor_CNPJ_Informado               |
| Label        | Informe os dados da sua empresa    |
| Campo        | Razão Social                       |
| Campo        | CEP                                |
| Campo        | Endereço                           |
| Campo        | Nº                                 |
| Campo        | Complemento                        |
| Campo        | Bairro                             |
| Campo        | Cidade                             |
| Campo        | Estado                             |
| Label        | Informações do responsável         |
| Campo        | Nome completo                      |
| Campo        | Celular                            |
| Campo        | Telefone Fixo                      |
| Label        | Crie sua conta                     |
| Campo        | E-mail                             |
| Campo        | Senha                              |
| Campo        | Confirmar Senha                    |
| Radio Button | Concordo com os Termos e Condições |
| Link         | Termos e Condições                 |
| Comando      | Cadastrar                          |
| Card         | Passos                             |
| Label        | É simples e fácil cadastrar        |
| Label        | Passo 1                            |
| Label        | Passo 2                            |
| Label        | Passo 3                            |
| Label        | Política de Privacidade            |

#Funcionalidade - Novo Cadastro - Dados da empresa
Cenário: Validar que o formulário se encontra preenchido
Dado que o usuário esteja na tela "Novo Cadastro"
Então o fomulário já contém preenchidas as informações de acordo com a consulta à API SERPRO

Cenário: Verificar se o Portal valida se o CEP informado é válido 
Dado que o usuário esteja na tela "Novo Cadastro"
Quando informa um CEP inválido ou inexistente
Então o Portal informa que não foi possível localizar endereço para o CEP informado

Cenário: Verificar se o portal valida o CEP informado e busca o endereço associado
Dado que o usuário esteja na tela "Novo Cadastro"
Quando informa um CEP válido e existente
Então o Portal preenche automaticamente os campos de "Endereço", "Bairro", "Cidade" e "Estado"
E exige o preenchimento do campo "Nº"

#Funcionalidade - Novo Cadastro - Informações do responsável
Cenário: Validar obrigatoriedade do campo "Celular" no formulário de cadastro do responsável
Dado que o usuário tenha preenchido as informações da conta
Mas não preencheu o campo "Celular" nas informações do responsável
Quando concorda com os Termos e Condições
E aciona o comando "Cadastrar" 
Então o Portal exibe a mensagem de "Obrigatório informar número de celular"

#Funcionalidade - Criar conta
Cenário: Validar o campo de e-mail
Dado que o usuário informe um e-mail inválido, uma senha, confirme a senha, concorda com os Termos e Condições
E acione o comando "Cadastrar"
Então o Portal exibe a mensagem "E-mail informado é inválido"

Cenário: Verificar se o sistema valida confirmação de senha diferente da senha informada
Dado que o usuário informe a senha 
E informe uma senha diferente na confirmação
Quando aciona o comando "Cadastrar"
Então é retornada a mensagem "Confirmação de senha não confere"

Cenário: Validar que o Portal não permite cadastro sem criar uma conta
Dado que o usuário acione o comando "Cadastrar" sem criar uma conta
Então o portal exibe mnnsagem de "Obrigatório criar uma conta"

Cenário: Validar criação de conta - Fluxo principal
Dado que o usuário informe um e-mail válido, uma senha, confirme a senha informada
E concorde com os Termos e Condições
Quando aciona o comando "Cadastrar"
Então o cadastro é efetuado com sucesso 

#Funcionalidade - Termos e Condições
Cenário: Validar se o Portal permite prosseguir sem concordar com os termos e condições
Dado que o uauário tenha concluído os formulários 
Quando aciona o comando "Cadastrar" sem concordar com os termos e condições
Então o Portal exibe a mensagem "Necessário concordar com os Termos de Condições"

Cenário: Validar abertura dos Termos e Condições
Dado que o usuário acione o link "Termos e Condições"
Então são exibidos os termos e condições(Em definição)
Dado que o usuário feche os Termos e Condições
Então marca o radio button 
E pode concluir o cadastro

#Layout 4 - Cadastro finalizado
Esquema do Cenário: Validar os componentes de layout da tela de cadastro finalizado
Dado que o usuário tenha concluído o cadastro
Então o Portal exibe a tela com os componentes <Componente>
E os elementos <Elemento>

Exemplos:
| Componente | Elemento                                                                                                                     |
| Label      | Unidas seminovos                                                                                                             |
| Label      | Atacado                                                                                                                      |
| Label      | Cadastro finalizado                                                                                                          |
| Imagem     | Estrela                                                                                                                      |
| Label      | Seu cadastro foi finalizado com sucesso                                                                                      |
| Label      | Seus dados serão analisados para aprovação. Em breve, entraremos em contato no endereço de e-mail informado: email@gmail.com |
| Label      | Política de Privacidade                                                                                                      |
| Label      | Vamos juntos.                                                                                                                |
