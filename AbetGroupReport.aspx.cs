using System;
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Collections.Generic;

public partial class AbetGroupReport : System.Web.UI.Page
{
    DataTable dtPersonValuation,dtGroup,dtResult;
    SqlDataReader drValuation,drGroup,drResult;
    protected void Page_Load(object sender, EventArgs e)
    {
        SetFocus(txtYear);
        imgbExport.Visible = false;
        lblDL.Visible = false;
        //********************        
        string CountPersonID = "";
        CountPersonID = DB.ExecuteScalar("select count(PersonID) from Person").ToString();
        
        //********************
        SqlDataReader drPersonID;
        drPersonID = DB.ExecuteReader("select PersonID from Person");           

        GridView2.DataSource = drPersonID;
        GridView2.DataBind();
        //********************   
        dtPersonValuation = new DataTable("tblPerson");

        DataColumn dcPersonMelliCode = new DataColumn();
        dcPersonMelliCode.DataType = typeof(String);
        dcPersonMelliCode.ColumnName = "PersonMelliCode";

        DataColumn dcPersonName = new DataColumn();
        dcPersonName.DataType = typeof(String);
        dcPersonName.ColumnName = "PersonName";

        DataColumn dcPersonFamily = new DataColumn();
        dcPersonFamily.DataType = typeof(String);
        dcPersonFamily.ColumnName = "PersonFamily";

        DataColumn dcValuationYear = new DataColumn();
        dcValuationYear.DataType = typeof(String);
        dcValuationYear.ColumnName = "ValuationYear";

        DataColumn dcValuationGrade = new DataColumn();
        dcValuationGrade.DataType = typeof(String);
        dcValuationGrade.ColumnName = "ValuationGrade";

        dtPersonValuation.Columns.Add(dcPersonMelliCode);
        dtPersonValuation.Columns.Add(dcPersonName);
        dtPersonValuation.Columns.Add(dcPersonFamily);
        dtPersonValuation.Columns.Add(dcValuationYear);
        dtPersonValuation.Columns.Add(dcValuationGrade);          
        //**********************************************
        dtGroup = new DataTable("tblGroup");

        DataColumn dcGMelliCode = new DataColumn();
        dcGMelliCode.DataType = typeof(String);
        dcGMelliCode.ColumnName = "MelliCode";

        DataColumn dcGName = new DataColumn();
        dcGName.DataType = typeof(String);
        dcGName.ColumnName = "Name";

        DataColumn dGFamily = new DataColumn();
        dGFamily.DataType = typeof(String);
        dGFamily.ColumnName = "Family";

        DataColumn dcGDate = new DataColumn();
        dcGDate.DataType = typeof(String);
        dcGDate.ColumnName = "GroupDate";

        DataColumn dGGrade = new DataColumn();
        dGGrade.DataType = typeof(String);
        dGGrade.ColumnName = "GroupGrade";

        dtGroup.Columns.Add(dcGMelliCode);
        dtGroup.Columns.Add(dcGName);
        dtGroup.Columns.Add(dGFamily);
        dtGroup.Columns.Add(dcGDate);
        dtGroup.Columns.Add(dGGrade); 
        //*********************************************
        
    }
    protected void imgbHome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void imgbExit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ValuationReport.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        imgbExport.Visible = true;
        lblDL.Visible = true;
        foreach (GridViewRow row2 in GridView2.Rows)
        {            
            string CountID = "";            
            
            Dictionary<string, object> paramID = new Dictionary<string, object>();
            paramID.Add("@Year", txtYear.Text);
            paramID.Add("@Count", txtCount.Text);
            paramID.Add("@Grade", txtGrade.Text);
            paramID.Add("@PersonID", row2.Cells[0].Text);
            //**********            
            CountID = DB.ExecuteScalar("SELECT count(*) FROM Valuation,Person WHERE ((Valuation.Year <= @Year) AND (Valuation.Year > ((@Year )-(@Count+0)))) AND (Valuation.PersonID=Person.PersonID) AND (Valuation.PersonID=@PersonID) AND (Valuation.Grade>=@Grade) ", paramID).ToString();
                        
            if (CountID == txtCount.Text)
            {
                
                //*********************Show Valuations on GridView1
                drValuation = DB.ExecuteReader("SELECT Valuation.PersonID, Valuation.Year, Valuation.Grade, Person.Name, Person.Family, Person.MelliCode FROM Valuation,Person WHERE ((Valuation.Year <= @Year) AND (Valuation.Year > ((@Year )-(@Count+0)))) AND (Valuation.PersonID=Person.PersonID) AND (Valuation.PersonID=@PersonID) AND (Valuation.Grade>=@Grade) ORDER BY Valuation.Year ", paramID);                

                while (drValuation.Read()) dtPersonValuation.Rows.Add(drValuation["MelliCode"].ToString(), drValuation["Name"].ToString(), drValuation["Family"].ToString(), drValuation["Year"].ToString(), drValuation["Grade"].ToString());

                GridView1.DataSource = dtPersonValuation.DefaultView;
                GridView1.DataBind();
                //********************Show * Groups on GridView3
                drGroup = DB.ExecuteReader("select ClassDate,ClassGrade,Person.Name, Person.Family, Person.MelliCode from Groupe,Person where (Groupe.PersonID=@PersonID) AND (Groupe.PersonID=Person.PersonID) and (Groupe.ClassGrade='*' or Groupe.ClassGrade='**' or Groupe.ClassGrade='***')", paramID);
                

                while (drGroup.Read()) dtGroup.Rows.Add(drGroup["MelliCode"].ToString(), drGroup["Name"].ToString(), drGroup["Family"].ToString(), drGroup["ClassDate"].ToString(), drGroup["ClassGrade"].ToString());

                GridView3.DataSource = dtGroup.DefaultView;
                GridView3.DataBind();
            }            
        }
        foreach (GridViewRow row3 in GridView3.Rows)
        {
            string r0 = "";
            r0 = row3.Cells[3].Text + "";
            
            int countResult1 = 0;
            int countResult2 = 0;
            string r1 = "";
            r1 =row3.Cells[0].Text + "";
            
            //********************************************
            foreach (GridViewRow row1 in GridView1.Rows)
            {
                if (row1.Cells[0].Text == r1)
                {
                    if (row1.Cells[3].Text != r0)
                    {
                        countResult1++;
                        if (countResult1 == int.Parse(txtCount.Text))
                        {
                            //********************Show Result on GridView4
                            Dictionary<string, object> paramM = new Dictionary<string, object>();
                            paramM.Add("@MCode", r1);

                            drResult = DB.ExecuteReader("select Name AS [نام],Family AS [نام خانوادگی],MelliCode AS[کدملی],CaseNumber AS [شماره پرونده],PersonelNumber AS [شماره کارمندی] from Person where MelliCode=@MCode", paramM);

                            GridView4.DataSource = drResult; 
                            GridView4.DataBind();
                        }
                    }
                }
                else
                {
                    countResult2++;
                    if (countResult2 == int.Parse(txtCount.Text))
                    {
                        //********************Show Result on GridView4
                        Dictionary<string, object> paramM = new Dictionary<string, object>();
                        paramM.Add("@MCode", row1.Cells[0].Text);

                        drResult = DB.ExecuteReader("select Name AS [نام],Family AS [نام خانوادگی],MelliCode AS[کدملی],CaseNumber AS [شماره پرونده],PersonelNumber AS [شماره کارمندی] from Person where MelliCode=@MCode", paramM);

                        GridView4.DataSource = drResult; 
                        GridView4.DataBind();
                    }
                    
                }
            }
            
        }                        
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
        string FileName = "List" + DateTime.Now + ".xls";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        GridView4.GridLines = GridLines.Both;        
        GridView4.HeaderStyle.Font.Bold = true;
        GridView4.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();

    }
    protected void imgbExport_Click(object sender, ImageClickEventArgs e)
    {
        ExportGridToExcel();
    }


    protected void btnNew_Click(object sender, System.EventArgs e)
    {
        Response.Redirect("AbetGroupReport.aspx");
    }
}