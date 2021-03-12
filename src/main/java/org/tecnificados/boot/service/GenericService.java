
package org.tecnificados.boot.service;

import java.io.Serializable;
import java.util.List;

/**
 * @author Juan Carlos Ballesteros (tecnificados.com)
 *
 */
public interface GenericService<T, ID extends Serializable> {
	 
	 List<T> getAll();
	
	 T save(T entity);
	 
	 void delete(ID id);
	 
	 T get(ID id);
	 
	 Long maxId();
	 
	}
