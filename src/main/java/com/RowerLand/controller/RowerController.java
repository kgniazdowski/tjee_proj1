package com.RowerLand.controller;

import com.RowerLand.model.Rower;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Kamil on 17.10.2016.
 */
public class RowerController {

    private List<Rower> list = new ArrayList<Rower>();

    public void AddRower(Rower rower)
    {
        list.add(rower);
    }

    public List<Rower> GetList()
    {
        return list;
    }

    public void DeleteRower(final String name)
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

    public Rower FindRowerByName(String name)
    {
        for(Rower rower : list)
        {
            if(rower.getNazwa().equals(name))
                return rower;
        }
        return new Rower();
    }

    public void UpdateRower(String name, Rower modifiedRower)
    {
        System.out.println("JESTESM@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2");
        Iterator<Rower> it = list.iterator();
        while(it.hasNext())
        {
            Rower rower = it.next();
            System.out.println("Nazwa:" + rower.getNazwa());
            if(rower.getNazwa().equals(name))
            {
                rower.setNazwa(modifiedRower.getNazwa());
                rower.setCena(modifiedRower.getCena());
                rower.setWielkoscKola(modifiedRower.getWielkoscKola());
                rower.setProducent(modifiedRower.getProducent());
            }
        }
    }
}
