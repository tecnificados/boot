/**
 * 
 */
package org.tecnificados.boot.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.tecnificados.boot.model.Incidencia;
import org.tecnificados.boot.service.IncidenciaService;

/**
 * @author Juan Carlos Ballesteros (tecnificados.com)
 *
 */
@Controller
public class StartController {

	Logger logger = LoggerFactory.getLogger(StartController.class);
	
	public static final String EMPTY = "/empty";
	public static final String ADD = "/add";
	public static final String DEFAULT = "/";
	
	
	@Autowired
	private IncidenciaService incidenciaService;

	@RequestMapping(DEFAULT)
	public ModelAndView  index() {
		
		logger.info("index");		

		List<Incidencia> list = incidenciaService.getAll();
		
		ModelAndView model = new ModelAndView();
		model.addObject("list", list);
		
		model.setViewName("index");

		return model;
	}
	
	
	@RequestMapping(ADD)
	@ResponseBody
	public String  add() {

		logger.info("add");
					
		Long id=incidenciaService.maxId()+1;
		
		Incidencia incidencia = new Incidencia();
		incidencia.setId(id);
		incidencia.setAutor("Juan Carlos");
		incidencia.setTitulo("Incidencia "+incidencia.getId());
		incidencia.setDescripcion("La aplicación no arranca");
		incidencia.setEstado(0);		
		
		incidenciaService.save(incidencia);
		

		return "added";
	}
	
	
	@RequestMapping(EMPTY)
	@ResponseBody
	public String  empty() {

		logger.info("empty");
					
		List<Incidencia> list = incidenciaService.getAll();
		
		for (Incidencia p:list)
		{
			incidenciaService.delete(p.getId());
		}
		
		
		

		return "empty";
	}
}
