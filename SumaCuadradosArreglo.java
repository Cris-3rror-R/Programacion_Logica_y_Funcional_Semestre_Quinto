public class SumaCuadradosArreglo {
    
    public static int SumaCuadrados(int Arreglo []){
        int Sum =0;
        for(int i=0; i<Arreglo.length; i++){
            Sum += Arreglo[i]*Arreglo[i];
        }
        return Sum;
    }
    
    public static void main(String [] args){
        int Arreglo [] = {3, 2, 23, 13, 101, 7, 71, 11};
        System.out.println("Programa que Suma los cuadrados en un arreglo en Java");
        System.out.println("La suma de los cuadrados es: " + SumaCuadrados(Arreglo));
    }
}
