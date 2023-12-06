package adivinarnumero2.pkg0version;
import java.util.Scanner;
public class Ejercicio04_ProyectoInvestigacion {
    public static void main(String[] args) {
        Scanner tc = new Scanner(System.in);
        int numeroSecreto = (int) (Math.random() * 100) + 1;
        int veces = 9;
        int veces1 = 1, numeroDado, pista1;
        boolean si = false, si1 = true;
        String pista3 = null; 
        String opcion = null;
        System.out.println("Adivina el numero");
        do{
            while (veces >= 0){
                System.out.println("Ingresa un numero");
                numeroDado = tc.nextInt();
                if (numeroDado == numeroSecreto){
                    si = true;
                    break; 
                } else if (veces == 0)
                    break; 
                System.out.println("Incorrecto, quieres pistas? (si/no)");
                pista3 = tc.next();
                if (pista3.equals("si")){
                    veces--;
                    System.out.println("Selecciona la pista que quieres ver:");
                    System.out.println("[1] Saber si el numero es mayor o menor");
                    System.out.println("[2] Saber si el numero es par o impar");
                    System.out.println("[3] Saber si el numero es o no primo");
                    System.out.println("[4] Saber si el numero pertenece a la serie de fibonacci");
                    System.out.println("[5] Saber si el numero es multiplo de n");
                    pista1 = tc.nextInt();
                
                    switch(pista1){
                        case 1:
                            if ((numeroSecreto < numeroDado) && (pista3.equals("si"))){
                                System.out.println("EL NUMERO ES MENOR");
                            } else if ((numeroSecreto > numeroDado) && (pista3.equals("si"))){
                                System.out.println("EL NUMERO ES MAYOR");
                            }
                            break;
                        case 2:
                            if ((numeroSecreto % 2 == 0) && (pista3.equals("si")))
                                System.out.println("EL NUMERO ES PAR");
                            else if ((numeroSecreto % 2 != 0) && (pista3.equals("si")))
                                System.out.println("EL NUMERO ES IMPAR");
                            break;
                            case 3:
                                if (numeroSecreto == 1)            
                                si1 = false;
                            for (int i = 2; i < numeroSecreto; i++) {
                            if ((numeroSecreto % i) == 0)
                                si1 = false;
                            }
                            if (si1 && (pista3.equals("si")))
                                System.out.println("EL NUMERO ES PRIMO");
                            else if ((si1 == false) && (pista3.equals("si")))
                                System.out.println("EL NUMERO NO ES PRIMO");
                            break;
                        case 4:
                            if ((esNumeroDeFibonacci(numeroSecreto)) && (pista3.equals("si"))) //Se invoca la funcion al final de codigo
                                System.out.println("EL NUMERO PERTENECE A LA SERIE DE FIBONACCI");
                            else if ((esNumeroDeFibonacci(numeroSecreto) == false) && (pista3.equals("si"))) 
                                System.out.println("EL NUMERO NO PERTENECE A LA SERIE DE FIBONACCI");
                            break;
                        case 5:
                            if (numeroSecreto % 3 == 0 && pista3.equals("si"))
                                System.out.println("MULTIPLO DE 3"); 
                            else if ((numeroSecreto % 5 == 0) && (pista3.equals("si")))
                                System.out.println("MULTIPLO DE 5");
                            else if ((numeroSecreto % 7 == 0) && (pista3.equals("si")))
                                System.out.println("MULTIPLO DE 7");
                            break;
                        default:
                            System.out.println("Opcion incorrecta!");
                    }
                }
                
                System.out.println("Te quedan: " + veces + " intentos");
                veces--;
                veces1++;
            }
            if (si)
                System.out.println("correcto! lo lograste en " + veces1 + " intentos");
            else{
                System.out.println("perdiste");
                System.out.println("EL NUMERO ERA " + numeroSecreto);
            }
            System.out.println("Quieres volver a jugar? (si/no)");
            opcion = tc.next();
        } while (opcion.equals("si"));
        System.out.println("ADIOS");
    }
    public static boolean esNumeroDeFibonacci(int variable) {
        if (variable < 0) {
            return false;
        }
        int num1 = 0;
        int num2 = 1;
        while (num1 < variable) {
            int num3 = num1;
            num1 = num2;
            num2 = num3 + num2;
        }
        return num1 == variable;
    }
}