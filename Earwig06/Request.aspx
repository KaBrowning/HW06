<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Chapter 6: Happy Earwig</title>
    <link href ="Styles/Main.css" rel="stylesheet"/>
    <link href="Styles/Request.css" rel="stylesheet"/>
</head>
<body>
    <header>
        <asp:Panel ID="imgPanel" runat="server" HorizontalAlign="Center" >
            <asp:Image ID="imgLogo" runat="server" ImageUrl="Images/The_Happy_Earwig_Motel.png" 
                AlternateText="The Happy Earwig Motel"/>
         </asp:Panel>
        <br/>
        <h1>The Happy Earwig Motel</h1>
        <h2>Our crawl-space now body-free!</h2>
    </header>
    <section>
        <form id="form1" runat="server" DefaultFocus="txtArrival" DefaultButton="btnSubmit">
            <h1>Reservation Request</h1>
            <h2>Request data</h2>

            <label class="label">Arrival</label>
            <asp:TextBox ID="txtArrival" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvArrival" runat="server" ControlToValidate="txtArrival" 
                Display="Dynamic" Text="*" ErrorMessage="You must enter a date." ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />

            <label class="label">Departure</label>
            <asp:TextBox ID="txtDeparture" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDeparture" runat="server" ControlToValidate="txtDeparture" 
                Display="Dynamic" Text="*" ErrorMessage="You must enter a date." ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />

            <label class ="label ">Number of adults</label>
             <asp:DropDownList ID="ddlNumberOfAdults" runat="server">
                <asp:ListItem Value="0">Select one</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
                <asp:ListItem Value="2">2</asp:ListItem>
                <asp:ListItem Value="3">3</asp:ListItem>
                <asp:ListItem Value="4">4</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvNumberOfAdults" runat="server" ControlToValidate="ddlNumberOfAdults" 
                ErrorMessage="You must select an option." InitalValue="Select one" ForeColor="Red">
                </asp:RequiredFieldValidator>
            <br />          

            <label class="label">Bed type</label>
            <asp:RadioButton ID="rdoKingBed" runat="server"
                             GroupName="BedType" Text="King &nbsp;"/>
            <asp:RadioButton ID="rdoTwoQueenBeds" runat="server"
                             GroupName="BedType" Text="Two Queens &nbsp;"/>
            <asp:RadioButton ID="rdoOneQueenBed" runat="server"
                             GroupName="BedType" Text="One Queen &nbsp;"/>
            <br />

            <h2>Special requests</h2>
            <asp:TextBox ID="txtSpecialRequests" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
       
            <h2>Contact information</h2>
            <label class="label">First name</label>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" 
                Display="Dynamic" Text="*" ErrorMessage="You must enter a first name." ForeColor="Red" SetFocusOnError="True">
            </asp:RequiredFieldValidator>
            <br />
            <label class="label">Last name</label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" 
                Display="Dynamic" Text="*" ErrorMessage="You must enter a last name." ForeColor="Red">
                </asp:RequiredFieldValidator>
            <br />
            <label class="label">Email address</label>
            <asp:TextBox ID="txtEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmailAddress" 
                Display="Dynamic" Text="*" ErrorMessage="You must enter an email address." ForeColor="Red">
                </asp:RequiredFieldValidator>
            <br />
            <label class="label">Telephone number</label>
            <asp:TextBox ID="txtPhoneNumber" runat="server" TextMode="Phone"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RrfvPhone" runat="server" ControlToValidate="txtPhoneNumber" 
                Display="Dynamic" Text="*" ErrorMessage="You must enter a phone number." ForeColor="Red">
                </asp:RequiredFieldValidator>
            <br />

            <label class="label">Preferred method</label>
            <asp:DropDownList ID="ddlPreferredMethod" runat="server" Height="16px" Width="99px">
                <asp:ListItem Value="0">Select one</asp:ListItem>
                <asp:ListItem Value="1">Email</asp:ListItem>
                <asp:ListItem Value="2">Telephone</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvPreferredMethod" runat="server" ControlToValidate="ddlPreferredMethod" 
                Display="Dynamic" InitialValue="*" ErrorMessage="You must select an option." ForeColor="Red">
                </asp:RequiredFieldValidator>
            <br />

            <label class="label">&nbsp;</label>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" OnClick="btnSubmit_Click" />&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="button" OnClick="btnClear_Click" /><br />
            <p>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </p>
    </form>
    </section>
    <footer>
        <p>&copy; 2015, Happy Earwig Motel</p>
    </footer>
</body>
</html>
