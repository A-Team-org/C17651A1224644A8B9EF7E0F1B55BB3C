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
                var mail = new MailMessage();
                mail.To.Add(new MailAddress(toEmail, "Jigar Khanpara"));
                if (!string.IsNullOrEmpty(ccEmail))
                    mail.CC.Add(ccEmail);

                if (!string.IsNullOrEmpty(bccEmail))
                    mail.Bcc.Add(bccEmail);

                mail.From = new MailAddress(_sendFromEmail, _sendFromDisplayName);
                mail.IsBodyHtml = true;

                var client = new SmtpClient
                {
                    Port = _oPortNo,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Host = _host,
                    EnableSsl = true,
                    Credentials = new NetworkCredential(_sendFromEmail, _password)
                };

                mail.Subject = subject;
                mail.Body = body;
                client.Send(mail);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
