using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gvEditInfo.DataSource = DB.ExecuteReader("select PersonID,Name AS [نام],Family AS [نام خانوادگی],CaseNumber AS [شماره پرونده],PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی] from Person order by family");
        gvEditInfo.DataBind();  
    }    
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtSearch.Text != "")
        {
            string State = ddlSearch.SelectedValue;
            Dictionary<string, object> param = new Dictionary<string, object>();
            param.Add("@entry", txtSearch.Text);
            switch (State)
            {
                case "1": gvEditInfo.DataSource = DB.ExecuteReader("select PersonID,Name AS [نام],Family AS [نام خانوادگی],CaseNumber AS [شماره پرونده],PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی] from Person where CaseNumber=@entry", param); break;
                case "2": gvEditInfo.DataSource = DB.ExecuteReader("select PersonID,Name AS [نام],Family AS [نام خانوادگی],CaseNumber AS [شماره پرونده],PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی] from Person where PersonelNumber=@entry", param); break;
                case "3": gvEditInfo.DataSource = DB.ExecuteReader("select PersonID,Name AS [نام],Family AS [نام خانوادگی],CaseNumber AS [شماره پرونده],PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی] from Person where MelliCode=@entry", param); break;
                case "4": gvEditInfo.DataSource = DB.ExecuteReader("select PersonID,Name AS [نام],Family AS [نام خانوادگی],CaseNumber AS [شماره پرونده],PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی] from Person where Family Like @entry", param); break;
            }
            gvEditInfo.DataBind();
        }
        else
        {
            gvEditInfo.DataSource = DB.ExecuteReader("select PersonID,Name AS [نام],Family AS [نام خانوادگی],CaseNumber AS [شماره پرونده],PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی] from Person order by family");
            gvEditInfo.DataBind();
        }
            
    }
    protected void imgbExit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void imgbHome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}