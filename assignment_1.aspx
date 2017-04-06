<%@ Page Language="C#" AutoEventWireup="true" CodeFile="assignment_1.aspx.cs" Inherits="assignment_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <style>
body {
    background-color: palevioletred;
}

h1 {
    color: white;
    text-align: center;
}

p {
    font-family: verdana;
    font-size: 20px;
} </style> 

<head runat="server">

    <title>calculating tips</title>

</head>

<body>
    <center> 
    <form id="form1" runat="server">
        <h1> Tip Calculator</h1>
   

        <p> Meal Amount <asp:TextBox ID="MealTextBox" runat="server"></asp:TextBox> </p>
        <p> choose your percent tip 
            <br />

            <asp:RadioButtonList ID="TipPercentsRadioButtonList" runat="server" Height="73px" Width="94px">
           
                </asp:RadioButtonList>
           
            <br />
            <p> other </p>
            <asp:TextBox ID="othertextbox" runat="server"></asp:TextBox>

            <br />
            <asp:Button ID="submitbutton" runat="server" Text="submit" OnClick="submitbutton_Click" Height="21px" Width="109px" />
            &nbsp;&nbsp;
        <br />
&nbsp;<br />

            <asp:Label ID="resultlable" runat="server" Text="Label"></asp:Label>


  
    </form>
        </center>
</body>
</html>
