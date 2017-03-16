using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rekenmachine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnOptel_Click(object sender, EventArgs e)
    {
        // Je maakt meerdere variables met de namen , get1,get2 en uitkomst.
        // De inhoud van de textvakken van getal wordt geconvert naar getallen want het is tekst eerst.
        double get1 = Convert.ToDouble(txtGetal1.Text);
        double get2 = Convert.ToDouble(txtGetal2.Text);
        // Hier wordt de uitkomst berekent voor de rekenmachine.
        double uitkomst = get1 + get2;
        // De uitkomst van hierboven wordt geconvert naar tekst.
        txtUitkomst.Text = Convert.ToString(uitkomst);
    }

    protected void btnAftrek_Click(object sender, EventArgs e)
    {
        // Je maakt meerdere variables met de namen , get1,get2 en uitkomst.
        // De inhoud van de textvakken van getal wordt geconvert naar getallen want het is tekst eerst.
        double get1 = Convert.ToDouble(txtGetal1.Text);
        double get2 = Convert.ToDouble(txtGetal2.Text);
        // Hier wordt de uitkomst berekent voor de rekenmachine.
        double uitkomst = get1 - get2;
        // De uitkomst van hierboven wordt geconvert naar tekst.
        txtUitkomst.Text = Convert.ToString(uitkomst);
    }

    protected void txtTelefoon_TextChanged(object sender, EventArgs e)
    {

    }
}