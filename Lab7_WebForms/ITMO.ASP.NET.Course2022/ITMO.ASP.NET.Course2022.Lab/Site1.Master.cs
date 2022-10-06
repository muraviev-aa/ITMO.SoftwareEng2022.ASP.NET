using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMO.ASP.NET.Course2022.Lab
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            long numVisitors = 0;
            if (Application["Visitors"] != null) 
            { 
                numVisitors = long.Parse(Application["Visitors"].ToString());
                VisitorLiteral.Text = "Число посещений: " + numVisitors.ToString();
            }
        }

        protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}