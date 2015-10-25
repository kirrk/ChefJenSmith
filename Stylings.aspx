<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stylings.aspx.cs" Inherits="Stylings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
      <div class="jbody">
         <div class="page-header">
     <h1>Food Photo Gallery</h1>
         <div class="gallery-item">
                 <asp:Panel ID="Panel1" runat="server"></asp:Panel>
           <!--  <div class="caption"><p>This pastry is famous and quite popular in France.</p></div> -->
                </div>
             </div>
          </div>
        </div>
</asp:Content>

