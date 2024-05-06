package lk.ac.vau.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import lk.ac.vau.Repo.GenericRepo;

public abstract class GenericController<T,K> {
	@Autowired
	private GenericRepo<T, K> repo;
	
	@GetMapping
	public List<T>getAll(){
		return repo.findAll();
	}
	
	//get an element
	@GetMapping("{id}")
	public T getById(@PathVariable("id") K id) {
		return repo.findById(id).get();
	}
	
	//add an element
	@PostMapping
	public T addEntity(@RequestBody T t) {
		return repo.save(t);
	}
	
	//update element
	@PutMapping("{id}")
	public String updateEntity(@PathVariable("id")K id, @RequestBody T t) {
		if(repo.findById(id).isEmpty()) {
			return "404 Element not found";
		}
		else {
			repo.save(t);
			return "Updated";
		}
	}
	
	@DeleteMapping("{id}")
	public String deleteEntity(@PathVariable("id")K id, @RequestBody T t) {
		if(repo.findById(id).isEmpty()) {
			return "404 Element not found";
		}
		else {
			repo.deleteById(id);
			return "Deleted";
		}
	}
	
}
