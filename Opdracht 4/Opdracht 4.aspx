<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Opdracht 4.aspx.cs" Inherits="Opdracht_4" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
        .auto-style2 {
            width: 350px;
        }
        #countdown {
            background-color: grey;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Selecteer een datum in de kalender</h1>
        <asp:Calendar ID="kalVerjaardag" OnSelectionChanged="SelectionChanged" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" style="margin-left: 0px" Width="220px" VisibleDate="1995-01-05" SelectedDate="1995-01-01">
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
        <asp:Label ID="lbDatum" ForeColor ="#5882FA" runat="server" Text="1-1-1995"></asp:Label>
        <br />
        <br />
        U bent nu<br />
        <br />
        <asp:Label ID="lbLeeftijd" ForeColor ="#5882FA" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnLeeftijd" runat="server" OnClick="btnLeeftijd_Click" Text="Bereken leeftijd" />
        <br />
    </div>
    <br />
    <div id="countdown">
        <h1 class="auto-style1">Het aftellen is begonnen</h1>
        <p>Het is vandaag:</p>
        <asp:Literal ID="litVandaag" runat="server" OnLoad="litVandaag_Load"></asp:Literal>
        <br />
        <br />
        Het is nu:<br />
        <br />
        <asp:Literal ID="litTijd" runat="server" OnLoad="litTijd_Load"></asp:Literal>
        <br />
        <br />
        <h2>Waarneer is het Pasen?</h2>
        <table class="auto-style2">
            <tr>
                <td>Het duurt nog</td>
                <td></td>
            </tr>
            <tr id="3">
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnVervers" runat="server" Text="Verversen" OnClick="btnVervers_Click"/>
        </div>
       </form>
    </body>
</html>
