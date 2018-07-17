; 4. Para determinar o dia da semana de uma data do calendário é utilizado um algoritmo como descrito abaixo. Para o algoritmo, considere:
; • m o mês do ano, em que Março é o mês 1, Abril 2, até Dezembro que é o mês 10. Janeiro e Fevereiro são considerados os meses 11 e 12 do ano anterior1.
; • d o dia do mês.
; • a o ano do século.
; • s o século anterior2. 

(define (dia-da-semana dia mes ano)
  (cond
    ((= mes 1) (set! mes 11) (set! ano(- ano 1)))
    ((= mes 2) (set! mes 12) (set! ano(- ano 1)))
    ((= mes 3) (set! mes 1))
    ((= mes 4) (set! mes 2))
    ((= mes 5) (set! mes 3))
    ((= mes 6) (set! mes 4))
    ((= mes 7) (set! mes 5))
    ((= mes 8) (set! mes 6))
    ((= mes 9) (set! mes 7))
    ((= mes 10) (set! mes 8))
    ((= mes 11) (set! mes 9))
    ((= mes 12) (set! mes 10))
  )

(define seculo (div ano 100))
(define mint (div (- (* 13 mes) 1) 5))
(define aint (div ano 4))
(define sint(div seculo 4))
(define x (- (+ mint aint sint ano dia)(* 2 seculo)))
(define diaSemana (mod x 7))

(cond
  ((= diaSemana -1) (set! diaSemana 6))
)
(print "o dia da semana é: " diaSemana)
)
