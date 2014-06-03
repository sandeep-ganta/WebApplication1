using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace WebApplication1
{
    public partial class courseinformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            methodbind();
        }
       
        public SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd=new SqlCommand("insert into coursetable values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"')",conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Label6.Text = "sucessfully inserted";
        }
        public void methodbind()
        {
            conn.Open();
            SqlCommand cmdselect = new SqlCommand("select *from coursetable ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmdselect);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds; ;
            GridView1.DataBind();
            conn.Close();
        }
    }
}