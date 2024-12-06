# Explorando a Linguagem Assembly MIPS com Simuladores Online

Este trabalho tem como objetivo explorar a linguagem Assembly MIPS, utilizando o simulador **JsSpim** para a execução do código. O programa lê um array de números inteiros, calcula a soma e o produto dos elementos do array e realiza uma verificação condicional para armazenar o resultado em memória.

## Pré-requisitos

Para executar este código, é necessário:

- **JsSpim**: O código foi desenvolvido para ser executado no simulador **JsSpim**, uma ferramenta online que simula a execução de programas escritos em Assembly MIPS.

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
