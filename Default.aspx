<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 174px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <table style="width: 318px">
            <th> Data</th>
           <tr>
             <td>  username </td>
             <td class="auto-style1">
             <asp:TextBox ID="usertextbox" runat="server" Width="148px"></asp:TextBox>
            </td>
           </tr>
            <tr>
                <td>  password </td>
                <td class="auto-style1">
                <asp:TextBox ID="passwordtextbox" runat="server" TextMode="Password" Height="24px" Width="151px"></asp:TextBox>
                </td>
            </tr>
             
            <tr>
                <td> <asp:Button ID="loginbutton" runat="server" Text="Login" Height="35px" Width="80px" OnClick="loginbutton_Click"  /> </td>
                <td class="auto-style1">
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                </td>      
            </tr>

        </table>
    </div>
    </form>
</body>
</html>
