package m5ejercicio4;

import java.util.Scanner;

public class M5Ejercicio4 {

			public static void main(String[] args) {
			
				Scanner sc = new Scanner(System.in);
				byte aleatorio = (byte) Math.ceil((Math.random() * 10));
				int numero;
				byte contador = 0;
				
				do {
				System.out.println("Introduce un número entre 0 y 10 : ");
				numero = sc.nextByte();
				contador++;
				} while (contador < 5 && aleatorio != numero );
				
				if (numero == aleatorio) {
					System.out.println("Enhorabuena, has acertado tras "+ contador +" intentos :) el número era "+numero);

				} else 
					System.out.println("Has utilizado demasiados intentos, el número era "+aleatorio);

				/* if (numero == aleatorio) {
					System.out.println("Enhorabuena, has acertado tras "+ contador +" intentos :) el número era \"+numero);");
				}
				}
				 esto es lo que puse. Ahora repasand, lo corrijo
				while (contador <= 5);
				
				System.out.println("Has utilizado demasiados intentos, el número era "+aleatorio);*/
			}

		}

