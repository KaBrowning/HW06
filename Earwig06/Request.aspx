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
        <h1>The Happy Earwig Motel</h1>
        <h2>Our crawl-space now body-free!</h2>
    </header>
    <section>
        <form id="form1" runat="server">
            <h1>Reservation Request</h1>
            <h2>Request data</h2>
            <label class="label">Arrival</label> 
            <br />
            <label class="label">Departure</label>
            <br />
            Number of adults
            <br />          

            <label class="label">Bed type</label>
            <br />

            <h2>Special requests</h2>
            <br />
       
            <h2>Contact information</h2>
            <label class="label">First name</label> 
            <br />
            <label class="label">Last name</label>
            <br />
            <label class="label">Email address</label>
            <br />
            <label class="label">Telephone number</label>
            <br />
            <label class="label">Preferred method</label>
            <br />

            <label class="label">&nbsp;</label>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" />&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="button" /><br />
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
