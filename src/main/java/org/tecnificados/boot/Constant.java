/**
 * 
 */
package org.tecnificados.boot;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @author Juan Carlos Ballesteros (tecnificados.com)
 *
 */
public class Constant {
	
	public static Map<Integer,String> estados=new LinkedHashMap<Integer,String>();

	public static int ESTADO_PENDIENTE=1;
	public static int ESTADO_RESUELTA=2;
	public static int ESTADO_ASIGNADA=3;
	public static int ESTADO_DESCARTADA=4;
	
	static
	{
		estados.put(Integer.valueOf(ESTADO_PENDIENTE), "Pendiente");
		estados.put(Integer.valueOf(ESTADO_RESUELTA), "Resuelta");
		estados.put(Integer.valueOf(ESTADO_ASIGNADA), "Asignada");
		estados.put(Integer.valueOf(ESTADO_DESCARTADA), "Descartada");
	}
}
