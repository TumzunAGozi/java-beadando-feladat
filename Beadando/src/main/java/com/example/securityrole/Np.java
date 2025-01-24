package com.example.securityrole;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name="np")
public class Np {
    @Id
    private int id;
    @Column(name = "nev")
    private String nev;

    @OneToMany(mappedBy = "np")
    private List<Telepules> telepules;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNev() {
        return nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    public List<Telepules> getTelepules() {
        return telepules;
    }

    public void setTelepules(List<Telepules> telepules) {
        this.telepules = telepules;
    }
}
