using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDoctor
{
    public partial class RegisterVisit2 : System.Web.UI.Page
    {

        VisitData data = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                VisitData data = Session["RegForm"] as VisitData;
                if (data == null) throw new Exception();
                

            } catch(Exception exc)
            {
                Server.Transfer("~/RegisterVisit.aspx");
            }
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            if (fuImage.HasFile)
            {
                if(fuImage.PostedFile.ContentType == "image/png")
                {
                    if (fuImage.PostedFile.ContentLength < 500000)
                    {
                        // upload do wskazanego folderu na serwerze
                        // 
                        string filename = Guid.NewGuid().ToString("N") + "-" + Path.GetFileName(fuImage.FileName);
                        fuImage.SaveAs(Server.MapPath("~/uploads/")+filename);

                        lblResult.Text = "Wszystko OK";
                    }
                    else
                    {
                        lblResult.Text = "Plik za duży";
                       
                    }
                }
                else
                {
                    lblResult.Text = "Plik w niepoprawnym formacie";
                }
            }
        }
    }
}