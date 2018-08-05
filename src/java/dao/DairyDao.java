/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Dairy;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.DBConnect;

/**
 *
 * @author Younus
 */
public class DairyDao {

    public List<Dairy> getAllDairyProduct() {

        List<Dairy> list = new ArrayList<>();

        try {
            ResultSet rs = DBConnect.getConnection().createStatement().executeQuery("select * from dairy");
            while (rs.next()) {
                list.add(new Dairy(rs.getInt("pid"), rs.getString("pname"), rs.getInt("qty"), rs.getDouble("pprice"), rs.getDouble("sprice"), rs.getDate("pdate")));

            }

            return list;

        } catch (SQLException ex) {
            Logger.getLogger(DairyDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }

    public Dairy SaveDairyProduct(Dairy p) {

        String sql = "insert into dairy(pname,qty,pprice,sprice,pdate) values('" + p.getPname() + "','" + p.getQty() + "','" + p.getPprice() + "','" + p.getSprice() + "','" + p.getPdate() + "')";
        try {
            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return p;

            }

        } catch (SQLException ex) {
            Logger.getLogger(DairyDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public Dairy UpdateDairyProduct(Dairy p) {
        System.out.println(p.getPprice());

        String sql = "update dairy set pname='" + p.getPname()+ "',qty='" + p.getQty() + "',pprice='" + p.getPprice() + "',sprice='" + p.getSprice() + "',pdate='" + p.getPdate() + "',where pid='" + p.getPid() + "'";
        try {
            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return p;

            }

        } catch (SQLException ex) {
            Logger.getLogger(DairyDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public boolean DeleteDairyProduct(int id) {

        String sql = "delete from dairy where pid='" + id + "'";
        try {
            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return true;

            }

        } catch (SQLException ex) {
            Logger.getLogger(DairyDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;
    }

    public Dairy getDairyProduct(int id) {

        Dairy p = new Dairy();

        try {
            ResultSet rs = DBConnect.getConnection().createStatement().executeQuery("select * from dairy where pid='" + id + "'");
            while (rs.next()) {
                p.setPid(rs.getInt("pid"));
                p.setPname(rs.getString("pname"));
                p.setQty(rs.getInt("qty"));
                p.setPprice(rs.getDouble("pprice"));
                p.setSprice(rs.getDouble("sprice"));
                p.setPdate(rs.getDate("pdate"));
            }

            return p;

        } catch (SQLException ex) {
            Logger.getLogger(DairyDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }

}
