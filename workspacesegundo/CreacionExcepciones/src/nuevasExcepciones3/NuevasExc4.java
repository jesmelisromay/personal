package nuevasExcepciones3;

import java.util.Scanner;
public class NuevasExc4 {
	
	public void lanza(int temp, int dormir) throws DemasiadoCalor, DemasiadoCansado {
		
	        if( temp > 40 )
	            throw( new DemasiadoCalor("Demasiado Calor") );
	            // Si se lanza esta, la otra ya no se lanza 
	        if( dormir < 8 ) {
	        	throw( new DemasiadoCansado("Demasiado Cansancio") );
	        }           
	}
	
	public static void main(String args[]) {
		
		NuevasExc4 nuevas = new NuevasExc4();

		Scanner lector = new Scanner(System.in);
		
		System.out.print("Introduce la temperatura: ");
		int temperatura = lector.nextInt();
		System.out.print("Introduce las horas que has dormido: ");
		int horas = lector.nextInt();
		lector.close();

		try {
			nuevas.lanza(temperatura, horas);// Puede lanzar una excepcion
		}
		catch ( DemasiadoCansado | DemasiadoCalor lim ) {
	        System.out.println( lim.getMessage() );  	
		}
					
	}
}
    
