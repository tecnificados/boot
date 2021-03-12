/**
 * 
 */
package org.tecnificados.boot.controller;

import java.util.List;

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

	public static final String EMPTY = "/empty";
	public static final String ADD = "/add";
	public static final String DEFAULT = "/";
	
	
	@Autowired
	private IncidenciaService personaService;

	@RequestMapping(DEFAULT)
	public ModelAndView  index() {

		List<Incidencia> list = personaService.getAll();
		
		ModelAndView model = new ModelAndView();
		model.addObject("list", list);
		
		model.setViewName("index");

		return model;
	}
	
	
	@RequestMapping(ADD)
	@ResponseBody
	public String  add() {

					
		Long id=personaService.maxId()+1;
		
		Incidencia incidencia = new Incidencia();
		incidencia.setId(id);
		incidencia.setAutor("Juan Carlos");
		incidencia.setTitulo("Incidencia "+incidencia.getId());
		incidencia.setDescripcion("La aplicación no arranca");
		incidencia.setEstado(0);		
		
		personaService.save(incidencia);
		

		return "added";
	}
	
	
	@RequestMapping(EMPTY)
	@ResponseBody
	public String  empty() {

					
		List<Incidencia> list = personaService.getAll();
		
		for (Incidencia p:list)
		{
			personaService.delete(p.getId());
		}
		
		
		

		return "empty";
	}
}
