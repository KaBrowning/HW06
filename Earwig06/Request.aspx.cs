
using System;
using System.Drawing;
using System.Web.UI;

/// <summary>
/// Sets up the page load and button click events for Request.aspx
/// </summary>
/// <author>Kathryn Browning</author>
/// <version>January 27, 2015</version>
public partial class Request : Page
{

    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            return;
        }
        this.txtArrival.Text = DateTime.Now.ToShortDateString();
        this.rdoKingBed.Checked = true;
    }

    /// <summary>
    /// Handles the Click event of the btnClear control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnClear_Click(object sender, EventArgs e)
    {
        this.txtDeparture.Text = string.Empty;
        this.txtDeparture.CausesValidation = false;
        this.txtSpecialRequests.Text = string.Empty;
        this.txtFirstName.Text = string.Empty;
        this.txtFirstName.CausesValidation = false;
        this.txtLastName.Text = string.Empty;
        this.txtLastName.CausesValidation = false;
        this.txtEmailAddress.Text = string.Empty;
        this.txtEmailAddress.CausesValidation = false;
        this.txtPhoneNumber.Text = string.Empty;
        this.txtPhoneNumber.CausesValidation = false;

        this.rdoKingBed.Checked = true;

        this.ddlNumberOfAdults.SelectedIndex = 0;
        this.ddlPreferredMethod.SelectedIndex = 0;

        this.lblMessage.Text = "";
    }


    /// <summary>
    /// Handles the Click event of the btnSubmit control. Checks to see if the drop down lists
    /// have been appropriately selected.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (this.ddlNumberOfAdults.SelectedIndex < 1 || this.ddlPreferredMethod.SelectedIndex < 1)
        {
            this.lblMessage.ForeColor = Color.Red;
            this.lblMessage.Text = "You must select an option from both drop down lists.";
        }
        else
        {
            this.lblMessage.ForeColor = Color.Green;
           this.lblMessage.Text = "Thank you for your request.<br />We will get back to you within 24 hours.";
        }
    }
}