<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="header" %>


<div id="jenHeader">
 <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu navbar-toggle collapsed" role="navigation" EnableViewState="false"  Orientation="Horizontal">
<StaticSelectedStyle ForeColor="#0EC3F7" />
        <Items>
        <asp:MenuItem NavigateUrl="~/../Default.aspx" selected="true" Text="Home"/>
        <asp:MenuItem NavigateUrl="~/../Services.aspx" Text="Services"/>
        <asp:MenuItem NavigateUrl="~/../Contact.aspx"  Text="Contact" />
        <asp:MenuItem NavigateUrl="~/../Videos.aspx" Text="Videos"/>
        <asp:MenuItem NavigateUrl="http://cocoanib.tumblr.com/" Text="Blog"/>

       </Items>


        </asp:Menu>


 <asp:Menu ID="NavigationMenuMobile" runat="server" CssClass="menu mobile" role="navigation" EnableViewState="false"  Orientation="Horizontal">
<StaticSelectedStyle ForeColor="#0EC3F7" />
        <Items>
        <asp:MenuItem NavigateUrl="~/../Default.aspx" selected="true" Text="Home"/>
        <asp:MenuItem NavigateUrl="~/../Services.aspx" Text="Services"/>
        <asp:MenuItem NavigateUrl="~/../Contact.aspx"  Text="Contact" />
        <asp:MenuItem NavigateUrl="~/../Videos.aspx" Text="Videos"/>
        <asp:MenuItem NavigateUrl="http://cocoanib.tumblr.com/" Text="Blog"/>

       </Items>


        </asp:Menu>

        <asp:Image ID="Image1" runat="server" ViewStateMode="Enabled" ImageUrl="~/images/js_logo.png" />

    </div>

