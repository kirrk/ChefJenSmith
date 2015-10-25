<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid inside">
    <div class="jbody">
        <div class="page-header">
     <h1>Chef Services</h1>
        <p>Jenifer Smith is a chef and entrepreneur based out of Seattle, WA. Jen specializes in a plethora of chef services, listed below. <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Contact.aspx">Click here to contact Jen</asp:HyperLink>. </p>
        <h2>Services include:</h2> 
   </div> 

<ul class="services">
<li>Special Events</li>
<li>Birthday</li>
<li>Anniversaries</li>
<li>Bachelor Parties</li>
<li>One on one Cooking</li>

<li>Industry Consulting</li>
<li>Food Styling</li>
<li>Personal Chef Service</li>
<li>Recipe Development</li>

<li>Education</li>
<li>Educational Cooking Classes</li>
<li>Professional Demos</li>
<li>Group or one on one cooking instruction</li>
<li>Children Cooking Classes</li>
 </ul>
    </div>
 </div>
</asp:Content>

