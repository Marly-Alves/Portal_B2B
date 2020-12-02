# language: pt
Funcionalidade: Logar no Portal e Redefinir senha
Serão descritos os casos de testes de layout e funcionalidades de acesso ao Portal e recuperação de login.

#Layout - Login
Esquema do Cenário:  Validar os componentes de layout da tela de login
Pré-condição: ter acessado o Portal(url) 
Dado que o usuário esteja na tela de login
Então a tela possui os componentes <Componente>
Então a tela possui os elementos <Texto>

Exemplos:
| Componente | Texto                    |
| Label      | Acessar estoque          |
| Campo      | E-mail                   |
| Campo      | Senha                    |
| Comando    | Entrar                   |
| Link       | Esqueci minha senha      |
| Link       | Ainda não tenho cadastro |

#Funcionalidade - Login
Esquema do Cenário:  Validar os campos de E-mail e Senha
Pré-condição: ter acessado o Portal(url)
Dado que o usuário informe um e-mail <E-mail>, uma senha <Senha> e acione o comando "Entrar"
Então recebe o retorno <Retorno>

Exemplos:
| E-mail                  | Senha          | Retorno               |
| email-naocadastrado.com | 12345          | E-mail não cadastrado |
| email-invalido.com      | 12345          | E-mail inválido       |
|                         | 12345          | E-mail obrigatório    |
| email-cadastrado.com    |                | Senha obrigatória     |
| email-cadastrado.com    | senhaincorreta | Senha incorreta       |

Cenário: Acessar redefinição de senha e voltar
Dado que o usuário acione o link "Esqueci minha senha"
Então é direcionado para a tela de redefinição de senha
Dado que o usuário acione o comando "Voltar"
Então retorna para a tela de login

#Layout - Redefinição de senha
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

#Funcionalidade - Login
Cenário: Fluxo principal login - Logar no Portal com dados válidos
Pré-condição: usuário deve possuir cadastro prévio no Portal 
Dado que o usuário informe e-mail e senha válidos e acione o comando "Entrar" 
Então o login é efetuado com sucesso.