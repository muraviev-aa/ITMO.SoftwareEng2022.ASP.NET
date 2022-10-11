using System.Web;
using System.Web.Mvc;

namespace ITMO.ASP.MVC.Course2022.Lab4
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
