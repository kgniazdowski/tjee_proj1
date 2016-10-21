package com.RowerLand.model;

/**
 * Created by Kamil on 17.10.2016.
 */
public class Producent {
    String nazwa;
    String miasto;
    String ulica;
    String kodPocztowy;
    String nrLokalu;

    public String getNazwa() { return nazwa; }

    public String getMiasto() {
        return miasto;
    }

    public String getUlica() {
        return ulica;
    }

    public String getKodPocztowy() {
        return kodPocztowy;
    }

    public String getNrLokalu() {
        return nrLokalu;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    public void setMiasto(String miasto) {
        this.miasto = miasto;
    }

    public void setUlica(String ulica) {
        this.ulica = ulica;
    }

    public void setKodPocztowy(String kodPocztowy) {
        this.kodPocztowy = kodPocztowy;
    }

    public void setNrLokalu(String nrLokalu) {
        this.nrLokalu = nrLokalu;
    }
}
