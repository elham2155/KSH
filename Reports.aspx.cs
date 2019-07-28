using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }    
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ViewInfo.aspx");
    }
    protected void imgbPositionPerUnit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PositionReport.aspx");
    }
    protected void imgbEmptyPositionPerUnit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("EmptyPositionsReport.aspx");
    }
    protected void imgbExit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void imgbHome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void imgbValuation_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ValuationReport.aspx");
    }
    protected void imgbUnique_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("IsUniqueReport.aspx");
    }
    protected void imgbRetired_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("RetiredReport.aspx");
    }
    protected void imhbMainList_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MainListReport.aspx");
    }
    protected void imgbOthers_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("OtherReport.aspx");
    }
}