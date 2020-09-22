<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            font-family: Algerian;
            font-size: x-large;
            width: 172px;
        }
        .auto-style7 {
            font-family: Algerian;
            font-size: x-large;
            width: 172px;
            height: 57px;
        }
        .auto-style8 {
            height: 57px;
        }
        .auto-style9 {
            font-family: Algerian;
            font-size: x-large;
            width: 172px;
            height: 50px;
        }
        .auto-style10 {
            height: 50px;
        }
        </style>
</head>
    <body background="Images/sunny.jpg" style="font-family: 'Arial Black'" >
    <%
        string msg = "";
        if (Request["finish"] != null)
        {
            string reqfirstname = Request["firstname"];
            string reqlastname = Request["lastname"];
            string requsername = Request["username"];
            string reqpassword = Request["password"];
            string reqemail = Request["email"];
            string reqage = Request["age"];
            string reqgender = Request["gender"];
            if (reqfirstname != "" && reqlastname != "" && requsername != "" && reqpassword != "" && reqemail != "" && reqage != "")
            {
                string sql = string.Format("insert into tblusers values ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', {7})", requsername, reqpassword, reqemail, reqage, reqgender, reqfirstname, reqlastname,0);
                Dal dal = new Dal();
                dal.InsertUpdateDelete(sql);
                Response.Redirect("Login.aspx");
            }
            else
            {
                msg = " Input Invalid !!!";
            }
        }
         %>
      <center style="height: 577px">
         <form id="form1">
             <div>
                  <img src="Images/Wearther Logo r.gif" style="height: 474px; width: 535px" />
                  <br />
                  <table style="width: 488px">
                       <tr>
                           <td class="auto-style3">Firstname:</td>
                           <td><input type="text" name="firstname" style="width: 297px; height: 45px; font-family: Arial; font-size: x-large; color: #000000;" /></td>
                       </tr>
                       <tr>
                           <td class="auto-style3">Lastname:</td>
                           <td><input type="text" name="lastname" style="width: 297px; height: 45px; font-family: Arial; font-size: x-large; color: #000000;" /></td>
                        </tr> 
                        <tr>
                           <td class="auto-style3">Username:</td>
                           <td><input type="text" name="username" style="width: 297px; height: 45px; font-family: Arial; font-size: x-large; color: #000000;" /></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">Password:</td>
                            <td><input type="password" name="password" style="height: 45px; width: 297px; font-family: Arial; font-size: x-large;" size="20" /></td>    
                        </tr>
                        <tr>
                            <td class="auto-style3">Email:</td>
                            <td><input type="email" name="email" style="height: 45px; width: 297px; font-family: Arial; font-size: x-large;" size="20" /></td>           
                        </tr>
                        <tr>
                            <td class="auto-style3">Age:</td>
                            <td><input type="number" name="age" style="height: 45px; width: 297px; font-family: Arial; font-size: x-large; margin-bottom: 2px;"  /></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Gender:</td>
                            <td colspan="2" class="auto-style8"> 
                            <select name="gender" style="height: 45px; width: 301px; font-size: xx-large; font-family: Arial; text-align: justify">
                            <option value="1">Male</option>  
                            <option value="2">Female</option>  
                            </select ></td>                            
                        </tr>
                        <tr>
                            <br /><br />
                            <td colspan="2"><input type="submit" name="finish"  value="Register" style="height: 55px; width: 260px; font-size: x-large; font-family: Algerian; color: #990000; background-color: #CC3300;"/></td>    
                        </tr>
                        <tr>        
                            <td colspan="2"><h2 style="color:red"><%=msg %></h2> </td>
                        </tr>
                    </table>
                    <br /><br />
                    <br />
                    <table>
                        <tr>
                            <td>&nbsp;</td>        
                        </tr>
                    </table>
                    <br />
                 </div>
            </form>
        </center>
    </body>
</html>
