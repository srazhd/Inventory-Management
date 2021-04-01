package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class HomeModel {
    private Statement stmnt = null;
    public boolean insertintoProduct(String pName, String pDes) throws Exception{
        DatabaseAccess.connectToMySql();
        String sql = "insert into product(pName,pDes) values(?,?)";
        PreparedStatement s = DatabaseAccess.connection.prepareStatement(sql);
        s.setString(1, pName);
        s.setString(2, pDes);
        
        
        int i = s.executeUpdate();
        
        if (i == 1){
            return true;
        }
        else{
            return false;
        }
    }
    public ResultSet getProductInfo() throws Exception{
        DatabaseAccess.connectToMySql();
        stmnt = DatabaseAccess.connection.createStatement();
        String sql = "select * from product";
        return stmnt.executeQuery(sql);
    }
    
        public boolean purchesSell(int isPurches,int pID, int qty) throws Exception{
        DatabaseAccess.connectToMySql();
        String sql = "insert into purchesselltabel(isPurches,pID,qty) values(?,?,?)";
        PreparedStatement s = DatabaseAccess.connection.prepareStatement(sql);
        s.setInt(1, isPurches);
        s.setInt(2, pID);
        s.setInt(3, qty);
        
        
        int i = s.executeUpdate();
        
        if (i == 1){
            return true;
        }
        else{
            return false;
        }
    }
        
    public ResultSet getPurchesSellInfo() throws Exception{
        DatabaseAccess.connectToMySql();
        stmnt = DatabaseAccess.connection.createStatement();
        String sql = "select * from purchesselltabel";
        return stmnt.executeQuery(sql);
    }
    public ResultSet getOneProductInfo(int i) throws Exception{
        DatabaseAccess.connectToMySql();
        stmnt = DatabaseAccess.connection.createStatement();
        String sql = "select * from purchesselltabel where pID ="+i;
        return stmnt.executeQuery(sql);
    }
}
