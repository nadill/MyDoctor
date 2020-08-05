using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDoctor
{
    public partial class RegisterVisit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cbVip_CheckedChanged(object sender, EventArgs e)
        {
            
            tbVipNumber.Visible = cbVip.Checked;
            
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                VisitData data = new VisitData();
                data.FirstName = tbFName.Text;
                data.LastName = tbLName.Text;
                data.Email = tbEmail.Text;
                data.Pesel = tbPesel.Text;
                data.DoctorId = Convert.ToInt32(ddDoctor.SelectedValue);
                data.DateVisit = calVisitDate.SelectedDate;

                if (cbVip.Checked) data.CardNumber = tbVipNumber.Text;

                Session["RegForm"] = data;
                //Response.Redirect("~/RegisterVisit2");
                Server.Transfer("~/RegisterVisit2");
            }
        }
    }
}