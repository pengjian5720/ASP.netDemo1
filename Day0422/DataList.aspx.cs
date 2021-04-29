using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WorkDemo.App_Code;

namespace demo1.Day0422
{
    public partial class DataList : System.Web.UI.Page
    {
        private static PagedDataSource pds = new PagedDataSource();
        int currentPageIndex = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "select * from tb_bookinfo";
                DataSet dataSet = SqlHelper.ExecDataSet(sql);

                pds.DataSource = dataSet.Tables[0].DefaultView;
                pds.PageSize = 2;
                pds.AllowPaging = true;

                this.dtBookinfo.DataSource = dataSet.Tables[0];
                dtBookinfo.DataBind();

                this.lbCurrentPage.Text = (pds.CurrentPageIndex + 1).ToString();
                this.lbPageCount.Text = (pds.PageCount).ToString();

                this.lbtnFirst.Enabled = true;



                if (pds.CurrentPageIndex == 0)
                {
                    this.lbtnEnd.Enabled = false;
                }
            }

        }

        protected void lbtnFirst_Click(object sender, EventArgs e)
        {
            currentPageIndex = 0;
        }

        protected void lbtnLast_Click(object sender, EventArgs e)
        {

        }

        protected void lbtnNext_Click(object sender, EventArgs e)
        {

        }

        protected void lbtnEnd_Click(object sender, EventArgs e)
        {

        }
    }
}