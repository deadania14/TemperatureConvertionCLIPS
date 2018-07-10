;CREATED BY DEA DANIA deadania27@student.gunadarma.ac.id
;RUMUS KONVERSI SUHU (temperature conversion formula)
(defrule tanya-suhu ""
	(declare (salience 10))
	=>
	(printout t crlf crlf)	
;ASK WHICH TEMPRATURE WANT TO CONVERT
	(printout t "suhu apa yang kamu ingin konversi?(kelvin/celsius/farenheit/reamur)" crlf)
	(printout t "*pilih salah satu, dan input casesensitif" crlf)
	(bind ?jenis (read))
;ASK HOW MUCH TEMPERATURE THAT WANTS TO CONVERT
	(printout t "berapa besar suhunya?")
	(bind ?nilai-suhu (read))
;KELVIN FORMULA 
	(if (= (str-compare ?jenis "kelvin") 0)
		then
		(bind ?k-celsius (- ?nilai-suhu  237.15))
		(bind ?k-farenheit(- 459.67 (* ?nilai-suhu 1.8)))
		(bind ?k-reamur(* (- ?nilai-suhu 273.15)(/ 33 100)))
		(printout t ?nilai-suhu " kelvin = " ?k-celsius " celsius = "  ?k-farenheit " farenheit = " ?k-reamur " reamur " crlf)
		else
;CELSIUS FORMULA
		(if (= (str-compare ?jenis "celcius") 0)
			then
			(bind ?c-farenheit(+ 32 (* 1.8 ?nilai-suhu)))
			(bind ?c-reamur(* 0.8 ?nilai-suhu ))
			(bind ?c-kelvin (+ ?nilai-suhu 237.15))
			(printout t ?nilai-suhu " celsius = " ?c-farenheit " farenheit = "  ?c-reamur " reamur = " ?c-kelvin " kelvin " crlf)
		else
;FARENHEIT FORMULA
			(if (= (str-compare ?jenis "farenheit") 0)
				then
				(bind ?f-kelvin (/ (+ ?nilai-suhu 459.67) 1.8))
				(bind ?f-celsius (/ (- ?nilai-suhu 32) 1.8))
				(bind ?f-reamur (/ (- ?nilai-suhu 32) 0.44))
				(printout t ?nilai-suhu " farenheit = " ?f-kelvin " kelvin = "  ?f-celsius " celsius = " ?f-reamur " reamur " crlf)	
			else
;REAMUR FORMULA
				(if(= (str-compare ?jenis "reamur") 0) 
					then
				(bind ?r-kelvin (/ (+ ?nilai-suhu 459.67) 1.8))
				(bind ?r-celsius (/ (- ?nilai-suhu 32) 1.8))
				(bind ?r-farenheit (/ (- ?nilai-suhu 32) 0.44))
				(printout t ?nilai-suhu " reamur = " ?r-kelvin " kelvin = "  ?r-celsius " celsius = " ?r-farenheit " farenheit " crlf)
				)
			)
		)
		
	)
)