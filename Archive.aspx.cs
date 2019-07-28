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
        imgbExport.Visible = false;
        lblDL.Visible = false;
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        //required to avoid the runtime error "  
        //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
    }
    private void ExportGridToExcel(string filename)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = filename;
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvArchiveInfo.GridLines = GridLines.Both;
        gvArchiveInfo.HeaderStyle.Font.Bold = true;
        gvArchiveInfo.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();        

    }
    protected void imgbExport_Click(object sender, ImageClickEventArgs e)
    {
        string State = ddlArchive.SelectedValue;
        string filename="";
        string now = DateTime.Now.ToShortDateString();
        now = now.Replace("/", "_");
        switch (State)
        {
            case "1": filename = "PersonelInfo_" + now + ".xls"; break;
            case "2": filename = "BaseInfo_" + now + ".xls"; break;
            case "3": filename = "GroupeInfo_" + now + ".xls"; break;
            case "4": filename = "PersonFieldInfo_" + now + ".xls"; break;
            case "5": filename = "SummaryInfo_" + now + ".xls"; break;
            case "6": filename = "ValuationInfo_" + now + ".xls"; break;
            case "7": filename = "UnitInfo_" + now + ".xls"; break;
            case "8": filename = "PositionInfo_" + now + ".xls"; break;
            case "9": filename = "UsersInfo_" + now + ".xls"; break;
        }
        ExportGridToExcel(filename); 
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string State = ddlArchive.SelectedValue;
        imgbExport.Visible = true;
        lblDL.Visible = true;
        gvArchiveInfo.Visible = true;
            switch (State)
            {
                case "1": gvArchiveInfo.DataSource = DB.ExecuteReader("SELECT PersonID, CaseNumber, PersonelNumber, MelliCode, Name, Family, FatherName, CertificateNumber, IssuePlace, BirthDate, BirthCity, BirthZone, PartnerJob, "+
                      "MarriageDate, Children, LiableChildren, MilitaryPeriod, EscapePersentage, CaptivityPeriod, Groupe, AbetGroup, LeniencyGroup, ValuationGroup, Class, Branch, "+
                      "TestEmploymentDate, FullEmploymentDate, EntranceDate, StateYears, TentativeYears, ApplicantPeriod, UnApplicantPeriod, WarPeriod, WarPlacePeriod, "+
                      "LastPermissionLeft, ThisPermissionLeft, Address, PostalCode, Tell, Email, BirthProvince, IsUnique, IsUniqueYear, Base, MaritalState, Gender, Religion, MilitaryState, "+
                      "RemissionState, EmploymentType FROM Person"); break;                
                case "2": gvArchiveInfo.DataSource = DB.ExecuteReader("SELECT BaseID, PersonID, BaseDate, BaseGrade FROM Base"); break;
                case "3": gvArchiveInfo.DataSource = DB.ExecuteReader("SELECT GroupID, PersonID, ClassDate, ClassGrade FROM Groupe"); break;
                case "4": gvArchiveInfo.DataSource = DB.ExecuteReader("SELECT PersonFieldID, PersonID, FieldName, UniversityName, Date, Degree FROM PersonField"); break;
                case "5": gvArchiveInfo.DataSource = DB.ExecuteReader("SELECT SummaryID, PersonID, SDate, EDate, Title FROM Summary"); break;
                case "6": gvArchiveInfo.DataSource = DB.ExecuteReader("SELECT ValuationID, PersonID, Year, Grade FROM Valuation"); break;
                case "7": gvArchiveInfo.DataSource = DB.ExecuteReader("SELECT UnitID, UnitName FROM Unit"); break;
                case "8": gvArchiveInfo.DataSource = DB.ExecuteReader("SELECT PositionID, Position, PersonID, UnitID FROM Positions"); break;
                case "9": gvArchiveInfo.DataSource = DB.ExecuteReader("SELECT UserName,UserFullName, Password, InsertAccess, DeleteAccess, UpdateAccess, ViewAccess, ReportAccess, FullAccess FROM Users"); break;
            }
            gvArchiveInfo.DataBind();     
        
    }
    protected void imgbHome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void imgbExit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void btnStore_Click(object sender, EventArgs e)
    {        
        savedocs(FileUpload1, FileUpload1.FileName, 1);
        gvArchiveInfo.Visible = false;
        imgbExport.Visible = false;
        lblDL.Visible = false;
       
        
    }
    protected void savedocs(FileUpload fup, string FileName, int index)
    {
        string file, orgpath;
        string path = "";
        string now = DateTime.Now.ToShortDateString();
        now = now.Replace("/", "_");
        string filename = "Info_" + now;
        file = fup.FileName;
        if (file != "")
        {
            orgpath = Request.PhysicalApplicationPath + "Archive\\" + filename;

            if (!(System.IO.Directory.Exists(orgpath)))
            {
                System.IO.Directory.CreateDirectory(orgpath);
            }
            path = orgpath + "\\";
            
            fup.SaveAs(path + file +".xls");            
        }
         //*************************************
        string link = filename + "/" +file;
        Dictionary<string, object> param = new Dictionary<string, object>();        

        param.Add("@ArchiveTitle", filename);
        param.Add("@ArchiveLink",link );
        DB.ExecuteNonQueryP("procInsert_Archive", param);
    }
}