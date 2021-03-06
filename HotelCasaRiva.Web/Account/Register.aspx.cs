﻿using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using HotelCasaRiva.Data.Identity;
using HotelCasaRiva.Utilities;
using HotelCasaRiva.Web.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;

namespace HotelCasaRiva.Web.Account
{
    public partial class Register : Page
    {
        private EmailUtil _emailUtil = new EmailUtil();

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser()
            {
                UserName = Email.Text,
                Email = Email.Text,
                FirstName = "FN",
                LastName = "LN",
                Address = "ADDR",
                PhoneNumberConfirmed = true
            };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                var code = manager.GenerateEmailConfirmationToken(user.Id);
                var callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");
                _emailUtil.SendMail(user.Email, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}