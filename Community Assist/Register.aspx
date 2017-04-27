<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <h1> Register </h1>
    <form id="form1" runat="server">
    <div>
        <table style="width: 415px">
            <tr>
                <td class="auto-style1">Username </td>

                <td class="auto-style1">
                   
                   
                <asp:TextBox ID="userTextBox" runat="server"></asp:TextBox></td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please Enter new user name"></asp:RequiredFieldValidator>
                <td></td>
                
                

                </tr>
                <tr>
                <td>First name </td>
                <td>
                <asp:TextBox ID="firstTextBox" runat="server"></asp:TextBox></td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Please enter your first name"></asp:RequiredFieldValidator>

                <td></td>
            </tr>
            <tr>

                <td>Last name </td>
                <td>
                    <asp:TextBox ID="lastTextBox" runat="server"></asp:TextBox></td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lastTextBox" ErrorMessage="Enter last name"></asp:RequiredFieldValidator>

                <td></td>
            </tr>
            <tr>
                <td>Email </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="EmailTextBox" ErrorMessage="Email is required"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                     ErrorMessage="Invalid Email"
                    ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                <td></td>
            </tr>
            <tr>
                <td>Password </td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox></td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="passwordTextBox" 
                    ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                <td></td>
            </tr>
            <tr>
                <td>Confirm Password </td>
                <td>
                    <asp:TextBox ID="confirmTextBox" runat="server"></asp:TextBox></td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTextbox" 
                    ErrorMessage="Password Dont match"
                    ControlToValidate="confirmTextBox"
                   ></asp:CompareValidator>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click" Text="submit" Width="102px" />
                </td>
                <td>
                    <asp:Label ID="ResultLable" runat="server" Text=""></asp:Label></td>
            </tr>

        </table>
    
    </div>
    </form>
</body>
</html>
