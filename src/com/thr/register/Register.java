package com.thr.register;

import com.thr.dao.DAO;

public class Register {

    private Register(){
    }

    public static boolean createUsr(String name, String pwd){
        return DAO.createUsr(name,pwd);
    }

}
