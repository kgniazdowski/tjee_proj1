package com.RowerLand.controller;

import com.RowerLand.model.Producent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

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
            if(producent.getNazwa().equals(name))
                return producent;
        }
        return new Producent();
    }

    public void DeleteProducent(final String name)
    {
        //Works with java 8
        list.removeIf(s -> s.getNazwa().contains(name));
        /*Iterator<Producent> it = list.iterator();
        while(it.hasNext())
        {
            Producent producent = it.next();
            if(producent.getNazwa().equals(name))
                it.remove();
        }*/
    }

    public void UpdateProducent(String name, Producent modifiedProducent)
    {
        Iterator<Producent> it = list.iterator();
        while(it.hasNext())
        {
            Producent producent = it.next();
            if(producent.getNazwa().equals(name))
            {
                producent.setNazwa(modifiedProducent.getNazwa());
                producent.setNrLokalu(modifiedProducent.getNrLokalu());
                producent.setMiasto(modifiedProducent.getMiasto());
                producent.setKodPocztowy(modifiedProducent.getKodPocztowy());
                producent.setUlica(modifiedProducent.getUlica());
            }
        }
    }

    public List<Producent> GetList()
    {
        return list;
    }
}
