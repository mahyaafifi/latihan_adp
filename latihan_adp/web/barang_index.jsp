<%-- 
    Document   : barang_index
    Created on : Dec 15, 2018, 4:09:10 PM
    Author     : asus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product management</title>
    </head>
    <body>
         <h1>List All Product</h1>
         <a href="http://<% out.println(request.getServerName());%>:8080/latihan_adp /barang_create">+ Add barang</a><br><br>
         <table border="1" cellpadding="10" cellspacing="0">
             <thead>
                 <tr>
                     <th>id Product</th>
                     <th>name</th>
                     <th>stock</th>
                     <th>price</th>
                     <th>action</th>
                 </tr>
             </thead>
             <tbody>
                 <%
                     ResultSet rs = (ResultSet) request.getAttribute("data");
    if (rs!=null) {
        while(rs.next()){
            %>
            <tr> 
                <td><% out.println(rs.getString(1)); %></td>
                <td><% out.println(rs.getString(2)); %></td>
                <td><% out.println(rs.getInt(3)); %></td>
                <td><% out.println(rs.getInt(4)); %></td>
                <td>
                    <a href="http://<% out.println(request.getServerName());
                       %>:8080/latihan_adp/barang_edit?idprod=<% out.println(rs.getString(1)); %>">Edit</a>
                    | <a href="http://<% out.println(request.getServerName());
                    %>:8080/latihan_adp /barang_destroy?idprod=<% out.println(rs.getString(1)); %>">Delete</a>
                 </td>
                 </tr>
                  <%}       
}              
%>             
             </tbody>         
         </table>         
<br>            
<%                 
    String message = request.getParameter("message");
    if (message!=null) {
        if (message.equals("inputsuccess")) { 
        out.println("Status: Berhasil input data baru.");
        } else if(message.equals("inputfailed")){
            out.println("Status: Gagal input data baru.");
        } else if(message.equals("updatesuccess")){
            out.println("Status: Berhasil mengubah data.");  
        } else if(message.equals("updatefailed")){ 
            out.println("Status: Gagal mengubah data.");
        } else if(message.equals("destroysuccess")){   
            out.println("Status: Berhasil menghapus data."); 
        } else if(message.equals("destroyfailed")){ 
            out.println("Status: Gagal menghapus data."); 
        }
    } 
%>   
    </body>
</html>
