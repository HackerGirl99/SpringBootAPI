package lk.ac.vau.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lk.ac.vau.Model.Department;
import lk.ac.vau.Repo.DepartmentRepo;

@RestController
@RequestMapping("/dept")
public class DepartmentController extends GenericController<Department,Integer>{
	@Autowired
	private DepartmentRepo repo;
}
