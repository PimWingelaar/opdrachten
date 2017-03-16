<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rekenmachine.aspx.cs" Inherits="Rekenmachine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 31%;
        }
        .auto-style2 {
            width: 619px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblGetal1" runat="server" Text="Getal 1"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtGetal1" runat="server"></asp:TextBox>
                    *<asp:RequiredFieldValidator ID="rfvGetal1" runat="server" ControlToValidate="txtGetal1" ErrorMessage="Vul getal 1 in!"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtGetal1" Type="Integer" MinimumValue="1" MaximumValue="100" ErrorMessage="Tussen de 1 en 100"></asp:RangeValidator>
                </td>
                <td>
                    <asp:Button ID="btnOptel" runat="server" Text="Optellen" OnClick="btnOptel_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblGetal2" runat="server" Text="Getal 2"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtGetal2" runat="server"></asp:TextBox>
                    *<asp:RequiredFieldValidator ID="rfvGetal2" runat="server" ControlToValidate="txtGetal2" ErrorMessage="Vul getal 2 in!"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtGetal2" Type="Integer" MinimumValue="1" MaximumValue="100" ErrorMessage="Tussen de 1 en 100"></asp:RangeValidator>
                </td>
                <td>
                    <asp:Button ID="btnAftrek" runat="server" Text="Aftrekken" OnClick="btnAftrek_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblUitkomst" runat="server" Text="Uitkomst"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUitkomst" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Getal 1 is niet gelijk aan Getal 2." ControlToCompare="txtGetal2" ControlToValidate="txtGetal1"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:TextBox ID="txtTelefoon" runat="server" OnTextChanged="txtTelefoon_TextChanged"></asp:TextBox>
    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Telefoonnummer niet juist" ControlToValidate="txtTelefoon" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    </form>
</body>
</html>
