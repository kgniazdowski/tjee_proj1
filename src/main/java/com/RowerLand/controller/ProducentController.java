package com.RowerLand.controller;

import com.RowerLand.model.Producent;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Kamil on 17.10.2016.
 */
public class ProducentController {

    private List<Producent> list = new ArrayList<Producent>();

    public void AddProducent(Producent producent)
    {
        list.add(producent);
    }

    public List<Producent> GetList()
    {
        return list;
    }
}
