using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;

namespace pro.Anonymous
{
    public class Classlang :  System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            try
            {
                Page.Theme = Session["mytheme"].ToString();
            }
            catch (Exception)
            {


            }
        }
        protected override void InitializeCulture()
        {
            try
            {
                base.InitializeCulture();
                CultureInfo cul = new CultureInfo(Session["cu"].ToString());
                Thread.CurrentThread.CurrentCulture = cul;
                Thread.CurrentThread.CurrentUICulture = cul;
            }
            catch 
            {
                
                
            }
        }
    }
}
