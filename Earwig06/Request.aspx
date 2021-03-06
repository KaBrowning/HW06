﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>

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

            <label class="label" accesskey="R">Arrival</label>
            <asp:TextBox ID="txtArrival" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvArrival" runat="server" ControlToValidate="txtArrival" 
                Display="Dynamic" Text="*" ErrorMessage="You must enter a date." ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />

            <label class="label" accesskey="U">Departure</label>
            <asp:TextBox ID="txtDeparture" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDeparture" runat="server" ControlToValidate="txtDeparture" 
                Display="Dynamic" Text="*" ErrorMessage="You must enter a date." ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="refDeparture" runat="server" ControlToValidate="txtDeparture"
                 ForeColor="Red" ErrorMessage="Enter a valid date. (M/D/YYYY)" Display="Dynamic" SetFocusOnError="True"
                ValidationExpression="^([1-9]|1[012])[- /.]([1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$">
                </asp:RegularExpressionValidator>
            <br />

            <label class ="label" accesskey="N">Number of adults</label>
             <asp:DropDownList ID="ddlNumberOfAdults" runat="server">
                <asp:ListItem Value="0">Select one</asp:ListItem>
                <asp:ListItem Value="1">1</asp:ListItem>
                <asp:ListItem Value="2">2</asp:ListItem>
                <asp:ListItem Value="3">3</asp:ListItem>
                <asp:ListItem Value="4">4</asp:ListItem>
            </asp:DropDownList>
            <br />          

            <label class="label">Bed type</label>
            <asp:RadioButton ID="rdoKingBed" runat="server"
                             GroupName="BedType" Text="King &nbsp;"/>
            <asp:RadioButton ID="rdoTwoQueenBeds" runat="server"
                             GroupName="BedType" Text="Two Queens &nbsp;"/>
            <asp:RadioButton ID="rdoOneQueenBed" runat="server"
                             GroupName="BedType" Text="One Queen &nbsp;"/>
            <br />

            <h2 accesskey="S">Special requests</h2>
            <asp:TextBox ID="txtSpecialRequests" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
       
            <h2>Contact information</h2>
            <label class="label" accesskey="I">First name</label>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" 
                Display="Dynamic" Text="*" ErrorMessage="You must enter a first name." ForeColor="Red" SetFocusOnError="True">
            </asp:RequiredFieldValidator>
            <br />
            <label class="label" accesskey="L">Last name</label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" 
                Display="Dynamic" Text="*" ErrorMessage="You must enter a last name." ForeColor="Red">
                </asp:RequiredFieldValidator>
            <br />
            <label class="label" accesskey="M">Email address</label>
            <asp:TextBox ID="txtEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmailAddress" 
                Display="Dynamic" Text="*" ErrorMessage="You must enter an email address." ForeColor="Red">
                </asp:RequiredFieldValidator>
            <br />
            <label class="label" accesskey="B">Telephone number</label>
            <asp:TextBox ID="txtPhoneNumber" runat="server" TextMode="Phone" MaxLength="12"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RrfvPhone" runat="server" ControlToValidate="txtPhoneNumber" 
                 Display="Dynamic" Text="*" ErrorMessage="You must enter a phone number." ForeColor="Red">
                </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhoneNumber" 
                ErrorMessage="Please enter a valid phone number." ValidationExpression="^([0-9\(\)\-]{10,12})$" 
                Display="Dynamic" ForeColor="Red">
                </asp:RegularExpressionValidator>
            <br />

            <label class="label" accesskey="P">Preferred method</label>
            <asp:DropDownList ID="ddlPreferredMethod" runat="server" Height="16px" Width="99px">
                <asp:ListItem Value="0">Select one</asp:ListItem>
                <asp:ListItem Value="1">Email</asp:ListItem>
                <asp:ListItem Value="2">Telephone</asp:ListItem>
            </asp:DropDownList>
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
