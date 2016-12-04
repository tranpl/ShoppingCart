using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ShoppingCart
{
    public partial class NestedPublic : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string visitorId;
            BusinessLogic bl = new BusinessLogic();

            if (Request.Cookies["Visitor"] == null)
            {
                visitorId = bl.getVisitorId().ToString();

                HttpCookie newCookie = new HttpCookie("Visitor");
                newCookie["VisitorId"] = visitorId;
                newCookie.Expires = DateTime.Now.AddYears(1);
                Response.Cookies.Add(newCookie);

            }

            else
            {
                HttpCookie existingCookie = Request.Cookies["Visitor"];
                visitorId = Server.HtmlEncode(existingCookie["VisitorId"]);

                bl.updateLastVisit(Convert.ToInt32(visitorId));
            }

            Session["IdVisitor"] = visitorId;

            lblUserSessionId.Text = "Visitor Id for this session is:  " + Session["IdVisitor"].ToString();

            if (HttpContext.Current.Session["UserCart"] == null)
            {
                HttpContext.Current.Session["UserCart"] = new List<CartItem>();

            }

            else
            {
                List<CartItem> cart = (List<CartItem>)HttpContext.Current.Session["UserCart"];
                int cartItems = bl.sumCartItems(cart);
                lblCart.Text = "Shopping Cart (" + cartItems.ToString() + ")";

            }

        }
    }
}