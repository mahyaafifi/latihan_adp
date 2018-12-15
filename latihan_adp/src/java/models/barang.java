package models;
import config.koneksi;
import java.sql.*;
/**
 *
 * @author asus
 */
public class barang {
koneksi kon = new koneksi();
String idprod, name;
int stock, price;
public String getidprod(){return idprod;}
public String getname(){return name;}
public int getstock(){return stock;}
public int getprice(){return price;}

public void setidprod(String idprod){this.idprod=idprod;}
public void setname(String name){this.name=name;}
public void setstock(int stock){this.stock=stock;}
public void setprice(int price){this.price=price;}

public ResultSet readAll(){
try
{
Connection con = kon.openConnection();
String sql = "select from tbl_barang";
Statement state = con.createStatement();
ResultSet rs = state.executeQuery(sql);
return rs;
}catch (Exception e){
System.err.println(e);
return null;
}
}
public int store(){
try{
Connection con = kon.openConnection();
String sql = "insert tbl_barang values(?,?,?,?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, this.idprod);
ps.setString(2, this.name);
ps.setInt(3, this.stock);
ps.setInt(4, this.price);
int res = ps.executeUpdate();
return res;
}catch (Exception e) {
    System.err.println(e);
    return 0;
} 
}
public ResultSet readByID() {
try{
    Connection con = kon.openConnection();
    String sql = "select * from tbl_barang where idprod = ?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, this.idprod);
    ResultSet rs = ps.executeQuery();
    return rs; 
} catch (Exception e) {
    System.err.println(e);
    return null;
} }
public int update() {
try {
    Connection con = kon.openConnection();
    String sql = "update produk set nama=?, stok=?, price=? where idprod=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, this.name);
    ps.setInt(2, this.stock);
    ps.setInt(3, this.price);
    ps.setString(4, this.idprod);
    int res = ps.executeUpdate();
    return res;
}catch (Exception e) {
    System.err.println(e);
    return 0;
} 
}
public int destroy() { 
try
{          
   Connection con = kon.openConnection();
   String sql = "delete from tbl_barang where idprod = ?";
   PreparedStatement ps = con.prepareStatement(sql);
   ps.setString(1, this.idprod);
   int res = ps.executeUpdate();
   return res;
} catch (Exception e) {
    System.err.println(e);
    return 0;
}
    }

    public void setPrice(int parseInt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
