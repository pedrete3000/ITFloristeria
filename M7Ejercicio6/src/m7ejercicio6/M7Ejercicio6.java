package m7ejercicio6;

import java.util.Scanner;

public class M7Ejercicio6 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int numero;
		final int MAX = 10;
		final int MIN = 0;
do {
	
// no se las veces que metera mal el numero el usuario por lo que hago este do while
		System.out.println("Introduzca un numero entre 0 y 10 ");
		numero = sc.nextInt();		
		} while  (numero < 0 || numero > 10);

tabladeMultiplicar(numero);
	}

	public static void tabladeMultiplicar(int numero) {
		int i;
		for (i = 0; i <= 10; i++) {
			System.out.println(numero + " x " + i + " es " + numero * i);
		}
	}
}
