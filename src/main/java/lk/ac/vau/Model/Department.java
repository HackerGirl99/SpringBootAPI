package lk.ac.vau.Model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Department {
	@Id
	private int id;
	@Column(nullable=false)
	private String name;
	@Column(nullable=false)
	private String faculty;
	
	public Department() {
		
	}

	public Department(int id, String name, String faculty) {
		super();
		this.id = id;
		this.name = name;
		this.faculty = faculty;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}
	
	
	
}
