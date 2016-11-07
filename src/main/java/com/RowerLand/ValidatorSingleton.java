package com.RowerLand;

/**
 * Created by Kamil on 27.10.2016.
 */
public class ValidatorSingleton {
    public static ValidatorSingleton instance = null;

    public static ValidatorSingleton GetInstance()
    {
        if(instance==null)
            instance = new ValidatorSingleton();

        return instance;
    }

    public  boolean IsDouble(String string)
    {
        try
        {
            Double.parseDouble(string);
            return true;
        }catch (Exception e)
        {
            return false;
        }
    }
}
