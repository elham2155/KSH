using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Collections.Generic;

public partial class Home : System.Web.UI.Page
{
    bool insert = false;
    bool report= false;
    bool full = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string fullName = "";
            fullName = Session["karbar"].ToString();
            if (Session["karbar"] != "")
            {
                lblName.Text = Session["karbar"].ToString();
            }
        }
        string insert_access = "";        
        string report_access = "";
        string full_access = "";
        //*********************************
        Dictionary<string, object> param = new Dictionary<string, object>();
        param.Add("@name", Session["karbar"].ToString());
        try
        {
            SqlDataReader dr;
            dr = DB.ExecuteReader("select * from Users where UserFullName =@name", param);
            dr.Read();
            //------------------------------------------
            insert_access = dr["InsertAccess"].ToString();            
            report_access = dr["ReportAccess"].ToString();
            full_access = dr["FullAccess"].ToString();
            if (full_access == "True")
            {
                full = true;
            }
            else
            {
                if (insert_access == "True")
                {
                    insert = true;
                }                
                if (report_access == "True")
                {
                    report = true;
                }
            }

        }
        catch
        {

        }
        
    }
    protected void btnExit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void btnUsers_Click(object sender, ImageClickEventArgs e)
    {
        if (full) Response.Redirect("Users.aspx");
        else msgUsers.Text = "عدم دسترسی کاربر";
    }
    protected void btnEnter_Click(object sender, ImageClickEventArgs e)
    {
        if(full || insert) Response.Redirect("PersonalInfo.aspx");
        else msgEnter.Text = "عدم دسترسی کاربر";
    }
    protected void btnInfo_Click(object sender, ImageClickEventArgs e)
    {
        if(full || insert) Response.Redirect("SearchInfo.aspx");
        else msgInfo.Text = "عدم دسترسی کاربر";
    }
    protected void btnPosition_Click(object sender, ImageClickEventArgs e)
    {
        if (full) Response.Redirect("Positions.aspx");
        else msgPosition.Text = "عدم دسترسی کاربر";
    }
    protected void btnReport_Click(object sender, ImageClickEventArgs e)
    {
        if(full || insert || report) Response.Redirect("Reports.aspx");
        else msgReport.Text = "عدم دسترسی کاربر";
    }
    protected void btnArchive_Click(object sender, ImageClickEventArgs e)
    {
        if (full) Response.Redirect("Archive.aspx");
        else msgArchive.Text = "عدم دسترسی کاربر";
    }
    protected void btnHelp_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("KSHHelp.pdf");
    }
}