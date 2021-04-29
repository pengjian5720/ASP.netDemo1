using System;
using System.Data.SqlClient;
using WorkDemo.App_Code;

namespace demo1.Day4._26
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select * from tb_admin where name = @name and id=@id";
            SqlParameter[] sqlParameter = new SqlParameter[]{
                new SqlParameter("@name",tbName.Text),
                new SqlParameter("@id",tbpasswd.Text)
            };
            object obj = SqlHelper.ExecScalar(sql,sqlParameter);
            if (obj != null)
            {
                //创建身份验证票证
                System.Web.Security.FormsAuthentication.SetAuthCookie(tbName.Text, true);
                Response.Redirect("~/Day4.26/index.aspx");

            }
        }
    }
}