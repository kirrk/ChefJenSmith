using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Stylings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       loadGallery();
       Page.Title = "Gallery of Food by Chef Jen Smith";
       Page.MetaDescription = "Chef and Entrepreneur Jen Smith's Food Gallery";
    }
    public void loadGallery()
    {
       Image[] foodimages = new Image[14];
        for (int i = 1; i < foodimages.Length; i++)
        {
            foodimages[i] = new Image();
            foodimages[i].CssClass = "imageGal";
            foodimages[i].ImageUrl = "~/images/gallery/food_pic" + "_" + i + ".jpg";
            Panel1.Controls.Add(foodimages[i]);

        }
    }
     public void captionArray () 
        {
            string[] captions = {"a delicacy", "a French pasty"};
         foreach (string i in captions) 
         {
                Response.Write(i);

         }
     
        }

    
}