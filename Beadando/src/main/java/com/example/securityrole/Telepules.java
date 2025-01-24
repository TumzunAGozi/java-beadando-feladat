package com.example.securityrole;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name="telepules")
public class Telepules {
    @Id
    private int id;
    @Column(name="nev")
    private String nev;
    @Column(name="npid")
    private int npid;

    @OneToMany(mappedBy = "telepules", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Ut> ut;

    @ManyToOne
    @JoinColumn(name = "npid", referencedColumnName = "id", insertable=false, updatable=false)
    private Np np;

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

    public int getNpid() {
        return npid;
    }

    public void setNpid(int npid) {
        this.npid = npid;
    }

    public List<Ut> getUt() {
        return ut;
    }

    public void setUt(List<Ut> ut) {
        this.ut = ut;
    }

    public Np getNp() {
        return np;
    }

    public void setNp(Np np) {
        this.np = np;
    }
}
