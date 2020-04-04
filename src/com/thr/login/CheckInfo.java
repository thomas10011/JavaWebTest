package com.thr.login;

import com.thr.dao.DAO;
import com.thr.dao.UserInfo;

public class CheckInfo {
    //这个静态方法用于检查用户名密码是否正确
    public static boolean CheckInfo(String postedName, String postedPwd){
        UserInfo ui = DAO.getUsrInfo(postedName);
        if(ui != null){
            //不为空检查密码
            return postedPwd.equals(ui.getPwd());
        }
        //为空返回假
        return false;
    }




}
