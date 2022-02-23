# Jogo da Forca
> Este projeto compõe o primeiro trabalho (realizado em sala) da disciplina de **Linguagens de Programaçã**. A fim de promover a troca de conhecimento sobre as diversas linguagens de programação, cada grupo deverá implementar o famoso **Jogo da Forca**.

## Instruções para entrega

Cada grupo deverá realizar um **fork** ou **clone** deste repositório e em uma branch separada, desenvolver a sua solução. Ao final, o grupo deverá abrir um **pull request** com o seu código para o professor.

## Grupos

### Linguagem C/C++
1. Jeferson
2. Samuel
3. Thiago

### Linguagem Java
1. Rodrigo
2. Luis
3. Henrique

### Linguagem Python
1. João Marcelo
2. Tuanne

### Linguagem Ruby
1. Isaac
2. Elizangela
3. Giovani


## Regras do jogo da forca

> As regras foram extraídas da [Wikipedia](https://pt.wikipedia.org/wiki/Jogo_da_forca#) com a finalidade de auxiliar e tirar possíveis dúvidas dos alunos.

O jogo da forca é um jogo em que o jogador tem que acertar qual é a palavra proposta, tendo como dica o número de letras e o tema ligado à palavra. A cada letra errada, é desenhado uma parte do corpo do enforcado. O jogo termina ou com o acerto da palavra ou com o término do preenchimento das partes corpóreas do enforcado.

Para começar o jogo se desenha uma base e um risco correspondente ao lugar de cada letra.

Por exemplo, para a palavra "MERCADO", se escreve:

M E R C A D O ------> _ _ _ _ _ _ _
O jogador que tenta adivinhar a palavra deve ir dizendo as letras que podem existir na palavra. Cada letra que ele acerta é escrita no espaço correspondente.

M E R C A D O → M _ _ C A _ _
Caso a letra não exista nessa palavra, desenha-se uma parte do corpo (iniciando pela cabeça, tronco, braços…)

O jogador (que está tentando adivinhar a palavra) pode escolher entre falar uma letra ou fazer uma tentativa perigosa de tentar adivinhar a palavra falando a palavra que pensa que é. Caso o jogador deseja fazer uma tentativa perigosa de tentar adivinhar a palavra falando a que pensa que é se ele errar a palavra ele perde na hora. O jogo é ganho se a palavra é adivinhada. Caso o jogador não descubra qual palavra é ele que perde. O jogador que tentava adivinhar a palavra antes então escolhe uma nova palavra e invertem-se.
