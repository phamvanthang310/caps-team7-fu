using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.IO;
using System.Web.UI.WebControls;
using System.Web.UI;

namespace TemptProject.Models
{
    
    public class SendMailModel
    {

        // Config SmtpClient to send gmail user.
        SmtpClient client = new SmtpClient
        {
            Host = "smtp.gmail.com",
            Port = 587,
            EnableSsl = true,
            UseDefaultCredentials = false,
            // Fill gmail account and password to run this.
            Credentials = new System.Net.NetworkCredential("gmail", "password")
        };
        // Use when send mail by another mail difference default mail.
        public string sender { get; set; }
        // Get and set mail template URI.
        public string templateURI { get; set; }
        public List<User> recipient = new List<User>();
        // Use this list to modify value in mail template.
        public Dictionary<string, string> data = null;
        // Default values.
        public SendMailModel()
        {
            sender = "thinhlt789520@gmail.com";
            templateURI = "~/Assets/mailTemplate/template.html";
        }
        // Add more recipient
        public void AddRecipient(User u)
        {
            recipient.Add(u);
        }
        
        public void SendMail()
        {
            if (templateURI != null && templateURI != "")
            {
                if (recipient.Count != 0)
                {
                    
                    foreach (User receiver in recipient)
                    {
                        // Init a new list of variable
                        data = new Dictionary<string, string>();
                        data.Add("<<Username>>", receiver.FullName);

                        // Init new file definition using template and sender address
                        MailDefinition template = new MailDefinition();
                        template.BodyFileName = HttpContext.Current.Server.MapPath(templateURI);
                        template.From = sender;

                        // Init new mail message
                        MailMessage mailMessage = template.CreateMailMessage(receiver.Email, data, new LiteralControl());
                        mailMessage.Subject = "Welcome to Rocket";

                        // This is required for tell mail management know this mail have body with html and render it.
                        mailMessage.IsBodyHtml = true;

                        // Send.
                        client.Send(mailMessage);
                    }
                    
                }
            }
        }
    }
}