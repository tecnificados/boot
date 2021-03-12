
package org.tecnificados.boot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;
import org.tecnificados.boot.dao.IncidenciaDAO;
import org.tecnificados.boot.model.Incidencia;

/**
 * @author Juan Carlos Ballesteros (tecnificados.com)
 *
 */

@Service
public class IncidenciaServiceImpl extends GenericServiceImpl<Incidencia, Long> implements IncidenciaService {

	@Autowired
	private IncidenciaDAO incidenciaDAO;

	@Override
	public CrudRepository<Incidencia, Long> getDao() {
		return incidenciaDAO;
	}

	@Override
	public Long maxId() {
		return incidenciaDAO.getMaxTransactionId();
	}

}