<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                       <asp:panel ID="pnlopdracht" runat="server" Visible="false" >
            <div>
                <h1>    Wie ben je?</h1>
                Vul de onderstaande vragen.
            </div>
            <table class="auto-style2">
                <tr>
                    <td>Naam</td>
                    <td>
                        <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Geslacht</td>
                    <td>
                        <asp:RadioButtonList ID="rbGeslacht" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Value="M">Man</asp:ListItem>
                            <asp:ListItem Value="V">Vrouw</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Hobby</td>
                    <td>
                        <asp:CheckBoxList ID="chkHobby" runat="server">
                            <asp:ListItem Value="1">Gamen</asp:ListItem>
                            <asp:ListItem Value="2">Programmeren</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td>Opleiding</td>
                    <td>
                        <asp:DropDownList ID="cbOpleiding" runat="server">
                            <asp:ListItem Value="1">VMBO</asp:ListItem>
                            <asp:ListItem Value="2">HAVO</asp:ListItem>
                            <asp:ListItem Value="3">VWO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnMaakKaart" runat="server" Text="Maak persoon aan" OnClick="btnMaakKaart_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br>
        </asp:panel>
<asp:RadioButtonList ID="rbBeslist" runat="server" OnSelectedIndexChanged="rbBeslist_SelectedIndexChanged" RepeatDirection="Vertical" AutoPostBack="True">
                        <asp:ListItem Value="1">Laat formulier zien</asp:ListItem>
                        <asp:ListItem Value="2">Verberg formulier</asp:ListItem>
                    </asp:RadioButtonList>
    </form>
</body>
</html>
