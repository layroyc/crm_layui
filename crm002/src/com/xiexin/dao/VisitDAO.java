package com.xiexin.dao;

import com.xiexin.bean.Visit;
import com.xiexin.util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class VisitDAO  {

    // 新增
    public int addVisit(Visit visit){
        // 第一:创建链接对象
        Connection connection = DBHelper.getConnection();
        // 第二: sql 语句 , 因为 填加 的数据是变量 , 所以要用问题代替
        String sql = " insert into t_visit values ( null, ? , ? , ? ,? , ? ) ";
        PreparedStatement ps =null;
        int i = 0;
        try {
            // 第三部:预编译 sql
            ps = connection.prepareStatement(sql);
            ps.setInt(1,visit.getUser_id());
            ps.setInt(2,visit.getCust_id());
            ps.setString(3,visit.getVisit_desc());
            ps.setString(4,visit.getVisit_time());
            ps.setString(5,visit.getCreate_time());
            // 第四部,执行 预编译对象
            i = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return i;
    }


}
