package m5ejercicio1;

import java.util.ArrayList;
import java.util.Scanner;

public class M5Ejercicio1 {

	public static void main(String[] args) {

		byte i, numpal;
		String palabra;
		Scanner sc = new Scanner(System.in);
		ArrayList<String> listado = new ArrayList<String>();
		
		System.out.println("¿cuántas palabras quieres introducir?");
		numpal = sc.nextByte();
		sc.nextLine();
		
		for (i = 0; i < numpal; i++ ) {

			System.out.println("Introduce una palabra");
			palabra = sc.nextLine();
			listado.add(palabra);
					}
		System.out.println(listado);
		}
		

	}
