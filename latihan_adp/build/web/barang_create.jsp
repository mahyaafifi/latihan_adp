<%-- 
    Document   : barang_create
    Created on : Dec 15, 2018, 2:57:09 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Management</title> 
    </head>
    <body>
         <h1>Add New Product</h1>
         <form action="Product_Store" method="POST">
             id prod : <input type="text" name="idprod"><br><br>
             Name : <input type="text" name="name"><br><br>
             Stock : <input type="text" name="stok"><br><br>
             Price : <input type="text" name="price"><br><br>
             <input type="submit" value="Simpan">
         </form> 
    </body>
</html>
