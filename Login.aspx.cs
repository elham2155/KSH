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
using System.Collections.Generic;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.SetFocus(txtUid);
    }
    protected void btnEnter_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (IsAuthenticatedUser(txtUid.Text, txtPas.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUid.Text, false);
                Response.Redirect("home.aspx");
            }
        }        
    }
    protected bool IsAuthenticatedUser(string username, string password)
    {
        if ((txtUid.Text != "") && (txtPas.Text != ""))
        {
            string str = "";
            Dictionary<string, object> param = new Dictionary<string, object>();
            param.Add("@user", txtUid.Text);
            param.Add("@pass", txtPas.Text);
            try
            {
                str = (DB.ExecuteScalar("select UserFullName from Users where UserName =@user and Password=@pass", param)).ToString();
            }
            catch
            {
                msg.Text = "اطلاعات صحيح نمي باشد لطفا دوباره وارد شويد";
            }

            if (str != "")
            {
                msg.Text = str;
                Session["karbar"] = str;
                return true;
            }
            else
                msg.Text = "نام کاربري يا رمز عبور صحيح نمي باشد";
            return false;
        }
        else
        {
            msg.Text = "نام کاربري يا رمز عبور را وارد کنید";
            return false;
        }
    }
}