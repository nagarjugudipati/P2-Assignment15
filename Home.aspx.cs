using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAssignment15
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LblErrorMessage.Visible = false;
            }
        }

        protected void BtnDivision_Click(object sender, EventArgs e)
        {
            LblErrorMessage.Visible = true;
            try
            {
                int dividend = int.Parse(TxtNumOne.Text);
                int divisor = int.Parse(TxtNum2.Text);
                int result = dividend / divisor; //This will cause a divide by zero exception
                LblErrorMessage.Text = "Result after Division: " + result.ToString();
                //you can also throw a custom exception
                if (result > 5)
                {
                    throw new Exception("Result is greater than 5.");

                }

            }
            catch (DivideByZeroException ex)
            {
                Session["error"] = "Divide by zero error occured." + ex.Message;
                Response.Redirect("Error.aspx");
            }
            catch (Exception ex)
            {
                //handle other exceptions
                //Log the exception or display a user-friendly message
                //you can also redirect to an error page here
                Session["error"] = "An error Occured:" + ex.Message;
                Response.Redirect("Error.aspx");
            }
        }

        protected void BtnRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("Databinding.aspx");
        }
    }
}
    