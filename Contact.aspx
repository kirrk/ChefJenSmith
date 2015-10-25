<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
      <div class="jbody">
        <div class="page-header">
        <h1>Contact Chef Jen</h1>
        <p>Have an event or party approaching? Or simply just looking to brush up on your cooking skills.<br />
         Chef Jen accommodates clients with a variety of services. Fill out the form below to contact her. Be sure to include budget, if applicable.</p>
        </div>
 <div class="row">
   <div class="col-md-8 col-xs-6">
      <div id="chefContactForm">
    <form role="form" class="form-inline">
    <!--label one-->
    <div class="form-group">
    <asp:Label ID="Label1" CssClass="lblFirst" runat="server" Text="First Name:"></asp:Label><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your first name" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
    <asp:TextBox ID="FirstName" CssClass="form-control" runat="server"></asp:TextBox>
    </div>

    <!--label two-->
     <div class="form-group">
    <asp:Label ID="Label2" CssClass="lblLast" runat="server" Text="Last Name:"></asp:Label><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your last name" ControlToValidate="LastName"></asp:RequiredFieldValidator>
    <asp:TextBox ID="LastName" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
   
    <!--label three-->
    <div class="form-group">
    <asp:Label ID="Label3" runat="server" Text="Subject:"></asp:Label><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a subject" ControlToValidate="Subject" CssClass="txtSubject"></asp:RequiredFieldValidator>
    <asp:TextBox ID="Subject" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

    <!--label four-->
    <div class="form-group">
    <asp:Label ID="Label4" runat="server" Text="Your Email Address:"></asp:Label><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your email address" ControlToValidate="Email" CssClass="txtEmail"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" display="Dynamic" ControlToValidate="Email"></asp:RegularExpressionValidator>
    <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

      <div class="form-group">
    <asp:Label ID="Label5" runat="server" Text="Your Inquiry / Description of Event (please include budget / no. of people):"></asp:Label>
    <asp:TextBox ID="InquiryComments" runat="server" CssClass="form-control"  TextMode="MultiLine" Rows="10" Width="600px"></asp:TextBox>
    </div>

    <br class="clear" />
    <asp:Button ID="btnSubmit" runat="server" Text="Send"  CssClass="btn btn-default"
        onclick="btnSubmit_Click" />

    <br class="clear" />
    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        </form>
      </div>
    </div>
   </div>
 </div>
</div>  
</asp:Content>