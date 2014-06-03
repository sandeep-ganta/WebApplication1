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
    public partial class studentdetails : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            methodbind();
            if (!IsPostBack)
            {
                binddrop();
            }

        }
        public void binddrop()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select CourseTitle from coursetable", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
           DataSet ds=new DataSet();
            da.Fill(ds);
            DropDownList1.DataSource=ds;
            DropDownList1.DataTextField="CourseTitle";
            DropDownList1.DataValueField="CourseTitle";
            DropDownList1.DataBind();
            conn.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "")
            {
                Label6.Text = "All Fileds Are Mandatory from Sandeep";
            }
            else
            {
                int j = Convert.ToInt32(Session["id"].ToString());
                conn.Open();
                SqlCommand cmdinsert = new SqlCommand("insert into studentinformation(StudentName,ContactNo,Email,CourseID,AdmissionDate) values('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + j + "','" + TextBox4.Text + "')", conn);
                cmdinsert.ExecuteNonQuery();
                conn.Close();
                Label6.Text = "inserted sucessfully";
            }

        }
        int i;
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmds = new SqlCommand("select CourseID from coursetable where CourseTitle='" + DropDownList1.SelectedValue + "'", conn);
             i = (int)cmds.ExecuteScalar();
             Session["id"] = i.ToString();
            conn.Close();
        }
        public void methodbind()
        {
            conn.Open();
            SqlCommand cmdselect = new SqlCommand("select *from studentinformation ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmdselect);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds; ;
            GridView1.DataBind();
            conn.Close();
        }
    }
}