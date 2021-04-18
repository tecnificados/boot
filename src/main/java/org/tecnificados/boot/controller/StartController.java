/**
 * 
 */
package org.tecnificados.boot.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Juan Carlos Ballesteros (tecnificados.com)
 *
 */
@Controller
public class StartController {

	Logger logger = LoggerFactory.getLogger(StartController.class);
	

	public static final String DEFAULT = "/";
	
	


	@RequestMapping(DEFAULT)
	public ModelAndView index() {

		logger.info("index");

		ModelAndView model = new ModelAndView();

		model.setViewName("login");

		return model;
	}
	
	
	
	
	
		
		
		

	
}
