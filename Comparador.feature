# language: pt
Funcionalidade: Comparar veículos
Serão descritos os casos de testes de layout e funcionalidades da tela de comparação de veículos

#Funcionalidade - Comparador de veículos
Cenário: Validar que o Portal exibe a tela "Comparador de veículos" e o seu título 
Dado que o usuário clique no menu "Comparador"
Então o POrtal carrega a tela
E exibe o título "Comparador de veículos"

#Layout
Esquema do Cenário: Validar os componentes de layout da tela "Comparador de veículos"
Dado que o usuário tenha selecionado dois veículos para comparação
Então a tela exibe os cards <Card> contendo as informações dos veículos <Veículo 1> e <Veículo 2> separados em duas colunas com suas características principais

Exemplos:
| Card                        | Veículo 1                     | Veículo 2                     |
| Produto                     | Primeio veículo               | Segundo veículo               |
| Características             | Cilindrada (cc)               | Cilindrada (cc)               |
| Características             | Potência (cv)                 | Potência (cv)                 |
| Características             | Velocidade máxima (km/h)      | Velocidade máxima (km/h)      |
| Características             | Aceleração de 0 - 100 (seg)   | Aceleração de 0 - 100 (seg)   |
| Combustível e consumo       | Combustível                   | Combustível                   |
| Combustível e consumo       | Consumo na cidade (EC93)      | Consumo na cidade (EC93)      |
| Combustível e consumo       | Consumo na estrada            | Consumo na estrada            |
| Combustível e consumo       | Emissão CO2 (gramas p/km)     | Emissão CO2 (gramas p/km)     |
| Transmissão                 | Tipo de transmissão           | Tipo de transmissão           |
| Transmissão                 | N. de marchas (de série)      | N. de marchas (de série)      |
| Equipamentos e instrumentos | Airbag                        | Airbag                        |
| Equipamentos e instrumentos | ABS                           | ABS                           |
| Equipamentos e instrumentos | Vidros elétricos              | Vidros elétricos              |
| Equipamentos e instrumentos | Ar condicionado               | Ar condicionado               |
| Equipamentos e instrumentos | Direção assistida             | Direção assistida             |
| Equipamentos e instrumentos | Assentos de couro/alcantara   | Assentos de couro/alcantara   |
| Equipamentos e instrumentos | Rodas de liga leve            | Rodas de liga leve            |
| Equipamentos e instrumentos | Alarme anti roubo             | Alarme anti roubo             |
| Equipamentos e instrumentos | Assistência de estacionamento | Assistência de estacionamento |
| Equipamentos e instrumentos | Faróis de neblina             | Faróis de neblina             |
| Equipamentos e instrumentos | Retrovisores elétricos        | Retrovisores elétricos        |
| Equipamentos e instrumentos | Sensor de estacionamento      | Sensor de estacionamento      |
| Equipamentos e instrumentos | GPS                           | GpS                           |
| Equipamentos e instrumentos | Travamento central            | Travamento central            |
| Equipamentos e instrumentos | Volante multifunção           | Volante multifunção           |
| Equipamentos e instrumentos | Computador                    | Computador                    |
| Equipamentos e instrumentos | Sistema sem chave             | Sistema sem chave             |
| Equipamentos e instrumentos | Teto solar                    | Teto solar                    |
| Equipamentos e instrumentos | Piloto automático             | Piloto automático             |
| Equipamentos e instrumentos | Faróis LED/Xenon              | Faróis LED/Xenon              |










