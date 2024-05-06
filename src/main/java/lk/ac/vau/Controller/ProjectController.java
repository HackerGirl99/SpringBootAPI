package lk.ac.vau.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lk.ac.vau.Model.Project;

@RestController
@RequestMapping("/project")
public class ProjectController extends GenericController<Project,String>{

}
