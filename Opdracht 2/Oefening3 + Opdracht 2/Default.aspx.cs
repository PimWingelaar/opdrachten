using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { }
    protected void btnMaakKaart_Click(object sender, EventArgs e)
    {
        // Het maken van de variabelen die ik ga gebruiken.
        string Naam, Geslacht, Opleiding, Hobby;
        // Naam wordt de inhoud van de textbox van de id txtNaam.
        Naam = txtNaam.Text;
        // Geslacht wordt gekozen door de gekozen rondje van de id rbGeslacht.
        Geslacht = rbGeslacht.SelectedValue;
        // Opleiding wordt gekozen door de gekozen vierkantje van de id cbOpleiding.
        Opleiding = cbOpleiding.SelectedValue;
        // Hobby wordt gekozen door de value 1(Gamen of 2(Programmeren) en wordt een zin van gemaakt.
        Hobby = "Hobby: ";
        if (chkHobby.SelectedValue == "1")
        {
            Hobby += "Gamen ";
        }
        if (chkHobby.SelectedValue == "2")
        {
            Hobby += "Programmeren ";
        }
        // Hier wordt de infomatie geschreven die je hebt ingevoerd.
        Response.Write("Naam: " + Naam + "<br />");
        Response.Write(Hobby + "<br />");
        Response.Write("Opleiding: " + Opleiding + "<br />");
        Response.Write("Geslacht: " + Geslacht + "<br />");
    }


    protected void rbBeslist_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Er wordt gecheckt welke knop er is gekozen en daarmee wordt de panel gezien.
        if (rbBeslist.SelectedValue == "1")
        {
            pnlopdracht.Visible = true;
        }
        else
        {
            pnlopdracht.Visible = false;
        }
    }
}