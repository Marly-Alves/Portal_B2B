# language: pt
Funcionalidade: Rodapé do portal
Serão descritos os casos de testes de layout e funcionalidades da Tela rodapé do Portal, com usuário logado

#Layout 1 Rodapé
Esquema do Cenário:  Validar os componentes de layout do rodapé 
Dado que o usuário esteja em uma tela do Portal
Então o rodapé possui os componentes <Componente>
Então o rodapé  possui os elementos <Elemento>

Exemplos:
| Componente | Elemento                |
| Label      | Navegação               |
| Link       | Início                  |
| Link       | Comparador              |
| Link       | Minhas compras          |
| Link       | Nosso estoque           |
| Link       | Favoritos               |
| Link       | Meus dados              |
| Label      | Institucional           |
| Link       | Termos de uso           |
| Link       | Política de privacidade |

#Lembrar de verificar se é melhor criar uma feature só para Institucional
#Funcionalidade - Rodapé
#Navegação
Cenário: Validar retorno para o início da página
Dado que o usuário acione a opção "Início"
Então é direcionado para a página inicial

Cenário: Validar direcionamento para a tela de comparação entre dois veículos
Dado que o usuário acione a opção "Comparador"
Então é direcionado para a tela "Comparador"

Cenário: Validar direcionamento para a tela de visualização das compras
Dado que o usuário acione a opção "Minhas compras"
Então é direcionado para a tela "Minhas compras"

Cenário: Validar direcionamento para a tela de visualzação de estoque
Dado que o usuário acione a opção "Nosso estoque"
Então é direcionado para a tela "Nosso estoque"

Cenário: Validar direcionamento para a tela de favoritos salvos pelo usuário
Dado que o usuário acione a opção "Favoritos"
Então é direcionado para a tela "Favoritos"

Cenário: Validar direcionamento para a tela de dados do usuário
Dado que o usuário acione a opção "Meus dados"
Então é direcionado para a tela "Meus dados"

#Institucional
Cenário: Validar visualização dos termos de uso
Dado que o usuário acione a opção "Termo de uso"
Então é direcionado para a tela de  leitura do termo de uso do Portal

Cenário: Validar visualização da política de privacidade
Dado que o usuário acione a opção "Política de privacidade"
Então é direcionado para a tela de leitura da política de privacidade do Portal