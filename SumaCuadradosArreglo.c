#include <stdio.h>

int suma_cuadrados(int Arreglo[], int n) {
    int Sum = 0;
    for (int i = 0; i < n; i++) {
        Sum += Arreglo[i] * Arreglo[i];
    }
    return Sum;
}

int main(){
    int Arreglo[] = {3, 2, 23, 13, 101, 7, 71, 11};
    int Tam = sizeof(Arreglo) / sizeof(Arreglo[0]);
    printf("Programa que Suma los cuadrados en un arreglo en C\n");
    printf("La suma de los cuadrados es: %d\n", suma_cuadrados(Arreglo, Tam));
}