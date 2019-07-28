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

public partial class EditInfo : System.Web.UI.Page
{
    //bool flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlUnit.Visible = false;
            ddlPosition.Visible = false;
            btnShowPosition.Visible = false;
            btnShowPositionID.Visible = false;
            //********************************
            SqlDataReader dr1;
            dr1 = DB.ExecuteReader("select * from Provinces");
            ddlBirthProvince.DataSource = dr1;
            ddlBirthProvince.DataValueField = "ProvinceID";
            ddlBirthProvince.DataTextField = "ProvinceName";
            ddlBirthProvince.DataBind();
            //******************************
            SqlDataReader dr2;
            dr2 = DB.ExecuteReader("select * from Unit");
            ddlUnit.DataSource = dr2;
            ddlUnit.DataValueField = "UnitID";
            ddlUnit.DataTextField = "UnitName";
            ddlUnit.DataBind();
            //******************************
            lblMsg.Text = Request.QueryString["PersonID"];
            Session["PID"] = Request.QueryString["PersonID"];
            string flag = Request.QueryString["flag"];
            if (flag == "1") lblEdit.Text = "اطلاعات با موفقیت ثبت گردید";
            else lblEdit.Text = "";
            if (lblMsg.Text != null)
            {
                Dictionary<string, object> param = new Dictionary<string, object>();
                param.Add("@PersonID", lblMsg.Text);

                SqlDataReader dr = DB.ExecuteReader("select * From Person where PersonID=@PersonID", param);
                dr.Read();


                txtCaseNumber.Text = dr["CaseNumber"].ToString();
                txtPersonelnumber.Text = dr["PersonelNumber"].ToString();
                txtMelliCode.Text = dr["MelliCode"].ToString();
                txtName.Text = dr["Name"].ToString();
                txtFamily.Text = dr["Family"].ToString();
                txtFatherName.Text = dr["FatherName"].ToString();
                txtCertificateNumber.Text = dr["CertificateNumber"].ToString();
                txtIssuePlace.Text = dr["IssuePlace"].ToString();
                ddlGender.SelectedValue = dr["Gender"].ToString();
                ddlReligion.SelectedValue = dr["Religion"].ToString();
                ddlMilitaryState.SelectedValue = dr["MilitaryState"].ToString();
                string MilitaryPeriod = dr["MilitaryPeriod"].ToString();
                if (MilitaryPeriod != "")
                {
                    txtMilitaryYear.Text = MilitaryPeriod.Substring(0, 2);
                    txtMilitaryMonth.Text = MilitaryPeriod.Substring(2, 2);
                    txtMilitaryDay.Text = MilitaryPeriod.Substring(4, 2);
                }
                txtAddress.Text = dr["Address"].ToString();
                txtBirthDate.Text = dr["BirthDate"].ToString();
                ddlBirthProvince.SelectedValue = dr["BirthProvince"].ToString();
                txtBirthCity.Text = dr["BirthCity"].ToString();
                txtBirthZone.Text = dr["BirthZone"].ToString();
                ddlRemissionState.SelectedValue = dr["RemissionState"].ToString();
                txtEscapePersentage.Text = dr["EscapePersentage"].ToString();
                string CaptivityPeriod = dr["CaptivityPeriod"].ToString();
                if (CaptivityPeriod != "")
                {
                    txtCaptivityYear.Text = CaptivityPeriod.Substring(0, 2);
                    txtCaptivityMonth.Text = CaptivityPeriod.Substring(2, 2);
                    txtCaptivityDay.Text = CaptivityPeriod.Substring(4, 2);
                }
                ddlMaritalState.SelectedValue = dr["MaritalState"].ToString();
                //txtPartnerJob.Text = dr["PartnerJob"].ToString();
                //txtMarriageDate.Text = dr["MarriageDate"].ToString();
                txtChildren.Text = dr["Children"].ToString();
                // txtLiableChildren.Text = dr["LiableChildren"].ToString();
                txtTell.Text = dr["Tell"].ToString();
                //txtPostalCode.Text = dr["PostalCode"].ToString();
                // txtEmail.Text = dr["Email"].ToString();
                txtGroup.Text = dr["Groupe"].ToString();
                txtAbetGroup.Text = dr["AbetGroup"].ToString();
                txtleniencyGroup.Text = dr["LeniencyGroup"].ToString();
                // txtValuationGroup.Text = dr["ValuationGroup"].ToString();
                ddlBase.SelectedValue = dr["Base"].ToString();
                string LastPermissionLeft = dr["LastPermissionLeft"].ToString();
                if (LastPermissionLeft != "")
                {
                    txtLastDay.Text = LastPermissionLeft.Substring(0, 2);
                    txtLastHoure.Text = LastPermissionLeft.Substring(2, 2);
                }
                string ThisPermissionLeft = dr["ThisPermissionLeft"].ToString();
                if (ThisPermissionLeft != "")
                {
                    txtthisDay.Text = ThisPermissionLeft.Substring(0, 2);
                    txtThisHoure.Text = ThisPermissionLeft.Substring(2, 2);
                }
                txtClass.Text = dr["Class"].ToString();
                txtBranch.Text = dr["Branch"].ToString();
                txtTestDate.Text = dr["TestEmploymentDate"].ToString();
                txtFullEMPDate.Text = dr["FullEmploymentDate"].ToString();
                txtEntranceDate.Text = dr["EntranceDate"].ToString();
                ddlEmploymentType.SelectedValue = dr["EmploymentType"].ToString();
                string StateYears = dr["StateYears"].ToString();
                if (StateYears != "")
                {
                    txtStateYear.Text = StateYears.Substring(0, 2);
                    txtStateMonth.Text = StateYears.Substring(2, 2);
                    txtStateDay.Text = StateYears.Substring(4, 2);
                }
                string TentativeYears = dr["TentativeYears"].ToString();
                if (TentativeYears != "")
                {
                    txtTentativeYear.Text = TentativeYears.Substring(0, 2);
                    txtTentativeMonth.Text = TentativeYears.Substring(2, 2);
                    txtTentativeDay.Text = TentativeYears.Substring(4, 2);
                }
                string ApplicantPeriod = dr["ApplicantPeriod"].ToString();
                if (ApplicantPeriod != "")
                {
                    txtApplicantYear.Text = ApplicantPeriod.Substring(0, 2);
                    txtApplicantMonth.Text = ApplicantPeriod.Substring(2, 2);
                    txtApplicantDay.Text = ApplicantPeriod.Substring(4, 2);
                }
                string UnApplicantPeriod = dr["UnApplicantPeriod"].ToString();
                if (UnApplicantPeriod != "")
                {
                    txtUnApplicantYear.Text = UnApplicantPeriod.Substring(0, 2);
                    txtUnApplicantMonth.Text = UnApplicantPeriod.Substring(2, 2);
                    txtUnApplicantDay.Text = UnApplicantPeriod.Substring(4, 2);
                }
                string WarPeriod = dr["WarPeriod"].ToString();
                if (WarPeriod != "")
                {
                    txtWarYear.Text = WarPeriod.Substring(0, 2);
                    txtWarMonth.Text = WarPeriod.Substring(2, 2);
                    txtWarDay.Text = WarPeriod.Substring(4, 2);
                }
                string WarPlacePeriod = dr["WarPlacePeriod"].ToString();
                if (WarPlacePeriod != "")
                {
                    txtWarPlaceYear.Text = WarPlacePeriod.Substring(0, 2);
                    txtWarPlaceMonth.Text = WarPlacePeriod.Substring(2, 2);
                    txtWarPlaceDay.Text = WarPlacePeriod.Substring(4, 2);
                }

                SqlDataReader dr_Position = DB.ExecuteReader("select * from Positions where PersonID=@PersonID", param);
                dr_Position.Read();
                ddlUnit.SelectedValue = dr_Position["UnitID"].ToString();
                txtUnitName.Text = ddlUnit.SelectedItem.ToString();
                txtPositionID.Text = dr_Position["PositionID"].ToString();
                Session["Pos"] = dr_Position["PositionID"].ToString();
                txtPosition.Text = dr_Position["Position"].ToString();

                SqlDataReader dr_Positions;
                Dictionary<string, object> param_Positions = new Dictionary<string, object>();

                param_Positions.Add("@UnitID", ddlUnit.SelectedValue);
                dr_Positions = DB.ExecuteReader("select * from Positions where UnitID=@UnitID and PersonID is Null", param_Positions);

                ddlPosition.DataSource = dr_Positions;
                ddlPosition.DataValueField = "PositionID";
                ddlPosition.DataTextField = "Position";
                ddlPosition.DataBind();

                imgPerson.ImageUrl = "~/PersonelImage/" + lblMsg.Text + "/thm-" + lblMsg.Text + ".jpg";

            }
        }        
        Page.SetFocus(txtName);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void btnShowPosition_Click(object sender, EventArgs e)
    {
        SqlDataReader dr_Positions;
        Dictionary<string, object> param_Positions = new Dictionary<string, object>();

        param_Positions.Add("@UnitID", ddlUnit.SelectedValue);
        dr_Positions = DB.ExecuteReader("select * from Positions where UnitID=@UnitID and PersonID is Null", param_Positions);

        ddlPosition.DataSource = dr_Positions;
        ddlPosition.DataValueField = "PositionID";
        ddlPosition.DataTextField = "Position";
        ddlPosition.DataBind();
    }
    protected void btnShowPositionID_Click(object sender, EventArgs e)
    {
        txtPositionID.Text = ddlPosition.SelectedValue;
    }
    protected void imgInsert_Click(object sender, ImageClickEventArgs e)
    {
        if (Page.IsValid)
        {
            Dictionary<string, object> param = new Dictionary<string, object>();

            
            param.Add("@CaseNumber", txtCaseNumber.Text);
            param.Add("@PersonelNumber", txtPersonelnumber.Text);
            param.Add("@MelliCode", txtMelliCode.Text);
            param.Add("@Name", txtName.Text);
            param.Add("@Family", txtFamily.Text);
            param.Add("@FatherName", txtFatherName.Text);
            param.Add("@CertificateNumber", txtCertificateNumber.Text);
            param.Add("@IssuePlace", txtIssuePlace.Text);
            param.Add("@Gender", ddlGender.SelectedValue);
            param.Add("@Religion", ddlReligion.SelectedValue);
            param.Add("@BirthDate", txtBirthDate.Text);
            param.Add("@BirthCity", txtBirthCity.Text);
            param.Add("@BirthZone", txtBirthZone.Text);
            param.Add("@MaritalState", ddlMaritalState.SelectedItem.ToString());
            param.Add("@PartnerJob", "");
            param.Add("@MarriageDate", "");
            param.Add("@Children", txtChildren.Text);
            param.Add("@LiableChildren", "");
            param.Add("@MilitaryState", ddlMilitaryState.SelectedValue);
            string mYear = txtMilitaryYear.Text;
            string mMonth = txtMilitaryMonth.Text;
            string mDay = txtMilitaryDay.Text;
            if (mYear.Length == 1) mYear = "0" + mYear;
            if (mYear.Length == 0) mYear = "00" + mYear;
            if (mMonth.Length == 1) mMonth = "0" + mMonth;
            if (mMonth.Length == 0) mMonth = "00" + mMonth;
            if (mDay.Length == 1) mDay = "0" + mDay;
            if (mDay.Length == 0) mDay = "00" + mDay;
            param.Add("@MilitaryPeriod", mYear + mMonth + mDay);
            param.Add("@RemissionState", ddlRemissionState.SelectedValue);
            param.Add("@EscapePersentage", txtEscapePersentage.Text);
            string CYear = txtCaptivityYear.Text;
            string CMonth = txtCaptivityMonth.Text;
            string CDay = txtCaptivityDay.Text;
            if (CYear.Length == 1) CYear = "0" + CYear;
            if (CYear.Length == 0) CYear = "00" + CYear;
            if (CMonth.Length == 1) CMonth = "0" + CMonth;
            if (CMonth.Length == 0) CMonth = "00" + CMonth;
            if (CDay.Length == 1) CDay = "0" + CDay;
            if (CDay.Length == 0) CDay = "00" + CDay;
            param.Add("@CaptivityPeriod", CYear + CMonth + CDay);
            param.Add("@EmploymentType", ddlEmploymentType.SelectedValue);
            param.Add("@Groupe", txtGroup.Text);
            param.Add("@AbetGroup", txtAbetGroup.Text);
            param.Add("@Base", ddlBase.SelectedValue);
            param.Add("@LeniencyGroup", txtleniencyGroup.Text);
            param.Add("@ValuationGroup", "");
            param.Add("@Class", txtClass.Text);
            param.Add("@Branch", txtBranch.Text);
            param.Add("@TestEmploymentDate", txtTestDate.Text);
            param.Add("@FullEmploymentDate", txtFullEMPDate.Text);
            param.Add("@EntranceDate", txtEntranceDate.Text);
            string SYear = txtStateYear.Text;
            string SMonth = txtStateMonth.Text;
            string SDay = txtStateDay.Text;
            if (SYear.Length == 1) SYear = "0" + SYear;
            if (SYear.Length == 0) SYear = "00" + SYear;
            if (SMonth.Length == 1) SMonth = "0" + SMonth;
            if (SMonth.Length == 0) SMonth = "00" + SMonth;
            if (SDay.Length == 1) SDay = "0" + SDay;
            if (SDay.Length == 0) SDay = "00" + SDay;
            param.Add("@StateYears", SYear + SMonth + SDay);
            string TYear = txtTentativeYear.Text;
            string TMonth = txtTentativeMonth.Text;
            string TDay = txtTentativeDay.Text;
            if (TYear.Length == 1) TYear = "0" + TYear;
            if (TYear.Length == 0) TYear = "00" + TYear;
            if (TMonth.Length == 1) TMonth = "0" + TMonth;
            if (TMonth.Length == 0) TMonth = "00" + TMonth;
            if (TDay.Length == 1) TDay = "0" + TDay;
            if (TDay.Length == 0) TDay = "00" + TDay;
            param.Add("@TentativeYears", TYear + TMonth + TDay);
            string AYear = txtApplicantYear.Text;
            string AMonth = txtApplicantMonth.Text;
            string ADay = txtApplicantDay.Text;
            if (AYear.Length == 1) AYear = "0" + AYear;
            if (AYear.Length == 0) AYear = "00" + AYear;
            if (AMonth.Length == 1) AMonth = "0" + AMonth;
            if (AMonth.Length == 0) AMonth = "00" + AMonth;
            if (ADay.Length == 1) ADay = "0" + ADay;
            if (ADay.Length == 0) ADay = "00" + ADay;
            param.Add("@ApplicantPeriod", AYear + AMonth + ADay);
            string UYear = txtUnApplicantYear.Text;
            string UMonth = txtUnApplicantMonth.Text;
            string UDay = txtUnApplicantDay.Text;
            if (UYear.Length == 1) UYear = "0" + UYear;
            if (UYear.Length ==0) UYear = "00" + UYear;
            if (UMonth.Length == 1) UMonth = "0" + UMonth;
            if (UMonth.Length == 0) UMonth = "00" + UMonth;
            if (UDay.Length == 1) UDay = "0" + UDay;
            if (UDay.Length == 0) UDay = "00" + UDay;
            param.Add("@UnApplicantPeriod", UYear + UMonth + UDay);
            string WYear = txtWarYear.Text;
            string WMonth = txtWarMonth.Text;
            string WDay = txtWarDay.Text;
            if (WYear.Length == 1) WYear = "0" + WYear;
            if (WYear.Length == 0) WYear = "00" + WYear;
            if (WMonth.Length == 1) WMonth = "0" + WMonth;
            if (WMonth.Length == 0) WMonth = "00" + WMonth;
            if (WDay.Length == 1) WDay = "0" + WDay;
            if (WDay.Length == 0) WDay = "00" + WDay;
            param.Add("@WarPeriod", WYear + WMonth + WDay);
            string WPYear = txtWarPlaceYear.Text;
            string WPMonth = txtWarPlaceMonth.Text;
            string WPDay = txtWarPlaceDay.Text;
            if (WPYear.Length == 1) WPYear = "0" + WPYear;
            if (WPYear.Length == 0) WPYear = "00" + WPYear;
            if (WPMonth.Length == 1) WPMonth = "0" + WPMonth;
            if (WPMonth.Length == 0) WPMonth = "00" + WPMonth;
            if (WPDay.Length == 1) WPDay = "0" + WPDay;
            if (WPDay.Length == 0) WPDay = "00" + WPDay;
            param.Add("@WarPlacePeriod", WPYear + WPMonth + WPDay);
            string LDay = txtLastDay.Text;
            string LHoure = txtLastHoure.Text;
            if (LDay.Length == 1) LDay = "0" + LDay;
            if (LDay.Length == 0) LDay = "00" + LDay;
            if (LHoure.Length == 1) LHoure = "0" + LHoure;
            if (LHoure.Length == 0) LHoure = "00" + LHoure;
            param.Add("@LastPermissionLeft", LDay + LHoure);
            string ThDay = txtthisDay.Text;
            string ThHoure = txtThisHoure.Text;
            if (ThDay.Length == 1) ThDay = "0" + ThDay;
            if (ThDay.Length == 0) ThDay = "00" + ThDay;
            if (ThHoure.Length == 1) ThHoure = "0" + ThHoure;
            if (ThHoure.Length == 0) ThHoure = "00" + ThHoure;
            param.Add("@ThisPermissionLeft", ThDay + ThHoure);
            param.Add("@Address", txtAddress.Text);
            param.Add("@PostalCode", "");
            param.Add("@Tell", txtTell.Text);
            param.Add("@Email", "");
            param.Add("@BirthProvince", ddlBirthProvince.SelectedValue);
            param.Add("@OldPositionID", Session["Pos"].ToString());
            param.Add("@PositionID", txtPositionID.Text);
            param.Add("@PersonID", lblMsg.Text);


            DB.ExecuteNonQueryP("procUpdate_info", param);
            
            Session["PID"] =lblMsg.Text;               

            savedocs(fuImg, lblMsg.Text, 1);

            if (ddlDegree.SelectedValue != "")
            {
                Dictionary<string, object> param_Field = new Dictionary<string, object>();
                param_Field.Add("@PersonID", lblMsg.Text);
                param_Field.Add("@Degree", ddlDegree.SelectedValue);
                param_Field.Add("@UniversityName", txtUniversity.Text);
                param_Field.Add("@Date", txtFieldDate.Text);
                param_Field.Add("@FieldName", txtField.Text);
                DB.ExecuteNonQueryP("procInsert_Field", param_Field);
            }


            if (txtValuationGrade.Text!="")
            {
                Dictionary<string, object> param_valuation = new Dictionary<string, object>();
                param_valuation.Add("@PersonID", lblMsg.Text);
                param_valuation.Add("@Year", txtValuationYear.Text);
                param_valuation.Add("@Grade", txtValuationGrade.Text);
                DB.ExecuteNonQueryP("procInsert_Valuation", param_valuation);
            }

            if (txtClassGrade.Text != "")
            {
                Dictionary<string, object> param_Groupe = new Dictionary<string, object>();
                param_Groupe.Add("@PersonID", lblMsg.Text);
                param_Groupe.Add("@ClassDate", txtClassdate.Text);
                param_Groupe.Add("@ClassGrade", txtClassGrade.Text);
                DB.ExecuteNonQueryP("procInsert_Groupe", param_Groupe);
            }

            if (ddlBase0.SelectedValue != "")
            {
                Dictionary<string, object> param_Base = new Dictionary<string, object>();
                param_Base.Add("@PersonID", lblMsg.Text);
                param_Base.Add("@BaseDate", txtBasedate.Text);
                param_Base.Add("@BaseGrade", ddlBase0.SelectedValue);
                DB.ExecuteNonQueryP("procInsert_Base", param_Base);
            }

            if (ddlTitle.SelectedValue != "")
            {
                Dictionary<string, object> param_Summary = new Dictionary<string, object>();
                param_Summary.Add("@PersonID", lblMsg.Text);
                param_Summary.Add("@SDate", txtSDate.Text);
                param_Summary.Add("@EDate", txtEDate.Text);
                param_Summary.Add("@Title", ddlTitle.SelectedValue);
                DB.ExecuteNonQueryP("procInsert_Summary", param_Summary);                
            }
            //Response.Redirect("SearchInfo.aspx");
            //lblEdit.Text = "اطلاعات با موفقیت ثبت گردید";
            Response.Redirect("EditInfo.aspx?PersonID="+lblMsg.Text+"&flag=1");
        }
    }
    protected void savedocs(FileUpload fup, string PID, int index)
    {
        string file, orgpath, path, name, ext;

        file = fup.FileName;
        if (file != "")
        {
            ext = Path.GetExtension(file);
            name = PID;
            file = name + ext;
            orgpath = Request.PhysicalApplicationPath + "PersonelImage\\" + PID;

            if (!(System.IO.Directory.Exists(orgpath)))
            {
                System.IO.Directory.CreateDirectory(orgpath);
            }
            path = orgpath + "\\";

            fup.SaveAs(path + file);
            Thumbnail.CreateThumb(path + file, 150, path + "thm-" + file, false);
        }
    }
    protected void imgbAccept_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void imgbExit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SearchInfo.aspx");
    }    
    protected void imgbHome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void btnEditPosition_Click(object sender, EventArgs e)
    {
        ddlUnit.Visible = true;
        ddlPosition.Visible = true;
        btnShowPosition.Visible = true;
        btnShowPositionID.Visible = true;
        btnEditPosition.Visible = false;
    }
}