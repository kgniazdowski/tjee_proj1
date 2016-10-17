package com.RowerLand.model;

/**
 * Created by Kamil on 17.10.2016.
 */
public class Rower {
    String nazwa;
    double cena;
    double wielkoscKola;
    Producent producent;

    public String getNazwa() {
        return nazwa;
    }

    public double getCena() {
        return cena;
    }

    public double getWielkoscKola() {
        return wielkoscKola;
    }

    public Producent getProducent() {
        return producent;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    public void setCena(double cena) {
        this.cena = cena;
    }

    public void setWielkoscKola(double wielkoscKola) {
        this.wielkoscKola = wielkoscKola;
    }

    public void setProducent(Producent producent) {
        this.producent = producent;
    }
}
