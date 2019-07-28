using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gvReportInfo.DataSource = DB.ExecuteReader("select PersonID,Name,Family,CaseNumber,PersonelNumber,MelliCode from Person");
        gvReportInfo.DataBind();  
    }
    protected void imgbExit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Reports.aspx");
    }
    protected void imgbHome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}