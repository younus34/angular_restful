/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.Date;

/**
 *
 * @author Younus
 */
public class Meats {
    
     private int pid;
    private String pname;
     private int qty;
    private double pprice;
     private double sprice;
      private Date pdate;

    public Meats() {
    }

    public Meats(int pid, String pname, int qty, double pprice, double sprice, Date pdate) {
        this.pid = pid;
        this.pname = pname;
        this.qty = qty;
        this.pprice = pprice;
        this.sprice = sprice;
        this.pdate = pdate;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public double getPprice() {
        return pprice;
    }

    public void setPprice(double pprice) {
        this.pprice = pprice;
    }

    public double getSprice() {
        return sprice;
    }

    public void setSprice(double sprice) {
        this.sprice = sprice;
    }

    public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }
      
      
    
    
}
