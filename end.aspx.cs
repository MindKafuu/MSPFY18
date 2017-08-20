using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestWeb
{
    public partial class end : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            score.Text = Request.QueryString["score"];
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.RedirectPermanent("index.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.RedirectPermanent("Play.aspx");
        }
    }
}