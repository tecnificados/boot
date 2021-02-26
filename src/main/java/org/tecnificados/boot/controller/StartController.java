/**
 * 
 */
package org.tecnificados.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Juan Carlos Ballesteros (tecnificados.com)
 *
 */
@Controller
public class StartController {
 
    @RequestMapping("/")
    public String mensaje() {
         
        return "index";
    }
}
