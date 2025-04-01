//Escribir aqui los objetos
object gimenez {
  var fondo = 300000
    
  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrarSueldo()
  }

  method fondo() = fondo
}

object galvan {
  // revisar metodos de deuda,gastar,dinero
  var saldo = 0
  var sueldo = 15000
  
  method gastar(cantidad) {
    saldo -= cantidad
    /*
    if (dinero < cantidad) {
      deuda += (dinero - cantidad).abs() 
      // ejemplo: si dinero=100 y cantidad=200, a deuda se le suma el valor absoluto de (dinero-cantidad)
      dinero = 0
    } else {
      dinero -= cantidad
    }
    */
  }

/*
  method sueldo(cantidad){  
    
  }
    //Este método no es necesario ya que no se requiere ni por polimorfismo con Gimenez ni tiene que Baigorria hacerlo.
  */
  method cobrarSueldo(){
    saldo += self.sueldo()
    /*
    const balanceFinanciero = sueldo - deuda // calcula dinero que me quedaria cancelando deuda
    
    if (balanceFinanciero<0){
      deuda = deuda - sueldo // usa todo el sueldo para pagar deuda
      }
    else{ // si sobra sueldo al cancelar deuda, lo suma a su dinero
      dinero = dinero + balanceFinanciero
      deuda = 0
    }
    */
  }
  
  method deuda() = saldo.min(0).abs() //if(saldo < 0) saldo.abs() else 0
  
  method sueldo(_sueldo) { //SETTER
    sueldo = _sueldo
  }
  
  method sueldo() = sueldo
  
  method totalCobrado() {
    
  }

  method dinero() = saldo.max(0) //if(saldo >= 0) saldo else 0
 
}

object baigorria {
  var empanadasVendidas = 0
  var precioEmpanada = 15
  var totalCobrado = 0
  
  method precioEmpanada(_precioEmpanada){
    precioEmpanada = _precioEmpanada
  }

  method vender(cantidad) {
    empanadasVendidas += cantidad
    //empanadasVendidas = empanadasVendidas + cantidad
  }
  
  method sueldo() {
    return empanadasVendidas * precioEmpanada
  }
  
  method cobrarSueldo() {
    totalCobrado += self.sueldo()
    empanadasVendidas = 0
  }
  
  method totalCobrado() = totalCobrado
}