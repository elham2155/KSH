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
 

public partial class ViewDetInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //ObjectDataSourceInfo.DataBind();
        if (!IsPostBack)
        {
            lblMsg.Text = Request.QueryString["PersonID"];
            Session["PID"] = Request.QueryString["PersonID"];

            if (lblMsg.Text != null)
            {
                imgPerson.ImageUrl = "~/PersonelImage/" + lblMsg.Text + "/thm-" + lblMsg.Text + ".JPG";

                Dictionary<string, object> param = new Dictionary<string, object>();
                param.Add("@PersonID", lblMsg.Text);
                

                SqlDataReader dr = DB.ExecuteReader("select * From Person where PersonID=@PersonID", param);
                dr.Read();

                lblCaseNumber.Text = dr["CaseNumber"].ToString();
                lblPersonelNumber.Text = dr["PersonelNumber"].ToString();
                lblMelliCode.Text = dr["MelliCode"].ToString();
                lblName.Text = dr["Name"].ToString();
                lblFamily.Text = dr["Family"].ToString();

                SqlDataReader dr_Position = DB.ExecuteReader("select Positions.PersonID,Positions.Position,Positions.PositionID,Positions.UnitID,UnitName from Positions,Unit where  PersonID=@PersonID and Positions.UnitID=Unit.UnitID", param);
                dr_Position.Read();
                lblUnit.Text = dr_Position["UnitName"].ToString();
                lblPositionID.Text = dr_Position["PositionID"].ToString();
                lblPosition.Text = dr_Position["Position"].ToString();

                lblFName.Text = dr["FatherName"].ToString();
                lblCertificateNumber.Text = dr["CertificateNumber"].ToString();
                lblIssuePlace.Text = dr["IssuePlace"].ToString();
                ddlGender.SelectedValue = dr["Gender"].ToString();
                lblGender.Text = ddlGender.SelectedItem.ToString();
                ddlReligion.SelectedValue = dr["Religion"].ToString();
                lblReligion.Text = ddlReligion.SelectedItem.ToString();
                ddlMilitaryState.SelectedValue = dr["MilitaryState"].ToString();
                lblMilitaryState.Text = ddlMilitaryState.SelectedItem.ToString();
                string MilitaryPeriod = dr["MilitaryPeriod"].ToString();
                if (MilitaryPeriod != "")
                {
                    lblMilitaryYear.Text = MilitaryPeriod.Substring(0, 2);
                    lblMilitaryMonth.Text = MilitaryPeriod.Substring(2, 2);
                    lblMilitaryDay.Text = MilitaryPeriod.Substring(4, 2);
                }
                lblAddress.Text = dr["Address"].ToString();

                lblBirthDate.Text = dr["BirthDate"].ToString();
                //ddlBirthProvince.SelectedValue = dr["BirthProvince"].ToString();

                param.Add("@ProvinceID", dr["BirthProvince"].ToString());
                SqlDataReader dr_Province = DB.ExecuteReader("select * from Provinces where ProvinceID=@ProvinceID", param);
                dr_Province.Read();

                lblBirthProvince.Text = dr_Province["ProvinceName"].ToString();

                lblBirthCity.Text = dr["BirthCity"].ToString();
                lblBirthZone.Text = dr["BirthZone"].ToString();
                ddlRemissionState.SelectedValue = dr["RemissionState"].ToString();
                lblRemissionState.Text = ddlRemissionState.SelectedItem.ToString();
                lblEscapePersentage.Text = dr["EscapePersentage"].ToString();
                string CaptivityPeriod = dr["CaptivityPeriod"].ToString();
                if (CaptivityPeriod != "")
                {
                    lblCaptivityYear.Text = CaptivityPeriod.Substring(0, 2);
                    lblCaptivityMonth.Text = CaptivityPeriod.Substring(2, 2);
                    lblCaptivityDay.Text = CaptivityPeriod.Substring(4, 2);
                }

                ddlMaritalState.SelectedValue = dr["MaritalState"].ToString();
                lblMaritalState.Text = ddlMaritalState.SelectedItem.ToString();
                lblPartnerJob.Text = dr["PartnerJob"].ToString();
                lblMarriageDate.Text = dr["MarriageDate"].ToString();
                lblChildren.Text = dr["Children"].ToString();
                lblLiableChildren.Text = dr["LiableChildren"].ToString();
                lblTell.Text = dr["Tell"].ToString();
                lblPostalCode.Text = dr["PostalCode"].ToString();
                lblEmail.Text = dr["Email"].ToString();

                lblGroup.Text = dr["Groupe"].ToString();
                lblAbetGroup.Text = dr["AbetGroup"].ToString();
                lblleniencyGroup.Text = dr["LeniencyGroup"].ToString();
                lblValuationGroup.Text = dr["ValuationGroup"].ToString();
                lblBase.Text = dr["Base"].ToString();
                string LastPermissionLeft = dr["LastPermissionLeft"].ToString();
                if (LastPermissionLeft != "")
                {
                    lblLastDay.Text = LastPermissionLeft.Substring(0, 2);
                    lblLastHoure.Text = LastPermissionLeft.Substring(2, 2);
                }
                string ThisPermissionLeft = dr["ThisPermissionLeft"].ToString();
                if (ThisPermissionLeft != "")
                {
                    lblthisDay.Text = ThisPermissionLeft.Substring(0, 2);
                    lblThisHoure.Text = ThisPermissionLeft.Substring(2, 2);
                }

                lblClass.Text = dr["Class"].ToString();
                lblBranch.Text = dr["Branch"].ToString();
                lblTestDate.Text = dr["TestEmploymentDate"].ToString();
                lblFullEMPDate.Text = dr["FullEmploymentDate"].ToString();
                lblEntranceDate.Text = dr["EntranceDate"].ToString();

                ddlEmploymentType.SelectedValue = dr["EmploymentType"].ToString();
                lblEmploymentType.Text = ddlEmploymentType.SelectedItem.ToString();
                string StateYears = dr["StateYears"].ToString();
                if (StateYears != "")
                {
                    lblStateYear.Text = StateYears.Substring(0, 2);
                    lblStateMonth.Text = StateYears.Substring(2, 2);
                    lblStateDay.Text = StateYears.Substring(4, 2);
                }
                string TentativeYears = dr["TentativeYears"].ToString();
                if (TentativeYears != "")
                {
                    lblTentativeYear.Text = TentativeYears.Substring(0, 2);
                    lblTentativeMonth.Text = TentativeYears.Substring(2, 2);
                    lblTentativeDay.Text = TentativeYears.Substring(4, 2);
                }
                string ApplicantPeriod = dr["ApplicantPeriod"].ToString();
                if (ApplicantPeriod != "")
                {
                    lblApplicantYear.Text = ApplicantPeriod.Substring(0, 2);
                    lblApplicantMonth.Text = ApplicantPeriod.Substring(2, 2);
                    lblApplicantDay.Text = ApplicantPeriod.Substring(4, 2);
                }
                string UnApplicantPeriod = dr["UnApplicantPeriod"].ToString();
                if (UnApplicantPeriod != "")
                {
                    lblUnApplicantYear.Text = UnApplicantPeriod.Substring(0, 2);
                    lblUnApplicantMonth.Text = UnApplicantPeriod.Substring(2, 2);
                    lblUnApplicantDay.Text = UnApplicantPeriod.Substring(4, 2);
                }
                string WarPeriod = dr["WarPeriod"].ToString();
                if (WarPeriod != "")
                {
                    lblWarYear.Text = WarPeriod.Substring(0, 2);
                    lblWarMonth.Text = WarPeriod.Substring(2, 2);
                    lblWarDay.Text = WarPeriod.Substring(4, 2);
                }
                string WarPlacePeriod = dr["WarPlacePeriod"].ToString();
                if (WarPlacePeriod != "")
                {
                    lblWarPlaceYear.Text = WarPlacePeriod.Substring(0, 2);
                    lblWarPlaceMonth.Text = WarPlacePeriod.Substring(2, 2);
                    lblWarPlaceDay.Text = WarPlacePeriod.Substring(4, 2);
                }
            }
        }

    }    
    protected void imgbPrint_Click(object sender, ImageClickEventArgs e)
    {        
        Session["ctrl"] = Panel1;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=700px,width=900px,scrollbars=1,font=8px');</script>");       
    }
    protected void imgbExit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ViewInfo.aspx");
    }
    protected void imgbHome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}