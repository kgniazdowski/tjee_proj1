package com.RowerLand.controller;

import com.RowerLand.model.Producent;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Kamil on 17.10.2016.
 */
public class ProducentController {

    private List<Producent> list;

    public ProducentController()
    {
        list = new ArrayList<Producent>();
    }

    public void AddProducent(Producent producent)
    {
        Producent newProducent = new Producent();
        newProducent.setNazwa(producent.getNazwa());
        newProducent.setMiasto(producent.getMiasto());
        newProducent.setKodPocztowy(producent.getKodPocztowy());
        newProducent.setNrLokalu(producent.getNrLokalu());
        newProducent.setUlica(producent.getUlica());
        list.add(newProducent);
    }

    public Producent FindProducentByName(String name)
    {
        for(Producent producent : list)
        {
            if (producent.getNazwa().equals(name))
                return producent;
        }
        return new Producent();
    }

    public List<Producent> GetList()
    {
        return list;
    }
}
