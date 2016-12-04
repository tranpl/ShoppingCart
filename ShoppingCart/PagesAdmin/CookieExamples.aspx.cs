using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class GetAllCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCookieName.Focus();

        }

        protected void btnGetCookies_Click(object sender, EventArgs e)
        {
            refreshCookies();
        }

        protected void btnWriteCookie_Click(object sender, EventArgs e)
        {
            HttpCookie newCookie = new HttpCookie(txtCookieName.Text);
            newCookie[txtName1.Text] = txtValue1.Text;
            newCookie[txtName2.Text] = txtValue2.Text;

            System.DateTime date = Convert.ToDateTime(txtExpiration.Value);

            newCookie["Expiration"] = date.ToString();//DateTime.Now.AddYears(1).ToString();
            newCookie.Expires = date;//DateTime.Now.AddYears(1);
            Response.Cookies.Add(newCookie);

            refreshCookies();

        }

        protected void refreshCookies()
        {

            ArrayList colCookies = new ArrayList();
            for (int i = 0; i < Request.Cookies.Count; i++)
                colCookies.Add(Request.Cookies[i]);

            grdCookies.DataSource = colCookies;
            grdCookies.DataBind();
        }
    }
}