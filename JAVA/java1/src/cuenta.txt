public class Cuenta {
    //ATRIBUTOS
    private String titular;
    private double cantidad;

    //CONSTRUTORES

    public Cuenta(String titular) {
      this(titular, 0);
      
    }

    public Cuenta(String titular, double cantidad) {
        this.titular = titular;
         //SI LA CANTIDAD ES MENOR QUE 0, colocamos 0 
        if (cantidad < 0) {
            this.cantidad = 0;
        } else {
            this.cantidad = cantidad;
        }
}

//METODOS

public String getTitular() {
    return titular;
}

public void setTitular(String titular) {
    this.titular = titular;
}

public double getCantidad() {
    return cantidad;
}

public void setCantidad(double cantidad) {
    this.cantidad = cantidad;
}

/**
 * Ingresa dinero en la cuenta, solo si la cantidad ingresada es positiva
 */

 public void ingresar_cantidad(double cantidad) {
     if(cantidad > 0) {
         this.cantidad += cantidad;
     }
 }

 /**
  * Retirar cierta cantidad de la cuenta, si al final se quedara en negativo, quedaria en 0
  */

  public void retirar_cantidad(double cantidad) {
      if (this.cantidad - cantidad < 0) {
           this.cantidad = 0; 
      } else {
          this.cantidad -= cantidad;
      }
  }

  //Devuelve el estado del objeto 
  //
  //
  //




  
  @Override 
  public String toString() {
      return "El Usuario " + titular + " tiene una cantidad de RD$" + cantidad + " pesos Dominicanos en su cuenta ";  
  }

}

//
//

/**
 * EJECUTABLE
 */
class main {
    public static void main(String[] args) {
        Cuenta cuenta_A = new Cuenta("Annethy Javier ",3000);
        Cuenta cuenta_B = new Cuenta("Maria Perez", 1000);
        Cuenta cuenta_C = new Cuenta("Laura Perez", 1500);
        Cuenta cuenta_D = new Cuenta("ParK Jimin", 1200);

        //INGRESAR DINERO
        cuenta_A.ingresar_cantidad(1500);
        cuenta_B.ingresar_cantidad(7);
        cuenta_C.ingresar_cantidad(500);
        cuenta_D.ingresar_cantidad(700);

        //RETIRAR
        cuenta_A.retirar_cantidad(300);
        cuenta_B.retirar_cantidad(2300);
        cuenta_C.retirar_cantidad(30);
        cuenta_D.retirar_cantidad(200);

        //Informacion a la vista del usuario
        System.out.println(cuenta_A);
        System.out.println(cuenta_B);
        System.out.println(cuenta_C);
        System.out.println(cuenta_D);
    }
}