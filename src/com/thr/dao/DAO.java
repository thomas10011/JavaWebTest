package com.thr.dao;

import java.sql.*;
import java.util.*;

public class DAO {
    //定义要访问的数据库的名称
    //MySQL8.0以上版本com.mysql.jdbc.Driver 更换为 com.mysql.cj.jdbc.Driver。
    protected static String dbCLassName = "com.mysql.cj.jdbc.Driver";
    //8.0以上版本的连接
    protected static String dbUrl = "jdbc:mysql://localhost:3306/myusr?useSSL=false&serverTimezone=UTC";

    protected static String dbUser = "root";
    protected static String dbPwd = "19991119+thr";

    protected static String second = null;

    //数据库连接对象
    public static Connection conn = null;

    private DAO(){
        //封闭构造方法，禁止构造对象
    }


    //初始化时进行数据库连接
    static {
        try{
            Class.forName(dbCLassName);
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPwd);
            System.out.println("excuted");

        }
        catch (Exception ee){
            ee.printStackTrace();
        }
    }
    //查询并返回一个用户对象
    public  static UserInfo getUsrInfo(String name){
        ResultSet set = findForResultSet("select * from usrinfo where name='" + name + "'");
        UserInfo ui = null;
        try {
            if(set.next()){
                ui = new UserInfo();
                ui.setName(set.getString("name").trim());
                ui.setPwd(set.getString("password").trim());
            }

        }
        catch (NullPointerException ee){
            ee.printStackTrace();
        }
        catch (Exception ee){
            ee.printStackTrace();
        }
        return  ui;
    }

    //用于数据库查询
    public  static  ResultSet findForResultSet(String sql){
        if(conn == null){
            return null;
        }
        //获取系统当前时间
        long time = System.currentTimeMillis();
        ResultSet rs = null;

        try{
            Statement st = null;
            st = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            rs = st.executeQuery(sql);
            second = ((System.currentTimeMillis() - time) / 1000d) + "";
        }
        catch (Exception ee){
            ee.printStackTrace();
        }
        return  rs;
    }

}
