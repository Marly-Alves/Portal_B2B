# language: pt
Funcionalidade: Favoritar veículos
Serão descritos os casos de testes de layout e funcionalidades da opção de favoritar veículos

#Funcionalidade - Favoritar
Cenário: Validar que o Portal permite adicionar um veículo aos favoritos
Dado que o usuário esteja na tela de "Filtros avançados" ou "Nosso estoque"
Quando aciona o comando "Favoritar" no card do veículo
Então o veículo é adiconado aos favoritos

Cenário: Validar que o Portal exibe os veículos favoritados
Dado que o usuário esteja logado no Portal 
Quando aciona o ícone "Favoritos" no menu superior da tela
Então são listados, em forma de cards, todos os veículos que foram selecionados como favoritos

#Layout - card de veículos favoritos
Cenário: Validar os componentes de layout da tela de favoritos
Dado que o usuário esteja na tela de favoritos
Então a tela apresenta os veículos em forma de card com os componentes <Componente> e elementos <Elemento>

Exemplos:
| Componente | Elemento                       |
| Label      | Seus carros favoritos          |
| Seleção    | Ordenar por                    |
| Imagem     | Foto do veículo                |
| Label      | Localidade onde está o veículo |
| Label      | Marca e Modelo                 |
| Label      | Tipo                           |
| Label      | Ano                            |
| Label      | Km                             |
| Label      | Câmbio                         |
| Label      | Valor                          |

#Funcionalidade - Ordenar favoritos
Cenário: Validar que o Portal permite selecionar ordenação para os favoritos
Dado que o usuário esteja na tela de favoritos
Quando aciona a seleção "Ordenar por" e escolhe uma opção da lista
Então os favoritos são ordenados conforme opção desejada

Cenário: Validar que o Portal permite selecionar ordenação por Marca
Dado que o usuário esteja na tela de favoritos
Quando aciona a seleção "Ordenar por" e escolhe a opção "Marca"
Então os favoritos são ordenados por Marca

Cenário: Validar que o Portal permite selecionar ordenação por Modelo
Dado que o usuário esteja na tela de favoritos
Quando aciona a seleção "Ordenar por" e escolhe a opção "Modelo"
Então os favoritos são ordenados por Modelo

Cenário: Validar que o Portal permite selecionar ordenação por Ano
Dado que o usuário esteja na tela de favoritos
Quando aciona a seleção "Ordenar por" e escolhe a opção "Ano"
Então os favoritos são ordenados por Ano

