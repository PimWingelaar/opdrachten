using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Opdracht_4 : System.Web.UI.Page
{
    protected void SelectionChanged(object sender, EventArgs e)
    {
        //Als je iets verandert op de kalender dan verandert het direct mee en verandert het naar een string en dan naar de label.
        lbDatum.Text = kalVerjaardag.SelectedDate.ToShortDateString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLeeftijd_Click(object sender, EventArgs e)
    {
        //De variable now zoekt de datum van de computer op en slaat hem tijdelijk op
        DateTime now = DateTime.Today;
        //De int bday selecteert de jaar die uw heeft geselecteert hebt op de kalender
        int bday = kalVerjaardag.SelectedDate.Year;
        int age = now.Year - bday;
        //Zet de int terug naar een string en zet de tekst in de label lbLeeftijd.
        lbLeeftijd.Text = age.ToString();
    }

    protected void litVandaag_Load(object sender, EventArgs e)
    {
        DateTime ezel = DateTime.Today;
        litVandaag.Text = ezel.ToShortDateString();
    }

    protected void litTijd_Load(object sender, EventArgs e)
    {
        DateTime tijd = DateTime.UtcNow.AddHours(1);
        litTijd.Text = tijd.ToShortTimeString();
    }

    protected void btnVervers_Click(object sender, EventArgs e)
    {
        DateTime daysLeft = DateTime.Parse("12/04/2017 12:00:01 AM");
        DateTime startDate = DateTime.Now;
        TimeSpan t = daysLeft - startDate;

        double uren = t.Days;
        double uren1 = uren * 24;
        double minuten = t.Minutes;
        double seconden = t.Seconds;
        LitUren.Text = Convert.ToString(uren1);
        LitMinuten.Text = Convert.ToString(minuten);
        litSeconden.Text = Convert.ToString(seconden);
    }
}