/**
 * 
 */
package org.tecnificados.boot.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.tecnificados.boot.Constant;
import org.tecnificados.boot.model.Incidencia;
import org.tecnificados.boot.service.IncidenciaService;

/**
 * @author Juan Carlos Ballesteros (tecnificados.com)
 *
 */
@Controller
public class IncidenciaController {

	Logger logger = LoggerFactory.getLogger(IncidenciaController.class);
	

	public static final String LIST = "/incidencia/list";
	public static final String ADD = "/incidencia/add";
	public static final String SAVE = "/incidencia/save";
	public static final String REMOVE = "/incidencia/remove"+"/{id}";
	public static final String VIEW = "/incidencia/view"+"/{id}";
	public static final String EDIT = "/incidencia/edit"+"/{id}";
	public static final String UPDATE = "/incidencia/update"+"/{id}";
	
	
	
	
	@Autowired
	private IncidenciaService incidenciaService;

	@RequestMapping(LIST)
	public ModelAndView  list() {
		
		logger.info(LIST);		

		List<Incidencia> list = incidenciaService.getAll();
		
		ModelAndView model = new ModelAndView();
		model.addObject("list", list);
		
		model.setViewName("incidencia/list");

		return model;
	}
	
	@RequestMapping(ADD)
	public ModelAndView add() {
		
		logger.info(ADD);		
		
		ModelAndView model = new ModelAndView();
		model.addObject("estados", Constant.estados);
		
		model.setViewName("incidencia/add");

		return model;
	}
	
	
	@RequestMapping(SAVE)
	public ModelAndView save(Incidencia incidencia ) {
		
		logger.info(SAVE);		
		
		Long id=incidenciaService.maxId()+1;
		
		incidencia.setId(id);
		
		incidenciaService.save(incidencia);

		return list();
	}
	
	@RequestMapping(REMOVE)
	public ModelAndView remove(@PathVariable("id") String id ) {
		
		logger.info(REMOVE);		
		
		incidenciaService.delete(Long.parseLong(id));
		
		return list();
	}
	
	@RequestMapping(VIEW)
	public ModelAndView view(@PathVariable("id") String id ) {
		
		logger.info(VIEW);		
		
		Incidencia incidencia = incidenciaService.get(Long.parseLong(id));
		
		ModelAndView model = new ModelAndView();
		model.addObject("incidencia", incidencia);
		
		model.addObject("estados", Constant.estados);
		
		model.setViewName("incidencia/view");
		
		
		return model;
	}
	
	
	@RequestMapping(EDIT)
	public ModelAndView edit(@PathVariable("id") String id ) {
		
		logger.info(EDIT);		
		
		Incidencia incidencia = incidenciaService.get(Long.parseLong(id));
		
		ModelAndView model = new ModelAndView();
		model.addObject("incidencia", incidencia);
		
		model.addObject("estados", Constant.estados);
		
		model.setViewName("incidencia/edit");
		
		
		return model;
	}
	
	
	@RequestMapping(UPDATE)
	public ModelAndView update(@PathVariable("id") String id, Incidencia incidencia ) {
		
		logger.info(UPDATE);		
		
		incidencia.setId(Long.parseLong(id));
		
		incidenciaService.save(incidencia);

		return list();
	}
	
	
}
