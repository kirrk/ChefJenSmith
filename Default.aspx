<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid home">
       <div class="jbody">
         <div class="page-header-home">
            <div class="block">
              <div class="pop-up-1">
                <h3 class="circle-one"><span>About</span><br /> Chef Jen</h3>
                    <div class="pop-up-img-1">
                      <asp:Image ID="Image1" runat="server" ImageUrl="~/images/circle-home-1.png" />
                     </div>
                   </div>
               <div class="pop-up-2">
                <h3 class="circle-two"><span>Peruse Chef Jen's</span><br />Savory Fare</h3>
                  <div class="pop-up-img-2">
                     <asp:Image ID="Image2" runat="server" ImageUrl="~/images/circle-home-2.png" />
                        </div>
                      </div>
                 <div class="pop-up-3">
                   <h3 class="circle-three"><span>Glimpse Chef Jen's</span><br />Sweets and Pastries</h3>
                      <div class="pop-up-img-3">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/circle-home-3.png" />
                     </div> 
                   </div>
                 </div>

            <div class="left">
              <asp:Image ID="Image4" runat="server" ImageUrl="~/images/img-jen-one-big.jpg" />
              <p class="home">Based out of Seattle, WA, Jen is a professional Chef with over 15 years of industry experience. She's worked across the U.S. and internationally. She enjoys creating delicious, and locally sourced food for her clients.  
    Have an upcoming event or simply need a few cooking lessons to sharpen your skills? 
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/Contact.aspx">Contact Jen today</asp:HyperLink> to learn how she might best serve your event.</p>
                </div>

             <div class="savory">
              <div id="savory"></div>
          </div>


                 <div class="sweet">
              <div id="sweet"></div>
          </div>


             <div class="sideleft">
                 <div class="info">
                     <asp:Image ID="Image5" runat="server" ImageUrl="~/images/sideleft/side_1.jpg" />
                     <h2>Wedding / Special Event Services</h2>
                     Chef Jen's specialties include weddings, catering and other events such as bachelor parties or anniversaries. Celebrating a special event in your life, or just looking to cater a private party a your home? 
                    Chef Jen accommodates both. If you live in the Pacific Northwest, Chef Jen is happy to serve your event right at your own home or the venue where you are holding your event. 
                 </div>

                  <div class="info">
                     <asp:Image ID="Image6" runat="server" ImageUrl="~/images/sideleft/side_2.jpg" />
                     <h2>Specialty Consulting</h2>
                     Chef Jen's specialties also include industry consulting, and various forms of food styling. Her vast experience teaching also allows her to cater to your individual style or learning preferences. One on one cooking consultations and professional cooking demos are both passions of Chef Jen.
                 </div>

                 
                  <div class="info">
                     <asp:Image ID="Image7" runat="server" ImageUrl="~/images/sideleft/side_3.jpg" />
                     <h2>Delicacies at Your Doorstep</h2>
                    Perhaps you've been wanting to learn to cook or bake for years, but you've just been too busy or your schedule does not allow you to leave the kids at home. Or you have a group of friends who would all prefer to learn together. Enter Chef Jen! She is happy to help you master the craft of cooking, recipe development or baking in the comfort of your own home. <a href="/Contact.aspx">Contact Jen to learn more!</a>
                 </div>


             </div>
          
              </div>
           </div>
        </div>
</asp:Content>
