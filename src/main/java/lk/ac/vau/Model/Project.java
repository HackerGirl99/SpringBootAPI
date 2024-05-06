package lk.ac.vau.Model;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
public class Project {
	@Id
private String id;
private String name;
@Temporal(TemporalType.DATE)
private Date startedOn;

public Project() {
	
}

public Project(String id, String name, Date startedOn) {
	super();
	this.id = id;
	this.name = name;
	this.startedOn = startedOn;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public Date getStartedOn() {
	return startedOn;
}

public void setStartedOn(Date startedOn) {
	this.startedOn = startedOn;
}


}
