(define (toi11saiki n)
  (if (< n 3)
      n
      (+ (toi11saiki (- n 1) ) (* (toi11saiki (- n 2)) 2) (* (toi11saiki (- n 3)) 3))))

(toi11saiki 8)


(define (kidou n) (toi11hanpuku n 2 1 0 2))

(define (toi11hanpuku n sum bsum bbsum counter)
  (if(< n 3)
     n
     (if(= n counter)
     sum
     (toi11hanpuku n (+  sum (* 2 bsum) (* 3 bbsum)) sum bsum (+ counter 1)))))
(kidou 8)
  