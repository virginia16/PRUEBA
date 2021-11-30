
//Annethy Javier
//EJERCICIO 1
public class Persona {
    //atributos
    private String nombre;
    private String apellido;
    private int edad;
    private String sexo;

    //constructor
    public Persona(String nombre, String apellido, int edad, String sexo) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.sexo = sexo;
    }

    //metodos
    public void dormir(){
        System.out.println(nombre + apellido + " que tiene la edad de " + edad + "anos, y es de sexo " + sexo + " esta durmiendo");
    }

    public void comer(){
        System.out.println(nombre + apellido + " que tiene la edad de " + edad + "anos, y es de sexo " + sexo + " comiendo");
    }
    public void caminar(){
        System.out.println(nombre + apellido + " que tiene la edad de " + edad + "anos, y es de sexo " + sexo + " esta caminando");
    }

    public void correr(){
        System.out.println(nombre + apellido + " que tiene la edad de " + edad + "anos, y es de sexo " + sexo + " esta corriendo");
    }
}

