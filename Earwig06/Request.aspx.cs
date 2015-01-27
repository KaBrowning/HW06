
using System;
using System.Web.UI.WebControls;

public partial class Request : System.Web.UI.Page
{

    protected void Page_Load(object sender, System.EventArgs e)
    {
        if (IsPostBack)
        {
            return;
        }
        this.txtArrival.Text = DateTime.Now.ToShortDateString();
        this.rdoKingBed.Checked = true;
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        this.txtDeparture.Text = string.Empty;
        this.txtSpecialRequests.Text = string.Empty;
        this.txtFirstName.Text = string.Empty;
        this.txtLastName.Text = string.Empty;
        this.txtEmailAddress.Text = string.Empty;
        this.txtPhoneNumber.Text = string.Empty;

        this.rdoKingBed.Checked = true;
        //if textbox id matches arrival, then set to original arrival, else, clear toString
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        this.lblMessage.Text = "Thank you for your request.<br />We will get back to you within 24 hours.";
    }
}