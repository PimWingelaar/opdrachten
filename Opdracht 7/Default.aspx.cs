using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnMaakSom_Click(object sender, EventArgs e)
    {


        int max = Int32.Parse(txtMax.Text);
        int[] cijfers = new int[5];
        Random generator = new Random();
        for (int i = 0; i < 5; i++)
        {
            int Getal = generator.Next(max) + 1;
            cijfers[i] = Getal;
        }
        som1.Text = Convert.ToString(cijfers[0]);
        som2.Text = Convert.ToString(cijfers[1]);
        som3.Text = Convert.ToString(cijfers[2]);
        som4.Text = Convert.ToString(cijfers[3]);
        som5.Text = Convert.ToString(cijfers[4]);
    }



    protected void btnAntwoord_Click(object sender, EventArgs e)
    {
        int getal1 = Int32.Parse(som1.Text);
        int getal2 = Int32.Parse(som2.Text);
        int getal3 = Int32.Parse(som3.Text);
        int getal4 = Int32.Parse(som4.Text);
        int getal5 = Int32.Parse(som5.Text);
        int beoordeling = 0;

        if (getal1 * 1 == Int32.Parse(txtantwoord1.Text))
        {
            lbl1.Text = "Goed";
            txtantwoord1.ReadOnly = true;
            beoordeling++;
        } else { lbl1.Text = "Fout"; }
        if (getal2 * 2 == Int32.Parse(txtantwoord2.Text))
        {
            lbl2.Text = "Goed";
            txtantwoord2.ReadOnly = true;
            beoordeling++;
        }
        else { lbl2.Text = "Fout"; }
        if (getal3 * 3 == Int32.Parse(txtantwoord3.Text))
        {
            lbl3.Text = "Goed";
            txtantwoord3.ReadOnly = true;
            beoordeling++;
        }
        else { lbl3.Text = "Fout"; }
        if (getal4 * 4 == Int32.Parse(txtantwoord4.Text))
        {
            lbl4.Text = "Goed";
            txtantwoord4.ReadOnly = true;
            beoordeling++;
        }
        else { lbl4.Text = "Fout"; }
        if (getal5 * 5 == Int32.Parse(txtantwoord5.Text))
        {
            lbl5.Text = "Goed";
            txtantwoord5.ReadOnly = true;
            beoordeling++;
        }
        else { lbl5.Text = "Fout"; }
        lblcijfer.Text = "Uw cijfer is : " + Convert.ToString(beoordeling * 2);
    }

    protected void btnrefresh_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }
}