package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.HomeModel;


public class FStock {
    
    
    public int countStock(int productID) throws SQLException, Exception{
        int qty=0;
        HomeModel hm = new HomeModel();
        ResultSet rsPro = new HomeModel().getOneProductInfo(productID);
        while(rsPro.next()){
            if(rsPro.getInt("isPurches")==1){
                qty += rsPro.getInt("qty");
            }else{
                 qty -= rsPro.getInt("qty");
            }
            
        }
        return qty;
    }
}
