package org.launchcode.javawebdevtechjobspersistent.models;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Skill extends AbstractEntity {

    //TODO should there be a (mappedBy = "???") and something for JoinColumn)
    @ManyToMany (mappedBy="skills") // This Skill will have many Jobs
      private List<Job> jobs = new ArrayList<>();


    @Size(min=10, message="A description of the skill is required")
    private String description;

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
}