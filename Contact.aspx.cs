using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Configuration;



public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Contact Chef Jen Smith for your event, party or consulting needs.";
        Page.MetaDescription = "Contact Chef Jen Smith to learn more about how Jen can help with your event or party. Fill out the contact form to reach her."; 
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       try
       {
          string subject = Subject.Text.ToString();
          string firstName = FirstName.Text.ToString();
          string lastName = LastName.Text.ToString();
          string inquireCom = InquiryComments.Text.ToString();
          var userAddress = Email.Text.ToString();

          //form body of email
          string bodyForm = "From: " + "\n";
          bodyForm += "First Name:" + firstName + "\n";
          bodyForm += "Last Name:" + lastName + "\n";
          bodyForm += "Email: " + userAddress + "\n";
          bodyForm += "Subject: " + subject + "\n";
          bodyForm += "Inquiry / Comments: " + inquireCom + "\n";

          MailMessage m = new MailMessage();
          SmtpClient smtp = new SmtpClient();

          // Sender e-mail address.
          m.From = new MailAddress("bluedoorbaking@gmail.com", "Webmaster");
          m.To.Add(new MailAddress("bluedoorbaking@gmail.com", "Karen Kirr"));
          m.Headers.Add("Reply-To", "bluedoorbaking@gmail.com");
          m.Subject += subject;
          m.Body += bodyForm;

          smtp.Host = "smtp.gmail.com";
          smtp.EnableSsl = true;
          smtp.UseDefaultCredentials = false;
          smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
          smtp.Credentials = new System.Net.NetworkCredential("bluedoorbaking@gmail.com", "bakingclass2013");
          //  smtp.Timeout = 2000;

          //pass valuses to smtp object
          smtp.Send(m);
          if (Page.IsValid && Page.IsPostBack)  { 
		  //Label6.Text = "Thank you we have received your email";
		    Response.Redirect("thanks.aspx");
		   }


       }


       catch (Exception ex)
       {
          Label6.Text = ex.ToString();

       }

    }
}