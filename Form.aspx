<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Form" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title></title>

    <style type="text/css">

        .style1

        {

            font-style: italic;

            text-decoration: underline;

        }

        .style2

        {

            font-style: italic;

            text-decoration: underline;

            font-weight: bold;

        }

           	  .labelInfo 

        {

            background-color: #06C;

            margin: 5px 0 15px 0;

			padding: 5px;

            color: #fff;

        }
		 h1 {
		   color: #06C;
		   font-family: Verdana, Geneva, sans-serif;
		   margin: 0 auto 1em auto;
		   padding: 10xp 0 10px 0;	
		}
		
		#form1
		{
		margin-left: 30px;	
		}

        

    </style>

</head>

<body>

    <form id="form1" runat="server">

    <h1>Register</h1>

    <p>

        In this homework you are asked to collect data login data from a user and 

        <span class="style2">write

        it to a database</span> on the web server.<br/>

       1) First you will have to create a Database and table to hold the data.<br/>

       2) Next, change this web page to insert data into the table<br />

       3) Finally, create <span class="style2">another web page</span> that displays the data in the table.

    </p>

<p>   Example:  </p>

    <div>



        <asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label>

        &nbsp;<asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 

            ControlToValidate="TextBoxName" Display="Dynamic" 

            ErrorMessage="You must enter your Name"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 

            ControlToValidate="TextBoxName" Display="Dynamic" 

            ErrorMessage="Only use characters without numbers, please" 

            ToolTip="Only use characters without numbers, please" 

            ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>

        <br />

        <asp:Label ID="LabelEmailAddress" runat="server" Text="EmailAddress"></asp:Label>

        &nbsp;<asp:TextBox ID="TextBoxEmailAddress" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 

            ControlToValidate="TextBoxEmailAddress" Display="Dynamic" 

            ErrorMessage="You must enter your Email Address"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 

            ControlToValidate="TextBoxEmailAddress" Display="Dynamic" 

            ErrorMessage="Not a valid email address" 

            ToolTip="&quot;Customer@MyWebApp.com&quot;" 

            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

        <br />

        <asp:Label ID="LabelLoginName" runat="server" Text="LoginName"></asp:Label>

        &nbsp;<asp:TextBox ID="TextBoxLoginName" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 

            ControlToValidate="TextBoxLoginName" Display="Dynamic" 

            ErrorMessage="You must enter your a Login Name"></asp:RequiredFieldValidator>

       

        <br />

        <asp:RadioButton ID="RadioButton1" runat="server" Text="New Login" 

            CssClass="style2" GroupName="LoginType" />

        &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="Reactivate Login" 

            CssClass="style1" Checked="True" GroupName="LoginType" />

        <br />

        <asp:Label ID="LabelReason" runat="server" Text="Reason for access?"></asp:Label>

        &nbsp;<br />

        <asp:TextBox ID="TextBoxReason" runat="server" Height="161px" Width="553px"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 

            ControlToValidate="TextBoxReason" Display="Dynamic" 

            ErrorMessage="You must enter a Reason you need access"></asp:RequiredFieldValidator>

        <br />

        <br />

        <span class="style3">Date needed by:</span><br />

        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

        <br />

        <asp:ValidationSummary ID="ValidationSummary1" runat="server"  />

        <asp:Label ID="LabelInfo" runat="server" style="background-color: red;" cssClass="labelInfo"></asp:Label>

        <br />

        <br />

        <asp:Button ID="ButtonSubmitRequest" CssClass="labelInfo" runat="server" Text="Submit Request" Width="203px"

            OnClick="ButtonSubmitRequest_Click" />

        <br />

        <br />



          <asp:Label ID="Labelquery" runat="server" 

            style="font-weight: 700; font-size: 1em" Text="Query Results:"></asp:Label>

    </div>

    </form>

</body>

</html>

