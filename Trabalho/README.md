# Problemas para Resolução em Linguagem Funcional 
* [Lista de Scheme](https://github.com/jhonypalmer/SchemeLP-2018/blob/master/Trabalho/LP-Scheme-2018.pdf)

## 1. Problema das oito rainhas.

#### Esse é um problema clássico de ciencia da computação. O objetivo é colocar 8 rainhas em um tabuleiro de Xadrez de modo que nenhuma rainha esteja atacando alguma outra. Por exemplo, não há duas rainhas na mesma linha, coluna ou diagonal.
#### Dica: represente as posições das rainhas como uma lista de numeros de 1 a N. Por exemplo: [4,2,7,3,6,8,5,1] significa que a rainha da primeira coluna está na linha 4, a rainha da segunda coluna está na linha 2 e assim por diante. 

## 2. Sudoku

#### Abaixo tem-se um exemplo do jogo Sudoku.

```
       Problema         -        Solução
 . . 4 | 8 . . | . 1 7  -  9 3 4 | 8 2 5 | 6 1 7
       |       |        -        |       |
 6 7 . | 9 . . | . . .  -  6 7 2 | 9 1 4 | 8 5 3
       |       |        -        |       |
 5 . 8 | . 3 . | . . 4  -  5 1 8 | 6 3 7 | 9 2 4
 ------+-------+------- - -------+-------+------
 3 . . | 7 4 . | 1 . .  -  3 2 5 | 7 4 8 | 1 6 9
       |       |        -        |       |
 . 6 9 | . . . | 7 8 .  -  4 6 9 | 1 5 3 | 7 8 2
       |       |        -        |       |
 . . 1 | . 6 9 | . . 5  -  7 8 1 | 2 6 9 | 4 3 5
 ------+-------+------- - -------+-------+------
 1 . . | . 8 . | 3 . 6  -  1 9 7 | 5 8 2 | 3 4 6
       |       |        -        |       |
 . . . | . . 6 | . 9 1  -  8 5 3 | 4 7 6 | 2 9 1
       |       |        -        |       |
 2 4 . | . . 1 | 5 . .  -  2 4 6 | 3 9 1 | 5 7 8
 ```
 
 #### Cada lacuna acima pertence a uma linha (horizontal), uma coluna (vertical) e um quadrado 3x3. No início, algumas posições estão preenchidas com um número de 1 a 9. O problema é preencher as lacunas (pontos) com digitos de forma que cada número entre 1 e 9 apareça apenas uma vez em cada linha, em cada coluna e em cada quadrado. O objetivo desse exercício é criar uma função que recebe o tabuleiro inicial (problema) e retorne o final (solução).
 
 ## 3. Percurso Rodoviário
 #### Um percurso rodoviário é composto por uma parte de subida, uma de descida e outra plana (sem declive). Sabe-se o consumo médio (Km/l) de um carro quando ele desloca em percurso horizontal (sem declive). Em relação a este consumo, o mesmo carro, em subida, gasta mais 30% e, em descida, menos 10%. Escrever em Scheme o procedimento consumo-total que tem como parâmetros consumo, plano, subida e descida, que representam, respectivamente, o consumo médio do carro no plano, a quantidade de Km de no plano, a quantidade de Km em subida e, finalmente, a quantidade de Km em descida. Este procedimento deve devolver a quantidade em litros gasta pelo carro no percurso definido pelos parâmetros informados.
 
 ## 4. Dia da Semana 
 #### Para determinar o dia da semana de uma data do calendário é utilizado um algoritmo como descrito abaixo. Para o algoritmo, considere:
 * m o mês do ano, em que Março é o mês 1, Abril 2, até Dezembro que é o mês 10. Janeiro e Fevereiro são considerados os meses 11 e 12 do ano anterior1.
 * d o dia do mês.
 * a o ano do século.
 * s o século anterior2.
 #### Por exemplo, para 4 de Julho de 1989 seria m=5, d=4, a=89, s=19. Por outro lado, para 4 de Janeiro do mesmo ano seria m=11, d=4, a=88, s=19.
 #### Vejamos agora os passos do algoritmo. Seja:
 * 'mint' a parte inteira de (13m-1)/5.
 * 'aint' a parte inteira de a/4.
 * 'sint' a parte inteira de s/4.
 * x = mint+aint+sint+d+a-2s.
 * dia o resto da divisão inteira x/7.
 1. Esta identificação dos meses, perfeitamente anormal, é apenas utilizada dentro do algoritmo.
 2. Mais uma identificação anormal, para utilizar no algoritmo. dia é a resposta, de acordo com a identificação seguinte: dia=0 é o Domingo, dia=1 é 2ª-feira, e assim sucessivamente até dia=6 que corresponde a Sábado.
 #### Escrever o programa dia-da-semana que, em relação a uma data, pede o dia, mês e ano e responde com o respectivo dia da semana. Na chamada que se segue, a data em questão é 18 de Agosto de 2001.
 ```
 >(dia-da-semana 18 8 2001)
 O dia da semana é 6.
 ```
