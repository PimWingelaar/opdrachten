<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Opdracht 3.aspx.cs" Inherits="Opdracht_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Selecteer een datum in de kalender</h1>
        <asp:Calendar ID="kalVerjaardag" OnSelectionChanged="SelectionChanged" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" style="margin-left: 0px" Width="220px" VisibleDate="1995-01-05">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <br />
        U heeft de onderstaande datum geselecteerd:<br />
        <br />
        <asp:Label ID="lbDatum" ForeColor ="#5882FA" runat="server" Text=""></asp:Label>
        <br />
        <br />
        U bent nu<br />
        <br />
        <asp:Label ID="lbLeeftijd" ForeColor ="#5882FA" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnLeeftijd" runat="server" OnClick="btnLeeftijd_Click" Text="Bereken leeftijd" />
    </div>
    </form>
</body>
</html>
