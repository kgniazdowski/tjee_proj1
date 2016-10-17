package com.RowerLand.controller;

import com.RowerLand.model.Rower;
import java.util.ArrayList;
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
}
