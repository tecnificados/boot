
package org.tecnificados.boot.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.tecnificados.boot.model.Incidencia;


/**
 * @author Juan Carlos Ballesteros (tecnificados.com)
 *
 */
public interface IncidenciaDAO extends CrudRepository<Incidencia, Long> {

	@Query(value = "SELECT coalesce(max(id), 0) FROM Incidencia")
	Long getMaxTransactionId();

}