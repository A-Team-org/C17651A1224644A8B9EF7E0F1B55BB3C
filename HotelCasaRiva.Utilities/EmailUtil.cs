using System;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;

namespace HotelCasaRiva.Utilities
{
    public class EmailUtil
    {
        private readonly string _sendFromEmail = ConfigurationManager.AppSettings["SendFromEmailId"];
        private readonly string _password = ConfigurationManager.AppSettings["SendFromPassword"];
        private readonly string _host = ConfigurationManager.AppSettings["EmailHost"];
        private readonly int _oPortNo = Convert.ToInt32(ConfigurationManager.AppSettings["OutPortNo"]);
        private readonly string _sendFromDisplayName = ConfigurationManager.AppSettings["SendFromDisplayName"];

        public  bool SendMail(string toEmail, string subject, string body)
        {
            return SendMailHelper(toEmail, null, null, subject, body);
        }
        public  bool SendMail(string toEmail, string ccEmail, string subject, string body)
        {
            return SendMailHelper(toEmail, ccEmail, null, subject, body);
        }
        public  bool SendMail(string toEmail, string ccEmail, string bccEmail, string subject, string body)
        {
            return SendMailHelper(toEmail, ccEmail, bccEmail, subject, body);
        }

        private bool SendMailHelper(string toEmail, string ccEmail, string bccEmail, string subject, string body)
        {
            try
            {
                var mailMessage = new MailMessage
                {
                    From = new MailAddress(_sendFromEmail, _sendFromDisplayName)
                };
                mailMessage.To.Add(toEmail);
                if (!string.IsNullOrEmpty(ccEmail)) mailMessage.CC.Add(ccEmail);
                if (!string.IsNullOrEmpty(bccEmail)) mailMessage.Bcc.Add(bccEmail);
                mailMessage.Subject = subject;
                mailMessage.Body = body;
                mailMessage.IsBodyHtml = true;

                // Create the credentials to login to the gmail account associated with my custom domain
                var cred = new NetworkCredential(_sendFromEmail, _password);

                var mailClient = new SmtpClient(_host, _oPortNo)
                {
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Timeout = 20000,
                    Credentials = cred
                };
                mailClient.Send(mailMessage);
                return true;
            }
            catch (System.Exception ex)
            {
                //TODO Error log
                return false;
            }
        }
    }
}
