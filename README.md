# Explorando a Linguagem Assembly MIPS com Simuladores Online

Este trabalho tem como objetivo explorar a linguagem Assembly MIPS, utilizando o simulador **JsSpim** para a execução do código. O programa lê um array de números inteiros, calcula a soma e o produto dos elementos do array e realiza uma verificação condicional para armazenar o resultado em memória.

## Pré-requisitos

Para alcançar o objetivo deste trabalho, é necessário utilizar as seguintes ferramentas:

- **JsSpim**: Um simulador online para executar programas em Assembly MIPS.
- **Mips-Datapath-Simulator**: Um simulador que permite visualizar e simular o caminho de dados e operações de um programa MIPS.

## Execução

### Como Executar no JsSpim

1. **Acesse o JsSpim**:
   - Abra o **JsSpim** através do link: [JsSpim Online](https://shawnzhong.github.io/JsSpim/).

2. **Carregue o Código**:
   - Copie o código Assembly fornecido neste repositório.
   - Cole o código na interface do JsSpim.

3. **Executando o Código**:
   - Clique no botão **Run** para executar o código no simulador.

4. **Resultados**:
   - O código irá calcular a soma e o produto dos elementos do array, além de realizar uma verificação condicional e exibir os resultados na saída do simulador.
   - A soma e o produto serão armazenados em memória, e o valor da verificação condicional será exibido conforme a lógica definida no código.

## Padrão dos Testes

O programa irá processar o array de inteiros definido no código e, em seguida, executar as seguintes operações:

- **Soma**: A soma de todos os elementos do array.
- **Produto**: O produto de todos os elementos do array.
- **Verificação Condicional**: Se a soma for maior que 100, o valor 1 será armazenado em memória; caso contrário, será armazenado o valor 0.

Os resultados da execução serão exibidos na saída padrão do JsSpim.

## Personalização

Para testar outros arrays de inteiros, basta modificar o array dentro do código Assembly. O formato do array é o seguinte:

```assembly
array:      .word 15, 25, 35, 45, 55   # Array de exemplo com novos valores

```

## Execução

### Como Executar no Mips-Datapath-Simulator

1. **Acesse o Mips-Datapath-Simulator**:
   - Abra o **Mips-Datapath-Simulator** através do link: [Mips-Datapath-Simulator](https://saliherdemk.github.io/Mips-Datapath-Simulator/).

2. **Carregue o Código**:
   - Copie o código Assembly fornecido.
   - Cole o código na interface do simulador.

3. **Carregar o Array na Memória**:
   - Carregue os valores do array `[15, 25, 35, 45, 55]` manualmente na seção de **Memory** (Memória) do simulador.
     - Insira os valores nos seguintes endereços:
       - **Endereço 0x00000000**: 15
       - **Endereço 0x00000004**: 25
       - **Endereço 0x00000008**: 35
       - **Endereço 0x0000000C**: 45
       - **Endereço 0x00000010**: 55

   - No simulador, você precisa configurar a operação de soma **add** e a operação de armazenamento **sw** e atribuí-las a um endereço de memória específico.

4. **Executando o Código**:
   - Clique no botão **Run** para executar o código no simulador.

5. **Resultados**:
   - O código irá calcular a soma dos elementos do array e armazenar o resultado no endereço de memória `sum`.
   - A soma será exibida no simulador, conforme a lógica definida no código.
   - Você poderá visualizar na **pipeline** do simulador o caminho percorrido pelas instruções durante a execução do código, ajudando a entender como os dados são processados e manipulados em cada estágio.
