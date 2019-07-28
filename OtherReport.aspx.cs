using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Collections.Generic;

public partial class OtherReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        //required to avoid the runtime error "  
        //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
    }
    private void ExportGridToExcel()
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = "Vithal" + DateTime.Now + ".xls";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvEditInfo.GridLines = GridLines.Both;
        gvEditInfo.HeaderStyle.Font.Bold = true;
        gvEditInfo.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();

    }
    protected void imgbExport_Click(object sender, ImageClickEventArgs e)
    {
        ExportGridToExcel(); 
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {        
            string State = ddlSearch.SelectedValue;
            
            switch (State)
            {
                case "1": gvEditInfo.DataSource = DB.ExecuteReader("SELECT CaseNumber AS [شماره پرونده], PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی], Name AS نام, Family AS [نام خانوادگی], FatherName AS [نام پدر],Gender AS [جنسیت], MaritalState AS [وضعیت تاهل], RemissionState AS [وضعیت ایثارگری], ApplicantPeriod AS [مدت خدمت داوطلبانه در جبهه],UnApplicantPeriod AS [مدت خدمت غیر داوطلبانه در جبهه], WarPeriod AS [مدت رزمندگی], WarPlacePeriod AS [مدت خدمت در مناطق جنگی] FROM  Person where MaritalState IS NOT NULL And MaritalState!='' order by MaritalState"); break;
                case "2": gvEditInfo.DataSource = DB.ExecuteReader("SELECT CaseNumber AS [شماره پرونده], PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی], Name AS نام, Family AS [نام خانوادگی], FatherName AS [نام پدر],Gender AS [جنسیت], MaritalState AS [وضعیت تاهل], RemissionState AS [وضعیت ایثارگری], ApplicantPeriod AS [مدت خدمت داوطلبانه در جبهه],UnApplicantPeriod AS [مدت خدمت غیر داوطلبانه در جبهه], WarPeriod AS [مدت رزمندگی], WarPlacePeriod AS [مدت خدمت در مناطق جنگی] FROM  Person where Gender IS NOT NULL And Gender!='' order by Gender"); break;
                case "3": gvEditInfo.DataSource = DB.ExecuteReader("SELECT CaseNumber AS [شماره پرونده], PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی], Name AS نام, Family AS [نام خانوادگی], FatherName AS [نام پدر],Gender AS [جنسیت], MaritalState AS [وضعیت تاهل], RemissionState AS [وضعیت ایثارگری], ApplicantPeriod AS [مدت خدمت داوطلبانه در جبهه],UnApplicantPeriod AS [مدت خدمت غیر داوطلبانه در جبهه], WarPeriod AS [مدت رزمندگی], WarPlacePeriod AS [مدت خدمت در مناطق جنگی] FROM  Person where RemissionState IS NOT NULL And RemissionState!='' ORDER BY Person.Family"); break;
                case "4": gvEditInfo.DataSource = DB.ExecuteReader("SELECT CaseNumber AS [شماره پرونده], PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی], Name AS نام, Family AS [نام خانوادگی], FatherName AS [نام پدر],Gender AS [جنسیت], MaritalState AS [وضعیت تاهل], RemissionState AS [وضعیت ایثارگری], ApplicantPeriod AS [مدت خدمت داوطلبانه در جبهه],UnApplicantPeriod AS [مدت خدمت غیر داوطلبانه در جبهه], WarPeriod AS [مدت رزمندگی], WarPlacePeriod AS [مدت خدمت در مناطق جنگی], Children AS [تعداد فرزند] FROM  Person where (Children <> 0) and (Children IS NOT NULL And Children!='') ORDER BY Person.Family"); break;
                case "5": gvEditInfo.DataSource = DB.ExecuteReader("SELECT CaseNumber AS [شماره پرونده], PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی], Name AS نام, Family AS [نام خانوادگی], FatherName AS [نام پدر],Gender AS [جنسیت], MaritalState AS [وضعیت تاهل], RemissionState AS [وضعیت ایثارگری], ApplicantPeriod AS [مدت خدمت داوطلبانه در جبهه],UnApplicantPeriod AS [مدت خدمت غیر داوطلبانه در جبهه], WarPeriod AS [مدت رزمندگی], WarPlacePeriod AS [مدت خدمت در مناطق جنگی],EmploymentType AS [نوع استخدام] FROM  Person where (EmploymentType IS NOT NULL And EmploymentType!='') ORDER BY Person.Family"); break;
                case "6": gvEditInfo.DataSource = DB.ExecuteReader("SELECT CaseNumber AS [شماره پرونده], PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی], Name AS نام, Family AS [نام خانوادگی], FatherName AS [نام پدر],Gender AS [جنسیت], MaritalState AS [وضعیت تاهل], RemissionState AS [وضعیت ایثارگری], ApplicantPeriod AS [مدت خدمت داوطلبانه در جبهه],UnApplicantPeriod AS [مدت خدمت غیر داوطلبانه در جبهه], WarPeriod AS [مدت رزمندگی], WarPlacePeriod AS [مدت خدمت در مناطق جنگی] FROM  Person where ApplicantPeriod IS NOT NULL And ApplicantPeriod!='' And ApplicantPeriod!='000000' ORDER BY Person.Family"); break;
                case "7": gvEditInfo.DataSource = DB.ExecuteReader("SELECT CaseNumber AS [شماره پرونده], PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی], Name AS نام, Family AS [نام خانوادگی], FatherName AS [نام پدر],Gender AS [جنسیت], MaritalState AS [وضعیت تاهل], RemissionState AS [وضعیت ایثارگری], ApplicantPeriod AS [مدت خدمت داوطلبانه در جبهه],UnApplicantPeriod AS [مدت خدمت غیر داوطلبانه در جبهه], WarPeriod AS [مدت رزمندگی], WarPlacePeriod AS [مدت خدمت در مناطق جنگی] FROM  Person where UnApplicantPeriod IS NOT NULL And UnApplicantPeriod!='' And UnApplicantPeriod!='000000' ORDER BY Person.Family"); break;
                case "8": gvEditInfo.DataSource = DB.ExecuteReader("SELECT CaseNumber AS [شماره پرونده], PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی], Name AS نام, Family AS [نام خانوادگی], FatherName AS [نام پدر],Gender AS [جنسیت], MaritalState AS [وضعیت تاهل], RemissionState AS [وضعیت ایثارگری], ApplicantPeriod AS [مدت خدمت داوطلبانه در جبهه],UnApplicantPeriod AS [مدت خدمت غیر داوطلبانه در جبهه], WarPeriod AS [مدت رزمندگی], WarPlacePeriod AS [مدت خدمت در مناطق جنگی] FROM  Person where WarPeriod IS NOT NULL And WarPeriod!='' And WarPeriod!='000000' ORDER BY Person.Family"); break;
                case "9": gvEditInfo.DataSource = DB.ExecuteReader("SELECT CaseNumber AS [شماره پرونده], PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی], Name AS نام, Family AS [نام خانوادگی], FatherName AS [نام پدر],Gender AS [جنسیت], MaritalState AS [وضعیت تاهل], RemissionState AS [وضعیت ایثارگری], ApplicantPeriod AS [مدت خدمت داوطلبانه در جبهه],UnApplicantPeriod AS [مدت خدمت غیر داوطلبانه در جبهه], WarPeriod AS [مدت رزمندگی], WarPlacePeriod AS [مدت خدمت در مناطق جنگی] FROM  Person where WarPlacePeriod IS NOT NULL And WarPlacePeriod!='' And WarPlacePeriod!='000000' ORDER BY Person.Family"); break;
                case "10": gvEditInfo.DataSource = DB.ExecuteReader("SELECT CaseNumber AS [شماره پرونده], PersonelNumber AS [شماره کارمندی], MelliCode AS [کد ملی], Name AS نام, Family AS [نام خانوادگی], FatherName AS [نام پدر],Gender AS [جنسیت], MaritalState AS [وضعیت تاهل],RemissionState AS [وضعیت ایثارگری], PersonField.Degree AS [مدرک تحصیلی],PersonField.FieldName AS [رشته تحصیلی],PersonField.Date AS [تاریخ اخذ مدرک] FROM  Person INNER JOIN PersonField ON Person.PersonID = PersonField.PersonID ORDER BY Person.Family, Person.Name"); break;
            }
            gvEditInfo.DataBind();
        
    }
    protected void imgbHome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void imgbExit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Reports.aspx");
    }
}