using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MorePersonalInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {        
        imgPerson.ImageUrl = "~/PersonelImage/" + Session["PID"] + "/thm-" + Session["PID"] + ".jpg";
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void imgbAccept_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("EditInfo.aspx?PersonID="+Session["PID"]);
    }
}