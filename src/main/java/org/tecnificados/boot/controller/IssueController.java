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
public class IssueController {

	Logger logger = LoggerFactory.getLogger(IssueController.class);
	

	public static final String LIST = "/incidencia/list";
	
	
	@Autowired
	private IncidenciaService incidenciaService;

	@RequestMapping(LIST)
	public ModelAndView  list() {
		
		logger.info("index");		

		List<Incidencia> list = incidenciaService.getAll();
		
		ModelAndView model = new ModelAndView();
		model.addObject("list", list);
		
		model.setViewName("incidencia/list");

		return model;
	}
	
	
	
}
