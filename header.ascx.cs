using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class header : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string thispage = this.Page.AppRelativeVirtualPath;
        int slashpos = thispage.LastIndexOf('/');
        string pagename = thispage.Substring(slashpos + 1);

        foreach (MenuItem mi in NavigationMenu.Items)
        {
            if (mi.NavigateUrl.Contains(pagename) || Request.Path == "http://chefjensmith.com")
            {
                mi.Selected = true;
                break;
            }
        }
    } 
   
}