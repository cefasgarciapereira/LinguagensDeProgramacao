import random


def jogar():

    imprime_mensagem_abertura()

    palavra_secreta = carrega_palavra_secreta()

    letras_acertadas = inicializa_letras_acertadas(palavra_secreta)

    enforcou = False
    acertou = False
    erros = 0

    print(letras_acertadas)
    # enquanto(True)
    while(not enforcou and not acertou):

        chute = input('Qual letra? ').upper().strip()

        if(chute in palavra_secreta):
            index = 0
            for letra in palavra_secreta:
                if(chute == letra):
                    # print(f'Encontrei a letra {letra} na posição {index}')
                    letras_acertadas[index] = letra
                index += 1
        else:
            erros += 1
            print(f'\nVocê errou, restam mais {6 - erros} tentativas\n')
        enforcou = erros == 6
        acertou = '_' not in letras_acertadas
        print(letras_acertadas)
    if(acertou):
        print('Você ganhou')
    else:
        print('Você perdeu')
    print('Fim do jogo')


def imprime_mensagem_abertura():
    print('***************************')
    print('Bem-vinda(o) ao jogo de forca!')
    print('***************************')
    print('\nVocê tem 6 tentativas para descobrir a palavra secreta!\n')


def carrega_palavra_secreta():

    # *** abre e fecha o arquivo mesmo se der erro ***
    # with open('palavras.txt') as arquivo:
    # for linha in arquivo:
    # print(linha)

    arquivo = open('palavras.txt', 'r')
    lista_palavras = []
    # lista_dica = []

    for item in arquivo:
        # item = item.strip()
        lista_palavras.append(item.strip())
        # print(lista_palavras)

    arquivo.close()

    palavras = lista_palavras[::2]
    dicas = lista_palavras[1::2]

    index = random.randrange(0, len(palavras))

    palavra_secreta = palavras[index].upper()
    dica_secreta = dicas[index].upper()
    # print(palavra_secreta)
    print('Dica:', dica_secreta)

    return palavra_secreta


def inicializa_letras_acertadas(palavra):
    return ['_' for letra in palavra]


if(__name__ == '__main__'):
    jogar()
