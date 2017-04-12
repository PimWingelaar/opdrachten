<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 10%;
            height: 390px;
            background-color : aquamarine;
            border-radius: 4px;
        }
        .auto-style3 {
            width: 84px;
        }
        #txtScherm{
            background-color: lightseagreen;
            color : white;
            border-radius: 6px;
            padding-left : 8px;
        }
        .btn{
            border-radius: 8px;
            background-color: cadetblue;
            color: white;
        }
        .btn:hover{
            background-color: cyan;
        }
        .Uitkomst{
            position: relative;
            padding-bottom: 50px;
        }
    </style>
</head>
<body><center>

    <form id="form1" runat="server">
        <h1>Rekenmachine van Pim Wingelaar en Rens!</h1>
        <table class="auto-style2">
            <tr>
                <td colspan="5">
                    <asp:TextBox ID="txtScherm" ReadOnly="true" runat="server" Height="64px" Width="517px" Font-Size="20"></asp:TextBox><asp:Label ID="Label1" runat="server" CssClass="Uitkomst" Text="" Visible="false"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn7" CssClass="btn" runat="server" Height="70px" Text="7" Width="100px" Font-Size="20pt" OnClick="btn7_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btn8" CssClass="btn" runat="server" Text="8" Height="70px" Width="100px" Font-Size="20" OnClick="btn8_Click"/>
                </td>
                <td>
                    <asp:Button ID="btn9" CssClass="btn" runat="server" Text="9" Height="70px" Width="100px" Font-Size="20pt" OnClick="btn9_Click" />
                </td>
                <td>
                    <asp:Button ID="btnC" CssClass="btn" runat="server" Text="C" Height="70px" Width="100px" Font-Size="20" OnClick="btnC_Click" />
                </td>
                <td>
                    <asp:Button ID="btnBack" CssClass="btn" runat="server" Text="Back" Height="70px" Width="100px" Font-Size="20" OnClick="btnBack_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn4" CssClass="btn" runat="server" Text="4" Height="70px" Width="100px" Font-Size="20" OnClick="btn4_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btn5" CssClass="btn" runat="server" Text="5" Height="70px" Width="100px" Font-Size="20" OnClick="btn5_Click" />
                </td>
                <td>
                    <asp:Button ID="btn6" CssClass="btn" runat="server" Text="6" Height="70px" Width="100px" Font-Size="20" OnClick="btn6_Click" />
                </td>
                <td>
                    <asp:Button ID="btnPlus" CssClass="btn" runat="server" Text="+" Height="70px" Width="100px" Font-Size="20" OnClick="btnPlus_Click" />
                </td>
                <td>
                    <asp:Button ID="btnM2" CssClass="btn" runat="server" Text="M2" Height="70px" Width="100px" Font-Size="20" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn1" CssClass="btn" runat="server" Text="1" Height="70px" Width="100px" Font-Size="20" OnClick="btn1_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btn2" CssClass="btn" runat="server" Text="2" Height="70px" Width="100px" Font-Size="20" OnClick="btn2_Click"  />
                </td>
                <td>
                    <asp:Button ID="btn3" CssClass="btn" runat="server" Text="3" Height="70px" Width="100px" Font-Size="20" OnClick="btn3_Click"  />
                </td>
                <td>
                    <asp:Button ID="btnMin" CssClass="btn" runat="server" Text="-" Height="70px" Width="100px" Font-Size="20" OnClick="btnMin_Click" />
                </td>
                <td>
                    <asp:Button ID="btnO1" CssClass="btn" runat="server" Text="O1" Height="70px" Width="100px" Font-Size="20" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btn0" CssClass="btn" runat="server" Text="0" Height="70px" Width="205px" Font-Size="20"  OnClick="btn0_Click"/>
                </td>
                <td>
                    <asp:Button ID="btnPunt" CssClass="btn" runat="server" Text="." Height="70px" Width="100px" Font-Size="20" OnClick="btnPunt_Click" />
                </td>
                <td>
                    <asp:Button ID="btnIs" CssClass="btn" runat="server" Text="=" Height="70px" Width="100px" Font-Size="20" OnClick="btnIs_Click" />
                </td>
                <td>
                    <asp:Button ID="btnO2" CssClass="btn" runat="server" Text="O2" Height="70px" Width="100px" Font-Size="20" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lGetal1" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lBereken" runat="server" Text="" Visible="false"></asp:Label>
    </form>
</center></body>
</html>