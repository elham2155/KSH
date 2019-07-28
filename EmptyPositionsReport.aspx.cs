using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmptyPositions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ObjectDataSourceEmptyPosition.DataBind();
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