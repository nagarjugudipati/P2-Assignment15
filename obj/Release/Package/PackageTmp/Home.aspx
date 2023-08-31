<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebAppAssignment15.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <body>
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>Calculator</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Enter First Number</td>
                    <td>
                        <asp:TextBox ID="TxtNumOne" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Enter Second Number</td>
                    <td>
                        <asp:TextBox ID="TxtNum2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblErrorMessage" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="BtnDivision" runat="server" OnClick="BtnDivision_Click" Text="Divide" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnRedirect" runat="server" OnClick="BtnRedirect_Click" Text="RR" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>

</html>
