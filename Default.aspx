﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Top.master" %>
<%@ Import namespace="System.Data" %>

<script runat="server">

</script>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <center>
        <%
            if((string)Session["login"] != "in")
                Response.Redirect("Login.aspx");
            string sql = "";
            Dal dal = new Dal();
            sql = "select * from tblshops";
            DataTable dt = dal.GetDataTable(sql);
        %>
        <br /><br />
        <table cellspacing="70">
            <%
                foreach (DataRow row in dt.Rows)
                {
                    %>
                    <tr><td><img src=<%=row[0].ToString() %> style="height: 150px; width: 150px" /></td>
                    <td><h4>Name : <%=row[1].ToString()%></h4></td>
                    <td><h4><img src="Images/like.png" style="height: 30px; width: 30px" /><%=row[2].ToString()%></h4></td>
                    <td><h4><img src="Images/dislike.png" style="height: 30px; width: 30px" /><%=row[3].ToString()%></h4></td>
                    <%
                }
            %>
        </table>
    </center>
</asp:Content>

