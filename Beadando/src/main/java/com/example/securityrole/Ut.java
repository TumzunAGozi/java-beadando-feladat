package com.example.securityrole;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name="ut")
public class Ut {
    @Id
    private int azon;
    @Column(name = "nev")
    private String nev;
    @Column(name = "hossz")
    private String hossz;
    @Column(name = "allomas")
    private double allomas;
    @Column(name = "ido")
    private double ido;
    @Column(name = "vezetes")
    private double vezetes;
    @Column(name = "telepulesid")
    private double telepulesid;

    @ManyToOne
    @JoinColumn(name = "telepulesid", referencedColumnName = "id",insertable=false, updatable=false)
//  @JoinColumn(name = "az", insertable=false, updatable=false)
    private Telepules telepules;

    public int getAzon() {
        return azon;
    }

    public void setAzon(int azon) {
        this.azon = azon;
    }

    public String getNev() {
        return nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    public String getHossz() {
        return hossz;
    }

    public void setHossz(String hossz) {
        this.hossz = hossz;
    }

    public double getAllomas() {
        return allomas;
    }

    public void setAllomas(double allomas) {
        this.allomas = allomas;
    }

    public double getIdo() {
        return ido;
    }

    public void setIdo(double ido) {
        this.ido = ido;
    }

    public double getVezetes() {
        return vezetes;
    }

    public void setVezetes(double vezetes) {
        this.vezetes = vezetes;
    }

    public double getTelepulesid() {
        return telepulesid;
    }

    public void setTelepulesid(double telepulesid) {
        this.telepulesid = telepulesid;
    }

    public Telepules getTelepules() {
        return telepules;
    }

    public void setTelepules(Telepules telepules) {
        this.telepules = telepules;
    }
}
