; 3. Um percurso rodoviário é composto por uma parte de subida, uma de descida e outra plana (sem declive). Sabe-se o consumo médio (Km/l) de um carro quando ele desloca em percurso horizontal (sem declive). Em relação a este consumo, o mesmo carro, em subida, gasta mais 30% e, em descida, menos 10%. Escrever em Scheme o procedimento consumo-total que tem como parâmetros consumo, plano, subida e descida, que representam, respectivamente, o consumo médio do carro no plano, a quantidade de Km de no plano, a quantidade de Km em subida e, finalmente, a quantidade de Km em descida. Este procedimento deve devolver a quantidade em litros gasta pelo carro no percurso definido pelos parâmetros informados.


(define consumo-total
  (lambda (consumo plano subida descida)
  	(define cons-subida(/ subida (* 0.7 consumo) ))
	  (define cons-descida(/ descida (* 1.1 consumo)))
	  (define cons-plano(/ plano consumo))
	  (define total-litros(+ cons-subida cons-descida cons-plano))
	
  	(display "A quantidade em litros gastos pelo carro do percurso de acordo com os paramentros informados é :")
    (display total-litros )
    
  )
)