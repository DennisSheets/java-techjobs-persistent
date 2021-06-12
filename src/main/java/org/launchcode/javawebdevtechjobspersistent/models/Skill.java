package org.launchcode.javawebdevtechjobspersistent.models;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;


@Entity
public class Skill extends AbstractEntity {


    @Size(min=10, message="A description of the skill is required")
    private String description;

    @ManyToMany (mappedBy="skills")      // This Skill will have many Jobs
    private final List<Job> jobs = new ArrayList<>();


    public Skill(String skill) {
        this.description = skill;
    }

    public Skill (){}


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Job> getJobs() {return jobs;
    }
}