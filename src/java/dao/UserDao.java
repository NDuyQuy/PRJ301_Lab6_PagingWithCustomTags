package dao;

import java.sql.*;
import java.util.*;
import model.DummyTBL;

public class UserDao {
    private static final String SQL = "SELECT * FROM [DummyTBL]";
    
    public static List<DummyTBL> getList(){
        ArrayList<DummyTBL> list = new ArrayList<>();
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try(Connection con = SQLConnection.getConnection()){
           ptm=con.prepareStatement(SQL);
           rs=ptm.executeQuery();
           while(rs.next()){
               int id = rs.getInt("ID");
               String name = rs.getString("Name");
               DummyTBL dtbl = new DummyTBL(id, name);
               list.add(dtbl);
           }
       }catch(Exception e ){
           e.printStackTrace();
       }
        return list;
    }
    public static void main(String[] args) {
    }
}
