object registroProduccion {
	var produccionPorDia = [53,18,49,62,33,39]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	method algunDiaSeProdujo(cantidad){return produccionPorDia.contains(cantidad) }
	//Otra manera de hacerlo, menos prolija
	//method algunDiaSeProdujo(cantidad){return produccionPorDia.any({pd => pd == cantidad})}
	
	method maximoValorDeProduccion(){return produccionPorDia.max()}
	
	method valoresDeProduccionPares(){return produccionPorDia.filter({vp => vp % 2 == 0})}
	//method valoresDeProduccionPares(){return produccionPorDia.filter({vp => vp.even()})}
	//otra manera de pedir un numero par
	
	method produccionEsAcotada(n1,n2){return produccionPorDia.all({vp => vp.between(n1,n2)})}
	
	method produccionesSuperioresA(cuanto){return produccionPorDia.filter({s => s > cuanto})}
	
	method produccionesSumando(n){return produccionPorDia.map({pd => pd + n})}
	
	method totalProducido(){return produccionPorDia.sum()}
	
	method ultimoValorDeProduccion(){return produccionPorDia.last()}
	
	method cantidadProduccionesMayorALaPrimera(){return produccionPorDia.count({pd => pd > produccionPorDia.first()})}
}
